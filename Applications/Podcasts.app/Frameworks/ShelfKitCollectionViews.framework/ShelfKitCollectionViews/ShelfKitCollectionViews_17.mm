NSString sub_1D4804()
{
  result = sub_30C098();
  qword_4295A8 = result;
  return result;
}

unint64_t *sub_1D483C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_1D48C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1D4938(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1D4A34()
{
  result = qword_408790;
  if (!qword_408790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408790);
  }

  return result;
}

void sub_1D4B0C(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v48 = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v47 = [v4 tabBar];
    v6 = [v47 snapshotViewAfterScreenUpdates:0];
    if (v6)
    {
      v7 = v6;
      v8 = [a1 containerView];
      v9 = [v5 tabBar];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [v5 view];
      [v8 convertRect:v18 fromView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v7 setFrame:{v20, v22, v24, v26}];
      v27 = [a1 containerView];
      [v27 addSubview:v7];

      v28 = [v5 tabBar];
      [v28 setAlpha:0.0];

      v29 = swift_allocObject();
      *(v29 + 16) = v5;
      v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v31 = *(v1 + v30);
      v32 = v48;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v30) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_CB5FC(0, *(v31 + 2) + 1, 1, v31);
        *(v1 + v30) = v31;
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v46 = sub_CB5FC((v34 > 1), v35 + 1, 1, v31);
        v36 = v35 + 1;
        v31 = v46;
      }

      *(v31 + 2) = v36;
      v37 = &v31[24 * v35];
      *(v37 + 4) = sub_1D572C;
      *(v37 + 5) = v29;
      v37[48] = 2;
      *(v1 + v30) = v31;
      swift_endAccess();

      v38 = objc_opt_self();
      v39 = swift_allocObject();
      *(v39 + 16) = v7;
      v53 = sub_1D5788;
      v54 = v39;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_914CC;
      v52 = &block_descriptor_23;
      v40 = _Block_copy(&aBlock);
      v41 = v7;

      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      v53 = sub_1D5790;
      v54 = v42;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_2504C4;
      v52 = &block_descriptor_29;
      v43 = _Block_copy(&aBlock);
      v44 = v41;

      [v38 animateWithDuration:0x10000 delay:v40 options:v43 animations:0.233333333 completion:0.0];

      _Block_release(v43);
      _Block_release(v40);
      return;
    }

    v45 = v47;
  }

  else
  {
    v45 = v48;
  }
}

id sub_1D4FAC(void *a1)
{
  [a1 bounds];
  CGRectGetHeight(v4);
  [a1 center];

  return [a1 setCenter:?];
}

void sub_1D5018(void *a1)
{
  v3 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, sub_1D4938(0)}];
  if (v3)
  {
    v4 = v3;
    [a1 finalFrameForViewController:v3];
  }

  else
  {
    v4 = [a1 containerView];
    [v4 bounds];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23BouncyFromRectAnimation_fromRect];
  v14 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23BouncyFromRectAnimation_fromRect + 32];
  if (v14)
  {
    v50.origin.x = v9;
    v50.origin.y = v10;
    v50.size.width = v11;
    v50.size.height = v12;
    v15 = CGRectGetWidth(v50) * 0.2;
    v51.origin.x = v9;
    v51.origin.y = v10;
    v51.size.width = v11;
    v51.size.height = v12;
    v16 = CGRectGetHeight(v51) * 0.2;
    v52.origin.x = v9;
    v52.origin.y = v10;
    v52.size.width = v11;
    v52.size.height = v12;
    v53 = CGRectInset(v52, v15, v16);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
  }

  else
  {
    width = v13[2];
    height = v13[3];
    x = *v13;
    y = v13[1];
  }

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v43 = CGRectGetWidth(v54);
  v55.origin.x = v9;
  v55.origin.y = v10;
  v55.size.width = v11;
  v55.size.height = v12;
  v42 = CGRectGetWidth(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v41 = CGRectGetHeight(v56);
  v57.origin.x = v9;
  v57.origin.y = v10;
  v57.size.width = v11;
  v57.size.height = v12;
  v40 = CGRectGetHeight(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = v9;
  v59.origin.y = v10;
  v59.size.width = v11;
  v59.size.height = v12;
  v38 = CGRectGetMidX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  MidY = CGRectGetMidY(v60);
  v61.origin.x = v9;
  v61.origin.y = v10;
  v61.size.width = v11;
  v61.size.height = v12;
  v36 = CGRectGetMidY(v61);
  v21 = [a1 viewForKey:UITransitionContextToViewKey];
  [v21 setFrame:{x, y, width, height}];
  if (v21)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1)
  {
    [v21 setAlpha:0.0];
  }

  [v21 layoutIfNeeded];

  if (v21)
  {
    v23 = v21;
    v24 = [a1 containerView];
    [v24 addSubview:v23];
  }

  v25 = sqrt((MidX - v38) * (MidX - v38) + (MidY - v36) * (MidY - v36));
  v26 = sqrt((v43 - v42) * (v43 - v42) + (v41 - v40) * (v41 - v40));
  if (v25 < v26)
  {
    v25 = v26;
  }

  v27 = v25 / 0.7 / v25;
  v28 = objc_opt_self();
  v29 = swift_allocObject();
  *(v29 + 2) = v1;
  *(v29 + 3) = v21;
  v29[4] = v9;
  v29[5] = v10;
  v29[6] = v11;
  v29[7] = v12;
  v48 = sub_1D5640;
  v49 = v29;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_914CC;
  v47 = &block_descriptor_40;
  v30 = _Block_copy(&aBlock);
  v31 = v21;
  v32 = v1;

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = a1;
  v48 = sub_1D56A8;
  v49 = v33;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_2504C4;
  v47 = &block_descriptor_14;
  v34 = _Block_copy(&aBlock);
  v35 = v32;
  swift_unknownObjectRetain();

  [v28 animateWithDuration:129 delay:v30 usingSpringWithDamping:v34 initialSpringVelocity:0.7 options:0.0 animations:0.75 completion:v27];

  _Block_release(v34);
  _Block_release(v30);
}

id sub_1D54D4(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1D4938(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_1D55A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1D5600()
{

  return _swift_deallocObject(v0, 64, 7);
}

double block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D5668()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1D56A8()
{
  v1 = *(v0 + 24);
  v2 = sub_1D4938(2);

  return [v1 completeTransition:{1, v2}];
}

uint64_t sub_1D56F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1D572C()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setAlpha:1.0];
}

void *sub_1D57C0(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = sub_30D578();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        sub_30C348();
        if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_124C4(0, &qword_3FBD90, UIView_ptr);
        v10 = sub_30C368();

        v11 = sub_1D57C0(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = sub_30D668();
        }

        else
        {
          v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = sub_30D668();
        }

        else
        {
          v15 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          sub_30D668();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = sub_30D588();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = sub_30D668();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_EC8C(&qword_408878, &qword_408870, qword_32BB58, &protocol conformance descriptor for [A]);
              for (j = 0; j != v20; ++j)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408870, qword_32BB58);
                v24 = sub_2452D0(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_124C4(0, &qword_408868, UILabel_ptr);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_1D5CC0(void *a1)
{
  [a1 bounds];
  CGRectGetHeight(v4);
  [a1 center];

  return [a1 setCenter:?];
}

void sub_1D5D2C(int a1, id a2)
{
  v2 = [a2 tabBar];
  [v2 setAlpha:1.0];
}

void sub_1D5D88(void *a1)
{
  v2 = v1;
  v116 = sub_306E68();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_306E88();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_306EA8();
  v110 = *(v119 - 8);
  __chkstk_darwin(v119);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v109 = &v99 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21BouncyToRectAnimation_toRect + 32])
  {
    v121.origin.x = v14;
    v121.origin.y = v16;
    v121.size.width = v18;
    v121.size.height = v20;
    v28 = CGRectGetWidth(v121) * 0.3;
    v122.origin.x = v14;
    v122.origin.y = v16;
    v122.size.width = v18;
    v122.size.height = v20;
    v29 = CGRectGetHeight(v122) * 0.3;
    v123.origin.x = v14;
    v123.origin.y = v16;
    v123.size.width = v18;
    v123.size.height = v20;
    v124 = CGRectInset(v123, v28, v29);
    x = v124.origin.x;
    y = v124.origin.y;
    width = v124.size.width;
    height = v124.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v125.origin.x = v14;
  v125.origin.y = v16;
  v125.size.width = v18;
  v125.size.height = v20;
  v117 = CGRectGetWidth(v125);
  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = width;
  v126.size.height = height;
  v103 = CGRectGetWidth(v126);
  v127.origin.x = v14;
  v127.origin.y = v16;
  v127.size.width = v18;
  v127.size.height = v20;
  v102 = CGRectGetHeight(v127);
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = width;
  v128.size.height = height;
  v101 = CGRectGetHeight(v128);
  v129.origin.x = v14;
  v129.origin.y = v16;
  v129.size.width = v18;
  v129.size.height = v20;
  MidX = CGRectGetMidX(v129);
  v130.origin.x = x;
  v130.origin.y = y;
  v130.size.width = width;
  v130.size.height = height;
  v99 = CGRectGetMidX(v130);
  v108 = v14;
  v131.origin.x = v14;
  v106 = v16;
  v131.origin.y = v16;
  *&v107 = v18;
  v131.size.width = v18;
  v105 = v20;
  v131.size.height = v20;
  MidY = CGRectGetMidY(v131);
  v118 = x;
  v132.origin.x = x;
  v35 = y;
  v132.origin.y = y;
  v104 = width;
  v132.size.width = width;
  v36 = height;
  v132.size.height = height;
  v37 = CGRectGetMidY(v132);
  v38 = sqrt((v117 - v103) * (v117 - v103) + (v102 - v101) * (v102 - v101));
  v39 = sqrt((MidX - v99) * (MidX - v99) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = v39;
  }

  v117 = COERCE_DOUBLE([a1 viewForKey:UITransitionContextToViewKey]);
  if (v117 != 0.0)
  {
    v41 = *&v117;
    v42 = [a1 containerView];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v41 setFrame:{v44, v46, v48, v50}];
    if (v12)
    {
      v51 = v41;
      v52 = v12;
      v53 = [a1 containerView];
      [v53 insertSubview:v51 belowSubview:v52];
    }
  }

  v103 = v40 / 0.7 / v40;
  v54 = v118;
  v133.origin.x = v118;
  v133.origin.y = v35;
  v55 = v104;
  v133.size.width = v104;
  v102 = v35;
  v56 = v36;
  v133.size.height = v36;
  MinY = CGRectGetMinY(v133);
  v58 = v108;
  v134.origin.x = v108;
  v59 = v106;
  v134.origin.y = v106;
  v60 = *&v107;
  *&v134.size.width = v107;
  v61 = v105;
  v134.size.height = v105;
  v62 = MinY - CGRectGetMinY(v134);
  v135.origin.x = v54;
  v135.origin.y = v102;
  v135.size.width = v55;
  v135.size.height = v56;
  v63 = CGRectGetMidX(v135);
  v136.origin.x = v58;
  v136.origin.y = v59;
  v136.size.width = v60;
  v136.size.height = v61;
  v64 = CGRectGetMidX(v136);
  CATransform3DMakeTranslation(&aBlock, v63 - v64, v62, 0.0);
  v26[3] = v59;
  v137.origin.x = v58;
  v137.origin.y = v59;
  v137.size.width = v60;
  v137.size.height = v61;
  v65 = CGRectGetWidth(v137);
  v138.origin.x = v118;
  v138.origin.y = v59;
  v138.size.width = v55;
  v138.size.height = v56;
  v66 = CGRectGetWidth(v138);
  v118 = *&v26;
  v26[2] = v58 + (v65 - v66) * 0.5;
  v67 = sub_30C098();
  v68 = [objc_opt_self() animationWithKeyPath:v67];

  v69 = objc_opt_self();
  v70 = v68;
  v71 = [v69 valueWithCATransform3D:&aBlock];
  [v70 setToValue:v71];

  v72 = off_4093E0;
  if (off_4093E0)
  {
    v73 = *(&dword_10 + off_4093E0);
    if (*(v73 + 48))
    {
      v74 = 40;
    }

    else
    {
      v74 = 44;
    }

    v75 = *(v73 + v74);

    [v70 setDamping:v75];
    v76 = *(&dword_18 + v72);
    if (*(v76 + 48))
    {
      v77 = 40;
    }

    else
    {
      v77 = 44;
    }

    [v70 setMass:*(v76 + v77)];
    v78 = *(&stru_20.cmd + v72);
    if (*(v78 + 48))
    {
      v79 = 40;
    }

    else
    {
      v79 = 44;
    }

    [v70 setStiffness:*(v78 + v79)];
  }

  else
  {
    [v70 setDamping:16.0];
    [v70 setMass:1.0];
    [v70 setStiffness:150.0];
  }

  [v70 setInitialVelocity:v103];
  v80 = v70;
  [v80 settlingDuration];
  [v80 setDuration:?];
  [v80 setFillMode:kCAFillModeForwards];
  [v80 setRemovedOnCompletion:0];

  if (v12)
  {
    v81 = [v12 layer];
    v82 = sub_30C098();
    [v81 addAnimation:v80 forKey:v82];
  }

  [v80 settlingDuration];
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *&v107 = COERCE_DOUBLE(sub_30C8F8());
  sub_306E98();
  v83 = v109;
  sub_306F08();
  v108 = v110[1];
  (*&v108)(v7, v119);
  v84 = swift_allocObject();
  *(v84 + 16) = a1;
  *(v84 + 24) = v2;
  *&aBlock.m21 = sub_1D6F38;
  *&aBlock.m22 = v84;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_914CC;
  *&aBlock.m14 = &block_descriptor_41;
  v85 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v106 = COERCE_DOUBLE(v2);

  v86 = v111;
  sub_306E78();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_943D4();
  v110 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
  sub_EC8C(&qword_40D770, &qword_408860, &unk_31E9E0, &protocol conformance descriptor for [A]);
  v87 = v113;
  v88 = v116;
  sub_30D488();
  v89 = v107;
  sub_30C8C8();
  _Block_release(v85);

  (*(v115 + 8))(v87, v88);
  (*(v112 + 8))(v86, v114);
  (*&v108)(v83, v119);
  v90 = objc_opt_self();
  v91 = swift_allocObject();
  v92 = v106;
  v91[2] = v106;
  *(v91 + 3) = v12;
  v91[4] = v118;
  *&aBlock.m21 = sub_1D6FD0;
  *&aBlock.m22 = v91;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_914CC;
  *&aBlock.m14 = &block_descriptor_17;
  v93 = _Block_copy(&aBlock);
  v94 = v12;
  v95 = *&v92;

  v96 = swift_allocObject();
  *(v96 + 16) = v12;
  *&aBlock.m21 = sub_1D7014;
  *&aBlock.m22 = v96;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_2504C4;
  *&aBlock.m14 = &block_descriptor_23_0;
  v97 = _Block_copy(&aBlock);
  v98 = v94;

  [v90 animateWithDuration:131201 delay:v93 options:v97 animations:0.35 completion:0.0];

  _Block_release(v97);
  _Block_release(v93);
}

void sub_1D6ACC(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 48);
    v10 = (v7 + 48);
    do
    {
      v11 = *v10;
      v10 += 24;
      if (v11 == 1)
      {
        v12 = *(v9 - 2);

        v12(1, 1);
      }

      v9 = v10;
      --v8;
    }

    while (v8);
  }

  if (a2)
  {
    swift_beginAccess();
    [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21BouncyToRectAnimation_toRect + 32) == 1)
    {
      [a2 setAlpha:0.0];
    }
  }
}

void sub_1D6BF4(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_124C4(0, &qword_3FBD90, UIView_ptr);
    v3 = sub_30C368();

    v4 = sub_1D57C0(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = sub_30D578();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
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
  }

  else
  {
    __break(1u);
  }
}

id sub_1D6E90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1D6EF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D6F88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1D6FDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1D701C(void *a1)
{
  v35 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v35)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 tabBar];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v35 = v35;
      v13 = [v3 view];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [v13 resizableSnapshotViewFromRect:0 afterScreenUpdates:v6 withCapInsets:{v8, v10, v12, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      if (v15)
      {
        v16 = [a1 containerView];
        v17 = [v3 view];

        [v16 convertRect:v17 fromView:{v6, v8, v10, v12}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v15 setFrame:{v19, v21 + v25, v23, v25}];
        v26 = [a1 containerView];
        [v26 addSubview:v15];

        v27 = [v3 tabBar];
        [v27 setAlpha:0.0];

        v28 = objc_opt_self();
        v29 = swift_allocObject();
        *(v29 + 16) = v15;
        v40 = sub_1D73F8;
        v41 = v29;
        aBlock = _NSConcreteStackBlock;
        v37 = 1107296256;
        v38 = sub_914CC;
        v39 = &block_descriptor_29_0;
        v30 = _Block_copy(&aBlock);
        v31 = v15;

        v32 = swift_allocObject();
        *(v32 + 16) = v3;
        v40 = sub_1D7400;
        v41 = v32;
        aBlock = _NSConcreteStackBlock;
        v37 = 1107296256;
        v38 = sub_2504C4;
        v39 = &block_descriptor_35;
        v33 = _Block_copy(&aBlock);
        v34 = v35;

        [v28 animateWithDuration:0x20000 delay:v30 options:v33 animations:0.233333333 completion:0.0];

        _Block_release(v33);
        _Block_release(v30);
        return;
      }
    }
  }
}

void sub_1D7440(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:0.0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7540(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardDismissalAnimator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1D7598(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v14 = sub_1D779C;
    v15 = v5;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_914CC;
    v13 = &block_descriptor_42;
    v6 = _Block_copy(&v10);
    v7 = v3;

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v14 = sub_1D77F4;
    v15 = v8;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_2504C4;
    v13 = &block_descriptor_9_0;
    v9 = _Block_copy(&v10);
    swift_unknownObjectRetain();

    [v4 animateWithDuration:v6 animations:v9 completion:0.15];
    _Block_release(v9);
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7764()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D77BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1D77F4()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

void sub_1D7854(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:1.0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7954(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardPresentationAnimator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1D79AC(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha:0.0];

      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v16 = sub_1D7BDC;
      v17 = v7;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_914CC;
      v15 = &block_descriptor_43;
      v8 = _Block_copy(&v12);
      v9 = v3;

      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      v16 = sub_1D7C34;
      v17 = v10;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_2504C4;
      v15 = &block_descriptor_9_1;
      v11 = _Block_copy(&v12);
      swift_unknownObjectRetain();

      [v6 animateWithDuration:v8 animations:v11 completion:0.25];
      _Block_release(v11);
      _Block_release(v8);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7BA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D7BFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1D7D00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CrossFadeAnimator();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1D7D58(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 view];
      if (v6)
      {
        v7 = v6;
        [v6 setAlpha:0.0];

        v8 = [a1 containerView];
        v9 = [v3 view];
        if (v9)
        {
          v10 = v9;
          [v8 addSubview:v9];

          v11 = [a1 containerView];
          v12 = [v5 view];
          if (v12)
          {
            v13 = v12;
            [v11 addSubview:v12];

            v14 = objc_opt_self();
            v15 = swift_allocObject();
            *(v15 + 16) = v5;
            v24 = sub_1D7BDC;
            v25 = v15;
            v20 = _NSConcreteStackBlock;
            v21 = 1107296256;
            v22 = sub_914CC;
            v23 = &block_descriptor_44;
            v16 = _Block_copy(&v20);
            v17 = v5;

            v18 = swift_allocObject();
            *(v18 + 16) = a1;
            v24 = sub_1D77F4;
            v25 = v18;
            v20 = _NSConcreteStackBlock;
            v21 = 1107296256;
            v22 = sub_2504C4;
            v23 = &block_descriptor_9_2;
            v19 = _Block_copy(&v20);
            swift_unknownObjectRetain();

            [v14 animateWithDuration:v16 animations:v19 completion:0.1];
            _Block_release(v19);
            _Block_release(v16);

            return;
          }

          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }
  }

  [a1 completeTransition:1];
}

uint64_t sub_1D8068()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D80B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1D8148(unint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a1 >> 62)
  {
    v8 = sub_30D668();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = sub_30D578();
    }

    else
    {
      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    [v10 frame];
    Height = CGRectGetHeight(v22);
    v21 = 0;
    v19 = a3;
    v20 = Height * a4;
    sub_1564BC();
    sub_3021A8();
    CGAffineTransformMakeTranslation(&ty, 0.0, ty.a);
    [v11 setTransform:&ty];
  }

  while (v8 != v9);
LABEL_10:
  v20 = 0.0;
  v21 = 0x3FF0000000000000;
  v19 = a3;
  sub_1564BC();
  sub_3021A8();
  a = ty.a;
  if (a2 >> 62)
  {
    v14 = sub_30D668();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = sub_30D578();
    }

    else
    {
      v16 = *(a2 + 8 * i + 32);
    }

    v17 = v16;
    [v16 setAlpha:a];
  }
}

void sub_1D8350(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_30D668();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_30D578();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = 0x3FF0000000000000;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v6 setTransform:v12];
  }

  while (v4 != v5);
LABEL_10:
  if (a2 >> 62)
  {
    v8 = sub_30D668();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_30D578();
    }

    else
    {
      v10 = *(a2 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

double sub_1D84E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

void sub_1D8548(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v6 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_interactiveDismissal];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_isScrollDismissActive] = 0;
  v7 = [a1 traitCollection];
  v8 = sub_1DA2B0();

  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView] = v8;
  type metadata accessor for ShadowView();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView] = v9;
  v30.receiver = v2;
  v30.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v30, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v11 = objc_allocWithZone(UITapGestureRecognizer);
  v12 = v10;
  v13 = [v11 initWithTarget:v12 action:"dismissTapDidChange:"];
  v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_dismissTapGestureRecognizer] = v13;
  v15 = v13;

  if (v15)
  {
    v16 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView];
    [v16 addGestureRecognizer:v15];

    v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView;
    v18 = qword_3FAF18;
    v19 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView];
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_42AC48;
    v21 = qword_42AC60;
    v22 = &v19[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v23 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v24 = *algn_42AC50;
    *v22 = qword_42AC48;
    *(v22 + 8) = v24;
    *(v22 + 3) = v21;
    v25 = v20;

    sub_2BF1DC();
    v26 = [*&v12[v17] layer];
    [v26 setMaskedCorners:3];

    [*&v12[v17] _setContinuousCornerRadius:14.0];
    [*&v12[v17] setAutoresizingMask:18];
    v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView;
    [*&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v28 = *&v12[v27];
    v29 = *&v12[v17];
    [v28 bounds];
    [v29 setFrame:?];

    [*&v12[v27] addSubview:*&v12[v17]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D8924()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = [v4 horizontalSizeClass];

    v6 = [v1 presentingViewController];
    v7 = v6;
    if (v5 == &dword_0 + 2)
    {
      v8 = UIViewController.presentedArticleWidth.getter();

      [v3 bounds];
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      v13 = CGRectGetHeight(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v14 = CGRectGetMidX(v24) + v8 * -0.5;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      CGRectGetMinY(v25);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      CGRectGetHeight(v26);
      UIEdgeInsetsInsetRect_2(v14);
      v15 = [v1 presentedViewController];
      type metadata accessor for ModelViewOverflowViewController();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_modelView + 8);
        v18 = v16;
        swift_getObjectType();
        v22 = 1;
        (*(v17 + 32))(v18 + OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_model, v18, &protocol witness table for UIViewController, &v22, 1, 1, v8, v13);
        if (v19 < v13)
        {
          v20 = v19;
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = height;
          CGRectGetMidX(v27);
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          floor(CGRectGetMidY(v28) - v20 * 0.5);
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          CGRectGetHeight(v29);
        }
      }

      else
      {
      }
    }

    else
    {
      v21 = [v6 view];

      if (v21)
      {
        [v21 bounds];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1D8C4C(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1DA4BC;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1D84E8;
    v11[3] = &block_descriptor_19_1;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_1D8D84(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == &dword_0 + 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_1D9018()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_1DA384(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_1DA384(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentingViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_1DA2A8;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D84E8;
      aBlock[3] = &block_descriptor_13_0;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D93A4(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == &dword_0 + 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_1D94EC(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

double sub_1D963C()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_1DA2A0;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1D84E8;
    v7[3] = &block_descriptor_7_0;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v0;

    [v2 animateAlongsideTransition:v5 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D9768(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1D9944()
{
  v4 = [v0 presentedViewController];
  sub_122394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4089E0, &qword_32BD48);
  if (swift_dynamicCast())
  {
    sub_12658(v2, v5);
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    sub_283AE4();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    return sub_EB68(v2, &unk_4089E8, &unk_32BD50);
  }
}

void sub_1D9AAC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v45) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != &dword_0 + 3)
          {
LABEL_31:
            [a1 state];
            goto LABEL_32;
          }

          if (v11 == 1.0)
          {
            v38 = [v1 presentedViewController];
            [v38 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_32;
          }
        }
      }

      else if (v12)
      {
        if (v12 == &dword_0 + 1)
        {
          goto LABEL_32;
        }

        if (v12 == &dword_0 + 2)
        {
          v13 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          v14 = *(v13 + 3);
          if (v14)
          {
            v15 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
            sub_1D8148(*v15, v15[1], v11, *(v15 + 2));
          }

LABEL_34:

          return;
        }

        goto LABEL_31;
      }

      v29 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      v30 = *(v29 + 3);
      if (v30)
      {
        v31 = __swift_project_boxed_opaque_existential_1Tm(v29, v30);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        v35 = objc_opt_self();
        v36 = swift_allocObject();
        v36[2] = v32;
        v36[3] = v33;
        v36[4] = v34;
        v42 = sub_1DA244;
        v43 = v36;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v41 = sub_914CC;
        *(&v41 + 1) = &block_descriptor_45;
        v37 = _Block_copy(&aBlock);

        [v35 animateWithDuration:v37 animations:0.15];
        _Block_release(v37);
      }

      v42 = 0;
      aBlock = 0u;
      v41 = 0u;
      swift_beginAccess();
      sub_1DA194(&aBlock, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != &dword_0 + 1 || (v16 = objc_msgSend(v1, "traitCollection"), v17 = objc_msgSend(v16, "horizontalSizeClass"), v16, v17 != &dword_0 + 2) || (objc_msgSend(v39, "contentOffset"), v19 = v18, objc_msgSend(v39, "adjustedContentInset"), v19 + v20 > 0.0))
      {
LABEL_32:

        goto LABEL_34;
      }

      [v39 adjustedContentInset];
      [v39 contentOffset];
      [v39 setContentOffset:?];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_317F20;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v42 = &off_3BEC38;
        *&aBlock = v21;
        *(&aBlock + 1) = _swiftEmptyArrayStorage;
        *&v41 = 0x3FB1EB851EB851ECLL;
        *(&v41 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_1DA194(&aBlock, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1DA194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4089F8, qword_32BD60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA204()
{

  return _swift_deallocObject(v0, 40, 7);
}

double block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DA268()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1DA2B0()
{
  if (sub_30C968())
  {
    v0 = [objc_allocWithZone(UIView) init];
    v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.45];
    [v0 setBackgroundColor:v1];
  }

  else
  {
    v1 = [objc_opt_self() effectWithStyle:4];
    v0 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];
  }

  return v0;
}

void sub_1DA384(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_1DA47C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1DA4F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_301F38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];
    sub_1DB2E8(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning_selectedIndexPath, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1DB358(v3);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (v10)
      {
        v11 = v10;
        isa = sub_301EA8().super.isa;
        v13 = [v11 cellForItemAtIndexPath:isa];

        (*(v5 + 8))(v7, v4);
        return v13;
      }

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }

  return result;
}

void sub_1DA718(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong splitViewController];

    if (v4)
    {
      v5 = sub_1DA4F4();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_9:
    v23 = 0uLL;
    v22 = 1;
    v24 = 0uLL;
    goto LABEL_10;
  }

  v4 = v25;
  v5 = sub_1DA4F4();
  if (!v5)
  {
LABEL_8:

    goto LABEL_9;
  }

LABEL_4:
  v6 = v5;
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    [v6 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v6 superview];
    [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
    v27 = v18;
    v28 = v19;
    v26 = v20;
    v29 = v21;

    *&v24 = v26;
    *&v23 = v27;
    v22 = 0;
    *(&v23 + 1) = v28;
    *(&v24 + 1) = v29;
LABEL_10:
    *a1 = v23;
    *(a1 + 16) = v24;
    *(a1 + 32) = v22;
    return;
  }

  __break(1u);
}

char *sub_1DA9B8(void *a1)
{
  sub_1DA718(v25);
  v3 = type metadata accessor for BouncyToRectAnimation();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21BouncyToRectAnimation_toRect];
  v5[32] = v26;
  v6 = v25[1];
  *v5 = v25[0];
  *(v5 + 1) = v6;
  v24.receiver = v4;
  v24.super_class = v3;
  v7 = objc_msgSendSuper2(&v24, "init");
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v10 = *&v7[v9];
  v11 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v9] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_CB5FC(0, *(v10 + 2) + 1, 1, v10);
    *&v7[v9] = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_CB5FC((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[24 * v14];
  *(v15 + 4) = sub_1DB2C0;
  *(v15 + 5) = v8;
  v15[48] = 1;
  *&v7[v9] = v10;
  swift_endAccess();

  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  swift_beginAccess();
  v17 = *&v7[v9];
  v18 = v1;

  v19 = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v9] = v17;
  if ((v19 & 1) == 0)
  {
    v17 = sub_CB5FC(0, *(v17 + 2) + 1, 1, v17);
    *&v7[v9] = v17;
  }

  v21 = *(v17 + 2);
  v20 = *(v17 + 3);
  if (v21 >= v20 >> 1)
  {
    v17 = sub_CB5FC((v20 > 1), v21 + 1, 1, v17);
  }

  *(v17 + 2) = v21 + 1;
  v22 = &v17[24 * v21];
  *(v22 + 4) = sub_1DB2C8;
  *(v22 + 5) = v16;
  v22[48] = 2;
  *&v7[v9] = v17;
  swift_endAccess();

  return v7;
}

void sub_1DAC18(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v13 = v3;
    type metadata accessor for ModelViewOverflowPresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      sub_1D9944();
      v6 = (v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_interactiveDismissal);
      swift_beginAccess();
      v7 = v6[3];
      if (v7)
      {
        v8 = *__swift_project_boxed_opaque_existential_1Tm(v6, v7);
        if (v8 >> 62)
        {
          v9 = sub_30D668();
          if (v9)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
          if (v9)
          {
LABEL_6:
            if (v9 < 1)
            {
              __break(1u);
              return;
            }

            v10 = 0;
            do
            {
              if ((v8 & 0xC000000000000001) != 0)
              {
                v11 = sub_30D578();
              }

              else
              {
                v11 = *(v8 + 8 * v10 + 32);
              }

              v12 = v11;
              ++v10;
              v14[1] = 0;
              v14[2] = 0;
              v14[0] = 0x3FF0000000000000;
              v14[3] = 0x3FF0000000000000;
              v14[4] = 0;
              v14[5] = 0;
              [v11 setTransform:{v14, v13}];
            }

            while (v9 != v10);
          }
        }
      }

      return;
    }
  }
}

void sub_1DADA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_301F38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [Strong collectionView];
    sub_1DB2E8(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning_selectedIndexPath, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1DB358(v8);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      if (v15)
      {
        v16 = v15;
        isa = sub_301EA8().super.isa;
        v18 = [v16 cellForItemAtIndexPath:isa];

        (*(v10 + 8))(v12, v9);
        if (v18)
        {
          [v18 setHidden:a4 & 1];
        }
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }
  }
}

uint64_t type metadata accessor for ModelViewOverflowTransitioning(uint64_t a1)
{
  result = qword_408A40;
  if (!qword_408A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB1D8(uint64_t a1)
{
  sub_182774(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DB288()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1DB2E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1DB3C0()
{
  sub_1DA718(v16);
  v1 = type metadata accessor for BouncyFromRectAnimation();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23BouncyFromRectAnimation_fromRect];
  v3[32] = v17;
  v4 = v16[1];
  *v3 = v16[0];
  *(v3 + 1) = v4;
  v15.receiver = v2;
  v15.super_class = v1;
  v5 = objc_msgSendSuper2(&v15, "init");
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v8 = *&v5[v7];
  v9 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v5[v7] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_CB5FC(0, *(v8 + 2) + 1, 1, v8);
    *&v5[v7] = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_CB5FC((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[24 * v12];
  *(v13 + 4) = sub_1DB530;
  *(v13 + 5) = v6;
  v13[48] = 0;
  *&v5[v7] = v8;
  swift_endAccess();

  return v5;
}

id sub_1DB600(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for StaticTransitionAnimator();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1DB658(void *a1)
{
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v6)
  {
    v2 = [a1 containerView];
    v3 = [v6 view];
    if (v3)
    {
      v4 = v3;
      [v2 addSubview:v3];

      [a1 completeTransition:{objc_msgSend(a1, "transitionWasCancelled") ^ 1}];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = [a1 transitionWasCancelled] ^ 1;

    [a1 completeTransition:v5];
  }
}

uint64_t TransitioningDelegateProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TransitioningDelegateProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

unint64_t sub_1DB7BC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1DB818();
    *(v0 + 16) = v1;
  }

  return v1;
}

unint64_t sub_1DB818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408B48, &qword_32BEE0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408B50, qword_32BEE8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v21 = 2 * v1;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_318FC0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = enum case for FlowPresentationContext.presentModalCard(_:);
  v7 = sub_30A4E8();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  v9 = type metadata accessor for CardTransitioningDelegate();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 16) = 257;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  *(v11 + 56) = xmmword_31D770;
  v11[72] = 0;
  *(v11 + 10) = 15;
  v24.receiver = v10;
  v24.super_class = v9;
  *(v4 + v5) = objc_msgSendSuper2(&v24, "init");
  v12 = v4 + v1;
  v13 = *(v0 + 48);
  v8(v12, enum case for FlowPresentationContext.presentCard(_:), v7);
  v14 = objc_allocWithZone(v9);
  v15 = &v14[OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 16) = 257;
  *(v15 + 19) = v26;
  *(v15 + 34) = *&v25[7];
  *(v15 + 5) = 0;
  *(v15 + 6) = 0;
  *(v15 + 56) = xmmword_32BE60;
  v15[72] = 0;
  *(v15 + 73) = *v25;
  *(v15 + 19) = *&v25[3];
  *(v15 + 10) = 15;
  v23.receiver = v14;
  v23.super_class = v9;
  *(v12 + v13) = objc_msgSendSuper2(&v23, "init");
  v16 = *(v0 + 48);
  v8(v4 + v21, enum case for FlowPresentationContext.presentSheet(_:), v7);
  v17 = objc_allocWithZone(v9);
  v18 = &v17[OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 16) = 257;
  *(v18 + 19) = v28;
  *(v18 + 34) = *&v27[7];
  *(v18 + 5) = 0;
  *(v18 + 6) = 0;
  *(v18 + 56) = xmmword_32BE70;
  v18[72] = 1;
  *(v18 + 73) = *v27;
  *(v18 + 19) = *&v27[3];
  *(v18 + 10) = 12;
  v22.receiver = v17;
  v22.super_class = v9;
  *(v4 + v21 + v16) = objc_msgSendSuper2(&v22, "init");
  v19 = sub_2D69A0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19;
}

void *sub_1DBB40(uint64_t a1)
{
  v2 = sub_1DB7BC();
  if (*(v2 + 16) && (v3 = sub_1918A4(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t TransitioningDelegateProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_3041E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_30D558(52);
  v18._object = 0x8000000000340170;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  sub_30C238(v18);
  v19._countAndFlagsBits = sub_30D8A8();
  sub_30C238(v19);

  v20._countAndFlagsBits = 0x7374636570786520;
  v20._object = 0xE900000000000020;
  sub_30C238(v20);
  v21._countAndFlagsBits = sub_30D8A8();
  sub_30C238(v21);

  v22._countAndFlagsBits = 0x766965636572202CLL;
  v22._object = 0xEB00000000206465;
  sub_30C238(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560, &qword_32CDD0);
  sub_30D638();
  v9 = v16;
  v8 = v17;
  sub_304158();

  v10 = sub_3041D8();
  v11 = sub_30C7A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    v14 = sub_191264(v9, v8, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DC014(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, int a6, uint64_t a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v33 = a6;
  v31 = a5;
  v34 = a3;
  v35 = a7;
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_30D3A8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30[-v19];
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = &v30[-v23];
  v25 = *a4;
  sub_12670(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560, &qword_32CDD0);
  v26 = swift_dynamicCast();
  v27 = *(v21 + 56);
  if (v26)
  {
    v27(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    v36[0] = v25;
    (*(a11 + 48))(v24, v32, v34, v36, v31 & 1, v33 & 1, v35, a11, a8, a9);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v27(v20, 1, 1, AssociatedTypeWitness);
    (*(v18 + 8))(v20, v17);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_1DBC8C(a1, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  }
}

uint64_t sub_1DC39C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x656C746974;
    if (a1 != 6)
    {
      v10 = 0x7972616D6D7573;
      v9 = 0xE700000000000000;
    }

    v11 = 0xD00000000000001DLL;
    v12 = 0x8000000000335CA0;
    if (a1 != 4)
    {
      v11 = 0x6E6F73616572;
      v12 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x4965646F73697065;
    v5 = 0xEB000000006F666ELL;
    if (a1 != 2)
    {
      v4 = 0x75747865746E6F63;
      v5 = 0xEE00756E654D6C61;
    }

    v6 = 0x746E6F4379616C70;
    if (a1)
    {
      v3 = 0xEC000000736C6F72;
    }

    else
    {
      v6 = 0x6B726F77747261;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x656C746974)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x7972616D6D7573)
        {
LABEL_47:
          v14 = sub_30D728();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x8000000000335CA0;
      if (v7 != 0xD00000000000001DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x6E6F73616572)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB000000006F666ELL;
      if (v7 != 0x4965646F73697065)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEE00756E654D6C61;
      if (v7 != 0x75747865746E6F63)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEC000000736C6F72;
    if (v7 != 0x746E6F4379616C70)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6B726F77747261)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1DC644(uint64_t a1, char *a2, void *a3, char a4)
{
  v83 = a1;
  v7 = sub_30BB28();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v77 - v12;
  __chkstk_darwin(v13);
  v78 = &v77 - v14;
  __chkstk_darwin(v15);
  v82 = &v77 - v16;
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  __chkstk_darwin(v20);
  v22 = &v77 - v21;
  __chkstk_darwin(v23);
  v25 = &v77 - v24;
  __chkstk_darwin(v26);
  v79 = &v77 - v27;
  __chkstk_darwin(v28);
  v80 = &v77 - v29;
  __chkstk_darwin(v30);
  v81 = &v77 - v31;
  sub_12670(a3, &v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0, &qword_31DC90);
  sub_309548();
  if (swift_dynamicCast())
  {
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    LOBYTE(v84) = a4;
    sub_30D638();

    *&v87 = sub_307D98();
    sub_1D770();
    v32 = sub_30D438();
    *(&v88 + 1) = &type metadata for String;
    *&v87 = v32;
    *(&v87 + 1) = v33;
    v34 = sub_3070A8();
    v86 = &type metadata for String;
    v84 = v34;
    v85 = v35;
    v36 = v82;
    sub_30BB18();

    sub_9097C(&v84);
    sub_9097C(&v87);
    v37 = sub_301EF8();
    *(&v88 + 1) = &type metadata for Int;
    *&v87 = v37;
    sub_30BB08();
    v38 = *(v8 + 8);
    v38(v36, v7);
    sub_9097C(&v87);
    v39 = sub_307D08();

    *(&v88 + 1) = &type metadata for Bool;
    LOBYTE(v87) = v39 & 1;
    sub_30BB08();
    v38(v19, v7);
    sub_9097C(&v87);
    v40 = sub_301F08();
    *(&v88 + 1) = &type metadata for Int;
    *&v87 = v40;
    sub_30BB08();
    v38(v22, v7);
    sub_9097C(&v87);
    *(&v88 + 1) = &type metadata for Bool;
    LOBYTE(v87) = 1;
    v41 = v79;
    sub_30BB08();
    v38(v25, v7);
    sub_9097C(&v87);
    v42 = sub_309508();
    if (v43)
    {
      v42 = 0;
      v44 = 0;
      *(&v87 + 1) = 0;
      *&v88 = 0;
    }

    else
    {
      v44 = &type metadata for Double;
    }

    *&v87 = v42;
    *(&v88 + 1) = v44;
    v56 = v80;
    sub_30BB08();
    v38(v41, v7);
    sub_9097C(&v87);
    sub_309518();
    v57 = sub_3036D8();
    *(&v88 + 1) = &type metadata for String;
    *&v87 = v57;
    *(&v87 + 1) = v58;
    v59 = v81;
    sub_30BB08();
    v38(v56, v7);
    sub_9097C(&v87);
    sub_30CED8();

    return (v38)(v59, v7);
  }

  else
  {
    v80 = v25;
    v81 = a2;
    sub_12670(a3, &v87);
    sub_307DF8();
    if (swift_dynamicCast())
    {
      *&v87 = 0;
      *(&v87 + 1) = 0xE000000000000000;
      LOBYTE(v84) = a4;
      sub_30D638();
      *&v87 = sub_307D98();
      sub_1D770();
      v45 = sub_30D438();
      *(&v88 + 1) = &type metadata for String;
      *&v87 = v45;
      *(&v87 + 1) = v46;
      v47 = sub_3070A8();
      v86 = &type metadata for String;
      v84 = v47;
      v85 = v48;
      v49 = v82;
      sub_30BB18();

      sub_9097C(&v84);
      sub_9097C(&v87);
      v50 = sub_301EF8();
      *(&v88 + 1) = &type metadata for Int;
      *&v87 = v50;
      sub_30BB08();
      v51 = *(v8 + 8);
      v51(v49, v7);
      sub_9097C(&v87);
      v52 = sub_307D08();
      *(&v88 + 1) = &type metadata for Bool;
      LOBYTE(v87) = v52 & 1;
      sub_30BB08();
      v51(v19, v7);
      sub_9097C(&v87);
      v53 = sub_301F08();
      *(&v88 + 1) = &type metadata for Int;
      *&v87 = v53;
      v54 = v80;
      sub_30BB08();
      v51(v22, v7);
      sub_9097C(&v87);
      sub_30CED8();

      return (v51)(v54, v7);
    }

    else
    {
      sub_12670(a3, &v87);
      sub_307938();
      if (swift_dynamicCast())
      {
        *&v87 = 0;
        *(&v87 + 1) = 0xE000000000000000;
        LOBYTE(v84) = a4;
        sub_30D638();
        if (sub_307818() && (v60 = sub_3092F8(), v62 = v61, , (v62 & 1) == 0))
        {
          *(&v88 + 1) = &type metadata for AdamID;
          *&v87 = v60;
        }

        else
        {
          v87 = 0u;
          v88 = 0u;
        }

        v70 = sub_3070A8();
        v86 = &type metadata for String;
        v84 = v70;
        v85 = v71;
        sub_30BB18();

        sub_9097C(&v84);
        sub_9097C(&v87);
        v72 = sub_301EF8();
        *(&v88 + 1) = &type metadata for Int;
        *&v87 = v72;
        v73 = v77;
        sub_30BB08();
        v74 = *(v8 + 8);
        v74(v10, v7);
        sub_9097C(&v87);
        v75 = sub_301F08();
        *(&v88 + 1) = &type metadata for Int;
        *&v87 = v75;
        v76 = v78;
        sub_30BB08();
        v74(v73, v7);
        sub_9097C(&v87);
        sub_30CED8();

        return (v74)(v76, v7);
      }

      else
      {
        *&v87 = 0;
        *(&v87 + 1) = 0xE000000000000000;
        LOBYTE(v84) = a4;
        sub_30D638();
        __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
        v63 = sub_307118();
        *(&v88 + 1) = &type metadata for String;
        *&v87 = v63;
        *(&v87 + 1) = v64;
        v65 = sub_3070A8();
        v86 = &type metadata for String;
        v84 = v65;
        v85 = v66;
        sub_30BB18();

        sub_9097C(&v84);
        sub_9097C(&v87);
        v67 = sub_301F08();
        *(&v88 + 1) = &type metadata for Int;
        *&v87 = v67;
        v68 = v80;
        sub_30BB08();
        v69 = *(v8 + 8);
        v69(v22, v7);
        sub_9097C(&v87);
        sub_30CED8();
        return (v69)(v68, v7);
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ShelfItemSubcomponentID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShelfItemSubcomponentID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductPageID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductPageID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DD3B8(char a1)
{
  result = 0x6C746954776F6873;
  switch(a1)
  {
    case 1:
      result = 0x766F7250776F6873;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x7375615079616C70;
      break;
    case 5:
      result = 0x7261646E6F636573;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0x42747865746E6F63;
      break;
    case 8:
      result = 0x6269726373627573;
      break;
    case 9:
      result = 0x73746966656E6562;
      break;
    case 10:
      result = 0x566B726F77747261;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x61426C6C65737075;
      break;
    case 15:
      result = 0x617461646174656DLL;
      break;
    case 16:
      result = 0x6956676E69746172;
      break;
    case 17:
      result = 1852793705;
      break;
    case 18:
      result = 0x5465646F73697065;
      break;
    case 19:
      result = 0x5365646F73697065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD694(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DD3B8(*a1);
  v5 = v4;
  if (v3 == sub_1DD3B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_30D728();
  }

  return v8 & 1;
}

Swift::Int sub_1DD71C()
{
  v1 = *v0;
  sub_30D7F8();
  sub_1DD3B8(v1);
  sub_30C1F8();

  return sub_30D858();
}

double sub_1DD780(uint64_t a1)
{
  sub_1DD3B8(*v1);
  sub_30C1F8();

  return result;
}

Swift::Int sub_1DD7D4(uint64_t a1)
{
  v2 = *v1;
  sub_30D7F8();
  sub_1DD3B8(v2);
  sub_30C1F8();

  return sub_30D858();
}

unint64_t sub_1DD834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDB00(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD864@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD3B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD8A4()
{
  result = qword_408C00;
  if (!qword_408C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408C00);
  }

  return result;
}

unint64_t sub_1DD950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDB54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD980(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6B726F77747261;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  if (v2 != 6)
  {
    v6 = 0x7972616D6D7573;
    v5 = 0xE700000000000000;
  }

  v7 = 0x8000000000335CA0;
  v8 = 0xD00000000000001DLL;
  if (v2 != 4)
  {
    v8 = 0x6E6F73616572;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006F666ELL;
  v10 = 0x4965646F73697065;
  if (v2 != 2)
  {
    v10 = 0x75747865746E6F63;
    v9 = 0xEE00756E654D6C61;
  }

  if (*v1)
  {
    v4 = 0x746E6F4379616C70;
    v3 = 0xEC000000736C6F72;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DDAAC()
{
  result = qword_408C18;
  if (!qword_408C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408C18);
  }

  return result;
}

unint64_t sub_1DDB00(uint64_t a1, uint64_t a2)
{
  v2 = sub_30D748();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DDB54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3B4A30;
  v6._object = a2;
  v4 = sub_30D6B8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

void sub_1DDBC4(uint64_t a1)
{
  v3 = sub_301988();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0, &unk_328D90);
  __chkstk_darwin(v6 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401140, &qword_31EA90);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = qword_400DC0;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_EB00(v1 + v15, v14, &unk_4067B0, &unk_328D90);
  sub_EB00(a1, &v14[v16], &unk_4067B0, &unk_328D90);
  v17 = *(v4 + 48);
  if (v17(v14, 1, v3) == 1)
  {
    if (v17(&v14[v16], 1, v3) == 1)
    {
      sub_EB68(v14, &unk_4067B0, &unk_328D90);
      return;
    }
  }

  else
  {
    sub_EB00(v14, v10, &unk_4067B0, &unk_328D90);
    if (v17(&v14[v16], 1, v3) != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v24, &v14[v16], v3);
      sub_218910(&unk_408FF0, &type metadata accessor for EntityIdentifier, &protocol conformance descriptor for EntityIdentifier);
      v21 = sub_30C018();
      v22 = *(v4 + 8);
      v22(v20, v3);
      v22(v10, v3);
      sub_EB68(v14, &unk_4067B0, &unk_328D90);
      if (v21)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v10, v3);
  }

  sub_EB68(v14, &qword_401140, &qword_31EA90);
LABEL_7:
  if ([v1 isViewLoaded])
  {
    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      sub_EB00(v1 + v15, v25, &unk_4067B0, &unk_328D90);
      sub_30CEC8();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DDF9C(uint64_t (*a1)(void, double), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = v4;
  v10 = sub_302218();
  __chkstk_darwin(v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v21 - v15;
  v17 = *(v4 + qword_400D60);
  a1(0, v14);
  sub_218910(a2, a3, a4);
  sub_309558();
  sub_218BF8(v16, v12, &type metadata accessor for InteractionContext.Page);
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    v18 = 6;
LABEL_6:
    v19 = sub_3083D8();
    sub_1DB3C(v18);
    return v19;
  }

  sub_218C60(v12, &type metadata accessor for InteractionContext.Page);
  v18 = *(v9 + qword_400D68);
  if (v18 != 19)
  {
    sub_BA538(v18);
    goto LABEL_6;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  v21[1] = v17;
  sub_30D638();
  return v22;
}

char *sub_1DE168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v150 = a7;
  v151 = a8;
  v143 = a6;
  v149 = a5;
  v140 = a4;
  v121 = a3;
  v119 = a2;
  v20 = v19;
  v142 = a1;
  v139 = a19;
  v135 = a18;
  v130 = a17;
  v127 = a16;
  v125 = a15;
  v124 = a14;
  v122 = a13;
  v147 = a11;
  v148 = a12;
  v144 = a9;
  v145 = a10;
  ObjectType = swift_getObjectType();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F0, &qword_31EA28);
  v138 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v113 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30, &qword_31EA30);
  __chkstk_darwin(v22 - 8);
  v131 = &v113 - v23;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F8, &qword_31EA38);
  v134 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v113 - v24;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970, &unk_32C590);
  v129 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v113 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401100, &unk_31EA40);
  __chkstk_darwin(v26 - 8);
  v120 = &v113 - v27;
  v118 = sub_30BC58();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_30BD28();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v113 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018, &unk_31E910);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v113 - v36;
  *&v20[qword_400D58] = 0;
  *&v20[qword_400E48] = _swiftEmptyArrayStorage;
  *&v20[qword_400E20] = 0;
  v38 = qword_4290D0;
  v39 = enum case for FlowDestinationPageHeader.standard(_:);
  v40 = sub_30AA18();
  (*(*(v40 - 8) + 104))(&v20[v38], v39, v40);
  v41 = &v20[qword_400D70];
  *v41 = 0;
  v41[1] = 0;
  v42 = qword_400E80;
  type metadata accessor for PageNavigationItem();
  v43 = swift_allocObject();
  v43[3] = 0;
  v43[4] = 0;
  v43[2] = 0;
  *(v43 + 37) = 0;
  *&v20[v42] = v43;
  *&v20[qword_400D68] = 19;
  v44 = qword_400DC0;
  v45 = sub_301988();
  (*(*(v45 - 8) + 56))(&v20[v44], 1, 1, v45);
  v46 = qword_400E88;
  LOBYTE(v155) = 0;
  sub_304DF8();
  (*(v35 + 32))(&v20[v46], v37, v34);
  v20[qword_400DF8] = 0;
  v47 = qword_400E90;
  v48 = sub_302218();
  (*(*(v48 - 8) + 56))(&v20[v47], 1, 1, v48);
  v20[qword_400E98] = 1;
  *&v20[qword_4290D8] = _swiftEmptyArrayStorage;
  *&v20[qword_400DE8] = _swiftEmptyArrayStorage;
  v49 = qword_400EA0;
  v50 = sub_30BE68();
  (*(*(v50 - 8) + 56))(&v20[v49], 1, 1, v50);
  v20[qword_400DB0] = 0;
  sub_307B08();
  swift_storeEnumTagMultiPayload();
  *&v20[qword_4290E0] = 0;
  *&v20[qword_400EA8] = 0x3FE0000000000000;
  *&v20[qword_400EB0] = 0;
  v51 = &v20[qword_400EB8];
  *v51 = 0;
  v51[1] = 0;
  v51[2] = 0;
  *&v20[qword_400EC0] = 0;
  v52 = &v20[qword_400EC8];
  *v52 = 0;
  *(v52 + 1) = 0;
  v52[16] = 0;
  v53 = &v20[qword_400DB8];
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50, &unk_32C5A0) + 48);
  v55 = sub_30B0B8();
  (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
  v53[v54] = 0;
  *&v20[qword_400ED0] = 0;
  v20[qword_400ED8] = 0;
  *&v20[qword_400EE0] = 0;
  v20[qword_400EE8] = 0;
  v20[qword_400EF0] = 1;
  v20[qword_400E40] = 0;
  *&v20[qword_400D98] = 0;
  sub_30B8E8();
  (*(v31 + 32))(&v20[qword_4290C8], v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401108, &qword_328D70);
  sub_30B8E8();
  *&v20[qword_400E28] = v155;
  sub_302528();
  sub_30B8C8();
  *&v20[qword_400D88] = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30, &unk_31EA50);
  sub_30B8E8();
  sub_12658(&v155, &v20[qword_400E78]);
  type metadata accessor for PageActionRunner();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *&v20[qword_400E70] = v56;
  sub_3098F8();
  swift_allocObject();

  v57 = sub_3098E8();
  *&v20[qword_400E30] = v57;
  v58 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60, &qword_3174B0);
  v59 = sub_218910(&qword_401048, type metadata accessor for PageActionRunner, &unk_317CA4);
  *&v155 = v56;
  *(&v155 + 1) = v59;
  v123 = v56;

  v141 = v58;

  sub_30B908();

  *&v155 = v58;
  sub_30B908();

  sub_30A528();
  swift_allocObject();
  *&v155 = sub_30A4F8();
  sub_30B908();

  sub_302448();
  swift_allocObject();
  *&v155 = sub_302438();
  sub_30B908();

  sub_30B948();

  v60 = v113;
  sub_30BD18();
  sub_30B928();

  (*(v114 + 8))(v60, v115);
  v61 = v116;
  sub_30BC48();
  sub_30B938();

  (*(v117 + 8))(v61, v118);
  sub_303958();
  *&v155 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  *&v155 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v62 = sub_30B8F8();

  sub_30B8E8();
  *&v20[qword_400E60] = v155;
  sub_302818();
  sub_30B8E8();
  *&v20[qword_400E68] = v155;
  sub_30B8E8();
  *&v20[qword_400E00] = v155;
  v63 = v62;
  *&v20[qword_400D90] = v62;
  v64 = v149(0);
  v150 = sub_218910(v143, v150, v151);
  swift_retain_n();
  v65 = sub_3096B8();
  *&v20[qword_400D60] = v65;

  v66 = v120;
  sub_3095E8();
  v143 = sub_309658();
  v140 = sub_3095A8();
  LOBYTE(v62) = sub_309648();
  type metadata accessor for ShelvesViewProvider(0);
  v67 = swift_allocObject();
  *(v67 + 16) = 0u;
  *(v67 + 32) = 0u;
  *(v67 + 48) = 0u;
  *(v67 + 64) = 0u;
  *(v67 + 80) = 0u;
  *(v67 + 96) = 0;
  v68 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes;
  v69 = sub_307178();
  (*(*(v69 - 8) + 56))(v67 + v68, 1, 1, v69);
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView) = 0;
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredCellReuseIdentifiers) = &_swiftEmptySetSingleton;
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredSupplementaryViewKinds) = &_swiftEmptySetSingleton;
  v70 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_visiblePageControls;
  v71 = sub_301F38();
  (*(*(v71 - 8) + 56))(v67 + v70, 1, 1, v71);
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets) = &_swiftEmptyDictionarySingleton;
  v72 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCacheTraitCollection;
  v73 = objc_allocWithZone(UITraitCollection);

  *(v67 + v72) = [v73 init];
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache) = &_swiftEmptyDictionarySingleton;
  sub_EB00(v66, v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_deletableExtension, &qword_401100, &unk_31EA40);
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_multiSelectableExtension) = v143;
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_showsHeaders) = v140;
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_hideAllHeaderSeparators) = v62 & 1;
  *(v67 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);

  sub_30B8E8();

  sub_EB68(v66, &qword_401100, &unk_31EA40);
  *&v20[qword_400DA0] = v67;
  v156 = v64;
  v157 = v144;
  v149 = v64;
  v151 = v65;
  *&v155 = v65;

  v74 = sub_309658();
  v75 = objc_allocWithZone(type metadata accessor for ShelvesDelegate(0));
  v121 = v63;

  v77 = sub_17F668(v76, &v155, v74);

  *&v20[qword_400DA8] = v77;
  v78 = [objc_allocWithZone(UICollectionViewLayout) init];
  v154.receiver = v20;
  v154.super_class = ObjectType;
  v79 = objc_msgSendSuper2(&v154, "initWithCollectionViewLayout:", v78);

  v80 = qword_400E70;
  swift_unknownObjectWeakAssign();
  v81 = *&v79[v80];
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = *(v81 + 24);
  v84 = *(v81 + 32);
  *(v81 + 24) = v147;
  *(v81 + 32) = v82;
  v85 = v79;

  sub_1EBD0(v83, v84);

  v86.super.super.isa = v85;
  sub_3098D8(v86);
  v87 = *(v85 + qword_400E80);

  v88 = [(objc_class *)v85 navigationItem];

  v89 = *(v87 + 16);
  *(v87 + 16) = v88;

  *&v155 = sub_309588();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F80, &unk_32C5B0);
  v144 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_EC8C(&qword_401118, &unk_408F80, &unk_32C5B0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_304F58();

  v90 = qword_400DE8;
  swift_beginAccess();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
  v92 = sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
  v143 = v91;
  v140 = v92;
  sub_304CF8();
  swift_endAccess();

  v93 = sub_309578();
  swift_getObjectType();
  *&v155 = v93;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v148 = v85;
  sub_304F58();
  swift_unknownObjectRelease();

  v147 = v85;
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v94 = [objc_opt_self() defaultCenter];
  v95 = v148;
  [v94 addObserver:v148 selector:"splitControllerChanged" name:UIViewControllerShowDetailTargetDidChangeNotification object:0];

  *&v155 = sub_3095D8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FA0, &unk_31EA70);
  v96 = v144;
  sub_EC8C(&qword_401120, &unk_408FA0, &unk_31EA70, v144);
  sub_304F58();

  ObjectType = v90;
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v97 = qword_400DA8;
  v98 = *&v95[qword_400DA8];
  ShelvesDelegate.addDefaultScrollCoordinators()();

  v99 = *&v95[v97];
  v100 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_uberCellPublisher;
  swift_beginAccess();
  v153 = *(v99 + v100);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FB0, &unk_328D60);
  sub_EC8C(&qword_401128, &unk_408FB0, &unk_328D60, v96);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v153 = sub_309568();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FC0, &unk_31EA80);
  v101 = v144;
  sub_EC8C(&qword_401130, &unk_408FC0, &unk_31EA80, v144);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v153 = sub_3095A8();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980, &unk_31F140);
  v125 = sub_EC8C(&qword_400DF0, &unk_401980, &unk_31F140, v101);
  v102 = v126;
  sub_304F48();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_EC8C(&unk_401990, &unk_401970, &unk_32C590, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v103 = v128;
  sub_304F58();

  (*(v129 + 8))(v102, v103);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v153 = sub_3095F8();
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  v104 = sub_30C8F8();
  v152 = v104;
  v105 = sub_30C8E8();
  v106 = v131;
  (*(*(v105 - 8) + 56))(v131, 1, 1, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401138, &unk_32C5C0);
  sub_EC8C(&unk_408FD0, &qword_401138, &unk_32C5C0, v144);
  sub_CF4A8();
  v107 = v132;
  sub_304F28();
  sub_EB68(v106, &unk_408F30, &qword_31EA30);

  swift_allocObject();
  v108 = v148;
  swift_unknownObjectWeakInit();
  sub_EC8C(&unk_408FE0, &qword_4010F8, &qword_31EA38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v109 = v133;
  sub_304F58();

  (*(v134 + 8))(v107, v109);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v153 = sub_309598();
  v110 = v136;
  sub_304F38();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_EC8C(&qword_401A10, &qword_4010F0, &qword_31EA28, &protocol conformance descriptor for Publishers.Drop<A>);
  v111 = v137;
  sub_304F58();

  (*(v138 + 8))(v110, v111);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  return v108;
}

char *sub_1DFD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), unint64_t *a8, uint64_t (*a9)(uint64_t), uint64_t a10, void *a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v159 = a7;
  v160 = a8;
  v158 = a6;
  v127 = a5;
  v124 = a4;
  v23 = v21;
  v151 = a2;
  v148 = a1;
  v145 = a21;
  v141 = a20;
  v136 = a19;
  v133 = a18;
  v131 = a17;
  v130 = a16;
  v128 = a15;
  v156 = a13;
  v157 = a14;
  v155 = a12;
  v152 = a9;
  v153 = a11;
  v146 = a10;
  ObjectType = swift_getObjectType();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F0, &qword_31EA28);
  v144 = *(v143 - 8);
  __chkstk_darwin(v143);
  v142 = &v118 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30, &qword_31EA30);
  __chkstk_darwin(v25 - 8);
  v137 = &v118 - v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F8, &qword_31EA38);
  v140 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v118 - v27;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970, &unk_32C590);
  v135 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v118 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401100, &unk_31EA40);
  v30 = __chkstk_darwin(v29 - 8);
  v126 = &v118 - v31;
  v150 = a3(0, v30);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v125 = &v118 - v32;
  v123 = sub_30BC58();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_30BD28();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v118 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018, &unk_31E910);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v118 - v41;
  *&v23[qword_400D58] = 0;
  *&v23[qword_400E48] = _swiftEmptyArrayStorage;
  *&v23[qword_400E20] = 0;
  v43 = qword_4290D0;
  v44 = enum case for FlowDestinationPageHeader.standard(_:);
  v45 = sub_30AA18();
  (*(*(v45 - 8) + 104))(&v23[v43], v44, v45);
  v46 = &v23[qword_400D70];
  *v46 = 0;
  v46[1] = 0;
  v47 = qword_400E80;
  type metadata accessor for PageNavigationItem();
  v48 = swift_allocObject();
  v48[3] = 0;
  v48[4] = 0;
  v48[2] = 0;
  *(v48 + 37) = 0;
  *&v23[v47] = v48;
  *&v23[qword_400D68] = 19;
  v49 = qword_400DC0;
  v50 = sub_301988();
  (*(*(v50 - 8) + 56))(&v23[v49], 1, 1, v50);
  v51 = qword_400E88;
  LOBYTE(v164) = 0;
  sub_304DF8();
  (*(v40 + 32))(&v23[v51], v42, v39);
  v23[qword_400DF8] = 0;
  v52 = qword_400E90;
  v53 = sub_302218();
  (*(*(v53 - 8) + 56))(&v23[v52], 1, 1, v53);
  v23[qword_400E98] = 1;
  *&v23[qword_4290D8] = _swiftEmptyArrayStorage;
  *&v23[qword_400DE8] = _swiftEmptyArrayStorage;
  v54 = qword_400EA0;
  v55 = sub_30BE68();
  (*(*(v55 - 8) + 56))(&v23[v54], 1, 1, v55);
  v23[qword_400DB0] = 0;
  sub_307B08();
  swift_storeEnumTagMultiPayload();
  *&v23[qword_4290E0] = 0;
  *&v23[qword_400EA8] = 0x3FE0000000000000;
  *&v23[qword_400EB0] = 0;
  v56 = &v23[qword_400EB8];
  *v56 = 0;
  v56[1] = 0;
  v56[2] = 0;
  *&v23[qword_400EC0] = 0;
  v57 = &v23[qword_400EC8];
  *v57 = 0;
  *(v57 + 1) = 0;
  v57[16] = 0;
  v58 = &v23[qword_400DB8];
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50, &unk_32C5A0) + 48);
  v60 = sub_30B0B8();
  (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
  v58[v59] = 0;
  *&v23[qword_400ED0] = 0;
  v23[qword_400ED8] = 0;
  *&v23[qword_400EE0] = 0;
  v23[qword_400EE8] = 0;
  v23[qword_400EF0] = 1;
  v23[qword_400E40] = 0;
  *&v23[qword_400D98] = 0;
  sub_30B8E8();
  (*(v36 + 32))(&v23[qword_4290C8], v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401108, &qword_328D70);
  sub_30B8E8();
  *&v23[qword_400E28] = v164;
  sub_302528();
  sub_30B8C8();
  *&v23[qword_400D88] = v164;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30, &unk_31EA50);
  sub_30B8E8();
  sub_12658(&v164, &v23[qword_400E78]);
  type metadata accessor for PageActionRunner();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *&v23[qword_400E70] = v61;
  sub_3098F8();
  swift_allocObject();

  v62 = sub_3098E8();
  *&v23[qword_400E30] = v62;
  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60, &qword_3174B0);
  v64 = sub_218910(&qword_401048, type metadata accessor for PageActionRunner, &unk_317CA4);
  *&v164 = v61;
  *(&v164 + 1) = v64;
  v129 = v61;

  v147 = v63;

  sub_30B908();

  *&v164 = v63;
  sub_30B908();

  sub_30A528();
  swift_allocObject();
  *&v164 = sub_30A4F8();
  sub_30B908();

  sub_302448();
  swift_allocObject();
  *&v164 = sub_302438();
  sub_30B908();

  sub_30B948();

  v65 = v118;
  sub_30BD18();
  sub_30B928();

  (*(v119 + 8))(v65, v120);
  v66 = v121;
  sub_30BC48();
  sub_30B938();

  (*(v122 + 8))(v66, v123);
  sub_303958();
  *&v164 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  *&v164 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v67 = sub_30B8F8();

  sub_30B8E8();
  *&v23[qword_400E60] = v164;
  sub_302818();
  sub_30B8E8();
  *&v23[qword_400E68] = v164;
  sub_30B8E8();
  *&v23[qword_400E00] = v164;
  *&v23[qword_400D90] = v67;
  v68 = v159(0);
  (*(v149 + 16))(v125, v151, v150);
  v160 = sub_218910(v160, v152, v146);
  swift_retain_n();
  v69 = v67;
  v158 = v68;
  v70 = sub_3096B8();
  *&v23[qword_400D60] = v70;

  v71 = v126;
  sub_3095E8();
  v152 = sub_309658();
  v146 = sub_3095A8();
  LOBYTE(v67) = sub_309648();
  type metadata accessor for ShelvesViewProvider(0);
  v72 = swift_allocObject();
  *(v72 + 16) = 0u;
  *(v72 + 32) = 0u;
  *(v72 + 48) = 0u;
  *(v72 + 64) = 0u;
  *(v72 + 80) = 0u;
  *(v72 + 96) = 0;
  v73 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes;
  v74 = sub_307178();
  (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView) = 0;
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredCellReuseIdentifiers) = &_swiftEmptySetSingleton;
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredSupplementaryViewKinds) = &_swiftEmptySetSingleton;
  v75 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_visiblePageControls;
  v76 = sub_301F38();
  (*(*(v76 - 8) + 56))(v72 + v75, 1, 1, v76);
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets) = &_swiftEmptyDictionarySingleton;
  v77 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCacheTraitCollection;
  v78 = objc_allocWithZone(UITraitCollection);

  *(v72 + v77) = [v78 init];
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache) = &_swiftEmptyDictionarySingleton;
  sub_EB00(v71, v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_deletableExtension, &qword_401100, &unk_31EA40);
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_multiSelectableExtension) = v152;
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_showsHeaders) = v146;
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_hideAllHeaderSeparators) = v67 & 1;
  *(v72 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);

  sub_30B8E8();

  sub_EB68(v71, &qword_401100, &unk_31EA40);
  *&v23[qword_400DA0] = v72;
  v165 = v158;
  v166 = v153;
  *&v164 = v70;

  v159 = v70;
  v79 = sub_309658();
  v80 = objc_allocWithZone(type metadata accessor for ShelvesDelegate(0));
  v127 = v69;

  v82 = sub_17F668(v81, &v164, v79);

  *&v23[qword_400DA8] = v82;
  v83 = [objc_allocWithZone(UICollectionViewLayout) init];
  v163.receiver = v23;
  v163.super_class = ObjectType;
  v84 = objc_msgSendSuper2(&v163, "initWithCollectionViewLayout:", v83);

  v85 = qword_400E70;
  swift_unknownObjectWeakAssign();
  v86 = *&v84[v85];
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = *(v86 + 24);
  v89 = *(v86 + 32);
  *(v86 + 24) = v156;
  *(v86 + 32) = v87;
  v90 = v84;

  sub_1EBD0(v88, v89);

  v91.super.super.isa = v90;
  sub_3098D8(v91);
  v92 = *(v90 + qword_400E80);

  v93 = [(objc_class *)v90 navigationItem];

  v94 = *(v92 + 16);
  *(v92 + 16) = v93;

  *&v164 = sub_309588();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F80, &unk_32C5B0);
  v153 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_EC8C(&qword_401118, &unk_408F80, &unk_32C5B0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_304F58();

  v95 = qword_400DE8;
  swift_beginAccess();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
  v97 = sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
  v157 = v96;
  ObjectType = v97;
  sub_304CF8();
  swift_endAccess();

  v98 = sub_309578();
  swift_getObjectType();
  *&v164 = v98;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v90;
  sub_304F58();
  swift_unknownObjectRelease();

  v152 = v90;
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v99 = [objc_opt_self() defaultCenter];
  v100 = v156;
  [v99 addObserver:v156 selector:"splitControllerChanged" name:UIViewControllerShowDetailTargetDidChangeNotification object:0];

  *&v164 = sub_3095D8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FA0, &unk_31EA70);
  v101 = v153;
  sub_EC8C(&qword_401120, &unk_408FA0, &unk_31EA70, v153);
  sub_304F58();

  v146 = v95;
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v102 = qword_400DA8;
  v103 = *&v100[qword_400DA8];
  ShelvesDelegate.addDefaultScrollCoordinators()();

  v104 = *&v100[v102];
  v105 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_uberCellPublisher;
  swift_beginAccess();
  v162 = *(v104 + v105);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FB0, &unk_328D60);
  sub_EC8C(&qword_401128, &unk_408FB0, &unk_328D60, v101);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v162 = sub_309568();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FC0, &unk_31EA80);
  v106 = v153;
  sub_EC8C(&qword_401130, &unk_408FC0, &unk_31EA80, v153);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v162 = sub_3095A8();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980, &unk_31F140);
  v131 = sub_EC8C(&qword_400DF0, &unk_401980, &unk_31F140, v106);
  v107 = v132;
  sub_304F48();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_EC8C(&unk_401990, &unk_401970, &unk_32C590, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v108 = v134;
  sub_304F58();

  (*(v135 + 8))(v107, v108);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v162 = sub_3095F8();
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  v109 = sub_30C8F8();
  v161 = v109;
  v110 = sub_30C8E8();
  v111 = v137;
  (*(*(v110 - 8) + 56))(v137, 1, 1, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401138, &unk_32C5C0);
  sub_EC8C(&unk_408FD0, &qword_401138, &unk_32C5C0, v153);
  sub_CF4A8();
  v112 = v138;
  sub_304F28();
  sub_EB68(v111, &unk_408F30, &qword_31EA30);

  swift_allocObject();
  v113 = v156;
  swift_unknownObjectWeakInit();
  sub_EC8C(&unk_408FE0, &qword_4010F8, &qword_31EA38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v114 = v139;
  sub_304F58();

  (*(v140 + 8))(v112, v114);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v162 = sub_309598();
  v115 = v142;
  sub_304F38();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_EC8C(&qword_401A10, &qword_4010F0, &qword_31EA28, &protocol conformance descriptor for Publishers.Drop<A>);
  v116 = v143;
  sub_304F58();

  (*(v144 + 8))(v115, v116);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  (*(v149 + 8))(v151, v150);
  return v113;
}

objc_class *sub_1E1A38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  ObjectType = swift_getObjectType();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F0, &qword_31EA28);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = v95 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30, &qword_31EA30);
  __chkstk_darwin(v6 - 8);
  v99 = v95 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F8, &qword_31EA38);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v95 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970, &unk_32C590);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401100, &unk_31EA40);
  __chkstk_darwin(v10 - 8);
  v117 = v95 - v11;
  v12 = sub_309CD8();
  v111 = *(v12 - 8);
  v112 = v12;
  __chkstk_darwin(v12);
  v118 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_30BC58();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v114 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_30BD28();
  v108 = *(v109 - 1);
  __chkstk_darwin(v109);
  v107 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v110 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v95 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018, &unk_31E910);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v95 - v21;
  *&v3[qword_400D58] = 0;
  *&v3[qword_400E48] = _swiftEmptyArrayStorage;
  *&v3[qword_400E20] = 0;
  v23 = qword_4290D0;
  v24 = enum case for FlowDestinationPageHeader.standard(_:);
  v25 = sub_30AA18();
  (*(*(v25 - 8) + 104))(&v3[v23], v24, v25);
  v26 = &v3[qword_400D70];
  *v26 = 0;
  v26[1] = 0;
  v27 = qword_400E80;
  type metadata accessor for PageNavigationItem();
  v28 = swift_allocObject();
  v28[3] = 0;
  v28[4] = 0;
  v28[2] = 0;
  *(v28 + 37) = 0;
  *&v3[v27] = v28;
  *&v3[qword_400D68] = 19;
  v29 = qword_400DC0;
  v30 = sub_301988();
  (*(*(v30 - 8) + 56))(&v3[v29], 1, 1, v30);
  v31 = qword_400E88;
  LOBYTE(v123[0]) = 0;
  sub_304DF8();
  (*(v20 + 32))(&v3[v31], v22, v19);
  v3[qword_400DF8] = 0;
  v32 = qword_400E90;
  v33 = sub_302218();
  (*(*(v33 - 8) + 56))(&v3[v32], 1, 1, v33);
  v3[qword_400E98] = 1;
  *&v3[qword_4290D8] = _swiftEmptyArrayStorage;
  *&v3[qword_400DE8] = _swiftEmptyArrayStorage;
  v34 = qword_400EA0;
  v35 = sub_30BE68();
  (*(*(v35 - 8) + 56))(&v3[v34], 1, 1, v35);
  v3[qword_400DB0] = 0;
  sub_307B08();
  swift_storeEnumTagMultiPayload();
  *&v3[qword_4290E0] = 0;
  *&v3[qword_400EA8] = 0x3FE0000000000000;
  *&v3[qword_400EB0] = 0;
  v36 = &v3[qword_400EB8];
  *v36 = 0;
  v36[1] = 0;
  v36[2] = 0;
  *&v3[qword_400EC0] = 0;
  v37 = &v3[qword_400EC8];
  *v37 = 0;
  *(v37 + 1) = 0;
  v37[16] = 0;
  v38 = &v3[qword_400DB8];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50, &unk_32C5A0) + 48);
  v40 = sub_30B0B8();
  (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
  v38[v39] = 0;
  *&v3[qword_400ED0] = 0;
  v3[qword_400ED8] = 0;
  *&v3[qword_400EE0] = 0;
  v3[qword_400EE8] = 0;
  v3[qword_400EF0] = 1;
  v3[qword_400E40] = 0;
  *&v3[qword_400D98] = 0;
  sub_30B8E8();
  (*(v110 + 32))(&v3[qword_4290C8], v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401108, &qword_328D70);
  sub_30B8E8();
  *&v3[qword_400E28] = v123[0];
  sub_302528();
  sub_30B8C8();
  *&v3[qword_400D88] = *&v123[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30, &unk_31EA50);
  sub_30B8E8();
  sub_12658(v123, &v3[qword_400E78]);
  type metadata accessor for PageActionRunner();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *&v3[qword_400E70] = v41;
  sub_3098F8();
  swift_allocObject();

  v42 = sub_3098E8();
  *&v3[qword_400E30] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60, &qword_3174B0);
  v43 = sub_218910(&qword_401048, type metadata accessor for PageActionRunner, &unk_317CA4);
  *&v123[0] = v41;
  *(&v123[0] + 1) = v43;

  v106 = a1;
  sub_30B908();
  v95[4] = v41;

  v110 = v42;
  *&v123[0] = v42;
  sub_30B908();

  sub_30A528();
  swift_allocObject();
  *&v123[0] = sub_30A4F8();
  sub_30B908();

  sub_302448();
  swift_allocObject();
  *&v123[0] = sub_302438();
  sub_30B908();

  sub_30B948();

  v44 = v107;
  sub_30BD18();
  sub_30B928();

  (*(v108 + 8))(v44, v109);
  v45 = v114;
  sub_30BC48();
  sub_30B938();

  (*(v116 + 8))(v45, v119);
  sub_303958();
  *&v123[0] = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  *&v123[0] = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v46 = sub_30B8F8();

  sub_30B8E8();
  *&v3[qword_400E60] = *&v123[0];
  sub_302818();
  sub_30B8E8();
  *&v3[qword_400E68] = *&v123[0];
  sub_30B8E8();
  *&v3[qword_400E00] = *&v123[0];
  *&v3[qword_400D90] = v46;
  v47 = sub_309CE8();
  (*(v111 + 16))(v118, v113, v112);
  v48 = sub_218910(&unk_408F70, &type metadata accessor for CategoryPagePresenter, &protocol conformance descriptor for CategoryPagePresenter);
  swift_retain_n();
  v49 = sub_3096B8();
  *&v3[qword_400D60] = v49;

  sub_3095E8();
  v114 = sub_309658();
  v109 = sub_3095A8();
  v119 = v48;
  LOBYTE(v38) = sub_309648();
  type metadata accessor for ShelvesViewProvider(0);
  v50 = swift_allocObject();
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 96) = 0;
  v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes;
  v52 = sub_307178();
  (*(*(v52 - 8) + 56))(v50 + v51, 1, 1, v52);
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView) = 0;
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredCellReuseIdentifiers) = &_swiftEmptySetSingleton;
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredSupplementaryViewKinds) = &_swiftEmptySetSingleton;
  v53 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_visiblePageControls;
  v54 = sub_301F38();
  (*(*(v54 - 8) + 56))(v50 + v53, 1, 1, v54);
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets) = &_swiftEmptyDictionarySingleton;
  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCacheTraitCollection;
  v56 = objc_allocWithZone(UITraitCollection);

  *(v50 + v55) = [v56 init];
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache) = &_swiftEmptyDictionarySingleton;
  v57 = v117;
  sub_EB00(v117, v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_deletableExtension, &qword_401100, &unk_31EA40);
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_multiSelectableExtension) = v114;
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_showsHeaders) = v109;
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_hideAllHeaderSeparators) = v38 & 1;
  *(v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);

  sub_30B8E8();

  sub_EB68(v57, &qword_401100, &unk_31EA40);
  *&v3[qword_400DA0] = v50;
  v121 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401110, &unk_31EA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v124 = 0;
    memset(v123, 0, sizeof(v123));
  }

  v58 = sub_309658();
  v59 = objc_allocWithZone(type metadata accessor for ShelvesDelegate(0));
  v95[3] = v46;

  v61 = sub_17F668(v60, v123, v58);

  *&v3[qword_400DA8] = v61;
  v62 = [objc_allocWithZone(UICollectionViewLayout) init];
  v122.receiver = v3;
  v122.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v122, "initWithCollectionViewLayout:", v62);

  v64 = qword_400E70;
  swift_unknownObjectWeakAssign();
  v65 = *&v63[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *(v65 + 24);
  v68 = *(v65 + 32);
  *(v65 + 24) = sub_21997C;
  *(v65 + 32) = v66;
  v69 = v63;

  sub_1EBD0(v67, v68);

  v70.super.super.isa = v69;
  sub_3098D8(v70);
  v71 = *(v69 + qword_400E80);

  v72 = [(objc_class *)v69 navigationItem];

  v73 = *(v71 + 16);
  *(v71 + 16) = v72;

  v118 = v49;
  v116 = v47;
  *&v123[0] = sub_309588();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F80, &unk_32C5B0);
  v109 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_EC8C(&qword_401118, &unk_408F80, &unk_32C5B0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_304F58();

  v74 = qword_400DE8;
  swift_beginAccess();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
  v117 = sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
  v108 = v75;
  sub_304CF8();
  swift_endAccess();

  v76 = sub_309578();
  swift_getObjectType();
  *&v123[0] = v76;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v69;
  sub_304F58();
  swift_unknownObjectRelease();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v78 = [objc_opt_self() defaultCenter];
  [v78 addObserver:v77 selector:"splitControllerChanged" name:UIViewControllerShowDetailTargetDidChangeNotification object:0];

  *&v123[0] = sub_3095D8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FA0, &unk_31EA70);
  v79 = v109;
  sub_EC8C(&qword_401120, &unk_408FA0, &unk_31EA70, v109);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v80 = qword_400DA8;
  v81 = *(v77 + qword_400DA8);
  ShelvesDelegate.addDefaultScrollCoordinators()();

  v82 = *(v77 + v80);
  ObjectType = v77;
  v83 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_uberCellPublisher;
  swift_beginAccess();
  v121 = *(v82 + v83);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FB0, &unk_328D60);
  sub_EC8C(&qword_401128, &unk_408FB0, &unk_328D60, v79);
  sub_304F58();

  v107 = v74;
  v114 = v69;
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v121 = sub_309568();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FC0, &unk_31EA80);
  sub_EC8C(&qword_401130, &unk_408FC0, &unk_31EA80, v79);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v121 = sub_3095A8();
  v95[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980, &unk_31F140);
  v95[1] = sub_EC8C(&qword_400DF0, &unk_401980, &unk_31F140, v79);
  v84 = v96;
  sub_304F48();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_EC8C(&unk_401990, &unk_401970, &unk_32C590, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v85 = v98;
  sub_304F58();

  (*(v97 + 8))(v84, v85);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v121 = sub_3095F8();
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  v86 = sub_30C8F8();
  v120 = v86;
  v87 = sub_30C8E8();
  v88 = v99;
  (*(*(v87 - 8) + 56))(v99, 1, 1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401138, &unk_32C5C0);
  sub_EC8C(&unk_408FD0, &qword_401138, &unk_32C5C0, v109);
  sub_CF4A8();
  v89 = v100;
  sub_304F28();
  sub_EB68(v88, &unk_408F30, &qword_31EA30);

  swift_allocObject();
  v90 = ObjectType;
  swift_unknownObjectWeakInit();
  sub_EC8C(&unk_408FE0, &qword_4010F8, &qword_31EA38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v91 = v102;
  sub_304F58();

  (*(v101 + 8))(v89, v91);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v121 = sub_309598();
  v92 = v103;
  sub_304F38();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_EC8C(&qword_401A10, &qword_4010F0, &qword_31EA28, &protocol conformance descriptor for Publishers.Drop<A>);
  v93 = v105;
  sub_304F58();

  (*(v104 + 8))(v92, v93);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  (*(v111 + 8))(v113, v112);
  return v90;
}

void sub_1E375C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1E3814(a1, a2, a4);
  }

  else
  {
    v9 = sub_309F08();
    (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void sub_1E3814(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_409030, &qword_31EA98);
  __chkstk_darwin(v8 - 8);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0, &unk_31DD80);
  __chkstk_darwin(v11 - 8);
  v55 = v49 - v12;
  v58 = sub_307108();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_301F38();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_308598();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = v49 - v21;
  v22 = qword_400D58;
  swift_beginAccess();
  v23 = *(v4 + v22);
  if (!v23)
  {
    v34 = sub_309F08();
    (*(*(v34 - 8) + 56))(a3, 1, 1, v34);
    return;
  }

  v51 = v14;
  v53 = v17;
  v54 = v16;
  v24 = *(v23 + 40);
  sub_20ED14(a2, v24);
  if ((v26 & 0x100) != 0)
  {
    v35 = sub_309F08();
    (*(*(v35 - 8) + 56))(a3, 1, 1, v35);

    return;
  }

  v27 = v26;
  v49[1] = v25;
  v50 = v10;
  v52 = a3;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v28 = v61;
  sub_30A1C8();
  if (v27)
  {
    v29 = v53;
    v30 = v28;
    v31 = v28;
    v32 = v54;
    (*(v53 + 16))(v19, v30, v54);
    (*(v29 + 56))(v50, 1, 1, v32);
    v33 = v52;
    sub_309EE8();

    (*(v29 + 8))(v31, v32);
LABEL_16:
    v45 = sub_309F08();
    v46 = *(*(v45 - 8) + 56);
    v47 = v33;
    goto LABEL_17;
  }

  v36 = v56;
  sub_301EC8();
  v37 = v52;
  v38 = v50;
  if (*(v4 + v22))
  {

    sub_95E58(&v62);

    v67[2] = v64;
    v67[3] = v65;
    v67[4] = v66;
    v67[0] = v62;
    v67[1] = v63;
    v39 = v58;
    v40 = v57;
    v41 = v55;
    if (v63)
    {
      (v63)(v36);
    }

    else
    {
      (*(v57 + 56))(v55, 1, 1, v58);
    }

    v42 = v54;
    v43 = v53;
    sub_A0044(v67);
    if ((*(v40 + 48))(v41, 1, v39) != 1)
    {
      v48 = v51;
      (*(v40 + 32))(v51, v41, v39);
      (*(v43 + 16))(v19, v61, v42);
      sub_306FA8();
      (*(v43 + 56))(v38, 0, 1, v42);
      v33 = v52;
      sub_309EE8();

      (*(v40 + 8))(v48, v39);
      (*(v59 + 8))(v36, v60);
      (*(v43 + 8))(v61, v42);
      goto LABEL_16;
    }

    v37 = v52;
  }

  else
  {
    v41 = v55;
    (*(v57 + 56))(v55, 1, 1, v58);
    v42 = v54;
    v43 = v53;
  }

  sub_EB68(v41, &unk_4004A0, &unk_31DD80);
  v44 = v61;
  (*(v43 + 16))(v19, v61, v42);
  (*(v43 + 56))(v38, 1, 1, v42);
  sub_309EE8();

  (*(v59 + 8))(v36, v60);
  (*(v43 + 8))(v44, v42);
  v45 = sub_309F08();
  v46 = *(*(v45 - 8) + 56);
  v47 = v37;
LABEL_17:
  v46(v47, 0, 1, v45);
}

void *sub_1E3FE8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v5 = sub_307B08();
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_218AB0(a1, v10, &type metadata accessor for PageContent);
    v13 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v12 + v13, v7, &type metadata accessor for PageContent);
    swift_beginAccess();
    sub_CF598(v10, v12 + v13);
    swift_endAccess();
    a3(v7);

    sub_218C60(v7, &type metadata accessor for PageContent);
    return sub_218C60(v10, &type metadata accessor for PageContent);
  }

  return result;
}

void sub_1E4164(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v59 = qword_400E20;
  if (*&v3[qword_400E20])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
        return;
      }
    }
  }

  v9 = [v3 collectionView];
  if (!v9)
  {
    goto LABEL_53;
  }

  v10 = v9;
  [v9 _setVisibleRectEdgeInsets:{-10000.0, 0.0, 0.0, 0.0}];

  v11 = *&v3[qword_400DA8];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v62 = v11;
  v13 = *(v11 + v12);
  v14 = v13[2];
  v58 = a3;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_15;
  }

  type metadata accessor for ModernUberScrollCoordinator();
  v15 = 0;
  v16 = 32;
  while (!swift_dynamicCastClass())
  {
    ++v15;
    v16 += 16;
    if (v14 == v15)
    {
      v17 = v14;
      goto LABEL_15;
    }
  }

  v17 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v17 != v14)
  {
    v45 = v16 + 16;
    while (v17 < v14)
    {
      v64 = *(v13 + v45);
      if (!swift_dynamicCastClass())
      {
        if (v17 != v15)
        {
          if (v15 >= v14)
          {
            goto LABEL_49;
          }

          v60 = *&v13[2 * v15 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v62 + v12) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_17EE18(v13);
            *(v62 + v12) = v13;
          }

          *&v13[2 * v15 + 4] = v64;
          swift_unknownObjectRelease();
          *(v62 + v12) = v13;
          if (v17 >= v13[2])
          {
            goto LABEL_50;
          }

          *(v13 + v45) = v60;
          swift_unknownObjectRelease();
          *(v62 + v12) = v13;
        }

        ++v15;
      }

      ++v17;
      v14 = v13[2];
      v45 += 16;
      if (v17 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = v14;
LABEL_14:
  v14 = v15;
  if (v17 < v15)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_15:
  sub_17FAE0(v14, v17);
  swift_endAccess();
  if (sub_BDC48())
  {
    v19 = v18;
    _UISolariumEnabled();
  }

  else
  {
    v43 = *&v5[qword_400D70];
    v19 = *&v5[qword_400D70 + 8];
    swift_unknownObjectRetain();
    if ((_UISolariumEnabled() & 1) == 0 && !v43)
    {
      return;
    }
  }

  v20 = *&v5[qword_400E80];

  v63 = [v5 navigationItem];
  v56 = v5;
  v57 = [v5 collectionView];
  swift_unknownObjectWeakInit();
  v21 = type metadata accessor for ModernUberScrollCoordinator();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar];
  *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active;
  v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cellWidth;
  *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cellWidth] = 0;
  v26 = &v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_statusBarStyleHandler];
  *v26 = 0;
  v26[1] = 0;
  *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cell + 8] = 0;
  v27 = swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator____lazy_storage___scrollConfigurations] = 0;
  *(v27 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v22[v24] = 1;
  *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_pageNavigationItem] = v20;
  *(v23 + 1) = v19;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRetain();
  [a1 frame];
  *&v22[v25] = v28;
  v29 = v57;
  v30 = *v26;
  v31 = v26[1];
  *v26 = UINavigationBar.overrideBackButtonStyle.setter;
  v26[1] = 0;
  sub_1EBD0(v30, v31);
  v65.receiver = v22;
  v65.super_class = v21;
  v32 = objc_msgSendSuper2(&v65, "init");
  v33 = v32;
  if (v57)
  {
    v34 = v32;
    if ((_UISolariumEnabled() & 1) != 0 || v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] == 1)
    {
      v35 = swift_unknownObjectWeakLoadStrong();
      v36 = v58;
      v37 = v59;
      v38 = &PlayControlsStackView;
      v39 = v56;
      if (!v35)
      {
        v40 = &v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v41 = *(v40 + 1);
          ObjectType = swift_getObjectType();
          v35 = (*(v41 + 152))(ObjectType, v41);
          swift_unknownObjectRelease();
        }

        else
        {
          v35 = 0;
        }

        v29 = v57;
      }

      sub_14C6EC(v29, v35);
      swift_unknownObjectRelease();

      v47 = v35;
    }

    else
    {
      swift_unknownObjectRelease();
      v36 = v58;
      v37 = v59;
      v38 = &PlayControlsStackView;
      v47 = v63;
      v39 = v56;
    }

    v44 = v62;
  }

  else
  {
    swift_unknownObjectRelease();

    v36 = v58;
    v37 = v59;
    v38 = &PlayControlsStackView;
    v44 = v62;
    v39 = v56;
  }

  swift_unknownObjectWeakDestroy();
  v48 = *&v39[v37];
  *&v39[v37] = v33;
  v49 = v33;

  v50 = v49;
  sub_17F310(v50, v44);

  v51 = [v39 *&v38[396]];
  if (!v51)
  {
LABEL_54:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = [v51 refreshControl];

  if (v53)
  {
    v54 = [a1 contentView];
    v55 = [v54 overrideUserInterfaceStyle];

    [v53 setOverrideUserInterfaceStyle:v55];
  }

  *&v39[qword_400EC0] = 2;
  sub_1ED104(v36);
  swift_unknownObjectRelease();
}

void sub_1E47F8(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, void (*a8)(void))
{
  v67 = a4;
  v13 = v8;
  v14 = a3;
  v17 = a3 & 0xFFFFFFFFFFLL;
  v18 = sub_307798();
  v19 = v18;
  v72 = v20;
  v21 = (v14 >> 37) & 7;
  v69 = a5;
  if (((v14 >> 37) & 7) <= 2)
  {
    if (!v21)
    {
      v26 = 0;
      v71 = 0;
      v28 = 0;
      a1 = 0;
      v27 = 1;
      goto LABEL_23;
    }

    if (v21 == 1)
    {
      v26 = 0;
      v27 = 0;
      v71 = 0;
      v28 = 0;
      a1 = 0;
      goto LABEL_23;
    }

    v65 = v18;
    v66 = a8;
    v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
    if ((v17 & 0x100000000) != 0 || UIAccessibilityDarkerSystemColorsEnabled())
    {
      [v28 configureWithDefaultBackground];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40, &unk_31D640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315430;
      *(inited + 32) = NSFontAttributeName;
      v31 = sub_124C4(0, &qword_408100, UIFont_ptr);
      v32 = NSFontAttributeName;
      v33 = sub_30CC98();
      *(inited + 64) = v31;
      *(inited + 40) = v33;
      sub_2D6CB0(inited);
      swift_setDeallocating();
      sub_EB68(inited + 32, &unk_3FFD50, &qword_31E9D0);
    }

    else
    {
      v44 = v28;
      [v44 configureWithTransparentBackground];
      v45 = [objc_allocWithZone(UIColor) initWithRed:v14 / 255.0 green:BYTE1(v14) / 255.0 blue:BYTE2(v14) / 255.0 alpha:BYTE3(v14) / 255.0];
      [v44 setBackgroundColor:v45];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40, &unk_31D640);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_315420;
      *(v46 + 32) = NSForegroundColorAttributeName;
      v47 = objc_opt_self();
      v48 = NSForegroundColorAttributeName;
      v49 = [v47 whiteColor];
      v50 = sub_124C4(0, &qword_3FFD48, UIColor_ptr);
      *(v46 + 40) = v49;
      *(v46 + 64) = v50;
      *(v46 + 72) = NSFontAttributeName;
      v51 = sub_124C4(0, &qword_408100, UIFont_ptr);
      v52 = NSFontAttributeName;
      v53 = sub_30CC98();
      *(v46 + 104) = v51;
      *(v46 + 80) = v53;
      sub_2D6CB0(v46);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50, &qword_31E9D0);
      swift_arrayDestroy();
    }

    type metadata accessor for Key(0);
    sub_218910(&qword_3FB410, type metadata accessor for Key, &unk_316364);
    isa = sub_30BF88().super.isa;

    [v28 setTitleTextAttributes:isa];

    sub_1EC9C0(a1, a2, v17);
    v55 = v28;
    v26 = 0;
    v27 = 0;
    v71 = 0;
    a1 = 0;
    v29 = 2;
    v19 = v65;
    a8 = v66;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

  else if (((v14 >> 37) & 7) > 4)
  {
    if (v21 != 5)
    {

      v34 = a1;
      v26 = 0;
      v27 = 0;
      v71 = 0;
      v28 = 0;
      v19 = 0;
      v72 = 0;
      goto LABEL_23;
    }

    v27 = 0;
    v71 = 0;
    v28 = 0;
    a1 = 0;
    v26 = 1;
    v29 = 3;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v21 == 3)
    {
      v22 = v18;
      v23 = [v13 traitCollection];
      if (v14 == 4)
      {
        v24 = v23;
        v25 = [v23 horizontalSizeClass];

        if (v25 == &dword_0 + 1)
        {
          LOBYTE(v14) = 2;
        }

        else
        {
          LOBYTE(v14) = 5;
        }
      }

      else
      {
      }

      v19 = v22;
      sub_1EC2E0(0, v14);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      a1 = 0;
      v71 = 1;
LABEL_23:
      v29 = 2;
      if (_UISolariumEnabled())
      {
        goto LABEL_24;
      }

LABEL_28:
      v56 = &v13[qword_400EB8];
      v57 = a7;
      v58 = *&v13[qword_400EB8 + 16];
      *v56 = v19;
      v56[1] = v72;
      v56[2] = a1;
      v59 = a1;

      sub_1ECE6C(v67, v69, a6, v57, v60);
      v61 = &v13[qword_400EC8];
      v61[16] = 0;
      *v61 = 0;
      *(v61 + 1) = 0;

      goto LABEL_29;
    }

    v27 = 0;
    v71 = 0;
    v28 = 0;
    a1 = 0;
    v26 = 1;
    v29 = 1;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

LABEL_24:
  v70 = v29;
  v35 = qword_400E80;
  v36 = v28;
  v37 = a1;
  v38 = a8;
  v39 = *&v13[qword_400E80];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30, &qword_319B40);
  sub_120F0();
  v68 = v26;
  *(v39 + 42) = (sub_30D398() & 1) == 0;

  *(*&v13[v35] + 44) = v71;

  sub_CF698();

  v40 = *&v13[v35];
  *(v40 + 24) = v19;
  *(v40 + 32) = v72;

  a8 = v38;
  a1 = v37;
  v28 = v36;

  sub_CF698();

  *(*&v13[v35] + 40) = v27;

  sub_CF698();

  v41 = *&v13[v35];
  v29 = v70;
  *(v41 + 41) = v68;

  sub_CF698();

  v42 = &v13[qword_400EC8];
  v42[16] = 0;
  *v42 = 0;
  *(v42 + 1) = 0;

  v43 = v13[qword_400EF0];
  v13[qword_400EF0] = 1;
  if ((v43 & 1) == 0)
  {
    [v13 isViewLoaded];
  }

LABEL_29:
  *&v13[qword_400EC0] = v29;
  sub_1ED104(a8);
  if (v28)
  {
    v62 = v28;
    v63 = [v13 navigationItem];
    [v63 setStandardAppearance:v62];

    v64 = [v13 navigationItem];
    [v64 setScrollEdgeAppearance:v62];
  }

  [v13 setNeedsStatusBarAppearanceUpdate];
}

void *sub_1E4F54(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0, &unk_328D90);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_EB00(a1, v8, &unk_4067B0, &unk_328D90);
    v11 = qword_400DC0;
    swift_beginAccess();
    sub_EB00(v10 + v11, v5, &unk_4067B0, &unk_328D90);
    swift_beginAccess();
    sub_1D2800(v8, v10 + v11, &unk_4067B0, &unk_328D90);
    swift_endAccess();
    sub_1DDBC4(v5);

    sub_EB68(v5, &unk_4067B0, &unk_328D90);
    return sub_EB68(v8, &unk_4067B0, &unk_328D90);
  }

  return result;
}

uint64_t sub_1E50D4(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_1FB430(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_1FABC0(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3C02E0, &type metadata accessor for ModernStationDetailPresenter, &qword_409140, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter, &unk_3C0218, &unk_3C0308, sub_2199D0, sub_219B88, &block_descriptor_667, sub_2199D0, &type metadata accessor for ModernStationDetailPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E566C(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_1FC418(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_1FBBA8(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3C0060, &type metadata accessor for SeeAllEpisodesPresenter, &qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter, &unk_3BFF98, &unk_3C0088, sub_2199D0, sub_219B88, &block_descriptor_579, sub_2199D0, &type metadata accessor for SeeAllEpisodesPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C04(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_1FD400(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_1FCB90(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BFF20, &type metadata accessor for SearchPresenter, &qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter, &unk_3BFE58, &unk_3BFF48, sub_2199D0, sub_219B88, &block_descriptor_535, sub_2199D0, &type metadata accessor for SearchPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E619C(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_1FE3E8(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_1FDB78(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3C01A0, &type metadata accessor for ShowListPresenter, &qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter, &unk_3C00D8, &unk_3C01C8, sub_2199D0, sub_219B88, &block_descriptor_623, sub_2199D0, &type metadata accessor for ShowListPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6734(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_1FF3D0(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_1FEB60(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BFCA0, &type metadata accessor for LibraryShowPresenter, &qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter, &unk_3BFBD8, &unk_3BFCC8, sub_2199D0, sub_219B88, &block_descriptor_447, sub_2199D0, &type metadata accessor for LibraryShowPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6CCC(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_2003B8(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_1FFB48(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BFDE0, &type metadata accessor for StorePagePresenter, &qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter, &unk_3BFD18, &unk_3BFE08, sub_2199D0, sub_219B88, &block_descriptor_491, sub_2199D0, &type metadata accessor for StorePagePresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E7264(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_2013A0(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_200B30(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BFAE8, &type metadata accessor for LongDescriptionPresenter, &qword_4090B0, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter, &unk_3BFA20, &unk_3BFB10, sub_2199D0, sub_219B88, &block_descriptor_394, sub_2199D0, &type metadata accessor for LongDescriptionPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E77FC(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_202388(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_201B18(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF9A8, &type metadata accessor for HomePagePresenter, &qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter, &unk_3BF8E0, &unk_3BF9D0, sub_2199D0, sub_2191B0, &block_descriptor_350, sub_2199D0, &type metadata accessor for HomePagePresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E7D94(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_203370(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_202B00(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF868, &type metadata accessor for LibraryPresenter, &qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter, &unk_3BF7A0, &unk_3BF890, sub_2199D0, sub_219B88, &block_descriptor_306, sub_2199D0, &type metadata accessor for LibraryPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E832C(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_204358(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_203AE8(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF728, &type metadata accessor for HighlightsPresenter, &qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter, &unk_3BF660, &unk_3BF750, sub_2199D0, sub_219B88, &block_descriptor_262, sub_2199D0, &type metadata accessor for HighlightsPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E88C4(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_205340(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_204AD0(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3C0420, &type metadata accessor for ModernEpisodesPresenter, &qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter, &unk_3C0358, &unk_3C0448, sub_2199D0, sub_219B88, &block_descriptor_711, sub_2199D0, &type metadata accessor for ModernEpisodesPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E8E5C(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_206328(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_205AB8(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF5E8, &type metadata accessor for CategoryListPresenter, &qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter, &unk_3BF520, &unk_3BF610, sub_2199D0, sub_219B88, &block_descriptor_218, sub_2199D0, &type metadata accessor for CategoryListPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E93F4(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_207310(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_206AA0(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF4A8, &type metadata accessor for ChannelListPresenter, &qword_409060, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter, &unk_3BF3E0, &unk_3BF4D0, sub_2199D0, sub_219B88, &block_descriptor_174, sub_2199D0, &type metadata accessor for ChannelListPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E998C(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_2082F8(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_207A88(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF368, &type metadata accessor for ChannelPresenter, &qword_409050, &type metadata accessor for ChannelPresenter, &protocol conformance descriptor for ChannelPresenter, &unk_3BF2A0, &unk_3BF390, sub_2199D0, sub_219B88, &block_descriptor_130, sub_2199D0, &type metadata accessor for ChannelPresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E9F24(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_307788();
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30A078();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_307B08();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_306EE8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v22 = sub_30C8F8();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v23 = sub_306F18();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = qword_400DB0;
    swift_beginAccess();
    sub_218AB0(v2 + v25, v18, &type metadata accessor for PageContent);
    sub_218AB0(v18, v15, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v36;
      sub_218BF8(v15, v36, &type metadata accessor for ModernPage);
      sub_2092E0(v31, v32);
      sub_218C60(v31, &type metadata accessor for ModernPage);
      v27 = v39;
    }

    else
    {
      v27 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v34;
        v28 = v35;
        v30 = (*(v34 + 32))(v10, v15, v35);
        sub_208A70(v10, v30);
        (*(v29 + 8))(v10, v28);
      }

      else
      {
        sub_218C60(v18, &type metadata accessor for PageContent);
        v18 = v15;
      }
    }

    v33 = v38;
    sub_218C60(v18, &type metadata accessor for PageContent);
    sub_218AB0(v2 + v25, v33, &type metadata accessor for PageContent);
    sub_218AB0(v27, v5, &type metadata accessor for PageContent);
    (*(v40 + 56))(v5, 0, 1, v37);
    sub_1EA4BC(v33, v5, &unk_3BF228, &type metadata accessor for CategoryPagePresenter, &unk_408F70, &type metadata accessor for CategoryPagePresenter, &protocol conformance descriptor for CategoryPagePresenter, &unk_3BF138, &unk_3BF250, sub_218BF4, sub_219B88, &block_descriptor_86_1, sub_218BF4, &type metadata accessor for CategoryPagePresenter);
    sub_EB68(v5, &qword_400D80, &qword_31E5B0);
    return sub_218C60(v33, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1EA4BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void (*a13)(__n128), uint64_t (*a14)(void, double))
{
  v191 = a8;
  v208 = a7;
  v209 = a6;
  v214 = a5;
  v195 = a4;
  v213 = a3;
  v15 = v14;
  v196 = a2;
  v222 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v16 - 8);
  v197 = &v184 - v17;
  v207 = sub_30BB28();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v184 - v20;
  __chkstk_darwin(v22);
  v204 = &v184 - v23;
  v192 = sub_306E68();
  __chkstk_darwin(v192);
  v193 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_3042E8();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v187 = &v184 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v188 = &v184 - v27;
  v194 = sub_307788();
  __chkstk_darwin(v194);
  v202 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_304338();
  __chkstk_darwin(v29 - 8);
  v199 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_30A078();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v203 = &v184 - v33;
  v34 = sub_307B08();
  v215 = *(v34 - 8);
  v35 = v215[8];
  __chkstk_darwin(v34);
  v212 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v211 = &v184 - v37;
  v38 = sub_306E58();
  v220 = *(v38 - 8);
  __chkstk_darwin(v38);
  v218 = (&v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = sub_306EA8();
  v216 = *(v221 - 8);
  __chkstk_darwin(v221);
  v217 = &v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v219 = &v184 - v42;
  v43 = qword_400EB0;
  v44 = *&v14[qword_400EB0];
  v210 = v21;
  if (v44)
  {

    sub_306EC8();
  }

  *&v15[v43] = 0;

  v186 = v43;
  v45 = *&v15[v43];
  v223 = v15;
  if (v45)
  {

    v46 = v217;
    sub_306E98();
    v47 = v218;
    *v218 = 500;
    v48 = v220;
    (*(v220 + 104))(v47, enum case for DispatchTimeInterval.milliseconds(_:), v38);
    v49 = v219;
    sub_306EF8();
    (*(v48 + 8))(v47, v38);
    v50 = *(v216 + 8);
    v51 = v221;
    v50(v46, v221);
    sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
    v52 = sub_30C8F8();
    sub_30C8D8();

    v50(v49, v51);
    v15 = v223;
  }

  if ([v15 isViewLoaded])
  {
    v185 = a13;
    v53 = *&v15[qword_400D88];
    v54 = *&v15[qword_400E30];
    v55 = v222;
    v56 = v211;
    sub_218AB0(v222, v211, &type metadata accessor for PageContent);
    v57 = (*(v215 + 80) + 24) & ~*(v215 + 80);
    v58 = (v35 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v53;
    sub_218BF8(v56, v59 + v57, &type metadata accessor for PageContent);
    v213 = v59;
    *(v59 + v58) = v54;
    v60 = v55;
    v61 = v212;
    sub_218AB0(v60, v212, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v80 = v200;
        v81 = v203;
        v82 = v201;
        (*(v200 + 32))(v203, v61, v201);
        v83 = v223;
        v84 = v198;
        (*(v80 + 16))(v198, v81, v82);
        *(&v225 + 1) = sub_304A38();
        v226 = &protocol witness table for UIContentUnavailableConfiguration;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&aBlock);

        UIContentUnavailableConfiguration.init(asPartOf:for:)(v86, v84, boxed_opaque_existential_0Tm);
        sub_30C8A8();
        v87 = qword_4290E0;
        v88 = *&v83[qword_4290E0];
        sub_302768();

        v89 = *&v83[v87];
        *&v83[v87] = 0;

        v90 = [v83 view];
        v69 = v210;
        v91 = v209;
        if (!v90)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v92 = v90;
        [v90 bounds];
        v94 = v93;
        v96 = v95;
        v98 = v97;
        v100 = v99;

        *&aBlock = v94;
        *(&aBlock + 1) = v96;
        *&v225 = v98;
        *(&v225 + 1) = v100;
        LOBYTE(v226) = 0;
        sub_302758();
        v101 = qword_400D58;
        swift_beginAccess();
        v70 = v222;
        v102 = *&v223[v101];
        v66 = v223;
        v79 = v208;
        if (v102)
        {
          swift_endAccess();
          v103 = v213;

          sub_997C4(_swiftEmptyArrayStorage, 0, v185, v103);

          (*(v80 + 8))(v203, v82);
        }

        else
        {
          (*(v80 + 8))(v203, v82);
          swift_endAccess();
        }
      }

      else
      {
        v221 = v34;
        v124 = v202;
        sub_218BF8(v61, v202, &type metadata accessor for ModernPage);
        v226 = 0;
        aBlock = 0u;
        v225 = 0u;

        v125 = v223;
        sub_30C8A8();
        v126 = qword_4290E0;
        v127 = *&v125[qword_4290E0];
        sub_302768();

        v128 = *&v125[v126];
        *&v125[v126] = 0;

        v129 = [v125 view];
        v69 = v210;
        v91 = v209;
        if (!v129)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }

        v130 = v129;
        [v129 bounds];
        v132 = v131;
        v134 = v133;
        v136 = v135;
        v138 = v137;

        *&aBlock = v132;
        *(&aBlock + 1) = v134;
        *&v225 = v136;
        *(&v225 + 1) = v138;
        LOBYTE(v226) = 0;
        sub_302758();
        v195(0);
        v79 = v208;
        sub_218910(v214, v91, v208);
        v139 = sub_309618();
        v140 = 0;
        v141 = v196;
        v70 = v222;
        if (v139)
        {
          v140 = sub_307AD8();
        }

        v142 = qword_400D58;
        v143 = v223;
        swift_beginAccess();
        v144 = *&v143[v142];
        v66 = v143;
        if (v144)
        {
          v145 = *(v124 + *(v194 + 24));
          v146 = v213;

          sub_997C4(v145, v140 & 1, v185, v146);

          v124 = v202;
        }

        v147 = v197;
        sub_EB00(v141, v197, &qword_400D80, &qword_31E5B0);
        if ((v215[6])(v147, 1, v221) == 1)
        {
          sub_218C60(v124, &type metadata accessor for ModernPage);
          sub_EB68(v147, &qword_400D80, &qword_31E5B0);
        }

        else if (swift_getEnumCaseMultiPayload())
        {
          sub_218C60(v124, &type metadata accessor for ModernPage);
          sub_218C60(v147, &type metadata accessor for PageContent);
        }

        else
        {
          UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
          sub_218C60(v124, &type metadata accessor for ModernPage);
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v226 = 0;
        aBlock = 0u;
        v225 = 0u;

        v104 = v223;
        sub_30C8A8();
        swift_errorRetain();
        sub_304328();
        v105 = objc_allocWithZone(sub_304358());

        v106 = sub_304348();
        v107 = qword_4290E0;
        v108 = *&v104[qword_4290E0];
        sub_302768();

        v109 = *&v104[v107];
        *&v104[v107] = v106;
        v110 = v106;

        v111 = [v104 view];
        if (!v111)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v112 = v111;
        [v111 bounds];
        v114 = v113;
        v116 = v115;
        v118 = v117;
        v120 = v119;

        *&aBlock = v114;
        *(&aBlock + 1) = v116;
        *&v225 = v118;
        *(&v225 + 1) = v120;
        LOBYTE(v226) = 0;
        sub_302758();

        v121 = qword_400D58;
        swift_beginAccess();
        v70 = v222;
        v122 = *&v223[v121];
        v66 = v223;
        v69 = v210;
        v79 = v208;
        if (v122)
        {
          v123 = v213;

          sub_997C4(_swiftEmptyArrayStorage, 0, v185, v123);
        }

        else
        {
        }
      }

      else
      {
        if ((*v61 & 1) == 0)
        {
          v226 = 0;
          aBlock = 0u;
          v225 = 0u;

          sub_30C8A8();
          v148 = v188;
          sub_3042D8();
          v149 = v189;
          v150 = v190;
          (*(v189 + 16))(v187, v148, v190);
          v69 = v210;
          if (v53)
          {
            sub_302518();
          }

          v79 = v208;
          v70 = v222;
          sub_304318();
          v165 = sub_3042F8();
          (*(v149 + 8))(v148, v150);
          v166 = qword_4290E0;
          v167 = v223;
          v168 = *&v223[qword_4290E0];
          sub_302768();

          v169 = *&v167[v166];
          *&v167[v166] = v165;
          v170 = v165;

          v171 = [v167 view];
          if (!v171)
          {
            goto LABEL_49;
          }

          v172 = v171;
          [v171 bounds];
          v174 = v173;
          v176 = v175;
          v178 = v177;
          v180 = v179;

          *&aBlock = v174;
          *(&aBlock + 1) = v176;
          *&v225 = v178;
          *(&v225 + 1) = v180;
          LOBYTE(v226) = 0;
          sub_302758();

          v181 = qword_400D58;
          swift_beginAccess();
          v182 = *&v223[v181];
          v66 = v223;
          v91 = v209;
          if (v182)
          {
            v183 = v213;

            sub_997C4(_swiftEmptyArrayStorage, 0, v185, v183);
          }

          goto LABEL_36;
        }

        v63 = swift_allocObject();
        v64 = v223;
        swift_unknownObjectWeakInit();
        v65 = swift_allocObject();
        v65[2] = v63;
        v65[3] = a10;
        v65[4] = v213;
        v226 = a11;
        v227 = v65;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v225 = sub_914CC;
        *(&v225 + 1) = a12;
        v66 = v64;
        v215 = _Block_copy(&aBlock);
        *&v228 = _swiftEmptyArrayStorage;
        sub_218910(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
        sub_EC8C(&qword_40D770, &qword_408860, &unk_31E9E0, &protocol conformance descriptor for [A]);
        sub_30D488();
        sub_306ED8();
        swift_allocObject();
        v67 = sub_306EB8();

        v68 = v186;
        if (*&v64[v186])
        {

          sub_306EC8();
        }

        v69 = v210;
        *&v64[v68] = v67;

        v70 = v222;
        if (*&v64[v68])
        {

          v71 = v217;
          sub_306E98();
          v72 = v218;
          *v218 = 500;
          v73 = v220;
          (*(v220 + 104))(v72, enum case for DispatchTimeInterval.milliseconds(_:), v38);
          v74 = v219;
          sub_306EF8();
          (*(v73 + 8))(v72, v38);
          v75 = *(v216 + 8);
          v76 = v71;
          v77 = v221;
          v75(v76, v221);
          sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
          v78 = sub_30C8F8();
          sub_30C8D8();

          v75(v74, v77);
          v66 = v223;
        }

        v79 = v208;
      }

      v91 = v209;
    }

LABEL_36:
    v151 = [v66 collectionView];
    if (v151)
    {
      v152 = v151;
      sub_1DDF9C(a14, v214, v91, v79);
      v228 = 0u;
      v229 = 0u;
      v153 = v205;
      sub_30BAD8();

      sub_EB68(&v228, &unk_3FBB70, &unk_3174C0);
      v154 = sub_307AE8();
      *(&v229 + 1) = &type metadata for String;
      *&v228 = v154;
      *(&v228 + 1) = v155;
      sub_30BB08();
      v156 = v70;
      v157 = v69;
      v158 = *(v206 + 8);
      v159 = v66;
      v160 = v207;
      v158(v153, v207);
      sub_EB68(&v228, &unk_3FBB70, &unk_3174C0);
      v161 = [v159 collectionView];
      if (v161)
      {
        v162 = v161;
        v163 = [v161 numberOfSections];

        *(&v229 + 1) = &type metadata for Int;
        *&v228 = v163;
        v164 = v204;
        sub_30BB08();
        v158(v157, v160);
        sub_EB68(&v228, &unk_3FBB70, &unk_3174C0);
        sub_30CED8();

        v158(v164, v160);
        sub_1EBDD8(v156);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }
}

void sub_1EBB0C(uint64_t a1, void (*a2)(__n128), uint64_t a3)
{
  v5 = sub_3042E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v13 = Strong;
    sub_30C8A8();

    sub_3042D8();
    v14 = *&v13[qword_400D88];
    (*(v6 + 16))(v8, v11, v5);
    if (v14)
    {

      sub_302518();
    }

    sub_304318();
    v15 = sub_3042F8();

    (*(v6 + 8))(v11, v5);
    v16 = qword_4290E0;
    v17 = *&v13[qword_4290E0];
    sub_302768();

    v18 = *&v13[v16];
    *&v13[v16] = v15;
    v19 = v15;

    v20 = [v13 view];
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      *&v32 = v23;
      *(&v32 + 1) = v25;
      *&v33 = v27;
      *(&v33 + 1) = v29;
      LOBYTE(v34) = 0;
      sub_302758();

      v30 = qword_400D58;
      swift_beginAccess();
      if (*&v13[v30])
      {

        sub_997C4(_swiftEmptyArrayStorage, 1, a2, a3);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1EBDD8(uint64_t a1)
{
  v3 = sub_30BE68();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  v9 = sub_30A078();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = sub_307B08();
  __chkstk_darwin(v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  sub_218AB0(a1, &v50 - v19, &type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v51 = v1;
    sub_218AB0(v20, v17, &type metadata accessor for PageContent);
    (*(v10 + 16))(v14, v17, v9);
    sub_30A048();
    v21 = sub_3034F8();
    v23 = v22;
    v24 = sub_303328();
    v52 = v9;
    v26 = v25;
    v56 = v21;
    v57 = v23;
    v58._countAndFlagsBits = 95;
    v58._object = 0xE100000000000000;
    sub_30C238(v58);
    v59._countAndFlagsBits = v24;
    v59._object = v26;
    sub_30C238(v59);

    sub_30BE48();
    LOBYTE(v26) = sub_30BE38();
    v27 = v55;
    v28 = *(v54 + 8);
    v28(v5, v55);
    v28(v8, v27);
    if (v26)
    {
      v29 = v52;
      v30 = [v51 collectionView];
      if (v30)
      {
        v31 = v30;
        [v30 setScrollEnabled:0];
      }

      v32 = *(v10 + 8);
      v32(v14, v29);
      v32(v17, v29);
      return sub_218C60(v20, &type metadata accessor for PageContent);
    }

    v33 = *(v10 + 8);
    v34 = v52;
    v54 = v10 + 8;
    v50 = v33;
    v33(v14, v52);
    v35 = v53;
    (*(v10 + 32))(v53, v17, v34);
    sub_30A048();
    v36 = sub_3034F8();
    v38 = v37;
    v39 = sub_303338();
    v41 = v40;
    v56 = v36;
    v57 = v38;
    v60._countAndFlagsBits = 95;
    v60._object = 0xE100000000000000;
    sub_30C238(v60);
    v61._countAndFlagsBits = v39;
    v61._object = v41;
    sub_30C238(v61);

    sub_30BE48();
    LOBYTE(v36) = sub_30BE38();
    v42 = v55;
    v28(v5, v55);
    v28(v8, v42);
    if (v36)
    {
      v43 = v50;
      v44 = v52;
      v45 = [v51 collectionView];
      if (v45)
      {
        v46 = v45;
        [v45 setScrollEnabled:0];
      }

      v43(v35, v44);
      return sub_218C60(v20, &type metadata accessor for PageContent);
    }

    v50(v35, v52);
    v1 = v51;
  }

  v47 = [v1 collectionView];
  if (v47)
  {
    v48 = v47;
    [v47 setScrollEnabled:1];
  }

  return sub_218C60(v20, &type metadata accessor for PageContent);
}

void sub_1EC2E0(char a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for UberScrollConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    if (*&v2[qword_400E20])
    {
      return;
    }

    if (_UISolariumEnabled())
    {
      goto LABEL_4;
    }

    if (a2 <= 7u)
    {
      if (((1 << a2) & 0xC) != 0)
      {
LABEL_4:
        if (qword_3FAB60 != -1)
        {
          swift_once();
        }

        v9 = qword_4293A8;
LABEL_7:

        __swift_project_value_buffer(v6, v9);
        return;
      }

      if (((1 << a2) & 0x30) != 0)
      {
        if (qword_3FAB68 != -1)
        {
          swift_once();
        }

        v9 = qword_4293C0;
        goto LABEL_7;
      }

      if (((1 << a2) & 0xC0) != 0)
      {
        if (qword_3FAB70 != -1)
        {
          swift_once();
        }

        v9 = qword_4293D8;
        goto LABEL_7;
      }
    }

    if (a2)
    {
      if (qword_3FAB58 != -1)
      {
        swift_once();
      }

      v9 = qword_429390;
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!sub_BDC48())
  {
    return;
  }

  v11 = v10;
  v12 = [v2 navigationItem];

  if (a1)
  {
    [v12 _setManualScrollEdgeAppearanceEnabled:0];
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11, 1.0);
    (*(v11 + 40))(ObjectType, v11, 1.0);
    v14 = [v12 titleView];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for UberNavigationTitleView();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        [v16 setHideStandardTitle:0];
      }
    }

    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v17 = qword_40DB80;
    v18 = *(v11 + 64);
    v19 = qword_40DB80;
    v18(v17, ObjectType, v11);
    swift_unknownObjectRelease();

    return;
  }

  [v12 _setManualScrollEdgeAppearanceEnabled:1];
  v20 = objc_allocWithZone(type metadata accessor for UberNavigationTitleView());

  sub_154000(v21);
  v23 = v22;
  [v12 setTitleView:v22];
  if (_UISolariumEnabled())
  {
    goto LABEL_22;
  }

  if (a2 > 7u)
  {
LABEL_61:
    if (a2)
    {
      if (qword_3FAB58 != -1)
      {
        swift_once();
      }

      v24 = qword_429390;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (((1 << a2) & 0xC) == 0)
  {
    if (((1 << a2) & 0x30) != 0)
    {
      if (qword_3FAB68 != -1)
      {
        swift_once();
      }

      v24 = qword_4293C0;
      goto LABEL_25;
    }

    if (((1 << a2) & 0xC0) != 0)
    {
      if (qword_3FAB70 != -1)
      {
        swift_once();
      }

      v24 = qword_4293D8;
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_22:
  if (qword_3FAB60 != -1)
  {
    swift_once();
  }

  v24 = qword_4293A8;
LABEL_25:
  v25 = __swift_project_value_buffer(v6, v24);
  sub_218AB0(v25, v8, type metadata accessor for UberScrollConfiguration);
  v26 = v8[80];
  sub_218C60(v8, type metadata accessor for UberScrollConfiguration);
  if (v26)
  {
    v27 = swift_getObjectType();
    (*(v11 + 40))(v27, v11, 0.0);
  }

  v28 = 1.0;
  v29 = 0.0;
  v30 = 0.0;
  if (((1 << a2) & 0xD7) == 0)
  {
    v31 = [v23 traitCollection];
    v32 = sub_30C9D8();

    if (v32)
    {
      v29 = 20.0;
    }

    else
    {
      v29 = -20.0;
    }

    v30 = 1.0;
    v28 = 0.0;
  }

  v33 = swift_unknownObjectWeakInit();
  sub_154994(v33, v30, v28, v29);
  swift_unknownObjectWeakDestroy();

  v34 = *&v3[qword_400E20];
  if (v34)
  {
    v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] = 1;
    v35 = v34;
    v36 = [v3 collectionView];
    if (!v36)
    {
      __break(1u);
      return;
    }

    v37 = v36;

    v38 = [v3 navigationItem];
    sub_14C6EC(v37, v38);
  }

  swift_unknownObjectRelease();
}

void sub_1EC9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xE000000000) != 0x4000000000)
  {
    return;
  }

  v4 = a3 & 0xFFFFFFFFFFLL;
  if ((a3 & 0x100000000) != 0)
  {
    v45 = 0;
    if (_UISolariumEnabled())
    {
LABEL_46:

      return;
    }
  }

  else
  {
    v45 = [objc_opt_self() whiteColor];
    if (_UISolariumEnabled())
    {
      goto LABEL_46;
    }
  }

  if ((v4 & 0x100000000) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v44 = v5;
  v6 = [v3 navigationItem];
  v7 = [v6 leftBarButtonItems];

  if (v7)
  {
    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v8 = sub_30C368();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v43 = v3;
  v9 = [v3 navigationItem];
  v10 = [v9 rightBarButtonItems];

  if (v10)
  {
    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v11 = sub_30C368();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_14A38C(v11);
  if (v8 >> 62)
  {
LABEL_39:
    v12 = sub_30D668();
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_40:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v12 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_18:
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v15 = v14;
    v16 = v13;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = sub_30D578();
      }

      else
      {
        if (v16 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v17 = *(v8 + 8 * v16 + 32);
      }

      v18 = v17;
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = [v17 customView];

      if (v19)
      {
        break;
      }

LABEL_21:
      ++v16;
      if (v13 == v12)
      {
        v14 = v15;
        goto LABEL_41;
      }
    }

    swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (!v20)
    {

      goto LABEL_21;
    }

    v42 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_CA690(0, v15[2] + 1, 1, v15);
    }

    v23 = v15[2];
    v22 = v15[3];
    v24 = v15;
    v25 = v42;
    if (v23 >= v22 >> 1)
    {
      v24 = sub_CA690((v22 > 1), v23 + 1, 1, v15);
      v25 = v42;
    }

    v24[2] = v23 + 1;
    v14 = v24;
    v26 = &v24[2 * v23];
    v26[4] = v19;
    v26[5] = v25;
  }

  while (v13 != v12);
LABEL_41:

  v27 = v14[2];
  if (!v27)
  {
LABEL_45:

    v37 = [v43 navigationItem];
    v38 = *&v43[qword_400D90];
    v39 = objc_allocWithZone(type metadata accessor for CustomBackButtonNavigationBarTitleView());

    v40 = v45;
    sub_B53C8(v38, v45);
    v45 = v41;
    [v37 setTitleView:v41];

    goto LABEL_46;
  }

  v28 = 0;
  v29 = v14 + 5;
  while (v28 < v14[2])
  {
    ++v28;
    v30 = *(v29 - 1);
    v31 = *v29;
    v32 = v14;
    ObjectType = swift_getObjectType();
    v34 = *(v31 + 24);
    v35 = v30;
    v34(v44, ObjectType, v31);
    v36 = [objc_opt_self() effectWithStyle:16];
    v14 = v32;
    (*(v31 + 8))();

    [v35 setTintColor:v45];
    v29 += 2;
    if (v27 == v28)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
}

void sub_1ECE6C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, double a5)
{
  if (sub_303098())
  {
    v10 = [v5 navigationItem];
    if (*&v5[qword_400EB8 + 8])
    {

      v11 = sub_30C098();
    }

    else
    {
      v11 = 0;
    }

    [v10 setTitle:v11];
  }

  else
  {
    if (*&v5[qword_400EB8 + 8])
    {

      v11 = sub_30C098();
    }

    else
    {
      v11 = 0;
    }

    [v5 setTitle:v11];
  }

  sub_1ECF9C(a1, a2, a3, a4, v12);
}

void sub_1ECF9C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, double a5)
{
  if (sub_303098() & 1) == 0 && (*(v5 + qword_400DF8))
  {
    if (sub_BDC48())
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      v13 = *(v5 + qword_400EB8 + 8);
      v22 = *(v5 + qword_400EB8);
      v14 = *(v5 + qword_400EB8 + 16);
      v23 = *(v11 + 88);
      v24 = ObjectType;
      v15 = v14;

      v23(v22, v13, v14, v24, v11);
      swift_unknownObjectRelease();
    }

    if (sub_BDC48())
    {
      v17 = v16;
      v18 = swift_getObjectType();

      v21 = sub_1F8C50(v19, v20);

      (*(v17 + 112))(v21, v18, v17);
      swift_unknownObjectRelease();
    }

    sub_1FA344(a1, a2, a3, a4);
  }
}

void sub_1ED104(void (*a1)(void))
{
  v2 = _UISolariumEnabled();
  v3 = qword_400EC0;
  v4 = *&v1[qword_400EC0];
  if ((v2 & 1) == 0 && v4 == 3)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == &dword_0 + 1)
    {
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 1;
    }
  }

  v7 = [v1 navigationItem];
  v8 = [v7 largeTitleDisplayMode];

  v9 = [v1 navigationItem];
  [v9 setLargeTitleDisplayMode:v4];

  if (v8 != v4 && (_UISolariumEnabled() & 1) == 0)
  {

    a1();
  }
}

void sub_1ED238()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3C0218, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3C0290, &unk_3C02B8, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3C0218, &unk_3C0240, sub_219B84, &block_descriptor_644, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ModernStationDetailPresenter, &qword_409140, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter);
    sub_30AD18();
    sub_218910(&qword_409140, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1EDEA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BFF98, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3C0010, &unk_3C0038, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BFF98, &unk_3BFFC0, sub_219B84, &block_descriptor_556, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for SeeAllEpisodesPresenter, &qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter);
    sub_30A5D8();
    sub_218910(&qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1EEB08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BFE58, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BFED0, &unk_3BFEF8, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BFE58, &unk_3BFE80, sub_219B84, &block_descriptor_512, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for SearchPresenter, &qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter);
    sub_3089B8();
    sub_218910(&qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}