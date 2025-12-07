@interface CASDFGenerator
- (CASDFGenerator)init;
- (CGImage)generateSDFWithRequest:(id)request forImage:(CGImage *)image;
- (void)dealloc;
@end

@implementation CASDFGenerator

- (CGImage)generateSDFWithRequest:(id)request forImage:(CGImage *)image
{
  MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v165[4] = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v11 = CAGetColorSpace(36);
  v12 = CA::Render::copy_image(v5, v11, 8, 0.0, 1.0);
  if (!v12)
  {
    v22 = 0;
    goto LABEL_110;
  }

  v13 = v12;
  includeGradient = [v7 includeGradient];
  [v7 padding];
  v15 = 0.0;
  if (v16 >= 0.0)
  {
    [v7 padding];
    v15 = v17;
  }

  outputBitDepth = [v7 outputBitDepth];
  v19 = 8194;
  v20 = 1111970369;
  if (outputBitDepth)
  {
    if (outputBitDepth == 1)
    {
      v21 = 0;
      if (includeGradient)
      {
        v19 = 4097;
      }

      else
      {
        v19 = 4096;
      }

      if (includeGradient)
      {
        v20 = 1815491698;
      }

      else
      {
        v20 = 1278226742;
      }
    }

    else if (outputBitDepth == 2)
    {
      if (includeGradient)
      {
        v19 = 4353;
      }

      else
      {
        v19 = 4352;
      }

      if (includeGradient)
      {
        v20 = 1380411457;
      }

      else
      {
        v20 = 1278226536;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    if (includeGradient)
    {
      v19 = 8194;
    }

    else
    {
      v19 = 0;
    }

    if (includeGradient)
    {
      v20 = 1111970369;
    }

    else
    {
      v20 = 1278226488;
    }
  }

  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  v137 = 0;
  v26.i64[0] = 0;
  v26.i64[1] = __PAIR64__(Height, Width);
  v138 = Width;
  v139 = Height;
  if (Width <= Height)
  {
    v27 = Height;
  }

  else
  {
    v27 = Width;
  }

  if (Width >= Height)
  {
    v28 = Height;
  }

  else
  {
    v28 = Width;
  }

  v132 = v21;
  if (v27 <= 1073741822 && v28 >= 1)
  {
    v29 = -v15;
    v30.i64[0] = vdupq_n_s32(v29).u64[0];
    v31.i64[0] = v30.i64[0];
    v31.i32[2] = Width - 2 * v29;
    v31.i32[3] = Height - 2 * v29;
    v32 = v31.i32[3] < 1 || (Width - 2 * v29) < 1;
    v30.i64[1] = 0;
    if (v32)
    {
      v33 = -1;
    }

    else
    {
      v33 = 0;
    }

    v26 = vbslq_s8(vdupq_n_s32(v33), v30, v31);
  }

  v34 = v26.i32[2];
  v134 = v26;
  v35 = v26.i32[3];
  iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v20, v26.i32[2], v26.u32[3], 0, 0, @"CA SDFGenerator Output", v25);
  if (iosurface_with_pixel_format)
  {
    v37 = iosurface_with_pixel_format;
    v38 = *(v9 + 16);
    [v7 gradientSmoothing];
    v40 = v39;
    [v7 maximumDistance];
    v42 = v41;
    if (v34 <= v35)
    {
      v43 = v35;
    }

    else
    {
      v43 = v34;
    }

    if (v42 >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = v42;
    }

    [v7 oneValueDistance];
    v46 = v45;
    [v7 zeroValueDistance];
    v48 = v47;
    bzero(v146, 0x3F0uLL);
    *(v38 + 608) = v134;
    *(v38 + 1384) |= 2u;
    v144[4] = 0x3C003C003C003C00;
    memset(&v144[5], 0, 24);
    v144[9] = 0;
    v144[8] = 1065353216;
    v144[10] = 1025;
    v144[2] = 0;
    v144[3] = &CA::identity_transform;
    v144[0] = 0;
    v144[1] = &CA::Shape::_infinite_shape;
    (*(*v38 + 40))(v38, v37, 0, 0);
    *(*(v38 + 672) + 48) = v134;
    CA::OGL::Context::prepare_context(v38, v146);
    *(v38 + 136) = &v145;
    *(v38 + 152) = 128;
    (*(*v38 + 1088))(v38, v144);
    v133 = v19;
    *(*(v38 + 16) + 8) = 0x3C003C003C003C00;
    *(*(v38 + 16) + 497) &= ~1u;
    v49 = (*(*v38 + 696))(v38, 1, &v137, 8, @"generate-sdf-with-request");
    v50 = v49;
    if (!v49)
    {
      LODWORD(v79) = 0;
      goto LABEL_98;
    }

    (*(*v38 + 760))(v38, v49, *(v49 + 40), *(v49 + 44));
    CA::OGL::Context::push_surface(v38, v50, 1u, 0, 0);
    v51 = v13[2].u32[0];
    v52 = v13[2].u32[1];
    v160 = 0;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    v155 = 0u;
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    v150 = 0u;
    v149 = 0u;
    v148 = 0u;
    memset(v147, 0, sizeof(v147));
    v53 = (*(*v13 + 104))(v13);
    v131 = v10;
    v164 = 0uLL;
    v165[0] = v51;
    v165[1] = v52;
    v142.i64[0] = 0;
    v142.i64[1] = __PAIR64__(v52, v51);
    CA::OGL::ContentsGeometry::ContentsGeometry(v147, v51, v52, v53, &v164, v142.i32, CA::Mat2Impl::mat2_identity_double, 2048, 0);
    *(&v150 + 3) = 257;
    v54 = CA::OGL::Context::bind_image(v38, 0, v13, DWORD1(v148), 0, 0, 0, v147, 0.0, (&v147[17] + 4), 0);
    if (v54)
    {
      CA::OGL::ContentsGeometry::fill_and_unbind(v147, v38, v54, 0, v58, v59, 0.0);
    }

    CA::OGL::Context::pop_surface(v38, v55, v56, v57, v58, v59, v60, v61);
    v64 = *(v50 + 56);
    v65 = *(v50 + 60);
    if (v64 <= v65)
    {
      v66 = *(v50 + 60);
    }

    else
    {
      v66 = *(v50 + 56);
    }

    v62.i32[0] = v66;
    v67 = v64;
    v68 = v65;
    if (v66 > 1073741822)
    {
      v67 = 1.79769313e308;
      v68 = 1.79769313e308;
    }

    if (v34 <= v35)
    {
      v69 = v35;
    }

    else
    {
      v69 = v34;
    }

    v63.i32[0] = 1073741822;
    v70 = *(v50 + 48);
    v71.i64[0] = v70;
    v71.i64[1] = SHIDWORD(v70);
    v72 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v73 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v62, v63), 0), v72, vcvtq_f64_s64(v71));
    v136 = v134;
    v142 = v73;
    v143.f64[0] = v67;
    v143.f64[1] = v68;
    v73.i32[0] = v69;
    v71.i64[0] = v134.i32[0];
    v71.i64[1] = v134.i32[1];
    v74 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v73, v63), 0), v72, vcvtq_f64_s64(v71));
    if (v69 <= 1073741822)
    {
      v75 = v34;
    }

    else
    {
      v75 = 1.79769313e308;
    }

    if (v69 <= 1073741822)
    {
      v76 = v35;
    }

    else
    {
      v76 = 1.79769313e308;
    }

    v140 = v74;
    v141.f64[0] = v75;
    v141.f64[1] = v76;
    v77 = (*(*v38 + 696))(v38, 1, &v136, 0x200000, @"render-sdf-jump-surf-0");
    v78 = (*(*v38 + 696))(v38, 1, &v136, 0x200000, @"render-sdf-jump-surf-1");
    v79 = v78;
    if (v77 && v78)
    {
      (*(*v38 + 760))(v38, v77, *(v77 + 40), *(v77 + 44));
      (*(*v38 + 760))(v38, v79, *(v79 + 40), *(v79 + 44));
      if (!includeGradient)
      {
        v135 = 0;
        v130 = 0;
LABEL_80:
        v82 = v46;
        v83 = v48;
        v84 = 1.0 / (v82 - v83);
        v85 = v40;
        v86 = -(v83 * v84);
        v87 = v15;
        *&v147[0] = &v142;
        *(&v147[0] + 1) = &CA::identity_transform;
        memset(&v147[1] + 4, 0, 28);
        LODWORD(v147[1]) = 63;
        *&v164 = 0;
        *(&v164 + 1) = vcvt_f32_f64(v143);
        *(*(v38 + 16) + 16) = 79;
        *(v38 + 160) = 0;
        CA::OGL::Context::bind_surface(v38, v50, 0, 0, 0, 0.0);
        CA::OGL::Context::push_surface(v38, v77, 1u, 64, 0);
        CA::OGL::emit_one_part_rect(v38, v147, &v164, 0, 0);
        CA::OGL::Context::pop_surface(v38, v88, v89, v90, v91, v92, v93, v94);
        CA::OGL::Context::unbind_surface(v38, v50, 0);
        *&v164 = &v140;
        *(&v164 + 1) = &CA::identity_transform;
        memset(v165 + 4, 0, 28);
        LODWORD(v165[0]) = 63;
        v163[0] = 0;
        v163[1] = vcvt_f32_f64(v141);
        v161[0] = -v87;
        v161[1] = -v87;
        v162 = vcvt_f32_f64(vaddq_f64(v143, vdupq_lane_s64(COERCE__INT64(v87), 0)));
        *(*(v38 + 16) + 16) = 80;
        v95 = ((v44 + 1.0) - 1) | (((v44 + 1.0) - 1) >> 1);
        v96 = v95 | (v95 >> 2) | ((v95 | (v95 >> 2)) >> 4);
        v97 = v96 | (v96 >> 8) | ((v96 | (v96 >> 8)) >> 16);
        v98 = ((v97 | HIDWORD(v97)) + 1);
        *(v38 + 240) = v87;
        *(v38 + 320) = 0;
        CA::OGL::Context::bind_surface(v38, v50, 1u, 0, 0, 0.0);
        v129 = v79;
        v99 = v79;
        v100 = v77;
        do
        {
          v101 = v100;
          v100 = v99;
          v98 = v98 * 0.5;
          *(v38 + 160) = v98;
          CA::OGL::Context::bind_surface(v38, v101, 0, 0, 0, 0.0);
          CA::OGL::Context::push_surface(v38, v100, 1u, 64, 0);
          CA::OGL::emit_one_part_rect(v38, &v164, v163, v161, 0);
          CA::OGL::Context::pop_surface(v38, v102, v103, v104, v105, v106, v107, v108);
          CA::OGL::Context::unbind_surface(v38, v101, 0);
          v99 = v101;
        }

        while (v98 > 1.0);
        CA::OGL::Context::unbind_surface(v38, v50, 1);
        if (includeGradient)
        {
          CA::OGL::Context::push_surface(v38, v135, 1u, 0, 0);
          *(*(v38 + 16) + 16) = 81;
          *(v38 + 160) = 0;
          *(v38 + 164) = v87;
          *(v38 + 168) = 1065353216;
          CA::OGL::Context::bind_surface(v38, v100, 0, 0, 0, 0.0);
          CA::OGL::Context::bind_surface(v38, v50, 1u, 0, 0, 0.0);
          CA::OGL::emit_one_part_rect(v38, &v164, v163, v163, 0);
          CA::OGL::Context::unbind_surface(v38, v100, 0);
          CA::OGL::Context::unbind_surface(v38, v50, 1);
          CA::OGL::Context::pop_surface(v38, v109, v110, v111, v112, v113, v114, v115);
          CA::OGL::Context::push_surface(v38, v130, 1u, 0, 0);
          *(*(v38 + 16) + 16) = 1;
          memset(&v147[3] + 8, 0, 24);
          memset(v147 + 8, 0, 40);
          *v147 = v85;
          *(v147 + 1) = v85;
          *&v147[3] = 0xF00000002;
          v10 = v131;
          (*(*v38 + 928))(v38, v135, v147, 0, 1.0, 1.0);
          CA::OGL::Context::pop_surface(v38, v116, v117, v118, v119, v120, v121, v122);
          v123 = 0.5;
          if (v132)
          {
            v124 = 1.0;
          }

          else
          {
            v124 = 0.5;
          }

          *(*(v38 + 16) + 16) = 82;
          if (v132)
          {
            v123 = 0.0;
          }

          *(v38 + 160) = v84;
          *(v38 + 164) = v86;
          *(v38 + 168) = v124;
          *(v38 + 172) = v123;
          CA::OGL::Context::bind_surface(v38, v135, 0, 0, 0, 0.0);
          CA::OGL::Context::bind_surface(v38, v130, 1u, 0, 0, 0.0);
          CA::OGL::emit_one_part_rect(v38, &v164, v163, v163, 0);
          CA::OGL::Context::unbind_surface(v38, v135, 0);
          CA::OGL::Context::unbind_surface(v38, v130, 1);
          CA::OGL::Context::release_surface(v38, v135);
          CA::OGL::Context::release_surface(v38, v130);
        }

        else
        {
          *(*(v38 + 16) + 16) = 81;
          *(v38 + 160) = 0;
          *(v38 + 164) = v87;
          *(v38 + 168) = v84;
          *(v38 + 172) = v86;
          CA::OGL::Context::bind_surface(v38, v100, 0, 0, 0, 0.0);
          CA::OGL::Context::bind_surface(v38, v50, 1u, 0, 0, 0.0);
          CA::OGL::emit_one_part_rect(v38, &v164, v163, v163, 0);
          CA::OGL::Context::unbind_surface(v38, v100, 0);
          CA::OGL::Context::unbind_surface(v38, v50, 1);
          v10 = v131;
        }

        CA::OGL::Context::release_surface(v38, v77);
        CA::OGL::Context::release_surface(v38, v129);
        LODWORD(v79) = 1;
        goto LABEL_97;
      }

      v135 = (*(*v38 + 696))(v38, 1, *(v38 + 672) + 48, 17, @"sdf-blur-source");
      v80 = (*(*v38 + 696))(v38, 1, *(v38 + 672) + 48, 17, @"sdf-blur-dst");
      v130 = v80;
      v81 = v80;
      if (v135 && v80)
      {
        (*(*v38 + 760))(v38, v80, *(v80 + 40), *(v80 + 44));
        (*(*v38 + 760))(v38, v135, *(v135 + 40), *(v135 + 44));
        goto LABEL_80;
      }

      if (v135)
      {
        CA::OGL::Context::release_surface(v38, v135);
        v81 = v130;
      }

      if (v81)
      {
        CA::OGL::Context::release_surface(v38, v81);
      }

      CA::OGL::Context::release_surface(v38, v77);
    }

    else
    {
      if (v77)
      {
        CA::OGL::Context::release_surface(v38, v77);
      }

      if (!v79)
      {
        goto LABEL_97;
      }
    }

    CA::OGL::Context::release_surface(v38, v79);
    LODWORD(v79) = 0;
LABEL_97:
    CA::OGL::Context::release_surface(v38, v50);
LABEL_98:
    (*(*v38 + 1096))(v38, v144);
    *(v38 + 136) = 0;
    *(v38 + 152) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    (*(*v38 + 456))(v38, 1);
    (*(*v38 + 40))(v38, 0, 0, 0);
    (*(*v38 + 48))(v38, v37);
    (*(*v38 + 264))(v38, 0);
    for (i = 504; i != -504; i -= 504)
    {
      if (*&v146[i])
      {
        __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
      }
    }

    if (v79)
    {
      if (includeGradient)
      {
        v126 = 36;
      }

      else
      {
        v126 = 3;
      }

      v127 = CAGetColorSpace(v126);
      v22 = CACreateIOSurfaceBackedCGImage(v37, v133, v127, v34, v35);
    }

    else
    {
      v22 = 0;
    }

    CFRelease(v37);
    goto LABEL_108;
  }

  v22 = 0;
LABEL_108:
  if (atomic_fetch_add(&v13[1], 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

LABEL_110:
  objc_autoreleasePoolPop(v10);
  return v22;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  renderer = self->_renderer;
  if (renderer)
  {
    CA::OGL::Renderer::~Renderer(self->_renderer);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, renderer);
  }

  (*(*self->_context + 272))(self->_context, 1);
  context = self->_context;
  if (context)
  {
    (*(*context + 8))(context);
  }

  v5.receiver = self;
  v5.super_class = CASDFGenerator;
  [(CASDFGenerator *)&v5 dealloc];
}

- (CASDFGenerator)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CASDFGenerator;
  v2 = [(CASDFGenerator *)&v9 init];
  if (v2)
  {
    v3 = CAMetalContextCreate();
    v4 = v3;
    if (v3)
    {
      v2->_context = CA::OGL::new_metal_context(v3, 0, 0, 0x22410, 2, @"com.apple.coreanimation.sdf_generator");
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v5 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
      v6 = v5;
      if (v5)
      {
        context = v2->_context;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = context;
        v5[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
        v6[7] = 0;
        *(v6 + 24) = 1;
        *(v6 + 50) = 0;
      }

      v2->_renderer = v6;
    }
  }

  return v2;
}

@end