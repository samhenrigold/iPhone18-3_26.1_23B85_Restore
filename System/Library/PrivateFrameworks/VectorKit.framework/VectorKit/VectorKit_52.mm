uint64_t md::HorizontalTextLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, md::LabelAnimator *a3, float32x2_t *a4, float32x2_t *a5)
{
  v9 = *(a1 + 528);
  v10.i32[0] = *(a2 + 896);
  *(a1 + 536) = v10.i32[0];
  v11 = *(a2 + 900);
  *(a1 + 540) = v11;
  v12.f32[0] = -v11;
  v12.i32[1] = v10.i32[0];
  v10.f32[1] = v11;
  v13 = vmla_n_f32(vmul_n_f32(v10, v9), v12, *(a1 + 532));
  *(a1 + 328) = v13;
  *(a1 + 508) = fabsf(v13.f32[0] + -1.0) > 0.000001;
  result = md::TextLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  if (result == 37)
  {
    v15 = *(a1 + 592);
    v16 = *(v15 + 108);
    if ((*(a1 + 1189) & 1) != 0 || v16 != *(a1 + 1128))
    {
      *(a1 + 1128) = v16;
      *(a1 + 1120) = *(a1 + 1124) * *(a1 + 748);
      md::HorizontalTextLabelPart::placeLines((a1 + 592), (a1 + 1088), a2, a1 + 312);
      v17 = 0;
      v18 = *(a1 + 1184);
      *(a1 + 808) = *(a1 + 1176);
      *(a1 + 812) = v18 << 16;
      v15 = *(a1 + 592);
    }

    else
    {
      v17 = *(a1 + 812);
      v18 = *(a1 + 814);
    }

    LOBYTE(v50[0]) = 0;
    if (v17 == v18 || (v19 = md::FontAtlas::commitGlyphs(*(a2 + 304), v15 + 128, (a1 + 812), v50)) != 0)
    {
      LOBYTE(v19) = md::FontAtlas::commitGlyphs(*(a2 + 304), v15 + 32, (a1 + 808), v50);
    }

    *(a1 + 883) = v19;
    v20 = *(a1 + 1178);
    v21 = *(a1 + 1176);
    if (v20 == v21)
    {
      v25 = 0;
      LODWORD(v26) = 0;
      *(a1 + 1180) = 0;
    }

    else
    {
      v22 = (v20 - v21);
      v23 = *(a1 + 592);
      v24 = v23[4] + 40 * *(a1 + 1176);
      v25 = *(v24 + 36) | ((*(v24 + 40 * v22 - 4) + *(v24 + 40 * v22 - 2)) << 16);
      *(a1 + 1180) = v25;
      v26 = (v23[21] - v23[20]) >> 6;
    }

    *(a1 + 1186) = v26;
    *(a1 + 816) = v25;
    *(a1 + 820) = v26 << 16;
    v27 = *(*(a1 + 32) + 68);
    *(a1 + 416) = v27;
    *(a1 + 352) = a4->i32[0];
    *(a1 + 356) = a4->i32[1];
    *(a1 + 510) = fabsf(v27 + -1.0) > 0.000001;
    v28 = vadd_f32(*a5, *a4);
    *(a1 + 520) = v28;
    *(a1 + 344) = v28;
    md::CollisionObject::setupShapeData(a1 + 312);
    if (*(a1 + 565) == 1)
    {
      md::TextLabelPart::generateModelMatrix(a1, v29, v30, v31);
      v32 = *(a1 + 856);
      *(a1 + 424) = v32;
      v33 = *(a1 + 592);
      v35 = *(v33 + 64);
      v34 = *(v33 + 72);
      if (v34 != v35)
      {
        gm::operator*<double,4,4,4>(v50, (a2 + 912), v32);
        v47 = vcvtq_f64_f32(v35[1]);
        v48 = 0;
        v49[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v50, &v47);
        v49[1] = v36;
        v49[2] = v37;
        v45 = vcvtq_f64_f32(v34[-7]);
        v46 = 0;
        v38 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v50, &v45);
        v39 = 0;
        v47.f64[0] = v38;
        v47.f64[1] = v40;
        v48 = v41;
        v42 = 0.0;
        do
        {
          v42 = v42 + *&v49[v39] * *&v49[v39];
          ++v39;
        }

        while (v39 != 3);
        v43 = 0;
        v44 = 0.0;
        do
        {
          v44 = v44 + v47.f64[v43] * v47.f64[v43];
          ++v43;
        }

        while (v43 != 3);
        *(a1 + 824) = v42 < v44;
      }
    }

    return 37;
  }

  return result;
}

float32x2_t md::CaptionedIconLabelPart::textOriginOffsetForPosition(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, float *a6, float *a7, uint64_t a8)
{
  v13 = 684;
  if (!a2)
  {
    v13 = 632;
  }

  v14 = (a1 + v13);
  v15 = a3;
  if (a5 == 8)
  {
    v46 = &diagonalDownIconLabelAnchors;
  }

  else if (a5 == 4)
  {
    v46 = &diagonalUpIconLabelAnchors;
  }

  else
  {
    if (a4)
    {
      v16 = &perpendicularIconLabelAnchors + 2 * a3;
      v17 = v16[1];
      v18 = *v16;
      v19 = gss::LabelPositionToMask(a3);
      if (v18 != 3 && v17 != 3)
      {
        v24 = 0;
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    v46 = &iconLabelAnchors;
  }

  v47 = &v46[2 * a3];
  v17 = v47[1];
  v18 = *v47;
  v48 = v18 == 3 || v17 == 3;
  v24 = v48;
  if (!v48 && (a4 & 1) == 0 && *(a1 + 854) == 2)
  {
    v24 = 1;
    if (v18 == 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v49 = gss::LabelPositionToMask(a3);
    if ((v49 & 0xE) != 0)
    {
      v25 = 2;
    }

    else
    {
      if ((v49 & 0xE0) == 0)
      {
        v22 = 0.0;
        goto LABEL_20;
      }

      v25 = 3;
    }

LABEL_19:
    v22 = v14[v25];
LABEL_20:
    v14 += 5;
    goto LABEL_21;
  }

  v19 = gss::LabelPositionToMask(a3);
  if (!v24)
  {
LABEL_18:
    v25 = 4;
    goto LABEL_19;
  }

LABEL_11:
  if ((v19 & 0xE) != 0)
  {
    v21 = 2;
    goto LABEL_14;
  }

  if ((v19 & 0xE0) != 0)
  {
    v21 = 3;
LABEL_14:
    v22 = v14[v21];
    goto LABEL_15;
  }

  v22 = 0.0;
LABEL_15:
  if ((v19 & 0x38) != 0)
  {
    v24 = 0;
  }

  else
  {
    if ((v19 & 0x83) == 0)
    {
      v24 = 0;
      v23 = 0.0;
      goto LABEL_22;
    }

    v24 = 0;
    ++v14;
  }

LABEL_21:
  v23 = *v14;
LABEL_22:
  switch(v18)
  {
    case 2:
      v26 = a6[2] + v23;
LABEL_24:
      v27 = LODWORD(v26);
      goto LABEL_25;
    case 3:
      v26 = (a6[2] + *a6) * 0.5;
      goto LABEL_24;
    case 1:
      v26 = *a6 - v23;
      goto LABEL_24;
  }

  v27 = 0;
LABEL_25:
  switch(v17)
  {
    case 3:
      v28 = (a6[3] + a6[1]) * 0.5;
LABEL_27:
      v27.f32[1] = v28;
      break;
    case 8:
      v28 = a6[3] + v22;
      goto LABEL_27;
    case 5:
      v28 = a6[1] - v22;
      goto LABEL_27;
  }

  if (a5 == 4)
  {
    v30 = &diagonalUpLabelAnchors + 2 * v15;
    v31 = 0x3F12D5E73F51B3F2;
  }

  else if (a5 == 8)
  {
    v30 = &diagonalDownLabelAnchors + 2 * v15;
    v31 = 0xBF12D5E73F51B3F2;
  }

  else
  {
    v29 = &horizontalAlignWithIconLabelAnchors;
    if (!v24)
    {
      v29 = &horizontalLabelAnchors;
    }

    v30 = &v29[2 * v15];
    v31 = 1065353216;
  }

  v32 = *v30;
  v33 = v30[1];
  if (v32 == 1)
  {
    v34 = a7[2] - *a7;
    v35 = 0.5;
LABEL_35:
    v36 = v34 * v35;
    v37.i32[1] = 0;
    v37.f32[0] = v34 * v35;
    goto LABEL_36;
  }

  if (v32 == 2)
  {
    v34 = a7[2] - *a7;
    v35 = -0.5;
    goto LABEL_35;
  }

  v36 = 0.0;
  v37 = 0;
LABEL_36:
  if (v33 == 6)
  {
    v38 = a2;
    v63 = v31;
    v67 = v27;
    v57 = v36;
    v60 = v37.i32[0];
    (*(*a8 + 336))(a8, v38, a3);
    v36 = v57;
    v37.i32[0] = v60;
    v31 = v63;
    v27 = v67;
LABEL_38:
    v40 = -0.5;
LABEL_39:
    v41 = v39 * v40;
LABEL_40:
    v37.f32[1] = v41;
    goto LABEL_41;
  }

  v41 = 0.0;
  if (v33 > 6)
  {
    switch(v33)
    {
      case 8:
        v39 = a7[3] - a7[1];
        goto LABEL_38;
      case 7:
        v50 = a7[1] - a7[3];
        v56 = a2;
        v64 = v31;
        v68 = v27;
        v58 = v36;
        v61 = v37.i32[0];
        v52 = (*(*a8 + 328))(a8, v56, a3);
        break;
      case 9:
        v50 = a7[1] - a7[3];
        v51 = a2;
        v64 = v31;
        v68 = v27;
        v58 = v36;
        v61 = v37.i32[0];
        (*(*a8 + 320))(a8, v51, a3);
        break;
      default:
        goto LABEL_41;
    }

    v36 = v58;
    v37.i32[0] = v61;
    v31 = v64;
    v27 = v68;
    v41 = v52 + (v50 * 0.5);
    goto LABEL_40;
  }

  if (v33 == 5)
  {
    v39 = a7[3] - a7[1];
    v40 = 0.5;
    goto LABEL_39;
  }

  if (v33 == 4)
  {
    v53 = a7[1] - a7[3];
    v54 = a2;
    v65 = v31;
    v69 = v27;
    v59 = v36;
    v62 = v37.i32[0];
    v55 = (*(*a8 + 336))(a8, v54, a3);
    v36 = v59;
    v37.i32[0] = v62;
    v31 = v65;
    v27 = v69;
    v41 = -(v55 + (v53 * 0.5));
    goto LABEL_40;
  }

LABEL_41:
  if (*v31.i32 != 1.0)
  {
    v42 = vmul_n_f32(v31, v36);
    v43 = -*&v31.i32[1];
    v44 = vdup_lane_s32(v31, 0);
    v44.f32[0] = v43;
    v37 = vmla_n_f32(v42, v44, v41);
  }

  return vadd_f32(v37, v27);
}

uint64_t md::LabelManager::clearPreviouslySelectedLabelMarker(std::mutex *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2A11A98;
  v2[1] = this;
  v2[3] = v2;
  md::LabelManager::queueCommand(this, 60, 1, v2);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
}

void sub_1B2B4E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, unsigned int a5, __n128 a6, double a7)
{
  if (a4 >= 0x17)
  {
    v11 = 23;
  }

  else
  {
    v11 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v14, *(*a3 + 24), 92, v11, a5, 0, a6, a7);
  v13 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v14)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 489, v11, a5, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v13, v12);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, __n128 a5, double a6)
{
  if (a4 >= 0x17)
  {
    v9 = 23;
  }

  else
  {
    v9 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v12, *(*a3 + 24), 93, v9, 2u, 0, a5, a6);
  v11 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v12)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 490, v9, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v11, v10);
}

uint64_t *gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(int a1)
{
  {
    v49 = a1;
    a1 = v49;
    if (v2)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B0710);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::_defaultValue = v80;
      a1 = v49;
    }
  }

  {
    v50 = a1;
    a1 = v50;
    if (v3)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, 0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultStrokeColor3d = v80;
      a1 = v50;
    }
  }

  {
    v51 = a1;
    a1 = v51;
    if (v4)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14C0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorStopped = v80;
      a1 = v51;
    }
  }

  {
    v52 = a1;
    a1 = v52;
    if (v5)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorStopped = v80;
      a1 = v52;
    }
  }

  {
    v53 = a1;
    a1 = v53;
    if (v11)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14C0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorSlow = v80;
      a1 = v53;
    }
  }

  {
    v54 = a1;
    a1 = v54;
    if (v12)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorSlow = v80;
      a1 = v54;
    }
  }

  {
    v55 = a1;
    a1 = v55;
    if (v14)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14B0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorMedium = v80;
      a1 = v55;
    }
  }

  {
    v56 = a1;
    a1 = v56;
    if (v15)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorMedium = v80;
      a1 = v56;
    }
  }

  {
    v57 = a1;
    a1 = v57;
    if (v17)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14A0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorFast = v80;
      a1 = v57;
    }
  }

  {
    v58 = a1;
    a1 = v58;
    if (v18)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorFast = v80;
      a1 = v58;
    }
  }

  {
    v59 = a1;
    a1 = v59;
    if (v20)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultStrokeColor = v80;
      a1 = v59;
    }
  }

  {
    v60 = a1;
    a1 = v60;
    if (v22)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelHaloColor = v80;
      a1 = v60;
    }
  }

  {
    v61 = a1;
    a1 = v61;
    if (v24)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B2400);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultArrowColor = v80;
      a1 = v61;
    }
  }

  {
    v62 = a1;
    a1 = v62;
    if (v25)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, 0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultArrowHaloColor = v80;
      a1 = v62;
    }
  }

  {
    v63 = a1;
    a1 = v63;
    if (v26)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, 0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultDropShadowColor = v80;
      a1 = v63;
    }
  }

  {
    v64 = a1;
    a1 = v64;
    if (v27)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultBuildingLandmarkColor = v80;
      a1 = v64;
    }
  }

  {
    v65 = a1;
    a1 = v65;
    if (v29)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B2410);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultBuildingFlatColor = v80;
      a1 = v65;
    }
  }

  {
    v66 = a1;
    a1 = v66;
    if (v30)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconGlyphColor = v80;
      a1 = v66;
    }
  }

  {
    v67 = a1;
    a1 = v67;
    if (v32)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconHaloColor = v80;
      a1 = v67;
    }
  }

  {
    v68 = a1;
    a1 = v68;
    if (v34)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B2420);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconDropShadowColor = v80;
      a1 = v68;
    }
  }

  {
    v69 = a1;
    a1 = v69;
    if (v35)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B2430);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconBadgeLightColor = v80;
      a1 = v69;
    }
  }

  {
    v70 = a1;
    a1 = v70;
    if (v36)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B2440);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultCurbColor = v80;
      a1 = v70;
    }
  }

  {
    v71 = a1;
    a1 = v71;
    if (v37)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultBuildingLandmarkColor3d = v80;
      a1 = v71;
    }
  }

  {
    v72 = a1;
    a1 = v72;
    if (v39)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, 0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconOverlayColor = v80;
      a1 = v72;
    }
  }

  {
    v73 = a1;
    a1 = v73;
    if (v40)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14C0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorStopped = v80;
      a1 = v73;
    }
  }

  {
    v74 = a1;
    a1 = v74;
    if (v41)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14C0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorSlow = v80;
      a1 = v74;
    }
  }

  {
    v75 = a1;
    a1 = v75;
    if (v42)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14B0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorMedium = v80;
      a1 = v75;
    }
  }

  {
    v76 = a1;
    a1 = v76;
    if (v43)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, xmmword_1B33B14A0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorFast = v80;
      a1 = v76;
    }
  }

  {
    v77 = a1;
    a1 = v77;
    if (v44)
    {
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, 0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultcolor = v80;
      a1 = v77;
    }
  }

  {
    v78 = a1;
    a1 = v78;
    if (v45)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultHaloColor = v80;
      a1 = v78;
    }
  }

  {
    v79 = a1;
    a1 = v79;
    if (v47)
    {
      __asm { FMOV            V0.4S, #1.0 }

      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v80, _Q0);
      gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultHaloTravelledColor = v80;
      a1 = v79;
    }
  }

  if (a1 <= 162)
  {
    if (a1 <= 75)
    {
      if (a1 <= 53)
      {
        switch(a1)
        {
          case 3:
            return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultStrokeColor3d;
          case 43:
            return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorStopped;
          case 44:
            return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorStopped;
        }
      }

      else if (a1 > 64)
      {
        if (a1 == 65)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorMedium;
        }

        if (a1 == 66)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorMedium;
        }
      }

      else
      {
        if (a1 == 54)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorSlow;
        }

        if (a1 == 55)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorSlow;
        }
      }
    }

    else if (a1 > 133)
    {
      if (a1 > 146)
      {
        if (a1 == 147)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultDropShadowColor;
        }

        if (a1 == 162)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultBuildingLandmarkColor;
        }
      }

      else
      {
        if (a1 == 134)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultArrowColor;
        }

        if (a1 == 135)
        {
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultArrowHaloColor;
        }
      }
    }

    else if (a1 > 92)
    {
      if (a1 == 93)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultStrokeColor;
      }

      if (a1 == 116)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelHaloColor;
      }
    }

    else
    {
      if (a1 == 76)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficFillColorFast;
      }

      if (a1 == 77)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultTrafficSecondaryColorFast;
      }
    }

    return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::_defaultValue;
  }

  if (a1 <= 341)
  {
    if (a1 <= 176)
    {
      switch(a1)
      {
        case 163:
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultBuildingFlatColor;
        case 172:
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconGlyphColor;
        case 173:
          return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconHaloColor;
      }
    }

    else if (a1 > 252)
    {
      if (a1 == 253)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultCurbColor;
      }

      if (a1 == 303)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultBuildingLandmarkColor3d;
      }
    }

    else
    {
      if (a1 == 177)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconDropShadowColor;
      }

      if (a1 == 182)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconBadgeLightColor;
      }
    }

    return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::_defaultValue;
  }

  if (a1 > 430)
  {
    if (a1 > 503)
    {
      if (a1 == 504)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultHaloColor;
      }

      if (a1 == 506)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultHaloTravelledColor;
      }
    }

    else
    {
      if (a1 == 431)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorFast;
      }

      if (a1 == 459)
      {
        return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultcolor;
      }
    }

    return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::_defaultValue;
  }

  if (a1 <= 428)
  {
    if (a1 == 342)
    {
      return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultLabelIconOverlayColor;
    }

    if (a1 == 428)
    {
      return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorStopped;
    }

    return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::_defaultValue;
  }

  if (a1 == 429)
  {
    return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorSlow;
  }

  else
  {
    return &gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::PropertyID)::kDefaultGradientMaskFactorMedium;
  }
}

void md::DaVinciCenterLineRoadsTileData::updateViewAndTransformConstantData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ggl::BufferMemory::BufferMemory(v24);
  ggl::ResourceAccessor::accessConstantData(v26, 0, a2, 0);
  ggl::BufferMemory::operator=(v24, v26);
  ggl::BufferMemory::~BufferMemory(v26);
  v6 = *(a1 + 832);
  ggl::BufferMemory::BufferMemory(v23);
  ggl::ResourceAccessor::accessConstantData(v26, 0, v6, 1);
  ggl::BufferMemory::operator=(v23, v26);
  ggl::BufferMemory::~BufferMemory(v26);
  v7 = 0;
  v8 = v25;
  v9 = v23[5];
  do
  {
    *(v9 + v7) = *(v8 + v7);
    v7 += 4;
  }

  while (v7 != 64);
  *(v9 + 64) = *(v8 + 64);
  ggl::BufferMemory::~BufferMemory(v23);
  ggl::BufferMemory::~BufferMemory(v24);
  ggl::BufferMemory::BufferMemory(v24);
  ggl::ResourceAccessor::accessConstantData(v26, 0, a3, 0);
  ggl::BufferMemory::operator=(v24, v26);
  ggl::BufferMemory::~BufferMemory(v26);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v10, *(a1 + 848));
  v11 = 0;
  v12 = v25;
  v13 = v27;
  do
  {
    *(v13 + v11) = *(v12 + v11);
    v11 += 4;
  }

  while (v11 != 16);
  for (i = 0; i != 12; i += 4)
  {
    *(v13 + 16 + i) = *(v12 + 16 + i);
  }

  v15 = 0;
  v16 = v13 + 32;
  v17 = v12 + 32;
  do
  {
    for (j = 0; j != 16; j += 4)
    {
      *(v16 + j) = *(v17 + j);
    }

    ++v15;
    v16 += 16;
    v17 += 16;
  }

  while (v15 != 16);
  for (k = 0; k != 16; k += 4)
  {
    *(v13 + 288 + k) = *(v12 + 288 + k);
  }

  for (m = 0; m != 12; m += 4)
  {
    *(v13 + 304 + m) = *(v12 + 304 + m);
  }

  for (n = 0; n != 12; n += 4)
  {
    *(v13 + 320 + n) = *(v12 + 320 + n);
  }

  v22 = *(v12 + 336);
  *(v13 + 352) = *(v12 + 352);
  *(v13 + 336) = v22;
  ggl::BufferMemory::~BufferMemory(v26);
  ggl::BufferMemory::~BufferMemory(v24);
}

void md::RoadLayer::layout(uint64_t a1, md::LayoutContext **a2)
{
  v2 = a2;
  if (*(a2 + 56) == 1)
  {
    v51 = *(a1 + 208);
    v9 = (v51 + 80);
    v6 = (v51 + 104);
  }

  else
  {
    v4 = *(a1 + 208);
    v5 = v4 + 9;
    v6 = v4 + 12;
    v7 = v4 + 11;
    v8 = v4 + 14;
    if (*(a2 + 105) == 1)
    {
      v6 = v8;
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  v10 = *v9;
  v11 = *v6;
  if (*(a2 + 104) == 1)
  {
    v12 = gdc::Context::get<md::CameraContext>(*(*a2 + 1));
    v13 = *(v2 + 16);
    v14 = gdc::CameraView::position(v12);
    v54 = *v14;
    *&v55[0] = *(v14 + 16);
    geo::Geocentric<double>::toMercator3<double>(&v54, &v56);
    v15 = v57;
    *(v10 + 40) = md::RoadLayer::calculateZBias(v16, v13, v15);
  }

  *(a1 + 56) = v10;
  *(a1 + 64) = v10;
  *(a1 + 88) = v10;
  *(a1 + 96) = v10;
  *(a1 + 72) = v10;
  *(a1 + 80) = v10;
  *(a1 + 104) = v11;
  md::LayoutContext::frameState(*v2);
  if ((*(v17 + 632) & 1) == 0)
  {
    v39 = *(a1 + 8);
    v40 = *(a1 + 16);
    goto LABEL_47;
  }

  v53 = v2;
  v18 = *(*v2 + 1);
  v19 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v18, 0x1AF456233693CD46uLL);
  if (v19 && (v20 = v19[5], *(v20 + 8) == 0x1AF456233693CD46))
  {
    v21 = *(v20 + 32);
  }

  else
  {
    v21 = 0;
  }

  v52 = a1;
  if (*(v21 + 3784))
  {
    v22 = *(a1 + 120);
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = *(gdc::Camera::cameraFrame(v21) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v27 = v23 | (4 * i);
          geo::Frustum<double>::transformed(&v56, v21 + 984, v22 + 1696 + 56 * v27);
          v28 = v22 + 32 + 104 * v27;
          v29 = *(v28 + 56);
          v30 = *(v28 + 88);
          v55[0] = *(v28 + 72);
          v55[1] = v30;
          v54 = v29;
          v62 = 0uLL;
          v63 = v25;
          gm::Box<double,3>::operator+=(&v54, &v62);
          for (j = 0; j != 192; j += 32)
          {
            v32 = 0;
            v33 = *(&v56 + j + 16);
            v60 = *(&v56 + j);
            v61 = v33;
            do
            {
              v34 = &v55[-1] + v32;
              if (*(&v60 + v32) >= 0.0)
              {
                v34 = v55 + v32 + 8;
              }

              *(&v62 + v32) = *v34;
              v32 += 8;
            }

            while (v32 != 24);
            v35 = 0;
            v36 = 0.0;
            do
            {
              v36 = v36 + *(&v56 + j + v35) * *(&v62 + v35);
              v35 += 8;
            }

            while (v35 != 24);
            v37 = *&v58[j] + v36;
            if (v37 < 0.0)
            {
              break;
            }
          }

          v38 = 1 << (4 * i + v23);
          if (v37 < 0.0)
          {
            v38 = 0;
          }

          v24 |= v38;
        }

        ++v23;
      }

      while (v23 != 4);
      goto LABEL_35;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v56, *(a1 + 168), 0);
    v42 = v59;
    v43 = 0.0;
  }

  else
  {
    v41 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v18) == 1 && *(a1 + 160) == 1)
    {
      v41 = *(gdc::Camera::cameraFrame(v21) + 16) * 0.0000000249532021 * (1 << *(a1 + 129));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v56, *(a1 + 168), 0);
    v42 = v59;
    v43 = v41;
  }

  v24 = ggl::CullingGrid::intersectedCellsForView(v42, v43);
  ggl::BufferMemory::~BufferMemory(&v56);
LABEL_35:
  v39 = *(v52 + 8);
  v40 = *(v52 + 16);
  if (v39 != v40)
  {
    v44 = *(v52 + 8);
    do
    {
      v45 = *v44;
      v46 = *(*v44 + 1016);
      v47 = *(*v44 + 1024);
      if (v46 == v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        do
        {
          v49 = *v46++;
          v50 = (*(v49 + 96) & v24) != 0;
          v48 |= v50;
          *(v49 + 48) = v50;
        }

        while (v46 != v47);
      }

      v45[136] = v48 & 1;
      v45[264] = v48 & 1;
      v45[392] = v48 & 1;
      v45[520] = v48 & 1;
      v45[648] = v48 & 1;
      v45[776] = v48 & 1;
      v45[904] = v48 & 1;
      ++v44;
      v45[1040] = v48 & 1;
    }

    while (v44 != v40);
  }

  v2 = v53;
LABEL_47:
  while (v39 != v40)
  {
    if (*(*v39 + 1040) == 1)
    {
      md::RoadBatch::layout(*v39, v2);
    }

    ++v39;
  }
}

void gm::MultiRange<unsigned long>::push_back(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t ggl::Batcher::commit(ggl::Batcher *this, unsigned int a2, __n128 a3)
{
  v3 = this;
  if (*(this + 1) == *this)
  {
    return this + 56;
  }

  v6 = *(this + 4);
  v5 = *(this + 5);
  if (v6 >= v5)
  {
    v9 = *(this + 3);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = ggl::zone_mallocator::instance(this);
      geo::read_write_lock::read_lock((v14 + 32));
      v15 = malloc_type_zone_malloc(*v14, 24 * v13, 0x20040960023A9uLL);
      atomic_fetch_add((v14 + 24), 1u);
      geo::read_write_lock::unlock((v14 + 32));
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[24 * v10];
    v17 = &v15[24 * v13];
    *v16 = 0;
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    v7 = v16 + 24;
    v19 = *(v3 + 3);
    v18 = *(v3 + 4);
    v20 = &v16[v19 - v18];
    if (v18 != v19)
    {
      v21 = *(v3 + 3);
      v22 = &v16[v19 - v18];
      do
      {
        v22->n128_u64[0] = 0;
        v22->n128_u64[1] = 0;
        v22[1].n128_u64[0] = 0;
        a3 = *v21;
        *v22 = *v21;
        v22[1].n128_u64[0] = v21[1].n128_u64[0];
        v21->n128_u64[0] = 0;
        v21->n128_u64[1] = 0;
        v21[1].n128_u64[0] = 0;
        v21 = (v21 + 24);
        v22 = (v22 + 24);
      }

      while (v21 != v18);
      do
      {
        this = v19->n128_u64[0];
        if (v19->n128_u64[0])
        {
          v19->n128_u64[1] = this;
          operator delete(this);
        }

        v19 = (v19 + 24);
      }

      while (v19 != v18);
    }

    v23 = *(v3 + 3);
    *(v3 + 3) = v20;
    *(v3 + 4) = v7;
    *(v3 + 5) = v17;
    if (v23)
    {
      v24 = ggl::zone_mallocator::instance(this);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::MultiRange<unsigned long>>(v24, v23);
    }
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v7 = v6 + 3;
    v6[2] = 0;
  }

  v25 = *v3;
  v26 = *(v3 + 1);
  v27 = 126 - 2 * __clz((v26 - *v3) >> 4);
  v28 = v26 == *v3;
  *(v3 + 4) = v7;
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v8 = (v7 - 3);
  std::__introsort<std::_ClassicAlgPolicy,ggl::Batcher::commit::$_0 &,gm::Range<unsigned long> *,false>(v25, v26, v29, 1, a3);
  v31 = *v3;
  v30 = *(v3 + 1);
  v34 = **v3;
  for (i = v31 + 1; i != v30; ++i)
  {
    if (v34.n128_u64[1] + a2 >= i->n128_u64[0])
    {
      if (v34.n128_u64[1] < i->n128_u64[1])
      {
        v34.n128_u64[1] = i->n128_u64[1];
      }
    }

    else
    {
      if (v34.n128_u64[1] != v34.n128_u64[0])
      {
        gm::MultiRange<unsigned long>::push_back(v8, &v34);
        v30 = *(v3 + 1);
      }

      v34 = *i;
    }
  }

  if (v34.n128_u64[1] != v34.n128_u64[0])
  {
    gm::MultiRange<unsigned long>::push_back(v8, &v34);
  }

  *(v3 + 1) = *v3;
  return v8;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ggl::Batcher::commit(unsigned int)::$_0 &,gm::Range<unsigned long> *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (v9->n128_u64[0] >= v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v127 = *v12;
        *v12 = *v9;
        result = v127;
LABEL_108:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v58 = v12 + 1;
      v61 = v12[1].n128_u64[0];
      v62 = v12 + 2;
      v63 = v12[2].n128_u64[0];
      if (v61 >= v12->n128_u64[0])
      {
        if (v63 < v61)
        {
          result = *v58;
          *v58 = *v62;
          *v62 = result;
          if (v12[1].n128_u64[0] < v12->n128_u64[0])
          {
            v130 = *v12;
            *v12 = *v58;
            result = v130;
            *v58 = v130;
          }
        }
      }

      else
      {
        if (v63 < v61)
        {
          v128 = *v12;
          *v12 = *v62;
          result = v128;
          goto LABEL_187;
        }

        v132 = *v12;
        *v12 = *v58;
        result = v132;
        *v58 = v132;
        if (v63 < v12[1].n128_u64[0])
        {
          result = *v58;
          *v58 = *v62;
LABEL_187:
          *v62 = result;
        }
      }

      if (v9->n128_u64[0] >= v62->n128_u64[0])
      {
        return result;
      }

      result = *v62;
      *v62 = *v9;
      *v9 = result;
      if (v62->n128_u64[0] >= v58->n128_u64[0])
      {
        return result;
      }

      result = *v58;
      *v58 = *v62;
      *v62 = result;
LABEL_191:
      if (v12[1].n128_u64[0] < v12->n128_u64[0])
      {
        v133 = *v12;
        *v12 = *v58;
        result = v133;
        *v58 = v133;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ggl::Batcher::commit::$_0 &,gm::Range<unsigned long> *,0>(v12, v12 + 1, v12[2].n128_u64, v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v64 = v12 + 1;
      v66 = v12 == a2 || v64 == a2;
      if (a4)
      {
        if (!v66)
        {
          v67 = 0;
          v68 = v12;
          do
          {
            v69 = v64;
            v70 = v68[1].n128_u64[0];
            if (v70 < v68->n128_u64[0])
            {
              v71 = v68[1].n128_u64[1];
              v72 = v67;
              while (1)
              {
                result = *(v12 + v72);
                *(v12 + v72 + 16) = result;
                if (!v72)
                {
                  break;
                }

                v73 = *(v12[-1].n128_u64 + v72);
                v72 -= 16;
                if (v70 >= v73)
                {
                  v74 = (v12 + v72 + 16);
                  goto LABEL_127;
                }
              }

              v74 = v12;
LABEL_127:
              v74->n128_u64[0] = v70;
              v74->n128_u64[1] = v71;
            }

            v64 = v69 + 1;
            v67 += 16;
            v68 = v69;
          }

          while (&v69[1] != a2);
        }
      }

      else if (!v66)
      {
        do
        {
          v104 = v64;
          v105 = a1[1].n128_u64[0];
          if (v105 < a1->n128_u64[0])
          {
            v106 = a1[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v105 < v108);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v64 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v75 = (v13 - 2) >> 1;
        v76 = v75;
        do
        {
          v77 = v76;
          if (v75 >= v76)
          {
            v78 = (2 * v76) | 1;
            v79 = &v12[v78];
            if (2 * v77 + 2 >= v13)
            {
              v80 = v79->n128_u64[0];
            }

            else
            {
              v80 = v79[1].n128_u64[0];
              v81 = v79->n128_u64[0] >= v80;
              if (v79->n128_u64[0] > v80)
              {
                v80 = v79->n128_u64[0];
              }

              if (!v81)
              {
                ++v79;
                v78 = 2 * v77 + 2;
              }
            }

            v82 = &v12[v77];
            v83 = v82->n128_u64[0];
            if (v80 >= v82->n128_u64[0])
            {
              v84 = v82->n128_u64[1];
              do
              {
                v85 = v82;
                v82 = v79;
                *v85 = *v79;
                if (v75 < v78)
                {
                  break;
                }

                v86 = (2 * v78) | 1;
                v79 = &v12[v86];
                v78 = 2 * v78 + 2;
                if (v78 >= v13)
                {
                  v87 = v79->n128_u64[0];
                  v78 = v86;
                }

                else
                {
                  v87 = v79->n128_u64[0];
                  v88 = v79[1].n128_u64[0];
                  if (v79->n128_u64[0] <= v88)
                  {
                    v87 = v79[1].n128_u64[0];
                  }

                  if (v79->n128_u64[0] >= v88)
                  {
                    v78 = v86;
                  }

                  else
                  {
                    ++v79;
                  }
                }
              }

              while (v87 >= v83);
              v82->n128_u64[0] = v83;
              v82->n128_u64[1] = v84;
            }
          }

          v76 = v77 - 1;
        }

        while (v77);
        do
        {
          v89 = 0;
          v129 = *v12;
          v90 = v12;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v94[-1].n128_u64[0] >= v95)
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v129;
            *v92 = v129;
          }

          else
          {
            *v92 = *a2;
            result = v129;
            *a2 = v129;
            v96 = (v92 - v12 + 16) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = &v12[v99];
              v101 = v92->n128_u64[0];
              if (v100->n128_u64[0] < v92->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v92;
                  v92 = v100;
                  result = *v100;
                  *v103 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = &v12[v99];
                }

                while (v100->n128_u64[0] < v101);
                v92->n128_u64[0] = v101;
                v92->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (v14->n128_u64[0] < v12->n128_u64[0])
          {
            v112 = *v12;
            *v12 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v109 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v115 = *v12;
        *v12 = *v14;
        *v14 = v115;
        if (v9->n128_u64[0] < v14->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (v21 >= v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v20->n128_u64[0] < v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u64[0] < v20->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (v29 >= v12[2].n128_u64[0])
      {
        if (v30 < v28)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v27->n128_u64[0] < v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u64[0] < v27->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v15->n128_u64[0] >= v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v15->n128_u64[0] < v20->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v27->n128_u64[0] < v15->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *v12;
      *v12 = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = v12->n128_u64[0];
    if (v12->n128_u64[0] >= v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v113 = *v12;
        *v12 = *v9;
        result = v113;
        *v9 = v113;
        if (v12->n128_u64[0] < v14->n128_u64[0])
        {
          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v117 = *v14;
      *v14 = *v12;
      result = v117;
      *v12 = v117;
      if (v9->n128_u64[0] >= v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v110 = *v12;
      *v12 = *v9;
    }

    else
    {
      v110 = *v14;
      *v14 = *v9;
    }

    result = v110;
    *v9 = v110;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    if ((a4 & 1) != 0 || v12[-1].n128_u64[0] < v36)
    {
      v37 = v12->n128_u64[1];
      v38 = v12;
      do
      {
        v39 = v38;
        v40 = v38[1].n128_u64[0];
        ++v38;
      }

      while (v40 < v36);
      v41 = a2;
      if (v39 == v12)
      {
        v41 = a2;
        do
        {
          if (v38 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v36);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v36);
      }

      v12 = v38;
      if (v38 < v41)
      {
        v44 = v41;
        do
        {
          result = *v12;
          *v12 = *v44;
          *v44 = result;
          do
          {
            v45 = v12[1].n128_u64[0];
            ++v12;
          }

          while (v45 < v36);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v36);
        }

        while (v12 < v44);
      }

      v47 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v37;
      if (v38 < v41)
      {
        goto LABEL_79;
      }

      v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ggl::Batcher::commit::$_0 &,gm::Range<unsigned long> *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ggl::Batcher::commit::$_0 &,gm::Range<unsigned long> *>(v12, a2, v49))
      {
        a2 = v12 - 1;
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,ggl::Batcher::commit::$_0 &,gm::Range<unsigned long> *,false>(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      if (v36 >= v9->n128_u64[0])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (v36 >= v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v50 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v36 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v126 = *v12;
        *v12 = *v52;
        result = v126;
        *v52 = v126;
        do
        {
          v55 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v36 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v56);
      }

      v57 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v54;
    }
  }

  v58 = v12 + 1;
  v59 = v12[1].n128_u64[0];
  v60 = v9->n128_u64[0];
  if (v59 >= v12->n128_u64[0])
  {
    if (v60 >= v59)
    {
      return result;
    }

    result = *v58;
    *v58 = *v9;
    *v9 = result;
    goto LABEL_191;
  }

  if (v60 < v59)
  {
    goto LABEL_107;
  }

  v131 = *v12;
  *v12 = *v58;
  result = v131;
  *v58 = v131;
  if (v9->n128_u64[0] < v12[1].n128_u64[0])
  {
    result = *v58;
    *v58 = *v9;
    goto LABEL_108;
  }

  return result;
}

void *md::RenderItemPool::construct(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v17 = *(a2 + 88);
  v18 = *(a2 + 104);
  v16 = *(a2 + 72);
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  v7 = *(a1 + 8);
  v8 = v7[1];
  if (v8 == *(a1 + 16))
  {
    v7 = *v7;
    if (!v7)
    {
      v7 = malloc_type_malloc(120 * v8 + 16, 0x1020040EDED9539uLL);
      *v7 = 0;
      v7[1] = 0;
      **(a1 + 8) = v7;
    }

    *(a1 + 8) = v7;
    v8 = v7[1];
  }

  v9 = &v7[15 * v8];
  v7[1] = v8 + 1;
  v9[2] = &off_1F2A5D8B8;
  *(v9 + 9) = v15;
  *(v9 + 7) = v14;
  *(v9 + 5) = v13;
  *(v9 + 3) = v12;
  *(v9 + 15) = v18;
  *(v9 + 13) = v17;
  *(v9 + 11) = v16;
  v9[10] = a3;
  v10 = (a4[1] - *a4) >> 4;
  v9[13] = *a4;
  v9[14] = v10;
  return v9 + 2;
}

void gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v26 = *MEMORY[0x1E69E9840];
  if (a5 == 2)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a2 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        v15 = v10 < 1.0;
        goto LABEL_13;
      }
    }

    v12 = (a2 + v9 + 11);
  }

  else
  {
    v12 = (a2 + 12);
  }

  v13 = *v12;
  if (v13 != 2)
  {
    v14 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(a2, a3, v5, v13, 0);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](a1, v14);
    *(a1 + 32) = *(v14 + 8);
    return;
  }

  v15 = 1;
LABEL_13:
  v21 = 1;
  v20 = 1;
  v16 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(a2, a3, v5, 0, &v21);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](v24, v16);
  v25 = *(v16 + 8);
  v17 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(a2, a3, v5, 1u, &v20);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](v22, v17);
  v23 = *(v17 + 8);
  if (v15)
  {
    v18 = v24;
  }

  else
  {
    v18 = v22;
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](a1, v18);
  v19 = v22;
  if (v15)
  {
    v19 = v24;
  }

  *(a1 + 32) = *(v19 + 8);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v22);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v24);
}

void sub_1B2B50A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

__int128 *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v6 = *(a1 + 16 * a4 + 16);
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = a2;
  v9 = a1 + 16 * a4;
  if (*(v9 + 56))
  {
    v10 = *(v9 + 48);
    v11 = 8 * *(v9 + 56);
    while (1)
    {
      v12 = *(*v10 + 72);
      if (v12)
      {
        v15 = *v12;
        v13 = v12 + 2;
        v14 = v15;
        v16 = v15 + 120 * *(v13 + a3);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, v8) != *(v16 + 12))
        {
          break;
        }
      }

      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    if (a3 >= 0x17)
    {
      v21 = 23;
    }

    else
    {
      v21 = a3;
    }

    v22 = v14 + 120 * *(v13 + v21);
    v23 = v8;
    goto LABEL_19;
  }

LABEL_7:
  v17 = *(v6 + 72);
  if (!v17 || (a3 >= 0x17 ? (v18 = 23) : (v18 = a3), v19 = *v17 + 120 * *(v17 + v18 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, v8) == *(v19 + 12)))
  {
LABEL_12:
    if (a5)
    {
      *a5 = 0;
    }

    gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>();
    return &gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>(gss::PropertyID)::_defaultValue;
  }

  v23 = v8;
  v22 = v19;
LABEL_19:

  return gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(v23, v22);
}

uint64_t std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](a1, v5 >> 2);
    v6 = *(a1 + 8);
    memmove(v6, v4, v5);
    *(a1 + 8) = &v6[v5];
  }

  return a1;
}

void std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](gss::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = gss::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v2, v1);
  }
}

void std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(gss::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v3 = gss::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v3, v1);
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }
}

void gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>()
{
  {
    qword_1ED65ABD8 = 0;
    gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>(gss::PropertyID)::_defaultValue = 0u;
    unk_1ED65ABC8 = 0u;
    __cxa_atexit(gss::DashPattern::~DashPattern, &gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>(gss::PropertyID)::_defaultValue, &dword_1B2754000);
  }
}

void md::FontGlyphCache::updateGlyphs(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, char a5, float a6)
{
  v6 = a2;
  if (a6 <= 0.0 || (v7 = atomic_load((*a4 + 130)), (v7 & 1) == 0) || *(*a4 + 56) == *(*a4 + 64))
  {
    v37 = *a2;
    for (i = a2[1]; i != v37; std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(i))
    {
      i -= 40;
    }

    *(v6 + 8) = v37;
    *(v6 + 40) = *(v6 + 32);
  }

  else
  {
    v8 = a5;
    v161 = *a4;
    v12 = *(v161 + 64) - *(v161 + 56);
    v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
    v14 = *a2;
    v15 = a2[1];
    v16 = v15 - *a2;
    v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 >> 3);
    _CF = v13 >= v17;
    v19 = v13 - v17;
    if (v19 != 0 && _CF)
    {
      v20 = a2[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v20 - v15) >> 3) >= v19)
      {
        v40 = v15 + 40 * v19;
        do
        {
          *(v15 + 32) = 0;
          *v15 = 0uLL;
          *(v15 + 16) = 0uLL;
          *(v15 + 38) = 1;
          v15 += 40;
        }

        while (v15 != v40);
        a2[1] = v40;
      }

      else
      {
        if (v13 > 0x666666666666666)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v14) >> 3);
        if (2 * v21 > v13)
        {
          v13 = 2 * v21;
        }

        if (v21 >= 0x333333333333333)
        {
          v22 = 0x666666666666666;
        }

        else
        {
          v22 = v13;
        }

        v23 = mdm::zone_mallocator::instance(a1);
        v24 = pthread_rwlock_rdlock((v23 + 32));
        if (v24)
        {
          geo::read_write_lock::logFailure(v24, "read lock", v25);
        }

        v26 = malloc_type_zone_malloc(*v23, 40 * v22, 0x1020040DBF2485DuLL);
        atomic_fetch_add((v23 + 24), 1u);
        geo::read_write_lock::unlock((v23 + 32));
        v28 = &v26[v16];
        do
        {
          *(v28 + 4) = 0;
          *v28 = 0uLL;
          *(v28 + 1) = 0uLL;
          v28[38] = 1;
          v28 += 40;
        }

        while (v28 != &v26[v12]);
        *&v29 = &v26[v12];
        *(&v29 + 1) = &v26[40 * v22];
        v164 = v29;
        v31 = *v6;
        v30 = *(v6 + 8);
        v32 = &v26[v16 + *v6 - v30];
        v8 = a5;
        if (v30 != *v6)
        {
          v33 = *v6;
          v34 = v32;
          do
          {
            *v34 = *v33;
            *v33 = 0;
            *(v33 + 8) = 0;
            *(v34 + 1) = *(v33 + 16);
            *(v33 + 16) = 0;
            *(v33 + 24) = 0;
            *(v34 + 4) = *(v33 + 32);
            v33 += 40;
            v34 += 40;
          }

          while (v33 != v30);
          do
          {
            std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v31);
            v31 += 40;
          }

          while (v31 != v30);
        }

        v35 = *v6;
        *v6 = v32;
        *(v6 + 8) = v164;
        if (v35)
        {
          v36 = mdm::zone_mallocator::instance(v27);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextGlyph>(v36, v35);
        }
      }
    }

    else if (!_CF)
    {
      v39 = v14 + v12;
      while (v15 != v39)
      {
        v15 -= 40;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v15);
      }

      *(v6 + 8) = v39;
    }

    v41 = v161;
    v43 = *(v161 + 56);
    v42 = *(v161 + 64);
    if (v42 != v43)
    {
      v44 = 0;
      v45 = 0;
      if (a3)
      {
        v46 = 16;
      }

      else
      {
        v46 = 0;
      }

      v156 = (a1 + 112);
      v157 = (a1 + 56);
      v47 = 0.0;
      __asm { FMOV            V1.2D, #1.0 }

      v158 = _Q1;
      v162 = v46;
      v159 = v6;
      do
      {
        v52 = (*v6 + 40 * v45 + v46);
        if (v8 & 1) == 0 && *v52 && (*(*v52 + 62))
        {
          goto LABEL_222;
        }

        v53 = v43 + 40 * v45;
        v54 = *v53;
        glyphs[0] = *v53;
        v165 = v53;
        v55 = *(v53 + 8);
        if (v55 != v44)
        {
          v47 = CGFontGetUnitsPerEm(*(v53 + 8)) * (1.0 / a6);
          v54 = glyphs[0];
          v44 = v55;
        }

        *&v167 = v44;
        *(&v167 + 2) = a6;
        HIDWORD(v167) = v54;
        v56 = std::__hash_table<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::__unordered_map_hasher<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::hash<GlyphCacheKey>,std::equal_to<GlyphCacheKey>,true>,std::__unordered_map_equal<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::equal_to<GlyphCacheKey>,std::hash<GlyphCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,mdm::zone_mallocator>>::find<GlyphCacheKey>((a1 + 32), &v167);
        if (v56)
        {
          v57 = v56;
          ++*(a1 + 144);
          v58 = *(v56 + 4);
          v59 = *(v58 + 32);
          v60 = *(v58 + 40);
          if (v60)
          {
            atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
          }

          v61 = v52[1];
          *v52 = v59;
          v52[1] = v60;
          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v61);
            v59 = *v52;
          }

          atomic_store(*(a1 + 160), (v59 + 52));
          v62 = *(a1 + 8);
          v63 = *(v57 + 4);
          if (v62 != v63)
          {
            v64 = v63[1];
            if (v64 != v62)
            {
              v65 = *v63;
              *(v65 + 8) = v64;
              *v64 = v65;
              v66 = *v62;
              *(v66 + 8) = v63;
              *v63 = v66;
              *v62 = v63;
              v63[1] = v62;
            }
          }

          goto LABEL_221;
        }

        ++*(a1 + 148);
        v67 = *(a1 + 164);
        v68 = mdm::zone_mallocator::instance(0);
        v69 = pthread_rwlock_rdlock((v68 + 32));
        cf = v44;
        if (v67 == 1)
        {
          if (v69)
          {
            geo::read_write_lock::logFailure(v69, "read lock", v70);
          }

          v71 = malloc_type_zone_malloc(*v68, 0x90uLL, 0x1081040F47FB52AuLL);
          atomic_fetch_add((v68 + 24), 1u);
          geo::read_write_lock::unlock((v68 + 32));
          *(v71 + 1) = 0;
          *(v71 + 2) = 0;
          *v71 = &unk_1F2A38538;
          *(v71 + 72) = 0u;
          *(v71 + 88) = 0u;
          *(v71 + 104) = 0u;
          *(v71 + 120) = 0u;
          *(v71 + 16) = 0;
          *(v71 + 17) = 0;
          *(v71 + 56) = 0u;
          *(v71 + 5) = &unk_1F2A5F758;
          *(v71 + 6) = 0;
          *(v71 + 10) = 0;
          *(v71 + 87) = 0;
          *(v71 + 4) = &unk_1F2A38570;
          *(v71 + 6) = 0u;
          *(v71 + 7) = 0u;
          *(v71 + 34) = 1065353216;
          v71[141] = 0;
          *&v72 = v71 + 32;
          *(&v72 + 1) = v71;
          v73 = v52[1];
          *v52 = v72;
          v46 = v162;
          if (v73)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v69)
          {
            geo::read_write_lock::logFailure(v69, "read lock", v70);
          }

          v74 = malloc_type_zone_malloc(*v68, 0x60uLL, 0x10810400286FF01uLL);
          atomic_fetch_add((v68 + 24), 1u);
          geo::read_write_lock::unlock((v68 + 32));
          *(v74 + 1) = 0;
          *(v74 + 2) = 0;
          *v74 = &unk_1F2A385B0;
          *(v74 + 72) = 0u;
          *(v74 + 10) = 0;
          *(v74 + 11) = 0;
          *(v74 + 56) = 0u;
          *(v74 + 4) = &unk_1F2A38590;
          *(v74 + 5) = &unk_1F2A5F758;
          *(v74 + 6) = 0;
          *(v74 + 87) = 0;
          *&v75 = v74 + 32;
          *(&v75 + 1) = v74;
          v73 = v52[1];
          *v52 = v75;
          v44 = cf;
          if (v73)
          {
LABEL_62:
            std::__shared_weak_count::__release_shared[abi:nn200100](v73);
          }
        }

        if (*v52)
        {
          v76 = mdm::zone_mallocator::instance(v73);
          v77 = pthread_rwlock_rdlock((v76 + 32));
          if (v77)
          {
            geo::read_write_lock::logFailure(v77, "read lock", v78);
          }

          v79 = malloc_type_zone_malloc(*v76, 0x30uLL, 0x1020040D1CDCCBAuLL);
          atomic_fetch_add((v76 + 24), 1u);
          geo::read_write_lock::unlock((v76 + 32));
          *v79 = 0;
          v79[1] = 0;
          *(v79 + 1) = v167;
          v80 = v52[1];
          v79[4] = *v52;
          v79[5] = v80;
          if (v80)
          {
            atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
          }

          v81 = *(a1 + 8);
          v82 = *(a1 + 16);
          *v79 = a1;
          v79[1] = v81;
          *v81 = v79;
          *(a1 + 8) = v79;
          *(a1 + 16) = v82 + 1;
          prime = std::hash<GlyphCacheKey>::operator()(&v167);
          v84 = prime;
          v85 = *(a1 + 40);
          if (v85)
          {
            v86 = vcnt_s8(v85);
            v86.i16[0] = vaddlv_u8(v86);
            if (v86.u32[0] > 1uLL)
            {
              v76 = prime;
              if (prime >= v85)
              {
                v76 = prime % v85;
              }
            }

            else
            {
              v76 = (v85 - 1) & prime;
            }

            v87 = *(*(a1 + 32) + 8 * v76);
            if (v87)
            {
              for (j = *v87; j; j = *j)
              {
                v89 = *(j + 1);
                if (v89 == prime)
                {
                  if (*(j + 2) == v167 && j[6] == *(&v167 + 2) && *(j + 14) == WORD6(v167))
                  {
                    goto LABEL_143;
                  }
                }

                else
                {
                  if (v86.u32[0] > 1uLL)
                  {
                    if (v89 >= v85)
                    {
                      v89 %= v85;
                    }
                  }

                  else
                  {
                    v89 &= v85 - 1;
                  }

                  if (v89 != v76)
                  {
                    break;
                  }
                }
              }
            }
          }

          v90 = mdm::zone_mallocator::instance(prime);
          v91 = pthread_rwlock_rdlock((v90 + 32));
          if (v91)
          {
            geo::read_write_lock::logFailure(v91, "read lock", v92);
          }

          v6 = malloc_type_zone_malloc(*v90, 0x28uLL, 0x1020040976CB7F3uLL);
          atomic_fetch_add((v90 + 24), 1u);
          geo::read_write_lock::unlock((v90 + 32));
          *v6 = 0;
          *(v6 + 8) = v84;
          *(v6 + 16) = v167;
          *(v6 + 32) = v79;
          v93 = (*(a1 + 72) + 1);
          v94 = *(a1 + 80);
          v44 = cf;
          if (!v85 || (v94 * v85) < v93)
          {
            v95 = (v85 & (v85 - 1)) != 0;
            if (v85 < 3)
            {
              v95 = 1;
            }

            v96 = v95 | (2 * v85);
            v97 = vcvtps_u32_f32(v93 / v94);
            if (v96 <= v97)
            {
              v98 = v97;
            }

            else
            {
              v98 = v96;
            }

            if (v98 == 1)
            {
              v98 = 2;
            }

            else if ((v98 & (v98 - 1)) != 0)
            {
              prime = std::__next_prime(v98);
              v98 = prime;
              v44 = cf;
            }

            v85 = *(a1 + 40);
            if (v98 <= v85)
            {
              if (v98 < v85)
              {
                prime = vcvtps_u32_f32(*(a1 + 72) / *(a1 + 80));
                if (v85 < 3 || (v107 = vcnt_s8(v85), v107.i16[0] = vaddlv_u8(v107), v107.u32[0] > 1uLL))
                {
                  prime = std::__next_prime(prime);
                  v44 = cf;
                }

                else
                {
                  v108 = 1 << -__clz(prime - 1);
                  if (prime >= 2)
                  {
                    prime = v108;
                  }
                }

                if (v98 <= prime)
                {
                  v98 = prime;
                }

                if (v98 >= v85)
                {
                  v85 = *(a1 + 40);
                }

                else
                {
                  if (v98)
                  {
                    goto LABEL_100;
                  }

                  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 32), 0);
                  v85 = 0;
                  *(a1 + 40) = 0;
                }
              }
            }

            else
            {
LABEL_100:
              v99 = mdm::zone_mallocator::instance(prime);
              v100 = pthread_rwlock_rdlock((v99 + 32));
              if (v100)
              {
                geo::read_write_lock::logFailure(v100, "read lock", v101);
              }

              v102 = malloc_type_zone_malloc(*v99, 8 * v98, 0x2004093837F09uLL);
              atomic_fetch_add((v99 + 24), 1u);
              geo::read_write_lock::unlock((v99 + 32));
              std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 32), v102);
              v103 = 0;
              *(a1 + 40) = v98;
              do
              {
                *(*(a1 + 32) + 8 * v103++) = 0;
              }

              while (v98 != v103);
              v104 = *v157;
              v44 = cf;
              if (*v157)
              {
                v105 = v104[1];
                v106 = vcnt_s8(v98);
                v106.i16[0] = vaddlv_u8(v106);
                if (v106.u32[0] > 1uLL)
                {
                  if (v105 >= v98)
                  {
                    v105 %= v98;
                  }
                }

                else
                {
                  v105 &= v98 - 1;
                }

                *(*(a1 + 32) + 8 * v105) = v157;
                v109 = *v104;
                if (*v104)
                {
                  do
                  {
                    v110 = v109[1];
                    if (v106.u32[0] > 1uLL)
                    {
                      if (v110 >= v98)
                      {
                        v110 %= v98;
                      }
                    }

                    else
                    {
                      v110 &= v98 - 1;
                    }

                    if (v110 != v105)
                    {
                      v111 = *(a1 + 32);
                      if (!*(v111 + 8 * v110))
                      {
                        *(v111 + 8 * v110) = v104;
                        goto LABEL_124;
                      }

                      *v104 = *v109;
                      *v109 = **(v111 + 8 * v110);
                      **(v111 + 8 * v110) = v109;
                      v109 = v104;
                    }

                    v110 = v105;
LABEL_124:
                    v104 = v109;
                    v109 = *v109;
                    v105 = v110;
                  }

                  while (v109);
                }
              }

              v85 = v98;
            }

            if ((v85 & (v85 - 1)) != 0)
            {
              if (v84 >= v85)
              {
                v76 = v84 % v85;
              }

              else
              {
                v76 = v84;
              }
            }

            else
            {
              v76 = (v85 - 1) & v84;
            }
          }

          v112 = *(a1 + 32);
          v113 = *(v112 + 8 * v76);
          if (v113)
          {
            *v6 = *v113;
            goto LABEL_141;
          }

          *v6 = *v157;
          *v157 = v6;
          *(v112 + 8 * v76) = v157;
          if (*v6)
          {
            v114 = *(*v6 + 8);
            if ((v85 & (v85 - 1)) != 0)
            {
              if (v114 >= v85)
              {
                v114 %= v85;
              }
            }

            else
            {
              v114 &= v85 - 1;
            }

            v113 = (*(a1 + 32) + 8 * v114);
LABEL_141:
            *v113 = v6;
          }

          ++*(a1 + 72);
          v79 = *(a1 + 8);
LABEL_143:
          v115 = *v52;
          v116 = 0x9DDFEA08EB382D69 * ((8 * (*v52 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v52));
          v117 = 0x9DDFEA08EB382D69 * (HIDWORD(*v52) ^ (v116 >> 47) ^ v116);
          v118 = 0x9DDFEA08EB382D69 * (v117 ^ (v117 >> 47));
          v119 = *(a1 + 96);
          if (v119)
          {
            v120 = vcnt_s8(v119);
            v120.i16[0] = vaddlv_u8(v120);
            if (v120.u32[0] > 1uLL)
            {
              v6 = 0x9DDFEA08EB382D69 * (v117 ^ (v117 >> 47));
              if (v118 >= v119)
              {
                v6 = v118 % v119;
              }
            }

            else
            {
              v6 = v118 & (v119 - 1);
            }

            v121 = *(*(a1 + 88) + 8 * v6);
            if (v121)
            {
              for (k = *v121; k; k = *k)
              {
                v123 = k[1];
                if (v123 == v118)
                {
                  if (k[2] == v115)
                  {
                    v6 = v159;
                    v46 = v162;
                    goto LABEL_216;
                  }
                }

                else
                {
                  if (v120.u32[0] > 1uLL)
                  {
                    if (v123 >= v119)
                    {
                      v123 %= v119;
                    }
                  }

                  else
                  {
                    v123 &= v119 - 1;
                  }

                  if (v123 != v6)
                  {
                    break;
                  }
                }
              }
            }
          }

          v124 = mdm::zone_mallocator::instance(prime);
          v125 = pthread_rwlock_rdlock((v124 + 32));
          if (v125)
          {
            geo::read_write_lock::logFailure(v125, "read lock", v126);
          }

          v127 = malloc_type_zone_malloc(*v124, 0x20uLL, 0x1060040E0B21BF1uLL);
          atomic_fetch_add((v124 + 24), 1u);
          geo::read_write_lock::unlock((v124 + 32));
          *v127 = 0;
          v127[1] = v118;
          v127[2] = v115;
          v127[3] = v79;
          v129 = (*(a1 + 128) + 1);
          v130 = *(a1 + 136);
          v44 = cf;
          if (!v119 || (v130 * v119) < v129)
          {
            v131 = (v119 & (v119 - 1)) != 0;
            if (v119 < 3)
            {
              v131 = 1;
            }

            v132 = v131 | (2 * v119);
            v133 = vcvtps_u32_f32(v129 / v130);
            if (v132 <= v133)
            {
              v134 = v133;
            }

            else
            {
              v134 = v132;
            }

            if (v134 == 1)
            {
              v134 = 2;
            }

            else if ((v134 & (v134 - 1)) != 0)
            {
              v128 = std::__next_prime(v134);
              v134 = v128;
              v44 = cf;
            }

            v119 = *(a1 + 96);
            if (v134 <= v119)
            {
              if (v134 < v119)
              {
                v128 = vcvtps_u32_f32(*(a1 + 128) / *(a1 + 136));
                if (v119 < 3 || (v143 = vcnt_s8(v119), v143.i16[0] = vaddlv_u8(v143), v143.u32[0] > 1uLL))
                {
                  v128 = std::__next_prime(v128);
                  v44 = cf;
                }

                else
                {
                  v144 = 1 << -__clz(v128 - 1);
                  if (v128 >= 2)
                  {
                    v128 = v144;
                  }
                }

                if (v134 <= v128)
                {
                  v134 = v128;
                }

                if (v134 >= v119)
                {
                  v119 = *(a1 + 96);
                }

                else
                {
                  if (v134)
                  {
                    goto LABEL_173;
                  }

                  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 88), 0);
                  v119 = 0;
                  *(a1 + 96) = 0;
                }
              }
            }

            else
            {
LABEL_173:
              v135 = mdm::zone_mallocator::instance(v128);
              v136 = pthread_rwlock_rdlock((v135 + 32));
              if (v136)
              {
                geo::read_write_lock::logFailure(v136, "read lock", v137);
              }

              v138 = malloc_type_zone_malloc(*v135, 8 * v134, 0x2004093837F09uLL);
              atomic_fetch_add((v135 + 24), 1u);
              geo::read_write_lock::unlock((v135 + 32));
              std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 88), v138);
              v139 = 0;
              *(a1 + 96) = v134;
              do
              {
                *(*(a1 + 88) + 8 * v139++) = 0;
              }

              while (v134 != v139);
              v140 = *v156;
              v44 = cf;
              if (*v156)
              {
                v141 = v140[1];
                v142 = vcnt_s8(v134);
                v142.i16[0] = vaddlv_u8(v142);
                if (v142.u32[0] > 1uLL)
                {
                  if (v141 >= v134)
                  {
                    v141 %= v134;
                  }
                }

                else
                {
                  v141 &= v134 - 1;
                }

                *(*(a1 + 88) + 8 * v141) = v156;
                v145 = *v140;
                if (*v140)
                {
                  do
                  {
                    v146 = v145[1];
                    if (v142.u32[0] > 1uLL)
                    {
                      if (v146 >= v134)
                      {
                        v146 %= v134;
                      }
                    }

                    else
                    {
                      v146 &= v134 - 1;
                    }

                    if (v146 != v141)
                    {
                      v147 = *(a1 + 88);
                      if (!*(v147 + 8 * v146))
                      {
                        *(v147 + 8 * v146) = v140;
                        goto LABEL_197;
                      }

                      *v140 = *v145;
                      *v145 = **(v147 + 8 * v146);
                      **(v147 + 8 * v146) = v145;
                      v145 = v140;
                    }

                    v146 = v141;
LABEL_197:
                    v140 = v145;
                    v145 = *v145;
                    v141 = v146;
                  }

                  while (v145);
                }
              }

              v119 = v134;
            }

            if ((v119 & (v119 - 1)) != 0)
            {
              if (v118 >= v119)
              {
                v6 = v118 % v119;
              }

              else
              {
                v6 = v118;
              }
            }

            else
            {
              v6 = (v119 - 1) & v118;
            }
          }

          v148 = *(a1 + 88);
          v149 = *(v148 + 8 * v6);
          v46 = v162;
          if (v149)
          {
            *v127 = *v149;
            v6 = v159;
            goto LABEL_214;
          }

          *v127 = *v156;
          *v156 = v127;
          *(v148 + 8 * v6) = v156;
          v6 = v159;
          if (*v127)
          {
            v150 = *(*v127 + 8);
            if ((v119 & (v119 - 1)) != 0)
            {
              if (v150 >= v119)
              {
                v150 %= v119;
              }
            }

            else
            {
              v150 &= v119 - 1;
            }

            v149 = (*(a1 + 88) + 8 * v150);
LABEL_214:
            *v149 = v127;
          }

          ++*(a1 + 128);
          v115 = *v52;
LABEL_216:
          ++*(a1 + 152);
          atomic_store(*(a1 + 160), (v115 + 52));
          v151 = *v52;
          *(v151 + 56) = glyphs[0];
          v152 = *(v151 + 16);
          v8 = a5;
          if (v44)
          {
            CFRetain(v44);
          }

          *(v151 + 16) = v44;
          v41 = v161;
          if (v152)
          {
            CFRelease(v152);
          }

          v153 = *v52;
          *(v153 + 48) = a6;
          *(v153 + 61) = v165[27];
          *(v153 + 60) = v165[28];
          *(v153 + 59) = v165[30];
          *(v153 + 58) = v165[31];
          CGFontGetGlyphBBoxes(v44, glyphs, 1uLL, &bboxes);
          v154 = *v52;
          v155 = vdivq_f64(v158, vdupq_lane_s64(COERCE__INT64(v47), 0));
          v154[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(bboxes.origin, v155)), vmulq_f64(vaddq_f64(bboxes.size, bboxes.origin), v155));
          v154[3].i8[14] = 1;
        }

LABEL_221:
        v43 = *(v41 + 56);
        v42 = *(v41 + 64);
LABEL_222:
        ++v45;
      }

      while (v45 < 0xCCCCCCCCCCCCCCCDLL * ((v42 - v43) >> 3));
    }
  }
}

void gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::emplace(void *a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v26);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 < v7)
    {
      *v8 = *a3;
      v15 = (v8 + 1);
    }

    else
    {
      v9 = a1[10];
      v10 = (v8 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        goto LABEL_27;
      }

      v11 = v7 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
      }

      v14 = (8 * v10);
      *v14 = *a3;
      v15 = 8 * v10 + 8;
      v16 = a1[10];
      v17 = a1[11] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[10];
      a1[10] = v18;
      a1[11] = v15;
      a1[12] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    a1[11] = v15;
  }

  else
  {
    v23 = (v5 + a1[10] - a1[7]);
    *v23 = *a3;
    if (v23 != a1[11])
    {
      v24 = a1[16];
      if (v24)
      {
        v25 = a1[31];
        do
        {
          std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v24[6], v25, &v26, 1);
          v24 = *v24;
        }

        while (v24);
      }

      return;
    }
  }

  v20 = a1[22];
  if (v20)
  {
    v21 = a1[31];
    while (1)
    {
      v28[0] = &v26;
      v28[1] = 1;
      v27 = v21;
      v22 = v20[6];
      if (!v22)
      {
        break;
      }

      (*(*v22 + 48))(v22, &v27, v28);
      v20 = *v20;
      if (!v20)
      {
        return;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_27:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

float md::HorizontalTextLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  v10 = *MEMORY[0x1E69E9840];
  md::TextLabelPart::pushToRenderModel(a1, a2, a3);
  if (*(a1 + 889) == 1)
  {
    v6 = *(a1 + 488);
    if (*(a1 + 472) && v6 != 0)
    {
      result = *(a1 + 796);
      if (result > 0.0)
      {
        *(a1 + 1206) = *(a1 + 558);
        *(a1 + 1240) = v6;
        *(a1 + 1209) = *(a1 + 565) ^ 1;
        *(a1 + 1202) = *(a1 + 556);
        v8 = *(a1 + 32);
        v9 = 0;
        if (*(v8 + 78) == 1)
        {
          v9 = *(v8 + 72);
        }

        *(a1 + 1232) = v9;
        *(a1 + 1201) = *(a1 + 825);
        gdc::Registry::create(*a2);
      }
    }
  }

  return result;
}

void md::Label::updateStateMachineForDisplay(uint64_t a1, int a2, char a3, md::LabelManager *a4)
{
  if (a4 && ((*(a4 + *(a1 + 1291) + 3340) & 1) != 0 || *(a4 + 3416) != 1 || *(a1 + 1343) == 1))
  {
    if ((0x27u >> (a2 - 3)))
    {
      v6 = 0x80808050508uLL >> (8 * ((a2 - 3) & 0x1Fu));
    }

    else
    {
      v6 = a2;
    }

    v7 = 1;
    if ((a2 - 3) <= 5)
    {
      LOBYTE(a2) = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 1152);
  v9 = byte_1B3417EAE[4 * a2 + *(a1 + 1152)];
  if (*(a1 + 1158) == 1)
  {
    if (v9 == 1)
    {
      v9 = 3;
      goto LABEL_16;
    }

    if (v9 == 2)
    {
      v9 = 0;
LABEL_16:
      *(a1 + 1158) = 0;
      atomic_load((a1 + 1330));
LABEL_20:
      *(a1 + 1152) = v9;
      *(a1 + 1153) = a3;
      goto LABEL_21;
    }

    if (v8 != v9)
    {
      *(a1 + 1158) = 0;
    }
  }

  atomic_load((a1 + 1330));
  if (v9 != 255)
  {
    goto LABEL_20;
  }

  v9 = *(a1 + 1152);
LABEL_21:
  if (v9 == 3)
  {
    *(a1 + 1200) = 1065353216;
    *(a1 + 1204) = (*(a1 + 1216))(1.0);
    if (v7)
    {
      *(a1 + 1232) = 1065353216;
      *(a1 + 1236) = (*(a1 + 1248))(1.0);
    }
  }

  else if (!v9)
  {
    *(a1 + 1200) = 0;
    *(a1 + 1204) = (*(a1 + 1224))(0.0);
    *(a1 + 1232) = 0;
    *(a1 + 1236) = (*(a1 + 1256))(0.0);
    *(a1 + 1189) = 38;
    md::Label::clearAnimatingPart(a1);
  }

  v10 = *(a1 + 1152);
  if (v8 != 2 && v10 == 2)
  {
    *(a1 + 1192) = *(a1 + 440);
LABEL_27:
    v11 = atomic_load((a1 + 1331));
    if (v11)
    {

      md::Label::setupPickedHideAnimation(a1, a4);
    }

    else
    {
      v12 = atomic_load((a1 + 1332));
      if (v12)
      {

        md::Label::setupOccludedHideAnimation(a1, a4);
      }

      else
      {

        md::Label::setupHideAnimation(a1);
      }
    }

    return;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      return;
    }

    goto LABEL_27;
  }

  md::Label::setupShowAnimation(a1);
}

uint64_t md::IconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  a1[68] = *a5;
  if (a1[103].i8[0] == 1)
  {
    a1[103].i8[0] = 0;
  }

  a1[101] = 1065353216;
  v9 = a1[2];
  if (v9)
  {
    v10 = *(*&v9 + 1264);
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    a3 = v10;
  }

  v12 = 1.0;
  if (a3)
  {
    v13 = v10 == 0;
    v14 = 563;
    if (!v13)
    {
      v14 = 564;
    }

    v15 = a1->u8[v14];
    v17 = *(a3 + 24);
    v16 = *(a3 + 32);
    if (0x8E38E38E38E38E39 * ((v16 - v17) >> 4) <= v15)
    {
      if (v17 == v16 || (*(a3 + 89) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v17 = (v17 + 144 * v15);
    }

    if (v17)
    {
      if (*(v17 + 9))
      {
        a1[102].f32[1] = md::LabelAnimation::alpha(v17);
        a1[103].i8[0] = 1;
      }

      v18 = *(v17 + 7);
      if (v18)
      {
        v12 = fmaxf(*(v17 + 16) + (*(*v18 + 32 * *(v18 + 32) + 8) * (*(v17 + 17) - *(v17 + 16))), 0.0);
        a1[101].f32[0] = v12;
      }

      v19 = *(v17 + 1);
      if (*v17 != v19)
      {
        v20 = *v17;
        while (*(v20 + 16) != 2)
        {
          v20 += 24;
          if (v20 == v19)
          {
            goto LABEL_27;
          }
        }

        v12 = md::LabelAnimation::property(*v17, v19, 2);
      }

LABEL_27:
      if (*(v17 + 11))
      {
        v21 = md::LabelAnimation::translation(v17).f32[0];
        v23 = v22;
        v24 = (*(*a1 + 312))(a1);
        v25 = a1[101].f32[0];
        a1[68].f32[0] = v21 - (v24 * v25);
        a1[68].f32[1] = v23 - (v26 * v25);
      }

      if (*(v17 + 15))
      {
        a1[101].f32[1] = md::LabelAnimation::rotation(v17);
      }
    }
  }

LABEL_31:
  v27 = *(*&a1[4] + 68);
  a1[52].f32[0] = v27;
  a1[44].i32[0] = a4->i32[0];
  a1[44].i32[1] = a4->i32[1];
  a1[63].i8[6] = fabsf(v27 + -1.0) > 0.000001;
  a1[52].f32[1] = v12;
  v28 = a1[66].f32[0];
  v29.i32[0] = *(a2 + 896);
  a1[67].i32[0] = v29.i32[0];
  v30 = *(a2 + 900);
  v31.f32[0] = -v30;
  v31.i32[1] = v29.i32[0];
  v29.f32[1] = v30;
  a1[67].f32[1] = v30;
  v32 = vmla_n_f32(vmul_n_f32(v29, v28), v31, a1[66].f32[1]);
  a1[41] = v32;
  a1[63].i8[4] = fabsf(v32.f32[0] + -1.0) > 0.000001;
  v33 = vadd_f32(*a5, *a4);
  a1[65] = v33;
  a1[43] = v33;
  md::CollisionObject::setupShapeData(&a1[39]);
  v34 = a1[2];
  if (v34)
  {
    a1[101].f32[0] = a1[101].f32[0] * *(*&v34 + 1236);
    a1[76].i32[0] = *(*&v34 + 1388);
    a1[103].i8[4] = *(*&v34 + 1159);
  }

  v38 = (*(*a1 + 928))(a1);
  v39 = v43.n128_u32[0];
  v40 = v36.n128_u32[0];
  v41 = v37.n128_u32[0];
  LODWORD(v42) = a1[76].i32[1];
  v43.n128_u32[0] = 1.0;
  if (*&v42 != 1.0)
  {
    v38 = v38 * *&v42;
    *&v39 = *&v39 * *&v42;
    *&v40 = v36.n128_f32[0] * *&v42;
    *&v41 = v37.n128_f32[0] * *&v42;
  }

  v73.i64[0] = __PAIR64__(v39, LODWORD(v38));
  v73.i64[1] = __PAIR64__(v41, v40);
  if (a1[70].i8[5] == 1)
  {
    a1[95].f32[0] = v38;
    a1[95].i32[1] = v39;
    a1[96].i32[0] = v40;
    a1[96].i32[1] = v39;
    a1[97].i32[0] = v40;
    a1[97].i32[1] = v41;
    a1[98].f32[0] = v38;
    a1[98].i32[1] = v41;
    goto LABEL_48;
  }

  v44 = *(*&a1[4] + 68);
  v43.n128_u64[0] = a1[68];
  v45 = *a4;
  v36.n128_f32[0] = a1[101].f32[0] * v44;
  v37.n128_f32[0] = fabsf(v36.n128_f32[0] + -1.0);
  if (v37.n128_f32[0] > 0.000001)
  {
    v38 = v36.n128_f32[0] * v38;
    *&v39 = v36.n128_f32[0] * *&v39;
    v73.i64[0] = __PAIR64__(v39, LODWORD(v38));
    *&v40 = v36.n128_f32[0] * *&v40;
    *&v41 = *&v41 * v36.n128_f32[0];
    v73.i64[1] = __PAIR64__(v41, v40);
  }

  *v46.f32 = vmla_n_f32(v45, v43.n128_u64[0], v44);
  v47 = a1[101].f32[1];
  if ((a1[63].i8[4] & 1) != 0 || v47 != 0.0)
  {
    v60 = v46.f32[1];
    v61 = a1[41].f32[0];
    v62 = a1[41].f32[1];
    if (v47 != 0.0)
    {
      v70 = v46.i32[0];
      v63 = __sincosf_stret(v47);
      v46.i32[0] = v70;
      v64 = v63.__sinval * v61;
      v61 = -((v63.__sinval * v62) - (v63.__cosval * v61));
      v62 = v64 + (v63.__cosval * v62);
    }

    a1[95].f32[0] = v46.f32[0] + ((v61 * v38) - (*&v39 * v62));
    a1[95].f32[1] = ((v62 * v38) + (v61 * *&v39)) + v60;
    a1[96].f32[0] = ((v61 * *&v40) - (*&v39 * v62)) + v46.f32[0];
    a1[96].f32[1] = ((v62 * *&v40) + (v61 * *&v39)) + v60;
    a1[97].f32[0] = ((v61 * *&v40) - (*&v41 * v62)) + v46.f32[0];
    a1[97].f32[1] = ((v62 * *&v40) + (v61 * *&v41)) + v60;
    a1[98].f32[0] = ((v61 * v38) - (*&v41 * v62)) + v46.f32[0];
    a1[98].f32[1] = ((v62 * v38) + (v61 * *&v41)) + v60;
    return 37;
  }

  v48 = 0;
  v49 = &v73;
  *&v50 = 0xFF7FFFFF7F7FFFFFLL;
  v51 = 1;
  do
  {
    LODWORD(v42) = v73.i32[v48 + 2];
    v43.n128_u32[0] = v49->i32[0];
    if (*&v42 < v49->f32[0])
    {
      v58 = 2139095039;
      v57 = -8388609;
      goto LABEL_54;
    }

    v52 = v51;
    v51 = 0;
    v49 = &v73.i32[1];
    v48 = 1;
  }

  while ((v52 & 1) != 0);
  v53 = 0;
  v42 = v73;
  v74 = v73;
  v54 = &v74;
  v55 = 1;
  while (1)
  {
    LODWORD(v42) = v74.i32[v53 + 2];
    v43.n128_u32[0] = v54->i32[0];
    if (*&v42 < v54->f32[0])
    {
      break;
    }

    v56 = v55;
    v55 = 0;
    v54 = &v74.i32[1];
    v53 = 1;
    if ((v56 & 1) == 0)
    {
      v46.i64[1] = v46.i64[0];
      v42 = vaddq_f32(v74, v46);
      v57 = HIDWORD(v42);
      v58 = v42;
      *&v50 = v42 >> 32;
      goto LABEL_54;
    }
  }

  v58 = v74.i32[0];
  *&v50 = *(v74.i64 + 4);
  v57 = v74.i32[3];
LABEL_54:
  v72.i32[0] = v58;
  *(v72.i64 + 4) = v50;
  v72.i32[3] = v57;
  if (*(a2 + 3021) == 1)
  {
    v69 = v58;
    v71 = v50;
    if ((*(**(*(a2 + 168) + 32) + 8))(*(*(a2 + 168) + 32)))
    {
      v58 = v69;
      *&v50 = v71;
    }

    else
    {
      v65 = 0;
      v58 = v69;
      *&v50 = v71;
      *&v42 = vdup_lane_s32(v71, 0);
      LODWORD(v42) = v69;
      v66 = &v72;
      v67 = 1;
      v43.n128_u64[0] = v72.i64[0];
      while (1)
      {
        v36.n128_u32[0] = v72.u32[v65 + 2];
        v37.n128_u32[0] = v66->i32[0];
        if (v36.n128_f32[0] < v66->f32[0])
        {
          break;
        }

        v68 = v67;
        v67 = 0;
        v66 = &v72.i32[1];
        v65 = 1;
        if ((v68 & 1) == 0)
        {
          v43.n128_u64[1] = v72.i64[0];
          *(&v42 + 1) = v42;
          v36 = v72;
          v42 = vaddq_f32(v72, vsubq_f32(vrndaq_f32(v42), v43));
          v57 = HIDWORD(v42);
          v58 = v42;
          *&v50 = v42 >> 32;
          break;
        }
      }
    }
  }

  *(&v50 + 1) = v50;
  a1[95].i32[0] = v58;
  *&a1[95].i32[1] = v50;
  a1[97].i32[1] = v57;
  a1[98].i32[0] = v58;
  a1[98].i32[1] = v57;
  if (a1[70].i8[5])
  {
LABEL_48:
    md::IconLabelPart::generateModelMatrix(a1, v35, v42, v43, v36, v37);
    a1[53] = (*(*a1 + 144))(a1);
  }

  return 37;
}

float md::IconLabelPart::meshRect(md::IconLabelPart *this)
{
  v1 = *(this + 562);
  v2 = *(this + 80);
  if (v1 != 1)
  {
    return md::LabelIcon::centeredRenderBounds(v2);
  }

  v3 = atomic_load(&v2[18]);
  if (v3)
  {
    return v2[6].f32[0];
  }

  else
  {
    return 3.4028e38;
  }
}

uint64_t ta2::TextureAtlasRegion::texture(ta2::TextureAtlasRegion *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *(v1 + 192);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::GlyphMeshDescriptor>,md::GlyphMeshDescriptor*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 32);
    v6 = result;
    do
    {
      *(v5 - 16) = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        if (v6 + 8 == v7)
        {
          *v5 = v5 - 3;
          (*(**(v6 + 32) + 24))(*(v6 + 32));
        }

        else
        {
          *v5 = v7;
          *(v6 + 32) = 0;
        }
      }

      else
      {
        *v5 = 0;
      }

      v6 += 40;
      v5 += 5;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](v4 + 8);
      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__function::__func<md::TextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::TextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4D1F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__split_buffer<md::GlyphMeshDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::Label::isFading(md::Label *this)
{
  if (*(this + 1339) != 1)
  {
    return 0;
  }

  v2 = *(this + 34);
  if (!v2 || ((*(*v2 + 616))(v2) & 1) == 0)
  {
    v3 = *(this + 37);
    if ((!v3 || ((*(*v3 + 696))(v3) & 1) == 0) && !*(this + 38))
    {
      v4 = *(this + 1152);
      if (v4 == 1)
      {
        if (*(this + 300) >= 1.0 && *(this + 308) >= 1.0)
        {
          return *(this + 158) != 0;
        }
      }

      else if (v4 == 3)
      {
        if (*(this + 308) >= 1.0)
        {
          return *(this + 158) != 0;
        }
      }

      else if (v4 != 2 || *(this + 300) <= 0.0)
      {
        return *(this + 158) != 0;
      }
    }
  }

  return 1;
}

uint64_t md::IconLabelPart::populateMeshDescriptor(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2A4BEC8;
  v3[1] = a1;
  v3[3] = v3;
  std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v3, (a2 + 8));
  return std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v3);
}

void *std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::emplace(void *a1, uint64_t a2, _DWORD *a3)
{
  v28 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v28);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 < v7)
    {
      *v8 = *a3;
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100]((v8 + 2), (a3 + 2));
      v19 = v8 + 10;
      a1[11] = v8 + 10;
    }

    else
    {
      v9 = a1[10];
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3);
      if (v10 + 1 > 0x666666666666666)
      {
        goto LABEL_25;
      }

      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v9) >> 3);
      v12 = 2 * v11;
      if (2 * v11 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x333333333333333)
      {
        v13 = 0x666666666666666;
      }

      else
      {
        v13 = v12;
      }

      v33 = a1 + 10;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::IconMeshDescriptor>>(v13);
      }

      v30 = 0;
      v31 = 40 * v10;
      v32 = 40 * v10;
      *v31 = *a3;
      std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100](40 * v10 + 8, (a3 + 2));
      *&v32 = v32 + 40;
      v14 = a1[10];
      v15 = a1[11];
      v16 = v31 + v14 - v15;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::IconMeshDescriptor>,md::IconMeshDescriptor*>(v14, v15, v16);
      v17 = a1[10];
      a1[10] = v16;
      v18 = a1[12];
      v27 = v32;
      *(a1 + 11) = v32;
      *&v32 = v17;
      *(&v32 + 1) = v18;
      v30 = v17;
      v31 = v17;
      result = std::__split_buffer<md::IconMeshDescriptor>::~__split_buffer(&v30);
      v19 = v27;
    }

    a1[11] = v19;
  }

  else
  {
    v24 = (a1[10] + 40 * ((v5 - a1[7]) >> 3));
    *v24 = *a3;
    result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator=[abi:nn200100]((v24 + 2), (a3 + 2));
    if (v24 != a1[11])
    {
      v25 = a1[16];
      if (v25)
      {
        v26 = a1[31];
        do
        {
          result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v25[6], v26, &v28, 1);
          v25 = *v25;
        }

        while (v25);
      }

      return result;
    }
  }

  v20 = a1[22];
  if (v20)
  {
    v21 = a1[31];
    while (1)
    {
      v30 = &v28;
      v31 = 1;
      v29 = v21;
      v22 = v20[6];
      if (!v22)
      {
        break;
      }

      result = (*(*v22 + 48))(v22, &v29, &v30);
      v20 = *v20;
      if (!v20)
      {
        return result;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_25:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::IconMeshDescriptor>,md::IconMeshDescriptor*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 32);
    v6 = result;
    do
    {
      *(v5 - 8) = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        if (v6 + 8 == v7)
        {
          *v5 = v5 - 3;
          (*(**(v6 + 32) + 24))(*(v6 + 32));
        }

        else
        {
          *v5 = v7;
          *(v6 + 32) = 0;
        }
      }

      else
      {
        *v5 = 0;
      }

      v6 += 40;
      v5 += 5;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v4 + 8);
      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

float32x4_t md::CaptionedIconLabelPart::pixelBoundsForDisplay(md::CaptionedIconLabelPart *this)
{
  v1 = 0;
  v2 = (this + 716);
  v3 = 1;
  result = xmmword_1B33B0730;
  while (*(this + v1 + 181) >= v2->f32[v1])
  {
    v5 = v3;
    v3 = 0;
    v1 = 1;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
      v11 = *v2;
      v7 = &v11;
      v8 = 1;
      while (v11.f32[v6 + 2] >= v7->f32[0])
      {
        v9 = v8;
        v8 = 0;
        v7 = &v11.i32[1];
        v6 = 1;
        if ((v9 & 1) == 0)
        {
          v10.i64[0] = *(this + 65);
          v10.i64[1] = v10.i64[0];
          return vaddq_f32(v11, v10);
        }
      }

      return v11;
    }
  }

  return result;
}

float md::CaptionedIconLabelPart::pushToRenderModel(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  if (*(a1 + 925) == 1)
  {
    (*(***(a1 + 576) + 128))(**(a1 + 576), a2, a3);
  }

  if (*(a1 + 926) == 1 && (*(a1 + 732) & 1) == 0)
  {
    if (*(a1 + 952))
    {
      *(a1 + 952) = 0;
      *(a1 + 948) = 1065353216;
      v6 = 1.0;
    }

    else
    {
      v6 = *(a1 + 948);
    }

    v7 = *(*(a1 + 576) + 8 * *(a1 + 925));
    (*(*v7 + 128))(v7, a2, v6 * v3);
  }

  result = fmaxf(fminf(v3, 1.0), 0.0);
  *(a1 + 552) = result;
  return result;
}

uint64_t md::PointIconLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  md::IconLabelPart::pushToRenderModel(a1, a2, a3);
  result = *(a1 + 840);
  if (result)
  {
    v5.n128_f32[0] = (a3 * 0.25) * *(a1 + 600);
    v7 = *(*result + 128);

    return v7(v5);
  }

  return result;
}

uint64_t md::CompositeLabelPart::isAnimating(md::CompositeLabelPart *this)
{
  v1 = *(this + 72);
  v2 = *(this + 73);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 712))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

void md::LightingLogicContext::quantizedShadowViewProjectionMatrix(md::LightingLogicContext *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = fmax(*(a2 + 304) - *(a2 + 280), *(a2 + 312) - *(a2 + 288));
  *&v30 = v6;
  v7.i64[0] = a3;
  v7.i64[1] = a4;
  v31 = vcvtq_f64_u64(v7);
  v8.f64[0] = gm::Box<double,3>::center<double>(a2 + 280);
  v10 = 0;
  v11 = *(a2 + 320);
  v12 = *(a2 + 296);
  v13 = *(a2 + 264);
  v14 = *(a2 + 272);
  v33 = 0u;
  v34 = 0u;
  v15 = v13 + -1.0;
  if (!v14)
  {
    v15 = 1.0 - v13;
  }

  v36 = 0uLL;
  v37 = 0uLL;
  v38 = v15 / (v12 - v11);
  v39 = 0;
  v16 = vdivq_f64(vdupq_lane_s64(v30, 0), v31);
  v8.f64[1] = v9;
  v17 = vdupq_lane_s64(COERCE__INT64(*&v30 * 0.5), 0);
  v18 = vsubq_f64(v8, v17);
  v19 = vaddq_f64(v17, v8);
  v20 = vmulq_f64(vrndmq_f64(vdivq_f64(v18, v16)), v16);
  v21 = vmulq_f64(vrndmq_f64(vdivq_f64(v19, v16)), v16);
  v22 = vsubq_f64(v21, v20);
  v32 = 2.0 / v22.f64[0];
  v35 = 2.0 / v22.f64[1];
  v40 = vdivq_f64(vnegq_f64(vaddq_f64(v21, v20)), v22);
  v41 = -(v11 - v13 * v12) / (v12 - v11);
  v42 = 0x3FF0000000000000;
  v23 = &v32;
  do
  {
    v24 = 0;
    v25 = a2 + 328;
    do
    {
      v26 = 0;
      v27 = 0.0;
      v28 = v23;
      do
      {
        v29 = *v28;
        v28 += 4;
        v27 = v27 + *(v25 + v26) * v29;
        v26 += 8;
      }

      while (v26 != 32);
      *(this + 4 * v24++ + v10) = v27;
      v25 += 32;
    }

    while (v24 != 4);
    ++v10;
    ++v23;
  }

  while (v10 != 4);
}

void std::__function::__func<md::ita::UpdateShadowConstants::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateShadowConstants::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::Shadow>(**(a1 + 8), *a3);
  TileMatrix = md::VKMRenderResourcesStore::getTileMatrix(**(a1 + 8), *a2);
  v7 = TileMatrix[5];
  v30[4] = TileMatrix[4];
  v30[5] = v7;
  v8 = TileMatrix[7];
  v30[6] = TileMatrix[6];
  v30[7] = v8;
  v9 = TileMatrix[1];
  v30[0] = *TileMatrix;
  v30[1] = v9;
  v10 = TileMatrix[3];
  v30[2] = TileMatrix[2];
  v30[3] = v10;
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v28, v5);
  v11 = 0;
  v12 = *(a1 + 16);
  do
  {
    v13 = 0;
    v14 = v30;
    do
    {
      v15 = 0;
      v16 = 0.0;
      v17 = v12;
      do
      {
        v18 = *v17;
        v17 += 4;
        v16 = v16 + *(v14 + v15) * v18;
        v15 += 8;
      }

      while (v15 != 32);
      *&v26[4 * v13++ + v11] = v16;
      v14 += 2;
    }

    while (v13 != 4);
    ++v11;
    ++v12;
  }

  while (v11 != 4);
  v19 = 0;
  v20 = v26;
  do
  {
    v22 = *v20;
    v21 = v20[1];
    v20 += 2;
    v27[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
  }

  while (v19 != 4);
  v23 = v29;
  v24 = v27[1];
  *v29 = v27[0];
  v23[1] = v24;
  v25 = v27[3];
  v23[2] = v27[2];
  v23[3] = v25;
  ggl::BufferMemory::~BufferMemory(v28);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileShadowConstantDataHandle>();
    *algn_1EB83BE58 = 0xF2296D6406C155CBLL;
    qword_1EB83BE60 = "md::ls::TileShadowConstantDataHandle]";
    qword_1EB83BE68 = 36;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CanCastShadow>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanCastShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanCastShadow>(void)::localId;
    unk_1EB82D8C0 = 0x8D203CEEEBEC82DELL;
    qword_1EB82D8C8 = "md::ls::CanCastShadow]";
    qword_1EB82D8D0 = 21;
  }
}

void std::__function::__func<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = **(a1 + 8);
  v6 = ecs2::ExecutionTaskContext::currentEntity(a1);
  ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(v5, v6);
  v7 = *(a1 + 16);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v7, a3);
}

uint64_t ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A33730;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A33730;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A337D0[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A33730;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata) = *(a2 + 4096);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::SliceAssignmentT<(md::SliceType)3> const,md::ls::VisibilityGroupID const,md::ls::SharedRenderableDataHandle const,md::BoundData const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0)
  {
    return *(v13 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::PrepareCulledShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>)::$_0,std::allocator<md::ita::PrepareCulledShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  RenderableData = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a5);
  v21 = 0;
  v22 = 0uLL;
  if (v10)
  {
    for (i = 0; i != 12; i += 4)
    {
      *(&v21 + i) = *(RenderableData + 256 + i);
    }

    for (j = 0; j != 12; j += 4)
    {
      *(&v22 + j + 4) = *(RenderableData + 268 + j);
    }
  }

  else if (*(RenderableData + 288))
  {
    v14 = *(RenderableData + 280);
    v15 = *(RenderableData + 284);
    v16 = v15 + (*(a7 + 2) * v14);
    v17 = v15 + (*(a7 + 5) * v14);
    v18 = *(a7 + 12);
    v21 = *a7;
    *&v22 = v16;
    *(&v22 + 4) = v18;
    *(&v22 + 3) = v17;
  }

  else
  {
    v21 = *a7;
    v22 = *(a7 + 1);
  }

  v19 = gdc::fastFrustumBoxIntersection<float>(RenderableData, &v21);
  if (v19)
  {
    v20 = ecs2::ExecutionTaskContext::currentEntity(v19);
    v24[0] = &unk_1F2A33968;
    v24[1] = v20 << 32;
    v24[3] = v24;
    v25[3] = v25;
    v25[0] = &unk_1F2A33968;
    v25[1] = v20 << 32;
    v26 = 0;
    ecs2::Runtime::queueCommand();
    if (v26 != -1)
    {
      (off_1F2A337D0[v26])(&v23, v25);
    }

    v26 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v24);
    ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(*(a1 + 24), a4);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)4>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A33968;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)4>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata) = *(a2 + 4096);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)4> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::MeshLayerTypeV const&,md::ls::PendingProcessingShadow const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::InstanceCount const*,md::ls::ElevationHandle const*,md::ls::ShadowConstantDataHandle const&,md::ls::IsMercator const*,md::ls::PreserveHeight const*,md::ls::SharedUniqueID const*>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::SliceAssignmentT<(md::SliceType)4> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::MeshLayerTypeV const,md::ls::PendingProcessingShadow const,md::ls::ShadowConstantDataHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[20] + 8), v3 < (*(a1[20] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0)
  {
    return *(v17 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void md::PatternedBatch::layout(uint64_t a1, float *a2)
{
  v143 = *MEMORY[0x1E69E9840];
  v128 = 0.0;
  v127 = 0;
  v126 = 0;
  v140 = 0uLL;
  v141 = 0;
  v137 = 0uLL;
  v138 = 0;
  v134 = 0uLL;
  v135 = 0;
  v4 = *(a1 + 920);
  v5 = *(a1 + 928);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v119, v4, v5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v121;
  if (v121)
  {
    md::getRoadWidths(&v119, &v128, &v127 + 1, &v127, &v126, a2[2]);
    v7 = a2[2];
    if (v7 >= 0x17)
    {
      v8 = 23;
    }

    else
    {
      v8 = v7;
    }

    v9 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v119 + 24), 91, v8, 2u, 0);
    v10 = a2[15];
    v11 = v128 > 0.0 && v128 >= v10;
    v12 = *(&v127 + 1) > 0.0 && *(&v127 + 1) >= v10;
    v13 = *&v127 > 0.0 && *&v127 >= v10;
    if (v11 || (v9 & 1) == 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = v12 || v13;
    }

    if (!v14)
    {
      v117 = 0;
      v52 = 0;
      v46 = 0.0;
      goto LABEL_66;
    }

    v15 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a2 + 16), *(*(*a2 + 16) + 8));
    if (*(a2 + 12) >= 0x17u)
    {
      v16 = 23;
    }

    else
    {
      v16 = *(a2 + 12);
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v119 + 24), 465, v16, 2u, 0);
    v117 = v17 >= 1.0;
    v18 = a2[2];
    if (v18 >= 0x17)
    {
      v19 = 23;
    }

    else
    {
      v19 = v18;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v131, *(v119 + 24), 300, v19, 2);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(&v137);
    v137 = v131;
    v138 = v132;
    v132 = 0;
    v131 = 0uLL;
    v139 = v133;
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v131);
    v20 = a2[2];
    if (v20 >= 0x17)
    {
      v21 = 23;
    }

    else
    {
      v21 = v20;
    }

    if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v119 + 24), 108, v21, 2u, 0))
    {
      md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v131, v15, &v119, 2u, a2[2]);
    }

    else
    {
      v22.n128_f32[0] = a2[2];
      md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v131, v15, &v119, v22.n128_f32[0], 2u, v22, v23);
    }

    v124 = v131;
    v24 = a2[2];
    if (v24 >= 0x17)
    {
      v25 = 23;
    }

    else
    {
      v25 = v24;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v131, *(v119 + 24), 301, v25, 2);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(&v140);
    v140 = v131;
    v141 = v132;
    v132 = 0;
    v131 = 0uLL;
    v142 = v133;
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v131);
    v26 = a2[2];
    if (v26 >= 0x17)
    {
      v27 = 23;
    }

    else
    {
      v27 = v26;
    }

    if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v119 + 24), 107, v27, 2u, 0))
    {
      md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(&v131, v15, &v119, a2[2]);
    }

    else
    {
      v28.n128_f32[0] = a2[2];
      md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(&v131, v15, &v119, v28.n128_f32[0], v28, v29);
    }

    v125 = v131;
    v30 = a2[2];
    if (v30 >= 0x17)
    {
      v31 = 23;
    }

    else
    {
      v31 = v30;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v131, *(v119 + 24), 300, v31, 2);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(&v134);
    v134 = v131;
    v135 = v132;
    v132 = 0;
    v131 = 0uLL;
    v136 = v133;
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v131);
    v32 = a2[2];
    if (v32 >= 0x17)
    {
      v33 = 23;
    }

    else
    {
      v33 = v32;
    }

    v34 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v119 + 24), 407, v33, 2u, 0);
    v36.n128_f32[0] = a2[2];
    if (!v34)
    {
      if (v36.n128_f32[0] >= 0x17)
      {
        v37 = 23;
      }

      else
      {
        v37 = v36.n128_f32[0];
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v130, *(v119 + 24), 403, v37, 2u, 0, v36, v35);
      v131 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v130)), vdupq_n_s32(0x37800080u));
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v119 + 24), 508, v37, 2u, 0);
      md::AccessibilityHelper::luminanceAdjustedColor(v122, *v15, &v131, v38);
      v39 = *(v119 + 24);
      v40 = *v39;
LABEL_44:
      v41 = a2[2];
      if (v41 >= 0x17)
      {
        v42 = 23;
      }

      else
      {
        v42 = v41;
      }

      if (v40)
      {
        v43 = *v40;
        v44 = *v40 == 1.0;
        if (*(v39 + 10) == 1 && v43 != 0.0 && v43 != 1.0)
        {
LABEL_52:
          if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(v39, 0x134u, v42, 0))
          {
            goto LABEL_55;
          }

          v45 = 1;
LABEL_54:
          v46 = 0.0;
          if (!gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(v39, 0x134u, v42, v45))
          {
LABEL_56:
            v48 = a2[27];
            v49 = v124.f32[3] * v48;
            v124.f32[3] = v49;
            v50 = v125.f32[3] * v48;
            v125.f32[3] = v125.f32[3] * v48;
            v51 = v123 * v48;
            v123 = v51;
            if (v49 <= 0.0)
            {
              v11 = 0;
            }

            if (v50 <= 0.0)
            {
              v12 = 0;
            }

            v52 = v51 > 0.0;
            if (v51 <= 0.0)
            {
              v13 = 0;
            }

            if (*(a2 + 112) == 1 && v49 <= 0.0 && (v11 = 0, v50 <= 0.0))
            {
              v12 = 0;
            }

            else
            {
              v52 = 1;
            }

LABEL_66:
            v53 = a2[2];
            v54 = *(v119 + 24);
            if (v53 >= 0x17)
            {
              v55 = 23;
            }

            else
            {
              v55 = v53;
            }

            v56 = *v54;
            if (*v54 && (v57 = *v56, LODWORD(v56) = *v56 == 1.0, *(v54 + 10) == 1) && (v57 != 0.0 ? (v58 = v57 == 1.0) : (v58 = 1), !v58) || (v59 = *(v54 + v56 + 11), v59 == 2))
            {
              if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(*(v119 + 24), 0x1A2u, v55, 0))
              {
LABEL_80:
                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v131, v54, 418, 2u, fminf(fmaxf(v53, 0.0), 23.0));
                goto LABEL_81;
              }

              v59 = 1;
            }

            if (!gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(v54, 0x1A2u, v55, v59))
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          }

LABEL_55:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v39, 308, v42, 2u, 0);
          v46 = v47;
          goto LABEL_56;
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v39 + v44 + 11);
      if (v45 != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v107 = fminf(fmaxf(v36.n128_f32[0], 0.0), 23.0);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v130, *(v119 + 24), 403, 2u, v107);
    v131 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v130)), vdupq_n_s32(0x37800080u));
    v39 = *(v119 + 24);
    v40 = *v39;
    if (*v39)
    {
      v108 = *v40;
      v109 = *v40 == 1.0;
      if (*(v39 + 10) == 1 && v108 != 0.0 && v108 != 1.0)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v109 = 0;
    }

    v110 = *(v39 + v109 + 11);
    v108 = 0.0;
    if (v110 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v119 + 24), 508, v110, 0, v107);
LABEL_148:
      md::AccessibilityHelper::luminanceAdjustedColor(v122, *v15, &v131, v111);
      goto LABEL_44;
    }

LABEL_152:
    v130.i8[0] = 1;
    v129 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 508, 0, &v130, v107);
    v114 = v113;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 508, 1, &v129, v107);
    v111 = v114 + ((v115 - v114) * v108);
    goto LABEL_148;
  }

  v95 = xmmword_1B33B0560;
  v96 = (a1 + 264);
  v97 = vdupq_n_s64(2uLL);
  v98 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v95)).u8[0])
    {
      *(v96 - 128) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v95)).i32[1])
    {
      *v96 = 0;
    }

    v95 = vaddq_s64(v95, v97);
    v96 += 256;
    v98 -= 2;
  }

  while (v98);
  v117 = 0;
  v52 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  *(a1 + 912) = 0;
  v46 = 0.0;
LABEL_81:
  if (v121 == 1)
  {
    (*(*v119 + 56))(v119);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v120);
  }

  if (*(&v119 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v119 + 1));
  }

  if (v6)
  {
    v116 = v13;
    v60 = *(*(a1 + 8) + 200);
    v61 = *(a2 + 12);
    v62 = +[VKDebugSettings sharedSettings];
    v63 = [v62 enableTileClippingDebug];

    md::PatternedPipelineStateManager::pipelineStateForFunctionConstants(&v119, *(v60 + 32), *(a1 + 1041), *(a2 + 107), *(a2 + 106), v61 != 0, v63, 0);
    v118 = v119;
    md::PatternedPipelineStateManager::pipelineStateForFunctionConstants(&v119, *(v60 + 32), *(a1 + 1041) & 1, *(a2 + 107) & 1, *(a2 + 106) & 1, v61 != 0, v63, v46 > 0.0);
    v64 = *(&v119 + 1);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 944), v119, *(&v119 + 1));
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 952), v118, *(&v118 + 1));
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 960), v118, *(&v118 + 1));
    v65 = *(a1 + 944);
    v66 = *(v65 + 136);
    *(v66 + 48) = v61;
    *(v66 + 56) = 0;
    v67 = *(v65 + 232);
    v68 = *(v67 + 56);
    *(v67 + 48) = 0;
    *(v67 + 56) = 0;
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v68);
    }

    v69 = *(a1 + 952);
    v70 = *(v69 + 136);
    *(v70 + 48) = v61;
    *(v70 + 56) = 0;
    v71 = *(v69 + 232);
    v72 = *(v71 + 56);
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v72);
    }

    v73 = *(a1 + 960);
    v74 = *(v73 + 136);
    *(v74 + 48) = v61;
    *(v74 + 56) = 0;
    v75 = *(v73 + 232);
    v76 = *(v75 + 56);
    *(v75 + 48) = 0;
    *(v75 + 56) = 0;
    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v76);
    }

    if ((*(a1 + 1041) & 1) == 0)
    {
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 976), *(v60 + 40), *(v60 + 48));
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 968), *(v60 + 40), *(v60 + 48));
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 984), *(v60 + 40), *(v60 + 48));
    }

    if (v52)
    {
      v77 = a2[5];
      v78 = v77 * v128;
      v79 = *(&v127 + 1) * v77;
      v80 = *&v127 * v77;
      v81 = v77 * v46;
      v82 = xmmword_1B33B0560;
      v83 = (a1 + 264);
      v84 = vdupq_n_s64(2uLL);
      v85 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v82)).u8[0])
        {
          *(v83 - 128) = 1;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v82)).i32[1])
        {
          *v83 = 1;
        }

        v82 = vaddq_s64(v82, v84);
        v83 += 256;
        v85 -= 2;
      }

      while (v85);
      *(a1 + 912) = 1;
      v86 = (*(a1 + 1041) ^ 1) & a2[14];
      v87 = *(*(a1 + 8) + 200);
      if (v11)
      {
        v88 = *(a1 + 952);
        *(a1 + 176) = v88;
        v89 = v117;
        setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(v88, (v87 + 56), v137.f32, &v124, (a1 + 992), v117, v77, v78, 0.0);
        v90 = v86 & 1;
      }

      else
      {
        v90 = 0;
        *(a1 + 264) = 0;
        v89 = v117;
      }

      *(a1 + 648) = v90;
      if (v12)
      {
        v99 = *(a1 + 944);
        *(a1 + 48) = v99;
        setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(v99, (v87 + 56), v140.f32, &v125, (a1 + 1008), v89, a2[5], v79, v81);
        v100 = v86 & 1;
      }

      else
      {
        v100 = 0;
        *(a1 + 136) = 0;
      }

      *(a1 + 520) = v100;
      v101 = v116;
      if (v116)
      {
        v112 = *(a1 + 960);
        *(a1 + 304) = v112;
        setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(v112, (v87 + 56), v134.f32, v122, (a1 + 1024), v89, a2[5], v80, 0.0);
        v101 = v86 & 1;
      }

      else
      {
        *(a1 + 392) = 0;
      }

      *(a1 + 776) = v101;
      v102 = *(a2 + 57);
      v103 = xmmword_1B33B0560;
      v104 = (a1 + 184);
      v105 = vdupq_n_s64(2uLL);
      v106 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v103)).u8[0])
        {
          *(v104 - 32) = v102;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v103)).i32[1])
        {
          *v104 = v102;
        }

        v103 = vaddq_s64(v103, v105);
        v104 += 64;
        v106 -= 2;
      }

      while (v106);
      if (((*(a1 + 1041) | v86) & 1) == 0)
      {
        *(a1 + 56) = v102;
        *(a1 + 312) = v102 + 1;
        *(a1 + 184) = v102 + 2;
      }

      md::RoadBatch::setRenderOrdersForStrokeAndFill(0, 0, a1 + 16, a1 + 144, 0, 0, *(a1 + 936), 1, *(a1 + 920), *(a1 + 928), a2, *(a1 + 1040) & 0xFE, a1 + 272);
      if (v86)
      {
        md::RoadBatch::setRenderOrdersForStrokeAndFill(0, 0, a1 + 400, a1 + 528, 0, 0, *(a1 + 936), 1, *(a1 + 920), *(a1 + 928), a2, *(a1 + 1040) | 1, a1 + 656);
      }
    }

    else
    {
      v91 = xmmword_1B33B0560;
      v92 = (a1 + 264);
      v93 = vdupq_n_s64(2uLL);
      v94 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v91)).u8[0])
        {
          *(v92 - 128) = 0;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v91)).i32[1])
        {
          *v92 = 0;
        }

        v91 = vaddq_s64(v91, v93);
        v92 += 256;
        v94 -= 2;
      }

      while (v94);
      *(a1 + 912) = 0;
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v64);
    }

    if (*(&v118 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v118 + 1));
    }
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v134);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v137);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v140);
}

void sub_1B2B5559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  if (a25 == 1)
  {
    (*(*a21 + 56))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v42 - 224));
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v42 - 176));
  _Unwind_Resume(a1);
}

void md::PatternedLayer::layout(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 56) == 1)
  {
    v55 = *(a1 + 200);
    v56 = *(v55 + 8);
    *(a1 + 56) = v56;
    *(a1 + 64) = v56;
    *(a1 + 72) = *(v55 + 8);
    v57 = *(v55 + 24);
    v4 = (v55 + 24);
    *(a1 + 80) = v57;
    *(a1 + 88) = v57;
    v7 = 96;
  }

  else
  {
    v4 = *(a1 + 200);
    if (*(a2 + 105) == 1)
    {
      v6 = v4[2];
      v4 += 2;
      v5 = v6;
    }

    else
    {
      v5 = *v4;
    }

    *(a1 + 56) = v5;
    *(a1 + 64) = v5;
    v7 = 72;
  }

  *(a1 + v7) = *v4;
  v8 = *a2;
  if (*(a2 + 104) == 1)
  {
    v9 = 0;
    v10 = *(a2 + 64);
    do
    {
      v11 = *(a1 + 56 + v9);
      if (v11)
      {
        v12 = gdc::Context::get<md::CameraContext>(*(v8 + 1));
        v13 = gdc::CameraView::position(v12);
        v60 = *v13;
        *&v61[0] = *(v13 + 16);
        geo::Geocentric<double>::toMercator3<double>(&v60, &v62);
        v14 = v63;
        *(v11 + 40) = md::RoadLayer::calculateZBias(v15, v10, v14);
      }

      v9 += 8;
    }

    while (v9 != 48);
  }

  md::LayoutContext::frameState(v8);
  if ((*(v16 + 632) & 1) == 0)
  {
    v39 = *(a1 + 8);
    v38 = *(a1 + 16);
    goto LABEL_57;
  }

  v17 = *(*v2 + 8);
  v18 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v17, 0x1AF456233693CD46uLL);
  if (v18 && (v19 = v18[5], *(v19 + 8) == 0x1AF456233693CD46))
  {
    v20 = *(v19 + 32);
  }

  else
  {
    v20 = 0;
  }

  v58 = a1;
  v59 = v2;
  if (*(v20 + 3784))
  {
    v21 = *(a1 + 112);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = *(gdc::Camera::cameraFrame(v20) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v26 = v22 | (4 * i);
          geo::Frustum<double>::transformed(&v62, v20 + 984, v21 + 1696 + 56 * v26);
          v27 = v21 + 32 + 104 * v26;
          v28 = *(v27 + 56);
          v29 = *(v27 + 88);
          v61[0] = *(v27 + 72);
          v61[1] = v29;
          v60 = v28;
          v68 = 0uLL;
          v69 = v24;
          gm::Box<double,3>::operator+=(&v60, &v68);
          for (j = 0; j != 192; j += 32)
          {
            v31 = 0;
            v32 = *(&v62 + j + 16);
            v66 = *(&v62 + j);
            v67 = v32;
            do
            {
              v33 = &v61[-1] + v31;
              if (*(&v66 + v31) >= 0.0)
              {
                v33 = v61 + v31 + 8;
              }

              *(&v68 + v31) = *v33;
              v31 += 8;
            }

            while (v31 != 24);
            v34 = 0;
            v35 = 0.0;
            do
            {
              v35 = v35 + *(&v62 + j + v34) * *(&v68 + v34);
              v34 += 8;
            }

            while (v34 != 24);
            v36 = *&v64[j] + v35;
            if (v36 < 0.0)
            {
              break;
            }
          }

          v37 = 1 << (4 * i + v22);
          if (v36 < 0.0)
          {
            v37 = 0;
          }

          v23 |= v37;
        }

        ++v22;
      }

      while (v22 != 4);
      goto LABEL_38;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v62, *(a1 + 160), 0);
    v41 = v65;
    v42 = 0.0;
  }

  else
  {
    v40 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v17) == 1 && *(a1 + 152) == 1)
    {
      v40 = *(gdc::Camera::cameraFrame(v20) + 16) * 0.0000000249532021 * (1 << *(a1 + 121));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v62, *(a1 + 160), 0);
    v41 = v65;
    v42 = v40;
  }

  v23 = ggl::CullingGrid::intersectedCellsForView(v41, v42);
  ggl::BufferMemory::~BufferMemory(&v62);
LABEL_38:
  v39 = *(v58 + 8);
  v38 = *(v58 + 16);
  if (v39 == v38)
  {
    v2 = v59;
  }

  else
  {
    v43 = vdupq_n_s64(2uLL);
    v44 = *(v58 + 8);
    v2 = v59;
    do
    {
      v45 = *v44;
      v46 = *(*v44 + 888);
      v47 = *(*v44 + 896);
      if (v46 == v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        do
        {
          v49 = *v46++;
          v50 = (*(v49 + 96) & v23) != 0;
          v48 |= v50;
          *(v49 + 48) = v50;
        }

        while (v46 != v47);
      }

      v51 = v48 & 1;
      v52 = (v45 + 264);
      v53 = 6;
      v54 = xmmword_1B33B0560;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v54)).u8[0])
        {
          *(v52 - 128) = v51;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v54)).i32[1])
        {
          *v52 = v51;
        }

        v54 = vaddq_s64(v54, v43);
        v52 += 256;
        v53 -= 2;
      }

      while (v53);
      *(v45 + 912) = v51;
      ++v44;
    }

    while (v44 != v38);
  }

LABEL_57:
  while (v39 != v38)
  {
    if (*(*v39 + 912) == 1)
    {
      md::PatternedBatch::layout(*v39, v2);
    }

    ++v39;
  }
}

uint64_t *gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(unsigned __int16 a1, uint64_t a2)
{
  v3 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((a2 + 96), a1);
  if (v3 != *(a2 + 108))
  {
    return *(*(a2 + 96) + *(a2 + 104) + 16 * v3 + 8);
  }

  {
    return &gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  {
    gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue = 0;
    *algn_1EB82EC88 = 0;
    qword_1EB82EC90 = 0;
    __cxa_atexit(gss::DashPattern::~DashPattern, &gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue, &dword_1B2754000);
  }

  return &gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItems(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &off_1F2A36858;
  v4[1] = a3;
  v4[3] = v4;
  md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(a1, a2, v4);
  return std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

void sub_1B2B55C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1F2A36858;
  a2[1] = v2;
  return result;
}

void std::function<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v6, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    md::RoadBatch::layout(v3, v4);
  }
}

void md::RoadBatch::layout(uint64_t a1, uint64_t a2)
{
  *&v58[17] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1072);
  if (!v4)
  {
    v49 = atomic_exchange(md::RoadBatch::layout(md::RoadLayoutContext const&)::FAULTED__VectorKit, 1u);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v50 = GEOGetVectorKitVKDefaultLog_log;
    v51 = v50;
    if (v49)
    {
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 136315650;
      *v58 = "_style != nullptr";
      LOWORD(v58[2]) = 2080;
      *(&v58[2] + 2) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RoadFramework.mm";
      HIWORD(v58[4]) = 1024;
      v58[5] = 624;
      v52 = v51;
      v53 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      *buf = 136315650;
      *v58 = "_style != nullptr";
      LOWORD(v58[2]) = 2080;
      *(&v58[2] + 2) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RoadFramework.mm";
      HIWORD(v58[4]) = 1024;
      v58[5] = 624;
      v52 = v51;
      v53 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(&dword_1B2754000, v52, v53, "Null style detected: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
LABEL_56:

    v4 = *(a1 + 1072);
    if (!v4)
    {
      return;
    }
  }

  v5 = *(v4 + 72);
  *(a1 + 136) = v5;
  *(a1 + 264) = v5;
  *(a1 + 392) = v5;
  *(a1 + 520) = v5;
  *(a1 + 648) = v5;
  *(a1 + 776) = v5;
  *(a1 + 904) = v5;
  *(a1 + 1040) = v5;
  if (v5 == 1)
  {
    *(*(*(a1 + 1120) + 168) + 8) = *(v4 + 16);
    **(*(a1 + 1128) + 168) = *(*(a1 + 1072) + 16);
    if (*(a2 + 76) == 1)
    {
      v6 = *(*(a1 + 1072) + 48);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(*(a1 + 8) + 208);
    v8 = *(a2 + 96);
    v9 = +[VKDebugSettings sharedSettings];
    v10 = [v9 enableTileClippingDebug];

    v11 = *v7;
    v12 = *(a2 + 88);
    v13 = *(a2 + 106);
    v14 = *(a2 + 107);
    v15 = *(a2 + 117);
    memset(&v58[9] + 2, 0, 22);
    memset(&v58[1] + 2, 0, 32);
    buf[0] = v12;
    buf[1] = v13;
    buf[2] = v14;
    buf[3] = v6 & 1;
    LOBYTE(v58[0]) = v8 != 0;
    BYTE1(v58[0]) = v10;
    HIWORD(v58[0]) = 0;
    LOBYTE(v58[1]) = 0;
    BYTE1(v58[1]) = v15;
    v17 = ggl::packFunctionConstantKey(buf, v16);
    v18 = *(v11 + 104);
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = (v11 + 104);
    do
    {
      v20 = v18[4];
      v21 = v20 >= v17;
      v22 = v20 < v17;
      if (v21)
      {
        v19 = v18;
      }

      v18 = v18[v22];
    }

    while (v18);
    if (v19 == (v11 + 104) || v17 < v19[4])
    {
LABEL_14:
      std::allocate_shared[abi:nn200100]<ggl::SolidRibbon::PipelineState,std::allocator<ggl::SolidRibbon::PipelineState>,std::shared_ptr<ggl::SolidRibbonShader> &,ggl::ColorBufferOperation &,ggl::RenderTargetFormat &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,0>(&v56, v11, v11 + 48, (v11 + 16), buf, &buf[1], &buf[2], &buf[3], v58, v58 + 1, v58 + 2, v58 + 3, &v58[1], &v58[1] + 1);
    }

    v55 = v19[5];
    v54 = v19[6];
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 1112);
    v24 = *(a1 + 1104);
    v25 = *(a1 + 1088);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(v23, v55, v54);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(v24, v55, v54);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(v25, v55, v54);
    v26 = v23[17];
    *(v26 + 48) = v8;
    *(v26 + 56) = 0;
    v27 = v23[29];
    v28 = *(v27 + 56);
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v29 = v24[17];
    *(v29 + 48) = v8;
    *(v29 + 56) = 0;
    v30 = v24[29];
    v31 = *(v30 + 56);
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }

    v32 = v25[17];
    *(v32 + 48) = v8;
    *(v32 + 56) = 0;
    v33 = v25[29];
    v34 = *(v33 + 56);
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = v23[2];
    if ((v6 & (v35 != 0)) == 1 && *(v35 + 308) == 1)
    {
      v36 = v24[2];
      if (v36)
      {
        if (*(v36 + 308) == 1)
        {
          v37 = *(a2 + 80);
          if (!v37)
          {
            v37 = **(*(a2 + 120) + 152);
          }

          *(v23[21] + 8) = v37;
          v38 = *(a2 + 80);
          if (!v38)
          {
            v38 = **(*(a2 + 120) + 152);
          }

          *(v24[21] + 8) = v38;
        }
      }
    }

    v39 = *(a1 + 1072);
    *(a1 + 648) = v39[268];
    *(a1 + 776) = v39[269];
    *(a1 + 136) = v39[264];
    *(a1 + 264) = v39[265];
    *(a1 + 392) = v39[266];
    *(a1 + 520) = v39[267];
    *(a1 + 904) = v39[270];
    if ((v39[79] & 1) == 0)
    {
      if (v39[73])
      {
        v41 = 4;
      }

      else
      {
        v40 = v39[75] == 0;
        v41 = 3;
        if (!v40)
        {
          v41 = 4;
        }
      }

      md::RoadBatch::setRenderOrdersForStrokeAndFill(*(a2 + 108), a1 + 144, a1 + 272, a1 + 16 + (v41 << 7), a1 + 656, 0, *(a1 + 1064), *(a1 + 1068), *(a1 + 1048), *(a1 + 1056), a2, *(a1 + 1144), 0);
    }

    v42 = *(a2 + 57);
    v43 = xmmword_1B33B0550;
    v44 = xmmword_1B33B0560;
    v45 = (a1 + 312);
    v46 = 8;
    v47 = vdupq_n_s64(7uLL);
    v48 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v47, v44)), *v43.i8).u8[0])
      {
        *(v45 - 64) = v42;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v44)), *&v43).i8[2])
      {
        *(v45 - 32) = v42;
      }

      if (vuzp1_s16(*&v43, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v43))).i32[1])
      {
        *v45 = v42;
        v45[32] = v42;
      }

      v43 = vaddq_s64(v43, v48);
      v44 = vaddq_s64(v44, v48);
      v45 += 128;
      v46 -= 4;
    }

    while (v46);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }
  }
}

void sub_1B2B562D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

uint64_t md::FontAtlas::commitGlyphs(std::__shared_weak_count *a1, uint64_t a2, unsigned __int16 *a3, _BYTE *a4)
{
  if (*(a2 + 68) > 0.0 && md::FontAtlas::commitGlyphs(a1, a2, a3, 1))
  {
    *a4 = 1;
    v8 = *a2;
    v9 = *(a2 + 8);
    if (*a2 != v9)
    {
      do
      {
        v11 = v8[2];
        v10 = v8[3];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = v8[1];
        *v8 = v11;
        v8[1] = v10;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v13 = v8[3];
        v8[2] = 0;
        v8[3] = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v8 += 5;
      }

      while (v8 != v9);
    }

    *(a2 + 64) = *(a2 + 68);
    *(a2 + 68) = -1082130432;
    return 1;
  }

  else
  {

    return md::FontAtlas::commitGlyphs(a1, a2, a3, 0);
  }
}

uint64_t md::FontAtlas::commitGlyphs(std::__shared_weak_count *a1, void *a2, unsigned __int16 *a3, int a4)
{
  v4 = *a3;
  v54 = 1;
  if (v4 < a3[1])
  {
    v7 = a1;
    if (a4)
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    p_shared_owners = &a1[3].__shared_owners_;
    p_shared_weak_owners = &a1[3].__shared_weak_owners_;
    v54 = 1;
    v53 = v8;
    v55 = &a1[3].__shared_owners_;
    while (1)
    {
      v10 = (*a2 + 40 * v4 + v8);
      v11 = *v10;
      if (*(*v10 + 62) != 1)
      {
        goto LABEL_29;
      }

      on_zero_shared_weak = *(v11 + 96);
      if (on_zero_shared_weak)
      {
        goto LABEL_8;
      }

      v18 = atomic_load((v11 + 109));
      if ((v18 & 1) == 0)
      {
        if ((*(v11 + 108) & 1) == 0)
        {
          *(v11 + 108) = 1;
          shared_owners = v7[4].__shared_owners_;
          if ((*(*(shared_owners + 24) + 3417) | LOBYTE(v7[5].__vftable)))
          {
            v20 = *v10;
            a1 = (***shared_owners)(*shared_owners, *v10);
            v21 = atomic_load((shared_owners + 76));
            atomic_store(v21, (v20 + 52));
            atomic_store(1u, (v20 + 109));
          }

          else
          {
            v25 = *(shared_owners + 40);
            v26 = *(shared_owners + 48);
            if (v25 >= v26)
            {
              v29 = *(shared_owners + 32);
              v30 = (v25 - v29) >> 4;
              v31 = v30 + 1;
              if ((v30 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v32 = v26 - v29;
              if (v32 >> 3 > v31)
              {
                v31 = v32 >> 3;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              if (v33)
              {
                v34 = mdm::zone_mallocator::instance(a1);
                v35 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::FontGlyph>>(v34, v33);
              }

              else
              {
                v35 = 0;
              }

              v36 = &v35[16 * v30];
              v37 = *v10;
              *v36 = *v10;
              if (*(&v37 + 1))
              {
                atomic_fetch_add_explicit((*(&v37 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v38 = &v35[16 * v33];
              v28 = v36 + 16;
              v39 = *(shared_owners + 32);
              v40 = *(shared_owners + 40) - v39;
              v41 = &v36[-v40];
              a1 = memcpy(&v36[-v40], v39, v40);
              v42 = *(shared_owners + 32);
              *(shared_owners + 32) = v41;
              *(shared_owners + 40) = v28;
              *(shared_owners + 48) = v38;
              if (v42)
              {
                v43 = mdm::zone_mallocator::instance(a1);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::FontGlyph>>(v43, v42);
              }
            }

            else
            {
              v27 = v10[1];
              *v25 = *v10;
              v25[1] = v27;
              if (v27)
              {
                atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
              }

              v28 = v25 + 2;
            }

            *(shared_owners + 40) = v28;
          }

          a1 = ggl::Performance::Counters::instance(a1);
          atomic_fetch_add((a1[1].__shared_owners_ + 136), 1uLL);
          v8 = v53;
          p_shared_owners = v55;
        }

        v44 = atomic_load((v11 + 109));
        if ((v44 & 1) == 0)
        {
          v54 = 0;
          goto LABEL_29;
        }
      }

      if (*(v11 + 80))
      {
        break;
      }

LABEL_29:
      if (++v4 >= a3[1])
      {
        return v54 & 1;
      }
    }

    v45 = 8;
    if (*(v11 + 61))
    {
      v45 = 16;
    }

    (*(**(v7->__shared_owners_ + v45) + 32))(&v57);
    v46 = v57;
    if (v57)
    {
      v47 = v7[2].__shared_owners_;
      if (v7[2].__vftable == v47)
      {
        operator new[]();
      }

      on_zero_shared_weak = v47[-1].__on_zero_shared_weak;
      v7[2].__shared_owners_ = &v47[-1].__on_zero_shared_weak;
      v48 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = *(on_zero_shared_weak + 5);
      *(on_zero_shared_weak + 4) = v46;
      *(on_zero_shared_weak + 5) = v48;
      v8 = v53;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      v50 = (*(v11 + 48) * 0.0625);
      shared_weak_owners = v7[5].__shared_weak_owners_;
      if (((v7[6].__vftable - shared_weak_owners) >> 2) - 1 < v50)
      {
        v50 = ((v7[6].__vftable - shared_weak_owners) >> 2) - 1;
      }

      ++*(shared_weak_owners + 4 * v50);
    }

    else
    {
      on_zero_shared_weak = 0;
    }

    a1 = v58;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    if (!on_zero_shared_weak)
    {
      p_shared_owners = v55;
      goto LABEL_29;
    }

    atomic_store(0, (v11 + 109));
    *(v11 + 108) = 0;
    a1 = *(v11 + 88);
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }

    *(v11 + 96) = on_zero_shared_weak;
    *(on_zero_shared_weak + 1) = v11;
    p_shared_owners = v55;
LABEL_8:
    v13 = v7[4].__shared_weak_owners_;
    if (*on_zero_shared_weak != v13)
    {
      *on_zero_shared_weak = v13;
      v14 = (on_zero_shared_weak + 16);
      v15 = *(on_zero_shared_weak + 2);
      if (v15)
      {
        v16 = *p_shared_owners;
        v17 = *(on_zero_shared_weak + 3);
        goto LABEL_16;
      }

      v17 = *(on_zero_shared_weak + 3);
      v16 = *p_shared_owners;
      if (v17)
      {
LABEL_16:
        if (v16 == on_zero_shared_weak)
        {
          v22 = p_shared_owners;
        }

        else
        {
          v22 = (v15 + 24);
        }

        *v22 = v17;
        v23 = p_shared_weak_owners;
        if (*p_shared_weak_owners == on_zero_shared_weak)
        {
LABEL_22:
          *v23 = v15;
        }

        else if (v17)
        {
          v23 = (v17 + 16);
          goto LABEL_22;
        }

        *v14 = 0;
        *(on_zero_shared_weak + 3) = 0;
        --LODWORD(v7[4].__vftable);
        v24 = v7[3].__shared_weak_owners_;
      }

      else
      {
        if (v16 == on_zero_shared_weak)
        {
          v17 = 0;
          v16 = on_zero_shared_weak;
          goto LABEL_16;
        }

        v24 = *p_shared_weak_owners;
        if (*p_shared_weak_owners == on_zero_shared_weak)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      *v14 = v24;
      if (v24)
      {
        *(v24 + 24) = on_zero_shared_weak;
      }

      *p_shared_weak_owners = on_zero_shared_weak;
      if (!*p_shared_owners)
      {
        *p_shared_owners = on_zero_shared_weak;
      }

      ++LODWORD(v7[4].__vftable);
      ++HIDWORD(v7[4].__shared_weak_owners_);
      a1 = ggl::Performance::Counters::instance(a1);
      p_shared_owners = v55;
      atomic_fetch_add((a1[1].__shared_owners_ + 144), 1uLL);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  return v54 & 1;
}

void sub_1B2B56AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  geo::read_write_lock::unlock((v19 + 32));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(a1);
}

void md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(void ****a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<>::service<md::RenderLayerProvider>(***a1, (**a1)[1]);
  v5 = ecs2::ExecutionTask<>::service<mre::GGLResourceStore>(***a1, (**a1)[1]);
  (*(*v4 + 48))(v4);
  operator new();
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GradientConstantDataHandle1>(ecs2::Entity,md::ls::GradientConstantDataHandle1 &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A352D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GradientConstantDataHandle2>(ecs2::Entity,md::ls::GradientConstantDataHandle2 &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A353E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
    unk_1EB82EC60 = 0x4B2419C7BBAFEE01;
    qword_1EB82EC68 = "md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>]";
    qword_1EB82EC70 = 55;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a4);
  v8 = **(a1 + 16);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a3, Pipeline, v8);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0 && *(v9 + v6) == v5 && (v10 = *(a1[5] + 1), v2 < (*(a1[5] + 2) - v10) >> 3) && (v11 = *(v10 + 8 * v2)) != 0 && *(v11 + v6) == v5 && (v12 = *(a1[6] + 1), v2 < (*(a1[6] + 2) - v12) >> 3) && (v13 = *(v12 + 8 * v2)) != 0)
  {
    return *(v13 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::GradientParameters>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1447, a2);
  if (v3 == a1[1452])
  {
    return 0;
  }

  v4 = (v3 - a1[1451]) >> 3;
  v5 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[1460] + v5);
  ++*(*(a1[1454] + v5) + 24 * (v4 & 0x3F));
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 24 * (v4 & 0x3F));
  }
}

void md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, v8))
  {
    if (a4)
    {
      {
        if (v13)
        {
          md::typeToIntOrVectorMap(v13);
          md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap = md::typeToIntOrVectorMap(void)::typeToIntOrVectorMap;
        }
      }

      v9 = md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap;
    }

    else
    {
      {
        if (v14)
        {
          md::typeToIntMap(v14);
          md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap = md::typeToIntMap(void)::typeToIntMap;
        }
      }

      v9 = md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap;
    }

    v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v9, v8);
    if (!v10)
    {
      abort();
    }

    v11 = *(v10 + 7);
    v12 = *(v10 + 6);
    if (v12 != -1)
    {
      ggl::PipelineSetup::setConstantData(a2, v12, a3, 1);
    }

    if (v11 != -1)
    {

      ggl::PipelineSetup::setConstantData(a2, v11, a3, 2);
    }
  }
}

void ggl::PipelineSetup::setConstantData(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = *(*(*(v8 + 48) + 72) + 8);
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = v11 + 1;
        v13 = v10;
        while (1)
        {
          v14 = *v12;
          v12 += 2;
          if (v14 == a2)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_16;
          }
        }

        do
        {
          if (v11[1] == a2)
          {
            v15 = *v11;
            goto LABEL_12;
          }

          v11 += 2;
          --v10;
        }

        while (v10);
        v15 = -1;
LABEL_12:
        v16 = (a1[17] + 16 * v15);
        *v16 = a3;
        v16[1] = 0;
        v17 = (a1[29] + 16 * v15);
        v18 = v17[1];
        *v17 = 0;
        v17[1] = 0;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        v19 = (a1[33] + 16 * v15);
        v20 = v19[1];
        *v19 = 0;
        v19[1] = 0;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }
    }
  }

LABEL_16:
  if ((a4 & 2) != 0)
  {
    v21 = a1[2];
    if (v21)
    {
      v22 = *(*(*(v21 + 48) + 72) + 24);
      v23 = *(v22 + 40);
      if (v23)
      {
        v24 = *(v22 + 32);
        v25 = v24 + 1;
        v26 = v23;
        while (1)
        {
          v27 = *v25;
          v25 += 2;
          if (v27 == a2)
          {
            break;
          }

          if (!--v26)
          {
            return;
          }
        }

        do
        {
          if (v24[1] == a2)
          {
            v28 = *v24;
            goto LABEL_27;
          }

          v24 += 2;
          --v23;
        }

        while (v23);
        v28 = -1;
LABEL_27:
        v29 = (a1[17] + 16 * v28);
        *v29 = a3;
        v29[1] = 0;
        v30 = (a1[29] + 16 * v28);
        v31 = v30[1];
        *v30 = 0;
        v30[1] = 0;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v31);
        }

        v32 = (a1[33] + 16 * v28);
        v33 = v32[1];
        *v32 = 0;
        v32[1] = 0;
        if (v33)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }
      }
    }
  }
}

void ggl::PipelineSetup::setConstantDataWithoutCheck(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1[17] + 16 * a2);
  *v5 = a3;
  v5[1] = 0;
  v6 = (a1[29] + 16 * a2);
  v7 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = (a1[33] + 16 * a2);
  v9 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void *md::VKMRenderResourcesStore::getRenderItem(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 192), a2);
  if (result)
  {
    v5 = result[3];
    if (a3 >= (result[4] - v5) >> 3)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    return *(v5 + 8 * a3);
  }

  return result;
}

uint64_t md::RenderLayerProviderWrapper::getCommandBuffer(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = v3[3];
  if (a2 < ((v3[4] - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2);
    if (v5 && (v5 ^ a2) >> 32 == 0)
    {
      v10 = v3[7];
      v11 = 8 * *(v4 + 8 * a2) + v3[6];
      if (v10 != v11)
      {
        return *v11;
      }
    }
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v7 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = (*(*(a1 + 8) + 56) - *(*(a1 + 8) + 48)) >> 3;
    v12 = 134218754;
    v13 = v8;
    v14 = 2080;
    v15 = "false";
    v16 = 2080;
    v17 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RenderLayerProvider.hpp";
    v18 = 1024;
    v19 = 116;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, "Failed to resolve command buffer for handle (%zu): Assertion with expression - %s : Failed in file - %s line - %i", &v12, 0x26u);
  }

  return 0;
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v13 = *v10;
          v11 = v10 + 2;
          v12 = v13;
          v14 = v13 + 120 * *(v11 + a2);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v14, 0x92u) != *(v14 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      if (a2 >= 0x17)
      {
        v19 = 23;
      }

      else
      {
        v19 = a2;
      }

      v20 = v12 + 120 * *(v11 + v19);
      v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v20 + 72), 0x92u);
      if (v21 == *(v20 + 84))
      {
        return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }

      v22 = *(v20 + 72);
      v23 = *(v20 + 80);
      return (v22 + v23 + 8 * v21);
    }

LABEL_7:
    v15 = *(v5 + 72);
    if (v15)
    {
      v16 = a2 >= 0x17 ? 23 : a2;
      v17 = *v15 + 120 * *(v15 + v16 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x92u) != *(v17 + 12))
      {
        v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v17 + 72), 0x92u);
        if (v21 == *(v17 + 84))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        v22 = *(v17 + 72);
        v23 = *(v17 + 80);
        return (v22 + v23 + 8 * v21);
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::PropertyID,gm::Matrix<float,2,1>>(gss::PropertyID)::_defaultValue;
}

float32x2_t gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *v5;
      LODWORD(v5) = *v5 == 1.0;
      if (*(a1 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
      {
        goto LABEL_12;
      }
    }

    v8 = (a1 + v5 + 11);
  }

  else
  {
    v8 = (a1 + 12);
  }

  v9 = *v8;
  v6 = 0.0;
  if (v9 == 2)
  {
LABEL_12:
    v12 = v6;
    v14 = 1;
    v11 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a2, 0, &v14);
    return vmla_n_f32(v11, vsub_f32(*gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a2, 1u, &v13), v11), v12);
  }

  return *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a2, v9, 0);
}

void md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(uint64_t a1, char *a2, uint64_t a3, float a4)
{
  v7 = fminf(fmaxf(a4, 0.0), 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v18, *(*a3 + 24), 93, 2u, v7);
  v17 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v18)), vdupq_n_s32(0x37800080u));
  v8 = *(*a3 + 24);
  v9 = *v8;
  if (*v8 && (v10 = *v9, LODWORD(v9) = *v9 == 1.0, *(v8 + 10) == 1) && (v10 != 0.0 ? (v11 = v10 == 1.0) : (v11 = 1), !v11) || (v12 = *(v8 + v9 + 11), v10 = 0.0, v12 == 2))
  {
    v18.i8[0] = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 490, 0, &v18, v7);
    v15 = v14;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 490, 1, &v19, v7);
    v13 = v15 + ((v16 - v15) * v10);
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 490, v12, 0, v7);
  }

  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v17, v13);
}

void md::RoadBatch::setRenderOrdersForStrokeAndFill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v18 = a1;
  v19 = a9;
  if (a10)
  {
    atomic_fetch_add_explicit(&a10->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = a10;
    atomic_fetch_add_explicit(&a10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v23 = 0;
  }

  v24 = 0;
  v25 = 0;
  v22 = a9;
  v26 = 0;
  if (a9)
  {
    v19 = (*(*a9 + 48))(a9, &v24);
  }

  v26 = v19;
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  md::RoadBatch::setRenderOrdersForStrokeAndFill(v18, a2, a3, a4, a5, a6, a7, a8, &v22, a11, a12, a13);
  if (v26 == 1)
  {
    (*(*v22 + 56))(v22);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }
}

void sub_1B2B5823C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void md::RoadBatch::setRenderOrdersForStrokeAndFill(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, _BYTE *a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a9[32] == 1)
  {
    v16 = *(*a9 + 24);
    if (*(a10 + 12) >= 0x17u)
    {
      v17 = 23;
    }

    else
    {
      v17 = *(a10 + 12);
    }

    v18 = *v16;
    if (*v16 && (v20 = *v18, LODWORD(v18) = *v18 == 1.0, *(v16 + 10) == 1) && (v20 != 0.0 ? (v49 = v20 == 1.0) : (v49 = 1), !v49) || (v19 = *(v16 + v18 + 11), v20 = 0.0, v19 == 2))
    {
      buf[0] = 1;
      v54 = 1;
      v21 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(v16, 104, v17, 0, buf);
      v22 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(v16, 104, v17, 1u, &v54);
      if (v20 >= 1.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }
    }

    else
    {
      v23 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(*(*a9 + 24), 104, v17, v19, 0);
    }

    v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v16, 106, v17, 2, 0);
    if (v23 >= 0x100)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v25 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = a2;
        v27 = a3;
        v28 = a4;
        v29 = a7;
        v30 = *(*a9 + 24);
        v31 = *(v30 + 16);
        v32 = *(v30 + 24);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          v33 = "";
        }

        *buf = 67109378;
        v56 = v23;
        v57 = 2080;
        v58 = v33;
        _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_INFO, "Stroke Z index (%d) in style %s is too large - clamping to 255", buf, 0x12u);
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v32);
        }

        a7 = v29;
        a4 = v28;
        a3 = v27;
        a2 = v26;
      }

      v23 = 255;
    }

    if (v24 >= 0x100)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v34 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = a7;
        v36 = *(*a9 + 24);
        v37 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = *(v37 + 104);
        if (!v39)
        {
          v39 = "";
        }

        *buf = 67109378;
        v56 = v24;
        v57 = 2080;
        v58 = v39;
        _os_log_impl(&dword_1B2754000, v34, OS_LOG_TYPE_INFO, "Fill Z index (%d) in style %s is too large - clamping to 255", buf, 0x12u);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v38);
        }

        a7 = v35;
      }

      v24 = 255;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v40 = v23 - 1;
  if (!v23)
  {
    v40 = 0;
  }

  v41 = a11 | (a7 << 28) | 4;
  v42 = v24 << 8;
  if (a2)
  {
    *(a2 + 48) = v41;
  }

  v43 = v41 | v42 | (v23 << 19);
  if (a3)
  {
    *(a3 + 48) = v43;
  }

  if (a12)
  {
    *(a12 + 48) = v41 | v42 | (v40 << 19);
  }

  v44 = +[VKDebugSettings sharedSettings];
  v45 = [v44 prioritizeTrafficSkeleton];

  if (a4)
  {
    v46 = 196608;
    if (a1)
    {
      v46 = 0x20000;
    }

    v47 = 0x10000;
    if (v45 ^ 1 | a8)
    {
      v47 = v46;
    }

    *(a4 + 48) = v47 | v43;
  }

  if (a5)
  {
    *(a5 + 48) = v43 | 0x40000;
  }

  if (a6)
  {
    v48 = 0x20000;
    if (a1)
    {
      v48 = 196608;
    }

    *(a6 + 48) = v43 | v48;
  }
}

uint64_t *md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v42, v3);
      if (*(v6 + 1040) == 1)
      {
        ggl::Batcher::reset((v6 + 912));
        v7 = (v6 + 992);
        v8 = *(v6 + 992);
        if (v8)
        {
          do
          {
            if (v8[1])
            {
              v9 = 0;
              v10 = v8 + 2;
              v11 = v8 + 2;
              v12 = (v8 + 2);
              do
              {
                v13 = *v12;
                v12 += 15;
                (*v13)(v11);
                ++v9;
                v10 += 15;
                v11 = v12;
              }

              while (v9 < v8[1]);
            }

            v8[1] = 0;
            v8 = *v8;
          }

          while (v8);
          v14 = *v7;
        }

        else
        {
          v14 = 0;
        }

        *(v6 + 1000) = v14;
        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v43, v42);
        if (*(v6 + 1040) == 1)
        {
          memset(&v41, 0, sizeof(v41));
          std::vector<unsigned int>::reserve(&v41, 5uLL);
          v16 = 0;
          v17 = 0;
          v18 = v6 + 16;
          v19 = (v6 + 136);
          do
          {
            if (*v19 == 1)
            {
              v40 = v16;
              std::vector<unsigned int>::push_back[abi:nn200100](&v41, &v40);
              v20 = *(*(v6 + 8) + 8 * v16 + 56);
              *(v19 - 12) = v20;
              v17 |= *(v20 + 58) == 1;
            }

            ++v16;
            v19 += 128;
          }

          while (v16 != 7);
          begin = v41.__begin_;
          if (v41.__begin_ != v41.__end_)
          {
            v22 = *(v6 + 1016);
            v23 = *(v6 + 1024);
            if (v22 == v23)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v30 = *v22;
                if (*(*v22 + 48) == 1)
                {
                  if (*(v30 + 88) != v24)
                  {
                    if (v24)
                    {
                      v37 = ggl::Batcher::commit((v6 + 912), 0xC8u, v15);
                      if (v37[1] != *v37)
                      {
                        v34 = v41.__begin_;
                        end = v41.__end_;
                        v36 = v41.__end_;
                        while (v34 != end)
                        {
                          v32 = *v34;
                          v33 = md::RenderItemPool::construct(v6 + 992, v18 + (v32 << 7), v24, v37);
                          std::function<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v44, v32, v33);
                          ++v34;
                          end = v36;
                        }
                      }
                    }

                    v30 = *v22;
                    v24 = *(*v22 + 88);
                  }

                  v31 = 16;
                  if (v17)
                  {
                    v31 = 32;
                  }

                  ggl::Batcher::addRange(v6 + 912, (v30 + v31));
                }

                ++v22;
              }

              while (v22 != v23);
              begin = v41.__begin_;
            }

            v25 = ggl::Batcher::commit((v6 + 912), 0xC8u, v15);
            if (v25[1] != *v25)
            {
              v26 = v41.__end_;
              if (begin != v41.__end_)
              {
                v27 = v25;
                do
                {
                  v28 = *begin;
                  v29 = md::RenderItemPool::construct(v7, v18 + (v28 << 7), v24, v27);
                  std::function<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v44, v28, v29);
                  ++begin;
                }

                while (begin != v26);
                begin = v41.__begin_;
              }
            }
          }

          v4 = a2;
          v3 = a3;
          if (begin)
          {
            v41.__end_ = begin;
            operator delete(begin);
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v43);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v42);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B2B58A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1F2A36810;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItems(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &off_1F2A36810;
  v4[1] = a3;
  v4[3] = v4;
  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(a1, a2, v4);
  return std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

void sub_1B2B58CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](gss::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = gss::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[4 * a2];
  return result;
}

uint64_t *md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v41, a3);
      if (*(v6 + 912) == 1)
      {
        ggl::Batcher::reset((v6 + 784));
        v7 = (v6 + 864);
        v8 = *(v6 + 864);
        if (v8)
        {
          do
          {
            if (v8[1])
            {
              v9 = 0;
              v10 = v8 + 2;
              v11 = v8 + 2;
              v12 = (v8 + 2);
              do
              {
                v13 = *v12;
                v12 += 15;
                (*v13)(v11);
                ++v9;
                v10 += 15;
                v11 = v12;
              }

              while (v9 < v8[1]);
            }

            v8[1] = 0;
            v8 = *v8;
          }

          while (v8);
          v14 = *v7;
        }

        else
        {
          v14 = 0;
        }

        *(v6 + 872) = v14;
        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v42, v41);
        if (*(v6 + 912) == 1)
        {
          memset(&v40, 0, sizeof(v40));
          std::vector<unsigned int>::reserve(&v40, 5uLL);
          v16 = 0;
          v17 = 0;
          v18 = v6 + 16;
          v19 = (v6 + 136);
          do
          {
            if (*v19 == 1)
            {
              v39 = v16;
              std::vector<unsigned int>::push_back[abi:nn200100](&v40, &v39);
              v20 = *(*(v6 + 8) + 8 * v16 + 56);
              *(v19 - 12) = v20;
              v17 |= *(v20 + 58) == 1;
            }

            ++v16;
            v19 += 128;
          }

          while (v16 != 6);
          begin = v40.__begin_;
          if (v40.__begin_ != v40.__end_)
          {
            v22 = *(v6 + 888);
            v23 = *(v6 + 896);
            if (v22 == v23)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v30 = *v22;
                if (*(*v22 + 48) == 1)
                {
                  v35 = v23;
                  if (*(v30 + 88) != v24)
                  {
                    if (v24)
                    {
                      v37 = ggl::Batcher::commit((v6 + 784), 0xC8u, v15);
                      if (v37[1] != *v37)
                      {
                        v33 = v40.__begin_;
                        end = v40.__end_;
                        v36 = v40.__end_;
                        while (v33 != end)
                        {
                          v38 = *v33;
                          v32 = md::RenderItemPool::construct(v6 + 864, v18 + (v38 << 7), v24, v37);
                          std::function<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v43, v38, v32);
                          ++v33;
                          end = v36;
                        }
                      }
                    }

                    v30 = *v22;
                    v24 = *(*v22 + 88);
                  }

                  v31 = 16;
                  if (v17)
                  {
                    v31 = 32;
                  }

                  ggl::Batcher::addRange(v6 + 784, (v30 + v31));
                  v23 = v35;
                }

                ++v22;
              }

              while (v22 != v23);
              begin = v40.__begin_;
            }

            v25 = ggl::Batcher::commit((v6 + 784), 0xC8u, v15);
            if (v25[1] != *v25)
            {
              v26 = v40.__end_;
              if (begin != v40.__end_)
              {
                v27 = v25;
                do
                {
                  v28 = *begin;
                  v29 = md::RenderItemPool::construct(v7, v18 + (v28 << 7), v24, v27);
                  std::function<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v43, v28, v29);
                  ++begin;
                }

                while (begin != v26);
                begin = v40.__begin_;
              }
            }
          }

          if (begin)
          {
            v40.__end_ = begin;
            operator delete(begin);
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v42);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v41);
      ++v5;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_1B2B59050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile&,std::unique_ptr<md::LabelMapTileSourceData>>(float *a1, geo::QuadTile *this, uint64_t a3, uint64_t *a4)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v6 = *(this + 2);
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = *(this + 2);
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v12 + 16, this))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_1B2B59620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<md::LabelMapTileSourceData>::~unique_ptr[abi:nn200100](v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B2B59708(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 **std::remove_if[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::LabelMapTileCommand> *>,md::LabelMapTile::removeCommand(md::LabelMapTileCommandType)::$_0>(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v6 = a3;
    v3 = a1;
    while (**v3 != a3)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        v8 = *i;
        if (**i != v6)
        {
          v9 = i[1];
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v8;
          v3[1] = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

  return v3;
}

void std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void md::LabelMapTile::loadResourcesTile(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = 0;
    operator new();
  }
}

void sub_1B2B599C4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a6);
  }

  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  _Unwind_Resume(a1);
}

void md::LabelMapTile::loadLabelTiles(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v3 = *(a2 + v2);
    *&v4[v2] = v3;
    if (*(&v3 + 1))
    {
      atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v2 += 16;
    if (v2 == 160)
    {
      v5 = 0;
      operator new();
    }
  }
}

void sub_1B2B59C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 88);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](v10 - 72);
  v13 = 160;
  while (1)
  {
    v14 = *(&a10 + v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v13 -= 16;
    if (!v13)
    {
      _Unwind_Resume(a1);
    }
  }
}

void std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(char *__p)
{
  for (i = 168; i != 8; i -= 16)
  {
    v3 = *&__p[i];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  operator delete(__p);
}

BOOL md::DynamicTrafficTileList::isNewer(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) >> 4 != (a2[1] - *a2) >> 3)
  {
    return 1;
  }

  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    updated = zilch::TrafficDynamicTile::feedUpdateTimeSeconds(*(*(v2 + v6) + 144));
    v9 = *(*a2 + 8 * v7);
    v10 = updated <= v9;
    result = updated > v9;
    if (!v10)
    {
      break;
    }

    ++v7;
    v2 = *a1;
    v6 += 16;
    if (v7 >= (a1[1] - *a1) >> 4)
    {
      return 0;
    }
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

uint64_t md::CaptionedIconLabelPart::animate(md::CaptionedIconLabelPart *this, float a2)
{
  result = (*(*this + 616))(this);
  if (result)
  {
    v5 = 1.0;
    if (*(this + 732))
    {
      v5 = 0.0;
    }

    v6 = *(this + 237);
    v7 = v6 < v5;
    v8 = fmaxf(v5, v6 - (a2 * 5.0));
    v9 = fminf(v6 + (a2 * 5.0), v5);
    if (!v7)
    {
      v9 = v8;
    }

    *(this + 237) = v9;
  }

  return result;
}

BOOL md::CaptionedIconLabelPart::isFading(md::CaptionedIconLabelPart *this)
{
  if (*(this + 926) != 1)
  {
    return 0;
  }

  v1 = 1.0;
  if (*(this + 732))
  {
    v1 = 0.0;
  }

  return *(this + 237) != v1;
}

void std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (*(v2 + 560) != v1)
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(v2 + 560) = v1;
    v4 = *(v2 + 568);
    *(v2 + 568) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 130) = 1;
  }
}

void std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 != *(v2 + 160))
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(v2 + 168);
    *(v2 + 160) = v1;
    *(v2 + 168) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 131) = 1;
  }
}

void std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::operator()(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = (v2 + 184);
  v4 = (a1 + 24);
  do
  {
    v5 = *(v4 - 1);
    if (*(v3 - 1) != v5)
    {
      v6 = *v4;
      if (*v4)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *v3;
      *(v3 - 1) = v5;
      *v3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v2[130] = 1;
      if (v1 == 7)
      {
        v2[135] = 1;
      }

      else if (v1 == 3)
      {
        v2[134] = 1;
      }
    }

    ++v1;
    v3 += 2;
    v4 += 2;
  }

  while (v1 != 10);
}

void std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (*(v2 + 336) != v1)
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(v2 + 344);
    *(v2 + 336) = v1;
    *(v2 + 344) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 132) = 1;
  }
}

void md::Label::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 296);
  if (!v6)
  {
    goto LABEL_6;
  }

  if ((*(*v6 + 688))(v6) && (*(a2 + 3407) & 1) == 0)
  {
    md::Label::stopStyleAnimation(a1);
  }

  v7 = *(a1 + 296);
  if (!v7)
  {
LABEL_6:
    v7 = *(a1 + 272);
  }

  if (*(a2 + 457) == 1 && (*(a1 + 1163) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!v7)
  {
    v22 = a1;
    v23 = 2;
    v24 = 8;
    goto LABEL_49;
  }

  if (((*(*v7 + 88))(v7) & 1) == 0)
  {
LABEL_48:
    v22 = a1;
    v23 = 2;
    v24 = 32;
    goto LABEL_49;
  }

  v8 = *(a1 + 1080);
  if (!v8 || (v9 = *(a1 + 440), v10 = *(a2 + 464), v9 == v10))
  {
    *(a1 + 912) = *(a1 + 936);
    *(a1 + 896) = *(a1 + 920);
  }

  else
  {
    LOBYTE(v10) = *(v8 + 16);
    v11 = exp2f(v9 - LODWORD(v10));
    v64 = *v8;
    v101 = 0u;
    v103 = 0;
    v99 = 0u;
    v100 = 0u;
    v102 = 0u;
    v98 = 0x3FF0000000000000;
    *&v101 = 0x3FF0000000000000;
    v104 = 0x3FF0000000000000;
    v105 = 0;
    v106 = v64;
    v107 = xmmword_1B33B0740;
    v88 = 0u;
    v90 = 0;
    v93 = 0u;
    v92 = 0u;
    v89 = 0u;
    v87 = 0u;
    v86 = 0u;
    v94 = 0x3FF0000000000000;
    v85 = 1.0 / v11;
    *&v88 = v85;
    v91 = v85;
    gm::operator*<double,4,4,4>(&v95, &v98, &v85);
    v78 = 0u;
    v80 = 0;
    v79 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0x3FF0000000000000;
    *&v78 = 0x3FF0000000000000;
    v82 = 0;
    v81 = 0x3FF0000000000000;
    v83 = vnegq_f64(v64);
    v84 = xmmword_1B33B0740;
    gm::operator*<double,4,4,4>(v66, &v95, &v75);
    *(a1 + 896) = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v66, a1 + 920);
    *(a1 + 904) = v12;
    *(a1 + 912) = v13;
  }

  v14 = 0;
  v15 = *(a2 + 484);
  do
  {
    *&v66[v14] = *(a1 + v14 + 968) * v15;
    v14 += 8;
  }

  while (v14 != 24);
  v16 = 0;
  v95 = *v66;
  v96 = *&v66[16];
  do
  {
    *&v66[v16] = *(&v95 + v16) + *(a1 + v16 + 896);
    v16 += 8;
  }

  while (v16 != 24);
  v17 = *&v66[16];
  *(a1 + 1040) = *v66;
  *(a1 + 1056) = v17;
  v18.n128_u64[1] = 0x3F80000000000000;
  v95 = xmmword_1B33B0710;
  v96 = 0.0;
  v97 = 0;
  v66[0] = 0;
  v66[12] = 0;
  v18.n128_u64[0] = *(a1 + 224);
  md::LabelLayoutContext::evaluateWorldPoint(a2 + 432, a1 + 1040, v66, *(a1 + 1300), 0, &v95, v18);
  *(a1 + 1120) = HIDWORD(v95);
  v19 = DWORD2(v95);
  v20 = fmaxf(*&v95, 0.0);
  *(a1 + 440) = v20;
  v21 = v20;
  if (v20 >= 0x17)
  {
    LOBYTE(v21) = 23;
  }

  *(a1 + 452) = v21;
  *(a1 + 1132) = v19;
  if (*(a3 + 2) == 1 && v97 == 1)
  {
    v22 = a1;
    v23 = 2;
    v24 = 3;
LABEL_49:

    md::Label::updateStateMachineForDisplay(v22, v23, v24, 0);
    return;
  }

  v25 = v96;
  *(a1 + 448) = v25;
  v26 = atomic_load((a1 + 1331));
  if (v26)
  {
    goto LABEL_26;
  }

  v27 = atomic_load((a1 + 1328));
  if (v27)
  {
    goto LABEL_26;
  }

  v59 = *(a1 + 440);
  v60 = *(a1 + 1124);
  if (v59 < v60)
  {
    v29 = 6;
    if (v59 < (v60 + -0.4))
    {
LABEL_87:
      v30 = 0;
      v28 = 1;
      goto LABEL_27;
    }

LABEL_90:
    v30 = 0;
    v28 = *(a1 + 1364);
    goto LABEL_27;
  }

  v61 = *(a1 + 1128);
  if (v59 >= v61)
  {
    v29 = 7;
    if (v59 > (v61 + 0.4))
    {
      goto LABEL_87;
    }

    goto LABEL_90;
  }

LABEL_26:
  v28 = 0;
  v29 = 37;
  v30 = 1;
LABEL_27:
  if (*(a1 + 1189) != v29)
  {
    *(a1 + 1189) = v29;
    if ((*(a1 + 1185) & 1) == 0 && *(a1 + 1184) == 1)
    {
      md::Label::updateClusterState(a1, a2, v29, *(a1 + 1165));
    }
  }

  v31 = *(a2 + 1664);
  v32 = (*(**(a1 + 8) + 368))(*(a1 + 8));
  v33 = 0;
  if (v32 && v31)
  {
    v33 = *(v31 + 280) > 0.0;
  }

  *(a1 + 1157) = v33;
  if (v28)
  {
    v22 = a1;
    v23 = 8;
    v24 = v29;
    goto LABEL_49;
  }

  if (v30)
  {
    if (*(a1 + 1340))
    {
      if (*(a1 + 1272))
      {
        *v66 = a1;
        memcpy(&v66[8], (a2 + 432), 0x480uLL);
        geo::ConvexHull2<double>::ConvexHull2(&v67, (a2 + 1584));
        v62 = *(a2 + 1624);
        v68 = *(a2 + 1608);
        v69 = v62;
        std::vector<md::LabelFlexZone>::vector[abi:nn200100](&v70, (a2 + 1640));
        v63 = *(a2 + 1680);
        v71 = *(a2 + 1664);
        v72 = v63;
        v73 = *(a2 + 1696);
        v74 = *(a2 + 1712);
        if (*(*(a1 + 1272) + 52) == 2)
        {
          *(a1 + 1164) = 0;
        }

        md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0::$_0(v65, v66);
        std::function<gm::Matrix<float,2,1> ()(void)>::function<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,void>(&v98, v65);
      }

      LOBYTE(v29) = 37;
      goto LABEL_37;
    }

    LOBYTE(v29) = 30;
    md::Label::updateStateMachineForDisplay(a1, 3, 30, a2);
    v7 = *(a1 + 296);
    if (!v7)
    {
      v7 = *(a1 + 272);
    }
  }

  else if (v29 == 37)
  {
LABEL_37:
    v34 = 4;
    goto LABEL_38;
  }

  if (!*(a1 + 1152))
  {
    *(a1 + 1153) = v29;
    return;
  }

  v34 = 3;
LABEL_38:
  if (*(a2 + 3416) != 1 || *(a1 + 1343) == 1)
  {
    md::Label::setAnimationsToEnd(a1);
  }

  if (((*(**(a1 + 8) + 368))(*(a1 + 8)) & 1) == 0)
  {
    *(a1 + 1388) = *(a2 + 3372);
  }

  if (*(a1 + 1291) == 4)
  {
    *(a1 + 1148) = *(a2 + 500);
  }

  v35 = *(a1 + 1155);
  v36 = 1.0;
  if (v35 > 2)
  {
    if (v35 == 4)
    {
      v36 = exp2f(*(a1 + 440) + -5.0);
      goto LABEL_54;
    }

    if (v35 != 3)
    {
      goto LABEL_54;
    }

LABEL_107:
    v36 = *(a2 + 688) / v96;
    if (*(a1 + 847) == 3)
    {
      v36 = *(a1 + 1144) * v36;
    }

    goto LABEL_54;
  }

  if (v35 != 2)
  {
    if (v35 != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_107;
  }

  v37 = *(a1 + 1104);
  v36 = fmaxf(md::LabelStylePropertyRamp::valueAtZ(v37, fminf(fmaxf(*(a1 + 440), 0.0), 23.0)), 0.01);
  v37[28] = v36;
LABEL_54:
  v38 = (a1 + 408);
  *(a1 + 444) = v36;
  if (*(a1 + 304))
  {
    for (i = 0; i != 24; i += 8)
    {
      *&v66[i] = *(a1 + i + 1016) + *(a1 + i + 1040);
    }

    v40 = *&v66[16];
    *v38 = *v66;
    *(a1 + 424) = v40;
    v41 = *(a1 + 1140);
    if (v41 != 0.0)
    {
      v42 = 0;
      v43 = *(a1 + 232) * v41 * *(a2 + 1616);
      do
      {
        *&v66[v42] = v43 * *(a1 + 944 + v42);
        v42 += 8;
      }

      while (v42 != 24);
      for (j = 0; j != 24; j += 8)
      {
        *(v38 + j) = *(v38 + j) + *&v66[j];
      }
    }

    if (*(a1 + 259) == 1)
    {
      v45.n128_u64[0] = md::LabelLayoutContext::projectPointToPixel(a2 + 432, a1 + 408, (a1 + 432));
    }

    else
    {
      v45.n128_f32[0] = md::Label::featurePixel(a1, a2, 1);
      *(a1 + 432) = v45.n128_u32[0];
      *(a1 + 436) = v46;
    }

    v47 = *(a1 + 304);
    *v66 = 0;
    (*(*v47 + 120))(v47, a2, 0, a1 + 432, v66, v45);
  }

  for (k = 0; k != 24; k += 8)
  {
    *&v66[k] = *(a1 + k + 992) + *(a1 + k + 1040);
  }

  v49 = *&v66[16];
  *v38 = *v66;
  *(a1 + 424) = v49;
  v50 = *(a1 + 1136);
  if (v50 != 0.0)
  {
    v51 = 0;
    v52 = *(a1 + 232) * v50 * *(a2 + 1616);
    do
    {
      *&v66[v51] = v52 * *(a1 + 944 + v51);
      v51 += 8;
    }

    while (v51 != 24);
    for (m = 0; m != 24; m += 8)
    {
      *(v38 + m) = *(v38 + m) + *&v66[m];
    }
  }

  if (*(a1 + 259) == 1)
  {
    md::LabelLayoutContext::projectPointToPixel(a2 + 432, a1 + 408, (a1 + 432));
  }

  else
  {
    *(a1 + 432) = md::Label::featurePixel(a1, a2, 1);
    *(a1 + 436) = v54;
  }

  *v66 = 0;
  v55 = (*(*v7 + 120))(v7, a2, 0, a1 + 432, v66);
  if ((v55 & 0xFE) == 0x12)
  {
    v56 = 3;
  }

  else
  {
    v56 = 2;
  }

  if (v55 == 37)
  {
    v57 = v29;
  }

  else
  {
    v57 = v55;
  }

  if (v55 == 37)
  {
    v58 = v34;
  }

  else
  {
    v58 = v56;
  }

  md::Label::updateStateMachineForDisplay(a1, v58, v57, a2);
}

void sub_1B2B5AB68(_Unwind_Exception *a1)
{
  std::__function::__value_func<gm::Matrix<float,2,1> ()(void)>::~__value_func[abi:nn200100](v1 - 200);
  v3 = STACK[0x4E0];
  if (STACK[0x4E0])
  {
    STACK[0x4E8] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x4A8];
  if (STACK[0x4A8])
  {
    STACK[0x4B0] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x9F0];
  if (STACK[0x9F0])
  {
    STACK[0x9F8] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x9B8];
  if (STACK[0x9B8])
  {
    STACK[0x9C0] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t md::CurvedTextLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, md::LabelAnimator *a3, __int32 *a4, __int32 *a5)
{
  v8 = md::TextLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  if (v8 != 37)
  {
    return v8;
  }

  v9 = *(a1 + 592);
  *(a1 + 816) = ((*(v9 + 72) - *(v9 + 64)) << 10) & 0xFFFF0000;
  *(a1 + 820) = 0;
  LOBYTE(v81[0]) = 0;
  if (*(a1 + 812) == *(a1 + 814) || (v10 = md::FontAtlas::commitGlyphs(*(a2 + 304), v9 + 128, (a1 + 812), v81)) != 0)
  {
    LOBYTE(v10) = md::FontAtlas::commitGlyphs(*(a2 + 304), v9 + 32, (a1 + 808), v81);
  }

  *(a1 + 883) = v10;
  v11 = *(a2 + 1608);
  if (*(a1 + 1208) != v11)
  {
    *(a1 + 1208) = v11;
    v12 = *(*(a1 + 592) + 108);
    if (*(a1 + 1212) == v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    *(a1 + 1212) = v12;
    goto LABEL_11;
  }

  v12 = *(*(a1 + 592) + 108);
  if (*(a1 + 1212) != v12)
  {
    goto LABEL_10;
  }

  if (((*(a1 + 1347) | LOBYTE(v81[0])) & 1) == 0)
  {
    v13 = *(a1 + 1348);
    goto LABEL_23;
  }

LABEL_11:
  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(a1 + 1345) = v15;
  if (*(a1 + 887) == 1)
  {
    v15 = *(a2 + 472);
  }

  *(a1 + 1168) = v15;
  *(a1 + 1188) = *(v14 + 68) * *(a1 + 748);
  *(a1 + 1216) = a1 + 312;
  v16 = *(a1 + 16);
  v17 = (v16 + 408);
  for (i = 153; i != 156; ++i)
  {
    v19 = *v17++;
    *(a1 + 8 * i) = v19;
  }

  v20 = 0;
  *(a1 + 1264) = *(v16 + 1064);
  *(a1 + 1272) = *(v16 + 1120);
  *(a1 + 1204) = *(a2 + 176);
  v21 = v16 + 944;
  do
  {
    v22 = *(v21 + 8 * v20);
    *(v81 + v20++) = v22;
  }

  while (v20 != 3);
  *(a1 + 1248) = v81[0];
  *(a1 + 1256) = v81[1];
  v23 = *(a1 + 728);
  v24 = *(a1 + 736);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 1356) = *(v23 + 468);
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  else
  {
    *(a1 + 1356) = *(v23 + 468);
  }

  (*(**(a1 + 1280) + 32))(v81);
  if (v81[0] && LOBYTE(v81[1]) != 1)
  {
    *(a1 + 1347) = 1;
    if (*(a1 + 1348) == 37)
    {
      v13 = 37;
    }

    else
    {
      v13 = 31;
    }
  }

  else
  {
    md::LabelLayoutContext::projectPointToPixel(a2 + 432, *(a1 + 16) + 1040, &v79);
    v13 = md::CurvedTextLabelPart::placeGlyphsOnRoadPath(a1, 1, (a1 + 1482), a1 + 1168, a2 + 432, a2, *&v79, *(&v79 + 1));
    *(a1 + 1347) = 0;
    *(a1 + 1348) = v13;
    if (v81[1])
    {
      std::mutex::unlock(v81[0]);
    }
  }

LABEL_23:
  if (*(a1 + 565) == 1)
  {
    v25 = 0;
    v26 = *(a1 + 16);
    do
    {
      *&v81[v25] = *(a2 + 568 + v25 * 8) - *(v26 + 408 + v25 * 8);
      ++v25;
    }

    while (v25 != 3);
    v27 = 0;
    v79 = *v81;
    v80 = v82;
    v28 = 0.0;
    do
    {
      v28 = v28 + *(&v79 + v27) * *(&v79 + v27);
      v27 += 8;
    }

    while (v27 != 24);
    v29 = 0;
    v30 = 1.0 / sqrt(v28);
    do
    {
      *&v81[v29] = *(&v79 + v29 * 8) * v30;
      ++v29;
    }

    while (v29 != 3);
    v31 = 0;
    v32 = v26 + 944;
    v33 = 0.0;
    do
    {
      v33 = v33 + *(v32 + v31 * 8) * *&v81[v31];
      ++v31;
    }

    while (v31 != 3);
    v34 = v33;
    v35 = fmaxf(fminf(v34, 1.0), 0.0);
    if (v35 >= 0.5)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = v35 + v35;
    }

    *(a1 + 1200) = v36;
  }

  *(a1 + 520) = *a4;
  *(a1 + 524) = a4[1];
  *(a1 + 344) = *a4;
  *(a1 + 348) = a4[1];
  md::CollisionObject::setupShapeData(a1 + 312);
  v37 = *(a1 + 565);
  if (v37 == 1)
  {
    if (*(a1 + 1423) == 2)
    {
      v44 = *(a2 + 760);
      memset(&v88[1], 0, 24);
      memset(&v88[5], 0, 24);
      v88[0] = v44;
      v88[4] = v44;
      v88[8] = v44;
      v45 = *(a1 + 16);
    }

    else
    {
      v56 = 0;
      v45 = *(a1 + 16);
      do
      {
        *&v81[v56] = *(v45 + v56 * 8 + 408) - *(a2 + 568 + v56 * 8);
        ++v56;
      }

      while (v56 != 3);
      v57 = 0;
      v58 = 0.0;
      do
      {
        v58 = v58 + *(a2 + 592 + v57 * 8) * *&v81[v57];
        ++v57;
      }

      while (v57 != 3);
      v59 = 0;
      v60 = *(a2 + 752) * *(*(a1 + 32) + 68) * v58;
      do
      {
        *&v88[v59] = v60 * *(a2 + 1424 + v59 * 8);
        ++v59;
      }

      while (v59 != 9);
    }

    v61 = 0;
    v62 = v81;
    v63 = v88;
    do
    {
      v64 = 0;
      v65 = v62;
      do
      {
        *v65 = v63[v64];
        v65 += 4;
        v64 += 3;
      }

      while (v64 != 9);
      ++v61;
      ++v62;
      ++v63;
    }

    while (v61 != 3);
    *(&v82 + 1) = 0;
    *(&v84 + 1) = 0;
    v66 = (v45 + 408);
    v67 = *(v45 + 424);
    *(&v86 + 1) = 0;
    *&v87 = v67;
    v68 = *v66;
    *(&v87 + 1) = 0x3FF0000000000000;
    v69 = *(a1 + 856);
    v69[6] = v68;
    *v69 = *v81;
    v69[3] = v84;
    v69[2] = v83;
    v69[1] = v82;
    v69[5] = v86;
    v69[4] = v85;
    v69[7] = v87;
  }

  v38 = 0;
  v39 = 1;
  while (vabds_f32(*(a1 + 1456 + 4 * v38), *(a1 + 800 + 4 * v38)) < 0.1)
  {
    v40 = v39;
    v39 = 0;
    v38 = 1;
    if ((v40 & 1) == 0)
    {
      return v13;
    }
  }

  v41 = *(a1 + 800);
  *(a1 + 1456) = v41;
  v42 = *(a1 + 804);
  *(a1 + 1460) = v42;
  if (v37 && (*(*(a2 + 232) + 17) & 1) == 0)
  {
    v46 = 0;
    v47 = *(a1 + 16) + 944;
    do
    {
      v48 = *(v47 + 8 * v46);
      *(&v79 + v46++) = v48;
    }

    while (v46 != 3);
    v49 = 0;
    v78 = 0;
    v50 = vneg_f32(*(&v79 + 4));
    v76 = v50.i32[0];
    v77 = *&v79;
    v51.i32[0] = vdup_lane_s32(*(&v79 + 4), 1).u32[0];
    v51.i32[1] = v79;
    v74 = vrev64_s32(vmul_f32(v51, v50));
    v75 = vmul_f32(*(&v79 + 4), *(&v79 + 4)).f32[0] + (v77 * v77);
    do
    {
      *(v81 + v49) = *(&v76 + v49) * v41;
      v49 += 4;
    }

    while (v49 != 12);
    v52 = 0;
    v72 = v81[0];
    v73 = v81[1];
    v53 = -v42;
    do
    {
      *(v81 + v52 * 4) = *&v74.i32[v52] * v53;
      ++v52;
    }

    while (v52 != 3);
    v54 = 0;
    v70 = v81[0];
    v71 = v81[1];
    do
    {
      *(v81 + v54) = *(&v70 + v54) + *(&v72 + v54);
      v54 += 4;
    }

    while (v54 != 12);
    v55 = v81[1];
    *(a1 + 1464) = v81[0];
    *(a1 + 1472) = v55;
  }

  else
  {
    *(a1 + 1464) = v41;
    *(a1 + 1468) = -v42;
    *(a1 + 1472) = 0;
  }

  return v13;
}

void sub_1B2B5B2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::mutex *a21, char a22)
{
  if (a22 == 1)
  {
    std::mutex::unlock(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TextLabelPart::prepareQuadsForDisplay(md::TextLabelPart *this, mdm::zone_mallocator **a2, md::LabelAnimator *a3)
{
  if (*(this + 887) == 1)
  {
    v7 = (a2 + 59);
    v6 = *(this + 4);
  }

  else
  {
    v6 = *(this + 4);
    v7 = (v6 + 64);
  }

  v8 = *(this + 74);
  if ((*(v8 + 8) >> *(v6 + 76)))
  {
    v9 = *(this + 91);
    v10 = fminf(fmaxf(*v7, 0.0), 23.0);
    v11 = md::LabelStylePropertyRamp::valueAtZ((v9 + 2), v10);
    v9[114] = v11;
    v12 = md::LabelStylePropertyRamp::valueAtZ((v9 + 30), v10);
    v9[115] = v12;
    v13 = md::LabelStylePropertyRamp::valueAtZ((v9 + 58), v10);
    v9[116] = v13;
    v9[117] = md::LabelStylePropertyRamp::valueAtZ((v9 + 86), v10);
    if (*(this + 876) == 1)
    {
      v11 = *(this + 218);
    }

    *(this + 187) = v11;
    *(this + 192) = v13;
    if (*(this + 888))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0.0;
    }

    *(this + 186) = v14;
  }

  else
  {
    v11 = *(this + 187);
  }

  if (v11 <= 0.0)
  {
    return 27;
  }

  v15 = *(this + 2);
  if (v15)
  {
    v15 = *(v15 + 158);
  }

  v16 = v15 == 0;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = a3;
  }

  if (v17)
  {
    v18 = 563;
    if (!v16)
    {
      v18 = 564;
    }

    v19 = *(this + v18);
    v20 = *(v17 + 3);
    v21 = *(v17 + 4);
    if (0x8E38E38E38E38E39 * ((v21 - v20) >> 4) > v19)
    {
      v20 += 144 * v19;
      goto LABEL_21;
    }

    if (v20 != v21 && (*(v17 + 89) & 1) != 0)
    {
LABEL_21:
      *(this + 232) = 1065353216;
      v22 = 1.0;
      if (v20)
      {
        v23 = *(v20 + 56);
        if (v23)
        {
          v22 = fmaxf(*(v20 + 64) + (*(*v23 + 32 * *(v23 + 32) + 8) * (*(v20 + 68) - *(v20 + 64))), 0.0);
          *(this + 232) = v22;
        }
      }

      goto LABEL_27;
    }
  }

  *(this + 232) = 1065353216;
  v22 = 1.0;
LABEL_27:
  v24 = v22 * *(v6 + 68);
  v25 = fmaxf(v24 * v11, 0.0);
  if (*(this + 881))
  {
    v11 = v25;
  }

  else
  {
    v24 = 1.0;
  }

  v26 = *(this + 186) * v24;
  v27 = v11 != *(this + 189) || v26 != *(this + 190);
  md::LabelTextDataLoader::loadTextData(a2[34], (v8 + 16), 1, v25);
  v28 = atomic_load((*(v8 + 16) + 130));
  if (v28)
  {
    v29.n128_f64[0] = md::FontTrackingCache::trackingScale(a2[39], *(v8 + 16), v11, 0);
    v33 = v29.n128_u64[0];
    v34 = v11 / *(*(v8 + 16) + 120);
    v35 = *(a2[38] + 16);
    if (v35)
    {
      v29.n128_f32[0] = v11;
      v30.n128_f32[0] = v25;
      v31.n128_f32[0] = v26;
      v32.n128_u64[0] = v33;
      md::FontGlyphCache::populateQuads(v35, v8 + 32, (v8 + 16), v27, v29, v30, v31, v32, v34);
    }

    if (*(v8 + 208) != 1)
    {
      goto LABEL_39;
    }

    md::LabelTextDataLoader::loadTextData(a2[34], (v8 + 112), 1, v25);
    v40 = atomic_load((*(v8 + 112) + 130));
    if (v40)
    {
      v41 = *(a2[38] + 16);
      if (v41)
      {
        v36.n128_f32[0] = v11;
        v37.n128_f32[0] = v25;
        v38.n128_f32[0] = v26;
        v39.n128_u64[0] = v33;
        md::FontGlyphCache::populateQuads(v41, v8 + 128, (v8 + 112), v27, v36, v37, v38, v39, v34);
      }

LABEL_39:
      *(this + 189) = v11;
      *(this + 190) = v26;
      return 37;
    }
  }

  return 11;
}