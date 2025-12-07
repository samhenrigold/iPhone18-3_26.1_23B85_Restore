uint64_t sub_1002970D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100297130()
{
  result = qword_10094FC88;
  if (!qword_10094FC88)
  {
    sub_10076550C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FC88);
  }

  return result;
}

uint64_t sub_100297190(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = sub_10075F65C();
  v44 = *(v2 - 1);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766EDC();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v8 - 8);
  v36 = &v31 - v9;
  v10 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v33 = &v31 - v11;
  v13 = sub_10076C15C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v34 = sub_10076F4FC();
  v17 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v31 - v20;
  sub_1007654FC();
  v22 = objc_allocWithZone(ADTransparencyViewController);
  v23 = sub_10076FF6C();

  v24 = [v22 initWithTransparencyDetails:v23];

  sub_10076F4DC();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.viewController(_:), v13);
  v25 = sub_10075DB7C();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = sub_10076096C();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v48 = sub_10003F040();
  v47 = v24;
  v27 = v34;
  (*(v17 + 16))(v32, v21, v34);
  (*(v38 + 104))(v37, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v41 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowOrigin.inapp(_:), v45);
  v45 = v24;
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  (*(v17 + 8))(v21, v27);
  v29 = sub_100563FF8(v28, 1, v46);

  return v29;
}

void sub_1002977A8(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D39C();
  sub_10000DB18(v4, a3);
  sub_10000A61C(v4, a3);
  sub_10076D3AC();
}

unint64_t sub_100297804(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v249 = a4;
  v238 = a3;
  v237 = a2;
  v17 = sub_10000A5D4(&qword_10094A428, &qword_10078D678);
  __chkstk_darwin(v17 - 8);
  v208 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v216 = &v201 - v20;
  v21 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v21 - 8);
  v226 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v227 = &v201 - v24;
  v25 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v25 - 8);
  v225 = &v201 - v26;
  v27 = sub_1007611EC();
  __chkstk_darwin(v27 - 8);
  v214 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v213 = &v201 - v30;
  __chkstk_darwin(v31);
  v220 = &v201 - v32;
  __chkstk_darwin(v33);
  v219 = &v201 - v34;
  v224 = sub_10076121C();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v212 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v218 = &v201 - v37;
  v229 = sub_10076481C();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v215 = &v201 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v241 = &v201 - v40;
  v207 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v236 = &v201 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v42 - 8);
  v209 = &v201 - v43;
  v222 = sub_10076D39C();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v242 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_10076357C();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_10076350C();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v205 = &v201 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v210 = (&v201 - v48);
  __chkstk_darwin(v49);
  v245 = &v201 - v50;
  __chkstk_darwin(v51);
  v217 = &v201 - v52;
  __chkstk_darwin(v53);
  v247 = &v201 - v54;
  v55 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v55 - 8);
  v211 = &v201 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v243 = &v201 - v58;
  __chkstk_darwin(v59);
  v250 = &v201 - v60;
  v61 = sub_1007673CC();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v201 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v201 - v66;
  v68 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v201 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = sub_10076341C();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_100386168(a1, v71, v249);
  sub_10000CFBC(v71, &unk_1009428D0, &unk_100783DC0);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v75 = sub_100770D2C();
  [v10 setBackgroundColor:v75];

  sub_10076285C();
  (v62[13])(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_10029BCF8(&qword_10094FC90, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
  v252 = v67;
  v76 = sub_10076FF1C();
  v78 = (v62 + 1);
  v77 = v62[1];
  v251 = v61;
  (v77)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &off_100911000;
LABEL_148:
    [v10 v62[194]];
    return (v77)(v252, v251);
  }

  v79 = sub_10076280C();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = sub_10077158C();
    v79 = v76;
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v232 = v77;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v240 = sub_10077149C();
    }

    else
    {
      if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v240 = *(v79 + 32);
    }
  }

  else
  {

    v240 = 0;
  }

  v204 = v10;
  v67 = *&v10[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots];
  v231 = sub_10076283C();
  v244 = sub_10076281C();
  v81 = sub_10076288C();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = sub_10077158C();
    v81 = v76;
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v240;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v239 = sub_10077149C();
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v239 = *(v81 + 32);
    }
  }

  else
  {

    v239 = 0;
  }

  v83 = [v237 traitCollection];
  sub_100299B1C(v250);

  v77 = sub_10076283C();
  v76 = sub_10076281C();
  v84 = sub_10076280C();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = sub_10077158C();
    v84 = v88;
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v230 = v62 + 1;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_52;
      }

      v78 = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    v78 = sub_10077149C();
LABEL_25:

    goto LABEL_27;
  }

  v78 = 0;
LABEL_27:
  v86 = sub_10076288C();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = sub_10077158C();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = sub_10077149C();
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((sub_1007673BC() & 1) == 0)
  {

    v94 = v246;
    v95 = v247;
    v96 = v248;
    (*(v246 + 104))(v247, enum case for LockupMediaLayout.DisplayType.none(_:), v248);
    goto LABEL_76;
  }

  if (v76 | v77)
  {
    v97 = v217;
    sub_10076D3AC();

    v94 = v246;
    v96 = v248;
    (*(v246 + 104))(v97, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v248);
    v95 = v247;
    (*(v94 + 32))(v247, v97, v96);
    goto LABEL_76;
  }

  v92 = sub_10057F8EC(v78, v87, 0, 1, v91);
  v77 = v92;
  v10 = (v92 >> 62);
  if (v92 >> 62)
  {
LABEL_53:
    v203 = sub_10077158C();
    if (v78)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v203 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v78)
  {
LABEL_42:
    v93 = sub_1007601CC();
    goto LABEL_55;
  }

LABEL_54:
  v93 = 0;
LABEL_55:
  v201 = sub_10057FC34(v93);

  v238 = v78;
  if (v78)
  {
    v98 = sub_1007601CC();
  }

  else
  {
    v98 = 0;
  }

  v96 = v248;
  v99 = v209;
  v100 = v251;
  (v62[2])(v209, v252, v251);
  v101.n128_f64[0] = (v62[7])(v99, 0, 1, v100);
  v202 = sub_10058015C(v98, v99, v101);

  sub_10000CFBC(v99, &qword_10094E260, qword_100796150);
  if (v10)
  {
    v102 = sub_10077158C();
  }

  else
  {
    v102 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v210;
  v104 = v238;
  if (!v102)
  {

LABEL_68:
    v107 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v108 = v246;
    v109 = *(v246 + 104);
    v237 = (v246 + 104);
    v210 = v109;
    (v109)(v103, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v96);
    v110 = sub_1007634FC();
    v111 = *(v108 + 8);
    (v111)(v103, v96);
    v112 = v203;
    if (((v203 >= v110) & v202) != 0 || (v107 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v209 = v111, v113 = v248, (v210)(v103, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v248), v114 = sub_1007634FC(), (v209)(v103, v113), ((v112 >= v114) & v201) != 0) || (v107 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v115 = v248, (v210)(v103, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v248), v116 = sub_1007634FC(), v117 = v115, v118 = v209, (v209)(v103, v117), v112 >= v116))
    {

      v106 = v217;
      v122 = v217;
      v123 = v107;
    }

    else
    {
      v202 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v119 = v118;
      v120 = v248;
      v210(v103);
      v121 = sub_1007634FC();

      (v119)(v103, v120);
      if (v112 == v121)
      {
        v106 = v217;
        v122 = v217;
        v123 = v202;
      }

      else
      {
        v123 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v106 = v217;
        v122 = v217;
      }
    }

    v96 = v248;
    (v210)(v122, v123, v248);
    v94 = v246;
    goto LABEL_75;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v105 = sub_10076BDCC();

  if ((v105 & 1) == 0)
  {
    goto LABEL_68;
  }

  v94 = v246;
  v106 = v217;
  (*(v246 + 104))(v217, enum case for LockupMediaLayout.DisplayType.landscape(_:), v96);
LABEL_75:
  v95 = v247;
  (*(v94 + 32))(v247, v106, v96);
  v10 = v240;
LABEL_76:
  v254[3] = &type metadata for CGFloat;
  v254[4] = &protocol witness table for CGFloat;
  v254[0] = 0x4021000000000000;
  sub_10000A570(v254, v253);
  v104 = *(v94 + 16);
  v104(v245, v95, v96);
  if (v244 | v231)
  {
    goto LABEL_87;
  }

  result = sub_10057F8EC(v10, v239, 0, 1, v124);
  if (result >> 62)
  {
    v126 = result;
    v127 = sub_10077158C();
    result = v126;
    if (v127)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

LABEL_87:
    sub_10076D3AC();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  sub_10076BEFC();
  sub_10076D3AC();

LABEL_88:
  sub_100016E2C(v250, v243, &unk_1009467E0, qword_10078CB50);
  v128 = v233;
  sub_10076354C();
  sub_10000CD74(v254);
  v129 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v130 = v234;
  v131 = &v67[v129];
  v132 = v235;
  (*(v234 + 24))(v131, v128, v235);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v130 + 8))(v128, v132);
  if (v10)
  {
    v133 = sub_1007601CC();
  }

  else
  {
    v133 = 0;
  }

  sub_1007601EC();
  v134 = v236;
  sub_10007AFB4(v133, v236);

  v135 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v134, &v67[v135]);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v134);
  if (v10)
  {
    v10 = sub_1007601CC();
  }

  *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v10;

  sub_10057DBD4();

  v136 = v251;
  (v62[2])(v64, v252, v251);
  v137 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (v62[3])(&v67[v137], v64, v136);
  swift_endAccess();
  v62 = &off_100911000;
  [v67 setNeedsLayout];
  v232(v64, v136);
  if (v244)
  {
    (*(v223 + 104))(v218, enum case for VideoFillMode.scaleAspectFill(_:), v224);

    sub_10076B84C();
    sub_10076BEFC();
    v138 = v243;
    sub_10076D3AC();

    (*(v221 + 56))(v138, 0, 1, v222);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v139 = v225;
    sub_10076B85C();
    v140 = sub_10075DB7C();
    (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
    v141 = v227;
    sub_10076B81C();
    v142 = v226;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_10029BCF8(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v143 = sub_100762EEC();
    sub_10000CFBC(v142, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v141, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v139, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v254, &qword_100943310, &unk_100784150);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v145 = Strong;
      v146 = [Strong superview];
      if (v146)
      {
        v147 = v146;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v148 = v67;
        v149 = sub_100770EEC();

        if ((v149 & 1) == 0)
        {
          goto LABEL_108;
        }

        v150 = swift_unknownObjectWeakLoadStrong();
        if (!v150)
        {
          goto LABEL_108;
        }

        v145 = v150;
        [v150 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v159 = swift_unknownObjectWeakLoadStrong();
    v62 = &off_100911000;
    if (v159)
    {
      v160 = v159;
      [v67 addSubview:v159];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];

    v161 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v162 = *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v154 = v246;
    if (v162)
    {
      [v162 removeFromSuperview];
      v163 = *&v67[v161];
    }

    else
    {
      v163 = 0;
    }

    v164 = v247;
    *&v67[v161] = 0;

    [v67 setNeedsLayout];

    (*(v228 + 8))(v241, v229);
LABEL_147:
    [v67 v62[194]];

    (*(v154 + 8))(v164, v248);
    sub_10000CFBC(v250, &unk_1009467E0, qword_10078CB50);
    [v67 setHidden:0];

    v10 = v204;
    v77 = v232;
    goto LABEL_148;
  }

  if (!v239)
  {
LABEL_134:
    v189 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v190 = *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    if (v190)
    {
      [v190 removeFromSuperview];
      v191 = *&v67[v189];
    }

    else
    {
      v191 = 0;
    }

    v154 = v246;
    v164 = v247;
    *&v67[v189] = 0;

    [v67 v62[194]];
    v192 = swift_unknownObjectWeakLoadStrong();
    if (!v192)
    {
      goto LABEL_144;
    }

    v193 = v192;
    sub_10029BCF8(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v194 = [v193 superview];
    if (v194)
    {
      v195 = v194;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v196 = v67;
      v197 = sub_100770EEC();

      v164 = v247;
      if ((v197 & 1) == 0)
      {
        goto LABEL_144;
      }

      v198 = swift_unknownObjectWeakLoadStrong();
      if (!v198)
      {
        goto LABEL_144;
      }

      v193 = v198;
      [v198 removeFromSuperview];
    }

    else
    {
      v164 = v247;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v199 = swift_unknownObjectWeakLoadStrong();
    if (v199)
    {
      v200 = v199;
      [v67 addSubview:v199];
    }

    sub_10057E5D8();
    [v67 v62[194]];
    goto LABEL_147;
  }

  result = sub_10076C41C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v187 = result;
  v188 = sub_10077158C();
  result = v187;
  if (!v188)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    sub_10077149C();
    v151 = v208;
LABEL_105:

    v152 = v205;
    v153 = v248;
    v104(v205, v247, v248);
    v154 = v246;
    v155 = (*(v246 + 88))(v152, v153);
    v156 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v154 + 8))(v152, v153);
    if (v155 == v156)
    {
      v157 = 1;
      v158 = v216;
    }

    else
    {
      v165 = sub_10076C40C();
      v158 = v216;
      sub_10007AFB4(v165, v216);

      v157 = 0;
    }

    v166 = v206;
    v167 = v207;
    (*(v206 + 56))(v158, v157, 1, v207);
    (*(v223 + 104))(v212, enum case for VideoFillMode.scaleAspectFill(_:), v224);
    sub_10076B84C();
    sub_10076BEFC();
    v168 = v211;
    sub_10076D3AC();

    (*(v221 + 56))(v168, 0, 1, v222);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_100016E2C(v158, v151, &qword_10094A428, &qword_10078D678);
    if ((*(v166 + 48))(v151, 1, v167) == 1)
    {
      sub_10000CFBC(v151, &qword_10094A428, &qword_10078D678);
    }

    else
    {
      sub_100125E90(v151);
    }

    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v169 = v225;
    sub_10076B85C();
    v170 = sub_10075DB7C();
    (*(*(v170 - 8) + 56))(v169, 0, 1, v170);
    v171 = v227;
    sub_10076B81C();
    v172 = v226;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_10029BCF8(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v173 = sub_100762EEC();
    sub_10000CFBC(v172, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v171, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v169, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v254, &qword_100943310, &unk_100784150);
    v174 = swift_unknownObjectWeakLoadStrong();
    if (!v174)
    {
      goto LABEL_124;
    }

    v175 = v174;
    v176 = [v174 superview];
    if (v176)
    {
      v177 = v176;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v178 = v67;
      v179 = sub_100770EEC();

      v154 = v246;
      if ((v179 & 1) == 0)
      {
        goto LABEL_124;
      }

      v180 = swift_unknownObjectWeakLoadStrong();
      if (!v180)
      {
        goto LABEL_124;
      }

      v175 = v180;
      [v180 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v181 = swift_unknownObjectWeakLoadStrong();
    if (v181)
    {
      v182 = v181;
      [v67 addSubview:v181];
    }

    sub_10057E5D8();
    v62 = &off_100911000;
    [v67 setNeedsLayout];

    v183 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v184 = *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v185 = v216;
    if (v184)
    {
      [v184 removeFromSuperview];
      v186 = *&v67[v183];
    }

    else
    {
      v186 = 0;
    }

    *&v67[v183] = 0;

    [v67 setNeedsLayout];

    (*(v228 + 8))(v215, v229);
    sub_10000CFBC(v185, &qword_10094A428, &qword_10078D678);
    v164 = v247;
    goto LABEL_147;
  }

  v151 = v208;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

uint64_t sub_100299B1C@<X0>(uint64_t a2@<X8>)
{
  if (sub_1007706EC())
  {
    v3 = sub_10076D39C();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
    goto LABEL_19;
  }

  v8 = sub_10076FF9C();
  v10 = v9;
  if (v8 == sub_10076FF9C() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = sub_10077167C();

  if (v13)
  {
LABEL_15:
    if (qword_10093FD00 != -1)
    {
      swift_once();
    }

    v21 = sub_10076D39C();
    v22 = v21;
    v23 = qword_10099E1D8;
    goto LABEL_18;
  }

  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 == sub_10076FF9C() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_10077167C();

    if ((v19 & 1) == 0)
    {
      sub_10076D37C();
      v20 = sub_10076D39C();
      v4 = *(*(v20 - 8) + 56);
      v5 = v20;
      v6 = a2;
      v7 = 0;
      goto LABEL_19;
    }
  }

  if (qword_10093FD08 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D39C();
  v22 = v21;
  v23 = qword_10099E1F0;
LABEL_18:
  v24 = sub_10000A61C(v21, v23);
  v26 = *(v22 - 8);
  (*(v26 + 16))(a2, v24, v22);
  v4 = *(v26 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v22;
LABEL_19:

  return v4(v6, v7, 1, v5);
}

void sub_100299DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v10 = sub_1007673CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v75 - v15);
  v17 = sub_10076BF6C();
  __chkstk_darwin(v17 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = a4;
    v79 = v13;
    v83 = a1;
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);
    v84 = v5;
    v21 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots);
    v22 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
    swift_beginAccess();
    v81 = v21;
    v23 = *(v21 + v22);
    if (v23 >> 62)
    {
      v24 = sub_10077158C();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v16;
    v25 = v84;
    if (v24)
    {
      if (v24 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v26 = a3;
      v80 = v11;
      v76 = v10;

      v27 = 0;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v28 = sub_10077149C();
        }

        else
        {
          v28 = *(v23 + v27 + 4);
        }

        v29 = v28;
        ++v27;
        v85 = v28;
        type metadata accessor for BorderedScreenshotView(0);
        sub_10029BCF8(&qword_10094A410, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v30 = v29;
        sub_10077140C();
        sub_100760BEC();
        sub_100016C74(v86);
        v31 = *&v30[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        v87.value.super.isa = 0;
        v87.is_nil = 0;
        sub_10075FCEC(v87, v32);
      }

      while (v24 != v27);

      v10 = v76;
      v11 = v80;
      a3 = v26;
      v16 = v82;
      v25 = v84;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      [*(Strong + qword_1009602D0) setImage:0];
      v85 = v34;
      type metadata accessor for VideoView(0);
      sub_10029BCF8(&qword_100957FA0, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
      v35 = v34;
      sub_10077140C();
      sub_100760BEC();
      v25 = v84;

      sub_100016C74(v86);
    }

    v25 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v36 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v88.value.super.isa = 0;
    v88.is_nil = 0;
    sub_10075FCEC(v88, v37);

    v38 = *(v25 + a2);
    v39 = sub_10075FD2C();
    sub_10029BCF8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v40 = v38;
    v84 = a3;
    sub_100760BFC();

    if (!sub_10076BB5C())
    {
LABEL_19:
      sub_10076285C();
      v44 = v79;
      (*(v11 + 104))(v79, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v10);
      sub_10029BCF8(&qword_10094FC90, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v45 = sub_10076FF1C();
      v48 = *(v11 + 8);
      v46 = v11 + 8;
      v47 = v48;
      v48(v44, v10);
      if (v45)
      {
LABEL_46:
        v47(v16, v10);
        return;
      }

      v80 = v46;
      v49 = sub_10076BB6C();
      v51 = v50;
      v52 = sub_10076BBEC();
      v54 = v53;
      v55 = sub_10076BB0C();
      if (v55)
      {
        v56 = sub_10076518C();

        if (v56)
        {
          v57 = sub_10076C3EC();
          v55 = v58;
        }

        else
        {
          v57 = 0;
          v55 = 0;
        }
      }

      else
      {
        v57 = 0;
      }

      v59 = [v78 traitCollection];
      v60 = sub_1002965F0(v49, v51, v52, v54, v57, v55, v59, v19, v20);
      v62 = v61;

      v63 = sub_10076283C();
      v64 = sub_10076281C();
      v65 = sub_10076280C();
      if (v65 >> 62)
      {
        v71 = v65;
        v66 = sub_10077158C();
        v65 = v71;
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = v84;
      v16 = v82;
      if (v66)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = sub_10077149C();
        }

        else
        {
          if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v68 = *(v65 + 32);
        }
      }

      else
      {

        v68 = 0;
      }

      v69 = sub_10076288C();
      if (v69 >> 62)
      {
        v72 = v69;
        v73 = sub_10077158C();
        v69 = v72;
        if (v73)
        {
          goto LABEL_35;
        }
      }

      else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v69 & 0xC000000000000001) != 0)
        {
          v70 = sub_10077149C();
          goto LABEL_38;
        }

        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v70 = *(v69 + 32);

LABEL_38:

LABEL_45:
          v74 = [v78 traitCollection];
          sub_100140784(v63, v64, v68, v70, v74, v67, v16, v60, v62);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v70 = 0;
      goto LABEL_45;
    }

    v80 = v39;
    v41 = qword_10093FBE0;
    v23 = *(v25 + a2);
    if (v41 == -1)
    {
LABEL_16:
      v42 = sub_100763ADC();
      sub_10000A61C(v42, qword_10099DDA0);
      sub_1007639AC();
      [v23 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v23 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v43 = *(v25 + a2);
      sub_100760B8C();

      v16 = v82;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_10029A6AC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v150 = a11;
  v151 = a3;
  v183 = a2;
  v12 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v12 - 8);
  v146 = &v145 - v13;
  v148 = sub_10076350C();
  v155 = *(v148 - 8);
  __chkstk_darwin(v148);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v145 - v17;
  __chkstk_darwin(v19);
  v149 = &v145 - v20;
  v21 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v21 - 8);
  v156 = &v145 - v22;
  v23 = sub_10077164C();
  v153 = *(v23 - 8);
  v154 = v23;
  __chkstk_darwin(v23);
  v152 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1007673CC();
  v179 = *(v25 - 8);
  v180 = v25;
  __chkstk_darwin(v25);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076749C();
  v177 = *(v28 - 8);
  v178 = v28;
  __chkstk_darwin(v28);
  v176 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076997C();
  v173 = *(v30 - 8);
  v174 = v30;
  __chkstk_darwin(v30);
  v172 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076443C();
  v188 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v186 = &v145 - v36;
  v189 = sub_10076747C();
  v187 = *(v189 - 1);
  __chkstk_darwin(v189);
  v175 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v145 - v39;
  sub_100770ACC();
  v42 = v41;
  v44 = v43;
  v45 = sub_10076BB6C();
  v162 = v46;
  v163 = v45;
  v47 = sub_10076BBEC();
  v164 = v48;
  v165 = v47;
  if (sub_10076BB0C() && (v49 = sub_10076518C(), , v49))
  {
    v50 = sub_10076C3EC();
    v169 = v51;
    v170 = v50;
  }

  else
  {
    v169 = 0;
    v170 = 0;
  }

  sub_10076286C();
  v52 = [v183 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v53 = v189;
  v54 = sub_10000A61C(v189, qword_1009A0690);
  v166 = *(v187 + 16);
  v167 = v187 + 16;
  v166(v40, v54, v53);
  v55 = sub_10077071C();
  v181 = v27;
  v182 = a1;
  v147 = v18;
  v145 = v15;
  if (v55)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v56 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v56 = qword_100944CA0;
  }

  v57 = sub_10000A61C(v32, v56);
  v58 = v188;
  (*(v188 + 16))(v34, v57, v32);
  (*(v58 + 32))();
  v59 = [v52 preferredContentSizeCategory];
  sub_10077084C();
  v171 = v52;

  sub_1007643EC();
  sub_10076441C();
  v185 = v40;
  sub_10076746C();
  sub_10076745C();
  v60 = sub_10076DDDC();
  swift_allocObject();
  v161 = sub_10076DDBC();
  v61 = objc_opt_self();
  v159 = v61;
  v62 = [v61 preferredFontForTextStyle:UIFontTextStyleBody];
  v63 = sub_10076C04C();
  v226[3] = v63;
  v184 = sub_10029BCF8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v226[4] = v184;
  v64 = sub_10000DB7C(v226);
  v65 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = *(v63 - 8);
  v168 = v32;
  v160 = *(v66 + 104);
  v67 = v66 + 104;
  v157 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v160(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
  v158 = v67;
  sub_10076C90C();
  sub_10000CD74(v226);
  v68 = v172;
  sub_10076996C();
  sub_10076994C();
  v69 = v174;
  v173 = *(v173 + 8);
  (v173)(v68, v174);
  v70 = [v61 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v225[3] = v63;
  v225[4] = v184;
  v71 = sub_10000DB7C(v225);
  v72 = v65;
  v73 = v160;
  v160(v71, v72, v63);
  sub_10076C90C();
  sub_10000CD74(v225);
  sub_10076996C();
  sub_10076994C();
  v74 = v173;
  (v173)(v68, v69);
  v75 = [v159 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v224[3] = v63;
  v224[4] = v184;
  v76 = sub_10000DB7C(v224);
  v73(v76, v157, v63);
  sub_10076C90C();
  sub_10000CD74(v224);
  sub_10076996C();
  sub_10076994C();
  v74(v68, v69);
  sub_10001D420();
  swift_allocObject();
  v77 = sub_10076DDBC();

  sub_10001D420();
  swift_allocObject();
  v78 = sub_10076DDBC();
  v166(v175, v185, v189);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v60;
  v79 = v161;
  v221 = v161;
  v220 = 0;
  *&v218[40] = 0u;
  v219 = 0u;
  sub_10000A570(v226, v218);
  sub_10000A570(v225, &v217);
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v213 = 0;
  v211 = 0u;
  v212 = 0u;

  v80 = sub_10076DDCC();
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v60;
  v208 = v80;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v197 = 0u;
  *&v196[40] = 0u;
  sub_10000A570(v224, v196);
  v194 = v60;
  v195 = &protocol witness table for LayoutViewPlaceholder;
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v193 = v77;
  v191 = v60;
  v190 = v78;
  v81 = v176;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1007841E0;
  v83 = v171;
  *(v82 + 32) = v171;
  v84 = v83;
  v85 = sub_10076DEEC();
  sub_10029BCF8(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v86 = v178;
  sub_10076D2AC();

  (*(v177 + 8))(v81, v86);
  sub_10000CD74(v224);
  sub_10000CD74(v225);
  sub_10000CD74(v226);
  (*(v188 + 8))(v186, v168);
  (*(v187 + 8))(v185, v189);
  v88 = v181;
  v87 = v182;
  sub_10076285C();
  v89 = sub_1007673BC();
  if ((v89 & 1) == 0 || (sub_10067B804(v89) & 1) == 0)
  {
    return (*(v179 + 8))(v88, v180);
  }

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v90 = sub_10076D9AC();
  sub_10000A61C(v90, qword_1009A2350);
  v91 = v152;
  sub_10076D17C();
  v92 = v183;
  sub_10076D40C();
  (*(v153 + 8))(v91, v154);
  v93 = sub_10076283C();
  v94 = sub_10076281C();
  v95 = sub_10076280C();
  if (v95 >> 62)
  {
    v97 = v95;
    v98 = sub_10077158C();
    v95 = v97;
    if (v98)
    {
      goto LABEL_20;
    }

LABEL_26:

    v79 = 0;
    goto LABEL_27;
  }

  if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v95 & 0xC000000000000001) != 0)
  {
    v79 = sub_10077149C();
  }

  else
  {
    if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v79 = *(v95 + 32);
  }

LABEL_27:
  v99 = sub_10076288C();
  if (v99 >> 62)
  {
    v101 = v99;
    v102 = sub_10077158C();
    v99 = v101;
    if (v102)
    {
      goto LABEL_29;
    }

LABEL_34:

    v189 = 0;
    goto LABEL_35;
  }

  if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v99 & 0xC000000000000001) != 0)
  {
    v100 = sub_10077149C();
  }

  else
  {
    if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v189 = v100;

LABEL_35:
  v103 = [v92 traitCollection];
  sub_100299B1C(v156);

  v77 = sub_10076283C();
  v78 = sub_10076281C();
  v104 = sub_10076280C();
  if (v104 >> 62)
  {
    v105 = v104;
    v106 = sub_10077158C();
    v104 = v105;
    if (v106)
    {
LABEL_37:
      if ((v104 & 0xC000000000000001) == 0)
      {
        if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v87 = *(v104 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v87 = sub_10077149C();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v87 = 0;
LABEL_43:
  v107 = sub_10076288C();
  if (v107 >> 62)
  {
    v110 = v107;
    v111 = sub_10077158C();
    v107 = v110;
    v188 = v79;
    if (v111)
    {
LABEL_45:
      if ((v107 & 0xC000000000000001) == 0)
      {
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v109 = *(v107 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v185 = sub_10077158C();
        if (v87)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v109 = sub_10077149C();
      goto LABEL_48;
    }
  }

  else
  {
    v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v188 = v79;
    if (v108)
    {
      goto LABEL_45;
    }
  }

  v109 = 0;
LABEL_51:
  v112 = sub_1007673BC();
  v187 = v94;
  if ((v112 & 1) == 0)
  {

    v116 = v155;
    v118 = v148;
    v117 = v149;
    (*(v155 + 104))(v149, enum case for LockupMediaLayout.DisplayType.none(_:), v148);
LABEL_88:
    v141 = v189;
    type metadata accessor for LockupMediaView(0);
    v142 = v156;
    v143 = v92;
    v144 = v181;
    sub_100141F14(v93, v187, v188, v141, v156, v117, v143, v181, v42, v44);

    (*(v116 + 8))(v117, v118);
    sub_10000CFBC(v142, &unk_1009467E0, qword_10078CB50);
    return (*(v179 + 8))(v144, v180);
  }

  if (v78 | v77)
  {
    v119 = v147;
    sub_10076D3AC();

    v116 = v155;
    v118 = v148;
    (*(v155 + 104))(v119, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v148);
    v117 = v149;
    (*(v116 + 32))(v149, v119, v118);
    goto LABEL_88;
  }

  v114 = sub_10057F8EC(v87, v109, 0, 1, v113);
  v78 = v114;
  v94 = v114 >> 62;
  if (v114 >> 62)
  {
    goto LABEL_66;
  }

  v185 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
LABEL_55:
    v115 = sub_1007601CC();
    goto LABEL_68;
  }

LABEL_67:
  v115 = 0;
LABEL_68:
  LODWORD(v182) = sub_10057FC34(v115);

  v186 = v93;
  if (v87)
  {
    v120 = sub_1007601CC();
  }

  else
  {
    v120 = 0;
  }

  v121 = v179;
  v122 = v146;
  v123 = v88;
  v124 = v180;
  (*(v179 + 16))(v146, v123, v180);
  v125.n128_f64[0] = (*(v121 + 56))(v122, 0, 1, v124);
  v126 = sub_10058015C(v120, v122, v125);

  sub_10000CFBC(v122, &qword_10094E260, qword_100796150);
  if (!v94)
  {
    result = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v93 = v186;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_10077158C();
  v93 = v186;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v78 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_76:

    v127 = sub_10076BDCC();

    if (v127)
    {

      v116 = v155;
      v128 = v147;
      v118 = v148;
      (*(v155 + 104))(v147, enum case for LockupMediaLayout.DisplayType.landscape(_:), v148);
      v117 = v149;
LABEL_87:
      (*(v116 + 32))(v117, v128, v118);
      goto LABEL_88;
    }

LABEL_80:
    v129 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v130 = v155;
    v131 = v145;
    v132 = v148;
    v184 = *(v155 + 104);
    v184(v145, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v148);
    v133 = sub_1007634FC();
    v178 = *(v130 + 8);
    v178(v131, v132);
    if (((v185 >= v133) & v126) != 0 || (v129 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v132), v134 = sub_1007634FC(), v135 = v178, v178(v131, v132), ((v185 >= v134) & v182) != 0) || (v129 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v132), v136 = sub_1007634FC(), v135(v131, v132), v185 >= v136))
    {

      v128 = v147;
      v184(v147, v129, v132);
      v92 = v183;
      v118 = v132;
    }

    else
    {
      v137 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v184(v131, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v132);
      v138 = sub_1007634FC();

      v135(v131, v132);
      v118 = v132;
      if (v185 == v138)
      {
        v128 = v147;
        v139 = v147;
        v140 = v137;
      }

      else
      {
        v140 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v128 = v147;
        v139 = v147;
      }

      v184(v139, v140, v132);
      v92 = v183;
    }

    v116 = v155;
    v117 = v149;
    v93 = v186;
    goto LABEL_87;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_10029BCF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10029BD40()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
  [v1 setHidden:0];
  v20 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
  [v2 setHidden:0];
  v3 = [v1 subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v4 = sub_1007701BC();

  v21 = v2;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden:0];
      [v8 setAlpha:1.0];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = [v2 subviews];
  v11 = sub_1007701BC();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10077158C())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_10077149C();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setHidden:0];
      [v15 setAlpha:1.0];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setHidden:0];
  [*&v21[v17] setUserInteractionEnabled:1];
  v18 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v20 + v18) = 0;

  return result;
}

uint64_t sub_10029C010()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E208);
  sub_10000A61C(v0, qword_10099E208);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10029C174(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v46 = a1;
  sub_1007639FC();
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0E98);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_10076D9AC();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_10076D9BC();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_1007639DC();
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v6, qword_1009A0EB0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v54);
  v44(v17, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763AAC();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_10076D9BC();
  v22 = v49;
  v49(v5, v2);
  sub_100763A7C();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v54);
  v21(v26, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763A6C();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v54);
  v21(v28, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763ACC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000A61C(v45, qword_1009A0EE0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v54);
  v21(v32, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v29, qword_1009A0EC8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_10076D9BC();
  v38 = v49;
  v49(v5, v2);
  sub_100763A3C();
  sub_100763A1C();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v54);
  v37(v39, v5, v2);
  sub_10076D9BC();
  v38(v5, v2);
  return sub_100763A2C();
}

double sub_10029CAF0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock);
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock + 8);
  v4 = (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_10001CE50(v2, v3);
  sub_10001CE50(v2, v3);
  sub_1000167E0(v5, v6);
  sub_1002624F8();
  sub_1000167E0(v2, v3);
  v7 = *v1;
  v8 = v1[1];
  v9 = (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);
  v10 = *v9;
  v11 = v9[1];
  *v9 = *v1;
  v9[1] = v8;
  sub_10001CE50(v7, v8);
  sub_10001CE50(v7, v8);
  sub_1000167E0(v10, v11);
  sub_1002624F8();

  return sub_1000167E0(v7, v8);
}

char *sub_10029CBF0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = &v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter] = 0;
  type metadata accessor for SmallLockupView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] = v16;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView] = v17;
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52.receiver = v18;
  v52.super_class = ObjectType;
  v24 = v18;
  objc_msgSendSuper2(&v52, "setLayoutMargins:", UIEdgeInsetsZero.top, left, bottom, right);
  v25 = *&v18[v19];
  v51.receiver = v24;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutMargins");
  [v25 setLayoutMargins:?];
  v26 = *&v18[v20];
  v50.receiver = v24;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutMargins");
  [v26 setLayoutMargins:?];
  [v24 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [*&v18[v19] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(*&v18[v19] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView) setHidden:1];
  v27 = *&v18[v19];
  sub_100261178(1);

  [v24 addSubview:*&v18[v20]];
  v49 = v19;
  [v24 addSubview:*&v18[v19]];
  [*&v18[v20] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = v24;
  sub_10029D110();
  v28 = qword_100940AE0;
  v29 = *(*&v18[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_10076D3DC();
  v31 = sub_10000A61C(v30, qword_1009A0EB0);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v47 = v31;
  v33(v13);
  v34 = *(v32 + 56);
  v34(v13, 0, 1, v30);
  sub_1007625DC();

  v35 = *(*&v18[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v36 = qword_100940AE8;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v30, qword_1009A0EC8);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  sub_1007625DC();

  v39 = v49;
  v40 = *(*&v18[v49] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  (v33)(v13, v47, v30);
  v34(v13, 0, 1, v30);
  v41 = v40;
  sub_1007625DC();

  v42 = *(*&v18[v39] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  v43 = v42;
  sub_1007625DC();
  v44 = v48;

  return v44;
}

id sub_10029D110()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = sub_10077087C();

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  if (v9)
  {
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A61C(v2, qword_10099D298);
    v24 = v3[2];
    v24(v6, v11, v2);
    v12 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v13 = v3[3];
    v13(&v10[v12], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v14 = v3[1];
    v14(v6, v2);
    [v10 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v24(v6, v11, v2);
    v16 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v13(&v15[v16], v6, v2);
    swift_endAccess();
    [v15 setNeedsLayout];
    v14(v6, v2);
    return [v15 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
  }

  else
  {
    if (qword_10093F840 != -1)
    {
      swift_once();
    }

    v18 = sub_10000A61C(v2, qword_10099D280);
    v24 = v3[2];
    v24(v6, v18, v2);
    v19 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v20 = v3[3];
    v20(&v10[v19], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v21 = v3[1];
    v21(v6, v2);
    [v10 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v24(v6, v18, v2);
    v23 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v20(&v22[v23], v6, v2);
    swift_endAccess();
    [v22 setNeedsLayout];
    v21(v6, v2);
    return [v22 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
  }
}

void sub_10029D7B0(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = v2;
    LOBYTE(v4) = a2;
    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = [v5 subviews];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v7 = sub_1007701BC();

      aBlock = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
      {
        v32 = v4;
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_10077149C();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v4 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for OfferButton();
          if (swift_dynamicCastClass())
          {
          }

          else
          {
            sub_1007714CC();
            sub_1007714FC();
            sub_10077150C();
            sub_1007714DC();
          }

          ++v9;
          if (v4 == i)
          {
            v12 = aBlock;
            LOBYTE(v4) = v32;
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

      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007841E0;
      v14 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
      *(v13 + 32) = v14;
      if (v4)
      {
        v15 = v14;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = v15;
          goto LABEL_24;
        }

LABEL_52:
        v16 = sub_10077149C();
LABEL_24:
        v17 = v16;
        [v16 setHidden:0];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        v37 = sub_10029F3B8;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_10009AEDC;
        v36 = &unk_10088F738;
        v20 = _Block_copy(&aBlock);

        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        v37 = sub_10029F410;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_1000513F0;
        v36 = &unk_10088F788;
        v22 = _Block_copy(&aBlock);

        [v18 animateWithDuration:4 delay:v20 options:v22 animations:0.33 completion:0.0];
        _Block_release(v22);
        _Block_release(v20);
        return;
      }

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v23 = sub_10077158C();
      }

      else
      {
        v23 = v12[2];
      }

      v24 = v14;
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v26 = sub_10077149C();
          }

          else
          {
            if (v25 >= v12[2])
            {
              goto LABEL_50;
            }

            v26 = v12[v25 + 4];
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          [v26 setAlpha:0.0];
          [v27 setHidden:1];

          ++v25;
          if (v28 == v23)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_38:

      v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        v12 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = sub_10077149C();
          }

          else
          {
            if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v30 = *(v13 + 8 * v12 + 32);
          }

          v31 = v30;
          v12 = (v12 + 1);
          [v30 setAlpha:1.0];
          [v31 setHidden:0];
        }

        while (v29 != v12);
      }
    }
  }
}

void sub_10029DCB0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10077158C())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_10077149C();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_10029DE34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_10029DFA0(double a1, double a2, uint64_t a3, objc_class *a4)
{
  v8 = *v4;
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v9 = sub_100763ADC();
  v10 = sub_10000A61C(v9, qword_10099DDA0);
  v15.receiver = v8;
  v15.super_class = a4;
  objc_msgSendSuper2(&v15, "layoutMargins");
  sub_1002630B4(v10, v8, a1, a2, v13, v14, v11, v12);
}

double sub_10029E06C()
{
  swift_beginAccess();

  return result;
}

double sub_10029E0B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_10029E170(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076361C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094FCE0, &qword_100798EB0);
  __chkstk_darwin(v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v12 - 8);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v63 = a1;
  v23 = *(*(a1 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v24 = v5[13];
  v61 = enum case for MediaOverlayStyle.dark(_:);
  v60 = v24;
  v58 = v5 + 13;
  v24(&v52 - v21, v20);
  v59 = v5[7];
  v57 = v5 + 7;
  v59(v22, 0, 1, v4);
  v62 = v7;
  v25 = *(v7 + 48);
  v64 = a2;
  sub_10029F418(a2, v11);
  sub_10029F418(v22, &v11[v25]);
  v26 = v5[6];
  v27 = v26(v11, 1, v4);
  v56 = v5;
  if (v27 != 1)
  {
    sub_10029F418(v11, v18);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v32 = v5[4];
      v54 = v26;
      v33 = v55;
      v32(v55, &v11[v25], v4);
      v53 = sub_10029F488(&unk_100952B00, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
      v34 = v23;
      v35 = v23;
      LODWORD(v53) = sub_10076FF1C();
      v36 = v5[1];
      v37 = v33;
      v26 = v54;
      v36(v37, v4);
      sub_10000CFBC(v22, &qword_10094FCE8, qword_100798EB8);
      v36(v18, v4);
      v23 = v34;
      sub_10000CFBC(v11, &qword_10094FCE8, qword_100798EB8);
      v29 = v65;
      if (v53)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v31 = sub_100770E1C();
      goto LABEL_10;
    }

    v30 = v23;
    sub_10000CFBC(v22, &qword_10094FCE8, qword_100798EB8);
    (v5[1])(v18, v4);
LABEL_6:
    sub_10000CFBC(v11, &qword_10094FCE0, &qword_100798EB0);
    v29 = v65;
    goto LABEL_7;
  }

  v28 = v23;
  sub_10000CFBC(v22, &qword_10094FCE8, qword_100798EB8);
  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10000CFBC(v11, &qword_10094FCE8, qword_100798EB8);
  v29 = v65;
LABEL_9:
  v31 = [objc_opt_self() whiteColor];
LABEL_10:
  v38 = v31;
  [v23 setTintColor:v31];

  v39 = *(*(v63 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v60(v29, v61, v4);
  v59(v29, 0, 1, v4);
  v40 = *(v62 + 48);
  v41 = v67;
  sub_10029F418(v64, v67);
  sub_10029F418(v29, v41 + v40);
  if (v26(v41, 1, v4) == 1)
  {
    v42 = v39;
    sub_10000CFBC(v29, &qword_10094FCE8, qword_100798EB8);
    if (v26((v41 + v40), 1, v4) == 1)
    {
      sub_10000CFBC(v41, &qword_10094FCE8, qword_100798EB8);
LABEL_18:
      v44 = [objc_opt_self() whiteColor];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_10029F418(v41, v66);
  if (v26((v41 + v40), 1, v4) == 1)
  {
    v43 = v39;
    sub_10000CFBC(v29, &qword_10094FCE8, qword_100798EB8);
    (v56[1])(v66, v4);
LABEL_15:
    sub_10000CFBC(v41, &qword_10094FCE0, &qword_100798EB0);
    goto LABEL_16;
  }

  v45 = v66;
  v46 = v55;
  v47 = v56;
  (v56[4])(v55, v41 + v40, v4);
  sub_10029F488(&unk_100952B00, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v48 = v39;
  v49 = sub_10076FF1C();
  v50 = v47[1];
  v50(v46, v4);
  sub_10000CFBC(v29, &qword_10094FCE8, qword_100798EB8);
  v50(v45, v4);
  sub_10000CFBC(v41, &qword_10094FCE8, qword_100798EB8);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v44 = sub_100770E1C();
LABEL_19:
  v51 = v44;
  [v39 setTintColor:v44];
}

void sub_10029E930(void (*a1)(char *, uint64_t), uint64_t a2, double a3, double a4)
{
  v9 = sub_10076BF6C();
  __chkstk_darwin(v9 - 8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BEDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100763ADC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E67C();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v72 = v4;
    v73 = v12;
    v77 = v11;
    v21 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
    v22 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
    v74 = a1;
    if (v22)
    {
      v23 = v22;

      sub_1006EC184(a3, a4, v20, v22, a2);
    }

    else
    {
      v42 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;

      sub_10075E66C();
      v43 = sub_10076BB5C();

      if (v43)
      {
        v75 = a2;
        v44 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        (*(v16 + 16))(v18, v21 + v44, v15);
        sub_1007639AC();
        (*(v16 + 8))(v18, v15);
        sub_10076BEEC();
        sub_10076BE9C();
        v69 = *(v73 + 8);
        v70 = v73 + 8;
        v69(v14, v77);
        v71 = sub_10076BFCC();
        v68 = v42;
        v45 = *(v21 + v42);
        if (v45)
        {
          v46 = (v45 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
        }

        else
        {
          v46 = (v21 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
        }

        v47 = *v46;
        sub_10076BF7C();
        sub_10075FCCC();
        [v47 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v48 = *(v21 + v68);
        if (v48)
        {
          v49 = (v48 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
        }

        else
        {
          v49 = (v21 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
        }

        v50 = *v49;
        sub_10076BEEC();
        v51 = sub_10076BE9C();
        v69(v14, v77);
        [v50 setContentMode:v51];

        v52 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
        sub_10075FD2C();
        sub_10029F488(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        v53 = v52;
        a2 = v75;
        sub_100760B8C();
      }
    }

    sub_10075E66C();
    v54 = sub_10076BB5C();

    if (v54)
    {
      v75 = a2;
      v55 = *(v72 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
      v56 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v16 + 16))(v18, v55 + v56, v15);
      sub_1007639AC();
      (*(v16 + 8))(v18, v15);
      sub_10076BEEC();
      sub_10076BE9C();
      v57 = v77;
      v73 = *(v73 + 8);
      (v73)(v14, v77);
      sub_10076BFCC();
      v58 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
      v59 = *(v55 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
      if (v59)
      {
        v60 = (v59 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      }

      else
      {
        v60 = (v55 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      }

      v61 = *v60;
      sub_10076BF7C();
      sub_10075FCCC();
      [v61 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v62 = *(v55 + v58);
      if (v62)
      {
        v63 = (v62 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      }

      else
      {
        v63 = (v55 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      }

      v64 = *v63;
      sub_10076BEEC();
      v65 = sub_10076BE9C();
      (v73)(v14, v57);
      [v64 setContentMode:v65];

      v66 = *(v55 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10075FD2C();
      sub_10029F488(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v67 = v66;
      sub_100760B8C();
    }
  }

  else if (sub_10076BB5C())
  {
    v75 = a2;
    v24 = v12;
    v25 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
    v26 = v24;
    v27 = v11;
    v28 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v16 + 16))(v18, v25 + v28, v15);
    sub_1007639AC();
    (*(v16 + 8))(v18, v15);
    sub_10076BEEC();
    sub_10076BE9C();
    v29 = *(v26 + 8);
    v77 = v27;
    v74 = v29;
    v29(v14, v27);
    sub_10076BFCC();
    v30 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
    v31 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
    if (v31)
    {
      v32 = (v31 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v32 = (v25 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    }

    v33 = *v32;
    sub_10076BF7C();
    sub_10075FCCC();
    [v33 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();

    v34 = *(v25 + v30);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v35 = (v25 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    }

    v36 = *v35;
    sub_10076BEEC();
    v37 = sub_10076BE9C();
    v74(v14, v77);
    [v36 setContentMode:v37];

    v38 = *(v25 + v30);
    if (v38)
    {
      v39 = (v38 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v39 = (v25 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    }

    v40 = *v39;
    sub_10075FD2C();
    sub_10029F488(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v41 = v40;
    sub_100760B8C();
  }
}

uint64_t sub_10029F378()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10029F3C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10029F3D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029F418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029F488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10029F4D8()
{
  v1 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100016E2C(v0 + v11, v3, &unk_10094DE60, "ܱ\b");
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10000CFBC(v3, &unk_10094DE60, "ܱ\b");
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_10075E02C().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

id sub_10029F704()
{
  v1 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100016E2C(v0 + v11, v3, &unk_10094DE60, "ܱ\b");
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10000CFBC(v3, &unk_10094DE60, "ܱ\b");
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_10075E02C().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    if (!v13)
    {
      return 0;
    }

    ObjectType = swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = (*(v15 + 312))(ObjectType, v15);
    }

    else
    {
      v16 = [v13 snapshotViewAfterScreenUpdates:0];
    }

    v17 = v16;

    return v17;
  }

  return result;
}

void sub_10029F9A4(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = 0uLL;
  width = 0.0;
  if (!Strong)
  {
    v20 = 1;
    height = 0.0;
LABEL_15:
    *a2 = v13;
    *(a2 + 16) = width;
    *(a2 + 24) = height;
    *(a2 + 32) = v20;
    return;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 collectionView];

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_100016E2C(v2 + v19, v7, &unk_10094DE60, "ܱ\b");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10000CFBC(v7, &unk_10094DE60, "ܱ\b");
LABEL_14:
    v20 = 1;
    height = 0.0;
    v13 = 0uLL;
    goto LABEL_15;
  }

  (*(v9 + 32))(v11, v7, v8);
  isa = sub_10075E02C().super.isa;
  v23 = [v18 cellForItemAtIndexPath:isa];

  (*(v9 + 8))(v11, v8);
  if (!v23)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v24 superview];
  if (!v25)
  {

LABEL_18:
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v15 collectionView];
  if (!v27)
  {

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    v39 = v27;
    [v39 transform];
    tx = v68.tx;
    ty = v68.ty;
    v66 = *&v68.c;
    origin = *&v68.a;
    v68.a = 1.0;
    v68.b = 0.0;
    v68.c = 0.0;
    v68.d = 1.0;
    v68.tx = 0.0;
    v68.ty = 0.0;
    [v39 setTransform:&v68];
    [v24 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    [v26 convertRect:0 toView:{v43, v45, v47, v49}];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    *&v68.a = origin;
    *&v68.c = v66;
    v68.tx = tx;
    v68.ty = ty;
    [v39 setTransform:&v68];
    [v39 safeAreaInsets];
    v58.x = v51 + 0.0;
    origin = v58;
    v60 = v53 - v59;
    v61 = [v39 superview];

    if (v61)
    {
      [v61 safeAreaInsets];
      v63 = v62;
    }

    else
    {

      v63 = 0.0;
    }

    v20 = 0;
    width = v55 + 0.0;
    height = v57 + 0.0;
    *&v64 = origin.x;
    *(&v64 + 1) = v60 + v63;
    v13 = v64;
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v15 view];
  if (v29)
  {
    v30 = v29;
    [v24 bounds];
    [v30 convertRect:v24 fromCoordinateSpace:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [v24 transform];
    v66 = *&v68.c;
    origin = *&v68.a;
    v65 = *&v68.tx;

    *&v68.a = origin;
    *&v68.c = v66;
    *&v68.tx = v65;
    v69.origin.x = v32;
    v69.origin.y = v34;
    v69.size.width = v36;
    v69.size.height = v38;
    v70 = CGRectApplyAffineTransform(v69, &v68);
    v66 = *&v70.origin.y;
    origin = v70.origin;
    width = v70.size.width;
    height = v70.size.height;

    *&v13 = origin.x;
    v20 = 0;
    *(&v13 + 1) = v66;
    goto LABEL_15;
  }

  __break(1u);
}

id sub_10029FECC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&qword_10094FD48, &unk_100798F70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v87 - v10;
  v99 = sub_10076C38C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v13 - 8);
  v94 = &v87 - v14;
  v96 = sub_100770BFC();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = sub_10076341C();
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1002A26D8(a1);
  if (!v27)
  {
    return 0;
  }

  v100 = a1;
  v101 = v11;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentedViewController + 8) = v28;
  v104 = v27;
  swift_unknownObjectWeakAssign();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v103 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) = IsReduceMotionEnabled;
  swift_getObjectType();
  v30 = swift_conformsToProtocol2();
  if (!v30 || !a3)
  {
    goto LABEL_6;
  }

  v31 = v30;
  v92 = v4;
  v89 = a2;
  v90 = v9;
  v91 = v8;
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 16);
  v34 = a3;
  v35 = v33(ObjectType, v31);
  v36 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  swift_beginAccess();
  sub_100016E2C(v35 + v36, v24, &unk_1009428D0, &unk_100783DC0);

  v38 = v105;
  v37 = v106;
  if ((*(v105 + 48))(v24, 1, v106) == 1)
  {

    sub_10000CFBC(v24, &unk_1009428D0, &unk_100783DC0);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v4 = v92;
LABEL_6:
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController + 8) = 0;
    swift_unknownObjectWeakAssign();
    v39 = sub_10075E11C();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_10021560C(v18, v4 + v40);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v100;
    v43 = v103;
    if (Strong)
    {
      v44 = Strong;
      v45 = *(Strong + qword_10099CC50);
      v44[qword_10099CC50] = 0;
      sub_1000AECA4(v45);
    }

    goto LABEL_25;
  }

  v47 = v102;
  (*(v38 + 32))(v102, v24, v37);
  v48 = v92;
  *(v92 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController + 8) = v31;
  swift_unknownObjectWeakAssign();
  v43 = v103;
  v8 = v91;
  v9 = v90;
  v49 = v38;
  a2 = v89;
  if (*(v48 + v103))
  {
    (*(v49 + 8))(v47, v37);

    v42 = v100;
    v4 = v92;
LABEL_25:
    v81 = *(v4 + v43);
    v82 = objc_allocWithZone(type metadata accessor for ArticlePagePresentationController());
    v83 = a2;
    sub_1004161A0(v42, a2, v81);
    v46 = v84;
    *(v84 + OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider + 8) = &off_10088F7B0;
    swift_unknownObjectWeakAssign();
    v85 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A5D4(&qword_10094FD60, &qword_100789390);
    sub_1002A2E24();

    sub_10076F45C();
    v86 = v101;
    sub_10076F47C();

    sub_10000CD74(v107);
    (*(v9 + 8))(v86, v8);
    return v46;
  }

  v88 = v34;
  v50 = [v34 collectionView];
  v42 = v100;
  if (v50 && (v51 = v50, v52 = [v50 indexPathsForSelectedItems], v51, v52))
  {
    v53 = sub_10075E11C();
    v54 = sub_1007701BC();

    v4 = v92;
    if (*(v54 + 16))
    {
      v55 = *(v53 - 8);
      (*(v55 + 16))(v21, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v53);

      (*(v55 + 56))(v21, 0, 1, v53);
    }

    else
    {

      (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
    }
  }

  else
  {
    v56 = sub_10075E11C();
    (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
    v4 = v92;
  }

  v57 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_10021560C(v21, v4 + v57);
  swift_endAccess();
  sub_10076C84C();
  sub_1002A2E88();
  v58 = v102;
  sub_10076332C();
  v59 = v107[0];
  if (!v107[0])
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v60 = sub_10029F704();
  if (!v60)
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v61 = v60;
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (!v62)
  {

    (*(v105 + 8))(v102, v106);
    goto LABEL_25;
  }

  v63 = v62;
  result = [v88 view];
  if (result)
  {
    v65 = result;
    v92 = swift_getObjectType();
    v66 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
    v67 = sub_100770BDC();
    v68 = *(v67 - 8);
    v69 = v94;
    (*(v68 + 104))(v94, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = v93;
    sub_100770BEC();
    sub_10000CFBC(v69, &unk_10094FD50, &unk_100788D10);
    sub_100770BBC();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    (*(v95 + 8))(v70, v96);
    v108[0] = v72;
    v108[1] = v74;
    v108[2] = v76;
    v108[3] = v78;
    v109 = 0;
    (*(v63 + 224))(v108, v92, v63);
    swift_getKeyPath();
    v79 = v97;
    v80 = v102;
    sub_10076338C();

    sub_1000B44A0(v59, v61, v63, v79);

    (*(v98 + 8))(v79, v99);
    (*(v105 + 8))(v80, v106);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v43 = v103;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_1002A0C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + qword_10099CC50);
      v5[qword_10099CC50] = 0;
      sub_1000AECA4(v6);
    }
  }

  v7 = a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_1004A7FB4(1, ObjectType, v10);
  }

  v12 = sub_10029F4D8();
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  v14 = sub_1002A0D7C();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = swift_getObjectType();
    (*(v17 + 248))(1, v18, v17);
  }

  v19 = sub_1002A0E00();
  if (v19)
  {
    v21 = v20;
    v23 = v19;
    v22 = swift_getObjectType();
    (*(v21 + 248))(1, v22, v21);
  }
}

char *sub_1002A0D7C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[qword_100946A40];
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1002A0E00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + qword_100946A40);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1002A0E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_10099CC50);
    v6[qword_10099CC50] = 0;
    sub_1000AECA4(v7);
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 view];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [v10 layer];

    v12 = *&CATransform3DIdentity.m33;
    v25[4] = *&CATransform3DIdentity.m31;
    v25[5] = v12;
    v13 = *&CATransform3DIdentity.m43;
    v25[6] = *&CATransform3DIdentity.m41;
    v25[7] = v13;
    v14 = *&CATransform3DIdentity.m13;
    v25[0] = *&CATransform3DIdentity.m11;
    v25[1] = v14;
    v15 = *&CATransform3DIdentity.m23;
    v25[2] = *&CATransform3DIdentity.m21;
    v25[3] = v15;
    [v11 setTransform:v25];
  }

  type metadata accessor for ArticleContainerViewController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    *(v16 + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_allowTraitCollectionOverrides) = 1;
  }

  v17 = sub_10029F4D8();
  if (v17)
  {
    v18 = v17;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();

    if (v19)
    {
      v20 = a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = *(v20 + 8);
        ObjectType = swift_getObjectType();
        (*(v23 + 32))(0, ObjectType, v23);
      }
    }
  }
}

void sub_1002A1030(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      v14 = *(v12 + 8);
      v15 = Strong;
      ObjectType = swift_getObjectType();
      sub_1004A8058(0, ObjectType, v14);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v12 + 8);
      v20 = swift_getObjectType();
      sub_1004A80D0(v20, v19);
    }

    v21 = sub_1002A0D7C();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_getObjectType();
      (*(v24 + 248))(0, v25, v24);
    }

    v26 = sub_1002A0E00();
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = swift_getObjectType();
      (*(v29 + 248))(0, v30, v29);
    }

    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v43 = v31;
      v32 = swift_unknownObjectWeakLoadStrong();
      sub_1000AE67C(v32, *(v12 + 8));

      v33 = v43;
    }
  }

  else
  {
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong collectionView];

      if (v35)
      {
        v36 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
        swift_beginAccess();
        sub_100016E2C(a3 + v36, v7, &unk_10094DE60, "ܱ\b");
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {

          sub_10000CFBC(v7, &unk_10094DE60, "ܱ\b");
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          isa = sub_10075E02C().super.isa;
          v38 = [v35 cellForItemAtIndexPath:isa];

          (*(v9 + 8))(v11, v8);
          if (v38)
          {
            [v38 setHidden:0];
          }
        }
      }
    }

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = *(v12 + 8);
      v42 = swift_getObjectType();
      sub_1004A7FB4(0, v42, v41);
    }
  }
}

char *sub_1002A1458(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = *(v3 + 1);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v7[qword_10099E3A0] = 0;
  }

  sub_10029F9A4(0, v41);
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
  v9 = type metadata accessor for TodayTransitionDismissAnimation();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect];
  v11[32] = v42;
  v12 = v41[1];
  *v11 = v41[0];
  *(v11 + 1) = v12;
  v10[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition] = v8;
  v40.receiver = v10;
  v40.super_class = v9;
  v13 = objc_msgSendSuper2(&v40, "init");
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v6;
  v15 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v16 = *&v13[v15];
  v17 = v1;
  v18 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10049DEB4(0, *(v16 + 2) + 1, 1, v16);
    *&v13[v15] = v16;
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_10049DEB4((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v22 = &v16[24 * v21];
  *(v22 + 4) = sub_1002A2638;
  *(v22 + 5) = v14;
  v22[48] = 0;
  *&v13[v15] = v16;
  swift_endAccess();

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v17;
  swift_beginAccess();
  v24 = *&v13[v15];
  v25 = v17;
  v26 = a1;

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v24;
  if ((v27 & 1) == 0)
  {
    v24 = sub_10049DEB4(0, *(v24 + 2) + 1, 1, v24);
    *&v13[v15] = v24;
  }

  v29 = *(v24 + 2);
  v28 = *(v24 + 3);
  if (v29 >= v28 >> 1)
  {
    v24 = sub_10049DEB4((v28 > 1), v29 + 1, 1, v24);
  }

  *(v24 + 2) = v29 + 1;
  v30 = &v24[24 * v29];
  *(v30 + 4) = sub_1002A2684;
  *(v30 + 5) = v23;
  v30[48] = 1;
  *&v13[v15] = v24;
  swift_endAccess();

  v31 = swift_allocObject();
  v31[2] = v18;
  v31[3] = v6;
  v31[4] = v25;
  swift_beginAccess();
  v32 = *&v13[v15];
  v33 = v25;
  v34 = v18;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v32;
  if ((v35 & 1) == 0)
  {
    v32 = sub_10049DEB4(0, *(v32 + 2) + 1, 1, v32);
    *&v13[v15] = v32;
  }

  v37 = *(v32 + 2);
  v36 = *(v32 + 3);
  if (v37 >= v36 >> 1)
  {
    v32 = sub_10049DEB4((v36 > 1), v37 + 1, 1, v32);
  }

  *(v32 + 2) = v37 + 1;
  v38 = &v32[24 * v37];
  *(v38 + 4) = sub_1002A26CC;
  *(v38 + 5) = v31;
  v38[48] = 2;
  *&v13[v15] = v32;
  swift_endAccess();

  return v13;
}

void sub_1002A182C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1002A0D7C();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    ObjectType = swift_getObjectType();
    (*(v6 + 248))(1, ObjectType, v6);
  }

  v8 = sub_1002A0E00();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_getObjectType();
    (*(v11 + 248))(1, v12, v11);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;

    *&v14[qword_100946A38] = 0;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15 || (v16 = v15, v17 = [v15 traitCollection], v16, v18 = objc_msgSend(v17, "horizontalSizeClass"), v17, v18 != 1))
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 navigationController];

      if (v21)
      {
        v34 = v21;
        v22 = [v21 viewControllers];
        sub_10003F040();
        v23 = sub_1007701BC();

        if (v23 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
        {
          v25 = 0;
          while (1)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v29 = sub_10077149C();
            }

            else
            {
              if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v29 = *(v23 + 8 * v25 + 32);
            }

            v28 = v29;
            v30 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (v31)
            {
              v32 = [v31 collectionView];
              if (!v32)
              {
                __break(1u);
                return;
              }

              v26 = v32;
              v27 = [v32 collectionViewLayout];

              [v27 invalidateLayout];
              v28 = v27;
            }

            ++v25;
            if (v30 == i)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          ;
        }

LABEL_28:

        v33 = [v34 navigationBar];
        [v33 setHidden:1];
      }
    }
  }
}

void sub_1002A1B70(int a1, int a2, id a3, uint64_t a4)
{
  v5 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ArticlePagePresentationController();
    v7 = swift_dynamicCastClass();
    v8 = v7;
    if (v7)
    {
      v9 = v7 + OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v9 + 24))
      {
        sub_10000A570(v9, v15);
        v10 = v16;
        v11 = v17;
        sub_10000CF78(v15, v16);
        (*(v11 + 24))(v10, v11);
        sub_10000CD74(v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(a4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(Strong + qword_10099CC50);
      v13[qword_10099CC50] = 1;
      sub_1000AECA4(v14);
    }
  }
}

void sub_1002A1CB4(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  v8 = a2;
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    sub_1004A7FB4(0, ObjectType, a4);
    v14 = sub_1002A0D7C();
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = swift_getObjectType();
      (*(v17 + 248))(0, v18, v17);
    }

    v19 = sub_1002A0E00();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_getObjectType();
      (*(v22 + 248))(0, v23, v22);
    }

    v24 = sub_10029F4D8();
    if (v24)
    {
      v25 = v24;
      v82 = v10;
      swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (v26)
      {
        v27 = v25;
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v86 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentedViewController;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        v36 = *&Strong[qword_100946A40];
        if (v36)
        {
          v80 = v9;
          v85 = v28;
          v37 = v36 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell;
          v38 = *v37;
          v79 = *(v37 + 8);
          v39 = v38;

          swift_getObjectType();
          v78 = swift_conformsToProtocol2();
          v81 = v39;
          if (v78)
          {
            v40 = v39 == 0;
          }

          else
          {
            v40 = 1;
          }

          v83 = ObjectType;
          v84 = v25;
          if (!v40)
          {
            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              v77 = v26;
              v42 = v41;
              v76 = v81;

              v43 = v85;
              if (v85)
              {
                swift_getObjectType();
                v44 = swift_conformsToProtocol2();
                if (v44)
                {
                  v45 = v43;
                  v44 = v43;
                }
              }

              else
              {
                v44 = 0;
              }

              v75 = v44 == 0;
              swift_unknownObjectRelease();
              sub_100767D5C();
              sub_10076F64C();
              sub_10076FC1C();
              v74 = v87;
              v46 = v76;
              swift_getObjectType();
              v47 = sub_100765B4C();
              v48 = v46;
              v49 = v74;
              sub_100767CFC();

              ObjectType = v83;
              v25 = v84;
              v26 = v77;
            }
          }

          v28 = v85;
          if (v85)
          {
            v50 = swift_getObjectType();
            v51 = a5;
            v52 = a3;
            v53 = *(v26 + 304);
            v54 = v85;
            v55 = v81;
            v56 = v50;
            v28 = v85;
            v53(v81, v79, 1, v56, v26);
            a3 = v52;
            a5 = v51;
            ObjectType = v83;
            v25 = v84;
          }

          else
          {
          }

          v9 = v80;
        }

        else
        {
        }
      }

      [v25 setHidden:0];
      v57 = [a3 collectionView];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 indexPathsForSelectedItems];
        if (v59)
        {
          v84 = v25;
          v60 = v59;
          v61 = sub_1007701BC();

          v62 = v61;
          v63 = *(v61 + 16);
          if (v63)
          {
            v85 = v28;
            v83 = ObjectType;
            v79 = a5;
            v80 = a3;
            v81 = a4;
            v65 = v82 + 16;
            v64 = *(v82 + 16);
            v66 = (*(v82 + 80) + 32) & ~*(v82 + 80);
            v82 = v62;
            v67 = v62 + v66;
            v68 = *(v65 + 56);
            do
            {
              v64(v12, v67, v9);
              isa = sub_10075E02C().super.isa;
              (*(v65 - 8))(v12, v9);
              [v58 deselectItemAtIndexPath:isa animated:0];

              v67 += v68;
              --v63;
            }

            while (v63);

            a4 = v81;
            ObjectType = v83;
            v25 = v84;
            v28 = v85;
          }

          else
          {

            v25 = v84;
          }
        }
      }

      sub_1004A8058(1, ObjectType, a4);
      (*(a4 + 4))(1, ObjectType, a4);
      v70 = swift_unknownObjectWeakLoadStrong();
      if (!v70)
      {
        goto LABEL_44;
      }

      if (v28)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          (*(a4 + 1))(ObjectType, a4);
          sub_100767D5C();
          sub_10076F64C();
          sub_10076FC1C();
          v71 = v87;
          swift_getObjectType();
          v72 = v28;
          v28 = sub_100765B4C();
          v73 = v72;
          sub_100767D3C();
        }

LABEL_44:

        return;
      }
    }
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + qword_10099CC50);
      v30[qword_10099CC50] = 0;
      sub_1000AECA4(v31);
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v32[qword_10099E3A0] = 1;
    }

    v33 = swift_getObjectType();
    sub_1004A8058(0, v33, a4);
  }
}

uint64_t type metadata accessor for TodayArticleTransitioningDelegate(uint64_t a1)
{
  result = qword_10094FD30;
  if (!qword_10094FD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A2554(uint64_t a1, uint64_t a2)
{
  sub_1002153E0(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002A25F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002A2644()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A268C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1002A26D8(void *a1)
{
  type metadata accessor for ArticleContainerViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_articleViewController);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3 != 0)
    {
      v12 = v3;
      return v3;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
LABEL_19:
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v15[3] = sub_10003F040();
    v15[0] = a1;
    v14 = a1;
    sub_10076F32C();
    sub_10000CFBC(v15, &unk_1009434C0, &qword_100783F60);
    sub_10076FBDC();

    return 0;
  }

  v6 = v5;
  v7 = a1;
  v8 = [v6 viewControllers];
  sub_10003F040();
  v9 = sub_1007701BC();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:

LABEL_18:

    goto LABEL_19;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_10077149C();
LABEL_13:
    v3 = v11;

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3)
    {
      return v3;
    }

    v7 = v3;
    goto LABEL_18;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_1002A29E0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_10029F9A4(1, v38);
    v4 = v1[OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
    v5 = type metadata accessor for TodayTransitionPresentAnimation();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_originRect];
    v7[32] = v39;
    v8 = v38[1];
    *v7 = v38[0];
    *(v7 + 1) = v8;
    v6[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition] = v4;
    v37.receiver = v6;
    v37.super_class = v5;
    v9 = objc_msgSendSuper2(&v37, "init");
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
    swift_beginAccess();
    v12 = *&v9[v11];
    v13 = v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10049DEB4(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_10049DEB4((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[24 * v16];
    *(v17 + 4) = sub_1002A2DCC;
    *(v17 + 5) = v10;
    v17[48] = 0;
    *&v9[v11] = v12;
    swift_endAccess();

    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a1;
    swift_beginAccess();
    v19 = *&v9[v11];
    v20 = v13;
    v21 = a1;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v19;
    if ((v22 & 1) == 0)
    {
      v19 = sub_10049DEB4(0, *(v19 + 2) + 1, 1, v19);
      *&v9[v11] = v19;
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_10049DEB4((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[24 * v24];
    *(v25 + 4) = sub_1002A2DD4;
    *(v25 + 5) = v18;
    v25[48] = 1;
    *&v9[v11] = v19;
    swift_endAccess();

    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    swift_beginAccess();
    v27 = *&v9[v11];
    v28 = v20;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v27;
    if ((v29 & 1) == 0)
    {
      v27 = sub_10049DEB4(0, *(v27 + 2) + 1, 1, v27);
      *&v9[v11] = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_10049DEB4((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[24 * v31];
    *(v32 + 4) = sub_1002A2DDC;
    *(v32 + 5) = v26;
    v32[48] = 2;
    *&v9[v11] = v27;
    swift_endAccess();
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + qword_10099CC50);
      v34[qword_10099CC50] = 0;
      sub_1000AECA4(v35);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_1002A2D94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A2DE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002A2E24()
{
  result = qword_10094FD68;
  if (!qword_10094FD68)
  {
    sub_10000CE78(&qword_10094FD60, &qword_100789390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FD68);
  }

  return result;
}

unint64_t sub_1002A2E88()
{
  result = qword_100947150;
  if (!qword_100947150)
  {
    sub_10076C84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947150);
  }

  return result;
}

double sub_1002A2EF0()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_1002A3018(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1002A3018(uint64_t a1)
{
  v2 = sub_10077164C();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009680C0, qword_100792D90);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v52 - v5;
  v58 = sub_10076738C();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v52 - v8;
  v9 = sub_10076D7FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  __chkstk_darwin(v25);
  v54 = &v52 - v26;
  v60 = sub_10076DA7C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v28 = sub_10076461C();
  sub_10005312C();
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  sub_10000A61C(v29, qword_1009A1DE0);
  v30 = sub_100770B3C();
  sub_10076D7EC();
  v55 = v30;
  sub_10076D7DC();
  v31 = *(v10 + 8);
  v31(v12, v9);
  sub_10076D73C();
  v31(v15, v9);
  sub_10076D79C();
  v31(v18, v9);
  sub_10076D78C();
  v31(v21, v9);
  sub_10076D7AC();
  v31(v24, v9);
  sub_10076DA5C();
  v32 = v53;
  sub_10076DA8C();
  v33 = v28;
  if (sub_10077071C())
  {
    v34 = v56;
    sub_1001B997C(v28, v56);
  }

  else
  {
    v34 = v56;
    sub_1001B9CB4();
  }

  (*(v57 + 32))(v61, v34, v58);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v35 = v60;
  v69[3] = v60;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v36 = sub_10000DB7C(v69);
  v37 = v59;
  (*(v59 + 16))(v36, v32, v35);
  sub_1007673AC();
  swift_allocObject();
  *&v70 = sub_10076739C();
  sub_1002A37E0(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v38 = v62;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  sub_10076E0FC();
  v41 = v40;

  (*(v63 + 8))(v38, v39);
  (*(v37 + 8))(v32, v35);
  sub_10076733C();
  *&v70 = v42;
  sub_10076462C();
  v43 = v66;
  sub_10076D17C();
  sub_10076D40C();
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = v68;
  v47 = *(v67 + 8);
  v47(v43, v68);
  sub_10076734C();
  *&v70 = v48;
  sub_10076462C();
  sub_10076D17C();
  sub_10076D40C();
  v50 = v49;
  swift_unknownObjectRelease();
  v47(v43, v46);
  return v41 + v45 + v50;
}

uint64_t sub_1002A37E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002A3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_1002A3A74(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1002A3B30(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002A3BE4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  sub_10003F0D4(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_10000CF78(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 addTarget:v12 action:a2 forControlEvents:64];

  return swift_unknownObjectRelease();
}

char *sub_1002A3D58(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v94);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10076771C();
  v91 = *(v104 - 8);
  __chkstk_darwin(v104);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v89 = &v83 - v12;
  v13 = sub_10075E77C();
  __chkstk_darwin(v13 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v15 - 8);
  v87 = &v83 - v16;
  v17 = sub_10076D1AC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v4;
  v85 = &v4[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics];
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1858);
  v90 = *(v21 - 8);
  v23 = *(v90 + 16);
  v86 = v22;
  v24 = v90 + 16;
  v103 = v23;
  (v23)(v20);
  v25 = v18[13];
  LODWORD(v102) = enum case for FontSource.useCase(_:);
  v107 = v25;
  v26 = v18 + 13;
  v25(v20);
  v101 = sub_10076D9AC();
  v124[3] = v101;
  v124[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v124);
  v122 = v17;
  v123 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v121);
  v100 = v18[2];
  v100(v27, v20, v17);
  sub_10076D9BC();
  v28 = v18[1];
  v98 = v18 + 1;
  v99 = v28;
  v28(v20, v17);
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v21, qword_1009A1828);
  v106 = v24;
  v30 = v103;
  v103(v20, v29, v21);
  (v107)(v20, v102, v17);
  v122 = v101;
  v123 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v121);
  v119 = v17;
  v120 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v118);
  v100(v31, v20, v17);
  sub_10076D9BC();
  v99(v20, v17);
  v97 = v21;
  v30(v20, v29, v21);
  v32 = v102;
  (v107)(v20, v102, v17);
  v96 = v26;
  v33 = v101;
  v119 = v101;
  v120 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v118);
  v116 = v17;
  v117 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v115);
  v100(v34, v20, v17);
  sub_10076D9BC();
  v99(v20, v17);
  v84 = v29;
  v30(v20, v29, v21);
  (v107)(v20, v32, v17);
  v116 = v33;
  v117 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v115);
  v113 = v17;
  v114 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v112);
  v36 = v100;
  v100(v35, v20, v17);
  sub_10076D9BC();
  v37 = v99;
  v99(v20, v17);
  v113 = sub_10076D67C();
  v114 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v112);
  sub_10076D66C();
  v30(v20, v29, v97);
  (v107)(v20, v102, v17);
  v111[3] = v101;
  v111[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v111);
  v110[3] = v17;
  v110[4] = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v110);
  v36(v38, v20, v17);
  sub_10076D9BC();
  v37(v20, v17);
  v109 = 0x4034000000000000;
  v110[0] = 0x4052000000000000;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  sub_10075E26C();
  v39 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider;
  v40 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v41 = v105;
  *&v105[v39] = v40;
  v42 = v41;
  v43 = v88;
  sub_10075E6FC();
  v44 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v42[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView] = sub_1005B7DD4(v43, 0);
  v45 = v42;
  v46 = v89;
  v47 = v97;
  v48 = v103;
  v103(v89, v86, v97);
  v101 = *(v90 + 56);
  v101(v46, 0, 1, v47);
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v49 = v92;
  v107 = *(v91 + 104);
  v107(v92);
  v102 = sub_1007626BC();
  v50 = objc_allocWithZone(v102);
  *&v45[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel] = sub_1007626AC();
  v51 = v84;
  v52 = v97;
  v48(v46, v84, v97);
  v53 = v101;
  v101(v46, 0, 1, v52);
  v54 = v100;
  (v107)(v49, v100, v104);
  v55 = objc_allocWithZone(v102);
  *&v105[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel] = sub_1007626AC();
  v103(v46, v51, v52);
  v53(v46, 0, 1, v52);
  (v107)(v49, v54, v104);
  v56 = objc_allocWithZone(v102);
  v57 = sub_1007626AC();
  v58 = v105;
  *&v105[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel] = v57;
  *&v58[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v108.receiver = v58;
  v108.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v63 = v59;
  [v63 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v63 setScrollEnabled:1];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider;
  v65 = qword_100940950;
  v66 = *&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10000A61C(v94, qword_1009A0A20);
  v68 = v95;
  sub_100206DD0(v67, v95);
  v69 = &v66[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v68, v69);
  swift_endAccess();
  v70 = &v66[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v71 = *(v69 + 1);
  *v70 = *v69;
  *(v70 + 1) = v71;
  [v66 setNeedsLayout];
  [v66 setNeedsLayout];

  sub_100206E98(v68);
  v72 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel] setTextAlignment:1];
  v73 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel] setTextAlignment:1];
  v74 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel] setTextAlignment:1];
  v75 = *&v63[v72];
  sub_1000325F0();
  v76 = v75;
  v77 = sub_100770CFC();
  [v76 setTextColor:v77];

  v78 = *&v63[v73];
  v79 = sub_100770CFC();
  [v78 setTextColor:v79];

  v80 = *&v63[v74];
  v81 = sub_100770D1C();
  [v80 setTextColor:v81];

  [v63 addSubview:*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView]];
  [v63 addSubview:*&v63[v72]];
  [v63 addSubview:*&v63[v73]];
  [v63 addSubview:*&v63[v64]];
  [v63 addSubview:*&v63[v74]];
  [v63 addSubview:*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView]];

  return v63;
}

double sub_1002A4AC8(double a1, double a2)
{
  v3 = sub_10075E27C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v6;
  v29 = sub_10075E29C();
  v28 = *(v29 - 8);
  v7 = __chkstk_darwin(v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics, v3, v7);
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView);
  v30[28] = type metadata accessor for InAppPurchaseView(0);
  v30[29] = &protocol witness table for UIView;
  v30[25] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel);
  v12 = sub_1007626BC();
  v30[23] = v12;
  v30[24] = &protocol witness table for UILabel;
  v30[19] = &protocol witness table for UILabel;
  v30[20] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel);
  v30[18] = v12;
  v30[15] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider);
  v30[13] = type metadata accessor for DividerView(0);
  v30[14] = &protocol witness table for UIView;
  v30[10] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel);
  v30[9] = &protocol witness table for UILabel;
  v30[8] = v12;
  v30[5] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView);
  v17 = type metadata accessor for SmallLockupView(0);
  v30[4] = &protocol witness table for UIView;
  v30[3] = v17;
  v30[0] = v16;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_10075E28C();
  sub_10075E24C();
  v25 = v24;
  (*(v28 + 8))(v9, v29);
  return v25;
}

uint64_t sub_1002A4DEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = ObjectType;
  v3 = sub_10076D1FC();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075E27C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v8;
  v9 = sub_10075E29C();
  v33 = *(v9 - 8);
  v34 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
  v53 = type metadata accessor for InAppPurchaseView(0);
  v54 = &protocol witness table for UIView;
  v52 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  v14 = sub_1007626BC();
  v50 = v14;
  v51 = &protocol witness table for UILabel;
  v49 = v13;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  v47 = v14;
  v48 = &protocol witness table for UILabel;
  v46 = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider];
  v44 = type metadata accessor for DividerView(0);
  v45 = &protocol witness table for UIView;
  v42 = &protocol witness table for UILabel;
  v43 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v41 = v14;
  v40 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView];
  v38 = type metadata accessor for SmallLockupView(0);
  v39 = &protocol witness table for UIView;
  v37 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v30;
  sub_10075E28C();
  sub_10076422C();
  v26 = v32;
  sub_10075E25C();
  [v1 frame];
  Width = CGRectGetWidth(v56);
  sub_10076D1DC();
  [v1 setContentSize:Width];
  (*(v35 + 8))(v26, v36);
  return (*(v33 + 8))(v25, v34);
}

uint64_t type metadata accessor for InstallPagePreInstallPaidOfferView(uint64_t a1)
{
  result = qword_10094FDF0;
  if (!qword_10094FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A52D0(uint64_t a1)
{
  result = sub_10075E27C();
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

void sub_1002A5378()
{
  v0 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - v1;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics;
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A1858);
  v8 = (*(v6 - 8) + 16);
  v38 = *v8;
  v38(v5, v7, v6);
  v10 = v3 + 13;
  v9 = v3[13];
  v41 = enum case for FontSource.useCase(_:);
  v40 = v9;
  v9(v5);
  v36 = sub_10076D9AC();
  v57[3] = v36;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v54);
  v35 = v3[2];
  v35(v11, v5, v2);
  sub_10076D9BC();
  v12 = v3[1];
  v37 = v3 + 1;
  v39 = v12;
  v12(v5, v2);
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v6, qword_1009A1828);
  v14 = v38;
  v38(v5, v13, v6);
  v40(v5, v41, v2);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v54);
  v34 = v6;
  v28[1] = v8;
  v52 = v2;
  v53 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v51);
  v16 = v35;
  v35(v15, v5, v2);
  sub_10076D9BC();
  v39(v5, v2);
  v33 = v10;
  v29 = v13;
  v17 = v34;
  v14(v5, v13, v34);
  v18 = v40;
  v40(v5, v41, v2);
  v19 = v36;
  v52 = v36;
  v53 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v51);
  v49 = v2;
  v50 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v48);
  v16(v20, v5, v2);
  sub_10076D9BC();
  v39(v5, v2);
  v38(v5, v13, v17);
  v18(v5, v41, v2);
  v49 = v19;
  v21 = v19;
  v50 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v48);
  v46 = v2;
  v47 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v45);
  v23 = v35;
  v35(v22, v5, v2);
  sub_10076D9BC();
  v24 = v39;
  v39(v5, v2);
  v46 = sub_10076D67C();
  v47 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v45);
  sub_10076D66C();
  v38(v5, v29, v34);
  v40(v5, v41, v2);
  v44[3] = v21;
  v44[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v44);
  v43[3] = v2;
  v43[4] = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v43);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  v42 = 0x4034000000000000;
  v43[0] = 0x4052000000000000;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  v26 = v32;
  sub_10075E26C();
  v27 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider;
  *(v26 + v27) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1002A5A00(__n128 a1)
{
  result = qword_10094FE00;
  if (!qword_10094FE00)
  {
    sub_1007619CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE00);
  }

  return result;
}

uint64_t sub_1002A5A58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007619BC();
  v4 = sub_100563DC4(v3, 1, a2);

  return v4;
}

double sub_1002A5AEC()
{
  v0 = sub_10076523C();
  __chkstk_darwin(v0 - 8);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076525C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  v11 = sub_100630CB4();
  sub_10065132C(v11, v2);
  swift_getObjectType();
  v12 = swift_unknownObjectRetain();
  sub_1006525E0(v12);
  swift_unknownObjectRelease();
  v13 = sub_10076DDDC();
  swift_allocObject();
  v14 = sub_10076DDBC();
  v19[10] = v13;
  v19[11] = &protocol witness table for LayoutViewPlaceholder;
  v19[7] = v14;
  swift_allocObject();
  v15 = sub_10076DDBC();
  v19[5] = v13;
  v19[6] = &protocol witness table for LayoutViewPlaceholder;
  v19[2] = v15;
  sub_10076524C();
  swift_getKeyPath();
  sub_10076338C();

  sub_1002A5E3C(&qword_10095FFF0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_10076D2AC();
  v17 = v16;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v17;
}

uint64_t sub_1002A5E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1002A5E84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
  v18 = sub_10076E21C();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    sub_10076F95C();
    sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
    sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    sub_10076F95C();
    sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
    sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_1002A66D8()
{
  v1 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0, &unk_100787A10);
    result = *&v0[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

void sub_1002A6ABC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076E21C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v1;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
    v20 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    sub_1000167E0(v19, v20);
    return;
  }

  v27 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002A7608;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1000349FC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5148;
  aBlock[3] = &unk_10088F9B8;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v27 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v25 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v25], v3);
    sub_100770A6C();

    (*(v4 + 8))(v7, v3);
    v10 = v29;
    v12 = v30;
    v14 = v31;
    v16 = v32;
    v19 = sub_1002A7608;
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1002A6E10(char *a1, double *a2)
{
  v3 = sub_10076E21C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, &a1[v7], v3);
  sub_10076E1CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  return [a1 setFrame:{v9, v11, v13, v15}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10094FE40;
  if (!qword_10094FE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A7130(uint64_t a1)
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1002A7270()
{
  v1 = sub_100763ADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1007639AC();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1002A73A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FB6C();

  v6 = *(v3 + v4);
  sub_10075FD2C();
  sub_1002A74E0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100760BFC();
}

uint64_t sub_1002A7488(uint64_t a1)
{
  result = sub_1002A74E0(&qword_10094FE50, type metadata accessor for SmallLockupCollectionViewCell, &unk_100799280);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002A74E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1002A7528(void *a1)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100763ADC();
  v3 = sub_10000A61C(v2, qword_10099DDA0);
  sub_100262AD0(v3, a1, 0.0, 0.0);
  return v4;
}

uint64_t sub_1002A75D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002A7620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002A7638()
{
  v0 = sub_10076715C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_10000DB18(v7, qword_10099E280);
  v8 = sub_10000A61C(v7, qword_10099E280);
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v0, qword_10099CE38);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_1000325F0();
  v11 = sub_100770D1C();
  if (qword_10093F6B8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v0, qword_10099CE98);
  v10(v3, v12, v0);
  v13 = sub_100770D1C();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_1002A7858(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v10);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007668DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_10094FF50, qword_100799488);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_10000A5D4(&qword_100943318, &qword_100799480);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = sub_10076AA4C();
  v88 = *(v23 - 8);
  v89 = v23;
  __chkstk_darwin(v23);
  v86 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v82 - v26;
  sub_10076AA2C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artwork] = 0;
  v27 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = *(v13 + 56);
  v28(&v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType], 1, 1, v12);
  v29 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v30 = 0;
  v30[8] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v31 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10093FD18 != -1)
  {
    swift_once();
  }

  v87 = v10;
  v33 = sub_10000A61C(v10, qword_10099E280);
  sub_1002AA40C(v33, &v5[v32]);
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v92.receiver = v5;
  v92.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v13 + 104))(v22, enum case for MetadataRibbonItemType.developer(_:), v12);
  v28(v22, 0, 1, v12);
  v36 = *(v15 + 48);
  sub_100016E2C(&v34[v35], v17, &qword_100943318, &qword_100799480);
  sub_100016E2C(v22, &v17[v36], &qword_100943318, &qword_100799480);
  v37 = *(v13 + 48);
  if (v37(v17, 1, v12) != 1)
  {
    v41 = v83;
    sub_100016E2C(v17, v83, &qword_100943318, &qword_100799480);
    if (v37(&v17[v36], 1, v12) != 1)
    {
      v44 = v82;
      (*(v13 + 32))(v82, &v17[v36], v12);
      sub_1002AA4CC(&qword_10094FF58, &type metadata accessor for MetadataRibbonItemType, &protocol conformance descriptor for MetadataRibbonItemType);
      v45 = v34;
      v46 = sub_10076FF1C();
      v47 = *(v13 + 8);
      v47(v44, v12);
      sub_10000CFBC(v22, &qword_100943318, &qword_100799480);
      v47(v41, v12);
      sub_10000CFBC(v17, &qword_100943318, &qword_100799480);
      v40 = v87;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_9:
      v43 = v84;
      sub_10076AA2C();
      goto LABEL_12;
    }

    v42 = v34;
    sub_10000CFBC(v22, &qword_100943318, &qword_100799480);
    (*(v13 + 8))(v41, v12);
    v40 = v87;
LABEL_8:
    sub_10000CFBC(v17, &qword_10094FF50, qword_100799488);
    goto LABEL_9;
  }

  v38 = v34;
  sub_10000CFBC(v22, &qword_100943318, &qword_100799480);
  v39 = v37(&v17[v36], 1, v12);
  v40 = v87;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_10000CFBC(v17, &qword_100943318, &qword_100799480);
LABEL_11:
  v43 = v84;
  sub_10076AA3C();
LABEL_12:
  v48 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  v87 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v88 + 40))(&v34[v48], v43, v89);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v34;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v53 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v54 = *&v52[v53];
  sub_10075FC0C();

  v55 = *&v52[v53];
  v56 = &v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration];
  v84 = v34;
  v57 = v85;
  sub_1002AA40C(&v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration], v85);
  v58 = v55;
  v59 = [v52 traitCollection];

  v60.super.isa = v59;
  v61.super.isa = sub_10076713C(v60).super.isa;
  v62 = [(objc_class *)v59 preferredContentSizeCategory];
  v63 = sub_10077084C();

  if (v63)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  v65 = [objc_opt_self() configurationWithFont:v61.super.isa scale:v64];

  sub_1002AA470(v57);
  sub_10075FC3C();

  v66 = *&v56[*(v40 + 28)];
  v67 = *&v52[v53];
  v68 = v66;
  sub_10075FBBC();

  v69 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label] setTextColor:*&v56[*(v40 + 20)]];
  v70 = *&v52[v69];
  v71 = sub_10076715C();
  v91[3] = v71;
  v91[4] = sub_1002AA4CC(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v72 = sub_10000DB7C(v91);
  (*(*(v71 - 8) + 16))(v72, v56, v71);
  v73 = v70;
  sub_1007625FC();

  v74 = *&v52[v69];
  v75 = v88;
  v76 = v86;
  v77 = v89;
  (*(v88 + 16))(v86, &v84[v87], v89);
  v78 = v74;
  v79 = sub_10076AA0C();
  (*(v75 + 8))(v76, v77);
  [v78 setNumberOfLines:v79];

  [v52 addSubview:*&v52[v69]];
  [v52 addSubview:*&v52[v53]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100783DD0;
  *(v80 + 32) = sub_10076E88C();
  *(v80 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_1002A8324()
{
  ObjectType = swift_getObjectType();
  v19 = ObjectType;
  v2 = sub_10076D1FC();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076AA4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076AA5C();
  v9 = *(v20 - 8);
  *&v10 = __chkstk_darwin(v20).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v10, v19);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label];
  v27 = sub_1007626BC();
  v28 = &protocol witness table for UILabel;
  v26 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView];
  v24 = sub_10075FD2C();
  v25 = &protocol witness table for UIView;
  v23 = v14;
  v15 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v0[v15], v5);
  v16 = v13;
  v17 = v14;
  sub_10076A9DC();
  sub_10076422C();
  sub_10076A9FC();
  (*(v21 + 8))(v4, v22);
  return (*(v9 + 8))(v12, v20);
}

double sub_1002A861C(uint64_t a1, __n128 a2, double a3)
{
  v20[0] = a1;
  v4 = sub_10076AA4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076AA5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label);
  v20[12] = sub_1007626BC();
  v20[13] = &protocol witness table for UILabel;
  v20[9] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView);
  v20[7] = sub_10075FD2C();
  v20[8] = &protocol witness table for UIView;
  v20[4] = v13;
  v14 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v14, v4);
  v15 = v12;
  v16 = v13;
  sub_10076A9DC();
  sub_10076A9EC();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  return v18;
}

id sub_1002A88DC(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = sub_10076BEDC();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076AA4C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_1002A9828(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = sub_10075FC6C();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v8 + 8))(v10, v27);
    sub_10076BFCC();
    sub_100760C4C();
    sub_10075FD2C();
    sub_100760BCC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v29, &qword_100943310, &unk_100784150);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_1002A8CE0(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView);

    v13.is_nil = (a2 & 1) == 0;
    v13.value.super.isa = a1;
    sub_10075FC5C(v13, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsLayout];
  }
}

void sub_1002A8EDC(uint64_t a1)
{
  sub_10076AA4C();
  if (v1 <= 0x3F)
  {
    sub_100038324(319);
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

uint64_t sub_1002A9058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076715C();
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

uint64_t sub_1002A9128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10076715C();
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

unint64_t sub_1002A91E0(uint64_t a1)
{
  result = sub_10076715C();
  if (v2 <= 0x3F)
  {
    result = sub_1000325F0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1002A9274(uint64_t a1, uint64_t a2)
{
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v2 = sub_10076436C();
  v3 = sub_10076438C();
  sub_1002A88DC(v2, v3, v4, v6);

  return result;
}

uint64_t sub_1002A9328@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_1002A9390(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

void sub_1002A946C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1002A9538(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1002A95F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1002A963C(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002A96EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_1002A9754(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

double sub_1002A9828(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = a4;
  v11.super.isa = sub_10076713C(v10).super.isa;
  v12 = [(objc_class *)a4 preferredContentSizeCategory];
  v13 = sub_10077084C();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() configurationWithFont:v11.super.isa scale:v14];

  if (sub_10076BDDC())
  {
    v16 = v15;
    if (sub_10076BE0C())
    {
      v17 = sub_10076044C();
      goto LABEL_11;
    }

    if (sub_10076BDFC())
    {
      v17 = sub_1005A6008(a1, v15);
LABEL_11:
      v19 = v17;

      if (v19)
      {
        [v19 size];
        v18 = v20;

        return v18;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((sub_10076BE0C() & 1) != 0 && (sub_10076BE2C(), v21))
  {
    v22 = v15;
    v23 = sub_10076045C();

    [v23 size];
    v18 = v24;
  }

  else
  {

    sub_10076AA1C();
    sub_10000CF78(v28, v28[3]);
    sub_10076D41C();
    sub_10000CD74(v28);
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D35C();
    v18 = v25;

    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

uint64_t sub_1002A9B2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A9B80(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = v1;
  v3.super.isa = sub_10076713C(v2).super.isa;
  v4 = [(objc_class *)v1 preferredContentSizeCategory];
  v5 = sub_10077084C();

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [objc_opt_self() configurationWithFont:v3.super.isa scale:v6];

  return sub_10075FC3C();
}

void sub_1002A9C6C(__n128 a1)
{
  sub_10076AA2C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artwork) = 0;
  v2 = v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  v4 = sub_1007668DC();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v7 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkSize);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10093FD18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v10 = sub_10000A61C(v9, qword_10099E280);
  sub_1002AA40C(v10, v1 + v8);
  sub_10077156C();
  __break(1u);
}

double sub_1002A9DE8(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v5 = sub_10076AA5C();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10076DA7C();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076DD3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  __chkstk_darwin(v15);
  v48 = v41 - v16;
  v47 = sub_10076AA4C();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_10076436C();
  v41[3] = sub_10076438C();
  v41[2] = v22;
  sub_10076AA2C();
  if (qword_10093FD18 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v24 = sub_10000A61C(v23, qword_10099E280);
  v25 = [a4 traitCollection];
  sub_1002A9828(v21, v20, v24, v25);

  v26 = sub_10076DDDC();
  v41[1] = a4;
  v27 = v26;
  swift_allocObject();
  v28 = sub_10076DDBC();
  v41[0] = v21;
  v29 = v28;
  sub_10076DD2C();
  v30 = sub_10076715C();
  v56[3] = v30;
  v56[4] = sub_1002AA4CC(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v31 = sub_10000DB7C(v56);
  (*(*(v30 - 8) + 16))(v31, v24, v30);
  sub_10076DC8C();
  v32 = *(v9 + 8);
  v32(v11, v8);
  sub_10000CD74(v56);
  sub_10076AA0C();
  v33 = v48;
  sub_10076DD1C();
  v32(v14, v8);
  (*(v9 + 16))(v14, v33, v8);
  sub_10076DA5C();
  v34 = v43;
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v44 + 8))(v34, v46);
  sub_10000A570(v56, v55);
  v53 = v27;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v29;
  v35 = v45;
  v36 = v47;
  (*(v45 + 16))(v42, v20, v47);

  v37 = v49;
  sub_10076A9DC();
  sub_10076A9EC();
  v39 = v38;

  (*(v50 + 8))(v37, v51);
  sub_10000CD74(v56);
  v32(v33, v8);
  (*(v35 + 8))(v20, v36);
  return v39;
}

uint64_t sub_1002AA40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AA470(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AA4CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002AA528()
{
  result = qword_10094FF78;
  if (!qword_10094FF78)
  {
    sub_10076112C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FF78);
  }

  return result;
}

uint64_t sub_1002AA580()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10094FF60);
  sub_10000A61C(v4, qword_10094FF60);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_1002AA6D4(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_10000A5D4(&qword_10094FF88, qword_100799520);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  sub_10076FCDC();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002AAEBC;
  *(v7 + 24) = a3;
  v8 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_10077068C();
  sub_10076FC6C();

  return sub_10000CD74(v10);
}

uint64_t sub_1002AA828()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_10076FCBC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002AA914(uint64_t a1)
{
  if (qword_10093FD20 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_10094FF60);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000DB7C(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_10076F30C();
  sub_1000258C0(v5);
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1002AAAEC(uint64_t a1)
{
  if (qword_10093FD20 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_10094FF60);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000DB7C(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_10076F30C();
  sub_1000258C0(v5);
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1002AACCC(uint64_t a1)
{
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v1 = sub_10076FCEC();
  sub_100016F40(0, &qword_100944EF0, ACAccountStore_ptr);
  sub_10076F64C();
  sub_10076FC1C();
  v2 = v8[0];
  sub_10000A5D4(&qword_10094FF80, &qword_100799518);
  v3 = [v8[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  sub_10076FCCC();
  v4 = swift_allocObject();
  *(v4 + 16) = v8[0];
  *(v4 + 24) = v1;
  v5 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  swift_retain_n();
  v6 = v2;
  v8[3] = v5;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = sub_10077068C();
  sub_10076FC6C();

  sub_10000CD74(v8);
  return v1;
}

uint64_t sub_1002AAE6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002AAEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1002AAF04(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_1002AAFCC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - v6;
  v7 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  sub_10077071C();
  sub_10077071C();
  v96 = vdupq_n_s64(0x405A400000000000uLL);
  v93 = vdupq_n_s64(0x4056000000000000uLL);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for CGSize(0);
  sub_10075FDEC();
  v96.i64[0] = 0x402E000000000000;
  v93.i64[0] = 0x402C000000000000;
  sub_10075FDEC();
  *v4 = UIFontTextStyleBody;
  v62 = enum case for FontSource.textStyle(_:);
  v60 = v2[13];
  v61 = v2 + 13;
  v60(v4);
  v97 = sub_10076D9AC();
  v98 = &protocol witness table for StaticDimension;
  v9 = v97;
  v57 = v97;
  sub_10000DB7C(v96.i64);
  v94 = v1;
  v95 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v93.i64);
  v58 = v2[2];
  v58(v10, v4, v1);
  v59 = v2 + 2;
  v11 = UIFontTextStyleBody;
  sub_10076D9BC();
  v12 = v2[1];
  v55 = v2 + 1;
  v12(v4, v1);
  v13 = v12;
  v56 = v12;
  *v4 = v11;
  v14 = v62;
  v15 = v60;
  (v60)(v4, v62, v1);
  v94 = v9;
  v95 = &protocol witness table for StaticDimension;
  v50 = sub_10000DB7C(v93.i64);
  v91 = v1;
  v92 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v90);
  v17 = v58;
  v58(v16, v4, v1);
  v18 = v11;
  v51 = v18;
  sub_10076D9BC();
  v13(v4, v1);
  *v4 = v18;
  v15(v4, v14, v1);
  v19 = v15;
  v20 = v57;
  v91 = v57;
  v92 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v90);
  v88 = v1;
  v89 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v87);
  v17(v21, v4, v1);
  sub_10076D9BC();
  v22 = v56;
  v56(v4, v1);
  *v4 = v51;
  v23 = v62;
  v19(v4, v62, v1);
  v88 = v20;
  v89 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v87);
  v85 = v1;
  v86 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v84);
  v58(v24, v4, v1);
  sub_10076D9BC();
  v22(v4, v1);
  *v4 = UIFontTextStyleFootnote;
  v25 = v60;
  (v60)(v4, v23, v1);
  v85 = v20;
  v86 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v84);
  v82 = v1;
  v83 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v81);
  v27 = v58;
  v58(v26, v4, v1);
  v28 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v29 = v56;
  v56(v4, v1);
  *v4 = v28;
  v25(v4, v62, v1);
  v82 = v57;
  v83 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v81);
  v79 = v1;
  v80 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v78);
  v27(v30, v4, v1);
  v31 = v28;
  sub_10076D9BC();
  v29(v4, v1);
  *v4 = v31;
  v32 = v60;
  (v60)(v4, v62, v1);
  v33 = v57;
  v79 = v57;
  v80 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v78);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v75);
  v35 = v58;
  v58(v34, v4, v1);
  v36 = v31;
  sub_10076D9BC();
  v56(v4, v1);
  *v4 = v36;
  v37 = v62;
  v32(v4, v62, v1);
  v76 = v33;
  v77 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v75);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v72);
  v35(v38, v4, v1);
  v39 = v36;
  sub_10076D9BC();
  v40 = v56;
  v56(v4, v1);
  *v4 = v39;
  (v60)(v4, v37, v1);
  v73 = v33;
  v74 = &protocol witness table for StaticDimension;
  v50 = sub_10000DB7C(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v41 = sub_10000DB7C(v69);
  v35(v41, v4, v1);
  v42 = v39;
  v51 = v42;
  sub_10076D9BC();
  v40(v4, v1);
  *v4 = v42;
  v43 = v62;
  v44 = v60;
  (v60)(v4, v62, v1);
  v70 = v33;
  v71 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_10000DB7C(v66);
  v46 = v58;
  v58(v45, v4, v1);
  sub_10076D9BC();
  v40(v4, v1);
  *v4 = v51;
  v44(v4, v43, v1);
  v67 = v57;
  v68 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v66);
  v64 = v1;
  v65 = &protocol witness table for FontSource;
  v47 = sub_10000DB7C(v63);
  v46(v47, v4, v1);
  sub_10076D9BC();
  v40(v4, v1);
  v64 = sub_10076D67C();
  v65 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v63);
  sub_10076D66C();
  return sub_10076424C();
}

char *sub_1002AB984(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = v60 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A0D48);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v67 = v21;
  v69 = v22 + 16;
  v70 = v23;
  (v23)(v16);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v66 = v25;
  v25(v16, 0, 1, v20);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v64 = *(v11 + 104);
  v65 = v11 + 104;
  v64(v13);
  v27 = v10;
  v63 = sub_1007626BC();
  v28 = objc_allocWithZone(v63);
  *&v5[v19] = sub_1007626AC();
  v29 = &v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView] = 0;
  v30 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
  v31 = sub_10076E21C();
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView] = sub_10075FB3C();
  v62 = v5;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v20, qword_1009A0CE8);
  v70(v16, v32, v20);
  v33 = v66;
  v66(v16, 0, 1, v20);
  v60[1] = v24;
  v61 = v27;
  v34 = v64;
  (v64)(v13, v26, v27);
  v35 = v63;
  v36 = objc_allocWithZone(v63);
  v37 = sub_1007626AC();
  v38 = v62;
  *&v62[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel] = v37;
  v70(v16, v67, v20);
  v33(v16, 0, 1, v20);
  v34(v13, v26, v61);
  v39 = objc_allocWithZone(v35);
  *&v38[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v38[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerButton] = sub_1001E89B8(0);
  v71.receiver = v38;
  v71.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  v42 = [v41 contentView];
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v43 = [v41 contentView];
  [v43 addSubview:*&v41[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView]];

  v44 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel;
  v45 = *&v41[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_10076266C();

  v46 = [v41 contentView];
  [v46 addSubview:*&v41[v44]];

  v47 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel;
  v48 = *&v41[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v49 = v48;
  v50 = sub_100770D1C();
  [v49 setTextColor:v50];

  v51 = *&v41[v47];
  sub_10076266C();

  v52 = v41;
  v53 = [v52 contentView];
  [v53 addSubview:*&v41[v47]];

  v54 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();

  v55 = [v52 contentView];
  [v55 addSubview:*&v52[v54]];

  v56 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v52[v56] setText:0];
  [*&v52[v56] setHidden:1];
  v57 = *&v52[v56];
  sub_10076266C();

  v58 = [v52 contentView];
  [v58 addSubview:*&v52[v56]];

  return v52;
}

double sub_1002AC120()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = sub_10076428C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_1002AAFCC(v10);

  sub_10076425C();
  (*(v7 + 8))(v10, v6);
  v13[1] = v1;
  sub_10075FDCC();
  (*(v3 + 8))(v5, v2);
  return *&v13[2];
}

void sub_1002AC2EC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    [v2 addSubview:v7];
  }

LABEL_4:
}

uint64_t sub_1002AC394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_10077164C();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = sub_10076428C();
  v24 = *(v26 - 8);
  *&v12 = __chkstk_darwin(v26).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v16 = sub_10077071C();

  if (v16)
  {
    if (qword_100941348 != -1)
    {
      swift_once();
    }

    v17 = sub_10076E21C();
    v18 = sub_10000A61C(v17, qword_1009A26E0);
    v19 = *(*(v17 - 8) + 16);
    v20 = v30;

    return v19(v20, v18, v17);
  }

  else
  {
    v22 = [a1 traitCollection];
    sub_1002AAFCC(v14);

    sub_10076425C();
    v31 = a1;
    sub_10075FDCC();
    (*(v9 + 8))(v11, v8);
    sub_10076426C();
    sub_10076D17C();
    sub_10075FE7C();
    (*(v28 + 8))(v5, v29);
    (*(v25 + 8))(v7, v27);
    if (qword_100941348 != -1)
    {
      swift_once();
    }

    v23 = sub_10076E21C();
    sub_10000A61C(v23, qword_1009A26E0);
    sub_10076E1BC();
    return (*(v24 + 8))(v14, v26);
  }
}

id sub_1002AC7E0()
{
  v1 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0, &unk_100787A10);
    result = *&v0[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_1002ACBC4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_10076D1FC();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1007642AC();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076428C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = sub_10076E21C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  v75 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v13);
  v16 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v105 = v18;
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView];
  v76 = v10;
  v77 = v6;
  v78 = v5;
  if (v25)
  {
    v26 = v25;
    if ([v26 isHidden])
    {
    }

    else
    {
      v27 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v12 + 16);
      v28(v15, &v26[v27], v11);
      sub_10076E1CC();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v68 = *(v12 + 8);
      v68(v15, v11);
      [v26 setFrame:{v30, v32, v34, v36}];
      v37 = &v26[v27];
      v5 = v78;
      v28(v15, v37, v11);
      v10 = v76;
      v6 = v77;
      sub_100770A6C();

      v68(v15, v11);
    }
  }

  v38 = [v1 traitCollection];
  sub_1002AAFCC(v10);

  v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerButton];
  v40 = &v39[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v39[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v41 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v39[v41], v102);
    sub_10000CF78(v102, v103);
    sub_100767A2C();
    v43 = v42;
    v45 = v44;
    sub_10000CD74(v102);
    *v40 = v43;
    *(v40 + 1) = v45;
    v40[16] = 0;
  }

  sub_10076427C();
  (*(v6 + 16))(v79, v10, v5);
  v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView];
  v103 = sub_10075FD2C();
  v104 = &protocol witness table for UIView;
  v102[0] = v46;
  v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v47)
  {
    v48 = sub_1007626BC();
    v49 = &protocol witness table for UILabel;
    v50 = v47;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = v50;
  v100 = v48;
  v101 = v49;
  v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel];
  v52 = sub_1007626BC();
  v95 = v52;
  v96 = &protocol witness table for UILabel;
  v93 = &protocol witness table for UILabel;
  v94 = v51;
  v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  v92 = v52;
  v91 = v53;
  v54 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v54)
  {
    v55 = &protocol witness table for UILabel;
    v56 = v52;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v54;
  v89 = v56;
  v90 = v55;
  v57 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel];
  v84 = v52;
  v83 = v57;
  v81 = type metadata accessor for OfferButton();
  v82 = &protocol witness table for UIView;
  v80 = v39;
  v58 = v47;
  v59 = v51;
  v60 = v53;
  v61 = v54;
  v62 = v57;
  v63 = v39;
  v64 = v46;
  v65 = v70;
  sub_10076429C();
  v66 = v69;
  sub_10076423C();
  (*(v71 + 8))(v66, v73);
  sub_1002ADF68(&qword_1009490D8, type metadata accessor for MediumLockupCollectionViewCell, &unk_10078BA30);
  sub_1007676CC();
  (*(v72 + 8))(v65, v74);
  return (*(v77 + 8))(v76, v78);
}

id sub_1002AD2F8(char a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D3DC();
    v17 = sub_10000A61C(v16, qword_1009A0CD0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_1007626BC());
    v20 = sub_1007626AC();
    v2 = v15;
    sub_1002AC2EC(v20, &OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_1002AD5A8()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A0DC0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  v15 = sub_1007626AC();
  sub_1002AC2EC(v15, &OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_10076266C();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v18 = v17;
      v19 = sub_100770D0C();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for MediumLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10094FFB8;
  if (!qword_10094FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AD9EC(uint64_t a1)
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002ADB34(uint64_t a1, uint64_t a2)
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1002ADF68(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1002ADBCC(uint64_t a1)
{
  result = sub_1002ADF68(&qword_10094FFC8, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007995A0);
  *(a1 + 8) = result;
  return result;
}

double sub_1002ADC24(void *a1, __n128 a2, double a3)
{
  v4 = sub_10076428C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076443C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v23 - v14;
  v16 = [a1 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v17 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v17 = qword_100944CA0;
  }

  v18 = sub_10000A61C(v8, v17);
  (*(v9 + 16))(v11, v18, v8);

  (*(v9 + 32))(v15, v11, v8);
  v19 = [a1 traitCollection];
  sub_1002AAFCC(v7);

  sub_1007643EC();
  sub_10076441C();
  sub_10076427C();
  sub_1007642AC();
  sub_1002ADF68(&qword_10094FFD0, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
  sub_10076DBDC();
  v21 = v20;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v15, v8);
  return v21;
}

uint64_t sub_1002ADF68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002ADFB0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A0D48);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v11) = sub_1007626AC();
  v16 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter);
  *v16 = 0u;
  v16[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView) = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
  v18 = sub_10076E21C();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002AE2DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002AE324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002AE38C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002AE3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

id sub_1002AE440(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell(0);
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_1002AE6B0(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

double (*sub_1002AE800(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v4 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v4 = sub_10076489C();
  v7 = v6;

LABEL_6:
  *a1 = v4;
  a1[1] = v7;
  return sub_1002AE8C0;
}

double sub_1002AE8C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v4)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10001CE50(v3, v2);
        v5 = v4;
        sub_1007648AC();
      }
    }

    goto LABEL_10;
  }

  if (!v4 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    return sub_1000167E0(v3, v2);
  }

  v7 = v4;
  sub_1007648AC();

  return result;
}

void sub_1002AE9FC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_1002B233C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    }

    swift_getObjectType();
    v6 = a1;
    v5 = v3;
    sub_100765B5C();

    v4 = v6;
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_1002AEB00()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v3 = v1;
    v4 = sub_100765B4C();

    if (v4)
    {
      type metadata accessor for VideoView(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_1002AEBA0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
    v7 = sub_100765B4C();

    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView(0);
    v5 = swift_dynamicCastClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v5;
  return sub_1002AEC74;
}

void sub_1002AEC74(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_1002B233C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
        }

        v7 = v11;
        v8 = v5;
        sub_100765B5C();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_1002B233C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    }

    v9 = v11;
    v10 = v5;
    sub_100765B5C();

    v4 = v9;
  }

LABEL_13:
}

id sub_1002AEE34()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098, qword_100799B78), sub_10000A5D4(&qword_10094DE70, qword_100795AE0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000CF78(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_10000CD74(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000CFBC(&v8, &qword_10094DE78, &qword_100799B70);

  return v7;
}

id sub_1002AEF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098, qword_100799B78), sub_10000A5D4(&qword_10094DE70, qword_100795AE0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000CF78(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_10000CD74(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000CFBC(&v8, &qword_10094DE78, &qword_100799B70);

  return v7;
}

id sub_1002AF08C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098, qword_100799B78), sub_10000A5D4(&qword_10094DE70, qword_100795AE0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000CF78(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_10000CD74(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000CFBC(&v8, &qword_10094DE78, &qword_100799B70);

  return v7;
}

uint64_t sub_1002AF1B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098, qword_100799B78), sub_10000A5D4(&qword_10094DE70, qword_100795AE0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000CF78(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_10000CD74(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000CFBC(&v6, &qword_10094DE78, &qword_100799B70);
}

uint64_t sub_1002AF2F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098, qword_100799B78), sub_10000A5D4(&qword_10094DE70, qword_100795AE0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000CF78(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_10000CD74(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000CFBC(&v6, &qword_10094DE78, &qword_100799B70);
}

void sub_1002AF410()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

void sub_1002AF5D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076207C();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = sub_10076C36C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = sub_10076C38C();
  v69 = *(v17 - 8);
  v70 = v17;
  __chkstk_darwin(v17);
  v66 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v71 = &v58 - v20;
  sub_100760A8C();
  sub_1002B233C(&qword_100948A40, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v72)
  {
    v60 = v16;
    v21 = sub_1000E9CE8();
    if (!v21)
    {
LABEL_20:

      return;
    }

    v23 = v22;
    v59 = a2;
    v61 = &v3[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
    v62 = v3;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents] || sub_10000A5D4(&qword_100950090, &qword_100799B68) != v21)
    {
      v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v25 = v61;
      v26 = *v61;
      *v61 = v24;
      *(v25 + 1) = v23;
      v27 = v11;
      v28 = a1;
      v29 = v24;
      sub_1002AE6B0(v26);

      a1 = v28;
      v11 = v27;
    }

    swift_getKeyPath();
    sub_10076338C();

    v30 = v72;
    v31 = sub_1007706EC();

    if ((v31 & 1) == 0)
    {
      v49 = *v61;
      if (*v61)
      {
        v50 = *(v61 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v62 setNeedsLayout];
      goto LABEL_20;
    }

    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v63 + 8))(v10, v8);
    v32 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v72)
    {
      v32 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v33 = v60;
    (*(v12 + 104))(v60, *v32, v11);
    sub_10076C24C();
    v63 = v34;
    sub_10076C26C();
    v58 = v35;
    sub_10076C25C();
    swift_getKeyPath();
    sub_10076338C();

    v36 = v65;
    sub_10076203C();
    (*(v12 + 16))(v64, v33, v11);
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    v37 = v66;
    sub_10076C33C();
    (*(v67 + 8))(v36, v68);
    v38 = v61;
    if (*v61)
    {
      [*v61 layoutMargins];
      v40 = v39;
      v42 = v41;
      sub_10076C2EC();
      v44 = v43;
      sub_10076C2EC();
      v45 = *v38;
      if (!*v38)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10076C2EC();
      v40 = v55;
      v44 = v56;
      v42 = v57;
      v45 = *v38;
      if (!*v38)
      {
LABEL_14:
        v46 = *(v69 + 8);
        v47 = v37;
        v48 = v70;
        v46(v47, v70);
        (*(v12 + 8))(v33, v11);
        v46(v71, v48);
        v49 = *v38;
        if (*v38)
        {
          v50 = *(v38 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v52 = a1;
          v53 = *(v50 + 48);
          v54 = v49;
          v53(v52, v59, ObjectType, v50);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v45 setLayoutMargins:{v40, v44, v42}];
    goto LABEL_14;
  }
}

void sub_1002AFD08(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      [v6 setNeedsLayout];
    }
  }
}

void sub_1002AFE1C(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), char *a3, uint64_t a4, char *a5, int a6)
{
  v73 = a6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v8 = sub_10076F08C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F0CC();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076F07C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_10076F0EC();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
  sub_10076289C();
  if (swift_dynamicCast())
  {
    v68 = v11;
    v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
    if (v22 && (v69 = v81[0], v65 = v9, v23 = type metadata accessor for AdvertsSearchResultContentView(), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
      [v6 setUserInteractionEnabled:0];
      v66 = v26;
      [v25 frame];
      v31 = [objc_allocWithZone(v23) initWithFrame:{v27, v28, v29, v30}];
      v32 = *(*&v25[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
      [v25 layoutMargins];
      v67 = v21;
      v33 = v69;
      v34 = v71;
      v35 = v70;
      v70 = v6;
      sub_10045D1F0(v69, v71, v35, v79, v32, v36, v37, v38, v39);
      [v31 layoutIfNeeded];
      [v25 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v81[0] = v41;
      v81[1] = v43;
      v81[2] = v45;
      v81[3] = v47;
      v82 = 0;
      sub_10045F5E0(v33, v81, v72, v34, v48);
      v49 = &v25[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v72 = v8;
      v50 = *v49;
      v51 = v49[1];
      sub_10001CE50(*v49, v51);
      sub_10053D600(v50, v51);
      sub_1000167E0(v50, v51);
      sub_100085204();
      v71 = sub_10077068C();
      sub_10076F0DC();
      v52 = 333;
      if ((v73 & 1) == 0)
      {
        v52 = 0;
      }

      *v16 = v52;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      sub_10076F14C();
      (*(v14 + 8))(v16, v13);
      v74 = *(v74 + 8);
      v53 = v75;
      (v74)(v18, v75);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = v25;
      v56 = v79;
      v55[4] = v31;
      v55[5] = v56;
      aBlock[4] = sub_1002B22BC;
      aBlock[5] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088FC58;
      v57 = _Block_copy(aBlock);
      v58 = v66;
      v59 = v31;

      v60 = v76;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002B233C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_1000852B8();
      v61 = v78;
      v62 = v72;
      sub_1007712CC();
      v63 = v67;
      v64 = v71;
      sub_10077064C();

      _Block_release(v57);

      (*(v65 + 8))(v61, v62);
      (*(v77 + 8))(v60, v68);
      (v74)(v63, v53);
    }

    else
    {
    }
  }
}

void sub_1002B05D4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_1002B2330;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000513F0;
    aBlock[3] = &unk_10088FCA8;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_1002B0734(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002B233C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_1002B233C(&unk_10095A480, type metadata accessor for AdvertsSearchResultContentView, &unk_1007AA5D0);
  sub_100767CFC();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    sub_1002B233C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_100767D3C();

  v9 = sub_1002B233C(&qword_100948250, type metadata accessor for AdvertsSearchResultContentView, &unk_1007AA7CC);
  v10 = &a5[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  v11 = *&a5[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  *v10 = a4;
  *(v10 + 1) = v9;
  v12 = a4;
  sub_1002AE6B0(v11);

  [a5 setUserInteractionEnabled:1];
}

void sub_1002B0970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v6)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6;
      sub_10076A00C();
    }
  }
}

void sub_1002B0A5C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v6)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6;
      sub_100769FFC();
    }
  }
}

uint64_t sub_1002B0B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_100763F9C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076469C();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076C38C();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076182C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100950080, &unk_100799A90);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_10076499C();
  sub_1002B233C(&qword_100948A38, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v37 = a1;
  sub_10076332C();
  if (!v45)
  {
    v26 = 1;
    v25 = v44;
    goto LABEL_14;
  }

  v34 = v4;
  v43 = v45;
  sub_10076496C();
  (*(v9 + 104))(v19, enum case for ItemBackground.clearAdWithSeparator(_:), v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v23 = *(v11 + 48);
  sub_100016E2C(v22, v13, &unk_100952090, &unk_100784CD0);
  sub_100016E2C(v19, &v13[v23], &unk_100952090, &unk_100784CD0);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    sub_100016E2C(v13, v16, &unk_100952090, &unk_100784CD0);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v27 = v35;
      (*(v9 + 32))(v35, &v13[v23], v8);
      sub_1002B233C(&qword_100950088, &type metadata accessor for ItemBackground, &protocol conformance descriptor for ItemBackground);
      v28 = sub_10076FF1C();
      v29 = *(v9 + 8);
      v29(v27, v8);
      sub_10000CFBC(v19, &unk_100952090, &unk_100784CD0);
      sub_10000CFBC(v22, &unk_100952090, &unk_100784CD0);
      v29(v16, v8);
      sub_10000CFBC(v13, &unk_100952090, &unk_100784CD0);
      v25 = v44;
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_9:

      v26 = 1;
      goto LABEL_14;
    }

    sub_10000CFBC(v19, &unk_100952090, &unk_100784CD0);
    sub_10000CFBC(v22, &unk_100952090, &unk_100784CD0);
    (*(v9 + 8))(v16, v8);
LABEL_8:
    sub_10000CFBC(v13, &qword_100950080, &unk_100799A90);
    v25 = v44;
    goto LABEL_9;
  }

  sub_10000CFBC(v19, &unk_100952090, &unk_100784CD0);
  sub_10000CFBC(v22, &unk_100952090, &unk_100784CD0);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CFBC(v13, &unk_100952090, &unk_100784CD0);
  v25 = v44;
LABEL_11:
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  v30 = v38;
  sub_10076C32C();
  sub_10076C31C();
  (*(v40 + 104))(v34, enum case for ComponentSeparator.Position.bottom(_:), v42);
  v31 = [objc_opt_self() systemGray3Color];
  sub_100763FAC();

  (*(v39 + 8))(v30, v41);
  v26 = 0;
LABEL_14:
  v32 = sub_100763FDC();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

id sub_1002B12A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_100950058;
  if (!qword_100950058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B13B4(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B1458@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0, &unk_100783DC0);
}

uint64_t sub_1002B14C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1002B1584(uint64_t a1, uint64_t a2)
{
  sub_100760A8C();
  sub_1002B233C(&qword_100948A40, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v2)
  {
    if (sub_1000E9CE8())
    {
      sub_10076571C();
    }
  }
}

void sub_1002B1664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell(0);
    v10 = v4;
    sub_10076422C();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}

void sub_1002B1748(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v4;
    v10(a1, a2, a3 & 1, ObjectType, v8);
  }
}

double sub_1002B1828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100760A8C();
  sub_1002B233C(&qword_100948A40, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v4)
  {
    if (sub_1000E9CE8())
    {
      sub_10076A84C();
    }
  }

  return result;
}

uint64_t (*sub_1002B1900(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1002AEBA0(v2);
  return sub_100019A4C;
}

uint64_t sub_1002B1974()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents))
  {
    return 0;
  }

  type metadata accessor for AdvertsSearchResultContentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(*(result + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  }

  return result;
}

uint64_t sub_1002B1A04()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1;
    v4 = sub_10076489C();

    return v4;
  }

  return result;
}

double sub_1002B1A98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    v4 = a1;
    v5 = a2;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v3;
      sub_1007648AC();

      return result;
    }

    a1 = v4;
    a2 = v5;
  }

  return sub_1000167E0(a1, a2);
}

uint64_t (*sub_1002B1B78(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1002AE800(v2);
  return sub_10001D41C;
}

double sub_1002B1C30(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1002B1C90(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1002B1D28()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1002B1D84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

uint64_t sub_1002B1F18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1002B1F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1002B1FD8(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1002B2074(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (!v3)
  {
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_10076482C();

  return v5 & 1;
}

uint64_t sub_1002B2234()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002B226C()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1002B22C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002B22E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002B233C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TodayPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_1009500A8;
  if (!qword_1009500A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002B2438(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a8;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a10;
  v11 = sub_10076B5BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v55 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v24 = *(v18 + 8);
  v24(v23, v17);
  v52 = v16;
  v53 = v12;
  v25 = *(v12 + 88);
  v54 = v11;
  v26 = v25(v16, v11);
  if (v26 == enum case for Shelf.ContentType.todayCard(_:))
  {
    v27 = v58();
    v28 = sub_1002B29F0(v55, v27, v60, v61, v62, v63, v59);
  }

  else
  {
    v50 = &v47;
    __chkstk_darwin(v26);
    __chkstk_darwin(v29);
    v47 = v24;
    sub_10076980C();
    v30 = sub_10076981C();
    v48 = a9;
    v31 = v55;
    v49 = v30(v55, sub_1000F79F4, &v47 - 4, v60, v61, v62, v63, v56, a9, v59);
    sub_10076468C();
    swift_getKeyPath();
    v32 = v51;
    sub_10076F49C();

    v47(v20, v17);
    v33 = v54;
    v34 = v25(v32, v54);
    if (v34 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = v58();
      v28 = sub_10075203C(v31, v35, v60, v61, v62, v63, v56, v48, v59);

      v36 = v53;
    }

    else
    {
      v37 = v32;
      v38 = v48;
      v39 = v59;
      v40 = v60;
      v41 = v56;
      v43 = v61;
      v42 = v62;
      v44 = v63;
      v36 = v53;
      if (v34 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v45 = v58();
        v28 = sub_100753380(v31, v45, v40, v43, v42, v44, v41, v38, v39);

        v33 = v54;
      }

      else if (v34 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v28 = v49;
        [v49 setOrthogonalScrollingBehavior:2];
        v33 = v54;
      }

      else
      {
        v33 = v54;
        (*(v53 + 8))(v37, v54);
        v28 = v49;
      }
    }

    (*(v36 + 8))(v52, v33);
  }

  return v28;
}

uint64_t sub_1002B2994()
{
  sub_10076982C();

  return swift_deallocClassInstance();
}

id sub_1002B29F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130[3] = a6;
  v13 = sub_10076341C();
  v151 = *(v13 - 8);
  __chkstk_darwin(v13);
  v148 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076C38C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v130 - v19;
  v152 = a2;
  v147 = v13;
  if ((sub_1007701EC() & 1) == 0)
  {
    sub_100016F40(0, &qword_100948D28, NSCollectionLayoutGroup_ptr);
    v109 = sub_1007708AC();
    v110 = [objc_opt_self() sectionWithGroup:v109];

    sub_1007697EC();
    return v110;
  }

  v130[1] = a3;
  v130[2] = a5;
  v146 = a7;
  v21 = sub_1003B12F0(a1);
  v22 = *(v21 + 16);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = (v22 - 1);
  sub_10076460C();
  sub_10076C23C();
  v25 = v24;
  v26 = *(v16 + 8);
  v145 = v15;
  v144 = v16 + 8;
  v26(v20, v15);
  v27 = v25 * v23;
  v160 = _swiftEmptyArrayStorage;
  v28 = &off_100911000;
  v29 = &off_100911000;
  v30 = v20;
  v135 = *(v21 + 16);
  v143 = v26;
  if (!v135)
  {

    v111 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v132 = objc_opt_self();
  v154 = objc_opt_self();
  v138 = objc_opt_self();
  v131 = objc_opt_self();
  v31 = 0;
  v32 = 0;
  v136 = v21;
  v134 = v21 + 32;
  v149 = v151 + 16;
  v150 = (v151 + 8);
  v142 = v20;
  v33 = v147;
  v34 = v148;
  v133 = a4;
  v141 = a1;
  do
  {
    if (v32 >= *(v136 + 16))
    {
      goto LABEL_71;
    }

    v139 = v32;
    v35 = *(v134 + 8 * v32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v29 = *(v152 + 16);

      v37 = 0.0;
      v30 = 32;
      v155 = _swiftEmptyArrayStorage;
      v153 = v29;
      while (1)
      {
        if (v31 < v29)
        {
          if (v31 < 0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);

            sub_10077157C();

            goto LABEL_66;
          }

          v38 = v35;
          v39 = *(v35 + v30);
          (*(v151 + 16))(v34, v152 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v31++, v33);
          sub_10076C84C();
          sub_1002A2E88();
          sub_10076332C();
          v40 = aBlock[0];
          if (aBlock[0])
          {
            sub_1007697DC();
            sub_10000CF78(aBlock, v157);
            if (sub_10076A3CC())
            {
              type metadata accessor for BaseTodayCardCollectionViewCell(0);
              v41 = swift_dynamicCastMetatype();
              if (v41)
              {
                v42 = v41;
                sub_10000CD74(aBlock);
                swift_getKeyPath();
                v43 = v142;
                sub_10076338C();

                swift_getKeyPath();
                sub_10076338C();

                v44 = aBlock[0];
                v45 = (*(v42 + 528))(v40, v39, 0, v43, aBlock[0], 0);

                v46 = v143;
                v143(v43, v145);
                v47 = v140;
                sub_10076460C();
                sub_10076C8BC();
                sub_10076C2FC();
                switch(v39)
                {
                  case 6:
                    v53 = floor(v48);
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 5:
                    sub_10076C22C();
                    v53 = v52;
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 4:
                    v49 = v48;
                    v50 = sub_10076C34C();
                    v33 = v147;
                    v35 = v38;
                    v29 = v153;
                    if (!v51)
                    {
                      goto LABEL_38;
                    }

                    if (v50 == 0x6972477961646F74 && v51 == 0xE900000000000064)
                    {

                      goto LABEL_37;
                    }

                    v71 = sub_10077167C();

                    if (v71)
                    {
LABEL_37:
                      sub_10076C2BC();
                      v53 = floor((v49 - v72) * 0.5);
                    }

                    else
                    {
LABEL_38:
                      sub_10076C2FC();
                      v53 = v73;
                    }

                    v143(v47, v145);
LABEL_43:
                    if (v37 <= v45)
                    {
                      v37 = v45;
                    }

                    v82 = v155;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v82 = sub_10049D1CC(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v84 = *(v82 + 2);
                    v83 = *(v82 + 3);
                    v155 = v82;
                    if (v84 >= v83 >> 1)
                    {
                      v155 = sub_10049D1CC((v83 > 1), v84 + 1, 1, v155);
                    }

                    v85 = v148;
                    (*v150)(v148, v33);
                    v86 = v155;
                    *(v155 + 2) = v84 + 1;
                    v87 = &v86[8 * v84];
                    v34 = v85;
                    *(v87 + 4) = v53;
                    v28 = &off_100911000;
                    goto LABEL_11;
                  default:
                    sub_10076C8BC();
                    sub_10076C2FC();
                    if (v39 > 1)
                    {
                      v33 = v147;
                      if (v39 == 2)
                      {
                        sub_10076C21C();
                        v59 = v58 + -1.0;
                        sub_10076C22C();
                        v61 = v60;
                        sub_10076C2BC();
                        v63 = v59 + -1.0;
                        if (v59 + -1.0 < 0.0)
                        {
                          v63 = 0.0;
                        }

                        v64 = v61 * v59 + v62 * v63;
                        sub_10076C24C();
                        v66 = v65;
                        sub_10076C2EC();
                        v69 = v66 - (v67 + v68);
                        sub_10076C2BC();
                        v55 = v69 - v70 - v64;
                      }

                      else
                      {
                        sub_10076C24C();
                        v75 = v74;
                        sub_10076C2EC();
                        v78 = v75 - (v76 + v77);
                        sub_10076C22C();
                        v80 = v78 - v79;
                        sub_10076C2BC();
                        v55 = v80 - v81;
                      }
                    }

                    else
                    {
                      v33 = v147;
                      if (v39)
                      {
                        v56 = v55;
                        sub_10076C2BC();
                        v55 = (v56 - v57) * 0.5;
                      }
                    }

                    v53 = floor(v55);
                    v54 = v145;
                    break;
                }

                v35 = v38;
                v29 = v153;
                v46(v47, v54);
                goto LABEL_43;
              }

              v34 = v148;
              v33 = v147;
              (*v150)(v148, v147);

              sub_10000CD74(aBlock);
            }

            else
            {
              v33 = v147;
              (*v150)(v34, v147);

              sub_10000CD74(aBlock);
            }

            v28 = &off_100911000;
          }

          else
          {
            (*v150)(v34, v33);
          }

          v35 = v38;
          v29 = v153;
        }

LABEL_11:
        ++v30;
        if (!--v36)
        {

          v30 = v142;
          v88 = v155;
          goto LABEL_52;
        }
      }
    }

    v37 = 0.0;
    v88 = _swiftEmptyArrayStorage;
LABEL_52:
    v89 = *(v88 + 2);
    v90 = v154;
    if (v89)
    {
      v137 = v31;
      v155 = v88;
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1007714EC();
      v153 = objc_opt_self();
      v91 = 32;
      v92 = v138;
      do
      {
        v93 = [v90 v28[246]];
        v94 = [v90 v28[246]];
        v95 = [v92 sizeWithWidthDimension:v93 heightDimension:v94];

        sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
        isa = sub_1007701AC().super.isa;
        v97 = [(SEL *)v153 itemWithLayoutSize:v95 supplementaryItems:isa];

        sub_1007714CC();
        sub_1007714FC();
        v90 = v154;
        sub_10077150C();
        sub_1007714DC();
        v91 += 8;
        --v89;
      }

      while (v89);

      v30 = v142;
      v33 = v147;
      v31 = v137;
    }

    else
    {
    }

    v98 = [v90 fractionalWidthDimension:1.0];
    v99 = [v90 v28[246]];
    v100 = [v138 sizeWithWidthDimension:v98 heightDimension:v99];

    sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
    v101 = sub_1007701AC().super.isa;

    v102 = [v132 horizontalGroupWithLayoutSize:v100 subitems:v101];

    sub_10076460C();
    sub_10076C2BC();
    v104 = v103;
    v143(v30, v145);
    v105 = [v131 fixedSpacing:v104];
    [v102 setInterItemSpacing:v105];

    v106 = v102;
    sub_10077019C();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    v107 = v139 + 1;
    sub_10077025C();

    v32 = v107;
    v27 = v27 + v37;
    v108 = v107 == v135;
    v34 = v148;
    v29 = &off_100911000;
  }

  while (!v108);
  v111 = v160;

LABEL_64:
  v112 = objc_opt_self();
  v113 = [v112 fractionalWidthDimension:1.0];
  v114 = [v112 absoluteDimension:v27];
  v29 = [objc_opt_self() v29[247]];

  if (v111 >> 62)
  {
    goto LABEL_72;
  }

  sub_10077168C();
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
LABEL_66:

  v115 = objc_opt_self();
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v116 = sub_1007701AC().super.isa;

  v117 = [v115 verticalGroupWithLayoutSize:v29 subitems:v116];

  v118 = objc_opt_self();
  sub_10076460C();
  sub_10076C2BC();
  v120 = v119;
  v121 = v145;
  v122 = v143;
  v143(v30, v145);
  v123 = [v118 fixedSpacing:v120];
  [v117 setInterItemSpacing:v123];

  v110 = [objc_opt_self() sectionWithGroup:v117];
  sub_10076460C();
  sub_10076C23C();
  v125 = v124;
  v122(v30, v121);
  [v110 setInterGroupSpacing:v125];
  sub_1007697FC();
  v126 = sub_1007701DC();
  v128 = v127;

  if (v126)
  {
    v158 = v126;
    v159 = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100751F08;
    v157 = &unk_10088FCD0;
    v126 = _Block_copy(aBlock);
  }

  [v110 setVisibleItemsInvalidationHandler:v126];
  _Block_release(v126);
  sub_1007697EC();

  return v110;
}