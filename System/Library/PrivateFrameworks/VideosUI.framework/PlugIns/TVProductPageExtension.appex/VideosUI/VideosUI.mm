char *sub_100001718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_100006138(&qword_10000C410, &qword_100007180);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_100006A88();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100006AD8();
  __chkstk_darwin(v14 - 8);
  v15 = &v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask] = 0;
  v16 = &v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig];
  *v16 = xmmword_1000070D0;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v17 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  sub_100006AC8();
  v18 = objc_allocWithZone(sub_100006AF8());
  *&v3[v17] = sub_100006AE8();
  *&v3[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child] = 0;
  sub_100006B38();
  sub_100006B28();
  sub_100006C18();
  v19 = VUISignpostLogObject();
  sub_100006A78();
  sub_100006A68();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v20 = sub_100006B68();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for ProductPageViewController();
  v29.receiver = v4;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", v20, a3);

  v23 = sub_100006BE8();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_100006BC8();
  v24 = v22;
  v25 = sub_100006BB8();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;
  v27 = sub_100001EAC(0, 0, v9, &unk_1000071B8, v26);

  *&v24[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask] = v27;

  return v24;
}

uint64_t sub_100001A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_100006138(&qword_10000C3E8, &qword_100007160);
  v4[4] = swift_task_alloc();
  sub_100006BC8();
  v4[5] = sub_100006BB8();
  v6 = sub_100006BA8();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100001B5C, v6, v5);
}

uint64_t sub_100001B5C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006B38();
  v3 = sub_100006A28();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100001C58;
  v5 = v0[4];

  return static TVExtensionController.createTVExtensionController(delegate:url:)(v1, &off_100008588, v5);
}

uint64_t sub_100001C58(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[4];
  if (v1)
  {
    sub_1000067D0(v5, &qword_10000C3E8, &qword_100007160);
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_100001E40;
  }

  else
  {
    v4[10] = a1;
    sub_1000067D0(v5, &qword_10000C3E8, &qword_100007160);
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_100001DC0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100001DC0()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100001E40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006138(&qword_10000C410, &qword_100007180);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100006768(a3, v22 - v9, &qword_10000C410, &qword_100007180);
  v11 = sub_100006BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000067D0(v10, &qword_10000C410, &qword_100007180);
  }

  else
  {
    sub_100006BD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100006BA8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_100006B88() + 32;
      sub_100006B38();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000067D0(a3, &qword_10000C410, &qword_100007180);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000067D0(a3, &qword_10000C410, &qword_100007180);
  sub_100006B38();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100002164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006138(&qword_10000C410, &qword_100007180);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100006768(a3, v22 - v9, &qword_10000C410, &qword_100007180);
  v11 = sub_100006BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000067D0(v10, &qword_10000C410, &qword_100007180);
  }

  else
  {
    sub_100006BD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100006BA8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100006B88() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000067D0(a3, &qword_10000C410, &qword_100007180);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000067D0(a3, &qword_10000C410, &qword_100007180);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_100002504(uint64_t a1)
{
  v2 = v1;
  v33.receiver = v1;
  v33.super_class = type metadata accessor for ProductPageViewController();
  objc_msgSendSuper2(&v33, "viewWillLayoutSubviews");
  v3 = *&v1[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child];
  if (v3)
  {
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame:{v9, v11, v13, v15}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:
  v16 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  v17 = [*&v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController] parentViewController];
  if (v17)
  {
    v18 = v17;
    sub_100006234();
    v19 = v2;
    v20 = sub_100006C28();

    if (v20)
    {
      v21 = [*&v2[v16] view];
      if (v21)
      {
        v22 = v21;
        v23 = [v19 view];
        if (v23)
        {
          v24 = v23;
          [v23 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          [v22 setFrame:{v26, v28, v30, v32}];
          return;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }
}

void sub_100002720(char a1)
{
  v3 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  v4 = [*&v1[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController] parentViewController];
  if ((a1 & 1) == 0)
  {
    if (!v4)
    {
      return;
    }

    v27 = v4;
    sub_100006234();
    v5 = v1;
    v6 = sub_100006C28();

    if ((v6 & 1) == 0)
    {
      return;
    }

    [*&v1[v3] willMoveToParentViewController:0];
    v7 = [*&v1[v3] view];
    if (v7)
    {
      v8 = v7;
      [v7 removeFromSuperview];

      v9 = *&v1[v3];
      v10 = "removeFromParentViewController";

      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (!v4)
  {
    [v1 addChildViewController:*&v1[v3]];
    v11 = [*&v1[v3] view];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        [v12 setFrame:{v16, v18, v20, v22}];
        v23 = [v1 view];
        if (v23)
        {
          v24 = v23;
          v25 = [*&v1[v3] view];
          if (v25)
          {
            v26 = v25;
            [v24 addSubview:v25];

            v9 = *&v1[v3];
            v10 = "didMoveToParentViewController:";

LABEL_11:
            [v9 v10];
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_1000029C4@<X0>(id a1@<X3>, uint64_t result@<X0>, __int128 *a5@<X8>)
{
  if (result)
  {
    v7 = [a1 rightBarButtonItem];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 title];

      if (v9)
      {
        sub_100006B78();
      }
    }

    v13 = [a1 leftBarButtonItem];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 title];

      if (v15)
      {
        sub_100006B78();
      }
    }

    result = sub_100006B08();
    v10 = v16;
    v11 = v17;
    v12 = v18;
  }

  else
  {
    v10 = xmmword_1000070D0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a5 = v10;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}

uint64_t sub_100002CCC(void *a1, uint64_t a2)
{
  v5 = sub_100006138(&qword_10000C410, &qword_100007180);
  __chkstk_darwin(v5 - 8);
  v114 = &v97 - v6;
  v7 = sub_100006A28();
  v117 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v103 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  __chkstk_darwin(v8);
  v113 = &v97 - v10;
  v11 = sub_100006AB8();
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = __chkstk_darwin(v11);
  v104 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v97 - v14;
  v109 = sub_100006A08();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100006138(&qword_10000C3E8, &qword_100007160);
  v17 = __chkstk_darwin(v16 - 8);
  v101 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v111 = &v97 - v20;
  v21 = __chkstk_darwin(v19);
  v112 = &v97 - v22;
  v23 = __chkstk_darwin(v21);
  v98 = &v97 - v24;
  __chkstk_darwin(v23);
  v26 = &v97 - v25;
  v27 = sub_100006A88();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C18();
  v31 = VUISignpostLogObject();
  sub_100006A78();
  sub_100006A68();

  (*(v28 + 8))(v30, v27);
  v100 = v2;
  v32 = &v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest];
  v33 = *&v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest];
  v34 = *&v2[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest + 8];
  *v32 = a1;
  *(v32 + 1) = a2;
  v99 = a1;
  v35 = a1;
  v105 = a2;
  v36 = v117;

  sub_100006280(v33, v34);
  v37 = *(v36 + 56);
  v118 = v26;
  v110 = v37;
  v37(v26, 1, 1, v7);
  v38 = [v35 itemKind];
  if (v38)
  {
    v39 = v38;
    v40 = sub_100006B78();
    v42 = v41;

    if (v40 == 0x61506E6F73616573 && v42 == 0xEA00000000007373)
    {
    }

    else
    {
      v43 = sub_100006C88();

      if ((v43 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v44 = v35;
    v45 = v107;
    sub_1000069F8();
    sub_1000069E8();
    sub_1000069C8();
    v46 = v44;
    v47 = [v44 itemDictionary];
    v48 = sub_100006B48();

    v119 = 0x64496E6F73616573;
    v120 = 0xE800000000000000;
    sub_100006C58();
    if (*(v48 + 16) && (v49 = sub_1000059CC(&v121), (v50 & 1) != 0))
    {
      sub_1000061D4(*(v48 + 56) + 32 * v49, v123);
      sub_10000660C(&v121);

      if (swift_dynamicCast())
      {
        v51 = v119;
        v52 = v120;
        sub_100006138(&qword_10000C418, &qword_100007198);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1000070E0;
        *(v53 + 32) = 0x736165732D76742FLL;
        *(v53 + 40) = 0xEA00000000006E6FLL;
        v121 = 25705;
        v122 = 0xE200000000000000;
        v124._countAndFlagsBits = v51;
        v124._object = v52;
        sub_100006B98(v124);

        v54 = v122;
        *(v53 + 48) = v121;
        *(v53 + 56) = v54;
        v121 = v53;
        sub_100006138(&qword_10000C420, &qword_1000071A0);
        sub_100006660();
        sub_100006B58();

        sub_1000069D8();
        v55 = v98;
        sub_1000069B8();
        (*(v108 + 8))(v45, v109);
        v56 = v118;
        sub_1000067D0(v118, &qword_10000C3E8, &qword_100007160);
        sub_1000062C0(v55, v56);
        v35 = v46;
        goto LABEL_10;
      }
    }

    else
    {

      sub_10000660C(&v121);
    }

    v63 = sub_100006A98();
    v65 = v115;
    v64 = v116;
    v66 = v106;
    (*(v115 + 16))(v106, v63, v116);
    v67 = v46;
    v68 = sub_100006AA8();
    v69 = sub_100006C08();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      v72 = [v67 iTunesStoreIdentifier];
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&_mh_execute_header, v68, v69, "No seasonId found for seasonPass %@", v70, 0xCu);
      sub_1000067D0(v71, &qword_10000C3E0, &qword_100007158);
    }

    (*(v65 + 8))(v66, v64);
    (*(v108 + 8))(v45, v109);
    goto LABEL_26;
  }

LABEL_10:
  v57 = v111;
  sub_100006768(v118, v111, &qword_10000C3E8, &qword_100007160);
  v58 = *(v36 + 48);
  if (v58(v57, 1, v7) == 1)
  {
    v59 = [v35 productPageURL];
    if (v59)
    {
      v60 = v101;
      v61 = v59;
      sub_100006A18();

      v62 = 0;
    }

    else
    {
      v62 = 1;
      v60 = v101;
    }

    v110(v60, v62, 1, v7);
    v73 = v112;
    sub_1000062C0(v60, v112);
    if (v58(v57, 1, v7) != 1)
    {
      sub_1000067D0(v57, &qword_10000C3E8, &qword_100007160);
    }
  }

  else
  {
    v73 = v112;
    (*(v36 + 32))(v112, v57, v7);
    v110(v73, 0, 1, v7);
  }

  if (v58(v73, 1, v7) != 1)
  {
    v116 = *(v36 + 32);
    v85 = v113;
    v116(v113, v73, v7);
    v86 = sub_100006BE8();
    (*(*(v86 - 8) + 56))(v114, 1, 1, v86);
    v87 = v103;
    (*(v36 + 16))(v103, v85, v7);
    sub_100006BC8();
    v88 = v105;

    v89 = v100;
    v90 = sub_100006BB8();
    v91 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v92 = v7;
    v93 = v36;
    v94 = (v102 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    v95[2] = v90;
    v95[3] = &protocol witness table for MainActor;
    v95[4] = v89;
    v116(v95 + v91, v87, v92);
    *(v95 + v94) = v88;
    sub_100002164(0, 0, v114, &unk_100007190, v95);

    (*(v93 + 8))(v113, v92);
LABEL_26:
    v84 = 0;
    goto LABEL_27;
  }

  sub_1000067D0(v73, &qword_10000C3E8, &qword_100007160);
  v74 = sub_100006A98();
  v76 = v115;
  v75 = v116;
  v77 = v104;
  (*(v115 + 16))(v104, v74, v116);
  v78 = v35;
  v79 = sub_100006AA8();
  v80 = sub_100006C08();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138477827;
    *(v81 + 4) = v78;
    *v82 = v99;
    v83 = v78;
    sub_1000067D0(v82, &qword_10000C3E0, &qword_100007158);
  }

  (*(v76 + 8))(v77, v75);
  v84 = 1;
LABEL_27:
  sub_1000067D0(v118, &qword_10000C3E8, &qword_100007160);
  return v84;
}

uint64_t sub_1000039D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_100006138(&qword_10000C3E8, &qword_100007160);
  v6[6] = swift_task_alloc();
  v7 = sub_100006A28();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_100006AB8();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = sub_100006BC8();
  v6[14] = sub_100006BB8();
  v10 = sub_100006BA8();
  v6[15] = v10;
  v6[16] = v9;

  return _swift_task_switch(sub_100003B60, v10, v9);
}

uint64_t sub_100003B60()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask);
  v0[17] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = sub_100006B38();
    v4 = sub_100006138(&qword_10000C430, &qword_1000071A8);
    *v2 = v0;
    v2[1] = sub_100003D78;

    return Task.value.getter(v0 + 2, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];

    v8 = sub_100006A98();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_100006AA8();
    v10 = sub_100006C08();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No extension controller", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100003D78()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100004824;
  }

  else
  {
    v5 = sub_100003ED0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100003ED0()
{
  v0[20] = v0[2];
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100003F70;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  return sub_100004940(v2, v4, v3);
}

uint64_t sub_100003F70()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100004090, v3, v2);
}

uint64_t sub_100004090()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 72);
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, *(v0 + 32), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000067D0(*(v0 + 48), &qword_10000C3E8, &qword_100007160);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = *(**(v0 + 160) + 256);
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_10000426C;
  v9 = *(v0 + 72);

  return v11(v9);
}

uint64_t sub_10000426C(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10000436C, 0, 0);
}

uint64_t sub_10000436C()
{
  *(v0 + 192) = sub_100006BB8();
  v2 = sub_100006BA8();

  return _swift_task_switch(sub_1000043F8, v2, v1);
}

uint64_t sub_1000043F8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 24);

  v3 = *(v2 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child);
  *(v2 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child) = v1;
  v4 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child;
  v5 = *(v2 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child);
  v6 = v1;
  if (!v5)
  {
    if (!v3)
    {
      goto LABEL_24;
    }

    v8 = v3;
    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  sub_100006234();
  v7 = v5;
  v8 = v3;
  v9 = sub_100006C28();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = v8;
    [v10 willMoveToParentViewController:0];
    v11 = [v10 view];
    if (!v11)
    {
      __break(1u);
      goto LABEL_28;
    }

    v14 = v11;
    [v11 removeFromSuperview];

    [v10 removeFromParentViewController];
    v5 = *(v2 + v4);
    if (!v5)
    {
LABEL_19:
      v27 = [objc_opt_self() sharedInstance];
      v28 = *(v2 + v4);
      if (v28)
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = v28;
        }
      }

      else
      {
        v29 = 0;
      }

      [v27 setCurrentNavigationController:{v29, v32}];

      goto LABEL_24;
    }

LABEL_9:
    v15 = *(v0 + 24);
    v16 = v5;
    [v15 addChildViewController:v16];
    v17 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
    v18 = [*&v15[OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController] parentViewController];
    if (v18)
    {
      v19 = v18;
      v32 = v6;
      v20 = *(v0 + 24);
      sub_100006234();
      v21 = v20;
      v22 = sub_100006C28();

      v6 = v32;
      if (v22)
      {
        v11 = [*(v0 + 24) view];
        if (v11)
        {
          v23 = v11;
          v11 = [v16 view];
          if (v11)
          {
            v24 = v11;
            v11 = [*&v15[v17] view];
            if (v11)
            {
              v25 = v11;
              [v23 insertSubview:v24 belowSubview:v11];

              v6 = v32;
LABEL_18:
              v26 = *(v0 + 24);

              [v16 didMoveToParentViewController:v26];
              goto LABEL_19;
            }

LABEL_32:
            __break(1u);
            return _swift_task_switch(v11, v12, v13);
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v11 = [*(v0 + 24) view];
    if (v11)
    {
      v24 = v11;
      v11 = [v16 view];
      if (v11)
      {
        v25 = v11;
        [v24 addSubview:v11];
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:

  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v11 = sub_10000475C;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10000475C()
{
  v1 = v0[23];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100004824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  sub_100006138(&qword_10000C3E8, &qword_100007160);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v4 = sub_100006A28();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v5 = sub_100006978();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  sub_100006138(&qword_10000C3F0, &qword_100007168);
  v3[37] = swift_task_alloc();
  v6 = sub_100006A08();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  sub_100006BC8();
  v3[41] = sub_100006BB8();
  v8 = sub_100006BA8();
  v3[42] = v8;
  v3[43] = v7;

  return _swift_task_switch(sub_100004B84, v8, v7);
}

uint64_t sub_100004B84()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  sub_1000069A8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[37];
    v5 = v0[29];
    v6 = v0[30];
    v7 = v0[24];

    sub_1000067D0(v4, &qword_10000C3F0, &qword_100007168);
    (*(v6 + 56))(v7, 1, 1, v5);
LABEL_35:

    v55 = v0[1];

    return v55();
  }

  else
  {
    v8 = v0[34];
    v9 = v0[26];
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    v10 = v9 + 64;
    v11 = -1;
    v12 = -1 << *(v9 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v9 + 64);
    v14 = (63 - v12) >> 6;
    v57 = v8;

    v18 = 0;
    v60 = v9;
    v61 = &_swiftEmptyArrayStorage;
    v58 = v14;
    v59 = v9 + 64;
    while (v13)
    {
LABEL_13:
      v20 = __clz(__rbit64(v13)) | (v18 << 6);
      v21 = (*(v9 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_1000061D4(*(v9 + 56) + 32 * v20, (v0 + 4));
      v0[2] = v22;
      v0[3] = v23;
      sub_100006768((v0 + 2), (v0 + 8), &qword_10000C3F8, &qword_100007170);

      if (swift_dynamicCast())
      {
        sub_100006968();

        v24 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1000057F4(0, v61[2] + 1, 1, v61);
        }

        v26 = v24[2];
        v25 = v24[3];
        v14 = v58;
        v10 = v59;
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1000057F4((v25 > 1), v26 + 1, 1, v24);
        }

        v27 = v0[36];
        v28 = v0[33];

        v24[2] = v26 + 1;
        (*(v57 + 32))(v24 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v26, v27, v28);
        v61 = v24;
        v9 = v60;
      }

      else
      {
        sub_100006768((v0 + 2), (v0 + 14), &qword_10000C3F8, &qword_100007170);

        if (swift_dynamicCast())
        {
          v0[23] = v0[22];
          sub_100006C78();
          sub_100006968();

          v29 = v61;
          v10 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1000057F4(0, v61[2] + 1, 1, v61);
          }

          v31 = v29[2];
          v30 = v29[3];
          if (v31 >= v30 >> 1)
          {
            v29 = sub_1000057F4((v30 > 1), v31 + 1, 1, v29);
          }

          v14 = v58;
          v32 = v0[35];
          v33 = v0[33];

          v29[2] = v31 + 1;
          (*(v57 + 32))(v29 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v31, v32, v33);
          v61 = v29;
          v9 = v60;
        }

        else
        {

          v10 = v59;
          v9 = v60;
          v14 = v58;
        }
      }

      v13 &= v13 - 1;
      v15 = sub_1000067D0((v0 + 2), &qword_10000C3F8, &qword_100007170);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return CampaignAttributor.processURL(_:ignoreMarketing:)(v15, v16, v17);
      }

      if (v19 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v19);
      ++v18;
      if (v13)
      {
        v18 = v19;
        goto LABEL_13;
      }
    }

    if (sub_100006988())
    {
    }

    else
    {
      sub_100005AD8(v61);
    }

    v34 = v0[29];
    v35 = v0[30];
    v36 = v0[28];
    sub_100006998();
    sub_1000069C8();
    sub_1000069B8();
    v37 = *(v35 + 48);
    v0[44] = v37;
    v0[45] = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v37(v36, 1, v34) == 1)
    {
      v38 = v0[29];
      v39 = v0[30];
      v40 = v0[28];
      v41 = v0[24];
      (*(v0[39] + 8))(v0[40], v0[38]);

      sub_1000067D0(v40, &qword_10000C3E8, &qword_100007160);
      (*(v39 + 56))(v41, 1, 1, v38);
      goto LABEL_35;
    }

    v42 = v0[32];
    v43 = v0[29];
    v44 = v0[30];
    v45 = v0[28];
    v46 = *(v44 + 32);
    v0[46] = v46;
    v0[47] = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46(v42, v45, v43);
    v47 = [objc_opt_self() vui_defaultBag];
    v0[48] = v47;
    if (!v47)
    {
      v51 = v0[32];
      v52 = v0[29];
      v53 = v0[30];
      v54 = v0[24];
      (*(v0[39] + 8))(v0[40], v0[38]);

      v46(v54, v51, v52);
      (*(v53 + 56))(v54, 0, 1, v52);
      goto LABEL_35;
    }

    v48 = v47;
    objc_allocWithZone(sub_100006A58());
    v49 = v48;
    v0[49] = sub_100006A48();
    v50 = swift_task_alloc();
    v0[50] = v50;
    *v50 = v0;
    v50[1] = sub_1000052F8;
    v16 = v0[32];
    v15 = v0[27];
    v17 = 0;

    return CampaignAttributor.processURL(_:ignoreMarketing:)(v15, v16, v17);
  }
}

uint64_t sub_1000052F8()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_100005418, v3, v2);
}

uint64_t sub_100005418()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);

  (*(v5 + 8))(v3, v4);
  v8 = v2(v7, 1, v6);
  v9 = *(v0 + 368);
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  if (v8 == 1)
  {
    v12 = *(v0 + 352);
    v9(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    if (v12(v11, 1, v10) != 1)
    {
      sub_1000067D0(*(v0 + 216), &qword_10000C3E8, &qword_100007160);
    }
  }

  else
  {
    v13 = *(v0 + 248);
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
    v9(v13, v11, v10);
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 192);
  (*(v0 + 368))(v16, *(v0 + 248), v15);
  (*(v14 + 56))(v16, 0, 1, v15);

  v17 = *(v0 + 8);

  return v17();
}

id sub_100005654(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductPageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100005740()
{
  sub_100002720(0);

  return [v0 loadDidFinish];
}

void sub_100005778(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig);
  v4 = *(v1 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig);
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  sub_100006180(v4, v5, v6, v7, v8, v9);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
}

void *sub_1000057F4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100006138(&qword_10000C400, &qword_100007178);
  v10 = *(sub_100006978() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100006978() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1000059CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100006C38(*(v2 + 40));

  return sub_100005A10(a1, v4);
}

unint64_t sub_100005A10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000670C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100006C48();
      sub_10000660C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100005AD8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000057F4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100006978();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_100005C04()
{
  v1 = sub_100006AD8();
  __chkstk_darwin(v1 - 8);
  v2 = (v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_lookupRequest);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_tvExtensionControllerTask) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_askToBuyConfig);
  *v3 = xmmword_1000070D0;
  v3[1] = 0u;
  v3[2] = 0u;
  v4 = OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_loadingViewController;
  sub_100006AC8();
  v5 = objc_allocWithZone(sub_100006AF8());
  *(v0 + v4) = sub_100006AE8();
  *(v0 + OBJC_IVAR____TtC22TVProductPageExtension25ProductPageViewController_child) = 0;
  sub_100006C68();
  __break(1u);
}

id sub_100005D38(uint64_t a1, uint64_t a2)
{
  v3 = sub_100006B78();
  v5 = v4;
  if (v3 == sub_100006B78() && v5 == v6)
  {
    v9 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_100006C88();

  if (v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

  v11 = sub_100006B78();
  v13 = v12;
  if (v11 == sub_100006B78() && v13 == v14)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_100006C88();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  v17 = sub_100006B78();
  v19 = v18;
  if (v17 == sub_100006B78() && v19 == v20)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v21 = sub_100006C88();

  if (v21)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v22 = sub_100006B78();
  v24 = v23;
  if (v22 == sub_100006B78() && v24 == v25)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v26 = sub_100006C88();

  if ((v26 & 1) == 0)
  {
    return result;
  }

  v9 = 4;
LABEL_9:

  return [v2 finishWithResult:v9 completion:0];
}

uint64_t sub_100005F74(uint64_t a1)
{
  v1 = sub_100006AB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006A98();
  (*(v2 + 16))(v4, v5, v1);
  swift_errorRetain();
  v6 = sub_100006AA8();
  v7 = sub_100006C08();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to load product page: %@", v8, 0xCu);
    sub_1000067D0(v9, &qword_10000C3E0, &qword_100007158);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100006138(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100006180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1000061D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006234()
{
  result = qword_10000C408;
  if (!qword_10000C408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C408);
  }

  return result;
}

void *sub_100006280(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000062C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006138(&qword_10000C3E8, &qword_100007160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006330()
{
  v1 = sub_100006A28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100006410()
{
  v2 = *(sub_100006A28() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100006518;

  return sub_1000039D0(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_100006518()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100006660()
{
  result = qword_10000C428;
  if (!qword_10000C428)
  {
    sub_1000066C4(&qword_10000C420, &qword_1000071A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C428);
  }

  return result;
}

uint64_t sub_1000066C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006138(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000067D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006138(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100006830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_100006884()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000068C4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006964;

  return sub_100001A8C(a1, v5, v6, v4);
}