uint64_t CA::OGL::prepare_layer(int32x2_t *a1, uint64_t a2, const CA::Render::TransitionSubclass *a3, uint64_t a4, uint64_t a5, int a6)
{
  v239 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  if (!v6)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if ((v8 & 0x18) != 0 && (*(a2 + 24) & 0x1000) == 0)
  {
    return 0;
  }

  if ((v8 & 0x81000) == 0)
  {
    v21 = a1[5];
    v22 = vclez_s32(v21);
    if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }

    v23 = *(a2 + 184);
    v24 = vclez_s32(v23);
    if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(a1[4], v21), vadd_s32(*(a2 + 176), v23)), vmax_s32(a1[4], *(a2 + 176))));
    if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v15 = a1[1];
  if (*(*&v15 + 1376))
  {
    v16 = *(*&v15 + 376);
    if (v16)
    {
      if (!(*(*v16 + 24))(v16, a2, *(a2 + 32)))
      {
        return 0;
      }
    }
  }

  v188 = a6;
  if ((a5 & 0x4000000) != 0 || (v17 = *(a2 + 120), !*&v17))
  {
    v26 = CA::OGL::Renderer::alloc_layer(a1, a2, a3, a4);
    *(v26 + 32) |= a5;
    v31 = CA::OGL::prepare_layer_image(a1, v26, a4, v28);
  }

  else
  {
    v18 = CA::Render::Transition::subclass(*(a2 + 120), a2, a3);
    if (v18)
    {
      v19 = ((*v18)[6])(v18, *&v17);
      v20 = 0;
    }

    else
    {
      v20 = *(*&v17 + 32) == 0;
      if (*(*&v17 + 32))
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }
    }

    v206 = 0u;
    v205 = 0u;
    *&v216 = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v207 = 0u;
    v204 = 0u;
    *&v206 = 0;
    v201 = *(a4 + 8);
    v32 = *(a4 + 80) & 0x500;
    v34 = *(a4 + 24);
    v33 = *(a4 + 32);
    v199 = 0;
    v200 = 0;
    v202 = v34;
    v203 = v33;
    DWORD2(v205) = *(a4 + 64);
    v35 = v32 | 1;
    WORD4(v206) = v32 | 1;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    if (CA::OGL::test_source_requirement(v19, v34))
    {
      v39 = *(v34 + 16);
      v40 = *(v34 + 32);
      v41 = *(v34 + 48);
      v190 = *v34;
      v191 = v39;
      v192 = v40;
      v193 = v41;
      v42 = *(v34 + 80);
      v43 = *(v34 + 96);
      v44 = *(v34 + 112);
      v194 = *(v34 + 64);
      v195 = v42;
      v196 = v43;
      v197 = v44;
      v198 = *(v34 + 128);
      LOBYTE(v199) = *(v34 + 144) & 0x1F;
      CA::Transform::invert(&v190, v36, v37);
    }

    else
    {
      v45 = xmmword_183E20E00;
      v207 = xmmword_183E20E00;
      v208 = 0u;
      v46 = xmmword_183E20E60;
      v209 = xmmword_183E20E60;
      v210 = 0u;
      v211 = 0u;
      v212 = xmmword_183E20E00;
      v213 = 0u;
      v214 = xmmword_183E20E60;
      __asm { FMOV            V0.2D, #1.0 }

      v215 = _Q0;
      LOBYTE(v216) = 0;
      v202 = &v207;
      WORD4(v206) = v35 & 0xFC01 | 0x200;
      v190 = xmmword_183E20E00;
      v192 = xmmword_183E20E60;
      v193 = 0u;
      v194 = 0u;
      v195 = xmmword_183E20E00;
      v197 = xmmword_183E20E60;
      v198 = _Q0;
      if (v19 != 8)
      {
        if ((*(v34 + 144) & 0x10) != 0)
        {
          scale = CA::Mat4Impl::mat4_get_scale(v34, 0, 0, v38);
          v46 = xmmword_183E20E60;
          v45 = xmmword_183E20E00;
        }

        else
        {
          scale = *(v34 + 128);
        }

        if (scale != 1.0)
        {
          *&v215 = scale;
          *(&v215 + 1) = 1.0 / scale;
          LOBYTE(v216) = 8;
          v207 = vmulq_n_f64(v45, scale);
          v209 = vmulq_n_f64(v46, scale);
        }

        v51 = 1.0 / scale;
        if (1.0 / scale != 1.0)
        {
          *&v198 = 1.0 / scale;
          *(&v198 + 1) = scale;
          LOBYTE(v199) = 8;
          v190 = vmulq_n_f64(v45, v51);
          v192 = vmulq_n_f64(v46, v51);
        }
      }
    }

    v26 = CA::OGL::Renderer::alloc_layer(a1, a2, a3, &v200);
    CA::OGL::prepare_layer_image(a1, v26, &v200, v52);
    v53 = *(a2 + 24);
    if ((v53 & 0x4000000) == 0 && *(*&v17 + 72))
    {
      *(v26 + 176) = CA::OGL::cache_node(a1, v26, (*&v17 + 72), *(v26 + 176), 0, 1.0);
    }

    v54 = CA::OGL::Renderer::alloc_layer(a1, *(a2 + 136), a3, &v200);
    *(v54 + 32) |= 0x4000000uLL;
    CA::OGL::prepare_layer_image(a1, v54, &v200, v55);
    if ((v53 & 0x4000000) == 0 && *(*&v17 + 64))
    {
      *(v54 + 176) = CA::OGL::cache_node(a1, v54, (*&v17 + 64), *(v54 + 176), 0, 1.0);
    }

    v56 = *(v26 + 176);
    if (v20)
    {
      v57 = CA::OGL::combine_node(a1, v26, 7, a4, *(v26 + 176), *(v54 + 176), *(*&v17 + 48), *(*&v17 + 48), *(*&v17 + 48), *(*&v17 + 48));
      *(v26 + 176) = v57;
      *(v57 + 236) = *(v57 + 236) & 0xFFFE0000 | 0x20;
    }

    else
    {
      v58 = *(v54 + 176);
      v59 = a1[9];
      if (v59)
      {
        a1[9] = *v59;
      }

      else
      {
        v59 = x_heap_malloc_small_(*&a1[7], 0x110uLL);
      }

      CA::OGL::ImagingNode::ImagingNode(v59, a1, v26, v58, v56);
      *v59 = &unk_1EF1FDD60;
      v59[30] = v17;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v60 = malloc_type_zone_malloc(malloc_zone, 0x98uLL, 0x165299FDuLL);
      if (v60)
      {
        v61 = v191;
        v62 = v192;
        v63 = v193;
        *v60 = v190;
        v60[1] = v61;
        v60[2] = v62;
        v60[3] = v63;
        v64 = v195;
        v65 = v196;
        v66 = v197;
        v60[4] = v194;
        v60[5] = v64;
        v60[6] = v65;
        v60[7] = v66;
        v60[8] = v198;
        *(v60 + 144) = v60[9] & 0xE0 | v199 & 0x1F;
      }

      v59[31] = v60;
      CA::OGL::init_gstate(&v59[7], a4);
      v59[29].i32[1] = (v59[29].i32[1] & 0xFFDE0000 | 0x200040) - 32;
      *(v26 + 176) = v59;
    }

    *(v26 + 208) = v54;
    *(v54 + 176) = 0;
    v31 = (*(v26 + 176) + 56);
  }

  v67 = *(v26 + 8);
  if (v67 && (*(v67 + 37) & 4) != 0)
  {
    *(v26 + 32) |= 0x40000000000uLL;
  }

  v68 = *(v26 + 32);
  if ((v68 & 0x4000000) == 0)
  {
    v70 = *(v26 + 16);
    v69 = *(v26 + 24);
    if (*(v70 + 128))
    {
      if ((v68 & 0x2C0000) == 0 && (*(v70 + 25) & 0x20) != 0)
      {
        goto LABEL_115;
      }

      *(v26 + 32) = v68 | 2;
    }

    else
    {
      if ((*(v69 + 45) & 1) == 0)
      {
        goto LABEL_115;
      }

      if ((v68 & 0x2C0000) == 0)
      {
        if ((*(v70 + 25) & 0x20) != 0)
        {
          goto LABEL_115;
        }

        if ((v68 & 0x300007FE0) == 0x100 && (v68 & 0x10) != 0 && (v77 = *(v70 + 48)) != 0 && (v78 = (*(*v77 + 80))(*(v70 + 48))) != 0)
        {
          v238 = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v224 = 0u;
          v225 = 0u;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v207 = 0u;
          CA::OGL::ContentsGeometry::ContentsGeometry(&v207, v26, a4, v78, v77, 0);
          if (BYTE10(v237))
          {
            goto LABEL_115;
          }
        }

        else if ((v68 & 0x300003F40) == 0)
        {
          goto LABEL_115;
        }
      }
    }

    v71 = *(v69 + 40);
    v72 = *(v26 + 32);
    if ((v71 & 0x10000000000) != 0)
    {
      if ((v72 & 0x1000000) != 0 || ((v73 = *(v70 + 56)) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(v73, v29) || (v74 = *(a4 + 24), (*(v74 + 144) & 0x10) != 0) && !CA::Mat4Impl::mat4_is_rectilinear(v74, v29)) && ((v72 & 0x300007AE0) != 0 || (v72 & 0x100) != 0 && (v71 >> 12) - 11 <= 0xFFFFFFFD))
      {
        if ((*(v26 + 41) & 0xF) != 0)
        {
          v75 = 1;
        }

        else
        {
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          CA::OGL::map_layer_corners(v26, a4, v207.f64);
          v79 = 0;
          v75 = 0x8000000;
          do
          {
            if ((*&v207.f64[v79] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v207.f64[v79 + 1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              v75 = 1;
            }

            v79 += 2;
          }

          while (v79 != 8);
          v72 = *(v26 + 32);
        }

        v72 |= v75;
        *(v26 + 32) = v72;
      }

      if ((*(v26 + 41) & 0xF) != 0 && (v72 & 1) == 0)
      {
        v80 = *(v69 + 72);
        v81 = *(v69 + 88);
        v207 = v80;
        v208 = v81;
        v82 = *(v70 + 56);
        if (v82)
        {
          CA::Mat4Impl::mat4_apply_to_rect(v82, &v207, v30);
        }

        else
        {
          v207 = vaddq_f64(*(v70 + 64), v80);
        }

        CA::Rect::apply_transform(&v207, *(a4 + 24), v30);
        v72 = *(v26 + 32);
        if (vaddvq_f64(vaddq_f64(vabdq_f64(v207, vrndaq_f64(v207)), vabdq_f64(v208, vrndaq_f64(v208)))) >= 0.000004)
        {
          v72 |= 1uLL;
          *(v26 + 32) = v72;
        }
      }

      if ((v72 & 0x11) == 0x10)
      {
        if ((v72 & 0x1480002) != 0)
        {
          goto LABEL_111;
        }

        if (!(*(**(v26 + 176) + 24))(*(v26 + 176)))
        {
          goto LABEL_111;
        }

        v83 = *(v26 + 176);
        v84 = *(v83 + 80);
        if ((*(v84 + 144) & 0x10) != 0 && (*(v84 + 24) != 0.0 || *(v84 + 56) != 0.0))
        {
          goto LABEL_111;
        }

        v85 = *(v26 + 24);
        v86 = *(v85 + 136);
        if (v86)
        {
          if (*(v86 + 72))
          {
            CA::Render::Layer::max_corner_radii(*(v85 + 136));
          }

          else
          {
            v87 = *(v86 + 232);
          }
        }

        else
        {
          v87 = 0.0;
        }

        v89 = *(v85 + 88);
        v88 = *(v85 + 96);
        v90 = v89 >= v88 ? *(v85 + 96) : *(v85 + 88);
        if ((v91 = *(v85 + 40), v92 = HIWORD(v91) & 0xF, v92 == 15) || v86 && *(v86 + 72) || v92 == 9 || v92 == 6)
        {
          v93 = v90 * 0.5;
        }

        else
        {
          v183 = (~v91 & 0xC0000) == 0 || (~v91 & 0x30000) == 0;
          v184 = v89 * 0.5;
          if (v183 && v184 < v90)
          {
            v90 = v184;
          }

          v186 = (~v91 & 0x50000) == 0 || (~v91 & 0xA0000) == 0;
          v93 = v88 * 0.5;
          if (!v186 || v93 >= v90)
          {
            v93 = v90;
          }
        }

        if (v87 > v93 * 1.00001 || v86 && *(v86 + 56) && (*(v85 + 50) & 1) != 0)
        {
LABEL_111:
          v72 = *(v26 + 32) | 1;
          *(v26 + 32) = v72;
        }

        else
        {
          *(v83 + 236) |= 0x400000u;
          v72 = *(v26 + 32);
        }
      }
    }

    if ((v72 & 3) != 0)
    {
      v94 = a1[9];
      if (v94)
      {
        a1[9] = **&v94;
      }

      else
      {
        v94 = x_heap_malloc_small_(*&a1[7], 0x110uLL);
      }

      CA::OGL::ImagingNode::ImagingNode(*&v94, a1, v26, 0, 0);
      **&v94 = &unk_1EF1FD610;
      *(*&v94 + 240) &= ~1u;
      *(*&v94 + 248) = 0;
      *(*&v94 + 88) = 0x3C003C003C003C00;
      *(*&v94 + 104) = 0;
      *(*&v94 + 112) = 0;
      *(*&v94 + 96) = 0;
      v98 = *(*&v94 + 136);
      *(*&v94 + 128) = 0;
      *(*&v94 + 56) = 0u;
      *(*&v94 + 72) = 0u;
      *(*&v94 + 120) = 1065353216;
      v99 = v98 & 0xF800 | 0x401;
      *(*&v94 + 136) = v99;
      *(*&v94 + 236) = *(*&v94 + 236) & 0xFFFE0000 | 0x100;
      v100 = v99 | *(a4 + 80) & 0x100;
      *(*&v94 + 136) = v100;
      if ((~*(v26 + 32) & 3) == 0)
      {
        *(*&v94 + 136) = v100 & 0xFD00 | 4;
      }

      *&v216 = 0;
      v214 = 0uLL;
      v215 = 0uLL;
      v212 = 0uLL;
      v213 = 0uLL;
      v210 = 0uLL;
      v211 = 0uLL;
      v208 = 0uLL;
      v209 = 0uLL;
      v207 = 0uLL;
      v101 = *(v70 + 56);
      if (v101)
      {
        CA::Transform::set(&v207, v101, 1);
      }

      else
      {
        v102 = *(v70 + 80);
        if (fabs(v102) < 0.001)
        {
          v103 = *(a4 + 24);
          v104 = *(v103 + 16);
          v105 = *(v103 + 32);
          v106 = *(v103 + 48);
          v207 = *v103;
          v208 = v104;
          v209 = v105;
          v210 = v106;
          v107 = *(v103 + 80);
          v108 = *(v103 + 96);
          v109 = *(v103 + 112);
          v211 = *(v103 + 64);
          v212 = v107;
          v213 = v108;
          v214 = v109;
          v215 = *(v103 + 128);
          v110.f64[1] = *(&v215 + 1);
          LOBYTE(v216) = *(v103 + 144) & 0x1F;
          v110.f64[0] = *(v70 + 64);
          CA::Transform::translate(&v207, v110, *(v70 + 72), 0.0);
          v95 = v94;
LABEL_126:
          v113 = v26 + 232;
          if (!CA::Transform::operator==(&v207, v26 + 232))
          {
            v113 = x_heap_malloc_small_(*&a1[7], 0x98uLL);
            v114 = v208;
            v115 = v209;
            v116 = v210;
            *v113 = v207;
            *(v113 + 16) = v114;
            *(v113 + 32) = v115;
            *(v113 + 48) = v116;
            v117 = v212;
            v118 = v213;
            v119 = v214;
            *(v113 + 64) = v211;
            *(v113 + 80) = v117;
            *(v113 + 96) = v118;
            *(v113 + 112) = v119;
            *(v113 + 128) = v215;
            *(v113 + 144) = *(v113 + 144) & 0xE0 | v216 & 0x1F;
          }

          *(*&v94 + 80) = v113;
          goto LABEL_129;
        }

        v207 = xmmword_183E20E00;
        v208 = 0uLL;
        v209 = xmmword_183E20E60;
        v210 = 0u;
        v211 = 0u;
        v212 = xmmword_183E20E00;
        v214 = xmmword_183E20E60;
        v213 = *(v70 + 64);
        *&v214 = v102;
        __asm { FMOV            V0.2D, #1.0 }

        v215 = _Q0;
        LOBYTE(v216) = 16;
      }

      v95 = v94;
      if ((CA::OGL::maybe_concatenate(&v207, *(a4 + 24), v96, v97) & 1) == 0)
      {
        *(*&v94 + 136) = *(*&v94 + 136) & 0xFCFF | 0x200;
        CA::OGL::quad_node(a1, v26, *&v94, 1, 1, 0, 0.0);
        v95 = v112;
        *(*&v112 + 80) = *(a4 + 24);
        *(*&v112 + 136) = *(*&v112 + 136) & 0xFEFF | *(a4 + 80) & 0x100;
        *(*&v112 + 236) = *(*&v112 + 236) & 0xFFFE0000 | 0x80;
      }

      goto LABEL_126;
    }

LABEL_115:
    v94 = 0;
    v95 = 0;
LABEL_129:
    v120 = *(v26 + 176);
    v121 = *(v26 + 32);
    if ((v121 & 0x480000) != 0 || *&v95 && (v121 & 0x200000) != 0)
    {
      v122 = *(v26 + 40);
      if (HIBYTE(v122) != 3)
      {
        *(v26 + 64) = *(v26 + 48);
        *(v26 + 88) = *(v26 + 80);
        *(v26 + 40) = v122 | (HIBYTE(v122) << 16) | 0x3000000;
        *(v26 + 32) = v121 | 0x100000;
      }

      v123 = *(v26 + 184);
      if (!v123)
      {
        v123 = a1[9];
        if (v123)
        {
          a1[9] = *v123;
        }

        else
        {
          v123 = x_heap_malloc_small_(*&a1[7], 0x110uLL);
        }

        CA::OGL::ImagingNode::ImagingNode(v123, a1, v26, 0, 0);
        *v123 = &unk_1EF1FDA90;
        v123[30] = 0;
        v123[29].i32[1] |= 0x1000000u;
        *(v26 + 184) = v123;
      }

      ++v123[28].i8[4];
      for (i = *(v26 + 224); i; i = *i)
      {
        v123 = CA::OGL::filter_node(a1, v26, i, a4, 0, v123);
      }

      if ((*(v26 + 34) & 0x40) != 0)
      {
        v135 = *(v6 + 136);
        if (v135)
        {
          v136 = v135[11];
        }

        else
        {
          v136 = 0;
        }

        v137 = a1[9];
        if (v137)
        {
          a1[9] = *v137;
        }

        else
        {
          v137 = x_heap_malloc_small_(*&a1[7], 0x110uLL);
        }

        CA::OGL::ImagingNode::ImagingNode(v137, a1, v26, v120, v123);
        *v137 = &unk_1EF1FDCD0;
        v137[30] = v136;
        CA::OGL::init_gstate(&v137[7], a4);
        v137[29].i32[1] = v137[29].i32[1] & 0xFFDE0000 | 0x200040;
        v123 = v137;
      }

      else
      {
        v128 = v31;
        v129 = *(v26 + 40);
        v130 = *(v26 + 88);
        v131 = v120[38];
        if (v131 < 0)
        {
          (*(*v120 + 40))(v120, v120 + 36);
          v131 = v120[38];
        }

        if (v131 >= v120[39])
        {
          v131 = v120[39];
        }

        v132 = HIWORD(v129);
        if (v131 <= 0 && ((v129 & 0xF00000) != 0 || ((0x3ACCu >> SBYTE2(v129)) & 1) != 0))
        {
          v182 = v120[57] - 1;
          --*(v120 + 228);
          if (!v182)
          {
            CA::OGL::ImagingNode::finalize(v120, a1);
          }
        }

        else
        {
          v133 = v130;
          v134 = a1[9];
          if (v134)
          {
            a1[9] = *v134;
          }

          else
          {
            v134 = x_heap_malloc_small_(*&a1[7], 0x110uLL);
          }

          CA::OGL::ImagingNode::ImagingNode(v134, a1, v26, v123, v120);
          *v134 = &unk_1EF1FDC40;
          CA::OGL::init_gstate(&v134[7], a4);
          v134[17].i8[0] = v132;
          v134[12] = *(v26 + 64);
          v134[13] = *(v26 + 72);
          v134[14] = v133;
          v134[29].i32[1] = v134[29].i32[1] & 0xFFDE0000 | 0x200040;
          v123 = v134;
        }

        v31 = v128;
      }

      if (v95)
      {
        *(*&v95 + 236) |= 0x200000u;
        ++*(*&v95 + 228);
        v138 = CA::OGL::combine_node(a1, v26, 5, a4, v123, *&v95, 0.0, 0.0, 0.0, 0.0);
        v139 = *(v26 + 184);
        ++*(v139 + 228);
        v140 = CA::OGL::combine_node(a1, v26, 6, a4, v139, *&v95, 0.0, 0.0, 0.0, 0.0);
        v123 = CA::OGL::combine_node(a1, v26, 10, a4, v138, v140, 0.0, 0.0, 0.0, 0.0);
        v123[29].i32[1] = v123[29].i32[1] & 0xFFFE0000 | 0x100;
      }

      v76 = 1;
    }

    else if (v95)
    {
      CA::OGL::apply_pending_blending(v26);
      if (*&v94 == *&v95 && (v125 = *(*&v94 + 80), v125 == *(v120 + 10)) && ((*(v125 + 144) & 0x10) == 0 || CA::Mat4Impl::mat4_is_2d_affine(v125, v124)) && (*(v26 + 32) & 2) == 0)
      {
        v76 = 0;
        *(*&v95 + 24) = v120;
        *(*&v95 + 236) |= 0x200000u;
        v123 = v95;
      }

      else
      {
        if ((*(v6 + 40) & 0x20000000000) != 0)
        {
          v126 = 6;
        }

        else
        {
          v126 = 5;
        }

        v123 = CA::OGL::combine_node(a1, v26, v126, a4, v120, *&v95, 0.0, 0.0, 0.0, 0.0);
        v76 = 0;
        v123[29].i32[1] = v123[29].i32[1] & 0xFFFE0000 | 0x100;
      }
    }

    else
    {
      v76 = 0;
      v123 = *(v26 + 176);
    }

    *(v26 + 176) = v123;
    goto LABEL_172;
  }

  v76 = 1;
LABEL_172:
  if (*(*(v26 + 16) + 144) | *(a4 + 16))
  {
    v141 = 1;
  }

  else
  {
    v141 = (*(v26 + 35) >> 3) & 1;
  }

  v142 = *(v26 + 176);
  v143 = *(v142 + 136);
  v145 = *(v142 + 96);
  v144 = *(v142 + 104);
  v146 = *(v142 + 112);
  if ((v76 & 1) == 0)
  {
    *(v142 + 136) = *(v26 + 42) | v143 & 0xFF00;
    *(*(v26 + 176) + 96) = *(v26 + 64);
    *(*(v26 + 176) + 104) = *(v26 + 72);
    v142 = *(v26 + 176);
    *(v142 + 112) = *(v26 + 88);
  }

  v147 = (*(*v142 + 16))(v142, v141);
  v149 = *(v26 + 176);
  if (v147)
  {
    *(v149 + 136) = v143;
    *(*(v26 + 176) + 96) = v145;
    *(*(v26 + 176) + 104) = v144;
    v150 = *(v26 + 176);
    *(v150 + 112) = v146;
    v151 = CA::OGL::combine_node(a1, v26, 1, v31, v150, 0, 0.0, 0.0, 0.0, 0.0);
    *(v26 + 176) = v151;
    *(v151 + 236) = *(v151 + 236) & 0xFFFE0000 | 0x10;
    v149 = *(v26 + 176);
    if ((v76 & 1) == 0)
    {
      *(v149 + 136) = *(v26 + 42);
      *(*(v26 + 176) + 96) = *(v26 + 64);
      *(*(v26 + 176) + 104) = *(v26 + 72);
      v149 = *(v26 + 176);
      *(v149 + 112) = *(v26 + 88);
    }
  }

  *(v149 + 72) = *(a4 + 16);
  if (*(*(v26 + 16) + 144))
  {
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    CA::Mat4Impl::mat4_invert(&v190, *(a4 + 24), v148);
    CA::Mat4Impl::mat4_transpose(&v207, v190.f64, v152);
    CA::Mat4Impl::mat4_invert(&v190, *&v31[3], v153);
    for (j = *(*(v26 + 16) + 144); j; j = *&j->f64[0])
    {
      v155 = j[1];
      v156 = j[2];
      v157 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v207, v155.f64[0]), v209, v155, 1), v211, v156.f64[0]), v213, v156, 1);
      v158 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v208, v155.f64[0]), v210, v155, 1), v212, v156.f64[0]), v214, v156, 1);
      v155.f64[0] = -v158.f64[0] / *&v195;
      *&v156.f64[0] = v191;
      v159 = v158.f64[1] + *&v197 * v155.f64[0];
      *&v156.f64[1] = v193;
      v189 = vmlaq_n_f64(v157, v156, v155.f64[0]);
      v160 = CA::OGL::Renderer::add_clip_plane(a1, v26);
      *(v160 + 12) = vcvt_f32_f64(v189);
      *(v160 + 20) = 0;
      v161 = v159;
      *(v160 + 24) = v161;
    }
  }

  if ((*(v26 + 35) & 8) != 0)
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    CA::OGL::map_layer_corners(v26, a4, v207.f64);
    v162 = 0;
    v163 = 0;
    v192 = 0u;
    v193 = 0u;
    LODWORD(v164) = 3;
    v190 = 0u;
    v191 = 0u;
    while (1)
    {
      v165 = &v207 + v164;
      v164 = v162;
      v166 = &v207 + v162;
      v167 = v166->f64[0];
      v168 = v166->f64[1];
      v169 = v166->f64[0] - v165->f64[0];
      v170 = v168 - v165->f64[1];
      if (v169 != 0.0)
      {
        break;
      }

      if (v170 != 0.0)
      {
        v173 = v169 / v170;
        v172 = v167 - v173 * v168;
        v171 = -1.0;
        goto LABEL_189;
      }

      v162 = v164 + 1;
LABEL_192:
      if (v162 == 4)
      {
        if (v163)
        {
          v178 = &v190;
          do
          {
            v179 = CA::OGL::Renderer::add_clip_plane(a1, v26);
            v180 = *v178++;
            *(v179 + 12) = v180;
            --v163;
          }

          while (v163);
        }

        goto LABEL_198;
      }
    }

    v171 = v170 / v169;
    v172 = v168 - v171 * v167;
    v173 = -1.0;
LABEL_189:
    v162 = v164 + 1;
    if (v172 + v207.f64[2 * ((v164 + 1) & 3)] * v171 + v207.f64[2 * ((v164 + 1) & 3) + 1] * v173 < 0.0)
    {
      v171 = -v171;
      v173 = -v173;
      v172 = -v172;
    }

    v174 = v171;
    v175 = (&v190 + v163);
    v176 = v173;
    *v175 = v174;
    v175[1] = v176;
    v175[2] = 0.0;
    v177 = v172;
    v175[3] = v177;
    ++v163;
    goto LABEL_192;
  }

LABEL_198:
  v181 = *(v26 + 176);
  if (v188)
  {
    v181[59] |= 0x800000u;
    v181 = *(v26 + 176);
  }

  (*(*v181 + 96))(v181);
  return v26;
}

uint64_t CA::OGL::Renderer::alloc_layer(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a1[8];
  if (v8)
  {
    a1[8] = *v8;
  }

  else
  {
    v8 = x_heap_malloc_small_(a1[7], 0x188uLL);
  }

  *v8 = 0;
  *(v8 + 8) = a3;
  v9 = *(a2 + 32);
  *(v8 + 16) = a2;
  *(v8 + 24) = v9;
  *(v8 + 32) = 0;
  *(v8 + 40) = 64;
  if ((*(v9 + 47) & 0x20) == 0 || (*(*a1 + 872) & 8) != 0 || (*(a2 + 24) & 0x100) != 0)
  {
    v10 = 64;
  }

  else
  {
    v10 = -192;
  }

  *(v8 + 40) = v10 | 0x3030000;
  *(v8 + 160) = 0;
  *(v8 + 384) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 216) = 0;
  *(v8 + 224) = 0;
  *(v8 + 388) &= 0xF0000000;
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  v11 = a3[24];
  *(v8 + 192) = v11;
  *(v8 + 96) = a3[12];
  *(v8 + 104) = a3[13];
  if (v11 && (byte_1ED4E98C7 & 1) == 0)
  {
    *(v8 + 32) = 0x8000;
  }

  v12 = a1[9];
  if (v12)
  {
    a1[9] = *v12;
  }

  else
  {
    v12 = x_heap_malloc_small_(a1[7], 0x110uLL);
  }

  v13 = CA::OGL::ImagingNode::ImagingNode(v12, a1, v8, 0, 0);
  *v13 = &unk_1EF1FD580;
  *(v13 + 240) &= 0xFCu;
  *(v13 + 248) = 0;
  *(v13 + 256) = 0;
  *(v8 + 168) = v13;
  *(v8 + 176) = v13;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  v14 = (*(v13 + 137) << 8) | 3;
  v15 = *(a4 + 32);
  *(v13 + 136) = v14;
  *(v13 + 104) = 0;
  *(v13 + 112) = 0;
  *(v13 + 88) = v15;
  *(v13 + 96) = 0;
  *(v13 + 120) = *(a4 + 64);
  v16 = v14 & 0xFCFF | *(a4 + 80) & 0x100;
  *(v13 + 136) = v16;
  *(v13 + 136) = v16 & 0xFBFF | *(a4 + 80) & 0x400;
  *(v13 + 128) = 0;
  return v8;
}

void *CA::OGL::prepare_layers(int32x2_t *a1, const CA::Render::TransitionSubclass *a2, void **a3, uint64_t a4, int a5, _BYTE *a6, _BYTE *a7)
{
  v7 = *a3;
  if (*a3 == a3)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v16 = CA::OGL::prepare_layer(a1, v7, a2, a4, (v15 == 0) << 29, a5);
    if (v16)
    {
      *v16 = v15;
      v17 = v16[22];
      v18 = *(v17 + 236);
      v19 = (v18 & 0x200000) != 0 || (v18 & 0x400000) != 0;
      *a7 |= v19;
      *a6 |= *(v17 + 239) & 1;
      v15 = v16;
    }

    v7 = *v7;
  }

  while (v7 != a3);
  return v15;
}

uint64_t CA::OGL::prepare_compositing_filter(uint64_t result, int8x8_t *a2, uint64_t a3, int a4)
{
  v6 = result;
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 24);
  if (v7 <= 523)
  {
    if (v7 > 189)
    {
      if (v7 <= 475)
      {
        if (v7 <= 239)
        {
          switch(v7)
          {
            case 190:
              v8 = 7;
              goto LABEL_129;
            case 191:
              v8 = 36;
              goto LABEL_129;
            case 205:
              v8 = 38;
              goto LABEL_129;
          }
        }

        else if (v7 > 306)
        {
          if (v7 == 307)
          {
            v8 = 53;
            goto LABEL_129;
          }

          if (v7 == 475)
          {
            v8 = 31;
            goto LABEL_129;
          }
        }

        else
        {
          if (v7 == 240)
          {
            v8 = 20;
            goto LABEL_129;
          }

          if (v7 == 293)
          {
            v8 = 35;
LABEL_129:
            a2[5].i8[2] = v8;
            goto LABEL_130;
          }
        }

        goto LABEL_130;
      }

      if (v7 <= 486)
      {
        switch(v7)
        {
          case 476:
            v8 = 51;
            goto LABEL_129;
          case 485:
            v8 = 39;
            goto LABEL_129;
          case 486:
            v8 = 19;
            goto LABEL_129;
        }

        goto LABEL_130;
      }

      if (v7 <= 511)
      {
        if (v7 == 487)
        {
          v8 = 40;
          goto LABEL_129;
        }

        if (v7 == 498)
        {
          v8 = 56;
          goto LABEL_129;
        }

        goto LABEL_130;
      }

      if (v7 == 512)
      {
        v8 = 18;
        goto LABEL_129;
      }

      if (v7 != 520)
      {
        goto LABEL_130;
      }

      v9 = 17;
      goto LABEL_126;
    }

    if (v7 > 178)
    {
      if (v7 <= 184)
      {
        switch(v7)
        {
          case 179:
            v8 = 30;
            goto LABEL_129;
          case 180:
            v19 = 50;
            break;
          case 184:
            v19 = 2;
            break;
          default:
            goto LABEL_130;
        }
      }

      else
      {
        if (v7 <= 187)
        {
          if (v7 != 185)
          {
            if (v7 != 186)
            {
              goto LABEL_130;
            }

            v9 = 8;
            goto LABEL_126;
          }

          v10 = 10;
LABEL_102:
          a2[5].i8[2] = v10;
          *&a2[4] |= 0x200000uLL;
          goto LABEL_130;
        }

        v19 = 9;
      }

LABEL_133:
      a2[5].i8[2] = v19;
      goto LABEL_134;
    }

    if (v7 > 104)
    {
      if (v7 == 105)
      {
        v8 = 33;
        goto LABEL_129;
      }

      if (v7 == 107)
      {
        v8 = 32;
        goto LABEL_129;
      }

      if (v7 != 158)
      {
        goto LABEL_130;
      }

      v10 = 1;
      goto LABEL_102;
    }

    if (v7 != 60)
    {
      if (v7 != 99)
      {
        if (v7 == 103)
        {
          v8 = 55;
          goto LABEL_129;
        }

        goto LABEL_130;
      }

      a2[5].i32[0] &= 0xFF00FFFF;
LABEL_127:
      *&a2[4] |= 0x200000uLL;
      goto LABEL_134;
    }

    goto LABEL_93;
  }

  if (v7 <= 663)
  {
    if (v7 > 562)
    {
      if (v7 <= 619)
      {
        switch(v7)
        {
          case 563:
            v19 = 27;
            break;
          case 564:
            a2[5].i8[2] = 12;
            result = (*(**result + 232))();
            if (result)
            {
              v21 = a2[2];
              if (!*&v21 || (*(*&v21 + 25) & 4) == 0)
              {
                v8 = 60;
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          case 565:
            v19 = 22;
            break;
          default:
            goto LABEL_130;
        }
      }

      else
      {
        if (v7 <= 658)
        {
          if (v7 == 620)
          {
            v8 = 54;
            goto LABEL_129;
          }

          if (v7 == 625)
          {
            v8 = 16;
            goto LABEL_129;
          }

LABEL_130:
          if ((a2[4].i8[3] & 0x20) == 0 || (*(*&a2[1] + 32) & 0x300807920) != 0x800000)
          {
            goto LABEL_134;
          }

          goto LABEL_132;
        }

        if (v7 == 659)
        {
          v8 = 34;
          goto LABEL_129;
        }

        if (v7 != 662)
        {
          goto LABEL_130;
        }

        v19 = 6;
      }

      goto LABEL_133;
    }

    if (v7 > 548)
    {
      switch(v7)
      {
        case 549:
          v8 = 29;
          goto LABEL_129;
        case 555:
          v8 = 41;
          goto LABEL_129;
        case 562:
          v8 = 26;
          goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (v7 != 524)
    {
      if (v7 == 525)
      {
        v8 = 28;
        goto LABEL_129;
      }

      if (v7 != 533)
      {
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    v9 = 15;
    goto LABEL_126;
  }

  if (v7 <= 696)
  {
    if (v7 > 668)
    {
      if (v7 != 669)
      {
        if (v7 == 695)
        {
          v8 = 37;
          goto LABEL_129;
        }

        if (v7 != 696)
        {
          goto LABEL_130;
        }

        v10 = 14;
        goto LABEL_102;
      }

LABEL_132:
      v19 = 3;
      goto LABEL_133;
    }

    if (v7 != 664)
    {
      if (v7 != 668)
      {
        goto LABEL_130;
      }

      v10 = 5;
      goto LABEL_102;
    }

    v9 = 4;
LABEL_126:
    a2[5].i8[2] = v9;
    goto LABEL_127;
  }

  if ((v7 - 742) > 0x10)
  {
LABEL_95:
    if (v7 == 697)
    {
      v19 = 13;
      goto LABEL_133;
    }

    if (v7 != 698)
    {
      goto LABEL_130;
    }

    v19 = 23;
    goto LABEL_133;
  }

  if (((1 << (v7 + 26)) & 0x6C) == 0)
  {
    if (v7 == 742)
    {
LABEL_93:
      if (a4)
      {
        v20 = a2[5].i32[0];
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        CA::OGL::get_filter_color_matrix(*(a3 + 40), &v36);
        v22 = *(*&a2[3] + 136);
        if (v22)
        {
          v23 = *(v22 + 316);
          if (v23 > 1.0)
          {
            v24 = powf(v23, 1.0 / *(*v6 + 576));
            v36 = vmulq_n_f32(v36, v24);
            v37 = vmulq_n_f32(v37, v24);
            __asm { FMOV            V3.4S, #1.0 }

            *_Q3.i32 = v24;
            v30 = vzip1q_s32(_Q3, _Q3);
            v30.f32[2] = v24;
            v38 = vmulq_n_f32(v38, v24);
            v39 = vmulq_f32(v39, v30);
          }
        }

        v31 = malloc_type_malloc(0x60uLL, 0x100004052888210uLL);
        CA::OGL::uniform_swizzle_4x4_bias_matrix(v31, &v36);
        float_key = CA::Render::KeyValueArray::get_float_key(*(a3 + 40), 358, 0.0);
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        v33 = *&dword_1ED4E9760;
        if (*&dword_1ED4E9760 == 0.0)
        {
          v33 = float_key;
        }

        v34 = 1.0;
        v35 = powf(v33, 1.0 / *(*v6 + 576));
        result = CA::Render::KeyValueArray::get_int_key(*(a3 + 40), 359, 0);
        if (BYTE14(xmmword_1ED4E98AC) != 1)
        {
          v34 = result;
        }

        v31[20] = v35;
        v31[21] = v34;
        *(v31 + 11) = 0;
        a2[11] = v31;
        v20 = a2[5].i32[0] | 0x20;
      }

      if (v7 == 742)
      {
        v18 = 2818048;
      }

      else
      {
        v18 = 2752512;
      }

      v17 = v20 & 0xFF00FFFF;
      goto LABEL_151;
    }

    if (v7 == 758)
    {
      v8 = 11;
      goto LABEL_129;
    }

    goto LABEL_95;
  }

  v11 = *(a3 + 40);
  v36 = 0uLL;
  float_color_key = CA::Render::KeyValueArray::get_float_color_key(v11, 0x169, &v36);
  v13 = vcvt_f16_f32(v36);
  if (float_color_key)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  a2[8] = vbsl_s8(vdup_n_s16(v14), v13, 0x3C003C003C003C00);
  result = CA::Render::KeyValueArray::get_float_color_key(v11, 0x16A, &v36);
  v15 = vcvt_f16_f32(v36);
  if (result)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  a2[9] = vbsl_s8(vdup_n_s16(v16), v15, 0x3C003C003C003C00);
  v17 = a2[5].i32[0] & 0xFF00FFFF;
  if ((v7 - 744) > 4)
  {
    v18 = 196608;
  }

  else
  {
    v18 = dword_183E243E4[v7 - 744];
  }

LABEL_151:
  a2[5].i32[0] = v17 | v18;
LABEL_134:
  if (a2[5].u8[2] << 16 != 196608)
  {
    *&a2[4] |= 0x100000uLL;
  }

  return result;
}

float CA::OGL::uniform_swizzle_4x4_bias_matrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 20);
  *(a1 + 8) = *(a2 + 40);
  *(a1 + 12) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 44);
  *(a1 + 28) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 68);
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 36);
  *(a1 + 72) = *(a2 + 56);
  result = *(a2 + 76);
  *(a1 + 76) = result;
  return result;
}

BOOL CA::OGL::test_source_requirement(int a1, CA::Mat4Impl *this)
{
  result = 1;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        return (*(this + 144) & 0x1F) == 0;
      }

      if (a1 != 8)
      {
        return result;
      }

      result = 0;
      if ((*(this + 144) & 0x1F) != 0 || *(this + 12) != 0.0)
      {
        return result;
      }

      v5 = *(this + 13);
      return v5 == 0.0;
    }

    if (a1 != 5)
    {
      return (*(this + 144) & 0x17) == 0;
    }

    if ((*(this + 144) & 0x10) == 0)
    {
      return result;
    }

    if (fabs(*(this + 3)) < 0.000001 && fabs(*(this + 7)) < 0.000001 && fabs(*(this + 15) + -1.0) < 0.000001)
    {
      v6 = vpaddq_f64(vmulq_f64(*this, *this), vmulq_f64(*(this + 2), *(this + 2)));
      return fabs(vsubq_f64(v6, vdupq_laneq_s64(v6, 1)).f64[0]) < 0.000001;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2 && (*(this + 144) & 0x10) != 0)
      {
        return CA::Mat4Impl::mat4_is_affine_with_z_translate(this, this);
      }

      return result;
    }

    if ((*(this + 144) & 0x10) == 0)
    {
      return result;
    }

    if (*(this + 3) == 0.0)
    {
      v5 = *(this + 7);
      return v5 == 0.0;
    }

    return 0;
  }

  if (a1 == 3)
  {
    if ((*(this + 144) & 0x10) != 0)
    {
      return CA::Mat4Impl::mat4_is_affine(this, this);
    }
  }

  else if ((*(this + 144) & 0x10) != 0)
  {
    return CA::Mat4Impl::mat4_is_rectilinear(this, this);
  }

  return result;
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1)
{
  result = CA::OGL::should_render_secure_indicators_with_gpu(**(a1 + 8), *(*(a1 + 8) + 8), *(*(a1 + 16) + 16));
  v3 = *(a1 + 16);
  v4 = *(v3 + 32);
  *(v3 + 32) = v4 | 0x4000;
  if ((result & 1) == 0 && (byte_1ED4E989C & 1) == 0)
  {
    *(v3 + 32) = v4 | 0x4008;
  }

  return result;
}

uint64_t ___ZN2CA19IOMobileFramebuffer10swap_beginEPj_block_invoke(void *a1)
{
  v2 = a1[5];
  result = IOMobileFramebufferSwapBegin();
  if (!result)
  {
    *(v2 + 16) = 0;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t CA::OGL::maybe_concatenate(CA::OGL *this, CA::Transform *a2, const CA::Transform *a3, const double *a4)
{
  v53[5] = *MEMORY[0x1E69E9840];
  if ((*(this + 144) & 0x10) != 0 && (*(a2 + 144) & 0x10) != 0 && !CA::Mat4Impl::mat4_is_affine(this, a2) && !CA::Mat4Impl::mat4_is_affine(a2, v6))
  {
    if (CA::Mat4Impl::mat4_is_affine_with_z_translate(a2, v7))
    {
      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
      v13 = *(a2 + 3);
      v37 = *a2;
      v38 = v11;
      v39 = v12;
      v40 = v13;
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v41 = *(a2 + 4);
      v42 = v14;
      v43 = v15;
      v45 = *(&v16 + 1);
      v44 = 0;
LABEL_9:
      v8 = 1;
      CA::Transform::set(&v46, &v37, 1);
      v19 = &v46;
      v20 = this;
LABEL_13:
      CA::Transform::concat(v20, v19, v17, v18);
      return v8;
    }

    if (CA::Mat4Impl::mat4_is_affine_with_z_translate(this, v10))
    {
      v22 = *(this + 1);
      v23 = *(this + 2);
      v24 = *(this + 3);
      v46 = *this;
      v47 = v22;
      v48 = v23;
      v49 = v24;
      v25 = *(this + 5);
      v26 = *(this + 6);
      v27 = *(this + 7);
      v50 = *(this + 4);
      v51 = v25;
      v52 = v26;
      v53[1] = *(&v27 + 1);
      v53[0] = 0;
    }

    else
    {
      if (CA::Mat4Impl::mat4_is_fixed_z_with_z_translate(a2, v21))
      {
        v29 = *(a2 + 1);
        v30 = *(a2 + 2);
        v31 = *(a2 + 3);
        v37 = *a2;
        v38 = v29;
        v39 = v30;
        v40 = v31;
        v32 = *(a2 + 7);
        v43 = *(a2 + 6);
        v45 = *(&v32 + 1);
        v44 = 0;
        v41 = 0uLL;
        v42 = xmmword_183E20E00;
        goto LABEL_9;
      }

      if (!CA::Mat4Impl::mat4_is_fixed_z_with_z_translate(this, v28))
      {
        return 0;
      }

      v33 = *(this + 1);
      v34 = *(this + 2);
      v35 = *(this + 3);
      v46 = *this;
      v47 = v33;
      v48 = v34;
      v49 = v35;
      v36 = *(this + 7);
      v52 = *(this + 6);
      v53[1] = *(&v36 + 1);
      v53[0] = 0;
      v50 = 0uLL;
      v51 = xmmword_183E20E00;
    }

    v8 = 1;
    CA::Transform::set(this, &v46, 1);
    v20 = this;
    v19 = a2;
    goto LABEL_13;
  }

  CA::Transform::concat(this, a2, a3, a4);
  return 1;
}

BOOL CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1, CA::Render::GradientLayer *this)
{
  result = CA::Render::GradientLayer::is_valid(this);
  if (result)
  {
    *(*(a1 + 16) + 32) |= 0x4000uLL;
  }

  return result;
}

void CA::OGL::MetalContext::add_shared_event(uint64_t this, CA::Render::Surface *a2)
{
  if (a2)
  {
    v3 = *(a2 + 42);
    if (v3)
    {
      CA::OGL::MetalContext::SharedEvent::add(this + 2776, v3, 0x200000010);
      v5 = *(a2 + 42);
      if (v5)
      {

        CA::OGL::MetalContext::SharedEvent::add(this + 2912, v5, 0x200000010);
      }
    }
  }
}

void *CA::OGL::prepare_filters(const CA::Render::Filter **a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char a6, uint64_t a7)
{
  v9 = a4;
  v13 = 0;
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v14 = *(*(a2 + 16) + 256);
  if (v14 && (a6 & 1) == 0)
  {
    v15 = *(v14 + 56);
    if (v15 && (v16 = *(v15 + 624)) != 0)
    {
      v13 = *(v16 + 16);
    }

    else
    {
      v13 = 0;
    }
  }

  if (a3 && v13 < *(a3 + 16))
  {
    do
    {
      CA::OGL::prepare_one_filter(v23, a1, a2, *(a3 + 24 + 8 * v13++), 0, v9, a5);
    }

    while (v13 < *(a3 + 16));
  }

  if (a7)
  {
    CA::OGL::prepare_one_filter(v23, a1, a2, a7, 1, v9, a5);
  }

  v17 = v23[0];
  if (!v23[0])
  {
    return 0;
  }

  v18 = *(v23[0] + 8);
  if (v18)
  {
    v19 = 0;
    do
    {
      v20 = v18;
      v18 = *(v18 + 8);
      *(v20 + 8) = v19;
      v19 = v20;
    }

    while (v18);
    v17[1] = v20;
  }

  v21 = 0;
  do
  {
    result = v17;
    v17 = *v17;
    *result = v21;
    v21 = result;
  }

  while (v17);
  return result;
}

void CA::OGL::prepare_one_filter(uint64_t *a1, const CA::Render::Filter **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int *a7)
{
  v104 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 12);
  if ((v7 & 0x40100) != 0x100 || (v7 & 0x20000) != 0 && !*(*(a3 + 16) + 88) && (*(a2[1] + 1377) & 0x10) != 0)
  {
    return;
  }

  if ((v7 & 0x200) != 0 && !*(a4 + 16))
  {
    *(a4 + 16) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
  }

  memset(v97, 0, sizeof(v97));
  v14 = *(a4 + 48);
  if (v14)
  {
    if (!(*(*v14 + 72))(*(a4 + 48)))
    {
      return;
    }

    v15 = *a7;
    v16 = (*(*v14 + 136))(v14, a4);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    *a7 = v17;
    goto LABEL_14;
  }

  v22 = *(a4 + 24);
  if (v22 > 214)
  {
    if (v22 > 525)
    {
      if (v22 > 678)
      {
        if (v22 > 742)
        {
          if (v22 == 743 || v22 == 746)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v22 == 679)
          {
            goto LABEL_14;
          }

          if (v22 == 741)
          {
            v18 = *a1;
            v19 = a4;
            v20 = a5;
            goto LABEL_16;
          }
        }

        return;
      }

      if (v22 != 526)
      {
        if (v22 == 540 || v22 == 627)
        {
          goto LABEL_14;
        }

        return;
      }

      v98 = 0uLL;
      if (CA::Render::KeyValueArray::get_float_color_key(*(a4 + 40), 0x168, &v98))
      {
        v92 = -1;
      }

      else
      {
        v92 = 0;
      }

      v29 = vbsl_s8(vdup_n_s16(v92), vcvt_f16_f32(v98), 0x3C003C003C003C00);
      if (*&v29 == 0x3C003C003C003C00)
      {
        return;
      }

      if ((a6 & 1) != 0 || *a1)
      {
        v98 = 0uLL;
        CA::OGL::get_filter_color_float(*(a4 + 40), &v98, v90, v91);
        if (!v95)
        {
          return;
        }

        DWORD2(v97[1]) = v98.i32[1];
        LODWORD(v97[0]) = v98.i32[0];
        LODWORD(v97[3]) = v98.i32[2];
        memset(v97 + 4, 0, 20);
        memset(&v97[1] + 12, 0, 20);
        memset(&v97[3] + 4, 0, 20);
        *(&v97[4] + 1) = v98.u32[3];
        goto LABEL_131;
      }

LABEL_126:
      *(*(a3 + 176) + 88) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v29), vcvtq_f32_f16(*(*(a3 + 176) + 88))));
      if (*&v29.i16[3] != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        *(a3 + 32) |= 4uLL;
        *(a3 + 40) |= 1u;
      }

      return;
    }

    if (v22 <= 494)
    {
      switch(v22)
      {
        case 215:
          v18 = *a1;
          if (a6)
          {
            goto LABEL_15;
          }

          if (v18)
          {
            goto LABEL_15;
          }

          if ((*(a3 + 32) & 0x300007FE0) != 0x20)
          {
            goto LABEL_15;
          }

          if (*(*(a3 + 176) + 88) != 0x3C003C003C003C00)
          {
            goto LABEL_15;
          }

          v82 = *(*(a3 + 24) + 16);
          __asm { FMOV            V1.4S, #1.0 }

          v84 = vuzp2q_s32(vextq_s8(v82, v82, 4uLL), _Q1);
          v84.i32[2] = HIDWORD(*(*(a3 + 24) + 16));
          if ((vminv_u16(vmovn_s32(vceqq_f32(v82, v84))) & 1) == 0 || *v82.i32 <= 0.001)
          {
            goto LABEL_15;
          }

          v96 = *(*(a3 + 24) + 16);
          CA::Render::Update::render_edr_factor();
          v85 = *(*a2 + 144);
          v88 = CA::OGL::edr_gain_filter_gain(*(a4 + 40), a2[1], v86, v87, v85);
          v89 = powf(*&v96, v85);
          v50 = powf((v88 * v89) + 1.0, 1.0 / v85) / *&v96;
          break;
        case 216:
          v45 = *(a4 + 40);
          if (CA::Render::KeyValueArray::get_int_key(v45, 320, 0) && *(a2[1] + 296) <= 1.0)
          {
            return;
          }

          if (CA::Render::KeyValueArray::get_int_key(v45, 323, 1))
          {
            goto LABEL_14;
          }

          CA::Render::Update::render_edr_factor();
          v46 = *(*a2 + 144);
          v49 = CA::OGL::edr_gain_filter_gain(*(a4 + 40), a2[1], v47, v48, v46);
          v50 = powf(v49 + 1.0, 1.0 / v46);
          break;
        case 304:
          goto LABEL_14;
        default:
          return;
      }

      v51 = *(a3 + 176);
      _H1 = v51[44];
      __asm { FCVT            S1, H1 }

      _S1 = v50 * _S1;
      __asm { FCVT            H1, S1 }

      v51[44] = LOWORD(_S1);
      LOWORD(_S1) = v51[45];
      __asm { FCVT            S1, H1 }

      _S1 = v50 * _S1;
      __asm { FCVT            H1, S1 }

      v51[45] = LOWORD(_S1);
      LOWORD(_S1) = v51[46];
      __asm { FCVT            S1, H1 }

      _S0 = v50 * _S1;
      __asm { FCVT            H0, S0 }

      v51[46] = LOWORD(_S0);
      return;
    }

    if (v22 > 498)
    {
      if (v22 == 499 || v22 == 516)
      {
        goto LABEL_14;
      }

      return;
    }

    if ((v22 - 495) < 2)
    {
      float_key = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
      if (float_key == 0.0)
      {
        return;
      }

      goto LABEL_14;
    }

    if (v22 != 497)
    {
      return;
    }

    memset(v97, 0, 60);
    *(&v97[3] + 12) = xmmword_183E20E70;
    v41 = CA::Render::KeyValueArray::get_int_key(*(a4 + 40), 398, 0) == 0;
    v42 = *a1;
    v43 = *a2;
    v44 = v97;
LABEL_134:
    v93 = a4;
    v94 = a7;
    goto LABEL_135;
  }

  if (v22 > 110)
  {
    if (v22 > 119)
    {
      if (v22 > 176)
      {
        if (v22 == 177 || v22 == 204)
        {
          goto LABEL_14;
        }

        return;
      }

      if (v22 != 120)
      {
        if (v22 != 125)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_68;
    }

    if (v22 > 113)
    {
      if (v22 == 114)
      {
        v67 = *(a4 + 40);
        if (CA::Render::KeyValueArray::get_float_key(v67, 325, 1.0) == 0.0)
        {
          return;
        }

        v103 = 0uLL;
        CA::OGL::get_filter_color_float(v67, &v103, v68, v69);
        if ((v70 & 1) == 0)
        {
          __asm { FMOV            V0.4S, #1.0 }

          v103 = _Q0;
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
        v72 = *(a4 + 40);
        v73 = CA::Render::KeyValueArray::get_float_key(v72, 332, 0.0);
        v74 = CA::Render::KeyValueArray::get_float_key(v72, 325, 1.0);
        CA::ColorMatrix::set_color_monochrome(&v98, v73, v74, &v103, v75, v76, v77, v78, v79);
        v42 = *a1;
        v43 = *a2;
        v44 = &v98;
        goto LABEL_132;
      }

      if (v22 != 117)
      {
        return;
      }

      v37 = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
      *&v37 = v37;
      if (*&v37 == 1.0)
      {
        return;
      }

      *&v37 = fmaxf(*&v37, 0.0);
      *(&v97[4] + 1) = 1065353216;
      *&v97[2] = 0;
      memset(&v97[3] + 4, 0, 20);
      *v97 = (*&v37 * 0.7873) + 0.2126;
      *(v97 + 4) = vmls_lane_f32(0x3D93DD983F371759, 0x3D93DD983F371759, *&v37, 0);
      v38 = vmul_n_f32(0x3E91D14E3E59B3D0, *&v37);
      v39 = vsub_f32(1046066128, v38);
      v40 = vzip1_s32(v39, *(v97 + 4));
      v39.i32[1] = vadd_f32(v38, vdup_n_s32(0x3F371759u)).i32[1];
      *(&v97[1] + 4) = v39;
      HIDWORD(v97[1]) = DWORD2(v97[0]);
      *(&v97[2] + 1) = v40;
      *&v97[3] = (*&v37 * 0.9278) + 0.0722;
LABEL_131:
      v42 = *a1;
      v43 = *a2;
      v44 = v97;
LABEL_132:
      v93 = a4;
      v94 = a7;
      v41 = 1;
LABEL_135:
      v21 = CA::OGL::add_color_matrix(v42, v93, v43, v44, v94, v41);
      goto LABEL_17;
    }

    if (v22 == 111)
    {
      v63 = *(*a2 + 75);
      if (v63 && (v64 = (*(*v63 + 16))(v63)) != 0 && (*(*v64 + 880))(v64))
      {
        if ((*(*a2 + 692) & 2) == 0 || (v65 = *(a2[1] + 172), (v65 & 0x40000000) != 0))
        {
          LODWORD(v66) = 1;
        }

        else
        {
          v66 = HIDWORD(v65) & 1;
        }
      }

      else
      {
        LODWORD(v66) = 0;
      }

      if (CA::Render::KeyValueArray::get_int_key(*(a4 + 40), 410, 0) != v66)
      {
        return;
      }

      goto LABEL_130;
    }

    if (v22 != 113)
    {
      return;
    }

    v24 = *(a4 + 40);
    CA::OGL::get_filter_color_matrix(v24, v97);
    int_key = CA::Render::KeyValueArray::get_int_key(v24, 398, 0);
    v26 = int_key;
    v27 = *a1;
    if (!*a1 && !int_key && (a6 & 1) == 0 && CA::ColorMatrix::is_diagonal(v97))
    {
      *v28.f32 = vmul_n_f32(__PAIR64__(DWORD2(v97[1]), v97[0]), *(&v97[4] + 2));
      v28.f32[2] = *&v97[3] * *(&v97[4] + 2);
      v28.i32[3] = DWORD2(v97[4]);
      v29 = vcvt_f16_f32(v28);
      goto LABEL_126;
    }

    v41 = v26 == 0;
    v43 = *a2;
    v44 = v97;
    v42 = v27;
    goto LABEL_134;
  }

  if (v22 > 103)
  {
    if (v22 <= 108)
    {
      if (v22 == 104)
      {
        v31 = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
        if (v31 == 0.0)
        {
          return;
        }

        LODWORD(v97[0]) = 1065353216;
        *(&v97[4] + 1) = 1065353216;
        *(v97 + 4) = 0uLL;
        *(&v97[1] + 4) = 0x3F80000000000000;
        *(&v97[2] + 12) = 0x3F80000000000000;
        *(&v97[1] + 12) = 0uLL;
        memset(&v97[3] + 4, 0, 20);
      }

      else
      {
        if (v22 != 106)
        {
          return;
        }

        v30 = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
        if (v30 == 1.0)
        {
          return;
        }

        *(&v97[4] + 1) = 1065353216;
        memset(v97 + 4, 0, 20);
        memset(&v97[1] + 12, 0, 20);
        memset(&v97[3] + 4, 0, 20);
        *&v97[3] = v30;
        *(&v97[1] + 2) = v30;
        *v97 = v30;
        v31 = 0.5 - (v30 * 0.5);
      }

      *(&v97[3] + 2) = v31;
      *(&v97[2] + 1) = v31;
      *&v97[1] = v31;
      goto LABEL_131;
    }

    if (v22 == 109)
    {
      v80 = *(a4 + 40);
      v81 = CA::Render::KeyValueArray::get_float_key(v80, 326, 0.0);
      if (v81 == 0.0)
      {
        return;
      }

      if (CA::Render::KeyValueArray::get_int_key(v80, 384, 0))
      {
        goto LABEL_14;
      }

      CA::ColorMatrix::set_hue_rotate(v97, v81);
      goto LABEL_131;
    }

LABEL_130:
    *(&v97[4] + 1) = 1065353216;
    v97[0] = 0xBF800000uLL;
    *(&v97[1] + 4) = 0xBF80000000000000;
    *(&v97[2] + 12) = 0xBF80000000000000;
    *(&v97[3] + 4) = 0x3F80000000000000uLL;
    DWORD1(v97[4]) = 0;
    *(&v97[2] + 4) = 1065353216;
    LODWORD(v97[1]) = 1065353216;
    goto LABEL_131;
  }

  if (v22 <= 66)
  {
    if (v22 != 28 && v22 != 30)
    {
      return;
    }

LABEL_14:
    v18 = *a1;
LABEL_15:
    v19 = a4;
    v20 = 0;
LABEL_16:
    v21 = CA::OGL::add_primitive_filter(v18, v19, v20);
LABEL_17:
    *a1 = v21;
    return;
  }

  if (v22 == 67)
  {
    if (fabs(CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0) + -0.5) <= 0.001)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v22 != 102)
  {
    return;
  }

LABEL_68:
  v98 = 0uLL;
  float_color_key = CA::Render::KeyValueArray::get_float_color_key(*(a4 + 40), 0x168, &v98);
  v33 = 1.0;
  v34 = 1.0;
  v35 = 1.0;
  if (!float_color_key || (v34 = v98.f32[1], v35 = v98.f32[0], v33 = v98.f32[2], v98.f32[0] != 0.0) || v98.f32[1] != 0.0 || v98.f32[2] != 0.0)
  {
    LODWORD(v97[0]) = 1065353216;
    *(&v97[4] + 1) = 1065353216;
    *(v97 + 4) = 0uLL;
    *(&v97[1] + 4) = 0x3F80000000000000;
    *(&v97[2] + 12) = 0x3F80000000000000;
    *(&v97[1] + 12) = 0uLL;
    memset(&v97[3] + 4, 0, 20);
    if (*(a4 + 24) == 120)
    {
      v36 = -1;
    }

    else
    {
      v36 = 1;
    }

    *&v97[1] = v35 * v36;
    *(&v97[2] + 1) = v34 * v36;
    *(&v97[3] + 2) = v33 * v36;
    goto LABEL_131;
  }
}

void *CA::OGL::add_primitive_filter(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = v6;
        v6 = *(v6 + 8);
        *(v8 + 8) = v7;
        v7 = v8;
      }

      while (v6);
      *(a1 + 8) = v8;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0x10600405D376E66uLL);
  result[2] = a2;
  result[5] = *(a2 + 16);
  *(result + 57) = a3;
  *result = a1;
  return result;
}

BOOL CA::OGL::can_filter_in_place(void *a1)
{
  if (a1[1])
  {
    return 0;
  }

  v2 = a1[6];
  v3 = a1[2];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  result = v4;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = *(v3 + 24);
    if (v6 == 741)
    {
      return CA::Render::KeyValueArray::get_int_key(*(v3 + 40), 331, 0) == 0;
    }

    else
    {
      return (*(v3 + 12) & 0x40100) != 0x100 || CAAtomIndexInArray(25, CA::Render::Filter::is_one_to_one(void)const::atoms, v6) != -1;
    }
  }

  return result;
}

uint64_t CA::OGL::init_gstate(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0x3C003C003C003C00;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v2 = *(result + 80) | 1;
  *(result + 80) = *(result + 80) & 0xFD00 | 1;
  *(result + 72) = 0;
  *result = 0;
  if (a2)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 64) = *(a2 + 64);
    v3 = *(a2 + 80) & 0x100 | v2 & 0xFC01;
    *(result + 80) = v3;
    v4 = v3 & 0xFBFF | *(a2 + 80) & 0x400;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 64) = 1065353216;
    v4 = v2 & 0xF801 | 0x400;
  }

  *(result + 80) = v4;
  return result;
}

_DWORD *CA::OGL::ImagingNode::prepare(CA::OGL::ImagingNode *this)
{
  v2 = 0;
  v3 = this + 24;
  v4 = 1;
  do
  {
    v5 = v4;
    result = *&v3[8 * v2];
    if (result)
    {
      if ((*(this + 238) & 0x80) != 0)
      {
        result[59] |= 0x800000u;
        result = *&v3[8 * v2];
      }

      result = (*(*result + 96))(result);
      v7 = *&v3[8 * v2];
      v8 = *(v7 + 236);
      if ((v8 & 0x600000) != 0)
      {
        *(this + 59) |= 0x200000u;
        v8 = *(v7 + 236);
      }

      if ((v8 & 0x1000000) != 0)
      {
        *(this + 59) |= 0x1000000u;
      }
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint64_t CA::OGL::filter_node(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 72) = *v12;
  }

  else
  {
    v12 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
  }

  CA::OGL::ImagingNode::ImagingNode(v12, a1, a2, a6, 0);
  *v12 = &unk_1EF1FD850;
  *(v12 + 240) = *(v12 + 240) & 0xFE | a5;
  *(v12 + 248) = a3;
  CA::OGL::init_gstate(v12 + 56, a4);
  *(v12 + 236) = *(v12 + 236) & 0xFFDE0000 | 0x200040;
  return v12;
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(*(v2 + 16) + 256);
  if (v3)
  {
    v5 = *(v3 + 72);
    v4 = *(v3 + 76);
    if (v5 < v4)
    {
      v4 = v5;
    }

    if (v4 >= 1)
    {
      v6 = *(a2 + 12);
      if ((v6 & 0x100) != 0)
      {
        *(v2 + 32) |= 0x4000uLL;
        v6 = *(a2 + 12);
      }

      if ((v6 & 0x500) != 0)
      {
        *(v2 + 40) |= 8u;
      }
    }
  }

  if ((*(a2 + 13) & 0x10) != 0)
  {
    *(v2 + 32) |= 0x8000uLL;
  }

  return result;
}

{
  if (*(a2 + 16) == 3)
  {
    *(*(result + 16) + 32) |= 0x4000uLL;
  }

  return result;
}

{
  if (*(a2 + 28) > 0.0)
  {
    *(*(result + 16) + 32) = *(*(result + 16) + 32) & 0xFFFFFFFFFFFFBFDFLL | 0x4000;
  }

  return result;
}

uint64_t CA::OGL::FilterNode::needs_surface(CA::OGL::FilterNode *this)
{
  v2 = *(this + 31);
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 68);
  if (v5 & 0xF0) == 0 && ((0xC533u >> (v5 & 0xF)))
  {
    return 1;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = *(v7 + 48);
    if (v8 && (*(*v8 + 72))(*(v7 + 48)))
    {
      LODWORD(result) = (*(*v8 + 88))(v8, v7, *(v4 + 24), *v3, this + 56);
    }

    else
    {
      v9 = *(v7 + 24);
      LODWORD(result) = 1;
      if (v9 > 66)
      {
        if (v9 != 304)
        {
          if (v9 == 67)
          {
            LODWORD(result) = *(this + 11) == 0x3C003C003C003C00;
          }

          return result ^ 1;
        }
      }

      else if (v9 != 28 && v9 != 30)
      {
        return result ^ 1;
      }

      v11 = *(this + 136);
      LODWORD(result) = v11 != 12 && (v11 - 1) < 0x19;
    }

    return result ^ 1;
  }

  result = 1;
  if (*(v2 + 48))
  {
    return result ^ 1;
  }

  return result;
}

uint64_t CA::OGL::FilterNode::prepare(CA::OGL::FilterNode *this)
{
  result = CA::OGL::ImagingNode::prepare(this);
  v3 = *(*(this + 31) + 16);
  if (v3 && *(v3 + 24) == 741)
  {
    result = CA::Render::KeyValueArray::get_int_key(*(v3 + 40), 331, 0);
    if (result)
    {
      *(this + 59) |= 0x1000000u;
    }
  }

  return result;
}

void CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1, CA::Render::SDFLayer *this)
{
  v3 = *(a1 + 16);
  v4 = *(this + 20);
  if (v4 && *(v3 + 192))
  {
    if (*(v4 + 16))
    {
      v4 = *(v4 + 16);
    }

    *(v4 + 380) = 1;
  }

  *(v3 + 32) |= 0x4000000000uLL;
  CA::Render::SDFLayer::sdf_padding(this);
  *(v3 + 104) = v5;
  *(v3 + 108) = v6;
  *(v3 + 192) = v3;
  if (*(this + 136) == 1)
  {
    *(v3 + 32) |= 0x8000uLL;
  }
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t result)
{
  *(*(result + 16) + 32) |= 0x8000002000uLL;
  return result;
}

{
  *(*(result + 16) + 32) |= 0x200000000000uLL;
  return result;
}

{
  v1 = *(result + 16);
  *(v1 + 32) |= 0x4000uLL;
  *(*(v1 + 176) + 236) |= 0x1000000u;
  *(*(*(result + 16) + 176) + 236) |= 0x200000u;
  return result;
}

{
  *(*(result + 16) + 32) |= 0x10000000uLL;
  return result;
}

uint64_t CA::OGL::GaussianBlurFilter::get_bounds(CA::OGL::GaussianBlurFilter *this, CA::Render::KeyValueArray **a2, const CA::Render::Layer *a3, Rect *a4)
{
  if (CA::Render::KeyValueArray::get_rect_key(a2[5], a4))
  {
    return 1;
  }

  v7 = a2[5];
  if (!CA::Render::KeyValueArray::get_int_key(v7, 392, 0))
  {
    result = CA::Render::KeyValueArray::get_int_key(v7, 385, 0);
    if (!result)
    {
      return result;
    }
  }

  v9 = *(a3 + 17);
  if (!v9 || (v10 = *v9) == 0 || v10[12] != 3)
  {
    *&a4->top = *(a3 + 72);
    *&a4[2].top = *(a3 + 88);
    return 1;
  }

  v11 = *(*v10 + 184);

  return v11();
}

uint64_t CA::Render::KeyValueArray::get_rect_key(uint64_t this, Rect *a2)
{
  if (this)
  {
    v2 = *(this + 16);
    if (!v2)
    {
      return 0;
    }

    v3 = 0;
    while (1)
    {
      v4 = *(this + 24 + 8 * v3);
      if (*(v4 + 16) == 357)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }

    if ((v3 & 0x80000000) == 0 && (v5 = *(v4 + 24)) != 0 && *(v5 + 12) == 62 && *(v5 + 16) >= 4u)
    {
      v6 = *(v5 + 24);
      v7 = vsubq_f64(*(v5 + 40), v6);
      *&a2->top = v6;
      *&a2[2].top = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t CA::OGL::metal_pixel_format_Bpp(CA::OGL *this, MTLPixelFormat a2)
{
  if (this > 114)
  {
    if (this - 550 < 2)
    {
      return 5;
    }

    if (this - 552 >= 2 && this != 115)
    {
      return 4;
    }

    return 8;
  }

  if (this <= 0x2B)
  {
    if (((1 << this) & 0xA00C0000000) != 0)
    {
      return 2;
    }

    if (((1 << this) & 0xC02) != 0)
    {
      return 1;
    }
  }

  if (this != 105)
  {
    if (this != 110)
    {
      return 4;
    }

    return 8;
  }

  return 16;
}

double CA::OGL::Context::bind_supercircle(CA::OGL::Context *this, unsigned int a2, int a3, BOOL a4, BOOL a5, double *a6, int a7, float *a8)
{
  v8 = *(this + 2);
  *(v8 + 16 * a2 + 96) = xmmword_183E21110;
  *(v8 + a2 + 17) = byte_183E21C3C[a7];
  if (a8)
  {
    *&v9 = *a8;
  }

  else
  {
    *&v9 = 0;
  }

  *(&v9 + 1) = v9;
  *(*(this + 2) + 48 * a2 + 432) = v9;
  __asm { FMOV            V0.2S, #-1.0 }

  result = -_D0;
  *a6 = result;
  return result;
}

uint64_t CA::OGL::combine_node(uint64_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, CA::OGL::ImagingNode *this, float a7, float a8, float a9, float a10)
{
  v10 = this;
  if (a3 == 6)
  {
    v19 = *(this + 38);
    if (v19 < 0)
    {
      (*(*this + 40))(this, this + 144);
      v19 = *(v10 + 38);
    }

    if (v19 >= *(v10 + 39))
    {
      v19 = *(v10 + 39);
    }

    if (v19 <= 0)
    {
      v21 = *(v10 + 57) - 1;
      --*(v10 + 228);
      if (!v21)
      {
        CA::OGL::ImagingNode::finalize(v10, a1);
      }

      v10 = 0;
      v20 = 3;
    }

    else
    {
      v20 = 6;
    }
  }

  else
  {
    v20 = a3;
  }

  v22 = a1[9];
  if (v22)
  {
    a1[9] = *v22;
  }

  else
  {
    v22 = x_heap_malloc_small_(a1[7], 0x110uLL);
  }

  CA::OGL::ImagingNode::ImagingNode(v22, a1, a2, a5, v10);
  *v22 = &unk_1EF1FDBB0;
  *(v22 + 240) = v20;
  *(v22 + 244) = a7;
  *(v22 + 248) = a8;
  *(v22 + 252) = a9;
  *(v22 + 256) = a10;
  CA::OGL::init_gstate(v22 + 56, a4);
  *(v22 + 236) |= 0x200000u;
  return v22;
}

BOOL CA::OGL::MetalContext::function_supported(CA::OGL::MetalContext *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 16);
  if ((CA::OGL::MetalContext::texture_function_info[4 * v2] & 0x3F) == 0)
  {
    return 1;
  }

  v3 = CA::OGL::tex_image_count[v2];
  if (!v3)
  {
    return 1;
  }

  v4 = (v1 + 17);
  v5 = v3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    result = v7 == 0;
    v10 = v5-- != 0;
  }

  while (!v6 && v10);
  return result;
}

uint64_t CA::OGL::CombineNode::compute_dod(uint64_t this, int32x2_t *a2)
{
  v3 = this;
  v4 = *(this + 240);
  if (v4 > 0xE)
  {
    goto LABEL_22;
  }

  if (((1 << v4) & 0x4B4A) != 0)
  {
LABEL_3:
    v5 = *(this + 24);
    v6 = v5[19].i32[0];
    if (v6 < 0)
    {
      this = (*(*v5 + 40))(v5, v5 + 18);
      v6 = v5[19].i32[0];
    }

    *a2 = v5[18];
    v7 = v5[19].i32[1];
    a2[1].i32[0] = v6;
    a2[1].i32[1] = v7;
    return this;
  }

  if (((1 << v4) & 0x480) != 0)
  {
    v8 = *(this + 24);
    v9 = v8[19].i32[0];
    if (v9 < 0)
    {
      (*(*v8 + 40))(*(this + 24), v8 + 18);
      v9 = v8[19].i32[0];
    }

    *a2 = v8[18];
    v10 = v8[19].i32[1];
    a2[1].i32[0] = v9;
    a2[1].i32[1] = v10;
    v11 = *(v3 + 32);
    if (v11[19].i32[0] < 0)
    {
      (*(*v11 + 40))(v11, v11 + 18);
    }

    v12 = v11[18];
    v13 = v11[19];

    return CA::BoundsImpl::Union(a2, v12, v13);
  }

  if (v4 != 5)
  {
LABEL_22:
    if (v4 != 77)
    {
      return this;
    }

    goto LABEL_3;
  }

  v14 = *(this + 24);
  v15 = v14[19].i32[0];
  if (v15 < 0)
  {
    (*(*v14 + 40))(*(this + 24), v14 + 18);
    v15 = v14[19].i32[0];
  }

  *a2 = v14[18];
  v16 = v14[19].i32[1];
  a2[1].i32[0] = v15;
  a2[1].i32[1] = v16;
  v17 = *(v3 + 32);
  if (v17[19].i32[0] < 0)
  {
    (*(*v17 + 40))(v17, v17 + 18);
  }

  v18 = v17[18];
  v19 = v17[19];

  return CA::BoundsImpl::intersect(a2, v18, v19);
}

uint64_t CA::OGL::CombineNode::propagate_roi(CA::OGL::CombineNode *this, const CA::Bounds *a2)
{
  v4 = 0;
  v5 = (this + 24);
  v6 = 1;
  do
  {
    v7 = v6;
    result = v5[v4];
    if (result)
    {
      result = (*(*result + 56))(result, a2);
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = *v5;
  if (*v5)
  {
    if (*(this + 4))
    {
      if (*(this + 240) != 5)
      {
        *(v9 + 228) |= 0x200uLL;
        v9 = *(this + 4);
        v10 = 512;
LABEL_12:
        *(v9 + 228) |= v10;
        return result;
      }

      *(v9 + 236) |= 0x2000000u;
      *(*(this + 4) + 236) |= 0x2000000u;
      v9 = *(this + 4);
    }

    if ((*(v9 + 238) & 0x20) != 0)
    {
      return result;
    }

    v10 = 0x80000000000;
    goto LABEL_12;
  }

  return result;
}

void CA::OGL::emit_combine(uint64_t a1, unsigned int a2, _DWORD *a3, int8x16_t *a4, CA::Shape *a5, unsigned int *a6)
{
  v72[3] = *MEMORY[0x1E69E9840];
  *(*(a1 + 16) + 16) = a2;
  if (a3)
  {
    CA::OGL::Context::bind_surface(a1, a3, 0, 0, 0, 0.0);
    v11 = a3[12];
    v12 = a3[13];
    v13 = a3[14];
    v14 = a3[15];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v67 = __PAIR64__(v12, v11);
  v68 = v13;
  v69 = v14;
  if (a4)
  {
    CA::OGL::Context::bind_surface(a1, a4, 1u, 0, 0, 0.0);
    v15 = a4[3];
  }

  else
  {
    v15 = 0uLL;
  }

  v64 = v15;
  if ((*(*a1 + 1072))(a1))
  {
    v65 = 0;
    v66 = 0;
    v16 = &v67;
    if (a2 <= 0x36)
    {
      if (((1 << a2) & 0x78000003FC1B5ELL) != 0)
      {
LABEL_10:
        v62 = CA::Shape::intersect(a5, v16);
LABEL_11:
        v17 = 1;
        goto LABEL_12;
      }

      if (((1 << a2) & 0x480) != 0)
      {
        v65 = __PAIR64__(v12, v11);
        v66 = __PAIR64__(v14, v13);
        v53 = vextq_s8(v64, v64, 8uLL).u64[0];
        v54 = vclez_s32(__PAIR64__(v14, v13));
        v55 = vpmax_u32(v54, v54).u32[0];
        v56 = vclez_s32(v53);
        v57 = vpmax_u32(v56, v56).u32[0];
        if ((v55 & 0x80000000) != 0)
        {
          if ((v57 & 0x80000000) != 0)
          {
            v62 = 1;
            goto LABEL_11;
          }

          v65 = v64.i64[0];
          v66.i32[0] = v64.i32[2];
          v60 = v64.i32[3];
        }

        else
        {
          if ((v57 & 0x80000000) != 0)
          {
LABEL_79:
            v16 = &v65;
            goto LABEL_10;
          }

          v58 = vmin_s32(v65, *v64.i8);
          v59 = vsub_s32(vmax_s32(vadd_s32(v65, __PAIR64__(v14, v13)), vadd_s32(*v64.i8, v53)), v58);
          v65 = v58;
          v66.i32[0] = v59.i32[0];
          v60 = v59.i32[1];
        }

        v66.i32[1] = v60;
        goto LABEL_79;
      }

      if (a2 == 5)
      {
        v65 = __PAIR64__(v12, v11);
        v66 = __PAIR64__(v14, v13);
        v16 = &v65;
        if ((CA::BoundsImpl::intersect(&v65, *v64.i8, *&vextq_s8(v64, v64, 8uLL)) & 1) == 0)
        {
          v19 = *(*(a1 + 16) + 8);
          v20 = v19 >> 16;
          v21 = HIDWORD(v19);
          v22 = HIWORD(v19);
          v61 = 1;
          v62 = 1;
          goto LABEL_24;
        }

        goto LABEL_10;
      }
    }

    v17 = 0;
    if (a2 - 75 > 0x11)
    {
      v62 = a5;
    }

    else
    {
      v62 = a5;
      if (((1 << (a2 - 75)) & 0x30C01) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v18 = *(a1 + 16);
    v19 = *(v18 + 8);
    v20 = v19 >> 16;
    v21 = HIDWORD(v19);
    v22 = HIWORD(v19);
    v61 = v17;
    if (a2 - 8 >= 2)
    {
      if (a2 == 7)
      {
        _S0 = *a6;
        __asm { FCVT            H0, S0 }

        LOWORD(v19) = _S0;
        LOWORD(v20) = _S0;
        LOWORD(v21) = _S0;
        v22 = _S0;
      }
    }

    else
    {
      *(v18 + 24) = *a6;
    }

LABEL_24:
    v29 = CA::OGL::Context::need_transparent_source(a1);
    v30 = *(a1 + 64);
    if (v30 == 1)
    {
      *(a1 + 64) = 0;
    }

    *(a1 + 144) = 0;
    v31 = a1 + 1386;
    *(a1 + 112) = a1 + 1386;
    *(a1 + 120) = xmmword_183E20E50;
    v72[1] = 0;
    v72[2] = 0;
    v72[0] = v62;
    v32 = (v21 << 32) | (v22 << 48) | (v20 << 16) | v19;
    v33 = v67;
    while (CA::ShapeIterator::iterate(v72, &v65))
    {
      if (*(a1 + 108))
      {
        v34 = 6;
      }

      else
      {
        v34 = 4;
      }

      if ((*(a1 + 144) + 4) > *(a1 + 152) || (v35 = *(a1 + 128)) != 0 && *(a1 + 120) + v34 > v35)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = v31;
        *(a1 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(a1, v65, SHIDWORD(v65), (v66.i32[0] + v65), (v66.i32[1] + HIDWORD(v65)));
      v36 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v36 - 160) = v32;
      *(v36 - 112) = v32;
      *(v36 - 64) = v32;
      *(v36 - 16) = v32;
      if (a3)
      {
        v37 = *(a1 + 136) + 48 * *(a1 + 144);
        v38 = vsub_s32(v65, v33);
        v39 = vcvt_f32_s32(v38);
        v40 = vcvt_f32_s32(vadd_s32(v66, v38));
        *(v37 - 176) = v39;
        *(v37 - 128) = __PAIR64__(v39.u32[1], v40.u32[0]);
        *(v37 - 80) = v40;
        v39.i32[1] = v40.i32[1];
        *(v37 - 32) = v39;
      }

      if (a4)
      {
        v41 = *(a1 + 136) + 48 * *(a1 + 144);
        v42 = vsub_s32(v65, *v64.i8);
        v43 = vcvt_f32_s32(v42);
        v44 = vcvt_f32_s32(vadd_s32(v66, v42));
        *(v41 - 168) = v43;
        *(v41 - 120) = __PAIR64__(v43.u32[1], v44.u32[0]);
        *(v41 - 72) = v44;
        v43.i32[1] = v44.i32[1];
        *(v41 - 24) = v43;
      }
    }

    CA::OGL::Context::array_flush(a1);
    if (!v29)
    {
      goto LABEL_56;
    }

    v47 = CA::Shape::subtract(a5, v62, v45, v46);
    v48 = v47;
    if (v47)
    {
      if (v47 == 1)
      {
LABEL_55:
        CA::Shape::unref(v48);
LABEL_56:
        if (v30)
        {
          *(a1 + 64) = 1;
        }

        if (v61)
        {
          CA::Shape::unref(v62);
        }

        if (a4)
        {
          CA::OGL::Context::unbind_surface(a1, a4, 1);
        }

        if (a3)
        {
          CA::OGL::Context::unbind_surface(a1, a3, 0);
        }

        *(*(a1 + 16) + 16) = 0;
        return;
      }
    }

    else if (*(v47 + 4) == 6)
    {
      goto LABEL_55;
    }

    v49 = *(a1 + 16);
    memcpy(buf, v49, sizeof(buf));
    v70[2] = 0;
    *buf = v49;
    *(a1 + 16) = buf;
    buf[16] = 0;
    *(a1 + 144) = 0;
    *(a1 + 112) = v31;
    *(a1 + 120) = xmmword_183E20E50;
    v70[0] = v48;
    v70[1] = 0;
    while (CA::ShapeIterator::iterate(v70, &v65))
    {
      if (*(a1 + 108))
      {
        v50 = 6;
      }

      else
      {
        v50 = 4;
      }

      if ((*(a1 + 144) + 4) > *(a1 + 152) || (v51 = *(a1 + 128)) != 0 && *(a1 + 120) + v50 > v51)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = v31;
        *(a1 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(a1, v65, SHIDWORD(v65), (v66.i32[0] + v65), (v66.i32[1] + HIDWORD(v65)));
      v52 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v52 - 160) = 0;
      *(v52 - 112) = 0;
      *(v52 - 64) = 0;
      *(v52 - 16) = 0;
    }

    CA::OGL::Context::array_flush(a1);
    *(a1 + 16) = *buf;
    goto LABEL_55;
  }

  if (a4)
  {
    CA::OGL::Context::unbind_surface(a1, a4, 1);
  }

  if (a3)
  {
    CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  v23 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "unhandled combiner function: %d\n", buf, 8u);
  }
}

void CA::OGL::CombineNode::apply(uint64_t a1, void *a2, float *a3)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = **(a1 + 8);
  *(*(v5 + 16) + 8) = *(a1 + 88);
  v6 = *(v5 + 16);
  if (*(v6 + 496) >= 2u)
  {
    *(v6 + 497) |= 1u;
  }

  v7 = *a3;
  v8 = a3[1];
  v9 = *(a1 + 240);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a1 + 64);
  if (v7 == 1.0 && v8 == 1.0)
  {
    CA::OGL::emit_combine(v5, v9, v10, v11, v12, (a1 + 244));
  }

  else
  {
    CA::OGL::emit_combine_scaled(v5, v9, v10, v11, v12, (a1 + 244), v7, v8);
  }

  v14 = *(a1 + 236);
  if ((v14 & 0x1E0000) != 0)
  {
    v17 = 0;
    v29[0] = 0;
    v29[1] = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = a2[v17];
      if (v20)
      {
        CA::BoundsImpl::Union(v29, v20[6], v20[7]);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v21 = ((v14 >> 17) & 0xF) - 1;
    if (v21 > 0xB)
    {
      v22 = 0;
    }

    else
    {
      v22 = dword_183E2D698[v21];
    }

    if ((v14 & 0x1E0000) == 0x120000 && *a2 && (*(*a2 + 93) & 8) != 0)
    {
      v22 = 8388736;
    }

    v23 = *(v5 + 16);
    *(v23 + 496) = 3;
    *(v23 + 497) |= 1u;
    v24 = bswap32(v22);
    v16.i32[0] = v24;
    v16.i32[1] = v24 >> 8;
    v16.i32[2] = HIWORD(v24);
    v25.i64[0] = 0xFF000000FFLL;
    v25.i64[1] = 0xFF000000FFLL;
    v26 = vandq_s8(v16, v25);
    v26.i32[3] = vshrq_n_u32(vdupq_n_s32(v24), 0x18uLL).i32[3];
    *(*(v5 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v26), vdupq_n_s32(0x3B808081u)));
    v27 = CA::Shape::intersect(*(a1 + 64), v29);
    v28[0] = 0;
    v28[1] = 0;
    CA::OGL::emit_combine(v5, 0, 0, 0, v27, v28);
    CA::Shape::unref(v27);
    v15 = *(v5 + 16);
    *(v15 + 496) = *(a1 + 136);
  }

  else
  {
    v15 = *(v5 + 16);
  }

  *(v15 + 497) &= ~1u;
}

void CA::OGL::SDFNode::apply(uint64_t a1, int32x2_t **a2, float *a3, int32x4_t a4, int32x4_t a5)
{
  v7 = *a4.i32;
  v215 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8);
  v10 = *v9;
  *(*(*v9 + 2) + 497) |= 1u;
  v11 = *(a1 + 240);
  v12 = *(v11 + 148);
  v13 = *(a1 + 152);
  if (v13 < 0)
  {
    (*(*a1 + 40))(a1, a1 + 144, a4, a5);
    v13 = *(a1 + 152);
  }

  v14 = *(a1 + 156);
  if (v13 <= v14)
  {
    v15 = *(a1 + 156);
  }

  else
  {
    v15 = v13;
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v15;
  v19 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v16 = *(a1 + 144);
  v17.i64[0] = v16;
  v17.i64[1] = SHIDWORD(v16);
  v18 = vbslq_s8(v19, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v17));
  *v19.i64 = v13;
  if (v15 <= 1073741822)
  {
    v20 = v14;
  }

  else
  {
    *v19.i64 = 1.79769313e308;
    v20 = 1.79769313e308;
  }

  v21 = v7;
  *&v19.i64[1] = v20;
  v22 = *v19.i64 >= 1.79769313e308 || v7 == 1.0;
  v23.i64[1] = v18.i64[1];
  *&v24.i64[1] = v20;
  if (v22)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s64(v25);
  *v24.i64 = *v19.i64 * v7;
  v27 = vbslq_s8(v26, v24, v19);
  *v23.i64 = v21 * *v18.i64;
  v28 = vbslq_s8(v26, v23, v18);
  if (v7 != 1.0 && v27.f64[1] < 1.79769313e308)
  {
    v28.f64[1] = vmuld_lane_f64(v21, v28, 1);
    v27.f64[1] = v27.f64[1] * v21;
  }

  v29 = vceqzq_f64(v27);
  if ((vorrq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0 || (v30 = vceqq_f64(v27, v27), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v30), 1), v30).u64[0] & 0x8000000000000000) != 0))
  {
    v203 = 0uLL;
  }

  else
  {
    v31 = vminnmq_f64(vaddq_f64(v28, v27), vdupq_n_s64(0x41C0000000000000uLL));
    v32 = vcvtmq_s64_f64(vmaxnmq_f64(v28, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v203 = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(v31), v32));
  }

  v33 = CA::Shape::intersect(*(*(v10 + 656) + 8), &v203);
  v211 = 0;
  *&v209[16] = 0u;
  v210 = 0u;
  *&v208[16] = 0u;
  *v209 = 0u;
  *v208 = 0u;
  v34 = *(v10 + 656);
  *&v208[8] = *(v34 + 8);
  v35 = *(v34 + 24);
  v36 = *(v34 + 32);
  *&v209[8] = *(v34 + 40);
  v37 = *(v34 + 56);
  *&v208[24] = v35;
  *v209 = v36;
  *&v209[24] = v37;
  LOWORD(v36) = *(v34 + 80);
  LOWORD(v211) = v36;
  v38 = *(v34 + 64);
  LOWORD(v211) = *(v34 + 80) & 0x100 | v36;
  LOWORD(v36) = v211 | *(v34 + 80) & 0x400;
  LODWORD(v210) = v38;
  LOWORD(v211) = v36;
  *(&v210 + 1) = *(v34 + 72);
  *&v208[8] = v33;
  v39 = CA::OGL::Context::set_gstate(v10, v208);
  v42 = 0;
  *v208 = v39;
  v43 = *a2;
  if (!*a2)
  {
    v42 = *(*(a1 + 16) + 200);
  }

  v192 = v42;
  v44 = *(v11 + 136);
  if (v44 > 4)
  {
    if (*(v11 + 136) > 6u)
    {
      if (v44 == 7)
      {
        v106 = *(v11 + 36);
        v48 = *a3;
        v107 = *(v10 + 16);
        v108 = __sincosf_stret(*(v11 + 32));
        v109 = *(v11 + 24);
        *(v107 + 16) = 65;
        *(v10 + 160) = v109;
        *(v10 + 168) = v12;
        *(v10 + 172) = v106;
        *(v10 + 240) = v108.__cosval;
        *(v10 + 244) = v108.__sinval;
        *(v10 + 248) = 0;
        v47 = v192;
        if (v192)
        {
LABEL_79:
          v110 = 1.0;
          v111 = v10;
LABEL_126:
          CA::OGL::emit_sdf_bounds(v111, v47, 0, 1, 4096.0, v110, 0.0, 0.0, 0.0);
          goto LABEL_132;
        }

LABEL_127:
        CA::OGL::bind_filter_surface(v10, v43, 0, v48);
        goto LABEL_128;
      }

      if (v44 != 8)
      {
        goto LABEL_84;
      }

      v61 = *(v11 + 96);
      v62 = *(v11 + 100);
      v63 = *(v11 + 112);
      v64 = *(v11 + 116);
      v65 = *(v11 + 120);
      v66 = 1.0;
      if (*(v11 + 132) == 1)
      {
        v67 = *(*(a1 + 8) + 8);
        v68 = *(*(*(a1 + 16) + 16) + 272) + 1.57079633;
        v69 = v68 + v62;
        v70 = v68 + v64;
        v71 = v67[299];
        v66 = 1.0;
        v56 = v192;
        if (v71 <= 1.0)
        {
          v66 = 0.0;
          if (v71 >= 0.0)
          {
            v66 = v67[299];
          }
        }

        v62 = v69;
        v64 = v70;
        v61 = v67[301];
        v63 = v61;
        v131 = v67[300];
        v65 = v131;
      }

      else
      {
        v131 = *(v11 + 104);
        v56 = v192;
      }

      v159 = *(v11 + 24);
      v160 = *(a1 + 88);
      if (*&v160 != 0x3C003C003C003C00)
      {
        v159 = vmulq_f32(vcvtq_f32_f16(v160), v159);
      }

      v161 = 1.0 / *(v11 + 108) + -2.0;
      v162 = 1.0 / *(v11 + 124) + -2.0;
      v163 = vmulq_n_f32(v159, v66);
      v164 = *(v11 + 40);
      v165 = *(v11 + 60);
      v166 = *(v11 + 76);
      v194 = v12;
      v200 = v161;
      v191 = *(v11 + 48) + (*(v11 + 44) * v61);
      v188 = v163;
      if (*&v160 != 0x3C003C003C003C00)
      {
        v165 = vmulq_f32(vcvtq_f32_f16(v160), v165);
      }

      v187 = vmulq_n_f32(v165, v66);
      v167 = *(v11 + 84) + (*(v11 + 80) * v63);
      v168 = *(v11 + 92) + (*(v11 + 88) * v65);
      v169 = cosf(*(v11 + 56) + (*(v11 + 52) * v131));
      v170 = cosf(v168);
      *&v213 = 0;
      v171 = *(a1 + 16);
      *&v204.f64[0] = vcvt_f16_f32(v188);
      CA::OGL::colormatched_layer_color(&v213, v9, v171, &v204, v164);
      v204.f64[0] = 0.0;
      v172 = *(a1 + 16);
      *&v201.f64[0] = vcvt_f16_f32(v187);
      CA::OGL::colormatched_layer_color(&v204, v9, v172, &v201, v166);
      v173 = __sincosf_stret(v62);
      v189 = vcvtq_f32_f16(*&v213);
      v174 = __sincosf_stret(v64);
      v43 = *a2;
      v158 = vcvtq_f32_f16(*&v204.f64[0]);
      v48 = *a3;
      v175 = *(v11 + 128);
      *(*(v10 + 16) + 16) = 66;
      *(v10 + 160) = v191;
      *(v10 + 164) = v169;
      *(v10 + 168) = v200;
      *(v10 + 172) = v173.__sinval;
      *(v10 + 176) = -v173.__cosval;
      *(v10 + 180) = v167;
      *(v10 + 184) = v170;
      *(v10 + 188) = v162;
      *(v10 + 192) = v174.__sinval;
      *(v10 + 196) = -v174.__cosval;
      *(v10 + 200) = v175;
      *(v10 + 204) = v194;
      *(v10 + 240) = v189;
    }

    else
    {
      if (v44 == 5)
      {
        v74 = *(a1 + 80);
        v73 = *(a1 + 88);
        v76.f64[0] = *v74;
        v75.f64[0] = v74[1];
        v75.f64[1] = v74[4];
        v77 = vcvt_f32_f64(v75);
        v76.f64[1] = v74[5];
        v78 = vcvt_f32_f64(v76);
        v79 = *(v11 + 28);
        v80 = vmul_f32(vrev64_s32(v79), v77);
        v81 = *(v11 + 36);
        if (*&v73 != 0x3C003C003C003C00)
        {
          v81 = vmulq_f32(vcvtq_f32_f16(v73), v81);
        }

        v186 = v81;
        v196 = vmla_f32(v80, v78, v79);
        v82 = *(v11 + 24);
        v83 = *(v11 + 56);
        v84 = *a3;
        CA::OGL::bind_filter_surface(v10, v43, 0, *a3);
        if (v83)
        {
          CA::OGL::bind_filter_surface(v10, v43, 1u, v84);
        }

        v85 = -1.0;
        if ((v83 & 2) != 0)
        {
          v85 = 1.0;
        }

        *(v10 + 160) = -1.0 / v82;
        *(v10 + 164) = 0;
        *(v10 + 168) = v12;
        *(v10 + 172) = v85;
        *(v10 + 240) = v186;
        v86 = *(*(v10 + 656) + 8);
        *&v213 = v10;
        *(&v213 + 1) = v86;
        memset(v214, 0, sizeof(v214));
        *&v214[16] = 256;
        CA::OGL::Context::ClippedArray::start(&v213);
        v204 = 0uLL;
        while (CA::OGL::Context::ClippedArray::next_rect(&v213, &v204))
        {
          if (*(v10 + 108))
          {
            v87 = 6;
          }

          else
          {
            v87 = 4;
          }

          if ((*(v10 + 144) + 4) > *(v10 + 152) || (v88 = *(v10 + 128)) != 0 && *(v10 + 120) + v87 > v88)
          {
            *(v10 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v10);
            *(v10 + 144) = 0;
            *(v10 + 112) = v10 + 1386;
            *(v10 + 120) = xmmword_183E20E50;
          }

          v89 = v43[6].i32[0];
          v90 = v43[6].i32[1];
          v91 = (v196.f32[0] + v89) * v84;
          v92 = (v196.f32[1] + v90) * v84;
          v93 = (v196.f32[0] + (v43[7].i32[0] + v89)) * v84;
          v94 = (v196.f32[1] + (v43[7].i32[1] + v90)) * v84;
          v95 = *(v10 + 16);
          if (v83)
          {
            *(v95 + 16) = 63;
            CA::OGL::Context::array_rect(v10, v91, v92, v93, v94);
            v96 = *(v10 + 136) + 48 * *(v10 + 144);
            *(v96 - 176) = 0;
            *(v96 - 124) = 0;
            v97 = vcvt_f32_s32(v43[7]);
            *(v96 - 128) = v97.i32[0];
            *(v96 - 80) = v97;
            *(v96 - 32) = 0;
            *(v96 - 28) = v97.i32[1];
            v97.i32[0] = vadd_f32(v196, v97).u32[0];
            *(v96 - 168) = v196;
            *(v96 - 120) = v97.i32[0];
            *(v96 - 116) = v196.i32[1];
            *(v96 - 72) = v97.i32[0];
            *(v96 - 68) = v196.f32[1] + v97.f32[1];
            *(v96 - 24) = v196.i32[0];
            *(v96 - 20) = v196.f32[1] + v97.f32[1];
          }

          else
          {
            *(v95 + 16) = 62;
            CA::OGL::Context::array_rect(v10, v91, v92, v93, v94);
            v98 = *(v10 + 136) + 48 * *(v10 + 144);
            *(v98 - 176) = 0;
            *(v98 - 124) = 0;
            v99 = vcvt_f32_s32(v43[7]);
            *(v98 - 128) = v99.i32[0];
            *(v98 - 80) = v99;
            *(v98 - 32) = 0;
            *(v98 - 28) = v99.i32[1];
          }
        }

        if (v83)
        {
          if (*(v10 + 672) != v43)
          {
            CA::OGL::Context::unbind_surface(v10, v43, 1);
          }

          *(*(v10 + 16) + 16) = 0;
          *(*(v10 + 16) + 20) = 0;
        }

        goto LABEL_129;
      }

      if (v44 != 6)
      {
        goto LABEL_84;
      }

      v49 = *(v11 + 40);
      if (v49 == 0.0 || *(v11 + 36) == 0.0)
      {
        goto LABEL_132;
      }

      v50 = *(v11 + 44);
      v51 = *(a1 + 88);
      if (*&v51 != 0x3C003C003C003C00)
      {
        v50 = vmulq_f32(vcvtq_f32_f16(v51), v50);
      }

      v52 = *(v11 + 32);
      v53 = *(v11 + 24);
      if (*(v11 + 64))
      {
        v54 = *(*(a1 + 8) + 8);
        v53 = *(v54 + 1204);
        v55 = *(v54 + 1196);
        v56 = v192;
        v57 = 1.0;
        if (v55 <= 1.0)
        {
          v57 = 0.0;
          if (v55 >= 0.0)
          {
            v57 = *(v54 + 1196);
          }
        }

        v52 = v52 + 1.57079633 + *(*(*(a1 + 16) + 16) + 272);
        v58 = *(v54 + 1200);
        v195 = vmulq_n_f32(v50, v57);
      }

      else
      {
        v195 = v50;
        v58 = *(v11 + 36);
        v56 = v192;
      }

      v148 = 1.0 / v49 + -2.0;
      v149 = *(v11 + 60);
      v150 = *(v11 + 28);
      v151 = cosf(v58);
      if (v151 == -1.0 && v49 == 1.0)
      {
        v153 = v151 + -0.01;
        v154 = v153;
      }

      else
      {
        v154 = v151;
      }

      *&v213 = 0;
      if (byte_1ED4E9864 == 1)
      {
        v156 = vcvt_f16_f32(v195);
      }

      else
      {
        v155 = *(a1 + 16);
        *&v204.f64[0] = vcvt_f16_f32(v195);
        CA::OGL::colormatched_layer_color(&v213, v9, v155, &v204, v149);
        v156 = v213;
        v43 = *a2;
      }

      v157 = __sincosf_stret(v52);
      v48 = *a3;
      v158 = vcvtq_f32_f16(v156);
      *(*(v10 + 16) + 16) = 64;
      *(v10 + 160) = v53;
      *(v10 + 164) = v154;
      *(v10 + 168) = v157.__sinval;
      *(v10 + 172) = -v157.__cosval;
      *(v10 + 240) = v148;
      *(v10 + 244) = v150;
      *(v10 + 248) = v12;
      *(v10 + 252) = 0;
    }

    *(v10 + 320) = v158;
    if (v56)
    {
      v110 = 1.0;
      v111 = v10;
      v47 = v56;
      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (*(v11 + 136) <= 2u)
  {
    if (v44 == 1)
    {
      v72 = *(a1 + 64);
      v213 = 0uLL;
      CA::OGL::emit_combine(v10, 1u, v43, 0, v72, &v213);
      goto LABEL_132;
    }

    if (v44 == 2)
    {
      v45 = *(v11 + 24);
      v46 = *(a1 + 88);
      if (*&v46 != 0x3C003C003C003C00)
      {
        v45 = vmulq_f32(vcvtq_f32_f16(v46), v45);
      }

      v47 = v192;
      v48 = *a3;
      *(*(v10 + 16) + 16) = 59;
      *(v10 + 160) = v12;
      *(v10 + 168) = 0;
      *(v10 + 164) = 0;
      *(v10 + 240) = v45;
      if (!v192)
      {
        goto LABEL_127;
      }

      goto LABEL_79;
    }

LABEL_84:
    v48 = *a3;
    CA::OGL::bind_filter_surface(v10, v43, 0, *a3);
    *(*(v10 + 16) + 16) = 58;
    v112 = *(v10 + 16);
    *(v112 + 24) = 1036831949;
    *(v112 + 28) = v12;
    *(v112 + 32) = 0;
LABEL_128:
    CA::OGL::emit_filter_quads(v10, v43, v48);
LABEL_129:
    if (*(v10 + 672) != v43)
    {
      CA::OGL::Context::unbind_surface(v10, v43, 0);
    }

    *(*(v10 + 16) + 16) = 0;
    *(*(v10 + 16) + 19) = 0;
    goto LABEL_132;
  }

  if (v44 == 3)
  {
    v100 = *(v11 + 24);
    if (v100)
    {
      v101 = *(v100 + 16);
      color_map = *(v11 + 32);
      if (color_map || (color_map = CA::Render::Gradient::create_color_map(*(v11 + 24), *(v10 + 560), 1), (*(v11 + 32) = color_map) != 0))
      {
        v103 = *(v100 + 40);
        if (v103)
        {
          v104 = *v103;
          v105 = v103[v101 - 1];
        }

        else
        {
          v105 = 1.0;
          v104 = 0.0;
        }

        v199 = vcvtq_f32_f16(*(a1 + 88));
        v144 = *a2;
        v145 = *a3;
        *(*(v10 + 16) + 16) = 60;
        v146 = (*(*color_map + 80))(color_map);
        v213 = 0uLL;
        v147 = CA::OGL::Context::bind_image(v10, v192 == 0, v146, 528647, 1u, 1, 0, 0, 0.0, &v213, 0);
        *(v10 + 160) = v12;
        *(v10 + 164) = v104;
        *(v10 + 168) = v105;
        *(v10 + 172) = -1.0 / (v105 - v104);
        *(v10 + 240) = v199;
        if (v192)
        {
          CA::OGL::emit_sdf_bounds(v10, v192, 0, 1, 4096.0, 1.0, 0.0, 0.0, 0.0);
        }

        else
        {
          CA::OGL::bind_filter_surface(v10, v144, 0, v145);
          CA::OGL::emit_filter_quads(v10, v144, v145);
          if (*(v10 + 672) != v144)
          {
            CA::OGL::Context::unbind_surface(v10, v144, 0);
          }

          *(*(v10 + 16) + 16) = 0;
          *(*(v10 + 16) + 19) = 0;
        }

        (*(*v10 + 560))(v10, v147, 1);
      }
    }
  }

  else
  {
    if (v44 != 4)
    {
      goto LABEL_84;
    }

    v59 = *(v11 + 44);
    v60 = *(a1 + 88);
    v193 = v12;
    if (*&v60 == 0x3C003C003C003C00)
    {
      v190 = *(v11 + 24);
    }

    else
    {
      v113 = vcvtq_f32_f16(v60);
      v190 = vmulq_f32(v113, *(v11 + 24));
      v59 = vmulq_f32(v113, v59);
    }

    v114 = v33;
    v115 = *(v10 + 656);
    v116 = *(a1 + 16);
    v117 = *(v116 + 24);
    v118 = *(v117 + 88);
    v197 = v59;
    v201 = *(v117 + 72);
    v202 = v118;
    CA::Rect::apply_transform(&v201, *(v115 + 24), v40);
    v119 = *a3;
    v120 = *(v11 + 64);
    v121 = *(v11 + 68);
    v123 = *(v11 + 72);
    v122 = *(v11 + 76);
    v125 = *(v11 + 80);
    v124 = *(v11 + 84);
    v126 = *(v11 + 88);
    v127 = *(v116 + 32);
    v206 = v197;
    v207 = v190;
    v198 = v119;
    CA::OGL::bind_filter_surface(v10, v43, 0, v119);
    *(*(v10 + 16) + 16) = 61;
    *(*(v10 + 16) + 96) = xmmword_183E21110;
    if ((v127 & 0x40000000000) != 0)
    {
      v128 = 1.0 - v125;
    }

    else
    {
      v128 = v122;
    }

    if ((v127 & 0x40000000000) != 0)
    {
      v120 = -v120;
      v125 = 1.0 - v122;
      v129 = &v206;
      v130 = &v207;
    }

    else
    {
      v129 = &v207;
      v130 = &v206;
    }

    v133 = __sincosf_stret(v120);
    *(v10 + 160) = v193;
    *(v10 + 164) = -1.0 / v121;
    *(v10 + 168) = v128;
    *(v10 + 172) = v125;
    *(v10 + 176) = v123;
    *(v10 + 180) = v124;
    *(v10 + 184) = 0;
    *(v10 + 188) = v126;
    *(v10 + 192) = v133;
    *(v10 + 200) = 0;
    *(v10 + 240) = *v129;
    v134 = *v130;
    *(v10 + 320) = *v130;
    v135 = v43[7].i32[0];
    v136 = v43[7].i32[1];
    if (v135 <= v136)
    {
      v137 = v43[7].i32[1];
    }

    else
    {
      v137 = v43[7].i32[0];
    }

    v134.i32[0] = 1073741822;
    v132.i32[0] = v137;
    v138 = vdupq_lane_s32(*&vcgtq_s32(v132, v134), 0);
    v139 = v43[6];
    v140.i64[0] = v139.i32[0];
    v140.i64[1] = v139.i32[1];
    v141 = vbslq_s8(v138, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v140));
    v142 = v135;
    v143 = v136;
    if (v137 > 1073741822)
    {
      v142 = 1.79769313e308;
      v143 = 1.79769313e308;
    }

    v204 = v141;
    v205.f64[0] = v142;
    v205.f64[1] = v143;
    *&v213 = &v204;
    *(&v213 + 1) = &CA::identity_transform;
    memset(v214, 0, 32);
    v212[0] = vcvt_f32_f64(vdivq_f64(vmulq_n_f64(vsubq_f64(v141, v201), v198), v202));
    v212[1] = vcvt_f32_f64(vmulq_n_f64(vaddq_f64(vdivq_f64(v205, v202), vcvtq_f64_f32(v212[0])), v198));
    CA::OGL::emit_one_part_rect(v10, &v213, v212, 0, 0);
    if (*(v10 + 672) != v43)
    {
      CA::OGL::Context::unbind_surface(v10, v43, 0);
    }

    *(*(v10 + 16) + 16) = 0;
    *(*(v10 + 16) + 19) = 0;
    v33 = v114;
  }

LABEL_132:
  v176 = (*(a1 + 236) >> 17) & 0xF;
  if (v176 || (BYTE5(xmmword_1ED4E98AC) & 1) != 0 || BYTE8(xmmword_1ED4E98AC) == 1 && v192)
  {
    v213 = 0uLL;
    v177 = *a2;
    if (*a2)
    {
      v213 = *v177[6].i8;
      if (v176 - 1 > 0xB)
      {
        v178 = 0;
      }

      else
      {
        v178 = dword_183E2D698[v176 - 1];
      }

      if (v176 == 9)
      {
        if ((v177[11].i8[5] & 8) != 0)
        {
          v176 = 8388736;
        }

        else
        {
          v176 = v178;
        }
      }

      else
      {
        v176 = v178;
      }
    }

    else if (v192 && (BYTE8(xmmword_1ED4E98AC) & 1) != 0)
    {
      v179 = *(v192 + 176);
      v180 = *(v179 + 152);
      if ((v180 & 0x80000000) != 0)
      {
        (*(*v179 + 40))(*(v192 + 176), v179 + 144);
        v180 = *(v179 + 152);
      }

      *&v213 = *(v179 + 144);
      *(&v213 + 1) = __PAIR64__(*(v179 + 156), v180);
      v176 = -2143256448;
    }

    v181 = *(v10 + 16);
    *(v181 + 496) = 3;
    *(v181 + 497) |= 1u;
    v182 = bswap32(v176);
    v41.i32[0] = v182;
    v41.i32[1] = v182 >> 8;
    v41.i32[2] = HIWORD(v182);
    v183.i64[0] = 0xFF000000FFLL;
    v183.i64[1] = 0xFF000000FFLL;
    v184 = vandq_s8(v41, v183);
    v184.i32[3] = vshrq_n_u32(vdupq_n_s32(v182), 0x18uLL).i32[3];
    *(*(v10 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v184), vdupq_n_s32(0x3B808081u)));
    v185 = CA::Shape::intersect(*(a1 + 64), &v213);
    v204 = 0uLL;
    CA::OGL::emit_combine(v10, 0, 0, 0, v185, &v204);
    *(*(v10 + 16) + 497) &= ~1u;
    CA::Shape::unref(v185);
  }

  CA::OGL::Context::set_gstate(v10, **(v10 + 656));
  *(*(v10 + 16) + 497) &= ~1u;
  if (v33)
  {
    CA::Shape::unref(v33);
  }
}

void *CA::OGL::bind_filter_surface(void *result, uint64_t a2, unsigned int a3, float a4)
{
  v5 = result;
  if (result[84] == a2)
  {
    *(result[2] + a3 + 17) = 42;
  }

  else
  {
    result = CA::OGL::Context::bind_surface(result, a2, a3, a4 != 1.0, a4 != 1.0, 0.0);
    if (a4 > 1.0)
    {
      v8 = v5[2];
      v9 = v8[12];
      v10 = *(a2 + 56);
      v11.i64[0] = v10;
      v11.i64[1] = SHIDWORD(v10);
      __asm { FMOV            V3.2D, #-0.5 }

      v8[2].i8[a3 + 3] = 5;
      v17 = v5[2];
      v17[48] = vmul_f32(v9, 0x3F0000003F000000);
      v17[49] = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v11), _Q3), vcvtq_f64_f32(v9)));
    }
  }

  return result;
}

uint64_t CA::OGL::emit_filter_quads(uint64_t a1, int32x2_t *a2, float a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v6 = *(*(a1 + 656) + 8);
  v13[0] = a1;
  v13[1] = v6;
  v14 = 0u;
  v13[2] = 0;
  WORD4(v14) = 256;
  CA::OGL::Context::ClippedArray::start(v13);
  v12[0] = 0;
  v12[1] = 0;
  while (1)
  {
    result = CA::OGL::Context::ClippedArray::next_rect(v13, v12);
    if (!result)
    {
      break;
    }

    if (*(a1 + 108))
    {
      v8 = 6;
    }

    else
    {
      v8 = 4;
    }

    if ((*(a1 + 144) + 4) > *(a1 + 152) || (v9 = *(a1 + 128)) != 0 && *(a1 + 120) + v8 > v9)
    {
      *(a1 + 1384) |= 0x20u;
      CA::OGL::Context::array_flush(a1);
      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(a1, a2[6].i32[0] * a3, a2[6].i32[1] * a3, (a2[7].i32[0] + a2[6].i32[0]) * a3, (a2[7].i32[1] + a2[6].i32[1]) * a3);
    v10 = *(a1 + 136) + 48 * *(a1 + 144);
    *(v10 - 176) = 0;
    *(v10 - 124) = 0;
    v11 = vcvt_f32_s32(a2[7]);
    *(v10 - 128) = v11.i32[0];
    *(v10 - 80) = v11;
    *(v10 - 32) = 0;
    *(v10 - 28) = v11.i32[1];
  }

  return result;
}

void CA::OGL::MetalContext::draw_axis_aligned_rects(CA::OGL::Context *a1, unsigned int a2, char *a3)
{
  v3 = *(*(a1 + 2) + 16);
  if ((v3 - 108) >= 3 && v3 != 116)
  {
    __assert_rtn("draw_axis_aligned_rects", "ogl-metal.mm", 8919, "get_texture_function () == OGL_TEX_PATH_CLEAR || get_texture_function () == OGL_TEX_PATH_BLIT || get_texture_function () == OGL_TEX_PATH_BLIT_EO || get_texture_function () == OGL_TEX_ATTACHMENT_CLEAR");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2, a3, 0x18uLL, 8u, 0, a2, 0, 0, 0);
}

double CA::Rect::unapply_transform(CA::Rect *this, float64x2_t *a2, const double *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  result = *(this + 3);
  if (v4 <= result)
  {
    v5 = *(this + 3);
  }

  else
  {
    v5 = *(this + 2);
  }

  if (v5 < 1.79769313e308)
  {
    if ((LOBYTE(a2[9].f64[0]) & 0x10) != 0)
    {
      CA::Mat4Impl::mat4_invert(v14, a2, a3);
      *&result = CA::Mat4Impl::mat4_unapply_inverse_to_rect(v14, this, v13).u64[0];
      return result;
    }

    v7 = *(this + 1);
    v8 = *this - a2[6].f64[0];
    *this = v8;
    v9 = v7 - a2[6].f64[1];
    *(this + 1) = v9;
    v10 = LOBYTE(a2[9].f64[0]);
    if (v10)
    {
      v9 = -(v9 + result);
      *(this + 1) = v9;
      v10 = LOBYTE(a2[9].f64[0]);
      if ((v10 & 2) == 0)
      {
LABEL_8:
        if ((v10 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    else if ((LOBYTE(a2[9].f64[0]) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = -(v8 + v4);
    *this = v8;
    v10 = LOBYTE(a2[9].f64[0]);
    if ((v10 & 4) == 0)
    {
LABEL_9:
      v11 = result;
      result = v4;
      v12 = v9;
      v9 = v8;
      if ((v10 & 8) == 0)
      {
        return result;
      }

LABEL_15:
      *this = v9 * a2[8].f64[1];
      *(this + 1) = v12 * a2[8].f64[1];
      *(this + 2) = result * a2[8].f64[1];
      result = v11 * a2[8].f64[1];
      *(this + 3) = result;
      return result;
    }

LABEL_14:
    v12 = -(v8 + v4);
    *this = v9;
    *(this + 1) = v12;
    *(this + 2) = result;
    *(this + 3) = v4;
    v11 = v4;
    if ((LOBYTE(a2[9].f64[0]) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

void CA::OGL::GlassBackgroundFilter::ROI(CA::OGL::GlassBackgroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a4 + 1;
  v64 = *a4;
  v66 = a4[1];
  v7 = *(a2 + 5);
  v68 = xmmword_183E210C0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v7, 427, &v68);
  v57 = v8;
  float_key = CA::Render::KeyValueArray::get_float_key(v7, 429, 25.0);
  v10 = CA::Render::KeyValueArray::get_float_key(v7, 428, 1.0);
  v13.f64[0] = CA::OGL::gaussian_expansion_factor(v11, v10);
  v14.f64[1] = v64.f64[1];
  if (v66.f64[0] <= v66.f64[1])
  {
    v15 = v66.f64[1];
  }

  else
  {
    v15 = v66.f64[0];
  }

  v16 = v66;
  v17 = v64;
  if (v15 < 1.79769313e308)
  {
    v18 = v66.f64[0] >= v66.f64[1] ? v66.f64[1] : v66.f64[0];
    v19 = v18 <= 0.0;
    v16 = v66;
    v17 = v64;
    if (!v19)
    {
      v13.f64[0] = -(float_key * v13.f64[0]);
      v17 = vaddq_f64(v64, vdupq_lane_s64(*&v13.f64[0], 0));
      v13.f64[0] = v13.f64[0] * -2.0;
      *v20.i64 = v13.f64[0] + v66.f64[0];
      v13.f64[0] = v13.f64[0] + v66.f64[1];
      v14.f64[0] = fmin(*v20.i64, v13.f64[0]);
      v20.i64[1] = *&v13.f64[0];
      v13.f64[0] = 0.0;
      v16 = vandq_s8(v20, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v13, v14)).i64[0], 0));
    }
  }

  v58 = v17;
  v60 = v16;
  v22.f64[0] = CA::OGL::GlassBackgroundFilter::max_range(v7, v12);
  v23.f64[1] = v64.f64[1];
  v24 = v66;
  v25 = v64;
  if (v15 < 1.79769313e308)
  {
    v26 = v66.f64[0] >= v66.f64[1] ? v66.f64[1] : v66.f64[0];
    v19 = v26 <= 0.0;
    v24 = v66;
    v25 = v64;
    if (!v19)
    {
      v25 = vaddq_f64(v64, vdupq_lane_s64(COERCE__INT64(-v22.f64[0]), 0));
      v22.f64[0] = v22.f64[0] + v22.f64[0];
      *v27.i64 = v22.f64[0] + v66.f64[0];
      v22.f64[0] = v22.f64[0] + v66.f64[1];
      v23.f64[0] = fmin(*v27.i64, v22.f64[0]);
      v27.i64[1] = *&v22.f64[0];
      v22.f64[0] = 0.0;
      v24 = vandq_s8(v27, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v22, v23)).i64[0], 0));
    }
  }

  v59 = v24;
  v28.f64[0] = vec2_key;
  v28.f64[1] = v57;
  v61 = v25;
  v63 = v28;
  glass_filter_bleed_blur_radius = CA::Render::get_glass_filter_bleed_blur_radius(v7, v21);
  v30 = CA::Render::KeyValueArray::get_float_key(v7, 356, 30.0);
  v31 = v30 + v30;
  if (glass_filter_bleed_blur_radius >= v31)
  {
    v31 = glass_filter_bleed_blur_radius;
  }

  if (v15 < 1.79769313e308)
  {
    v33 = v66;
    if (v66.f64[0] >= v66.f64[1])
    {
      v35 = v66.f64[1];
    }

    else
    {
      v35 = v66.f64[0];
    }

    v34 = v60;
    if (v35 > 0.0)
    {
      v32 = vaddq_f64(v64, vdupq_lane_s64(COERCE__INT64(v31 * -2.8), 0));
      v33 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v31 * 5.6), 0), v66);
      *a4 = v32;
      a4[1] = v33;
      if (v33.f64[0] <= 0.0 || v33.f64[1] <= 0.0)
      {
        v6->f64[0] = 0.0;
        v6->f64[1] = 0.0;
        v33 = 0uLL;
      }
    }

    else
    {
      v32 = v64;
    }
  }

  else
  {
    v32 = v64;
    v33 = v66;
    v34 = v60;
  }

  v36 = vsubq_f64(v58, v63);
  v37 = vclezq_f64(v33);
  v38 = vclezq_f64(v34);
  v39 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v38, v37), vzip2q_s64(v38, v37))));
  if ((v39.i8[4] & 1) == 0)
  {
    if (v39.i8[0])
    {
      goto LABEL_34;
    }

    v40 = vaddq_f64(v36, v34);
    v36 = vminnmq_f64(v32, v36);
    v34 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v32, v33), v40), v36);
    goto LABEL_33;
  }

  if ((v39.i8[0] & 1) == 0)
  {
LABEL_33:
    *a4 = v36;
    a4[1] = v34;
    v32 = v36;
    v33 = v34;
  }

LABEL_34:
  v41 = vclezq_f64(v33);
  v42 = v59;
  v43 = vclezq_f64(v59);
  v44 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v43, v41), vzip2q_s64(v43, v41))));
  if ((v44.i8[4] & 1) == 0)
  {
    if (v44.i8[0])
    {
      goto LABEL_40;
    }

    v45 = vmaxnmq_f64(vaddq_f64(v32, v33), vaddq_f64(v61, v59));
    v61 = vminnmq_f64(v32, v61);
    v42 = vsubq_f64(v45, v61);
    goto LABEL_39;
  }

  if ((v44.i8[0] & 1) == 0)
  {
LABEL_39:
    v32 = v61;
    *a4 = v61;
    a4[1] = v42;
    v33 = v42;
  }

LABEL_40:
  v65 = v32;
  v67 = v33;
  if (CA::Render::KeyValueArray::get_float_key(*(a2 + 5), 430, 1.0) == 0.0)
  {
    if (v67.f64[0] <= v67.f64[1])
    {
      v46 = v67.f64[1];
    }

    else
    {
      v46 = v67.f64[0];
    }

    if (v46 < 1.79769313e308)
    {
      v47 = v67.f64[0] >= v67.f64[1] ? v67.f64[1] : v67.f64[0];
      if (v47 > 0.0)
      {
        __asm { FMOV            V1.2D, #-1.0 }

        v65 = vaddq_f64(v65, _Q1);
        *a4 = v65;
        a4[1].f64[0] = v67.f64[0] + 2.0;
        a4[1].f64[1] = v67.f64[1] + 2.0;
        if (v67.f64[0] + 2.0 <= 0.0 || v67.f64[1] + 2.0 <= 0.0)
        {
          v6->f64[0] = 0.0;
          v6->f64[1] = 0.0;
        }
      }
    }

    v53 = *v6;
    v54 = v6->f64[1];
    if (v6->f64[0] <= v54)
    {
      v55 = v6->f64[1];
    }

    else
    {
      v55 = v6->f64[0];
    }

    if (v55 < 1.79769313e308)
    {
      if (v53.f64[0] < v54)
      {
        v54 = v6->f64[0];
      }

      if (v54 > 0.0)
      {
        v56 = vrndmq_f64(v65);
        *a4 = v56;
        a4[1] = vsubq_f64(vrndpq_f64(vaddq_f64(v65, v53)), v56);
      }
    }
  }
}

_DWORD *CA::OGL::LayerNode::retain_surface(CA::OGL::LayerNode *this, float *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  v5 = *(v4 + 32);
  if ((v5 & 8) != 0)
  {
    v10 = *(this + 1);
    v11 = *v10;
    v9 = *(*v10 + 688);
    if (v9 || (v9 = (*(*v11 + 792))(v11, a2, a3), (v11[86] = v9) != 0))
    {
      ++*v9;
    }

    return v9;
  }

  if (*(v4 + 200))
  {
    v8 = *(**(*(*(v4 + 192) + 24) + 136) + 136) - 2;
    if (v8 < 7 && ((0x73u >> v8) & 1) != 0)
    {
      return 0;
    }
  }

  if ((*(v4 + 40) & 8) != 0 && (v5 & 0x2000013C0) == 0)
  {
    v13 = *(this + 1);
    if ((v5 & 0x20) == 0 || (v14 = *(*(v4 + 24) + 136)) == 0 || !*(v14 + 80))
    {
      v15 = *(v4 + 16);
      if (!v15 || (*(v15 + 28) & 0x10) == 0)
      {
        v16 = *(*(v4 + 24) + 136);
        if (!v16 || *(v16 + 232) == 0.0)
        {
          v17 = *(v15 + 256);
          if (v17)
          {
            os_unfair_lock_lock((v17 + 52));
            v18 = *(v17 + 56);
            if (!v18)
            {
              os_unfair_lock_unlock((v17 + 52));
              goto LABEL_12;
            }

            os_unfair_lock_lock((v18 + 40));
            v20 = *v13;
            v21 = *(v18 + 48);
            if (v21)
            {
              if (*(v21 + 8) == v20)
              {
                if ((*(v21 + 224) & 2) == 0)
                {
                  goto LABEL_41;
                }

                v22 = 0;
LABEL_28:
                v23 = *(v18 + 72);
                v24 = *(v18 + 80);
                v25 = 0.0;
                if (v23 != v24)
                {
                  while (*v23 != *(v17 + 24) || *(v17 + 32) != *(v23 + 8) || *(v23 + 16) != *(v17 + 40))
                  {
                    v23 += 192;
                    if (v23 == v24)
                    {
                      goto LABEL_33;
                    }
                  }

                  if ((*(v23 + 180) & 1) == 0)
                  {
                    v26 = *(v4 + 24);
                    v27 = *(v26 + 136);
                    if (v27)
                    {
                      v27 = *v27;
                      if (v27)
                      {
                        if (*(v27 + 12) != 3)
                        {
                          v27 = 0;
                        }
                      }
                    }

                    if ((v22 & 1) != 0 || !*(v21 + 32) || (*(v27 + 13) & 0x10) != 0)
                    {
                      if ((*(v4 + 32) & 0x20) == 0)
                      {
                        v9 = CA::OGL::Context::retain_null_surface(v20);
                        v25 = 1.0;
                        goto LABEL_34;
                      }
                    }

                    else
                    {
                      v31 = v4;
                      v32 = v23;
                      v33 = v27;
                      v34 = v21;
                      if ((*(this + 68) & 0x100) != 0)
                      {
                        v28 = *(this + 10);
                        if ((*(v28 + 144) & 0x10) == 0 || CA::Mat4Impl::mat4_is_rectilinear(*(this + 10), v19))
                        {
                          goto LABEL_58;
                        }
                      }

                      if ((*(v34 + 224) & 4) != 0)
                      {
                        v28 = *(this + 10);
LABEL_58:
                        v35 = 0u;
                        v36 = 0u;
                        CA::Render::BackdropLayer::get_backdrop_bounds(v33, v26, &v35);
                        CA::BoundsImpl::intersect(&v35, v32[2], v32[3]);
                        v29.i64[0] = 1.0;
                        if ((CA::OGL::rect_transform_filter_bits(v28, v30, v35, v36, v29, 1.0) & 9) != 0 && (*(v31 + 41) & 0xF) != 0)
                        {
                          v9 = 0;
                          v25 = 0.0;
                          if ((*(v34 + 224) & 4) == 0 || *(this + 11) != 0x3C003C003C003C00)
                          {
                            goto LABEL_34;
                          }

                          goto LABEL_64;
                        }

                        if (*(this + 11) == 0x3C003C003C003C00)
                        {
LABEL_64:
                          v25 = *(v34 + 28);
                          v9 = *(v34 + 48);
                          if (v9)
                          {
                            ++*v9;
                          }

LABEL_34:
                          os_unfair_lock_unlock((v18 + 40));
                          os_unfair_lock_unlock((v17 + 52));
                          if (v9)
                          {
                            if (v25 == 1.0 || (*(this + 239) & 2) != 0)
                            {
                              *a2 = v25;
                              return v9;
                            }

                            CA::OGL::Context::release_surface(**(this + 1), v9);
                          }

                          goto LABEL_12;
                        }

LABEL_41:
                        v9 = 0;
                        v25 = 0.0;
                        goto LABEL_34;
                      }
                    }
                  }
                }

LABEL_33:
                v9 = 0;
                goto LABEL_34;
              }

              v21 = 0;
            }

            v22 = 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_12:

  return CA::OGL::ImagingNode::retain_surface(this, a2, a3);
}

uint64_t CA::OGL::filter_flags(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      return 0;
    }

    if (CA::ColorMatrix::is_opaque_identity(v8))
    {
      return 70;
    }

    return 6;
  }

  v4 = *(v3 + 48);
  if (v4 && (*(*v4 + 72))(*(v3 + 48)))
  {
    v6 = (*(*v4 + 112))(v4, v3, a2);
    goto LABEL_25;
  }

  v7 = *(v3 + 24);
  if (v7 > 203)
  {
    if ((v7 - 495) >= 2 && v7 != 304)
    {
      v6 = v7 == 204;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v7 <= 108)
  {
    v6 = 0;
    if (v7 != 28 && v7 != 30)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v7 == 109 || v7 == 125 || (v6 = 0, v7 == 177))
  {
LABEL_24:
    v6 = 6;
  }

LABEL_25:
  v10 = *(a1 + 48);
  if (v10)
  {
    if (CA::ColorMatrix::is_opaque_identity(v10))
    {
      return v6 | 0x40;
    }

    else
    {
      return v6 & 0xFFFFFFEF;
    }
  }

  return v6;
}

uint64_t CA::Shape::scale_and_dilate(CA::Shape *this, float32x2_t a2, float32_t a3, unsigned int a4, unsigned int a5)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12 = 1;
  v13[0] = this;
  v11[0] = 0;
  v11[1] = 0;
  v13[1] = 0;
  v13[2] = 0;
  a2.f32[1] = a3;
  v10 = a2;
  v9 = __PAIR64__(a5, a4);
  while (CA::ShapeIterator::iterate(v13, v11))
  {
    v6 = vcvt_f32_s32(v11[0]);
    *&v7 = vsub_s32(vcvtm_s32_f32(vmul_f32(v10, v6)), v9);
    *(&v7 + 1) = vsub_s32(vadd_s32(vcvtp_s32_f32(vmul_f32(vadd_f32(vcvt_f32_s32(v11[1]), v6), v10)), v9), *&v7);
    *v11 = v7;
    CA::shape_union(&v12, v11, v5);
  }

  return v12;
}

void CA::shape_intersect(CA *this, uint64_t a2, const CA::Shape *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 4);
    if (v5 == 6)
    {
      return;
    }

    if (v5 != 12)
    {
      goto LABEL_8;
    }
  }

  if (a2)
  {
    if (a2 == 1)
    {
      goto LABEL_8;
    }
  }

  else if (*(a2 + 4) != 12)
  {
LABEL_8:
    v6 = CA::Shape::intersect(*this, a2);
    CA::Shape::unref(v4);
    *this = v6;
    return;
  }

  if (v4)
  {
    v9 = v4 >> 48;
    v7 = v4 << 16 >> 48;
    v10 = ((v4 >> 2) & 0x7FFF) + v7;
    v8 = (v4 >> 48) + (v4 >> 17);
    if (a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LODWORD(v7) = *(v4 + 20);
    LODWORD(v9) = *(v4 + 28);
    v8 = *(v4 + 32);
    v10 = *(v4 + 36);
    if (a2)
    {
LABEL_12:
      v11 = a2 >> 48;
      v12 = a2 << 16 >> 48;
      v13 = ((a2 >> 2) & 0x7FFF) + v12;
      v14 = (a2 >> 48) + (a2 >> 17);
      goto LABEL_15;
    }
  }

  LODWORD(v12) = *(a2 + 20);
  LODWORD(v11) = *(a2 + 28);
  v14 = *(a2 + 32);
  v13 = *(a2 + 36);
LABEL_15:
  if (v9 >= v11)
  {
    if (v7 < v12 || v8 > v14)
    {
      LODWORD(v11) = v9;
    }

    else
    {
      LODWORD(v11) = v9;
      if (v10 <= v13)
      {
        return;
      }
    }
  }

  if (v7 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v7;
  }

  if (v8 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v8;
  }

  if (v10 >= v13)
  {
    v10 = v13;
  }

  v17 = v16 - v11;
  if (v16 <= v11 || (v18 = v10 - v15, v10 <= v15))
  {
    CA::Shape::unref(*this);
    *this = 1;
  }

  else if ((v4 & 1) != 0 || *v4 != 1)
  {
    CA::Shape::unref(*this);
    v20[0] = v11;
    v20[1] = v15;
    v20[2] = v17;
    v20[3] = v18;
    *this = CA::Shape::new_shape(v20, v19);
  }

  else
  {
    *(v4 + 20) = v15;
    *(v4 + 28) = v11;
    *(v4 + 32) = v16;
    *(v4 + 36) = v10;
  }
}

void CA::OGL::anonymous namespace::filter_backdrop(const CA::Render::Filter **a1, CA::Render **a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, CA::Shape **a7, uint64_t a8, double a9, __n128 a10, uint64_t a11, unsigned __int8 a12)
{
  v12 = a5;
  v197 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  *(a5 + 28) = *(a5 + 24);
  if (!a4)
  {
    goto LABEL_40;
  }

  v15 = *(a4 + 16);
  if (!v15)
  {
    goto LABEL_40;
  }

  v17 = a4 + 24;
  if ((*(*(a4 + 24) + 13) & 1) == 0)
  {
    v18 = 0;
    do
    {
      if (v15 - 1 == v18)
      {
        goto LABEL_40;
      }

      v19 = *(a4 + 32 + 8 * v18++);
    }

    while ((*(v19 + 13) & 1) == 0);
    if (v18 >= v15)
    {
      goto LABEL_40;
    }
  }

  v20 = *(a5 + 32);
  if (v20)
  {
    v21 = v20[3].i32[2];
    v22 = v20[3].i32[3];
    v181[0] = v20[3].i64[0];
    a10.n128_u64[0] = v181[0];
    v181[1] = __PAIR64__(v22, v21);
    v180 = 0;
    v174 = a10;
    if (a12)
    {
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      if (v21 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v23 <= 1073741822 && v24 >= 1)
      {
        v181[0] = vadd_s32(v181[0], 0x100000001);
        LODWORD(v181[1]) = v21 - 2;
        HIDWORD(v181[1]) = v22 - 2;
        if (v21 - 2 < 1 || v22 - 2 <= 0)
        {
          v181[1] = 0;
        }
      }

      v27 = v20[3];
      v186 = v27;
      if (*(a5 + 224))
      {
        v28 = v27.i32[2];
        if (v27.i32[2] <= v27.i32[3])
        {
          v29 = v27.i32[3];
        }

        else
        {
          v29 = v27.i32[2];
        }

        if (v27.i32[2] >= v27.i32[3])
        {
          v28 = v27.i32[3];
        }

        if (v29 <= 1073741822 && v28 >= 1)
        {
          v186 = vaddq_s32(v27, xmmword_183E21750);
          v31 = vclez_s32(*&vextq_s8(v186, v186, 8uLL));
          if (vorr_s8(v31, vdup_lane_s32(v31, 1)).u8[0])
          {
            v186.i64[1] = 0;
          }
        }
      }

      v180 = CA::Shape::new_shape(&v186, a2);
      if (a7)
      {
        CA::shape_subtract(&v180, a7, v32, v33);
      }

      else
      {
        CA::shape_subtract(&v180, v181, v32);
      }
    }

    v36 = *(v12 + 48);
    if (v36 && v36 == *(v12 + 32))
    {
      CA::OGL::Context::release_surface(v13, v36);
      a7 = 0;
      a6 = 0;
      *(v12 + 48) = 0;
    }

    v168 = v13;
    v189 = 0x3C003C003C003C00;
    v192 = 0;
    v194 = 0;
    v190 = 0;
    v191 = 0;
    v195 = 0;
    v196 = 1025;
    v187 = 0;
    v186 = 0uLL;
    v193 = 1065353216;
    memset(v185, 0, sizeof(v185));
    CA::Shape::operator=(v185, v181);
    v37 = a6;
    if (!a6)
    {
      v37 = v185;
    }

    v186.i64[1] = v37;
    v38 = *(a4 + 16);
    if (v38)
    {
      v39 = 8 * v38;
      v40 = v39;
      v41 = a4 + 24;
      while (*(*v41 + 24) != 57)
      {
        v41 += 8;
        v40 -= 8;
        if (!v40)
        {
          v42 = 16777231;
          goto LABEL_64;
        }
      }

      if (*(*v17 + 24) == 57)
      {
        v42 = 16777231;
      }

      else
      {
        v42 = 17039439;
      }

      v186.i64[1] = &CA::Shape::_infinite_shape;
LABEL_64:
      v43 = 0;
      v167 = 0;
      v155 = 0;
      while (1)
      {
        if ((*(*v17 + 12) & 0x40100) == 0x100)
        {
          v44 = *(*v17 + 24);
          if (v44 <= 282)
          {
            if (v44 != 97 && v44 != 202)
            {
              if (v44 != 280)
              {
                goto LABEL_75;
              }

LABEL_74:
              ++v43;
              ++v167;
              goto LABEL_75;
            }

LABEL_72:
            ++v43;
            v155 = 1;
            goto LABEL_75;
          }

          if ((v44 - 283) < 2)
          {
            goto LABEL_72;
          }

          if (v44 == 737)
          {
            goto LABEL_74;
          }
        }

LABEL_75:
        v17 += 8;
        v39 -= 8;
        if (!v39)
        {
          if (a7)
          {
            if (v43)
            {
              v186.i64[1] = a7;
            }
          }

          else
          {
            a7 = v185;
          }

          goto LABEL_80;
        }
      }
    }

    v43 = 0;
    v167 = 0;
    v155 = 0;
    v42 = 16777231;
    if (!a7)
    {
      a7 = v185;
    }

LABEL_80:
    v188 = v12 + 72;
    v179 = 0;
    v178 = 0;
    v45 = CA::OGL::prepare_filters(a1, a2, a4, 1, &v179, 1, 0);
    if (v45)
    {
      v152 = a7;
      v46 = 0;
      ptr = v45;
      v47 = v45;
      do
      {
        v46 += !CA::OGL::can_filter_in_place(v47);
        v47 = *v47;
      }

      while (v47);
      v49 = *(v12 + 48);
      v50 = *(v12 + 32);
      v51 = v50[23] & 0x30 | v42;
      v52 = v168;
      v157 = v43;
      v165 = v51;
      if (!v46)
      {
        v54 = *(v12 + 32);
        ++*v50;
        v53 = a2;
        if (v49)
        {
          CA::OGL::Context::release_surface(v168, v49);
        }

        goto LABEL_101;
      }

      v53 = a2;
      v48 = v174;
      if (v49)
      {
        *(v49 + 48) = v174.n128_u64[0];
        v54 = v49;
        *(v49 + 56) = v21;
        *(v49 + 60) = v22;
LABEL_101:
        (*(*v168 + 760))(v168, v54, 16, 16, v48);
        *(v54 + 48) = v174.n128_u64[0];
        v172 = v21;
        *(v54 + 56) = v21;
        *(v54 + 60) = v22;
        v63 = v54;
        if (v46 < 2)
        {
          v65 = 0;
        }

        else
        {
          v64 = (*(*v168 + 696))(v168, 1, a11, v165, @"image-filter-backdrop-temporary-surface");
          if (!v64)
          {
            v57 = 0;
            *(v12 + 48) = 0;
            v66 = v54;
            goto LABEL_209;
          }

          v65 = v64;
          (*(*v168 + 760))(v168, v64, 16, 16);
          *(v65 + 48) = v174.n128_u64[0];
          v53 = a2;
          *(v65 + 56) = v172;
          *(v65 + 60) = v22;
        }

        v91 = (v46 & 1) == 0;
        v66 = v63;
        if (v91)
        {
          v66 = v65;
        }

        else
        {
          v63 = v65;
        }

        if (BYTE11(xmmword_1ED4E97DC) == 1)
        {
          if (x_log_get_ogl(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
          }

          v143 = x_log_get_ogl(void)::log;
          v53 = a2;
          if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v144 = *(a4 + 16);
            *buf = 67109376;
            *&buf[4] = v144;
            LOWORD(v184[0]) = 2048;
            *(v184 + 2) = ptr;
            _os_log_impl(&dword_183AA6000, v143, OS_LOG_TYPE_DEFAULT, "  applying %d merged group filters (lst %p)\n", buf, 0x12u);
          }
        }

        v57 = 0;
        v67 = 0;
        v68 = 0;
        v158 = 0;
        v69 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v149 = v69;
        v150 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v69.i32[0] = 1073741822;
        v148 = v69;
        v146 = vdupq_n_s64(0x41C0000000000000uLL);
        v147 = vdupq_n_s64(0xC1BFFFFFFF000000);
        v70 = ptr;
        v175 = 1;
        v71 = v63;
        v169 = v12;
        while (1)
        {
          v170 = v67;
          v173 = v66;
          v166 = v68;
          v72 = *(v12 + 224);
          can_filter_in_place = CA::OGL::can_filter_in_place(v70);
          v162 = v57 != 0;
          *buf = 0;
          v184[0] = 0;
          v182 = 0;
          v74 = *(v53 + 21);
          v75 = v70[2];
          v76 = CA::OGL::filter_source_layer_name(v75);
          v77 = CA::OGL::LayerNode::filter_source_layer(v74, v76);
          v156 = v57;
          v163 = v72;
          if (v77)
          {
            v78 = v77;
            v177 = 0uLL;
            CA::Shape::get_bounds(v186.i64[1], &v177);
            v79.i32[1] = v177.i32[3];
            v80.i64[0] = v177.i32[0];
            v80.i64[1] = v177.i32[1];
            v81 = v80;
            v82 = v177.i32[3];
            v80.i64[0] = v177.i32[2];
            v80.i64[1] = v177.i32[3];
            v83 = v80;
            if (v177.i32[2] > v177.i32[3])
            {
              v82 = v177.i32[2];
            }

            v79.i32[0] = v82;
            v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v79, v148), 0), v150, vcvtq_f64_s64(v81));
            v85 = vcvtq_f64_s64(v83);
            v86 = vdup_n_s32(v82 > 1073741822);
            v87.i64[0] = v86.u32[0];
            v87.i64[1] = v86.u32[1];
            v88 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v87, 0x3FuLL)), v149, v85);
            v89 = 1.0 / *(v12 + 28);
            v90 = v89;
            v91 = *v88.i64 >= 1.79769313e308 || v89 == 1.0;
            v92.i64[1] = v84.i64[1];
            v93.i64[1] = v88.i64[1];
            if (v91)
            {
              v94 = 0;
            }

            else
            {
              v94 = -1;
            }

            v95 = vdupq_n_s64(v94);
            *v93.i64 = v90 * *v88.i64;
            v96 = vbslq_s8(v95, v93, v88);
            *v92.i64 = v90 * *v84.i64;
            v97 = vbslq_s8(v95, v92, v84);
            if (v89 != 1.0 && v96.f64[1] < 1.79769313e308)
            {
              v97.f64[1] = vmuld_lane_f64(v90, v97, 1);
              v96.f64[1] = v96.f64[1] * v90;
            }

            v98 = *(v53 + 21);
            v99 = vceqzq_f64(v96);
            if ((vorrq_s8(vdupq_laneq_s64(v99, 1), v99).u64[0] & 0x8000000000000000) != 0 || (v100 = vceqq_f64(v96, v96), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v100), 1), v100).u64[0] & 0x8000000000000000) != 0))
            {
              v177 = 0uLL;
            }

            else
            {
              v101 = vminnmq_f64(vaddq_f64(v97, v96), v146);
              v102 = vcvtmq_s64_f64(vmaxnmq_f64(v97, v147));
              v177 = vuzp1q_s32(v102, vsubq_s64(vcvtpq_s64_f64(v101), v102));
            }

            v184[0] = CA::OGL::LayerNode::retain_filter_source_surface(v98, v78, v70, &v182 + 4, &v177);
            if (v184[0])
            {
              v103 = 0;
            }

            else
            {
              v103 = v78;
            }

            v75 = v70[2];
          }

          else
          {
            v103 = 0;
          }

          v104 = 0;
          if (!v75)
          {
            v107 = v168;
            goto LABEL_158;
          }

          v105 = *(v75 + 24);
          if (v105 <= 279)
          {
            v107 = v168;
            if (v105 != 97 && v105 != 202)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v106 = (v105 - 280) > 4 || ((1 << (v105 - 24)) & 0x19) == 0;
            v107 = v168;
            if (v106 && v105 != 737)
            {
              goto LABEL_158;
            }
          }

          v109 = v105 == 280 || v105 == 737;
          --v157;
          if (a6 && !v157)
          {
            v186.i64[1] = a6;
          }

          v167 -= v109;
          v110 = *(a3 + 12);
          if ((v110 & 0x400) == 0 || (*(v107 + 873) & 0x20) != 0)
          {
            v104 = 0;
          }

          else
          {
            v104 = 0;
            if ((*(a1[1] + 1379) & 2) != 0 && v105 == 737)
            {
              v104 = (byte_1ED4E98AA ^ 1) & ((v110 & 0x40000u) >> 18);
            }
          }

LABEL_158:
          v111 = v71;
          if (!v170)
          {
            v111 = *(v169 + 32);
          }

          if (can_filter_in_place)
          {
            v112 = v71;
          }

          else
          {
            v112 = v173;
          }

          v113 = v186.i64[1];
          if (v170)
          {
            v114 = v186.i64[1];
          }

          else
          {
            v114 = a8;
          }

          v175 &= can_filter_in_place;
          v161 = v112;
          if (v175)
          {
            v115 = can_filter_in_place;
            v112 = *(v169 + 32);
            v186.i64[1] = a8;
            v111 = v112;
            v158 = v113;
          }

          else
          {
            v116 = a12 ^ 1;
            if (v167)
            {
              v116 = 1;
            }

            v115 = can_filter_in_place;
            if (((v116 | can_filter_in_place) & 1) == 0)
            {
              *(v112 + 48) = *v181;
            }
          }

          v186.i64[0] = CA::OGL::Context::set_gstate(v107, &v186);
          CA::OGL::Context::push_surface(v107, v112, *(v112 + 144) >= 0, 64, 0);
          if ((v175 & 1) == 0 && v180 && v167)
          {
            v177.i64[0] = 0;
            (*(*v107 + 1000))(v107);
          }

          v176 = 1.0;
          v117.n128_u32[0] = *(v169 + 28);
          *buf = v111;
          LODWORD(v182) = v117.n128_u32[0];
          v118 = &v176;
          if ((v162 | v155))
          {
            v118 = 0;
          }

          v119 = &v178;
          if (!v104)
          {
            v119 = 0;
          }

          v53 = a2;
          CA::OGL::emit_filter(a1, v70, a2, buf, &v182, v103, v163 & 1, v152, v117, v114, v118, v119);
          v127 = v184[0];
          if (v184[0])
          {
            CA::OGL::Context::release_surface(v168, v184[0]);
          }

          if (v175)
          {
            v128 = v158;
          }

          else
          {
            v128 = v186.i64[1];
          }

          v126.f32[0] = v176;
          v129 = v115;
          if ((v176 == 1.0) | (v162 | v155) & 1)
          {
            v52 = v168;
            v12 = v169;
            v66 = v173;
            v57 = v156;
            goto LABEL_194;
          }

          v57 = CA::Shape::scale_and_dilate(v128, v126, v176, 1u, 1u);
          v12 = v169;
          *(v169 + 28) = *(v169 + 28) * v176;
          v66 = v173;
          *v181 = *(v173 + 48);
          v164 = *v181;
          v177 = 0uLL;
          CA::Shape::get_bounds(v57, &v177);
          v130 = v177.i64[1];
          v131 = vclez_s32(*(&v164 + 8));
          v132 = vpmax_u32(v131, v131).u32[0];
          v133 = vclez_s32(v177.u64[1]);
          v134 = vpmax_u32(v133, v133).u32[0];
          v52 = v168;
          if ((v132 & 0x80000000) != 0)
          {
            if ((v134 & 0x80000000) == 0)
            {
              v135 = v177.i64[0];
              goto LABEL_192;
            }
          }

          else if ((v134 & 0x80000000) == 0)
          {
            v135 = vmin_s32(*&v164, *v177.i8);
            v130 = vsub_s32(vmax_s32(vadd_s32(*&v164, *(&v164 + 8)), vadd_s32(*v177.i8, v177.u64[1])), v135);
LABEL_192:
            v181[0] = v135;
            v181[1] = v130;
          }

          v128 = v57;
LABEL_194:
          if (BYTE1(xmmword_1ED4E97DC) == 1 && !*v70)
          {
            *(*(v52 + 16) + 497) |= 1u;
            v138 = *(v52 + 16);
            *(v138 + 496) = 3;
            *(v138 + 8) = 0x3804000038043804;
            v177 = 0uLL;
            CA::OGL::emit_combine(v52, 0, 0, 0, v128, &v177);
            *(*(v52 + 16) + 497) &= ~1u;
          }

          CA::OGL::Context::pop_surface(v52, v127, v120, v121, v122, v123, v124, v125);
          CA::OGL::Context::set_gstate(v52, **(v52 + 656));
          v186.i64[1] = v128;
          if (!v129)
          {
            v66 = v71;
          }

          v136 = CA::OGL::filter_flags(v70, a2);
          if ((v136 & 0x10) != 0)
          {
            v137 = ~(8 * *(v52 + 1384)) & 0x10;
          }

          else
          {
            v137 = 0;
          }

          v67 = v170 + !v129;
          v68 = v166 | ((v136 & 8) >> 3);
          *(v112 + 148) = *(v112 + 148) & 0xFFEF | v137;
          v70 = *v70;
          v71 = v161;
          if (!v70)
          {
            if (v166 & 1 | ((v136 & 8) != 0))
            {
              *(v161 + 148) |= 2u;
            }

            *(v12 + 48) = v161;
            if (!v66)
            {
LABEL_210:
              v139 = ptr;
              do
              {
                v140 = *v139;
                CA::OGL::finalize_filter(v139);
                v139 = v140;
              }

              while (v140);
              goto LABEL_212;
            }

LABEL_209:
            CA::OGL::Context::release_surface(v52, v66);
            goto LABEL_210;
          }
        }
      }

      v171 = (*(*v168 + 696))(v168, 1, a11, v51 | 0x400u, @"image-filter-backdrop", v174);
      v58 = a2[3];
      if (v58)
      {
        v60 = CA::Render::Layer::process_id(*(v58 + 19));
        v61 = a2[3];
        if (v61)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v61, v59);
          goto LABEL_98;
        }
      }

      else
      {
        v60 = 0;
      }

      layer_resource_text = 0;
LABEL_98:
      (*(*v168 + 888))(v168, v171, 0, v60, @"image-filter-backdrop", layer_resource_text);
      if (layer_resource_text)
      {
        CFRelease(layer_resource_text);
      }

      v53 = a2;
      v54 = v171;
      if (!v171)
      {
        v57 = 0;
        *(v12 + 48) = 0;
        goto LABEL_210;
      }

      goto LABEL_101;
    }

    v55 = *(v12 + 48);
    v52 = v168;
    if (v55)
    {
      CA::OGL::Context::release_surface(v168, v55);
      *(v12 + 48) = 0;
    }

    v56 = *(v12 + 32);
    v57 = 0;
    if (v56)
    {
      ++*v56;
      *(v12 + 48) = v56;
    }

LABEL_212:
    if (v180)
    {
      CA::Shape::unref(v180);
    }

    if (v57)
    {
      CA::Shape::unref(v57);
    }

    v141 = v178;
    if (v178)
    {
      v142 = *(v12 + 40);
      if (v142)
      {
        CA::OGL::Context::release_surface(v52, v142);
        v141 = v178;
      }

      *(v12 + 40) = v141;
    }
  }

  else
  {
LABEL_40:
    v34 = *(a5 + 48);
    v35 = *(a5 + 32);
    if (v34 != v35)
    {
      if (v34)
      {
        CA::OGL::Context::release_surface(v13, v34);
        v35 = *(v12 + 32);
      }

      if (v35)
      {
        ++*v35;
        *(v12 + 48) = v35;
      }

      else
      {
        *(v12 + 48) = 0;
      }
    }
  }
}

void CA::WindowServer::IOMFBDisplay::foreach_detached_layer_geometry(CA::WindowServer::IOMFBDisplay *this, void (__high *a2)(CA::Render::Handle *, uint64_t, CA::Render::Texture *, CA::Rect, CA::Rect, unsigned int, void *), void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3287);
  if (v3 && (*(v3 + 292) & 1) == 0)
  {
    v5 = *v3;
    if (*v3)
    {
      v8 = *(v3 + 72);
      v9 = v3[1];
      v10 = *(v3 + 5);
      v13[0] = *(v3 + 4);
      v13[1] = v10;
      v11 = *(v3 + 7);
      v12[0] = *(v3 + 6);
      v12[1] = v11;
      (a2)(v5, v8, v9, v13, v12, *(v3 + 8), a3);
    }

    else
    {

      CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
    }
  }
}

uint64_t CA::OGL::emit_filter_quads_color(uint64_t a1, int32x2_t *a2, uint64_t *a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v8 = *(*(a1 + 656) + 8);
  v16[0] = a1;
  v16[1] = v8;
  v17 = 0u;
  v16[2] = 0;
  WORD4(v17) = 256;
  CA::OGL::Context::ClippedArray::start(v16);
  v15[0] = 0;
  v15[1] = 0;
  while (1)
  {
    result = CA::OGL::Context::ClippedArray::next_rect(v16, v15);
    if (!result)
    {
      break;
    }

    if (*(a1 + 108))
    {
      v10 = 6;
    }

    else
    {
      v10 = 4;
    }

    if ((*(a1 + 144) + 4) > *(a1 + 152) || (v11 = *(a1 + 128)) != 0 && *(a1 + 120) + v10 > v11)
    {
      *(a1 + 1384) |= 0x20u;
      CA::OGL::Context::array_flush(a1);
      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(a1, a2[6].i32[0] * a4, a2[6].i32[1] * a4, (a2[7].i32[0] + a2[6].i32[0]) * a4, (a2[7].i32[1] + a2[6].i32[1]) * a4);
    v12 = *(a1 + 136) + 48 * *(a1 + 144);
    *(v12 - 176) = 0;
    *(v12 - 124) = 0;
    v13 = vcvt_f32_s32(a2[7]);
    *(v12 - 128) = v13.i32[0];
    *(v12 - 80) = v13;
    *(v12 - 28) = v13.i32[1];
    *(v12 - 32) = 0;
    v14 = *a3;
    *(v12 - 160) = *a3;
    *(v12 - 112) = v14;
    *(v12 - 64) = v14;
    *(v12 - 16) = v14;
  }

  return result;
}

uint64_t CA::OGL::GlassBackgroundFilter::filter_source_roi(int32x4_t a1, int32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a7[1].i32[0];
  v9 = a7[1].i32[1];
  if (v8 <= v9)
  {
    v10 = a7[1].i32[1];
  }

  else
  {
    v10 = a7[1].i32[0];
  }

  a1.i32[0] = 1073741822;
  a2.i32[0] = v10;
  v11.i64[0] = a7->i32[0];
  v11.i64[1] = HIDWORD(*a7);
  v37 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a2, a1), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v11));
  if (v10 <= 1073741822)
  {
    v12.f64[0] = v8;
  }

  else
  {
    v12.f64[0] = 1.79769313e308;
  }

  if (v10 <= 1073741822)
  {
    v13 = v9;
  }

  else
  {
    v13 = 1.79769313e308;
  }

  v38 = v13;
  v39 = v12.f64[0];
  v12.f64[1] = v13;
  v36 = v12;
  v14 = *(a5 + 40);
  v40 = xmmword_183E210C0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v14, 427, &v40);
  v34 = v16;
  v35 = vec2_key;
  float_key = CA::Render::KeyValueArray::get_float_key(v14, 429, 25.0);
  v18 = CA::Render::KeyValueArray::get_float_key(v14, 428, 1.0);
  v20.f64[0] = CA::OGL::gaussian_expansion_factor(v19, v18);
  if (fmax(v39, v38) < 1.79769313e308 && (v39 >= v38 ? (v21 = v38) : (v21 = v39), v21 > 0.0))
  {
    v20.f64[0] = -(float_key * v20.f64[0]);
    v23 = vaddq_f64(v37, vdupq_lane_s64(*&v20.f64[0], 0));
    v37 = v23;
    v20.f64[0] = v20.f64[0] * -2.0;
    *v24.i64 = v20.f64[0] + v39;
    v20.f64[0] = v20.f64[0] + v38;
    v23.f64[0] = fmin(*v24.i64, v20.f64[0]);
    v24.i64[1] = *&v20.f64[0];
    v20.f64[0] = 0.0;
    v22 = vandq_s8(v24, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v20, v23)).i64[0], 0));
  }

  else
  {
    v22 = v36;
  }

  v25 = vceqzq_f64(v22);
  v26 = vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0];
  v27 = 0uLL;
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = vceqq_f64(v22, v22);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v28), 1), v28).u64[0] & 0x8000000000000000) == 0)
    {
      v29.f64[0] = v35;
      v29.f64[1] = v34;
      v30 = vsubq_f64(v37, v29);
      v31 = vcvtmq_s64_f64(vmaxnmq_f64(v30, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v27 = vuzp1q_s32(v31, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v30, v22), vdupq_n_s64(0x41C0000000000000uLL))), v31));
    }
  }

  v32 = vextq_s8(v27, v27, 8uLL).u64[0];

  return CA::BoundsImpl::Union(a7, *v27.i8, v32);
}

void CA::OGL::capture_backdrop(CA::OGL *a1, const CA::Bounds *a2)
{
  v688 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(*a1 + 656);
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    PerfHud = CA::OGL::GetPerfHud(a1);
    if (PerfHud)
    {
      ++*(PerfHud + 512);
    }
  }

  v6 = *(*(a2 + 3) + 136);
  if (v6 && (v7 = *v6) != 0)
  {
    if (*(v7 + 12) == 3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a2 + 2) + 256);
  if (v9)
  {
    os_unfair_lock_lock((v9 + 52));
    v10 = *(v9 + 56);
    if (!v10 || *(v9 + 116) != *(*(a1 + 1) + 272) && ((v15 = *(v10 + 48)) == 0 || *(v15 + 8) != v4 || (v16 = *(v15 + 32)) == 0 || (v17 = v8, v18 = *(v16 + 72), _ZF = v18 == (*(*v4 + 144))(v4), v8 = v17, _ZF)))
    {
LABEL_119:
      os_unfair_lock_unlock((v9 + 52));
      return;
    }

    os_unfair_lock_lock((v10 + 40));
    v11 = *(v8 + 12);
    v617 = v5;
    if ((v11 & 0x1000) != 0)
    {
      v12 = *(v10 + 72);
      v13 = *(v10 + 80);
      if ((v11 & 0x400) == 0 && v13 - v12 == 192)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v12 = *(v10 + 72);
      v13 = *(v10 + 80);
    }

    v621 = CA::Render::BackdropGroup::layer_item(v12, v13, v9, *(*(a1 + 1) + 272));
    if (!v621)
    {
      goto LABEL_118;
    }

    if (*(v621 + 180) == 1 && (*(*v4 + 232))(v4, 27))
    {
      v14 = *(v10 + 584);
      if (v14)
      {
        CA::Shape::unref(v14);
        *(v10 + 584) = 0;
      }

      *(v10 + 12) |= 0x800u;
      goto LABEL_118;
    }

    *(v10 + 12) &= ~0x800u;
    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = *(v20 + 8);
      v22 = v21 == v4 ? *(v10 + 48) : 0;
      if (v21 == v4)
      {
LABEL_45:
        v27 = *(a1 + 1);
        v28 = *(v27 + 272);
        if (*(v22 + 15) == v28)
        {
          v29 = *(v27 + 288);
          if (*(v22 + 16) == v29)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v29 = *(v27 + 288);
        }

        if ((*(v10 + 492) != v28 || *(v10 + 496) != v29) && *(v10 + 488) == v28)
        {
          v31 = *(v10 + 72);
          v30 = *(v10 + 80);
          if (v30 != v31)
          {
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 6);
            v33 = v32 - 1;
            v34 = (v31 + ((v30 - v31) >> 6 << 6) - 192);
            v35 = -1;
            do
            {
              if (*v34 == *(v9 + 24) && *(v9 + 32) == v34[1] && v34[2] == *(v9 + 40))
              {
                v35 = v33;
              }

              --v33;
              v34 -= 24;
            }

            while (v33 != -1);
            if (v35 < v32)
            {
              v586 = v8;
              v599 = v22;
              v36 = 0;
              *(v10 + 492) = v28;
              *(v10 + 496) = v29;
              *(v10 + 504) = v35;
              v37 = (v31 + 192 * v35);
              *(v10 + 512) = v37[2];
              v38 = v37[3];
              *(v10 + 528) = v38;
              v597 = v37[4];
              v39 = 152;
              v38.i32[0] = 2139095040;
              v600 = v38;
              v603 = v37[5];
              v606 = v38;
              v609 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
              v612 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
              while (1)
              {
                v40 = (v31 + v39);
                v41 = vcvt_f32_f64(*(v31 + v39 - 120));
                v42 = vadd_f32(vcvt_f32_f64(*(v31 + v39 - 104)), v41);
                *(v40 - 3) = *&v41;
                *(v40 - 2) = __PAIR64__(v41.u32[1], v42.u32[0]);
                v41.i32[1] = v42.i32[1];
                *(v40 - 1) = *&v42;
                *v40 = *&v41;
                if (v35 != v36)
                {
                  break;
                }

LABEL_88:
                ++v36;
                v39 += 192;
                if (v36 >= 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 6))
                {
                  v78 = *(v10 + 624);
                  if (v78)
                  {
                    v79 = *(v78 + 16);
                    if (v79)
                    {
                      v80 = 0;
                      v81 = v78 + 24;
                      while (1)
                      {
                        v82 = *(v81 + 8 * v80);
                        if (*(v82 + 24) == 280)
                        {
                          break;
                        }

                        if (v79 == ++v80)
                        {
                          goto LABEL_111;
                        }
                      }

                      v83 = *(v82 + 40);
                      v678 = 0u;
                      v677 = 0u;
                      CA::Render::KeyValueArray::get_rect_key(&v677, v83, 0x165, 0, 0);
                      v84 = *&v678;
                      if (*&v678 >= *(&v678 + 1))
                      {
                        v84 = *(&v678 + 1);
                      }

                      if (v84 > 0.0)
                      {
                        v85 = CA::Render::Array::new_array(v83[4], v83 + 6, 1, v83[3] >> 8);
                        buf[0] = v597;
                        buf[1] = vaddq_f64(v603, v597);
                        v87 = CA::Render::Vector::new_vector(4, buf, v86);
                        CA::Render::KeyValueArray::set_key(v85, 357, v87);
                        if (atomic_fetch_add(v87 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v87 + 16))(v87);
                        }

                        v88 = CA::Render::Array::new_array(*(*(v10 + 624) + 16), (*(v10 + 624) + 24), 1, *(*(v10 + 624) + 12) >> 8);
                        v89 = *(v10 + 624);
                        *(v10 + 624) = v88;
                        if (v89 && atomic_fetch_add(v89 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v89 + 16))(v89);
                        }

                        *(*(v10 + 624) + 8 * v80 + 24) = CA::Render::Filter::copy_with_inputs(v82, v85);
                        if (atomic_fetch_add(v85 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v85 + 16))(v85);
                        }

                        if (atomic_fetch_add((v82 + 8), 0xFFFFFFFF) == 1)
                        {
                          (*(*v82 + 16))(v82);
                        }
                      }
                    }
                  }

LABEL_111:
                  if ((*(v599 + 224) & 8) != 0)
                  {
                    goto LABEL_118;
                  }

                  v90 = CA::Transform::operator=(v599 + 72, *(v617 + 24));
                  v91 = *(a2 + 2);
                  v92 = *(v91 + 56);
                  if (v92)
                  {
                    v664 = 0;
                    v663 = 0u;
                    v662 = 0u;
                    v661 = 0u;
                    v660 = 0u;
                    memset(buf, 0, sizeof(buf));
                    CA::Transform::set(buf, v92, 1);
                    if ((v664 & 0x10) != 0)
                    {
                      buf[1].i64[0] = 0;
                      buf[3].i64[0] = 0;
                      *&v660 = 0x3FF0000000000000;
                      *&v662 = 0;
                    }

                    v95.f64[0] = CA::Transform::concat_left((v599 + 72), buf, v93, v94);
                  }

                  else
                  {
                    v90.n128_u64[0] = *(v91 + 64);
                    v95 = CA::Transform::translate((v599 + 72), v90, *(v91 + 72), 0.0);
                  }

                  if (*(v621 + 181))
                  {
                    goto LABEL_118;
                  }

                  *(v599 + 2) = (*(*v4 + 144))(v4, v95);
                  v687 = 0;
                  memset(v686, 0, sizeof(v686));
                  v685 = 0u;
                  v684 = 0u;
                  v683 = 0u;
                  v682 = 0u;
                  v681 = 0u;
                  v680 = 0u;
                  v679 = 0u;
                  v678 = 0u;
                  v677 = 0u;
                  v649 = 0u;
                  v650 = 0u;
                  v96 = *(v10 + 632);
                  v97 = *(v10 + 656);
                  v622 = *(v10 + 640);
                  v646 = v622;
                  v613 = v97;
                  v647 = v97;
                  v648 = 0u;
                  v645 = 0;
                  v595 = v96;
                  if (v96)
                  {
                  }

                  else
                  {
                  }

                  v100 = v98;
                  if (v98)
                  {
                    v101 = *(a1 + 1);
                    *(v599 + 15) = *(v101 + 272);
                    *(v599 + 16) = *(v101 + 288);
                    v102 = fmax(fmin(*(v10 + 64), 1.0), 0.01);
                    *(v599 + 6) = v102;
                    v103 = *(v4 + 896);
                    if (v103)
                    {
                      *(v599 + 6) = 1.0 / v103;
                    }

                    memset(v644, 0, sizeof(v644));
                    v643 = 0;
                    v642 = 0;
                    v641 = 0;
                    v104 = v641;
                    *(v599 + 224) = *(v599 + 224) & 0xEF | (16 * v641);
                    v105 = *(v10 + 528);
                    v639 = *(v10 + 512);
                    v640 = v105;
                    CA::Rect::apply_transform(&v639, (v599 + 72), v106);
                    if (v595)
                    {
                      CA::BoundsImpl::Union(&v639, v622, v613);
                      CA::Render::MeshTransform::apply_rect(buf, v595, v465, v639, v640, v639, v640);
                      v467 = buf[0];
                      v468 = buf[1];
                      v639 = buf[0];
                      v640 = buf[1];
                      v577 = v617 + 80;
                      v469 = *(a1 + 1);
                      v470 = *(v469 + 208);
                      v471 = *(v469 + 212);
                      if (v470 <= v471)
                      {
                        v472 = *(v469 + 212);
                      }

                      else
                      {
                        v472 = *(v469 + 208);
                      }

                      v467.i32[0] = 1073741822;
                      v468.i32[0] = v472;
                      v473 = vdupq_lane_s32(*&vcgtq_s32(v468, v467), 0);
                      v474 = *(v469 + 200);
                      v475.i64[0] = v474;
                      v475.i64[1] = SHIDWORD(v474);
                      v476 = vbslq_s8(v473, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v475));
                      v477 = v470;
                      v478 = v471;
                      if (v472 > 1073741822)
                      {
                        v477 = 1.79769313e308;
                        v478 = 1.79769313e308;
                      }

                      v637 = v476;
                      v638.f64[0] = v477;
                      v638.f64[1] = v478;
                      buf[0] = v648;
                      buf[1] = v649;
                      buf[2] = v650;
                      CA::Mat2Impl::mat2_invert(buf, buf[0].i64, v466);
                      CA::Mat2Impl::mat2_apply_to_rect(buf, &v637, v479);
                      v120 = v637;
                    }

                    else
                    {
                      v109.i32[1] = 0;
                      v109.i64[1] = 0;
                      v637 = 0u;
                      v638 = 0u;
                      v577 = v617 + 80;
                      if (*(v617 + 81))
                      {
                        v122 = *(a1 + 1);
                        v115 = *(v122 + 208);
                        v116 = *(v122 + 212);
                        if (v115 <= v116)
                        {
                          v123 = *(v122 + 212);
                        }

                        else
                        {
                          v123 = *(v122 + 208);
                        }

                        v118 = v123 <= 1073741822;
                        v109.i32[0] = 1073741822;
                        v107.i32[0] = v123;
                        v124 = vdupq_lane_s32(*&vcgtq_s32(v107, v109), 0);
                        v125 = *(v122 + 200);
                        v126.i64[0] = v125;
                        v126.i64[1] = SHIDWORD(v125);
                        v120 = vbslq_s8(v124, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v126));
                      }

                      else
                      {
                        v110 = v677;
                        v111 = v677.i32[3];
                        if (v677.i32[2] <= v677.i32[3])
                        {
                          v112 = v677.i32[3];
                        }

                        else
                        {
                          v112 = v677.i32[2];
                        }

                        if (v677.i32[2] < v677.i32[3])
                        {
                          v111 = v677.i32[2];
                        }

                        if (v112 <= 1073741822 && v111 >= 1)
                        {
                          v113.i64[0] = 0x100000001;
                          v113.i64[1] = 0x100000001;
                          v108.i64[0] = vaddq_s32(v677, v113).u64[0];
                          v108.u64[1] = vadd_s32(*&vextq_s8(v677, v677, 8uLL), 0x100000001);
                          v114 = vclez_s32(v108.u64[1]);
                          v107 = v108.u64[0];
                          v110 = vbslq_s8(vmovl_s16(vdup_lane_s16(vorr_s8(v114, vdup_lane_s32(v114, 1)), 0)), v108.u64[0], v108);
                        }

                        v115 = v110.i32[2];
                        v116 = v110.i32[3];
                        if (v110.i32[2] <= v110.i32[3])
                        {
                          v117 = v110.i32[3];
                        }

                        else
                        {
                          v117 = v110.i32[2];
                        }

                        v107.i32[0] = 1073741822;
                        v108.i32[0] = v117;
                        v118 = v117 <= 1073741822;
                        v119.i64[0] = v110.i32[0];
                        v119.i64[1] = v110.i32[1];
                        v120 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v108, v107), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v119));
                      }

                      v127 = v115;
                      v128 = v116;
                      if (!v118)
                      {
                        v127 = 1.79769313e308;
                      }

                      v637 = v120;
                      if (!v118)
                      {
                        v128 = 1.79769313e308;
                      }

                      v638.f64[0] = v127;
                      v638.f64[1] = v128;
                    }

                    v636[0] = v639;
                    v636[1] = v640;
                    CA::BoundsImpl::intersect(&v639, v120, v638);
                    if (v104)
                    {
                      v590 = v639;
                    }

                    else
                    {
                      *v130.i8 = CA::OGL::Context::raster_round_rect(buf, v4, v639.f64);
                      if (buf[0].i32[2] <= buf[0].i32[3])
                      {
                        v132 = buf[0].i32[3];
                      }

                      else
                      {
                        v132 = buf[0].i32[2];
                      }

                      v130.i32[0] = 1073741822;
                      v131.i32[0] = v132;
                      v133.i64[0] = buf[0].i32[0];
                      v133.i64[1] = buf[0].i32[1];
                      v134 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v131, v130), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v133));
                      v135 = buf[0].i32[2];
                      v136 = buf[0].i32[3];
                      if (v132 > 1073741822)
                      {
                        v135 = 1.79769313e308;
                      }

                      v590 = v134;
                      v639 = v134;
                      if (v132 > 1073741822)
                      {
                        v136 = 1.79769313e308;
                      }

                      v640.f64[0] = v135;
                      v640.f64[1] = v136;
                    }

                    v137 = v640;
                    v138 = *(v599 + 6);
                    v139 = v138;
                    if (v138 != 1.0 && v640.f64[0] < 1.79769313e308)
                    {
                      v639.f64[0] = v139 * v590.f64[0];
                      v640.f64[0] = v640.f64[0] * v139;
                    }

                    if (v138 != 1.0 && v137.f64[1] < 1.79769313e308)
                    {
                      v639.f64[1] = v590.f64[1] * v139;
                      v640.f64[1] = v137.f64[1] * v139;
                    }

                    v574 = v137.f64[1];
                    v140 = v640;
                    v587 = v137;
                    if (v104)
                    {
                      v141 = v640.f64[1];
                      v142 = v640.f64[0] <= v640.f64[1] ? v640.f64[1] : v640.f64[0];
                      if (v142 < 1.79769313e308)
                      {
                        if (v640.f64[0] < v640.f64[1])
                        {
                          v141 = v640.f64[0];
                        }

                        if (v141 > 0.0)
                        {
                          v143 = vrndpq_f64(v639);
                          v140 = vsubq_f64(vrndmq_f64(vaddq_f64(v639, v640)), v143);
                          v639 = v143;
                          v640 = v140;
                        }
                      }
                    }

                    v635 = 0uLL;
                    CA::Bounds::set_exterior(&v635, v129, v639, v140);
                    v144 = *(a2 + 4);
                    v145 = v144 & 0x2000013C0;
                    v147 = (v144 & 0x20) == 0 || (v146 = *(*(a2 + 3) + 136)) == 0 || *(v146 + 80) == 0;
                    v148 = v145 == 0;
                    has_consistent_background_color = CA::Render::BackdropGroup::has_consistent_background_color(*(v10 + 72), *(v10 + 80));
                    v607 = has_consistent_background_color & v147;
                    v155 = v148 & has_consistent_background_color & v147 | v149;
                    if (v155)
                    {
                      v156 = v642;
                    }

                    else
                    {
                      v156 = 0;
                      LOBYTE(v642) = 0;
                    }

                    v157 = v599;
                    *(v599 + 224) = *(v599 + 224) & 0xFE | v156;
                    v158 = *(v586 + 12);
                    v604 = v100;
                    if (v155 & 1) != 0 && HIBYTE(v642) == 1 && (v156)
                    {
                      v159 = v635.i32[2];
                      if (v635.i32[2] <= v635.i32[3])
                      {
                        v160 = v635.i32[3];
                      }

                      else
                      {
                        v160 = v635.i32[2];
                      }

                      if (v635.i32[2] >= v635.i32[3])
                      {
                        v159 = v635.i32[3];
                      }

                      v161 = 1;
                      if (v160 <= 1073741822 && v159 >= 1)
                      {
                        v153.i64[1] = v635.i64[1];
                        v635 = vaddq_s32(v635, xmmword_183E20FD0);
                        v162 = vclez_s32(*&vextq_s8(v635, v635, 8uLL));
                        if (vorr_s8(v162, vdup_lane_s32(v162, 1)).u32[0])
                        {
                          v635.i64[1] = 0;
                        }

                        v157 = v599;
                      }
                    }

                    else
                    {
                      v161 = 0;
                    }

                    v163 = v635;
                    v634 = v635;
                    v164 = *(v586 + 12);
                    v623 = v635;
                    if ((v164 & 0x10000) != 0)
                    {
                      CA::OGL::Context::raster_round_rect(buf, v4, v636);
                      v482.i32[1] = buf[0].i32[3];
                      v483 = buf[0].i32[3];
                      v484.i64[0] = buf[0].i32[0];
                      v484.i64[1] = buf[0].i32[1];
                      v485 = v484;
                      v484.i64[0] = buf[0].i32[2];
                      v484.i64[1] = buf[0].i32[3];
                      v486 = v484;
                      if (buf[0].i32[2] > buf[0].i32[3])
                      {
                        v483 = buf[0].i32[2];
                      }

                      v482.i32[0] = v483;
                      v481.i32[0] = 1073741822;
                      v487 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v482, v481), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v485));
                      v488 = vcvtq_f64_s64(v486);
                      v489 = vdup_n_s32(v483 > 1073741822);
                      v490.i64[0] = v489.u32[0];
                      v490.i64[1] = v489.u32[1];
                      v491 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v490, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v488);
                      v492 = *(v157 + 6);
                      v493 = v492;
                      v494 = *v491.i64 >= 1.79769313e308 || v492 == 1.0;
                      v495.i64[1] = v487.i64[1];
                      v496.i64[1] = v491.i64[1];
                      if (v494)
                      {
                        v497 = 0;
                      }

                      else
                      {
                        v497 = -1;
                      }

                      v498 = vdupq_n_s64(v497);
                      *v495.i64 = v493 * *v487.i64;
                      v499 = vbslq_s8(v498, v495, v487);
                      *v496.i64 = v493 * *v491.i64;
                      v500 = vbslq_s8(v498, v496, v491);
                      if (v492 != 1.0 && v500.f64[1] < 1.79769313e308)
                      {
                        v499.f64[1] = vmuld_lane_f64(v493, v499, 1);
                        v500.f64[1] = v500.f64[1] * v493;
                      }

                      CA::Bounds::set_exterior(&v634, v480, v499, v500);
                      if (v161)
                      {
                        v501 = v634.i32[3];
                        if (v634.i32[2] <= v634.i32[3])
                        {
                          v502 = v634.i32[3];
                        }

                        else
                        {
                          v502 = v634.i32[2];
                        }

                        if (v634.i32[2] < v634.i32[3])
                        {
                          v501 = v634.i32[2];
                        }

                        if (v502 <= 1073741822 && v501 >= 1)
                        {
                          v153.i64[1] = v634.i64[1];
                          v634 = vaddq_s32(v634, xmmword_183E20FD0);
                          v503 = vclez_s32(*&vextq_s8(v634, v634, 8uLL));
                          if (vorr_s8(v503, vdup_lane_s32(v503, 1)).u32[0])
                          {
                            v634.i64[1] = 0;
                          }
                        }
                      }

                      v163 = v623;
                      if ((*(v586 + 12) & 0x20000) != 0)
                      {
                        goto LABEL_524;
                      }
                    }

                    else
                    {
                      if ((v164 & 0x20000) == 0)
                      {
                        goto LABEL_201;
                      }

LABEL_524:
                      v504 = *(a1 + 1);
                      v505 = *(v504 + 200);
                      v153.i64[0] = *(v504 + 208);
                      v506 = v153.i32[1];
                      v507.i64[0] = v505;
                      v507.i64[1] = SHIDWORD(v505);
                      v508 = v507;
                      v507.i64[0] = v153.i32[0];
                      v507.i64[1] = v153.i32[1];
                      v509 = v507;
                      if (v153.i32[0] > v153.i32[1])
                      {
                        v506 = v153.i32[0];
                      }

                      v153.i32[0] = v506;
                      v154.i32[0] = 1073741822;
                      v510 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v153, v154), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v508));
                      v511 = vcvtq_f64_s64(v509);
                      v512 = vdup_n_s32(v506 > 1073741822);
                      v513.i64[0] = v512.u32[0];
                      v513.i64[1] = v512.u32[1];
                      v514 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v513, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v511);
                      v515 = *(v599 + 6);
                      v516 = v515;
                      v517 = *v514.i64 >= 1.79769313e308 || v515 == 1.0;
                      v518.i64[1] = v510.i64[1];
                      v519.i64[1] = v514.i64[1];
                      if (v517)
                      {
                        v520 = 0;
                      }

                      else
                      {
                        v520 = -1;
                      }

                      v521 = vdupq_n_s64(v520);
                      *v518.i64 = v516 * *v510.i64;
                      v522 = vbslq_s8(v521, v518, v510);
                      *v519.i64 = v516 * *v514.i64;
                      v523 = vbslq_s8(v521, v519, v514);
                      if (v515 != 1.0 && v523.f64[1] < 1.79769313e308)
                      {
                        v522.f64[1] = vmuld_lane_f64(v516, v522, 1);
                        v523.f64[1] = v523.f64[1] * v516;
                      }

                      CA::Bounds::set_exterior(&v634, v151, v522, v523);
                      v163 = v623;
                      if (v161)
                      {
                        v524 = v634.i32[3];
                        if (v634.i32[2] <= v634.i32[3])
                        {
                          v525 = v634.i32[3];
                        }

                        else
                        {
                          v525 = v634.i32[2];
                        }

                        if (v634.i32[2] < v634.i32[3])
                        {
                          v524 = v634.i32[2];
                        }

                        if (v525 <= 1073741822 && v524 >= 1)
                        {
                          v634 = vaddq_s32(v634, xmmword_183E20FD0);
                          v526 = vclez_s32(*&vextq_s8(v634, v634, 8uLL));
                          if (vorr_s8(v526, vdup_lane_s32(v526, 1)).u32[0])
                          {
                            v634.i64[1] = 0;
                          }
                        }
                      }
                    }

LABEL_201:
                    v165 = v163.i32[2];
                    v166 = v163.i32[3];
                    v167 = *(v599 + 4);
                    if (v167 && *(v167 + 56) != v163.i64[1])
                    {
                      v163.i64[0] = v623.i64[0];
                    }

                    if (v165 >= v166)
                    {
                      v168 = v166;
                    }

                    else
                    {
                      v168 = v165;
                    }

                    if (v168 < 1)
                    {
                      goto LABEL_118;
                    }

                    v576 = v158 & 0x2000;
                    v169 = BYTE9(xmmword_1ED4E980C);
                    v170 = *(*(a1 + 1) + 304) & 0x38000;
                    v171 = v599;
                    v172 = *(v599 + 4);
                    if (v172)
                    {
                      if ((((v170 != 0) ^ *(v10 + 688)) & 1) != 0 || (v173 = *(v172 + 72), v174 = (*(*v4 + 144))(v4), v163.i64[0] = v623.i64[0], v173 != v174))
                      {
                        v163.i64[0] = v623.i64[0];
                      }
                    }

                    if (v170)
                    {
                      v175 = 16778271;
                    }

                    else
                    {
                      v175 = 16778255;
                    }

                    v176 = v175 | (8 * v576);
                    v177 = *(v10 + 624);
                    if (v177)
                    {
                      v178 = *(v177 + 16);
                      if (v178)
                      {
                        v179 = 8 * v178;
                        v180 = v177 + 24;
                        while (*(*v180 + 24) != 57)
                        {
                          v180 += 8;
                          v179 -= 8;
                          if (!v179)
                          {
                            goto LABEL_222;
                          }
                        }

                        v176 = v176 | 0x40040;
                      }
                    }

LABEL_222:
                    v181 = *(v599 + 4);
                    if (v181)
                    {
                      {
                        if (*(v181 + 48) != v163.i64[0])
                        {
                          *(v181 + 48) = v163.i64[0];
                          v169 = 1;
                        }

                        goto LABEL_238;
                      }
                    }

                    else
                    {
                      *(v599 + 14) = v176;
                    }

                    v182 = (*(*v4 + 696))(v4, 1, &v634, v176, @"image-capture-backdrop");
                    *(v599 + 4) = v182;
                    if (!v182)
                    {
                      goto LABEL_118;
                    }

                    v183 = *(a2 + 3);
                    if (v183)
                    {
                      v185 = CA::Render::Layer::process_id(*(v183 + 152));
                      v186 = *(a2 + 3);
                      if (v186)
                      {
                        layer_resource_text = CA::Render::create_layer_resource_text(v186, v184);
LABEL_235:
                        (*(*v4 + 888))(v4, *(v599 + 4), 0, v185, @"image-capture-backdrop", layer_resource_text);
                        *(v10 + 688) = v170 != 0;
                        (*(*v4 + 760))(v4, *(v599 + 4), 16, 16);
                        *(*(v599 + 4) + 48) = v623;
                        if (layer_resource_text)
                        {
                          CFRelease(layer_resource_text);
                        }

                        v169 = 1;
                        v171 = v599;
LABEL_238:
                        v188 = *(a2 + 3);
                        v189 = v188[2].f32[0];
                        v667 = vcvt_f16_f32(v188[1]);
                        CA::OGL::colormatched_layer_color(buf, a1, a2, &v667, v189);
                        v191 = *buf[0].i8;
                        v572 = v161;
                        if (v607)
                        {
                          v192 = *(v617 + 32);
                          if (*&v192 != 0x3C003C003C003C00)
                          {
                            v191 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v192), vcvtq_f32_f16(*buf[0].i8)));
                          }

                          v601 = v191;
                          if (v169)
                          {
                            *(v171 + 224) |= 2u;
                            v676 = 0u;
                            v675 = 0u;
                            v674 = 0u;
                            if ((*(v577 + 1) & 1) == 0)
                            {
                              LOBYTE(v169) = 1;
                              goto LABEL_251;
                            }

LABEL_252:
                            v193 = v587;
LABEL_253:
                            v194 = 584;
                            if (v169)
                            {
                              v194 = 544;
                            }

LABEL_257:
                            v195 = *(v10 + v194);
                            v196 = *(v10 + 544);
                            if (v196)
                            {
                              buf[0] = 0uLL;
                              CA::Bounds::set_exterior(buf, v190, v590, v193);
                              v197 = CA::Shape::intersect(v196, buf);
                              v171 = v599;
                              goto LABEL_263;
                            }

                            v171 = v599;
LABEL_266:
                            v197 = 0;
                            LOBYTE(v642) = 0;
                            *(v171 + 224) &= ~1u;
                            v199 = 1;
                            goto LABEL_267;
                          }

                          v676 = 0u;
                          v675 = 0u;
                          v674 = 0u;
                          v193 = v587;
                          if ((*v577 & 0x100) != 0)
                          {
                            goto LABEL_253;
                          }

LABEL_261:
                          LOBYTE(v169) = 0;
                          if (!*(v10 + 584))
                          {
                            v195 = 0;
                            goto LABEL_266;
                          }
                        }

                        else
                        {
                          v601 = *buf[0].i8;
                          if ((*(v171 + 224) & 2) != 0)
                          {
                            *(v171 + 224) &= ~2u;
                            v676 = 0u;
                            v675 = 0u;
                            v674 = 0u;
                            LOBYTE(v169) = 1;
                            if (*(v577 + 1))
                            {
                              v194 = 544;
                              v193 = v587;
                              goto LABEL_257;
                            }
                          }

                          else
                          {
                            v676 = 0u;
                            v675 = 0u;
                            v674 = 0u;
                            if ((*v577 & 0x100) != 0)
                            {
                              goto LABEL_252;
                            }

                            if ((v169 & 1) == 0)
                            {
                              v171 = v599;
                              v193 = v587;
                              goto LABEL_261;
                            }

                            LOBYTE(v169) = 1;
                            v171 = v599;
                          }

LABEL_251:
                          v193 = v587;
                        }

                        buf[0] = 0uLL;
                        CA::Bounds::set_exterior(buf, v190, v590, v193);
                        v195 = &v674;
                        CA::Shape::operator=(&v674, buf[0].i32);
                        v197 = CA::Shape::new_shape(buf, v198);
LABEL_263:
                        if (!v197)
                        {
                          goto LABEL_266;
                        }

                        v199 = 0;
LABEL_267:
                        if (v195)
                        {
                          if ((v195 & 1) == 0)
                          {
                            if (*(v195 + 4) == 6)
                            {
                              goto LABEL_270;
                            }

LABEL_272:
                            v583 = v195;
                            v569 = v199;
                            v575 = v197;
                            v633 = 0;
                            v632 = 0;
                            v201.i32[1] = 0;
                            v201.i64[1] = 0;
                            v673 = 0u;
                            v670 = 0x3C003C003C003C00;
                            v672 = 0u;
                            v671 = 0u;
                            *&v673 = 0;
                            v667 = 0;
                            v669 = 0u;
                            DWORD2(v672) = 1065353216;
                            WORD4(v673) = 1025;
                            v668 = &CA::Shape::_infinite_shape;
                            v631 = 0uLL;
                            if (*(v577 + 1))
                            {
                              v633 = 1;
                              v632 = 1;
                              v630 = 0uLL;
                              v666 = 0;
                              v201.i32[0] = 1073741822;
                              v614 = v201;
                              v665 = v195;
                              v610 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                              while (CA::ShapeIterator::iterate(&v665, &v631))
                              {
                                if (SDWORD2(v631) <= SHIDWORD(v631))
                                {
                                  v203 = HIDWORD(v631);
                                }

                                else
                                {
                                  v203 = DWORD2(v631);
                                }

                                v202.i32[0] = v203;
                                v204.i64[0] = v631;
                                v204.i64[1] = SDWORD1(v631);
                                v205 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v202, v614), 0), v610, vcvtq_f64_s64(v204));
                                v206 = SDWORD2(v631);
                                v207 = SHIDWORD(v631);
                                if (v203 > 1073741822)
                                {
                                  v206 = 1.79769313e308;
                                  v207 = 1.79769313e308;
                                }

                                buf[0] = v205;
                                *buf[1].i64 = v206;
                                *&buf[1].i64[1] = v207;
                                v208 = -v643.f32[0];
                                v209 = -v643.f32[1];
                                CA::BoundsImpl::inset(buf, v208, v209);
                                v618 = buf[1];
                                v624 = buf[0];
                                v651 = buf[0];
                                v652 = buf[1];
                                CA::BoundsImpl::intersect(&v651, v590, v587);
                                v210 = *(v171 + 6);
                                if (v210 != 1.0)
                                {
                                  v211 = v210;
                                  if (v652.f64[0] < 1.79769313e308)
                                  {
                                    v651.f64[0] = v651.f64[0] * v211;
                                    v652.f64[0] = v652.f64[0] * v211;
                                  }

                                  if (v652.f64[1] < 1.79769313e308)
                                  {
                                    v651.f64[1] = v651.f64[1] * v211;
                                    v652.f64[1] = v652.f64[1] * v211;
                                  }
                                }

                                *v628 = v624;
                                v629 = v618;
                                CA::BoundsImpl::inset(v628, v208, v209);
                                CA::BoundsImpl::intersect(v628, v590, v587);
                                v213 = *(v171 + 6);
                                if (v213 != 1.0)
                                {
                                  v214 = v213;
                                  if (v629.f64[0] < 1.79769313e308)
                                  {
                                    *v628 = *v628 * v214;
                                    v629.f64[0] = v629.f64[0] * v214;
                                  }

                                  if (v629.f64[1] < 1.79769313e308)
                                  {
                                    *&v628[1] = *&v628[1] * v214;
                                    v629.f64[1] = v629.f64[1] * v214;
                                  }
                                }

                                CA::Bounds::set_exterior(&v630, v212, v651, v652);
                                CA::shape_union(&v633, &v630, v215);
                                CA::Bounds::set_exterior(&v630, v216, *v628, v629);
                                CA::shape_union(&v632, &v630, v217);
                              }

                              v202.i32[0] = *(v171 + 6);
                              v218 = CA::Shape::scale_and_dilate(v575, *v202.i8, *v202.i32, 1u, 1u);
                              CA::shape_intersect(&v633, v218, v219);
                              CA::shape_intersect(&v632, v218, v220);
                              v221 = v218;
                              v171 = v599;
                              CA::Shape::unref(v221);
                            }

                            v667 = CA::OGL::Context::set_gstate(v4, &v667);
                            CA::OGL::Context::push_surface(v4, *(v171 + 4), *(*(v171 + 4) + 144) >= 0, 8, 0);
                            v580 = *(v171 + 6) != 1.0;
                            v231 = *(v4 + 16);
                            v232 = *(v231 + 497);
                            v233 = *(v4 + 64);
                            v234 = *(v231 + 496);
                            v630.i8[0] = 0;
                            *(v231 + 497) = v232 & 0xFE;
                            v235 = *(v4 + 600);
                            v567 = v234;
                            v568 = v232;
                            v566 = v233;
                            if (!v235 || (*(*(a1 + 1) + 1376) & 1) != 0 || (v645 & 1) != 0)
                            {
LABEL_295:
                              v570 = 0;
                              goto LABEL_296;
                            }

                            if (v595)
                            {
                              *v628 = 0u;
                              v629 = 0u;
                              v229.i32[1] = HIDWORD(v629.f64[1]);
                              v230.i64[0] = *&v629.f64[0];
                              if (v629.f64[0] >= v629.f64[1])
                              {
                                *v230.i64 = v629.f64[1];
                              }

                              if (*v230.i64 <= 0.0)
                              {
                                goto LABEL_295;
                              }

                              v545 = *(v4 + 672);
                              do
                              {
                                v546 = v545;
                                v545 = *(v545 + 8);
                              }

                              while (v545);
                              *&v628[1] = *(v546 + 60) - (*&v628[1] + v629.f64[1]);
                              v547.f32[0] = (*(*v4 + 96))(v4);
                              v547.i32[1] = v549;
                              v550 = vsubq_f64(*v628, vcvtq_f64_f32(v547));
                              *v628 = v550;
                              v551 = *(*(a1 + 1) + 208);
                              v665 = *(*(a1 + 1) + 200);
                              if (SDWORD2(v665) <= SHIDWORD(v665))
                              {
                                v551 = HIDWORD(v665);
                              }

                              v550.i32[0] = 1073741822;
                              v548.i32[0] = v551;
                              v552.i64[0] = v665;
                              v552.i64[1] = SDWORD1(v665);
                              v553 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v548, v550), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v552));
                              v552.i64[0] = SDWORD2(v665);
                              v552.i64[1] = SHIDWORD(v665);
                              v554 = vcvtq_f64_s64(v552);
                              v555 = vdup_n_s32(v551 > 1073741822);
                              v552.i64[0] = v555.u32[0];
                              v552.i64[1] = v555.u32[1];
                              if (!CA::BoundsImpl::intersect(v628, v553, vbslq_s8(vcltzq_s64(vshlq_n_s64(v552, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v554)))
                              {
                                goto LABEL_295;
                              }

                              buf[0] = 0uLL;
                              CA::Bounds::set_exterior(buf, v222, *v628, v629);
                              v570 = (*(*v4 + 696))(v4, 1, buf, v176 & 0xFFFFFBFF, @"capture-backdrop-mesh-detached-surface");
                              if (!v570)
                              {
                                goto LABEL_295;
                              }

                              CA::OGL::Context::push_surface(v4, v570, 1u, 8, 0);
                              v652 = 0u;
                              v653 = 0u;
                              v651 = 0u;
                              CA::Shape::operator=(&v651, &v665);
                              buf[1].i64[0] = 1065353216;
                              buf[3] = 0u;
                              *(&buf[1] + 8) = *v628;
                              buf[0].i64[0] = v4;
                              buf[0].i64[1] = &v651;
                              *(&buf[2] + 8) = v629;
                              buf[4].i64[0] = &v630;
                              CA::OGL::Context::pop_surface(v4, v556, v557, v558, v559, v560, v561, v562);
                              if (v630.u8[0] == 1)
                              {
                                *(v686 + v604) = v570;
                                v229 = *(v570 + 48);
                                *(&v677 + v604++) = v229;
                                v630.i8[0] = 0;
                              }

LABEL_296:
                              v236 = v587;
                              v237 = v195;
                            }

                            else
                            {
                              buf[4].i64[0] = 0;
                              memset(&buf[2], 0, 32);
                              buf[1] = 0u;
                              buf[0].i64[0] = v4;
                              v237 = v195;
                              buf[0].i64[1] = v195;
                              buf[1].i32[0] = *(v599 + 6);
                              *(&buf[1] + 8) = v590;
                              *(&buf[2] + 8) = v587;
                              buf[4].i64[0] = &v630;
                              v236 = v587;
                              v570 = 0;
                            }

                            *(v4 + 64) = 0;
                            v238 = v599;
                            if (v630.u8[0] == 1 && v642 == 1 && (v642 & 0x100) == 0)
                            {
                              *(v599 + 224) &= ~1u;
                            }

                            if (v169)
                            {
                              v239.i64[0] = v601.u16[3];
                              v239.i64[1] = v601.u16[1];
                              v230.i64[0] = 0xFFFFLL;
                              v230.i64[1] = 0xFFFFLL;
                              v229 = vshlq_u64(vandq_s8(v239, v230), xmmword_183E21730);
                              v240 = *(v599 + 224);
                              if (!(v229.i64[0] | (v601.u16[2] << 32) | v601.u16[0] | v229.i64[1]))
                              {
                                if (v607)
                                {
                                  v241 = 2;
                                }

                                else
                                {
                                  v241 = 0;
                                }

                                v240 = v240 & 0xFD | v241;
                                *(v599 + 224) = v240;
                              }
                            }

                            else
                            {
                              v240 = *(v599 + 224);
                            }

                            v229.i32[0] = 0;
                            v230.i32[0] = v240 & 2;
                            *v229.i8 = vdup_lane_s8(vceq_s8(*v230.i8, *v229.i8), 0);
                            if (v576)
                            {
                              *(*(v4 + 16) + 497) |= 2u;
                              *(*(v4 + 16) + 368) = 1065353216;
                            }

                            v571 = vbic_s8(v601, *v229.i8);
                            v579 = (v604 - 1);
                            if (v604 >= 1)
                            {
                              v591 = v4 + 1386;
                              _Q0 = vaddq_f64(v236, v590);
                              v589 = _Q0.f64[0];
                              v588 = v574 + v590.f64[1];
                              v243 = 0.5;
                              v244 = 1.0;
                              __asm { FMOV            V0.2S, #3.0 }

                              v573 = *&_Q0.f64[0];
                              LODWORD(_Q0.f64[0]) = 1073741822;
                              v582 = _Q0;
                              v581 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                              v248 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
                              v578 = v248;
                              v248.i64[0] = 134221314;
                              v565 = v248;
                              v249 = (v604 - 1);
                              do
                              {
                                if ((v630.i8[0] & 1) != 0 || v249 < v579)
                                {
                                  *(*(v4 + 16) + 497) |= 1u;
                                  *(*(v4 + 16) + 496) = 3;
                                }

                                v250 = *(v686 + v249);
                                if (v250)
                                {
                                  CA::OGL::Context::bind_surface(v4, *(v686 + v249), 0, v580, v580, -16.0);
                                }

                                else
                                {
                                  v253 = (*(*v4 + 1152))(v4);
                                  if (v253)
                                  {
                                    (*(*v253 + 1280))(v253, 0, v580, v580);
                                  }
                                }

                                v254 = *(v238 + 6);
                                if (v254 >= v243)
                                {
                                  *(*(v4 + 16) + 16) = 1;
                                }

                                else if (v254 >= 0.25)
                                {
                                  v258 = sqrtf(fminf((v254 * -4.0) + 2.0, v244));
                                  v259 = *(v4 + 16);
                                  *&v260 = -v258;
                                  v252.i64[0] = *(v259 + 96);
                                  *(&v260 + 1) = v258;
                                  v261 = vmulq_f32(vzip1q_s32(v252, vrev64q_s32(v252)), vdupq_lane_s64(v260, 0));
                                  *&v262 = v261.i64[0];
                                  *(&v262 + 1) = __PAIR64__(v261.u32[1], v261.u32[3]);
                                  v263 = vuzp1q_s32(v261, v261);
                                  v263.i32[2] = v261.i32[3];
                                  *(v259 + 16) = 27;
                                  *(v4 + 160) = v262;
                                  *(v4 + 176) = v263;
                                  *(v4 + 240) = CA::OGL::capture_backdrop(CA::OGL::Renderer &,CA::OGL::Layer const*)::weight;
                                }

                                else
                                {
                                  *(*(v4 + 16) + 16) = 29;
                                  *&v255 = vmul_n_f32(*(*(v4 + 16) + 96), v243 + (sqrtf(fminf((*(v238 + 6) * -8.0) + 2.0, v244)) * v243));
                                  *(v4 + 160) = v255;
                                  HIDWORD(v256) = DWORD1(v255);
                                  v257 = vmul_f32(*&v255, v573);
                                  DWORD1(v255) = v257.i32[1];
                                  LODWORD(v256) = v257.i32[0];
                                  *(&v255 + 1) = v256;
                                  *(v4 + 168) = v255;
                                  *(v4 + 184) = v257;
                                }

                                if (v642 == 1 && (v642 & 0x100) == 0)
                                {
                                  v264 = *(v238 + 6);
                                  buf[0].i64[0] = 0;
                                }

                                v596 = (&v677 + v249);
                                if ((*(v238 + 224) & 4) != 0)
                                {
                                  v265 = v643.f32[1];
                                  if (v643.f32[1] > 0.0)
                                  {
                                    buf[0] = 0uLL;
                                    CA::Bounds::set_exterior(buf, v251, v590, v587);
                                    v628[0] = CA::Shape::new_shape(buf, v266);
                                    v651 = 0uLL;
                                    CA::Shape::get_bounds(v628[0], &v651);
                                    if (SLODWORD(v651.f64[1]) <= SHIDWORD(v651.f64[1]))
                                    {
                                      v269 = HIDWORD(v651.f64[1]);
                                    }

                                    else
                                    {
                                      v269 = LODWORD(v651.f64[1]);
                                    }

                                    v268.i32[0] = v269;
                                    v270.i64[0] = SLODWORD(v651.f64[0]);
                                    v270.i64[1] = SHIDWORD(v651.f64[0]);
                                    v271 = SLODWORD(v651.f64[1]);
                                    v625 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v268, v582), 0), v581, vcvtq_f64_s64(v270));
                                    v272 = SHIDWORD(v651.f64[1]);
                                    if (v269 > 1073741822)
                                    {
                                      v271 = 1.79769313e308;
                                      v272 = 1.79769313e308;
                                    }

                                    v615 = v272;
                                    v619 = v271;
                                    CA::shape_intersect(v628, v596, v267);
                                    v273 = v628[0];
                                    v651 = 0uLL;
                                    CA::Shape::get_bounds(v628[0], &v651);
                                    v274.i32[1] = HIDWORD(v651.f64[1]);
                                    v275.i64[0] = SLODWORD(v651.f64[0]);
                                    v275.i64[1] = SHIDWORD(v651.f64[0]);
                                    v276 = vcvtq_f64_s64(v275);
                                    v277 = HIDWORD(v651.f64[1]);
                                    v275.i64[0] = SLODWORD(v651.f64[1]);
                                    v275.i64[1] = SHIDWORD(v651.f64[1]);
                                    v278 = v275;
                                    if (SLODWORD(v651.f64[1]) > SHIDWORD(v651.f64[1]))
                                    {
                                      v277 = LODWORD(v651.f64[1]);
                                    }

                                    v274.i32[0] = v277;
                                    v279 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v274, v582), 0), v581, v276);
                                    v280 = vcvtq_f64_s64(v278);
                                    v281 = vdup_n_s32(v277 > 1073741822);
                                    v282.i64[0] = v281.u32[0];
                                    v282.i64[1] = v281.u32[1];
                                    v283.f64[0] = v619;
                                    v283.f64[1] = v615;
                                    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v625, v279), vceqq_f64(v283, vbslq_s8(vcltzq_s64(vshlq_n_s64(v282, 0x3FuLL)), v578, v280)))))))
                                    {
                                      v284 = *(v599 + 6);
                                      v651.f64[0] = 0.0;
                                    }

                                    CA::Shape::unref(v273);
                                    v238 = v599;
                                    v237 = v583;
                                  }
                                }

                                v585 = v249;
                                if (BYTE11(xmmword_1ED4E97DC) == 1)
                                {
                                  v370 = *(v10 + 544);
                                  v651 = 0uLL;
                                  CA::Shape::get_bounds(v370, &v651);
                                  if (x_log_get_ogl(void)::once != -1)
                                  {
                                    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
                                  }

                                  v371 = x_log_get_ogl(void)::log;
                                  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v372 = *(v586 + 16);
                                    v373 = *(v599 + 15);
                                    v374 = *(v10 + 32);
                                    v375 = (v374 + 28);
                                    _ZF = v374 == 0;
                                    v376 = "";
                                    if (!_ZF)
                                    {
                                      v376 = v375;
                                    }

                                    v377 = 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 80) - *(v10 + 72)) >> 6);
                                    v378 = *(v599 + 4);
                                    v380 = v378[12];
                                    v379 = v378[13];
                                    v381 = v378[14];
                                    LODWORD(v378) = v378[15];
                                    v382 = *(v599 + 6);
                                    buf[0].i32[0] = v565.i32[0];
                                    *(buf[0].i64 + 4) = v372;
                                    buf[0].i16[6] = 1024;
                                    *(&buf[0].i32[3] + 2) = v373;
                                    buf[1].i16[1] = 2048;
                                    *(buf[1].i64 + 4) = v10;
                                    buf[1].i16[6] = 2080;
                                    *(&buf[1].i64[1] + 6) = v376;
                                    buf[2].i16[3] = 2048;
                                    buf[2].i64[1] = v377;
                                    buf[3].i16[0] = 1024;
                                    *(buf[3].i32 + 2) = LODWORD(v651.f64[0]);
                                    buf[3].i16[3] = 1024;
                                    buf[3].i32[2] = HIDWORD(v651.f64[0]);
                                    buf[3].i16[6] = 1024;
                                    *(&buf[3].i32[3] + 2) = LODWORD(v651.f64[1]);
                                    buf[4].i16[1] = 1024;
                                    buf[4].i32[1] = HIDWORD(v651.f64[1]);
                                    buf[4].i16[4] = 1024;
                                    *(&buf[4].i32[2] + 2) = v380;
                                    buf[4].i16[7] = 1024;
                                    LODWORD(v660) = v379;
                                    WORD2(v660) = 1024;
                                    *(&v660 + 6) = v381;
                                    WORD5(v660) = 1024;
                                    HIDWORD(v660) = v378;
                                    LOWORD(v661) = 2048;
                                    *(&v661 + 2) = v382;
                                    _os_log_impl(&dword_183AA6000, v371, OS_LOG_TYPE_DEFAULT, "backdrop 0x%lx; update %d; group %p %s size %zu; [%d %d; %d x %d]:\n  copying to surface [%d %d; %d x %d] scale %g:\n", buf, 0x6Au);
                                  }

                                  v238 = v599;
                                  v237 = v583;
                                  v244 = 1.0;
                                }

                                *(v4 + 144) = 0;
                                *(v4 + 112) = v591;
                                *(v4 + 120) = xmmword_183E20E50;
                                v651 = v237;
                                v652.f64[0] = 0.0;
                                v584 = v250;
                                if (v595)
                                {
                                  _ZF = 1;
                                }

                                else
                                {
                                  _ZF = v250 == 0;
                                }

                                v286 = _ZF;
                                v598 = v286;
                                while (CA::ShapeIterator::iterate(&v651, &v631))
                                {
                                  if (v598)
                                  {
LABEL_349:
                                    v287 = 6;
                                    if (!*(v4 + 108))
                                    {
                                      v287 = 4;
                                    }

                                    if ((*(v4 + 144) + 4) > *(v4 + 152) || (v288 = *(v4 + 128)) != 0 && *(v4 + 120) + v287 > v288)
                                    {
                                      *(v4 + 1384) |= 0x20u;
                                      CA::OGL::Context::array_flush(v4);
                                      *(v4 + 144) = 0;
                                      *(v4 + 112) = v591;
                                      *(v4 + 120) = xmmword_183E20E50;
                                    }

                                    v289 = DWORD1(v631);
                                    v290 = *(v238 + 6);
                                    v291 = v290 * v631;
                                    v593 = SDWORD1(v631);
                                    v292 = v290 * SDWORD1(v631);
                                    v293 = HIDWORD(v631);
                                    v294 = v290 * (DWORD2(v631) + v631);
                                    v295 = HIDWORD(v631) + DWORD1(v631);
                                    v592 = (HIDWORD(v631) + DWORD1(v631));
                                    v296 = v290 * v592;
                                    v297 = v244 / v290;
                                    v298 = floorf(v291);
                                    v299 = floorf(v292);
                                    v300 = ceilf(v294);
                                    v301 = ceilf(v296);
                                    v302 = *(v596 + 1);
                                    v303 = v631 - *v596;
                                    v304 = (v298 - v291) * v297;
                                    v305 = v304 + v303;
                                    v306 = (v299 - v292) * v297;
                                    v307 = v306 + (DWORD1(v631) - v302);
                                    v308 = (v300 - v294) * v297;
                                    v309 = v308 + (v303 + DWORD2(v631));
                                    v310 = (v301 - v296) * v297;
                                    v311 = v310 + (DWORD1(v631) - v302 + HIDWORD(v631));
                                    v620 = v298;
                                    v605 = v299;
                                    v616 = v300;
                                    v626 = v301;
                                    CA::OGL::Context::array_rect(v4, v298, v299, v300, v301);
                                    v312 = v305;
                                    v313 = v307;
                                    v314 = v309;
                                    v602 = v307;
                                    v608 = v309;
                                    v315 = v309;
                                    v316 = v311;
                                    v611 = v305;
                                    v317 = v311;
                                    if (v595)
                                    {
                                      v348 = (v304 + v631);
                                      v349 = (v306 + v593);
                                      v350 = *v649.i64 * v349;
                                      v351 = *v650.i64 + *v648.i64 * v348;
                                      v352 = v351 + *v649.i64 * v349;
                                      v353 = *&v649.i64[1] * v349;
                                      v354 = *&v650.i64[1] + *&v648.i64[1] * v348;
                                      v355 = v354 + v353;
                                      v356 = (v308 + (DWORD2(v631) + v631));
                                      v357 = *v650.i64 + *v648.i64 * v356;
                                      *&v350 = v357 + v350;
                                      v358 = *&v650.i64[1] + *&v648.i64[1] * v356;
                                      v359 = v358 + v353;
                                      v360 = (v310 + v592);
                                      v361 = *v649.i64 * v360;
                                      v362 = v357 + *v649.i64 * v360;
                                      v363 = *&v649.i64[1] * v360;
                                      v364 = v358 + v363;
                                      *&v357 = v351 + v361;
                                      v365 = v354 + v363;
                                      v366 = *v596;
                                      v312 = v352 - v366;
                                      v313 = v355 - v302;
                                      v314 = *&v350 - v366;
                                      v307 = v359 - v302;
                                      v315 = v362 - v366;
                                      v316 = v364 - v302;
                                      v305 = *&v357 - v366;
                                      v317 = v365 - v302;
                                    }

                                    v318 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v318 - 176) = v312;
                                    *(v318 - 172) = v313;
                                    *(v318 - 128) = v314;
                                    *(v318 - 124) = v307;
                                    *(v318 - 80) = v315;
                                    *(v318 - 76) = v316;
                                    *(v318 - 32) = v305;
                                    *(v318 - 28) = v317;
                                    if (BYTE11(xmmword_1ED4E97DC) == 1)
                                    {
                                      if (x_log_get_ogl(void)::once != -1)
                                      {
                                        dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
                                      }

                                      v367 = x_log_get_ogl(void)::log;
                                      if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v368 = *(v586 + 16);
                                        buf[0].i32[0] = 134219008;
                                        *(buf[0].i64 + 4) = v368;
                                        buf[0].i16[6] = 1024;
                                        *(&buf[0].i32[3] + 2) = v631;
                                        buf[1].i16[1] = 1024;
                                        buf[1].i32[1] = v289;
                                        buf[1].i16[4] = 1024;
                                        *(&buf[1].i32[2] + 2) = DWORD2(v631);
                                        buf[1].i16[7] = 1024;
                                        buf[2].i32[0] = v293;
                                        _os_log_impl(&dword_183AA6000, v367, OS_LOG_TYPE_DEFAULT, "backdrop 0x%lx rect [%d %d; %d x %d]\n", buf, 0x24u);
                                      }
                                    }

                                    v238 = v599;
                                    v244 = 1.0;
                                    if (*(v599 + 6) != 1.0)
                                    {
                                      v319 = 32;
                                      if (*(v4 + 108))
                                      {
                                        v319 = 48;
                                      }

                                      if ((*(v4 + 144) + 32) > *(v4 + 152) || (v320 = *(v4 + 128)) != 0 && *(v4 + 120) + v319 > v320)
                                      {
                                        *(v4 + 1384) |= 0x20u;
                                        CA::OGL::Context::array_flush(v4);
                                        *(v4 + 144) = 0;
                                        *(v4 + 112) = v591;
                                        *(v4 + 120) = xmmword_183E20E50;
                                      }

                                      v321 = v631;
                                      v594 = v631;
                                      if (v590.f64[0] == v631)
                                      {
                                        CA::OGL::Context::array_rect(v4, v620 + -1.0, v605, v620, v626);
                                        v322 = v611 + 0.5;
                                        v323 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v323 - 176) = v611 + 0.5;
                                        *(v323 - 172) = v602;
                                        *(v323 - 128) = v611 + 0.5;
                                        *(v323 - 124) = v602;
                                        *(v323 - 80) = v611 + 0.5;
                                        *(v323 - 76) = v311;
                                        *(v323 - 32) = v611 + 0.5;
                                        *(v323 - 28) = v311;
                                        v324 = v289;
                                        v325 = v590.f64[1];
                                        v326 = v311;
                                        if (v590.f64[1] != v289)
                                        {
                                          goto LABEL_375;
                                        }

                                        CA::OGL::Context::array_rect(v4, v620 + -1.0, v605 + -1.0, v620, v605);
                                        v327 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v327 - 176) = v322;
                                        *(v327 - 172) = v602 + 0.5;
                                        *(v327 - 128) = v322;
                                        *(v327 - 124) = v602 + 0.5;
                                        *(v327 - 80) = v322;
                                        *(v327 - 76) = v602 + 0.5;
                                        *(v327 - 32) = v322;
                                        *(v327 - 28) = v602 + 0.5;
                                      }

                                      else
                                      {
                                        v326 = v311;
                                        v324 = v289;
                                      }

                                      v325 = v590.f64[1];
LABEL_375:
                                      v334 = DWORD2(v631);
                                      if (v325 == v324)
                                      {
                                        CA::OGL::Context::array_rect(v4, v620, v605 + -1.0, v616, v605);
                                        v335 = v602 + 0.5;
                                        v336 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v336 - 176) = v611;
                                        *(v336 - 172) = v602 + 0.5;
                                        *(v336 - 128) = v309;
                                        *(v336 - 124) = v602 + 0.5;
                                        *(v336 - 80) = v309;
                                        *(v336 - 76) = v602 + 0.5;
                                        *(v336 - 32) = v611;
                                        *(v336 - 28) = v602 + 0.5;
                                        v337 = (v334 + v321);
                                        if (v589 == v337)
                                        {
                                          CA::OGL::Context::array_rect(v4, v616, v605 + -1.0, v616 + 1.0, v605);
                                          v338 = *(v4 + 136) + 48 * *(v4 + 144);
                                          *(v338 - 176) = v309 + -0.5;
                                          *(v338 - 172) = v335;
                                          *(v338 - 128) = v309 + -0.5;
                                          *(v338 - 124) = v335;
                                          *(v338 - 80) = v309 + -0.5;
                                          *(v338 - 76) = v335;
                                          *(v338 - 32) = v309 + -0.5;
                                          *(v338 - 28) = v335;
                                        }
                                      }

                                      else
                                      {
                                        v337 = (DWORD2(v631) + v321);
                                      }

                                      v238 = v599;
                                      if (v589 == v337)
                                      {
                                        CA::OGL::Context::array_rect(v4, v616, v605, v616 + 1.0, v626);
                                        v339 = v309 + -0.5;
                                        v340 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v340 - 176) = v309 + -0.5;
                                        *(v340 - 172) = v602;
                                        *(v340 - 128) = v309 + -0.5;
                                        *(v340 - 124) = v602;
                                        *(v340 - 80) = v309 + -0.5;
                                        *(v340 - 76) = v326;
                                        *(v340 - 32) = v309 + -0.5;
                                        *(v340 - 28) = v326;
                                        v341 = v295;
                                        if (v588 == v295)
                                        {
                                          CA::OGL::Context::array_rect(v4, v616, v626, v616 + 1.0, v626 + 1.0);
                                          v342 = v326;
                                          v343 = *(v4 + 136) + 48 * *(v4 + 144);
                                          *(v343 - 176) = v339;
                                          *(v343 - 172) = v326 + -0.5;
                                          *(v343 - 128) = v339;
                                          *(v343 - 124) = v326 + -0.5;
                                          *(v343 - 80) = v339;
                                          *(v343 - 76) = v326 + -0.5;
                                          *(v343 - 32) = v339;
                                          *(v343 - 28) = v326 + -0.5;
                                        }

                                        else
                                        {
                                          v342 = v326;
                                        }
                                      }

                                      else
                                      {
                                        v342 = v326;
                                        v341 = v295;
                                      }

                                      v244 = 1.0;
                                      if (v588 == v341)
                                      {
                                        v344 = v342;
                                        CA::OGL::Context::array_rect(v4, v620, v626, v616, v626 + 1.0);
                                        v345 = v344 + -0.5;
                                        v346 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v346 - 176) = v611;
                                        *(v346 - 172) = v345;
                                        *(v346 - 128) = v608;
                                        *(v346 - 124) = v345;
                                        *(v346 - 80) = v608;
                                        *(v346 - 76) = v345;
                                        *(v346 - 32) = v611;
                                        *(v346 - 28) = v345;
                                        if (v590.f64[0] == v594)
                                        {
                                          CA::OGL::Context::array_rect(v4, v620 + -1.0, v626, v620, v626 + 1.0);
                                          v347 = *(v4 + 136) + 48 * *(v4 + 144);
                                          *(v347 - 176) = v611 + 0.5;
                                          *(v347 - 172) = v345;
                                          *(v347 - 128) = v611 + 0.5;
                                          *(v347 - 124) = v345;
                                          *(v347 - 80) = v611 + 0.5;
                                          *(v347 - 76) = v345;
                                          *(v347 - 32) = v611 + 0.5;
                                          *(v347 - 28) = v345;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v328 = vclez_s32(*(&v631 + 8));
                                    if ((vpmax_u32(v328, v328).u32[0] & 0x80000000) == 0)
                                    {
                                      v329 = v596[1];
                                      v330 = vclez_s32(v329);
                                      if ((vpmax_u32(v330, v330).u32[0] & 0x80000000) == 0)
                                      {
                                        *&v331 = vmax_s32(*&v631, *v596);
                                        v332 = vsub_s32(vmin_s32(vadd_s32(*&v631, *(&v631 + 8)), vadd_s32(*v596, v329)), *&v331);
                                        v333 = vclez_s32(v332);
                                        if ((vpmax_u32(v333, v333).u32[0] & 0x80000000) == 0)
                                        {
                                          *(&v331 + 1) = v332;
                                          v631 = v331;
                                          goto LABEL_349;
                                        }
                                      }

                                      *(&v631 + 1) = 0;
                                    }
                                  }
                                }

                                CA::OGL::Context::array_flush(v4);
                                v243 = 0.5;
                                v222 = v584;
                                if (v584)
                                {
                                  CA::OGL::Context::unbind_surface(v4, v584, 0);
                                }

                                else
                                {
                                  v369 = *(v4 + 16);
                                  *(v369 + 144) = 0;
                                  *(v369 + 176) = 0;
                                }

                                v236 = v587;
                                --v249;
                                v237 = v583;
                              }

                              while (v585 > 0);
                            }

                            v383.i64[0] = v571.u16[3];
                            v383.i64[1] = v571.u16[1];
                            v384.i64[0] = 0xFFFFLL;
                            v384.i64[1] = 0xFFFFLL;
                            v385 = vshlq_u64(vandq_s8(v383, v384), xmmword_183E21730);
                            v386 = *(v4 + 16);
                            v387 = v385.i64[0] | (v571.u16[2] << 32) | v571.u16[0] | v385.i64[1];
                            if (v387)
                            {
                              *(v386 + 16) = 0;
                              *(*(v4 + 16) + 497) |= 1u;
                              *(*(v4 + 16) + 496) = 3;
                              if (v642 == 1 && (v642 & 0x100) == 0)
                              {
                                v388 = *(v599 + 6);
                                buf[0] = 0uLL;
                                *&v651.f64[0] = v571;
                                v236 = v587;
                              }

                              *(v4 + 144) = 0;
                              *(v4 + 112) = v4 + 1386;
                              *(v4 + 120) = xmmword_183E20E50;
                              buf[1].i64[0] = 0;
                              buf[0] = v237;
                              *&v627 = *&vaddq_f64(v236, v590);
                              v389 = v574 + v590.f64[1];
                              v390 = 1.0;
                              while (CA::ShapeIterator::iterate(buf, &v631))
                              {
                                v391 = DWORD1(v631);
                                v392 = DWORD2(v631);
                                v393 = *(v599 + 6);
                                v394 = floorf(v393 * v631);
                                v395 = floorf(v393 * SDWORD1(v631));
                                v396 = ceilf(v393 * (DWORD2(v631) + v631));
                                v397 = HIDWORD(v631) + DWORD1(v631);
                                v398 = ceilf(v393 * (HIDWORD(v631) + DWORD1(v631)));
                                CA::OGL::Context::array_check(v4, 1);
                                CA::OGL::Context::array_rect(v4, v394, v395, v396, v398);
                                v399 = *(v4 + 136) + 48 * *(v4 + 144);
                                *(v399 - 160) = v387;
                                *(v399 - 112) = v387;
                                *(v399 - 64) = v387;
                                *(v399 - 16) = v387;
                                if (*(v599 + 6) != v390)
                                {
                                  v400 = v389;
                                  v401 = v631;
                                  v402 = v631;
                                  v403 = v391;
                                  v404 = v397;
                                  CA::OGL::Context::array_check(v4, 4);
                                  if (v590.f64[0] == v402)
                                  {
                                    v405 = 1.0;
                                    if (v590.f64[1] == v403)
                                    {
                                      v406 = 1.0;
                                    }

                                    else
                                    {
                                      v406 = 0.0;
                                    }

                                    v407 = v395 - v406;
                                    if (v400 != v404)
                                    {
                                      v405 = 0.0;
                                    }

                                    CA::OGL::Context::array_rect(v4, v394 + -1.0, v407, v394, v398 + v405);
                                    v408 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v408 - 160) = v387;
                                    *(v408 - 112) = v387;
                                    *(v408 - 64) = v387;
                                    *(v408 - 16) = v387;
                                  }

                                  if (v590.f64[1] == v403)
                                  {
                                    CA::OGL::Context::array_rect(v4, v394, v395 + -1.0, v396, v395);
                                    v409 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v409 - 160) = v387;
                                    *(v409 - 112) = v387;
                                    *(v409 - 64) = v387;
                                    *(v409 - 16) = v387;
                                  }

                                  v389 = v400;
                                  v390 = 1.0;
                                  if (v627 == (v392 + v401))
                                  {
                                    if (v590.f64[1] == v403)
                                    {
                                      v410 = 1.0;
                                    }

                                    else
                                    {
                                      v410 = 0.0;
                                    }

                                    v411 = v395 - v410;
                                    if (v389 == v404)
                                    {
                                      v412 = 1.0;
                                    }

                                    else
                                    {
                                      v412 = 0.0;
                                    }

                                    CA::OGL::Context::array_rect(v4, v396, v411, v396 + 1.0, v398 + v412);
                                    v413 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v413 - 160) = v387;
                                    *(v413 - 112) = v387;
                                    *(v413 - 64) = v387;
                                    *(v413 - 16) = v387;
                                  }

                                  if (v389 == v404)
                                  {
                                    CA::OGL::Context::array_rect(v4, v394, v398, v396, v398 + 1.0);
                                    v414 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v414 - 160) = v387;
                                    *(v414 - 112) = v387;
                                    *(v414 - 64) = v387;
                                    *(v414 - 16) = v387;
                                  }
                                }
                              }

                              CA::OGL::Context::array_flush(v4);
                              v386 = *(v4 + 16);
                            }

                            v415 = v572;
                            *(v386 + 497) &= ~1u;
                            if (v576)
                            {
                              *(*(v4 + 16) + 497) &= ~2u;
                            }

                            v416 = v642;
                            if (v642 == 1 && HIBYTE(v642) == 1)
                            {
                            }

                            {
                              *(v4 + 144) = 0;
                              *(v4 + 112) = v4 + 1386;
                              *(v4 + 120) = xmmword_183E20E50;
                              *(*(v4 + 16) + 16) = 0;
                              v417 = *(v10 + 592);
                              buf[1].i64[0] = 0;
                              buf[0] = v417;
                              while (CA::ShapeIterator::iterate(buf, &v631))
                              {
                                CA::OGL::Context::array_check(v4, 1);
                                CA::OGL::Context::array_rect(v4, *(v599 + 6) * v631, *(v599 + 6) * SDWORD1(v631), *(v599 + 6) * (DWORD2(v631) + v631), *(v599 + 6) * (HIDWORD(v631) + DWORD1(v631)));
                                v418 = *(v4 + 136) + 48 * *(v4 + 144);
                                *(v418 - 160) = 0;
                                *(v418 - 112) = 0;
                                *(v418 - 64) = 0;
                                *(v418 - 16) = 0;
                              }

                              CA::OGL::Context::array_flush(v4);
                            }

                            if (v572)
                            {
                              v419 = v635.i32[0];
                              v420 = v635.i32[1];
                              v421 = v635.i32[2];
                              v422 = v635.i32[3];
                              *(*(v4 + 16) + 16) = 0;
                              *(v4 + 144) = 0;
                              *(v4 + 112) = v4 + 1386;
                              *(v4 + 120) = xmmword_183E20E50;
                              CA::OGL::Context::array_check(v4, 4);
                              v423 = v422 + v420;
                              v415 = v572;
                              v424 = v423;
                              CA::OGL::Context::array_rect(v4, v419, v420, v419 + 1.0, v423);
                              v425 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v425 - 160) = 0;
                              *(v425 - 112) = 0;
                              *(v425 - 64) = 0;
                              *(v425 - 16) = 0;
                              v426 = (v421 + v419);
                              CA::OGL::Context::array_rect(v4, v426 + -1.0, v420, v426, v424);
                              v427 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v427 - 160) = 0;
                              *(v427 - 112) = 0;
                              *(v427 - 64) = 0;
                              *(v427 - 16) = 0;
                              CA::OGL::Context::array_rect(v4, v419, v420, v426, v420 + 1.0);
                              v428 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v428 - 160) = 0;
                              *(v428 - 112) = 0;
                              *(v428 - 64) = 0;
                              *(v428 - 16) = 0;
                              CA::OGL::Context::array_rect(v4, v419, v424 + -1.0, v426, v424);
                              v429 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v429 - 160) = 0;
                              *(v429 - 112) = 0;
                              *(v429 - 64) = 0;
                              *(v429 - 16) = 0;
                              CA::OGL::Context::array_flush(v4);
                            }

                            if (BYTE11(xmmword_1ED4E97DC) == 1)
                            {
                              if (x_log_get_ogl(void)::once != -1)
                              {
                                dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
                              }

                              v542 = x_log_get_ogl(void)::log;
                              if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
                              {
                                v543 = *(v586 + 16);
                                buf[0].i32[0] = 134217984;
                                *(buf[0].i64 + 4) = v543;
                                _os_log_impl(&dword_183AA6000, v542, OS_LOG_TYPE_DEFAULT, "backdrop 0x%lx complete\n", buf, 0xCu);
                              }
                            }

                            if (initialized[0] != -1)
                            {
                              dispatch_once_f(initialized, 0, init_debug);
                            }

                            v430 = v599;
                            if (*&dword_1ED4E9670)
                            {
                              bzero(buf, 0x400uLL);
                              v431 = *(v10 + 32);
                              if (v431)
                              {
                                v564 = v431 + 28;
                                snprintf(buf[0].i8, 0x400uLL, "backdrop-0x%lx_%s");
                              }

                              else
                              {
                                snprintf(buf[0].i8, 0x400uLL, "backdrop-0x%lx");
                              }

                              CA::OGL::export_surface(v4, *(v4 + 672), buf[0].i8, v432, v433, v434, v435, v436, v563, v564, v565.i64[0], v565.i64[1]);
                              v430 = v599;
                            }

                            *(v9 + 120) = 0;
                            *(v9 + 128) = *(*(a1 + 1) + 80);
                            if (v566)
                            {
                              *(v4 + 64) = 1;
                            }

                            v437 = *(v4 + 16);
                            *(v437 + 496) = v567;
                            *(v437 + 497) = *(v437 + 497) & 0xFE | v568 & 1;
                            *(*(v4 + 16) + 16) = 0;
                            CA::OGL::Context::pop_surface(v4, v222, v223, v224, v225, v226, v227, v228);
                            CA::OGL::Context::set_gstate(v4, **(v4 + 656));
                            if (*(v430 + 6) == 1.0 && (v645 & 1) == 0)
                            {
                              v439 = ~(8 * *(v4 + 1384)) & 0x10;
                            }

                            else
                            {
                              v439 = 0;
                            }

                            *(*(v430 + 4) + 148) = *(*(v430 + 4) + 148) & 0xFFEF | v439;
                            v438.i32[0] = *(v430 + 6);
                            v628[0] = CA::Shape::scale_and_dilate(v583, v438, v438.f32[0], 0, 0);
                            if (v416 && HIBYTE(v642) == 1)
                            {
                              v443 = v415;
                              v444 = CA::Shape::dilate(v583, v643.f32[0], v643.f32[1]);
                              v447 = CA::Shape::subtract(v444, v575, v445, v446);
                              v448.i32[0] = *(v599 + 6);
                              v449 = CA::Shape::scale_and_dilate(v447, v448, v448.f32[0], 0, 0);
                              CA::shape_subtract(v628, v449, v450, v451);
                              if (v449)
                              {
                                CA::Shape::unref(v449);
                              }

                              if (v447)
                              {
                                CA::Shape::unref(v447);
                              }

                              v415 = v443;
                              if (v444)
                              {
                                CA::Shape::unref(v444);
                              }
                            }

                            v452 = v586;
                            if (v415)
                            {
                              v453 = v635.i32[2];
                              buf[0] = v635;
                              if (v635.i32[2] <= v635.i32[3])
                              {
                                v454 = v635.i32[3];
                              }

                              else
                              {
                                v454 = v635.i32[2];
                              }

                              if (v635.i32[2] >= v635.i32[3])
                              {
                                v453 = v635.i32[3];
                              }

                              if (v454 <= 1073741822 && v453 >= 1)
                              {
                                buf[0] = vaddq_s32(v635, xmmword_183E21740);
                                v455 = vclez_s32(*&vextq_s8(buf[0], buf[0], 8uLL));
                                if (vorr_s8(v455, vdup_lane_s32(v455, 1)).u8[0])
                                {
                                  buf[0].i64[1] = 0;
                                }
                              }

                              CA::shape_intersect(v628, buf, v440);
                            }

                            v456 = v633;
                            if (v595)
                            {
                              v457 = v415;
                              if (v633)
                              {
                                CA::Shape::unref(v633);
                              }

                              if (v632)
                              {
                                CA::Shape::unref(v632);
                              }

                              v632 = 0;
                              v633 = 0;
                              v544 = *(v599 + 6);
                              if (v544)
                              {
                                CA::OGL::Context::release_surface(v4, v544);
                              }

                              v458 = 0;
                              v456 = 0;
                              v459 = v599;
                              *(v599 + 6) = 0;
                              v452 = v586;
                            }

                            else
                            {
                              v457 = v415;
                              v458 = v632;
                              v459 = v599;
                            }

                            v460 = v628[0];
                            if (v595)
                            {
                              if (*(v459 + 48))
                              {
                                buf[0] = 0uLL;
                                CA::Bounds::set_exterior(buf, v461, v646, v647);
                                v527 = (*(*v4 + 696))(v4, 1, buf, 1039, @"capture-backdrop-mesh-filtered-surface");
                                if (v527)
                                {
                                  v528 = v527;
                                  if (*(v595 + 25) < 0)
                                  {
                                    v529 = 3;
                                  }

                                  else
                                  {
                                    v529 = *(v595 + 25);
                                  }

                                  v530 = CA::Render::MeshTransform::retain_subdivided_mesh(v595, v529);
                                  v531 = v459;
                                  v532 = CA::Render::MeshTransform::retain_inverse_mesh(v530);
                                  v664 = 0;
                                  buf[0] = xmmword_183E20E00;
                                  buf[1] = 0u;
                                  buf[2] = xmmword_183E20E60;
                                  memset(&buf[3], 0, 32);
                                  v660 = xmmword_183E20E00;
                                  v661 = 0u;
                                  v662 = xmmword_183E20E60;
                                  __asm { FMOV            V0.2D, #1.0 }

                                  v663 = _Q0;
                                  v653 = 0x3C003C003C003C00uLL;
                                  v655 = 0;
                                  v654 = 0;
                                  v657 = 0;
                                  v656 = 1065353216;
                                  v658 = 1025;
                                  v651.f64[0] = 0.0;
                                  *&v651.f64[1] = &CA::Shape::_infinite_shape;
                                  v652.f64[0] = 0.0;
                                  *&v652.f64[1] = buf;
                                  *&v651.f64[0] = CA::OGL::Context::set_gstate(v4, &v651);
                                  CA::OGL::Context::push_surface(v4, v528, 1u, 0x2000, 0);
                                  v534.n128_u32[0] = *(v531 + 28);
                                  CA::OGL::fill_surface_mesh(v4, v532, &v646, *(v531 + 48), 1u, 1, 0, v534, 0.0);
                                  CA::OGL::Context::pop_surface(v4, v535, v536, v537, v538, v539, v540, v541);
                                  CA::OGL::Context::set_gstate(v4, **(v4 + 656));
                                  CA::OGL::Context::release_surface(v4, *(v531 + 48));
                                  *(v531 + 48) = v528;
                                  *(v531 + 28) = 1065353216;
                                  if (atomic_fetch_add(&v532[2], 0xFFFFFFFF) == 1)
                                  {
                                    (*(*&v532->_os_unfair_lock_opaque + 16))(v532);
                                  }

                                  if (atomic_fetch_add(v530 + 2, 0xFFFFFFFF) == 1)
                                  {
                                    (*(*v530 + 16))(v530);
                                  }

                                  v460 = v628[0];
                                  v456 = v633;
                                  v459 = v599;
                                }
                              }
                            }

                            CA::Shape::unref(v460);
                            if (v456)
                            {
                              CA::Shape::unref(v456);
                            }

                            v200 = v570;
                            if (v632)
                            {
                              CA::Shape::unref(v632);
                            }

                            ++*(v459 + 68);
                            v197 = v575;
                            v199 = v569;
LABEL_489:
                            if ((v199 & 1) == 0)
                            {
                              CA::Shape::unref(v197);
                            }

                            v464 = *(v10 + 584);
                            if (v464)
                            {
                              CA::Shape::unref(v464);
                              *(v10 + 584) = 0;
                            }

                            if (v200)
                            {
                              CA::OGL::Context::release_surface(v4, v200);
                            }

                            goto LABEL_118;
                          }

                          if (v195 != 1)
                          {
                            goto LABEL_272;
                          }
                        }

LABEL_270:
                        v200 = 0;
                        goto LABEL_489;
                      }
                    }

                    else
                    {
                      v185 = 0;
                    }

                    layer_resource_text = 0;
                    goto LABEL_235;
                  }

                  if (*(v599 + 4))
                  {
                    *(v599 + 15) = 0;
                    ++*(v599 + 17);
                    *(v599 + 3) = 0;
                  }

LABEL_27:
                  v19 = *(v10 + 584);
                  if (v19)
                  {
                    CA::Shape::unref(v19);
                    *(v10 + 584) = 0;
                  }

                  goto LABEL_118;
                }
              }

              memset(&buf[2], 0, 32);
              memset(buf, 0, 32);
              v43 = *(v40 - 1);
              v44 = *(v40 - 3);
              buf[2] = vcvtq_f64_f32(*v43.f32);
              buf[3] = vcvt_hight_f64_f32(v43);
              buf[0] = vcvtq_f64_f32(*v44.f32);
              buf[1] = vcvt_hight_f64_f32(v44);
              v677.i64[0] = &unk_1EF1FECF0;
              v677.i64[1] = 4;
              *&v678 = buf;
              v45 = *(v10 + 72);
              if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 80) - v45) >> 6) <= v35)
              {
                goto LABEL_232;
              }

              CA::Render::LayerNode::MapGeometry::map(&v677, *(v40 - 16), *(v45 + 192 * v35 + 24));
              v46 = buf;
              v689 = vld2q_f64(v46->i64);
              v46 += 2;
              v691 = vld2q_f64(v46->i64);
              v47 = vcvt_hight_f32_f64(vcvt_f32_f64(v689.val[0]), v691.val[0]);
              v689.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v689.val[1]), v691.val[1]);
              v689.val[1] = vzip1q_s32(v47, v689.val[0]);
              v689.val[0] = vzip2q_s32(v47, v689.val[0]);
              *(v40 - 1) = v689.val[0];
              *(v40 - 3) = v689.val[1];
              *v47.i8 = vbsl_s8(vcgt_f32(*&v689.val[1].f64[1], *&v689.val[1].f64[0]), *&v689.val[1].f64[0], *&v689.val[1].f64[1]);
              v48 = vbsl_s8(vcgt_f32(*&v689.val[0].f64[1], *&v689.val[0].f64[0]), *&v689.val[0].f64[0], *&v689.val[0].f64[1]);
              *v47.i8 = vbsl_s8(vcgt_f32(v48, *v47.i8), *v47.i8, v48);
              *&v689.val[1].f64[0] = vbsl_s8(vcgt_f32(*&v689.val[1].f64[0], *&v689.val[1].f64[1]), *&v689.val[1].f64[0], *&v689.val[1].f64[1]);
              *&v689.val[0].f64[0] = vbsl_s8(vcgt_f32(*&v689.val[0].f64[0], *&v689.val[0].f64[1]), *&v689.val[0].f64[0], *&v689.val[0].f64[1]);
              *&v689.val[0].f64[0] = vsub_f32(vbsl_s8(vcgt_f32(*&v689.val[1].f64[0], *&v689.val[0].f64[0]), *&v689.val[1].f64[0], *&v689.val[0].f64[0]), *v47.i8);
              LODWORD(v689.val[1].f64[0]) = COERCE_UNSIGNED_INT(vaddv_f32(*&v689.val[0].f64[0])) & 0x7FFFFFFF;
              v691.val[0] = vdupq_lane_s32(*&vcgtq_s32(v606, v689.val[1]), 0);
              v49 = vbslq_s8(v691.val[0], vcvtq_f64_f32(*&v689.val[0].f64[0]), v612);
              v50 = vbslq_s8(v691.val[0], vcvtq_f64_f32(*v47.i8), v609);
              v51 = *(v10 + 528);
              v52 = vclezq_f64(v51);
              v53 = vclezq_f64(v49);
              v54 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v53, v52), vzip2q_s64(v53, v52))));
              v55 = v54.i8[0];
              if (v54.i8[4])
              {
                v56 = v50;
                v57 = v49;
                if (v55)
                {
LABEL_69:
                  v60 = v31 + v39;
                  v62 = *(v31 + v39 - 72);
                  v61 = *(v31 + v39 - 64);
                  if (v62 >= v61)
                  {
                    v63 = *(v31 + v39 - 64);
                  }

                  else
                  {
                    v63 = *(v31 + v39 - 72);
                  }

                  if (v63 <= 0.0)
                  {
                    goto LABEL_87;
                  }

                  if (*(v60 - 88) == *(v40 - 15) && *(v31 + v39 - 80) == *(v31 + v39 - 112) && v62 == *(v40 - 13) && v61 == *(v31 + v39 - 96))
                  {
                    v64 = vclezq_f64(v603);
                    v65 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v53, v64), vzip2q_s64(v53, v64))));
                    if (v65.i8[4])
                    {
                      if ((v65.i8[0] & 1) == 0)
                      {
                        goto LABEL_92;
                      }
                    }

                    else if ((v65.i8[0] & 1) == 0)
                    {
                      v77 = vaddq_f64(v50, v49);
                      v50 = vminnmq_f64(v597, v50);
                      v49 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v597, v603), v77), v50);
LABEL_92:
                      v597 = v50;
                      v603 = v49;
                    }

LABEL_87:
                    v31 = *(v10 + 72);
                    v30 = *(v10 + 80);
                    goto LABEL_88;
                  }

                  v66 = vcvt_f32_f64(*(v60 - 88));
                  v67 = vadd_f32(vcvt_f32_f64(*(v60 - 72)), v66);
                  *v68.f32 = v66;
                  v68.i64[1] = __PAIR64__(v66.u32[1], v67.u32[0]);
                  v66.i32[1] = v67.i32[1];
                  buf[2] = vcvtq_f64_f32(v67);
                  buf[3] = vcvtq_f64_f32(v66);
                  buf[0] = vcvtq_f64_f32(*v68.f32);
                  buf[1] = vcvt_hight_f64_f32(v68);
                  v667 = &unk_1EF1FECF0;
                  v668 = 4;
                  *&v669 = buf;
                  v69 = *(v10 + 72);
                  if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 80) - v69) >> 6) <= v35)
                  {
LABEL_232:
                    __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
                  }

                  CA::Render::LayerNode::MapGeometry::map(&v667, *(v40 - 16), *(v69 + 192 * v35 + 24));
                  v70 = buf;
                  v690 = vld2q_f64(v70->i64);
                  v70 += 2;
                  v692 = vld2q_f64(v70->i64);
                  v71 = vcvt_hight_f32_f64(vcvt_f32_f64(v690.val[0]), v692.val[0]);
                  v690.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v690.val[1]), v692.val[1]);
                  v690.val[1] = vzip2q_s32(v71, v690.val[0]);
                  v690.val[0] = vzip1q_s32(v71, v690.val[0]);
                  *&v692.val[0].f64[0] = vextq_s8(v690.val[0], v690.val[0], 8uLL).u64[0];
                  *&v692.val[1].f64[0] = vextq_s8(v690.val[1], v690.val[1], 8uLL).u64[0];
                  *v71.i8 = vbsl_s8(vcgt_f32(*&v692.val[0].f64[0], *&v690.val[0].f64[0]), *&v690.val[0].f64[0], *&v692.val[0].f64[0]);
                  v72 = vbsl_s8(vcgt_f32(*&v692.val[1].f64[0], *&v690.val[1].f64[0]), *&v690.val[1].f64[0], *&v692.val[1].f64[0]);
                  *v71.i8 = vbsl_s8(vcgt_f32(v72, *v71.i8), *v71.i8, v72);
                  *&v690.val[0].f64[0] = vbsl_s8(vcgt_f32(*&v690.val[0].f64[0], *&v692.val[0].f64[0]), *&v690.val[0].f64[0], *&v692.val[0].f64[0]);
                  *&v690.val[1].f64[0] = vbsl_s8(vcgt_f32(*&v690.val[1].f64[0], *&v692.val[1].f64[0]), *&v690.val[1].f64[0], *&v692.val[1].f64[0]);
                  *&v690.val[0].f64[0] = vsub_f32(vbsl_s8(vcgt_f32(*&v690.val[0].f64[0], *&v690.val[1].f64[0]), *&v690.val[0].f64[0], *&v690.val[1].f64[0]), *v71.i8);
                  LODWORD(v690.val[1].f64[0]) = COERCE_UNSIGNED_INT(vaddv_f32(*&v690.val[0].f64[0])) & 0x7FFFFFFF;
                  v690.val[1] = vdupq_lane_s32(*&vcgtq_s32(v600, v690.val[1]), 0);
                  v73 = vbslq_s8(v690.val[1], vcvtq_f64_f32(*&v690.val[0].f64[0]), v612);
                  v74 = vbslq_s8(v690.val[1], vcvtq_f64_f32(*v71.i8), v609);
                  v692.val[0] = vclezq_f64(v603);
                  v692.val[1] = vclezq_f64(v73);
                  v75 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v692.val[1], v692.val[0]), vzip2q_s64(v692.val[1], v692.val[0]))));
                  if (v75.i8[4])
                  {
                    if (v75.i8[0])
                    {
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    if (v75.i8[0])
                    {
                      goto LABEL_87;
                    }

                    v76 = vaddq_f64(v74, v73);
                    v74 = vminnmq_f64(v597, v74);
                    v73 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v597, v603), v76), v74);
                  }

                  v597 = v74;
                  v603 = v73;
                  goto LABEL_87;
                }
              }

              else
              {
                if (v54.i8[0])
                {
                  goto LABEL_69;
                }

                v58 = *(v10 + 512);
                v59 = vaddq_f64(v58, v51);
                v56 = vminnmq_f64(v58, v50);
                v57 = vsubq_f64(vmaxnmq_f64(v59, vaddq_f64(v50, v49)), v56);
              }

              *(v10 + 512) = v56;
              *(v10 + 528) = v57;
              goto LABEL_69;
            }
          }
        }

LABEL_118:
        os_unfair_lock_unlock((v10 + 40));
        goto LABEL_119;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v22 = malloc_type_zone_malloc(malloc_zone, 0xE8uLL, 0x165299FDuLL);
    if (v22)
    {
      v23 = (*(*v4 + 144))(v4);
      *(v22 + 1) = v4;
      *(v22 + 2) = v23;
      *v22 = &unk_1EF202840;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 56) = 0u;
      v22[224] &= 0xE0u;
      v24 = *(v10 + 48);
      if (v24 != v22)
      {
        v25 = v8;
        v26 = v22;
        if (!v24)
        {
          v26 = v22;
LABEL_43:
          *(v10 + 48) = v26;
          v8 = v25;
          goto LABEL_44;
        }

LABEL_42:
        (*(*v24 + 8))(v24);
        goto LABEL_43;
      }
    }

    else
    {
      v24 = *(v10 + 48);
      if (v24)
      {
        v25 = v8;
        v26 = 0;
        goto LABEL_42;
      }
    }

LABEL_44:
    *(v22 + 2) = (*(*v4 + 144))(v4);
    goto LABEL_45;
  }
}

uint64_t CA::OGL::MetalContext::encode_edr_resolve(CA::OGL::MetalContext *this, const CA::OGL::MetalContext::FragmentShader::Spec *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = 1.0;
  if (*(v3 + 321))
  {
    v4 = *(v3 + 328);
  }

  _S8 = powf(*(*(this + 84) + 88) * v4, 1.0 / *(this + 144));
  if (*(this + 1006) == _S8)
  {
    return 1;
  }

  __asm { FCVT            H0, S8 }

  __src = _H0;
  result = CA::OGL::MetalBufferPool::encode_fragment_arg(*(this + 595), 6, &__src, 2u, 2u);
  if (result)
  {
    *(this + 1006) = _S8;
  }

  return result;
}

uint64_t CA::OGL::rect_transform_filter_bits(CA::Mat4Impl *a1, const double *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6)
{
  v7 = a5.i64[0];
  v13 = a3;
  v14 = a4;
  a3.i64[0] = a5.i64[0];
  *a4.i64 = a6;
  v9 = CA::OGL::transform_filter_bits(a1, a2, a3, a4, a5);
  v11.i64[0] = v7;

  return CA::OGL::rect_filter_bits(a1, v9, v13, v14, v11, a6, v10);
}

void CA::OGL::FilterNode::apply(uint64_t a1, int32x2_t **a2, float *a3, int32x4_t a4, int32x4_t a5)
{
  v7 = *a4.i32;
  v72 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8);
  v10 = *v9;
  if (a2[1])
  {
    v11 = 0;
  }

  else
  {
    v12 = *(*(a1 + 16) + 168);
    v13 = CA::OGL::filter_source_layer_name(*(*(a1 + 248) + 16));
    v11 = CA::OGL::LayerNode::filter_source_layer(v12, v13);
    if (v11)
    {
      *v68 = 0uLL;
      CA::Shape::get_bounds(a1 + 160, v68);
      v14 = *(*(a1 + 248) + 16);
      if (v14)
      {
        v15 = *(v14 + 48);
        if (v15)
        {
          v16 = *(a1 + 16);
          if ((*(*v15 + 72))(*(v14 + 48)))
          {
            (*(*v15 + 128))(v15, v9, v14, v16, v68);
          }
        }
      }

      v17 = *(*(a1 + 16) + 168);
      v18 = *(a1 + 248);
      v67 = *v68;
      v19 = CA::OGL::LayerNode::retain_filter_source_surface(v17, v11, v18, (a3 + 1), &v67);
      a2[1] = v19;
      if (v19)
      {
        v11 = 0;
      }
    }
  }

  v20 = *(a1 + 152);
  if (v20 < 0)
  {
    (*(*a1 + 40))(a1, a1 + 144, a4, a5);
    v20 = *(a1 + 152);
  }

  v21 = *(a1 + 156);
  if (v20 <= v21)
  {
    v22 = *(a1 + 156);
  }

  else
  {
    v22 = v20;
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v22;
  v26 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v23 = *(a1 + 144);
  v24.i64[0] = v23;
  v24.i64[1] = SHIDWORD(v23);
  v25 = vbslq_s8(v26, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v24));
  *v26.i64 = v20;
  if (v22 <= 1073741822)
  {
    v27 = v21;
  }

  else
  {
    *v26.i64 = 1.79769313e308;
    v27 = 1.79769313e308;
  }

  v28 = v7;
  *&v26.i64[1] = v27;
  v29 = *v26.i64 >= 1.79769313e308 || v7 == 1.0;
  v30.i64[1] = v25.i64[1];
  *&v31.i64[1] = v27;
  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1;
  }

  v33 = vdupq_n_s64(v32);
  *v31.i64 = *v26.i64 * v7;
  v34 = vbslq_s8(v33, v31, v26);
  *v30.i64 = v28 * *v25.i64;
  v35 = vbslq_s8(v33, v30, v25);
  if (v7 != 1.0 && v34.f64[1] < 1.79769313e308)
  {
    v35.f64[1] = vmuld_lane_f64(v28, v35, 1);
    v34.f64[1] = v34.f64[1] * v28;
  }

  v36 = vceqzq_f64(v34);
  if ((vorrq_s8(vdupq_laneq_s64(v36, 1), v36).u64[0] & 0x8000000000000000) != 0 || (v37 = vceqq_f64(v34, v34), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v37), 1), v37).u64[0] & 0x8000000000000000) != 0))
  {
    v67 = 0uLL;
  }

  else
  {
    v38 = vminnmq_f64(vaddq_f64(v35, v34), vdupq_n_s64(0x41C0000000000000uLL));
    v39 = vcvtmq_s64_f64(vmaxnmq_f64(v35, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v67 = vuzp1q_s32(v39, vsubq_s64(vcvtpq_s64_f64(v38), v39));
  }

  v40 = CA::Shape::intersect(*(*&v10[82] + 8), &v67);
  v71 = 0;
  *&v69[16] = 0u;
  v70 = 0u;
  *&v68[16] = 0u;
  *v69 = 0u;
  *v68 = 0u;
  v41 = v10[82];
  *&v68[8] = *(*&v41 + 8);
  v42 = *(*&v41 + 32);
  *&v68[24] = *(*&v41 + 24);
  *v69 = v42;
  *&v69[8] = *(*&v41 + 40);
  *&v69[24] = *(*&v41 + 56);
  LOWORD(v42) = *(*&v41 + 80) & 0x500;
  v43 = *(*&v41 + 80);
  LODWORD(v70) = *(*&v41 + 64);
  v71 = (v42 | v43);
  *(&v70 + 1) = *(*&v41 + 72);
  *&v68[8] = v40;
  *v68 = CA::OGL::Context::set_gstate(v10, v68);
  v45 = ((*a2)[18].i8[4] & 0x10) == 0 || (CA::OGL::filter_flags(*(a1 + 248), *(a1 + 16)) & 0x40) == 0;
  v46 = v10[2];
  v47 = *(*&v46 + 496);
  if (v47 >= 2 && (v47 != 3 || v45))
  {
    *(*&v46 + 497) |= 1u;
  }

  v48 = *(a1 + 16);
  v49 = *(*(v48 + 24) + 136);
  if (!v49 || !*v49)
  {
    goto LABEL_49;
  }

  v50 = 0;
  if (*(*v49 + 12) != 3)
  {
    goto LABEL_50;
  }

  v51 = v49[12];
  if (!v51)
  {
    goto LABEL_50;
  }

  v52 = *(v51 + 16);
  if (!v52)
  {
    goto LABEL_49;
  }

  v53 = *(v51 + 24);
  if ((*(v53 + 13) & 1) == 0)
  {
    v54 = 0;
    v55 = v51 + 32;
    while (v52 - 1 != v54)
    {
      v56 = *(v55 + 8 * v54++);
      if (*(v56 + 13))
      {
        if (v54 >= v52)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  if (v53 != *(*(a1 + 248) + 16) || (v59 = *(*(v48 + 16) + 256)) == 0)
  {
LABEL_49:
    v50 = 0;
    goto LABEL_50;
  }

  os_unfair_lock_lock((v59 + 52));
  v60 = *(v59 + 56);
  if (v60)
  {
    os_unfair_lock_lock((v60 + 40));
    v61 = *(v60 + 48);
    if (v61 && *(v61 + 8) == *v9)
    {
      v50 = *(v61 + 224);
    }

    else
    {
      v50 = 0;
    }

    os_unfair_lock_unlock((v60 + 40));
  }

  else
  {
    v50 = 0;
  }

  os_unfair_lock_unlock((v59 + 52));
  v48 = *(a1 + 16);
LABEL_50:
  v44.n128_f32[0] = v7;
  CA::OGL::emit_filter(v9, *(a1 + 248), v48, a2, a3, v11, v50 & 1, 0, v44, 0, 0, 0);
  CA::OGL::Context::set_gstate(v10, **&v10[82]);
  v58 = (*(a1 + 236) >> 17) & 0xF;
  if (v58)
  {
    if (v58 > 0xC)
    {
      v62 = 0;
    }

    else
    {
      v62 = dword_183E2D698[v58 - 1];
      if (v58 == 9 && *a2 && ((*a2)[11].i8[5] & 8) != 0)
      {
        v62 = 8388736;
      }
    }

    v63 = bswap32(v62);
    v57.i32[0] = v63;
    v57.i32[1] = v63 >> 8;
    v57.i32[2] = HIWORD(v63);
    v64.i64[0] = 0xFF000000FFLL;
    v64.i64[1] = 0xFF000000FFLL;
    v65 = vandq_s8(v57, v64);
    v65.i32[3] = vshrq_n_u32(vdupq_n_s32(v63), 0x18uLL).i32[3];
    *(*&v10[2] + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v65), vdupq_n_s32(0x3B808081u)));
    v66[0] = 0;
    v66[1] = 0;
    CA::OGL::emit_combine(v10, 0, 0, 0, *&v68[8], v66);
  }

  *(*&v10[2] + 497) &= ~1u;
  if (v40)
  {
    CA::Shape::unref(v40);
  }
}

uint64_t CA::OGL::filter_source_layer_name(uint64_t result)
{
  if (result)
  {
    if ((*(result + 14) & 8) == 0)
    {
      return 0;
    }

    v1 = *(result + 40);
    if (!v1)
    {
      return 0;
    }

    v2 = *(v1 + 16);
    if (!v2)
    {
      return 0;
    }

    v3 = 0;
    v4 = v1 + 24;
    while (1)
    {
      v5 = *(v4 + 8 * v3);
      if (*(v5 + 16) == 431)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }

    if ((v3 & 0x80000000) == 0)
    {
      return *(v5 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CA::OGL::finalize_filter(void *ptr)
{
  v2 = ptr[1];
  if (v2)
  {
    do
    {
      v3 = v2[1];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = ptr[6];
  if (v4)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v4);
  }

  if (*(ptr + 57) == 1)
  {
    v5 = ptr[2];
    if (v5)
    {
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, ptr);
}

void CA::OGL::FilterNode::~FilterNode(CA::OGL::FilterNode *this)
{
  *this = &unk_1EF1FD850;
  CA::OGL::finalize_filter(*(this + 31));
}

{
  *this = &unk_1EF1FD850;
  CA::OGL::finalize_filter(*(this + 31));
  abort();
}

__n128 CA::ColorMatrix::set_ycc_composite(CA::ColorMatrix *this, float a2, float a3, float a4, const float *a5, uint64_t a6, const CA::ColorMatrix *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v36 = a2 - a3;
  *(&v37 + 3) = a3;
  DWORD1(v38) = 1065353216;
  HIDWORD(v39) = 1065353216;
  v40[5] = 1065353216;
  v9 = 0.5 - a4 * 0.5;
  v25 = 0;
  v24 = 0;
  v23 = 1065353216;
  v26 = 0;
  v28 = 0;
  v27 = a4;
  v29 = v9;
  v30 = 0;
  v31 = a4;
  v32 = 0;
  v33 = v9;
  v34 = xmmword_183E20E40;
  v35 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  CA::concat(&v18, &v36, &unk_183E24238, a7);
  CA::concat(v17, &v23, &v18, v10);
  CA::concat(&v18, &unk_183E24288, v17, v11);
  if (a5)
  {
    v12 = 0;
    v13 = a5[3];
    do
    {
      *(&v18 + v12) = vmulq_n_f32(*(&v18 + v12), 1.0 - v13);
      v12 += 16;
    }

    while (v12 != 80);
    v14 = *(&v20 + 1) + a5[1];
    v19.n128_f32[0] = v19.n128_f32[0] + *a5;
    *(&v20 + 1) = v14;
    *(&v21 + 2) = *(&v21 + 2) + a5[2];
    *(&v22 + 2) = *(&v22 + 2) + v13;
  }

  v15 = v21;
  *(this + 2) = v20;
  *(this + 3) = v15;
  *(this + 4) = v22;
  result = v19;
  *this = v18;
  *(this + 1) = result;
  return result;
}

float CA::concat(CA *this, CA::ColorMatrix *a2, const CA::ColorMatrix *a3, const CA::ColorMatrix *a4)
{
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  v7 = *(a3 + 14);
  v6 = *(a3 + 15);
  v8 = *(a3 + 10);
  v9 = *(a3 + 11);
  v10 = *(a2 + 1);
  v12 = *(a3 + 4);
  v11 = *(a3 + 5);
  v13 = *(a3 + 1);
  *this = (((v6 * v4) + (v8 * v5)) + (v11 * v10)) + (*a3 * *a2);
  v15 = *(a2 + 7);
  v14 = *(a2 + 8);
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v19 = *(a3 + 16);
  v18 = *(a3 + 17);
  v20 = *(a3 + 6);
  v21 = *(a3 + 7);
  v22 = *a2;
  *(this + 1) = (((v19 * v4) + (v9 * v5)) + (v20 * v10)) + (v13 * *a2);
  v24 = *a3;
  v23 = *(a3 + 1);
  v25 = (((v14 * v6) + (v15 * v8)) + (v17 * v11)) + (*a3 * v16);
  v27 = *(a2 + 12);
  v26 = *(a2 + 13);
  v28 = (v26 * v6) + (v27 * v8);
  v30 = *(a3 + 12);
  v29 = *(a3 + 13);
  v31 = *(a2 + 1);
  v32 = *(a3 + 3);
  *(this + 2) = (((v18 * v4) + (v30 * v5)) + (v21 * v31)) + (*(a3 + 2) * v22);
  v34 = *(a3 + 18);
  v33 = *(a3 + 19);
  v35 = *(a2 + 2);
  v36 = *(a3 + 8);
  v37 = *(a3 + 9);
  *(this + 3) = (((v34 * v4) + (v29 * v35)) + (v36 * v31)) + (v32 * v22);
  v38 = (((*(a2 + 4) + (v33 * *(a2 + 3))) + (v7 * v35)) + (v37 * v31)) + (v12 * v22);
  v39 = *(a2 + 10);
  v40 = *(a2 + 11);
  *(this + 4) = v38;
  *(this + 5) = v25;
  v41 = *(a3 + 4);
  v42 = *(a3 + 5);
  v43 = (v28 + (v42 * v40)) + (v39 * v24);
  v44 = ((v19 * v14) + (v9 * v15)) + (v20 * v17);
  v45 = *(a2 + 5);
  *(this + 6) = v44 + (v23 * v45);
  v46 = *(a2 + 6);
  v47 = ((v18 * v14) + (v30 * v15)) + (v46 * v21);
  v49 = *(a3 + 2);
  v48 = *(a3 + 3);
  *(this + 7) = v47 + (v49 * v45);
  v50 = *(a2 + 7);
  *(this + 8) = (((v34 * v14) + (v36 * v46)) + (v50 * v29)) + (v48 * v45);
  v51 = (((*(a2 + 9) + (v7 * v50)) + (v37 * v46)) + (*(a2 + 8) * v33)) + (v41 * v45);
  *(this + 10) = v43;
  v53 = *(a2 + 17);
  v52 = *(a2 + 18);
  v54 = *(a3 + 6);
  v55 = *(a3 + 7);
  v56 = ((v19 * v26) + (v9 * v27)) + (v54 * v40);
  v57 = *(a2 + 10);
  *(this + 11) = v56 + (v57 * v23);
  v58 = *(a3 + 11);
  v59 = *(a2 + 16);
  v60 = (((v52 * v6) + (*(a3 + 10) * v53)) + (v59 * v42)) + (*(a2 + 15) * v24);
  v61 = (v18 * v26) + (v30 * v27);
  v62 = *(a2 + 11);
  *(this + 12) = (v61 + (v49 * v57)) + (v55 * v62);
  v63 = *(a2 + 12);
  v64 = ((v34 * v26) + (v48 * v57)) + (v63 * v29);
  *(this + 9) = v51;
  v65 = *(a3 + 8);
  v66 = *(a3 + 9);
  *(this + 13) = v64 + (v65 * v62);
  v67 = *(a2 + 13);
  v68 = *(a2 + 14);
  *(this + 15) = v60;
  v69 = (v19 * v52) + (v54 * v59);
  v70 = *(a2 + 15);
  *(this + 16) = (v69 + (v58 * v53)) + (v70 * v23);
  v71 = v18 * v52;
  v72 = *(a2 + 16);
  v73 = *(a3 + 13);
  *(this + 17) = ((v71 + (v49 * v70)) + (*(a3 + 12) * v53)) + (v72 * v55);
  v74 = *(a2 + 17);
  *(this + 18) = (((v34 * v52) + (v48 * v70)) + (v65 * v72)) + (v73 * v74);
  *(this + 14) = (((v68 + (v7 * v63)) + (v41 * v57)) + (v67 * v33)) + (v66 * v62);
  result = (((*(a2 + 19) + (v41 * v70)) + (v66 * v72)) + (*(a2 + 18) * v33)) + (*(a3 + 14) * v74);
  *(this + 19) = result;
  return result;
}

void CA::OGL::render_vibrant_color_matrix(int32x2_t **a1, uint64_t a2, int32x2_t *a3, uint64_t a4, float a5)
{
  v192 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v181 = 0u;
  v11 = *(a2 + 40);
  v12 = &v181;
  CA::OGL::get_filter_color_matrix(v11, &v181);
  if (CA::Render::KeyValueArray::get_int_key(v11, 331, 0) && ((v14 = v10[84], *&v14) && *(*&v14 + 8) || (v15 = v10[75], *&v15) && (v188.i8[0] = 0, (*(**&v15 + 80))(v15, CA::OGL::Display::has_detached_layers(void)const::$_0::__invoke, &v188), (v188.i8[0] & 1) != 0)))
  {
    v180 = 0uLL;
    CA::Shape::get_bounds(*(*&v10[82] + 8), &v180);
    v16 = v10[84];
    if (v16)
    {
      v17 = v16 + 6;
    }

    else
    {
      v17 = v10 + 76;
    }

    v18 = *(&v180 + 8);
    v19 = vclez_s32(*(&v180 + 8));
    if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
    {
      v20 = v17[1];
      v21 = vclez_s32(v20);
      if ((vpmax_u32(v21, v21).u32[0] & 0x80000000) != 0 || (*&v22 = vmax_s32(*&v180, *v17), v23 = vsub_s32(vmin_s32(vadd_s32(*&v180, *(&v180 + 8)), vadd_s32(*v17, v20)), *&v22), v24 = vclez_s32(v23), (vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0))
      {
        v18 = 0;
        *(&v180 + 1) = 0;
      }

      else
      {
        *(&v22 + 1) = v23;
        v180 = v22;
        v18 = v23;
      }
    }

    v73 = vclez_s32(v18);
    if ((vpmax_u32(v73, v73).u32[0] & 0x80000000) == 0)
    {
      v74 = a3[7];
      v75 = vclez_s32(v74);
      if ((vpmax_u32(v75, v75).u32[0] & 0x80000000) != 0 || (v76 = a3[6], v77 = vadd_s32(*&v180, v18), *&v78 = vmax_s32(*&v180, v76), v79 = vsub_s32(vmin_s32(v77, vadd_s32(v76, v74)), *&v78), v80 = vclez_s32(v79), (vpmax_u32(v80, v80).u32[0] & 0x80000000) != 0))
      {
        *(&v180 + 1) = 0;
      }

      else
      {
        *(&v78 + 1) = v79;
        v180 = v78;
      }
    }

    v81 = (*(*v10 + 696))(v10, 1, &v180, 2063, @"render-image-render-vibrant-backdrop");
    if (v81)
    {
      v82 = v81;
      v83 = *(a4 + 24);
      if (v83)
      {
        v85 = CA::Render::Layer::process_id(*(v83 + 152));
        v86 = *(a4 + 24);
        if (v86)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v86, v84);
LABEL_40:
          v175 = a2;
          cfa = layer_resource_text;
          (*(*v10 + 888))(v10, v82, 0, v85, @"image-render-vibrant-color", layer_resource_text);
          CA::OGL::Context::push_surface(v10, v82, 0, 8, 0);
          CA::OGL::capture_in_place_backdrop(a1, 1);
          CA::OGL::Context::pop_surface(v10, v88, v89, v90, v91, v92, v93, v94);
          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v187 = 0u;
          v95 = v10[2];
          v96 = v95[4];
          v97.i32[0] = v95[5];
          v97.i32[1] = v95[6];
          v98 = v95[7];
          v99.i64[0] = v97.u32[0];
          v99.i64[1] = v97.u32[1];
          v100.i64[0] = 0xFFFFLL;
          v100.i64[1] = 0xFFFFLL;
          v101 = vandq_s8(v99, v100);
          _Q2 = xmmword_183E21280;
          v103 = vshlq_u64(v101, xmmword_183E21280);
          v104 = v103.i64[0] | v96 | v103.i64[1] | (v98 << 48);
          if (v104 == 0x3C003C003C003C00)
          {
            v105 = &v181;
            v106 = &v182.i8[4];
            v151 = &v183.i64[1];
            v153 = &v184.i32[3];
            v155 = &v182.i64[1];
            v157 = &v183.i32[3];
            v107 = &v185;
            v108 = &v184;
            v159 = &v182.i32[3];
            v161 = &v185.i8[4];
            v109 = &v183;
            v110 = &v182;
            v163 = &v184.i8[4];
            v165 = &v183.i8[4];
            v167 = &v185.i64[1];
            v169 = &v184.i64[1];
            v171 = &v185.i32[3];
          }

          else
          {
            v107 = &v187;
            v108 = &v176;
            v169 = &v176.i64[1];
            v171 = (&v187 | 0xC);
            v109 = &v177;
            v165 = &v177.i8[4];
            v167 = &v187.i64[1];
            v161 = &v187.i8[4];
            v163 = &v176.i8[4];
            v110 = &v178;
            v157 = (&v177 | 0xC);
            v159 = (&v178 | 0xC);
            v153 = (&v176 | 0xC);
            v155 = &v178.i64[1];
            v151 = &v177.i64[1];
            v106 = &v178.i8[4];
            _H1 = v98;
            v112 = vuzp1_s16(v97, v97);
            _Q2.i16[0] = v96;
            __asm
            {
              FCVT            S16, H1
              FCMP            H1, #0
            }

            v115 = 0.0;
            if (!(_NF ^ _VF | _ZF))
            {
              v115 = 1.0 / _S16;
            }

            __asm { FCVT            S2, H2 }

            *_Q2.i32 = v115 * *_Q2.i32;
            v116 = vcvtq_f32_f16(v112);
            *v116.i8 = vmul_n_f32(*v116.i8, v115);
            v179 = vmulq_n_f32(v181, *_Q2.i32);
            v117 = vzip1q_s32(_Q2, v116);
            v118 = vmulq_f32(v182, vzip1q_s32(v117, vdupq_lane_s32(*v117.i8, 1)));
            v119 = vmulq_f32(v183, vzip1q_s32(v116, v116));
            *v116.i8 = vdup_lane_s32(*v116.i8, 1);
            v120 = v116;
            *&v120.i32[1] = _S16;
            v121 = vzip1q_s32(v120, v120);
            v121.i32[2] = v116.i32[0];
            v177 = v119;
            v178 = v118;
            v176 = vmulq_f32(v184, v121);
            v187 = vmulq_n_f32(v185, _S16);
            v105 = &v179;
          }

          CA::OGL::bind_filter_surface(v10, a3, 0, a5);
          CA::OGL::Context::bind_surface(v10, v82, 1u, 0, 0, 0.0);
          *(*&v10[2] + 16) = 51;
          v122 = *v106;
          v123 = *v151;
          v124 = *v153;
          v125 = v105->i32[1];
          v126 = *v155;
          v127 = *v157;
          v128 = v107->i32[0];
          v129 = *v159;
          v130 = v108->i32[0];
          v131 = *v161;
          v132 = v105->i32[2];
          v133 = v105->i32[3];
          v134 = v109->i32[0];
          v135 = *v163;
          v136 = *v167;
          v137 = v110->i32[0];
          v138 = *v165;
          v139 = *v169;
          v140 = *v171;
          v10[20].i32[0] = v105->i32[0];
          v10[20].i32[1] = v122;
          v10[21].i32[0] = v123;
          v10[21].i32[1] = v124;
          v10[22].i32[0] = v125;
          v10[22].i32[1] = v126;
          v10[23].i32[0] = v127;
          v10[23].i32[1] = v128;
          v10[24].i32[0] = v132;
          v10[24].i32[1] = v129;
          v10[25].i32[0] = v130;
          v10[25].i32[1] = v131;
          v10[26].i32[0] = v133;
          v10[26].i32[1] = v134;
          v10[27].i32[0] = v135;
          v10[27].i32[1] = v136;
          v10[28].i32[0] = v137;
          v10[28].i32[1] = v138;
          v10[29].i32[0] = v139;
          v10[29].i32[1] = v140;
          float_key = CA::Render::KeyValueArray::get_float_key(*(v175 + 40), 358, 0.0);
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v142 = *&dword_1ED4E9760;
          if (*&dword_1ED4E9760 == 0.0)
          {
            v142 = float_key;
          }

          v143 = 1.0;
          *v10[30].i32 = powf(v142, 1.0 / *v10[72].i32);
          int_key = CA::Render::KeyValueArray::get_int_key(*(v175 + 40), 359, 0);
          if (BYTE14(xmmword_1ED4E98AC) != 1)
          {
            v143 = int_key;
          }

          *v10[40].i32 = v143;
          v191 = 0u;
          v145 = *(*&v10[82] + 8);
          v188.i64[0] = v10;
          v188.i64[1] = v145;
          v190 = 0u;
          v189 = 0;
          WORD4(v190) = 256;
          CA::OGL::Context::ClippedArray::start(&v188);
          v186[0] = 0;
          v186[1] = 0;
          while (CA::OGL::Context::ClippedArray::next_rect(&v188, v186))
          {
            if (v10[13].i32[1])
            {
              v146 = 6;
            }

            else
            {
              v146 = 4;
            }

            if ((*&v10[18] + 4) > *&v10[19] || (v147 = v10[16]) != 0 && *&v10[15] + v146 > v147)
            {
              v10[173].i16[0] |= 0x20u;
              CA::OGL::Context::array_flush(v10);
              v10[18] = 0;
              v10[14] = (&v10[173] + 2);
              *v10[15].i8 = xmmword_183E20E50;
            }

            CA::OGL::Context::array_rect(v10, a3[6].i32[0] * a5, a3[6].i32[1] * a5, (a3[7].i32[0] + a3[6].i32[0]) * a5, (a3[7].i32[1] + a3[6].i32[1]) * a5);
            v148 = *&v10[17] + 48 * *&v10[18];
            *(v148 - 124) = 0;
            *(v148 - 32) = 0;
            *(v148 - 176) = 0;
            *(v148 - 168) = 0;
            *(v148 - 116) = 0;
            *&v149 = vcvt_f32_s32(a3[7]);
            *(v148 - 128) = v149;
            *(v148 - 28) = DWORD1(v149);
            *(v148 - 120) = v149;
            *(v148 - 20) = DWORD1(v149);
            *(&v149 + 1) = v149;
            *(v148 - 80) = v149;
            *(v148 - 24) = 0;
            *(v148 - 160) = v104;
            *(v148 - 112) = v104;
            *(v148 - 64) = v104;
            *(v148 - 16) = v104;
          }

          CA::OGL::Context::unbind_surface(v10, v82, 1);
          if (v10[84] != a3)
          {
            CA::OGL::Context::unbind_surface(v10, a3, 0);
          }

          *(*&v10[2] + 16) = 0;
          *(*&v10[2] + 19) = 0;
          CA::OGL::Context::release_surface(v10, v82);
          if (cfa)
          {
            CFRelease(cfa);
          }

          return;
        }
      }

      else
      {
        v85 = 0;
      }

      layer_resource_text = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v174 = a2;
    v188 = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v25 = v10[2];
    v26 = v25[4];
    _Q2.i16[0] = v25[5];
    _Q2.i16[2] = v25[6];
    v27 = v25[7];
    v28.i64[0] = _Q2.u32[0];
    v28.i64[1] = _Q2.u32[1];
    v29.i64[0] = 0xFFFFLL;
    v29.i64[1] = 0xFFFFLL;
    _Q0 = vshlq_u64(vandq_s8(v28, v29), xmmword_183E21280);
    cf = v26;
    v170 = _Q2.i64[0];
    v168 = v27;
    if ((_Q0.i64[0] | v26 | _Q0.i64[1] | (v27 << 48)) == 0x3C003C003C003C00)
    {
      v31 = &v182.i8[4];
      v32 = &v183.i64[1];
      v33 = &v184.i32[3];
      v150 = &v182.i64[1];
      v152 = &v183.i32[3];
      v34 = &v185;
      v35 = &v184;
      v154 = &v182.i32[3];
      v156 = &v185.i8[4];
      v36 = &v183;
      v37 = &v182;
      v158 = &v184.i8[4];
      v160 = &v183.i8[4];
      v162 = &v185.i64[1];
      v164 = &v184.i64[1];
      v166 = &v185.i32[3];
    }

    else
    {
      v34 = &v176;
      v35 = &v177;
      v164 = &v177.i64[1];
      v166 = (&v176 | 0xC);
      v36 = &v178;
      v160 = &v178.i8[4];
      v162 = &v176.i64[1];
      v156 = &v176.i8[4];
      v158 = &v177.i8[4];
      v37 = &v179;
      v152 = (&v178 | 0xC);
      v154 = (&v179 | 0xC);
      v150 = &v179.i64[1];
      v33 = (&v177 | 0xC);
      v32 = &v178.i64[1];
      v31 = &v179.i8[4];
      _Q0.i32[0] = v27;
      v38 = vuzp1_s16(*_Q2.i8, *_Q0.i8);
      _Q2.i16[0] = v26;
      __asm
      {
        FCVT            S16, H0
        FCMP            H0, #0
      }

      _Q0.i32[0] = 0;
      if (!(_NF ^ _VF | _ZF))
      {
        *_Q0.i32 = 1.0 / _S16;
      }

      __asm { FCVT            S2, H2 }

      *_Q2.i32 = *_Q0.i32 * *_Q2.i32;
      *_Q0.i8 = vmul_n_f32(*&vcvtq_f32_f16(v38), *_Q0.i32);
      v188 = vmulq_n_f32(v181, *_Q2.i32);
      v45 = vzip1q_s32(_Q2, _Q0);
      v46 = vmulq_f32(v182, vzip1q_s32(v45, vdupq_lane_s32(*v45.i8, 1)));
      v47 = vmulq_f32(v183, vzip1q_s32(_Q0, _Q0));
      *_Q0.i8 = vdup_lane_s32(*_Q0.i8, 1);
      v48 = _Q0;
      *&v48.i32[1] = _S16;
      v49 = vzip1q_s32(v48, v48);
      v49.i32[2] = _Q0.i32[0];
      v178 = v47;
      v179 = v46;
      v176 = vmulq_n_f32(v185, _S16);
      v177 = vmulq_f32(v184, v49);
      v12 = &v188;
    }

    CA::OGL::bind_filter_surface(v10, a3, 0, a5);
    *(*&v10[2] + 16) = 52;
    v50 = *v31;
    v51 = *v32;
    v52 = *v33;
    v53 = v12->i32[1];
    v54 = *v150;
    v55 = *v152;
    v56 = v34->i32[0];
    v57 = *v154;
    v58 = v35->i32[0];
    v59 = *v156;
    v60 = v12->i32[2];
    v61 = v12->i32[3];
    v62 = v36->i32[0];
    v63 = *v158;
    v64 = *v162;
    v65 = v37->i32[0];
    v66 = *v160;
    v67 = *v164;
    v68 = *v166;
    v10[20].i32[0] = v12->i32[0];
    v10[20].i32[1] = v50;
    v10[21].i32[0] = v51;
    v10[21].i32[1] = v52;
    v10[22].i32[0] = v53;
    v10[22].i32[1] = v54;
    v10[23].i32[0] = v55;
    v10[23].i32[1] = v56;
    v10[24].i32[0] = v60;
    v10[24].i32[1] = v57;
    v10[25].i32[0] = v58;
    v10[25].i32[1] = v59;
    v10[26].i32[0] = v61;
    v10[26].i32[1] = v62;
    v10[27].i32[0] = v63;
    v10[27].i32[1] = v64;
    v10[28].i32[0] = v65;
    v10[28].i32[1] = v66;
    v10[29].i32[0] = v67;
    v10[29].i32[1] = v68;
    v69 = CA::Render::KeyValueArray::get_float_key(*(v174 + 40), 358, 0.0);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v70 = *&dword_1ED4E9760;
    if (*&dword_1ED4E9760 == 0.0)
    {
      v70 = v69;
    }

    v71 = 1.0;
    *v10[30].i32 = powf(v70, 1.0 / *v10[72].i32);
    v72 = CA::Render::KeyValueArray::get_int_key(*(v174 + 40), 359, 0);
    if (BYTE14(xmmword_1ED4E98AC) != 1)
    {
      v71 = v72;
    }

    *v10[40].i32 = v71;
    v187.i16[0] = cf;
    v187.i16[1] = v170;
    v187.i16[2] = WORD2(v170);
    v187.i16[3] = v168;
    CA::OGL::emit_filter_quads_color(v10, a3, &v187, a5);
    if (v10[84] != a3)
    {
      CA::OGL::Context::unbind_surface(v10, a3, 0);
    }

    *(*&v10[2] + 16) = 0;
    *(*&v10[2] + 19) = 0;
  }
}