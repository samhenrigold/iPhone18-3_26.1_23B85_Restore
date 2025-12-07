void sub_1005AC9C8(uint64_t a1)
{
  sub_10002849C(&unk_100989C70, &qword_1007D3160);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  [v2 invalidateMediaToken];
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
  swift_unknownObjectRelease();
}

id sub_1005ACA78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005ACB00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [Strong presentingViewController];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedViewController];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v2 = v4;
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }
  }

LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 presentingViewController], v8, !v9))
  {
    v6 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_23;
  }

LABEL_11:
  v10 = [v6 viewControllers];
  sub_100065AF0();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1005ACFEC(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_10002849C(&qword_10098D548, &qword_1007D6C08);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_100005A38(&v30, v33);
      sub_100005A38(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_1005ACFEC(&v30);
  v24 = [v11 childViewControllers];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_10002849C(&qword_10098D548, &qword_1007D6C08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_1005ACFEC(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_1005AD054(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_100005A38(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_10002C0AC(v33, &v30);
      v20 = swift_allocObject();
      sub_100005A38(&v30, v20 + 16);
      v28 = sub_1005AD0C4;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_100007A08;
      *(&v27 + 1) = &unk_1008C9B80;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_100007000(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_1005ACFEC(v34);

    p_aBlock = &aBlock;
  }

  return sub_1005ACFEC(p_aBlock);
}

uint64_t sub_1005ACFEC(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098D538, &qword_1007D6C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005AD054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10098D538, &qword_1007D6C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005AD0C4()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002A400(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

__n128 sub_1005AD118(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1005AD14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005AD194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005AD20C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AD22C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

void *sub_1005AD274@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v117 = a1;
  v126 = a2;
  v8 = type metadata accessor for VerticalStack();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  v130 = type metadata accessor for Resize.Rule();
  v14 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v132 = (&v113 - v17);
  __chkstk_darwin(v18);
  v131 = (&v113 - v19);
  __chkstk_darwin(v20);
  v22 = (&v113 - v21);
  __chkstk_darwin(v23);
  v25 = (&v113 - v24);
  v133 = type metadata accessor for Resize();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v123 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v119 = &v113 - v29;
  v30 = *(v4 + 18);
  v31 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v32 = [*&v30[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] hasContent];
  v124 = v30;
  if (v32 && ([v30 isHidden] & 1) == 0)
  {
    v129 = [*&v30[v31] isHidden];
  }

  else
  {
    v129 = 1;
  }

  v33 = *(v5 + 6);
  v34 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  if ([*&v33[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] hasContent] && (objc_msgSend(*&v33[v34], "isHidden") & 1) == 0)
  {
    v35 = [v33 isHidden];
  }

  else
  {
    v35 = 1;
  }

  sub_10005FC74((v5 + 104), &v138);
  if (*(&v139 + 1))
  {
    sub_100005A38(&v138, v147);
    sub_10002A400(v147, v148);
    Measurable.placeable.getter();
    v36 = *(v5 + 1);
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v36;
    v37 = enum case for Resize.Rule.replaced(_:);
    v38 = *(v14 + 13);
    v39 = v130;
    v38(v25, enum case for Resize.Rule.replaced(_:), v130);
    v40 = *(v5 + 2);
    *(v22 + 3) = &type metadata for CGFloat;
    *(v22 + 4) = &protocol witness table for CGFloat;
    *v22 = v40;
    v38(v22, v37, v39);
    v41 = enum case for Resize.Rule.unchanged(_:);
    v38(v131, enum case for Resize.Rule.unchanged(_:), v39);
    v38(v132, v41, v39);
    v42 = v119;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    v43 = v118;
    VerticalStack.init(with:)();
    v44 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v45 = sub_1000056E0(&v138);
    v46 = v5;
    v47 = v125;
    (*(v125 + 16))(v45, v42, v44);
    v48 = v120;
    VerticalStack.adding(_:with:)();
    v49 = v128;
    v50 = *(v127 + 8);
    v50(v43, v128);
    sub_100007000(&v138);
    v136[0] = v124;
    type metadata accessor for TodayTransitioningLabelView();
    Measurable.placeable.getter();
    sub_1005AE320(v46, &v138);
    v51 = swift_allocObject();
    v52 = v145;
    *(v51 + 112) = v144;
    *(v51 + 128) = v52;
    *(v51 + 144) = v146[0];
    *(v51 + 153) = *(v146 + 9);
    v53 = v141;
    *(v51 + 48) = v140;
    *(v51 + 64) = v53;
    v54 = v143;
    *(v51 + 80) = v142;
    *(v51 + 96) = v54;
    v55 = v139;
    *(v51 + 16) = v138;
    *(v51 + 32) = v55;
    *(v51 + 169) = v129;
    v56 = v126;
    v126[3] = v49;
    v56[4] = &protocol witness table for VerticalStack;
    sub_1000056E0(v56);
    VerticalStack.adding(_:with:)();

    sub_100007000(v137);
    v50(v48, v49);
    (*(v47 + 8))(v42, v44);
    return sub_100007000(v147);
  }

  sub_10005FD2C(&v138);
  LODWORD(v114) = v35;
  VerticalStack.init(with:)();
  v137[0] = v33;
  v119 = type metadata accessor for TodayTransitioningLabelView();
  Measurable.placeable.getter();
  *(v25 + 3) = &type metadata for CGFloat;
  *(v25 + 4) = &protocol witness table for CGFloat;
  *v25 = a3;
  v58 = *(v14 + 13);
  v115 = enum case for Resize.Rule.replaced(_:);
  v59 = v130;
  v58(v25);
  v118 = v14;
  v120 = v5;
  v60 = v22;
  v61 = enum case for Resize.Rule.unchanged(_:);
  (v58)(v60, enum case for Resize.Rule.unchanged(_:), v59);
  (v58)(v131, v61, v59);
  v116 = v61;
  v62 = v61;
  v63 = v60;
  (v58)(v132, v62, v59);
  *(&v139 + 1) = v133;
  *&v140 = &protocol witness table for Resize;
  sub_1000056E0(&v138);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v64 = swift_allocObject();
  v65 = v120;
  *(v64 + 16) = v114;
  VerticalStack.add(_:with:)();

  sub_100007000(&v138);
  sub_1005AE320(v65, &v138);
  v66 = swift_allocObject();
  v67 = v145;
  v66[7] = v144;
  v66[8] = v67;
  v66[9] = v146[0];
  *(v66 + 153) = *(v146 + 9);
  v68 = v141;
  v66[3] = v140;
  v66[4] = v68;
  v69 = v143;
  v66[5] = v142;
  v66[6] = v69;
  v70 = v139;
  v66[1] = v138;
  v66[2] = v70;
  v71 = v121;
  *v121 = sub_1005AE358;
  v71[1] = v66;
  (v58)(v71, enum case for Resize.Rule.recalculated(_:), v59);
  v72 = v129 | ~*(v65 + 152);
  v114 = *(v65 + 56);
  v147[0] = v114;
  if (v72)
  {
    Measurable.placeable.getter();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    v73 = v116;
    (v58)(v63, v116, v59);
    (v58)(v131, v73, v59);
  }

  else
  {
    Measurable.placeable.getter();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    (*(v118 + 2))(v63, v71, v59);
    v73 = v116;
    (v58)(v131, v116, v59);
  }

  (v58)(v132, v73, v59);
  v74 = v123;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v75 = v120;
  v76 = v122;
  v77 = v133;
  if (v120[40])
  {
    v148 = v133;
    v149 = &protocol witness table for Resize;
    v78 = sub_1000056E0(v147);
    v79 = v125;
    (*(v125 + 16))(v78, v74, v77);
    sub_1005AE320(v75, &v138);
    v80 = swift_allocObject();
    v81 = v145;
    v80[7] = v144;
    v80[8] = v81;
    v80[9] = v146[0];
    *(v80 + 153) = *(v146 + 9);
    v82 = v141;
    v80[3] = v140;
    v80[4] = v82;
    v83 = v143;
    v80[5] = v142;
    v80[6] = v83;
    v84 = v139;
    v80[1] = v138;
    v80[2] = v84;
    VerticalStack.add(_:with:)();

    sub_100007000(v147);
    v85 = v130;
    v86 = v121;
LABEL_21:
    v137[0] = v124;
    Measurable.placeable.getter();
    sub_1005AE320(v75, &v138);
    v105 = swift_allocObject();
    v106 = v145;
    *(v105 + 112) = v144;
    *(v105 + 128) = v106;
    *(v105 + 144) = v146[0];
    *(v105 + 153) = *(v146 + 9);
    v107 = v141;
    *(v105 + 48) = v140;
    *(v105 + 64) = v107;
    v108 = v143;
    *(v105 + 80) = v142;
    *(v105 + 96) = v108;
    v109 = v139;
    *(v105 + 16) = v138;
    *(v105 + 32) = v109;
    *(v105 + 169) = v129;
    VerticalStack.add(_:with:)();

    sub_100007000(v147);
    v110 = v128;
    v111 = v126;
    v126[3] = v128;
    v111[4] = &protocol witness table for VerticalStack;
    v112 = sub_1000056E0(v111);
    (*(v127 + 32))(v112, v76, v110);
    (*(v79 + 8))(v123, v77);
    return (*(v118 + 1))(v86, v85);
  }

  v87 = *(v120 + 4);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1007B0B70;
  v89 = v117;
  *(v88 + 32) = v117;
  v90 = v89;
  v91 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v114 measurementsWithFitting:v91 in:{a3, a4}];
  v93 = v92;

  sub_10002A400((v75 + 64), *(v75 + 88));
  result = dispatch thunk of LayoutTextView.font.getter();
  v86 = v121;
  if (result)
  {
    v94 = result;
    [result lineHeight];
    v96 = v95;

    if (v96 * v87 - v93 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96 * v87 - v93;
    }

    v77 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v98 = sub_1000056E0(&v138);
    v79 = v125;
    (*(v125 + 16))(v98, v123, v77);
    v137[3] = &type metadata for CGFloat;
    v137[4] = &protocol witness table for CGFloat;
    *v137 = v97;
    v99 = type metadata accessor for ZeroDimension();
    v136[3] = v99;
    v136[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v136);
    static ZeroDimension.zero.getter();
    v135[3] = v99;
    v135[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v135);
    static ZeroDimension.zero.getter();
    v134[3] = v99;
    v134[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v134);
    static ZeroDimension.zero.getter();
    v148 = type metadata accessor for Margins();
    v149 = &protocol witness table for Margins;
    sub_1000056E0(v147);
    Margins.init(_:top:leading:bottom:trailing:)();
    sub_1005AE320(v75, &v138);
    v100 = swift_allocObject();
    v101 = v145;
    v100[7] = v144;
    v100[8] = v101;
    v100[9] = v146[0];
    *(v100 + 153) = *(v146 + 9);
    v102 = v141;
    v100[3] = v140;
    v100[4] = v102;
    v103 = v143;
    v100[5] = v142;
    v100[6] = v103;
    v104 = v139;
    v100[1] = v138;
    v100[2] = v104;
    VerticalStack.add(_:with:)();

    sub_100007000(v147);
    v85 = v130;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005AE094(uint64_t a1, uint64_t *a2)
{
  VerticalStack.Properties.topSpacing.setter();
  sub_10002A400(a2 + 8, a2[11]);
  if (dispatch thunk of LayoutView.hasContent.getter())
  {
    [a2[7] isHidden];
  }

  return VerticalStack.Properties.shouldSkip.setter();
}

double sub_1005AE198(void *a1, double a2, double a3)
{
  sub_1005AD274(a1, v6, a2, a3);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

uint64_t sub_1005AE23C(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1005AD274(a1, v6, a4, a5);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v6);
}

__n128 sub_1005AE2D8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1005AE390(uint64_t a1)
{
  sub_100007000((v1 + 80));
  if (*(v1 + 144))
  {
    sub_100007000((v1 + 120));
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1005AE464(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v56 = type metadata accessor for PageGrid.HorizontalMargins();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v59 = &v44 - v17;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v57 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v21 = v20 + v19;
  v22 = a1;
  v61 = a1;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v61 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v54 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v60 + 104);
  v60 += 104;
  v55 = v28;
  v29 = v56;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = v15;
  v52 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v61 = a1;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v32 = v54;
  v55(v6, v54, v29);
  LOBYTE(v61) = 0;
  v50 = v4;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  v53 = v9;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v57;
  v51 = v21;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 2 * v33;
  v61 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v46 = vdupq_n_s64(0x4041000000000000uLL);
  v34 = v6;
  *v6 = v46;
  v35 = v32;
  v36 = v32;
  v37 = v55;
  v38 = v56;
  v55(v6, v36, v56);
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v39 = v45;
  v40 = v34;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v41 = v57;
  v45 = v39 + v57;
  v61 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v40 = v46;
  v37(v40, v35, v38);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 4 * v41;
  v61 = 3.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v46 = vdupq_n_s64(0x404A000000000000uLL);
  *v40 = v46;
  v42 = v56;
  v37(v40, v54, v56);
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v61 = 3.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v40 = v46;
  v55(v40, v54, v42);
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v49;
}

void sub_1005AEF74(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v39 = v4;
    v5 = [a1 viewForKey:UITransitionContextFromViewKey];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 containerView];
      v8 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v8)
      {
        [v7 insertSubview:v8 belowSubview:v6];
      }

      [a1 initialFrameForViewController:v40];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v13 = CGRectGetWidth(v48) * 0.2;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v14 = CGRectGetHeight(v49) * 0.2;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectInset(v50, v13, v14);
      if (v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 32])
      {
        v15 = v51.origin.x;
        v16 = v51.origin.y;
        v17 = v51.size.width;
        v18 = v51.size.height;
        v19 = v1;
      }

      else
      {
        v19 = v1;
        [v7 convertRect:0 fromView:{*&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect], *&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 8], *&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 16], *&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 24]}];
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
      }

      v25 = [swift_unknownObjectRetain() containerView];
      v26 = [v25 traitCollection];

      LOBYTE(v25) = UITraitCollection.isSizeClassCompact.getter();
      swift_unknownObjectRelease();
      if (v25)
      {
        v27 = 0.62;
      }

      else
      {
        v27 = 0.61;
      }

      v28 = [a1 containerView];
      v29 = [v28 traitCollection];

      LOBYTE(v28) = UITraitCollection.isSizeClassCompact.getter();
      if (v28)
      {
        v30 = 0.8;
      }

      else
      {
        v30 = 0.84;
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 2) = v19;
      *(v32 + 3) = v6;
      v32[4] = v15;
      v32[5] = v16;
      v32[6] = v17;
      v32[7] = v18;
      v45 = sub_1005AF84C;
      v46 = v32;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100007A08;
      v44 = &unk_1008C9E80;
      v33 = _Block_copy(&aBlock);
      v34 = v19;
      v35 = v6;

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = v34;
      v45 = sub_10018E8D4;
      v46 = v36;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100504C5C;
      v44 = &unk_1008C9ED0;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v38 = v34;

      [v31 animateWithDuration:129 delay:v33 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

      _Block_release(v37);
      _Block_release(v33);
      return;
    }

    v20 = v39;
  }

  else
  {
    v20 = v40;
  }
}

id sub_1005AF3FC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_1005F3D78(1);
  result = [a2 setFrame:{a3, a4, a5, a6}];
  if (*(a1 + OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 32) == 1)
  {

    return [a2 setAlpha:0.0];
  }

  return result;
}

void sub_1005AF4B4(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  if (v4)
  {
    v5 = v4;
    [v4 setAlpha:1.0];
    v6 = [swift_unknownObjectRetain() containerView];
    v7 = [v6 traitCollection];

    LOBYTE(v6) = UITraitCollection.isSizeClassCompact.getter();
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = 0.62;
    }

    else
    {
      v8 = 0.61;
    }

    v9 = [a1 containerView];
    v10 = [v9 traitCollection];

    LOBYTE(v9) = UITraitCollection.isSizeClassCompact.getter();
    if (v9)
    {
      v11 = 0.8;
    }

    else
    {
      v11 = 0.84;
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v24 = sub_1005AF800;
    v25 = v13;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100007A08;
    v23 = &unk_1008C9DE0;
    v14 = _Block_copy(&v20);
    v15 = v2;
    v16 = v5;

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    v24 = sub_10018E7F0;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100504C5C;
    v23 = &unk_1008C9E30;
    v18 = _Block_copy(&v20);
    swift_unknownObjectRetain();
    v19 = v15;

    [v12 animateWithDuration:129 delay:v14 usingSpringWithDamping:v18 initialSpringVelocity:v8 options:0.0 animations:v11 completion:1.0];

    _Block_release(v18);
    _Block_release(v14);
  }
}

id sub_1005AF7A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionDismissAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005AF800()
{
  v1 = *(v0 + 24);
  sub_1005F3D78(1);

  return [v1 setAlpha:0.0];
}

double sub_1005AF874(uint64_t a1)
{
  v25 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10098D5E8, qword_1007D6DA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = type metadata accessor for StaticDimension();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005AFC34(v8);
  v26 = a1;
  Conditional.evaluate(with:)();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_1005AFC34(v8);
  v26 = a1;
  Conditional.evaluate(with:)();
  v14(v8, v5);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

uint64_t sub_1005AFB80()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_10098D590);
  sub_1000056A8(v0, qword_10098D590);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1005AFC34@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v26);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  if (qword_10096DF78 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0DE8);
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v23[2] = v13 + 16;
  v24 = v14;
  v14(v6, v12, v11);
  v15 = enum case for FontSource.useCase(_:);
  v16 = v4[13];
  v16(v6, enum case for FontSource.useCase(_:), v3);
  v29 = v3;
  v30 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v28);
  v18 = v4[2];
  v18(v17, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  v23[1] = v10;
  v19 = v4[1];
  v19(v6, v3);
  if (qword_10096DF70 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v11, qword_1009D0DD0);
  v24(v6, v20, v11);
  v16(v6, v15, v3);
  v29 = v3;
  v30 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v28);
  v18(v21, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  v19(v6, v3);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1005AFF6C()
{
  v0 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v0, qword_1009D2B20);
  sub_1000056A8(v0, qword_1009D2B20);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1005B0004()
{
  v0 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_100005644(v0, qword_1009D2B38);
  sub_1000056A8(v0, qword_1009D2B38);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

char *sub_1005B0098(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_10096E9F8;
  v20 = *&v16[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v21, qword_1009D2B38);
  v22 = [v16 traitCollection];
  Conditional.evaluate<>(in:)();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = UITraitCollection.isSizeClassRegular.getter();
  if (v25)
  {
    if (qword_10096DF78 != -1)
    {
      swift_once();
    }

    v26 = qword_1009D0DE8;
  }

  else
  {
    if (qword_10096DF70 != -1)
    {
      swift_once();
    }

    v26 = qword_1009D0DD0;
  }

  v27 = type metadata accessor for FontUseCase();
  v28 = sub_1000056A8(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v30 = qword_10096E9E8;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v32, qword_10098D590);
  v38[4] = v16;
  v33 = v16;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B10D0;
  *(v35 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v38);
  return v33;
}

void sub_1005B05F0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1005B06B4()
{
  v1 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_1005B05F0([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_1005B0804()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = UITraitCollection.isSizeClassRegular.getter();

  v13 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    CGSize.scaled(_:)();
    v17 = v16;
    v19 = v18;
    v20 = *&v1[v13];
    if (v20)
    {
      v21 = [v20 image];
      if (v21)
      {
        v22 = v21;
        [v21 contentInsets];
        right = v23;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  right = UIEdgeInsetsZero.right;
LABEL_7:
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  rect = v19;
  v25 = CGRectGetMidY(v40) + v19 * -0.5;
  if (v12)
  {
    v26 = v17;
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    MinX = CGRectGetMinX(v41);
  }

  else
  {
    v42.origin.x = v4;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v10;
    v26 = v17;
    MinX = right + CGRectGetMaxX(v42) - v17;
  }

  v28 = ceil(MinX);
  v29 = ceil(v25);
  v30 = *&v1[v13];
  if (v30)
  {
    v31 = v30;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v31 setFrame:?];
  }

  if (qword_10096E9F0 != -1)
  {
    swift_once();
  }

  v32 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_1000056A8(v32, qword_1009D2B20);
  v33 = v1;
  Conditional.evaluate(with:)();

  if (v12)
  {
    v43.origin.x = v28;
    v43.origin.y = v29;
    v43.size.width = v26;
    v43.size.height = rect;
    CGRectGetMaxX(v43);
  }

  else
  {
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    CGRectGetMinX(v44);
  }

  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v34 = CGRectGetWidth(v45) - (v26 + v38);
  v35 = *&v33[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel];
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  [v35 sizeThatFits:{v34, CGRectGetHeight(v46)}];
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectGetMidY(v47);
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v35 setFrame:?];
}

id sub_1005B0BF0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E9E8 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_10098D590);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

id sub_1005B0D90()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isSizeClassRegular.getter();

  if (v8)
  {
    if (qword_10096DF78 != -1)
    {
      swift_once();
    }

    v9 = qword_1009D0DE8;
  }

  else
  {
    if (qword_10096DF70 != -1)
    {
      swift_once();
    }

    v9 = qword_1009D0DD0;
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  type metadata accessor for FontUseCase();
  (*(v12 + 56))(v5, 0, 1, v10);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  if (qword_10096E9F8 != -1)
  {
    swift_once();
  }

  v13 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v13, qword_1009D2B38);
  v14 = [v1 traitCollection];
  Conditional.evaluate<>(in:)();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell(uint64_t a1)
{
  result = qword_10098D5D0;
  if (!qword_10098D5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B1128(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005B11D0()
{
  v1 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005B12DC@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1005B1308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a4;
  v42 = a2;
  v45 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v5 - 8);
  v40 = &ObjectType - v6;
  v44 = type metadata accessor for Shelf.PresentationHints();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v43 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v47 && (String.nilIfEmpty.getter(), v22 = v21, , v22))
  {
    v23 = *&v46[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel];
    v24 = String._bridgeToObjectiveC()();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v46[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v20(v16, v13);
  static Shelf.PresentationHints.sortable.getter();
  sub_1005B3368(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v25 = v44;
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v46;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v45)
  {
    goto LABEL_11;
  }

  v29 = String.nilIfEmpty.getter();
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = v30;
  if (!v41)
  {

LABEL_11:
    v37 = *&v28[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
    [v37 setMenu:0];
    [v37 setShowsMenuAsPrimaryAction:0];
    [v37 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v32 = *&v28[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
  v33 = v29;
  v34 = v41;
  v35 = v40;
  sub_1005B1EB4(v33, v31, v28);

  v36 = type metadata accessor for UIButton.Configuration();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  UIButton.configuration.setter();
  [v32 setMenu:v34];
  [v32 setShowsMenuAsPrimaryAction:1];
  [v32 setHidden:0];

  return [v28 setNeedsLayout];
}

uint64_t sub_1005B17F8(__n128 a1)
{
  qword_10098D608 = type metadata accessor for SpacerDimension();
  qword_10098D610 = sub_1005B3368(&qword_10097A038, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
  sub_1000056E0(qword_10098D5F0);
  return SpacerDimension.init(constant:)();
}

uint64_t sub_1005B1874()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_10098D618 = v5;
  return result;
}

char *sub_1005B196C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_10096DF28 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D0CF8);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_1005B1D14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
  v8 = type metadata accessor for UIButton.Configuration();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  UIButton.configuration.setter();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

void sub_1005B1EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000367E8();
  if (qword_10096DF30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  sub_1000056A8(v8, qword_1009D0D10);
  v9 = static UIFont.preferredFont(forUseWith:in:)();
  static UIButton.Configuration.plain()();
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v9;

  v11 = NSFontAttributeName;
  v12 = v9;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100970EC0, &unk_1007B2BF0);
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  UIButton.Configuration.attributedTitle.setter();
  v14 = [objc_opt_self() configurationWithFont:v12 scale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  if (qword_10096EA08 != -1)
  {
    swift_once();
  }

  v15 = qword_10098D618;
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.contentInsets.setter();
}

void sub_1005B2190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  UIButton.configuration.getter();
  v21 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_100146A44(v9, v6);
    UIButton.configuration.setter();

    sub_10002B894(v9, &qword_10097CC90, &unk_1007BB2A0);
    return;
  }

  v22 = UIButton.Configuration.attributedTitle.modify();
  v24 = v23;
  v25 = type metadata accessor for AttributedString();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_1002F4FA0();
  v26 = v14;
  AttributedString.subscript.setter();
  v22(v28, 0);
  UIButton.configuration.setter();
}

id sub_1005B2524()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  v8 = [v0 traitCollection];
  UILabel.measure(toFit:with:)();
  v10 = v9;
  v12 = v11;

  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = [v0 traitCollection];
  UIButton.measure(toFit:with:)();
  v20 = v19;

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMaxX(v28);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, LayoutMarginsAware<>.layoutFrame.getter(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_1005B2190(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_1005B2190(v6);
    (*(v3 + 8))(v6, v2);
    LayoutMarginsAware<>.layoutFrame.getter();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v7 setFrame:?];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v17 setFrame:?];
}

id sub_1005B2950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v69 = a2;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Shelf.PresentationHints();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v73 = type metadata accessor for DynamicTextAppearance();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v67 - v13;
  v76 = type metadata accessor for LabelPlaceholder();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = type metadata accessor for PageGrid();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.supplementaryPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v88 = ShelfLayoutContext.traitCollection.getter();
  v79 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v90 && (String.nilIfEmpty.getter(), v30 = v29, , v30))
  {
    v31 = v70;
    DynamicTextAppearance.init()();
    v32 = v74;
    if (qword_10096DF28 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for FontUseCase();
    sub_1000056A8(v33, qword_1009D0CF8);
    DynamicTextAppearance.withFontUseCase(_:)();
    (*(v72 + 8))(v31, v73);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v87 = v34;
    v89 = v35;
    v78 = v36;
    v77 = v37;
    (*(v75 + 8))(v32, v76);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v87 = JUMeasurementsZero[0];
    v89 = v38;
    v39 = JUMeasurementsZero[3];
    v78 = JUMeasurementsZero[2];
    v77 = v39;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28(v18, v15);
  v40 = v80;
  static Shelf.PresentationHints.sortable.getter();
  sub_1005B3368(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v41 = v82;
  v42 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v43 = *(v81 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v68 = v27;
  if ((v42 & 1) != 0 && v83 && (String.nilIfEmpty.getter(), v44))
  {
    v45 = v70;
    DynamicTextAppearance.init()();
    v46 = v88;
    if (qword_10096DF30 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for FontUseCase();
    sub_1000056A8(v47, qword_1009D0D10);
    DynamicTextAppearance.withFontUseCase(_:)();
    (*(v72 + 8))(v45, v73);
    LabelPlaceholder.Options.init(rawValue:)();
    v48 = v74;
    LabelPlaceholder.init(_:with:where:)();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_10096EA08 != -1)
    {
      swift_once();
    }

    [qword_10098D618 size];
    v52 = v50 * v51 + 4.0;
    LabelPlaceholder.measure(toFit:with:)();
    v54 = v53;
    v56 = v55;
    (*(v75 + 8))(v48, v76);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v88;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v68 >= v87 + 16.0 + v57)
  {
    if (v89 > v56)
    {
      v58 = v89;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v89 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_10096EA00 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098D5F0, qword_10098D608);
  ShelfLayoutContext.traitEnvironment.getter();
  v61 = v84;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v63 = v62;
  swift_unknownObjectRelease();
  (*(v85 + 8))(v61, v86);
  v64 = [v59 absoluteDimension:v58 + v63];
  v65 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v64];

  return v65;
}

uint64_t sub_1005B3368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005B33C0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v58 = a2;
  v50 = type metadata accessor for PageGrid();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v54);
  v57 = &v47 - v4;
  v5 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v47 - v17;
  v18 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v56 = type metadata accessor for Shelf.ContentType();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v55 = v23;
  ReadOnlyLens.subscript.getter();

  v24 = *(v19 + 8);
  v24(v21, v18);
  v49 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v7, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v10, v13);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10002B894(v13, &unk_10098FFB0, qword_1007B3890);
    v25 = 1;
    v26 = v52;
  }

  else
  {
    swift_getKeyPath();
    v26 = v52;
    ReadOnlyLens.subscript.getter();

    v24(v13, v18);
    v25 = 0;
  }

  v27 = v53;
  v28 = v56;
  (*(v53 + 56))(v26, v25, 1, v56);
  v29 = v55;
  v30 = *(v54 + 48);
  v31 = v57;
  (*(v27 + 16))(v57, v55, v28);
  sub_100094EE4(v26, v31 + v30);
  if ((*(v27 + 48))(v31 + v30, 1, v28) == 1)
  {
    v32 = v47;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v34 = v33;
    (*(v48 + 8))(v32, v50);
    v35 = v58;
    *(v58 + 3) = &type metadata for CGFloat;
    *(v35 + 4) = &protocol witness table for CGFloat;
    *v35 = v34;
    sub_10002B894(v26, &unk_100992460, &qword_1007B6BF0);
    v36 = *(v27 + 8);
    v36(v29, v28);
    sub_10002B894(v31 + v30, &unk_100992460, &qword_1007B6BF0);
    return (v36)(v31, v28);
  }

  else
  {
    v38 = v51;
    sub_100094EE4(v31 + v30, v51);
    v39 = (*(v27 + 88))(v38, v28);
    if (v39 == enum case for Shelf.ContentType.appShowcase(_:) || v39 == enum case for Shelf.ContentType.arcadeShowcase(_:))
    {
      sub_10002B894(v31 + v30, &unk_100992460, &qword_1007B6BF0);
      v42 = *(v27 + 8);
      v42(v31, v28);
      if (qword_10096E6C0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for StaticDimension();
      v44 = sub_1000056A8(v43, qword_1009D2460);
      v45 = v58;
      *(v58 + 3) = v43;
      v45[4] = &protocol witness table for StaticDimension;
      v46 = sub_1000056E0(v45);
      (*(*(v43 - 8) + 16))(v46, v44, v43);
      sub_10002B894(v26, &unk_100992460, &qword_1007B6BF0);
      return (v42)(v29, v28);
    }

    else
    {
      v40 = *(v27 + 8);
      v40(v51, v28);
      v41 = v58;
      *(v58 + 3) = &type metadata for Double;
      *(v41 + 4) = &protocol witness table for Double;
      *v41 = 0.0;
      sub_10002B894(v26, &unk_100992460, &qword_1007B6BF0);
      v40(v29, v28);
      return sub_10002B894(v31, &qword_100972A48, &unk_1007BF080);
    }
  }
}

uint64_t sub_1005B3AE8@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v43 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v43);
  v46 = &v40 - v1;
  v2 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v11 - 8);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v14;
  v15 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v45 = type metadata accessor for Shelf.ContentType();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v44 = v20;
  ReadOnlyLens.subscript.getter();

  v21 = *(v16 + 8);
  v21(v18, v15);
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v7, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v4, v10);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_10002B894(v10, &unk_10098FFB0, qword_1007B3890);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    swift_getKeyPath();
    v24 = v40;
    ReadOnlyLens.subscript.getter();

    v21(v10, v15);
    v22 = 0;
    v23 = v24;
  }

  v25 = v41;
  v26 = v45;
  (*(v41 + 56))(v23, v22, 1, v45);
  v27 = v44;
  v28 = *(v43 + 48);
  v29 = v46;
  (*(v25 + 16))(v46, v44, v26);
  sub_100094EE4(v23, v29 + v28);
  v30 = *(v25 + 88);
  v31 = v30(v29, v26);
  v32 = enum case for Shelf.ContentType.horizontalRule(_:);
  v33 = v42;
  if (v31 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    goto LABEL_10;
  }

  if ((*(v25 + 48))(v29 + v28, 1, v26) != 1)
  {
    sub_100094EE4(v29 + v28, v33);
    if (v30(v33, v26) == v32)
    {
      sub_10002B894(v29 + v28, &unk_100992460, &qword_1007B6BF0);
      (*(v25 + 8))(v29, v26);
LABEL_11:
      v34 = v47;
      v47[3] = &type metadata for Double;
      v34[4] = &protocol witness table for Double;
      *v34 = 0;
      sub_10002B894(v23, &unk_100992460, &qword_1007B6BF0);
      return (*(v25 + 8))(v27, v26);
    }

    (*(v25 + 8))(v33, v26);
  }

  if (v30(v29, v26) == enum case for Shelf.ContentType.appShowcase(_:))
  {
LABEL_10:
    sub_10002B894(v29 + v28, &unk_100992460, &qword_1007B6BF0);
    goto LABEL_11;
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for StaticDimension();
  v37 = sub_1000056A8(v36, qword_1009D2460);
  v38 = v47;
  v47[3] = v36;
  v38[4] = &protocol witness table for StaticDimension;
  v39 = sub_1000056E0(v38);
  (*(*(v36 - 8) + 16))(v39, v37, v36);
  sub_10002B894(v23, &unk_100992460, &qword_1007B6BF0);
  (*(v25 + 8))(v27, v26);
  return sub_10002B894(v29, &qword_100972A48, &unk_1007BF080);
}

void sub_1005B42AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SystemImage();
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
    if (qword_10096EA10 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_10098D728;
    v103 = qword_10098D728;
    v115.value._rawValue = 0;
    isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v115, v23).super.isa;
    v102[1] = sub_100005744(0, &qword_1009870A0, UIImageSymbolConfiguration_ptr);
    v111 = UIFontTextStyleTitle2;
    v26 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = static SystemImage.load(_:with:)();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = UITraitCollection.clampingContentSizeCategory(min:max:)(v116, v118).super.isa;
    v36 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = static SystemImage.load(_:with:)();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = UITraitCollection.clampingContentSizeCategory(min:max:)(v117, v119).super.isa;
    v44 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = static SystemImage.load(_:with:)();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = UITraitCollection.prefersRightToLeftLayouts.getter();

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
    CGPoint.rounded(_:)();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC8AppStore17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = UITraitCollection.prefersRightToLeftLayouts.getter();

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
    CGPoint.rounded(_:)();
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
    v76 = UITraitCollection.prefersRightToLeftLayouts.getter();

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
    CGPoint.rounded(_:)();
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
    v84 = UITraitCollection.prefersRightToLeftLayouts.getter();

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
    CGPoint.rounded(_:)();
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
    v92 = UITraitCollection.prefersRightToLeftLayouts.getter();

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
    CGPoint.rounded(_:)();
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

uint64_t sub_1005B4D20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_1005B4EAC(v6);
  v7 = *&v5[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_1005B4EAC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_10096EA10 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_10098D728;
  v26.value._rawValue = 0;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v26, v9).super.isa;
  sub_100005744(0, &qword_1009870A0, UIImageSymbolConfiguration_ptr);
  v12 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = static SystemImage.load(_:with:)();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = UITraitCollection.prefersRightToLeftLayouts.getter();

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

void sub_1005B5404(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = String._bridgeToObjectiveC()();
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

void *sub_1005B5514()
{
  v1 = v0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  do
  {
    if (v2 >= 5)
    {
      v6 = &selRef_accessibilitySetStarRatingFive;
      if (v2 != 5)
      {
        v4._object = 0x800000010081BA90;
        v4._countAndFlagsBits = 0xD00000000000001ALL;
        v5._countAndFlagsBits = 0;
        v5._object = 0xE000000000000000;
        localizedStringWithCount(_:count:comment:)(v4, v2, v5);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v6 = off_1008C9FA0[v2];
    }

    v7 = *v6;
    v8._object = 0x800000010081BA90;
    v8._countAndFlagsBits = 0xD00000000000001ALL;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v8, v2, v9);
    if (!v7)
    {
      goto LABEL_2;
    }

    v24 = type metadata accessor for StarRatingControl();
    v23[0] = v1;
    v10 = v1;
    v11 = String._bridgeToObjectiveC()();

    v12 = v24;
    if (v24)
    {
      v13 = sub_10002A400(v23, v24);
      v14 = *(v12 - 8);
      v15 = __chkstk_darwin(v13);
      v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v14 + 8))(v17, v12);
      sub_100007000(v23);
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v11 target:v18 selector:v7];

    swift_unknownObjectRelease();
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = v25;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_1005B5848(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v16 = OBJC_IVAR____TtC8AppStore17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v19._object = 0x800000010081BA30;
  v19._countAndFlagsBits = 0xD000000000000017;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = localizedString(_:comment:)(v19, v20);
  v22._countAndFlagsBits = 0xD00000000000001DLL;
  v22._object = 0x800000010081BA50;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = localizedString(_:comment:)(v22, v23);
  aBlock = v21;

  String.append(_:)(v24);

  v27 = aBlock;
  object = v27._object;
  countAndFlagsBits = v27._countAndFlagsBits;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v9 + 8);
  v34(v11, v8);
  v29 = swift_allocObject();
  *(v29 + 16) = __PAIR128__(object, countAndFlagsBits);
  v43 = sub_1005B5F74;
  v44 = v29;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v41 = sub_100007A08;
  v42 = &unk_1008C9F78;
  v30 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v31 = v35;
  v32 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v38 + 8))(v31, v32);
  (*(v36 + 8))(v7, v37);
  return (v34)(v15, v8);
}

void sub_1005B5CB0()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = String._bridgeToObjectiveC()();
  UIAccessibilityPostNotification(v0, v1);
}

id sub_1005B5F18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005B5F7C(char a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EA10 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_10098D728;
  v15.value._rawValue = 0;
  v7.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v15, v4).super.isa;
  sub_100005744(0, &qword_1009870A0, UIImageSymbolConfiguration_ptr);
  v8 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = static SystemImage.load(_:with:)();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_1005B616C(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_1005B4EAC(v2);
    v4 = OBJC_IVAR____TtC8AppStore17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_1005B632C(v0, &v6);
  if (!v7)
  {
    return 0xD00000000000003ALL;
  }

  sub_100005A38(&v6, v5);
  _StringGuts.grow(_:)(49);
  v1._object = 0x800000010081BB20;
  v1._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v1);
  sub_10002849C(&unk_100975858, &unk_1007D6F80);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0xD000000000000019;
  v2._object = 0x800000010081BB40;
  String.append(_:)(v2);
  v3 = 0;
  sub_100007000(v5);
  return v3;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  BaseObjectGraph.optional<A>(_:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_1005B66CC();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return Promise.__allocating_init(error:)();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = ActionDispatcher.targetQueue.getter();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_1000076C0();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_100005A38(&v18, v21);
    }

    else
    {
      v14 = type metadata accessor for SyncTaskScheduler();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_1000056E0(v21);
      SyncTaskScheduler.init()();
      if (*(&v19 + 1))
      {
        sub_10002B894(&v18, &qword_10098D780, &qword_1007D6F90);
      }
    }

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v15 = Promise.__allocating_init()();
    v16 = swift_allocObject();
    *(v16 + 16) = CompoundAction.actions.getter();
    *(v16 + 24) = 0;
    sub_10002A400(v21, v22);
    sub_10002C0AC(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_100005A38(&v18, (v17 + 5));

    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v7 + 8))(v9, v6);

    sub_100007000(v21);
    return v15;
  }
}

unint64_t sub_1005B66CC()
{
  result = qword_10098D778;
  if (!qword_10098D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D778);
  }

  return result;
}

void sub_1005B6720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(a1 + 24);
  if (v14 == v13)
  {
    swift_endAccess();
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    Promise.resolve(_:)();
    (*(v9 + 8))(v11, v8);
    return;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  *(a1 + 24) = v16;
  swift_endAccess();
  sub_1005D0214(v15, 1, a3);
  sub_10002C0AC(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_100005A38(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();
}

void sub_1005B6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ActionOutcome();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  (*(v13 + 16))(&v30 - v18, a1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  v21 = v20;
  if (v20 != enum case for ActionOutcome.performed(_:))
  {
    if (v20 == enum case for ActionOutcome.unsupported(_:))
    {
      sub_1005B66CC();
      swift_allocError();
      v26 = v25;
      v25[3] = type metadata accessor for Action();
      v26[4] = sub_1005B6ED8(&qword_100989C80, &type metadata accessor for Action);
      *v26 = a6;

      Promise.reject(_:)();

      return;
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *(a2 + 24);
  if (v24 == v23)
  {
    swift_endAccess();
    (*(v13 + 104))(v15, v21, v12);
    Promise.resolve(_:)();
    (*(v13 + 8))(v15, v12);
    return;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v28 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  v27 = *(v22 + 8 * v24 + 32);

  v28 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  *(a2 + 24) = v28;
  swift_endAccess();
  sub_1005D0214(v27, 1, a4);
  sub_10002C0AC(a5, v31);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  sub_100005A38(v31, (v29 + 5));
  v29[10] = v27;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();
}

uint64_t sub_1005B6DD0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1005B6DE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005B6E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1005B6E94(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1005B6ED8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1005B6F2C()
{

  sub_100007000((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

void sub_1005B6FA0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(_BYTE *, unint64_t), __n128 a8, double a9)
{
  v10 = v9;
  v118 = a7;
  v127 = a6;
  v99 = a5;
  v126 = a4;
  v120 = a3;
  v13 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v13 - 8);
  v112 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for AspectRatio();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v103 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = type metadata accessor for LockupMediaLayout.DisplayType();
  v119 = *(v19 - 8);
  __chkstk_darwin(v19);
  v122 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v110 = &v99 - v22;
  __chkstk_darwin(v23);
  v116 = &v99 - v24;
  __chkstk_darwin(v25);
  v123 = &v99 - v26;
  v27 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v27 - 8);
  v102 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v99 - v30;
  v106 = type metadata accessor for LockupMediaLayout.Metrics();
  v117 = *(v106 - 8);
  __chkstk_darwin(v106);
  v111 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v115 = &v99 - v34;
  __chkstk_darwin(v35);
  v108 = &v99 - v36;
  v37 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v125 = v37;
  v38 = *(v9 + v37);
  if (v38 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v113 = v10;
    v121 = v19;
    v105 = a1;
    v114 = v31;
    v40 = v130;
    v109 = v18;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v100 = a2;

      v41 = 0;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v42 = *&v38[8 * v41 + 32];
        }

        v43 = v42;
        ++v41;
        v128[0] = v42;
        type metadata accessor for BorderedScreenshotView(0);
        sub_1005B8B74(&qword_100973D78, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v44 = v43;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
        sub_10003D614(v129);
        v45 = *&v44[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
        v131.value.super.isa = 0;
        v131.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v131, v46);
      }

      while (i != v41);

      v10 = v113;
      a2 = v100;
      v19 = v121;
LABEL_11:
      v124 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        [*(Strong + qword_100988CC0) setImage:{0, v99}];
        v128[0] = v48;
        type metadata accessor for VideoView(0);
        sub_1005B8B74(&qword_100992450, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
        v49 = v48;
        v10 = v113;
        v50 = v49;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

        sub_10003D614(v129);
      }

      v51 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
      swift_beginAccess();
      v52 = v10;
      v53 = v117;
      v54 = *(v117 + 16);
      v55 = v108;
      i = v106;
      v54(v108, v52 + v51, v106);
      LockupMediaLayout.Metrics.boundingAspectRatio.getter();
      v56 = *(v53 + 8);
      v56(v55, i);
      v57 = v115;
      v54(v115, v52 + v51, i);
      v58 = v116;
      LockupMediaLayout.Metrics.displayType.getter();
      v117 = v53 + 8;
      v101 = v56;
      v56(v57, i);
      if (v120)
      {
        v59 = Screenshots.mediaPlatform.getter();
      }

      else
      {
        v59 = 0;
      }

      a1 = a2;
      v31 = v105;
      v38 = v119;
      v60 = v123;
      v9 = v58;
      sub_1001B70FC(v59, v118, v123);

      v61 = *(v38 + 1);
      v119 = v38 + 8;
      v118 = v61;
      v61(v58, v19);
      v129[3] = &type metadata for CGFloat;
      v129[4] = &protocol witness table for CGFloat;
      v129[0] = 0x4021000000000000;
      sub_10002C0AC(v129, v128);
      v62 = *(v38 + 2);
      v116 = v38 + 16;
      v115 = v62;
      (v62)(v110, v60, v19);
      v10 = v113;
      if (a2 | v31)
      {
        AspectRatio.init(_:_:)();
        goto LABEL_24;
      }

      v64 = sub_1001B9B24(v120, v126, 0, 1, v63);
      v37 = v122;
      if (v64 >> 62)
      {
        v96 = v64;
        v97 = _CocoaArrayWrapper.endIndex.getter();
        v64 = v96;
        v37 = v122;
        if (v97)
        {
          goto LABEL_19;
        }
      }

      else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        if ((v64 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      AspectRatio.init(_:_:)();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v38 = sub_100033938((v40 > 1), v126, 1, v38);
LABEL_27:

    v19 = v121;
LABEL_31:
    v101(v111, i);
    v118(v123, v19);
    sub_10002B894(v114, &unk_1009732A0, &unk_1007B4FE0);
    *(v38 + 2) = v126;
    v67 = &v38[16 * v37];
    *(v67 + 4) = v9;
    v67[40] = 0;
    if (a1 | v31)
    {
      break;
    }

LABEL_76:
    v19 = 0;
    v31 = (v38 + 40);
    v18 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    while (v19 < *(v38 + 2))
    {
      a2 = *(v31 - 8);
      a1 = *v31;
      v129[0] = _swiftEmptyArrayStorage;
      v83 = swift_unknownObjectWeakLoadStrong();

      if (v83)
      {
        v84 = v83;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v85 = *(v10 + v18);
      if (v85)
      {
        v86 = v85;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v87 = *(v10 + v125);
      if (v87 >> 62)
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);

        v88 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v88 = v87;
      }

      v9 = v129;
      sub_1003946F8(v88, v89);
      if (v129[0] >> 62)
      {
        v9 = v129[0];
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 < v37)
      {
        v90 = sub_1001B79D8();
        v9 = v90;
        if ((v90 & 0xC000000000000001) != 0)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v91 = *(v90 + 8 * v19 + 32);
        }

        v92 = v91;

        v128[0] = v92;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        sub_100081618();
        AnyHashable.init<A>(_:)();
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = swift_allocObject();
        *(v93 + 16) = v37;
        *(v93 + 24) = a1;
        *(v93 + 32) = v19;

        v9 = v127;
        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v129, &qword_10096FB90, &qword_1007B2A50);
      }

      ++v19;
      v31 += 16;
      if (v126 == v19)
      {
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v38 + 4);

    v68 = sub_1001B79D8();
    if (v68 >> 62)
    {
      v94 = v68;
      v95 = _CocoaArrayWrapper.endIndex.getter();
      v68 = v94;
      if (!v95)
      {
LABEL_107:

        v70 = 0;
        goto LABEL_108;
      }
    }

    else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_37;
    }

    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 32);
LABEL_37:
      v70 = v69;

LABEL_108:
      v128[0] = v70;
      sub_10002849C(&qword_100980960, &unk_1007D70E0);
      sub_1005B8BCC();
      AnyHashable.init<A>(_:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v129, &qword_10096FB90, &qword_1007B2A50);

      return;
    }

    __break(1u);
LABEL_113:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:

    Artwork.size.getter();
    AspectRatio.init(_:_:)();

LABEL_24:
    v37 = v122;
LABEL_25:
    a2 = v102;
    sub_100031660(v114, v102, &unk_1009732A0, &unk_1007B4FE0);
    LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
    sub_100007000(v129);
    v66 = v103;
    LockupMediaLayout.Metrics.mediaAspectRatio.getter();
    AspectRatio.height(fromWidth:)();
    (*(v104 + 8))(v66, v107);
    if (a1)
    {

      Video.preview.getter();
      v9 = Artwork.config(_:mode:prefersLayeredImage:)();
      v38 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v38 + 2);
      v40 = *(v38 + 3);
      v126 = (v37 + 1);
      if (v37 >= v40 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v31)
    {

      v9 = Artwork.config(_:mode:prefersLayeredImage:)();
      v38 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v38 + 2);
      v65 = *(v38 + 3);
      v126 = (v37 + 1);
      if (v37 < v65 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v38 = sub_100033938((v65 > 1), v126, 1, v38);
      goto LABEL_30;
    }

    v71 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v9 = sub_1001B9B24(v120, v126, v71, 0, v72);
    static LockupMediaLayout.mediaSize(using:fitting:with:)();
    v73 = v9;
    if (v9 >> 62)
    {
      v98 = _CocoaArrayWrapper.endIndex.getter();
      v73 = v9;
      i = v98;
    }

    else
    {
      i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = 0;
    if (i)
    {
      break;
    }

    v38 = _swiftEmptyArrayStorage;
LABEL_74:

    v101(v111, v106);
    v118(v123, v19);
    sub_10002B894(v114, &unk_1009732A0, &unk_1007B4FE0);
    v126 = *(v38 + 2);
    if (!v126)
    {
LABEL_99:

      return;
    }

    a1 = v100;
    v31 = v105;
    if (!(v100 | v105))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v110 = (v73 & 0xC000000000000001);
    v109 = (v38 + 88);
    LODWORD(v108) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v104) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v38 = _swiftEmptyArrayStorage;
    v107 = v73;
    while (1)
    {
      if (v110)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v73 + 8 * a2 + 32);
      }

      (v115)(v37, v123, v19);
      v74 = (*v109)(v37, v19);
      if (v74 == v108)
      {
        break;
      }

      if (v74 == v104)
      {
        goto LABEL_49;
      }

      v18 = dispatch thunk of Artwork.isLandscape.getter();
      v118(v37, v19);
LABEL_51:
      if (!v126)
      {
        goto LABEL_62;
      }

      v9 = v126;
      v75 = Trailers.videos.getter();
      if (v75 >> 62)
      {
        v37 = v75;
        v77 = _CocoaArrayWrapper.endIndex.getter();
        v75 = v37;
        if (!v77)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      if ((v75 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }
      }

      type metadata accessor for Artwork();
      a1 = Video.preview.getter();
      v76 = static Artwork.== infix(_:_:)();

      if ((v76 & 1) == 0)
      {

LABEL_62:
        if (v120)
        {
          v78 = Screenshots.mediaPlatform.getter();
        }

        else
        {
          v78 = 0;
        }

        type metadata accessor for Screenshots();
        a1 = v112;
        sub_10061B788(v78, v112);

        CGSize.subtracting(insets:)();
        v9 = Artwork.config(_:mode:prefersLayeredImage:)();
        sub_1001BABC8(a1, v79);
        goto LABEL_66;
      }

      v9 = Artwork.config(_:mode:prefersLayeredImage:)();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100033938(0, *(v38 + 2) + 1, 1, v38);
      }

      v81 = *(v38 + 2);
      v80 = *(v38 + 3);
      if (v81 >= v80 >> 1)
      {
        v38 = sub_100033938((v80 > 1), v81 + 1, 1, v38);
      }

      ++a2;

      *(v38 + 2) = v81 + 1;
      v82 = &v38[16 * v81];
      *(v82 + 4) = v9;
      v82[40] = v18 & 1;
      v19 = v121;
      v37 = v122;
      v73 = v107;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v118(v37, v19);
LABEL_49:
    v18 = 0;
    goto LABEL_51;
  }

  __break(1u);
}

void sub_1005B8470(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (!a1)
    {
LABEL_16:

      return;
    }

    v8 = *(Strong + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    v9 = a1;
    if (v8)
    {
      v10 = v8;
      v21.value.super.isa = a1;
      v21.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v21, v11);
    }

    v12 = sub_1001B79D8();
    if (v12 >> 62)
    {
      v19 = v12;
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v19;
      if (v20)
      {
        goto LABEL_7;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;

      type metadata accessor for VideoView(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = qword_100988CC0;
        v17 = v15;
        v18 = [*(v15 + qword_100988CC0) layer];
        [v18 removeAllAnimations];

        [*(v17 + v16) setImage:a1];
      }

      goto LABEL_15;
    }

LABEL_15:
    [v7 setNeedsLayout];

    v7 = a1;
    goto LABEL_16;
  }
}

void sub_1005B8624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      v13 = v12;
      if (a6)
      {
        v14 = [v12 CGImage];
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14;
        [v13 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];
      }

      else
      {
        v17 = v12;
      }

      sub_1001BAC24(v17, a7);

      v11 = v17;
    }
  }
}

unint64_t sub_1005B8730(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v35 = a7;
  v36 = a6;
  v34 = a5;
  v31 = a4;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  v12 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v12 - 8);
  v33 = &v30 - v13;
  v14 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LockupMediaLayout.DisplayType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  v32 = type metadata accessor for LockupMediaLayout.Metrics();
  v22 = *(v32 - 8);
  __chkstk_darwin(v32);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = &type metadata for CGFloat;
  v39[4] = &protocol witness table for CGFloat;
  v39[0] = 0x4021000000000000;
  if (a3)
  {
    v25 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v25 = 0;
  }

  sub_1001B70FC(v25, a8, v21);

  sub_10002C0AC(v39, v38);
  (*(v16 + 16))(v18, v21, v15);
  if (v37 != 0)
  {
    goto LABEL_14;
  }

  result = sub_1001B9B24(a3, v31, 0, 1, v26);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v28 = result;
  v29 = _CocoaArrayWrapper.endIndex.getter();
  result = v28;
  if (!v29)
  {
LABEL_13:

LABEL_14:
    AspectRatio.init(_:_:)();
    goto LABEL_15;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_10:

    Artwork.size.getter();
    AspectRatio.init(_:_:)();

LABEL_15:
    sub_100031660(v34, v33, &unk_1009732A0, &unk_1007B4FE0);
    LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
    (*(v16 + 8))(v21, v15);
    sub_100007000(v39);
    type metadata accessor for LockupMediaLayout();
    sub_1005B8B74(&qword_10097AE60, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
    dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
    return (*(v22 + 8))(v24, v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005B8B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005B8BCC()
{
  result = qword_10098D790;
  if (!qword_10098D790)
  {
    sub_10002D1A8(&qword_100980960, &unk_1007D70E0);
    sub_100081618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D790);
  }

  return result;
}

unint64_t sub_1005B8C58(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, char a19)
{
  v235 = a8;
  v242 = a7;
  v245 = a5;
  v246 = a6;
  v238 = a4;
  v243 = a3;
  v249 = a2;
  v20 = sub_10002849C(&qword_10097AE68, &qword_1007C2A38);
  __chkstk_darwin(v20 - 8);
  v214 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v225 = &v202 - v23;
  v208 = type metadata accessor for CornerStyle();
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v206 = &v202 - v26;
  v27 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v27 - 8);
  v204 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v29 - 8);
  v233 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v234 = &v202 - v32;
  v33 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v33 - 8);
  v232 = &v202 - v34;
  v35 = type metadata accessor for VideoControls();
  __chkstk_darwin(v35 - 8);
  v213 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v220 = &v202 - v38;
  __chkstk_darwin(v39);
  v229 = &v202 - v40;
  __chkstk_darwin(v41);
  v228 = &v202 - v42;
  v231 = type metadata accessor for VideoFillMode();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v219 = &v202 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v227 = &v202 - v45;
  v237 = type metadata accessor for VideoConfiguration();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v221 = &v202 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v247 = &v202 - v48;
  v241 = type metadata accessor for ScreenshotsDisplayStyle();
  v49 = *(v241 - 8);
  __chkstk_darwin(v241);
  v51 = &v202 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v203 = &v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v202 - v54;
  v56 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v56 - 8);
  v218 = &v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v202 - v59;
  v240 = type metadata accessor for AspectRatio();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v217 = &v202 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v63 = type metadata accessor for LockupMediaLayout.DisplayType();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v209 = &v202 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v215 = &v202 - v67;
  __chkstk_darwin(v68);
  v70 = &v202 - v69;
  v244 = type metadata accessor for LockupMediaLayout.Metrics();
  v248 = *(v244 - 8);
  __chkstk_darwin(v244);
  v216 = &v202 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v74 = &v202 - v73;
  v253 = &type metadata for CGFloat;
  v254 = &protocol witness table for CGFloat;
  v252 = 0x4021000000000000;
  sub_10002C0AC(&v252, v251);
  v210 = v64;
  v76 = *(v64 + 16);
  v75 = (v64 + 16);
  v224 = v63;
  v223 = v75;
  v222 = v76;
  v76(v70, v246, v63);
  v226 = a1;
  if (v249 | a1)
  {
    v78 = v243;
LABEL_11:
    AspectRatio.init(_:_:)();
    goto LABEL_12;
  }

  v78 = v243;
  result = sub_1001B9B24(v243, v238, 0, 1, v77);
  if (result >> 62)
  {
    v80 = result;
    v81 = _CocoaArrayWrapper.endIndex.getter();
    result = v80;
    if (v81)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  Artwork.size.getter();
  AspectRatio.init(_:_:)();

LABEL_12:
  sub_100031660(v245, v60, &unk_1009732A0, &unk_1007B4FE0);
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(&v252);
  v82 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  v83 = v250;
  swift_beginAccess();
  v84 = v248;
  v85 = &v83[v82];
  v86 = v244;
  (*(v248 + 24))(v85, v74, v244);
  swift_endAccess();
  [v83 setNeedsLayout];
  v87 = *(v84 + 8);
  v87(v74, v86);
  v248 = v84 + 8;
  if (v78)
  {
    v88 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v88 = 0;
  }

  type metadata accessor for Screenshots();
  sub_10061B788(v88, v55);

  v89 = &v250[OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration];
  swift_beginAccess();
  sub_1001BAB64(v55, v89, v90);
  swift_endAccess();
  sub_1001B7B88(v91);
  sub_1001BABC8(v55, v92);
  if (v78)
  {
    v93 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v93 = 0;
  }

  v94 = v241;
  v55 = v250;
  *&v250[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v93;

  sub_1001B7D8C(v95);

  (*(v49 + 16))(v51, v242, v94);
  v96 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v49 + 24))(&v55[v96], v51, v94);
  swift_endAccess();
  [v55 setNeedsLayout];
  (*(v49 + 8))(v51, v94);
  if (v249)
  {
    (*(v230 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v231);

    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    (*(v239 + 56))(v60, 0, 1, v240);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v97 = v232;
    Video.videoUrl.getter();
    v98 = type metadata accessor for URL();
    (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    v99 = v234;
    Video.templateMediaEvent.getter();
    v100 = v233;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v101 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v100, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v99, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v97, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(&v252, &qword_10096FB90, &qword_1007B2A50);
    Strong = swift_unknownObjectWeakLoadStrong();
    v75 = &StringUserDefaultsDebugSetting;
    if (Strong)
    {
      v103 = Strong;
      v104 = [Strong superview];
      if (v104)
      {
        v105 = v104;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v106 = v55;
        v107 = static NSObject.== infix(_:_:)();

        if ((v107 & 1) == 0)
        {
          goto LABEL_25;
        }

        v108 = swift_unknownObjectWeakLoadStrong();
        if (!v108)
        {
          goto LABEL_25;
        }

        v103 = v108;
        [v108 removeFromSuperview];
      }
    }

LABEL_25:
    swift_unknownObjectWeakAssign();
    v109 = swift_unknownObjectWeakLoadStrong();
    if (v109)
    {
      v111 = v109;
      [v55 addSubview:v109];
    }

    sub_1001B8790(v110);
    [v55 setNeedsLayout];

    v112 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v113 = *&v55[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v114 = v237;
    v115 = v236;
    if (v113)
    {
      [v113 removeFromSuperview];
      v116 = *&v55[v112];
    }

    else
    {
      v116 = 0;
    }

    *&v55[v112] = 0;

    [v55 setNeedsLayout];

    (*(v115 + 8))(v247, v114);
    return [v55 v75[41].base_meths];
  }

  if (v226 && (a19 & 1) == 0)
  {
    swift_retain_n();
    v124 = [v55 traitCollection];
    v254 = &protocol witness table for CGFloat;
    v253 = &type metadata for CGFloat;
    v252 = 0x4021000000000000;
    sub_10002C0AC(&v252, v251);
    v222(v215, v246, v224);
    v125 = v217;
    AspectRatio.init(_:_:)();
    sub_100031660(v245, v60, &unk_1009732A0, &unk_1007B4FE0);
    v126 = v216;
    LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
    sub_100007000(&v252);
    LockupMediaLayout.Metrics.mediaAspectRatio.getter();
    AspectRatio.height(fromWidth:)();
    (*(v239 + 8))(v125, v240);

    v127 = Artwork.config(_:mode:prefersLayeredImage:)();
    v128 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
    v130 = *(v128 + 2);
    v129 = *(v128 + 3);
    if (v130 >= v129 >> 1)
    {
      v128 = sub_100033938((v129 > 1), v130 + 1, 1, v128);
    }

    v87(v126, v244);
    *(v128 + 2) = v130 + 1;
    v131 = &v128[16 * v130 + 32];
    *v131 = v127;
    *(v131 + 8) = 0;
    v132 = *(v128 + 4);

    v133 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v75 = &StringUserDefaultsDebugSetting;
    if (v132)
    {

      Artwork.style.getter();
      ArtworkView.style.setter();
      [v133 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      [v133 setContentMode:2];
      v134 = v133;
      dispatch thunk of RoundedCornerView.borderWidth.setter();
      v135 = *(v89 + 48);
      dispatch thunk of RoundedCornerView.borderColor.setter();

      v136 = v203;
      sub_1001BAB00(v89, v203, v137);
      v138 = *(v136 + 16);
      sub_1001BABC8(v136, v139);
      v140 = v207;
      v141 = &enum case for CornerStyle.arc(_:);
      if (!v138)
      {
        v141 = &enum case for CornerStyle.continuous(_:);
      }

      v142 = v205;
      v143 = v208;
      (*(v207 + 104))(v205, *v141, v208);
      v144 = v206;
      (*(v140 + 32))(v206, v142, v143);
      ArtworkView.setCorner(radius:style:)();

      (*(v140 + 8))(v144, v143);
    }

    v145 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v146 = *&v55[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v147 = v133;
    if (v146)
    {
      [v146 removeFromSuperview];
      v146 = *&v55[v145];
    }

    *&v55[v145] = v133;
    v174 = v133;

    [v55 addSubview:v174];
    [v55 setNeedsLayout];

    v175 = swift_unknownObjectWeakLoadStrong();
    if (!v175)
    {
      goto LABEL_71;
    }

    v176 = v175;
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v177 = [v176 superview];
    if (v177)
    {
      v178 = v177;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v179 = v55;
      v180 = static NSObject.== infix(_:_:)();

      if ((v180 & 1) == 0)
      {
        goto LABEL_71;
      }

      v181 = swift_unknownObjectWeakLoadStrong();
      if (!v181)
      {
        goto LABEL_71;
      }

      v176 = v181;
      [v181 removeFromSuperview];
    }

LABEL_71:
    swift_unknownObjectWeakAssign();
    v182 = swift_unknownObjectWeakLoadStrong();
    if (v182)
    {
      v184 = v182;
      [v55 addSubview:v182];
    }

    sub_1001B8790(v183);
    [v55 setNeedsLayout];

    return [v55 v75[41].base_meths];
  }

  v75 = &StringUserDefaultsDebugSetting;
  if (!v238)
  {
    goto LABEL_80;
  }

  result = Trailers.videos.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v187 = result;
  v188 = _CocoaArrayWrapper.endIndex.getter();
  result = v187;
  if (!v188)
  {
LABEL_79:

LABEL_80:
    v189 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v190 = *&v55[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    if (v190)
    {
      [v190 removeFromSuperview];
      v191 = *&v55[v189];
    }

    else
    {
      v191 = 0;
    }

    *&v55[v189] = 0;

    [v55 v75[41].base_meths];
    v192 = swift_unknownObjectWeakLoadStrong();
    if (!v192)
    {
      goto LABEL_89;
    }

    v193 = v192;
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v194 = [v193 superview];
    if (v194)
    {
      v195 = v194;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v196 = v55;
      v197 = static NSObject.== infix(_:_:)();

      if ((v197 & 1) == 0)
      {
        goto LABEL_89;
      }

      v198 = swift_unknownObjectWeakLoadStrong();
      if (!v198)
      {
        goto LABEL_89;
      }

      v193 = v198;
      [v198 removeFromSuperview];
    }

LABEL_89:
    swift_unknownObjectWeakAssign();
    v199 = swift_unknownObjectWeakLoadStrong();
    if (v199)
    {
      v201 = v199;
      [v55 addSubview:v199];
    }

    sub_1001B8790(v200);
    [v55 v75[41].base_meths];
    return [v55 v75[41].base_meths];
  }

LABEL_34:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_37:

    v117 = v209;
    v118 = v224;
    v222(v209, v246, v224);
    v119 = v210;
    v120 = (*(v210 + 88))(v117, v118);
    v121 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v119 + 8))(v117, v118);
    if (v120 == v121)
    {
      v122 = 1;
      v123 = v225;
    }

    else
    {
      v148 = Trailers.mediaPlatform.getter();
      v123 = v225;
      sub_10061B788(v148, v225);

      v122 = 0;
    }

    v149 = v211;
    v150 = v212;
    (*(v211 + 56))(v123, v122, 1, v212);
    (*(v230 + 104))(v219, enum case for VideoFillMode.scaleAspectFill(_:), v231);
    Video.preview.getter();
    Artwork.size.getter();
    v151 = v218;
    AspectRatio.init(_:_:)();

    (*(v239 + 56))(v151, 0, 1, v240);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    LODWORD(v249) = Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    v152 = v214;
    sub_100031660(v123, v214, &qword_10097AE68, &qword_1007C2A38);
    if ((*(v149 + 48))(v152, 1, v150) == 1)
    {
      sub_10002B894(v152, &qword_10097AE68, &qword_1007C2A38);
    }

    else
    {
      sub_1001BABC8(v152, v153);
    }

    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v154 = v252;
    Video.playbackId.getter();
    v155 = v232;
    Video.videoUrl.getter();
    v156 = type metadata accessor for URL();
    (*(*(v156 - 8) + 56))(v155, 0, 1, v156);
    v157 = v234;
    Video.templateMediaEvent.getter();
    v158 = v233;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v249 = v154;
    v159 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v158, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v157, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v155, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(&v252, &qword_10096FB90, &qword_1007B2A50);
    v160 = swift_unknownObjectWeakLoadStrong();
    v161 = v225;
    if (!v160)
    {
      goto LABEL_61;
    }

    v162 = v160;
    v163 = [v160 superview];
    if (v163)
    {
      v164 = v163;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v165 = v55;
      v166 = static NSObject.== infix(_:_:)();

      v161 = v225;
      if ((v166 & 1) == 0)
      {
        goto LABEL_61;
      }

      v167 = swift_unknownObjectWeakLoadStrong();
      if (!v167)
      {
        goto LABEL_61;
      }

      v162 = v167;
      [v167 removeFromSuperview];
    }

LABEL_61:
    swift_unknownObjectWeakAssign();
    v168 = swift_unknownObjectWeakLoadStrong();
    if (v168)
    {
      v170 = v168;
      [v55 addSubview:v168];
    }

    sub_1001B8790(v169);
    [v55 v75[41].base_meths];

    v171 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v172 = *&v55[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    if (v172)
    {
      [v172 removeFromSuperview];
      v173 = *&v55[v171];
    }

    else
    {
      v173 = 0;
    }

    v185 = v237;
    v186 = v236;
    *&v55[v171] = 0;

    [v55 v75[41].base_meths];

    (*(v186 + 8))(v221, v185);
    sub_10002B894(v161, &qword_10097AE68, &qword_1007C2A38);
    return [v55 v75[41].base_meths];
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005BA920(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1005BA968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005BAAC8()
{
  v0 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_100005644(v0, qword_1009D2B70);
  sub_1000056A8(v0, qword_1009D2B70);
  return static CondensedSearchResultCardLayout.Metrics.appEvent.getter();
}

uint64_t sub_1005BAB14()
{
  v0 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_100005644(v0, qword_1009D2B88);
  v1 = sub_1000056A8(v0, qword_1009D2B88);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_1005BAB9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for CornerStyle();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v12 - 8);
  v73 = &v67 - v13;
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v72 = &v67 - v15;
  v16 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v17] = DynamicTypeLabel.__allocating_init(frame:)();
  v18 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView;
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_1000056A8(v20, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v78.receiver = v5;
  v78.super_class = v25;
  v26 = objc_msgSendSuper2(&v78, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v69 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel]];
  v71 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView]];
  v70 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton]];
  v32 = qword_10096EA20;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v34, qword_1009D2B88);
  v35 = v72;
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  v36 = type metadata accessor for FontUseCase();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v67 = v36;
  v68 = v38;
  v38(v35, 0, 1, v36);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v39 = v30;
  v40 = [v39 traitCollection];
  [*&v30[v31] setNumberOfLines:CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v40)];

  v41 = v69;
  v42 = *&v30[v69];
  v43 = v42[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  v42[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 7;
  v44 = v42;
  sub_1002C3F30(v43);

  *(*&v30[v41] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008CA208;
  swift_unknownObjectWeakAssign();

  v45 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v46 = v67;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v67);
  v68(v35, 0, 1, v46);
  v47 = v45;
  v48 = UIFontTextStyleSubheadline;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v49 = v70;
  v50 = *&v30[v70];
  v51 = v50;
  v52 = [v39 traitCollection];
  v53 = v73;
  v54 = ObjectType;
  sub_1001AEEC8(v50, v73);

  v55 = type metadata accessor for UIButton.Configuration();
  (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
  UIButton.configuration.setter();

  v56 = sub_1001AF164();
  sub_100161AFC(v56, v57);

  [*&v30[v49] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v58 = *&v30[v71];
  v60 = v74;
  v59 = v75;
  v61 = v76;
  (*(v75 + 104))(v74, enum case for CornerStyle.continuous(_:), v76);
  v62 = v58;
  ArtworkView.setCorner(radius:style:)();

  (*(v59 + 8))(v60, v61);
  v63 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v64 = *&v39[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v64 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v63]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1007B10D0;
  *(v65 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v65 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v54;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v39;
}

id sub_1005BB378(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001AF164();
  sub_1001AF188(v5, v6, a3, &off_1008CA218);

  v7 = [a1 traitCollection];
  v8 = *&a1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
  if (qword_10096EA20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v9, qword_1009D2B88);
  [v8 setNumberOfLines:CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v7)];

  return [a1 setNeedsLayout];
}

id sub_1005BB4CC()
{
  [*&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  [*&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton] removeTarget:v0 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005BB668()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100976848, &qword_1007BB2B0);
  v120 = *(v2 - 8);
  v121 = v2;
  __chkstk_darwin(v2);
  v119 = &v87 - v3;
  v4 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedSearchResultCardLayout();
  v117 = *(v8 - 8);
  *&v118 = v8;
  __chkstk_darwin(v8);
  v116 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LayoutRect();
  v104 = *(v10 - 8);
  v105 = v10;
  __chkstk_darwin(v10);
  v103 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v125 = *(v123 - 8);
  __chkstk_darwin(v123);
  v100 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v126 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v124 = *(v122 - 8);
  __chkstk_darwin(v122);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for VerticalFlowLayout();
  v16 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CondensedAppEventCardView();
  v145.receiver = v0;
  v145.super_class = v18;
  objc_msgSendSuper2(&v145, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v19 = *&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
  sub_1002C65CC(v142);
  sub_1002C97E0();
  v21 = v20;
  v23 = v22;
  sub_1001A927C(v142);
  [v19 setFrame:{0.0, 0.0, v21, v23}];
  v24 = [v0 traitCollection];
  v25 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v25)
  {
    v92 = v16;
    if (qword_10096EA18 != -1)
    {
      swift_once();
    }

    v26 = sub_1000056A8(v4, qword_1009D2B70);
    v27 = type metadata accessor for AppPromotionFormattedDateView();
    v144 = &protocol witness table for UIView;
    v143 = v27;
    v142[0] = v19;
    v28 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v29 = type metadata accessor for DynamicTypeLabel();
    v141 = &protocol witness table for UILabel;
    v140 = v29;
    v139[0] = v28;
    v30 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v31 = sub_1000AE6D8();
    v138 = &protocol witness table for UIView;
    v137 = v31;
    v136 = v30;
    v32 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v134 = type metadata accessor for ArtworkView();
    v135 = &protocol witness table for UIView;
    v133 = v32;
    sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
    v33 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v96 = *(v33 + 72);
    v34 = *(v33 + 80);
    v91 = v1;
    v35 = (v34 + 32) & ~v34;
    v36 = swift_allocObject();
    v90 = v36;
    *(v36 + 16) = xmmword_1007B5350;
    v121 = v36 + v35;
    v37 = v19;
    v38 = v28;
    v39 = v30;
    v40 = v32;
    CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
    v94 = v26;
    CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
    v89 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v41 = v124;
    v95 = *(v124 + 104);
    v97 = v124 + 104;
    v42 = v15;
    v95(v15);
    v43 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
    v44 = *(v126 + 72);
    v106 = *(v126 + 80);
    v93 = (v106 + 32) & ~v106;
    v119 = v44;
    v120 = 3 * v44;
    v107 = 2 * v44;
    v108 = v43;
    v45 = swift_allocObject();
    v118 = xmmword_1007B1E00;
    *(v45 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v128[0] = v45;
    v116 = sub_1005BEFC0(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v115 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
    v117 = sub_1000364CC();
    v47 = v98;
    v46 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v114 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v48 = v125;
    v49 = *(v125 + 104);
    v112 = v125 + 104;
    v113 = v49;
    v50 = v100;
    v51 = v123;
    v49(v100);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v52 = *(v48 + 8);
    v125 = v48 + 8;
    v111 = v52;
    v52(v50, v51);
    v53 = *(v126 + 8);
    v126 += 8;
    v110 = v53;
    v53(v47, v46);
    v54 = *(v41 + 8);
    v124 = v41 + 8;
    v109 = v54;
    v55 = v122;
    v54(v42, v122);
    sub_100036530(v129);
    sub_100007000(v130);
    CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
    memset(v129, 0, 40);
    v88 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v56 = v95;
    v95(v42);
    v57 = swift_allocObject();
    *(v57 + 16) = v118;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v128[0] = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v123;
    v113(v50, v114, v123);
    v59 = v96;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v111(v50, v58);
    v110(v47, v46);
    v109(v42, v55);
    sub_100036530(v129);
    sub_100007000(v130);
    v87 = 2 * v59;
    v60 = v140;
    v61 = v141;
    v62 = sub_10002A400(v139, v140);
    v131 = v60;
    v132 = v61[1];
    v63 = sub_1000056E0(v130);
    (*(*(v60 - 8) + 16))(v63, v62, v60);
    CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
    CondensedSearchResultCardLayout.Metrics.titleTextBottomMargin.getter();
    (v56)(v42, v88, v55);
    v64 = swift_allocObject();
    *(v64 + 16) = v118;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v127 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = v123;
    v113(v50, v114, v123);
    v66 = v87;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v111(v50, v65);
    v110(v47, v46);
    v67 = v122;
    v109(v42, v122);
    sub_100036530(v128);
    sub_100007000(v129);
    sub_100007000(v130);
    v96 += v66;
    v131 = &type metadata for Double;
    v132 = &protocol witness table for Double;
    v130[0] = 0x4030000000000000;
    CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
    (v95)(v42, v89, v67);
    v68 = swift_allocObject();
    *(v68 + 16) = v118;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v128[0] = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v69 = v123;
    v113(v50, v114, v123);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v111(v50, v69);
    v110(v47, v46);
    v109(v42, v67);
    sub_100036530(v129);
    sub_100007000(v130);
    v70 = v101;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    sub_100007000(&v133);
    sub_100007000(&v136);
    sub_100007000(v139);
    sub_100007000(v142);
    v72 = v102;
    v71 = v103;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v104 + 8))(v71, v105);
    return (*(v92 + 8))(v70, v72);
  }

  else
  {
    if (qword_10096EA18 != -1)
    {
      swift_once();
    }

    v74 = sub_1000056A8(v4, qword_1009D2B70);
    (*(v5 + 16))(v7, v74, v4);
    v75 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v143 = type metadata accessor for ArtworkView();
    v144 = sub_1005BEFC0(&qword_100989780, &type metadata accessor for ArtworkView, "]o\r");
    v142[0] = v75;
    v130[0] = v19;
    type metadata accessor for AppPromotionFormattedDateView();
    v76 = v75;
    Measurable.placeable.getter();
    v77 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v78 = type metadata accessor for DynamicTypeLabel();
    v138 = &protocol witness table for UILabel;
    v137 = v78;
    v136 = v77;
    v79 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v134 = sub_1000AE6D8();
    v135 = &protocol witness table for UIButton;
    v133 = v79;
    v80 = v77;
    v81 = v79;
    v82 = v116;
    CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
    v83 = [v1 traitCollection];
    sub_1005BEFC0(&qword_100976850, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v84 = v119;
    v85 = v118;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v86 = v121;
    dispatch thunk of Placeable.place(at:with:)();

    (*(v120 + 8))(v84, v86);
    return (*(v117 + 8))(v82, v85);
  }
}

double sub_1005BC728(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v116 = sub_10002849C(&qword_100976848, &qword_1007BB2B0);
  v111 = *(v116 - 8);
  __chkstk_darwin(v116);
  v6 = &v82 - v5;
  v110 = type metadata accessor for CondensedSearchResultCardLayout();
  v7 = *(v110 - 8);
  __chkstk_darwin(v110);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v93 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v120 = *(v92 - 8);
  __chkstk_darwin(v92);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v118 = *(v114 - 8);
  __chkstk_darwin(v114);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v112 = *(v15 - 8);
  v113 = v15;
  __chkstk_darwin(v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VerticalFlowLayout();
  v95 = *(v18 - 8);
  v96 = v18;
  __chkstk_darwin(v18);
  v94 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    static CondensedSearchResultCardLayout.Metrics.appEvent.getter();
    v20 = *&v3[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
    v137 = type metadata accessor for AppPromotionFormattedDateView();
    v138 = &protocol witness table for UIView;
    v136 = v20;
    v21 = *&v3[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v134 = type metadata accessor for DynamicTypeLabel();
    v135 = &protocol witness table for UILabel;
    v133[0] = v21;
    v22 = *&v3[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v131 = sub_1000AE6D8();
    v132 = &protocol witness table for UIView;
    v130 = v22;
    v23 = *&v3[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v128 = type metadata accessor for ArtworkView();
    v129 = &protocol witness table for UIView;
    v127 = v23;
    sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
    v24 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v90 = *(v24 + 72);
    v25 = *(v24 + 80);
    v88 = v3;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    v87 = v27;
    *(v27 + 16) = xmmword_1007B5350;
    v116 = v27 + v26;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v115 = v17;
    CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
    CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
    v86 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v32 = v118;
    v33 = *(v118 + 104);
    v89 = v118 + 104;
    v97 = v33;
    v33(v14);
    v91 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
    v34 = *(v120 + 72);
    v35 = *(v120 + 80);
    v36 = (v35 + 32) & ~v35;
    v110 = 3 * v34;
    v111 = v35;
    v108 = v34;
    v109 = 2 * v34;
    v37 = swift_allocObject();
    v107 = xmmword_1007B1E00;
    *(v37 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v122[0] = v37;
    v106 = sub_1005BEFC0(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v105 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
    v99 = sub_1000364CC();
    v38 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v104 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v39 = v119;
    v40 = *(v119 + 104);
    v102 = v119 + 104;
    v103 = v40;
    v41 = v93;
    v42 = v117;
    v40(v93);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v98 = *(v39 + 8);
    v119 = v39 + 8;
    v98(v41, v42);
    v43 = *(v120 + 8);
    v120 += 8;
    v101 = v43;
    v43(v12, v38);
    v44 = *(v32 + 8);
    v118 = v32 + 8;
    v100 = v44;
    v45 = v114;
    v44(v14, v114);
    sub_100036530(v123);
    sub_100007000(v124);
    CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
    memset(v123, 0, 40);
    v85 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v97(v14);
    v84 = v36;
    v46 = swift_allocObject();
    *(v46 + 16) = v107;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v122[0] = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v117;
    v103(v41, v104, v117);
    v48 = v90;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v98(v41, v47);
    v101(v12, v38);
    v100(v14, v45);
    sub_100036530(v123);
    sub_100007000(v124);
    v83 = 2 * v48;
    v49 = v134;
    v50 = v135;
    v51 = sub_10002A400(v133, v134);
    v125 = v49;
    v126 = v50[1];
    v52 = sub_1000056E0(v124);
    (*(*(v49 - 8) + 16))(v52, v51, v49);
    CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
    CondensedSearchResultCardLayout.Metrics.titleTextBottomMargin.getter();
    v53 = v45;
    (v97)(v14, v85, v45);
    v54 = swift_allocObject();
    *(v54 + 16) = v107;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v121 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v117;
    v103(v41, v104, v117);
    v56 = v83;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v98(v41, v55);
    v101(v12, v38);
    v100(v14, v53);
    sub_100036530(v122);
    sub_100007000(v123);
    sub_100007000(v124);
    v90 += v56;
    v125 = &type metadata for Double;
    v126 = &protocol witness table for Double;
    v124[0] = 0x4030000000000000;
    CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
    (v97)(v14, v86, v53);
    v57 = swift_allocObject();
    *(v57 + 16) = v107;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v122[0] = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v117;
    v103(v41, v104, v117);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v98(v41, v58);
    v101(v12, v38);
    v100(v14, v53);
    sub_100036530(v123);
    sub_100007000(v124);
    v59 = v94;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    (*(v112 + 8))(v115, v113);
    sub_100007000(&v127);
    sub_100007000(&v130);
    sub_100007000(v133);
    sub_100007000(&v136);
    v60 = [v88 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1007B0B70;
    *(v61 + 32) = v60;
    v62 = v60;
    v63 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v64 = v96;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v66 = v65;

    (*(v95 + 8))(v59, v64);
  }

  else
  {
    v68 = v112;
    v67 = v113;
    if (qword_10096EA18 != -1)
    {
      swift_once();
    }

    v69 = sub_1000056A8(v67, qword_1009D2B70);
    (*(v68 + 16))(v17, v69, v67);
    v70 = *&v4[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v137 = type metadata accessor for ArtworkView();
    v138 = sub_1005BEFC0(&qword_100989780, &type metadata accessor for ArtworkView, "]o\r");
    v136 = v70;
    v71 = *&v4[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
    v134 = type metadata accessor for AppPromotionFormattedDateView();
    v135 = sub_1005BEFC0(&qword_10098D848, type metadata accessor for AppPromotionFormattedDateView, &unk_1007C5C1C);
    v133[0] = v71;
    v72 = *&v4[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v131 = type metadata accessor for DynamicTypeLabel();
    v132 = &protocol witness table for UILabel;
    v130 = v72;
    v73 = *&v4[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v128 = sub_1000AE6D8();
    v129 = &protocol witness table for UIButton;
    v127 = v73;
    v74 = v70;
    v75 = v71;
    v76 = v72;
    v77 = v73;
    CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
    sub_1005BEFC0(&qword_100976850, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v78 = v110;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v79 = v116;
    dispatch thunk of Placeable.measure(toFit:with:)();
    v66 = v80;
    (*(v111 + 8))(v6, v79);
    (*(v7 + 8))(v9, v78);
  }

  return v66;
}

double sub_1005BD6DC()
{
  v107 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v111 = *(v107 - 8);
  __chkstk_darwin(v107);
  v81 = &v67 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v112 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v3 = *(v2 - 8);
  v109 = v2;
  v110 = v3;
  __chkstk_darwin(v2);
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VerticalFlowLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v82 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for FontSource();
  v8 = *(v105 - 8);
  __chkstk_darwin(v105);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v106 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for PageGrid();
  v77 = *(v15 - 8);
  v78 = v15;
  __chkstk_darwin(v15);
  v90 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1005BEFC0(&qword_100973DC0, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v122[0])
  {
    return 0.0;
  }

  v104 = v11;
  v89 = v122[0];
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.componentMeasuringSize(spanning:)();
  v18 = v17;
  v20 = v19;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v21 = v122[0];
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v108 = sub_1000056A8(v22, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v23 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v88 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096D610 != -1)
  {
    swift_once();
  }

  v74 = v6;
  v75 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100438080(&unk_1009CF260, v21, v18, v20);
  swift_unknownObjectRelease();
  swift_allocObject();
  v87 = LayoutViewPlaceholder.init(measurements:)();
  AppEventSearchResult.appEvent.getter();
  AppEvent.title.getter();
  v103 = v24;

  if (qword_10096EA20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v25, qword_1009D2B88);
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  v26 = v105;
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v105);
  v27 = [v21 traitCollection];
  FontSource.font(compatibleWith:)(v27);

  (*(v8 + 8))(v10, v26);
  v28 = type metadata accessor for Feature();
  v123 = v28;
  v124 = sub_1005BEFC0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_1000056E0(v122);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  isFeatureEnabled(_:)();
  sub_100007000(v122);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v106 + 8))(v13, v104);
  static CondensedSearchResultCardLayout.estimatedSizeForViewButtonInAXLayouts.getter();
  swift_allocObject();
  v30 = LayoutViewPlaceholder.init(representing:)();
  v121[3] = v23;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  v121[0] = v87;
  v120[3] = v23;
  v120[0] = v30;
  v73 = v30;
  v119[4] = &protocol witness table for LayoutViewPlaceholder;
  v119[3] = v23;
  v119[0] = v88;
  sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
  v31 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
  v86 = *(v31 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v72 = v33;
  *(v33 + 16) = xmmword_1007B5350;
  v91 = v33 + v32;

  CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
  CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
  v70 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v34 = v110;
  v35 = *(v110 + 104);
  v92 = v110 + 104;
  v93 = v35;
  v71 = v21;
  v36 = v76;
  v35(v76);
  v94 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
  v37 = *(v112 + 72);
  v38 = *(v112 + 80);
  v84 = (v38 + 32) & ~v38;
  v105 = 3 * v37;
  v106 = v38;
  v103 = v37;
  v104 = 2 * v37;
  v39 = swift_allocObject();
  v102 = xmmword_1007B1E00;
  *(v39 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114[0] = v39;
  v100 = sub_1005BEFC0(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v99 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
  v101 = sub_1000364CC();
  v40 = v79;
  v41 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v98 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v42 = v111;
  v43 = *(v111 + 104);
  v96 = v111 + 104;
  v97 = v43;
  v44 = v81;
  v45 = v107;
  v43(v81);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v83 = *(v42 + 8);
  v111 = v42 + 8;
  v83(v44, v45);
  v85 = *(v112 + 8);
  v112 += 8;
  v85(v40, v41);
  v46 = *(v34 + 8);
  v110 = v34 + 8;
  v95 = v46;
  v46(v36, v109);
  sub_100036530(v115);
  sub_100007000(v116);
  CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
  memset(v115, 0, 40);
  v69 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v93(v36);
  v47 = swift_allocObject();
  *(v47 + 16) = v102;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114[0] = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v97(v44, v98, v45);
  v48 = v86;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v49 = v83;
  v83(v44, v45);
  v85(v40, v41);
  v50 = v109;
  v95(v36, v109);
  sub_100036530(v115);
  sub_100007000(v116);
  v68 = 2 * v48;
  v51 = v123;
  v52 = v124;
  v53 = sub_10002A400(v122, v123);
  v117 = v51;
  v118 = *(v52 + 8);
  v54 = sub_1000056E0(v116);
  (*(*(v51 - 8) + 16))(v54, v53, v51);
  CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
  CondensedSearchResultCardLayout.Metrics.titleTextBottomMargin.getter();
  (v93)(v36, v69, v50);
  v55 = swift_allocObject();
  *(v55 + 16) = v102;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v113 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v56 = v107;
  v97(v44, v98, v107);
  v57 = v68;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v49(v44, v56);
  v58 = v85;
  v85(v40, v41);
  v59 = v109;
  v95(v36, v109);
  sub_100036530(v114);
  sub_100007000(v115);
  sub_100007000(v116);
  v86 += v57;
  v117 = &type metadata for Double;
  v118 = &protocol witness table for Double;
  v116[0] = 0x4030000000000000;
  CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
  (v93)(v36, v70, v59);
  v60 = swift_allocObject();
  *(v60 + 16) = v102;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114[0] = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v61 = v107;
  v97(v44, v98, v107);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v83(v44, v61);
  v58(v40, v41);
  v95(v36, v59);
  sub_100036530(v115);
  sub_100007000(v116);
  v62 = v82;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  sub_100007000(v119);
  sub_100007000(v120);
  sub_100007000(v121);
  v63 = v75;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v65 = v64;
  swift_unknownObjectRelease();

  (*(v77 + 8))(v90, v78);
  sub_100007000(v122);
  (*(v74 + 8))(v62, v63);
  return v65;
}

double sub_1005BE734()
{
  v49 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  __chkstk_darwin(v49);
  v54 = &v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for CondensedSearchResultCardLayout();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v57 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for LabelPlaceholder();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DynamicTextAppearance();
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  __chkstk_darwin(v14);
  v50 = &v47 - v15;
  v16 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for PageGrid();
  v51 = *(v17 - 8);
  v52 = v17;
  __chkstk_darwin(v17);
  v63 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1005BEFC0(&qword_100973DC0, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v62 = v73[0];
  if (!v73[0])
  {
    return 0.0;
  }

  v48 = v5;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.componentMeasuringSize(spanning:)();
  v20 = v19;
  v22 = v21;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v23 = v73[0];
  swift_getObjectType();
  v47.super.isa = [v23 traitCollection];
  v61 = AppEventSearchResult.appEvent.getter();
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v49, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v25 = v24;
  v27 = v26;
  if (qword_10096D610 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v28 = sub_100438080(&unk_1009CF260, v23, v20, v22);
  v30 = v29;
  swift_unknownObjectRelease();
  DynamicTextAppearance.init()();
  v31 = v48;
  v49 = v23;
  if (qword_10096EA20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v32, qword_1009D2B88);
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  DynamicTextAppearance.withFontUseCase(_:)();
  v31[1](v7, v4);
  v33 = *(v8 + 8);
  v34 = v53;
  (v33)(v10, v53);
  v48 = v33;
  isa = v47.super.isa;
  CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v47);
  v36 = v50;
  DynamicTextAppearance.withNumberOfLines(_:)();
  (v33)(v13, v34);
  AppEvent.title.getter();
  (*(v8 + 16))(v13, v36, v34);
  LabelPlaceholder.Options.init(rawValue:)();
  v37 = v55;
  LabelPlaceholder.init(_:with:where:)();
  v73[3] = &type metadata for FixedSizedPlaceholder;
  v38 = sub_100168330();
  v73[4] = v38;
  *v73 = v28;
  v73[1] = v30;
  v39 = v58;
  v72[3] = v58;
  v72[4] = &protocol witness table for LabelPlaceholder;
  v40 = sub_1000056E0(v72);
  v41 = v56;
  (*(v56 + 16))(v40, v37, v39);
  v70 = &type metadata for FixedSizedPlaceholder;
  v71 = v38;
  v69 = xmmword_1007D71A0;
  v68[3] = &type metadata for FixedSizedPlaceholder;
  v68[4] = v38;
  v68[0] = v25;
  v68[1] = v27;
  static CondensedSearchResultCardLayout.Metrics.appEvent.getter();
  sub_10002C0AC(v68, &v67);
  sub_10002C0AC(v73, &v66);
  sub_10002C0AC(v72, &v65);
  sub_10002C0AC(&v69, &v64);
  v42 = v57;
  CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
  sub_100007000(v68);
  sub_100007000(&v69);
  sub_100007000(v72);
  sub_100007000(v73);
  sub_1005BEFC0(&qword_10098D840, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
  v43 = v60;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v45 = v44;
  swift_unknownObjectRelease();

  (*(v59 + 8))(v42, v43);
  (*(v41 + 8))(v37, v39);
  (v48)(v36, v34);
  (*(v51 + 8))(v63, v52);
  return v45;
}

uint64_t sub_1005BEFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005BF008()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v3) = DynamicTypeLabel.__allocating_init(frame:)();
  v4 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton;
  *(v1 + v4) = [objc_opt_self() buttonWithType:0];
  v5 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView;
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_1000056A8(v6, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v7, v8}];
  v9 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v10 = (v1 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
  *v10 = 0;
  v10[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for AppPromotionIAPFallbackView(uint64_t a1)
{
  result = qword_10098D878;
  if (!qword_10098D878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1005BF26C(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_10098D858;
  type metadata accessor for ArtworkView();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10098D860;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10098D868;
  *&v6[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = &v6[qword_10098D870];
  v20 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v19 + 8) = *(a1 + 8);
  *v19 = v21;
  *(v19 + 1) = v22;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v23 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v6[qword_10098D850] = sub_1002EB7C0(v15, 2);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a2, a3, a4, a5);
  v25 = qword_10098D860;
  v26 = *(v24 + qword_10098D860);
  v26[OBJC_IVAR____TtC8AppStore12GradientView_kind] = 2;
  v27 = v24;
  v28 = v26;
  v29 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  v30 = *(v24 + v25);
  v31 = [v30 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v32 = *(v24 + v25);
  v33 = [v32 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  v34 = qword_10098D868;
  v35 = *(v27 + qword_10098D868);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1007B15F0;
  v37 = objc_opt_self();
  v38 = v35;
  result = [v37 effectWithBlurRadius:100.0];
  if (result)
  {
    *(v36 + 32) = result;
    *(v36 + 40) = [objc_opt_self() colorEffectSaturate:1.25];
    sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 setBackgroundEffects:isa];

    [v27 addSubview:*(v24 + v25)];
    [v27 addSubview:*(v27 + v34)];
    [v27 addSubview:*(v27 + qword_10098D858)];
    [v27 addSubview:*(v27 + qword_10098D850)];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1005BF6C4()
{
  xmmword_1009D2BA0 = xmmword_1007D72A0;
  *algn_1009D2BB0 = xmmword_1007D72B0;
  result = 10.0;
  xmmword_1009D2BC0 = xmmword_1007D72C0;
  unk_1009D2BD0 = xmmword_1007D72D0;
  qword_1009D2BE0 = 0x4020000000000000;
  return result;
}

double sub_1005BF700()
{
  xmmword_1009D2BF0 = xmmword_1007D72E0;
  unk_1009D2C00 = xmmword_1007D72B0;
  result = 146.0;
  xmmword_1009D2C10 = xmmword_1007D72F0;
  unk_1009D2C20 = xmmword_1007D7300;
  qword_1009D2C30 = 0x4020000000000000;
  return result;
}

__n128 sub_1005BF73C@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v12 = *(v2 + qword_10098D870 + 32);
  v13 = *(v2 + qword_10098D870 + 48);
  v14 = *(v2 + qword_10098D870 + 64);
  v10 = *(v2 + qword_10098D870);
  v11 = *(v2 + qword_10098D870 + 16);
  v4 = *(v2 + qword_10098D850);
  a1[3] = &type metadata for AppPromotionIAPFallbackLayout;
  a1[4] = sub_1005C04E0();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 112) = type metadata accessor for InAppPurchaseView(0);
  *(v5 + 120) = sub_1005C0534(&qword_10098D8D0, type metadata accessor for InAppPurchaseView, &unk_1007C04D8);
  *(v5 + 88) = v4;
  type metadata accessor for GradientView();
  v6 = v4;
  Measurable.placeable.getter();
  v7 = *(v2 + qword_10098D858);
  *(v5 + 232) = type metadata accessor for ArtworkView();
  *(v5 + 240) = sub_1005C0534(&qword_100989780, &type metadata accessor for ArtworkView, "]o\r");
  *(v5 + 208) = v7;
  sub_100005744(0, &qword_10097E628, UIVisualEffectView_ptr);
  v8 = v7;
  Measurable.placeable.getter();
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  *(v5 + 80) = v14;
  result = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  return result;
}

id sub_1005BF90C()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = v0 + qword_10098D870;
  v3 = *(v0 + qword_10098D850);
  CGAffineTransformMakeRotation(&v18, *(v0 + qword_10098D870 + 40) * 3.14159265 / 180.0);
  [v3 setTransform:&v18];
  CGAffineTransformMakeRotation(&v18, *(v2 + 48) * 3.14159265 / 180.0);
  a = v18.a;
  b = v18.b;
  c = v18.c;
  d = v18.d;
  tx = v18.tx;
  ty = v18.ty;
  v16 = v18.ty;
  v17 = v18.tx;
  v10 = *(v0 + qword_10098D858);
  [v10 bounds];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = tx;
  v18.ty = ty;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  [v10 center];
  v12 = v11;
  [v3 center];
  v14 = v13;
  v18.a = 1.0;
  v18.b = 0.0;
  v18.c = 0.0;
  v18.d = 1.0;
  v18.tx = 0.0;
  v18.ty = 0.0;
  [v10 setTransform:&v18];
  [v10 bounds];
  [v10 setBounds:?];
  [v10 setCenter:{v12, v14}];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = v17;
  v18.ty = v16;
  return [v10 setTransform:&v18];
}

void sub_1005BFB18()
{
  v1 = *(v0 + qword_10098D868);
}

void sub_1005BFB78(uint64_t a1)
{
  v2 = *(a1 + qword_10098D868);
}

double sub_1005BFBEC()
{
  v1 = OfferItem.iapArtwork.getter();
  OfferItem.offerLockup.getter();
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCastClass())
  {
    InAppPurchaseLockup.parent.getter();
    v2 = Lockup.icon.getter();
  }

  else
  {

    OfferItem.offerLockup.getter();
    v2 = Lockup.icon.getter();
  }

  if (v2 && (v3 = Artwork.backgroundColor.getter()) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = [objc_opt_self() grayColor];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v5 = Artwork.backgroundGradientColor.getter();
  if (v5)
  {
    v6 = v5;
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = [objc_opt_self() whiteColor];
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_12:

  v7 = Artwork.backgroundColor.getter();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  v7 = [objc_opt_self() grayColor];
  if (v1)
  {
LABEL_14:

    v8 = Artwork.backgroundGradientColor.getter();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [objc_opt_self() whiteColor];
LABEL_16:
  v9 = *(v0 + qword_10098D860);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007BB060;
  *(v10 + 32) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v9 + OBJC_IVAR____TtC8AppStore12GradientView_colors) = v10;
  v11 = v6;
  v12 = v4;
  v13 = v7;
  v14 = v8;

  sub_1001C0CEC();

  return result;
}

uint64_t sub_1005BFE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a4;
  v44[4] = a5;
  v15 = sub_1000056E0(v44);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  sub_10002C0AC(v44, v43);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for OfferItem();
  if (swift_dynamicCast())
  {
    v39 = a3;
    v16 = v42;
    v17 = OfferItem.iapArtwork.getter();
    OfferItem.offerLockup.getter();
    type metadata accessor for InAppPurchaseLockup();
    v18 = swift_dynamicCastClass();
    v37 = v16;
    if (v18)
    {
      InAppPurchaseLockup.parent.getter();
      v19 = Lockup.icon.getter();
    }

    else
    {

      OfferItem.offerLockup.getter();
      v19 = Lockup.icon.getter();
    }

    v40 = a2;
    v38 = v11;
    if (v19)
    {
      v36 = v17;
      v20 = v39;

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v41 = v12;
      v35 = *(v12 + 8);
      v35(v14, v11);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v21 = *(v20 + qword_10098D858);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v21 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      Artwork.crop.getter();
      v22 = Artwork.Crop.preferredContentMode.getter();
      v11 = v38;
      v35(v14, v38);
      [v21 setContentMode:v22];
      type metadata accessor for ArtworkView();
      sub_1005C0534(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v12 = v41;
      v17 = v36;
    }

    v36 = v19;
    if (v17)
    {
      v23 = v11;
      v24 = v39;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v25 = *(v12 + 8);
      v41 = v12 + 8;
      v35 = v25;
      v25(v14, v23);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v26 = *(v24 + qword_10098D850);
      v27 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
      v28 = *(v26 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v28 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v29 = *(v26 + v27);
      Artwork.crop.getter();
      v30 = Artwork.Crop.preferredContentMode.getter();
      v35(v14, v38);
      [v29 setContentMode:v30];

      v31 = *(v26 + v27);
      type metadata accessor for ArtworkView();
      sub_1005C0534(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v32 = v31;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }
  }

  return sub_100007000(v44);
}

void sub_1005C0414()
{
  v1 = qword_10098D858;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10098D860;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = qword_10098D868;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1005C04E0()
{
  result = qword_10098D8C8;
  if (!qword_10098D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D8C8);
  }

  return result;
}

uint64_t sub_1005C0534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005C05C8()
{
  v26 = type metadata accessor for Shelf.PresentationHints();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = ShelfLayoutContext.traitCollection.getter();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v17 = objc_msgSendSuper2(&v27, "init");
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v19 = v18;
  v21 = v20;
  v12(v9, v6);
  sub_10047AC28(v17, v19, v21);

  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_1005C08B4(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v22 = v26;
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23 = *(v0 + 8);
  v23(v2, v22);
  return (v23)(v5, v22);
}

uint64_t sub_1005C08B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005C0B60()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_10098D970);
  sub_1000056A8(v0, qword_10098D970);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_1005C0BFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v62 - v18;
  v20 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_metrics;
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009D25F0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  v62 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  *&v5[v23] = static UIColor.componentBackgroundStandout.getter();
  if (qword_10096EA38 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v25 = sub_1000056A8(v24, qword_10098D910);
  v26 = *(v24 - 8);
  v67 = *(v26 + 16);
  v67(v19, v25, v24);
  v66 = *(v26 + 56);
  v66(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v65 = enum case for DirectionalTextAlignment.none(_:);
  v64 = v27;
  v27(v16);
  v28 = type metadata accessor for DynamicTypeLabel();
  v63 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096EA40 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v24, qword_10098D928);
  v67(v19, v31, v24);
  v66(v19, 0, 1, v24);
  v64(v16, v65, v63);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096EA48 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v24, qword_10098D940);
  v67(v19, v33, v24);
  v66(v19, 0, 1, v24);
  v64(v16, v65, v63);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_offerButton] = sub_1000F5284(0, v37);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v38 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView] = sub_1002EB7C0(v12, 1);
  if (qword_10096EA50 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v24, qword_10098D958);
  v67(v19, v39, v24);
  v66(v19, 0, 1, v24);
  v64(v16, v65, v63);
  v40 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  v69.receiver = v5;
  v69.super_class = v41;
  v42 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v46 = v42;
  [v46 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v47 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel;
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel]];
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel]];
  v48 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel;
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel]];
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_offerButton]];
  v49 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body;
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body]];
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView]];
  v50 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription;
  [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription]];
  v51 = [*&v46[v49] layer];
  [v51 setCornerRadius:20.0];

  v52 = *&v46[v47];
  v53 = [v46 tintColor];
  [v52 setTextColor:v53];

  v54 = *&v46[v48];
  v55 = static UIColor.secondaryText.getter();
  [v54 setTextColor:v55];

  [*&v46[v49] setBackgroundColor:*&v46[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor]];
  v56 = qword_10096EA58;
  v57 = *&v46[v50];
  if (v56 != -1)
  {
    swift_once();
  }

  v58 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v58, qword_10098D970);
  v68 = v46;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v59 = *&v46[v50];
  v60 = static UIColor.secondaryText.getter();
  [v59 setTextColor:v60];

  return v46;
}

uint64_t sub_1005C162C()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseSearchResultLayout();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "layoutSubviews");
  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_metrics], v4);
  v11 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_offerButton];
  v35[2] = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = &v11[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v11[v13], v60);
    sub_10002A400(v60, v61);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v15 = v14;
    v17 = v16;
    sub_100007000(v60);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  v18 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
  v19 = type metadata accessor for DynamicTypeLabel();
  v35[1] = v7;
  v61 = v19;
  v62 = &protocol witness table for UILabel;
  v60[0] = v18;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel];
  v58 = v19;
  v59 = &protocol witness table for UILabel;
  v57 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel];
  v55 = v19;
  v56 = &protocol witness table for UILabel;
  v54 = v21;
  v52 = type metadata accessor for OfferButton();
  v53 = &protocol witness table for UIView;
  v51 = v11;
  v35[0] = v11;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView];
  v49 = type metadata accessor for InAppPurchaseView(0);
  v50 = &protocol witness table for UIView;
  v47 = &protocol witness table for UILabel;
  v48 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription];
  v46 = v19;
  v45 = v23;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body];
  v43 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v18;
  v26 = v20;
  v27 = v21;
  v28 = v35[0];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v36;
  InAppPurchaseSearchResultLayout.init(metrics:inAppPurchaseText:titleText:subtitleText:offerButton:inAppPurchaseIcon:inAppPurchaseDescription:inAppPurchaseBackgroundView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v33 = v39;
  InAppPurchaseSearchResultLayout.placeChildren(relativeTo:in:)();
  (*(v40 + 8))(v33, v41);
  return (*(v37 + 8))(v32, v38);
}

id sub_1005C1A88(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096EA58 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_10098D970);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

double sub_1005C1C28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = type metadata accessor for InAppPurchaseTheme();
  v76 = *(v70 - 8);
  __chkstk_darwin(v70);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v75 = type metadata accessor for OfferButtonSubtitlePosition();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v74 = *(v14 - 8);
  __chkstk_darwin(v14);
  v73 = (&v62 - v15);
  v16 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - v17;
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1005C2FDC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v77)
  {
    v68 = v9;
    v69 = v6;
    v20 = InAppPurchaseSearchResult.lockup.getter();

    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v67 = v77;

    v21 = v20;
    Lockup.title.getter();
    v23 = v22;
    v24 = *&v2[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel];
    v65 = v14;
    v66 = a2;
    v64 = v12;
    if (v22)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    [v24 setText:v25];

    [v24 setHidden:v23 == 0];
    [v3 setNeedsLayout];
    v26 = InAppPurchaseLockup.isSubscription.getter();
    v27 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
    v28 = "onalLayout.swift";
    if (v26)
    {
      v28 = "ultType.Heading.InAppPurchase";
      v29 = 0xD00000000000003ALL;
    }

    else
    {
      v29 = 0xD00000000000002DLL;
    }

    v30 = v28 | 0x8000000000000000;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v29, v31);
    v32 = String._bridgeToObjectiveC()();

    [v27 setText:v32];

    InAppPurchaseLockup.parent.getter();
    v33 = Lockup.title.getter();
    v35 = v34;

    if (v35)
    {
      v36._countAndFlagsBits = 0xD000000000000035;
      v36._object = 0x800000010080C060;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      localizedString(_:comment:)(v36, v37);
      sub_10002849C(&unk_10097E350, &unk_1007DEA00);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1007B10D0;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_1000BFD1C();
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      String.init(format:_:)();

      v39 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel];

      v40 = String._bridgeToObjectiveC()();

      [v39 setText:v40];

      [v39 setHidden:0];
    }

    else
    {
      v41 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel];
      [v41 setText:0];
      [v41 setHidden:1];
    }

    v42 = v64;
    [v3 setNeedsLayout];
    InAppPurchaseLockup.descriptionText.getter();
    v44 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription];
    if (v43)
    {
      v45 = String._bridgeToObjectiveC()();
      [v44 setText:v45];

      [v44 setHidden:0];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription] setText:0];
      [v44 setHidden:1];
    }

    [v3 setNeedsLayout];
    v46 = Lockup.offerDisplayProperties.getter();
    v47 = Lockup.buttonAction.getter();
    v63 = v21;

    v48 = sub_10002849C(&unk_100973240, qword_1007B2220);
    (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
    v49 = v71;
    v50 = v75;
    (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
    (*(v49 + 56))(v42, 1, 1, v50);
    sub_1005C2FDC(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v51 = v73;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v46, v47, 0, v18, v51, v66, 0, 0);

    v74[1](v51, v65);
    sub_10025B2D0(v18);
    v52 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView];
    v78.value.super.isa = 0;
    v78.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v78, v53);
    v79.value.super.isa = 0;
    v79.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v79, v54);
    type metadata accessor for ArtworkView();
    sub_1005C2FDC(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v55 = v67;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v75 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor];
    v56 = v68;
    InAppPurchaseLockup.theme.getter();
    v57 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    v58 = v76;
    v59 = v70;
    (*(v76 + 24))(&v52[v57], v56, v70);
    swift_endAccess();
    v73 = *(v58 + 16);
    v60 = v69;
    v73(v69, &v52[v57], v59);
    sub_1002EBEE4(v60);
    v74 = v3;
    v61 = *(v58 + 8);
    v61(v60, v59);
    v61(v56, v59);
    [v52 setBackgroundColor:v75];
    sub_1001BCDCC(93.0, 93.0, v63, v52, v55);
    v73(v56, &v52[v57], v59);
    sub_1002EBEE4(v56);
    v61(v56, v59);
    [v52 setNeedsLayout];
    [v74 setNeedsLayout];
  }

  return result;
}

id sub_1005C25D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultContentView(uint64_t a1)
{
  result = qword_10098D9C0;
  if (!qword_10098D9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1005C274C(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v6);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for InAppPurchaseSearchResult();
  if (swift_dynamicCast())
  {
    v5 = InAppPurchaseSearchResult.lockup.getter();

    sub_1001BCDCC(93.0, 93.0, v5, *(v2 + OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView), a2);
  }

  return result;
}

uint64_t sub_1005C2808(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
  type metadata accessor for ArtworkView();
  sub_1005C2FDC(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_1005C28F4()
{
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1005C2FDC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    InAppPurchaseSearchResult.lockup.getter();
    v1 = sub_1001BD3AC(93.0, 93.0);

    ArtworkLoader.prefetchArtwork(using:)(v1);
  }

  return result;
}

uint64_t sub_1005C2A14(uint64_t a1)
{
  *(a1 + 24) = sub_1005C2FDC(&qword_10098D9D8, type metadata accessor for InAppPurchaseSearchResultContentView, &unk_1007D7464);
  result = sub_1005C2FDC(&qword_10098D9E0, type metadata accessor for InAppPurchaseSearchResultContentView, &unk_1007D7494);
  *(a1 + 32) = result;
  return result;
}

double sub_1005C2A98()
{
  v0 = type metadata accessor for OfferButtonMetrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for PageGrid();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1005C2FDC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v11;
  InAppPurchaseSearchResult.lockup.getter();

  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();

  Lockup.title.getter();

  Lockup.subtitle.getter();

  v14 = sub_100079F24();
  PageGrid.componentMeasuringSize(spanning:)();
  CGSize.subtracting(insets:)();
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v15 = v28;
  v16 = sub_1000056A8(v28, qword_1009D25F0);
  v17 = v27;
  (*(v27 + 16))(v9, v16, v15);
  v18 = [v14 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v21 = sub_1000056A8(v0, v19);
  (*(v1 + 16))(v3, v21, v0);

  (*(v1 + 32))(v6, v3, v0);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  static InAppPurchaseSearchResultLayout.estimatedMeasurements(fitting:using:in:)();
  v20 = v22;

  swift_unknownObjectRelease();
  (*(v1 + 8))(v6, v0);
  (*(v17 + 8))(v9, v28);
  (*(v26 + 8))(v13, v25);
  return v20;
}

uint64_t sub_1005C2FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005C3030(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_10003687C();
      sub_100395A84(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100549964();
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_100549964();
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_1005C3244(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_10003687C();
      sub_100396904(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100549964();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_100549964();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1005C3454(void *a1)
{
  v2 = type metadata accessor for DebugMetricsEvent();
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v29 = v23 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, &v15[v16 * v10], v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = &v15[v16 * v12];
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_100548DC8(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= a1[2])
    {
      goto LABEL_15;
    }

    v22(&v21[v19], v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1005C3680()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1005C36D4(int a1, double a2)
{
  _StringGuts.grow(_:)(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x64726177726F66;
    }

    else
    {
      v3 = 1701736302;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x647261776B636162;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7 = 0xEC000000676E6972;
  v8 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v13);

  v14._object = 0x800000010081BFC0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  if ((a1 & 0x10000) != 0)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  return 0;
}

uint64_t sub_1005C3894(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1005C72C4(*(a1 + 8) | v4, *(a2 + 8) | v5, *a1, *a2);
}

uint64_t sub_1005C38CC()
{
  if (*(v0 + 10))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_1005C36D4(*(v0 + 8) | v1, *v0);
}

Swift::Int sub_1005C38EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1005C3988(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1005C3A10(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005C3AA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005C74E4(*a1);
  *a2 = result;
  return result;
}

void sub_1005C3AD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1005C3B30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1005C3C24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1005C3CCC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1005C3D60(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005C3E04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005C7590(*a1);
  *a2 = result;
  return result;
}

void sub_1005C3E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1005C3E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

id sub_1005C3F9C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_100399324(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_1005C42B4(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_1006E1C58(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_1005C56E0();
    v5 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_1005C485C(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

double sub_1005C4438(char a1)
{
  v2 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1005C4510()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_1005C5C54(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_1005C5C54(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount);
    v20 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_1005C5A24(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void sub_1005C485C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || a1 && v2[2] == *(a1 + 16))
  {
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_10046AE64(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v28 = v2[2];
    v29 = *(v27 + 16);
    swift_unknownObjectRelease();
    if (v28 != v29)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      v15 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v16 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v15 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
LABEL_25:
      sub_1005C5A24(v15);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v17 = *&v1[v6];
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v18 = *(v17 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_33:
  v19 = v2[2];

  v20 = *(v18 + 16);

  if (v19 != v20)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_38:
    v22 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (!v23)
    {
      v25 = v2[2];
      if (v25 == v24)
      {
        v26 = 0;
LABEL_42:
        sub_1005C5C54(v26);
        goto LABEL_45;
      }

      v26 = v25 + 1;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

void sub_1005C4C74(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  [v3 setScrollEnabled:?];
  v39 = _swiftEmptyArrayStorage;
  v34 = v11;
  v12 = *&v3[v11];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v12)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
      v32 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex;
      v35 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v17 = *(a1 + 32 + 8 * a2);
        }

        v18 = v17;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v19 = swift_allocObject();
        *(v19 + 16) = v13;
        *(v19 + 24) = a2;
        *(v19 + 32) = v18;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v36 = v39;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *&v3[v14];
        *&v3[v14] = 0x8000000000000000;
        sub_1000514A8(v19, v13, isUniquelyReferenced_nonNull_native);
        *&v3[v14] = v38;
        swift_endAccess();
        [v3 addSubview:*(v19 + 32)];
        v21 = *(v19 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v40);
        [v3 bounds];
        Width = CGRectGetWidth(v41);
        [v3 bounds];
        [v21 setFrame:{0.0, MinY, Width, CGRectGetHeight(v42)}];

        [*(v19 + 32) layoutIfNeeded];
        v24 = type metadata accessor for Feature.iOS();
        v37[3] = v24;
        v37[4] = sub_1005C7530();
        v25 = sub_1000056E0(v37);
        (*(*(v24 - 8) + 104))(v25, v35, v24);
        LOBYTE(v24) = isFeatureEnabled(_:)();
        sub_100007000(v37);
        if ((v24 & 1) != 0 && *&v3[v32] == -1)
        {
          *&v3[v32] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10046B0E0(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v26 = [v5 layoutDirection];

        if (v26 == 1)
        {
          break;
        }

        v27 = *&v3[v34];
        v15 = __OFSUB__(v27, 1);
        v28 = (v27 - 1);
        if (v15)
        {
          goto LABEL_51;
        }

        if (a2 != v28)
        {
          v15 = __OFADD__(a2++, 1);
          if (v15)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v16 == v12)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v16 == v12)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v13;
        if (v16 >= v12)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v15 = __OFSUB__(a2--, 1);
        if (v15)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v29 = *&v3[v34];
        a2 = v29 - 1;
        if (__OFSUB__(v29, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_47:
    v30 = *&v3[v31];
    *&v3[v31] = v36;
    sub_1005C42B4(v30);
  }
}

void sub_1005C519C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_1003D7340(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_1005C4510();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_1003A87C4(a1 | 0x100, 1.0);

        sub_1005C4438(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_1003A87C4(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_1005C55AC(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_1005C56E0()
{
  v1 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1005C7588;
    *(v4 + 24) = v3;
    v7[4] = sub_10006F094;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000489A8;
    v7[3] = &unk_1008CA458;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

double sub_1005C5870(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_1005C5A24(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_1005C42B4();

    [v1 contentOffset];
    if (v10 < 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }

    [v1 contentSize];
    if (v12 < v11)
    {
      v11 = v12;
    }

    [v1 bounds];
    *v13.i64 = v11 / CGRectGetWidth(v19);
    *v14.i64 = *v13.i64 - trunc(*v13.i64);
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v18 = *vbslq_s8(vnegq_f64(v15), v14, v13).i64;
    [v1 bounds];
    v16 = v18 * CGRectGetWidth(v20);
    v17 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v16];
    v1[v17] = 0;
    return;
  }

  v5 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_1003D7340(a1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (a1 == v9)
    {
      a1 = 0;
    }

    else
    {
      v8 = __OFADD__(a1++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1005C5C54(uint64_t a1)
{
  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = v3;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_1005C3030(_swiftEmptyArrayStorage);
    }

    *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers] = v8;
    sub_1005C42B4();

    [v1 contentOffset];
    if (v14 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    [v1 contentSize];
    v17 = v16;
    [v1 bounds];
    v18 = v17 - CGRectGetWidth(v30);
    if (v18 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    [v1 bounds];
    *v20.i64 = v19 / CGRectGetWidth(v31);
    v29 = v20;
    [v1 contentSize];
    v22 = v21;
    [v1 bounds];
    v23 = v22 - CGRectGetWidth(v32);
    *v24.i64 = *v29.i64 - trunc(*v29.i64);
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v26 = 1.0 - *vbslq_s8(vnegq_f64(v25), v24, v29).i64;
    [v1 bounds];
    v27 = v23 - v26 * CGRectGetWidth(v33);
    v28 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v27];
    v1[v28] = 0;
    return;
  }

  v7 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_1003D7340(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1005C5F48()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_1005C485C(v13);
}

void sub_1005C6164()
{
  v1 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v2 >> 62)
  {
    goto LABEL_74;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = v2;

  v2 = sub_1001445D8(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = v2;
        v3 = _CocoaArrayWrapper.endIndex.getter();
        v2 = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_1005C66A4(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1001445D8((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      v4[2] = v15 + 1;
      v16 = &v4[2 * v15];
      v16[4] = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v41;
    }

    else
    {
      v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = v2;
        }

        else
        {
          if (v19 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = v4[2];
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = *&v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_1003A7FA0();
          sub_1003A82A4();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }
}