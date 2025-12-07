uint64_t BlueFin::GlPeComputeZRH::CalcIonoDelay(uint64_t a1, __int128 *a2, uint64_t a3, int8x16_t a4, float a5, float a6, double a7, int8x16_t a8)
{
  v12 = a4.i64[0];
  v29 = 0.0;
  v28 = 0;
  v14 = *(a1 + 4296);
  if ((*(v14 + 48509) & 2) != 0)
  {
    v15 = *(a2 + 2);
    v31 = *a2;
    v32 = v15;
    if (BlueFin::GlPeIONXMgr::GetIonoDelayInMeter(v14 + 384, *a4.i64, a6 * 0.0174532925, a5 * 0.0174532925, &v31, &v29, &v30))
    {
      if (a6 > 0.0)
      {
        v16 = v29;
        if (v29 > 0.0 && v16 / 0.162372455 * sinf(fmaxf(a6, 5.0) * 0.017453) < 330.0)
        {
          *(a3 + 4) = 9;
          v17 = v16;
          *(a3 + 16) = v17;
          return 0;
        }
      }
    }

    v14 = *(a1 + 4296);
    if (!v14)
    {
      return 0;
    }
  }

  a4.i64[0] = v12;
  BlueFin::GlPeIonoMgr::GetIonoDelay(v14, a2, &v28, a4, a5, a6, a7, a8);
  if (a6 <= 0.0 || (v19 = v18, v18 <= 0.0) || v18 / 0.162372455 * sinf(fmaxf(a6, 5.0) * 0.017453) >= 330.0)
  {
    BlueFin::GlPeIonoMgr::Clear(*(a1 + 4296));
    v23 = *(a1 + 4296);
    if (!v23)
    {
      return 0;
    }

    v20.i64[0] = v12;
    BlueFin::GlPeIonoMgr::GetIonoDelay(v23, a2, &v28, v20, a5, a6, v21, v22);
    v19 = v24;
  }

  v25 = v28;
  v26 = v19;
  *(a3 + 16) = v26;
  *(a3 + 4) = 1;
  if (v25 <= 5)
  {
    *(a3 + 4) = dword_298A41D88[v25];
  }

  return 0;
}

uint64_t BlueFin::stDnavState::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  BlueFin::GlSetBase::operator=(a1 + 72, a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  v5 = *(a2 + 100);
  v6 = *(a2 + 116);
  v7 = *(a2 + 132);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 132) = v7;
  *(a1 + 116) = v6;
  *(a1 + 100) = v5;
  BlueFin::GlSetBase::operator=(a1 + 160, a2 + 160);
  *(a1 + 172) = *(a2 + 172);
  v8 = *(a2 + 188);
  v9 = *(a2 + 204);
  v10 = *(a2 + 220);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 220) = v10;
  *(a1 + 204) = v9;
  *(a1 + 188) = v8;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t BlueFin::GlPeDnav::Run(uint64_t a1, uint64_t a2, char *a3, BlueFin::GlSetBase *this, BlueFin::GlSetBase *a5, int a6, void *a7)
{
  v8 = a6;
  v113 = *MEMORY[0x29EDCA608];
  *(a1 + 268) = 0;
  *(a1 + 416) = *a7;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 280) = 0x4059000000000000;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 16) = 0xC158548D40000000;
  *(a1 + 24) = 6367427;
  *(a1 + 312) = 7;
  v14 = *(a1 + 304);
  *(v14 + 56) = 0;
  *(v14 + 40) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 8) = 0u;
  *(*(a1 + 304) + 56) = *(a1 + 416) * 0.299792458;
  *(a1 + 64) = *(a1 + 420) * 0.0898755179;
  if (a6)
  {
    *(a1 + 268) |= 2u;
  }

  v15 = BlueFin::GlSetBase::Cnt(this);
  v16 = BlueFin::GlSetBase::Cnt(a5);
  if (v16 >= 2)
  {
    v17 = -7;
  }

  else
  {
    v17 = -4;
  }

  v18 = v16 + v15;
  if (v15 < 4)
  {
    ++v18;
  }

  if (((v16 > 1) & v8) != 0)
  {
    v19 = -2;
  }

  else
  {
    v19 = 0;
  }

  if (v15 <= 3 && (v18 + v17) == v19)
  {
    *(a1 + 268) |= 1u;
    BlueFin::GlPeDnav::addAlMeasurement(a1, a2, a3, 0);
  }

  if ((BlueFin::GlPeDnav::Core(a1, a2, *a3, this, a5, 1.62176493e14) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (BlueFin::GlSetBase::Cnt(this) <= 3)
  {
    *(a1 + 268) |= 1u;
    BlueFin::GlPeDnav::addAlMeasurement(a1, a2, a3, 0);
  }

  if ((BlueFin::GlPeDnav::Core(a1, a2, *a3, this, a5, 900000000.0) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (BlueFin::GlSetBase::Cnt(this) <= 3)
  {
    BlueFin::GlPeDnav::addAlMeasurement(a1, a2, a3, 1);
  }

  if ((BlueFin::GlPeDnav::Core(a1, a2, *a3, this, a5, 9000000.0) & 1) == 0)
  {
LABEL_26:
    *(a1 + 416) = *a7;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 280) = 0x4059000000000000;
    *(a1 + 16) = 0xC158548D40000000;
    *(a1 + 24) = 6367427;
    *(a1 + 312) = 7;
    v26 = *(a1 + 304);
    *(v26 + 56) = 0;
    *(v26 + 40) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 8) = 0u;
    *(*(a1 + 304) + 56) = *(a1 + 416) * 0.299792458;
    *(a1 + 64) = *(a1 + 420) * 0.0898755179;
    return a1;
  }

  if (!a2)
  {
    v74 = "pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 462, "DNavQA", "pastDNMeas");
    v75 = 462;
    goto LABEL_112;
  }

  v20 = *a3;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 24) = 6367427;
  *(a1 + 64) = 0x40A76BD9628CBD12;
  v109[1] = 0xC00000000;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  v106[1] = 0xC00000000;
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  v109[0] = v110;
  v21 = *(a1 + 28);
  v98[0] = a1 + 304;
  v98[1] = a1;
  v98[2] = 0;
  v99 = v21;
  v100 = 0x4C000000001;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0x4008000000000000;
  v106[0] = v107;
  memset(v112, 0, 48);
  v95[0] = v109;
  v95[1] = v106;
  v95[2] = 0;
  v95[3] = 0;
  v95[4] = v112;
  v96 = 0u;
  v97 = 0u;
  v76 = v20;
  if (BlueFin::GlSetBase::Highest((a1 + 384)) >= v20)
  {
    v74 = "m_otMeasSet.Highest() < lDNMeasMaxNum";
    DeviceFaultNotify("glpe_dnav.cpp", 484, "DNavQA", "m_otMeasSet.Highest() < lDNMeasMaxNum");
    v75 = 484;
    goto LABEL_112;
  }

  if ((*(**(a1 + 424) + 16))(*(a1 + 424), v98, v95, a2, a1 + 384))
  {
    return a1;
  }

  v86 = *(a1 + 392);
  memcpy(v90, *(a1 + 384), 4 * v86);
  v88 = 0;
  v87 = 0;
  v89 = v90[0];
  BlueFin::GlSetIterator::operator++(&v86);
  if (v87 == v86)
  {
    v24 = 0;
    v25 = 1;
    v22.i64[0] = 0x409F400000000000;
    v78 = v22;
    goto LABEL_37;
  }

  v28 = 0;
  v29 = v109[0];
  v25 = 1;
  v30 = v112;
  v31 = v106[0];
  v22.i64[0] = 0x409F400000000000;
  v78 = v22;
  do
  {
    v32 = a2 + 56 * v88;
    v33 = *(v32 + 44);
    v34 = (a1 + 248);
    if (v33)
    {
      if (v33 == 3)
      {
        v22.i64[0] = *(v32 + 8);
        v78 = v22;
        v28 = a2 + 56 * v88;
        goto LABEL_35;
      }

      v34 = (a1 + 256);
      if (v33 != 2)
      {
        goto LABEL_35;
      }
    }

    v35 = *(v29 + 8 * v88 + 8) - *(v31 + 8 * v88 + 8);
    *v34 = *v34 + v35 * v35;
    if (*v30 < -2.0)
    {
      v25 = 0;
    }

LABEL_35:
    BlueFin::GlSetIterator::operator++(&v86);
    ++v30;
  }

  while (v87 != v86);
  v24 = v28 != 0;
LABEL_37:
  *v22.i64 = sqrt(*(a1 + 248));
  *v23.i64 = *v22.i64 - trunc(*v22.i64 * 2.32830644e-10) * 4294967300.0;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v23.i64[0] = vbslq_s8(vnegq_f64(v36), v23, v22).u64[0];
  if (*v22.i64 <= 4294967300.0)
  {
    v37 = *v22.i64;
  }

  else
  {
    v37 = *v23.i64;
  }

  if ((v25 & 1) == 0)
  {
    v52 = *(a1 + 268) & 0xFFFFFFEF;
    goto LABEL_109;
  }

  v38 = BlueFin::GlSetBase::Cnt((a1 + 72));
  v39 = BlueFin::GlSetBase::Cnt((a1 + 160));
  v40 = v39;
  if (v39 >= 2)
  {
    v41 = -7;
  }

  else
  {
    v41 = -4;
  }

  v42 = v39 + v38;
  if (v38 < 4)
  {
    ++v42;
  }

  if ((v39 > 1) & (*(a1 + 268) >> 1))
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  v44 = v42 + v41 + v43;
  if ((v44 & 0x80) != 0)
  {
    v74 = "cNdof >= 0";
    DeviceFaultNotify("glpe_dnav.cpp", 554, "DNavQA", "cNdof >= 0");
    v75 = 554;
    goto LABEL_112;
  }

  if (v24 != v38 < 4)
  {
    v74 = "bAltNeeded == bAltInMeasArray";
    DeviceFaultNotify("glpe_dnav.cpp", 558, "DNavQA", "bAltNeeded == bAltInMeasArray");
    v75 = 558;
    goto LABEL_112;
  }

  if (v38 < 4 != (*(a1 + 268) & 1))
  {
    v74 = "bAltNeeded == bAltUsed";
    DeviceFaultNotify("glpe_dnav.cpp", 559, "DNavQA", "bAltNeeded == bAltUsed");
    v75 = 559;
LABEL_112:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dnav.cpp", v75, v74);
  }

  v45 = v39;
  v46 = vaddvq_f64(vmulq_f64(*(a1 + 40), *(a1 + 40)));
  v47 = v39 == 4 && v38 == 2;
  v48 = dbl_298A43620[(v42 + v41 + v43) < 3u];
  if (v47)
  {
    v48 = 9.0;
  }

  if (v46 < v48)
  {
    if (v38 < 3)
    {
      v53 = 0;
    }

    else
    {
      v92 = v94;
      v93 = 8;
      memset(v94, 0, 32);
      if (v76 < 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = 0;
        v50 = v76;
        v51 = (a2 + 44);
        do
        {
          if (!*v51 && ((*(*(a1 + 72) + 4 * (*(v51 - 2) >> 5)) >> (*(v51 - 1) & 0x1F)) & 1) != 0)
          {
            *&v94[(*(v51 - 12) >> 3) & 0x1C] |= 1 << *(v51 - 12);
            v49 = *(v51 - 7);
          }

          v51 += 14;
          --v50;
        }

        while (v50);
      }

      v77 = v39;
      v54 = *(a1 + 424);
      v79 = 0;
      v80 = v82;
      v81 = 8;
      memset(v82, 0, sizeof(v82));
      v83 = xmmword_298A41DA0;
      v84 = vdup_n_s32(0x42C60000u);
      v85 = 1120272384;
      BlueFin::stDops::stDops(&v86, &v79);
      v55 = 0;
      v91 = v54;
      v56 = &v92[4 * v93 - 4];
      do
      {
        if (*v56)
        {
          v57 = *v56 - (((*v56 >> 2) & 0x9249249) + ((*v56 >> 1) & 0x5B6DB6DB));
          v55 = ((v57 + (v57 >> 3)) & 0xC71C71C7) + v55 - 63 * (((v57 + (v57 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v56;
      }

      while (v56 >= v92);
      BlueFin::GlPeDops::GetDops(&v86, v49);
      v59.i32[0] = DWORD1(v83);
      *v60.i32 = *(&v83 + 1) - (truncf(*(&v83 + 1) * 2.3283e-10) * 4295000000.0);
      v61.i64[0] = 0x8000000080000000;
      v61.i64[1] = 0x8000000080000000;
      v62 = vbslq_s8(v61, v60, v59);
      if (*(&v83 + 1) > 4295000000.0)
      {
        v59.i32[0] = v62.i32[0];
      }

      if (v38 == 3)
      {
        v40 = v77;
        if (*v59.i32 < -4295000000.0)
        {
          *v62.i32 = -*v59.i32;
          *v59.i32 = -(*v59.i32 - (truncf(*v59.i32 * -2.3283e-10) * -4295000000.0));
          v58.i64[0] = 0x8000000080000000;
          v58.i64[1] = 0x8000000080000000;
          v59 = vbslq_s8(v58, v59, v62);
          *v59.i32 = -*v59.i32;
        }

        if (*v59.i32 < 0.0)
        {
          v63 = --*v59.i32;
        }

        else
        {
          v63 = *v59.i32;
        }

        *v59.i64 = *v78.i64 + trunc(*v78.i64 * 2.32830644e-10) * -4294967300.0;
        v64.f64[0] = NAN;
        v64.f64[1] = NAN;
        v65 = vnegq_f64(v64);
        v66 = vbslq_s8(v65, v59, v78);
        if (*v78.i64 <= 4294967300.0)
        {
          v66.i64[0] = v78.i64[0];
        }

        if (*v66.i64 < -4294967300.0)
        {
          *v58.i64 = -*v66.i64;
          *v66.i64 = -(*v66.i64 - trunc(*v66.i64 * -2.32830644e-10) * -4294967300.0);
          *v66.i64 = -*vbslq_s8(v65, v66, v58).i64;
        }

        if (*v66.i64 < 0.0)
        {
          v67 = --*v66.i64;
        }

        else
        {
          v67 = *v66.i64;
        }

        v53 = v67 * v63;
      }

      else
      {
        v40 = v77;
        if (*v59.i32 < -4295000000.0)
        {
          *v62.i32 = -*v59.i32;
          *v59.i32 = -(*v59.i32 - (truncf(*v59.i32 * -2.3283e-10) * -4295000000.0));
          v68.i64[0] = 0x8000000080000000;
          v68.i64[1] = 0x8000000080000000;
          *v59.i32 = -*vbslq_s8(v68, v59, v62).i32;
        }

        if (*v59.i32 < 0.0)
        {
          v69 = --*v59.i32;
        }

        else
        {
          v69 = *v59.i32;
        }

        if (v37 <= 0x1E)
        {
          v70 = 30;
        }

        else
        {
          v70 = v37;
        }

        v53 = v69 * v70;
      }
    }

    v71 = 1;
    if (!v38)
    {
      v71 = 2;
    }

    if (!v45)
    {
      v71 = 0;
    }

    v72 = v44;
    if ((v44 & 0xFE) != 0)
    {
      v72 = 2;
    }

    v73 = dword_298A43670[3 * v71 + v72];
    if (v73 > v53)
    {
      v53 = v73;
    }

    *(a1 + 24) = v53;
    if (v40 >= 3)
    {
      *(a1 + 64) = fmax(fmin(sqrt(v46), 29.3796609), 2.99792458);
    }

    v52 = *(a1 + 268) | 0x20;
LABEL_109:
    *(a1 + 268) = v52;
  }

  return a1;
}

double BlueFin::GlPeDnav::addAlMeasurement(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  if (!a2)
  {
    v8 = "pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 715, "addAlMeasurement", "pastDNMeas");
    v9 = 715;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dnav.cpp", v9, v8);
  }

  v4 = *a3;
  v5 = *a3;
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a3;
    v7 = a2;
    do
    {
      if (*(v7 + 44) == 3)
      {
        goto LABEL_10;
      }

      v7 += 56;
      --v4;
    }

    while (v4);
    if (v5 >= 0xE)
    {
      v8 = "i < DN_MEAS_ARR_LEN";
      DeviceFaultNotify("glpe_dnav.cpp", 730, "addAlMeasurement", "i < DN_MEAS_ARR_LEN");
      v9 = 730;
      goto LABEL_15;
    }
  }

  v7 = a2 + 56 * v6;
  *a3 = v5 + 1;
LABEL_10:
  result = 0.0;
  *(v7 + 50) = 0;
  *(v7 + 32) = 0;
  *(v7 + 36) = -1;
  *(v7 + 40) = 575;
  *v7 = xmmword_298A43630;
  *(v7 + 16) = xmmword_298A419D0;
  *(v7 + 44) = 3;
  *(v7 + 48) = 1;
  if (a4)
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0.0;
    v14 = vdup_n_s32(0x44FA0000u);
    v15 = -1;
    if (BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(a1 + 432), v12, a1, 0x27100u))
    {
      result = v13;
      v11 = *v14.i32;
      *v7 = v13;
      *(v7 + 8) = v11;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeDnav::Core(uint64_t a1, uint64_t a2, int a3, BlueFin::GlSetBase *this, uint64_t *a5, double a6)
{
  v152 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v86 = "pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 197, "Core", "pastDNMeas");
    v87 = "glpe_dnav.cpp";
    v88 = 197;
    goto LABEL_80;
  }

  v12 = BlueFin::GlSetBase::Cnt(this);
  v13 = (BlueFin::GlSetBase::Cnt(a5) + v12 + (*(a1 + 268) & 1));
  v14 = *(a1 + 384);
  bzero(v14, ((4 * *(a1 + 392) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (a3 >= 1)
  {
    v15 = 0;
    v16 = *a5;
    v17 = *this;
    do
    {
      v18 = a2 + 56 * v15;
      v19 = *(v18 + 44);
      if (v19 == 3)
      {
        if ((*(a1 + 268) & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *(v14 + (v15 >> 5)) |= 1 << v15;
        goto LABEL_11;
      }

      if (v19 == 2)
      {
        v20 = *(v18 + 40);
        v21 = *(v16 + 4 * (v20 >> 5));
      }

      else
      {
        if (v19)
        {
          goto LABEL_11;
        }

        v20 = *(v18 + 40);
        v21 = *(v17 + 4 * (v20 >> 5));
      }

      if ((v21 >> (v20 & 0x1F)))
      {
        goto LABEL_10;
      }

LABEL_11:
      ++v15;
    }

    while (a3 > v15);
  }

  if (v13 > 21)
  {
    v86 = "cNumMeas<=BIG_MATR_MAX_ROW_DIM";
    DeviceFaultNotify("glpe_dnav.cpp", 243, "Core", "cNumMeas<=BIG_MATR_MAX_ROW_DIM");
    v87 = "glpe_dnav.cpp";
    v88 = 243;
    goto LABEL_80;
  }

  if (v13 != BlueFin::GlSetBase::Cnt((a1 + 384)))
  {
    v86 = "cNumMeas==m_otMeasSet.Cnt()";
    DeviceFaultNotify("glpe_dnav.cpp", 244, "Core", "cNumMeas==m_otMeasSet.Cnt()");
    v87 = "glpe_dnav.cpp";
    v88 = 244;
    goto LABEL_80;
  }

  if (BlueFin::GlSetBase::Highest((a1 + 384)) >= a3)
  {
    v86 = "m_otMeasSet.Highest() < lDNMeasMaxNum";
    DeviceFaultNotify("glpe_dnav.cpp", 245, "Core", "m_otMeasSet.Highest() < lDNMeasMaxNum");
    v87 = "glpe_dnav.cpp";
    v88 = 245;
    goto LABEL_80;
  }

  v22 = BlueFin::GlSetBase::Cnt(this);
  v23 = v22;
  v91 = v22;
  v24 = BlueFin::GlSetBase::Cnt(a5);
  if (v23 <= 2 && v24 <= 2 && (v91 != 2 || v24 != 2))
  {
    v86 = "cNumFpr>DN_MIN_FPR || cNumRr>DN_MIN_RR || (cNumFpr==DN_MIN_FPR&&cNumRr==DN_MIN_RR)";
    DeviceFaultNotify("glpe_dnav.cpp", 252, "Core", "cNumFpr>DN_MIN_FPR || cNumRr>DN_MIN_RR || (cNumFpr==DN_MIN_FPR&&cNumRr==DN_MIN_RR)");
    v87 = "glpe_dnav.cpp";
    v88 = 252;
LABEL_80:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v87, v88, v86);
  }

  if (v91 == 1 || (v90 = v24 - 1, v24 == 1))
  {
    v86 = "cNumFpr!=1 && cNumRr!=1";
    DeviceFaultNotify("glpe_dnav.cpp", 253, "Core", "cNumFpr!=1 && cNumRr!=1");
    v87 = "glpe_dnav.cpp";
    v88 = 253;
    goto LABEL_80;
  }

  v89 = this;
  v25 = v24;
  if (v24 <= 1)
  {
    v26 = 4;
  }

  else
  {
    v26 = 7;
  }

  *(a1 + 264) = v26;
  v27 = &v142 + 8;
  v142 = xmmword_298A43640;
  v140 = &v143;
  v141 = &v144;
  v144 = 0;
  for (i = 1; i != 15; ++i)
  {
    v141[i] = v27;
    v27 += 56;
  }

  v29 = 0;
  v136 = v138;
  v137 = 0xE00000000;
  memset(v138, 0, sizeof(v138));
  v139 = 0;
  v132 = v134;
  *v133 = 0xE00000000;
  memset(v134, 0, sizeof(v134));
  v135 = 0;
  v128 = v130;
  v129 = 0xE00000000;
  memset(v130, 0, sizeof(v130));
  v131 = 0;
  v30 = (a1 + 304);
  v31 = *(a1 + 28);
  v118 = a1 + 304;
  v119 = a1;
  v120 = 0;
  v121 = v31;
  v122 = 0x4C000000001;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0x4008000000000000;
  v114[0] = &v132;
  v114[1] = &v128;
  v114[2] = &v140;
  v114[3] = &v136;
  v32 = (a1 + 280);
  v115 = 0u;
  v116 = 0u;
  v117 = 0;
  do
  {
    v112 = 0uLL;
    v113 = 0;
    v112 = *v119;
    v113 = *(v119 + 16);
    v33 = (*(**(a1 + 424) + 48))(*(a1 + 424));
    (*(*v33 + 104))(v33, &v112);
    if ((*(**(a1 + 424) + 16))(*(a1 + 424), &v118, v114, a2, a1 + 384))
    {
      return 0;
    }

    if (v25 <= 1)
    {
      BlueFin::BigMatrix::ReShape(&v140, v13, *(a1 + 264));
    }

    v34 = v133[0];
    if (v91 <= 3 && v133[0] <= 11)
    {
      BlueFin::SKFVector::AddLen(&v132);
      *(v132 + v133[0]) = 0;
      BlueFin::SKFVector::AddLen(&v128);
      *&v128[8 * v129] = 0;
      BlueFin::SKFVector::AddLen(&v136);
      *&v136[8 * v137] = 0x42A78A9F83E7E45ALL;
      BlueFin::BigMatrix::AddRow(&v140);
      *(v141[v142] + 32) = 0x3FF0000000000000;
      *(a1 + 268) |= 4u;
      v34 = v133[0];
    }

    if (v90 <= 4 && v34 <= 11)
    {
      BlueFin::SKFVector::AddLen(&v132);
      *(v132 + v133[0]) = *(a1 + 416) * 0.299792458;
      BlueFin::SKFVector::AddLen(&v128);
      *&v128[8 * v129] = *(*(a1 + 304) + 56);
      BlueFin::SKFVector::AddLen(&v136);
      *&v136[8 * v137] = *(a1 + 420) * 0.0898755179;
      v35 = SDWORD1(v142);
      BlueFin::BigMatrix::AddRow(&v140);
      *(v141[v142] + 8 * v35) = 0x3FF0000000000000;
      *(a1 + 268) |= 8u;
    }

    if (v25 >= 2 && (*(a1 + 268) & 2) != 0 && v133[0] <= 10)
    {
      BlueFin::SKFVector::AddLen(&v132);
      *(v132 + v133[0]) = 0;
      BlueFin::SKFVector::AddLen(&v132);
      *(v132 + v133[0]) = 0;
      BlueFin::SKFVector::AddLen(&v128);
      *&v128[8 * v129] = 0;
      BlueFin::SKFVector::AddLen(&v128);
      *&v128[8 * v129] = 0;
      BlueFin::SKFVector::AddLen(&v136);
      *&v136[8 * v137] = 0x3FF0000000000000;
      BlueFin::SKFVector::AddLen(&v136);
      *&v136[8 * v137] = 0x3FF0000000000000;
      BlueFin::BigMatrix::AddRow(&v140);
      *(v141[v142] + 40) = 0x3FF0000000000000;
      BlueFin::BigMatrix::AddRow(&v140);
      *(v141[v142] + 48) = 0x3FF0000000000000;
    }

    v36 = v142;
    v37 = DWORD1(v142);
    if (v142 < SDWORD1(v142))
    {
      v86 = "otH.GetRowSize() >= otH.GetColSize()";
      DeviceFaultNotify("glpe_dnav.cpp", 333, "Core", "otH.GetRowSize() >= otH.GetColSize()");
      v87 = "glpe_dnav.cpp";
      v88 = 333;
      goto LABEL_80;
    }

    v38 = v137;
    v107 = v110;
    v108 = v137;
    v109 = 14;
    if (v137 >= 15)
    {
      v86 = "LEN >= len";
      DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
      v87 = "glpe_matrix.h";
      v88 = 497;
      goto LABEL_80;
    }

    v111 = 0;
    memset(v110, 0, sizeof(v110));
    v107 = v110;
    if (v137 >= 1)
    {
      v39 = (v136 + 8);
      v40 = &v110[8];
      do
      {
        v41 = *v39++;
        *v40++ = 1.0 / v41;
        --v38;
      }

      while (v38);
    }

    v104 = 0xC00000007;
    *&v102.f64[0] = &v105;
    *&v102.f64[1] = &v106;
    v42 = 8;
    v43 = &v104;
    v106 = 0;
    do
    {
      *(*&v102.f64[1] + v42) = v43;
      v43 += 12;
      v42 += 8;
    }

    while (v42 != 64);
    v103 = __PAIR64__(v36, v37);
    if (v36 >= 1)
    {
      v44 = v107;
      v45 = v141;
      v46 = v36 + 1;
      v47 = *&v102.f64[1] + 8;
      v48 = 1;
      do
      {
        if (v37 >= 1)
        {
          v49 = *&v44[8 * v48];
          v50 = (v45[v48] + 8);
          v51 = v47;
          v52 = (v37 + 1) - 1;
          do
          {
            v53 = *v50++;
            v54 = v49 * v53;
            v55 = *v51++;
            *(v55 + 8 * v48) = v54;
            --v52;
          }

          while (v52);
        }

        ++v48;
      }

      while (v48 != v46);
    }

    v56 = 0;
    v57 = v133[0];
    v99 = xmmword_298A43650;
    v97 = &v100;
    v98 = &v101;
    v101 = 0;
    do
    {
      v98[v56 + 1] = &v99 + v56 * 8 + 8;
      ++v56;
    }

    while (v56 != 12);
    BlueFin::BigMatrix::Clone(&v97, v57, 1);
    v58 = v133[0];
    if (v133[0] >= 1)
    {
      v59 = v98 + 1;
      v60 = (v128 + 8);
      v61 = v132 + 1;
      do
      {
        v62 = *v61++;
        v63 = v62;
        v64 = *v60++;
        v65 = v63 - v64;
        v66 = *v59++;
        *(v66 + 8) = v65;
        --v58;
      }

      while (v58);
    }

    v94 = xmmword_298A43660;
    v92 = &v95;
    v93 = &v96;
    v67 = 1;
    v68 = &v94 + 8;
    v96 = 0;
    do
    {
      v93[v67] = v68;
      v68 += 56;
      ++v67;
    }

    while (v67 != 8);
    BlueFin::BigMatrix::mult(&v92, &v102, &v97);
    v69 = v94;
    if (v94 >= 1)
    {
      v70 = v93 + 1;
      v71 = v145;
      do
      {
        v72 = *v70++;
        *v71++ = *(v72 + 8);
        --v69;
      }

      while (v69);
    }

    BlueFin::BigMatrix::mult_sym(&v92, &v102, &v140);
    if (!BlueFin::BigMatrix::cholsl(&v92, v145, v146.f64, 0, 0))
    {
      return 0;
    }

    v73 = v147;
    *v32 = vaddq_f64(v146, *v32);
    *(a1 + 296) = v73 + *(a1 + 296);
    BlueFin::ecef2lla(v32->f64, a1);
    if (fabs(*(a1 + 16)) > 6367426.73)
    {
      return 0;
    }

    v74 = *v30;
    *(*v30 + 32) = v148 + *(*v30 + 32);
    if (v25 >= 2)
    {
      v75 = *(v74 + 48);
      *(v74 + 40) = v149 + *(v74 + 40);
      *(v74 + 48) = v150 + v75;
      *(v74 + 56) = v151 + *(v74 + 56);
    }

    v76 = v146.f64[1] * v146.f64[1] + v146.f64[0] * v146.f64[0] + v147 * v147;
    if (v29 > 8)
    {
      break;
    }

    ++v29;
  }

  while (v76 >= a6);
  if (v76 >= a6)
  {
    return 0;
  }

  *(a1 + 32) = *(v74 + 32);
  *(a1 + 40) = *(v74 + 40);
  *(a1 + 48) = *(v74 + 48);
  *(a1 + 56) = *(v74 + 56);
  *(a1 + 268) |= 0x10u;
  BlueFin::GlSetBase::operator=(a1 + 72, v89);
  *(a1 + 84) = *(v89 + 12);
  v77 = *(v89 + 28);
  v78 = *(v89 + 44);
  v79 = *(v89 + 60);
  *(a1 + 144) = *(v89 + 72);
  *(a1 + 132) = v79;
  *(a1 + 116) = v78;
  *(a1 + 100) = v77;
  BlueFin::GlSetBase::operator=(a1 + 160, a5);
  *(a1 + 172) = *(a5 + 12);
  v80 = *(a5 + 28);
  v81 = *(a5 + 44);
  v82 = *(a5 + 60);
  *(a1 + 232) = *(a5 + 9);
  *(a1 + 220) = v82;
  *(a1 + 204) = v81;
  *(a1 + 188) = v80;
  v83 = *(a1 + 16);
  v84 = 0x4103880000000000;
  if (v83 > 160000.0 || (v84 = 0xC08F400000000000, v83 < -1000.0))
  {
    *(a1 + 16) = v84;
    BlueFin::lla2ecef(a1, &v102);
    *v32 = v102;
    *(a1 + 296) = v103;
  }

  return 1;
}

uint64_t BlueFin::GlPeDnavMgr::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, char *a26, __int16 a27, int a28, double a29, double a30, int a31, __int16 a32, char a33, unsigned __int8 a34, __int128 a35, unint64_t a36, __int128 a37, __int128 a38, __int128 a39, char *a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, char *a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51, int64x2_t a52, __int128 a53, uint64_t a54, char a55)
{
  v55 = MEMORY[0x2A1C7C4A8](a1, a2);
  v57 = v56;
  v59 = v58;
  v60 = v55;
  STACK[0x3B38] = *MEMORY[0x29EDCA608];
  __src = &vars0_4;
  vars0 = 19;
  vars0_4 = 0u;
  v160 = v161 + 4;
  LOBYTE(v161[0]) = 19;
  memset(v161 + 4, 0, 48);
  memset(&v161[3] + 4, 0, 28);
  BlueFin::GlPeDnavMgr::CountMeas(v55, &__src, &v160);
  v61 = 0;
  v62 = __src + 4 * vars0 - 4;
  v63 = v62;
  do
  {
    if (*v63)
    {
      v64 = *v63 - (((*v63 >> 1) & 0x5B6DB6DB) + ((*v63 >> 2) & 0x9249249));
      v61 = ((v64 + (v64 >> 3)) & 0xC71C71C7) + v61 - 63 * (((v64 + (v64 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v63;
  }

  while (v63 >= __src);
  v65 = 0;
  v66 = v160 + 4 * LOBYTE(v161[0]) - 4;
  v67 = v66;
  do
  {
    if (*v67)
    {
      v68 = *v67 - (((*v67 >> 1) & 0x5B6DB6DB) + ((*v67 >> 2) & 0x9249249));
      v65 = ((v68 + (v68 >> 3)) & 0xC71C71C7) + v65 - 63 * (((v68 + (v68 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v67;
  }

  while (v67 >= v160);
  v69 = 0;
  v70 = v61;
  v71 = v65 + v61 < 8;
  if (v65 > 7)
  {
    v71 = 0;
  }

  if (v70 > 4)
  {
    v71 = 0;
  }

  do
  {
    if (*v62)
    {
      v72 = *v62 - (((*v62 >> 1) & 0x5B6DB6DB) + ((*v62 >> 2) & 0x9249249));
      v69 = ((v72 + (v72 >> 3)) & 0xC71C71C7) + v69 - 63 * (((v72 + (v72 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v62;
  }

  while (v62 >= __src);
  v73 = 0;
  v74 = v71 & v59;
  do
  {
    if (*v66)
    {
      v75 = *v66 - (((*v66 >> 1) & 0x5B6DB6DB) + ((*v66 >> 2) & 0x9249249));
      v73 = ((v75 + (v75 >> 3)) & 0xC71C71C7) + v73 - 63 * (((v75 + (v75 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v66;
  }

  while (v66 >= v160);
  if (v73 >= 2)
  {
    v76 = -7;
  }

  else
  {
    v76 = -4;
  }

  if ((v74 & (v73 > 1)) != 0)
  {
    v77 = 2;
  }

  else
  {
    v77 = 0;
  }

  if (v69 >= 4)
  {
    v78 = v69;
  }

  else
  {
    v78 = v69 + 1;
  }

  v79 = v78 + v73 + v76 + v77;
  if (v79 < 0)
  {
    return 0;
  }

  v80 = **(v60 + 744);
  v81 = *(v60 + 728);
  if (*(v60 + 272))
  {
    if ((v80 - v81) < 0x1F5)
    {
      return 0;
    }
  }

  if (v80 == v81 && BlueFin::GlSetBase::operator==(v60 + 72, &__src) && BlueFin::GlSetBase::operator==(v60 + 160, &v160))
  {
    return 0;
  }

  v83 = 0;
  v156 = v79;
  *(v60 + 728) = **(v60 + 744);
  do
  {
    v84 = &a55 + v83;
    v84[32] = 0;
    *(v84 + 9) = -1;
    *(v84 + 20) = 575;
    v83 += 56;
  }

  while (v83 != 784);
  v157 = v74;
  v158 = v57;
  a25 = &a55;
  *&STACK[0x730] = 0u;
  *&STACK[0x720] = 0u;
  *&STACK[0x710] = 0u;
  *&STACK[0x700] = 0u;
  *&STACK[0x6F0] = 0u;
  *&STACK[0x6E0] = 0u;
  *&STACK[0x6D0] = 0u;
  *&STACK[0x6C0] = 0u;
  *&STACK[0x6B0] = 0u;
  *&STACK[0x6A0] = 0u;
  *&STACK[0x690] = 0u;
  *&STACK[0x680] = 0u;
  *&STACK[0x670] = 0u;
  *&STACK[0x660] = 0u;
  *&STACK[0x650] = 0u;
  *&STACK[0x640] = 0u;
  *&STACK[0x630] = 0u;
  *&STACK[0x620] = 0u;
  *&STACK[0x610] = 0u;
  *&STACK[0x600] = 0u;
  *&STACK[0x5F0] = 0u;
  *&STACK[0x5E0] = 0u;
  *&STACK[0x5D0] = 0u;
  *&STACK[0x5C0] = 0u;
  *&STACK[0x5B0] = 0u;
  *&STACK[0x5A0] = 0u;
  *&STACK[0x590] = 0u;
  *&STACK[0x580] = 0u;
  *&STACK[0x570] = 0u;
  *&STACK[0x560] = 0u;
  v85 = (&STACK[0x540] | 0x14);
  v86 = 575;
  *&STACK[0x550] = 0u;
  *&STACK[0x540] = 0u;
  do
  {
    *(v85 - 2) = 0;
    *(v85 - 6) = 0;
    *(v85 - 10) = 0;
    *(v85 - 1) = -1;
    *v85 = 575;
    v85 += 12;
    --v86;
  }

  while (v86);
  LOBYTE(a35) = vars0;
  memcpy(&a35 + 8, __src, 4 * vars0);
  WORD1(a35) = 0;
  BYTE1(a35) = 0;
  DWORD1(a35) = DWORD2(a35);
  BlueFin::GlSetIterator::operator++(&a35);
  v87 = &STACK[0x540];
  if (BYTE1(a35) != a35)
  {
    v88 = 0;
    v87 = &STACK[0x540];
    v89.f64[0] = NAN;
    v89.f64[1] = NAN;
    v159 = vnegq_f64(v89);
    do
    {
      if (WORD1(a35) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v90 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(a35);
      v91 = *v90;
      LODWORD(v90) = v90[1];
      LOBYTE(a26) = v91;
      HIDWORD(a26) = v90;
      a27 = WORD1(a35);
      v92 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*(v60 + 744), &a26, 0);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v60 + 744), &a26, 0, 0);
      if (MeMeas)
      {
        v94 = MeMeas;
        a34 = *MeMeas;
        v95 = BlueFin::GlSvId::s_aucSvId2gnss[a34];
        a30 = 0.0;
        if (BlueFin::GlPeTimeManager::GetSystemConversionS(*(v60 + 736), v95, &a30) <= 501.0)
        {
          v97 = *(v94 + 8);
          v98 = a30;
          v99 = **(v60 + 744);
          a29 = 0.0;
          BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(*(v60 + 736), &a34, &a29, &a28);
          *v101.i64 = a29;
          *v102.i64 = a29 + trunc(a29 * 2.32830644e-10) * -4294967300.0;
          v103 = vbslq_s8(v159, v102, v101);
          if (a29 <= 4294967300.0)
          {
            *v103.i64 = a29;
          }

          if (*v103.i64 < -4294967300.0)
          {
            *v101.i64 = -*v103.i64;
            *v103.i64 = -(*v103.i64 - trunc(*v103.i64 * -2.32830644e-10) * -4294967300.0);
            v101 = vbslq_s8(v159, v103, v101);
            *v103.i64 = -*v101.i64;
          }

          *v101.i64 = (v97 + v98 - floor((v97 + v98) / 86400.0) * 86400.0) * 1000.0;
          if (*v103.i64 < 0.0)
          {
            v104 = --*v103.i64;
          }

          else
          {
            v104 = *v103.i64;
          }

          if (!v88)
          {
            *v103.i64 = *v101.i64 + trunc(*v101.i64 * 2.32830644e-10) * -4294967300.0;
            v105 = vbslq_s8(v159, v103, v101);
            if (*v101.i64 <= 4294967300.0)
            {
              v105.i64[0] = v101.i64[0];
            }

            if (*v105.i64 < -4294967300.0)
            {
              *v100.i64 = -*v105.i64;
              *v105.i64 = -(*v105.i64 - trunc(*v105.i64 * -2.32830644e-10) * -4294967300.0);
              *v105.i64 = -*vbslq_s8(v159, v105, v100).i64;
            }

            if (*v105.i64 < 0.0)
            {
              v106 = --*v105.i64;
            }

            else
            {
              v106 = *v105.i64;
            }

            v88 = v104 - v99 + v106;
          }

          v96 = (v99 + v88 - *v101.i64);
          if (v96 >= 0)
          {
            v107 = (v99 + v88 - *v101.i64);
          }

          else
          {
            v107 = -v96;
          }

          if (v107 >= 0x2932E01)
          {
            v108 = v96 / 86400000.0;
            if (v108 <= 0.0)
            {
              v109 = 0.0;
              if (v108 < 0.0)
              {
                v109 = ceil(v108 + -0.5);
              }
            }

            else
            {
              v109 = floor(v108 + 0.5);
            }

            v96 = (v96 + v109 * -86400000.0);
          }
        }

        else
        {
          v96 = 0;
        }

        *(v92 + 88) = v96;
        if ((v87 + 12) != &a26)
        {
          *(v87 + 12) = a26;
          *(v87 + 4) = HIDWORD(a26);
          *(v87 + 10) = a27;
        }

        *v87 = *(v94 + 24) * 299792458.0;
        v87 += 3;
      }

      BlueFin::GlSetIterator::operator++(&a35);
    }

    while (BYTE1(a35) != a35);
  }

  v110 = 0xAAAAAAAAAAAAAAABLL * (v87 - &STACK[0x540]);
  v111 = v110;
  if (v110 > 8)
  {
    v112 = v110 & 0x7F;
    v113 = 1;
    do
    {
      v114 = &STACK[0x540] + 3 * v113;
      if (*(v114 - 3) > *v114)
      {
        v115 = v113 - 1;
        if (v113 != 1)
        {
          v116 = 0;
          do
          {
            v117 = (v115 + v116) / 2;
            if (*(&STACK[0x540] + 3 * v117) <= *v114)
            {
              v116 = v117 + 1;
            }

            else
            {
              v115 = (v115 + v116) / 2;
            }
          }

          while (v116 != v115);
        }

        a35 = *v114;
        a36 = v114[2];
        v118 = &STACK[0x540] + 3 * v115;
        memmove(&STACK[0x540] + 3 * v115 + 3, v118, 24 * (v113 - v115));
        *v118 = a35;
        v118[2] = a36;
      }

      ++v113;
    }

    while (v113 != v112);
  }

  v119 = __src;
  v120 = vars0;
  bzero(__src, ((4 * vars0 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (v111 >= 1)
  {
    if (v111 >= 8)
    {
      v121 = 8;
    }

    else
    {
      v121 = v111;
    }

    v122 = *(v60 + 744);
    v123 = &STACK[0x540] | 0xC;
    v124 = &a55;
    do
    {
      *(__src + (*(v123 + 8) >> 5)) |= 1 << *(v123 + 8);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v122, v123, 0);
      *v124 = 0;
      *(v124 + 1) = 0;
      *(v124 + 5) = 0;
      *(v124 + 49) = 0;
      v124[32] = 0;
      *(v124 + 9) = -1;
      *(v124 + 20) = 575;
      *(v124 + 11) = 0;
      v122 = *(v60 + 744);
      *(v124 + 4) = *v122;
      if (v123 != v124 + 32)
      {
        v124[32] = *v123;
        *(v124 + 9) = *(v123 + 4);
        *(v124 + 20) = *(v123 + 8);
      }

      *v124 = *(PeMeas + 24);
      *(v124 + 1) = *(PeMeas + 52);
      v124[48] = 1;
      *(v124 + 3) = *(PeMeas + 88);
      v124 += 56;
      a25 = v124;
      v123 += 24;
      --v121;
    }

    while (v121);
    v119 = __src;
    v120 = vars0;
  }

  v126 = 0;
  v127 = &v119[4 * v120 - 4];
  do
  {
    if (*v127)
    {
      v128 = *v127 - (((*v127 >> 1) & 0x5B6DB6DB) + ((*v127 >> 2) & 0x9249249));
      v126 = ((v128 + (v128 >> 3)) & 0xC71C71C7) + v126 - 63 * (((v128 + (v128 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v127 -= 4;
  }

  while (v127 >= v119);
  BlueFin::GlPeDnavMgr::PackMeasRr(v60, &a25);
  LOBYTE(a30) = -73 * ((a25 - &a55) >> 3);
  *(v60 + 720) = v60;
  BlueFin::GlPeDnav::Run(v60, &a55, &a30, &__src, &v160, v157, v158);
  v129 = *(v60 + 720);
  v130 = *(v129 + 268);
  if (v156)
  {
    if (*(v129 + 24) > 0x186A0u || (*(v129 + 268) & 0x20) == 0)
    {
      v132 = 0;
      LODWORD(a37) = 6367427;
      a40 = &a41 + 4;
      a35 = 0uLL;
      a36 = 0;
      *(&a37 + 4) = 0u;
      *(&a38 + 4) = 0u;
      a39 = 0u;
      *(&a41 + 4) = 0u;
      *(&a42 + 4) = 0u;
      *(&a43 + 4) = 0u;
      a46 = &a47 + 4;
      LOBYTE(a41) = 19;
      *(&a44 + 4) = 0u;
      a45 = 0u;
      LOBYTE(a47) = 19;
      *(&a47 + 4) = 0u;
      *(&a48 + 4) = 0u;
      *(&a49 + 4) = 0u;
      *(&a50 + 4) = 0u;
      a51 = 0u;
      a52 = vdupq_n_s64(0x41584A30AEF9DB23uLL);
      *(&a53 + 4) = 0;
      v133 = __src + 4 * vars0 - 4;
      LOBYTE(a53) = 0;
      do
      {
        if (*v133)
        {
          v134 = *v133 - (((*v133 >> 1) & 0x5B6DB6DB) + ((*v133 >> 2) & 0x9249249));
          v132 = ((v134 + (v134 >> 3)) & 0xC71C71C7) + v132 - 63 * (((v134 + (v134 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v133;
      }

      while (v133 >= __src);
      if (v132 < 3u)
      {
        goto LABEL_118;
      }

      v135 = 0;
      v136 = v160 + 4 * LOBYTE(v161[0]) - 4;
      do
      {
        if (*v136)
        {
          v137 = *v136 - (((*v136 >> 1) & 0x5B6DB6DB) + ((*v136 >> 2) & 0x9249249));
          v135 = ((v137 + (v137 >> 3)) & 0xC71C71C7) + v135 - 63 * (((v137 + (v137 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v136;
      }

      while (v136 >= v160);
      if (v135 < 3u)
      {
        bzero(v160, ((4 * LOBYTE(v161[0]) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        BlueFin::GlPeDnav::Run(v60, &a55, &a30, &__src, &v160, v157, v158);
        v138 = v60;
      }

      else
      {
        BlueFin::GlPeDnavMgr::Isolate(&STACK[0x540], v60, &a55, &a30, &__src, &v160, v157, v158);
        v138 = &STACK[0x540];
      }

      BlueFin::stDnavState::operator=(&a35, v138);
      if ((BYTE4(a53) & 0x20) == 0)
      {
LABEL_118:
        BlueFin::GlPeDnavMgr::CountMeas(v60, &__src, &v160);
        STACK[0x540] = &STACK[0x54C];
        LOBYTE(STACK[0x548]) = 19;
        *&STACK[0x54C] = 0u;
        *&STACK[0x55C] = 0u;
        *&STACK[0x56C] = 0u;
        *&STACK[0x57C] = 0u;
        *&STACK[0x588] = 0u;
        BlueFin::GlSetBase::operator=(&__src, &STACK[0x540]);
        v139 = 0;
        vars0_4 = *&STACK[0x54C];
        v140 = __src + 4 * vars0 - 4;
        do
        {
          if (*v140)
          {
            v141 = *v140 - (((*v140 >> 1) & 0x5B6DB6DB) + ((*v140 >> 2) & 0x9249249));
            v139 = ((v141 + (v141 >> 3)) & 0xC71C71C7) + v139 - 63 * (((v141 + (v141 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v140;
        }

        while (v140 >= __src);
        v142 = 0;
        v143 = v160 + 4 * LOBYTE(v161[0]) - 4;
        do
        {
          if (*v143)
          {
            v144 = *v143 - (((*v143 >> 1) & 0x5B6DB6DB) + ((*v143 >> 2) & 0x9249249));
            v142 = ((v144 + (v144 >> 3)) & 0xC71C71C7) + v142 - 63 * (((v144 + (v144 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v143;
        }

        while (v143 >= v160);
        if (v142 >= 2)
        {
          v145 = -7;
        }

        else
        {
          v145 = -4;
        }

        if ((v157 & (v142 > 1)) != 0)
        {
          v146 = 2;
        }

        else
        {
          v146 = 0;
        }

        if (v139 < 4)
        {
          ++v139;
        }

        if (((v139 + v142 + v145 + v146) & 0x80) == 0)
        {
          a26 = &a55;
          BlueFin::GlPeDnavMgr::PackMeasRr(v60, &a26);
          LOBYTE(a30) = -73 * ((a26 - &a55) >> 3);
          BlueFin::GlPeDnav::Run(v60, &a55, &a30, &__src, &v160, v157, v158);
          BlueFin::stDnavState::operator=(&a35, v60);
          if ((BYTE4(a53) & 0x20) == 0)
          {
            v147 = 0;
            v148 = __src + 4 * vars0 - 4;
            do
            {
              if (*v148)
              {
                v149 = *v148 - (((*v148 >> 1) & 0x5B6DB6DB) + ((*v148 >> 2) & 0x9249249));
                v147 = ((v149 + (v149 >> 3)) & 0xC71C71C7) + v147 - 63 * (((v149 + (v149 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v148;
            }

            while (v148 >= __src);
            v150 = 0;
            v151 = v160 + 4 * LOBYTE(v161[0]) - 4;
            do
            {
              if (*v151)
              {
                v152 = *v151 - (((*v151 >> 1) & 0x5B6DB6DB) + ((*v151 >> 2) & 0x9249249));
                v150 = ((v152 + (v152 >> 3)) & 0xC71C71C7) + v150 - 63 * (((v152 + (v152 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v151;
            }

            while (v151 >= v160);
            if (v150 >= 2)
            {
              v153 = -7;
            }

            else
            {
              v153 = -4;
            }

            if ((v157 & (v150 > 1)) != 0)
            {
              v154 = 2;
            }

            else
            {
              v154 = 0;
            }

            if (v147 < 4)
            {
              LOBYTE(v147) = v147 + 1;
            }

            if ((v147 + v150 + v153 + v154) >= 1)
            {
              BlueFin::GlPeDnavMgr::Isolate(&STACK[0x540], v60, &a55, &a30, &__src, &v160, v157, v158);
              BlueFin::stDnavState::operator=(&a35, &STACK[0x540]);
            }
          }
        }
      }

      v155 = BlueFin::stDnavState::operator=(v60 + 440, &a35);
      if ((*(v60 + 708) & 0x20) != 0 && ((v130 & 0x20) == 0 || *(v60 + 464) < *(*(v60 + 720) + 24)))
      {
        *(v60 + 720) = v155;
      }

      GlCustomLog(14, "DNAV run FDI\n");
      v130 = *(*(v60 + 720) + 268);
    }
  }

  return (v130 >> 4) & 1;
}

void BlueFin::GlPeDnavMgr::CountMeas(BlueFin::GlPeDnavMgr *this, void **a2, void **a3)
{
  bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSetBase::GlSetBase(&v47, v49, 0x13u, (*(this + 93) + 184));
  LODWORD(v43) = v48;
  memcpy(&v44, v47, 4 * v48);
  HIDWORD(v43) = v44;
  BlueFin::GlSetIterator::operator++(&v43);
  while (BYTE1(v43) != v43)
  {
    if (WORD1(v43) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v43);
    v7 = *v6;
    LODWORD(v6) = v6[1];
    LOBYTE(v41) = v7;
    HIDWORD(v41) = v6;
    v42 = WORD1(v43);
    v8 = BlueFin::GlSvId::s_aucSvId2gnss[v7];
    if (v8 != 1)
    {
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(this + 93), &v41, 0);
      if (BlueFin::stPeSigMeasKF::IsPRValid(PeMeas) && (*(PeMeas + 96) & 8) == 0)
      {
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 93), &v41, 0, 0);
        if (MeMeas)
        {
          v11 = (~*(MeMeas + 3) & 0x30) != 0 || (*(MeMeas + 3) & 0xC) == 0;
          if (!v11 && BlueFin::GlPeTimeManager::GetSystemConversionS(*(this + 92), v8, v40) < 501.0)
          {
            *(*a2 + (v42 >> 5)) |= 1 << v42;
          }
        }
      }

      if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas) && (*(PeMeas + 96) & 0x40) == 0)
      {
        *(*a3 + (v42 >> 5)) |= 1 << v42;
      }
    }

    BlueFin::GlSetIterator::operator++(&v43);
  }

  v12 = BlueFin::GlSetBase::Cnt(a2);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v43, a2);
  v13 = 0;
  v14 = &v43[v44 - 1];
  do
  {
    if (*v14)
    {
      v15 = *v14 - (((*v14 >> 1) & 0x5B6DB6DB) + ((*v14 >> 2) & 0x9249249));
      v13 = ((v15 + (v15 >> 3)) & 0xC71C71C7) + v13 - 63 * (((v15 + (v15 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v14;
  }

  while (v14 >= v43);
  if (v12 != v13)
  {
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a2, 0, &v41);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a2, 1, v40);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a2, 2, v39);
    BlueFin::GlSetBase::GlSetBase(&v35, &v37, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v35, &v43, v40);
    BlueFin::GlSetBase::operator=(&v35, &v43);
    v37 = v45;
    v38 = v46;
    BlueFin::GlSetBase::GlSetBase(&v28, &v29, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v28, &v43, v40);
    BlueFin::GlSetBase::operator=(&v28, &v43);
    v29 = v45;
    v30 = v46;
    BlueFin::GlSetBase::GlSetBase(&__src, &v33, 8u, &v28);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v43, v39);
    BlueFin::GlSetBase::operator=(&__src, &v43);
    v33 = v45;
    v34 = v46;
    LOBYTE(v43) = v32;
    memcpy(&v44, __src, 4 * v32);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16 + 14] == 255))
      {
        v17 = 575;
      }

      else
      {
        v17 = BlueFin::GlSignalId::s_ausGnss2signalId[v16] + BYTE2(v43) - BlueFin::GlSvId::s_aucGnss2minSvId[v16] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v16];
      }

      BlueFin::GlSetBase::Remove(a2, v17);
      BlueFin::GlSetIterator::operator++(&v43);
    }

    LOBYTE(v43) = v36;
    memcpy(&v44, v35, 4 * v36);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v18 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v18 + 7] == 255))
      {
        v19 = 575;
      }

      else
      {
        v19 = BlueFin::GlSignalId::s_ausGnss2signalId[v18] + BYTE2(v43) + BlueFin::GlSvId::s_aucGnss2numSvId[v18] - BlueFin::GlSvId::s_aucGnss2minSvId[v18];
      }

      BlueFin::GlSetBase::Remove(a2, v19);
      BlueFin::GlSetIterator::operator++(&v43);
    }
  }

  v20 = BlueFin::GlSetBase::Cnt(a3);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v43, a3);
  v21 = 0;
  v22 = &v43[v44 - 1];
  do
  {
    if (*v22)
    {
      v23 = *v22 - (((*v22 >> 1) & 0x5B6DB6DB) + ((*v22 >> 2) & 0x9249249));
      v21 = ((v23 + (v23 >> 3)) & 0xC71C71C7) + v21 - 63 * (((v23 + (v23 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v22;
  }

  while (v22 >= v43);
  if (v20 != v21)
  {
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a3, 0, &v41);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a3, 1, v40);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a3, 2, v39);
    BlueFin::GlSetBase::GlSetBase(&v35, &v37, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v35, &v43, v40);
    BlueFin::GlSetBase::operator=(&v35, &v43);
    v37 = v45;
    v38 = v46;
    BlueFin::GlSetBase::GlSetBase(&v28, &v29, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v28, &v43, v40);
    BlueFin::GlSetBase::operator=(&v28, &v43);
    v29 = v45;
    v30 = v46;
    BlueFin::GlSetBase::GlSetBase(&__src, &v33, 8u, &v28);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v43, v39);
    BlueFin::GlSetBase::operator=(&__src, &v43);
    v33 = v45;
    v34 = v46;
    LOBYTE(v43) = v32;
    memcpy(&v44, __src, 4 * v32);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v24 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v24 + 14] == 255))
      {
        v25 = 575;
      }

      else
      {
        v25 = BlueFin::GlSignalId::s_ausGnss2signalId[v24] + BYTE2(v43) - BlueFin::GlSvId::s_aucGnss2minSvId[v24] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v24];
      }

      BlueFin::GlSetBase::Remove(a3, v25);
      BlueFin::GlSetIterator::operator++(&v43);
    }

    LOBYTE(v43) = v36;
    memcpy(&v44, v35, 4 * v36);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v26 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v26 + 7] == 255))
      {
        v27 = 575;
      }

      else
      {
        v27 = BlueFin::GlSignalId::s_ausGnss2signalId[v26] + BYTE2(v43) + BlueFin::GlSvId::s_aucGnss2numSvId[v26] - BlueFin::GlSvId::s_aucGnss2minSvId[v26];
      }

      BlueFin::GlSetBase::Remove(a3, v27);
      BlueFin::GlSetIterator::operator++(&v43);
    }
  }

  if (BlueFin::GlSetBase::Cnt(a2) == 1)
  {
    bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  if (BlueFin::GlSetBase::Cnt(a3) == 1)
  {
    bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }
}

void BlueFin::GlPeDnavMgr::PackMeasRr(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  STACK[0x1258] = *MEMORY[0x29EDCA608];
  if (!v3 || (v6 = v3, !*v3))
  {
    v34 = "pastDNMeas && *pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 1258, "PackMeasRr", "pastDNMeas && *pastDNMeas");
    v35 = "glpe_dnav.cpp";
    v36 = 1258;
LABEL_34:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v35, v36, v34);
  }

  v7 = v5;
  v8 = v4;
  v9 = v2;
  v10 = -4512;
  memset(var40, 0, sizeof(var40));
  do
  {
    v11 = var40 + v10;
    *(v11 + 566) = 0;
    *(v11 + 282) = 0uLL;
    *(v11 + 1132) = -1;
    *(v11 + 2266) = 575;
    v10 += 24;
  }

  while (v10);
  v12 = *(v4 + 8);
  LOBYTE(STACK[0x11D0]) = v12;
  memcpy(&STACK[0x11D8], *v4, 4 * v12);
  LOWORD(STACK[0x11D2]) = 0;
  LOBYTE(STACK[0x11D1]) = 0;
  LODWORD(STACK[0x11D4]) = STACK[0x11D8];
  BlueFin::GlSetIterator::operator++(&STACK[0x11D0]);
  v13 = var40;
  if (LOBYTE(STACK[0x11D1]) == LOBYTE(STACK[0x11D0]))
  {
    goto LABEL_10;
  }

  v14 = var40 | 0xC;
  do
  {
    v15 = LOWORD(STACK[0x11D2]);
    if (v15 >= 0x23F)
    {
      v34 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v35 = "glsignalid.h";
      v36 = 578;
      goto LABEL_34;
    }

    v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v15;
    v17 = v16[1];
    *v14 = *v16;
    *(v14 + 4) = v17;
    *(v14 + 8) = v15;
    *(v14 - 12) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(v9 + 744), v14, 0, 0) + 27);
    BlueFin::GlSetIterator::operator++(&STACK[0x11D0]);
    v14 += 24;
  }

  while (LOBYTE(STACK[0x11D1]) != LOBYTE(STACK[0x11D0]));
  v13 = (v14 - 12);
LABEL_10:
  v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - var40) >> 3);
  v19 = v18;
  if (v7 >= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v7;
  }

  if (v20 < v18 && v18 >= 2)
  {
    v21 = v18 & 0x7F;
    v22 = 1;
    do
    {
      v23 = var40 + 24 * v22;
      if (*(v23 - 3) > *v23)
      {
        v24 = v22 - 1;
        if (v22 != 1)
        {
          v25 = 0;
          do
          {
            v26 = (v24 + v25) / 2;
            if (*(var40 + 3 * v26) <= *v23)
            {
              v25 = v26 + 1;
            }

            else
            {
              v24 = (v24 + v25) / 2;
            }
          }

          while (v25 != v24);
        }

        *&STACK[0x11D0] = *v23;
        STACK[0x11E0] = *(v23 + 2);
        v27 = var40 + 3 * v24;
        memmove(&var40[1] + 24 * v24 + 8, v27, 24 * (v22 - v24));
        *v27 = *&STACK[0x11D0];
        v27[2] = STACK[0x11E0];
      }

      ++v22;
    }

    while (v22 != v21);
  }

  bzero(*v8, ((4 * *(v8 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v28 = v20;
  if (v19 < v20)
  {
    v28 = v19;
  }

  if (v28 >= 1)
  {
    v29 = v28;
    v30 = *v6;
    v31 = var40 | 0xC;
    v37 = vdupq_n_s64(0x41B1DE784A000000uLL);
    do
    {
      *(*v8 + 4 * (*(v31 + 8) >> 5)) |= 1 << *(v31 + 8);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v9 + 744), v31, 0, 0);
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 20) = 0xFFFFFFFF00000000;
      *(v30 + 28) = -1;
      *(v30 + 49) = 0;
      *(v30 + 32) = 0;
      *(v30 + 36) = -1;
      *(v30 + 40) = 575;
      *(v30 + 44) = 2;
      *(v30 + 16) = **(v9 + 744);
      if (v31 != v30 + 32)
      {
        *(v30 + 32) = *v31;
        *(v30 + 36) = *(v31 + 4);
        *(v30 + 40) = *(v31 + 8);
      }

      v33.f32[0] = -*(MeMeas + 26);
      v33.i32[1] = *(MeMeas + 27);
      *v30 = vmulq_f64(vcvtq_f64_f32(v33), v37);
      *(v30 + 48) = 1;
      v30 = *v6 + 56;
      *v6 = v30;
      v31 += 24;
      --v29;
    }

    while (v29);
  }
}

__n128 BlueFin::GlPeDnavMgr::Isolate(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, BlueFin::GlSetBase *a6, int a7, void *a8)
{
  memset(v44, 0, sizeof(v44));
  v45 = 6367427;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = v50;
  v49 = 19;
  memset(v50, 0, sizeof(v50));
  v51 = v53;
  v52 = 19;
  memset(v53, 0, sizeof(v53));
  v54 = vdupq_n_s64(0x41584A30AEF9DB23uLL);
  v55 = 0;
  v56 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 6367427;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v35 = v37;
  v36 = 19;
  memset(v37, 0, sizeof(v37));
  v38 = v40;
  v39 = 19;
  memset(v40, 0, sizeof(v40));
  v23 = v54;
  v41 = v54;
  v42 = 0;
  v43 = 0;
  v26 = *(a5 + 8);
  memcpy(v30, *a5, 4 * v26);
  v28 = 0;
  v27 = 0;
  v29 = v30[0];
  BlueFin::GlSetIterator::operator++(&v26);
  if (v27 != v26)
  {
    while (1)
    {
      BlueFin::GlSetBase::GlSetBase(v24, v25, 0x13u, a5);
      if (v28 >= 0x23Fu)
      {
        break;
      }

      BlueFin::GlSetBase::Remove(v24, v28);
      BlueFin::GlPeDnav::Run(a2, a3, a4, v24, a6, a7, a8);
      if ((*(a2 + 268) & 0x20) != 0)
      {
        if (*(a2 + 248) < *v54.i64)
        {
          BlueFin::stDnavState::operator=(v44, a2);
        }

        if (*(a2 + 256) < *&v41.i64[1])
        {
          BlueFin::stDnavState::operator=(v31, a2);
        }
      }

      BlueFin::GlSetIterator::operator++(&v26);
      if (v27 == v26)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
  }

LABEL_9:
  v26 = *(a6 + 8);
  memcpy(v30, *a6, 4 * v26);
  v28 = 0;
  v27 = 0;
  v29 = v30[0];
  BlueFin::GlSetIterator::operator++(&v26);
  while (v27 != v26)
  {
    BlueFin::GlSetBase::GlSetBase(v24, v25, 0x13u, a6);
    if (v28 >= 0x23Fu)
    {
      goto LABEL_31;
    }

    BlueFin::GlSetBase::Remove(v24, v28);
    BlueFin::GlPeDnav::Run(a2, a3, a4, a5, v24, a7, a8);
    if ((*(a2 + 268) & 0x20) != 0)
    {
      if (*(a2 + 248) < *v54.i64)
      {
        BlueFin::stDnavState::operator=(v44, a2);
      }

      if (*(a2 + 256) < *&v41.i64[1])
      {
        BlueFin::stDnavState::operator=(v31, a2);
      }
    }

    BlueFin::GlSetIterator::operator++(&v26);
  }

  v16 = &v48;
  if ((v56 & 0x20) != 0 && (v43 & 0x20) == 0)
  {
    v17 = &v51;
    v18 = v44;
LABEL_28:
    *a1 = *v18;
    *(a1 + 16) = v18[2];
    v19 = *(v18 + 7);
    *(a1 + 24) = *(v18 + 6);
    *(a1 + 28) = v19;
    *(a1 + 32) = v18[4];
    *(a1 + 40) = *(v18 + 5);
    v20 = v18[8];
    *(a1 + 56) = v18[7];
    *(a1 + 64) = v20;
    BlueFin::GlSetBase::GlSetBase((a1 + 72), (a1 + 84), 0x13u, v16);
    BlueFin::GlSetBase::GlSetBase((a1 + 160), (a1 + 172), 0x13u, v17);
    result.n128_u64[0] = v18[31];
    v22 = v18[32];
    *(a1 + 248) = result.n128_u64[0];
    *(a1 + 256) = v22;
    *(a1 + 264) = *(v18 + 264);
    *(a1 + 268) = *(v18 + 67);
    *(a1 + 272) = *(v18 + 68);
    return result;
  }

  v17 = &v38;
  if ((v56 & 0x20) == 0 || (v43 & 0x20) == 0)
  {
    if ((v56 & 0x20) != 0 || (v43 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v18 = v31;
    v16 = &v35;
    goto LABEL_28;
  }

  if (BlueFin::GlSetBase::operator==(&v35, &v48) && BlueFin::GlSetBase::operator==(&v35, &v48))
  {
    goto LABEL_27;
  }

LABEL_29:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 6367427;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 72) = a1 + 84;
  *(a1 + 80) = 19;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 160) = a1 + 172;
  *(a1 + 168) = 19;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 232) = 0u;
  result = v23;
  *(a1 + 248) = v23;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  return result;
}

double BlueFin::GlPeExtLoc::GetDistanceToExtLoc(uint64_t a1, double *a2)
{
  v4 = *(a1 + 136);
  if (!v4 || *(v4 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v4 + 3040), *(v4 + 3040))) >= 160000.0)
  {
    return -1.0;
  }

  v11 = v2;
  v12 = v3;
  v5 = *(v4 + 3032);
  v7 = *(v4 + 3016);
  v8 = v5;
  BlueFin::lla2ned(a2, &v7, 0, &v9);
  return sqrt(v10 * v10 + v9 * v9);
}

unsigned __int8 *BlueFin::GlPeRepeatedIsol::Submit(BlueFin::GlPeRepeatedIsol *this, const BlueFin::GlSignalIdSet *a2, unsigned __int8 a3)
{
  v17 = a3;
  memcpy(v21, a2, 4 * a3);
  v19 = 0;
  v18 = 0;
  v20 = v21[0];
  result = BlueFin::GlSetIterator::operator++(&v17);
  if (v18 != v17)
  {
    v5 = this + 8;
    do
    {
      v6 = v19;
      if (v19 > 0x23Eu)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v7 = 0;
      v8 = -1;
      v9 = -1;
      do
      {
        v10 = *(this + v7 + 1);
        if (v10 == 576 || ((v11 = *(this + 6), v12 = *(this + v7 + 3), v10 != v19) ? (v13 = v11 - v12 >= 0x4E21) : (v13 = 1), v13))
        {
          if (v10 == v19)
          {
            v16 = v5[v7] + 1;
          }

          else
          {
            v16 = 1;
          }

          v5[v7] = v16;
          goto LABEL_25;
        }

        if (v8 == -1 || v12 < v8)
        {
          v9 = v7;
          v8 = *(this + v7 + 3);
        }

        ++v7;
      }

      while (v7 != 3);
      if (v8 >= v11)
      {
        goto LABEL_26;
      }

      v7 = v9;
      v5[v9] = 1;
LABEL_25:
      *(this + v7 + 1) = v6;
      *(this + v7 + 3) = *(this + 6);
LABEL_26:
      result = BlueFin::GlSetIterator::operator++(&v17);
    }

    while (v18 != v17);
  }

  return result;
}

uint64_t BlueFin::GlPeFirstFix::stFirstFixReturn::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  BlueFin::GlSetBase::operator=(a1 + 24, a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 52);
  v5 = *(a2 + 68);
  v6 = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 84) = v6;
  *(a1 + 68) = v5;
  *(a1 + 52) = v4;
  BlueFin::GlSetBase::operator=(a1 + 200, a2 + 200);
  *(a1 + 212) = *(a2 + 212);
  v7 = *(a2 + 228);
  v8 = *(a2 + 244);
  v9 = *(a2 + 260);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 260) = v9;
  *(a1 + 244) = v8;
  *(a1 + 228) = v7;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 492) = *(a2 + 492);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 500) = *(a2 + 500);
  *(a1 + 501) = *(a2 + 501);
  *(a1 + 502) = *(a2 + 502);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 508) = *(a2 + 508);
  return a1;
}

__n128 BlueFin::GlPeCand::Submit(uint64_t a1, uint64_t a2, char a3)
{
  result.n128_u32[0] = *(a2 + 128);
  if (result.n128_f32[0] < *(a1 + 128))
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    BlueFin::GlSetBase::operator=(a1 + 24, a2 + 24);
    *(a1 + 36) = *(a2 + 36);
    v7 = *(a2 + 52);
    v8 = *(a2 + 68);
    v9 = *(a2 + 84);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 84) = v9;
    *(a1 + 68) = v8;
    *(a1 + 52) = v7;
    result = *(a2 + 112);
    v10 = *(a2 + 128);
    v11 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v10;
    *(a1 + 144) = v11;
    *(a1 + 112) = result;
    *(a1 + 161) = a3;
  }

  return result;
}

float BlueFin::GlPeIsolate::RecurseIsolation(uint64_t a1, uint64_t a2, const void **a3, __int128 *a4, int a5)
{
  if (a5)
  {
    v8 = a4[2];
    v9 = a4[4];
    v19[3] = a4[3];
    v19[4] = v9;
    v20 = *(a4 + 20);
    v10 = *a4;
    v11 = a4[1];
    v19[0] = *a4;
    v19[1] = v11;
    v19[2] = v8;
    if (BYTE1(v19[0]) != LOBYTE(v19[0]))
    {
      v12 = a5 - 1;
      do
      {
        BlueFin::GlSetBase::GlSetBase(&v16, &v17, 0x13u, a3);
        if (WORD1(v19[0]) >= 0x23Fu)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        *&v16[(WORD1(v19[0]) >> 3) & 0x1FFC] |= 1 << SBYTE2(v19[0]);
        BlueFin::GlSetIterator::operator++(v19);
        *&v10 = BlueFin::GlPeIsolate::RecurseIsolation(a1, a2, &v16, v19, v12);
      }

      while (BYTE1(v19[0]) != LOBYTE(v19[0]));
    }
  }

  else
  {
    (*(*a1 + 24))(&v16, a1, a2, a3, a4);
    if (v18 > *(a1 + 232))
    {
      LODWORD(v10) = v16;
      if (*&v16 >= *(a1 + 204))
      {
        if (*&v16 >= *(a1 + 208))
        {
          return *&v10;
        }

        v13 = 1;
      }

      else
      {
        BlueFin::GlSetBase::operator=(a1 + 112, a1 + 24);
        v13 = 0;
        *(a1 + 201) = *(a1 + 200);
        *(a1 + 140) = *(a1 + 52);
        *(a1 + 156) = *(a1 + 68);
        *(a1 + 172) = *(a1 + 84);
        *(a1 + 184) = *(a1 + 96);
        *(a1 + 124) = *(a1 + 36);
        *(a1 + 208) = *(a1 + 204);
        *(a1 + 216) = *(a1 + 212);
      }

      v14 = a1 + 24 + 88 * v13;
      bzero(*v14, ((4 * *(v14 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      BlueFin::GlSetBase::Add(v14, a3);
      *&v10 = *&v16;
      *(a1 + 204 + 4 * v13) = v10;
      *(a1 + v13 + 200) = v18;
      LODWORD(v10) = v17;
      *(a1 + 4 * v13 + 212) = v17;
    }
  }

  return *&v10;
}

void BlueFin::GlPeBangers::CalcMetric(const BlueFin::GlPeSubsets *a1@<X1>, const BlueFin::GlSignalIdSet *a2@<X2>, uint64_t a3@<X8>)
{
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v29, a1);
  if (*&v30 >= *&v29)
  {
    v5 = 0;
    v24 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
    v9 = 0.0;
    v14 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v26 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      v15 = BlueFin::GlPeSubsetIterator::operator->(&v29);
      if (!BlueFin::GlSetBase::HasAny((v15 + 24), a2) && *(BlueFin::GlPeSubsetIterator::operator->(&v29) + 112) < 15.0)
      {
        ++v5;
        v26 = v26 + *(BlueFin::GlPeSubsetIterator::operator->(&v29) + 112);
        v7 = v7 + *(BlueFin::GlPeSubsetIterator::operator->(&v29) + 16);
        v16 = BlueFin::GlPeSubsetIterator::operator->(&v29);
        v14 = *v16;
        if (v6)
        {
          if (v8 < v14)
          {
            v14 = v8;
          }

          v17 = BlueFin::GlPeSubsetIterator::operator->(&v29);
          if (v9 >= *(v17 + 8))
          {
            v9 = *(v17 + 8);
          }

          v18 = BlueFin::GlPeSubsetIterator::operator->(&v29);
          if (v10 >= *(v18 + 16))
          {
            v10 = *(v18 + 16);
          }

          v19 = BlueFin::GlPeSubsetIterator::operator->(&v29);
          if (*v19 >= v11)
          {
            v11 = *v19;
          }

          v20 = BlueFin::GlPeSubsetIterator::operator->(&v29);
          if (*(v20 + 8) >= v12)
          {
            v12 = *(v20 + 8);
          }

          v21 = BlueFin::GlPeSubsetIterator::operator->(&v29);
          if (*(v21 + 16) >= v13)
          {
            v13 = *(v21 + 16);
          }
        }

        else
        {
          v9 = v16[1];
          v10 = v16[2];
          v22 = BlueFin::GlPeSubsetIterator::operator->(&v29);
          v11 = *v22;
          v12 = v22[1];
          v13 = v22[2];
        }

        v6 = 1;
        v8 = v14;
      }

      *&v30 += 168;
    }

    while (*&v30 < *&v29);
    v23 = v7;
    v24 = v26;
  }

  v28[0] = v14;
  v28[1] = v9;
  v28[2] = v10;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 13) = 0;
  if (v5)
  {
    BlueFin::lla2ned(v28, v27, 0, &v29);
    *a3 = sqrt(v30 * v30 + v29 * v29);
    *(a3 + 20) = v5;
    *(a3 + 8) = v24 / v5;
    *(a3 + 12) = v23 / v5;
    v25 = v13 - v10;
    *(a3 + 16) = v25;
  }
}

uint64_t BlueFin::GlPeFirstFix::GetHighestEl(uint64_t a1, BlueFin::GlSetBase *this, uint64_t a3, unsigned int a4)
{
  if (BlueFin::GlSetBase::Cnt(this) <= a4)
  {
    v17 = "rotSigs.Cnt() > usCount";
    DeviceFaultNotify("glpe_firstfix.cpp", 665, "GetHighestEl", "rotSigs.Cnt() > usCount");
    v18 = "glpe_firstfix.cpp";
    v19 = 665;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v18, v19, v17);
  }

  result = BlueFin::GlSetBase::GlSetBase(&__src, v27, 0x13u, this);
  *(a1 + 12) = 0u;
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 72) = 0u;
  if (!a4)
  {
    return result;
  }

  v9 = 0;
  do
  {
    v20 = v26;
    memcpy(v24, __src, 4 * v26);
    v22 = 0;
    v21 = 0;
    v23 = v24[0];
    BlueFin::GlSetIterator::operator++(&v20);
    if (v21 == v20)
    {
LABEL_18:
      v17 = "otHighestElSignalId != GlSignalId()";
      DeviceFaultNotify("glpe_firstfix.cpp", 686, "GetHighestEl", "otHighestElSignalId != GlSignalId()");
      v18 = "glpe_firstfix.cpp";
      v19 = 686;
      goto LABEL_17;
    }

    v10 = 0;
    v11 = -1;
    v12 = 575;
    v13 = -91.0;
    do
    {
      if (v22 >= 0x23FuLL)
      {
        v17 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v18 = "glsignalid.h";
        v19 = 578;
        goto LABEL_17;
      }

      v14 = *(a3 + v22);
      if (v14 == 255)
      {
        v17 = "ucArrIdx != stSvAzEl::INVALID_INDEX";
        DeviceFaultNotify("glpe_firstfix.cpp", 678, "GetHighestEl", "ucArrIdx != stSvAzEl::INVALID_INDEX");
        v18 = "glpe_firstfix.cpp";
        v19 = 678;
        goto LABEL_17;
      }

      v15 = *(a3 + 1088 + 4 * v14);
      if (v15 > v13)
      {
        v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v22;
        v11 = v16[1];
        v10 = *v16;
        v12 = v22;
        v13 = v15;
      }

      BlueFin::GlSetIterator::operator++(&v20);
    }

    while (v21 != v20);
    if (!v10 && v11 == -1)
    {
      goto LABEL_18;
    }

    *(*a1 + 4 * (v12 >> 5)) |= 1 << v12;
    result = BlueFin::GlSetBase::Remove(&__src, v12);
    ++v9;
  }

  while (v9 < a4);
  return result;
}

uint64_t BlueFin::GlPeFirstFix::IsMeasUsable(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 12);
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 & 0x8000) != 0 || *(a2 + 108) * 1000000000.0 > 999.0;
  }

  if (*(a1 + 272) == 1)
  {
    v5 = 0;
    v6 = a1 + 284;
    while (*(v6 + 2 * v5 - 10) != *(a2 + 8) || (*(a1 + 296) - *(v6 + 4 * v5)) >> 5 > 0x270)
    {
      if (++v5 == 3)
      {
        goto LABEL_11;
      }
    }

    v7 = *(v6 + v5 - 4) == 0;
  }

  else
  {
LABEL_11:
    v7 = 1;
  }

  v8 = v4 & ~BlueFin::GlPeFirstFix::m_bReqTimeOutReached;
  v9 = 2;
  if (BlueFin::GlPeFirstFix::m_bReqTimeOutReached)
  {
    v9 = 0x4000;
  }

  v10 = (v9 & v3) == 0;
  v11 = (*(a2 + 96) * 299792458.0 < 600.0) & ~v8;
  if (v10)
  {
    v11 = 0;
  }

  return v11 & v7;
}

unint64_t BlueFin::GlPeFirstFix::SelectBase(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, unsigned __int8 a5, unsigned int a6, int a7)
{
  v66 = v68;
  v12 = 19;
  v67 = 19;
  memset(v68, 0, 76);
  v60 = &v62;
  v61 = 19;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v57 = v59;
  v58 = 19;
  memset(v59, 0, sizeof(v59));
  v54 = v56;
  v55 = 19;
  memset(v56, 0, sizeof(v56));
  *(a1 + 12) = 0u;
  v13 = (a1 + 12);
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  v42 = a5;
  *(a1 + 72) = 0u;
  memcpy(&v46, __src, 4 * a5);
  v44 = 0;
  v43 = 0;
  v45 = v46;
  BlueFin::GlSetIterator::operator++(&v42);
  if (v43 != v42)
  {
    v15 = a2 + 284;
    while (1)
    {
      if (v44 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v44;
      v17 = *v16;
      LODWORD(v16) = v16[1];
      v51[0] = v17;
      v52 = v16;
      v53 = v44;
      v18 = *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(a2 + 8), v51, 0, 0) + 6);
      if (*(a2 + 272) == 1)
      {
        v19 = 0;
        v20 = v53;
        while (*(v15 + 2 * v19 - 10) != v53 || (*(a2 + 296) - *(v15 + 4 * v19)) >> 5 >= 0x271)
        {
          if (++v19 == 3)
          {
            goto LABEL_10;
          }
        }

        if (*(v15 + v19 - 4))
        {
          break;
        }
      }

LABEL_10:
      if (!v18)
      {
        v21 = &v66;
        goto LABEL_18;
      }

      if (v18 <= 2)
      {
        *(v60 + (v53 >> 5)) |= 1 << v53;
      }

      if (v18 == 3)
      {
        v21 = &v57;
LABEL_18:
        v20 = v53;
LABEL_19:
        *(*v21 + 4 * (v20 >> 5)) |= 1 << v20;
        goto LABEL_20;
      }

      if (v18 == 4)
      {
        v21 = &v54;
        goto LABEL_18;
      }

LABEL_20:
      BlueFin::GlSetIterator::operator++(&v42);
      if (v43 == v42)
      {
        v14 = v60;
        v12 = v61;
        goto LABEL_24;
      }
    }

    v21 = &v54;
    goto LABEL_19;
  }

  v14 = &v62;
LABEL_24:
  v22 = 0;
  v23 = (v14 + 4 * v12 - 4);
  do
  {
    if (*v23)
    {
      v24 = *v23 - (((*v23 >> 1) & 0x5B6DB6DB) + ((*v23 >> 2) & 0x9249249));
      v22 = ((v24 + (v24 >> 3)) & 0xC71C71C7) + v22 - 63 * (((v24 + (v24 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v23 = (v23 - 4);
  }

  while (v23 >= v14);
  if (a6 >= v22)
  {
    BlueFin::GlSetBase::operator=(a1, &v60);
    v28 = *v65;
    v13[2] = v64;
    v13[3] = v28;
    *(v13 + 60) = *&v65[12];
    v27 = v62;
    v25 = v63;
  }

  else
  {
    BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v60, a3, a6);
    BlueFin::GlSetBase::operator=(a1, &v42);
    v25 = v48;
    v26 = v50[0];
    v13[2] = v49;
    v13[3] = v26;
    *(v13 + 60) = *(v50 + 12);
    v27 = v47;
  }

  *v13 = v27;
  v13[1] = v25;
  result = BlueFin::GlSetBase::Cnt(a1);
  if (result < a6)
  {
    v30 = 0;
    v31 = &v57[4 * v58 - 4];
    do
    {
      if (*v31)
      {
        v32 = *v31 - (((*v31 >> 1) & 0x5B6DB6DB) + ((*v31 >> 2) & 0x9249249));
        v30 = ((v32 + (v32 >> 3)) & 0xC71C71C7) + v30 - 63 * (((v32 + (v32 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v31;
    }

    while (v31 >= v57);
    if (result + v30 <= a6)
    {
      v33 = &v57;
    }

    else
    {
      BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v57, a3, (a6 - result));
      v33 = &v42;
    }

    BlueFin::GlSetBase::Add(a1, v33);
    result = BlueFin::GlSetBase::Cnt(a1);
  }

  if (result < a6)
  {
    v34 = 0;
    v35 = &v66[4 * v67 - 4];
    do
    {
      if (*v35)
      {
        v36 = *v35 - (((*v35 >> 1) & 0x5B6DB6DB) + ((*v35 >> 2) & 0x9249249));
        v34 = ((v36 + (v36 >> 3)) & 0xC71C71C7) + v34 - 63 * (((v36 + (v36 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v35;
    }

    while (v35 >= v66);
    if (result + v34 <= a6)
    {
      v37 = &v66;
    }

    else
    {
      BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v66, a3, (a6 - result));
      v37 = &v42;
    }

    BlueFin::GlSetBase::Add(a1, v37);
    result = BlueFin::GlSetBase::Cnt(a1);
  }

  if (result < a6 && a7)
  {
    v38 = 0;
    v39 = &v54[4 * v55 - 4];
    do
    {
      if (*v39)
      {
        v40 = *v39 - (((*v39 >> 1) & 0x5B6DB6DB) + ((*v39 >> 2) & 0x9249249));
        v38 = ((v40 + (v40 >> 3)) & 0xC71C71C7) + v38 - 63 * (((v40 + (v40 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v39;
    }

    while (v39 >= v54);
    if (result + v38 <= a6)
    {
      v41 = &v54;
    }

    else
    {
      BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v54, a3, (a6 - result));
      v41 = &v42;
    }

    result = BlueFin::GlSetBase::Add(a1, v41);
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

uint64_t BlueFin::GlPeFirstFix::ComputeNumDof(uint64_t a1, BlueFin::GlPeSubsets *a2, uint64_t a3, BlueFin::GlSignalIdSet *a4)
{
  v8 = 0;
  result = BlueFin::GlPeSubsets::GetIntegrityGeometry(a2, a4, &v8);
  if (v8 == 2)
  {
    return BlueFin::GlPeNavUtil::GetIntegrityGeometry(a1, a4, &v8, 15.0, a3, *(a1 + 244));
  }

  return result;
}

uint64_t BlueFin::GlPeFirstFix::ValidateExtLocWithLs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  v23 = v3;
  v24 = v4;
  v8 = *(a1 + 80);
  v19 = *(a1 + 64);
  v20 = v8;
  BlueFin::lla2ned(a2, &v19, 0, &v21);
  v9 = sqrt(v22 * v22 + v21 * v21);
  v10 = *(a2 + 128);
  v11 = v10;
  v12 = 400.0;
  if (v10 >= 400.0)
  {
    v12 = v10;
  }

  if (v9 <= v12)
  {
    v15 = 75.0;
    if (*(a1 + 244))
    {
      v15 = 50.0;
    }

    v16 = v9 <= 50.0;
    if (v15 <= v11)
    {
      v16 = 1;
    }

    v17 = *(a3 + 32);
    v18 = v9 / sqrt(fmax(vaddvq_f64(vmulq_f64(v17, v17)) * 0.5 + (v10 * v10), 2.22044605e-16));
    if (v17.f64[0] > v11)
    {
      v11 = *(a3 + 32);
    }

    if (v11 < 200.0)
    {
      v11 = 200.0;
    }

    if (v12 >= v11)
    {
      v12 = v11;
    }

    if (v18 < 1.5)
    {
      v16 = 1;
    }

    if (v9 < v12 && v16)
    {
      return 1;
    }

    v13 = (a3 + 72);
  }

  else
  {
    *(a3 + 72) = 2;
    v13 = (*(a1 + 40) + 48);
  }

  result = 0;
  *v13 = 0;
  return result;
}

void BlueFin::GlPeFirstFix::ClassicFix(BlueFin::GlPeFirstFix *this, const BlueFin::GlSignalIdSet *a2, BlueFin::GlPeSubsets *a3, BlueFin::GlPeSubsets *a4, unsigned int a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 36) = 0u;
  v10 = (this + 36);
  *(this + 3) = this + 36;
  v11 = this + 24;
  *(this + 32) = 19;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  v12 = vdupq_n_s32(0x43C80000u);
  *(this + 7) = 0u;
  *(this + 8) = v12;
  *(this + 9) = v12;
  *(this + 160) = 0;
  v13 = BlueFin::GlPeSubsets::Find(a4, a3);
  if (v13)
  {
    v14 = v13;
    v15 = BlueFin::GlPeFirstFix::ComputeNumDof(a2, a4, v13, a3);
    if ((-12483 * ((*(a4 + 2) - *a4) >> 3)) == 1 || v15 == 0)
    {
      v54[0] = 0;
      v54[1] = 0;
      v55 = 0;
      v56 = vdup_n_s32(0x44FA0000u);
      v57 = -1;
      if (BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(a2 + 4), v54, v14, 0x3E8u))
      {
        v17 = 0;
        v18 = *(a2 + 5);
        *(v18 + 48) = 1;
        *(v18 + 8) = *v56.i32;
        *v18 = v55;
        *(v18 + 44) = 3;
        *(a2 + 66) |= 4u;
        *a4 = a4 + 24;
        *(a4 + 1) = a4 + 24;
        *(a4 + 2) = a4 + 29592;
        v19 = vdupq_n_s32(0x43C80000u);
        do
        {
          *(a4 + v17 + 60) = 0uLL;
          v20 = a4 + v17 + 60;
          *(v20 - 28) = 0;
          *(v20 - 36) = 0;
          *(v20 - 20) = 0;
          *(v20 - 12) = v20;
          *(v20 - 4) = 19;
          *(v20 + 1) = 0uLL;
          *(v20 + 2) = 0uLL;
          *(v20 + 3) = 0uLL;
          *(v20 + 4) = 0uLL;
          *(v20 + 76) = 0uLL;
          *(v20 + 92) = v19;
          *(v20 + 108) = v19;
          v17 += 168;
          v20[124] = 0;
        }

        while (v17 != 29568);
        v21 = *(a2 + 5);
        v22 = a2 + *(*a2 - 24);
        v23 = *(v22 + 11);
        v24 = *(a2 + 60);
        v25 = *(a2 + 66);
        v49 = a4;
        v50 = *(a2 + 8);
        *v52 = 0uLL;
        v51 = v21;
        *&v52[16] = v25;
        *&v52[24] = 0;
        *&v52[32] = *(v22 + 8);
        *&v52[48] = *(v22 + 3);
        *&v52[56] = v23;
        *&v52[64] = v24;
        *&v52[72] = &v52[84];
        v52[80] = 8;
        memset(&v52[84], 0, 32);
        BlueFin::GlPeLsqSubsets::RunLsqSubsets(&v49, a3, 3, *(a2 + 32), 0);
        if ((-12483 * ((*(a4 + 2) - *a4) >> 3)) >= 177)
        {
          DeviceFaultNotify("glpe_firstfix.cpp", 1257, "ClassicFix", "rotSubsets.Count() <= GLPE_LSQ_MAX_NUM_SUBSETS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_firstfix.cpp", 1257, "rotSubsets.Count() <= GLPE_LSQ_MAX_NUM_SUBSETS");
        }

        v26 = BlueFin::GlPeSubsets::Find(a4, a3);
        if (v26)
        {
          v27 = a2 + *(*a2 - 24);
          *(v27 + 8) = *v26;
          *(v27 + 3) = *(v26 + 16);
          if (*(a2 + 264))
          {
            *(a2 + 60) = (*(v26 + 120) * 1000.0);
          }
        }

        else
        {
          BlueFin::GlSignalIdSet::Print(a3, 0x6Fu);
        }
      }

      if ((*(a2 + 265) & 4) != 0)
      {
        v28 = BlueFin::GlPeSubsets::Find(a4, a3);
        if (v28)
        {
          v29 = v28;
          *this = *v28;
          *(this + 2) = *(v28 + 16);
          BlueFin::GlSetBase::operator=(v11, v28 + 24);
          *v10 = *(v29 + 36);
          v30 = *(v29 + 52);
          v31 = *(v29 + 68);
          v32 = *(v29 + 84);
          *(v10 + 60) = *(v29 + 96);
          v10[2] = v31;
          v10[3] = v32;
          v10[1] = v30;
          v33 = *(v29 + 112);
          v34 = *(v29 + 128);
          v35 = *(v29 + 144);
          *(this + 160) = *(v29 + 160);
          *(this + 8) = v34;
          *(this + 9) = v35;
          *(this + 7) = v33;
        }
      }
    }
  }

  v36 = BlueFin::GlPeSubsets::Find(a4, a3);
  if (v36)
  {
    v37 = v36;
    *(a2 + 75) = *(v36 + 120);
    *(a2 + 76) = *(v36 + 148);
    v38 = (-12483 * ((*(a4 + 2) - *a4) >> 3));
    if (v38 > 1 || v38 == 1 && BlueFin::GlSetBase::Cnt(a3) >= a5)
    {
      *this = *v37;
      *(this + 2) = *(v37 + 16);
      BlueFin::GlSetBase::operator=(v11, v37 + 24);
      *v10 = *(v37 + 36);
      v39 = *(v37 + 52);
      v40 = *(v37 + 68);
      v41 = *(v37 + 84);
      *(v10 + 60) = *(v37 + 96);
      v10[2] = v40;
      v10[3] = v41;
      v10[1] = v39;
      v42 = *(v37 + 112);
      v43 = *(v37 + 128);
      v44 = *(v37 + 144);
      *(this + 160) = *(v37 + 160);
      *(this + 8) = v43;
      *(this + 9) = v44;
      *(this + 7) = v42;
      if ((-12483 * ((*(a4 + 2) - *a4) >> 3)) < 2)
      {
        v48 = *(this + 32);
        if ((*(v37 + 152) * *(v37 + 112)) >= v48)
        {
          v48 = *(v37 + 152) * *(v37 + 112);
        }

        *(this + 32) = v48;
      }

      else
      {
        v49 = 0;
        v50 = 0uLL;
        v51 = &v52[4];
        v52[0] = 19;
        memset(&v52[4], 0, 92);
        *&v52[96] = vdupq_n_s32(0x43C80000u);
        *&v52[112] = *&v52[96];
        v53 = 0;
        BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 1, &v49);
        v45 = *(this + 32);
        v46 = *&v52[116];
        if ((*&v52[96] * 0.5) >= v45)
        {
          v45 = *&v52[96] * 0.5;
        }

        *(this + 32) = v45;
        v47 = *(a2 + 76);
        if (v46 >= v47)
        {
          v47 = v46;
        }

        *(a2 + 76) = v47;
      }
    }
  }
}

uint64_t BlueFin::GlPeFirstFix::RunPreIsolationFixRanges(uint64_t a1, uint64_t a2, BlueFin::GlSetBase *this, BlueFin::GlPeSubsets *a4, uint64_t a5, uint64_t a6)
{
  v33 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 36) = 0u;
  v9 = (a1 + 36);
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 36;
  v10 = (a1 + 24);
  *(a1 + 32) = 19;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  v11 = vdupq_n_s32(0x43C80000u);
  *(a1 + 100) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = v11;
  *(a1 + 144) = v11;
  *(a1 + 160) = 0;
  v12 = *(a2 + 176);
  if ((v12 & 1) == 0)
  {
    v33 = *(a2 + 256);
  }

  result = BlueFin::GlSetBase::Cnt(this);
  if ((result & 0xF0) != 0)
  {
    v14 = 16;
  }

  else
  {
    v14 = result;
  }

  v15 = v12 ^ 1;
  LOBYTE(v16) = 1;
  v17 = v9;
  while (1)
  {
    v18 = *(a1 + 32);
    if (v18 >= 2)
    {
      break;
    }

LABEL_11:
    if ((v16 & (v14 > 9u)) != 1)
    {
      return result;
    }

    BlueFin::GlPeFirstFix::SelectBase(v35, a2, a5, *this, *(this + 8), v14, 1);
    if (v15)
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    v16 = BlueFin::GlPeLsqSubsets::RunLsqSubset(a6, v35, v22, 1, v33, 0);
    result = BlueFin::GlPeSubsets::Find(a4, v35);
    v23 = result;
    if (result)
    {
      v24 = v16;
    }

    else
    {
      v24 = 0;
    }

    if ((v15 & 1 & v24) != 1)
    {
      goto LABEL_21;
    }

    *(a6 + 64) = *result;
    *(a6 + 80) = *(result + 16);
    if (*(a2 + 244) == 1)
    {
      v15 = 0;
      *(a6 + 96) = (*(result + 120) * 1000.0);
LABEL_21:
      if (v24)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    v15 = 0;
    if (v24)
    {
LABEL_22:
      if (*(result + 128) < 25.0)
      {
        *a1 = *result;
        *(a1 + 16) = *(result + 16);
        result = BlueFin::GlSetBase::operator=(v10, result + 24);
        *v9 = *(v23 + 36);
        v25 = *(v23 + 52);
        v26 = *(v23 + 68);
        v27 = *(v23 + 84);
        *(v9 + 60) = *(v23 + 96);
        v9[2] = v26;
        v9[3] = v27;
        v9[1] = v25;
        v28 = *(v23 + 112);
        v29 = *(v23 + 128);
        v30 = *(v23 + 144);
        *(a1 + 160) = *(v23 + 160);
        *(a1 + 128) = v29;
        *(a1 + 144) = v30;
        *(a1 + 112) = v28;
      }
    }

LABEL_25:
    --v14;
    v17 = *v10;
    if (**v10)
    {
      return result;
    }
  }

  v19 = v18 - 1;
  v20 = v17 + 1;
  while (1)
  {
    if (*v20++)
    {
      return result;
    }

    if (!--v19)
    {
      goto LABEL_11;
    }
  }
}

void BlueFin::GlPeFirstFix::IsolationFix(BlueFin::GlPeFirstFix *this, const BlueFin::GlSignalIdSet *a2, BlueFin::GlPeSubsets *a3, BlueFin::GlPeSubsets *a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 36) = 0u;
  v8 = (this + 36);
  *(this + 3) = this + 36;
  v9 = (this + 24);
  *(this + 32) = 19;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  v10 = vdupq_n_s32(0x43C80000u);
  *(this + 7) = 0u;
  *(this + 8) = v10;
  v114 = v10;
  *(this + 9) = v10;
  *(this + 160) = 0;
  v11 = BlueFin::GlSetBase::Cnt(a3);
  v112 = a3;
  v12 = BlueFin::GlPeSubsets::Find(a4, a3);
  v13 = *(a2 + 244);
  if (((v11 > 8) & v13) == 0)
  {
    v14 = 0.0;
    if ((v11 < 8) | v13 & 1)
    {
      goto LABEL_3;
    }
  }

  v121 = 0uLL;
  v122 = 0;
  v123 = &v125;
  v124 = 19;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  memset(v128, 0, sizeof(v128));
  v129 = v114;
  v130 = v114;
  v131 = 0;
  BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 2, &v121);
  v24 = a2;
  if (v12)
  {
    *(a2 + 75) = *(v12 + 120);
    v25 = *v129.i32;
    *(a2 + 76) = v130.i32[1];
    if (v25 <= 200.0)
    {
      *v141 = &v141[12];
      v141[8] = 19;
      memset(&v141[12], 0, 76);
      BlueFin::GlPeSubsets::ComputeWeightedMeanPos(v157, a4, v141);
      v121 = *v157;
      v122 = *&v157[16];
      BlueFin::GlSetBase::operator=(&v123, &v157[24]);
      v127 = *&v157[68];
      *v128 = *&v157[84];
      *&v128[12] = *&v157[96];
      v125 = *&v157[36];
      v126 = *&v157[52];
      *&v128[28] = *v158;
      v129 = *&v158[16];
      v130 = *&v158[32];
      v131 = v159;
      *this = *v12;
      *(this + 2) = *(v12 + 16);
      BlueFin::GlSetBase::operator=(v9, v12 + 24);
      *v8 = *(v12 + 36);
      v80 = *(v12 + 52);
      v81 = *(v12 + 68);
      v82 = *(v12 + 84);
      *(v8 + 60) = *(v12 + 96);
      v8[2] = v81;
      v8[3] = v82;
      v8[1] = v80;
      v83 = *(v12 + 112);
      v84 = *(v12 + 128);
      v85 = *(v12 + 144);
      *(this + 160) = *(v12 + 160);
      *(this + 8) = v84;
      *(this + 9) = v85;
      *(this + 7) = v83;
      *this = v121;
      *&v84 = *&v128[36];
      *(this + 2) = v122;
      *(this + 15) = v84;
      v86 = BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 1);
      v87 = 0.5;
      if (*(a2 + 244))
      {
        v87 = 0.625;
      }

      v88 = v87 * v86;
      if (v88 < *(this + 32))
      {
        v88 = *(this + 32);
      }

      *(this + 32) = v88;
      v14 = 0.0;
      goto LABEL_89;
    }
  }

  v109 = v12;
  v110 = *(a2 + 244);
  memset(v117, 0, 24);
  *&v117[24] = &v117[36];
  v117[32] = 19;
  memset(&v117[36], 0, 92);
  v118 = vdupq_n_s32(0x43C80000u);
  v119 = v118;
  v120 = 0;
  v153[1] = 0;
  v153[0] = 0;
  v154 = 0.0;
  v155 = vdup_n_s32(0x44FA0000u);
  v156 = -1;
  Fix = BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(a2 + 4), v153, (a2 + *(*a2 - 24) + 8), 0x3E8u);
  v27 = v154;
  v28 = 2000.0;
  if (Fix)
  {
    v28 = 250.0;
  }

  else
  {
    v27 = 0.0;
  }

  v29 = v27 - v28;
  v30 = v28 + v27;
  v115 = *(a2 + 8);
  BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v152);
  v31 = 0;
  *&v141[8] = v115;
  *&v141[24] = &v141[36];
  v141[32] = 19;
  memset(&v141[36], 0, 76);
  v142 = &v144;
  v143 = 19;
  v149 = 0;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  memset(v147, 0, sizeof(v147));
  v32 = vdup_n_s32(0x461C4000u);
  v148 = v32;
  v150 = 0xC47A0000468EE000;
  v151 = 0;
  v111 = v33;
  *v141 = &unk_2A1F120F8;
  v152 = &unk_2A1F12138;
  v34 = 1;
  v35 = v112;
  do
  {
    v113 = v31;
    v116 = *(v24 + 8);
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v111);
    *&v141[8] = v116;
    v141[32] = 19;
    memset(&v141[36], 0, 76);
    v142 = &v144;
    v143 = 19;
    v149 = 0;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    memset(v147, 0, sizeof(v147));
    v151 = 0;
    *&v141[24] = &v141[36];
    *v141 = &unk_2A1F120F8;
    v152 = &unk_2A1F12138;
    v150 = __PAIR64__(LODWORD(v29), LODWORD(v30));
    v138 = v140;
    v139 = 19;
    memset(v140, 0, sizeof(v140));
    v148 = v32;
    v36 = BlueFin::GlSetBase::Cnt(v35);
    if (v36 <= 5u)
    {
      v106 = "ucNumSvs>=ucMinNumSvs";
      DeviceFaultNotify("glpe_firstfix.cpp", 476, "GetMinNumPop", "ucNumSvs>=ucMinNumSvs");
      v107 = "glpe_firstfix.cpp";
      v108 = 476;
      goto LABEL_112;
    }

    if (v36 >= 0xBu)
    {
      v106 = "ucNumSvs<=GLPE_SUBSETS_MAX_PR_ISOL";
      DeviceFaultNotify("glpe_firstfix.cpp", 477, "GetMinNumPop", "ucNumSvs<=GLPE_SUBSETS_MAX_PR_ISOL");
      v107 = "glpe_firstfix.cpp";
      v108 = 477;
LABEL_112:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v107, v108, v106);
    }

    if (((v36 - 6) & 0xFE) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = (v36 - 6);
    }

    v151 = (43692 * byte_298A43790[5 * v34 - 5 + v37]) >> 16;
    v132 = &v134;
    v133 = 19;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    memset(v137, 0, sizeof(v137));
    *v157 = &v157[12];
    v157[8] = 19;
    memset(&v157[12], 0, 76);
    v167[0] = *(v35 + 8);
    memcpy(&v167[8], *v35, 4 * v167[0]);
    *&v167[2] = 0;
    v167[1] = 0;
    *&v167[4] = *&v167[8];
    BlueFin::GlSetIterator::operator++(v167);
    BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v162, a4);
    BlueFin::GlPeIsolate::RecurseIsolation(v141, a4, v157, v167, v34);
    if (v147[28] <= v151)
    {
      goto LABEL_27;
    }

    if (v147[29] <= v151)
    {
      v38 = 0;
      if (!v147[29])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v38 = *v148.i32 + *v148.i32 < *&v148.i32[1];
      if (!v147[29])
      {
        goto LABEL_26;
      }
    }

    if (v38)
    {
LABEL_26:
      BlueFin::GlSetBase::operator=(&v132, &v141[24]);
      v136 = *&v141[68];
      *v137 = *&v141[84];
      *&v137[12] = *&v141[96];
      v134 = *&v141[36];
      v135 = *&v141[52];
    }

LABEL_27:
    v39 = BlueFin::GlSetBase::GlSetBase(v167, &v167[12], 0x13u, &v132);
    *v157 = &v157[12];
    v157[8] = 19;
    memset(&v157[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryInversion(v39, v157);
    v40 = BlueFin::GlSetBase::operator=(v167, v157);
    v169 = *&v157[44];
    v170[0] = *&v157[60];
    *(v170 + 12) = *&v157[72];
    *&v167[12] = *&v157[12];
    v168 = *&v157[28];
    BlueFin::GlSignalIdSet::setSignalIdLimits(v40);
    BlueFin::GlSetBase::GlSetBase(&v162, &v163, 0x13u, v35);
    *v157 = &v157[12];
    v157[8] = 19;
    memset(&v157[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryAnd(&v162, v157, v167);
    BlueFin::GlSetBase::operator=(&v162, v157);
    v164 = *&v157[28];
    v165 = *&v157[44];
    *v166 = *&v157[60];
    *&v166[12] = *&v157[72];
    v163 = *&v157[12];
    v41 = BlueFin::GlPeSubsets::Find(a4, &v162);
    BlueFin::GlSetBase::Add(&v138, &v132);
    v42 = v132;
    if (!*v132)
    {
      if (v133 < 2uLL)
      {
        goto LABEL_56;
      }

      v54 = 1;
      while (!v132[v54])
      {
        if (v133 == ++v54)
        {
          goto LABEL_56;
        }
      }
    }

    if (!v41)
    {
      goto LABEL_56;
    }

    BlueFin::GlSetBase::GlSetBase(v160, v161, 0x13u, v35);
    *v167 = *v41;
    *&v167[16] = *(v41 + 16);
    BlueFin::GlPeNavUtil::ComputeRangeResidVec(v141, v160, v167, (*(v41 + 120) * 1000.0), 0, 0, 0, 1, 0, 1);
    v43 = *v35;
    v44 = *v157;
    v167[0] = *(v35 + 8);
    memcpy(&v167[8], v43, 4 * v167[0]);
    *&v167[2] = 0;
    v167[1] = 0;
    *&v167[4] = *&v167[8];
    BlueFin::GlSetIterator::operator++(v167);
    if (v167[1] == v167[0])
    {
      goto LABEL_45;
    }

    v45 = 1;
    v46 = 0.0;
    v47 = v132;
    v48 = 4000.0;
    do
    {
      if (*&v167[2] >= 0x23FuLL)
      {
        v106 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v107 = "glsignalid.h";
        v108 = 578;
        goto LABEL_112;
      }

      v49 = fabs(*(v44 + 8 * v45));
      if (v49 >= v46)
      {
        v50 = v49;
      }

      else
      {
        v50 = v46;
      }

      v51 = (1 << (v167[2] & 0x1F)) & *(v47 + ((*&v167[2] >> 3) & 0x1FFC));
      if (!v51)
      {
        v46 = v50;
      }

      if (v48 >= v49 && v51 != 0)
      {
        v48 = v49;
      }

      BlueFin::GlSetIterator::operator++(v167);
      ++v45;
    }

    while (v167[1] != v167[0]);
    v24 = a2;
    v35 = v112;
    if (v48 < v46 + v46)
    {
      *v167 = &v167[12];
      v167[8] = 19;
      *&v167[12] = 0u;
      v168 = 0u;
      v169 = 0u;
      memset(v170, 0, 28);
      BlueFin::GlSetBase::operator=(&v132, v167);
      v136 = v169;
      *v137 = v170[0];
      *&v137[12] = *(v170 + 12);
      v134 = *&v167[12];
      v135 = v168;
    }

LABEL_45:
    if (*&v149 > *&v150 || *&v149 < *(&v150 + 1))
    {
      *v167 = &v167[12];
      v167[8] = 19;
      *&v167[12] = 0u;
      v168 = 0u;
      v169 = 0u;
      memset(v170, 0, 28);
      BlueFin::GlSetBase::operator=(&v132, v167);
      v136 = v169;
      *v137 = v170[0];
      *&v137[12] = *(v170 + 12);
      v134 = *&v167[12];
      v135 = v168;
    }

    v42 = v132;
LABEL_56:
    if (*v42)
    {
LABEL_68:
      BlueFin::GlSetBase::GlSetBase(&v162, &v163, 0x13u, &v132);
      *v157 = &v157[12];
      v157[8] = 19;
      memset(&v157[12], 0, 76);
      BlueFin::GlSetBase::OperatorBinaryInversion(&v162, v157);
      BlueFin::GlSetBase::operator=(&v162, v157);
      v164 = *&v157[28];
      v165 = *&v157[44];
      *v166 = *&v157[60];
      *&v166[12] = *&v157[72];
      v163 = *&v157[12];
      BlueFin::GlSignalIdSet::setSignalIdLimits(&v162);
      v62 = BlueFin::GlSetBase::GlSetBase(v167, &v167[12], 0x13u, v35);
      *v157 = &v157[12];
      v24 = a2;
      v157[8] = 19;
      memset(&v157[12], 0, 76);
      BlueFin::GlSetBase::OperatorBinaryAnd(v62, v157, &v162);
      BlueFin::GlSetBase::operator=(v167, v157);
      v168 = *&v157[28];
      v169 = *&v157[44];
      v170[0] = *&v157[60];
      *(v170 + 12) = *&v157[72];
      *&v167[12] = *&v157[12];
      v63 = BlueFin::GlPeSubsets::Find(a4, v167);
      if (v63)
      {
        v64 = v63;
        *v117 = *v63;
        *&v117[16] = *(v63 + 16);
        BlueFin::GlSetBase::operator=(&v117[24], v63 + 24);
        *&v117[36] = *(v64 + 36);
        v65 = *(v64 + 52);
        v66 = *(v64 + 68);
        v67 = *(v64 + 84);
        v68 = *(v64 + 112);
        *&v117[96] = *(v64 + 96);
        *&v117[68] = v66;
        *&v117[84] = v67;
        *&v117[52] = v65;
        v69 = *(v64 + 128);
        v70 = *(v64 + 144);
        v120 = *(v64 + 160);
        v118 = v69;
        v119 = v70;
        *&v117[112] = v68;
        v71 = 0.5;
        if (*(a2 + 244))
        {
          v71 = 0.625;
        }

        if ((*v148.i32 * v71) >= *v69.i32)
        {
          *v69.i32 = *v148.i32 * v71;
        }

        v118.i32[0] = v69.i32[0];
      }

      v35 = v112;
      break;
    }

    if (v133 >= 2uLL)
    {
      v55 = v133 - 1;
      v56 = v42 + 1;
      do
      {
        if (*v56++)
        {
          goto LABEL_68;
        }
      }

      while (--v55);
    }

    BlueFin::GlPeRepeatedIsol::Submit((v24 + 272), v138, v139);
    v34 = 2;
    v31 = 1;
  }

  while (((v113 | v110) & 1) == 0);
  *this = *v117;
  *(this + 2) = *&v117[16];
  BlueFin::GlSetBase::operator=(v9, &v117[24]);
  v72 = *&v117[84];
  v8[2] = *&v117[68];
  v8[3] = v72;
  *(v8 + 60) = *&v117[96];
  v73 = *&v117[52];
  *v8 = *&v117[36];
  v8[1] = v73;
  v74 = v118;
  *(this + 7) = *&v117[112];
  *(this + 8) = v74;
  *(this + 9) = v119;
  *(this + 160) = v120;
  v75 = *(this + 3);
  if (*v75)
  {
    goto LABEL_76;
  }

  v89 = *(this + 32);
  v14 = 0.0;
  if (v89 >= 2)
  {
    v90 = v89 - 1;
    v91 = v75 + 1;
    while (!*v91++)
    {
      if (!--v90)
      {
        goto LABEL_89;
      }
    }

LABEL_76:
    BlueFin::GlSetBase::GlSetBase(v117, &v117[12], 0x13u, v9);
    *v157 = &v157[12];
    v157[8] = 19;
    memset(&v157[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryInversion(v117, v157);
    BlueFin::GlSetBase::operator=(v117, v157);
    *&v117[28] = *&v157[28];
    *&v117[44] = *&v157[44];
    *&v117[60] = *&v157[60];
    *&v117[72] = *&v157[72];
    *&v117[12] = *&v157[12];
    BlueFin::GlSignalIdSet::setSignalIdLimits(v117);
    BlueFin::GlSetBase::GlSetBase(v141, &v141[12], 0x13u, v35);
    *v157 = &v157[12];
    v157[8] = 19;
    memset(&v157[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryAnd(v141, v157, v117);
    BlueFin::GlSetBase::operator=(v141, v157);
    *&v141[28] = *&v157[28];
    *&v141[44] = *&v157[44];
    *&v141[60] = *&v157[60];
    *&v141[72] = *&v157[72];
    *&v141[12] = *&v157[12];
    BlueFin::GlPeSubsets::ComputeWeightedMeanPos(v157, a4, v141);
    v121 = *v157;
    v122 = *&v157[16];
    v24 = a2;
    BlueFin::GlSetBase::operator=(&v123, &v157[24]);
    v127 = *&v157[68];
    *v128 = *&v157[84];
    *&v128[12] = *&v157[96];
    v125 = *&v157[36];
    v126 = *&v157[52];
    *&v128[28] = *v158;
    v129 = *&v158[16];
    v130 = *&v158[32];
    *this = v121;
    v76 = *&v128[36];
    *(this + 2) = v122;
    v77 = v159;
    *(this + 15) = v76;
    v14 = 0.0;
    v131 = v77;
    if (!v109)
    {
      BlueFin::lla2ned(this, (a2 + *(*a2 - 24) + 8), 0, v157);
      v78 = sqrt(*&v157[8] * *&v157[8] + *v157 * *v157);
      v79 = *(this + 32);
      if ((v78 * 0.1) >= v79)
      {
        v79 = v78 * 0.1;
      }

      *(this + 32) = v79;
      v14 = v78;
    }
  }

LABEL_89:
  if (**v9)
  {
LABEL_90:
    if (*(v24 + 176) == 1)
    {
      BlueFin::lla2ned(this, v24 + 26, 0, v157);
      v93 = sqrt(*&v157[8] * *&v157[8] + *v157 * *v157);
      v94 = BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 0);
      if (v94 < 400.0)
      {
        v94 = 400.0;
      }

      if ((*(v24 + 178) & 1) != 0 || (v94 + v94) >= v93)
      {
        if (*(v24 + 24) > v93)
        {
          v102 = *(this + 32);
          if (v102 <= v93)
          {
            v102 = v93;
          }

          *(this + 32) = v102;
        }
      }

      else if ((*(v24 + 179) & 1) == 0)
      {
        ++*(v24 + 232);
        *(v24 + 179) = 1;
      }
    }

    else if (*(v24 + 56) == 1)
    {
      v99 = *(v24 + 10);
      *v141 = *(v24 + 4);
      *&v141[16] = v99;
      BlueFin::lla2ned(this, v141, 0, v157);
      v100 = sqrt(*&v157[8] * *&v157[8] + *v157 * *v157);
      if (v100 <= 200.0)
      {
        v103 = *(v24 + 11);
        v104 = *(this + 32);
        v105 = v103 / (v103 + v104);
        *this = vmlaq_n_f64(vmulq_n_f64(*this, v105), *(v24 + 4), 1.0 - v105);
        *&v103 = sqrt(1.0 / (1.0 / (v103 * v103) + 1.0 / (v104 * v104)));
        *(this + 32) = LODWORD(v103);
        v101 = 1;
      }

      else
      {
        v101 = 2;
      }

      *(v24 + 128) = v101;
    }
  }

  else
  {
    v95 = *(this + 32);
    if (v95 >= 2)
    {
      v96 = v95 - 1;
      v97 = *v9 + 4;
      do
      {
        if (*v97++)
        {
          goto LABEL_90;
        }
      }

      while (--v96);
    }
  }

LABEL_3:
  if (**v9)
  {
LABEL_4:
    v15 = 0;
    v16 = *(a2 + 5);
    v17 = a2 + *(*a2 - 24);
    v18 = *(v17 + 11);
    v19 = *(a2 + 60);
    *v157 = a4;
    *&v157[24] = v16;
    LODWORD(v16) = *(a2 + 66);
    *&v157[8] = *(a2 + 8);
    *&v157[40] = 0;
    *&v157[32] = 0;
    *&v157[48] = v16;
    *&v157[56] = 0;
    *&v157[64] = *(v17 + 8);
    *&v157[80] = *(v17 + 3);
    *&v157[88] = v18;
    *&v157[96] = v19;
    *&v157[104] = &v158[4];
    v158[0] = 8;
    memset(&v158[4], 0, 32);
    *a4 = a4 + 24;
    *(a4 + 1) = a4 + 24;
    *(a4 + 2) = a4 + 29592;
    v20 = vdupq_n_s32(0x43C80000u);
    do
    {
      *(a4 + v15 + 60) = 0uLL;
      v21 = a4 + v15 + 60;
      *(v21 - 28) = 0;
      *(v21 - 36) = 0;
      *(v21 - 20) = 0;
      *(v21 - 12) = v21;
      *(v21 - 4) = 19;
      *(v21 + 1) = 0uLL;
      *(v21 + 2) = 0uLL;
      *(v21 + 3) = 0uLL;
      *(v21 + 4) = 0uLL;
      *(v21 + 76) = 0uLL;
      *(v21 + 92) = v20;
      *(v21 + 108) = v20;
      v15 += 168;
      v21[124] = 0;
    }

    while (v15 != 29568);
    BlueFin::GlPeLsqSubsets::RunLsqSubset(v157, v9, 3, 0, *(a2 + 32), 0);
    v22 = *(a2 + 32);
    v23 = *(v22 + 128);
    if (v14 >= v23)
    {
      v23 = v14;
    }

    *(v22 + 128) = v23;
  }

  else
  {
    v58 = *(this + 32);
    if (v58 >= 2)
    {
      v59 = v58 - 1;
      v60 = *v9 + 4;
      while (!*v60++)
      {
        if (!--v59)
        {
          return;
        }
      }

      goto LABEL_4;
    }
  }
}

void BlueFin::GlPeGeoid::get(BlueFin::GlPeGeoid *this, float a2, float a3)
{
  if (fabsf(a2) < 90.0)
  {
    v4 = fmodf(a3 + 180.0, 360.0);
    v5 = fmodf(v4 + 360.0, 360.0) + -180.0;
    fmodf(v5, 10.0);
    fmodf(a2, 10.0);
  }
}

float BlueFin::GlPeGnssNavUpa::UnravelHeadingRad(BlueFin::GlPeGnssNavUpa *this, float a2, float a3)
{
  v3 = a2;
  v4 = a3;
    ;
  }

    ;
  }

  if (i < 0.0)
  {
    i = -i;
  }

  v6 = i;
  v7 = v6;
  if (v7 > 1.57079633 && v7 < 4.71238898)
  {
    if (v4 + 3.14159265 <= 6.28318531)
    {
      return v4 + 3.14159265;
    }

    else
    {
      return v4 + -3.14159265;
    }
  }

  return a3;
}

uint64_t BlueFin::GlPeUrbanPosAsstCache::getRegion(BlueFin::GlPeUrbanPosAsstCache *this, int a2)
{
  if (!this)
  {
    DeviceFaultNotify("glpe_urbanposasst.h", 213, "getRegion", "m_potLatLonCityRegion");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_urbanposasst.h", 213, "m_potLatLonCityRegion");
  }

  return this + 8 * a2;
}

uint64_t BlueFin::GlExtSensorType::GetExtended(BlueFin::GlExtSensorType *this)
{
  result = *this;
  if ((result - 104) <= 0xFFFFFFFB)
  {
    DeviceFaultNotify("glpe_hula.cpp", 305, "GetExtended", "m_ucType >= GL_EXT_SENS_EXTENDED_TYPE_OFFSET && m_ucType <= _NUMOF(GL_EXT_SENS_TYPE_EXTENDED)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 305, "m_ucType >= GL_EXT_SENS_EXTENDED_TYPE_OFFSET && m_ucType <= _NUMOF(GL_EXT_SENS_TYPE_EXTENDED)");
  }

  return result;
}

uint64_t BlueFin::GlExtSensDataIfData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v3;
  v6 = v2;
  v57 = *MEMORY[0x29EDCA608];
  if (!v4)
  {
    v7 = 6;
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = *(v2 + 8);
    if (*(v8 + 32) > 0)
    {
      v53 = 47;
      v54 = v7;
      v55 = 0x1000000000000;
      v52 = &unk_2A1F092C0;
      v56 = v7;
      BlueFin::GlSysLogEntry::PutU8(&v52, *v8);
      if (v7 >= 4)
      {
        BlueFin::GlSysLogEntry::PutU8(&v52, *(*(v6 + 8) + 4));
        v9 = *(v6 + 8);
        v10 = *(v9 + 4);
        if (v10 > 2)
        {
          if ((v10 - 5) < 2 || v10 == 3)
          {
            BlueFin::GlSysLogEntry::PutU64(&v52, *(v9 + 8));
          }

          else
          {
            if (v10 != 4)
            {
              goto LABEL_110;
            }

            BlueFin::GlSysLogEntry::PutU16(&v52, *(v9 + 8));
            BlueFin::GlSysLogEntry::PutU32(&v52, *(*(v6 + 8) + 12));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 16));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 18));
            BlueFin::GlSysLogEntry::PutU32(&v52, *(*(v6 + 8) + 20));
          }
        }

        else if (v10)
        {
          if (v10 == 1)
          {
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v9 + 8));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 10));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 12));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 14));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 16));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 18));
            BlueFin::GlSysLogEntry::PutS16(&v52, *(*(v6 + 8) + 20));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v6 + 8) + 22));
            BlueFin::GlSysLogEntry::PutU32(&v52, *(*(v6 + 8) + 24));
          }

          else if (v10 != 2)
          {
LABEL_110:
            DeviceFaultNotify("glpe_hula.cpp", 385, "SerializeImpl", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 385, "0");
          }
        }

        else
        {
          BlueFin::GlSysLogEntry::PutU64(&v52, *(v9 + 8));
        }
      }

      BlueFin::GlSysLogEntry::PutU8(&v52, *(*(v6 + 8) + 32));
      v12 = *(v6 + 8);
      v13 = *v12;
      v14 = *v12;
      if (v14 <= 0x63)
      {
        switch(*v12)
        {
          case 0u:
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
            if (*(v12 + 16) >= 1)
            {
              v15 = 0;
              v16 = (v12 + 12);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v16 - 4));
                BlueFin::GlSysLogEntry::PutF32(&v52, *v16);
                ++v15;
                v16 += 22;
              }

              while (v15 < *(v12 + 16));
              v12 = *(v6 + 8);
              v13 = *v12;
            }

            v17 = v13 - 3;
            v18 = v13 - 26;
            v20 = v17 < 3 || v18 < 3;
            if (v7 >= 2 && v20)
            {
              BlueFin::GlSysLogEntry::PutF32(&v52, *&v12[22 * (*(v12 + 16) - 1) + 22]);
            }

            goto LABEL_108;
          case 8u:
            if (*(v12 + 16) >= 1)
            {
              v44 = 0;
              v45 = (v12 + 14);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v45 - 8));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v45 - 1));
                BlueFin::GlSysLogEntry::PutD64(&v52, *v45);
                BlueFin::GlSysLogEntry::PutD64(&v52, v45[1]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v45[2]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v45[4]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v45[5]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v45[6]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v45[7]);
                ++v44;
                v45 += 11;
              }

              while (v44 < *(v12 + 16));
            }

            goto LABEL_108;
          case 9u:
            if (*(v12 + 16) >= 1)
            {
              v38 = 0;
              v39 = (v12 + 14);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v39 - 8));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v39 - 1));
                BlueFin::GlSysLogEntry::PutD64(&v52, *v39);
                BlueFin::GlSysLogEntry::PutD64(&v52, v39[1]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v39[4]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v39[5]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v39[6]);
                BlueFin::GlSysLogEntry::PutD64(&v52, v39[7]);
                ++v38;
                v39 += 11;
              }

              while (v38 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0xAu:
          case 0x21u:
            if (*(v12 + 16) >= 1)
            {
              v25 = 0;
              v26 = v12 + 16;
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v26 - 12));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v26 - 2));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v26 - 1));
                BlueFin::GlSysLogEntry::PutD64(&v52, *v26);
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v26 + 3));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v26 + 4));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v26 + 5));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v26 + 6));
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v26 + 28));
                ++v25;
                v26 += 22;
              }

              while (v25 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
            if (*(v12 + 16) >= 1)
            {
              v21 = 0;
              v22 = (v12 + 12);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v22 - 4));
                BlueFin::GlSysLogEntry::PutF32(&v52, *v22);
                BlueFin::GlSysLogEntry::PutF32(&v52, v22[10]);
                ++v21;
                v22 += 22;
              }

              while (v21 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x11u:
            if (*(v12 + 16) >= 1)
            {
              v27 = 0;
              v28 = (v12 + 30);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v28 - 40));
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v28 - 36));
                if (v7 > 2)
                {
                  BlueFin::GlSysLogEntry::PutS16(&v52, *v28);
                }

                ++v27;
                v28 += 44;
              }

              while (v27 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x12u:
            if (*(v12 + 16) >= 1)
            {
              v29 = 0;
              v30 = (v12 + 12);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v30 - 4));
                BlueFin::GlSysLogEntry::PutS16(&v52, *v30);
                ++v29;
                v30 += 44;
              }

              while (v29 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x13u:
            if (*(v12 + 16) >= 1)
            {
              v48 = 0;
              v49 = (v12 + 12);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v49 - 4));
                BlueFin::GlSysLogEntry::PutS16(&v52, *v49);
                ++v48;
                v49 += 44;
              }

              while (v48 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x14u:
          case 0x18u:
            DeviceFaultNotify("glpe_hula.cpp", 588, "SerializeImpl", "false");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 588, "false");
          case 0x15u:
            if (*(v12 + 16) >= 1)
            {
              v50 = 0;
              v51 = v12 + 12;
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v51 - 4));
                BlueFin::GlSysLogEntry::PutU8(&v52, *v51);
                BlueFin::GlSysLogEntry::PutU32(&v52, v51[1]);
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v51 + 10));
                ++v50;
                v51 += 22;
              }

              while (v50 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x16u:
            if (*(v12 + 16) >= 1)
            {
              v46 = 0;
              v47 = v12 + 12;
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v47 - 4));
                BlueFin::GlSysLogEntry::PutU8(&v52, *v47);
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v47 + 1));
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v47 + 10));
                ++v46;
                v47 += 22;
              }

              while (v46 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x17u:
            if (*(v12 + 16) >= 1)
            {
              v31 = 0;
              v32 = (v12 + 22);
              do
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *(v32 - 24));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v32 - 5));
                BlueFin::GlSysLogEntry::PutD64(&v52, *(v32 - 4));
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v32 - 6));
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v32 - 5));
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v32 - 4));
                BlueFin::GlSysLogEntry::PutF32(&v52, *(v32 - 3));
                BlueFin::GlSysLogEntry::PutU32(&v52, *(v32 - 2));
                BlueFin::GlSysLogEntry::PutF32(&v52, *v32);
                ++v31;
                v32 += 22;
              }

              while (v31 < *(v12 + 16));
            }

            goto LABEL_108;
          case 0x1Du:
            if (*(v12 + 16) < 1)
            {
              goto LABEL_108;
            }

            v33 = 0;
            v34 = v12 + 12;
            break;
          default:
            goto LABEL_112;
        }

        while (1)
        {
          BlueFin::GlSysLogEntry::PutU64(&v52, *v34);
          BlueFin::GlSysLogEntry::PutU8(&v52, *(v34 + 8));
          v35 = v34[2];
          if (v35 == 2)
          {
            break;
          }

          if (v35 == 1)
          {
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 6));
            BlueFin::GlSysLogEntry::PutU32(&v52, v34[4]);
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 10));
LABEL_77:
            v36 = 22;
            v37 = 6;
            goto LABEL_78;
          }

          if (!v35)
          {
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 6));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 7));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 8));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 9));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 10));
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 11));
            BlueFin::GlSysLogEntry::PutS16(&v52, *(v34 + 12));
            v36 = 26;
            v37 = 7;
LABEL_78:
            BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + v36));
            BlueFin::GlSysLogEntry::PutU32(&v52, v34[v37]);
          }

          ++v33;
          v34 += 22;
          if (v33 >= *(v12 + 16))
          {
            goto LABEL_108;
          }
        }

        BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 6));
        BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 7));
        BlueFin::GlSysLogEntry::PutU32(&v52, v34[4]);
        BlueFin::GlSysLogEntry::PutU16(&v52, *(v34 + 10));
        goto LABEL_77;
      }

      switch(v14)
      {
        case 'd':
          if (*(v12 + 16) >= 1)
          {
            v40 = 0;
            v41 = (v12 + 12);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v41 - 4));
              BlueFin::GlSysLogEntry::PutU8(&v52, *v41);
              BlueFin::GlSysLogEntry::PutU8(&v52, v41[40]);
              ++v40;
              v41 += 88;
            }

            while (v40 < *(v12 + 16));
          }

          break;
        case 'e':
          if (*(v12 + 16) >= 1)
          {
            v42 = 0;
            v43 = (v12 + 12);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v43 - 4));
              BlueFin::GlSysLogEntry::PutU8(&v52, *v43);
              BlueFin::GlSysLogEntry::PutU8(&v52, v43[1]);
              BlueFin::GlSysLogEntry::PutU8(&v52, v43[40]);
              ++v42;
              v43 += 88;
            }

            while (v42 < *(v12 + 16));
          }

          break;
        case 'f':
          if (*(v12 + 16) >= 1)
          {
            v23 = 0;
            v24 = (v12 + 16);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v24 - 12));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v24 - 2));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v24 - 1));
              BlueFin::GlSysLogEntry::PutU8(&v52, *v24);
              ++v23;
              v24 += 88;
            }

            while (v23 < *(v12 + 16));
          }

          break;
        default:
LABEL_112:
          DeviceFaultNotify("glpe_hula.cpp", 622, "SerializeImpl", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 622, "0");
      }

LABEL_108:
      GlCustomLog(14, "\n");
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v52, v5, 4);
      return 1;
    }

    GlCustomLog(11, " NO DATA\n");
    return 0;
  }

  v7 = v4;
  if (v4 > 6)
  {
    return 0;
  }

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t BlueFin::GlExtSensDataIfData::Deserialize(BlueFin::GlExtSensDataIfData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 47 || *(a2 + 12) - 7 < 0xFFFFFFFA)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v6 = *(this + 1);
  *v6 = U8;
  if (*(a2 + 12) < 4u)
  {
    v6[1] = 2;
  }

  else
  {
    v7 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(*(this + 1) + 4) = v7;
    if (v7 > 2)
    {
      if ((v7 - 5) >= 2 && v7 != 3)
      {
        if (v7 != 4)
        {
LABEL_103:
          v52 = "0";
          DeviceFaultNotify("glpe_hula.cpp", 683, "Deserialize", "0");
          v53 = 683;
          goto LABEL_106;
        }

        *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 12) = BlueFin::GlSysLogEntry::GetU32(a2);
        *(*(this + 1) + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 20) = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU64(a2);
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 10) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 12) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 14) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 20) = BlueFin::GlSysLogEntry::GetS16(a2);
        *(*(this + 1) + 22) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 24) = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      else if (v7 != 2)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU64(a2);
    }
  }

  v8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v9 = *(this + 1);
  *(v9 + 16) = v8;
  v10 = *v9;
  v11 = *v9;
  if (v11 <= 0x63)
  {
    switch(*v9)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
        if (v8)
        {
          v12 = 0;
          v13 = (v9 + 12);
          do
          {
            *(v13 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v13 = BlueFin::GlSysLogEntry::GetF32(a2);
            v13 += 22;
            ++v12;
          }

          while (v12 < *(v9 + 16));
          v9 = *(this + 1);
          v10 = *v9;
        }

        v14 = v10 > 0x1C;
        v15 = (1 << v10) & 0x1C000038;
        if (!v14 && v15 != 0)
        {
          if (*(a2 + 12) < 2u)
          {
            F32 = 100.0;
          }

          else
          {
            F32 = BlueFin::GlSysLogEntry::GetF32(a2);
            v9 = *(this + 1);
          }

          *&v9[22 * (*(v9 + 16) - 1) + 22] = F32;
        }

        goto LABEL_36;
      case 8u:
        if (v8)
        {
          v44 = 0;
          v45 = (v9 + 14);
          do
          {
            *(v45 - 8) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v45 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
            *v45 = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[1] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[2] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[4] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[5] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[6] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[7] = BlueFin::GlSysLogEntry::GetD64(a2);
            ++v44;
            v45 += 11;
          }

          while (v44 < *(v9 + 16));
        }

        goto LABEL_36;
      case 9u:
        if (v8)
        {
          v38 = 0;
          v39 = (v9 + 14);
          do
          {
            *(v39 - 8) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v39 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
            *v39 = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[1] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[4] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[5] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[6] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[7] = BlueFin::GlSysLogEntry::GetD64(a2);
            ++v38;
            v39 += 11;
          }

          while (v38 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0xAu:
      case 0x21u:
        if (v8)
        {
          v22 = 0;
          v23 = v9 + 16;
          do
          {
            *(v23 - 12) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v23 - 2) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
            *v23 = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 6) = BlueFin::GlSysLogEntry::GetD64(a2);
            v23[14] = BlueFin::GlSysLogEntry::GetS16(a2);
            ++v22;
            v23 += 22;
          }

          while (v22 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
        if (v8)
        {
          v18 = 0;
          v19 = (v9 + 12);
          do
          {
            *(v19 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v19 = BlueFin::GlSysLogEntry::GetF32(a2);
            v19[10] = BlueFin::GlSysLogEntry::GetF32(a2);
            ++v18;
            v19 += 22;
          }

          while (v18 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x11u:
        if (v8)
        {
          v24 = 0;
          v25 = v9 + 30;
          do
          {
            *(v25 - 40) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v25 - 18) = BlueFin::GlSysLogEntry::GetS16(a2);
            if (*(a2 + 12) < 3u)
            {
              S16 = 3;
            }

            else
            {
              S16 = BlueFin::GlSysLogEntry::GetS16(a2);
            }

            *v25 = S16;
            v25 += 22;
            ++v24;
          }

          while (v24 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x12u:
        if (v8)
        {
          v27 = 0;
          v28 = v9 + 12;
          do
          {
            *(v28 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v28 = BlueFin::GlSysLogEntry::GetS16(a2);
            v28 += 22;
            ++v27;
          }

          while (v27 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x13u:
        if (v8)
        {
          v48 = 0;
          v49 = v9 + 12;
          do
          {
            *(v49 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v49 = BlueFin::GlSysLogEntry::GetS16(a2);
            v49 += 22;
            ++v48;
          }

          while (v48 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x14u:
      case 0x18u:
        v52 = "false";
        DeviceFaultNotify("glpe_hula.cpp", 908, "Deserialize", "false");
        v53 = 908;
        goto LABEL_106;
      case 0x15u:
        if (v8)
        {
          v50 = 0;
          v51 = v9 + 12;
          do
          {
            *(v51 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v51 = BlueFin::GlSysLogEntry::GetU8(a2);
            v51[1] = BlueFin::GlSysLogEntry::GetU32(a2);
            *(v51 + 10) = BlueFin::GlSysLogEntry::GetF32(a2);
            ++v50;
            v51 += 22;
          }

          while (v50 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x16u:
        if (v8)
        {
          v46 = 0;
          v47 = v9 + 12;
          do
          {
            *(v47 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v47 = BlueFin::GlSysLogEntry::GetU8(a2);
            *(v47 + 1) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v47 + 10) = BlueFin::GlSysLogEntry::GetF32(a2);
            ++v46;
            v47 += 22;
          }

          while (v46 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x17u:
        if (v8)
        {
          v29 = 0;
          v30 = (v9 + 22);
          do
          {
            *(v30 - 24) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v30 - 5) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v30 - 4) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v30 - 6) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 5) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 4) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 3) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 2) = BlueFin::GlSysLogEntry::GetU32(a2);
            *v30 = BlueFin::GlSysLogEntry::GetF32(a2);
            v30 += 22;
            ++v29;
          }

          while (v29 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x1Du:
        if (!v8)
        {
          goto LABEL_36;
        }

        v31 = 0;
        v32 = v9 + 12;
        break;
      default:
        goto LABEL_105;
    }

    while (1)
    {
      *v32 = BlueFin::GlSysLogEntry::GetU64(a2);
      v33 = BlueFin::GlSysLogEntry::GetU8(a2);
      v32[2] = v33;
      if (v33 == 2)
      {
        break;
      }

      if (v33 == 1)
      {
        *(v32 + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
LABEL_71:
        v32[4] = BlueFin::GlSysLogEntry::GetU32(a2);
        U16 = BlueFin::GlSysLogEntry::GetU16(a2);
        v35 = 5;
        v36 = 22;
        v37 = 6;
        goto LABEL_72;
      }

      if (!v33)
      {
        *(v32 + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 9) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 10) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 11) = BlueFin::GlSysLogEntry::GetU16(a2);
        U16 = BlueFin::GlSysLogEntry::GetS16(a2);
        v35 = 6;
        v36 = 26;
        v37 = 7;
LABEL_72:
        LOWORD(v32[v35]) = U16;
        *(v32 + v36) = BlueFin::GlSysLogEntry::GetU16(a2);
        v32[v37] = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      ++v31;
      v32 += 22;
      if (v31 >= *(v9 + 16))
      {
        goto LABEL_36;
      }
    }

    *(v32 + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(v32 + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
    goto LABEL_71;
  }

  switch(v11)
  {
    case 'd':
      if (v8)
      {
        v40 = 0;
        v41 = v9 + 12;
        do
        {
          *(v41 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
          *v41 = BlueFin::GlSysLogEntry::GetU8(a2);
          v41[10] = BlueFin::GlSysLogEntry::GetU8(a2);
          ++v40;
          v41 += 22;
        }

        while (v40 < *(v9 + 16));
      }

      break;
    case 'e':
      if (v8)
      {
        v42 = 0;
        v43 = v9 + 12;
        do
        {
          *(v43 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
          *v43 = BlueFin::GlSysLogEntry::GetU8(a2);
          v43[1] = BlueFin::GlSysLogEntry::GetU8(a2);
          v43[40] = BlueFin::GlSysLogEntry::GetU8(a2);
          ++v42;
          v43 += 88;
        }

        while (v42 < *(v9 + 16));
      }

      break;
    case 'f':
      if (v8)
      {
        v20 = 0;
        v21 = v9 + 16;
        do
        {
          *(v21 - 12) = BlueFin::GlSysLogEntry::GetS16(a2);
          *(v21 - 2) = BlueFin::GlSysLogEntry::GetD64(a2);
          *(v21 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
          *v21 = BlueFin::GlSysLogEntry::GetU8(a2);
          v21 += 88;
          ++v20;
        }

        while (v20 < *(v9 + 16));
      }

      break;
    default:
LABEL_105:
      v52 = "0";
      DeviceFaultNotify("glpe_hula.cpp", 942, "Deserialize", "0");
      v53 = 942;
LABEL_106:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", v53, v52);
  }

LABEL_36:
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 945);
  return 1;
}

double BlueFin::GlPeHula::SetPpsPlatformTime(uint64_t a1, unsigned __int16 *a2, int8x16_t a3, double a4, int8x16_t a5)
{
  v12[0] = &unk_2A1F11310;
  v12[1] = 0;
  a3.i16[0] = a2[5];
  LOWORD(a4) = a2[6];
  *&v7 = *&a4;
  *a3.i64 = a3.u64[0] + *&v7 * 0.001;
  LOWORD(v7) = a2[7];
  v8 = v7;
  a5.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
  *a3.i64 = *a3.i64 + v8 * 0.000001;
  BlueFin::GlUtcTime::GlUtcTime(v12, *a2, *(a2 + 2), *(a2 + 4), *(a2 + 6), *(a2 + 8), a3, v8, a5);
  BlueFin::GlPeTimeManager::GetTime(&v10, *(a1 + 1080), v12, 1);
  result = v11;
  *(a1 + 1032) = v11;
  *(a1 + 1040) = *(a2 + 4);
  return result;
}

float64x2_t BlueFin::GlPeHula::TempData::Update(double *a1, int a2, float *a3)
{
  v3 = *a3;
  a1[1] = v3;
  v4 = a3[2];
  *a1 = v4;
  if (a2 < 2)
  {
    v10 = &qword_298A2E118;
    v8 = vld1q_dup_f64(v10);
    v8.f64[0] = v3;
  }

  else
  {
    v5 = a2 - 1;
    v6 = a3 + 24;
    do
    {
      v7 = *(v6 - 48);
      v8.f64[0] = *(v6 - 4);
      a1[1] = v8.f64[0];
      v9 = *v6;
      v6 += 22;
      v4 = v4 + v9;
      *a1 = v4;
      --v5;
    }

    while (v5);
    *a1 = v4 / a2;
    v8.f64[1] = v8.f64[0] - v7;
  }

  result = vdivq_f64(v8, vdupq_n_s64(0x408F400000000000uLL));
  *(a1 + 1) = result;
  return result;
}

uint64_t BlueFin::GlPeHula::CrossTrkSpeedData::Update(uint64_t a1, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  v7 = a2 + 88 * (*(a2 + 32) - 1);
  *a1 = *(v7 + 48);
  *(a1 + 8) = *(v7 + 88);
  if (*(a1 + 40) == 1)
  {
    v9 = *(a2 + 8);
    *(a1 + 36) = *(a2 + 24);
    *(a1 + 20) = v9;
    v20[0] = &unk_2A1F11310;
    v20[1] = 0;
    v9.i16[0] = *(a1 + 30);
    LOWORD(a5) = *(a1 + 32);
    *&v10 = *&a5;
    *v9.i64 = v9.u64[0] + *&v10 * 0.001;
    LOWORD(v10) = *(a1 + 34);
    v11 = v10;
    a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
    *v9.i64 = *v9.i64 + v11 * 0.000001;
    BlueFin::GlUtcTime::GlUtcTime(v20, *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 26), *(a1 + 28), v9, v11, a6);
    Time = BlueFin::GlPeTimeManager::GetTime(v19, a3, v20, 0);
    v13.i64[0] = v19[2];
    result = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v13, v14, v15, v16, v17);
  }

  else
  {
    result = (*(*(a1 + 48) + 576) + *(v7 + 40));
  }

  *(a1 + 16) = result;
  *(a1 + 41) = 1;
  return result;
}

uint64_t BlueFin::GlPeHula::HdgData::Update(uint64_t result, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  if ((*(result + 1692) & 1) == 0)
  {
    v7 = *(a2 + 32);
    if (v7 >= 1)
    {
      v8 = result;
      if (*(result + 1688))
      {
        v10 = *(a2 + 8);
        *(result + 1684) = *(a2 + 24);
        *(result + 1668) = v10;
        v24[0] = &unk_2A1F11310;
        v24[1] = 0;
        v10.i16[0] = *(result + 1678);
        LOWORD(a5) = *(result + 1680);
        *&v11 = *&a5;
        *v10.i64 = v10.u64[0] + *&v11 * 0.001;
        LOWORD(v11) = *(result + 1682);
        v12 = v11;
        a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
        *v10.i64 = *v10.i64 + v12 * 0.000001;
        BlueFin::GlUtcTime::GlUtcTime(v24, *(result + 1668), *(result + 1670), *(result + 1672), *(result + 1674), *(result + 1676), v10, v12, a6);
        Time = BlueFin::GlPeTimeManager::GetTime(v23, a3, v24, 0);
        v14.i64[0] = v23[2];
        result = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v14, v15, v16, v17, v18);
        v7 = *(a2 + 32);
        *(v8 + 1664) = result;
        if (v7 < 1)
        {
          return result;
        }
      }

      else
      {
        *(result + 1664) = *(*(result + 1696) + 576);
      }

      v19 = 0;
      v20 = (a2 + 88);
      do
      {
        if (*v20 > 0.0)
        {
          v21 = *(v20 - 10);
          BlueFin::SKFVector::AddLen(v8);
          *(*v8 + 8 * *(v8 + 8)) = v21;
          v22 = *v20;
          result = BlueFin::SKFVector::AddLen(v8 + 824);
          *(*(v8 + 824) + 8 * *(v8 + 832)) = v22;
          LOWORD(v7) = *(a2 + 32);
        }

        ++v19;
        v20 += 22;
      }

      while (v19 < v7);
    }
  }

  return result;
}

float BlueFin::GlPeHula::TurningRateSensorData::Update(uint64_t a1, uint64_t a2, float result, double a4, double a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10)
{
  if (*(a2 + 32) >= 1)
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(*(a1 + 40) + 576);
    *(a1 + 8) = v13;
    v14 = *(a2 + 88);
    v15 = v14 * v14;
    v16 = 0.0;
    if (v14 <= 0.0)
    {
      v15 = 0.0;
    }

    if (v10 == 1)
    {
      a7.i64[0] = 0;
      v17 = 1000.0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = v14 > 0.0;
      v21 = (a2 + 128);
      v22 = 0.0;
      v23 = 1;
      v24 = v12;
      do
      {
        v11 = *v21;
        v25 = *v21 - *(a2 + 40 + 88 * SHIDWORD(v18));
        if (v25 < 0)
        {
          v22 = 1.0;
          v25 += 1000;
        }

        v19 += v25;
        v26 = v21[2];
        v24 = v24 + v26;
        v27 = v23++;
        v12 = (v26 + (v27 * v12)) / v23;
        v16 = ((v16 * v27) / v23) + (((v26 - v12) * (v26 - v12)) / v27);
        v28 = v21[12];
        if (v28 > 0.0)
        {
          ++v20;
          v15 = v15 + (v28 * v28);
        }

        v18 += 0x100000000;
        v21 += 22;
      }

      while (v10 != v23);
      *a7.i64 = v22 * 1000.0;
      v12 = v24 / v10;
      v17 = v19 / (v10 - 1);
      if (v20 > 1)
      {
        v15 = v15 / v20;
      }
    }

    v29 = v13 + v11;
    *a10.i64 = *a7.i64 + trunc(*a7.i64 * 2.32830644e-10) * -4294967300.0;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v31 = vnegq_f64(v30);
    a10.i64[0] = vbslq_s8(v31, a10, a7).u64[0];
    if (*a7.i64 > 4294967300.0)
    {
      a7.i64[0] = a10.i64[0];
    }

    if (*a7.i64 < -4294967300.0)
    {
      *a9.i64 = -*a7.i64;
      *a7.i64 = -(*a7.i64 - trunc(*a7.i64 * -2.32830644e-10) * -4294967300.0);
      *a7.i64 = -*vbslq_s8(v31, a7, a9).i64;
    }

    if (*a7.i64 < 0.0)
    {
      v32 = --*a7.i64;
    }

    else
    {
      v32 = *a7.i64;
    }

    *(a1 + 8) = v29 + v32;
    result = sqrtf(v16 + v15);
    *a1 = (v12 * v10) * (v17 / 1000.0);
    *(a1 + 4) = result;
    *(a1 + 33) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeHula::UpdateAuxInfo(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) >= 1)
  {
    v9 = v2;
    v10 = v3;
    v5 = result;
    v6 = 0;
    v7 = (a2 + 52);
    do
    {
      v8 = *(v7 - 1);
      result = BlueFin::GlExtSensorType::Get(&v8);
      if (result == 13)
      {
        *(v5 + 5140) = *v7;
      }

      else if (result == 15)
      {
        *(v5 + 2986) = *v7;
      }

      ++v6;
      v7 += 22;
    }

    while (v6 < *(a2 + 32));
  }

  return result;
}

_DWORD *BlueFin::GlPeHula::ExtSensTempData::Update(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 - 41) >= 0xFFFFFFD8)
  {
    v3 = (a2 + 48);
    do
    {
      v4 = *v3;
      if (*v3 > 0x1C)
      {
        break;
      }

      if (((1 << v4) & 0x1C00003F) != 0)
      {
        v5 = 0;
      }

      else
      {
        if (v4 != 24)
        {
          return result;
        }

        v5 = 1;
      }

      v6 = *v3;
      v3 += 22;
      *&result[2 * v5 + 2] = v6;
      *(result + v5 + 24) = 1;
      v7 = *(*result + 576);
      if (v7 <= 1)
      {
        v7 = 1;
      }

      result[7] = v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t BlueFin::GlPeHula::TravelAssistData::Update(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) - 1 <= 0x27)
  {
    v2 = a2 + 88 * (*(a2 + 32) - 1);
    *(result + 52) = *(v2 + 88);
    v3 = *(v2 + 48);
    v4 = *(v2 + 64);
    v5 = *(v2 + 80);
    *(result + 40) = v5;
    *(result + 24) = v4;
    *(result + 8) = v3;
    v6 = *(*result + 576);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    *(result + 56) = v6;
    *(result + 40) = v5 & 4 | (8 * ((v5 >> 1) & 1)) | (2 * (v5 & 1)) | (v5 >> 2) & 0x10;
    *(result + 48) = 1;
    *(result + 62) = 257;
  }

  return result;
}

uint64_t BlueFin::GlPeHula::DeltaPos::Update(uint64_t a1, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  v7 = a2 + 88 * (*(a2 + 32) - 1);
  v8 = *(v7 + 48);
  *a1 = v8;
  v9 = *(v7 + 88);
  *(a1 + 8) = v9;
  if (*(a1 + 40) == 1)
  {
    v11 = *(a2 + 8);
    *(a1 + 36) = *(a2 + 24);
    *(a1 + 20) = v11;
    v22[0] = &unk_2A1F11310;
    v22[1] = 0;
    v11.i16[0] = *(a1 + 30);
    LOWORD(v9) = *(a1 + 32);
    *&v12 = v9;
    *v11.i64 = v11.u64[0] + *&v12 * 0.001;
    LOWORD(v12) = *(a1 + 34);
    v13 = v12;
    a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
    *v11.i64 = *v11.i64 + v13 * 0.000001;
    BlueFin::GlUtcTime::GlUtcTime(v22, *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 26), *(a1 + 28), v11, v13, a6);
    Time = BlueFin::GlPeTimeManager::GetTime(v21, a3, v22, 0);
    v15.i64[0] = v21[2];
    result = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v15, v16, v17, v18, v19);
    v8 = *a1;
  }

  else
  {
    result = (*(*(a1 + 48) + 576) + *(v7 + 40));
  }

  *(a1 + 16) = result;
  *(a1 + 41) = v8 > 0.0;
  return result;
}

BlueFin::GlPeGloFcnOsnMgr **BlueFin::GlPeHula::LosStateData::Update(BlueFin::GlPeGloFcnOsnMgr **result, uint64_t a2, int a3)
{
  v3 = 0;
  *(result + 19) = 0u;
  *(result + 20) = 0u;
  *(result + 17) = 0u;
  *(result + 18) = 0u;
  *(result + 15) = 0u;
  *(result + 16) = 0u;
  *(result + 13) = 0u;
  *(result + 14) = 0u;
  *(result + 11) = 0u;
  *(result + 12) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *(result + 2) = a3;
  v4 = *(a2 + 32);
  if (v4 >= 1)
  {
    v5 = result;
    v6 = (result + 43);
    v7 = (a2 + 48);
    v8 = 2;
    do
    {
      v9 = *v7;
      v10 = v7[1];
      LOBYTE(v3) = v7[40];
      *&v5[v8] = v3 / 255.0;
      if (v9 <= 1)
      {
        if (!v9)
        {
          v16 = 0;
          goto LABEL_13;
        }

        v11 = 2;
      }

      else
      {
        switch(v9)
        {
          case 2:
            v11 = 5;
            break;
          case 3:
            v11 = 4;
            break;
          case 4:
            v11 = 3;
            break;
          default:
            DeviceFaultNotify("glpe_hula.cpp", 2443, "Update", "false");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 2443, "false");
        }
      }

      v16 = v11;
LABEL_13:
      v17 = v10;
      result = BlueFin::GlPeSvIdConverter::Gnss2SvId(*v5 + 14968, &v16, &v15);
      if (v15 - 189 >= 0xFFFFFF44)
      {
        v14 = BlueFin::GlSvId::s_aucSvId2gnss[v15];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
        {
          v13 = 575;
          v12 = -1;
        }

        else
        {
          v12 = 0;
          v13 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v15 - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
        }
      }

      else
      {
        v12 = 0;
        v13 = 575;
      }

      v7 += 88;
      *(v6 - 8) = v15;
      *(v6 - 1) = v12;
      *v6 = v13;
      v6 += 6;
      ++v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

_DWORD *BlueFin::GlPeHula::ExtConstraintData::Update(_DWORD *result, uint64_t a2, int a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = -7200001;
  v3 = a2 + 88 * (*(a2 + 32) - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  LODWORD(v3) = *(v3 + 64);
  *&v5 = v5;
  *&v4 = v4;
  result[1] = LODWORD(v5);
  result[2] = LODWORD(v4);
  *result = a3 + 1000 * v3;
  if (*&v4 >= *&v5)
  {
    result[1] = 0;
    result[2] = 0;
    *result = -7200001;
  }

  return result;
}

float BlueFin::GlPeHula::GetDistanceToE911ExtLoc(uint64_t a1, double *a2)
{
  result = -1.0;
  if (*(a1 + 5208) == 1)
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 5232);
    v6 = *(a1 + 5216);
    v7 = v5;
    BlueFin::lla2ned(a2, &v6, 0, &v8);
    return sqrt(v9 * v9 + v8 * v8);
  }

  return result;
}

BOOL BlueFin::GlPeHula::HulaHdgCombine(BlueFin::GlPeHula *this, const BlueFin::SKFVector *a2, const BlueFin::SKFVector *a3)
{
  v4 = *(a2 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      *(this + 368) = *(*a2 + 8);
      v6 = *(*a3 + 8);
    }

    else
    {
      *(this + 184) = 0u;
      BlueFin::SKFVectorDim<100>::SKFVectorDim(&v42, a2);
      v7 = v42;
      v8 = *(v42 + 8);
      v9 = v43;
      v10 = v8;
      v11 = v8;
      if (v43 >= 2)
      {
        v12 = v43 - 1;
        v13 = (v42 + 16);
        v14 = v12;
        v10 = *(v42 + 8);
        do
        {
          v15 = *v13++;
          v16 = v15;
          if (v10 < v15)
          {
            v10 = v16;
          }

          --v14;
        }

        while (v14);
        v17 = (v42 + 16);
        v11 = *(v42 + 8);
        do
        {
          v18 = *v17++;
          v19 = v18;
          if (v11 > v18)
          {
            v11 = v19;
          }

          --v12;
        }

        while (v12);
      }

      if (v4 >= 2 && v10 - v11 > 180.0)
      {
        v20 = 2;
        do
        {
          v21 = *(v7 + 8);
            ;
          }

          while (i <= -3.14159265)
          {
            i = i + 6.28318531;
          }

          *(v7 + 8 * v20++) = v21 + i * 57.2957795;
        }

        while (v20 != v4 + 1);
        v8 = *(v7 + 8);
      }

      if (v9 < 2)
      {
        v26 = v8;
      }

      else
      {
        v23 = v9 - 1;
        v24 = (v7 + 16);
        v25 = v23;
        v26 = v8;
        do
        {
          v27 = *v24++;
          v28 = v27;
          if (v26 < v27)
          {
            v26 = v28;
          }

          --v25;
        }

        while (v25);
        v29 = (v7 + 16);
        do
        {
          v30 = *v29++;
          v31 = v30;
          if (v8 > v30)
          {
            v8 = v31;
          }

          --v23;
        }

        while (v23);
      }

      if (v26 - v8 > 180.0)
      {
        DeviceFaultNotify("glpe_hula.cpp", 3641, "HulaHdgCombine", "otHdgDeg.Max() - otHdgDeg.Min() <= STRAIGHT_ANGLE_DEG");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 3641, "otHdgDeg.Max() - otHdgDeg.Min() <= STRAIGHT_ANGLE_DEG");
      }

      v32 = *(this + 369);
      v33 = *(this + 368);
      if (v4 >= 1)
      {
        v34 = (v7 + 8);
        v35 = (*a3 + 8);
        v36 = v4;
        do
        {
          v37 = *v35++;
          v38 = v37 * v37;
          v39 = *v34++;
          v40 = 1.0 / v38;
          v33 = v33 + v39 * v40;
          *(this + 368) = v33;
          v32 = v32 + v40;
          *(this + 369) = v32;
          --v36;
        }

        while (v36);
      }

      *(this + 368) = v33 / v32;
      v6 = sqrt(1.0 / v32);
    }

    *(this + 369) = v6;
  }

  else
  {
    *(this + 184) = xmmword_298A2F6C0;
  }

  return v4 != 0;
}

BOOL BlueFin::GlPeHula::UpdateHulaDebug(BlueFin::GlPeHula *this, float a2)
{
  v17 = *MEMORY[0x29EDCA608];
  bzero(v14, 0xDE0uLL);
  v4.i32[1] = 2;
  v13 = 0x20000000FLL;
  v14[12] = 1;
  *v4.i32 = a2 * 57.296;
  v15 = a2 * 57.296;
  v16 = 1092616192;
  *(this + 2988) = 0;
  BlueFin::GlPeHula::Update(this, &v13, v4, v5, v6, v7, v8, v9, v10, v11);
  result = BlueFin::GlPeHula::HulaHdgCombine(this, (this + 1296), (this + 2120));
  if (!result)
  {
    DeviceFaultNotify("glpe_hula.cpp", 4079, "UpdateHulaDebug", "HulaHdgCombine(m_HdgHULA.m_otValueDeg, m_HdgHULA.m_otRmseDeg)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 4079, "HulaHdgCombine(m_HdgHULA.m_otValueDeg, m_HdgHULA.m_otRmseDeg)");
  }

  *(this + 2988) = 1;
  *(this + 2985) = 1;
  return result;
}

_WORD *BlueFin::GlUtcTime::MakeRelativeToGps0(_WORD *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t *a8)
{
  v8 = *this;
  if (v8 <= 0x7B2)
  {
    if (v8 != 1970 || (v9 = *a2, v9 <= 1) && (v9 == 1 ? (v14 = *a3 == 0) : (v14 = 1), v14))
    {
      v15 = "rusYear > 1970 || (rusYear == 1970 && (rusMonth > 1 || (rusMonth == 1 && rusDay >= 1)))";
      DeviceFaultNotify("glpe_datetime.h", 1222, "MakeRelativeToGps0", "rusYear > 1970 || (rusYear == 1970 && (rusMonth > 1 || (rusMonth == 1 && rusDay >= 1)))");
      v16 = 1222;
      goto LABEL_16;
    }

    v11 = *a4;
    v12 = *a5;
    v17 = 2;
    v13 = *a6;
    goto LABEL_18;
  }

  if (v8 > 0x7BC)
  {
    return this;
  }

  if (v8 != 1980)
  {
    v11 = *a4;
    v12 = *a5;
    v13 = *a6;
    v9 = *a2;
    if (v8 != 1971)
    {
      v10 = *a3;
      goto LABEL_25;
    }

    v17 = 3;
LABEL_18:
    v18 = BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v17 - 1 + v9] + *a3 - 732;
LABEL_19:
    v19 = *a7 - 1000 * (-60 * v12 - v13 - 3600 * v11 - 86400 * v18) - 315964800000;
    *a7 = v19;
    if (v19 >= 0)
    {
      *this = 1980;
      *a2 = 1;
      *a3 = 6;
      *a4 = 0;
      *a5 = 0;
      *a6 = 0;
      return this;
    }

    v15 = "rsllUtcOffsetMs >= 0";
    DeviceFaultNotify("glpe_datetime.h", 1251, "MakeRelativeToGps0", "rsllUtcOffsetMs >= 0");
    v16 = 1251;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_datetime.h", v16, v15);
  }

  v9 = *a2;
  if (v9 <= 1)
  {
    v10 = *a3;
    if (v9 != 1 || v10 <= 5)
    {
      v11 = *a4;
      v12 = *a5;
      v8 = 1980;
      v13 = *a6;
LABEL_25:
      v18 = BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v8 & 3) - 1 + v9] + 1461 * ((v8 - 1972) >> 2) + v10 + 729;
      goto LABEL_19;
    }
  }

  return this;
}

BlueFin::GlUtcTime *BlueFin::GlUtcTime::GlUtcTime(BlueFin::GlUtcTime *a1, unsigned __int16 *a2, int8x16_t a3, double a4, int8x16_t a5)
{
  *a1 = &unk_2A1F11310;
  *(a1 + 1) = 0;
  a3.i16[0] = a2[5];
  LOWORD(a4) = a2[6];
  *&v5 = *&a4;
  *a3.i64 = a3.u64[0] + *&v5 * 0.001;
  LOWORD(v5) = a2[7];
  v6 = v5;
  a5.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
  *a3.i64 = *a3.i64 + v6 * 0.000001;
  return BlueFin::GlUtcTime::GlUtcTime(a1, *a2, *(a2 + 2), *(a2 + 4), *(a2 + 6), *(a2 + 8), a3, v6, a5);
}

uint64_t BlueFin::GlGpsTime::GlGpsTime(uint64_t this, int a2, int8x16_t a3, int8x16_t a4)
{
  *this = &off_2A1F0B5F0;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  *(this + 8) = v7;
  *(this + 12) = *a3.i64 + 604800 * a2;
  *this = &off_2A1F0B5F0;
  return this;
}

{
  *this = &off_2A1F0B5F0;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  *(this + 8) = v7;
  *(this + 12) = *a3.i64 + 604800 * a2;
  *this = &off_2A1F0B5F0;
  return this;
}

uint64_t BlueFin::GlPeIntegers::IntegerQAAnalysis(uint64_t a1, int a2, double *a3, int a4, int a5, double *a6, _BYTE *a7, BlueFin::GlSetBase *this, double a9, double a10, char a11, char a12, char a13)
{
  v23 = BlueFin::GlSetBase::Cnt(this);
  if (v23 > 2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  if (a9 >= 500.0)
  {
    v24 = 0;
  }

  if (a9 >= 149896.229)
  {
    *a7 = 1;
  }

  v25 = a3[2];
  if (v25 < -999.0)
  {
    goto LABEL_29;
  }

  if (v23 < 6 && v25 > 159999.0)
  {
    goto LABEL_29;
  }

  if (a4 == 4)
  {
    v27 = a5;
  }

  else
  {
    v27 = 1;
  }

  if (v23 > 4)
  {
    v27 = 1;
  }

  if ((v27 & v24) != 1)
  {
    goto LABEL_29;
  }

  if (v23 >= 5)
  {
    if (a9 < 500.0)
    {
      goto LABEL_46;
    }

LABEL_29:
    v30 = 0;
    goto LABEL_30;
  }

  if ((a4 | 2) != 3)
  {
LABEL_46:
    v30 = 1;
    goto LABEL_30;
  }

  BlueFin::lla2ned(a3, a6, 0, &v50);
  v28 = sqrt(*v51 * *v51 + v50 * v50) * 0.001;
  v29 = 100.0;
  if (a13 < 4)
  {
    v29 = 50.0;
  }

  v30 = v28 <= v29;
  if (v28 <= v29 && (a12 & 1) == 0)
  {
    if (fabs(a10) > 90.0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_30:
  if (a4 != 1)
  {
    *a7 = 1;
  }

  if (v23 < 6)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 == 1)
  {
    if (*a7 == 1)
    {
      v30 = a11;
      v50 = COERCE_DOUBLE(&v51[4]);
      v51[0] = 19;
      *&v51[4] = 0u;
      v52 = 0u;
      v53 = 0u;
      memset(v54, 0, sizeof(v54));
      v47 = v49;
      v48 = 19;
      memset(v49, 0, sizeof(v49));
      v42 = *(this + 8);
      memcpy(v46, *this, 4 * v42);
      v44 = 0;
      v43 = 0;
      v45 = v46[0];
      BlueFin::GlSetIterator::operator++(&v42);
      if (v43 != v42)
      {
        while (1)
        {
          v32 = v44;
          if (v44 >= 0x23FuLL)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          v33 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v44;
          v34 = *v33;
          LODWORD(v33) = v33[1];
          v39[0] = v34;
          v40 = v33;
          v41 = v44;
          v35 = (v44 >> 3) & 0x1FFC;
          *(*&v50 + v35) |= 1 << v44;
          v36 = *(a1 + 8);
          if ((*(*(v36 + 8) + v35) >> (v32 & 0x1F)))
          {
            PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v36, v39, 0);
            if (BlueFin::stPeSigMeasKF::IsPRValid(PeMeas))
            {
              *&v47[4 * (v41 >> 5)] |= 1 << v41;
              if (PeMeas[52] < 0)
              {
                break;
              }
            }
          }

          BlueFin::GlSetIterator::operator++(&v42);
          if (v43 == v42)
          {
            return v30;
          }
        }

        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return v30;
}

uint64_t BlueFin::GlPeCommonReqParms::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v13 = *MEMORY[0x29EDCA608];
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    DeviceFaultNotify("glpe_kf.cpp", 80, "SerializeImpl", "ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 80, "ucVersion == 2");
  }

  v5 = v3;
  v6 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 29;
    v10 = 2;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = 2;
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v6 + 10));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v6 + 12));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v5, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeCommonReqParms::Deserialize(BlueFin::GlPeCommonReqParms *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 29)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 4) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU16(a2);
  v6 = v3 != 1 && BlueFin::GlSysLogEntry::GetU16(a2) != 0;
  *(this + 12) = v6;
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glpe_kf.cpp", 127, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 127, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlPePrRrResidualData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = *MEMORY[0x29EDCA608];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_kf.cpp", 205, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 205, "ucVersion == 1");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v12 = 100;
    v13 = v5;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F092C0;
    v15 = v5;
    BlueFin::GlSysLogEntry::PutD64(&v11, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutU8(&v11, *(v7 + 16));
    if (*(v7 + 16))
    {
      v8 = 0;
      v9 = (v7 + 48);
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v11, *(v9 - 20));
        BlueFin::GlSysLogEntry::PutU8(&v11, *(v9 - 24));
        BlueFin::GlSysLogEntry::PutD64(&v11, *(v9 - 1));
        BlueFin::GlSysLogEntry::PutD64(&v11, *v9);
        ++v8;
        v9 += 4;
      }

      while (v8 < *(v7 + 16));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPePrRrResidualData::Deserialize(BlueFin::GlPePrRrResidualData *this, BlueFin::GlSysLogEntry *a2)
{
  v3 = *(a2 + 2) == 100 && *(a2 + 12) == 1;
  result = v3;
  if (v3)
  {
    v13 = result;
    *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 16) = U8;
    if (U8)
    {
      v7 = 0;
      v8 = (this + 48);
      do
      {
        v9 = BlueFin::GlSysLogEntry::GetU8(a2);
        v10 = BlueFin::GlSysLogEntry::GetU8(a2);
        if ((v10 - 189) >= 0xFFFFFF44)
        {
          v12 = BlueFin::GlSvId::s_aucSvId2gnss[v10];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v9 - v9 + v12] == 255)
          {
            v11 = 575;
            v9 = -1;
          }

          else
          {
            v11 = BlueFin::GlSignalId::s_ausGnss2signalId[v12] + v10 - BlueFin::GlSvId::s_aucGnss2minSvId[v12] + BlueFin::GlSvId::s_aucGnss2numSvId[v12] * v9;
          }
        }

        else
        {
          v11 = 575;
        }

        *(v8 - 24) = v10;
        *(v8 - 5) = v9;
        *(v8 - 8) = v11;
        *(v8 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
        *v8 = BlueFin::GlSysLogEntry::GetD64(a2);
        v8 += 4;
        ++v7;
      }

      while (v7 < *(this + 16));
    }

    BlueFin::GlSysLogEntry::CheckConsumed(a2, 245);
    return v13;
  }

  return result;
}

uint64_t BlueFin::GlPeKF::RunSysRangeDivergenceDetection(uint64_t result, __int128 *a2, uint64_t a3, double a4)
{
  v4 = (result + 61008);
  if ((*(result + 61969) & 1) == 0)
  {
    v8 = result;
    BlueFin::GlSetBase::GlSetBase(v11, v12, 0x13u, (*v4 + 184));
    v9 = *a2;
    v10 = *(a2 + 2);
    result = BlueFin::GlPeNavUtil::RunBdsDivergenceDetection(v8 + 17184, v11, &v9, a3, a4, 150.0);
    if (result)
    {
      v4[961] = 1;
      return GlCustomLog(14, "Range divergence detected \n");
    }
  }

  return result;
}

void BlueFin::GlPeKF::IntegerQA(uint64_t a1, double *a2, double *a3, const void **a4, int a5, int a6, double a7, double a8, __n128 a9, __n128 a10, __n128 a11)
{
  v14 = a9.n128_f64[0];
  v18 = a1 + 57432;
  v19 = (a1 + 14528);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  if (a5)
  {
    v20 = BlueFin::GlPeNavGnssMeasMgr::DopplerResidualCheck(a1 + 14560, a2);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 264);
  v22 = v19[2244];
  v38 = *(a1 + 192);
  v39 = *(a1 + 208);
  BlueFin::GlSetBase::GlSetBase(&v32, v37, 0x13u, a4);
  v23 = BlueFin::GlPeIntegers::IntegerQAAnalysis(v19, a6, a2, v21, v22, &v38, (a1 + 1086), &v32, v14, a8, v20, *(a1 + 1096), *(v18 + 4028));
  if (v23)
  {
    bzero(*(a1 + 408), ((4 * *(a1 + 416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(a1 + 312), ((4 * *(a1 + 320) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v24 = 1;
    *v19 = 1;
    *(a1 + 1084) = 0;
    *(a1 + 1152) = 0;
    bzero(*(a1 + 1160), ((4 * *(a1 + 1168) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *(a1 + 1086) = 0;
    v19[2244] = 0;
  }

  else
  {
    *v19 = 0;
    BlueFin::GlPeMsmtMgr::Init_IntPr(*(v18 + 3576));
    BlueFin::GlPeKF::resetDtsIfGood(a1, v25, v26);
    ++*(a1 + 1152);
    v27 = a1 + 17184 + *(*(a1 + 17184) - 24);
    v32 = *(v27 + 272);
    memcpy(&v36, *(v27 + 264), 4 * v32);
    v34 = 0;
    v33 = 0;
    v35 = v36;
    BlueFin::GlSetIterator::operator++(&v32);
    while (v33 != v32)
    {
      if (v34 >= 0x23Fu)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      *(*(a1 + 1160) + ((v34 >> 3) & 0x1FFC)) |= 1 << v34;
      BlueFin::GlSetIterator::operator++(&v32);
    }

    v28 = ++*(a1 + 1084);
    v24 = v28 < 5;
  }

  v29 = *(a1 + 264);
  if (v29 == 1)
  {
    if (*(*(v18 + 3504) + 24) == 1 && (v23 & v24 & 1) == 0)
    {
      *(a1 + 1088) = 1;
      *(a1 + 1086) = 1;
    }
  }

  else
  {
    if (v29 == 3)
    {
      v30 = v23;
    }

    else
    {
      v30 = 1;
    }

    if ((v30 & 1) == 0)
    {
      *(a1 + 1088) = 1;
    }
  }

  v31 = *(a1 + 1089);
  if (v23 != v31)
  {
    *(a1 + 1089) = v23 | v31 ^ 1;
  }
}

int8x16_t *BlueFin::GlPeKF::ClearInitPos(int8x16_t *this, int a2, double a3, int8x16_t a4)
{
  this[5] = 0uLL;
  this[6].i64[0] = 0;
  this[6].i32[2] = 1161527296;
  this[9].i32[2] = 0;
  this[3] = 0uLL;
  this[2].i64[1] = 0;
  this[4].i32[0] = 1120403456;
  this[67].i8[14] = 0;
  this[68].i8[10] = 0;
  this[68].i8[2] = 0;
  *(&this[12] + 8) = 0uLL;
  this[12].i64[0] = 0;
  this[13].i32[2] = 1161527296;
  v4 = this[7];
  this[14] = v4;
  this[15].i64[0] = this[8].i64[0];
  this[16].i64[0] = this[9].i64[0];
  this[16].i32[2] = 0;
  this[16].i32[3] = this[9].i32[3];
  if (a2)
  {
    v5 = this;
    v6 = this[3809].i64[1];
    v4.i64[0] = 0xFFFFFFFF00000000;
    *(v6 + 40) = 0xFFFFFFFF00000000;
    *(v6 + 136) = 0;
    *(v6 + 184) = 0xFFFFFFFF00000000;
    *(v6 + 280) = 0;
    v7 = this[3811].i64[1];
    if (*(v7 + 19352) <= 2)
    {
      *(v7 + 19352) = 3;
    }

    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        BlueFin::GlPeInitKFPosEvent::SerializeImpl(this, 0);
      }
    }

    return BlueFin::GlPeKF::InitializeKF(v5, v4, a4);
  }

  return this;
}

uint64_t BlueFin::GlPeKF::SetSensorsConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_kf.cpp", 2564, "SetSensorsConfig", "pSensorsConfig != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 2564, "pSensorsConfig != nullptr");
  }

  v4 = *(a1 + 61948);
  if (v4 != 1)
  {
    if (v4 || *(a1 + 2316) == 2)
    {
      v5 = *(a2 + 7);
      if (*(a2 + 7))
      {
        if ((*(*(*(a1 + 60936) + 160) + 2) & 1) == 0)
        {
          goto LABEL_11;
        }

        v5 = 1;
      }

      *(a1 + 2316) = v5;
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *(a1 + 61948) = v6;
  }

LABEL_11:
  v7 = *(a1 + 2848);
  if (v7)
  {
    if (v7 == 1)
    {
      *(a2 + 16) = 257;
      *(a2 + 4) = 257;
      *(a1 + 183) = 1;
      goto LABEL_14;
    }

    v8 = *(a2 + 4);
    if (*(a2 + 5))
    {
      *(a1 + 183) = 1;
      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (*(a2 + 4))
    {
LABEL_14:
      *(a1 + 182) = 1;
LABEL_15:
      *(a1 + 184) = 1;
    }
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 4) = 0;
  }

  (*(*(a1 + 17184) + 368))();
  if (*(a2 + 20) == 1)
  {
    *(a1 + 185) = 1;
  }

  if (*(a2 + 19) == 1)
  {
    *(a1 + 189) = 1;
  }

  v9 = *(a1 + 3112);
  if (v9 <= 1)
  {
    *(a2 + 8) = v9;
  }

  return 1;
}

uint64_t BlueFin::GlPeInitKFPosEvent::Deserialize(BlueFin::GlPeInitKFPosEvent *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 60 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 2823);
  }

  return v3;
}

uint64_t BlueFin::GlPeInitKFPosEvent::SerializeImpl(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v10 = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_kf.cpp", 2836, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 2836, "ucVersion == 1");
  }

  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v6 = 60;
    v7 = 1;
    v8 = 0x1000000000000;
    v5 = &unk_2A1F092C0;
    v9 = 1;
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v5, v2, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeKF::GetDynamicAccyMask(BlueFin::GlPeKF *this, int a2, unsigned int a3, int a4)
{
  if (*(this + 1110))
  {
    v5 = 50;
  }

  else
  {
    v5 = 100;
  }

  if (*(this + 402) <= 1500)
  {
    v6 = v5;
  }

  else
  {
    v6 = 400;
  }

  if (a4)
  {
    v8 = *(this + 7078);
    if (!*v8)
    {
      v16 = *(this + 56632);
      if (v16 < 2)
      {
LABEL_24:
        if (*(this + 57208))
        {
          v6 = 400;
        }

        else if (BlueFin::GlPeKF::IsVdrValid(this))
        {
          v6 = 50;
        }

        else
        {
          v20 = *(this + 2148);
          v21 = *(this + *(v20 - 24) + 17360);
            ;
          }

            ;
          }

          if (fabs(i) <= 0.0872664626)
          {
            v6 = 50;
          }

          else
          {
            v6 = 30;
          }
        }
      }

      else
      {
        v17 = v16 - 1;
        v18 = v8 + 1;
        while (!*v18++)
        {
          if (!--v17)
          {
            goto LABEL_24;
          }
        }
      }
    }

    if (*(this + 90) > a2 && *(this + 60665) == 1)
    {
      v9 = this + *(*(this + 2148) - 24) + 17184;
      v32 = *(v9 + 8);
      v33 = *(v9 + 3);
      if ((BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(this + 3424, &__src, &v32) & 1) == 0)
      {
        return *(this + 90);
      }
    }
  }

  else
  {
    BlueFin::GlSetBase::GlSetBase(&__src, v26, 0x13u, (this + *(*(this + 2148) - 24) + 17448));
    LOBYTE(v32) = v25;
    memcpy(&v32 + 8, __src, 4 * v25);
    WORD1(v32) = 0;
    BYTE1(v32) = 0;
    DWORD1(v32) = DWORD2(v32);
    BlueFin::GlSetIterator::operator++(&v32);
    if (BYTE1(v32) != v32)
    {
      while (1)
      {
        if (WORD1(v32) >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v12 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v32);
        v13 = *v12;
        LODWORD(v12) = v12[1];
        v29[0] = v13;
        v30 = v12;
        v31 = WORD1(v32);
        v14 = *(this + 7625);
        v27 = 7;
        v28[0] = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss((v14 + 119744), v29, &v27, v10, v11);
        if (v27 <= 6 && v28[0] - 1 <= 0x3E)
        {
          Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 7625) + 384), v27);
          if (Mgr)
          {
            break;
          }
        }

        BlueFin::GlSetIterator::operator++(&v32);
        if (BYTE1(v32) == v32)
        {
          return v6;
        }
      }

      (*(*Mgr + 80))(Mgr, v28);
    }
  }

  return v6;
}

uint64_t BlueFin::GlPeKF::GetDataForLowPowerDecision(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 57344;
  v5 = *(*(a1 + 57432) + 8);
  *a2 = (v5 - 1) < 2;
  *(a2 + 1) = (v5 - 3) < 3;
  *(a2 + 2) = BlueFin::GlPeKF::IsVdrValid(a1);
  v6 = *(v4 + 3624);
  v7 = *(v6 + 2744);
  v8 = *(v6 + 2576);
  if (v8)
  {
    v9 = v7 | (1 << v8);
  }

  else
  {
    v9 = v7;
  }

  *(a2 + 3) = (v9 & 0x10) != 0;
  *(a2 + 4) = *(v4 + 3364);
  *(a2 + 5) = (**(*(v4 + 3592) + 160) & 0x20) != 0;
  *(a2 + 6) = 0;
  v10 = *(v4 + 88);
  *(a2 + 12) = *(v10 + 1988);
  v11 = *(v4 + 3664);
  v26 = *(v11 + 192);
  memcpy(v30, *(v11 + 184), 4 * v26);
  v28 = 0;
  v27 = 0;
  v29 = v30[0];
  BlueFin::GlSetIterator::operator++(&v26);
  if (v27 == v26)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      if (v28 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v28;
      v15 = *v14;
      LODWORD(v14) = v14[1];
      v23[0] = v15;
      v24 = v14;
      v25 = v28;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v4 + 3664), v23, 0, 0);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v4 + 3664), v23, 0);
      if (BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas) && (*(PeMeas + 96) & 8) != 0 && *(MeMeas + 5) <= 2 && *(MeMeas + 29) >= 28.0)
      {
        ++v13;
      }

      BlueFin::GlSetIterator::operator++(&v26);
    }

    while (v27 != v26);
    v12 = v13 > 6;
    v10 = *(v4 + 88);
  }

  *(a2 + 7) = v12;
  v18 = *(v10 + 16);
  if (v18 != 1)
  {
    LOBYTE(v18) = *((*(*(a1 + 17184) + 168))() + 8) <= 5.0;
  }

  *(a2 + 8) = v18;
  v19 = a1 + 17184;
  v20 = *(a1 + 17184);
  *(a2 + 10) = *(a1 + 17184 + *(v20 - 24) + 241);
  *(a2 + 11) = *(a1 + 17184 + *(v20 - 24) + 240);
  v21 = BlueFin::GlPeKF::IsGood4Nav(a1) || *(v19 + *(v20 - 24) + 80) < 50.0;
  *(a2 + 9) = v21;
  *(a2 + 16) = *(v19 + *(v20 - 24) + 176) * 57.2957795;
  *(a2 + 24) = sqrt(*(v19 + *(v20 - 24) + 112) * *(v19 + *(v20 - 24) + 112) + *(v19 + *(v20 - 24) + 104) * *(v19 + *(v20 - 24) + 104));
  *(a2 + 32) = (*(v20 + 80))(a1 + 17184);
  result = BlueFin::GlSetBase::Cnt((v19 + *(*(a1 + 17184) - 24) + 264));
  *(a2 + 36) = result;
  *(a2 + 37) = *(a1 + 1519);
  *(a2 + 40) = 0;
  return result;
}

BOOL BlueFin::GlPeKF::SetAsstPosFromDNav(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  v4 = *(a2 + 24);
  v15 = *a2;
  v16 = *(a2 + 16);
  v5 = 20000.0;
  v6 = 90000.0;
  if ((*(a2 + 268) & 2) != 0)
  {
    v7 = *(a1 + 60936);
    if (*(v7 + 796) == 1)
    {
      v8 = *(v7 + 800) - 120;
      v9 = 25 * v8;
      if (25 * v8 <= 90000)
      {
        v9 = 90000;
      }

      v10 = 5 * v8;
      if (v10 <= v9)
      {
        v10 = v9;
      }

      v6 = v9;
      v5 = (v10 + 2000);
    }
  }

  v17 = v6 + v4;
  v18 = v5;
  v11 = *(a1 + 60952);
  v12 = *(a2 + 272);
  v13 = v12;
  if (v12 <= 0xFF9222FE)
  {
    v13 = v12;
  }

  v19 = 2;
  v20 = v13;
  v21 = &off_2A1F0B5F0;
  v22 = 0;
  *a4.i64 = v12;
  return BlueFin::GlPeAsstPosMgr::processAssistance(v11, &v15, 0, 1, &v19, 0, 0, v13, a4);
}

uint64_t BlueFin::GlPeKF::UpdateDeltaL5BiasM(BlueFin::GlPeKF *this, float a2)
{
  v4 = this + 57344;
  v5 = *(this + 7617);
  v6 = v5[247];
  (*(*v5 + 264))(v5);
  v7 = *(v4 + 464);
  v8 = (a2 - v6) + *(v7 + 20);
  *(v7 + 20) = v8;
  *(v7 + 32) = v8;
  *(v7 + 44) = v8;
  *(v7 + 60) = (a2 - v6) + *(v7 + 60);
  *(v7 + 128) = 0;
  *(v7 + 136) = 1077936128;
  v9 = *(*(this + 2148) + 360);

  return v9(this + 17184);
}

uint64_t BlueFin::GlPeKF::UpdateL5BiasM(BlueFin::GlPeKF *this, float a2)
{
  v4 = this + 57344;
  v5 = *(this + 7617);
  v6 = v5[247];
  (*(*v5 + 264))(v5);
  v7 = *(v4 + 464);
  v8 = (a2 - v6) + *(v7 + 20);
  *(v7 + 20) = v8;
  *(v7 + 32) = v8;
  *(v7 + 44) = v8;
  *(v7 + 60) = (a2 - v6) + *(v7 + 60);
  *(v7 + 128) = 0;
  *(v7 + 136) = 1077936128;
  v9 = *(*(this + 2148) + 360);

  return v9(this + 17184);
}

BOOL BlueFin::GlPeKF::IsLowPowerPowerModeReady(BlueFin::GlPeKF *this)
{
  v1 = (this + 57432);
  if (*(*(this + 7631) + 32) != 1)
  {
    return 0;
  }

  v3 = *(this + 7621);
  if (*(v3 + 2576))
  {
    v4 = *(v3 + 2580) == 5;
  }

  else
  {
    v4 = 0;
  }

  v6 = this + 17184;
  v7 = BlueFin::GlSignalIdSet::CntPrimarySignalSvIdSet((this + *(*(this + 2148) - 24) + 17448), 8);
  v8 = *(*(v1 + 438) + 48);
  if ((v8 - 4) < 5 || v8 == 2)
  {
    v24 = *v1;
    v23 = *(*v1 + 16) != 1;
  }

  else
  {
    v23 = 0;
    v24 = *v1;
  }

  v10 = v1[874];
  v26 = 0.0;
  v27 = 0.0;
  BlueFin::GlPeEnvironmentMonitor::GetEnvironmentGNSSSignalStr(v24 + 64, &v27, &v26);
  if (v23)
  {
    if (*(*(v1 + 446) + 120012) == 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & v4 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v7 & v4) != 1)
  {
    goto LABEL_22;
  }

  v11.n128_f32[0] = (*(*&v6[*(*v6 - 24)] + 16))(&v6[*(*v6 - 24)]);
  LODWORD(v13) = 1120403456;
  if (v11.n128_f32[0] <= 100.0)
  {
    v11.n128_f64[0] = v27;
    LOBYTE(v13) = *(*(v1 + 438) + 26224);
    if (v27 >= v13 && *(*v1 + 8) != 10 && *(*v1 + 16) != 3 && v10 >= 0x1F)
    {
      ++*(this + 15412);
      GlCustomLog(14, "LowPower ok\n", v11.n128_f64[0]);
      return *(this + 15412) > 5u;
    }
  }

LABEL_22:
  v14 = &v6[*(*(this + 2148) - 24)];
  (*(*v14 + 16))(v14, v11);
  LOBYTE(v16) = *(*(v1 + 438) + 26224);
  v17 = v16;
  v18 = 84;
  if (*(*v1 + 8) == 10)
  {
    v19 = 70;
  }

  else
  {
    v19 = 84;
  }

  v25 = v19;
  if (v15 > 100.0)
  {
    v20 = 70;
  }

  else
  {
    v20 = 84;
  }

  if (v4)
  {
    v21 = 84;
  }

  else
  {
    v21 = 70;
  }

  if (v7)
  {
    v22 = 84;
  }

  else
  {
    v22 = 70;
  }

  if (v27 < v17)
  {
    v18 = 70;
  }

  GlCustomLog(14, "LowPower NOT Ready %c %c %c %c %c \n", v22, v21, v20, v18, v25);
  result = 0;
  *(this + 15412) = 0;
  return result;
}

uint64_t BlueFin::GlPeKF::NeedToExitPowerSave(BlueFin::GlPeKF *this)
{
  v2 = (this + 57432);
  BlueFin::GlSetBase::GlSetBase(&v28, v29, 0x13u, (this + *(*(this + 2148) - 24) + 17448));
  v3 = BlueFin::GlSignalIdSet::CntPrimarySignalSvIdSet(&v28, 6);
  v27 = 0.0;
  v4 = *v2;
  BlueFin::GlPeEnvironmentMonitor::GetEnvironmentGNSSSignalStr(*v2 + 64, &v27, &v26);
  v6 = v2[438];
  v7 = *(v6 + 48);
  v22 = ((v7 - 4) < 5 || v7 == 2) && *(v4 + 16) != 1;
  v9 = v2[447];
  v10 = *(v9 + 8);
  if (!*v10)
  {
    v12 = *(v9 + 16);
    if (v12 < 2)
    {
      return 0;
    }

    v13 = v12 - 1;
    v14 = v10 + 1;
    while (!*v14++)
    {
      if (!--v13)
      {
        return 0;
      }
    }
  }

  if (v3)
  {
    LOBYTE(v5) = *(v6 + 26224);
    if (v27 >= v5 && *(v4 + 16) != 3 && (!v22 || *(v2[446] + 120012) == 1))
    {
      return 0;
    }

    v11 = 70;
  }

  else
  {
    v11 = 84;
  }

  BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet(&v24, &v28);
  v17 = 0;
  v18 = (v24 + 4 * v25 - 4);
  do
  {
    if (*v18)
    {
      v19 = *v18 - (((*v18 >> 1) & 0x5B6DB6DB) + ((*v18 >> 2) & 0x9249249));
      v17 = ((v19 + (v19 >> 3)) & 0xC71C71C7) + v17 - 63 * (((v19 + (v19 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v18;
  }

  while (v18 >= v24);
  LOBYTE(v16) = *(v2[438] + 26224);
  v23 = v17;
  v20 = 70;
  if (v27 < v16)
  {
    v20 = 84;
  }

  GlCustomLog(14, "LowPower Exit, NotEnoughSats:%c, SvIdCnt:%d,SigStrength:%c %.1f\n", v11, v23, v20, v27);
  *(this + 15412) = 0;
  return 1;
}

uint64_t _GLOBAL__sub_I_glpe_kfaltasst_cpp()
{
  dword_2A18BACF0 = 419;
  qword_2A18BACF8 = &BlueFin::GlPeCityFine::m_aotRegions;
  dword_2A18BAD00 = 102;
  qword_2A18BAD08 = &BlueFin::GlPeCityFine::m_aotIndex;
  dword_2A18BAD10 = -39;
  BlueFin::GlPeKFAltAsst::m_otCityFine = &unk_2A1F12398;
  return __cxa_atexit(BlueFin::GlPeCityFine::~GlPeCityFine, &BlueFin::GlPeKFAltAsst::m_otCityFine, &dword_29879A000);
}

BOOL BlueFin::GlPeLsq::PackSkfMeas_RR_SignalId(unsigned int **a1, uint64_t a2, BlueFin::GlSignalId *a3)
{
  v4 = *a1;
  v5 = (1 << (*(a3 + 4) & 0x1F)) & *(*(v4 + 8) + 4 * (*(a3 + 4) >> 5));
  if (v5)
  {
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v4, a3, 0, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
    *(a2 + 49) = 0;
    *(a2 + 36) = -1;
    *(a2 + 40) = 575;
    *(a2 + 44) = 2;
    *(a2 + 16) = **a1;
    if ((a2 + 32) != a3)
    {
      *(a2 + 32) = *a3;
      *(a2 + 36) = *(a3 + 1);
      *(a2 + 40) = *(a3 + 4);
    }

    v9.f32[0] = -*(MeMeas + 26);
    v9.i32[1] = *(MeMeas + 27);
    *a2 = vmulq_f64(vcvtq_f64_f32(v9), vdupq_n_s64(0x41B1DE784A000000uLL));
    *(a2 + 48) = 1;
    *(a2 + 24) = -1;
  }

  return v5 != 0;
}

uint64_t BlueFin::GlPeLsq::rr2Vel(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v190[5] = *MEMORY[0x29EDCA608];
  if (!v4)
  {
    v115 = "pastMeasIn";
    DeviceFaultNotify("glpe_lsq.cpp", 1450, "rr2Vel", "pastMeasIn");
    v116 = 1450;
    goto LABEL_119;
  }

  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  if ((*(v3 + 26) & 8) != 0)
  {
    v14 = *v7;
    if (v14 >= 8)
    {
      LOBYTE(v14) = 8;
    }

    *v7 = v14;
  }

  v15 = *(v6 + 56);
  v16 = *(v3 + 20);
  *(v6 + 64) = v16;
  bzero((v15 + 8), 8 * v16);
  v17 = *v8;
  *(v9 + 888) = v17;
  bzero((*(v9 + 880) + 8), 8 * v17);
  if (*v8 < 2)
  {
    return 0;
  }

  v177[1] = 0x400000004;
  memset(v178, 0, 32);
  v177[0] = v178;
  v18 = *(v12 + 6);
  if ((v18 & 0x200000) == 0)
  {
    *&v178[1] = *v9;
    v178[3] = *(v9 + 16);
  }

  v19 = *(v9 + 24);
  if ((v18 & 8) != 0)
  {
    v19 = 0.0;
  }

  *&v178[4] = v19;
  v20 = &v174 + 8;
  v174 = xmmword_298A43E90;
  v172 = &v175;
  v173 = &v176;
  v176 = 0;
  for (i = 1; i != 21; ++i)
  {
    v173[i] = v20;
    v20 += 32;
  }

  v168 = v170;
  *v169 = 0x1400000000;
  memset(v170, 0, sizeof(v170));
  v171 = 0;
  v164 = v166;
  *v165 = 0x1400000000;
  memset(v166, 0, sizeof(v166));
  v167 = 0;
  v161[0] = v162;
  v161[1] = 0x1400000000;
  memset(v162, 0, sizeof(v162));
  v163 = 0;
  v22 = v18 & 1 | 0x4C0;
  v23 = *v12;
  v24 = v12[1];
  v25 = *(v12 + 4);
  v152[0] = v177;
  v152[1] = v23;
  v152[2] = v24;
  v153 = v25;
  v154 = 2;
  v155 = v22;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0x4008000000000000;
  v148[0] = &v164;
  v148[1] = v161;
  v148[2] = &v172;
  v148[3] = &v168;
  v149 = 0u;
  v150 = 0u;
  v151 = 0;
  v145 = v147;
  v146 = 4;
  v147[1] = 0;
  v147[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v145, *v8);
  if (*v8 > v10)
  {
    v115 = "cNbRr <= lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 1496, "rr2Vel", "cNbRr <= lMeasInMaxNum");
    v116 = 1496;
    goto LABEL_119;
  }

  if ((*(**(v13 + 8) + 16))(*(v13 + 8), v152, v148, v11, &v145))
  {
    return 0;
  }

  v117 = v13;
  v141 = v144;
  memset(v144, 0, sizeof(v144));
  if (v165[0] >= *v8)
  {
    v27 = *v8;
  }

  else
  {
    v27 = v165[0];
  }

  v28 = *v8;
  v143 = 16;
  v142 = v27;
  v29 = &v144[1];
  bzero(&v144[1], 8 * v27);
  if (v27 >= 1)
  {
    v31 = (v27 + 1) - 1;
    v32 = (v161[0] + 8);
    v33 = (v164 + 8);
    do
    {
      v34 = *v33++;
      v35 = v34;
      v36 = *v32++;
      *v29++ = v35 - v36;
      --v31;
    }

    while (v31);
  }

  v37 = *(v12 + 20);
  v38 = v37 >= 1 && v37 < v28;
  if (v38)
  {
    v39 = 0;
    do
    {
      v40 = *&v144[v39 + 1];
      *&v179[v39++] = fabsf(v40);
    }

    while (v28 != v39);
    BlueFin::GlSortFloats(v179, v28, &v186, v30);
    *v8 = v37;
    BlueFin::SKFVectorDim<16>::SKFVectorDim(&v124, v37);
    if (*v8 >= 1)
    {
      v41 = 0;
      v42 = v164 + 8;
      v43 = v124 + 1;
      do
      {
        v43[v41] = *&v42[8 * *(&v186 + v41)];
        ++v41;
      }

      while (v41 < *v8);
    }

    BlueFin::SKFVectorDim<20>::SKFVectorDim(&v135, &v124);
    BlueFin::SKFVector::Clone(&v164, &v135);
    if (*v8 >= 1)
    {
      v44 = 0;
      v45 = v161[0] + 8;
      v46 = v124 + 1;
      do
      {
        v46[v44] = *(v45 + 8 * *(&v186 + v44));
        ++v44;
      }

      while (v44 < *v8);
    }

    BlueFin::SKFVectorDim<20>::SKFVectorDim(&v135, &v124);
    BlueFin::SKFVector::Clone(v161, &v135);
    if (*v8 >= 1)
    {
      v47 = 0;
      v48 = v141 + 1;
      v49 = v124 + 1;
      do
      {
        v49[v47] = v48[*(&v186 + v47)];
        ++v47;
      }

      while (v47 < *v8);
    }

    BlueFin::SKFVector::Clone(&v141, &v124);
    if (*v8 >= 1)
    {
      v50 = 0;
      v51 = v168 + 8;
      v52 = v124 + 1;
      do
      {
        v52[v50] = *&v51[8 * *(&v186 + v50)];
        ++v50;
      }

      while (v50 < *v8);
    }

    BlueFin::SKFVectorDim<20>::SKFVectorDim(&v135, &v124);
    BlueFin::SKFVector::Clone(&v168, &v135);
    v53 = &v131 + 8;
    v131 = xmmword_298A41E60;
    v129 = v132;
    v130 = &v133;
    v133 = 0;
    for (j = 1; j != 17; ++j)
    {
      v130[j] = v53;
      v53 += 32;
    }

    BlueFin::BigMatrix::Null(&v129, *v8, SDWORD1(v174));
    v55 = *v8;
    if (v55 >= 1)
    {
      v56 = DWORD1(v131);
      v57 = v173 + 1;
      v58 = v130;
      v59 = (DWORD1(v131) + 1) - 1;
      v60 = 1;
      do
      {
        if (v56 >= 1)
        {
          v61 = (v58[v60] + 8);
          v62 = (v57[*(&v186 + v60 - 1)] + 8);
          v63 = v59;
          do
          {
            v64 = *v62++;
            *v61++ = v64;
            --v63;
          }

          while (v63);
          LOBYTE(v55) = *v8;
        }

        v38 = v60++ < v55;
      }

      while (v38);
    }

    v65 = &v137 + 8;
    v137 = xmmword_298A43E90;
    v135 = v138;
    v136 = &v139;
    v139 = 0;
    for (k = 1; k != 21; ++k)
    {
      v136[k] = v65;
      v65 += 32;
    }

    BlueFin::BigMatrix::Clone(&v135, &v129);
    BlueFin::BigMatrix::Clone(&v172, &v135);
  }

  v67 = *(v12 + 6);
  if ((v67 & 0x200000) != 0)
  {
    BlueFin::GlPeLsq::AddPMeas(&v164, v161, &v168, &v172, 2, 0.0225);
    BlueFin::GlPeLsq::AddPMeas(&v164, v161, &v168, &v172, 1, 0.0225);
    v67 = *(v12 + 6);
  }

  if ((v67 & 8) == 0 && ((v67 & 4) != 0 || *v8 <= 4))
  {
    BlueFin::GlPeLsq::AddPMeas(&v164, v161, &v168, &v172, 3, 0.0225);
    v67 = *(v12 + 6);
  }

  if ((v67 & 0xA) == 2 && v174 <= 15)
  {
    BlueFin::GlPeLsq::AddPMeas(&v164, v161, &v168, &v172, 4, *(v9 + 32));
  }

  v69 = v169[0];
  v70 = &v137 + 8;
  v137 = xmmword_298A43EA0;
  v135 = v138;
  v136 = &v140;
  v140 = 0;
  for (m = 1; m != 21; ++m)
  {
    v136[m] = v70;
    v70 += 160;
  }

  BlueFin::BigMatrix::Clone(&v135, v69, v69);
  if (v69 >= 1)
  {
    v72 = v136;
    v73 = *(v12 + 6);
    LOWORD(v74) = 1;
    v75 = v168;
    do
    {
      v74 = v74;
      v76 = v72[v74];
      *(v76 + 8 * v74) = 0x3FF0000000000000;
      if ((v73 & 0x10) != 0)
      {
        *(v76 + 8 * v74) = 1.0 / *&v75[8 * v74];
      }

      LOWORD(v74) = v74 + 1;
    }

    while (v69 >= v74);
  }

  v77 = v174;
  v78 = DWORD1(v174);
  v79 = &v131 + 8;
  v131 = xmmword_298A43E90;
  v129 = v132;
  v130 = &v134;
  v134 = 0;
  for (n = 1; n != 21; ++n)
  {
    v130[n] = v79;
    v79 += 32;
  }

  BlueFin::BigMatrix::Clone(&v129, v77, v78);
  if (v77 >= 1)
  {
    v81 = v173;
    v82 = v130;
    for (ii = 1; ii <= v77; ++ii)
    {
      if (v78 >= 1)
      {
        v84 = (v82[ii] + 8);
        v85 = (v81[ii] + 8);
        v86 = (v78 + 1) - 1;
        do
        {
          v87 = *v85++;
          *v84++ = v87;
          --v86;
        }

        while (v86);
      }
    }
  }

  v88 = &v126 + 8;
  v126 = xmmword_298A43EB0;
  v124 = &v127;
  v125 = &v128;
  v128 = 0;
  for (jj = 1; jj != 5; ++jj)
  {
    v125[jj] = v88;
    v88 += 160;
  }

  BlueFin::BigMatrix::mult(&v124, 1, &v129, &v135);
  v90 = &v188 + 8;
  v188 = xmmword_298A41E80;
  v186 = &v189;
  v187 = v190;
  v190[0] = 0;
  for (kk = 1; kk != 5; ++kk)
  {
    v187[kk] = v90;
    v90 += 32;
  }

  BlueFin::BigMatrix::mult_sym(&v186, &v124, &v129);
  BlueFin::BigMatrix::Null(&v135, v165[0], 1);
  v92 = v165[0];
  if (v165[0] >= 1)
  {
    v93 = v164;
    v94 = v161[0];
    v95 = 1;
    v96 = v136;
    do
    {
      *(v96[v95] + 8) = *&v93[8 * v95] - *(v94 + 8 * v95);
      ++v95;
    }

    while (v92 >= v95);
  }

  v97 = 0;
  v121 = xmmword_298A43EC0;
  v119 = &v122;
  v120 = &v123;
  v123 = 0;
  do
  {
    v120[v97 + 1] = &v121 + v97 * 8 + 8;
    ++v97;
  }

  while (v97 != 4);
  BlueFin::BigMatrix::mult(&v119, &v124, &v135);
  v98 = 0;
  v99 = v120 + 1;
  do
  {
    *(&v183 + v98 * 8) = *(v99[v98] + 8);
    ++v98;
  }

  while (v98 != 4);
  v118 = 0.0;
  v100 = BlueFin::BigMatrix::cholsl(&v186, &v183, v180.f64, &v118, 0);
  result = 0;
  if (v100 && v118 >= 0.0001)
  {
    *v9 = vaddq_f64(v180, *v9);
    *(v9 + 16) = v181 + *(v9 + 16);
    if ((v12[3] & 8) == 0)
    {
      *(v9 + 24) = v182 + *(v9 + 24);
    }

    BlueFin::SKFVectorDim<100>::SKFVectorDim(v179, &v141);
    BlueFin::SKFVector::Clone((v9 + 56), v179);
    *(v9 + 1704) = *(v11 + 16);
    v101 = *(v12 + 6);
    if ((v101 & 0x80) != 0)
    {
      v183 = 0x3FF0000000000000uLL;
      v185 = 0;
      v184 = 0;
      v105 = BlueFin::BigMatrix::cholsl(&v186, &v183, v180.f64, 0, 0);
      v102 = v180.f64[0];
      v183 = xmmword_298A436E0;
      v185 = 0;
      v184 = 0;
      v106 = BlueFin::BigMatrix::cholsl(&v186, &v183, v180.f64, 0, 0);
      v183 = 0uLL;
      v184 = 0;
      v185 = 0x3FF0000000000000;
      if (!v105)
      {
        v102 = 400.0;
      }

      if (v106)
      {
        v103 = v180.f64[1];
      }

      else
      {
        v103 = 400.0;
      }

      v107 = BlueFin::BigMatrix::cholsl(&v186, &v183, v180.f64, 0, 0);
      v104 = v182;
      if (!v107)
      {
        v104 = 400.0;
      }

      v101 = *(v12 + 6);
    }

    else
    {
      v102 = 1000000.0;
      v103 = 1000000.0;
      v104 = 1000000.0;
    }

    *(v9 + 40) = v102;
    *(v9 + 48) = v103;
    *(v9 + 32) = v104;
    if ((v101 & 0x800) == 0)
    {
      *(v9 + 888) = 0;
      return 1;
    }

    v108 = v177[0];
    *(v177[0] + 8) = *v9;
    *(v108 + 16) = *(v9 + 8);
    *(v108 + 24) = *(v9 + 16);
    v109 = *(v9 + 24);
    if ((v101 & 8) != 0)
    {
      v109 = 0.0;
    }

    *(v108 + 32) = v109;
    if (BlueFin::GlSetBase::Highest(&v145) < v10)
    {
      if ((*(**(v117 + 8) + 16))(*(v117 + 8), v152, v148, v11, &v145))
      {
        return 0;
      }

      v110 = *(v9 + 888);
      if (v110 >= 1)
      {
        v111 = v164;
        v112 = v161[0];
        v113 = *(v9 + 880);
        v114 = 1;
        do
        {
          *(v113 + 8 * v114) = (*&v111[8 * v114] - *(v112 + 8 * v114)) * 100.0;
          ++v114;
        }

        while (v110 >= v114);
      }

      return 1;
    }

    v115 = "otMeasSet.Highest() < lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 1731, "rr2Vel", "otMeasSet.Highest() < lMeasInMaxNum");
    v116 = 1731;
LABEL_119:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", v116, v115);
  }

  return result;
}

void BlueFin::GlPeLsq::AddPMeas(BlueFin::GlPeLsq *this, BlueFin::SKFVector *a2, BlueFin::SKFVector *a3, BlueFin::SKFVector *a4, BlueFin::BigMatrix *a5, double a6)
{
  if (*(this + 2) >= *(this + 3))
  {
    DeviceFaultNotify("glpe_lsq.cpp", 1766, "AddPMeas", "rotz.GetLen() < rotz.GetMaxLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 1766, "rotz.GetLen() < rotz.GetMaxLen()");
  }

  v6 = a5;
  BlueFin::SKFVector::AddLen(this);
  *(*this + 8 * *(this + 2)) = 0;
  BlueFin::SKFVector::AddLen(a2);
  *(*a2 + 8 * *(a2 + 2)) = 0;
  BlueFin::SKFVector::AddLen(a3);
  *(*a3 + 8 * *(a3 + 2)) = a6;
  BlueFin::BigMatrix::AddRow(a4);
  *(*(*(a4 + 1) + 8 * *(a4 + 4)) + 8 * v6) = 0x3FF0000000000000;
}

uint64_t BlueFin::GlPeLsq::LsVel(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = v6;
  v8 = v2;
  v9 = 0;
  v73 = *MEMORY[0x29EDCA608];
  do
  {
    v10 = &v53[1] + v9 + 12;
    v10[32] = 0;
    *(v10 + 9) = -1;
    *(v10 + 20) = 575;
    v9 += 56;
  }

  while (v9 != 896);
  v42 = v3;
  v43 = v5;
  for (i = 0; i != 564; i += 3)
  {
    v12 = &v65[i];
    *v12 = 0;
    v12[1] = -1;
    *(v12 + 4) = 575;
  }

  v13 = *v2;
  BlueFin::GlSetBase::GlSetBase(&__src, v46, 0x13u, v4);
  v48 = &v50;
  LOBYTE(v49) = 19;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, 28);
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v48, v13 + 1);
  BlueFin::GlSetBase::operator=(&__src, &v48);
  v46[1] = v51;
  v46[2] = v52;
  *v47 = v53[0];
  *&v47[12] = *(v53 + 12);
  v46[0] = v50;
  LOBYTE(v48) = v45;
  memcpy(&v49, __src, 4 * v45);
  WORD1(v48) = 0;
  BYTE1(v48) = 0;
  HIDWORD(v48) = v49;
  BlueFin::GlSetIterator::operator++(&v48);
  v15 = 0;
  if (BYTE1(v48) != v48)
  {
    v15 = 0;
    while (1)
    {
      v16 = WORD1(v48);
      if (WORD1(v48) >= 0x23FuLL)
      {
        break;
      }

      v17 = *v8;
      v18 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v48);
      v19 = *v18;
      v20 = v18[1];
      LOBYTE(__src) = *v18;
      HIDWORD(__src) = v20;
      v45 = WORD1(v48);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v17, &__src, 0);
      if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas))
      {
        v22 = &v65[3 * v15];
        *v22 = v19;
        v22[1] = v20;
        *(v22 + 4) = v16;
        v23 = *v8;
        LOBYTE(__src) = v19;
        HIDWORD(__src) = v20;
        v45 = v16;
        *(&v62 + v15++) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v23, &__src, 0, 0) + 27);
      }

      BlueFin::GlSetIterator::operator++(&v48);
      if (BYTE1(v48) == v48)
      {
        goto LABEL_11;
      }
    }

    v39 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v40 = "glsignalid.h";
    v41 = 578;
LABEL_40:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v40, v41, v39);
  }

LABEL_11:
  v24 = v15;
  BlueFin::GlSortFloats(&v62, v24, v55, v14);
  if ((v15 & 0xF0) != 0)
  {
    v25 = 16;
  }

  else
  {
    v25 = v24;
  }

  if (v24)
  {
    v26 = 0;
    LOBYTE(v27) = 0;
    do
    {
      v28 = &v65[3 * *(v55 + v26)];
      LOBYTE(v48) = *v28;
      HIDWORD(v48) = v28[1];
      LOWORD(v49) = *(v28 + 4);
      if (BlueFin::GlPeLsq::PackSkfMeas_RR_SignalId(v8, &v53[1] + 56 * v27 + 12, &v48))
      {
        v27 = (v27 + 1);
        if (v27 >= v25)
        {
          break;
        }
      }

      ++v26;
    }

    while (v15 != v26);
    if (v27 < 3)
    {
      return 0;
    }

    else
    {
      *(v43 + 1704) = **v8;
      if ((*(v42 + 26) & 2) != 0)
      {
        v29 = v8[4];
        if (!v29)
        {
          v39 = "m_pOscMgr";
          DeviceFaultNotify("glpe_lsq.cpp", 1800, "LsVel", "m_pOscMgr");
          v40 = "glpe_lsq.cpp";
          v41 = 1800;
          goto LABEL_40;
        }

        v30 = *(v29 + 1) * 0.000000001;
        v31 = *(v29 + 5) * 0.000000001;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
        }

        v32 = v31 * 299792458.0 * (v31 * 299792458.0);
        if (v7 > 0.0)
        {
          v32 = v7;
        }

        *(v43 + 24) = v30 * 299792458.0;
        *(v43 + 32) = v32;
      }

      *(v43 + 40) = vdupq_n_s64(0x4079000000000000uLL);
      *(v43 + 64) = 16;
      v33 = *(v43 + 56);
      *(v33 + 120) = 0u;
      *(v33 + 104) = 0u;
      *(v33 + 88) = 0u;
      *(v33 + 72) = 0u;
      *(v33 + 56) = 0u;
      *(v33 + 40) = 0u;
      *(v33 + 24) = 0u;
      *(v33 + 8) = 0u;
      v24 = BlueFin::GlPeLsq::rr2Vel(v8, v42);
      if ((*(v42 + 24) & 0x40) != 0)
      {
        v62 = v64;
        v63 = 19;
        memset(v64, 0, 76);
        v34 = v27;
        if (v27 >= 1)
        {
          v35 = &v54;
          do
          {
            if (*v35 == 2)
            {
              v64[*(v35 - 2) >> 5] |= 1 << *(v35 - 2);
            }

            v35 += 14;
            --v34;
          }

          while (v34);
        }

        v36 = v8[1];
        v55[0] = 0;
        v56 = v58;
        v57 = 8;
        memset(v58, 0, 32);
        v59 = xmmword_298A41DA0;
        v60 = vdup_n_s32(0x42C60000u);
        v61 = 1120272384;
        BlueFin::stDops::stDops(v65, v55);
        v72 = v36;
        v37 = **v8;
        BlueFin::GlSignalIdSet::GetSvIdSet(&v48, &v62);
        LODWORD(__src) = 0;
        BlueFin::GlPeDops::GetDops(v65, v37);
        BlueFin::stDops::operator=(v43 + 1712, v55);
        *(v43 + 1712) = v37;
        if (*(v43 + 1772) < 40.0)
        {
          return v24;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v65[0] = 0;
        v66 = v68;
        v67 = 8;
        memset(v68, 0, 32);
        v69 = xmmword_298A41DA0;
        v70 = vdup_n_s32(0x42C60000u);
        v71 = 1120272384;
        BlueFin::stDops::operator=(v43 + 1712, v65);
      }
    }
  }

  return v24;
}

uint64_t BlueFin::GlPeLsq::rr2VelDeals(unsigned int **a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, char *a6)
{
  v164 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v93 = "pastMeasIn";
    DeviceFaultNotify("glpe_lsq.cpp", 1873, "rr2VelDeals", "pastMeasIn");
    v94 = 1873;
    goto LABEL_86;
  }

  v13 = a5 + 56;
  v12 = *(a5 + 56);
  v14 = *a6;
  *(a5 + 64) = v14;
  bzero((v12 + 8), 8 * v14);
  v15 = *a6;
  *(v13 + 832) = v15;
  bzero((*(v13 + 824) + 8), 8 * v15);
  if (*a6 < 3)
  {
    return 0;
  }

  v134[1] = 0x400000004;
  v16 = *(a5 + 16);
  v136 = *a5;
  v135 = 0;
  v134[0] = &v135;
  v137 = v16;
  v17 = &v131[2];
  *v131 = xmmword_298A43ED0;
  v129 = &v132;
  v130 = &v133;
  v133 = 0;
  for (i = 1; i != 20; ++i)
  {
    v130[i] = v17;
    v17 += 8;
  }

  v127[0] = v128;
  v127[1] = 0x1300000000;
  memset(v128, 0, sizeof(v128));
  v124 = v126;
  *v125 = 0x1300000000;
  memset(v126, 0, sizeof(v126));
  v122[0] = v123;
  v122[1] = 0x1300000000;
  memset(v123, 0, sizeof(v123));
  v19 = a2[3] & 1 | 0x4C0;
  v20 = *a2;
  v21 = a2[1];
  v22 = *(a2 + 4);
  v113[0] = v134;
  v113[1] = v20;
  v113[2] = v21;
  v114 = v22;
  v115 = 2;
  v116 = v19;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0x4008000000000000;
  v109[0] = &v124;
  v109[1] = v122;
  v109[2] = &v129;
  v109[3] = v127;
  v110 = 0u;
  v111 = 0u;
  v112 = 0;
  v106 = v108;
  v107 = 4;
  v108[1] = 0;
  v108[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v106, *a6);
  if (*a6 > a4)
  {
    v93 = "cNbRr <= lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 1909, "rr2VelDeals", "cNbRr <= lMeasInMaxNum");
    v94 = 1909;
    goto LABEL_86;
  }

  if ((*(*a1[1] + 16))(a1[1], v113, v109, a3, &v106))
  {
    return 0;
  }

  v95 = a4;
  v102 = v105;
  memset(v105, 0, sizeof(v105));
  if (v125[0] >= *a6)
  {
    v24 = *a6;
  }

  else
  {
    v24 = v125[0];
  }

  v104 = 15;
  v103 = v24;
  v25 = &v105[8];
  bzero(&v105[8], 8 * v24);
  if (v24 >= 1)
  {
    v26 = (v24 + 1) - 1;
    v27 = (v122[0] + 8);
    v28 = v124 + 1;
    do
    {
      v29 = *v28++;
      v30 = v29;
      v31 = *v27++;
      *v25++ = v30 - v31;
      --v26;
    }

    while (v26);
  }

  BlueFin::SKFVectorDim<100>::SKFVectorDim(&v96, &v102);
  BlueFin::SKFVector::Clone(v13, &v96);
  v32 = *(a2 + 6);
  if ((v32 & 0x200000) != 0)
  {
    BlueFin::GlPeLsq::AddPMeas(&v124, v122, v127, &v129, 2, 0.0225);
    BlueFin::GlPeLsq::AddPMeas(&v124, v122, v127, &v129, 1, 0.0225);
    v32 = *(a2 + 6);
  }

  v33 = v131[0];
  if ((v32 & 8) == 0)
  {
    v34 = *a6 > 4 && (v32 & 4) == 0;
    if (!v34 && v131[0] <= 15)
    {
      BlueFin::GlPeLsq::AddPMeas(&v124, v122, v127, &v129, 3, 0.0225);
      v32 = *(a2 + 6);
      v33 = v131[0];
    }
  }

  if ((v32 & 0xA) == 2 && v33 <= 15)
  {
    BlueFin::GlPeLsq::AddPMeas(&v124, v122, v127, &v129, 4, *(a5 + 32));
    v33 = v131[0];
  }

  v37 = v131[1];
  v38 = &v98[1];
  *v98 = xmmword_298A43ED0;
  v96 = &v98[2];
  v97 = &v101;
  v101 = 0;
  for (j = 8; j != 160; j += 8)
  {
    *&v97[j] = v38;
    v38 += 4;
  }

  BlueFin::BigMatrix::Clone(&v96, v33, v37);
  v40 = &v155[16];
  *&v155[8] = xmmword_298A43EE0;
  v154 = &v155[24];
  *v155 = &v158;
  v158 = 0;
  for (k = 8; k != 40; k += 8)
  {
    *(*v155 + k) = v40;
    v40 += 152;
  }

  BlueFin::BigMatrix::Clone(&v154, v37, v33);
  if (v33 >= 1)
  {
    v42 = *(a2 + 6);
    v43 = v127[0];
    v44 = v130;
    v45 = v97;
    v46 = *v155 + 8;
    v47 = 1;
    do
    {
      v48 = 1.0;
      if ((v42 & 0x10) != 0)
      {
        v48 = 1.0 / *(v43 + 8 * v47);
      }

      if (v37 >= 1)
      {
        v49 = (*&v45[8 * v47] + 8);
        v50 = (v44[v47] + 8);
        v51 = v46;
        v52 = (v37 + 1) - 1;
        do
        {
          v53 = *v50++;
          *v49++ = v53;
          v54 = v48 * v53;
          v55 = *v51++;
          *(v55 + 8 * v47) = v54;
          --v52;
        }

        while (v52);
      }

      ++v47;
    }

    while (v47 != v33 + 1);
  }

  v56 = &v151 + 8;
  v151 = xmmword_298A41E80;
  v149 = &v152;
  v150 = &v153;
  v153 = 0;
  for (m = 1; m != 5; ++m)
  {
    v150[m] = v56;
    v56 += 32;
  }

  BlueFin::BigMatrix::mult_sym(&v149, &v154, &v96);
  v58 = 0;
  v59 = v125[0];
  *v146 = xmmword_298A43EF0;
  v144 = &v146[2];
  v145 = &v148;
  v148 = 0;
  do
  {
    *&v145[v58 * 8 + 8] = &v146[v58 + 1];
    ++v58;
  }

  while (v58 != 19);
  BlueFin::BigMatrix::Clone(&v144, v59, 1);
  v60 = v125[0];
  if (v125[0] >= 1)
  {
    v61 = (v145 + 8);
    v62 = (v122[0] + 8);
    v63 = v124 + 1;
    do
    {
      v64 = *v63++;
      v65 = v64;
      v66 = *v62++;
      v67 = v65 - v66;
      v68 = *v61++;
      *(v68 + 8) = v67;
      --v60;
    }

    while (v60);
  }

  v69 = 0;
  v141 = xmmword_298A43EC0;
  v139 = &v142;
  v140 = &v143;
  v143 = 0;
  do
  {
    v140[v69 + 1] = &v141 + v69 * 8 + 8;
    ++v69;
  }

  while (v69 != 4);
  BlueFin::BigMatrix::mult(&v139, &v154, &v144);
  v70 = 0;
  v71 = v140 + 1;
  do
  {
    *(&v161 + v70 * 8) = *(v71[v70] + 8);
    ++v70;
  }

  while (v70 != 4);
  v138 = 0.0;
  if (!BlueFin::BigMatrix::cholsl(&v149, &v161, v159.f64, &v138, 0) || v138 < 0.0001)
  {
    return 0;
  }

  v72 = vaddq_f64(v160, *(a5 + 16));
  *a5 = vaddq_f64(v159, *a5);
  *(a5 + 16) = v72;
  v73 = *(a2 + 6);
  if ((v73 & 0x80) != 0)
  {
    v161 = 0x3FF0000000000000uLL;
    v162 = 0;
    v163 = 0;
    v77 = BlueFin::BigMatrix::cholsl(&v149, &v161, v159.f64, 0, 0);
    v74 = v159.f64[0];
    v161 = xmmword_298A436E0;
    v162 = 0;
    v163 = 0;
    v78 = BlueFin::BigMatrix::cholsl(&v149, &v161, v159.f64, 0, 0);
    v161 = 0uLL;
    v162 = 0;
    v163 = 0x3FF0000000000000;
    if (!v77)
    {
      v74 = 400.0;
    }

    if (v78)
    {
      v75 = v159.f64[1];
    }

    else
    {
      v75 = 400.0;
    }

    v79 = BlueFin::BigMatrix::cholsl(&v149, &v161, v159.f64, 0, 0);
    v76 = v160.f64[1];
    if (!v79)
    {
      v76 = 400.0;
    }

    v73 = *(a2 + 6);
  }

  else
  {
    v74 = 1000000.0;
    v75 = 1000000.0;
    v76 = 1000000.0;
  }

  v80 = v95;
  *(a5 + 40) = v74;
  *(a5 + 48) = v75;
  *(a5 + 32) = v76;
  if ((v73 & 0x40) != 0)
  {
    v154 = &v155[4];
    v155[0] = 19;
    memset(&v155[4], 0, 32);
    v156 = 0u;
    memset(v157, 0, sizeof(v157));
    v81 = *a6;
    if (v81 >= 1)
    {
      v82 = (a3 + 44);
      do
      {
        if (*v82 == 2)
        {
          *&v155[4 * (*(v82 - 2) >> 5) + 4] |= 1 << *(v82 - 2);
        }

        v82 += 14;
        --v81;
      }

      while (v81);
    }

    v83 = a1[1];
    LODWORD(v144) = 0;
    v145 = v146 + 4;
    LOBYTE(v146[0]) = 8;
    *(v146 + 4) = 0uLL;
    *(&v146[2] + 4) = 0uLL;
    *&v146[5] = xmmword_298A41DA0;
    v146[7] = vdup_n_s32(0x42C60000u);
    v147 = 1120272384;
    BlueFin::stDops::stDops(&v96, &v144);
    v100 = v83;
    v84 = **a1;
    BlueFin::GlSignalIdSet::GetSvIdSet(&v149, &v154);
    LODWORD(v139) = 0;
    BlueFin::GlPeDops::GetDops(&v96, v84);
    BlueFin::stDops::operator=(a5 + 1712, &v144);
    *(a5 + 1712) = v84;
    v80 = v95;
  }

  else
  {
    LODWORD(v96) = 0;
    v97 = v98 + 4;
    LOBYTE(v98[0]) = 8;
    *(v98 + 4) = 0u;
    *(&v98[2] + 4) = 0u;
    *&v98[5] = xmmword_298A41DA0;
    v98[7] = vdup_n_s32(0x42C60000u);
    v99 = 1120272384;
    BlueFin::stDops::operator=(a5 + 1712, &v96);
  }

  if ((*(a2 + 25) & 8) != 0)
  {
    v85 = v134[0];
    *(v134[0] + 8) = *a5;
    v85[2] = *(a5 + 8);
    v85[3] = *(a5 + 16);
    v85[4] = *(a5 + 24);
    if (BlueFin::GlSetBase::Highest(&v106) < v80)
    {
      if (!(*(*a1[1] + 16))(a1[1], v113, v109, a3, &v106))
      {
        v86 = *(a5 + 888);
        if (v86 >= 1)
        {
          v87 = (*(a5 + 880) + 8);
          v88 = (v122[0] + 8);
          v89 = v124 + 1;
          do
          {
            v90 = *v89++;
            v91 = v90;
            v92 = *v88++;
            *v87++ = (v91 - v92) * 100.0;
            --v86;
          }

          while (v86);
        }

        return 1;
      }

      return 0;
    }

    v93 = "otMeasSet.Highest() < lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 2002, "rr2VelDeals", "otMeasSet.Highest() < lMeasInMaxNum");
    v94 = 2002;
LABEL_86:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", v94, v93);
  }

  *(a5 + 888) = 0;
  return 1;
}

uint64_t BlueFin::GlPeLsq::LsVelDeals(unsigned int **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a2 + 20) != 15)
  {
    DeviceFaultNotify("glpe_lsq.cpp", 2136, "LsVelDeals", "otInp.m_cNumMeasLimit == DEALS_MAX_MEAS_SUBSET");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 2136, "otInp.m_cNumMeasLimit == DEALS_MAX_MEAS_SUBSET");
  }

  for (i = 0; i != 840; i += 56)
  {
    v8 = &v13[i];
    v8[32] = 0;
    *(v8 + 9) = -1;
    *(v8 + 20) = 575;
  }

  v9 = BlueFin::GlPeLsq::PackSkfMeas_LsRrDeals(a1, v13, a3);
  v12 = v9;
  if (v9 < 3)
  {
    return 0;
  }

  *(a4 + 40) = vdupq_n_s64(0x4079000000000000uLL);
  *(a4 + 64) = 15;
  v10 = *(a4 + 56);
  *(v10 + 120) = 0;
  *(v10 + 104) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 8) = 0u;
  return BlueFin::GlPeLsq::rr2VelDeals(a1, a2, v13, v9, a4, &v12);
}

uint64_t BlueFin::GlPeLsq::PackSkfMeas_LsRrDeals(unsigned int **a1, uint64_t a2, const void **a3)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v23 = "pSkfMeas";
    DeviceFaultNotify("glpe_lsq.cpp", 2179, "PackSkfMeas_LsRrDeals", "pSkfMeas");
    v24 = "glpe_lsq.cpp";
    v25 = 2179;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v24, v25, v23);
  }

  for (i = 0; i != 192; i += 12)
  {
    v6 = &v35[1] + i + 12;
    *v6 = 0;
    *(v6 + 1) = -1;
    *(v6 + 4) = 575;
  }

  v7 = *a1;
  BlueFin::GlSetBase::GlSetBase(&__src, v34, 0x13u, a3);
  v36 = &v38;
  v37 = 19;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v36, v7 + 1);
  BlueFin::GlSetBase::operator=(&__src, &v36);
  v34[1] = v39;
  v34[2] = v40;
  v35[0] = *v41;
  *(v35 + 12) = *&v41[12];
  v34[0] = v38;
  v27 = v33;
  memcpy(v31, __src, 4 * v33);
  v29 = 0;
  v28 = 0;
  v30 = v31[0];
  BlueFin::GlSetIterator::operator++(&v27);
  if (v28 == v27)
  {
    LOBYTE(v8) = 0;
    return v8;
  }

  LOBYTE(v9) = 0;
  do
  {
    v10 = v29;
    if (v29 >= 0x23FuLL)
    {
      v23 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v24 = "glsignalid.h";
      v25 = 578;
      goto LABEL_19;
    }

    v11 = *a1;
    v12 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v29;
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(__src) = *v12;
    HIDWORD(__src) = v14;
    v33 = v29;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v11, &__src, 0);
    if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas))
    {
      v16 = &v35[1] + 12 * v9 + 12;
      *v16 = v13;
      *(v16 + 1) = v14;
      *(v16 + 4) = v10;
      v17 = *a1;
      LOBYTE(__src) = v13;
      HIDWORD(__src) = v14;
      v33 = v10;
      *(&v36 + v9) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v17, &__src, 0, 0) + 27);
      LOBYTE(v9) = v9 + 1;
    }

    BlueFin::GlSetIterator::operator++(&v27);
  }

  while (v28 != v27);
  LOBYTE(v8) = v9;
  BlueFin::GlSortFloats(&v36, v9, &__src, v18);
  if (v9)
  {
    LOBYTE(v8) = 0;
    v9 = v9;
    p_src = &__src;
    do
    {
      v20 = *p_src;
      p_src = (p_src + 1);
      v21 = &v35[1] + 6 * v20 + 6;
      if (((*(*a3 + (v21[4] >> 5)) >> (v21[4] & 0x1F)) & 1) != 0 && BlueFin::GlPeLsq::PackSkfMeas_RR_SignalId(a1, a2 + 56 * v8, v21))
      {
        v8 = (v8 + 1);
        if (v8 > 14)
        {
          break;
        }
      }

      --v9;
    }

    while (v9);
  }

  return v8;
}

BlueFin::SKFVector *BlueFin::SKFVectorDim<20>::SKFVectorDim(BlueFin::SKFVector *a1, const BlueFin::SKFVector *a2)
{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 20;
  if (v2 >= 21)
  {
    DeviceFaultNotify("glpe_matrix.h", 505, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 505, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}

unint64_t BlueFin::GlPeNavGnssKF::InitializeNavGnssKF(BlueFin::GlPeNavGnssKF *this, const BlueFin::GlPeNavGnssState *a2)
{
  BlueFin::GlPeNavGnssState::operator=(this + *(*this - 24), a2);
  *(this + *(*this - 24) + 196) = 0;
  BlueFin::BigMatrix::Null((this + 32), 12, 12);
  if (*(this + 26))
  {
    BlueFin::BigMatrix::Null((this + 32), 12, 12);
    v4 = *this;
    v5 = *(this + *(*this - 24) + 80) * 0.707106781;
    v6 = *(this + 5);
    v7 = v6[2];
    *(v6[1] + 8) = v5 * v5;
    v8 = *(this + *(v4 - 24) + 80) * 0.707106781;
    v9 = v6[4];
    *(v6[3] + 24) = v8 * v8;
    LODWORD(v8) = *(this + *(v4 - 24) + 84);
    v10 = v6[6];
    *(v6[5] + 40) = (*&v8 * *&v8);
    v11 = *(this + *(v4 - 24) + 128) * 0.707106781;
    *(v7 + 16) = v11 * v11;
    v12 = *(this + *(v4 - 24) + 128) * 0.707106781;
    *(v9 + 32) = v12 * v12;
    LODWORD(v12) = *(this + *(v4 - 24) + 140);
    *(v10 + 48) = (*&v12 * *&v12);
    LODWORD(v12) = *(this + *(v4 - 24) + 96);
    *(v6[7] + 56) = fmax((*&v12 * *&v12), 1.0e-12);
    v13 = (this + *(v4 - 24));
  }

  else
  {
    v14 = *(a2 + 21);
    v15 = *(a2 + 20) * 0.707106781 * (*(a2 + 20) * 0.707106781);
    v6 = *(this + 5);
    v16 = v6[2];
    *(v6[1] + 8) = v15;
    v17 = v6[4];
    *(v6[3] + 24) = v15;
    v18 = v6[6];
    *(v6[5] + 40) = (v14 * v14);
    *(v16 + 16) = (*(a2 + 32) * *(a2 + 32));
    *(v17 + 32) = 0x4023BD3CC9BE45D3;
    *(v18 + 48) = (*(a2 + 35) * *(a2 + 35));
    *(v6[7] + 56) = fmax((*(a2 + 24) * *(a2 + 24)), 1.0e-12);
    v13 = a2;
  }

  v19 = v6[9];
  *(v6[8] + 64) = fmax((*(v13 + 40) * *(v13 + 40)), 1.0e-12);
  v20 = v6[10];
  *(v6[11] + 88) = fmax((*(a2 + 53) * *(a2 + 53)), 1.0e-12);
  *(v19 + 72) = fmax((*(a2 + 55) * *(a2 + 55)), 1.0e-12);
  *(v6[12] + 96) = fmax((*(a2 + 57) * *(a2 + 57)), 1.0e-12);
  *(v20 + 80) = fmax((*(a2 + 59) * *(a2 + 59)), 1.0e-12);
  (*(*this + 392))(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  *(this + 369) = *(a2 + 50);
  *(this + 1480) = *(a2 + 8);
  *(this + 187) = *(a2 + 3);
  *(this + 376) = *(a2 + 20);
  v21 = *(a2 + 13);
  v22 = *(a2 + 14);
  v23 = sqrt(v22 * v22 + v21 * v21);
  *(this + 331) = v23;
  v24 = *this;
  v25 = (this + *(*this - 24));
  v25[13] = v21;
  v25[14] = v22;
  v26 = *(a2 + 15);
  v25[15] = v26;
  *&v26 = v26;
  *(this + 332) = -*&v26;
  *(this + *(v24 - 24) + 176) = *(a2 + 44);
  v27 = __sincos_stret(*(this + *(v24 - 24) + 176));
  *(this + 167) = *&v27.__cosval;
  *(this + 168) = *&v27.__sinval;
  *(this + 169) = 0;
  *(this + 171) = *&v27.__sinval;
  *(this + 172) = -v27.__cosval;
  *(this + 173) = 0;
  *(this + 1400) = 0u;
  *(this + 177) = 0xBFF0000000000000;
  *(this + 402) = *(a2 + 50);
  v28 = *(a2 + 3);
  *(this + 2616) = *(a2 + 8);
  *(this + 329) = v28;
  *(this + 380) = 0x4069000000000000;
  *(this + 448) = 1120272384;
  *(this + 6869) = 0;
  result = (*(v24 + 144))(this);
  *(this + 6240) = 0;
  *(this + 779) = 0;
  if (BlueFin::GlUtils::m_ucEnabled)
  {

    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

unint64_t BlueFin::GlSignalIdList::Remove(BlueFin::GlSignalIdList *this, unsigned int a2)
{
  result = BlueFin::GlSignalIdList::operator[](this, a2);
  v4 = *this - 1;
  v5 = this + 2 * v4 + 4;
  if (result < v5)
  {
    v6 = (result + 2);
    do
    {
      if (v6 != v5)
      {
        *(v6 - 1) = *v6;
      }

      v7 = v6 >= v5;
      v6 += 2;
    }

    while (!v7);
  }

  *this = v4;
  return result;
}

uint64_t *BlueFin::GlPeNavGnssKF::ResetL5BiasKFState(uint64_t *this)
{
  v1 = *this;
  *(this + *(*this - 24) + 216) = 0;
  *(this + *(v1 - 24) + 220) = 1077936128;
  *(*(this[5] + 72) + 72) = 0x4022000000000000;
  return this;
}

void BlueFin::GlPeNavGnssKF::ZeroSpeedUpdate(uint64_t a1, BlueFin::BigMatrix *a2, double *a3, int a4, int a5)
{
  v10.n128_f64[0] = BlueFin::GlPeNavGnssMotion::GetNotMovingFactor((a1 + 4776));
  if (*(*(a1 + 2248) + 1989))
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10.n128_f64[0];
  }

  v12 = (*(*a1 + 56))(a1, v10);
  if (v12 - 1 <= 0x18)
  {
    v11 = v11 * (v12 / 25.0);
  }

  v13 = *(*(a1 + 2248) + 8);
  v14 = *(a1 + 4776);
  v15 = 0.0500000007;
  if (*(v14 + 4216) == 6)
  {
    v16 = v14 + 4096;
    if (*(v16 + 128) == 1)
    {
      if (*(v16 + 130) & 1 | ((v13 - 6) < 0xFFFFFFFD))
      {
        v15 = 0.0500000007;
      }

      else
      {
        v15 = 0.00999999978;
      }
    }
  }

  if ((v13 - 1) >= 2)
  {
    v17 = 3.0;
  }

  else
  {
    v17 = 1.0;
  }

  BlueFin::lla2ned(a3, (a1 + *(*a1 - 24) + 8), 0, &v62);
  if (*(*(a1 + 2248) + 16))
  {
    v18 = 60000;
  }

  else
  {
    v18 = 120000;
  }

  if (*(a1 + *(*a1 - 24) + 200) >= v18 && (v19 = *(a1 + 4776), *(v19 + 4216) == 6) && *(v19 + 4224) == 1 && (*(v19 + 4226) & 1) == 0)
  {
    v21 = sqrt(v63.f64[0] * v63.f64[0] + v63.f64[1] * v63.f64[1]);
  }

  else
  {
    v20 = v11;
    if (fabs(v63.f64[1]) >= 10.0)
    {
      goto LABEL_44;
    }

    v20 = v11;
    if (fabs(v63.f64[0]) >= 10.0)
    {
      goto LABEL_44;
    }

    v19 = *(a1 + 4776);
    v21 = sqrt(v63.f64[0] * v63.f64[0] + v63.f64[1] * v63.f64[1]);
    if (*(v19 + 4216) != 6 || (*(v19 + 4224) & 1) == 0)
    {
      v22 = 0;
      goto LABEL_28;
    }
  }

  v22 = *(v19 + 4226) ^ 1;
LABEL_28:
  v23 = 0.1;
  if ((v22 & 1) == 0 && v21 > 8.0)
  {
    v23 = 10.0;
    if (v21 <= 10.0)
    {
      v23 = v21 * 4.95 + -39.5;
    }
  }

  v24 = 0.00001;
  if (v11 >= 0.00001)
  {
    v24 = v11;
  }

  if (a5)
  {
    v25 = 2.0;
  }

  else
  {
    v25 = v23;
  }

  if (a5)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = v24;
  }

  v26 = *(a1 + 26);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 16) = 0x3FF0000000000000;
  if (v26 == 1)
  {
    v27 = v25 / v20 * (v25 / v20);
    BlueFin::GlPeNavGnssKF::MeasUpdate(a1, a2, 0, 0, 1, -*(a1 + *(*a1 - 24) + 104), v27);
    BlueFin::BigMatrix::Null(a2, 1, 12);
    *(*(*(a2 + 1) + 8) + 32) = 0x3FF0000000000000;
    v28 = -*(a1 + *(*a1 - 24) + 112);
    v29 = a1;
    v30 = a2;
    v31 = v27;
  }

  else
  {
    v28 = -*(a1 + 1324);
    v31 = v25 / v20 * (v25 / v20);
    v29 = a1;
    v30 = a2;
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(v29, v30, 0, 0, 1, v28, v31);
LABEL_44:
  v32 = *(a1 + 26);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  v33 = -1.0;
  if (v32)
  {
    v33 = 1.0;
  }

  *(*(*(a2 + 1) + 8) + 48) = v33;
  v34 = *(a1 + 4776);
  v35 = 0.01;
  if (*(v34 + 4216) == 6)
  {
    v36 = v34 + 4096;
    if (*(v36 + 128) == 1)
    {
      v35 = 0.01;
      if (!*(v36 + 130))
      {
        v35 = 0.0004;
      }
    }
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(a1, a2, 1, 1, 1, *(a1 + 1328), v35);
  if (*(a1 + *(*a1 - 24) + 80) < 500.0)
  {
    if (BlueFin::GlPeNavGnssMotion::IsNotMoving((a1 + 4776), 1.0))
    {
      if (!a4)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v45 = *(a1 + 4776);
      if (*(v45 + 4216) != 6)
      {
        goto LABEL_64;
      }

      v46 = v45 + 4096;
      if (*(v46 + 128) != 1 || !a4 || (*(v46 + 130) & 1) != 0)
      {
        goto LABEL_64;
      }
    }

    if ((a5 & 1) == 0 && (BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(a1) & 1) == 0)
    {
      v37 = v15 - (fmin(fmax(v11, 0.0), 1.0) + -1.0) * (2.0 - v15);
      BlueFin::lla2ned(a3, (a1 + *(*a1 - 24) + 8), 0, &v60);
      v38 = v60;
      v62 = v60;
      v57 = v61.f64[0];
      v63 = v61;
      BlueFin::ned2hlu(&v62, (a1 + 1336), &v60);
      v39 = *(a1 + 40);
      v40.f64[0] = v37;
      if (*(a1 + 26) == 1)
      {
        v41 = sqrt(*(*(v39 + 8) + 8));
        *&v41 = v41 / (v41 + v40.f64[0]);
        v42 = v38 * *&v41;
        v43 = sqrt(*(*(v39 + 24) + 24));
        *v40.f64 = v43 / (v43 + v40.f64[0]);
        v44 = *v40.f64 * v57;
        v40.f64[1] = 0.0;
      }

      else
      {
        v47 = sqrt(*(*(v39 + 24) + 24));
        *&v47 = v47 / (v47 + v40.f64[0]);
        v48 = v61.f64[0] * *&v47;
        v49 = sqrt(*(*(v39 + 8) + 8));
        *&v47 = v49 / (v49 + (v17 * v37));
        v50 = v60 * *&v47;
        v42 = v48 * *(a1 + 1344) + *(a1 + 1336) * v50;
        v44 = v48 * *(a1 + 1376) + *(a1 + 1368) * v50;
        v40 = vnegq_f64(0);
      }

      v40.f64[0] = v44;
      v62 = v42;
      v63 = v40;
      v51 = a1 + *(*a1 - 24);
      BlueFin::ned2lla((v51 + 8), &v62, &v58);
      *(v51 + 8) = v58;
      *(v51 + 24) = v59;
    }
  }

LABEL_64:
  if ((*(a1 + 26) & 1) == 0 && *(a1 + *(*a1 - 24) + 241) == 1)
  {
    BlueFin::BigMatrix::Null(a2, 1, 12);
    *(*(*(a2 + 1) + 8) + 32) = 0x3FF0000000000000;
    if (BlueFin::GlPeNavGnssKF::IsAprioriHeadingOkForUse(a1, 0))
    {
      v52 = (fmin(fmax(v20, 0.0), 1.0) + -1.0) * -0.41887902 + 0.0174532925;
      v53 = *(a1 + 1568);
        ;
      }

        ;
      }

      v56 = i;
      v55 = v52;
      BlueFin::GlPeNavGnssKF::MeasUpdate(a1, a2, 0, 0, 1, v56, ((v55 * v55) * 10.0));
    }
  }
}

uint64_t BlueFin::ExtLocFilter::Reset(uint64_t result, uint64_t a2, int a3, float a4)
{
  *(result + 128) = v7;
  *(result + 144) = v8;
  *(result + 160) = v9;
  *(result + 176) = v10;
  *(result + 64) = 0uLL;
  *(result + 80) = v5;
  *(result + 96) = 0uLL;
  *(result + 112) = v6;
  *(result + 192) = 0x200000002;
  *(result + 200) = 0;
  *(result + 232) = 0;
  *(result + 328) = 0x100000002;
  *(result + 336) = 0;
  *(result + 368) = 0;
  *(result + 464) = 0x100000002;
  *(result + 56) = 0;
  *(result + 48) = 0x3FB99999A0000000;
  if (a3)
  {
    *(result + 8) = *a2;
    *(result + 24) = *(a2 + 16);
    *(result + 32) = a3;
    *(result + 36) = a3;
    *(result + 40) = a4;
    *(result + 472) = 0;
    *(result + 476) = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *result = v4;
  return result;
}

void BlueFin::GlPeNavGnssKF::UpdateFromHulaSpeed(BlueFin::GlPeNavGnssKF *this)
{
  v12 = xmmword_298A43FD0;
  v10 = &v13;
  v11 = v14;
  v14[0] = 0;
  v14[1] = &v12 + 8;
  BlueFin::BigMatrix::Null(&v10, 1, 12);
  *(v11[1] + 16) = 0x3FF0000000000000;
  v2 = *(*(this + 281) + 8);
  v8 = 0.0;
  v9 = 0.0;
  v3 = *(*(*(this + 5) + 32) + 32);
  if (BlueFin::GlPeNavGnssKF::IsHulaSpeedValid(this, &v9, &v8, v2 == 3) && sqrt(v3) < 0.785398163)
  {
    v4 = 0.1;
    if (v8 <= 0.1)
    {
      v4 = v8;
    }

    v5 = v4 * v4;
    if (v2 != 3)
    {
      v5 = v8 * v8;
    }

    v6 = *(this + 331);
    v7 = 1.0;
    if (v6 < 0.0)
    {
      v7 = -1.0;
    }

    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v10, 1, 0, 1, -(v6 - v7 * v9), v5);
    *(this + 2168) = 1;
  }
}

uint64_t BlueFin::GlPeNavGnssKF::IsHulaSpeedValid(BlueFin::GlPeNavGnssKF *this, double *a2, double *a3, unsigned int a4)
{
  *a2 = 0.0;
  *a3 = 0.0;
  v4 = *(this + 597);
  if (*(v4 + 1225) != 1)
  {
    return 0;
  }

  *a2 = *(v4 + 1184);
  v5 = fmin(*(v4 + 1192), 1.0);
  *a3 = v5;
  if (v5 > *a2)
  {
    return 0;
  }

  v6 = *(this + 331);
  v7 = 1.0;
  if (v6 < 0.0)
  {
    v7 = -1.0;
  }

  v8 = (this + *(*this - 24));
  if (-(v6 - v7 * *a2) * -(v6 - v7 * *a2) > (v5 * v5 + (v8[32] * v8[32])) * 16.0)
  {
    return 0;
  }

  if (*(this + 26) == 1)
  {
    v10 = v8[46];
  }

  else
  {
    v10 = sqrt(*(*(*(this + 5) + 32) + 32));
  }

  if (v10 <= 0.436332313)
  {
    return 1;
  }

  else
  {
    return a4;
  }
}

void BlueFin::GlPeNavGnssKF::DealsMeasUpdate(BlueFin::GlPeNavGnssKF *this, BlueFin::BigMatrix *a2, int a3)
{
  v6 = (this + 2872);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 16) = 0x3FF0000000000000;
  if (a3)
  {
    v7 = 1.01;
  }

  else
  {
    v7 = 0.01;
  }

  v8 = *(this + 331);
  v9 = 1.0;
  if (v8 < 0.0)
  {
    v9 = -1.0;
  }

  v10 = vcvt_f32_f64(*v6);
  v11 = -(v8 - (v9 * sqrtf(vaddv_f32(vmul_f32(v10, v10)))));
  v12 = vcvt_f32_f64(v6[2]);
  v12.f32[0] = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
  v13 = v12.f32[0] * v12.f32[0];
  if (v7 < v13)
  {
    v7 = v13;
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, v11, v7);
  v14 = *(this + 735);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 32) = 0x3FF0000000000000;
  v15 = *(this + 734) * 0.0174532925;
    ;
  }

    ;
  }

  if (fabsf(*(this + 331)) > 0.1 && *(this + 735) < 180.0)
  {
    v17 = v14 * 0.0174532925;
    v18 = fmaxf(v17, 0.1);
    v19 = fmax(i, -0.523598776);
    BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, fminf(v19, 0.5236), (v18 * v18));
  }

  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 48) = 0x3FF0000000000000;
  v20 = *(this + 365) * *(this + 365);
  v21 = 0.00999999978;
  if (a3)
  {
    v21 = 3.00999999;
  }

  if (v21 >= v20)
  {
    v20 = v21;
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, -*(this + 361) - *(this + 332), v20);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 64) = 0x3FF0000000000000;
  v22 = *(this + 724) - *(this + *(*this - 24) + 152);
  v23 = fmaxf(*(this + 732) * *(this + 732), 0.01);

  BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, v22, v23);
}

void BlueFin::GlPeNavGnssKF::ApplyCrossTrackPosMeas(BlueFin::GlPeNavGnssKF *this, double a2, double a3, double a4)
{
  if ((*(this + 26) & 1) == 0)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 6218, "ApplyCrossTrackPosMeas", "m_bIsNed == true");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 6218, "m_bIsNed == true");
  }

  v12 = xmmword_298A43FD0;
  v10 = &v13;
  v11 = v14;
  v14[0] = 0;
  v14[1] = &v12 + 8;
  BlueFin::BigMatrix::Null(&v10, 1, 12);
  v8 = __sincos_stret(a4);
  v9 = v11[1];
  *(v9 + 8) = -v8.__sinval;
  *(v9 + 24) = v8.__cosval;
  BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v10, 1, 0, 1, a2, a3 * a3);
}

void BlueFin::GlPeNavGnssKF::ApplyXTCHdg(BlueFin::GlPeNavGnssKF *this, double a2, long double a3)
{
  if (a3 <= 1.57079633)
  {
    v5 = (this + *(*this - 24));
    v6 = v5[13];
    v7 = v5[14];
    v8 = sin(a3) * sqrt(v7 * v7 + v6 * v6);
    if (v8 >= 0.5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = __sincos_stret(a2);
    v14 = xmmword_298A43FD0;
    v12 = &v15;
    v13 = v16;
    v16[0] = 0;
    v16[1] = &v14 + 8;
    BlueFin::BigMatrix::Null(&v12, 1, 12);
    v11 = v13[1];
    *(v11 + 16) = -v10.__sinval;
    *(v11 + 32) = v10.__cosval;
    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v12, 1, 0, 1, -(v10.__cosval * v7 + -v10.__sinval * v6), v9 * v9);
  }
}

double BlueFin::GlPeNavGnssKF::GetInfoForPdrCalibration(char *a1, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6)
{
  v10 = *a1;
  v11 = &a1[*(*a1 - 24)];
  *a2 = *(v11 + 8);
  *(a2 + 16) = *(v11 + 3);
  *a3 = (*(*&a1[*(v10 - 24)] + 16))(&a1[*(v10 - 24)]);
  BlueFin::GlPeNavGnssState::operator=(a4, (a1 + 7448));
  v12 = *a1;
  *a5 = *&a1[*(*a1 - 24) + 176];
  result = *&a1[*(v12 - 24) + 184];
  *a6 = result;
  return result;
}

uint64_t BlueFin::GlSignalIdList::operator[](unsigned int *a1, unsigned int a2)
{
  if (!a2 || *a1 <= a2)
  {
    DeviceFaultNotify("glsignalid.h", 491, "operator[]", "index >= m_minIndex && index < m_maxIndex");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 491, "index >= m_minIndex && index < m_maxIndex");
  }

  return a1 + 2 * a2 + 2;
}

uint64_t BlueFin::GlPeKfPool::Reset(void *a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + *(*a1 - 24) + 196) = a2;
  v4 = a1 + 4656;
  do
  {
    result = (*(*v4[v3] + 24))(v4[v3], a2);
    ++v3;
  }

  while (v3 != 3);
  return result;
}

uint64_t BlueFin::GlPeKfPool::InitializeNavGnssKF(BlueFin::GlPeKfPool *this, const BlueFin::GlPeNavGnssState *a2)
{
  v4 = 0;
  v5 = this + 37248;
  do
  {
    v6 = *&v5[v4];
    if ((*(*v6 + 384))(v6))
    {
      (*(*v6 + 40))(v6, a2);
    }

    v4 += 8;
  }

  while (v4 != 24);
  v7 = this + *(*this - 24);
  v8 = *(this + 4659) + *(**(this + 4659) - 24);

  return BlueFin::GlPeNavGnssState::operator=(v7, v8);
}

uint64_t BlueFin::GlPeKfPool::ReConfigKF(BlueFin::GlPeKfPool *this, char a2, char a3)
{
  v5 = (this + 36864);
  v6 = *(this + 4657);
  v7 = (*(*v6 + 384))(v6);
  if (a2)
  {
    if ((v7 & 1) == 0)
    {
      (*(*v6 + 376))(v6, 1);
      (*(*v6 + 40))(v6, v5[51] + *(*v5[51] - 24));
    }
  }

  else if (v7)
  {
    (*(*v6 + 24))(v6, 3);
    (*(*v6 + 376))(v6, 0);
    if (v5[51] == v5[49])
    {
      v5[51] = v5[48];
    }
  }

  v8 = v5[50];
  result = (*(*v8 + 384))(v8);
  if (a3)
  {
    if ((result & 1) == 0)
    {
      (*(*v8 + 376))(v8, 1);
      v10 = *(*v8 + 40);
      v11 = v5[51] + *(*v5[51] - 24);

      return v10(v8, v11);
    }
  }

  else if (result)
  {
    result = (*(*v8 + 376))(v8, 0);
    if (v5[51] == v5[50])
    {
      v5[51] = v5[48];
    }
  }

  return result;
}

uint64_t BlueFin::GlPeKfPool::GetInfoForPdrCalibration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 36864;
  v7 = *(a1 + 37272);
  if (v7 == *(v6 + 392))
  {
    v8 = 37832;
  }

  else
  {
    v7 = *(v6 + 384);
    v8 = 37304;
  }

  (*(*v7 + 344))(v7, a2, a3, a4);

  return BlueFin::GlPeNavGnssState::operator=(a4, a1 + v8);
}

double BlueFin::GlPeKfPool::ResetKFStateForPdrPropagation(BlueFin::GlPeKfPool *this)
{
  if (*(*(this + 658) + 84) == 1 && *(this + 8) == 2 && (*(this + 5842) & 1) == 0 && (*(*(this + 656) + 8) - 3) <= 3)
  {
    v1 = *(this + 3059);
    v2 = this + *(v1 - 24) + 24472;
    v3 = this + *(*(this + 3) - 24) + 24;
    *(v2 + 8) = *(v3 + 8);
    result = *(v3 + 3);
    *(v2 + 3) = result;
    v5 = (this + *(v1 - 24) + 24472);
    v5[13] = 0;
    v5[14] = 0;
    v5[15] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeKfPool::ResetL5BiasKFState(BlueFin::GlPeKfPool *this)
{
  v2 = 0;
  v3 = this + 37248;
  do
  {
    result = (*(**&v3[v2] + 384))(*&v3[v2]);
    if (result)
    {
      result = (*(**&v3[v2] + 360))(*&v3[v2]);
    }

    v2 += 8;
  }

  while (v2 != 24);
  v5 = *this;
  *(this + *(*this - 24) + 216) = 0;
  *(this + *(v5 - 24) + 220) = 1077936128;
  return result;
}

BOOL BlueFin::GlPeKfPool::GetQbv(BlueFin::GlPeKfPool *this, BlueFin::QuaternionD *a2)
{
  *a2 = *(this + 4840);
  *(a2 + 1) = *(this + 4856);
  return *(this + 8) == 2 && (*(this + 5842) & 1) == 0 && (*(*(this + 656) + 8) - 3) < 4;
}

BOOL BlueFin::GlPeKfPool::GetAccBias(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 4632);
  *(a2 + 16) = *(a1 + 4648);
  return *(a1 + 32) == 2 && (*(a1 + 5842) & 1) == 0 && (*(*(a1 + 5248) + 8) - 3) < 4;
}