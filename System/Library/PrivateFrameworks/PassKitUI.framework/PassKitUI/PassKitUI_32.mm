void sub_1BD37B7E8(char a1, uint64_t a2, char a3, uint64_t a4, void *a5, double a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v8 = *(v6 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController);
  if (!v8)
  {
    return;
  }

  v13 = v8;
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 subviews];
  v77 = sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
  v17 = sub_1BE052744();

  if (v17 >> 62)
  {
    v25 = sub_1BE053704();
    v85 = a1;
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_26:
    v17, v18, v19, v20, v21, v22, v23, v24;
    goto LABEL_27;
  }

  v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v85 = a1;
  if (!v25)
  {
    goto LABEL_26;
  }

LABEL_5:
  if (v25 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v78 = a4;
  v80 = a2;
  v26 = 0;
  v27 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView;
  v28 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView;
  v88 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView;
  v90 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView;
  v29 = *&a2;
  v82 = OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory;
  v83 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView;
  v79 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1BFB40900](v26, v17);
    }

    else
    {
      v30 = *(v17 + 8 * v26 + 32);
    }

    v31 = v30;
    if (v30 == *&v13[v27] || v30 == *&v13[v28] || (v32 = *&v13[v90]) != 0 && v30 == v32 || v30 == *&v13[v88] || v30 == *&v13[v83])
    {
    }

    else
    {
      v92[0] = 0;
      [v30 pkui:*(v84 + v82) setAlpha:v92 withAnimationFactory:0 animation:a6 removePriorAnimation:?];
      if (v92[0] && (a1 & 1) != 0)
      {
        v33 = v92[0];
        v34 = v33;
        if ((a3 & 1) == 0)
        {
          [v33 setBeginTime_];
        }

        [a5 trackAnimation_];
        v35 = [v31 layer];
        v36 = sub_1BE052404();
        [v35 addAnimation:v34 forKey:v36];

        a1 = v85;
        v28 = v79;
        a2 = v80;
      }

      else
      {
      }
    }

    ++v26;
  }

  while (v25 != v26);
  v17, v37, v38, v39, v40, v41, v42, v43;
  LOBYTE(a4) = v78;
LABEL_27:
  v44 = [v13 navigationController];

  if (!v44)
  {
    goto LABEL_31;
  }

  v7 = [v44 navigationBar];

  if (!v7)
  {
    goto LABEL_31;
  }

  if (a4)
  {

LABEL_31:
    goto LABEL_32;
  }

  a4 = a2;
  v45 = [v7 subviews];
  v16 = sub_1BE052744();

  if (!(v16 >> 62))
  {
    v46 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = a4;
    if (v46)
    {
LABEL_36:
      v89 = v7;
      v81 = v15;
      v48 = v46 - 1;
      if (v46 < 1)
      {
        __break(1u);
      }

      v49 = 0;
      v50 = *(v84 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
      v51 = v16 & 0xC000000000000001;
      v52 = *&v47;
      v53 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v91 = v16 & 0xC000000000000001;
      while (1)
      {
        if (v51)
        {
          v61 = MEMORY[0x1BFB40900](v49, v16);
        }

        else
        {
          v61 = *(v16 + 8 * v49 + 32);
        }

        v62 = v61;
        v92[0] = 0;
        [v61 v53[430]];
        if (v92[0] && (a1 & 1) != 0)
        {
          v63 = v48;
          v64 = v16;
          v65 = v53;
          v66 = v92[0];
          v67 = v66;
          if ((a3 & 1) == 0)
          {
            [v66 setBeginTime_];
          }

          [a5 trackAnimation_];
          v68 = [v62 layer];
          v69 = sub_1BE052404();
          [v68 addAnimation:v67 forKey:v69];

          v48 = v63;
          a1 = v85;
          v53 = v65;
          v16 = v64;
          v51 = v91;
          if (v63 == v49)
          {
LABEL_48:
            v16, v54, v55, v56, v57, v58, v59, v60;

            v15 = v89;
            goto LABEL_32;
          }
        }

        else
        {

          if (v48 == v49)
          {
            goto LABEL_48;
          }
        }

        ++v49;
      }
    }

    goto LABEL_51;
  }

LABEL_50:
  v46 = sub_1BE053704();
  v47 = a4;
  if (v46)
  {
    goto LABEL_36;
  }

LABEL_51:

  v16, v70, v71, v72, v73, v74, v75, v76;
LABEL_32:
}

void sub_1BD37BD74(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];

      v6 = [a1 view];
      if (v6)
      {
        v7 = v6;
        [v6 layoutIfNeeded];

        v8 = objc_opt_self();
        v9 = *&a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
        v10 = swift_allocObject();
        *(v10 + 16) = v3;
        *(v10 + 24) = 1;
        *(v10 + 32) = a1;
        v27 = sub_1BD37DC1C;
        v28 = v10;
        v23 = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1BD126964;
        v26 = &block_descriptor_123;
        v11 = _Block_copy(&v23);
        v12 = v28;
        v13 = v3;
        v14 = a1;
        v12, v15, v16, v17, v18, v19, v20, v21;
        v27 = PKEdgeInsetsMake;
        v28 = 0;
        v23 = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1BD3F08C0;
        v26 = &block_descriptor_126;
        v22 = _Block_copy(&v23);
        [v8 pkui:v9 animateUsingFactory:0 withDelay:v11 options:v22 animations:0.0 completion:?];

        _Block_release(v22);
        _Block_release(v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD37BF80(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [objc_opt_self() linkColor];
    [v3 setTintColor_];
  }
}

void sub_1BD37C0E8(void *a1)
{
  v2 = a1;
  v173[1] = *MEMORY[0x1E69E9840];
  v171 = [a1 viewControllerForKey_];
  if (!v171)
  {
    goto LABEL_25;
  }

  v3 = [v2 viewControllerForKey_];
  if (!v3)
  {

LABEL_25:

    [v2 completeTransition_];
    return;
  }

  v4 = v3;
  v5 = [v171 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_71;
  }

  v6 = v5;
  v170 = [v4 view];
  if (!v170)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v7 = [v2 containerView];
  v8 = *&v1[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_springFactory];
  LODWORD(v9) = [v2 isAnimated];
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v1;
  if (v1[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_type])
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v2;
    *(v11 + 32) = v1;
    v12 = v1;
    swift_unknownObjectRetain_n();
    v13 = v12;
    v14 = v6;
    v6 = v14;
    if (v9)
    {
      v168 = v8;
      v169 = v4;
      v15 = [v7 subviews];
      sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
      v2 = sub_1BE052744();

      *&aBlock.m11 = MEMORY[0x1E69E7CC0];
      v4 = (v2 & 0xFFFFFFFFFFFFFF8);
      if (!(v2 >> 62))
      {
        v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_9;
      }

LABEL_64:
      v8 = sub_1BE053704();
LABEL_9:
      v165 = v6;
      v167 = v10;
      if (v8)
      {
        v6 = 0;
        v9 = v2 & 0xC000000000000001;
        m11 = MEMORY[0x1E69E7CC0];
        do
        {
          v24 = v6;
          while (1)
          {
            if (v9)
            {
              v25 = MEMORY[0x1BFB40900](v24, v2);
            }

            else
            {
              if (v24 >= v4[2])
              {
                goto LABEL_61;
              }

              v25 = *(v2 + 8 * v24 + 32);
            }

            v10 = v25;
            v6 = (v24 + 1);
            if (__OFADD__(v24, 1))
            {
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            type metadata accessor for ProvisioningCardReaderBlurView();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v24;
            if (v6 == v8)
            {
              goto LABEL_49;
            }
          }

          MEMORY[0x1BFB3F7A0]();
          if (*((*&aBlock.m11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&aBlock.m11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((*&aBlock.m11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();
          m11 = aBlock.m11;
        }

        while (v6 != v8);
      }

      else
      {
        m11 = MEMORY[0x1E69E7CC0];
      }

LABEL_49:
      v2, v16, v17, v18, v19, v20, v21, v22;
      if (*&m11 >> 62)
      {
        v105 = v168;
        v104 = v169;
        if (sub_1BE053704())
        {
          goto LABEL_51;
        }
      }

      else
      {
        v105 = v168;
        v104 = v169;
        if (*((*&m11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_51:
          if ((*&m11 & 0xC000000000000001) != 0)
          {
            v106 = MEMORY[0x1BFB40900](0, *&m11);
          }

          else
          {
            if (!*((*&m11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v106 = *(*&m11 + 32);
          }

          v114 = v106;
          *&m11, v107, v108, v109, v110, v111, v112, v113;
          v115 = v114;
          sub_1BD6066F8(0, 1);

          goto LABEL_67;
        }
      }

      *&m11, v97, v98, v99, v100, v101, v102, v103;
      v114 = 0;
LABEL_67:
      v137 = swift_allocObject();
      v137[2] = v114;
      v137[3] = sub_1BD37DA7C;
      v137[4] = v11;
      *&aBlock.m21 = sub_1BD37DA88;
      *&aBlock.m22 = v137;
      *&aBlock.m11 = MEMORY[0x1E69E9820];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_1BD976224;
      *&aBlock.m14 = &block_descriptor_70;
      v138 = _Block_copy(&aBlock);
      m22 = aBlock.m22;
      v140 = v114;
      sub_1BE048964();
      v141 = v105;
      *&m22, v142, v143, v144, v145, v146, v147, v148;
      [v165 pkui:v141 setAlpha:v138 withAnimationFactory:0.0 completion:?];

      v167, v149, v150, v151, v152, v153, v154, v155;
      _Block_release(v138);
      v11, v156, v157, v158, v159, v160, v161, v162;

      return;
    }

    [v14 removeFromSuperview];
    [v2 completeTransition_];
    v65 = &v13[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    v66 = *&v13[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    if (v66)
    {
      v67 = *(v65 + 1);
      v68 = sub_1BE048964();
      v66(v68);

      v11, v69, v70, v71, v72, v73, v74, v75;
      v10, v76, v77, v78, v79, v80, v81, v82;

LABEL_45:

      sub_1BD0D4744(v66, v67, v91, v92, v93, v94, v95, v96);
      return;
    }

    v11, v116, v117, v118, v119, v120, v121, v122;
    v10, v123, v124, v125, v126, v127, v128, v129;
  }

  else
  {
    v169 = v4;
    v163 = v1;
    swift_unknownObjectRetain();
    v26 = [v7 subviews];
    sub_1BD0E5E8C(0, &qword_1EBD3F5A0, 0x1E69DD250);
    m11 = COERCE_DOUBLE(sub_1BE052744());

    v166 = v7;
    v167 = v10;
    v165 = v6;
    if (*&m11 >> 62)
    {
LABEL_62:
      v11 = sub_1BE053704();
    }

    else
    {
      v11 = *((*&m11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v164 = v9;
    v168 = v8;
    if (v11)
    {
      v34 = objc_opt_self();
      if (v11 < 1)
      {
        __break(1u);
        goto LABEL_64;
      }

      v35 = v34;
      v36 = 0;
      do
      {
        if ((*&m11 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x1BFB40900](v36, *&m11);
        }

        else
        {
          v37 = *(*&m11 + 8 * v36 + 32);
        }

        v38 = v37;
        ++v36;
        v39 = [v35 clearColor];
        [v38 setBackgroundColor_];
      }

      while (v11 != v36);
    }

    *&m11, v27, v28, v29, v30, v31, v32, v33;
    [v169 setOverrideUserInterfaceStyle_];
    [v166 bounds];
    [v170 setFrame_];
    [v166 addSubview_];
    v40 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderBlurView());
    v41 = v8;
    v42 = sub_1BD606998(v41, 8.0, 0.0);
    [v166 bounds];
    [v42 setFrame_];
    [v166 insertSubview:v42 belowSubview:v170];
    if (v164)
    {
      sub_1BD6066F8(0, 0);
      sub_1BD6066F8(1, 1);
      v173[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.2, 1.2, 1.0);
      [v170 pkui:&aBlock setTransform:v41 withAdditiveAnimationFactory:v173 animation:?];

      v173[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.0, 1.0, 1.0);
      [v170 pkui:&aBlock setTransform:v41 withAdditiveAnimationFactory:v173 animation:?];
      v43 = v173[0];
      if (v173[0])
      {
        v44 = v173[0];
        [0 trackAnimation_];
        v45 = [v170 layer];
        v46 = sub_1BE052404();
        [v45 addAnimation:v44 forKey:v46];

        v43 = v173[0];
      }

      [v170 pkui:0 setAlpha:0.0 animated:?];
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1BD37DA74;
      *(v47 + 24) = v167;
      *&aBlock.m21 = sub_1BD214190;
      *&aBlock.m22 = v47;
      *&aBlock.m11 = MEMORY[0x1E69E9820];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_1BD976224;
      *&aBlock.m14 = &block_descriptor_78;
      v48 = _Block_copy(&aBlock);
      v49 = aBlock.m22;
      v50 = v41;
      sub_1BE048964();
      *&v49, v51, v52, v53, v54, v55, v56, v57;
      [v170 pkui:v50 setAlpha:v48 withAnimationFactory:1.0 completion:?];

      v167, v58, v59, v60, v61, v62, v63, v64;
      _Block_release(v48);

      return;
    }

    [v2 completeTransition_];
    v66 = *&v163[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    if (v66)
    {
      v67 = *&v163[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion + 8];
      v83 = sub_1BE048964();
      v66(v83);

      v167, v84, v85, v86, v87, v88, v89, v90;
      goto LABEL_45;
    }

    v167, v130, v131, v132, v133, v134, v135, v136;
  }
}

void sub_1BD37CC08(void *a1, uint64_t a2)
{
  [a1 completeTransition_];
  v3 = a2 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion;
  v4 = *(a2 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion);
  if (v4)
  {
    v5 = *(v3 + 8);
    v6 = sub_1BE048964();
    v4(v6);

    sub_1BD0D4744(v4, v5, v7, v8, v9, v10, v11, v12);
  }
}

void sub_1BD37CC84(void *a1, void *a2, uint64_t a3)
{
  [a1 removeFromSuperview];
  [a2 completeTransition_];
  v5 = a3 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion;
  v6 = *(a3 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion);
  if (v6)
  {
    v7 = *(v5 + 8);
    v8 = sub_1BE048964();
    v6(v8);

    sub_1BD0D4744(v6, v7, v9, v10, v11, v12, v13, v14);
  }
}

void sub_1BD37CD2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

unint64_t sub_1BD37CE48(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 viewControllers];
    sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
    v6 = sub_1BE052744();

    if (v6 >> 62)
    {
      v7 = sub_1BE053704();
      if (v7)
      {
LABEL_4:
        v8 = __OFSUB__(v7, 1);
        result = v7 - 1;
        if (v8)
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *(v6 + 8 * result + 32);
LABEL_9:
            v18 = v10;
            v6, v11, v12, v13, v14, v15, v16, v17;
            type metadata accessor for CardReaderViewController();
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              v20 = v19;
              v21 = type metadata accessor for CardReaderViewController.TransitionAnimator();
              v22 = objc_allocWithZone(v21);
              v22[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 2;
              *&v22[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v20;
              *(v20 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) = 1;
              v23 = *(v20 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory);
              *&v22[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v23;
              v60.receiver = v22;
              v60.super_class = v21;
              v24 = v18;
              v25 = v23;
              v26 = objc_msgSendSuper2(&v60, sel_init);

              return v26;
            }

            goto LABEL_14;
          }

          __break(1u);
          return result;
        }

        v10 = MEMORY[0x1BFB40900](result, v6);
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v6, v27, v28, v29, v30, v31, v32, v33;
  }

LABEL_14:
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v34 = type metadata accessor for CardReaderViewController.AlertTransitionAnimator();
    v35 = objc_allocWithZone(v34);
    v36 = &v35[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    *v36 = 0;
    v36[1] = 0;
    v35[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_type] = 1;
    v37 = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
    *&v35[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_springFactory] = v37;
    v61.receiver = v35;
    v61.super_class = v34;
    v38 = objc_msgSendSuper2(&v61, sel_init);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = a1;
    v41 = &v38[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    v42 = *&v38[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    v43 = *&v38[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion + 8];
    *v41 = sub_1BD37DA6C;
    v41[1] = v40;
    v44 = a1;
    sub_1BE048964();
    sub_1BD0D4744(v42, v43, v45, v46, v47, v48, v49, v50);
    v39, v51, v52, v53, v54, v55, v56, v57;
    return v38;
  }

  else
  {
    v58 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v59 = objc_allocWithZone(v58);
    v59[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 2;
    *&v59[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = 0;
    sub_1BD0E5E8C(0, &qword_1EBD43458, 0x1E69BC7A0);
    *&v59[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = [swift_getObjCClassFromMetadata() createDefaultFactory];
    v62.receiver = v59;
    v62.super_class = v58;
    return objc_msgSendSuper2(&v62, sel_init);
  }
}

void sub_1BD37D1C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton);
    if (v3 != 2)
    {
      sub_1BD3789BC(v3 & 1);
    }
  }
}

unint64_t sub_1BD37D3D0()
{
  result = qword_1EBD43440;
  if (!qword_1EBD43440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43440);
  }

  return result;
}

unint64_t sub_1BD37D428()
{
  result = qword_1EBD43448;
  if (!qword_1EBD43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43448);
  }

  return result;
}

void sub_1BD37D47C()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard) = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton) = 2;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD37D598(void *a1)
{
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKPaymentSetupForceBridgeAppearance())
  {
    return 2030;
  }

  sub_1BE04BC34();
  v6 = sub_1BE04BAB4();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return 2030;
  }

  if ([a1 userInterfaceStyle] == 2)
  {
    return 2030;
  }

  return 2020;
}

id sub_1BD37D6B0(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = a1;
  v5 = [v3 viewControllers];
  sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:

    v6, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_12;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFB40900](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v16 = v8;
  v6, v9, v10, v11, v12, v13, v14, v15;
  type metadata accessor for CardReaderViewController();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 0;
    *&v20[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v18;
    *(v18 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) = 1;
    v21 = *(v18 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory);
    *&v20[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v21;
    v36.receiver = v20;
    v36.super_class = v19;
    v22 = v16;
    v23 = v21;
    v24 = objc_msgSendSuper2(&v36, sel_init);

    return v24;
  }

LABEL_12:
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v32 = type metadata accessor for CardReaderViewController.AlertTransitionAnimator();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    *v34 = 0;
    v34[1] = 0;
    v33[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_type] = 0;
    v35 = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
    *&v33[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_springFactory] = v35;
    v37.receiver = v33;
    v37.super_class = v32;
    return objc_msgSendSuper2(&v37, sel_init);
  }

  return result;
}

_BYTE *sub_1BD37D910(uint64_t a1, void *a2, void *a3)
{
  if (a1 == 2)
  {
    type metadata accessor for CardReaderViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v11 = result;
    v6 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v12 = objc_allocWithZone(v6);
    v12[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 3;
    *&v12[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v11;
    v11[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] = 0;
    v8 = *&v11[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
    *&v12[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v8;
    v16 = v12;
    v9 = &v16;
    a3 = a2;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    type metadata accessor for CardReaderViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = type metadata accessor for CardReaderViewController.TransitionAnimator();
    v7 = objc_allocWithZone(v6);
    v7[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type] = 1;
    *&v7[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController] = v5;
    v5[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] = 0;
    v8 = *&v5[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
    *&v7[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory] = v8;
    v15 = v7;
    v9 = &v15;
LABEL_7:
    v9->super_class = v6;
    v13 = a3;
    v14 = v8;
    return [(objc_super *)v9 init];
  }

  return 0;
}

uint64_t sub_1BD37DA88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    v1 = [v1 removeFromSuperview];
  }

  return v2(v1);
}

id sub_1BD37DB00(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [v3 removeFromSuperview];

  return [v4 completeTransition_];
}

uint64_t objectdestroy_62Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

id sub_1BD37DB98()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) completeTransition_];

  return [v1 removeFromSuperview];
}

void sub_1BD37DCC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B9C4();
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v130 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v121 - v6;
  v7 = sub_1BE04BAC4();
  v128 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BE04BD74();
  v9 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v125 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v121 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v121 - v19;
  v140.receiver = v1;
  v140.super_class = ObjectType;
  objc_msgSendSuper2(&v140, sel_loadView, v18);
  v21 = [v1 explanationView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v124 = v7;
  v23 = [objc_opt_self() systemBackgroundColor];
  [v22 setTopBackgroundColor_];

  [v1 setPrivacyLinkController_];
  [v1 setShowDoneButton_];
  v126 = v1;
  [v1 setShowCancelButton_];
  v24 = *MEMORY[0x1E69B80D8];
  v25 = *(v9 + 104);
  v25(v20, v24, v139);
  v26 = PKPassKitBundle();
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  sub_1BE04B6F4();
  v29 = v28;

  v31 = *(v9 + 8);
  v30 = (v9 + 8);
  v32 = v139;
  v33 = v31;
  v31(v20, v139);
  v34 = sub_1BE052404();
  v29, v35, v36, v37, v38, v39, v40, v41;
  [v22 setTitleText_];

  v42 = v137;
  v138 = v25;
  v25(v137, v24, v32);
  v43 = PKPassKitBundle();
  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = v43;
  v45 = v24;
  sub_1BE04B6F4();
  v47 = v46;

  v48 = v139;
  v137 = v30;
  v49 = v33;
  v33(v42, v139);
  v50 = sub_1BE052404();
  v47, v51, v52, v53, v54, v55, v56, v57;
  [v22 setBodyText_];

  v58 = [v22 dockView];
  if (!v58)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v59 = v58;
  v60 = v22;
  v136 = v49;
  v61 = [v58 footerView];
  v62 = v138;
  v135 = v61;
  v63 = v133;
  if (!v61)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v64 = [v59 primaryButton];
  if (!v64)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v65 = v64;
  v134 = v59;
  v123 = v45;
  v62(v63, v45, v48);
  v66 = v65;
  v67 = PKPassKitBundle();
  if (!v67)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v68 = v67;
  sub_1BE04B6F4();
  v70 = v69;

  v136(v63, v48);
  v71 = sub_1BE052404();
  v70, v72, v73, v74, v75, v76, v77, v78;
  [v66 setTitle:v71 forState:0];
  v133 = v66;

  v80 = v126;
  v79 = v127;
  sub_1BE04BC34();
  v81 = v129;
  sub_1BE04BAA4();
  (*(v128 + 8))(v79, v124);
  v83 = v130;
  v82 = v131;
  v84 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x1E69B7FB0], v132);
  sub_1BD37FFEC(qword_1EBD43518, MEMORY[0x1E69B7FC8], MEMORY[0x1E69B7FD0]);
  LOBYTE(v71) = sub_1BE052334();
  v85 = *(v82 + 8);
  v85(v83, v84);
  v85(v81, v84);
  v86 = v138;
  if (v71)
  {
    goto LABEL_12;
  }

  v87 = v135;
  [v135 setSetUpLaterButton_];
  v88 = [v87 skipCardButton];
  if (!v88)
  {
    goto LABEL_25;
  }

  v89 = v88;
  v90 = v60;
  v91 = v122;
  v86(v122, v123, v48);
  v92 = PKPassKitBundle();
  if (!v92)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v93 = v92;
  sub_1BE04B6F4();
  v95 = v94;

  v136(v91, v48);
  v96 = sub_1BE052404();
  v95, v97, v98, v99, v100, v101, v102, v103;
  [v89 setTitle:v96 forStates:0];

  [v89 addTarget:v80 action:sel__skipButtonPressed forControlEvents:0x2000];
  v60 = v90;
LABEL_12:
  v104 = v125;
  if (v80[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_showChangeMethodButton] != 1)
  {
LABEL_17:

    return;
  }

  v105 = [v134 footerView];
  if (!v105)
  {
    goto LABEL_27;
  }

  v106 = v105;
  v107 = [v105 tertiaryActionButton];

  if (!v107)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v108 = v60;
  v86(v104, v123, v48);
  v109 = PKPassKitBundle();
  if (v109)
  {
    v110 = v109;
    sub_1BE04B6F4();
    v112 = v111;

    v136(v104, v48);
    v113 = sub_1BE052404();
    v112, v114, v115, v116, v117, v118, v119, v120;
    [v107 setTitle:v113 forState:0];

    [v107 addTarget:v80 action:sel__changeMethodButtonPressed forControlEvents:0x2000];
    v60 = v108;
    goto LABEL_17;
  }

LABEL_29:
  __break(1u);
}

void sub_1BD37E664()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = PKOBKCardHeaderViewSize(3);
  v3 = v2;
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_pass];
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v18[4] = sub_1BD37FFDC;
    v19 = v7;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1BD20815C;
    v18[3] = &block_descriptor_16_2;
    v8 = _Block_copy(v18);
    v9 = v19;
    v10 = v0;
    v9, v11, v12, v13, v14, v15, v16, v17;
    [v5 snapshotWithPass:v6 size:v8 completion:{v1, v3}];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD37E7BC(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1BD37FFE4;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_1;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = a1;
  v16 = a2;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD37FFEC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

void sub_1BD37EA88(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setHideBackground_];
  [v4 setPadding_];
  v5 = [a2 explanationView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setHeroView_];
}

uint64_t sub_1BD37EC0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [*(result + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController) clearSelectedChannel];
    v4 = v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3BA7828, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD37ED34()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter];
  if (v2)
  {
    [v2 reportButtonPressed_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController) clearSelectedChannel];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v5 = v4;
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = *&v6[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
    v8 = *&v6[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
    v9 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
    sub_1BE048964();
    v10 = v8;
    v11 = v6;
    v12 = sub_1BD5537A8(v7, v10, v11);
    v7, v13, v14, v15, v16, v17, v18, v19;

    v20 = &v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v5, &off_1F3BB88B0, v12, &off_1F3BAD3B8, ObjectType, v21);

      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

LABEL_9:

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1BD37EF44()
{
  sub_1BD37FE84(1u);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_performController];
      v5 = *(v4 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window);
      *(v4 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window) = v3;
    }

    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_performController];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BD431D88(v6, v7);

    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD37F024(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD37FE84(1u);
    if (a2)
    {
      if ([a1 severity] == 1)
      {
        sub_1BD37FE84(0);
      }

      else
      {
        sub_1BD37F80C(a1);
      }
    }

    else
    {
      sub_1BD37F0C4();
    }
  }
}

void sub_1BD37F0C4()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v94 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FC4();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v83 - v10;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  sub_1BD37FE84(0);
  v97 = v0;
  v18 = [v0 explanationView];
  if (!v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  v96 = v14;
  v84 = v5;
  v85 = v4;
  v86 = v2;
  v87 = v1;
  v20 = *MEMORY[0x1E69B80D8];
  v21 = *(v12 + 104);
  v21(v17, v20, v11);
  v22 = PKPassKitBundle();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = v22;
  sub_1BE04B6F4();
  v25 = v24;

  v95 = *(v12 + 8);
  v95(v17, v11);
  v26 = sub_1BE052404();
  v25, v27, v28, v29, v30, v31, v32, v33;
  [v19 setTitleText_];

  v34 = v97;
  v35 = [v97 explanationView];
  if (!v35)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v36 = v35;
  v88 = "CODE_ACCEPTED_TITLE";
  v37 = v96;
  v21(v96, v20, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BE0B69E0;
  v39 = [*&v34[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_pass] localizedDescription];
  v40 = sub_1BE052434();
  v42 = v41;

  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1BD110550();
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  sub_1BE04B714();
  v44 = v43;
  v38, v43, v45, v46, v47, v48, v49, v50;
  v95(v37, v11);
  v51 = v97;
  v52 = sub_1BE052404();
  v44, v53, v54, v55, v56, v57, v58, v59;
  [v36 setBodyText_];

  v60 = [v51 explanationView];
  if (!v60)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v61 = v60;
  [v60 setShowCheckmark_];

  v62 = [v51 explanationView];
  if (!v62)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v63 = v62;
  v64 = [v62 dockView];

  if (v64)
  {
    [v64 setButtonsEnabled_];

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v65 = sub_1BE052D54();
    v66 = v89;
    sub_1BE051FB4();
    v67 = v90;
    sub_1BE051FF4();
    v68 = v92;
    v96 = *(v91 + 8);
    (v96)(v66, v92);
    v69 = swift_allocObject();
    *(v69 + 16) = v51;
    aBlock[4] = sub_1BD37FFC0;
    v99 = v69;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_71;
    v70 = _Block_copy(aBlock);
    v71 = v99;
    v72 = v51;
    v71, v73, v74, v75, v76, v77, v78, v79;
    v80 = v93;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD37FFEC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v81 = v94;
    v82 = v87;
    sub_1BE053664();
    MEMORY[0x1BFB3FD90](v67, v80, v81, v70);
    _Block_release(v70);

    (*(v86 + 8))(v81, v82);
    (*(v84 + 8))(v80, v85);
    (v96)(v67, v68);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1BD37F80C(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - v12;
  v14 = [a1 hasLocalizedTitleAndMessage];
  v15 = *MEMORY[0x1E69B80D8];
  v16 = *(v4 + 104);
  if (v14)
  {
    goto LABEL_5;
  }

  v77 = v1;
  v78 = v6;
  v79 = a1;
  v17 = v15;
  v16(v13);
  v18 = PKPassKitBundle();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  sub_1BE04B6F4();
  v21 = v20;

  v76 = v4;
  v73 = *(v4 + 8);
  v73(v13, v3);
  v22 = sub_1BE052404();
  v21, v23, v24, v25, v26, v27, v28, v29;
  a1 = v79;
  [v79 setLocalizedTitle_];

  v74 = v17;
  v75 = v16;
  (v16)(v9, v17, v3);
  v30 = PKPassKitBundle();
  if (v30)
  {
    v31 = v30;
    sub_1BE04B6F4();
    v33 = v32;

    v73(v9, v3);
    v34 = sub_1BE052404();
    v33, v35, v36, v37, v38, v39, v40, v41;
    [a1 setLocalizedMessage_];

    v4 = v76;
    v1 = v77;
    v6 = v78;
    v16 = v75;
    v15 = v74;
LABEL_5:
    (v16)(v6, v15, v3);
    v42 = PKPassKitBundle();
    if (v42)
    {
      v43 = v42;
      v44 = sub_1BE04B6F4();
      v46 = v45;

      (*(v4 + 8))(v6, v3);
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v47 = swift_allocObject();
      v47[2] = v1;
      v48 = swift_allocObject();
      v48[2] = v1;
      v49 = v1;
      v50 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v44, v46, PKEdgeInsetsMake, 0, sub_1BD38003C, v47, sub_1BD37FF9C, v48);
      v46, v51, v52, v53, v54, v55, v56, v57;
      v47, v58, v59, v60, v61, v62, v63, v64;
      v48, v65, v66, v67, v68, v69, v70, v71;
      PKApplyDefaultIconToAlertController();
      [v49 presentViewController:v50 animated:1 completion:0];
      sub_1BD37FE84(0);

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1BD37FC40(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = result + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v2, &off_1F3BA7828, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD37FE84(unsigned __int8 a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setUserInteractionEnabled_];

  v5 = [v1 explanationView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v9 = [v5 dockView];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = [v9 primaryButton];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setShowSpinner_];

  [v9 setButtonsEnabled_];
}

uint64_t sub_1BD37FFEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD380048(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD39018, 0x1E69B8C88);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD3DC40, 0x1E69B8C80);
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD38840, 0x1E696AB90);
      if (v3 <= 0x3F)
      {
        sub_1BE0534B4();
        if (v4 <= 0x3F)
        {
          sub_1BD0FA9D0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD380160(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + ((v8 + 40) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1BD3802F8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v10 + 40) & ~v10) + v11) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1BD3805F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1BE04FF64();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435A0, &qword_1BE0CFAC0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435A8, &qword_1BE0CFAC8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435B0, &qword_1BE0CFAD0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435B8, &qword_1BE0CFAD8);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v41 - v17;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435C0, &qword_1BE0CFAE0);
  sub_1BD380A60(v41, *(a1 + 16), *(a1 + 24), &v9[*(v19 + 44)]);
  v20 = sub_1BE0501D4();
  v21 = &v9[*(v7 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v12, &qword_1EBD435A0, &qword_1BE0CFAC0);
  v22 = &v12[*(v10 + 36)];
  v23 = v53;
  *(v22 + 4) = v52;
  *(v22 + 5) = v23;
  *(v22 + 6) = v54;
  v24 = v49;
  *v22 = v48;
  *(v22 + 1) = v24;
  v25 = v51;
  *(v22 + 2) = v50;
  *(v22 + 3) = v25;
  v26 = sub_1BE051214();
  sub_1BD387DD8();
  v27 = sub_1BD5A39EC(v10);
  sub_1BD0DE204(v12, v15, &qword_1EBD435A8, &qword_1BE0CFAC8);
  v28 = &v15[*(v13 + 36)];
  *v28 = 0;
  *(v28 + 1) = v26;
  *(v28 + 2) = 0x3FF0000000000000;
  *(v28 + 3) = v27;
  sub_1BE04FF54();
  v29 = sub_1BD387F1C();
  sub_1BE050D14();
  (*(v43 + 8))(v5, v44);
  sub_1BD0DE53C(v15, &qword_1EBD435B0, &qword_1BE0CFAD0);
  sub_1BE052434();
  v31 = v30;
  v46 = v13;
  v47 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v42;
  sub_1BE050DE4();
  v31, v33, v34, v35, v36, v37, v38, v39;
  return (*(v16 + 8))(v18, v32);
}

uint64_t sub_1BD380A60@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435F0, &qword_1BE0CFAF0);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD435F8, &qword_1BE0CFAF8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43600, &qword_1BE0CFB00);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = [*a1 dynamicContent];
  if (v16 && (v18 = v16, v19 = [v16 dynamicContentPageForPageType_], v18, v19) && (v20 = objc_msgSend(v19, sel_customLayout), v19, v20))
  {
    v21 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a2, a3, v17);
    sub_1BD380DAC(v20, v21, v8);
    sub_1BD0DE19C(v8, v11, &qword_1EBD435F0, &qword_1BE0CFAF0);
    swift_storeEnumTagMultiPayload();
    v22 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD43608, &qword_1EBD435F0, &qword_1BE0CFAF0, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD43610, &qword_1EBD43600, &qword_1BE0CFB00, v22);
    sub_1BE04F9A4();

    v23 = v8;
    v24 = &qword_1EBD435F0;
    v25 = &qword_1BE0CFAF0;
  }

  else
  {
    v26 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a2, a3, v17);
    sub_1BD38154C(v26, v15);
    sub_1BD0DE19C(v15, v11, &qword_1EBD43600, &qword_1BE0CFB00);
    swift_storeEnumTagMultiPayload();
    v27 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD43608, &qword_1EBD435F0, &qword_1BE0CFAF0, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD43610, &qword_1EBD43600, &qword_1BE0CFB00, v27);
    sub_1BE04F9A4();
    v23 = v15;
    v24 = &qword_1EBD43600;
    v25 = &qword_1BE0CFB00;
  }

  return sub_1BD0DE53C(v23, v24, v25);
}

uint64_t sub_1BD380DAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v103 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43618, &qword_1BE0CFB08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = (&v96 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43620, &qword_1BE0CFB10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v96 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43628, &qword_1BE0CFB18);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v96 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v100 = &v96 - v18;
  v19 = [a1 items];
  v20 = sub_1BD0E5E8C(0, &qword_1EBD390A8, 0x1E69B8C68);
  v21 = sub_1BE052744();

  v22 = v21 >> 62;
  v105 = v12;
  v23 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
LABEL_68:
    v24 = sub_1BE053704();
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  v26 = (v21 & 0xC000000000000001);
  v27 = &selRef_thumbnailWidth;
  while (1)
  {
    if (v24 == v25)
    {
      if (!v22)
      {
        v4 = 0;
        v3 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_25;
      }

      v31 = sub_1BE053704();
      if (v31 < 0)
      {
        goto LABEL_76;
      }

      v3 = v31;
      v4 = 0;
      goto LABEL_19;
    }

    if (v26)
    {
      v28 = MEMORY[0x1BFB40900](v25, v21);
    }

    else
    {
      if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v28 = *(v21 + 8 * v25 + 32);
    }

    v3 = v28;
    v4 = [v28 type];

    if (v4 == 2)
    {
      break;
    }

    if (__OFADD__(v25++, 1))
    {
      goto LABEL_67;
    }
  }

  v4 = v25;
  v3 = v25;
  if (v22)
  {
LABEL_19:
    if (v21 < 0)
    {
      v27 = v21;
    }

    else
    {
      v27 = (v21 & 0xFFFFFFFFFFFFFF8);
    }

    if ((sub_1BE053704() & 0x8000000000000000) == 0)
    {
      v30 = sub_1BE053704();
      goto LABEL_24;
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v25;
  v3 = v25;
LABEL_24:
  if (v30 < v3)
  {
    __break(1u);
    goto LABEL_70;
  }

LABEL_25:
  if (v26)
  {
    sub_1BE048C84();
    if (v3)
    {
      v39 = 0;
      do
      {
        v40 = v39 + 1;
        sub_1BE053864();
        v39 = v40;
      }

      while (v3 != v40);
    }

    if (!v22)
    {
LABEL_30:
      v41 = 0;
      v27 = (v23 + 32);
      v3 = (2 * v3) | 1;
      v107 = v21 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_33;
    }
  }

  else
  {
    sub_1BE048C84();
    if (!v22)
    {
      goto LABEL_30;
    }
  }

  v21, v32, v33, v34, v35, v36, v37, v38;
  v107 = sub_1BE0539D4();
  v27 = v32;
  v3 = v34;
LABEL_33:
  v96 = v41;
  if (v24 == v25)
  {
    v26 = v3;
    v21, v32, v41, v34, v35, v36, v37, v38;
    v24 = MEMORY[0x1E69E7CC0];
    v3 = v105;
    v20 = v106;
    goto LABEL_64;
  }

  if (v24 < v4)
  {
    goto LABEL_72;
  }

  if (v22)
  {
    if (v21 < 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1BE053704() >= v4)
    {
      v42 = sub_1BE053704();
      goto LABEL_44;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v42 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v42 < v4)
  {
    goto LABEL_73;
  }

LABEL_44:
  if (v42 < v24)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!v26 || v4 == v24)
  {
    v26 = v3;
    sub_1BE048C84();
    goto LABEL_53;
  }

  if (v4 >= v24)
  {
    goto LABEL_77;
  }

  v26 = v3;
  sub_1BE048C84();
  v43 = v4;
  do
  {
    v44 = v43 + 1;
    sub_1BE053864();
    v43 = v44;
  }

  while (v24 != v44);
LABEL_53:
  v21, v45, v46, v47, v48, v49, v50, v51;
  v3 = v105;
  if (v22)
  {
    v23 = sub_1BE0539D4();
    v25 = v52;
    v4 = v53;
    v24 = v54;
    v21, v52, v53, v54, v55, v56, v57, v58;
    v20 = v106;
    if (v24)
    {
      goto LABEL_58;
    }

LABEL_57:
    sub_1BD1DA320(v23, v25, v4, v24);
    v24 = v59;
    swift_unknownObjectRelease();
    goto LABEL_64;
  }

  v25 = v23 + 32;
  v24 = (2 * v24) | 1;
  v20 = v106;
  if ((v24 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_58:
  sub_1BE053BB4();
  swift_unknownObjectRetain_n();
  v60 = swift_dynamicCastClass();
  if (!v60)
  {
    swift_unknownObjectRelease();
    v60 = MEMORY[0x1E69E7CC0];
  }

  v68 = v60[2];
  v60, v61, v62, v63, v64, v65, v66, v67;
  if (__OFSUB__(v24 >> 1, v4))
  {
    goto LABEL_78;
  }

  if (v68 != (v24 >> 1) - v4)
  {
LABEL_79:
    swift_unknownObjectRelease_n();
    goto LABEL_57;
  }

  v24 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

LABEL_64:
  *v3 = sub_1BE04F504();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43630, &qword_1BE0CFB20);
  v21 = *(v98 + 16);
  v25 = *(v98 + 24);
  sub_1BD381C44(v107, v27, v96, v26, v20, v21, v25, v3 + *(v69 + 44));
  LOBYTE(v23) = sub_1BE0501F4();
  if (!(v24 >> 62))
  {
    goto LABEL_65;
  }

LABEL_70:
  sub_1BE053704();
LABEL_65:
  sub_1BE04E1F4();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v97;
  sub_1BD0DE204(v3, v97, &qword_1EBD43620, &qword_1BE0CFB10);
  v79 = v100;
  v80 = v78 + *(v99 + 36);
  *v80 = v23;
  *(v80 + 8) = v71;
  *(v80 + 16) = v73;
  *(v80 + 24) = v75;
  *(v80 + 32) = v77;
  *(v80 + 40) = 0;
  sub_1BD0DE204(v78, v79, &qword_1EBD43628, &qword_1BE0CFB18);
  v81 = sub_1BE04F7C4();
  v82 = v102;
  *v102 = v81;
  *(v82 + 8) = 0x4020000000000000;
  *(v82 + 16) = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43638, &qword_1BE0CFB28);
  sub_1BD383840(v24, v20, v21, v25, v82 + *(v83 + 44));
  v24, v84, v85, v86, v87, v88, v89, v90;
  v91 = v101;
  sub_1BD0DE19C(v79, v101, &qword_1EBD43628, &qword_1BE0CFB18);
  v92 = v104;
  sub_1BD0DE19C(v82, v104, &qword_1EBD43618, &qword_1BE0CFB08);
  v93 = v103;
  sub_1BD0DE19C(v91, v103, &qword_1EBD43628, &qword_1BE0CFB18);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43640, &unk_1BE0CFB30);
  sub_1BD0DE19C(v92, v93 + *(v94 + 48), &qword_1EBD43618, &qword_1BE0CFB08);
  swift_unknownObjectRelease();
  sub_1BD0DE53C(v82, &qword_1EBD43618, &qword_1BE0CFB08);
  sub_1BD0DE53C(v79, &qword_1EBD43628, &qword_1BE0CFB18);
  sub_1BD0DE53C(v92, &qword_1EBD43618, &qword_1BE0CFB08);
  return sub_1BD0DE53C(v91, &qword_1EBD43628, &qword_1BE0CFB18);
}

uint64_t sub_1BD38154C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43790, &qword_1BE0CFD30);
  v62 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43798, &qword_1BE0CFD38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437A0, &qword_1BE0CFD40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v61 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v47 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437A8, &qword_1BE0CFD48);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v57 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v47 - v34;
  v53 = &v47 - v34;
  sub_1BD384B10(a1, (&v47 - v34));
  v52 = v30;
  sub_1BD3850E0(v30);
  v51 = v15;
  sub_1BD385294(a1, &qword_1EBD437E8, &qword_1BE0CFD80, sub_1BD385B9C, v15);
  v50 = v27;
  sub_1BD3850E0(v27);
  v49 = v10;
  sub_1BD385294(a1, &qword_1EBD437D8, &qword_1BE0CFD70, sub_1BD3867E4, v10);
  v48 = v24;
  sub_1BD3850E0(v24);
  v36 = v59;
  sub_1BD385308(a1);
  v37 = v57;
  sub_1BD0DE19C(v35, v57, &qword_1EBD437A8, &qword_1BE0CFD48);
  sub_1BD0DE19C(v30, v64, &qword_1EBD390F8, &qword_1BE0BA700);
  v38 = v58;
  sub_1BD0DE19C(v15, v58, &qword_1EBD437A0, &qword_1BE0CFD40);
  sub_1BD0DE19C(v27, v63, &qword_1EBD390F8, &qword_1BE0BA700);
  v39 = v60;
  sub_1BD0DE19C(v10, v60, &qword_1EBD43798, &qword_1BE0CFD38);
  sub_1BD0DE19C(v24, v61, &qword_1EBD390F8, &qword_1BE0BA700);
  v47 = *(v62 + 16);
  v40 = v54;
  v41 = v55;
  v47(v54, v36, v55);
  v42 = v56;
  sub_1BD0DE19C(v37, v56, &qword_1EBD437A8, &qword_1BE0CFD48);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B0, &qword_1BE0CFD50);
  sub_1BD0DE19C(v64, v42 + v43[12], &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE19C(v38, v42 + v43[16], &qword_1EBD437A0, &qword_1BE0CFD40);
  sub_1BD0DE19C(v63, v42 + v43[20], &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE19C(v39, v42 + v43[24], &qword_1EBD43798, &qword_1BE0CFD38);
  v44 = v61;
  sub_1BD0DE19C(v61, v42 + v43[28], &qword_1EBD390F8, &qword_1BE0BA700);
  v47((v42 + v43[32]), v40, v41);
  v45 = *(v62 + 8);
  v45(v59, v41);
  sub_1BD0DE53C(v48, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE53C(v49, &qword_1EBD43798, &qword_1BE0CFD38);
  sub_1BD0DE53C(v50, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE53C(v51, &qword_1EBD437A0, &qword_1BE0CFD40);
  sub_1BD0DE53C(v52, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE53C(v53, &qword_1EBD437A8, &qword_1BE0CFD48);
  v45(v40, v41);
  sub_1BD0DE53C(v44, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE53C(v60, &qword_1EBD43798, &qword_1BE0CFD38);
  sub_1BD0DE53C(v63, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE53C(v58, &qword_1EBD437A0, &qword_1BE0CFD40);
  sub_1BD0DE53C(v64, &qword_1EBD390F8, &qword_1BE0BA700);
  return sub_1BD0DE53C(v57, &qword_1EBD437A8, &qword_1BE0CFD48);
}

uint64_t sub_1BD381C44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v105 = a8;
  v106 = a7;
  v99 = a4;
  v96 = a2;
  v97 = a3;
  v95 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436E0, &qword_1BE0CFC60);
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v91 = (&v84 - v12);
  v98 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a6, a7, v13);
  v87 = *(v98 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v86 = &v84 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436E8, &qword_1BE0CFC68);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436F0, &qword_1BE0CFC70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v102 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v84 - v21;
  v94 = sub_1BE04FF64();
  v22 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436F8, &qword_1BE0CFC78);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v84 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43700, &qword_1BE0CFC80);
  v92 = *(v28 - 8);
  v93 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43708, &qword_1BE0CFC88);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v100 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v84 - v34;
  *v27 = sub_1BE04F7C4();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v36 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43710, &qword_1BE0CFC90) + 44)];
  v37 = v97;
  v97 = a6;
  sub_1BD382518(v95, v96, v37, v99, a5, a6, v106, v36);
  sub_1BE04FF44();
  v38 = sub_1BD0DE4F4(&qword_1EBD43718, &qword_1EBD436F8, &qword_1BE0CFC78, MEMORY[0x1E6981870]);
  sub_1BE050D14();
  (*(v22 + 8))(v24, v94);
  sub_1BD0DE53C(v27, &qword_1EBD436F8, &qword_1BE0CFC78);
  sub_1BE052434();
  v40 = v39;
  v107 = v25;
  v108 = v38;
  v41 = a5;
  v42 = 1;
  swift_getOpaqueTypeConformance2();
  v99 = v35;
  v43 = v93;
  sub_1BE050DE4();
  v40, v44, v45, v46, v47, v48, v49, v50;
  (*(v92 + 8))(v30, v43);
  v51 = v98;
  v52 = (v41 + *(v98 + 56));
  v53 = *v52;
  if (*v52)
  {
    v96 = v52[1];
    v54 = v87;
    v55 = v86;
    (*(v87 + 16))(v86, v41, v98);
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = (v85 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v97;
    v60 = v106;
    *(v58 + 16) = v97;
    *(v58 + 24) = v60;
    v61 = (*(v54 + 32))(v58 + v56, v55, v51);
    v62 = (v58 + v57);
    v63 = v96;
    *v62 = v53;
    v62[1] = v63;
    MEMORY[0x1EEE9AC00](v61);
    *(&v84 - 4) = v59;
    *(&v84 - 3) = v60;
    *(&v84 - 2) = v41;
    sub_1BD0D44B8(v53, v63);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43728, &qword_1BE0CFCA0);
    sub_1BD3883C8();
    v64 = v89;
    sub_1BE051704();
    LOBYTE(v56) = *(v41 + *(v51 + 52));
    KeyPath = swift_getKeyPath();
    v66 = swift_allocObject();
    *(v66 + 16) = v56;
    v67 = (v64 + *(v88 + 36));
    *v67 = KeyPath;
    v67[1] = sub_1BD10DF54;
    v67[2] = v66;
    v68 = v90;
    sub_1BD0DE19C(v64, v90, &qword_1EBD436E8, &qword_1BE0CFC68);
    v69 = v91;
    *v91 = 0;
    *(v69 + 8) = 1;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43738, &qword_1BE0CFCD8);
    sub_1BD0DE19C(v68, v69 + *(v70 + 48), &qword_1EBD436E8, &qword_1BE0CFC68);
    sub_1BD0D4744(v53, v63, v71, v72, v73, v74, v75, v76);
    sub_1BD0DE53C(v64, &qword_1EBD436E8, &qword_1BE0CFC68);
    sub_1BD0DE53C(v68, &qword_1EBD436E8, &qword_1BE0CFC68);
    v77 = v101;
    sub_1BD0DE204(v69, v101, &qword_1EBD436E0, &qword_1BE0CFC60);
    v42 = 0;
  }

  else
  {
    v77 = v101;
  }

  (*(v103 + 56))(v77, v42, 1, v104);
  v79 = v99;
  v78 = v100;
  sub_1BD0DE19C(v99, v100, &qword_1EBD43708, &qword_1BE0CFC88);
  v80 = v102;
  sub_1BD0DE19C(v77, v102, &qword_1EBD436F0, &qword_1BE0CFC70);
  v81 = v105;
  sub_1BD0DE19C(v78, v105, &qword_1EBD43708, &qword_1BE0CFC88);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43720, &qword_1BE0CFC98);
  sub_1BD0DE19C(v80, v81 + *(v82 + 48), &qword_1EBD436F0, &qword_1BE0CFC70);
  sub_1BD0DE53C(v77, &qword_1EBD436F0, &qword_1BE0CFC70);
  sub_1BD0DE53C(v79, &qword_1EBD43708, &qword_1BE0CFC88);
  sub_1BD0DE53C(v80, &qword_1EBD436F0, &qword_1BE0CFC70);
  return sub_1BD0DE53C(v78, &qword_1EBD43708, &qword_1BE0CFC88);
}

uint64_t sub_1BD382518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21[1] = a1;
  v22 = a5;
  v23 = a8;
  v14 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a6, a7, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  swift_getKeyPath();
  (*(v15 + 16))(v17, v22, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  (*(v15 + 32))(v19 + v18, v17, v14);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B8, &qword_1BE0B80C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43748, &qword_1BE0CFD10);
  sub_1BD0DE4F4(&qword_1EBD390C8, &qword_1EBD390B8, &qword_1BE0B80C0, MEMORY[0x1E69E6970]);
  sub_1BD0FECB8();
  sub_1BD38851C();
  return sub_1BE0519C4();
}

void *sub_1BD382730@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v76 = a3;
  v77 = a4;
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436C0, &qword_1BE0CFBD0);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43780, &qword_1BE0CFD20);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43788, &qword_1BE0CFD28);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43760, &qword_1BE0CFD18);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - v20;
  v22 = *a1;
  v23 = [v22 type];
  if (!v23)
  {
    v82 = 0;
    sub_1BE04F9A4();
    v41 = v83;
LABEL_12:
    *v14 = v41;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
    sub_1BD3885A8();
    sub_1BD0FEEBC();
    return sub_1BE04F9A4();
  }

  if (v23 == 1)
  {
    v74 = v18;
    v27 = [v22 leadingText];
    v75 = a5;
    if (!v27)
    {
      (*(v79 + 56))(v11, 1, 1, v80);
LABEL_18:
      v24 = &qword_1EBD436C0;
      v25 = &qword_1BE0CFBD0;
      sub_1BD0DE19C(v11, v17, &qword_1EBD436C0, &qword_1BE0CFBD0);
      swift_storeEnumTagMultiPayload();
      sub_1BD388634();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v21, v14, &qword_1EBD43760, &qword_1BE0CFD18);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
      sub_1BD3885A8();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v21, &qword_1EBD43760, &qword_1BE0CFD18);
      v26 = v11;
      return sub_1BD0DE53C(v26, v24, v25);
    }

    v28 = v27;
    v29 = [v27 text];
    v71 = sub_1BE052434();
    v73 = v30;

    v31 = sub_1BE051464();
    v32 = [v28 textColor];
    v72 = v12;
    v70 = v11;
    if (v32 == 1)
    {
      v69 = v31;
      v33 = sub_1BE051464();
    }

    else if (v32 == 2)
    {
      v69 = v31;
      v33 = sub_1BE051494();
    }

    else
    {
      if (v32 != 3)
      {
LABEL_17:
        v43 = v31;
        v44 = sub_1BD47C8E4(v32);
        LODWORD(v69) = [v28 isBold];
        v45 = *MEMORY[0x1E69B98E0];
        type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v76, v77, v46);
        v47 = v73;
        sub_1BD382D70(v71, v73, v45, v9);
        v47, v48, v49, v50, v51, v52, v53, v54;
        v43, v55, v56, v57, v58, v59, v60, v61;
        v44, v62, v63, v64, v65, v66, v67, v68;

        v11 = v70;
        sub_1BD0DE204(v9, v70, &qword_1EBD436B8, &qword_1BE0CFBC8);
        (*(v79 + 56))(v11, 0, 1, v80);
        goto LABEL_18;
      }

      v69 = v31;
      v33 = sub_1BE0511D4();
    }

    v31 = v33;
    v69, v34, v35, v36, v37, v38, v39, v40;
    goto LABEL_17;
  }

  if (v23 != 2)
  {
    v84 = 1;
    sub_1BE04F9A4();
    v41 = v85;
    goto LABEL_12;
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD388634();
  sub_1BE04F9A4();
  v24 = &qword_1EBD43760;
  v25 = &qword_1BE0CFD18;
  sub_1BD0DE19C(v21, v14, &qword_1EBD43760, &qword_1BE0CFD18);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
  sub_1BD3885A8();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();
  v26 = v21;
  return sub_1BD0DE53C(v26, v24, v25);
}

uint64_t sub_1BD382D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436D8, &qword_1BE0CFBE8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = v92 - v15;
  if (a2)
  {
    *&v104[0] = a1;
    *(&v104[0] + 1) = a2;
    v96 = v12;
    v95 = v13;
    v93 = v16;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v17 = sub_1BE0506C4();
    v19 = v18;
    v21 = v20;
    v92[1] = a6;
    v23 = v22;
    v24 = sub_1BE050564();
    v94 = a7;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v29, v31, v32, v33, v34);
    v23, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE0505E4();
    v44 = v43;
    LOBYTE(v17) = v45;
    v47 = v46;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v46, v48, v49, v50, v51);
    v30, v52, v53, v54, v55, v56, v57, v58;
    v59 = sub_1BE0505F4();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_1BD0DDF10(v42, v44, (v17 & 1), v64, v66, v67, v68, v69);
    v47, v70, v71, v72, v73, v74, v75, v76;
    KeyPath = swift_getKeyPath();
    v78 = swift_getKeyPath();
    v103 = v63 & 1;
    v102 = 1;
    *&v97 = v59;
    *(&v97 + 1) = v61;
    LOBYTE(v98) = v63 & 1;
    *(&v98 + 1) = v65;
    *&v99 = KeyPath;
    BYTE8(v99) = 0;
    v100 = v78;
    v101 = 1;
    sub_1BE052434();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391B8, &unk_1BE0CFC50);
    sub_1BD0FF3E4();
    v81 = v93;
    sub_1BE050DE4();
    v80, v82, v83, v84, v85, v86, v87, v88;
    v104[2] = v99;
    v104[3] = v100;
    v105 = v101;
    v104[0] = v97;
    v104[1] = v98;
    sub_1BD0DE53C(v104, &qword_1EBD391B8, &unk_1BE0CFC50);
    v89 = v94;
    sub_1BD0DE204(v81, v94, &qword_1EBD436D8, &qword_1BE0CFBE8);
    return (*(v95 + 56))(v89, 0, 1, v96);
  }

  else
  {
    v91 = *(v13 + 56);

    return v91(a7, 1, 1, v14);
  }
}

void sub_1BD3830F0(uint64_t a1)
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B98D0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6C0];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB6F8];
  *(v2 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = sub_1BE052724();
  v2, v10, v11, v12, v13, v14, v15, v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v18 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v19 = sub_1BE052434();
  v20 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v22 = *v20;
  *(inited + 56) = *v20;
  v23 = sub_1BE052434();
  v24 = MEMORY[0x1E69BA440];
  *(inited + 64) = v23;
  *(inited + 72) = v25;
  v26 = *v24;
  *(inited + 80) = *v24;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v27;
  v28 = *MEMORY[0x1E69BA9C8];
  *(inited + 104) = *MEMORY[0x1E69BA9C8];
  v29 = v18;
  v30 = v22;
  v31 = v26;
  v32 = v28;
  *(inited + 112) = sub_1BD387FA8();
  *(inited + 120) = v33;
  v34 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD388348(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v35 = sub_1BE052224();
  v34, v36, v37, v38, v39, v40, v41, v42;
  [v1 subjects:v9 sendEvent:v35];
}

id sub_1BD383358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v80 = sub_1BE04BD74();
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v7);
  v79 = v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43740, &unk_1BE0CFCE0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v78 - v15;
  v78[3] = a1;
  if (*(v2 + *(a1 + 52)) == 1)
  {
    sub_1BE04E4F4();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD1103C8();
    sub_1BE04F9A4();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v78[1] = v9;
    v78[2] = v7;
    v18 = v80;
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8078], v80, v14);
    v19 = [*v2 preferredLanguage];
    sub_1BE052434();
    v21 = v20;

    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6E4();
      v25 = v24;
      v21, v24, v26, v27, v28, v29, v30, v31;

      (*(v4 + 8))(v6, v18);
      v82 = v23;
      v83 = v25;
      sub_1BD0DDEBC();
      v32 = sub_1BE0506C4();
      v34 = v33;
      LOBYTE(v25) = v35;
      v37 = v36;
      v38 = sub_1BE050564();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_1BD0DDF10(v32, v34, (v25 & 1), v43, v45, v46, v47, v48);
      v37, v49, v50, v51, v52, v53, v54, v55;
      v82 = v38;
      v83 = v40;
      v84 = v42 & 1;
      v85 = v44;
      sub_1BE052434();
      v57 = v56;
      v58 = v79;
      sub_1BE050DE4();
      v57, v59, v60, v61, v62, v63, v64, v65;
      sub_1BD0DDF10(v38, v40, (v42 & 1), v66, v67, v68, v69, v70);
      v44, v71, v72, v73, v74, v75, v76, v77;
      sub_1BD0DE19C(v58, v11, &qword_1EBD452C0, &qword_1BE0B7620);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BD1103C8();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v58, &qword_1EBD452C0, &qword_1BE0B7620);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD383840@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a3, a4, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v17[1] = a5;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v17[2] = 0;
    v17[3] = result;
    swift_getKeyPath();
    (*(v11 + 16))(v13, a2, v10);
    v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = a3;
    *(v16 + 3) = a4;
    *(v16 + 4) = a1;
    (*(v11 + 32))(&v16[v15], v13, v10);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43648, &qword_1BE0CFB60);
    sub_1BD2D5394();
    sub_1BD388104();
    return sub_1BE0519C4();
  }

  result = sub_1BE053704();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_1BD383A48(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v89 = a6;
  v79 = sub_1BE04FF64();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43678, &unk_1BE0CFB80);
  MEMORY[0x1EEE9AC00](v76);
  v11 = &v71 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43688, &qword_1BE0CFB90);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v13 = &v71 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43670, &qword_1BE0CFB78);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v71 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43690, &qword_1BE0CFB98);
  MEMORY[0x1EEE9AC00](v87);
  v16 = &v71 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43698, &qword_1BE0CFBA0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v71 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43660, &unk_1BE0CFB68);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v71 - v18;
  v19 = sub_1BE051994();
  v72 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v71 - v27;
  v29 = *a1;
  v82 = v30;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v29 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(a2 + 8 * v29 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v31 = MEMORY[0x1BFB40900](v29, a2, v26);
LABEL_5:
  v32 = v31;
  v33 = [v31 type];
  if (!v33)
  {
    v92[0] = 0;
LABEL_16:
    sub_1BE04F9A4();
    *v16 = v90;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
    sub_1BD388190();
    sub_1BD0FEEBC();
    sub_1BE04F9A4();

    return;
  }

  if (v33 == 1)
  {
    *v11 = sub_1BE04F504();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436A0, &unk_1BE0CFBA8);
    sub_1BD3843F0(v32, v73, v74, v75, &v11[*(v55 + 44)]);
    sub_1BE04FF44();
    v56 = v32;
    v57 = sub_1BD0DE4F4(&qword_1EBD43680, &qword_1EBD43678, &unk_1BE0CFB80, MEMORY[0x1E69817F8]);
    v58 = v76;
    sub_1BE050D14();
    (*(v77 + 8))(v9, v79);
    sub_1BD0DE53C(v11, &qword_1EBD43678, &unk_1BE0CFB80);
    sub_1BE052434();
    v60 = v59;
    v90 = v58;
    v91 = v57;
    swift_getOpaqueTypeConformance2();
    v61 = v81;
    v62 = v80;
    sub_1BE050DE4();
    v60, v63, v64, v65, v66, v67, v68, v69;
    (*(v78 + 8))(v13, v62);
    sub_1BD0DE19C(v61, v84, &qword_1EBD43670, &qword_1BE0CFB78);
    swift_storeEnumTagMultiPayload();
    sub_1BD0FEDD8();
    sub_1BD38821C();
    v70 = v86;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v70, v16, &qword_1EBD43660, &unk_1BE0CFB68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
    sub_1BD388190();
    sub_1BD0FEEBC();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v70, &qword_1EBD43660, &unk_1BE0CFB68);
    sub_1BD0DE53C(v61, &qword_1EBD43670, &qword_1BE0CFB78);
    return;
  }

  if (v33 != 2)
  {
    v92[0] = 1;
    goto LABEL_16;
  }

  v81 = v32;
  sub_1BE051984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v35 = sub_1BE0501E4();
  *(inited + 32) = v35;
  v36 = sub_1BE0501F4();
  *(inited + 33) = v36;
  v37 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v35)
  {
    v37 = sub_1BE050214();
  }

  inited, v38, v39, v40, v41, v42, v43, v44;
  sub_1BE050214();
  if (sub_1BE050214() != v36)
  {
    v37 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  (*(v72 + 32))(v24, v21, v19);
  v53 = &v24[*(v82 + 36)];
  *v53 = v37;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_1BD0DE204(v24, v28, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE19C(v28, v84, &qword_1EBD390F8, &qword_1BE0BA700);
  swift_storeEnumTagMultiPayload();
  sub_1BD0FEDD8();
  sub_1BD38821C();
  v54 = v86;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v54, v16, &qword_1EBD43660, &unk_1BE0CFB68);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
  sub_1BD388190();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();

  sub_1BD0DE53C(v54, &qword_1EBD43660, &unk_1BE0CFB68);
  sub_1BD0DE53C(v28, &qword_1EBD390F8, &qword_1BE0BA700);
}

uint64_t sub_1BD3843F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v133 = a3;
  v134 = a4;
  v135 = a2;
  v132 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436A8, &qword_1BE0CFBB8);
  v128 = *(v6 - 8);
  v129 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v126 = (&v122 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B0, &qword_1BE0CFBC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v122 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v122 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436C0, &qword_1BE0CFBD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v127 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v122 - v24;
  v26 = [a1 leadingText];
  v27 = [a1 trailingText];
  v136 = v25;
  v137 = v27;
  if (!v26)
  {
    v42 = v27;
    (*(v13 + 56))(v25, 1, 1, v12);
    if (v42)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v123 = v12;
  v28 = v26;
  v29 = [v28 text];
  v122 = sub_1BE052434();
  v31 = v30;

  v32 = sub_1BE051464();
  v33 = [v28 textColor];
  if (v33 == 1)
  {
    v34 = sub_1BE051464();
    goto LABEL_10;
  }

  if (v33 == 2)
  {
    v34 = sub_1BE051494();
    goto LABEL_10;
  }

  if (v33 == 3)
  {
    v34 = sub_1BE0511D4();
LABEL_10:
    v45 = v34;
    v46 = v26;
    v32, v35, v36, v37, v38, v39, v40, v41;
    v32 = v45;
    goto LABEL_12;
  }

  v46 = v26;
LABEL_12:
  v47 = sub_1BD47C8E4(v33);
  [v28 isBold];
  v48 = *MEMORY[0x1E69B98E0];
  type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v133, v134, v49);
  sub_1BD382D70(v122, v31, v48, v19);
  v31, v50, v51, v52, v53, v54, v55, v56;
  v32, v57, v58, v59, v60, v61, v62, v63;
  v47, v64, v65, v66, v67, v68, v69, v70;

  v71 = v19;
  v72 = v136;
  sub_1BD0DE204(v71, v136, &qword_1EBD436B8, &qword_1BE0CFBC8);
  (*(v13 + 56))(v72, 0, 1, v123);
  v26 = v46;
  v42 = v137;
  if (v137)
  {
LABEL_13:
    v73 = v42;
    v74 = [v73 text];
    v123 = sub_1BE052434();
    v76 = v75;

    v77 = sub_1BE051464();
    v78 = [v73 textColor];
    if (v78 == 3)
    {
      v79 = sub_1BE0511D4();
    }

    else if (v78 == 2)
    {
      v79 = sub_1BE051494();
    }

    else
    {
      if (v78 != 1)
      {
LABEL_20:
        v88 = sub_1BD47C8E4(v78);
        [v73 isBold];
        v89 = *MEMORY[0x1E69B9D30];
        type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v133, v134, v90);
        v91 = v124;
        sub_1BD382D70(v123, v76, v89, v124);
        v76, v92, v93, v94, v95, v96, v97, v98;
        v77, v99, v100, v101, v102, v103, v104, v105;
        v88, v106, v107, v108, v109, v110, v111, v112;
        v113 = v125;
        sub_1BD0DE19C(v91, v125, &qword_1EBD436B8, &qword_1BE0CFBC8);
        v114 = v126;
        *v126 = 0;
        *(v114 + 8) = v26 != 0;
        *(v114 + 9) = v26 == 0;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436D0, &qword_1BE0CFBE0);
        sub_1BD0DE19C(v113, v114 + *(v115 + 48), &qword_1EBD436B8, &qword_1BE0CFBC8);

        sub_1BD0DE53C(v91, &qword_1EBD436B8, &qword_1BE0CFBC8);
        sub_1BD0DE53C(v113, &qword_1EBD436B8, &qword_1BE0CFBC8);
        v44 = v130;
        sub_1BD0DE204(v114, v130, &qword_1EBD436A8, &qword_1BE0CFBB8);
        v43 = 0;
        goto LABEL_21;
      }

      v79 = sub_1BE051464();
    }

    v87 = v79;
    v77, v80, v81, v82, v83, v84, v85, v86;
    v77 = v87;
    goto LABEL_20;
  }

LABEL_7:
  v43 = 1;
  v44 = v130;
LABEL_21:
  (*(v128 + 56))(v44, v43, 1, v129);
  v116 = v136;
  v117 = v127;
  sub_1BD0DE19C(v136, v127, &qword_1EBD436C0, &qword_1BE0CFBD0);
  v118 = v131;
  sub_1BD0DE19C(v44, v131, &qword_1EBD436B0, &qword_1BE0CFBC0);
  v119 = v132;
  sub_1BD0DE19C(v117, v132, &qword_1EBD436C0, &qword_1BE0CFBD0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436C8, &qword_1BE0CFBD8);
  sub_1BD0DE19C(v118, v119 + *(v120 + 48), &qword_1EBD436B0, &qword_1BE0CFBC0);

  sub_1BD0DE53C(v44, &qword_1EBD436B0, &qword_1BE0CFBC0);
  sub_1BD0DE53C(v116, &qword_1EBD436C0, &qword_1BE0CFBD0);
  sub_1BD0DE53C(v118, &qword_1EBD436B0, &qword_1BE0CFBC0);
  return sub_1BD0DE53C(v117, &qword_1EBD436C0, &qword_1BE0CFBD0);
}

uint64_t sub_1BD384B10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437F8, &qword_1BE0CFD90);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v57 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43800, &qword_1BE0CFD98);
  MEMORY[0x1EEE9AC00](v63);
  v65 = v57 - v8;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43808, &qword_1BE0CFDA0);
  MEMORY[0x1EEE9AC00](v62);
  v14 = v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43810, &qword_1BE0CFDA8);
  v15 = MEMORY[0x1EEE9AC00](v64);
  v17 = v57 - v16;
  v18 = (v2 + *(a1 + 56));
  v19 = *v18;
  if (*v18)
  {
    v57[0] = v18[1];
    v20 = *(v9 + 16);
    v58 = v14;
    v59 = v17;
    v21 = v19;
    v20(v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v15);
    v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v60 = a2;
    v61 = v5;
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    *(v24 + 16) = v25;
    *(v24 + 24) = v26;
    v27 = (*(v9 + 32))(v24 + v22, v12, a1);
    v57[1] = v57;
    v28 = (v24 + v23);
    v29 = v57[0];
    *v28 = v21;
    v28[1] = v29;
    MEMORY[0x1EEE9AC00](v27);
    v57[-4] = v25;
    v57[-3] = v26;
    v57[-2] = v2;
    v30 = v21;
    sub_1BD0D44B8(v21, v29);
    v31 = v29;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43840, &qword_1BE0CFDC0);
    sub_1BD0DE4F4(&qword_1EBD43848, &qword_1EBD43840, &qword_1BE0CFDC0, MEMORY[0x1E69817F8]);
    v32 = v58;
    sub_1BE051704();
    LOBYTE(v29) = *(v2 + *(a1 + 52));
    KeyPath = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    v35 = v32;
    v36 = (v32 + *(v62 + 36));
    *v36 = KeyPath;
    v36[1] = sub_1BD185ABC;
    v36[2] = v34;
    sub_1BE052434();
    v38 = v37;
    sub_1BD38881C();
    v39 = v59;
    sub_1BE050DE4();
    v38, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD0DE53C(v35, &qword_1EBD43808, &qword_1BE0CFDA0);
    v47 = &qword_1EBD43810;
    v48 = &qword_1BE0CFDA8;
    sub_1BD0DE19C(v39, v65, &qword_1EBD43810, &qword_1BE0CFDA8);
    swift_storeEnumTagMultiPayload();
    sub_1BD388768(&qword_1EBD43818, &qword_1EBD43810, &qword_1BE0CFDA8, sub_1BD38881C);
    sub_1BD0DE4F4(&qword_1EBD43838, &qword_1EBD437F8, &qword_1BE0CFD90, MEMORY[0x1E6981870]);
    sub_1BE04F9A4();
    sub_1BD0D4744(v30, v31, v49, v50, v51, v52, v53, v54);
    v55 = v39;
  }

  else
  {
    sub_1BD38576C(a1, v7);
    v47 = &qword_1EBD437F8;
    v48 = &qword_1BE0CFD90;
    sub_1BD0DE19C(v7, v65, &qword_1EBD437F8, &qword_1BE0CFD90);
    swift_storeEnumTagMultiPayload();
    sub_1BD388768(&qword_1EBD43818, &qword_1EBD43810, &qword_1BE0CFDA8, sub_1BD38881C);
    sub_1BD0DE4F4(&qword_1EBD43838, &qword_1EBD437F8, &qword_1BE0CFD90, MEMORY[0x1E6981870]);
    sub_1BE04F9A4();
    v55 = v7;
  }

  return sub_1BD0DE53C(v55, v47, v48);
}

double sub_1BD3850E0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE051984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v7 = sub_1BE0501E4();
  *(inited + 32) = v7;
  v8 = sub_1BE0501F4();
  *(inited + 33) = v8;
  v9 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v7)
  {
    v9 = sub_1BE050214();
  }

  inited, v10, v11, v12, v13, v14, v15, v16;
  sub_1BE050214();
  if (sub_1BE050214() != v8)
  {
    v9 = sub_1BE050214();
  }

  (*(v3 + 32))(a1, v5, v2);
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
  *v17 = v9;
  result = 0.0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 1;
  return result;
}

uint64_t sub_1BD385294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, void, void)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1BE04F7B4();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v5, *(a1 + 16), *(a1 + 24));
}

uint64_t sub_1BD385308(uint64_t a1)
{
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B8, &qword_1BE0CFD58);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437C0, &qword_1BE0CFD60);
  sub_1BD387990(v1, *(a1 + 16), *(a1 + 24), &v9[*(v10 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD437C8, &qword_1EBD437B8, &qword_1BE0CFD58, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v4 + 8))(v6, v3);
  return sub_1BD0DE53C(v9, &qword_1EBD437B8, &qword_1BE0CFD58);
}

uint64_t sub_1BD3854D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F504();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43850, &qword_1BE0CFDC8);
  return sub_1BD385540(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_1BD385540@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43728, &qword_1BE0CFCA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437F8, &qword_1BE0CFD90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v19 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a1, a2, v18);
  sub_1BD38576C(v19, v17);
  sub_1BD383358(v19, v11);
  sub_1BD0DE19C(v17, v14, &qword_1EBD437F8, &qword_1BE0CFD90);
  sub_1BD0DE19C(v11, v8, &qword_1EBD43728, &qword_1BE0CFCA0);
  sub_1BD0DE19C(v14, a3, &qword_1EBD437F8, &qword_1BE0CFD90);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43858, &qword_1BE0CFDD0);
  v21 = a3 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_1BD0DE19C(v8, a3 + *(v20 + 64), &qword_1EBD43728, &qword_1BE0CFCA0);
  sub_1BD0DE53C(v11, &qword_1EBD43728, &qword_1BE0CFCA0);
  sub_1BD0DE53C(v17, &qword_1EBD437F8, &qword_1BE0CFD90);
  sub_1BD0DE53C(v8, &qword_1EBD43728, &qword_1BE0CFCA0);
  return sub_1BD0DE53C(v14, &qword_1EBD437F8, &qword_1BE0CFD90);
}

uint64_t sub_1BD38576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43860, &qword_1BE0CFDD8);
  return sub_1BD3857CC(*(a1 + 16), *(a1 + 24), a2 + *(v4 + 44));
}

uint64_t sub_1BD3857CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v106 = a2;
  v111 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v104 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v104 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  v17 = PKPaymentOfferInstallmentAssessmentOffer.installmentCountString(useUpdatedText:)(0);
  v18 = sub_1BE051494();
  v19 = sub_1BE050414();
  v20 = *MEMORY[0x1E69B9D20];
  type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, a1, v106, v21);
  sub_1BD382D70(v17._countAndFlagsBits, v17._object, v20, v16);
  v17._object, v22, v23, v24, v25, v26, v27, v28;
  v18, v29, v30, v31, v32, v33, v34, v35;
  v19, v36, v37, v38, v39, v40, v41, v42;
  v43 = PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter();
  v45 = v44;
  v46 = sub_1BE051464();
  v47 = sub_1BE050324();
  v48 = v105;
  sub_1BD382D70(v43, v45, *MEMORY[0x1E69B96F8], v105);
  v46, v49, v50, v51, v52, v53, v54, v55;
  v47, v56, v57, v58, v59, v60, v61, v62;
  v45, v63, v64, v65, v66, v67, v68, v69;
  PKPaymentOfferInstallmentAssessmentOffer.downpaymentAmountString.getter();
  v71 = v70;
  v73 = v72;
  v74 = sub_1BE051494();
  v75 = sub_1BE050414();
  v76 = v107;
  sub_1BD382D70(v71, v73, *MEMORY[0x1E69B9440], v107);
  v74, v77, v78, v79, v80, v81, v82, v83;
  v75, v84, v85, v86, v87, v88, v89, v90;
  v73, v91, v92, v93, v94, v95, v96, v97;
  v98 = v108;
  sub_1BD0DE19C(v16, v108, &qword_1EBD436B8, &qword_1BE0CFBC8);
  v99 = v109;
  sub_1BD0DE19C(v48, v109, &qword_1EBD436B8, &qword_1BE0CFBC8);
  v100 = v110;
  sub_1BD0DE19C(v76, v110, &qword_1EBD436B8, &qword_1BE0CFBC8);
  v101 = v111;
  sub_1BD0DE19C(v98, v111, &qword_1EBD436B8, &qword_1BE0CFBC8);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43868, &qword_1BE0CFDE0);
  sub_1BD0DE19C(v99, v101 + *(v102 + 48), &qword_1EBD436B8, &qword_1BE0CFBC8);
  sub_1BD0DE19C(v100, v101 + *(v102 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
  sub_1BD0DE53C(v76, &qword_1EBD436B8, &qword_1BE0CFBC8);
  sub_1BD0DE53C(v48, &qword_1EBD436B8, &qword_1BE0CFBC8);
  sub_1BD0DE53C(v16, &qword_1EBD436B8, &qword_1BE0CFBC8);
  sub_1BD0DE53C(v100, &qword_1EBD436B8, &qword_1BE0CFBC8);
  sub_1BD0DE53C(v99, &qword_1EBD436B8, &qword_1BE0CFBC8);
  return sub_1BD0DE53C(v98, &qword_1EBD436B8, &qword_1BE0CFBC8);
}

uint64_t sub_1BD385B9C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v45 = a4;
  v44 = sub_1BE04FF64();
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B8, &qword_1BE0CFD58);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43790, &qword_1BE0CFD30);
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v34 - v19;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437C0, &qword_1BE0CFD60);
  sub_1BD385FEC(a1, a2, a3, &v11[*(v20 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD437C8, &qword_1EBD437B8, &qword_1BE0CFD58, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  v21 = *(v7 + 8);
  v22 = v44;
  v21(v9, v44);
  sub_1BD0DE53C(v11, &qword_1EBD437B8, &qword_1BE0CFD58);
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_1BD3863E8(v36, v37, v38, &v11[*(v20 + 44)]);
  sub_1BE04FF44();
  v23 = v40;
  sub_1BE050D14();
  v21(v9, v22);
  sub_1BD0DE53C(v11, &qword_1EBD437B8, &qword_1BE0CFD58);
  v24 = v43;
  v25 = *(v43 + 16);
  v26 = v41;
  v27 = v39;
  v25(v41, v39, v12);
  v28 = v42;
  v25(v42, v23, v12);
  v29 = v45;
  v25(v45, v26, v12);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437F0, &qword_1BE0CFD88);
  v31 = &v29[*(v30 + 48)];
  *v31 = 0;
  v31[8] = 1;
  v25(&v29[*(v30 + 64)], v28, v12);
  v32 = *(v24 + 8);
  v32(v23, v12);
  v32(v27, v12);
  v32(v28, v12);
  return (v32)(v26, v12);
}

id sub_1BD385FEC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a2;
  v92 = a3;
  v96 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v17);
  v93 = a1;
  v20 = [*a1 preferredLanguage];
  sub_1BE052434();
  v22 = v21;

  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6E4();
    v27 = v26;
    v22, v26, v28, v29, v30, v31, v32, v33;

    (*(v6 + 8))(v8, v5);
    v34 = sub_1BE051464();
    v35 = sub_1BE050324();
    v36 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v91, v92, v37);
    sub_1BD382D70(v25, v27, v36, v19);
    v27, v38, v39, v40, v41, v42, v43, v44;
    v34, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    PKPaymentOfferInstallmentAssessmentOffer.interestPercentString.getter();
    v60 = v59;
    v62 = v61;
    v63 = sub_1BE051494();
    v64 = sub_1BE050324();
    sub_1BD382D70(v60, v62, *MEMORY[0x1E69B96F8], v15);
    v62, v65, v66, v67, v68, v69, v70, v71;
    v63, v72, v73, v74, v75, v76, v77, v78;
    v64, v79, v80, v81, v82, v83, v84, v85;
    v86 = v94;
    sub_1BD0DE19C(v19, v94, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v87 = v95;
    sub_1BD0DE19C(v15, v95, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v88 = v96;
    sub_1BD0DE19C(v86, v96, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0, &qword_1BE0CFD68);
    v90 = v88 + *(v89 + 48);
    *v90 = 0;
    *(v90 + 8) = 1;
    sub_1BD0DE19C(v87, v88 + *(v89 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v15, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v87, &qword_1EBD436B8, &qword_1BE0CFBC8);
    return sub_1BD0DE53C(v86, &qword_1EBD436B8, &qword_1BE0CFBC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3863E8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a2;
  v92 = a3;
  v96 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v17);
  v93 = a1;
  v20 = [*a1 preferredLanguage];
  sub_1BE052434();
  v22 = v21;

  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6E4();
    v27 = v26;
    v22, v26, v28, v29, v30, v31, v32, v33;

    (*(v6 + 8))(v8, v5);
    v34 = sub_1BE051464();
    v35 = sub_1BE050324();
    v36 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v91, v92, v37);
    sub_1BD382D70(v25, v27, v36, v19);
    v27, v38, v39, v40, v41, v42, v43, v44;
    v34, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    PKPaymentOfferInstallmentAssessmentOffer.feesSummaryString.getter();
    v60 = v59;
    v62 = v61;
    v63 = sub_1BE051494();
    v64 = sub_1BE050324();
    sub_1BD382D70(v60, v62, *MEMORY[0x1E69B96F8], v15);
    v62, v65, v66, v67, v68, v69, v70, v71;
    v63, v72, v73, v74, v75, v76, v77, v78;
    v64, v79, v80, v81, v82, v83, v84, v85;
    v86 = v94;
    sub_1BD0DE19C(v19, v94, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v87 = v95;
    sub_1BD0DE19C(v15, v95, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v88 = v96;
    sub_1BD0DE19C(v86, v96, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0, &qword_1BE0CFD68);
    v90 = v88 + *(v89 + 48);
    *v90 = 0;
    *(v90 + 8) = 1;
    sub_1BD0DE19C(v87, v88 + *(v89 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v15, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v87, &qword_1EBD436B8, &qword_1BE0CFBC8);
    return sub_1BD0DE53C(v86, &qword_1EBD436B8, &qword_1BE0CFBC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3867E4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v54 = a4;
  v56 = sub_1BE04FF64();
  v7 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437B8, &qword_1BE0CFD58);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43790, &qword_1BE0CFD30);
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v43 - v23;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437C0, &qword_1BE0CFD60);
  v24 = &v11[*(v48 + 44)];
  v45 = a2;
  sub_1BD386D78(a1, a2, a3, v24);
  sub_1BE04FF44();
  v46 = sub_1BD0DE4F4(&qword_1EBD437C8, &qword_1EBD437B8, &qword_1BE0CFD58, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  v44 = *(v7 + 8);
  v25 = v56;
  v44(v9, v56);
  sub_1BD0DE53C(v11, &qword_1EBD437B8, &qword_1BE0CFD58);
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v27 = v48;
  v26 = v49;
  sub_1BD387198(v49, a2, a3, &v11[*(v48 + 44)]);
  sub_1BE04FF44();
  sub_1BE050D14();
  v28 = v25;
  v29 = v44;
  v44(v9, v28);
  sub_1BD0DE53C(v11, &qword_1EBD437B8, &qword_1BE0CFD58);
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_1BD387594(v26, v45, a3, &v11[*(v27 + 44)]);
  sub_1BE04FF44();
  v30 = v55;
  sub_1BE050D14();
  v29(v9, v56);
  sub_1BD0DE53C(v11, &qword_1EBD437B8, &qword_1BE0CFD58);
  v31 = v52;
  v32 = *(v52 + 16);
  v33 = v57;
  v34 = v50;
  v32(v57, v50, v12);
  v35 = v51;
  v32(v51, v58, v12);
  v36 = v53;
  v32(v53, v30, v12);
  v37 = v54;
  v32(v54, v33, v12);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437E0, &qword_1BE0CFD78);
  v39 = &v37[v38[12]];
  *v39 = 0;
  v39[8] = 1;
  v32(&v37[v38[16]], v35, v12);
  v40 = &v37[v38[20]];
  *v40 = 0;
  v40[8] = 1;
  v32(&v37[v38[24]], v36, v12);
  v41 = *(v31 + 8);
  v41(v55, v12);
  v41(v58, v12);
  v41(v34, v12);
  v41(v36, v12);
  v41(v35, v12);
  return (v41)(v57, v12);
}

void sub_1BD386D78(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a2;
  v97 = a3;
  v95 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v92 - v18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v17);
  v20 = [*a1 preferredLanguage];
  sub_1BE052434();
  v22 = v21;

  v23 = PKPassKitBundle();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1BE04B6E4();
    v27 = v26;
    v22, v26, v28, v29, v30, v31, v32, v33;

    (*(v6 + 8))(v8, v5);
    v34 = sub_1BE051464();
    v35 = sub_1BE050324();
    v36 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v96, v97, v37);
    sub_1BD382D70(v25, v27, v36, v19);
    v27, v38, v39, v40, v41, v42, v43, v44;
    v34, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    v59 = sub_1BE052404();
    v60 = PKFormattedCurrencyStringFromNumber();

    if (v60)
    {
      v61 = sub_1BE052434();
      v63 = v62;

      v64 = sub_1BE051494();
      v65 = sub_1BE050324();
      sub_1BD382D70(v61, v63, *MEMORY[0x1E69B96F8], v15);
      v63, v66, v67, v68, v69, v70, v71, v72;
      v64, v73, v74, v75, v76, v77, v78, v79;
      v65, v80, v81, v82, v83, v84, v85, v86;
      v87 = v93;
      sub_1BD0DE19C(v19, v93, &qword_1EBD436B8, &qword_1BE0CFBC8);
      v88 = v94;
      sub_1BD0DE19C(v15, v94, &qword_1EBD436B8, &qword_1BE0CFBC8);
      v89 = v95;
      sub_1BD0DE19C(v87, v95, &qword_1EBD436B8, &qword_1BE0CFBC8);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0, &qword_1BE0CFD68);
      v91 = v89 + *(v90 + 48);
      *v91 = 0;
      *(v91 + 8) = 1;
      sub_1BD0DE19C(v88, v89 + *(v90 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
      sub_1BD0DE53C(v15, &qword_1EBD436B8, &qword_1BE0CFBC8);
      sub_1BD0DE53C(v19, &qword_1EBD436B8, &qword_1BE0CFBC8);
      sub_1BD0DE53C(v88, &qword_1EBD436B8, &qword_1BE0CFBC8);
      sub_1BD0DE53C(v87, &qword_1EBD436B8, &qword_1BE0CFBC8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD387198@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a2;
  v92 = a3;
  v96 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v17);
  v93 = a1;
  v20 = [*a1 preferredLanguage];
  sub_1BE052434();
  v22 = v21;

  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6E4();
    v27 = v26;
    v22, v26, v28, v29, v30, v31, v32, v33;

    (*(v6 + 8))(v8, v5);
    v34 = sub_1BE051464();
    v35 = sub_1BE050324();
    v36 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v91, v92, v37);
    sub_1BD382D70(v25, v27, v36, v19);
    v27, v38, v39, v40, v41, v42, v43, v44;
    v34, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    PKPaymentOfferInstallmentAssessmentOffer.totalInterestDollarString.getter();
    v60 = v59;
    v62 = v61;
    v63 = sub_1BE051494();
    v64 = sub_1BE050324();
    sub_1BD382D70(v60, v62, *MEMORY[0x1E69B96F8], v15);
    v62, v65, v66, v67, v68, v69, v70, v71;
    v63, v72, v73, v74, v75, v76, v77, v78;
    v64, v79, v80, v81, v82, v83, v84, v85;
    v86 = v94;
    sub_1BD0DE19C(v19, v94, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v87 = v95;
    sub_1BD0DE19C(v15, v95, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v88 = v96;
    sub_1BD0DE19C(v86, v96, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0, &qword_1BE0CFD68);
    v90 = v88 + *(v89 + 48);
    *v90 = 0;
    *(v90 + 8) = 1;
    sub_1BD0DE19C(v87, v88 + *(v89 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v15, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v87, &qword_1EBD436B8, &qword_1BE0CFBC8);
    return sub_1BD0DE53C(v86, &qword_1EBD436B8, &qword_1BE0CFBC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD387594@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a2;
  v92 = a3;
  v96 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v17);
  v93 = a1;
  v20 = [*a1 preferredLanguage];
  sub_1BE052434();
  v22 = v21;

  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6E4();
    v27 = v26;
    v22, v26, v28, v29, v30, v31, v32, v33;

    (*(v6 + 8))(v8, v5);
    v34 = sub_1BE051464();
    v35 = sub_1BE050324();
    v36 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v91, v92, v37);
    sub_1BD382D70(v25, v27, v36, v19);
    v27, v38, v39, v40, v41, v42, v43, v44;
    v34, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    PKPaymentOfferInstallmentAssessmentOffer.totalFeesDollarString.getter();
    v60 = v59;
    v62 = v61;
    v63 = sub_1BE051494();
    v64 = sub_1BE050324();
    sub_1BD382D70(v60, v62, *MEMORY[0x1E69B96F8], v15);
    v62, v65, v66, v67, v68, v69, v70, v71;
    v63, v72, v73, v74, v75, v76, v77, v78;
    v64, v79, v80, v81, v82, v83, v84, v85;
    v86 = v94;
    sub_1BD0DE19C(v19, v94, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v87 = v95;
    sub_1BD0DE19C(v15, v95, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v88 = v96;
    sub_1BD0DE19C(v86, v96, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0, &qword_1BE0CFD68);
    v90 = v88 + *(v89 + 48);
    *v90 = 0;
    *(v90 + 8) = 1;
    sub_1BD0DE19C(v87, v88 + *(v89 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v15, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v19, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v87, &qword_1EBD436B8, &qword_1BE0CFBC8);
    return sub_1BD0DE53C(v86, &qword_1EBD436B8, &qword_1BE0CFBC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD387990@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a2;
  v95 = a3;
  v99 = a4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v94 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v94 - v17;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8078], v5, v16);
  v19 = *a1;
  v20 = [*a1 preferredLanguage];
  sub_1BE052434();
  v22 = v21;

  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6E4();
    v27 = v26;
    v22, v26, v28, v29, v30, v31, v32, v33;

    (*(v6 + 8))(v8, v5);
    v34 = sub_1BE051464();
    v35 = sub_1BE050324();
    v36 = *MEMORY[0x1E69B9D20];
    type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v94, v95, v37);
    sub_1BD382D70(v25, v27, v36, v18);
    v27, v38, v39, v40, v41, v42, v43, v44;
    v34, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    v59 = [v19 totalCost];
    if (v59 && (v60 = v59, v61 = [v59 formattedStringValue], v60, v61))
    {
      v62 = sub_1BE052434();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0xE000000000000000;
    }

    v65 = sub_1BE051464();
    v66 = sub_1BE050324();
    v67 = v96;
    sub_1BD382D70(v62, v64, *MEMORY[0x1E69B96F8], v96);
    v64, v68, v69, v70, v71, v72, v73, v74;
    v65, v75, v76, v77, v78, v79, v80, v81;
    v66, v82, v83, v84, v85, v86, v87, v88;
    v89 = v97;
    sub_1BD0DE19C(v18, v97, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v90 = v98;
    sub_1BD0DE19C(v67, v98, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v91 = v99;
    sub_1BD0DE19C(v89, v99, &qword_1EBD436B8, &qword_1BE0CFBC8);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD437D0, &qword_1BE0CFD68);
    v93 = v91 + *(v92 + 48);
    *v93 = 0;
    *(v93 + 8) = 1;
    sub_1BD0DE19C(v90, v91 + *(v92 + 64), &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v67, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v18, &qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD0DE53C(v90, &qword_1EBD436B8, &qword_1BE0CFBC8);
    return sub_1BD0DE53C(v89, &qword_1EBD436B8, &qword_1BE0CFBC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD387DD8()
{
  result = qword_1EBD435C8;
  if (!qword_1EBD435C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435A8, &qword_1BE0CFAC8);
    sub_1BD387E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD435C8);
  }

  return result;
}

unint64_t sub_1BD387E64()
{
  result = qword_1EBD435D0;
  if (!qword_1EBD435D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435A0, &qword_1BE0CFAC0);
    sub_1BD0DE4F4(&qword_1EBD435D8, &qword_1EBD435E0, &qword_1BE0CFAE8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD435D0);
  }

  return result;
}

unint64_t sub_1BD387F1C()
{
  result = qword_1EBD435E8;
  if (!qword_1EBD435E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435B0, &qword_1BE0CFAD0);
    sub_1BD387DD8();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD435E8);
  }

  return result;
}

uint64_t sub_1BD387FA8()
{
  v1 = [*(v0 + 8) offers];
  if (v1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
    v2 = sub_1BE052744();

    if (v2 >> 62)
    {
      sub_1BE053704();
    }

    v2, v3, v4, v5, v6, v7, v8, v9;
  }

  return sub_1BE053B24();
}

void sub_1BD388064(unint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v6, v7, a2) - 8);
  v9 = v3[4];
  v10 = v3 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  sub_1BD383A48(a1, v9, v10, v6, v7, a3);
}

unint64_t sub_1BD388104()
{
  result = qword_1EBD43650;
  if (!qword_1EBD43650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43648, &qword_1BE0CFB60);
    sub_1BD388190();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43650);
  }

  return result;
}

unint64_t sub_1BD388190()
{
  result = qword_1EBD43658;
  if (!qword_1EBD43658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43660, &unk_1BE0CFB68);
    sub_1BD0FEDD8();
    sub_1BD38821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43658);
  }

  return result;
}

unint64_t sub_1BD38821C()
{
  result = qword_1EBD43668;
  if (!qword_1EBD43668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43670, &qword_1BE0CFB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43678, &unk_1BE0CFB80);
    sub_1BD0DE4F4(&qword_1EBD43680, &qword_1EBD43678, &unk_1BE0CFB80, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD388348(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43668);
  }

  return result;
}

uint64_t sub_1BD388348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD3883C8()
{
  result = qword_1EBD43730;
  if (!qword_1EBD43730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43728, &qword_1BE0CFCA0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43730);
  }

  return result;
}

void *sub_1BD388480@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BD382730(a1, v9, v6, v7, a3);
}

unint64_t sub_1BD38851C()
{
  result = qword_1EBD43750;
  if (!qword_1EBD43750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43748, &qword_1BE0CFD10);
    sub_1BD3885A8();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43750);
  }

  return result;
}

unint64_t sub_1BD3885A8()
{
  result = qword_1EBD43758;
  if (!qword_1EBD43758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43760, &qword_1BE0CFD18);
    sub_1BD388634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43758);
  }

  return result;
}

unint64_t sub_1BD388634()
{
  result = qword_1EBD43768;
  if (!qword_1EBD43768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD436C0, &qword_1BE0CFBD0);
    sub_1BD3886B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43768);
  }

  return result;
}

unint64_t sub_1BD3886B8()
{
  result = qword_1EBD43770;
  if (!qword_1EBD43770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD436B8, &qword_1BE0CFBC8);
    sub_1BD388768(&qword_1EBD43778, &qword_1EBD436D8, &qword_1BE0CFBE8, sub_1BD0FF3E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43770);
  }

  return result;
}

uint64_t sub_1BD388768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD388348(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD38881C()
{
  result = qword_1EBD43820;
  if (!qword_1EBD43820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43808, &qword_1BE0CFDA0);
    sub_1BD0DE4F4(&qword_1EBD43828, &qword_1EBD43830, &unk_1BE0CFDB0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43820);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = v4 + v7;

  *(v4 + v7 + 32), v10, v11, v12, v13, v14, v15, v16;
  v17 = v6[12];
  v18 = *(v5 - 8);
  if (!(*(v18 + 48))(v4 + v7 + v17, 1, v5))
  {
    (*(v18 + 8))(v9 + v17, v5);
  }

  v26 = v9 + v6[14];
  if (*v26)
  {
    *(v26 + 8), v19, v20, v21, v22, v23, v24, v25;
  }

  *(v9 + v6[15]), v19, v20, v21, v22, v23, v24, v25;
  *(v4 + ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v27, v28, v29, v30, v31, v32, v33;

  return swift_deallocObject();
}

uint64_t sub_1BD388A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(v4 + ((*(*(v5 - 8) + 64) + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1BD3830F0(v5);
  return v6();
}

unint64_t sub_1BD388B3C()
{
  result = qword_1EBD43870;
  if (!qword_1EBD43870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43878, &qword_1BE0CFDE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD435B0, &qword_1BE0CFAD0);
    sub_1BD387F1C();
    swift_getOpaqueTypeConformance2();
    sub_1BD388348(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43870);
  }

  return result;
}

uint64_t sub_1BD388C38(uint64_t a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for AppIconImage.Loader(0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDB8, &unk_1BE0C0440);
  sub_1BE04D874();
  *(v8 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord) = 0;
  v9 = (v8 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_iconSize);
  *v9 = a3;
  v9[1] = a4;
  v10 = (v8 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier);
  *v10 = a1;
  v10[1] = a2;
  sub_1BE048C84();
  return v8;
}

__n128 sub_1BD388CFC@<Q0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_1BE051584();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v1;
  type metadata accessor for AppIconImage.Loader(0);
  sub_1BD389E68(&qword_1EBD438C0, type metadata accessor for AppIconImage.Loader, &unk_1BE0CFEC0);
  v63 = v4;
  v5 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v79);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v5, v22, v23, v24, v25, v26, v27, v28;
  if (v79)
  {
    v29 = v79;
    v30 = sub_1BE04E3C4();
    v30, v31, v32, v33, v34, v35, v36, v37;
    v38 = [objc_opt_self() mainScreen];
    [v38 scale];

    v39 = sub_1BE051564();
    v41 = v60;
    v40 = v61;
    v42 = v62;
    (*(v61 + 104))(v60, *MEMORY[0x1E6981630], v62);
    v43 = sub_1BE0515E4();
    v39, v44, v45, v46, v47, v48, v49, v50;
    (*(v40 + 8))(v41, v42);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v65[38] = v78;
    *&v65[22] = v77;
    *&v65[6] = v76;
    v66[0] = v43;
    v66[1] = 0;
    LOWORD(v67[0]) = 1;
    *(v67 + 2) = *v65;
    *&v67[3] = *(&v78 + 1);
    *(&v67[2] + 2) = *&v65[32];
    *(&v67[1] + 2) = *&v65[16];
    WORD4(v67[3]) = 257;
    BYTE10(v67[3]) = 1;
    v80 = v67[0];
    *(v82 + 11) = *(&v67[2] + 11);
    v79 = v43;
    v81 = v67[1];
    v82[0] = v67[2];
    v68 = 0;
    v84 = 0;
    sub_1BD38A144(v66, &v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8, &qword_1BE0CFFC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438D0, &qword_1BE0CFFD0);
    sub_1BD389EC0();
    sub_1BD38A02C();
    sub_1BE04F9A4();

    sub_1BD38A1B4(v66);
    v82[0] = v72;
    v82[1] = v73;
    v83 = v74;
    v84 = v75;
    v79 = v69;
    v80 = v70;
    v81 = v71;
  }

  else
  {
    v51 = sub_1BE051404();
    v52 = swift_getKeyPath();
    v53 = swift_allocObject();
    v54 = *(v1 + 1);
    *(v53 + 16) = *v1;
    *(v53 + 32) = v54;
    *(v53 + 48) = v1[4];
    sub_1BD389EB8();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v66[0]) = 1;
    *&v69 = v52;
    *(&v69 + 1) = v51;
    *&v70 = sub_1BD389EB0;
    *(&v70 + 1) = v53;
    v71 = 0uLL;
    v75 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8, &qword_1BE0CFFC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438D0, &qword_1BE0CFFD0);
    sub_1BD389EC0();
    sub_1BD38A02C();
    sub_1BE04F9A4();
  }

  result = v82[0];
  v56 = v83;
  v57 = v64;
  *(v64 + 64) = v82[1];
  *(v57 + 80) = v56;
  *(v57 + 96) = v84;
  v58 = v80;
  *v57 = v79;
  *(v57 + 16) = v58;
  *(v57 + 32) = v81;
  *(v57 + 48) = result;
  return result;
}

void sub_1BD3891D0(uint64_t *a1)
{
  type metadata accessor for AppIconImage.Loader(0);
  sub_1BD389E68(&qword_1EBD438C0, type metadata accessor for AppIconImage.Loader, &unk_1BE0CFEC0);
  v1 = sub_1BE04E3C4();
  sub_1BD3892E4();

  v1, v2, v3, v4, v5, v6, v7, v8;
}

uint64_t sub_1BD389270()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD3892E4()
{
  sub_1BD389858(*&v0[OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier], *&v0[OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier + 8]);
  v1 = *&v0[OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_iconSize];
    v3 = *&v0[OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_iconSize + 8];
    v4 = objc_opt_self();
    v5 = v1;
    v6 = [v4 mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:v2 scale:{v3, v8}];
    v10 = [v5 appClipMetadata];
    if (v10)
    {

      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    [v9 setShape_];
    v12 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v13 = sub_1BE052404();
    v14 = [v12 initWithBundleIdentifier_];

    v24[4] = sub_1BD389D98;
    v25 = v0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    v24[2] = sub_1BD20815C;
    v24[3] = &block_descriptor_72;
    v15 = _Block_copy(v24);
    v16 = v25;
    sub_1BE048964();
    v16, v17, v18, v19, v20, v21, v22, v23;
    [v14 getCGImageForImageDescriptor:v9 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_1BD3894F0(void *a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1BD389DA0;
  v26 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_3;
  v12 = _Block_copy(aBlock);
  v13 = v26;
  v14 = a1;
  sub_1BE048964();
  v13, v15, v16, v17, v18, v19, v20, v21;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD389E68(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v24 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v23);
}

uint64_t sub_1BD3897E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD389858(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v6);
  objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1BE048C84();
  v7 = sub_1BD469048(a1, a2, 1);
  v8 = *(v3 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_applicationRecord) = v7;
}

uint64_t sub_1BD389A20()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438B8, &qword_1BE0CFF40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI12AppIconImageP33_4DCA22A029AE5252821AE7347C3645226Loader_bundleIdentifier + 8), v3, v4, v5, v6, v7, v8, v9;

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppIconImage.Loader(uint64_t a1)
{
  result = qword_1EBD438A0;
  if (!qword_1EBD438A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD389B40(uint64_t a1)
{
  sub_1BD389BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD389BEC(uint64_t a1)
{
  if (!qword_1EBD438B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CDB8, &unk_1BE0C0440);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD438B0);
    }
  }
}

uint64_t sub_1BD389C5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppIconImage.Loader(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD389CA0(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD389D20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD389DA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1BD389DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD389E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD389EC0()
{
  result = qword_1EBD438D8;
  if (!qword_1EBD438D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD438C8, &qword_1BE0CFFC8);
    sub_1BD389F4C();
    sub_1BD389FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438D8);
  }

  return result;
}

unint64_t sub_1BD389F4C()
{
  result = qword_1EBD438E0;
  if (!qword_1EBD438E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD438E8, &qword_1BE0CFFD8);
    sub_1BD23F914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438E0);
  }

  return result;
}

unint64_t sub_1BD389FD8()
{
  result = qword_1EBD438F0;
  if (!qword_1EBD438F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438F0);
  }

  return result;
}

unint64_t sub_1BD38A02C()
{
  result = qword_1EBD438F8;
  if (!qword_1EBD438F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD438D0, &qword_1BE0CFFD0);
    sub_1BD38A0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD438F8);
  }

  return result;
}

unint64_t sub_1BD38A0B8()
{
  result = qword_1EBD43900;
  if (!qword_1EBD43900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43908, &qword_1BE0CFFE0);
    sub_1BD306A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43900);
  }

  return result;
}

uint64_t sub_1BD38A144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8, &qword_1BE0CFFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD38A1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD438C8, &qword_1BE0CFFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD38A21C()
{
  result = qword_1EBD43910;
  if (!qword_1EBD43910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43918, qword_1BE0CFFE8);
    sub_1BD389EC0();
    sub_1BD38A02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43910);
  }

  return result;
}

unint64_t sub_1BD38A2B4()
{
  result = qword_1EBD43920;
  if (!qword_1EBD43920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43920);
  }

  return result;
}

uint64_t sub_1BD38A308(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1BD102A4C();
    sub_1BD38A9F4(&unk_1EBD43930, sub_1BD102A4C, MEMORY[0x1E69E81B8]);
    v4 = sub_1BE052A34();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD38A3C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD041C28;

  return sub_1BD38A478();
}

uint64_t sub_1BD38A494()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[19] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD38A678;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43928, &qword_1BE0D00B0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD38A308;
    v0[13] = &block_descriptor_73;
    v0[14] = v3;
    [v2 passesWithSearchableTransactions_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD38A9F4(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BD38A678()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD38A758, 0, 0);
}

uint64_t sub_1BD38A758()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = sub_1BD1DA4F8(*(v0 + 144));
    *(v0 + 160) = v2;
    v1, v3, v4, v5, v6, v7, v8, v9;
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1BD38A86C;

    return sub_1BD0391EC(v2, 1);
  }

  else
  {

    v12 = *(v0 + 8);
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t sub_1BD38A86C(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 176) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD38A98C, 0, 0);
}

uint64_t sub_1BD38A98C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD38A9F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD38AA3C(void *a1)
{
  v3 = sub_1BE04D214();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 updateRotation];
  v8 = v1[2];
  v7 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[12];
  v12 = v1[13];
  if (v1[11])
  {
    [a1 bindSecureIndicatorProviderToAuthenticator_];
  }

  v29 = v6;
  if (v11)
  {
    v36 = *&v11;
    v37 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1BD976224;
    v35 = &block_descriptor_74;
    v11 = _Block_copy(&aBlock);
    v13 = v37;
    sub_1BE048964();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  [a1 setState:v8 animated:1 completionHandler:{v11, v29}];
  _Block_release(v11);
  [a1 setColorMode:v9 animated:1];
  if (v8 == 10 && v10)
  {
    sub_1BD38B4E4(a1, v7, v10, &aBlock);
    if (!aBlock)
    {
      return;
    }

    v21 = v1;
    [a1 setCustomImage:*&v33 withAlignmentEdgeInsets:{*&v34, *&v35, v36}];
    if (v9 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0, &qword_1BE0D0228);
      sub_1BE04FF74();
      v22 = v38[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState];

      if ((v22 & 1) == 0)
      {
        v23 = v29;
        sub_1BE04D084();
        v24 = sub_1BE04D204();
        v25 = sub_1BE052C54();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1BD026000, v24, v25, "glyphView - revealedErrorAction()", v26, 2u);
          MEMORY[0x1BFB45F20](v26, -1, -1);
        }

        v27 = (*(v30 + 8))(v23, v31);
        (v21[16])(v27);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0, &qword_1BE0D0228);
    sub_1BE04FF74();
    sub_1BD38B710(&aBlock);
    v28 = v38;
    v38[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState] = v9 == 3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0, &qword_1BE0D0228);
    sub_1BE04FF74();
    v28 = aBlock;
    *(aBlock + OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState) = v9 == 3;
  }
}

id sub_1BD38AE28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1BD38AF04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD38AF4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1BD38B018@<X0>(void *a1@<X8>)
{
  v3 = v1[7];
  v25 = v1[6];
  v26 = v3;
  v27 = v1[8];
  v4 = v1[3];
  v21 = v1[2];
  v22 = v4;
  v5 = v1[5];
  v23 = v1[4];
  v24 = v5;
  v6 = v1[1];
  v19 = *v1;
  v20 = v6;
  v7 = type metadata accessor for GlyphView.Coordinator();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_isInErrorState] = 0;
  v9 = &v8[OBJC_IVAR____TtCV9PassKitUI9GlyphView11Coordinator_parent];
  *v9 = v19;
  v10 = v23;
  v12 = v20;
  v11 = v21;
  v9[3] = v22;
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  v13 = v27;
  v15 = v24;
  v14 = v25;
  v9[7] = v26;
  v9[8] = v13;
  v9[5] = v15;
  v9[6] = v14;
  sub_1BD38B1D8(&v19, v18);
  v17.receiver = v8;
  v17.super_class = v7;
  result = objc_msgSendSuper2(&v17, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD38B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD38B778();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD38B148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD38B778();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD38B1AC(uint64_t a1)
{
  sub_1BD38B778();
  sub_1BE04F964();
  __break(1u);
}

void *sub_1BD38B210()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69BC758]) initWithStyle_];
  if (v1)
  {
    v2 = v1;
    [v1 setState:6 animated:0 completionHandler:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C0, &qword_1BE0D0228);
    sub_1BE04FF74();
    [v2 setDelegate_];

    [v2 setBounds_];
    [v2 updateRasterizationScale_];
    if (*(v0 + 88))
    {
      [v2 bindSecureIndicatorProviderToAuthenticator_];
    }

    return v2;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD38B358(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = PKPassKitUIBundle();
  v7 = sub_1BE052404();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  v9 = 0uLL;
  if (!v8)
  {
    v13 = 0;
    v18 = 0uLL;
    goto LABEL_9;
  }

  v10 = [v8 imageWithRenderingMode_];

  v11 = [a1 primaryColor];
  v12 = [v10 _flatImageWithColor_];

  if (!v12)
  {
    v13 = 0;
LABEL_8:
    v18 = 0uLL;
    v9 = 0uLL;
    goto LABEL_9;
  }

  v13 = [v12 CGImage];
  if (!v13)
  {

    goto LABEL_8;
  }

  [v12 alignmentRectInsets];
  v20 = v14;
  v21 = v15;
  v19 = v16;
  v22 = v17;

  *&v18 = v19;
  *&v9 = v20;
  *(&v9 + 1) = v21;
  *(&v18 + 1) = v22;
LABEL_9:
  *a4 = v13;
  *(a4 + 8) = v9;
  *(a4 + 24) = v18;
}

void sub_1BD38B4E4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 != 0xD00000000000001ALL || 0x80000001BE125F50 != a3)
  {
    v5 = a1;
    v6 = sub_1BE053B84();
    a1 = v5;
    if ((v6 & 1) == 0)
    {
      v10 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:26.0];
      v11 = sub_1BE052404();
      v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

      if (v12 && (v13 = [v12 imageWithRenderingMode_], v12, v14 = objc_msgSend(v5, sel_primaryColor), v15 = objc_msgSend(v13, sel__flatImageWithColor_, v14), v13, v14, v15))
      {
        v7 = [v15 CGImage];
        if (v7)
        {
          [v15 alignmentRectInsets];
          v21 = v16;
          v22 = v17;
          v20 = v18;
          v23 = v19;

          *&v9 = v20;
          *&v8 = v21;
          *(&v8 + 1) = v22;
          *(&v9 + 1) = v23;
          goto LABEL_11;
        }
      }

      else
      {

        v7 = 0;
      }

      v8 = 0uLL;
      v9 = 0uLL;
      goto LABEL_11;
    }
  }

  sub_1BD38B358(a1, &v24);
  v7 = v24;
  v8 = v25;
  v9 = v26;
LABEL_11:
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 24) = v9;
}

uint64_t sub_1BD38B710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD439C8, &unk_1BE0D0230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD38B778()
{
  result = qword_1EBD439D0;
  if (!qword_1EBD439D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD439D0);
  }

  return result;
}

uint64_t sub_1BD38B830()
{
  sub_1BD38BA10(v0 + OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollViewManager(uint64_t a1)
{
  result = qword_1EBD439E0;
  if (!qword_1EBD439E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD38B8E8(uint64_t a1)
{
  sub_1BD38B978(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD38B978(uint64_t a1)
{
  if (!qword_1EBD439F0)
  {
    sub_1BE04ECA4();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD439F0);
    }
  }
}

uint64_t sub_1BD38B9D0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScrollViewManager(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD38BA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100, &unk_1BE0D0290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD38BA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppleCardRewardsInfoView(0);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BD579C04())
  {
    v7 = *(a1 + 72);
    if (v7 != 1)
    {
      v8 = *(a1 + 64);
      v10 = *(a1 + 80);
      v9 = *(a1 + 88);
      v11 = *(a1 + 104);
      v21 = *(a1 + 96);
      v12 = *(a1 + 112);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      if (PKOslo2024UIUpdatesEnabled())
      {
        if (v7 || (v12 & 1) != 0)
        {
LABEL_15:
          v22 = a2;
          v16 = v21;
          goto LABEL_16;
        }
      }

      else if ((v12 & 1) != 0 || v9)
      {
        goto LABEL_15;
      }

      sub_1BD38BF48(v8, v7, v10, v9, v21, v11, v12, v13);
    }
  }

  v7 = *(a1 + 16);
  if (v7 != 1)
  {
    v22 = a2;
    v16 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v8 = *(a1 + 8);
    LOBYTE(v12) = *(a1 + 56);
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
LABEL_16:
    sub_1BD38BEE0(a1, v6, type metadata accessor for PassEligibleRewardsInfo);
    v17 = &v6[*(v4 + 20)];
    *v17 = v8;
    *(v17 + 1) = v7;
    *(v17 + 2) = v10;
    *(v17 + 3) = v9;
    *(v17 + 4) = v16;
    *(v17 + 5) = v11;
    v17[48] = v12 & 1;
    v18 = &v6[*(v4 + 24)];
    *v18 = v10;
    *(v18 + 1) = v9;
    v19 = v22;
    sub_1BD38BEE0(v6, v22, type metadata accessor for AppleCardRewardsInfoView);
    (*(v23 + 56))(v19, 0, 1, v4);
    return sub_1BE048C84();
  }

  sub_1BD38BE84(a1);
  v14 = *(v23 + 56);

  return v14(a2, 1, 1, v4);
}

uint64_t type metadata accessor for AppleCardRewardsInfoView(uint64_t a1)
{
  result = qword_1EBD439F8;
  if (!qword_1EBD439F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BD38BD38@<D0>(uint64_t a2@<X8>)
{
  v3 = PKOslo2024UIUpdatesEnabled();
  type metadata accessor for AppleCardRewardsInfoView(0);
  if (!v3)
  {
    v4 = *MEMORY[0x1E69B9B90];
    sub_1BE048C84();
    v5 = v4;
  }

  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43A08, &qword_1BE0D0310);
  sub_1BD38C09C(&qword_1EBD43A10, &qword_1EBD43A08, &qword_1BE0D0310, sub_1BD38C06C);
  sub_1BD38C16C();
  sub_1BE04F9A4();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_1BD38BE84(uint64_t a1)
{
  v2 = type metadata accessor for PassEligibleRewardsInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD38BEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD38BF48(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v11, v12, v13, v14, v15, v16, v17;

    a6, v18, v19, v20, v21, v22, v23, v24;
  }
}

void sub_1BD38BFC4(uint64_t a1)
{
  type metadata accessor for PassEligibleRewardsInfo(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD38C09C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD38C118()
{
  result = qword_1EBD43A28;
  if (!qword_1EBD43A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A28);
  }

  return result;
}

unint64_t sub_1BD38C16C()
{
  result = qword_1EBD43A30;
  if (!qword_1EBD43A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A30);
  }

  return result;
}

unint64_t sub_1BD38C1C0()
{
  result = qword_1EBD43A38;
  if (!qword_1EBD43A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43A40, qword_1BE0D0320);
    sub_1BD38C09C(&qword_1EBD43A10, &qword_1EBD43A08, &qword_1BE0D0310, sub_1BD38C06C);
    sub_1BD38C16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A38);
  }

  return result;
}

unint64_t sub_1BD38C27C()
{
  result = qword_1EBD43A48;
  if (!qword_1EBD43A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A48);
  }

  return result;
}

unint64_t sub_1BD38C2D4()
{
  result = qword_1EBD43A50;
  if (!qword_1EBD43A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43A50);
  }

  return result;
}

char *NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = OBJC_IVAR___PKNearbyPeerPaymentViewController_divider;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v14 = OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentMetadataView()) init];
  v15 = OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView;
  *&v5[v15] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentErrorView()) init];
  v16 = OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager;
  *&v5[v16] = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager(0)) init];
  *&v5[OBJC_IVAR___PKNearbyPeerPaymentViewController_amount] = 0;
  v17 = &v5[OBJC_IVAR___PKNearbyPeerPaymentViewController_memo];
  *v17 = 0;
  *(v17 + 1) = 0;
  v5[OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar] = 1;
  v65 = a4;
  v66 = a5;
  switch(a1)
  {
    case 0:
      v18 = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentReceiverVFXViewController(0)) init];
      v19 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
      swift_beginAccess();
      v18[v19] = 0;
LABEL_5:
      *&v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_context] = a1;
      *&v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] = v18;
      v20 = *&v6[v16];
      KeyPath = swift_getKeyPath();
      sub_1BD38EA34();
      v64 = v18;
      v22 = v20;
      sub_1BE04B594();
      KeyPath, v23, v24, v25, v26, v27, v28, v29;
      v30 = *&v22[OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData];

      v31 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentFooterView());
      *&v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView] = sub_1BD89E9F4(a1, v30);
      v32 = &v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_screenEdgeSwipeAction];
      *v32 = a2;
      *(v32 + 1) = a3;
      v33 = &v6[OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction];
      *v33 = v65;
      v33[1] = v66;
      v67.receiver = v6;
      v67.super_class = type metadata accessor for NearbyPeerPaymentViewController();
      sub_1BE048964();
      sub_1BE048964();
      v34 = objc_msgSendSuper2(&v67, sel_initWithNibName_bundle_, 0, 0);
      v35 = *&v34[OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager];
      v36 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v36);
      v37 = v34;
      v38 = v35;
      sub_1BE04B584();

      v36, v39, v40, v41, v42, v43, v44, v45;
      v46 = *&v37[OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView];
      v47 = v37;
      [v46 setDelegate_];
      v48 = *&v47[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView] + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
      swift_beginAccess();
      *(v48 + 8) = &protocol witness table for NearbyPeerPaymentViewController;
      swift_unknownObjectWeakAssign();

      [v47 addChildViewController_];
      a3, v49, v50, v51, v52, v53, v54, v55;
      v66, v56, v57, v58, v59, v60, v61, v62;

      return v47;
    case 1:
      v18 = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentSenderVFXViewController()) init];
      goto LABEL_5;
    case 2:
      sub_1BE053994();
      __break(1u);
      break;
  }

  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

void *sub_1BD38C7B8()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD38C804(void *a1)
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1BD38D490();
}

void (*sub_1BD38C86C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD38C8D0;
}

void sub_1BD38C8D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BD38D490();
  }
}

uint64_t sub_1BD38C904()
{
  v1 = (v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v2 = *v1;
  sub_1BE048C84();
  return v2;
}

void sub_1BD38C95C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD38CA1C()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BD38CA60(char a1)
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD38EBB4;
  v15 = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_75;
  v6 = _Block_copy(aBlock);
  v15, v7, v8, v9, v10, v11, v12, v13;
  [v4 animateWithDuration:v6 animations:0.5];
  _Block_release(v6);
}

void (*sub_1BD38CB70(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1BD38CBF8;
}

void sub_1BD38CBF8(id **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3[4] = sub_1BD38F518;
    v3[5] = v5;
    *v3 = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1BD126964;
    v3[3] = &block_descriptor_9_2;
    v6 = _Block_copy(v3);
    v3[5], v7, v8, v9, v10, v11, v12, v13;
    [v4 animateWithDuration:v6 animations:0.5];
    _Block_release(v6);
  }

  free(v3);
}

void sub_1BD38CD04()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D234();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_context];
  v8 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager];
  v9 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController());
  v10 = NearbyPeerPaymentAppearancePreferencesViewController.init(context:identityManager:)(v7, v8);
  v11 = v10;
  if (_UISolariumFeatureFlagEnabled())
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  }

  v12 = [v0 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = sub_1BE052E84();
  v15 = [v11 sheetPresentationController];
  if (v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B7020;
    v68 = v6;
    v18 = objc_opt_self();
    v19 = &selRef_largeDetent;
    if ((v14 & 1) == 0)
    {
      v19 = &selRef_mediumDetent;
    }

    *(v17 + 32) = [v18 *v19];
    sub_1BD0E5E8C(0, &unk_1EBD43AF0, 0x1E69DCF58);
    v20 = sub_1BE052724();
    v17, v21, v22, v23, v24, v25, v26, v27;
    [v16 setDetents_];
  }

  v28 = [v11 presentationController];
  if (v28)
  {
    v29 = v28;
    sub_1BE052EE4();
    sub_1BE04D224();
    sub_1BE052EF4();
  }

  [v1 presentViewController:v11 animated:1 completion:0];
  if (v7 == 1)
  {
    v71 = 0;
    memset(v70, 0, sizeof(v70));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v52 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v53 = sub_1BE052434();
    v54 = MEMORY[0x1E69BA440];
    *(inited + 40) = v53;
    *(inited + 48) = v55;
    v56 = *v54;
    *(inited + 56) = *v54;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v57;
    v58 = v52;
    v59 = v56;
    v60 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v70, v60);

    v60, v61, v62, v63, v64, v65, v66, v67;
    sub_1BD11326C(v70);
  }

  else if (v7)
  {
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680, &unk_1BE0CCB00);
    v31 = v69;
    v32 = &v69[*(v30 + 48)];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0, &qword_1BE0DA4F0);
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    *v32 = 0;
    *(v32 + 1) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_1BE0B6CA0;
    v35 = *MEMORY[0x1E69BA680];
    *(v34 + 32) = *MEMORY[0x1E69BA680];
    v36 = sub_1BE052434();
    v37 = MEMORY[0x1E69BA440];
    *(v34 + 40) = v36;
    *(v34 + 48) = v38;
    v39 = *v37;
    *(v34 + 56) = *v37;
    *(v34 + 64) = sub_1BE052434();
    *(v34 + 72) = v40;
    v41 = v35;
    v42 = v39;
    v43 = sub_1BD1AAF50(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v31, v43);

    v43, v44, v45, v46, v47, v48, v49, v50;
    sub_1BD32E45C(v31);
  }
}

void sub_1BD38D28C(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
  sub_1BD0EE8CC(a1, v7);
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD266DC0(v7, v3 + v4);
  swift_endAccess();
  sub_1BD97A1FC();
  sub_1BD0DE53C(v7, &qword_1EBD3F678, &unk_1BE0C64C0);
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD38D35C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider);
  [a1 contentOffset];
  v3 = 0.0;
  if (v4 > 0.0)
  {
    v3 = 1.0;
  }

  return [v2 setAlpha_];
}

void sub_1BD38D42C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_1BD38D490();
}

void sub_1BD38D490()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  v6 = swift_beginAccess();
  v7 = *(v2 + v5);
  *(v2 + v5) = v4;
  if (v7)
  {
    if (v4)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
      v8 = v4;
      v9 = v7;
      v10 = sub_1BE053074();

      if (v10)
      {

LABEL_11:
        goto LABEL_12;
      }
    }

LABEL_7:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v6);
    if (*(v2 + v5))
    {
      sub_1BD6323D4();
      v11 = [v2 view];
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      [v11 setNeedsLayout];
    }

    v9 = v4;
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = v4;
    goto LABEL_7;
  }

LABEL_12:
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];

    return;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1BD38D648(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t NearbyPeerPaymentViewController.screenEdgeSwipeAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_screenEdgeSwipeAction);
  sub_1BE048964();
  return v1;
}

uint64_t NearbyPeerPaymentViewController.dismissAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
  sub_1BE048964();
  return v1;
}

void sub_1BD38D780(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsStatusBarAppearanceUpdate];
  }
}

void sub_1BD38D928()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NearbyPeerPaymentViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  [v2 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_divider];
  [v9 setAlpha_];
  v10 = [v3 separatorColor];
  [v9 setBackgroundColor_];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  [v11 addSubview_];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView];
  [v13 addSubview_];

  v16 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  [v16 setAlpha_];
  [v15 addSubview_];
  v17 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v18 = v0;
  v19 = [v17 initWithTarget:v18 action:sel_showAppearanceDetail];
  v20 = *&v18[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView];
  [*&v20[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView] addGestureRecognizer_];
  [v20 setAlpha_];
  [v15 addSubview_];
  [*&v18[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView] setAlpha_];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCEB8]) initWithTarget:v18 action:sel_handlePan_];

  [v21 setEdges_];
  v22 = [v18 view];
  if (v22)
  {
    v23 = v22;
    [v22 addGestureRecognizer_];

    [v18 setAccessibilityIdentifier_];
    return;
  }

LABEL_13:
  __break(1u);
}

BOOL sub_1BD38DCC8()
{
  result = PKIsSmallDevice();
  v1 = 24.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1EBD43A60 = *&v1;
  return result;
}

double static NearbyPeerPaymentViewController.horizontalPadding.getter()
{
  if (qword_1EBD36BE8 != -1)
  {
    swift_once();
  }

  return *&qword_1EBD43A60;
}

void sub_1BD38DD48()
{
  v125 = *MEMORY[0x1E69E9840];
  v124.receiver = v0;
  v124.super_class = type metadata accessor for NearbyPeerPaymentViewController();
  objc_msgSendSuper2(&v124, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [v0 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  [v34 safeAreaInsets];
  v37 = v36;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v126.origin.x = v27;
  v126.origin.y = v29;
  v126.size.width = v31;
  v126.size.height = v33;
  CGRectDivide(v126, &slice, &remainder, v37, CGRectMinYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  v42 = [v0 view];
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v42;
  [v42 safeAreaInsets];
  v45 = v44;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  CGRectDivide(v127, &slice, &remainder, v45, CGRectMaxYEdge);
  v46 = remainder.origin.x;
  v47 = remainder.origin.y;
  v48 = remainder.size.width;
  v49 = remainder.size.height;
  v50 = [v0 view];
  if (!v50)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v51 = v50;
  [v50 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v128.origin.x = v53;
  v128.origin.y = v55;
  v128.size.width = v57;
  v128.size.height = v59;
  v60 = CGRectGetHeight(v128);
  v61 = [v0 view];
  if (!v61)
  {
    goto LABEL_22;
  }

  v62 = v61;
  v63 = v60 * 0.49;
  [v61 safeAreaInsets];
  v65 = v64;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v129.origin.x = v46;
  v129.origin.y = v47;
  v129.size.width = v48;
  v129.size.height = v49;
  CGRectDivide(v129, &slice, &remainder, v63 - v65 + 32.0, CGRectMinYEdge);
  v66 = remainder.origin.x;
  v67 = remainder.origin.y;
  v68 = remainder.size.width;
  v69 = remainder.size.height;
  v70 = CGRectGetWidth(remainder);
  v71 = PKUIPixelLength();
  v72 = PKContentAlignmentMake();
  v73.n128_f64[0] = v70;
  v74.n128_f64[0] = v71;
  v75.n128_f64[0] = v66;
  v76.n128_f64[0] = v67;
  v77.n128_f64[0] = v68;
  v78.n128_f64[0] = v69;
  PKSizeAlignedInRect(v72, v73, v74, v75, v76, v77, v78, v79);
  [*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_divider] setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v130.origin.x = v66;
  v130.origin.y = v67;
  v130.size.width = v68;
  v130.size.height = v69;
  CGRectDivide(v130, &slice, &remainder, v71, CGRectMinYEdge);
  v80 = remainder.origin.x;
  v81 = remainder.origin.y;
  v82 = remainder.size.width;
  v83 = remainder.size.height;
  v84 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView];
  [v84 setFrame_];
  v85 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView];
  [v85 sizeThatFits_];
  v120 = v86;
  v121 = v87;
  v88 = v87 + 4.0;
  if (qword_1EBD36BE8 != -1)
  {
    swift_once();
  }

  v89 = *&qword_1EBD43A60;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v131.origin.x = v80;
  v131.origin.y = v81;
  v131.size.width = v82;
  v131.size.height = v83;
  CGRectDivide(v131, &slice, &remainder, *&qword_1EBD43A60, CGRectMinXEdge);
  v132 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v132, &slice, &remainder, v89, CGRectMaxXEdge);
  v90 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  [v90 sizeThatFits_];
  v119 = v91;
  v93 = v92;
  v94 = v88 + v92 + 24.0;
  v133.origin.x = v80;
  v133.origin.y = v81;
  v133.size.width = v82;
  v133.size.height = v83;
  v95 = CGRectGetHeight(v133);
  v134.origin.x = v80;
  v134.origin.y = v81;
  v134.size.width = v82;
  v134.size.height = v83;
  v96 = CGRectGetWidth(v134);
  if (v95 >= v94)
  {
    v136.origin.x = v80;
    v136.origin.y = v81;
    v136.size.width = v82;
    v136.size.height = v83;
    v94 = CGRectGetHeight(v136);
    [v84 setContentSize_];
  }

  else
  {
    v135.origin.x = 0.0;
    v135.origin.y = 0.0;
    v135.size.width = v96;
    v135.size.height = v94;
    [v84 setContentSize_];
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v137.origin.x = 0.0;
  v137.origin.y = 0.0;
  v137.size.width = v96;
  v137.size.height = v94;
  CGRectDivide(v137, &slice, &remainder, 4.0, CGRectMaxYEdge);
  v97 = remainder.origin.x;
  v98 = remainder.origin.y;
  v99 = remainder.size.width;
  v100 = remainder.size.height;
  v101.n128_u64[0] = v120;
  v102.n128_f64[0] = v121;
  v103.n128_u64[0] = *&remainder.origin.x;
  v104.n128_u64[0] = *&remainder.origin.y;
  v105.n128_u64[0] = *&remainder.size.width;
  v106.n128_u64[0] = *&remainder.size.height;
  PKSizeAlignedInRect(0x200000001, v101, v102, v103, v104, v105, v106, v107);
  [v85 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v138.origin.x = v97;
  v138.origin.y = v98;
  v138.size.width = v99;
  v138.size.height = v100;
  CGRectDivide(v138, &slice, &remainder, v121, CGRectMaxYEdge);
  v108 = remainder.origin.x;
  v109 = remainder.origin.y;
  v110 = remainder.size.width;
  v111 = remainder.size.height;
  v112.n128_u64[0] = v119;
  v113.n128_f64[0] = v93;
  v114.n128_u64[0] = *&remainder.origin.x;
  v115.n128_u64[0] = *&remainder.origin.y;
  v116.n128_u64[0] = *&remainder.size.width;
  v117.n128_u64[0] = *&remainder.size.height;
  PKSizeAlignedInRect(1, v112, v113, v114, v115, v116, v117, v118);
  [v90 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v139.origin.x = v108;
  v139.origin.y = v109;
  v139.size.width = v110;
  v139.size.height = v111;
  CGRectDivide(v139, &slice, &remainder, v93, CGRectMinYEdge);
}

void sub_1BD38E5B0(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
  sub_1BD38F438(a1, v4);
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_1BE04A9C4();
    (*(v7 + 8))(v4, v6);
  }

  v14[0] = 0;
  v9 = [v5 openURL:v8 configuration:0 error:v14];

  if (v9)
  {
    v10 = v14[0];
  }

  else
  {
    v11 = v14[0];
    v12 = sub_1BE04A854();

    swift_willThrow();
  }
}

id NearbyPeerPaymentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

id NearbyPeerPaymentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD38EA34()
{
  result = qword_1EBD3F6F0;
  if (!qword_1EBD3F6F0)
  {
    type metadata accessor for PeerPaymentIdentityManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F6F0);
  }

  return result;
}

void sub_1BD38EACC(void *a1)
{
  v14 = *(*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView);
  sub_1BD374824(a1);
  v3 = *&v14[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v4 = [a1 displayName];
  if (!v4)
  {
    sub_1BE052434();
    v6 = v5;
    v4 = sub_1BE052404();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  [v3 setText_];

  [v14 setNeedsLayout];
}

uint64_t sub_1BD38EBBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - v7;
  v9 = sub_1BE04A3B4();
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v12 = sub_1BE052434();
  MEMORY[0x1BFB37400](v12);
  v88 = 47;
  v89 = 0xE100000000000000;
  v13 = sub_1BE052434();
  v15 = v14;
  MEMORY[0x1BFB3F610](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  v90 = v88;
  v91 = v89;
  v23 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v24 = *(v0 + v23);
  if (v24)
  {
    v25 = v24;
    v26 = [v25 amount];
    if (v26)
    {
      v86 = 47;
      v87 = 0xE100000000000000;
      v81 = v26;
      v82 = v9;
      v27 = [v26 description];
      v28 = v1;
      v29 = v8;
      v30 = v5;
      v31 = v3;
      v32 = sub_1BE052434();
      v34 = v33;

      v35 = v32;
      v3 = v31;
      v5 = v30;
      v8 = v29;
      v1 = v28;
      MEMORY[0x1BFB3F610](v35, v34);
      v34, v36, v37, v38, v39, v40, v41, v42;
      v43 = v87;
      MEMORY[0x1BFB3F610](v86, v87);

      v9 = v82;
      v43, v44, v45, v46, v47, v48, v49, v50;
    }

    else
    {
    }
  }

  v51 = (v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    v84 = 47;
    v85 = 0xE100000000000000;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v53, v52);
    v52, v54, v55, v56, v57, v58, v59, v60;
    v61 = v85;
    MEMORY[0x1BFB3F610](v84, v85);
    v61, v62, v63, v64, v65, v66, v67, v68;
  }

  MEMORY[0x1BFB37410](v90, v91);
  sub_1BE04A364();
  v69 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_dismissAction);
  sub_1BD38F438(v8, v5);
  v70 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v71 = swift_allocObject();
  sub_1BD226B4C(v5, v71 + v70);
  v69(sub_1BD38F4A8, v71);
  v71, v72, v73, v74, v75, v76, v77, v78;
  sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
  return (*(v83 + 8))(v11, v9);
}

void sub_1BD38F304()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentViewController_divider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v3 = OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentMetadataView()) init];
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentErrorView()) init];
  v5 = OBJC_IVAR___PKNearbyPeerPaymentViewController_identityManager;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager(0)) init];
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_amount) = 0;
  v6 = (v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar) = 1;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD38F438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD38F4A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD38E5B0(v2);
}

unint64_t sub_1BD38F53C()
{
  result = qword_1EBD43B10;
  if (!qword_1EBD43B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43B10);
  }

  return result;
}

void sub_1BD38F594(void *a1, uint64_t a2, id *a3)
{
  v4 = v3;
  v150 = a3;
  v154 = a1;
  v147 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v147);
  v148 = (&v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE04D214();
  v151 = *(v7 - 8);
  v152 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v153 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v149 = (&v146 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v146 - v12;
  v14 = type metadata accessor for WrappedPass(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v146 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v146 - v22;
  sub_1BD0DE19C(a2, v13, &unk_1EBD43B90, &unk_1BE0B89D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD43B90, &unk_1BE0B89D0);
    v24 = v153;
    v25 = v154;
    v26 = MEMORY[0x1E69E7D40];
    v27 = v150;
    if (!v150)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  sub_1BD395E3C(v13, v23, type metadata accessor for WrappedPass);
  sub_1BE04D084();
  sub_1BD395DD4(v23, v20, type metadata accessor for WrappedPass);
  v25 = v154;
  v58 = v154;
  v59 = sub_1BE04D204();
  v60 = sub_1BE052C54();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v155 = v146;
    *v61 = 138412546;
    *(v61 + 4) = v58;
    *v62 = v58;
    *(v61 + 12) = 2080;
    sub_1BD395DD4(v20, v17, type metadata accessor for WrappedPass);
    v63 = v58;
    v64 = sub_1BE0524A4();
    v66 = v65;
    sub_1BD395EA4(v20, type metadata accessor for WrappedPass);
    v67 = sub_1BD123690(v64, v66, &v155);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v61 + 14) = v67;
    _os_log_impl(&dword_1BD026000, v59, v60, "Callback Handling: updateDefaultBillingAddress %@ %s", v61, 0x16u);
    sub_1BD0DE53C(v62, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v62, -1, -1);
    v75 = v146;
    __swift_destroy_boxed_opaque_existential_0(v146, v76, v77, v78, v79, v80, v81, v82);
    MEMORY[0x1BFB45F20](v75, -1, -1);
    v83 = v61;
    v25 = v154;
    MEMORY[0x1BFB45F20](v83, -1, -1);
  }

  else
  {

    sub_1BD395EA4(v20, type metadata accessor for WrappedPass);
  }

  (*(v151 + 8))(v149, v152);
  v24 = v153;
  v26 = MEMORY[0x1E69E7D40];
  sub_1BD0E6EB0(v58, v23);
  sub_1BD395EA4(v23, type metadata accessor for WrappedPass);
  v27 = v150;
  if (v150)
  {
LABEL_3:
    v28 = v27;
    sub_1BE04D084();
    v29 = v25;
    v30 = v28;
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C54();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v149 = v34;
      v150 = swift_slowAlloc();
      v155 = v150;
      *v33 = 138412546;
      *(v33 + 4) = v29;
      *v34 = v29;
      *(v33 + 12) = 2080;
      v35 = v29;
      v36 = v30;
      v37 = [v36 description];
      v38 = sub_1BE052434();
      v40 = v39;

      v26 = MEMORY[0x1E69E7D40];
      v41 = sub_1BD123690(v38, v40, &v155);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v33 + 14) = v41;
      _os_log_impl(&dword_1BD026000, v31, v32, "Callback Handling: updateDefaultBillingAddress %@ %s", v33, 0x16u);
      v49 = v149;
      sub_1BD0DE53C(v149, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v49, -1, -1);
      v50 = v150;
      __swift_destroy_boxed_opaque_existential_0(v150, v51, v52, v53, v54, v55, v56, v57);
      MEMORY[0x1BFB45F20](v50, -1, -1);
      MEMORY[0x1BFB45F20](v33, -1, -1);

      (*(v151 + 8))(v153, v152);
    }

    else
    {

      (*(v151 + 8))(v24, v152);
    }

    [*(*(v4 + *((*v26 & *v4) + 0x80)) + 80) setDefaultBillingAddress:v29 forBankInformation:v30];

    v25 = v154;
  }

LABEL_11:
  v84 = *(v4 + *((*v26 & *v4) + 0x80));
  v85 = v84[6];
  v84[6] = v25;
  v86 = v84[4];
  if (v86)
  {
    v87 = v84[5];
    v88 = v25;
    v89 = sub_1BD0D44B8(v86, v87);
    v86(v89);
    sub_1BD0D4744(v86, v87, v90, v91, v92, v93, v94, v95);
    if (v85)
    {
LABEL_13:
      v96 = [v85 identifier];
      v97 = sub_1BE052434();
      v99 = v98;

      goto LABEL_16;
    }
  }

  else
  {
    v100 = v25;
    if (v85)
    {
      goto LABEL_13;
    }
  }

  v97 = 0;
  v99 = 0;
LABEL_16:
  v101 = [*(v4 + *((*v26 & *v4) + 0xD0)) billingAddress];
  if (!v101)
  {
    if (v99)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v102 = v101;
  v103 = [v101 identifier];

  v104 = sub_1BE052434();
  v106 = v105;

  v26 = MEMORY[0x1E69E7D40];
  if (v99)
  {
    if (v106)
    {
      if (v97 == v104 && v99 == v106)
      {
        v99, v107, v108, v109, v110, v111, v112, v113;
        v106, v137, v138, v139, v140, v141, v142, v143;
      }

      else
      {
        v115 = sub_1BE053B84();
        v99, v116, v117, v118, v119, v120, v121, v122;
        v106, v123, v124, v125, v126, v127, v128, v129;
        if ((v115 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

LABEL_26:

    v99, v130, v131, v132, v133, v134, v135, v136;
    return;
  }

  if (!v106)
  {
LABEL_30:
    v144 = v148;
    *v148 = v25;
    swift_storeEnumTagMultiPayload();
    v145 = v25;
    sub_1BD6B56B4(v144, 2);
    sub_1BD395EA4(v144, type metadata accessor for Analytics.StateChange);
    [*(v4 + *((*v26 & *v4) + 0xD8)) didSelectBillingAddress_];
    goto LABEL_31;
  }

  v106, v107, v108, v109, v110, v111, v112, v113;
LABEL_31:
}

void sub_1BD38FE90(void *a1)
{
  v2 = v1;
  v79 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v79);
  v5 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v10 = a1;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1BD026000, v11, v12, "Callback Handling: updateMerchantProvidedBillingAddress %@", v13, 0xCu);
    sub_1BD0DE53C(v14, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = MEMORY[0x1E69E7D40];
  v17 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
  v18 = v17[7];
  v17[7] = v10;
  v19 = v17[4];
  if (v19)
  {
    v20 = v17[5];
    v21 = v10;
    v22 = sub_1BD0D44B8(v19, v20);
    v19(v22);
    sub_1BD0D4744(v19, v20, v23, v24, v25, v26, v27, v28);
    if (v18)
    {
LABEL_5:
      v29 = [v18 identifier];
      v30 = sub_1BE052434();
      v32 = v31;

      goto LABEL_8;
    }
  }

  else
  {
    v33 = v10;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  v30 = 0;
  v32 = 0;
LABEL_8:
  v34 = [*(v2 + *((*v16 & *v2) + 0xD0)) billingAddress];
  if (!v34)
  {
    if (v32)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 identifier];

  v37 = sub_1BE052434();
  v39 = v38;

  if (v32)
  {
    if (v39)
    {
      if (v30 == v37 && v32 == v39)
      {
        v32, v40, v41, v42, v43, v44, v45, v46;
        v39, v70, v71, v72, v73, v74, v75, v76;
      }

      else
      {
        v48 = sub_1BE053B84();
        v32, v49, v50, v51, v52, v53, v54, v55;
        v39, v56, v57, v58, v59, v60, v61, v62;
        if ((v48 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }

LABEL_18:

    v32, v63, v64, v65, v66, v67, v68, v69;
    return;
  }

  if (!v39)
  {
LABEL_22:
    *v5 = v10;
    swift_storeEnumTagMultiPayload();
    v77 = v10;
    sub_1BD6B56B4(v5, 2);
    sub_1BD395EA4(v5, type metadata accessor for Analytics.StateChange);
    [*(v2 + *((*v16 & *v2) + 0xD8)) didSelectBillingAddress_];
    goto LABEL_23;
  }

  v39, v40, v41, v42, v43, v44, v45, v46;
LABEL_23:
}

id sub_1BD39028C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v11 = a1;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20[1] = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v11;
    *v16 = v11;
    v17 = v11;
    _os_log_impl(&dword_1BD026000, v12, v13, "Callback Handling: selectBillingAddress %@", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  *v6 = v11;
  swift_storeEnumTagMultiPayload();
  v18 = v11;
  sub_1BD6B56B4(v6, 2);
  sub_1BD395EA4(v6, type metadata accessor for Analytics.StateChange);
  return [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)) didSelectBillingAddress_];
}

void sub_1BD390504()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, "Callback Handling: refreshPaymentMethods", v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8)) didRequestRefreshPaymentMethods];
  sub_1BD0E66D0();
}

void sub_1BD39069C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v202 = a3;
  v200 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v200);
  v201 = (&v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v204 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v197 - v14;
  v203 = v16;
  v205 = a2;
  if (a2)
  {
    v17 = a2;
    v18 = [v17 displayName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE052434();
      v22 = v21;
    }

    else
    {

      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v22 = 0x80000001BE1261D0;
    v20 = 0xD000000000000015;
  }

  sub_1BE04D084();
  sub_1BD395DD4(a1, v10, type metadata accessor for WrappedPass);
  sub_1BE048C84();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();
  v22, v25, v26, v27, v28, v29, v30, v31;
  if (os_log_type_enabled(v23, v24))
  {
    v39 = swift_slowAlloc();
    v197 = v4;
    v40 = v20;
    v41 = v39;
    v42 = swift_slowAlloc();
    v198 = a1;
    v43 = v42;
    v206 = v42;
    *v41 = 136315394;
    v44 = sub_1BD4943B0();
    v46 = v45;
    sub_1BD395EA4(v10, type metadata accessor for WrappedPass);
    v47 = sub_1BD123690(v44, v46, &v206);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    v55 = v40;
    v4 = v197;
    v56 = sub_1BD123690(v55, v22, &v206);
    v22, v57, v58, v59, v60, v61, v62, v63;
    *(v41 + 14) = v56;
    _os_log_impl(&dword_1BD026000, v23, v24, "Callback Handling: didSelectPaymentPass %s - %s", v41, 0x16u);
    swift_arrayDestroy();
    v64 = v43;
    a1 = v198;
    MEMORY[0x1BFB45F20](v64, -1, -1);
    MEMORY[0x1BFB45F20](v41, -1, -1);
  }

  else
  {
    v22, v32, v33, v34, v35, v36, v37, v38;

    sub_1BD395EA4(v10, type metadata accessor for WrappedPass);
  }

  v65 = v203;
  v66 = *(v204 + 8);
  v66(v15, v203);
  v67 = sub_1BD3948B4();
  v69 = v68;
  v70 = sub_1BD492F00();
  v78 = v71;
  v79 = MEMORY[0x1E69E7D40];
  if (!v69)
  {
    v71, v71, v72, v73, v74, v75, v76, v77;
    goto LABEL_25;
  }

  if (v67 == v70 && v69 == v71)
  {
    v69, v71, v70, v73, v74, v75, v76, v77;
    v78, v80, v81, v82, v83, v84, v85, v86;
  }

  else
  {
    v87 = sub_1BE053B84();
    v69, v88, v89, v90, v91, v92, v93, v94;
    v78, v95, v96, v97, v98, v99, v100, v101;
    if ((v87 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v102 = *(v4 + *((*v79 & *v4) + 0xD0));
  v103 = [v102 paymentApplication];
  if (!v103)
  {
    if (v205)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (![v102 fundingMode])
    {
      v108 = v199;
      sub_1BE04D084();
      v109 = sub_1BE04D204();
      v110 = sub_1BE052C54();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_1BD026000, v109, v110, "Payment pass and application already selected, ignoring", v111, 2u);
        MEMORY[0x1BFB45F20](v111, -1, -1);
      }

      v66(v108, v65);
      return;
    }

    goto LABEL_25;
  }

  v104 = v103;
  v105 = v205;
  if (!v205)
  {

    goto LABEL_25;
  }

  sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
  v106 = v105;
  v107 = sub_1BE053074();

  if (v107)
  {
    goto LABEL_20;
  }

LABEL_25:
  sub_1BD394224(a1, v205);
  sub_1BD393B3C(0, 0, 0);
  v112 = *(v4 + *((*v79 & *v4) + 0xD0));
  v113 = [v112 paymentApplication];
  sub_1BD3944B4(a1, v113, v202, type metadata accessor for PaymentAuthorizationModel);

  v114 = [v112 paymentRequest];
  if (!v114)
  {
    __break(1u);
    return;
  }

  v115 = v114;
  v116 = [v114 requiredBillingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD395F04(&qword_1EBD35EE0, type metadata accessor for PKContactField, &unk_1BE0B362C);
  v117 = sub_1BE052A34();

  LOBYTE(v116) = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v117);
  v117, v118, v119, v120, v121, v122, v123, v124;
  if (v116)
  {
    v125 = a1;
    v126 = *(v4 + *((*v79 & *v4) + 0x80));
    v127 = v126[6];
    v128 = v127;
    v129 = [v112 billingAddress];
    if (v129)
    {
      v130 = v129;
      v131 = [v129 identifier];

      v132 = sub_1BE052434();
      v134 = v133;
    }

    else
    {
      v132 = 0;
      v134 = 0;
    }

    v135 = sub_1BD0E6B40(v125);
    if (!v135)
    {
      if (!v127)
      {
        v134, v136, v137, v138, v139, v140, v141, v142;
        return;
      }

      v135 = v128;
    }

    v143 = v135;
    v144 = v126[6];
    v126[6] = v135;
    v145 = v135;

    v146 = v126[4];
    if (v146)
    {
      v147 = v126[5];
      v148 = sub_1BE048964();
      v146(v148);

      sub_1BD0D4744(v146, v147, v149, v150, v151, v152, v153, v154);
    }

    else
    {
    }

    v155 = [v145 identifier];
    v156 = sub_1BE052434();
    v158 = v157;

    if (v134)
    {
      if (v156 == v132 && v134 == v158)
      {

        v158, v166, v167, v168, v169, v170, v171, v172;
        v134, v173, v174, v175, v176, v177, v178, v179;

        return;
      }

      v180 = sub_1BE053B84();
      v158, v181, v182, v183, v184, v185, v186, v187;
      v134, v188, v189, v190, v191, v192, v193, v194;
      if (v180)
      {

        return;
      }
    }

    else
    {
      v158, v159, v160, v161, v162, v163, v164, v165;
    }

    v195 = v201;
    *v201 = v143;
    swift_storeEnumTagMultiPayload();
    v196 = v145;
    sub_1BD6B56B4(v195, 2);
    sub_1BD395EA4(v195, type metadata accessor for Analytics.StateChange);
    [*(v4 + *((*v79 & *v4) + 0xD8)) didSelectBillingAddress_];
  }
}

void sub_1BD390FC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void, double))
{
  v204 = a3;
  v205 = a6;
  v202 = a4;
  v203 = a5;
  v7 = v6;
  v200 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v200);
  v201 = (&v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  v207 = v14;
  v208 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v199 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v197 - v18;
  v206 = a2;
  if (a2)
  {
    v20 = a2;
    v21 = [v20 displayName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BE052434();
      v25 = v24;
    }

    else
    {

      v25 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v25 = 0x80000001BE1261D0;
    v23 = 0xD000000000000015;
  }

  sub_1BE04D084();
  v209 = a1;
  sub_1BD395DD4(a1, v13, type metadata accessor for WrappedPass);
  sub_1BE048C84();
  v26 = sub_1BE04D204();
  v27 = sub_1BE052C54();
  v25, v28, v29, v30, v31, v32, v33, v34;
  if (os_log_type_enabled(v26, v27))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v210 = v43;
    *v42 = 136315394;
    v44 = sub_1BD4943B0();
    v198 = v7;
    v45 = v23;
    v47 = v46;
    sub_1BD395EA4(v13, type metadata accessor for WrappedPass);
    v48 = sub_1BD123690(v44, v47, &v210);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v56 = v45;
    v7 = v198;
    v57 = sub_1BD123690(v56, v25, &v210);
    v25, v58, v59, v60, v61, v62, v63, v64;
    *(v42 + 14) = v57;
    _os_log_impl(&dword_1BD026000, v26, v27, "Callback Handling: didSelectPaymentPass %s - %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v42, -1, -1);
  }

  else
  {
    v25, v35, v36, v37, v38, v39, v40, v41;

    sub_1BD395EA4(v13, type metadata accessor for WrappedPass);
  }

  v65 = v207;
  v66 = *(v208 + 8);
  v66(v19, v207);
  v67 = sub_1BD3948B4();
  v69 = v68;
  v70 = v209;
  v71 = sub_1BD492F00();
  v79 = v72;
  v80 = MEMORY[0x1E69E7D40];
  v81 = v206;
  if (!v69)
  {
    v72, v72, v73, v74, v75, v76, v77, v78;
    goto LABEL_25;
  }

  if (v67 == v71 && v69 == v72)
  {
    v69, v72, v71, v74, v75, v76, v77, v78;
    v79, v82, v83, v84, v85, v86, v87, v88;
  }

  else
  {
    v89 = sub_1BE053B84();
    v69, v90, v91, v92, v93, v94, v95, v96;
    v79, v97, v98, v99, v100, v101, v102, v103;
    if ((v89 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v104 = *(v7 + *((*v80 & *v7) + 0xD0));
  v105 = [v104 paymentApplication];
  if (!v105)
  {
    if (v81)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (![v104 fundingMode])
    {
      v109 = v199;
      sub_1BE04D084();
      v110 = sub_1BE04D204();
      v111 = sub_1BE052C54();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_1BD026000, v110, v111, "Payment pass and application already selected, ignoring", v112, 2u);
        MEMORY[0x1BFB45F20](v112, -1, -1);
      }

      v66(v109, v65);
      return;
    }

    goto LABEL_25;
  }

  v106 = v105;
  if (!v81)
  {

    goto LABEL_25;
  }

  sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
  v107 = v81;
  v108 = sub_1BE053074();

  v70 = v209;
  if (v108)
  {
    goto LABEL_20;
  }

LABEL_25:
  sub_1BD394224(v70, v81);
  sub_1BD393E8C(0, 0, 0, v202, v203);
  v113 = *(v7 + *((*v80 & *v7) + 0xD0));
  v114 = [v113 paymentApplication];
  sub_1BD3944B4(v70, v114, v204, v205);

  v115 = [v113 paymentRequest];
  if (!v115)
  {
    __break(1u);
    return;
  }

  v116 = v115;
  v117 = [v115 requiredBillingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD395F04(&qword_1EBD35EE0, type metadata accessor for PKContactField, &unk_1BE0B362C);
  v118 = sub_1BE052A34();

  LOBYTE(v117) = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v118);
  v118, v119, v120, v121, v122, v123, v124, v125;
  if (v117)
  {
    v126 = *(v7 + *((*v80 & *v7) + 0x80));
    v127 = v126[6];
    v128 = v127;
    v129 = [v113 billingAddress];
    if (v129)
    {
      v130 = v129;
      v131 = [v129 identifier];

      v132 = sub_1BE052434();
      v134 = v133;

      v70 = v209;
    }

    else
    {
      v132 = 0;
      v134 = 0;
    }

    v135 = sub_1BD0E6B40(v70);
    if (!v135)
    {
      if (!v127)
      {
        v134, v136, v137, v138, v139, v140, v141, v142;
        return;
      }

      v135 = v128;
    }

    v143 = v135;
    v144 = v126[6];
    v126[6] = v135;
    v145 = v135;

    v146 = v126[4];
    if (v146)
    {
      v147 = v126[5];
      v148 = sub_1BE048964();
      v146(v148);

      sub_1BD0D4744(v146, v147, v149, v150, v151, v152, v153, v154);
    }

    else
    {
    }

    v155 = [v145 identifier];
    v156 = sub_1BE052434();
    v158 = v157;

    if (v134)
    {
      if (v156 == v132 && v134 == v158)
      {

        v158, v166, v167, v168, v169, v170, v171, v172;
        v134, v173, v174, v175, v176, v177, v178, v179;

        return;
      }

      v180 = sub_1BE053B84();
      v158, v181, v182, v183, v184, v185, v186, v187;
      v134, v188, v189, v190, v191, v192, v193, v194;
      if (v180)
      {

        return;
      }
    }

    else
    {
      v158, v159, v160, v161, v162, v163, v164, v165;
    }

    v195 = v201;
    *v201 = v143;
    swift_storeEnumTagMultiPayload();
    v196 = v145;
    sub_1BD6B56B4(v195, 2);
    sub_1BD395EA4(v195, type metadata accessor for Analytics.StateChange);
    [*(v7 + *((*v80 & *v7) + 0xD8)) didSelectBillingAddress_];
  }
}

uint64_t sub_1BD3918BC(void *a1, uint64_t (*a2)(void, double))
{
  v4 = v2;
  v6 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  if (a1)
  {
    v74 = v10;
    v75 = a2;
    v16 = a1;
    sub_1BE04D084();
    v17 = v16;
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v71 = a1;
      v21 = v20;
      v70 = swift_slowAlloc();
      v76 = v70;
      *v21 = 136315138;
      v22 = v4;
      v23 = [v17 selectedOfferIdentifier];
      v24 = sub_1BE052434();
      v72 = v6;
      v73 = v9;
      v25 = v24;
      v27 = v26;

      v4 = v22;
      v28 = sub_1BD123690(v25, v27, &v76);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v21 + 4) = v28;
      _os_log_impl(&dword_1BD026000, v18, v19, "Callback Handling: didSelectPaymentOffer: %s", v21, 0xCu);
      v36 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70, v37, v38, v39, v40, v41, v42, v43);
      MEMORY[0x1BFB45F20](v36, -1, -1);
      v44 = v21;
      a1 = v71;
      MEMORY[0x1BFB45F20](v44, -1, -1);

      (*(v74 + 8))(v15, v73);
    }

    else
    {

      (*(v74 + 8))(v15, v9);
    }

    a2 = v75;
  }

  else
  {
    sub_1BE04D084();
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v73 = v9;
      v48 = v47;
      *v47 = 0;
      _os_log_impl(&dword_1BD026000, v45, v46, "Callback Handling: didSelectPaymentOffer: nil", v47, 2u);
      MEMORY[0x1BFB45F20](v48, -1, -1);

      (*(v10 + 8))(v12, v73);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }

  v49 = [*(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xD8)) didSelectPaymentOffer_];
  v50 = MEMORY[0x1EEE9AC00](v49);
  v51 = a2(0, v50);
  *(&v69 - 2) = v51;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v69 - 2) = v51;
  v53 = swift_getKeyPath();
  sub_1BE04D8B4(&v76);
  KeyPath, v54, v55, v56, v57, v58, v59, v60;
  v53, v61, v62, v63, v64, v65, v66, v67;
  *v8 = v76;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v8, 1);
  return sub_1BD395EA4(v8, type metadata accessor for Analytics.StateChange);
}

void sub_1BD391D5C(int a1, uint64_t (*a2)(void, double))
{
  v79 = a2;
  v3 = v2;
  LODWORD(v81) = a1;
  v80 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v80);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  sub_1BE04D084();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v81 & 1;
    _os_log_impl(&dword_1BD026000, v16, v17, "Callback Handling: setUsePeerPaymentBalance: %{BOOL}d", v18, 8u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  v19 = *(v7 + 8);
  v19(v15, v6);
  v20 = MEMORY[0x1E69E7D40];
  v21 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD0));
  v22 = [v21 paymentRequest];
  if (!v22)
  {
    sub_1BE04D084();
    v44 = sub_1BE04D204();
    v45 = sub_1BE052C54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1BD026000, v44, v45, "Callback Handling: no payment request", v46, 2u);
      MEMORY[0x1BFB45F20](v46, -1, -1);
    }

    v47 = v12;
LABEL_21:
    v19(v47, v6);
    return;
  }

  v23 = v22;
  v24 = [v22 requestType];
  if (v24 != 2)
  {
    if (v24 == 9)
    {
      v25 = [*(v3 + *((*v20 & *v3) + 0xD8)) didChangePeerPaymentUsage_];
      v26 = MEMORY[0x1EEE9AC00](v25);
      v27 = v79(0, v26);
      *(&v79 - 2) = v27;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v79 - 2) = v27;
      v29 = swift_getKeyPath();
      sub_1BE04D8B4(&v82);
      KeyPath, v30, v31, v32, v33, v34, v35, v36;
      v29, v37, v38, v39, v40, v41, v42, v43;
      *v5 = v82;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v5, 2);

      sub_1BD395EA4(v5, type metadata accessor for Analytics.StateChange);
      return;
    }

    sub_1BE04D084();
    v54 = v23;
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = v57;
      v82 = v80;
      *v57 = 136315138;
      [v54 requestType];
      v58 = PKPaymentRequestTypeToString();

      if (!v58)
      {
        __break(1u);
        return;
      }

      v59 = sub_1BE052434();
      v61 = v60;

      v62 = sub_1BD123690(v59, v61, &v82);
      v61, v63, v64, v65, v66, v67, v68, v69;
      v70 = v81;
      *(v81 + 1) = v62;
      _os_log_impl(&dword_1BD026000, v55, v56, "Request of %s ineligible to have peer payment balance applied along with another payment method", v70, 0xCu);
      v71 = v80;
      __swift_destroy_boxed_opaque_existential_0(v80, v72, v73, v74, v75, v76, v77, v78);
      MEMORY[0x1BFB45F20](v71, -1, -1);
      MEMORY[0x1BFB45F20](v70, -1, -1);
    }

    else
    {
    }

    v47 = v9;
    goto LABEL_21;
  }

  v48 = [v23 accountServiceTransferRequest];
  if (v48)
  {
    v49 = v48;
    v50 = v81;
    [*(v3 + *((*v20 & *v3) + 0xD8)) didChangePeerPaymentUsage_];
    if ([v49 transferType] == 1 && (v50 & 1) == 0)
    {
      v51 = [v21 bankAccount];
      if (v51)
      {
        v52 = v51;
        v53 = v51;
        sub_1BD3949C0(v52);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1BD392364()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD3923E0(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

void sub_1BD392438(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

unint64_t sub_1BD3924B4()
{
  result = qword_1EBD43B18;
  if (!qword_1EBD43B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43B18);
  }

  return result;
}

void sub_1BD392508()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-v6];
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v18 = v8;
  v19 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80, &qword_1BE0D0630);
  sub_1BE0516A4();
  if (v17)
  {
    if (sub_1BE04C904())
    {
      v18 = v8;
      v19 = v9;
      v17 = 0;
      sub_1BE0516B4();
    }

    else
    {
      sub_1BE04D084();
      v13 = sub_1BE04D204();
      v14 = sub_1BE052C34();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1BD026000, v13, v14, "Authorizing payment, ignoring detail sheet", v15, 2u);
        MEMORY[0x1BFB45F20](v15, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Detail sheet already set, ignoring", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }
}

uint64_t sub_1BD392764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a1;
  v132 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v117 = &v102 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v128);
  v121 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v127 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v130 = &v102 - v12;
  v126 = type metadata accessor for PaymentPassMethodSheet(0);
  v131 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v14 = (&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v125 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v102 - v18);
  v20 = type metadata accessor for Passes(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v116 = v2;
  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  sub_1BE04D8B4(v19);
  KeyPath, v28, v29, v30, v31, v32, v33, v34;
  v27, v35, v36, v37, v38, v39, v40, v41;
  v122 = v21;
  v123 = v20;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1BD0DE53C(v19, &unk_1EBD43B40, &qword_1BE0D42C0);
    v42 = 1;
    v43 = v126;
    v44 = v132;
  }

  else
  {
    sub_1BD395E3C(v19, v25, type metadata accessor for Passes);
    v115 = v25;
    sub_1BD395DD4(v25, v129, type metadata accessor for Passes);
    v45 = type metadata accessor for PeerPaymentModel(0);
    (*(*(v45 - 8) + 56))(v130, 1, 1, v45);
    v46 = _s14PaymentSummaryVMa(0);
    (*(*(v46 - 8) + 56))(v127, 1, 1, v46);
    v47 = v116;
    sub_1BD394D3C(v116, v140);
    v114 = swift_allocObject();
    memcpy((v114 + 16), v140, 0x128uLL);
    sub_1BD394D3C(v47, v139);
    v113 = swift_allocObject();
    memcpy((v113 + 16), v139, 0x128uLL);
    sub_1BD394D3C(v47, v138);
    v112 = swift_allocObject();
    memcpy((v112 + 16), v138, 0x128uLL);
    sub_1BD394D3C(v47, v137);
    v111 = swift_allocObject();
    memcpy((v111 + 16), v137, 0x128uLL);
    sub_1BD394D3C(v47, v136);
    v110 = swift_allocObject();
    memcpy((v110 + 16), v136, 0x128uLL);
    sub_1BD394D3C(v47, v135);
    v109 = swift_allocObject();
    memcpy((v109 + 16), v135, 0x128uLL);
    sub_1BD394D3C(v47, v134);
    v116 = swift_allocObject();
    memcpy((v116 + 16), v134, 0x128uLL);
    v48 = sub_1BD4CD14C();
    v107 = v49;
    v108 = v48;
    if (qword_1EBD36C30 != -1)
    {
      swift_once();
    }

    v105 = unk_1EBDAB190;
    v106 = qword_1EBDAB188;
    v43 = v126;
    *(v14 + *(v126 + 104)) = 0;
    v50 = v14 + v43[27];
    memset(v133, 0, sizeof(v133));
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41368, &unk_1BE0DAD70);
    sub_1BE051694();
    v51 = *&v134[48];
    v52 = *&v134[16];
    *v50 = *v134;
    *(v50 + 1) = v52;
    *(v50 + 2) = *&v134[32];
    *(v50 + 6) = v51;
    v53 = (v14 + v43[28]);
    type metadata accessor for PresentationContext(0);
    sub_1BD395F04(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    *v53 = sub_1BE04EEC4();
    v53[1] = v54;
    v55 = v43[29];
    *&v133[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
    sub_1BE051694();
    *(v14 + v55) = *v134;
    v103 = type metadata accessor for AvailablePass(0);
    v56 = *(v103 - 8);
    v102 = *(v56 + 56);
    v104 = v56 + 56;
    v57 = v120;
    v102(v120, 1, 1, v103);
    v58 = v121;
    sub_1BD0DE19C(v57, v121, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BE051694();
    sub_1BD0DE53C(v57, &qword_1EBD520A0, &qword_1BE0B9840);
    v59 = v43[31];
    *&v133[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50, &qword_1BE102360);
    sub_1BE051694();
    *(v14 + v59) = *v134;
    v60 = _s11DetailSheetOMa(0);
    v61 = v117;
    (*(*(v60 - 8) + 56))(v117, 1, 1, v60);
    sub_1BD0DE19C(v61, v118, &unk_1EBD43B20, &unk_1BE0DAD80);
    sub_1BE051694();
    sub_1BD0DE53C(v61, &unk_1EBD43B20, &unk_1BE0DAD80);
    v62 = v14 + v43[33];
    LOBYTE(v133[0]) = 0;
    sub_1BE051694();
    v63 = *&v134[8];
    *v62 = v134[0];
    *(v62 + 1) = v63;
    memset(v134, 0, 40);
    sub_1BD0DE19C(v134, v133, &qword_1EBD51EC0, &qword_1BE0B7120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
    sub_1BE051694();
    sub_1BD0DE53C(v134, &qword_1EBD51EC0, &qword_1BE0B7120);
    v102(v57, 1, 1, v103);
    sub_1BD0DE19C(v57, v58, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BE051694();
    sub_1BD0DE53C(v57, &qword_1EBD520A0, &qword_1BE0B9840);
    v64 = (v14 + v43[36]);
    v65 = MEMORY[0x1E69E7CC0];
    *&v133[0] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B60, &unk_1BE0DAD90);
    sub_1BE051694();
    v66 = *&v134[8];
    *v64 = *v134;
    v64[1] = v66;
    v67 = v14 + v43[37];
    v133[0] = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BE051694();
    v68 = *&v134[16];
    *v67 = *v134;
    *(v67 + 2) = v68;
    v69 = v14 + v43[38];
    LOBYTE(v133[0]) = 0;
    sub_1BE051694();
    v70 = *&v134[8];
    *v69 = v134[0];
    *(v69 + 1) = v70;
    v71 = v14 + v43[39];
    LOBYTE(v133[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
    sub_1BE051694();
    v72 = *&v134[8];
    *v71 = v134[0];
    *(v71 + 1) = v72;
    v73 = v43[40];
    *(v14 + v73) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
    swift_storeEnumTagMultiPayload();
    *v14 = v124;
    v14[1] = 0;
    v74 = v129;
    sub_1BD395DD4(v129, v14 + v43[6], type metadata accessor for Passes);
    v75 = (v14 + v43[7]);
    v75[3] = 0u;
    v75[4] = 0u;
    v75[1] = 0u;
    v75[2] = 0u;
    *v75 = 0u;
    v76 = v130;
    sub_1BD0DE19C(v130, v14 + v43[8], &qword_1EBD45480, &unk_1BE0B8C30);
    v77 = v127;
    sub_1BD0DE19C(v127, v14 + v43[9], &unk_1EBD43B30, &qword_1BE0B8530);
    *(v14 + v43[10]) = 0;
    *(v14 + v43[11]) = 0;
    v78 = (v14 + v43[12]);
    v79 = v113;
    v80 = v114;
    *v78 = sub_1BD394D98;
    v78[1] = v80;
    v81 = (v14 + v43[13]);
    *v81 = sub_1BD394E6C;
    v81[1] = v79;
    v82 = (v14 + v43[14]);
    v83 = v111;
    v84 = v112;
    *v82 = sub_1BD394E74;
    v82[1] = v84;
    v85 = (v14 + v43[15]);
    *v85 = sub_1BD394E7C;
    v85[1] = v83;
    v86 = (v14 + v43[16]);
    v87 = v109;
    v88 = v110;
    *v86 = sub_1BD394EA0;
    v86[1] = v88;
    v89 = (v14 + v43[17]);
    *v89 = sub_1BD394EC4;
    v89[1] = v87;
    v90 = (v14 + v43[18]);
    v91 = v107;
    *v90 = v108;
    v90[1] = v91;
    v92 = (v14 + v43[19]);
    v93 = v105;
    *v92 = v106;
    v92[1] = v93;
    v94 = (v14 + v43[20]);
    *v94 = PKEdgeInsetsMake;
    v94[1] = 0;
    v95 = (v14 + v43[23]);
    v96 = v116;
    *v95 = sub_1BD394EE8;
    v95[1] = v96;
    v97 = (v14 + v43[24]);
    *v97 = 0;
    v97[1] = 0;
    PKOslo2024UIUpdatesEnabled();
    *v134 = v65;
    sub_1BD394CD0(v134);
    *(v14 + v43[21]) = *v134;
    v98 = v125;
    sub_1BD395DD4(v74, v125, type metadata accessor for Passes);
    (*(v122 + 56))(v98, 0, 1, v123);
    *v134 = 1;
    memset(&v134[8], 0, 25);
    *(v14 + v43[22]) = sub_1BD7D51F4(v98, v134, 0);
    *(v14 + v43[25]) = 0;
    sub_1BD0E5E8C(0, &qword_1EBD43B70, 0x1E69DD020);
    v99 = [swift_getObjCClassFromMetadata() appearance];
    v100 = [objc_opt_self() clearColor];
    [v99 setBackgroundColor_];

    sub_1BD0DE53C(v77, &unk_1EBD43B30, &qword_1BE0B8530);
    sub_1BD0DE53C(v76, &qword_1EBD45480, &unk_1BE0B8C30);
    sub_1BD395EA4(v74, type metadata accessor for Passes);
    sub_1BD395EA4(v115, type metadata accessor for Passes);
    v44 = v132;
    sub_1BD395E3C(v14, v132, type metadata accessor for PaymentPassMethodSheet);
    v42 = 0;
  }

  return (*(v131 + 56))(v44, v42, 1, v43);
}

double sub_1BD3935E4(void *a1, uint64_t a2)
{
  sub_1BD3918BC(a1, type metadata accessor for AMPAuthorizationModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80, &qword_1BE0D0630);
  sub_1BE0516B4();
  return result;
}

void sub_1BD393664(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1BD0DE19C(a1, v8, &qword_1EBD520A0, &qword_1BE0B9840);
  v15 = type metadata accessor for AvailablePass(0);
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD520A0, &qword_1BE0B9840);
  }

  else
  {
    sub_1BD395DD4(v8, v11, type metadata accessor for WrappedPass);
    sub_1BD395EA4(v8, type metadata accessor for AvailablePass);
    sub_1BD395E3C(v11, v14, type metadata accessor for WrappedPass);
    sub_1BD390FC8(v14, a2, 0, type metadata accessor for AMPAuthorizationModel, sub_1BD28C610, type metadata accessor for AMPAuthorizationModel);
    sub_1BD395EA4(v14, type metadata accessor for WrappedPass);
  }

  if (a3 != 2)
  {
    sub_1BD391D5C(a3 & 1, type metadata accessor for AMPAuthorizationModel);
  }
}

uint64_t sub_1BD3938D4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1BD0DE19C(a2, v6, &qword_1EBD520A0, &qword_1BE0B9840);
  v10 = type metadata accessor for AvailablePass(0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD520A0, &qword_1BE0B9840);
    v11 = 1;
  }

  else
  {
    sub_1BD395DD4(v6, v9, type metadata accessor for WrappedPass);
    sub_1BD395EA4(v6, type metadata accessor for AvailablePass);
    v11 = 0;
  }

  v12 = type metadata accessor for WrappedPass(0);
  (*(*(v12 - 8) + 56))(v9, v11, 1, v12);
  sub_1BD38F594(a1, v9, 0);
  return sub_1BD0DE53C(v9, &unk_1EBD43B90, &unk_1BE0B89D0);
}

double sub_1BD393ADC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80, &qword_1BE0D0630);
  sub_1BE0516B4();
  return result;
}

void sub_1BD393B3C(void *a1, uint64_t a2, void *a3)
{
  v5 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 4);
  v9 = *(v5 + 5);
  v10 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8));
  v11 = *(v5 + 3);
  v99 = v8;
  sub_1BE048964();
  v12 = v6;
  swift_unknownObjectRetain();
  v13 = [v10 state];
  v14 = a1;
  v15 = a1;

  v16 = *v5;
  v18 = *(v5 + 3);
  v17 = *(v5 + 4);
  v19 = *(v5 + 5);
  *v5 = v12;
  *(v5 + 1) = v7;
  *(v5 + 2) = v13;
  *(v5 + 3) = v14;
  *(v5 + 4) = v99;
  *(v5 + 5) = v9;
  v19, v20, v21, v22, v23, v24, v25, v26;

  swift_unknownObjectRelease();
  type metadata accessor for PaymentAuthorizationModel(0);
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(&v106);
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  v43 = *v5;
  v107 = *(v5 + 1);
  v44 = *(v5 + 2);
  v45 = v106;
  v106 = v43;
  v108 = v44;
  v109 = *(&v43 + 1);
  v110 = *(&v107 + 1);
  v46 = v44;
  v47 = v43;
  sub_1BD0DE19C(&v109, &v103, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v110, &v103, &qword_1EBD40150, &qword_1BE0C12A0);
  v48 = v46;
  sub_1BE048964();
  sub_1BD5D4C20(&v106);

  sub_1BD0DE53C(&v109, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v110, &qword_1EBD40150, &qword_1BE0C12A0);
  v45, v49, v50, v51, v52, v53, v54, v55;
  *(&v46 + 1), v56, v57, v58, v59, v60, v61, v62;

  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  sub_1BE04D8B4(&v103);
  v63, v65, v66, v67, v68, v69, v70, v71;
  v64, v72, v73, v74, v75, v76, v77, v78;
  v79 = *v5;
  v104 = *(v5 + 1);
  v80 = *(v5 + 2);
  v81 = v103;
  v103 = v79;
  v105 = v80;
  v111 = *(&v79 + 1);
  v112[0] = *(&v104 + 1);
  v82 = v80;
  v83 = v79;
  sub_1BD0DE19C(&v111, v102, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(v112, v102, &qword_1EBD40150, &qword_1BE0C12A0);
  v84 = v82;
  sub_1BE048964();
  sub_1BD83BD94(&v103, a2, a3);

  sub_1BD0DE53C(&v111, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(v112, &qword_1EBD40150, &qword_1BE0C12A0);
  v81, v85, v86, v87, v88, v89, v90, v91;
  *(&v82 + 1), v92, v93, v94, v95, v96, v97, v98;
}

void sub_1BD393E8C(void *a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v7 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 4);
  v11 = *(v7 + 5);
  v12 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xD8));
  v13 = *(v7 + 3);
  v118 = v10;
  sub_1BE048964();
  v14 = v8;
  swift_unknownObjectRetain();
  v15 = [v12 state];
  v16 = a1;
  v17 = a1;

  v18 = *v7;
  v20 = *(v7 + 3);
  v19 = *(v7 + 4);
  v21 = *(v7 + 5);
  *v7 = v14;
  *(v7 + 1) = v9;
  *(v7 + 2) = v15;
  *(v7 + 3) = v16;
  *(v7 + 4) = v118;
  *(v7 + 5) = v11;
  v21, v22, v23, v24, v25, v26, v27, v28;

  swift_unknownObjectRelease();
  a4(0);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_1BE04D8B4(&v125);
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44;
  v45 = v125;
  v46 = *v7;
  v47 = *(v7 + 3);
  v48 = *(v7 + 4);
  v49 = *(v7 + 5);
  v50 = v125 + qword_1EBDAAD68;
  v117 = *(v125 + qword_1EBDAAD68);
  v120 = *(v125 + qword_1EBDAAD68 + 24);
  v116 = *(v125 + qword_1EBDAAD68 + 32);
  v51 = *(v125 + qword_1EBDAAD68 + 40);
  v52 = *(v7 + 8);
  *v50 = *v7;
  *(v50 + 8) = v52;
  *(v50 + 24) = v47;
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v53 = v47;
  v54 = v48;
  swift_retain_n();
  v55 = v46;
  swift_unknownObjectRetain_n();
  v56 = v53;
  v57 = v54;
  v58 = v55;
  v51, v59, v60, v61, v62, v63, v64, v65;

  swift_unknownObjectRelease();
  a5();
  v45, v66, v67, v68, v69, v70, v71, v72;
  v49, v73, v74, v75, v76, v77, v78, v79;

  swift_unknownObjectRelease();
  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  sub_1BE04D8B4(&v125);
  v80, v82, v83, v84, v85, v86, v87, v88;
  v81, v89, v90, v91, v92, v93, v94, v95;
  v96 = *v7;
  v126 = *(v7 + 1);
  v97 = *(v7 + 2);
  v98 = v125;
  v125 = v96;
  v127 = v97;
  v128 = *(&v96 + 1);
  v129[0] = *(&v126 + 1);
  v99 = v97;
  v100 = v96;
  sub_1BD0DE19C(&v128, v124, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(v129, v124, &qword_1EBD40150, &qword_1BE0C12A0);
  v101 = v99;
  sub_1BE048964();
  sub_1BD83BD94(&v125, a2, a3);

  sub_1BD0DE53C(&v128, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(v129, &qword_1EBD40150, &qword_1BE0C12A0);
  v98, v102, v103, v104, v105, v106, v107, v108;
  *(&v99 + 1), v109, v110, v111, v112, v113, v114, v115;
}

void sub_1BD394224(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD395DD4(a1, v7, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v7;
    [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setPass:v9 withSelectedPaymentApplication:a2];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setRemotePaymentInstrument:v9 withSelectedPaymentApplication:a2];
LABEL_5:

    return;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69B8D08]) init];
  v11 = v10;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = a2;
    v13 = v11;
    v14 = a2;
    sub_1BD111DC0(inited);
    v16 = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    sub_1BD10E640();
    v17 = sub_1BE052A24();
    v16, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v25 = v10;
    v17 = 0;
  }

  [v11 setPaymentApplications_];

  [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0)) setPass:v11 withSelectedPaymentApplication:a2];
  sub_1BD395EA4(v7, type metadata accessor for WrappedPass);
}

uint64_t sub_1BD3944B4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, double))
{
  v6 = v4;
  v10 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD395DD4(a1, v15, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v15;
      [*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8)) didSelectRemotePaymentInstrument:*v15 paymentApplication:a2];
    }

    else
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E69B8D08]) init];
      v21 = v20;
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B7020;
        *(inited + 32) = a2;
        v23 = v21;
        v24 = a2;
        sub_1BD111DC0(inited);
        v57 = a4;
        v26 = v25;
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
        sub_1BD10E640();
        v27 = sub_1BE052A24();
        v28 = v26;
        a4 = v57;
        v28, v29, v30, v31, v32, v33, v34, v35;
      }

      else
      {
        v36 = v20;
        v27 = 0;
      }

      [v21 setPaymentApplications_];

      [*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8)) didSelectPaymentPass:v21 paymentApplication:a2 subCredential:a3];
      v18 = sub_1BD395EA4(v15, type metadata accessor for WrappedPass);
    }
  }

  else
  {
    v19 = *v15;
    [*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8)) didSelectPaymentPass:v19 paymentApplication:a2 subCredential:a3];
  }

  v37 = MEMORY[0x1EEE9AC00](v18);
  v38 = a4(0, v37);
  *(&v56 - 2) = v38;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v56 - 2) = v38;
  v40 = swift_getKeyPath();
  sub_1BE04D8B4(&v58);
  KeyPath, v41, v42, v43, v44, v45, v46, v47;
  v40, v48, v49, v50, v51, v52, v53, v54;
  *v12 = v58;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v12, 2);
  return sub_1BD395EA4(v12, type metadata accessor for Analytics.StateChange);
}

id sub_1BD3948B4()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0));
  v2 = [v1 mode];
  if (v2 == 2)
  {
    result = [v1 remotePaymentInstrument];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result passIdentifier];
LABEL_7:
    v6 = v5;

    if (v6)
    {
      v7 = sub_1BE052434();

      return v7;
    }

    return 0;
  }

  if (v2 == 1)
  {
    result = [v1 pass];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result uniqueID];
    goto LABEL_7;
  }

  return 0;
}

id sub_1BD3949C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE04D214();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v12 = [a1 bankName]) != 0)
  {
    v13 = v12;
    v58 = sub_1BE052434();
    v15 = v14;
  }

  else
  {
    v58 = 0;
    v15 = 0xE000000000000000;
  }

  sub_1BE04D084();
  sub_1BE048C84();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();
  v15, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v57 = v2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v56 = v6;
    v28 = v8;
    v29 = v27;
    v59 = v27;
    *v26 = 136315138;
    v30 = sub_1BD123690(v58, v15, &v59);
    v58 = v7;
    v31 = v30;
    v15, v32, v33, v34, v35, v36, v37, v38;
    *(v26 + 4) = v31;
    _os_log_impl(&dword_1BD026000, v16, v17, "Callback Handling: selectedBankAccount name: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29, v39, v40, v41, v42, v43, v44, v45);
    MEMORY[0x1BFB45F20](v29, -1, -1);
    v46 = v26;
    v2 = v57;
    MEMORY[0x1BFB45F20](v46, -1, -1);

    (*(v28 + 8))(v11, v58);
    v6 = v56;
  }

  else
  {

    v15, v47, v48, v49, v50, v51, v52, v53;
    (*(v8 + 8))(v11, v7);
  }

  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v54 = a1;
  sub_1BD6B56B4(v6, 2);
  sub_1BD395EA4(v6, type metadata accessor for Analytics.StateChange);
  return [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)) didSelectBankAccount_];
}

void sub_1BD394CD0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED72C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(v2 + 2);
  v11[0] = (v2 + 32);
  v11[1] = v10;
  sub_1BD394EF0(v11);
  *a1 = v2;
}

uint64_t objectdestroyTm_32(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;

  if (*(v8 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 72), v23, v24, v25, v26, v27, v28, v29);
  }

  *(v8 + 120), v23, v24, v25, v26, v27, v28, v29;
  sub_1BD0D45CC(*(v8 + 128), *(v8 + 136), *(v8 + 144), v30, v31, v32, v33, v34);
  if (*(v8 + 176))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 152), v35, v36, v37, v38, v39, v40, v41);
  }

  *(v8 + 192), v35, v36, v37, v38, v39, v40, v41;
  sub_1BD0D45CC(*(v8 + 200), *(v8 + 208), *(v8 + 216), v42, v43, v44, v45, v46);
  sub_1BD0D4604(*(v8 + 224), *(v8 + 232), v47, v48, v49, v50, v51, v52);
  sub_1BD0D4604(*(v8 + 240), *(v8 + 248), v53, v54, v55, v56, v57, v58);
  sub_1BD0D45CC(*(v8 + 256), *(v8 + 264), *(v8 + 272), v59, v60, v61, v62, v63);
  *(v8 + 288), v64, v65, v66, v67, v68, v69, v70;
  *(v8 + 304), v71, v72, v73, v74, v75, v76, v77;

  return swift_deallocObject();
}

void sub_1BD394EF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1BE0527B4();
        *(v9 + 16) = v2 / 2;
      }

      v18[0] = (v9 + 32);
      v18[1] = (v2 / 2);
      v10 = v9;
      sub_1BD395188(v18, v19, a1, v8, v4, v5, v6, v7);
      v10[2] = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
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
    sub_1BD394FE8(0, v2, 1, a1);
  }
}

void sub_1BD394FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v4 = *a4 + 16 * a3;
    v5 = a1 - a3;
LABEL_5:
    v36 = a3;
    v6 = *(v37 + 16 * a3 + 8);
    v34 = v5;
    v35 = v4;
    while (1)
    {
      v7 = *(v4 - 8);
      if (v6)
      {
        v8 = v7;
        v9 = [v6 issuerName];
        sub_1BE052434();
        v11 = v10;

        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = v7;
        v11 = 0xE000000000000000;
        if (v7)
        {
LABEL_8:
          v12 = [v7 issuerName];
          sub_1BE052434();
          v14 = v13;

          goto LABEL_11;
        }
      }

      v14 = 0xE000000000000000;
LABEL_11:
      sub_1BD0DDEBC();
      v16 = sub_1BE0535A4();

      v11, v17, v18, v19, v20, v21, v22, v23;
      v14, v24, v25, v26, v27, v28, v29, v30;

      if (v16 != -1)
      {
        goto LABEL_4;
      }

      if (!v37)
      {
        __break(1u);
        return;
      }

      v31 = *v4;
      v6 = *(v4 + 8);
      *v4 = *(v4 - 16);
      *(v4 - 8) = v6;
      *(v4 - 16) = v31;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v36 + 1;
        v4 = v35 + 16;
        v5 = v34 - 1;
        if (v36 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_1BD395188(char **a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v168 = v12;
      v146 = *(v12 + 2);
      if (v146 >= 2)
      {
        while (*a3)
        {
          v147 = *&v12[16 * v146];
          v148 = *&v12[16 * v146 + 24];
          sub_1BD395998((*a3 + 16 * v147), (*a3 + 16 * *&v12[16 * v146 + 16]), (*a3 + 16 * v148), v11);
          if (v9)
          {
            goto LABEL_112;
          }

          if (v148 < v147)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v146 - 2 >= *(v12 + 2))
          {
            goto LABEL_129;
          }

          v149 = &v12[16 * v146];
          *v149 = v147;
          *(v149 + 1) = v148;
          v168 = v12;
          sub_1BD5ED63C(v146 - 1);
          v12 = v168;
          v146 = *(v168 + 2);
          if (v146 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_139;
      }

LABEL_112:
      v12, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_135:
    v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_104;
  }

  v150 = a4;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v13 = v11;
  if (v11 + 1 >= v10)
  {
    v57 = v11 + 1;
    goto LABEL_28;
  }

  v162 = v10;
  v14 = *a3;
  v15 = *a3 + 16 * (v11 + 1);
  v16 = *(v15 + 8);
  LOBYTE(v166) = *v15;
  v167 = v16;
  v17 = (v14 + 16 * v11);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v164) = v18;
  v165 = v19;
  v20 = v19;
  v11 = v16;
  v159 = sub_1BD715184(&v166, &v164);
  if (v9)
  {
    v12, v21, v22, v23, v24, v25, v26, v27;

    return;
  }

  v28 = v13 + 2;
  v152 = v13;
  v29 = 16 * v13;
  v30 = (v14 + 16 * v13 + 40);
  v157 = v12;
  do
  {
    if (v162 == v28)
    {
      v57 = v162;
      goto LABEL_18;
    }

    v49 = *v30;
    v50 = *(v30 - 2);
    if (*v30)
    {
      v51 = v50;
      v52 = [v49 issuerName];
      v53 = sub_1BE052434();
      v55 = v54;

      v166 = v53;
      v167 = v55;
      if (v50)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v56 = v50;
      v55 = 0xE000000000000000;
      v166 = 0;
      v167 = 0xE000000000000000;
      if (v50)
      {
LABEL_7:
        v31 = [v50 issuerName];
        v32 = sub_1BE052434();
        v11 = v33;

        goto LABEL_8;
      }
    }

    v32 = 0;
    v11 = 0xE000000000000000;
LABEL_8:
    v164 = v32;
    v165 = v11;
    sub_1BD0DDEBC();
    v34 = sub_1BE0535A4();

    v55, v35, v36, v37, v38, v39, v40, v41;
    v11, v42, v43, v44, v45, v46, v47, v48;

    ++v28;
    v30 += 2;
    v12 = v157;
  }

  while (((v159 ^ (v34 != -1)) & 1) != 0);
  v57 = v28 - 1;
LABEL_18:
  v9 = 0;
  if (!v159)
  {
LABEL_26:
    v13 = v152;
    goto LABEL_28;
  }

  v58 = v152;
  if (v57 < v152)
  {
    goto LABEL_134;
  }

  if (v152 < v57)
  {
    v59 = 0;
    v60 = 16 * v57;
    do
    {
      if (v58 != (v57 + v59 - 1))
      {
        v61 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v62 = (v61 + v29);
        v63 = v61 + v60;
        v64 = *v62;
        v65 = *(v62 + 1);
        *v62 = *(v63 - 16);
        *(v63 - 16) = v64;
        *(v63 - 8) = v65;
      }

      ++v58;
      --v59;
      v60 -= 16;
      v29 += 16;
    }

    while (v58 < v57 + v59);
    goto LABEL_26;
  }

  v13 = v152;
LABEL_28:
  v66 = a3[1];
  if (v57 >= v66)
  {
    goto LABEL_36;
  }

  if (__OFSUB__(v57, v13))
  {
    goto LABEL_131;
  }

  if (v57 - v13 >= v150)
  {
LABEL_36:
    v11 = v57;
    if (v57 < v13)
    {
      goto LABEL_130;
    }

    goto LABEL_37;
  }

  if (__OFADD__(v13, v150))
  {
    goto LABEL_132;
  }

  if (&v150[v13] < v66)
  {
    v66 = &v150[v13];
  }

  if (v66 < v13)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v57 == v66)
  {
    goto LABEL_36;
  }

  v155 = v66;
  v158 = v12;
  v151 = v9;
  v153 = v13;
  v114 = *a3;
  v115 = *a3 + 16 * v57;
  v116 = v13 - v57;
LABEL_88:
  v163 = v57;
  v117 = *(v114 + 16 * v57 + 8);
  v156 = v116;
  v160 = v115;
  while (2)
  {
    v118 = *(v115 - 8);
    if (v117)
    {
      v119 = v118;
      v120 = [v117 issuerName];
      v121 = sub_1BE052434();
      v123 = v122;

      v166 = v121;
      v167 = v123;
      if (v118)
      {
        goto LABEL_91;
      }

LABEL_93:
      v125 = 0;
      v127 = 0xE000000000000000;
    }

    else
    {
      v128 = v118;
      v123 = 0xE000000000000000;
      v166 = 0;
      v167 = 0xE000000000000000;
      if (!v118)
      {
        goto LABEL_93;
      }

LABEL_91:
      v124 = [v118 issuerName];
      v125 = sub_1BE052434();
      v127 = v126;
    }

    v164 = v125;
    v165 = v127;
    sub_1BD0DDEBC();
    v129 = sub_1BE0535A4();

    v123, v130, v131, v132, v133, v134, v135, v136;
    v127, v137, v138, v139, v140, v141, v142, v143;

    if (v129 != -1)
    {
      goto LABEL_87;
    }

    if (v114)
    {
      v144 = *v115;
      v117 = *(v115 + 8);
      *v115 = *(v115 - 16);
      *(v115 - 8) = v117;
      *(v115 - 16) = v144;
      v115 -= 16;
      if (!__CFADD__(v116++, 1))
      {
        continue;
      }

LABEL_87:
      v57 = v163 + 1;
      v115 = v160 + 16;
      v116 = v156 - 1;
      if ((v163 + 1) != v155)
      {
        goto LABEL_88;
      }

      v9 = v151;
      v13 = v153;
      v12 = v158;
      v11 = v155;
      if (v155 < v153)
      {
        goto LABEL_130;
      }

LABEL_37:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1BD1D7844(0, *(v12 + 2) + 1, 1, v12, a5, a6, a7, a8);
      }

      v68 = *(v12 + 2);
      v67 = *(v12 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v12 = sub_1BD1D7844((v67 > 1), v68 + 1, 1, v12, a5, a6, a7, a8);
      }

      *(v12 + 2) = v69;
      v70 = &v12[16 * v68];
      *(v70 + 4) = v13;
      *(v70 + 5) = v11;
      v71 = *a1;
      if (!*a1)
      {
        goto LABEL_140;
      }

      if (v68)
      {
        while (2)
        {
          v72 = v69 - 1;
          if (v69 >= 4)
          {
            v77 = &v12[16 * v69 + 32];
            v78 = *(v77 - 64);
            v79 = *(v77 - 56);
            v83 = __OFSUB__(v79, v78);
            v80 = v79 - v78;
            if (v83)
            {
              goto LABEL_117;
            }

            v82 = *(v77 - 48);
            v81 = *(v77 - 40);
            v83 = __OFSUB__(v81, v82);
            v75 = v81 - v82;
            v76 = v83;
            if (v83)
            {
              goto LABEL_118;
            }

            v84 = &v12[16 * v69];
            v86 = *v84;
            v85 = *(v84 + 1);
            v83 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v83)
            {
              goto LABEL_120;
            }

            v83 = __OFADD__(v75, v87);
            v88 = v75 + v87;
            if (v83)
            {
              goto LABEL_123;
            }

            if (v88 >= v80)
            {
              v106 = &v12[16 * v72 + 32];
              v108 = *v106;
              v107 = *(v106 + 1);
              v83 = __OFSUB__(v107, v108);
              v109 = v107 - v108;
              if (v83)
              {
                goto LABEL_127;
              }

              if (v75 < v109)
              {
                v72 = v69 - 2;
              }
            }

            else
            {
LABEL_56:
              if (v76)
              {
                goto LABEL_119;
              }

              v89 = &v12[16 * v69];
              v91 = *v89;
              v90 = *(v89 + 1);
              v92 = __OFSUB__(v90, v91);
              v93 = v90 - v91;
              v94 = v92;
              if (v92)
              {
                goto LABEL_122;
              }

              v95 = &v12[16 * v72 + 32];
              v97 = *v95;
              v96 = *(v95 + 1);
              v83 = __OFSUB__(v96, v97);
              v98 = v96 - v97;
              if (v83)
              {
                goto LABEL_125;
              }

              if (__OFADD__(v93, v98))
              {
                goto LABEL_126;
              }

              if (v93 + v98 < v75)
              {
                goto LABEL_70;
              }

              if (v75 < v98)
              {
                v72 = v69 - 2;
              }
            }
          }

          else
          {
            if (v69 == 3)
            {
              v73 = *(v12 + 4);
              v74 = *(v12 + 5);
              v83 = __OFSUB__(v74, v73);
              v75 = v74 - v73;
              v76 = v83;
              goto LABEL_56;
            }

            v99 = &v12[16 * v69];
            v101 = *v99;
            v100 = *(v99 + 1);
            v83 = __OFSUB__(v100, v101);
            v93 = v100 - v101;
            v94 = v83;
LABEL_70:
            if (v94)
            {
              goto LABEL_121;
            }

            v102 = &v12[16 * v72];
            v104 = *(v102 + 4);
            v103 = *(v102 + 5);
            v83 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v83)
            {
              goto LABEL_124;
            }

            if (v105 < v93)
            {
              break;
            }
          }

          v110 = v72 - 1;
          if (v72 - 1 >= v69)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
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
            goto LABEL_133;
          }

          if (!*a3)
          {
            goto LABEL_137;
          }

          v111 = *&v12[16 * v110 + 32];
          v112 = *&v12[16 * v72 + 40];
          sub_1BD395998((*a3 + 16 * v111), (*a3 + 16 * *&v12[16 * v72 + 32]), (*a3 + 16 * v112), v71);
          if (v9)
          {
            goto LABEL_112;
          }

          if (v112 < v111)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v110 >= *(v12 + 2))
          {
            goto LABEL_116;
          }

          v113 = &v12[16 * v110];
          *(v113 + 4) = v111;
          *(v113 + 5) = v112;
          v168 = v12;
          sub_1BD5ED63C(v72);
          v12 = v168;
          v69 = *(v168 + 2);
          if (v69 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v10 = a3[1];
      if (v11 >= v10)
      {
        goto LABEL_102;
      }

      goto LABEL_4;
    }

    break;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}