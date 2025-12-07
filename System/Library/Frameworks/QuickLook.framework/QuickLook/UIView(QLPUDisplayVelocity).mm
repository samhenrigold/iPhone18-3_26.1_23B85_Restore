@interface UIView(QLPUDisplayVelocity)
+ (void)_qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:;
+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:;
+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:completion:;
+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:;
@end

@implementation UIView(QLPUDisplayVelocity)

+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:
{
  v29 = a11;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __151__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_withDuration_delay_usingSpringWithDamping_initialVelocity_options_completion___block_invoke;
  v36[3] = &unk_278B58638;
  v37 = v29;
  v38 = a8;
  v39 = a9;
  v40 = a17;
  v41 = a13;
  v30 = a12[1];
  v35[0] = *a12;
  v35[1] = v30;
  v35[2] = a12[2];
  v31 = v29;
  [self _qlpu_animateView:v31 toCenter:v35 bounds:v36 transform:a14 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a18, a19, a20}];
}

+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:
{
  v28 = a10;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __143__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_usingDefaultDampedSpringWithDelay_initialVelocity_options_completion___block_invoke;
  v33[3] = &unk_278B58660;
  v34 = v28;
  v35 = a8;
  v36 = a12;
  v29 = a11[1];
  v32[0] = *a11;
  v32[1] = v29;
  v32[2] = a11[2];
  v30 = v28;
  [self _qlpu_animateView:v30 toCenter:v32 bounds:v33 transform:a13 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a16, a17, a18}];
}

+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:completion:
{
  v30 = a11;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __162__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_completion___block_invoke;
  v37[3] = &unk_278B58688;
  v38 = v30;
  v39 = a8;
  v40 = a9;
  v41 = a13;
  v42 = a17;
  v43 = a18;
  v31 = a12[1];
  v36[0] = *a12;
  v36[1] = v31;
  v36[2] = a12[2];
  v32 = v30;
  [self _qlpu_animateView:v32 toCenter:v36 bounds:v37 transform:a14 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a19, a20, a21}];
}

+ (void)_qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:
{
  v143 = *MEMORY[0x277D85DE8];
  v27 = a9;
  v28 = a11;
  v29 = a12;
  [v27 center];
  v31 = v30;
  v33 = v32;
  [v27 bounds];
  v78 = v35;
  v80 = v34;
  v74 = v37;
  v76 = v36;
  memset(&v141, 0, sizeof(v141));
  if (v27)
  {
    objc_msgSend_transform(v27);
  }

  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  v140 = 1;
  v38 = dispatch_group_create();
  dispatch_group_enter(v38);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke;
  block[3] = &unk_278B586B0;
  v39 = v29;
  v137 = v39;
  v138 = v139;
  dispatch_group_notify(v38, MEMORY[0x277D85CD0], block);
  if (self == v31)
  {
    self = v31;
  }

  else
  {
    dispatch_group_enter(v38);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2;
    v132[3] = &unk_278B575B8;
    v133 = v27;
    selfCopy = self;
    v135 = v33;
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3;
    v129[3] = &unk_278B586D8;
    v131 = v139;
    v130 = v38;
    (*(v28 + 2))(v28, v132, v129, a15 / (self - v31));
  }

  if (a2 != v33)
  {
    dispatch_group_enter(v38);
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4;
    v125[3] = &unk_278B575B8;
    v126 = v27;
    selfCopy2 = self;
    v128 = a2;
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5;
    v122[3] = &unk_278B586D8;
    v124 = v139;
    v123 = v38;
    (*(v28 + 2))(v28, v125, v122, a16 / (a2 - v33));
  }

  v144.origin.x = a3;
  v144.origin.y = a4;
  v144.size.width = a5;
  v144.size.height = a6;
  v149.origin.y = v78;
  v149.origin.x = v80;
  v149.size.height = v74;
  v149.size.width = v76;
  if (!CGRectEqualToRect(v144, v149))
  {
    v145.origin.x = a3;
    v145.origin.y = a4;
    v145.size.width = a5;
    v145.size.height = a6;
    Width = CGRectGetWidth(v145);
    v146.origin.y = v78;
    v146.origin.x = v80;
    v146.size.height = v74;
    v146.size.width = v76;
    v41 = CGRectGetWidth(v146);
    v147.origin.x = a3;
    v147.origin.y = a4;
    v147.size.width = a5;
    v147.size.height = a6;
    Height = CGRectGetHeight(v147);
    v148.origin.y = v78;
    v148.origin.x = v80;
    v148.size.height = v74;
    v148.size.width = v76;
    v43 = Height / CGRectGetHeight(v148);
    v44 = 0.0;
    v45 = 0.0;
    if (Width / v41 != 1.0)
    {
      v45 = a17 / (Width / v41 + -1.0);
    }

    if (v43 != 1.0)
    {
      v44 = a17 / (v43 + -1.0);
    }

    v46 = (v45 + v44) * 0.5;
    dispatch_group_enter(v38);
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6;
    v116[3] = &unk_278B575E0;
    v117 = v27;
    v118 = a3;
    v119 = a4;
    v120 = a5;
    v121 = a6;
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7;
    v113[3] = &unk_278B586D8;
    v115 = v139;
    v114 = v38;
    (*(v28 + 2))(v28, v116, v113, v46);
  }

  v47 = *(a10 + 16);
  *&t1.a = *a10;
  *&t1.c = v47;
  *&t1.tx = *(a10 + 32);
  t2 = v141;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v48 = *&v141.a;
    ty = v141.ty;
    tx = v141.tx;
    v49 = atan2(v141.b, v141.a);
    v50 = __sincos_stret(v49);
    if (fabs(v50.__cosval) <= fabs(v50.__sinval))
    {
      v51 = *(&v48 + 1) / v50.__sinval;
      v52 = -v141.c / v50.__sinval;
    }

    else
    {
      v51 = *&v48 / v50.__cosval;
      v52 = v141.d / v50.__cosval;
    }

    v53 = *a10;
    v54 = *(a10 + 8);
    v56 = *(a10 + 32);
    v55 = *(a10 + 40);
    v77 = atan2(v54, *a10);
    v57 = __sincos_stret(v77);
    if (fabs(v57.__cosval) <= fabs(v57.__sinval))
    {
      v58 = v54 / v57.__sinval;
      v59 = -*(a10 + 16) / v57.__sinval;
    }

    else
    {
      v58 = v53 / v57.__cosval;
      v59 = *(a10 + 24) / v57.__cosval;
    }

    v60 = v77;
    if (vabdd_f64(tx, v56) > 0.00000999999975 || vabdd_f64(ty, v55) > 0.00000999999975)
    {
      v61 = MEMORY[0x277D43EF8];
      v62 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v62 = *v61;
      }

      v63 = v62;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        t1 = v141;
        v64 = NSStringFromCGAffineTransform(&t1);
        v65 = *(a10 + 16);
        *&t1.a = *a10;
        *&t1.c = v65;
        *&t1.tx = *(a10 + 32);
        v66 = NSStringFromCGAffineTransform(&t1);
        LODWORD(t2.a) = 138412546;
        *(&t2.a + 4) = v64;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v66;
        _os_log_impl(&dword_23A714000, v63, OS_LOG_TYPE_INFO, "animation of translational transforms is not supported (%@ => %@) #Generic", &t2, 0x16u);
      }
    }

    if (v58 == v51 && v59 == v52)
    {
      v59 = v52;
      v58 = v51;
    }

    else
    {
      v67 = v59 / v52;
      v68 = 0.0;
      v69 = 0.0;
      if (v58 / v51 != 1.0)
      {
        v69 = a17 / (v58 / v51 + -1.0);
      }

      if (v67 != 1.0)
      {
        v68 = a17 / (v67 + -1.0);
      }

      v75 = v68;
      v70 = vabdd_f64(v69, v68);
      if (v70 > 0.00000999999975)
      {
        v71 = v52;
      }

      else
      {
        v71 = v59;
      }

      dispatch_group_enter(v38);
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4;
      v105[3] = &unk_278B58700;
      v72 = v27;
      v106 = v72;
      v107 = tx;
      v108 = ty;
      v109 = v58;
      v110 = v71;
      v111 = v49;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_5;
      v102[3] = &unk_278B586D8;
      v104 = v139;
      v73 = v38;
      v103 = v73;
      (*(v28 + 2))(v28, v105, v102, v69);
      v60 = v77;
      if (v70 > 0.00000999999975)
      {
        dispatch_group_enter(v73);
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3_6;
        v95[3] = &unk_278B58700;
        v96 = v72;
        v97 = tx;
        v98 = ty;
        v99 = v58;
        v100 = v59;
        v101 = v49;
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_7;
        v92[3] = &unk_278B586D8;
        v94 = v139;
        v93 = v73;
        (*(v28 + 2))(v28, v95, v92, v75);
      }
    }

    if (v60 != v49)
    {
      dispatch_group_enter(v38);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5_8;
      v85[3] = &unk_278B58700;
      v86 = v27;
      v87 = tx;
      v88 = ty;
      v89 = v58;
      v90 = v59;
      v91 = v60;
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_9;
      v82[3] = &unk_278B586D8;
      v84 = v139;
      v83 = v38;
      (*(v28 + 2))(v28, v85, v82, a18 / (v60 - v49));
    }
  }

  dispatch_group_leave(v38);

  _Block_object_dispose(v139, 8);
}

@end