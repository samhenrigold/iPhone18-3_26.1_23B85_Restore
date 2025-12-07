uint64_t peridot::PeridotDXPBaselineRemoval::setRunMode(uint64_t result, int a2)
{
  *(result + 748) = a2;
  *(result + 750) = BYTE2(a2);
  return result;
}

float32_t peridot::PeridotDXPBaselineRemoval::configure(peridot::PeridotDXPBaselineRemoval *this, const peridot::PeridotDXPCalib *a2)
{
  *(this + 186) = *a2;
  v4 = *(this + 91);
  v5 = *(this + 90);
  v6 = (v4 - v5) >> 3;
  if (v6 <= 2)
  {
    v7 = 3 - v6;
    v8 = *(this + 92);
    if (v7 > (v8 - v4) >> 3)
    {
      v9 = v8 - v5;
      v10 = v9 >> 2;
      if ((v9 >> 2) <= 3)
      {
        v10 = 3;
      }

      v11 = v9 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 91), 8 * v7);
    v13 = (v4 + 8 * v7);
    goto LABEL_12;
  }

  if (v4 - v5 != 24)
  {
    v13 = v5 + 3;
LABEL_12:
    *(this + 91) = v13;
  }

  *(this + 21) = 91;
  v14 = *(a2 + 433);
  *v5 = v14--;
  *(this + 51) = v14;
  *(this + 81) = *v5 - 1;
  if (v14 <= 0x170 && *(this + 21) <= 0x170uLL && (*(this + 22) = 91, v15 = *(a2 + 434), v5[1] = v15, --v15, *(this + 52) = v15, *(this + 82) = v5[1] - 1, v15 <= 0x170) && *(this + 22) <= 0x170uLL && (*(this + 23) = 91, v16 = *(a2 + 435), v5[2] = v16, --v16, *(this + 53) = v16, *(this + 83) = v5[2] - 1, v16 <= 0x170) && *(this + 23) <= 0x170uLL)
  {
    if (this + 752 != a2 + 3672)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 94, *(a2 + 459), *(a2 + 460), (*(a2 + 460) - *(a2 + 459)) >> 2);
    }

    if (this + 776 != a2 + 3696)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 97, *(a2 + 462), *(a2 + 463), (*(a2 + 463) - *(a2 + 462)) >> 2);
    }

    *(this + 800) = *(a2 + 3520);
    *(this + 801) = *(a2 + 3521);
    if (this + 808 != a2 + 3952)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 101, *(a2 + 494), *(a2 + 495), (*(a2 + 495) - *(a2 + 494)) >> 2);
    }

    if (this + 832 != a2 + 3976)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 104, *(a2 + 497), *(a2 + 498), (*(a2 + 498) - *(a2 + 497)) >> 2);
    }

    v18 = *(a2 + 3436);
    *(this + 243) = *(a2 + 861);
    *(this + 964) = v18;
    v19 = *(a2 + 428);
    *(this + 240) = *(a2 + 858);
    *(this + 119) = v19;
    v20 = *(a2 + 431);
    *(this + 246) = *(a2 + 864);
    *(this + 122) = v20;
    if (this + 856 != a2 + 3672)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 107, *(a2 + 459), *(a2 + 460), (*(a2 + 460) - *(a2 + 459)) >> 2);
    }

    if (this + 880 != a2 + 3696)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 110, *(a2 + 462), *(a2 + 463), (*(a2 + 463) - *(a2 + 462)) >> 2);
    }

    if (*(this + 111) - *(this + 110) >= 0x10uLL)
    {
      v21 = (*(this + 108) - *(this + 107)) >> 2;
      if (v21 >= 4)
      {
        if (!(v21 >> 62))
        {
          operator new();
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }
    }

    peridot_depth_log("Wrong Configuration: _HPFilter/_HSFilter size");
  }

  else
  {
    peridot_depth_log("Wrong Configuration: histEnd too large");
  }

  return result;
}

uint64_t peridot::PeridotDXPBaselineRemoval::process(peridot::PeridotDXPBaselineRemoval *this, peridot::PeridotPreProcessOutput::PreProcessorOutSpot *a2, uint64_t a3)
{
  result = peridot::PeridotDXPBaselineRemoval::baselineRemoval(this, a2 + 200, a3);
  if (!result)
  {
    if (*(this + 748) != 1 || (result = peridot::PeridotDXPBaselineRemoval::baselineRemoval(result, a2 + 400, v6), !result))
    {
      result = peridot::PeridotDXPBaselineRemoval::baselineRemoval(result, a2, v6);
      if (!result)
      {
        cConv(*(**(a2 + 40) + 8), *(**(a2 + 40) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, **(this + 90) - 1, *(**(a2 + 46) + 8));
        if (*(this + 748) == 1)
        {
          cConv(*(**(a2 + 65) + 8), *(**(a2 + 65) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, **(this + 90) - 1, *(**(a2 + 71) + 8));
        }

        conv<float,float const>(*(**(a2 + 15) + 8), *(**(a2 + 15) + 16), *(this + 110), (*(this + 111) - *(this + 110)) >> 2, *(**(a2 + 21) + 8), 2);
        cConv(*(*(*(a2 + 40) + 8) + 8), *(*(*(a2 + 40) + 8) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 8) - 1, *(*(*(a2 + 46) + 8) + 8));
        if (*(this + 748) == 1)
        {
          cConv(*(*(*(a2 + 65) + 8) + 8), *(*(*(a2 + 65) + 8) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 8) - 1, *(*(*(a2 + 71) + 8) + 8));
        }

        conv<float,float const>(*(*(*(a2 + 15) + 8) + 8), *(*(*(a2 + 15) + 8) + 16), *(this + 110), (*(this + 111) - *(this + 110)) >> 2, *(*(*(a2 + 21) + 8) + 8), 2);
        cConv(*(*(*(a2 + 40) + 16) + 8), *(*(*(a2 + 40) + 16) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 16) - 1, *(*(*(a2 + 46) + 16) + 8));
        if (*(this + 748) == 1)
        {
          cConv(*(*(*(a2 + 65) + 16) + 8), *(*(*(a2 + 65) + 16) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 16) - 1, *(*(*(a2 + 71) + 16) + 8));
        }

        conv<float,float const>(*(*(*(a2 + 15) + 16) + 8), *(*(*(a2 + 15) + 16) + 16), *(this + 110), (*(this + 111) - *(this + 110)) >> 2, *(*(*(a2 + 21) + 16) + 8), 2);
        return 0;
      }
    }
  }

  return result;
}

uint64_t peridot::PeridotDXPBaselineRemoval::baselineRemoval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1, a2, a3);
  v618[182] = *MEMORY[0x277D85DE8];
  v7 = *v3;
  if (v3[1] - *v3 != 24)
  {
    peridot_depth_log("PeridotDXPBaselineRemoval::baselineRemoval: wrong interlHist size");
    return 1;
  }

  v8 = v5;
  v9 = v4;
  v587 = v3;
  v10 = v6;
  v11 = *v7;
  v12 = *(*v7 + 16);
  v13 = *(v4 + 216);
  bzero(v615, 0x1140uLL);
  bzero(v609, 0x1140uLL);
  v14 = *(v9 + 208);
  v582 = *(v9 + 64);
  v583 = *(v9 + 72);
  v584 = *(v9 + 80);
  *&v602[559] = v12;
  v603[184] = v12;
  v604[182] = v12;
  v15 = *(v9 + 168);
  v588 = v14;
  v16 = v12 - 1;
  v17 = v15 + 1;
  if (v15 + 1 < v12)
  {
    memset_pattern16(&v602[375] + 4 * v15 + 4, &unk_2247A54B0, 4 * (v16 - v15));
  }

  v18 = *(v9 + 176);
  if (v18 + 1 < v12)
  {
    memset_pattern16(v603 + 4 * v18 + 4, &unk_2247A54B0, 4 * (v16 - v18));
  }

  v19 = *(v9 + 184);
  if (v19 + 1 < v12)
  {
    memset_pattern16(&v603[185] + 4 * v19 + 4, &unk_2247A54B0, 4 * (v16 - v19));
  }

  if (v15 > 0x170)
  {
LABEL_9:
    peridot_depth_log("Wrong Configuration: histEnd");
    return 4;
  }

  v21 = v13 >> 1;
  if (v15 < v13 >> 1)
  {
LABEL_12:
    peridot_depth_log("Wrong Configuration: histEnd too small");
    return 4;
  }

  v22 = *(v11 + 8);
  memcpy(v605, &v22[4 * (v15 - (v13 >> 1)) + 4], 4 * v21);
  memcpy(&v605[v21], v22, 4 * v15 + 4);
  __n = 4 * v21;
  memcpy(&v605[v21 + 1 + v15], v22, 4 * v21);
  v23 = v15 + v13;
  if (v15 + v13)
  {
    if (v23 <= 7)
    {
      v24 = 0;
LABEL_20:
      v31 = v15 + v13 - v24;
      v32 = &__A[v24];
      v33 = &v605[v24];
      do
      {
        v34 = *v33++;
        *v32++ = v34;
        --v31;
      }

      while (v31);
      goto LABEL_22;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFF8;
    v25 = v592;
    v26 = &v606;
    v27 = v23 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v28 = *v26[-2].f32;
      v29 = vcvtq_f64_f32(*v26);
      v30 = vcvt_hight_f64_f32(*v26->f32);
      v25[-2] = vcvtq_f64_f32(*v28.f32);
      v25[-1] = vcvt_hight_f64_f32(v28);
      *v25 = v29;
      v25[1] = v30;
      v25 += 4;
      v26 += 4;
      v27 -= 8;
    }

    while (v27);
    if (v23 != v24)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  vDSP_vswsumD(__A, 1, v602, 1, v15 + 1, v13);
  v35 = v13;
  if (v15 <= 6)
  {
    v36 = 0;
LABEL_27:
    v46 = v15 - v36 + 1;
    v47 = &v602[375] + v36;
    v48 = &v615[v36];
    v49 = &v602[v36];
    do
    {
      v50 = *v49++;
      v51 = v50;
      *v48++ = v51;
      v52 = v50 * (1.0 / v35);
      *v47++ = v52;
      --v46;
    }

    while (v46);
    goto LABEL_29;
  }

  v36 = v17 & 0x3F8;
  v37 = &v602[377];
  v38 = &v616;
  v39 = &v602[4];
  v40 = v36;
  v41 = 1.0 / v35;
  do
  {
    v43 = *(v39 - 4);
    v42 = *(v39 - 2);
    v45 = *v39;
    v44 = *(v39 + 2);
    v39 += 8;
    v38[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v43), v42);
    *v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v45), v44);
    v37[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v43, v41)), vmulq_n_f64(v42, v41));
    *v37 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v45, v41)), vmulq_n_f64(v44, v41));
    v37 += 2;
    v38 += 2;
    v40 -= 8;
  }

  while (v40);
  if (v17 != v36)
  {
    goto LABEL_27;
  }

LABEL_29:
  v53 = *(v9 + 176);
  if (v53 > 0x170)
  {
    goto LABEL_9;
  }

  if (v53 < v21)
  {
    goto LABEL_12;
  }

  v54 = *(*(*v587 + 8) + 8);
  memcpy(v607, &v54[4 * (v53 - v21) + 4], __n);
  memcpy(&v607[v21], v54, 4 * v53 + 4);
  memcpy(&v607[v21 + 1 + v53], v54, __n);
  v55 = v53 + 1;
  v56 = v53 + v13;
  if (v53 + v13)
  {
    if (v56 < 8)
    {
      v57 = 0;
LABEL_37:
      v63 = v53 + v13 - v57;
      v64 = &__A[v57];
      v65 = &v607[v57];
      do
      {
        v66 = *v65++;
        *v64++ = v66;
        --v63;
      }

      while (v63);
      goto LABEL_39;
    }

    v57 = v56 & 0xFFFFFFFFFFFFFFF8;
    v58 = v592;
    v59 = v607;
    v60 = v56 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v61 = *v59;
      v62 = v59[1];
      v59 += 2;
      v58[-2] = vcvtq_f64_f32(*v61.f32);
      v58[-1] = vcvt_hight_f64_f32(v61);
      *v58 = vcvtq_f64_f32(*v62.f32);
      v58[1] = vcvt_hight_f64_f32(v62);
      v58 += 4;
      v60 -= 8;
    }

    while (v60);
    if (v56 != v57)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
  vDSP_vswsumD(__A, 1, v602, 1, v53 + 1, v13);
  if (v53 < 7)
  {
    v67 = 0;
LABEL_44:
    v77 = v53 - v67 + 1;
    v78 = &v602[560] + v67;
    v79 = &v615[v67 + 368];
    v80 = &v602[v67];
    do
    {
      v81 = *v80++;
      v82 = v81;
      *v79++ = v82;
      v83 = v81 * (1.0 / v35);
      *v78++ = v83;
      --v77;
    }

    while (v77);
    goto LABEL_46;
  }

  v68 = v603;
  v67 = v55 & 0x3F8;
  v69 = &v617;
  v70 = &v602[4];
  v71 = v67;
  v72 = 1.0 / v35;
  do
  {
    v74 = *(v70 - 4);
    v73 = *(v70 - 2);
    v76 = *v70;
    v75 = *(v70 + 2);
    v70 += 8;
    v69[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v74), v73);
    *v69 = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
    *v68 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v74, v72)), vmulq_n_f64(v73, v72));
    v68[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v76, v72)), vmulq_n_f64(v75, v72));
    v68 += 2;
    v69 += 2;
    v71 -= 8;
  }

  while (v71);
  if (v55 != v67)
  {
    goto LABEL_44;
  }

LABEL_46:
  v84 = *(v9 + 184);
  if (v84 > 0x170)
  {
    goto LABEL_9;
  }

  if (v84 < v21)
  {
    goto LABEL_12;
  }

  v85 = v608;
  v86 = *(*(*v587 + 16) + 8);
  memcpy(v608, &v86[4 * (v84 - v21) + 4], __n);
  memcpy(&v608[v21], v86, 4 * v84 + 4);
  memcpy(&v608[v21 + 1 + v84], v86, __n);
  v87 = v84 + 1;
  v88 = v84 + v13;
  if (v84 + v13)
  {
    if (v88 < 8)
    {
      v89 = 0;
LABEL_54:
      v94 = v84 + v13 - v89;
      v95 = &__A[v89];
      v96 = &v608[v89];
      do
      {
        v97 = *v96++;
        *v95++ = v97;
        --v94;
      }

      while (v94);
      goto LABEL_56;
    }

    v89 = v88 & 0xFFFFFFFFFFFFFFF8;
    v90 = v592;
    v91 = v88 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v92 = *v85;
      v93 = v85[1];
      v85 += 2;
      v90[-2] = vcvtq_f64_f32(*v92.f32);
      v90[-1] = vcvt_hight_f64_f32(v92);
      *v90 = vcvtq_f64_f32(*v93.f32);
      v90[1] = vcvt_hight_f64_f32(v93);
      v90 += 4;
      v91 -= 8;
    }

    while (v91);
    if (v88 != v89)
    {
      goto LABEL_54;
    }
  }

LABEL_56:
  vDSP_vswsumD(__A, 1, v602, 1, v84 + 1, v13);
  if (v84 < 7)
  {
    v99 = 0;
LABEL_61:
    v108 = v84 - v99 + 1;
    v109 = &v602[745] + v99;
    v110 = &v615[v99 + 736];
    v111 = &v602[v99];
    *&v98 = 1.0 / v35;
    do
    {
      v112 = *v111++;
      v113 = v112;
      *v110++ = v113;
      v114 = v112 * *&v98;
      *v109++ = v114;
      --v108;
    }

    while (v108);
    goto LABEL_63;
  }

  v99 = v87 & 0x3F8;
  v100 = v604;
  v101 = v618;
  v102 = &v602[4];
  v103 = v99;
  *&v98 = 1.0 / v35;
  do
  {
    v105 = *(v102 - 4);
    v104 = *(v102 - 2);
    v107 = *v102;
    v106 = *(v102 + 2);
    v102 += 8;
    v101[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v105), v104);
    *v101 = vcvt_hight_f32_f64(vcvt_f32_f64(v107), v106);
    v100[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v105, *&v98)), vmulq_n_f64(v104, *&v98));
    *v100 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v107, *&v98)), vmulq_n_f64(v106, *&v98));
    v100 += 2;
    v101 += 2;
    v103 -= 8;
  }

  while (v103);
  if (v87 != v99)
  {
    goto LABEL_61;
  }

LABEL_63:
  v575 = v582 - (v588 >> 1);
  v576 = v583 - (v588 >> 1);
  v577 = v588 >> 1;
  v578 = v584 - (v588 >> 1);
  v115 = 0;
  v116 = v8;
  v117 = *(v9 + 160);
  LODWORD(v98) = *(v10 + 18);
  __na = v98;
  v581 = 1.0 / v8;
  if (v13 / 2 > v13 / -2)
  {
    v118 = v13 / 2;
  }

  else
  {
    v118 = v13 / -2;
  }

  v579 = v13 / 2 + v118 + 1;
  v119 = &v602[375];
  v120 = (v9 + 168);
  v580 = vdupq_n_s64(4uLL);
  do
  {
    v589 = v115;
    LODWORD(v602[0]) = 0;
    memset_pattern4(__A, v602, 0x5DCuLL);
    v124 = v120[v589];
    memcpy(__A, &v615[368 * v589], 4 * v124 + 4);
    v125 = v589;
    v126 = *(v9 + 16 + 8 * v589) + v13;
    v127 = v126 + 1;
    if (v126 + 1 > v124 + 1)
    {
      goto LABEL_182;
    }

    v128 = 0;
    do
    {
      v129 = *(__A + v127);
      if (v129 > *(__A + v126))
      {
        v130 = v126 + 2;
        v131 = *(__A + v130);
        if (v129 > v131 || vabds_f32(v131, v129) < 0.000001)
        {
          *&v602[v128++] = v127;
          v127 = v130;
        }
      }

      v126 = v127++;
    }

    while (v127 <= v124 + 1);
    if (!v128)
    {
      goto LABEL_182;
    }

    if (v128 == 1)
    {
      v132 = 1;
    }

    else
    {
      v132 = 0;
      for (i = 0; i != v128; ++i)
      {
        v134 = v602[i];
        if (v13 < -1)
        {
LABEL_86:
          *(&v599 + v132++) = v134;
        }

        else
        {
          v135 = __A + *&v134 - v13 / 2;
          v136 = v579;
          while ((*v135 - *(__A + *&v134)) <= 0.000001)
          {
            ++v135;
            if (!--v136)
            {
              goto LABEL_86;
            }
          }
        }
      }

      memcpy(v602, &v599, 8 * v132);
    }

    LODWORD(v599) = 0;
    memset_pattern4(v598, &v599, 0x2E0uLL);
    if (v132)
    {
      v137 = 0;
      v138 = v581 * *(v9 + 192);
      do
      {
        v141 = v602[v137];
        if (*&v141 >= v124 - v13)
        {
          v139 = *(__A + *&v141 - v13);
        }

        else
        {
          v142 = *&v141 - v13;
          if (*&v141 < v13)
          {
            v142 = 0;
          }

          v143 = *&v141 + v13;
          if (*&v141 + v13 >= 0x176)
          {
            v143 = 374;
          }

          v139 = (*(__A + v143) + *(__A + v142)) * 0.5;
        }

        if (v139 >= v138)
        {
          v140 = v139;
        }

        else
        {
          v140 = v138;
        }

        *&v598[v137++] = sqrtf(v116 / v140) * (*(__A + *&v141) - v139);
      }

      while (v132 != v137);
      v594[0] = 0;
      memset_pattern8(&v599, v594, 0x5C0uLL);
      v594[0] = 0;
      memset_pattern8(&v595, v594, 0x5C0uLL);
      v144 = 0;
      v145 = 0;
      v146 = 0;
      do
      {
        if (*&v598[v144] > v117)
        {
          *(&v599 + v146++) = v144;
          *(&v595 + v145++) = *&v602[v144];
        }

        ++v144;
      }

      while (v132 != v144);
      v147 = *(v9 + 200);
      if (v145 > v147)
      {
        v148 = &v599;
        v149 = &v599 + v132;
        v150 = (v132 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v150 >= 3)
        {
          v152 = v150 + 1;
          v151 = (v150 + 1) & 0x3FFFFFFFFFFFFFFCLL;
          v153 = v601;
          v154 = v151;
          v155 = xmmword_2247A4650;
          do
          {
            v153[-1] = v155;
            *v153 = vaddq_s64(v155, vdupq_n_s64(2uLL));
            v155 = vaddq_s64(v155, v580);
            v153 += 2;
            v154 -= 4;
          }

          while (v154);
          if (v152 == v151)
          {
LABEL_121:
            if (v147)
            {
              if (v147 >= 2)
              {
                v156 = (v147 - 2) >> 1;
                v157 = v156;
                do
                {
                  if (v156 >= v157)
                  {
                    v159 = (2 * (v157 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
                    v160 = &v599 + v159;
                    if (2 * (v157 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v147 && *&v598[*v160] > *&v598[v160[1]])
                    {
                      ++v160;
                      v159 = 2 * (v157 & 0x1FFFFFFFFFFFFFFFLL) + 2;
                    }

                    v161 = &v599 + v157;
                    v162 = *v160;
                    v163 = *v161;
                    v164 = *&v598[*v161];
                    if (*&v598[*v160] <= v164)
                    {
                      do
                      {
                        v165 = v160;
                        *v161 = v162;
                        if (v156 < v159)
                        {
                          break;
                        }

                        v166 = 2 * v159;
                        v159 = (2 * (v159 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                        v160 = &v599 + v159;
                        v167 = v166 + 2;
                        if (v167 < v147 && *&v598[*v160] > *&v598[v160[1]])
                        {
                          ++v160;
                          v159 = v167;
                        }

                        v162 = *v160;
                        v161 = v165;
                      }

                      while (*&v598[*v160] <= v164);
                      *v165 = v163;
                    }
                  }

                  v158 = v157-- <= 0;
                }

                while (!v158);
              }

              v168 = &v599 + v147;
              if (v147 != v132)
              {
                if (v147 >= 2)
                {
                  v219 = &v599 + v147;
                  do
                  {
                    v220 = *v219;
                    v221 = *&v598[*v219];
                    if (v221 > *&v598[v599])
                    {
                      *v219 = v599;
                      v599 = v220;
                      if (v147 == 2 || *&v598[v600] <= *&v598[v601[0]])
                      {
                        v222 = &v600;
                        v223 = 1;
                      }

                      else
                      {
                        v222 = v601;
                        v223 = 2;
                      }

                      v224 = *v222;
                      if (*&v598[*v222] <= v221)
                      {
                        v225 = &v599;
                        do
                        {
                          v226 = v222;
                          *v225 = v224;
                          if (((v147 - 2) >> 1) < v223)
                          {
                            break;
                          }

                          v227 = 2 * v223;
                          v223 = (2 * v223) | 1;
                          v222 = &v599 + v223;
                          v228 = v227 + 2;
                          if (v228 < v147 && *&v598[*v222] > *&v598[v222[1]])
                          {
                            ++v222;
                            v223 = v228;
                          }

                          v224 = *v222;
                          v225 = v226;
                        }

                        while (*&v598[*v222] <= v221);
                        *v226 = v220;
                      }
                    }

                    ++v219;
                  }

                  while (v219 != v149);
                }

                else
                {
                  v216 = v599;
                  v217 = 8 * v147;
                  do
                  {
                    v218 = *(&v599 + v217);
                    if (*&v598[v218] > *&v598[v216])
                    {
                      *(&v599 + v217) = v216;
                      v599 = v218;
                      v216 = v218;
                    }

                    v217 += 8;
                  }

                  while (8 * v132 != v217);
                }
              }

              if (v147 >= 2)
              {
                do
                {
                  v171 = 0;
                  v172 = v599;
                  v173 = &v599;
                  do
                  {
                    v174 = v173;
                    v175 = &v173[v171];
                    v173 = v175 + 1;
                    v176 = 2 * v171;
                    v171 = (2 * v171) | 1;
                    v177 = v176 + 2;
                    if (v177 < v147)
                    {
                      v179 = v175[2];
                      v178 = v175 + 2;
                      if (*&v598[*(v178 - 1)] > *&v598[v179])
                      {
                        v173 = v178;
                        v171 = v177;
                      }
                    }

                    *v174 = *v173;
                  }

                  while (v171 <= ((v147 - 2) >> 1));
                  if (v173 == --v168)
                  {
                    *v173 = v172;
                  }

                  else
                  {
                    *v173 = *v168;
                    *v168 = v172;
                    v180 = (v173 - &v599 + 8) >> 3;
                    v158 = v180 < 2;
                    v181 = v180 - 2;
                    if (!v158)
                    {
                      v182 = v181 >> 1;
                      v183 = &v599 + v182;
                      v184 = *v183;
                      v185 = *v173;
                      v186 = *&v598[*v173];
                      if (*&v598[*v183] > v186)
                      {
                        do
                        {
                          v187 = v183;
                          *v173 = v184;
                          if (!v182)
                          {
                            break;
                          }

                          v182 = (v182 - 1) >> 1;
                          v183 = &v599 + v182;
                          v184 = *v183;
                          v173 = v187;
                        }

                        while (*&v598[*v183] > v186);
                        *v187 = v185;
                      }
                    }
                  }

                  v158 = v147-- <= 2;
                }

                while (!v158);
              }
            }

            v169 = *(v9 + 200);
            v120 = (v9 + 168);
            if (!v169)
            {
              goto LABEL_160;
            }

            if (v169 == 1)
            {
              v170 = 0;
            }

            else
            {
              v170 = v169 & 0xFFFFFFFFFFFFFFFELL;
              v188 = &v600;
              v189 = &v596;
              v190 = v169 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                v191 = v602[*v188];
                *(v189 - 1) = v602[*(v188 - 1)];
                *v189 = v191;
                v189 += 2;
                v188 += 2;
                v190 -= 2;
              }

              while (v190);
              if (v169 == v170)
              {
                goto LABEL_159;
              }
            }

            do
            {
              *(&v595 + v170) = *&v602[*(&v599 + v170)];
              ++v170;
            }

            while (v169 != v170);
LABEL_159:
            LODWORD(v145) = v169;
            goto LABEL_160;
          }

          v148 = &v599 + v151;
        }

        else
        {
          v151 = 0;
        }

        do
        {
          *v148++ = v151++;
        }

        while (v148 != v149);
        goto LABEL_121;
      }
    }

    else
    {
      v594[0] = 0;
      memset_pattern8(&v599, v594, 0x5C0uLL);
      v594[0] = 0;
      memset_pattern8(&v595, v594, 0x5C0uLL);
      LODWORD(v145) = 0;
    }

    v120 = (v9 + 168);
LABEL_160:
    v593[0] = 0;
    memset_pattern8(v594, v593, 0x360uLL);
    __pattern8 = 0;
    memset_pattern8(v593, &__pattern8, 0x20uLL);
    v125 = v589;
    if (v145 >= 1)
    {
      v192 = 0;
      v193 = *(v9 + 224);
      v194 = *(v9 + 232);
      v195 = v145 & 0x7FFFFFFF;
      do
      {
        if (-v193 <= v194)
        {
          v196 = *(&v595 + v192);
          v197 = v193;
          v198 = v193 + v194 + 1;
          v199 = -v193;
          do
          {
            if (v196 + v199 >= v12 || v199 < 0 && v196 < v197)
            {
              break;
            }

            v200 = v593[v192];
            v593[v192] = v200 + 1;
            v594[27 * v192 + v200] = v196 + v199++;
            --v197;
            --v198;
          }

          while (v198);
        }

        ++v192;
      }

      while (v192 != v195);
      v201 = 0;
      v202 = &v602[185 * v589 + 375];
      v203 = v594;
      v204 = &v594[1];
      do
      {
        v205 = v593[v201];
        if (v205)
        {
          if (v205 == 1)
          {
            v206 = 0;
          }

          else
          {
            v206 = v205 & 0xFFFFFFFFFFFFFFFELL;
            v207 = v204;
            v208 = v205 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v209 = *v207;
              *(v202 + *(v207 - 1)) = 2143289344;
              *(v202 + v209) = 2143289344;
              v207 += 2;
              v208 -= 2;
            }

            while (v208);
            if (v205 == v206)
            {
              goto LABEL_171;
            }
          }

          v210 = v205 - v206;
          v211 = &v203[v206];
          do
          {
            v212 = *v211++;
            *(v202 + v212) = 2143289344;
            --v210;
          }

          while (v210);
        }

LABEL_171:
        ++v201;
        v204 += 27;
        v203 += 27;
      }

      while (v201 != v195);
    }

    v124 = v120[v589];
LABEL_182:
    v213 = *(v9 + 88 + 8 * v125);
    v121 = 0.0;
    if (v213 <= v124)
    {
      v214 = 0;
      do
      {
        v215 = *(v119 + v213) + v121;
        v121 = v215;
        ++v214;
        ++v213;
      }

      while (v213 <= v124);
      if (v214)
      {
        v121 = v215 / v214;
      }

      else
      {
        v121 = 0.0;
      }
    }

    v122 = __na;
    if (*&__na < v121 || v125 == 0)
    {
      *&v122 = v121;
    }

    __na = v122;
    v115 = v125 + 1;
    v119 += 185;
  }

  while (v115 != 3);
  *(v10 + 18) = v122;
  LODWORD(v602[0]) = 2143289344;
  memset_pattern4(__A, v602, 0x1140uLL);
  v602[0] = 0.0;
  memset_pattern8(&v595, v602, 0x18uLL);
  v229 = *v120;
  v230 = *v120 + 1;
  v232 = v575;
  v231 = v576;
  v233 = v9;
  if (v575 < v230)
  {
    v234 = v229 + v577 - v582 + 1;
    v235 = v595;
    if (v234 <= 3)
    {
LABEL_213:
      v241 = __A + 3 * v235;
      v242 = v229 - v232 + 1;
      v243 = &v602[375] + v232;
      v235 = v235 + v229 - v232 + 1;
      do
      {
        v244 = *v243++;
        *v241 = v244;
        v241 += 3;
        --v242;
      }

      while (v242);
    }

    else
    {
      v236 = v234 & 0xFFFFFFFFFFFFFFFCLL;
      v235 = v595 + (v234 & 0xFFFFFFFFFFFFFFFCLL);
      v237 = (&v602[375] + 4 * v582 + -4 * v577);
      v238 = &__A[3] + 3 * v595;
      v239 = v234 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v240 = *v237++;
        *(v238 - 6) = v240;
        *(v238 - 3) = DWORD1(v240);
        *v238 = DWORD2(v240);
        v238[3] = HIDWORD(v240);
        v238 += 12;
        v239 -= 4;
      }

      while (v239);
      if (v234 != v236)
      {
        v232 = v575 + v236;
        goto LABEL_213;
      }
    }

    v595 = v235;
  }

  v245 = *(v9 + 176);
  v246 = v245 + 1;
  if (v576 < v245 + 1)
  {
    v247 = v245 + v577 - v583 + 1;
    v248 = v596;
    if (v247 < 4)
    {
LABEL_222:
      v254 = __A + 3 * v248 + 1;
      v255 = v245 - v231 + 1;
      v256 = &v602[560] + v231;
      v248 = v248 + v245 - v231 + 1;
      do
      {
        v257 = *v256++;
        *v254 = v257;
        v254 += 3;
        --v255;
      }

      while (v255);
    }

    else
    {
      v249 = v247 & 0xFFFFFFFFFFFFFFFCLL;
      v248 = v596 + (v247 & 0xFFFFFFFFFFFFFFFCLL);
      v250 = (&v602[560] + 4 * v583 + -4 * v577);
      v251 = &__A[3] + 3 * v596 + 1;
      v252 = v247 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v253 = *v250++;
        *(v251 - 6) = v253;
        *(v251 - 3) = DWORD1(v253);
        *v251 = DWORD2(v253);
        v251[3] = HIDWORD(v253);
        v251 += 12;
        v252 -= 4;
      }

      while (v252);
      if (v247 != v249)
      {
        v231 = v576 + v249;
        goto LABEL_222;
      }
    }

    v596 = v248;
  }

  v258 = *(v9 + 184);
  v259 = v258 + 1;
  v260 = v597;
  v261 = v578;
  if (v578 < v258 + 1)
  {
    v262 = v258 + v577 - v584 + 1;
    if (v262 < 4)
    {
LABEL_231:
      v269 = &__A[1] + 3 * v260;
      v270 = v258 - v261 + 1;
      v271 = &v603[185] + v261;
      v264 = v260 + v258 - v261 + 1;
      do
      {
        v272 = *v271++;
        *v269 = v272;
        v269 += 3;
        --v270;
      }

      while (v270);
    }

    else
    {
      v263 = v262 & 0xFFFFFFFFFFFFFFFCLL;
      v264 = v597 + (v262 & 0xFFFFFFFFFFFFFFFCLL);
      v265 = (&v602[745] + 4 * v584 + -4 * v577);
      v266 = &__A[4] + 3 * v597;
      v267 = v262 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v268 = *v265++;
        *(v266 - 6) = v268;
        *(v266 - 3) = DWORD1(v268);
        *v266 = DWORD2(v268);
        v266[3] = HIDWORD(v268);
        v266 += 12;
        v267 -= 4;
      }

      while (v267);
      if (v262 != v263)
      {
        v261 = v578 + v263;
        v260 += v262 & 0xFFFFFFFFFFFFFFFCLL;
        goto LABEL_231;
      }
    }

    v597 = v264;
    v260 = v264;
  }

  LODWORD(v599) = 2143289344;
  memset_pattern4(v602, &v599, 0x5C0uLL);
  v273 = v595;
  if (v595 <= v596)
  {
    v273 = v596;
  }

  v357 = v273 >= v260;
  v274 = 16;
  if (v357)
  {
    v274 = 8 * (v595 < v596);
  }

  v275 = *(&v595 + v274);
  if (v275)
  {
    if (v275 <= 3)
    {
      v276 = 0;
      goto LABEL_273;
    }

    v276 = v275 & 0xFFFFFFFFFFFFFFFCLL;
    v277 = &v602[1];
    v278 = __A;
    v279 = vdupq_n_s64(1uLL);
    v280 = v275 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v619 = vld3q_f32(v278);
      v281 = vceqq_f32(v619.val[0], v619.val[0]);
      v282.i64[0] = v281.u32[2];
      v282.i64[1] = v281.u32[3];
      v283 = vandq_s8(v282, v279);
      v282.i64[0] = v281.u32[0];
      v282.i64[1] = v281.u32[1];
      v284 = vandq_s8(v282, v279);
      v285 = vceqq_f32(v619.val[1], v619.val[1]);
      v282.i64[0] = v285.u32[2];
      v282.i64[1] = v285.u32[3];
      v286 = vandq_s8(v282, v279);
      v282.i64[0] = v285.u32[0];
      v282.i64[1] = v285.u32[1];
      v287 = vaddq_s64(v284, vandq_s8(v282, v279));
      v288 = vaddq_s64(v283, v286);
      v289 = vceqq_f32(v619.val[2], v619.val[2]);
      v282.i64[0] = v289.u32[0];
      v282.i64[1] = v289.u32[1];
      v290 = vandq_s8(v282, v279);
      v282.i64[0] = v289.u32[2];
      v282.i64[1] = v289.u32[3];
      v291 = vaddq_s64(v288, vandq_s8(v282, v279));
      v292 = vaddq_s64(v287, v290);
      v293 = vmovn_s64(vtstq_s64(v292, v292));
      v294 = vaddq_f32(vandq_s8(v619.val[0], v281), vandq_s8(v619.val[1], v285));
      v295 = vdivq_f32(vbslq_s8(v289, vaddq_f32(v619.val[2], v294), v294), vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v292)), vcvtq_f64_u64(v291)));
      if (vuzp1_s16(v293, *v279.i8).u8[0])
      {
        *(v277 - 2) = v295.i32[0];
      }

      if (vuzp1_s16(v293, *&v279).i8[2])
      {
        *(v277 - 1) = v295.i32[1];
      }

      if (vuzp1_s16(*&v279, vmovn_s64(vtstq_s64(v291, v291))).i32[1])
      {
        *v277 = *&v295.i64[1];
      }

      v277 += 2;
      v278 += 12;
      v280 -= 4;
    }

    while (v280);
    if (v275 != v276)
    {
LABEL_273:
      v315 = v275 - v276;
      v316 = v602 + v276;
      v317 = &__A[1] + 3 * v276;
      do
      {
        *v316++ = (*v317 + (*(v317 - 2) + *(v317 - 1))) / 3uLL;
        v317 += 3;
        --v315;
      }

      while (v315);
    }
  }

  v296 = *(v9 + 208);
  v297 = v296 >> 1;
  LODWORD(v594[0]) = 2143289344;
  memset_pattern4(&v599, v594, 0x5C0uLL);
  v299 = v275 - (v296 >> 1);
  if (v275 < v296 >> 1)
  {
    peridot_depth_log("Wrong configuration: LEDTailYpriSize");
    return 4;
  }

  v300 = v299 - v297;
  v301 = __na;
  if (v299 > v297)
  {
    v302 = v296 / 2;
    v303 = v602 + v297 + v296 / -2;
    v304 = v296 >> 1;
    do
    {
      v305 = 0.0;
      if (v296 / -2 <= v302)
      {
        v306 = v303;
        v307 = 2 * v302 + 1;
        do
        {
          v305 = *v306++ + v305;
          --v307;
        }

        while (v307);
      }

      *(&v599 + v304 - v297) = v305 * (1.0 / v296);
      ++v304;
      ++v303;
    }

    while (v304 != v299);
  }

  if (v300 < v299)
  {
    if (v296 <= 0xF)
    {
LABEL_266:
      v311 = v300 + v297 - v275;
      v312 = &v599 + v300;
      do
      {
        *v312++ = __na;
        v357 = __CFADD__(v311++, 1);
      }

      while (!v357);
    }

    else
    {
      v298 = vdupq_lane_s32(*&__na, 0);
      v308 = v297 & 0x7FFFFFFFFFFFFFF8;
      v309 = (&v599 + 4 * v275 + -8 * v297 + 16);
      v310 = v297 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v309[-1] = v298;
        *v309 = v298;
        v309 += 2;
        v310 -= 8;
      }

      while (v310);
      if (v297 != v308)
      {
        v300 += v308;
        goto LABEL_266;
      }
    }
  }

  if (v275 != v297)
  {
    v313 = 0;
    v314 = 0;
    v298.i32[1] = 0;
    do
    {
      ++v314;
      --v313;
    }

    while (v314 != v299);
    v318 = 4 * v275 - 4 * v297 - 4;
    v319 = &v599;
    if (v318 < 0x1C)
    {
      goto LABEL_281;
    }

    v320 = (v318 >> 2) + 1;
    v298 = vdupq_lane_s32(*&__na, 0);
    v321 = v601;
    v322 = v320 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v323 = vbslq_s8(vcgtq_f32(v298, *v321), v298, *v321);
      v321[-1] = vbslq_s8(vcgtq_f32(v298, v321[-1]), v298, v321[-1]);
      *v321 = v323;
      v321 += 2;
      v322 -= 8;
    }

    while (v322);
    if (v320 != (v320 & 0x7FFFFFFFFFFFFFF8))
    {
      v319 = &v599 + (v320 & 0x7FFFFFFFFFFFFFF8);
LABEL_281:
      v324 = &v599 + v299;
      do
      {
        v325 = *v319;
        if (*&__na > *v319)
        {
          v325 = *&__na;
        }

        *v319++ = v325;
      }

      while (v319 != v324);
    }
  }

  v326 = *(v9 + 64);
  if (v326 <= 0x16F)
  {
    if (v326)
    {
      if (v326 <= 7)
      {
        v327 = 0;
        goto LABEL_292;
      }

      v327 = *(v9 + 64) & 0x1F8;
      v298 = vdupq_lane_s32(*&__na, 0);
      v328 = &v610;
      v329 = v327;
      do
      {
        v328[-1] = v298;
        *v328 = v298;
        v328 += 2;
        v329 -= 8;
      }

      while (v329);
      if (v326 != v327)
      {
LABEL_292:
        v330 = v326 - v327;
        v331 = &v609[4 * v327];
        do
        {
          *v331++ = __na;
          --v330;
        }

        while (v330);
      }
    }

    if (v230 > v326)
    {
      memcpy(&v609[4 * v326], &v599, 4 * (v230 - v326));
      v301 = __na;
    }

    v332 = *(v9 + 72);
    if (v332 <= 0x16F)
    {
      if (v332)
      {
        if (v332 < 8)
        {
          v333 = 0;
          goto LABEL_303;
        }

        v333 = *(v9 + 72) & 0x1F8;
        v298 = vdupq_lane_s32(v301, 0);
        v334 = &v612;
        v335 = v333;
        do
        {
          v334[-1] = v298;
          *v334 = v298;
          v334 += 2;
          v335 -= 8;
        }

        while (v335);
        if (v332 != v333)
        {
LABEL_303:
          v336 = v332 - v333;
          v337 = &v611[v333];
          do
          {
            *v337++ = v301.i32[0];
            --v336;
          }

          while (v336);
        }
      }

      v338 = v611;
      if (v246 > v332)
      {
        memcpy(&v611[v332], &v599, 4 * (v246 - v332));
        v301 = __na;
      }

      v339 = *(v9 + 80);
      if (v339 <= 0x16F)
      {
        if (!v339)
        {
          goto LABEL_317;
        }

        if (v339 >= 8)
        {
          v340 = *(v9 + 80) & 0x1F8;
          v298 = vdupq_lane_s32(v301, 0);
          v341 = &v614;
          v342 = v340;
          do
          {
            v341[-1] = v298;
            *v341 = v298;
            v341 += 2;
            v342 -= 8;
          }

          while (v342);
          if (v339 == v340)
          {
LABEL_317:
            v345 = v613;
            if (v259 > v339)
            {
              memcpy(&v613[v339], &v599, 4 * (v259 - v339));
            }

            v298.f32[0] = *(v9 + 192) / v116;
            v346 = *v10;
            v347 = v10[3];
            v348 = *v587;
            v349 = v587[3];
            v350 = **v10;
            v351 = *(v350 + 8);
            v352 = *(*v347 + 8);
            v353 = *(**v587 + 8);
            v354 = *(*v349 + 8);
            v355 = *(v9 + 40);
            v356 = v581;
            if (v355)
            {
              if (v355 > 7 && ((v352 - v351) >= 0x10 ? (v357 = (v351 - v353) >= 0x10) : (v357 = 0), v357 ? (v358 = (v354 - v351) >= 0x10) : (v358 = 0), v358 ? (v359 = (v352 - v353) >= 0x10) : (v359 = 0), v359 ? (v360 = (v352 - v354) >= 0x10) : (v360 = 0), v360))
              {
                v361 = v355 & 0xFFFFFFFFFFFFFFFCLL;
                v526 = v609;
                v527 = *(**v587 + 8);
                v528 = vdupq_lane_s32(*v298.f32, 0);
                v529 = *(v350 + 8);
                v530 = *(*v349 + 8);
                v531 = *(*v347 + 8);
                v532 = v355 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v533 = *v527++;
                  v534 = v533;
                  v535 = *v526++;
                  v536 = v535;
                  *v529++ = vsubq_f32(v534, v535);
                  v537 = vcgtq_f32(v528, v535);
                  v538 = *v530++;
                  *v531++ = vmulq_f32(vmulq_n_f32(v538, v581), vbslq_s8(v537, v528, v536));
                  v532 -= 4;
                }

                while (v532);
                if (v355 == v361)
                {
                  goto LABEL_339;
                }
              }

              else
              {
                v361 = 0;
              }

              v362 = v355 - v361;
              v363 = 4 * v361;
              v364 = (v352 + 4 * v361);
              v365 = (v354 + v363);
              v366 = (v351 + v363);
              v367 = &v609[v363];
              v368 = (v353 + v363);
              do
              {
                v369 = *v368++;
                v370 = v369;
                v371 = *v367++;
                v372 = v371;
                *v366++ = v370 - v371;
                v373 = v371 < v298.f32[0];
                v374 = *v365++;
                v375 = v374;
                if (v373)
                {
                  v372 = v298.f32[0];
                }

                *v364++ = (v375 * v581) * v372;
                --v362;
              }

              while (v362);
            }

LABEL_339:
            v376 = v326 - v355;
            if (v326 <= v355)
            {
              goto LABEL_348;
            }

            if (v376 >= 8 && (v352 - v351) > 0x1F)
            {
              v377 = v376 & 0xFFFFFFFFFFFFFFF8;
              v378 = (4 * v355 + v352 + 16);
              v379 = (v351 + 4 * v355);
              v380 = vdupq_n_s32(0x49742400u);
              v381 = v376 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                *v379 = 0uLL;
                v379[1] = 0uLL;
                v379 += 2;
                v378[-1] = v380;
                *v378 = v380;
                v378 += 2;
                v381 -= 8;
              }

              while (v381);
              if (v376 == v377)
              {
LABEL_348:
                v386 = *(v350 + 16);
                v387 = v386 - v326;
                if (v386 <= v326)
                {
                  goto LABEL_354;
                }

                if (v387 > 7 && (v352 - v351) >= 0x10)
                {
                  if ((v351 - v353) < 0x10 || (v354 - v351) < 0x10 || (v352 - v353) < 0x10)
                  {
                    v233 = v9;
                    v356 = v581;
                  }

                  else
                  {
                    v233 = v9;
                    v356 = v581;
                    if ((v352 - v354) >= 0x10)
                    {
                      v498 = v387 & 0xFFFFFFFFFFFFFFFCLL;
                      v499 = vdupq_lane_s32(*v298.f32, 0);
                      v500 = (v352 + 4 * v326);
                      v501 = (v354 + 4 * v326);
                      v502 = (v351 + 4 * v326);
                      v503 = &v609[4 * v326];
                      v504 = (v353 + 4 * v326);
                      v505 = v387 & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v506 = *v504++;
                        v507 = v506;
                        v508 = *v503++;
                        v509 = v508;
                        *v502++ = vsubq_f32(v507, v508);
                        v510 = vcgtq_f32(v499, v508);
                        v511 = *v501++;
                        *v500++ = vmulq_f32(vmulq_n_f32(v511, v581), vbslq_s8(v510, v499, v509));
                        v505 -= 4;
                      }

                      while (v505);
                      v233 = v9;
                      if (v387 == v498)
                      {
                        goto LABEL_354;
                      }

                      v326 += v498;
                    }
                  }
                }

                v388 = v386 - v326;
                v389 = (v352 + 4 * v326);
                v390 = (v354 + 4 * v326);
                v391 = (v351 + 4 * v326);
                v392 = &v609[4 * v326];
                v393 = (v353 + 4 * v326);
                do
                {
                  v394 = *v393++;
                  v395 = v394;
                  v396 = *v392++;
                  v397 = v396;
                  *v391++ = v395 - v396;
                  v373 = v396 < v298.f32[0];
                  v398 = *v390++;
                  v399 = v398;
                  if (v373)
                  {
                    v397 = v298.f32[0];
                  }

                  *v389++ = (v399 * v356) * v397;
                  --v388;
                }

                while (v388);
LABEL_354:
                v400 = v346[1];
                v401 = *(v400 + 8);
                v402 = *(v347[1] + 8);
                v403 = *(*(v348 + 8) + 8);
                v404 = *(v349[1] + 8);
                v405 = *(v233 + 48);
                if (!v405)
                {
                  goto LABEL_374;
                }

                if (v405 >= 8 && ((v402 - v401) >= 0x10 ? (v406 = (v401 - v403) >= 0x10) : (v406 = 0), v406 ? (v407 = (v404 - v401) >= 0x10) : (v407 = 0), v407 ? (v408 = (v402 - v403) >= 0x10) : (v408 = 0), v408 ? (v409 = (v402 - v404) >= 0x10) : (v409 = 0), v409))
                {
                  v410 = v405 & 0xFFFFFFFFFFFFFFFCLL;
                  v539 = *(*(v348 + 8) + 8);
                  v540 = vdupq_lane_s32(*v298.f32, 0);
                  v541 = *(v400 + 8);
                  v542 = *(v349[1] + 8);
                  v543 = *(v347[1] + 8);
                  v544 = v405 & 0xFFFFFFFFFFFFFFFCLL;
                  do
                  {
                    v545 = *v539++;
                    v546 = v545;
                    v547 = *v338++;
                    v548 = v547;
                    *v541++ = vsubq_f32(v546, v547);
                    v549 = vcgtq_f32(v540, v547);
                    v550 = *v542++;
                    *v543++ = vmulq_f32(vmulq_n_f32(v550, v356), vbslq_s8(v549, v540, v548));
                    v544 -= 4;
                  }

                  while (v544);
                  if (v405 == v410)
                  {
                    goto LABEL_374;
                  }
                }

                else
                {
                  v410 = 0;
                }

                v411 = v405 - v410;
                v412 = 4 * v410;
                v413 = (v402 + 4 * v410);
                v414 = (v404 + v412);
                v415 = (v401 + v412);
                v416 = &v609[v412 + 1472];
                v417 = (v403 + v412);
                do
                {
                  v418 = *v417++;
                  v419 = v418;
                  v420 = *v416++;
                  v421 = v420;
                  *v415++ = v419 - v420;
                  v373 = v420 < v298.f32[0];
                  v422 = *v414++;
                  v423 = v422;
                  if (v373)
                  {
                    v421 = v298.f32[0];
                  }

                  *v413++ = (v423 * v356) * v421;
                  --v411;
                }

                while (v411);
LABEL_374:
                v424 = v332 - v405;
                if (v332 <= v405)
                {
                  goto LABEL_383;
                }

                if (v424 >= 8 && (v402 - v401) >= 0x20)
                {
                  v425 = v424 & 0xFFFFFFFFFFFFFFF8;
                  v426 = (4 * v405 + v402 + 16);
                  v427 = (v401 + 4 * v405);
                  v428 = vdupq_n_s32(0x49742400u);
                  v429 = v424 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    *v427 = 0uLL;
                    v427[1] = 0uLL;
                    v427 += 2;
                    v426[-1] = v428;
                    *v426 = v428;
                    v426 += 2;
                    v429 -= 8;
                  }

                  while (v429);
                  if (v424 == v425)
                  {
LABEL_383:
                    v434 = *(v400 + 16);
                    v435 = v434 - v332;
                    if (v434 <= v332)
                    {
                      goto LABEL_389;
                    }

                    if (v435 >= 8 && (v402 - v401) >= 0x10)
                    {
                      if ((v401 - v403) < 0x10 || (v404 - v401) < 0x10 || (v402 - v403) < 0x10)
                      {
                        v233 = v9;
                        v356 = v581;
                      }

                      else
                      {
                        v233 = v9;
                        v356 = v581;
                        if ((v402 - v404) >= 0x10)
                        {
                          v512 = v435 & 0xFFFFFFFFFFFFFFFCLL;
                          v513 = vdupq_lane_s32(*v298.f32, 0);
                          v514 = (v402 + 4 * v332);
                          v515 = (v404 + 4 * v332);
                          v516 = (v401 + 4 * v332);
                          v517 = &v609[4 * v332 + 1472];
                          v518 = (v403 + 4 * v332);
                          v519 = v435 & 0xFFFFFFFFFFFFFFFCLL;
                          do
                          {
                            v520 = *v518++;
                            v521 = v520;
                            v522 = *v517++;
                            v523 = v522;
                            *v516++ = vsubq_f32(v521, v522);
                            v524 = vcgtq_f32(v513, v522);
                            v525 = *v515++;
                            *v514++ = vmulq_f32(vmulq_n_f32(v525, v581), vbslq_s8(v524, v513, v523));
                            v519 -= 4;
                          }

                          while (v519);
                          v233 = v9;
                          if (v435 == v512)
                          {
                            goto LABEL_389;
                          }

                          v332 += v512;
                        }
                      }
                    }

                    v436 = v434 - v332;
                    v437 = (v402 + 4 * v332);
                    v438 = (v404 + 4 * v332);
                    v439 = (v401 + 4 * v332);
                    v440 = &v609[4 * v332 + 1472];
                    v441 = (v403 + 4 * v332);
                    do
                    {
                      v442 = *v441++;
                      v443 = v442;
                      v444 = *v440++;
                      v445 = v444;
                      *v439++ = v443 - v444;
                      v373 = v444 < v298.f32[0];
                      v446 = *v438++;
                      v447 = v446;
                      if (v373)
                      {
                        v445 = v298.f32[0];
                      }

                      *v437++ = (v447 * v356) * v445;
                      --v436;
                    }

                    while (v436);
LABEL_389:
                    v448 = v346[2];
                    v449 = *(v448 + 8);
                    v450 = *(v347[2] + 8);
                    v451 = *(*(v348 + 16) + 8);
                    v452 = *(v349[2] + 8);
                    v453 = *(v233 + 56);
                    if (!v453)
                    {
                      goto LABEL_409;
                    }

                    if (v453 >= 8 && (v450 - v449 >= 0x10 ? (v454 = (v449 - v451) >= 0x10) : (v454 = 0), v454 ? (v455 = v452 - v449 >= 0x10) : (v455 = 0), v455 ? (v456 = (v450 - v451) >= 0x10) : (v456 = 0), v456 ? (v457 = (v450 - v452) >= 0x10) : (v457 = 0), v457))
                    {
                      v458 = v453 & 0xFFFFFFFFFFFFFFFCLL;
                      v551 = v451;
                      v552 = vdupq_lane_s32(*v298.f32, 0);
                      v553 = *(v448 + 8);
                      v554 = v452;
                      v555 = v450;
                      v556 = v453 & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v557 = *v551++;
                        v558 = v557;
                        v559 = *v345++;
                        v560 = v559;
                        *v553++ = vsubq_f32(v558, v559);
                        v561 = vcgtq_f32(v552, v559);
                        v562 = *v554++;
                        *v555++ = vmulq_f32(vmulq_n_f32(v562, v356), vbslq_s8(v561, v552, v560));
                        v556 -= 4;
                      }

                      while (v556);
                      if (v453 == v458)
                      {
                        goto LABEL_409;
                      }
                    }

                    else
                    {
                      v458 = 0;
                    }

                    v459 = v453 - v458;
                    v460 = v458;
                    v461 = &v450->f32[v458];
                    v462 = &v452->f32[v460];
                    v463 = (v449 + v460 * 4);
                    v464 = &v609[v460 * 4 + 2944];
                    v465 = &v451->f32[v460];
                    do
                    {
                      v466 = *v465++;
                      v467 = v466;
                      v468 = *v464++;
                      v469 = v468;
                      *v463++ = v467 - v468;
                      v373 = v468 < v298.f32[0];
                      v470 = *v462++;
                      v471 = v470;
                      if (v373)
                      {
                        v469 = v298.f32[0];
                      }

                      *v461++ = (v471 * v356) * v469;
                      --v459;
                    }

                    while (v459);
LABEL_409:
                    v472 = v339 - v453;
                    if (v339 <= v453)
                    {
                      goto LABEL_418;
                    }

                    if (v472 >= 8 && v450 - v449 >= 0x20)
                    {
                      v473 = v472 & 0xFFFFFFFFFFFFFFF8;
                      v474 = &v450[1].f32[v453];
                      v475 = (v449 + 4 * v453);
                      v476 = vdupq_n_s32(0x49742400u);
                      v477 = v472 & 0xFFFFFFFFFFFFFFF8;
                      do
                      {
                        *v475 = 0uLL;
                        v475[1] = 0uLL;
                        v475 += 2;
                        v474[-1] = v476;
                        *v474 = v476;
                        v474 += 2;
                        v477 -= 8;
                      }

                      while (v477);
                      if (v472 == v473)
                      {
LABEL_418:
                        v482 = *(v448 + 16);
                        v483 = v482 - v339;
                        if (v482 <= v339)
                        {
                          return 0;
                        }

                        if (v483 >= 8 && v450 - v449 >= 0x10)
                        {
                          if ((v449 - v451) >= 0x10 && v452 - v449 >= 0x10 && (v450 - v451) >= 0x10)
                          {
                            v356 = v581;
                            if ((v450 - v452) < 0x10)
                            {
                              goto LABEL_461;
                            }

                            v484 = v483 & 0xFFFFFFFFFFFFFFFCLL;
                            v485 = vdupq_lane_s32(*v298.f32, 0);
                            v486 = (v450 + 4 * v339);
                            v487 = (v452 + 4 * v339);
                            v488 = (v449 + 4 * v339);
                            v489 = &v609[4 * v339 + 2944];
                            v490 = (v451 + 4 * v339);
                            v491 = v483 & 0xFFFFFFFFFFFFFFFCLL;
                            do
                            {
                              v492 = *v490++;
                              v493 = v492;
                              v494 = *v489++;
                              v495 = v494;
                              *v488++ = vsubq_f32(v493, v494);
                              v496 = vcgtq_f32(v485, v494);
                              v497 = *v487++;
                              *v486++ = vmulq_f32(vmulq_n_f32(v497, v581), vbslq_s8(v496, v485, v495));
                              v491 -= 4;
                            }

                            while (v491);
                            if (v483 == v484)
                            {
                              return 0;
                            }

                            v339 += v484;
                          }

                          v356 = v581;
                        }

LABEL_461:
                        v563 = v482 - v339;
                        v564 = &v450->f32[v339];
                        v565 = &v452->f32[v339];
                        v566 = (v449 + 4 * v339);
                        v567 = &v609[4 * v339 + 2944];
                        v568 = &v451->f32[v339];
                        result = 0;
                        do
                        {
                          v569 = *v568++;
                          v570 = v569;
                          v571 = *v567++;
                          v572 = v571;
                          *v566++ = v570 - v571;
                          v373 = v571 < v298.f32[0];
                          v573 = *v565++;
                          v574 = v573;
                          if (v373)
                          {
                            v572 = v298.f32[0];
                          }

                          *v564++ = (v574 * v356) * v572;
                          --v563;
                        }

                        while (v563);
                        return result;
                      }

                      v453 += v473;
                    }

                    v478 = v339 - v453;
                    v479 = 4 * v453;
                    v480 = &v450->i32[v453];
                    v481 = (v449 + v479);
                    do
                    {
                      *v481++ = 0;
                      *v480++ = 1232348160;
                      --v478;
                    }

                    while (v478);
                    goto LABEL_418;
                  }

                  v405 += v425;
                }

                v430 = v332 - v405;
                v431 = 4 * v405;
                v432 = (v402 + 4 * v405);
                v433 = (v401 + v431);
                do
                {
                  *v433++ = 0;
                  *v432++ = 1232348160;
                  --v430;
                }

                while (v430);
                goto LABEL_383;
              }

              v355 += v377;
            }

            v382 = v326 - v355;
            v383 = 4 * v355;
            v384 = (v352 + 4 * v355);
            v385 = (v351 + v383);
            do
            {
              *v385++ = 0;
              *v384++ = 1232348160;
              --v382;
            }

            while (v382);
            goto LABEL_348;
          }
        }

        else
        {
          v340 = 0;
        }

        v343 = v339 - v340;
        v344 = &v613[v340];
        do
        {
          *v344++ = v301.i32[0];
          --v343;
        }

        while (v343);
        goto LABEL_317;
      }
    }
  }

  peridot_depth_log("Wrong Configuration: LEDTailStart");
  return 4;
}

double peridot::PeridotDXPPreProcessor::PeridotDXPPreProcessor(peridot::PeridotDXPPreProcessor *this)
{
  *this = 257;
  *(this + 2) = 0;
  *(this + 97) = 0;
  *(this + 99) = 0;
  *(this + 98) = 0;
  *(this + 402) = 257;
  *(this + 806) = 0;
  result = 0.0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1048) = 0u;
  *(this + 2279) = 0u;
  *(this + 2280) = 0u;
  *(this + 2281) = 0u;
  *(this + 2333) = 0u;
  *(this + 2334) = 0u;
  *(this + 2335) = 0u;
  *(this + 2336) = 0u;
  *(this + 2337) = 0u;
  *(this + 2338) = 0u;
  *(this + 2339) = 0u;
  *(this + 2340) = 0u;
  *(this + 2341) = 0u;
  *(this + 2342) = 0u;
  *(this + 2343) = 0u;
  *(this + 2344) = 0u;
  *(this + 2345) = 0u;
  *(this + 2346) = 0u;
  *(this + 2347) = 0u;
  *(this + 2348) = 0u;
  *(this + 2349) = 0u;
  *(this + 2350) = 0u;
  *(this + 2351) = 0u;
  *(this + 2352) = 0u;
  *(this + 2353) = 0u;
  *(this + 2354) = 0u;
  *(this + 2355) = 0u;
  *(this + 2356) = 0u;
  *(this + 2357) = 0u;
  *(this + 2358) = 0u;
  *(this + 2359) = 0u;
  return result;
}

{
  *this = 257;
  *(this + 2) = 0;
  *(this + 97) = 0;
  *(this + 99) = 0;
  *(this + 98) = 0;
  *(this + 402) = 257;
  *(this + 806) = 0;
  result = 0.0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1048) = 0u;
  *(this + 2279) = 0u;
  *(this + 2280) = 0u;
  *(this + 2281) = 0u;
  *(this + 2333) = 0u;
  *(this + 2334) = 0u;
  *(this + 2335) = 0u;
  *(this + 2336) = 0u;
  *(this + 2337) = 0u;
  *(this + 2338) = 0u;
  *(this + 2339) = 0u;
  *(this + 2340) = 0u;
  *(this + 2341) = 0u;
  *(this + 2342) = 0u;
  *(this + 2343) = 0u;
  *(this + 2344) = 0u;
  *(this + 2345) = 0u;
  *(this + 2346) = 0u;
  *(this + 2347) = 0u;
  *(this + 2348) = 0u;
  *(this + 2349) = 0u;
  *(this + 2350) = 0u;
  *(this + 2351) = 0u;
  *(this + 2352) = 0u;
  *(this + 2353) = 0u;
  *(this + 2354) = 0u;
  *(this + 2355) = 0u;
  *(this + 2356) = 0u;
  *(this + 2357) = 0u;
  *(this + 2358) = 0u;
  *(this + 2359) = 0u;
  return result;
}

void peridot::PeridotDXPPreProcessor::~PeridotDXPPreProcessor(peridot::PeridotDXPPreProcessor *this)
{
  v2 = this + 36464;
  v3 = *(this + 4717);
  if (v3)
  {
    v4 = *(this + 4718);
    v5 = *(this + 4717);
    if (v4 != v3)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v3;
        v7 = v8;
      }

      while (!v10);
      v5 = *(v2 + 159);
    }

    *(v2 + 160) = v3;
    operator delete(v5);
  }

  v11 = *(v2 + 156);
  if (v11)
  {
    v12 = *(v2 + 157);
    v13 = *(v2 + 156);
    if (v12 != v11)
    {
      v14 = v12 - 3;
      v15 = v12 - 3;
      v16 = v12 - 3;
      do
      {
        v17 = *v16;
        v16 -= 3;
        (*v17)(v15);
        v14 -= 3;
        v10 = v15 == v11;
        v15 = v16;
      }

      while (!v10);
      v13 = *(v2 + 156);
    }

    *(v2 + 157) = v11;
    operator delete(v13);
  }

  v18 = *(v2 + 153);
  if (v18)
  {
    v19 = *(v2 + 154);
    v20 = *(v2 + 153);
    if (v19 != v18)
    {
      v21 = v19 - 3;
      v22 = v19 - 3;
      v23 = v19 - 3;
      do
      {
        v24 = *v23;
        v23 -= 3;
        (*v24)(v22);
        v21 -= 3;
        v10 = v22 == v18;
        v22 = v23;
      }

      while (!v10);
      v20 = *(v2 + 153);
    }

    *(v2 + 154) = v18;
    operator delete(v20);
  }

  v25 = *(v2 + 150);
  if (v25)
  {
    v26 = *(v2 + 151);
    v27 = *(v2 + 150);
    if (v26 != v25)
    {
      v28 = v26 - 3;
      v29 = v26 - 3;
      v30 = v26 - 3;
      do
      {
        v31 = *v30;
        v30 -= 3;
        (*v31)(v29);
        v28 -= 3;
        v10 = v29 == v25;
        v29 = v30;
      }

      while (!v10);
      v27 = *(v2 + 150);
    }

    *(v2 + 151) = v25;
    operator delete(v27);
  }

  v32 = *(v2 + 147);
  if (v32)
  {
    v33 = *(v2 + 148);
    v34 = *(v2 + 147);
    if (v33 != v32)
    {
      v35 = v33 - 3;
      v36 = v33 - 3;
      v37 = v33 - 3;
      do
      {
        v38 = *v37;
        v37 -= 3;
        (*v38)(v36);
        v35 -= 3;
        v10 = v36 == v32;
        v36 = v37;
      }

      while (!v10);
      v34 = *(v2 + 147);
    }

    *(v2 + 148) = v32;
    operator delete(v34);
  }

  v39 = *(v2 + 144);
  if (v39)
  {
    v40 = *(v2 + 145);
    v41 = *(v2 + 144);
    if (v40 != v39)
    {
      v42 = v40 - 3;
      v43 = v40 - 3;
      v44 = v40 - 3;
      do
      {
        v45 = *v44;
        v44 -= 3;
        (*v45)(v43);
        v42 -= 3;
        v10 = v43 == v39;
        v43 = v44;
      }

      while (!v10);
      v41 = *(v2 + 144);
    }

    *(v2 + 145) = v39;
    operator delete(v41);
  }

  v46 = *(v2 + 141);
  if (v46)
  {
    v47 = *(v2 + 142);
    v48 = *(v2 + 141);
    if (v47 != v46)
    {
      v49 = v47 - 3;
      v50 = v47 - 3;
      v51 = v47 - 3;
      do
      {
        v52 = *v51;
        v51 -= 3;
        (*v52)(v50);
        v49 -= 3;
        v10 = v50 == v46;
        v50 = v51;
      }

      while (!v10);
      v48 = *(v2 + 141);
    }

    *(v2 + 142) = v46;
    operator delete(v48);
  }

  v53 = *(v2 + 138);
  if (v53)
  {
    v54 = *(v2 + 139);
    v55 = *(v2 + 138);
    if (v54 != v53)
    {
      v56 = v54 - 3;
      v57 = v54 - 3;
      v58 = v54 - 3;
      do
      {
        v59 = *v58;
        v58 -= 3;
        (*v59)(v57);
        v56 -= 3;
        v10 = v57 == v53;
        v57 = v58;
      }

      while (!v10);
      v55 = *(v2 + 138);
    }

    *(v2 + 139) = v53;
    operator delete(v55);
  }

  v60 = *(v2 + 135);
  if (v60)
  {
    v61 = *(v2 + 136);
    v62 = *(v2 + 135);
    if (v61 != v60)
    {
      v63 = v61 - 3;
      v64 = v61 - 3;
      v65 = v61 - 3;
      do
      {
        v66 = *v65;
        v65 -= 3;
        (*v66)(v64);
        v63 -= 3;
        v10 = v64 == v60;
        v64 = v65;
      }

      while (!v10);
      v62 = *(v2 + 135);
    }

    *(v2 + 136) = v60;
    operator delete(v62);
  }

  v67 = *(v2 + 132);
  if (v67)
  {
    v68 = *(v2 + 133);
    v69 = *(v2 + 132);
    if (v68 != v67)
    {
      v70 = v68 - 3;
      v71 = v68 - 3;
      v72 = v68 - 3;
      do
      {
        v73 = *v72;
        v72 -= 3;
        (*v73)(v71);
        v70 -= 3;
        v10 = v71 == v67;
        v71 = v72;
      }

      while (!v10);
      v69 = *(v2 + 132);
    }

    *(v2 + 133) = v67;
    operator delete(v69);
  }

  v74 = *(v2 + 129);
  if (v74)
  {
    v75 = *(v2 + 130);
    v76 = *(v2 + 129);
    if (v75 != v74)
    {
      v77 = v75 - 3;
      v78 = v75 - 3;
      v79 = v75 - 3;
      do
      {
        v80 = *v79;
        v79 -= 3;
        (*v80)(v78);
        v77 -= 3;
        v10 = v78 == v74;
        v78 = v79;
      }

      while (!v10);
      v76 = *(v2 + 129);
    }

    *(v2 + 130) = v74;
    operator delete(v76);
  }

  v81 = *(v2 + 126);
  if (v81)
  {
    v82 = *(v2 + 127);
    v83 = *(v2 + 126);
    if (v82 != v81)
    {
      v84 = v82 - 3;
      v85 = v82 - 3;
      v86 = v82 - 3;
      do
      {
        v87 = *v86;
        v86 -= 3;
        (*v87)(v85);
        v84 -= 3;
        v10 = v85 == v81;
        v85 = v86;
      }

      while (!v10);
      v83 = *(v2 + 126);
    }

    *(v2 + 127) = v81;
    operator delete(v83);
  }

  v88 = *(v2 + 123);
  if (v88)
  {
    v89 = *(v2 + 124);
    v90 = *(v2 + 123);
    if (v89 != v88)
    {
      v91 = v89 - 3;
      v92 = v89 - 3;
      v93 = v89 - 3;
      do
      {
        v94 = *v93;
        v93 -= 3;
        (*v94)(v92);
        v91 -= 3;
        v10 = v92 == v88;
        v92 = v93;
      }

      while (!v10);
      v90 = *(v2 + 123);
    }

    *(v2 + 124) = v88;
    operator delete(v90);
  }

  v95 = *(v2 + 120);
  if (v95)
  {
    v96 = *(v2 + 121);
    v97 = *(v2 + 120);
    if (v96 != v95)
    {
      v98 = v96 - 3;
      v99 = v96 - 3;
      v100 = v96 - 3;
      do
      {
        v101 = *v100;
        v100 -= 3;
        (*v101)(v99);
        v98 -= 3;
        v10 = v99 == v95;
        v99 = v100;
      }

      while (!v10);
      v97 = *(v2 + 120);
    }

    *(v2 + 121) = v95;
    operator delete(v97);
  }

  v102 = *(v2 + 117);
  if (v102)
  {
    v103 = *(v2 + 118);
    v104 = *(v2 + 117);
    if (v103 != v102)
    {
      v105 = v103 - 3;
      v106 = v103 - 3;
      v107 = v103 - 3;
      do
      {
        v108 = *v107;
        v107 -= 3;
        (*v108)(v106);
        v105 -= 3;
        v10 = v106 == v102;
        v106 = v107;
      }

      while (!v10);
      v104 = *(v2 + 117);
    }

    *(v2 + 118) = v102;
    operator delete(v104);
  }

  v109 = *(v2 + 114);
  if (v109)
  {
    v110 = *(v2 + 115);
    v111 = *(v2 + 114);
    if (v110 != v109)
    {
      v112 = v110 - 3;
      v113 = v110 - 3;
      v114 = v110 - 3;
      do
      {
        v115 = *v114;
        v114 -= 3;
        (*v115)(v113);
        v112 -= 3;
        v10 = v113 == v109;
        v113 = v114;
      }

      while (!v10);
      v111 = *(v2 + 114);
    }

    *(v2 + 115) = v109;
    operator delete(v111);
  }

  v116 = *(v2 + 111);
  if (v116)
  {
    v117 = *(v2 + 112);
    v118 = *(v2 + 111);
    if (v117 != v116)
    {
      v119 = v117 - 3;
      v120 = v117 - 3;
      v121 = v117 - 3;
      do
      {
        v122 = *v121;
        v121 -= 3;
        (*v122)(v120);
        v119 -= 3;
        v10 = v120 == v116;
        v120 = v121;
      }

      while (!v10);
      v118 = *(v2 + 111);
    }

    *(v2 + 112) = v116;
    operator delete(v118);
  }

  v123 = *(v2 + 108);
  if (v123)
  {
    v124 = *(v2 + 109);
    v125 = *(v2 + 108);
    if (v124 != v123)
    {
      v126 = v124 - 3;
      v127 = v124 - 3;
      v128 = v124 - 3;
      do
      {
        v129 = *v128;
        v128 -= 3;
        (*v129)(v127);
        v126 -= 3;
        v10 = v127 == v123;
        v127 = v128;
      }

      while (!v10);
      v125 = *(v2 + 108);
    }

    *(v2 + 109) = v123;
    operator delete(v125);
  }

  v130 = *(v2 + 3);
  if (v130)
  {
    *(v2 + 4) = v130;
    operator delete(v130);
  }

  v131 = *v2;
  if (*v2)
  {
    *(v2 + 1) = v131;
    operator delete(v131);
  }

  peridot::PeridotDXPBaselineRemoval::~PeridotDXPBaselineRemoval((this + 56));
}

uint64_t peridot::PeridotDXPPreProcessor::init(uint64_t a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = a3;
  *(a1 + 2) = BYTE2(a3);
  *(a1 + 8) = xmmword_2247A45F0;
  *(a1 + 24) = xmmword_2247A50D0;
  *(a1 + 40) = vdupq_n_s64(1uLL);
  *(a1 + 804) = a3;
  *(a1 + 806) = BYTE2(a3);
  LODWORD(v19) = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v4 = (a1 + 296);
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  result = peridot::PeridotDXPBaselineRemoval::strayPeakUpdate((a1 + 56), flt_2247B946C, &v18, flt_2247B9478, &v21);
  if (!result)
  {
    *(a1 + 456) = 1082130432;
    *(a1 + 488) = xmmword_2247A5080;
    *(a1 + 504) = xmmword_2247A5090;
    *(a1 + 520) = xmmword_2247A5070;
    v6 = v4[9];
    *(a1 + 664) = v4[8];
    *(a1 + 680) = v6;
    v7 = v4[5];
    *(a1 + 600) = v4[4];
    *(a1 + 616) = v7;
    v8 = v4[7];
    *(a1 + 632) = v4[6];
    *(a1 + 648) = v8;
    v9 = v4[1];
    *(a1 + 536) = *v4;
    *(a1 + 552) = v9;
    v10 = v4[3];
    *(a1 + 568) = v4[2];
    *(a1 + 584) = v10;
    v11 = v4[11];
    *(a1 + 696) = v4[10];
    *(a1 + 712) = v11;
    v12 = v4[13];
    *(a1 + 728) = v4[12];
    *(a1 + 744) = v12;
    *(a1 + 760) = v4[14];
    *(a1 + 216) = 1082130432;
    *(a1 + 224) = vdupq_n_s64(0x5CuLL);
    *(a1 + 240) = xmmword_2247A50A0;
    *(a1 + 288) = 12;
    *(a1 + 256) = xmmword_2247A50C0;
    *(a1 + 272) = xmmword_2247A50B0;
    *(a1 + 1096) = 1058642330;
    v13 = xmmword_2247A4650;
    v14 = (a1 + 1120);
    v15 = 368;
    v16 = vdupq_n_s64(2uLL);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v14[-1] = v13;
      *v14 = vaddq_s64(v13, v16);
      v13 = vaddq_s64(v13, v17);
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &v18;
    LOBYTE(v22) = 0;
    operator new();
  }

  return result;
}

void sub_2247631FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::vector<peridot::ImgHistogram>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDXPPreProcessor::setRunMode(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  *(result + 804) = a2;
  *(result + 806) = BYTE2(a2);
  return result;
}

float32_t peridot::PeridotDXPPreProcessor::configure(peridot::PeridotDXPPreProcessor *this, const peridot::PeridotDXPCalib *a2)
{
  v4 = this + 36432;
  *(this + 9330) = *a2;
  *(this + 37325) = *(a2 + 5);
  v5 = *(a2 + 4);
  *(this + 37324) = v5;
  *(this + 9108) = *(a2 + 862) * v5;
  *(this + 9109) = *(a2 + 863) * v5;
  v6 = *(a2 + 864);
  *(this + 9110) = v6 * v5;
  v7 = *(a2 + 431);
  *(this + 9113) = *(a2 + 864);
  *(this + 36444) = v7;
  LOBYTE(v6) = *(a2 + 6);
  v8 = *(a2 + 874) * LODWORD(v6);
  *(this + 9114) = v8;
  *(this + 9115) = v8;
  *(this + 37317) = *(a2 + 3525);
  *(this + 9328) = *(a2 + 880);
  *(this + 37316) = *(a2 + 3524);
  v9 = (this + 36464);
  if (v9 != (a2 + 3920))
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v9, *(a2 + 490), *(a2 + 491), (*(a2 + 491) - *(a2 + 490)) >> 2);
  }

  v10 = *(a2 + 484);
  if (*(a2 + 485) - v10 != 800 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v63[0] = 0;
    _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "PeridotDXPPreProcessor::configure: _DTMmod_LSB wrong size", v63, 2u);
    v10 = *(a2 + 484);
  }

  if (((this + 36512) - v10) > 0x1F)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v17 = vsubq_f32(_Q0, v10[1]);
    *(this + 2282) = vsubq_f32(_Q0, *v10);
    *(this + 2283) = v17;
    v18 = vsubq_f32(_Q0, v10[3]);
    *(this + 2284) = vsubq_f32(_Q0, v10[2]);
    *(this + 2285) = v18;
    v19 = vsubq_f32(_Q0, v10[5]);
    *(this + 2286) = vsubq_f32(_Q0, v10[4]);
    *(this + 2287) = v19;
    v20 = vsubq_f32(_Q0, v10[7]);
    *(this + 2288) = vsubq_f32(_Q0, v10[6]);
    *(this + 2289) = v20;
    v21 = vsubq_f32(_Q0, v10[9]);
    *(this + 2290) = vsubq_f32(_Q0, v10[8]);
    *(this + 2291) = v21;
    v22 = vsubq_f32(_Q0, v10[11]);
    *(this + 2292) = vsubq_f32(_Q0, v10[10]);
    *(this + 2293) = v22;
    v23 = vsubq_f32(_Q0, v10[13]);
    *(this + 2294) = vsubq_f32(_Q0, v10[12]);
    *(this + 2295) = v23;
    v24 = vsubq_f32(_Q0, v10[15]);
    *(this + 2296) = vsubq_f32(_Q0, v10[14]);
    *(this + 2297) = v24;
    v25 = vsubq_f32(_Q0, v10[17]);
    *(this + 2298) = vsubq_f32(_Q0, v10[16]);
    *(this + 2299) = v25;
    v26 = vsubq_f32(_Q0, v10[19]);
    *(this + 2300) = vsubq_f32(_Q0, v10[18]);
    *(this + 2301) = v26;
    v27 = vsubq_f32(_Q0, v10[21]);
    *(this + 2302) = vsubq_f32(_Q0, v10[20]);
    *(this + 2303) = v27;
    v28 = vsubq_f32(_Q0, v10[23]);
    *(this + 2304) = vsubq_f32(_Q0, v10[22]);
    *(this + 2305) = v28;
    v29 = vsubq_f32(_Q0, v10[25]);
    *(this + 2306) = vsubq_f32(_Q0, v10[24]);
    *(this + 2307) = v29;
    v30 = vsubq_f32(_Q0, v10[27]);
    *(this + 2308) = vsubq_f32(_Q0, v10[26]);
    *(this + 2309) = v30;
    v31 = vsubq_f32(_Q0, v10[29]);
    *(this + 2310) = vsubq_f32(_Q0, v10[28]);
    *(this + 2311) = v31;
    v32 = vsubq_f32(_Q0, v10[31]);
    *(this + 2312) = vsubq_f32(_Q0, v10[30]);
    *(this + 2313) = v32;
    v33 = vsubq_f32(_Q0, v10[33]);
    *(this + 2314) = vsubq_f32(_Q0, v10[32]);
    *(this + 2315) = v33;
    v34 = vsubq_f32(_Q0, v10[35]);
    *(this + 2316) = vsubq_f32(_Q0, v10[34]);
    *(this + 2317) = v34;
    v35 = vsubq_f32(_Q0, v10[37]);
    *(this + 2318) = vsubq_f32(_Q0, v10[36]);
    *(this + 2319) = v35;
    v36 = vsubq_f32(_Q0, v10[39]);
    *(this + 2320) = vsubq_f32(_Q0, v10[38]);
    *(this + 2321) = v36;
    v37 = vsubq_f32(_Q0, v10[41]);
    *(this + 2322) = vsubq_f32(_Q0, v10[40]);
    *(this + 2323) = v37;
    v38 = vsubq_f32(_Q0, v10[43]);
    *(this + 2324) = vsubq_f32(_Q0, v10[42]);
    *(this + 2325) = v38;
    v39 = vsubq_f32(_Q0, v10[45]);
    *(this + 2326) = vsubq_f32(_Q0, v10[44]);
    *(this + 2327) = v39;
    v40 = vsubq_f32(_Q0, v10[47]);
    *(this + 2328) = vsubq_f32(_Q0, v10[46]);
    *(this + 2329) = v40;
    v41 = vsubq_f32(_Q0, v10[48]);
    v42 = vsubq_f32(_Q0, v10[49]);
    *(this + 2330) = v41;
    *(this + 2331) = v42;
  }

  else
  {
    for (i = 0; i != 200; ++i)
    {
      *(this + i * 4 + 36512) = 1.0 - v10->f32[i];
    }
  }

  v43 = *(v4 + 7);
  v44 = *(a2 + 487);
  v45 = *(a2 + 488) - v44;
  v46 = (*(v4 + 8) - v43) >> 2;
  if (v45 >> 2 <= v46)
  {
    if (v45 >> 2 < v46)
    {
      *(v4 + 8) = v43 + v45;
    }
  }

  else
  {
    std::vector<float>::__append((v4 + 56), (v45 >> 2) - v46);
    v44 = *(a2 + 487);
  }

  v47 = *(a2 + 488);
  if (v47 != v44)
  {
    v48 = 0;
    v49 = (v47 - v44) >> 2;
    v50 = *(v4 + 7);
    if (v49 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v49;
    }

    if (v49 < 8)
    {
      goto LABEL_24;
    }

    if ((v50 - v44) <= 0x1F)
    {
      goto LABEL_24;
    }

    v48 = v51 & 0xFFFFFFFFFFFFFFF8;
    v52 = v50 + 1;
    v53 = v44 + 1;
    __asm { FMOV            V0.4S, #1.0 }

    v55 = v51 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v56 = vsubq_f32(_Q0, *v53);
      v52[-1] = vsubq_f32(_Q0, v53[-1]);
      *v52 = v56;
      v52 += 2;
      v53 += 2;
      v55 -= 8;
    }

    while (v55);
    if (v49 != v48)
    {
LABEL_24:
      v57 = v51 - v48;
      v58 = v48;
      v59 = &v50->f32[v48];
      v60 = &v44->f32[v58];
      do
      {
        v61 = *v60++;
        *v59++ = 1.0 - v61;
        --v57;
      }

      while (v57);
    }
  }

  return peridot::PeridotDXPBaselineRemoval::configure((this + 56), a2);
}

void peridot::PeridotDXPPreProcessor::process(unsigned __int8 *a1, void *a2, void *a3, void *a4, void *a5, double a6, float a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13)
{
  if (a1[37325])
  {
    operator new();
  }

  operator new();
}

void sub_2247648A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  std::__exception_guard_exceptions<std::vector<peridot::ImgHistogram>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a28);
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100](&a34);
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v34 - 192));
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v34 - 168));
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v34 - 144));
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDXPPreProcessor::process_inner(peridot::PeridotDXPPreProcessor *this, void *a2, void *a3, void *a4, const peridot::ImgHistogram **a5, const peridot::ImgHistogram **a6, int a7, int *a8, float a9, peridot::PeridotPreProcessOutput::PreProcessorOutSpot *a10)
{
  v10 = a2;
  v11 = this;
  v88 = *MEMORY[0x277D85DE8];
  v12 = this + 36456;
  v13 = 0.0;
  if ((a9 + -3.0) < -2.0)
  {
    v14 = *(this + 37325);
    if (*(this + 37325))
    {
      v15 = *a2;
      v16 = v14;
      if (v14 == 1)
      {
        v17 = 0;
        v18 = 1.0 / v16;
LABEL_8:
        v25 = v14 - v17;
        v26 = (v15 + 24 * v17 + 8);
        do
        {
          v27 = *v26;
          v26 += 3;
          v13 = v13 + (*v27 * v18);
          --v25;
        }

        while (v25);
        goto LABEL_10;
      }

      v17 = v14 & 0xFE;
      v19 = (v15 + 32);
      v20 = 0.0;
      v21 = v17;
      v22 = 0.0;
      v18 = 1.0 / v16;
      do
      {
        v23 = *(v19 - 3);
        v24 = *v19;
        v19 += 6;
        v20 = v20 + (*v23 * v18);
        v22 = v22 + (*v24 * v18);
        v21 -= 2;
      }

      while (v21);
      v13 = v22 + v20;
      if (v17 != v14)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  v28 = fminf(*a8, a8[1]);
  v29 = *(this + 9330);
  v30 = 0.0;
  if (v29 == 2)
  {
    v31 = 0.0;
    if (v28 >= -2.0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v30 = **(*a5 + 1);
    v31 = **(*a6 + 1);
    goto LABEL_19;
  }

  v32 = v29 == 1 && v28 < -2.0;
  v31 = 0.0;
  if (v32)
  {
    goto LABEL_18;
  }

LABEL_19:
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v87 = 0;
  __src = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v71 = 0;
  v70 = 0.0;
  LODWORD(v33) = *(this + 37325);
  if (*(this + 37325))
  {
    v60 = a5;
    v61 = a6;
    v34 = 0;
    v63 = this + 36432;
    v35 = this + 36444;
    while (1)
    {
      LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, (*v10 + 24 * v34), a3, v12[858], *&v63[4 * v34], *(v11 + 8), v13, 0, (*(v12 + 127) + 24 * v34), (*(v12 + 130) + 24 * v34), &v71, &v70);
      *(&v76 + v34) = v71;
      *(&__src + v34) = v70 - **(*(v12 + 127) + 24 * v34 + 8);
      v36 = v12[868];
      if (v12[868])
      {
        break;
      }

      v46 = *(&v84 + v34);
      v40 = *(&v82 + v34);
      v48 = 0.0;
      v39 = 0.0;
      v38 = 0.0;
LABEL_29:
      *(&v84 + v34) = v46 - (v38 / v48);
      *(&v82 + v34++) = v40 - (v39 / v48);
      v33 = v12[869];
      if (v34 >= v33)
      {
        v29 = *(v12 + 216);
        a5 = v60;
        a6 = v61;
        goto LABEL_31;
      }
    }

    v37 = 0;
    v38 = 0.0;
    v39 = 0.0;
    while (1)
    {
      v41 = *(v11 + 97);
      if (v34 >= (*(v11 + 98) - v41) >> 3)
      {
        break;
      }

      v42 = v37 + v34 * v36;
      v43 = *(v41 + 8 * v34) / v36;
      LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, (*a4 + 24 * v42), a3, v12[857] + v12[856], *&v35[4 * v34], *(v11 + 16), 0.0, v43, (*(v12 + 133) + 24 * v42), (*(v12 + 136) + 24 * v42), &v71, &v70);
      v44 = v71;
      *(&v74 + v34) = (*(&v74 + v34) | v71) & 1;
      v45 = v70;
      v46 = fmaxf(*(&v84 + v34), v70);
      *(&v84 + v34) = v46;
      v47 = **(*(v12 + 133) + 24 * v42 + 8);
      if (*v11 == 1)
      {
        LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, (*a3 + 24 * v42), a3, v12[857], *&v35[4 * v34], *(v11 + 16), 0.0, v43, (*(v12 + 139) + 24 * v42), (*(v12 + 142) + 24 * v42), &v71, &v70);
        v45 = v70;
        v44 = v71;
      }

      *(&v72 + v34) = (*(&v72 + v34) | v44) & 1;
      v38 = v47 + v38;
      v40 = fmaxf(*(&v82 + v34), v45);
      *(&v82 + v34) = v40;
      v39 = **(*(v12 + 139) + 24 * v42 + 8) + v39;
      ++v37;
      v36 = v12[868];
      if (v37 >= v36)
      {
        v48 = v36;
        v10 = a2;
        goto LABEL_29;
      }
    }

    peridot_depth_log("Error in _baselineRemovalBlock.getBlrParams().priBins size");
    return 1;
  }

  else
  {
LABEL_31:
    v49 = a6;
    v69 = 0;
    v68 = 0;
    v81 = 0;
    v80 = 0;
    v67 = 0;
    v66 = 0;
    v79 = 0;
    v78 = 0;
    v50 = a5;
    if ((v29 - 1) <= 1 && *(v11 + 1) == 1)
    {
      peridot::PeridotDXPPreProcessor::equalizer(v11, *a5, a3, v12[860], *v12, *(v11 + 40), v30, 0, *(v12 + 157), *(v12 + 160), &v71, &v70);
      LOBYTE(v68) = v71;
      *&v80 = v70 - **(*(v12 + 157) + 8);
      LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, *v49, v51, v12[861], *v12, *(v11 + 40), v31, 0, *(v12 + 145), *(v12 + 148), &v71, &v70);
      LOBYTE(v66) = v71;
      *&v78 = v70 - **(*(v12 + 145) + 8);
      LODWORD(v33) = v12[869];
    }

    v52 = peridot::PeridotDXPPreProcessor::interleave(this, a2, v11 + 4687, v11 + 4684, &v76, &__src, v10, *(v11 + 3), v33, v12[858], a10);
    v54 = peridot::PeridotDXPPreProcessor::interleave(v52, v53, v11 + 4693, v11 + 4690, &v74, &v84, a4, *(v11 + 4), v12[869], v12[857] + v12[856], a10 + 25);
    if (*v11 == 1)
    {
      v54 = peridot::PeridotDXPPreProcessor::interleave(v54, v55, v11 + 4699, v11 + 4696, &v72, &v82, a3, *(v11 + 4), v12[869], v12[857], a10 + 50);
    }

    if ((*(v12 + 216) - 1) <= 1 && *(v11 + 1) == 1)
    {
      v57 = peridot::PeridotDXPPreProcessor::interleave(v54, v55, v11 + 4717, v11 + 4714, &v68, &v80, v50, *(v11 + 6), 1, v12[860], a10 + 100);
      peridot::PeridotDXPPreProcessor::interleave(v57, v58, v11 + 4705, v11 + 4702, &v66, &v78, v49, *(v11 + 6), 1, v12[861], a10 + 75);
    }

    return peridot::PeridotDXPBaselineRemoval::process((v11 + 56), a10, v56);
  }
}

uint64_t peridot::PeridotDXPPreProcessor::equalizer(peridot::PeridotDXPPreProcessor *this, const peridot::ImgHistogram *a2, uint64_t a3, unsigned __int8 a4, float a5, unsigned __int8 a6, float a7, unsigned int a8, peridot::ImgHistogram *a9, peridot::ImgHistogram *a10, float32x4_t *a11, float *a12)
{
  v12 = MEMORY[0x28223BE20](this, a2, a3);
  v22 = v18;
  v23 = v17;
  v24 = a12;
  v235 = *MEMORY[0x277D85DE8];
  a11->i8[0] = 0;
  if (v14)
  {
    v210 = 92;
    *v21.i32 = v14 * v19;
    v25 = *(v13 + 8);
    if ((&__src - v25) > 0x1F)
    {
      __asm { FMOV            V6.4S, #1.0 }

      v32 = vdivq_f32(_Q6, vdupq_lane_s32(v21, 0));
      v33 = vmulq_f32(v25[1], v32);
      __src = vmulq_f32(*v25, v32);
      v188 = v33;
      v34 = vmulq_f32(v25[3], v32);
      v189 = vmulq_f32(v25[2], v32);
      v190 = v34;
      v35 = vmulq_f32(v25[5], v32);
      v191 = vmulq_f32(v25[4], v32);
      v192 = v35;
      v36 = vmulq_f32(v25[7], v32);
      v193 = vmulq_f32(v25[6], v32);
      v194 = v36;
      v37 = vmulq_f32(v25[9], v32);
      v195 = vmulq_f32(v25[8], v32);
      v196 = v37;
      v38 = vmulq_f32(v25[11], v32);
      v197 = vmulq_f32(v25[10], v32);
      v198 = v38;
      v39 = vmulq_f32(v25[13], v32);
      v199 = vmulq_f32(v25[12], v32);
      v200 = v39;
      v40 = vmulq_f32(v25[15], v32);
      v201 = vmulq_f32(v25[14], v32);
      v202 = v40;
      v41 = vmulq_f32(v25[17], v32);
      v203 = vmulq_f32(v25[16], v32);
      v204 = v41;
      v42 = vmulq_f32(v25[19], v32);
      v205 = vmulq_f32(v25[18], v32);
      v206 = v42;
      v43 = vmulq_f32(v25[20], v32);
      v44 = vmulq_f32(v25[21], v32);
      v26 = 88;
      v207 = v43;
      v208 = v44;
    }

    else
    {
      v26 = 0;
    }

    v45 = v26;
    v46 = 1.0 / *v21.i32;
    do
    {
      __src.f32[v45] = v25->f32[v45] * v46;
      ++v45;
    }

    while (v45 != 92);
    v186 = 92;
    if (v15 == 1)
    {
      v47 = 0;
      v48 = v12[4558];
      v49 = *(v17 + 8);
      v50 = v20 * v46;
      v51 = 0.0;
      v52 = 0.0;
      do
      {
        v53 = __src.f32[v47];
        v54 = 1.0 / (1.0 - fminf(v52 + (*(v48 + v47 * 4) * v50), 0.99));
        v49->f32[v47] = v54;
        v52 = v53 + v52;
        if (v54 > v51)
        {
          v51 = v54;
        }

        ++v47;
      }

      while (v47 != 92);
      v55 = 0;
      if ((&v213 - &__src) >= 0x20 && (&v213 - v49) > 0x1F)
      {
        __asm { FMOV            V1.4S, #1.0 }

        v57 = vdupq_n_s32(0x3C23D700u);
        v58 = vmaxnmq_f32(vmlsq_f32(_Q1, v188, v49[1]), v57);
        v213 = vmaxnmq_f32(vmlsq_f32(_Q1, __src, *v49), v57);
        v214 = v58;
        v59 = vmaxnmq_f32(vmlsq_f32(_Q1, v190, v49[3]), v57);
        v215 = vmaxnmq_f32(vmlsq_f32(_Q1, v189, v49[2]), v57);
        v216 = v59;
        v60 = vmaxnmq_f32(vmlsq_f32(_Q1, v192, v49[5]), v57);
        v217 = vmaxnmq_f32(vmlsq_f32(_Q1, v191, v49[4]), v57);
        v218 = v60;
        v61 = vmaxnmq_f32(vmlsq_f32(_Q1, v194, v49[7]), v57);
        v219 = vmaxnmq_f32(vmlsq_f32(_Q1, v193, v49[6]), v57);
        v220 = v61;
        v62 = vmaxnmq_f32(vmlsq_f32(_Q1, v196, v49[9]), v57);
        v221 = vmaxnmq_f32(vmlsq_f32(_Q1, v195, v49[8]), v57);
        v222 = v62;
        v63 = vmaxnmq_f32(vmlsq_f32(_Q1, v198, v49[11]), v57);
        v223 = vmaxnmq_f32(vmlsq_f32(_Q1, v197, v49[10]), v57);
        v224 = v63;
        v64 = vmaxnmq_f32(vmlsq_f32(_Q1, v200, v49[13]), v57);
        v225 = vmaxnmq_f32(vmlsq_f32(_Q1, v199, v49[12]), v57);
        v226 = v64;
        v65 = vmaxnmq_f32(vmlsq_f32(_Q1, v202, v49[15]), v57);
        v227 = vmaxnmq_f32(vmlsq_f32(_Q1, v201, v49[14]), v57);
        v228 = v65;
        v66 = vmaxnmq_f32(vmlsq_f32(_Q1, v204, v49[17]), v57);
        v229 = vmaxnmq_f32(vmlsq_f32(_Q1, v203, v49[16]), v57);
        v230 = v66;
        v67 = vmaxnmq_f32(vmlsq_f32(_Q1, v206, v49[19]), v57);
        v231 = vmaxnmq_f32(vmlsq_f32(_Q1, v205, v49[18]), v57);
        v232 = v67;
        v68 = vmlsq_f32(_Q1, v207, v49[20]);
        v69 = vmaxnmq_f32(vmlsq_f32(_Q1, v208, v49[21]), v57);
        v55 = 88;
        v233 = vmaxnmq_f32(v68, v57);
        v234 = v69;
      }

      v70 = v19;
      v71 = v55;
      do
      {
        v213.f32[v71] = fmaxf(-((v49->f32[v71] * __src.f32[v71]) + -1.0), 0.01);
        ++v71;
      }

      while (v71 != 92);
      vvlogf(v213.f32, v213.f32, &v186);
      v72 = -v70;
      v73 = *(v22 + 8);
      if ((v73 - &v213) > 0x1F)
      {
        v93 = vmulq_n_f32(v214, v72);
        *v73 = vmulq_n_f32(v213, v72);
        v73[1] = v93;
        v94 = vmulq_n_f32(v216, v72);
        v73[2] = vmulq_n_f32(v215, v72);
        v73[3] = v94;
        v95 = vmulq_n_f32(v218, v72);
        v73[4] = vmulq_n_f32(v217, v72);
        v73[5] = v95;
        v96 = vmulq_n_f32(v220, v72);
        v73[6] = vmulq_n_f32(v219, v72);
        v73[7] = v96;
        v97 = vmulq_n_f32(v222, v72);
        v73[8] = vmulq_n_f32(v221, v72);
        v73[9] = v97;
        v98 = vmulq_n_f32(v224, v72);
        v73[10] = vmulq_n_f32(v223, v72);
        v73[11] = v98;
        v99 = vmulq_n_f32(v226, v72);
        v73[12] = vmulq_n_f32(v225, v72);
        v73[13] = v99;
        v100 = vmulq_n_f32(v228, v72);
        v73[14] = vmulq_n_f32(v227, v72);
        v73[15] = v100;
        v101 = vmulq_n_f32(v230, v72);
        v73[16] = vmulq_n_f32(v229, v72);
        v73[17] = v101;
        v102 = vmulq_n_f32(v232, v72);
        v73[18] = vmulq_n_f32(v231, v72);
        v73[19] = v102;
        v103 = vmulq_n_f32(v234, v72);
        v73[20] = vmulq_n_f32(v233, v72);
        v73[21] = v103;
        v74 = 88;
      }

      else
      {
        v74 = 0;
      }

      v104 = v74;
      do
      {
        v73->f32[v104] = v213.f32[v104] * v72;
        ++v104;
      }

      while (v104 != 92);
      v105 = 0;
      v106 = *(v23 + 8);
      v107 = (a11->f32 + 1);
      v109 = &v106[23] > a11 && v106 < v107;
      v110 = &__src < v107 && v209 > a11;
      if (!v110 && !v109)
      {
        v111 = vdupq_n_s32(0x3F7D70A4u);
        v112 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(*v106, v112), vcgtq_f32(v106[1], v112)), vuzp1q_s16(vcgtq_f32(vmulq_f32(*v106, __src), v111), vcgtq_f32(vmulq_f32(v106[1], v188), v111))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[2], v112), vcgtq_f32(v106[3], v112)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[2], v189), v111), vcgtq_f32(vmulq_f32(v106[3], v190), v111))))))
        {
          a11->i8[0] = 1;
        }

        v113 = vdupq_n_s32(0x3F7D70A4u);
        v114 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[4], v114), vcgtq_f32(v106[5], v114)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[4], v191), v113), vcgtq_f32(vmulq_f32(v106[5], v192), v113))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[6], v114), vcgtq_f32(v106[7], v114)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[6], v193), v113), vcgtq_f32(vmulq_f32(v106[7], v194), v113))))))
        {
          a11->i8[0] = 1;
        }

        v115 = vdupq_n_s32(0x3F7D70A4u);
        v116 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[8], v116), vcgtq_f32(v106[9], v116)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[8], v195), v115), vcgtq_f32(vmulq_f32(v106[9], v196), v115))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[10], v116), vcgtq_f32(v106[11], v116)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[10], v197), v115), vcgtq_f32(vmulq_f32(v106[11], v198), v115))))))
        {
          a11->i8[0] = 1;
        }

        v117 = vdupq_n_s32(0x3F7D70A4u);
        v118 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[12], v118), vcgtq_f32(v106[13], v118)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[12], v199), v117), vcgtq_f32(vmulq_f32(v106[13], v200), v117))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[14], v118), vcgtq_f32(v106[15], v118)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[14], v201), v117), vcgtq_f32(vmulq_f32(v106[15], v202), v117))))))
        {
          a11->i8[0] = 1;
        }

        v119 = vdupq_n_s32(0x3F7D70A4u);
        v120 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[16], v120), vcgtq_f32(v106[17], v120)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[16], v203), v119), vcgtq_f32(vmulq_f32(v106[17], v204), v119))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[18], v120), vcgtq_f32(v106[19], v120)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[18], v205), v119), vcgtq_f32(vmulq_f32(v106[19], v206), v119))))))
        {
          a11->i8[0] = 1;
        }

        v121 = vdupq_n_s32(0x3F7D70A4u);
        v122 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[20], v122), vcgtq_f32(v106[21], v122)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[20], v207), v121), vcgtq_f32(vmulq_f32(v106[21], v208), v121))))))
        {
          a11->i8[0] = 1;
        }

        v105 = 88;
      }

      v123 = v105;
      do
      {
        v124 = v106->f32[v123];
        if (v124 > 100.0 || (v124 * __src.f32[v123]) > 0.99)
        {
          a11->i8[0] = 1;
        }

        ++v123;
      }

      while (v123 != 92);
LABEL_143:
      result = 0;
      *v24 = v51;
      return result;
    }

    v75 = v12[4561];
    v76 = v12[4562] - v75;
    v77 = v76 >> 2;
    v78 = v16;
    v79 = (v76 >> 2) + v16;
    if (v79 >= 0x171)
    {
      peridot_depth_log("Wrong configuration (_oneMinus_DTMmod_4LSB size)");
      return 4;
    }

    v185 = v77 + v16;
    if ((v76 >> 2) <= 0)
    {
      v80 = 0;
    }

    else
    {
      v80 = v16;
    }

    v81 = v80 - (v76 >> 2);
    if ((v81 & 0x80000000) != 0 || v210 <= v81)
    {
      peridot_depth_log("Wrong configuration (DTMmod_4LSB size)");
      return 4;
    }

    v182 = v18;
    v183 = v17;
    v82 = v19;
    v83 = v16 - v81;
    v84 = v16 - v81;
    v85 = v16;
    memcpy(__dst, &__src.f32[v81], v84 * 4);
    memcpy(&__dst[v84], &__src, 4 * v78);
    v86 = v79 - (v83 + v85);
    v87 = 4 * v78;
    memcpy(&__dst[v84 + v78], &__src, 4 * v86);
    if (v77 <= 3)
    {
      peridot_depth_log("Wrong Configuration: DTMmod_4LSB size");
      return 4;
    }

    vDSP_conv(__dst, 1, (v75 + v76 - 4), -1, &__C, 1, v85 + 1, v77);
    v24 = a12;
    v88 = *(v183 + 8);
    if (v85)
    {
      v89 = &v212;
      v51 = 1.0;
      v90 = *(v183 + 8);
      do
      {
        v91 = *v89++;
        v92 = 1.0 / (1.0 - fmin(v91, 0.99));
        *v90++ = v92;
        if (v51 < v92)
        {
          v51 = v92;
        }

        --v78;
      }

      while (v78);
      if (v85 > 0x5B)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v51 = 1.0;
    }

    memset_pattern16(v88 + v87, &xmmword_2247A54C0, 368 - v87);
LABEL_92:
    v130 = 0;
    if ((&v213 - &__src) >= 0x20 && (&v213 - v88) > 0x1F)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v132 = vdupq_n_s32(0x3C23D700u);
      v133 = vmaxnmq_f32(vmlsq_f32(_Q0, v188, v88[1]), v132);
      v213 = vmaxnmq_f32(vmlsq_f32(_Q0, __src, *v88), v132);
      v214 = v133;
      v134 = vmaxnmq_f32(vmlsq_f32(_Q0, v190, v88[3]), v132);
      v215 = vmaxnmq_f32(vmlsq_f32(_Q0, v189, v88[2]), v132);
      v216 = v134;
      v135 = vmaxnmq_f32(vmlsq_f32(_Q0, v192, v88[5]), v132);
      v217 = vmaxnmq_f32(vmlsq_f32(_Q0, v191, v88[4]), v132);
      v218 = v135;
      v136 = vmaxnmq_f32(vmlsq_f32(_Q0, v194, v88[7]), v132);
      v219 = vmaxnmq_f32(vmlsq_f32(_Q0, v193, v88[6]), v132);
      v220 = v136;
      v137 = vmaxnmq_f32(vmlsq_f32(_Q0, v196, v88[9]), v132);
      v221 = vmaxnmq_f32(vmlsq_f32(_Q0, v195, v88[8]), v132);
      v222 = v137;
      v138 = vmaxnmq_f32(vmlsq_f32(_Q0, v198, v88[11]), v132);
      v223 = vmaxnmq_f32(vmlsq_f32(_Q0, v197, v88[10]), v132);
      v224 = v138;
      v139 = vmaxnmq_f32(vmlsq_f32(_Q0, v200, v88[13]), v132);
      v225 = vmaxnmq_f32(vmlsq_f32(_Q0, v199, v88[12]), v132);
      v226 = v139;
      v140 = vmaxnmq_f32(vmlsq_f32(_Q0, v202, v88[15]), v132);
      v227 = vmaxnmq_f32(vmlsq_f32(_Q0, v201, v88[14]), v132);
      v228 = v140;
      v141 = vmaxnmq_f32(vmlsq_f32(_Q0, v204, v88[17]), v132);
      v229 = vmaxnmq_f32(vmlsq_f32(_Q0, v203, v88[16]), v132);
      v230 = v141;
      v142 = vmaxnmq_f32(vmlsq_f32(_Q0, v206, v88[19]), v132);
      v231 = vmaxnmq_f32(vmlsq_f32(_Q0, v205, v88[18]), v132);
      v232 = v142;
      v143 = vmlsq_f32(_Q0, v207, v88[20]);
      v144 = vmaxnmq_f32(vmlsq_f32(_Q0, v208, v88[21]), v132);
      v130 = 88;
      v233 = vmaxnmq_f32(v143, v132);
      v234 = v144;
    }

    v145 = v130;
    do
    {
      v213.f32[v145] = fmaxf(-((v88->f32[v145] * __src.f32[v145]) + -1.0), 0.01);
      ++v145;
    }

    while (v145 != 92);
    vvlogf(v213.f32, v213.f32, &v186);
    v146 = -v82;
    v147 = *(v182 + 8);
    if ((v147 - &v213) > 0x1F)
    {
      v149 = vmulq_n_f32(v214, v146);
      *v147 = vmulq_n_f32(v213, v146);
      v147[1] = v149;
      v150 = vmulq_n_f32(v216, v146);
      v147[2] = vmulq_n_f32(v215, v146);
      v147[3] = v150;
      v151 = vmulq_n_f32(v218, v146);
      v147[4] = vmulq_n_f32(v217, v146);
      v147[5] = v151;
      v152 = vmulq_n_f32(v220, v146);
      v147[6] = vmulq_n_f32(v219, v146);
      v147[7] = v152;
      v153 = vmulq_n_f32(v222, v146);
      v147[8] = vmulq_n_f32(v221, v146);
      v147[9] = v153;
      v154 = vmulq_n_f32(v224, v146);
      v147[10] = vmulq_n_f32(v223, v146);
      v147[11] = v154;
      v155 = vmulq_n_f32(v226, v146);
      v147[12] = vmulq_n_f32(v225, v146);
      v147[13] = v155;
      v156 = vmulq_n_f32(v228, v146);
      v147[14] = vmulq_n_f32(v227, v146);
      v147[15] = v156;
      v157 = vmulq_n_f32(v230, v146);
      v147[16] = vmulq_n_f32(v229, v146);
      v147[17] = v157;
      v158 = vmulq_n_f32(v232, v146);
      v147[18] = vmulq_n_f32(v231, v146);
      v147[19] = v158;
      v159 = vmulq_n_f32(v234, v146);
      v147[20] = vmulq_n_f32(v233, v146);
      v147[21] = v159;
      v148 = 88;
    }

    else
    {
      v148 = 0;
    }

    v160 = v148;
    do
    {
      v147->f32[v160] = v213.f32[v160] * v146;
      ++v160;
    }

    while (v160 != 92);
    v161 = 0;
    v162 = *(v183 + 8);
    v163 = (a11->f32 + 1);
    v165 = &v162[23] > a11 && v162 < v163;
    v166 = &__src < v163 && v209 > a11;
    if (!v166 && !v165)
    {
      v167 = vdupq_n_s32(0x3F7D70A4u);
      v168 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(*v162, v168), vcgtq_f32(v162[1], v168)), vuzp1q_s16(vcgtq_f32(vmulq_f32(*v162, __src), v167), vcgtq_f32(vmulq_f32(v162[1], v188), v167))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[2], v168), vcgtq_f32(v162[3], v168)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[2], v189), v167), vcgtq_f32(vmulq_f32(v162[3], v190), v167))))))
      {
        a11->i8[0] = 1;
      }

      v169 = vdupq_n_s32(0x3F7D70A4u);
      v170 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[4], v170), vcgtq_f32(v162[5], v170)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[4], v191), v169), vcgtq_f32(vmulq_f32(v162[5], v192), v169))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[6], v170), vcgtq_f32(v162[7], v170)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[6], v193), v169), vcgtq_f32(vmulq_f32(v162[7], v194), v169))))))
      {
        a11->i8[0] = 1;
      }

      v171 = vdupq_n_s32(0x3F7D70A4u);
      v172 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[8], v172), vcgtq_f32(v162[9], v172)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[8], v195), v171), vcgtq_f32(vmulq_f32(v162[9], v196), v171))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[10], v172), vcgtq_f32(v162[11], v172)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[10], v197), v171), vcgtq_f32(vmulq_f32(v162[11], v198), v171))))))
      {
        a11->i8[0] = 1;
      }

      v173 = vdupq_n_s32(0x3F7D70A4u);
      v174 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[12], v174), vcgtq_f32(v162[13], v174)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[12], v199), v173), vcgtq_f32(vmulq_f32(v162[13], v200), v173))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[14], v174), vcgtq_f32(v162[15], v174)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[14], v201), v173), vcgtq_f32(vmulq_f32(v162[15], v202), v173))))))
      {
        a11->i8[0] = 1;
      }

      v175 = vdupq_n_s32(0x3F7D70A4u);
      v176 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[16], v176), vcgtq_f32(v162[17], v176)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[16], v203), v175), vcgtq_f32(vmulq_f32(v162[17], v204), v175))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[18], v176), vcgtq_f32(v162[19], v176)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[18], v205), v175), vcgtq_f32(vmulq_f32(v162[19], v206), v175))))))
      {
        a11->i8[0] = 1;
      }

      v177 = vdupq_n_s32(0x3F7D70A4u);
      v178 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[20], v178), vcgtq_f32(v162[21], v178)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[20], v207), v177), vcgtq_f32(vmulq_f32(v162[21], v208), v177))))))
      {
        a11->i8[0] = 1;
      }

      v161 = 88;
    }

    v179 = v161;
    do
    {
      v180 = v162->f32[v179];
      if (v180 > 100.0 || (v180 * __src.f32[v179]) > 0.99)
      {
        a11->i8[0] = 1;
      }

      ++v179;
    }

    while (v179 != 92);
    goto LABEL_143;
  }

  if (v18 != v13)
  {
    v27 = *(v13 + 16);
    if (v27 != *(v18 + 16))
    {
      v126 = v13;
      peridot_depth_log("Trying to copy histogram of different size");
      v127 = *(v22 + 8);
      if (v127)
      {
        MEMORY[0x22AA53170](v127, 0x1000C8052888210);
      }

      *(v22 + 16) = *(v126 + 16);
      operator new[]();
    }

    memcpy(*(v18 + 8), *(v13 + 8), 4 * v27);
  }

  v128 = *(v23 + 16);
  if (v128)
  {
    memset_pattern16(*(v23 + 8), &xmmword_2247A54C0, 4 * v128);
  }

  result = 0;
  *a12 = 0.0;
  return result;
}

uint64_t peridot::PeridotDXPPreProcessor::interleave(int a1, uint64_t a2, void *a3, uint64_t *a4, unsigned __int8 *a5, char *__src, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11)
{
  v11 = a3[1] - *a3;
  if (v11 != a4[1] - *a4 || a7[1] - *a7 != v11)
  {
    peridot_depth_log("PeridotDXPPreProcessor::interleave: histogram sizes do not match", a2);
    return 1;
  }

  v12 = a10;
  v13 = a9;
  v14 = a11[9];
  a11[10] = 0;
  if ((a11[11] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    if (v14)
    {
      operator delete(v14);
      a11[9] = 0;
      a11[10] = 0;
      a11[11] = 0;
    }

    operator new();
  }

  v15 = a11[12];
  a11[10] = 3;
  v16 = *a5;
  if (a5[1])
  {
    v16 |= 2uLL;
  }

  if (a5[2])
  {
    v16 |= 4uLL;
  }

  *v14 = v16;
  v17 = a11[14];
  if ((v17 - v15) < 9)
  {
    if (v15)
    {
      a11[13] = v15;
      operator delete(v15);
      v17 = 0;
      a11[12] = 0;
      a11[13] = 0;
      a11[14] = 0;
    }

    v18 = v17 >> 1;
    if ((v17 >> 1) <= 3)
    {
      v18 = 3;
    }

    v19 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
    v20 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v18;
    }

    if (!(v20 >> 62))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v22 = a11[13];
  if ((v22 - v15) > 8)
  {
    v30 = *__src;
    *(v15 + 8) = *(__src + 2);
    *v15 = v30;
    v31 = (v15 + 12);
    goto LABEL_37;
  }

  v23 = __src + 12;
  v24 = &__src[v22 - v15];
  if (v22 != v15)
  {
    v41 = a3;
    v25 = a7;
    v26 = a4;
    v27 = a8;
    v28 = __src;
    v14 = memmove(v15, __src, v22 - v15);
    __src = v28;
    v13 = a9;
    a8 = v27;
    a3 = v41;
    a4 = v26;
    v12 = a10;
    a7 = v25;
  }

  v29 = a11[13];
  v32 = &v23[v15] - &__src[v22] - 4;
  if (v32 >= 0x1C)
  {
    v33 = a11[13];
    if ((v29 + v15 - &__src[v22]) >= 0x20)
    {
      v34 = (v32 >> 2) + 1;
      v35 = 4 * (v34 & 0x7FFFFFFFFFFFFFF8);
      v24 += v35;
      v36 = (v29 + 16);
      v37 = &__src[v22 - v15 + 16];
      v38 = v34 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v39 = *v37;
        *(v36 - 1) = *(v37 - 1);
        *v36 = v39;
        v36 += 2;
        v37 += 32;
        v38 -= 8;
      }

      while (v38);
      v33 = (v29 + v35);
      if (v34 == (v34 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v33 = a11[13];
  }

  do
  {
    v40 = *v24;
    v24 += 4;
    *v33++ = v40;
  }

  while (v24 != v23);
LABEL_36:
  v31 = v33;
LABEL_37:
  a11[13] = v31;
  if (a8 != 1)
  {
    if (a8 == 4)
    {

      return peridot::interleave_neon<4ul>(v14, a3, a4, a7, v13, v12, a11);
    }

    peridot_depth_log("PeridotDXPPreProcessor::interleave: unexpected tdc size", a2);
    return 1;
  }

  return peridot::interleave_neon<1ul>(v14, a3, a4, a7, v13, v12, a11);
}

uint64_t peridot::interleave_neon<4ul>(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned int a6, void *a7)
{
  if (!a5)
  {
    return 0;
  }

  v7 = 0;
  v8 = 1.0 / a6 * (1.0 / a6);
  *&v8 = v8;
  v9 = "interleave_neon<4> interlHist.size() <= priIdx";
  do
  {
    if (v7 >= (a7[1] - *a7) >> 3)
    {
      goto LABEL_15;
    }

    if (*(*(*a7 + 8 * v7) + 16) < 0x170uLL)
    {
      v9 = "interleave_neon<4> getBinsNum() < CISP_PERIDOT_NUM_HISTOGRAM_BINS*4";
LABEL_15:
      peridot_depth_log(v9, a2, a3, a4, v8);
      return 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = -4;
    do
    {
      v30.val[0] = *(*(*a2 + 96 * v7 + 8) + v10);
      v30.val[1] = *(*(*a2 + 24 * ((4 * v7) | 1) + 8) + v10);
      v30.val[2] = *(*(*a2 + 24 * ((4 * v7) | 2) + 8) + v10);
      v30.val[3] = *(*(*a2 + 24 * ((4 * v7) | 3) + 8) + v10);
      v13 = (*(*(*a7 + 8 * v7) + 8) + v11);
      vst4q_f32(v13, v30);
      v12 += 4;
      v11 += 64;
      v10 += 16;
    }

    while (v12 < 0x58);
    ++v7;
  }

  while (v7 != a5);
  v14 = 0;
  if (a6)
  {
    do
    {
      v15 = 0;
      v16 = 0;
      v17 = -4;
      v18 = 96 * v14;
      v19 = 24 * ((4 * v14) | 1);
      v20 = 24 * ((4 * v14) | 2);
      v21 = 24 * ((4 * v14) | 3);
      do
      {
        v31.val[0] = *(*(*a3 + v18 + 8) + v16);
        v31.val[1] = *(*(*a3 + v19 + 8) + v16);
        v31.val[2] = *(*(*a3 + v20 + 8) + v16);
        v31.val[3] = *(*(*a3 + v21 + 8) + v16);
        v22 = (*(*(a7[3] + 8 * v14) + 8) + v15);
        vst4q_f32(v22, v31);
        v32.val[0] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[0], v31.val[0]), *&v8), *(*(*a4 + v18 + 8) + v16));
        v32.val[1] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[1], v31.val[1]), *&v8), *(*(*a4 + v19 + 8) + v16));
        v32.val[2] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[2], v31.val[2]), *&v8), *(*(*a4 + v20 + 8) + v16));
        v32.val[3] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[3], v31.val[3]), *&v8), *(*(*a4 + v21 + 8) + v16));
        v23 = (*(*(a7[6] + 8 * v14) + 8) + v15);
        vst4q_f32(v23, v32);
        v17 += 4;
        v16 += 16;
        v15 += 64;
      }

      while (v17 < 0x58);
      ++v14;
    }

    while (v14 != a5);
  }

  else
  {
    do
    {
      v25 = 0;
      v26 = 0;
      v27 = -4;
      do
      {
        v29.val[0] = *(*(*a3 + 96 * v14 + 8) + v25);
        v29.val[1] = *(*(*a3 + 24 * ((4 * v14) | 1) + 8) + v25);
        v29.val[2] = *(*(*a3 + 24 * ((4 * v14) | 2) + 8) + v25);
        v29.val[3] = *(*(*a3 + 24 * ((4 * v14) | 3) + 8) + v25);
        v28 = (*(*(a7[3] + 8 * v14) + 8) + v26);
        vst4q_f32(v28, v29);
        v27 += 4;
        v26 += 64;
        v25 += 16;
      }

      while (v27 < 0x58);
      ++v14;
    }

    while (v14 != a5);
  }

  return 0;
}

uint64_t peridot::interleave_neon<1ul>(uint64_t a1, void *a2, uint64_t *a3, void *a4, unint64_t a5, unsigned int a6, uint64_t *a7)
{
  v7 = *a7;
  if (a5 > (a7[1] - *a7) >> 3)
  {
    v8 = "interleave_neon<1> interlHist.size() < priNum";
LABEL_3:
    peridot_depth_log(v8, a2, a3, a4);
    return 1;
  }

  if (a5)
  {
    v10 = 0;
    v11 = 1.0 / a6 * (1.0 / a6);
    v12 = (*a2 + 8);
    v8 = "interleave_neon<1> getBinsNum() < CISP_PERIDOT_NUM_HISTOGRAM_BINS";
    while (1)
    {
      v13 = *(v7 + 8 * v10);
      if (*(v13 + 16) < 0x5CuLL)
      {
        break;
      }

      v14 = *v12;
      v12 += 3;
      v15 = *(v13 + 8);
      *v15 = *v14;
      v15[1] = v14[1];
      v15[2] = v14[2];
      v15[3] = v14[3];
      v15[4] = v14[4];
      v15[5] = v14[5];
      v15[6] = v14[6];
      v15[7] = v14[7];
      v15[8] = v14[8];
      v15[9] = v14[9];
      v15[10] = v14[10];
      v15[11] = v14[11];
      v15[12] = v14[12];
      v15[13] = v14[13];
      v15[14] = v14[14];
      v15[15] = v14[15];
      v15[16] = v14[16];
      v15[17] = v14[17];
      v15[18] = v14[18];
      v15[19] = v14[19];
      v15[20] = v14[20];
      v15[21] = v14[21];
      v15[22] = v14[22];
      v15[23] = v14[23];
      v15[24] = v14[24];
      v15[25] = v14[25];
      v15[26] = v14[26];
      v15[27] = v14[27];
      v15[28] = v14[28];
      v15[29] = v14[29];
      v15[30] = v14[30];
      v15[31] = v14[31];
      v15[32] = v14[32];
      v15[33] = v14[33];
      v15[34] = v14[34];
      v15[35] = v14[35];
      v15[36] = v14[36];
      v15[37] = v14[37];
      v15[38] = v14[38];
      v15[39] = v14[39];
      v15[40] = v14[40];
      v15[41] = v14[41];
      v15[42] = v14[42];
      v15[43] = v14[43];
      v15[44] = v14[44];
      v15[45] = v14[45];
      v15[46] = v14[46];
      v15[47] = v14[47];
      v15[48] = v14[48];
      v15[49] = v14[49];
      v15[50] = v14[50];
      v15[51] = v14[51];
      v15[52] = v14[52];
      v15[53] = v14[53];
      v15[54] = v14[54];
      v15[55] = v14[55];
      v15[56] = v14[56];
      v15[57] = v14[57];
      v15[58] = v14[58];
      v15[59] = v14[59];
      v15[60] = v14[60];
      v15[61] = v14[61];
      v15[62] = v14[62];
      v15[63] = v14[63];
      v15[64] = v14[64];
      v15[65] = v14[65];
      v15[66] = v14[66];
      v15[67] = v14[67];
      v15[68] = v14[68];
      v15[69] = v14[69];
      v15[70] = v14[70];
      v15[71] = v14[71];
      v15[72] = v14[72];
      v15[73] = v14[73];
      v15[74] = v14[74];
      v15[75] = v14[75];
      v15[76] = v14[76];
      v15[77] = v14[77];
      v15[78] = v14[78];
      v15[79] = v14[79];
      v15[80] = v14[80];
      v15[81] = v14[81];
      v15[82] = v14[82];
      v15[83] = v14[83];
      v15[84] = v14[84];
      v15[85] = v14[85];
      v15[86] = v14[86];
      v15[87] = v14[87];
      v15[88] = v14[88];
      v15[89] = v14[89];
      v15[90] = v14[90];
      v15[91] = v14[91];
      if (a5 == ++v10)
      {
        v16 = *a3;
        v17 = a7[3];
        if (a6)
        {
          for (i = 0; i != a5; ++i)
          {
            v42 = *(v16 + 24 * i + 8);
            v43 = *(v17[i] + 8);
            v44 = *(*a4 + 24 * i + 8);
            v45 = *(*(a7[6] + 8 * i) + 8);
            if ((v45 - v43) >= 0x10 && (v43 - v42) >= 0x10 && (v44 - v43) >= 0x10 && (v45 - v42) >= 0x10 && (v45 - v44) > 0xF)
            {
              v19 = *v42;
              *v43 = *v42;
              *v45 = vmulq_f32(vmulq_n_f32(vmulq_f32(v19, v19), v11), *v44);
              v20 = v42[1];
              *(v43 + 1) = v20;
              v45[1] = vmulq_f32(vmulq_n_f32(vmulq_f32(v20, v20), v11), v44[1]);
              v21 = v42[2];
              *(v43 + 2) = v21;
              v45[2] = vmulq_f32(vmulq_n_f32(vmulq_f32(v21, v21), v11), v44[2]);
              v22 = v42[3];
              *(v43 + 3) = v22;
              v45[3] = vmulq_f32(vmulq_n_f32(vmulq_f32(v22, v22), v11), v44[3]);
              v23 = v42[4];
              *(v43 + 4) = v23;
              v45[4] = vmulq_f32(vmulq_n_f32(vmulq_f32(v23, v23), v11), v44[4]);
              v24 = v42[5];
              *(v43 + 5) = v24;
              v45[5] = vmulq_f32(vmulq_n_f32(vmulq_f32(v24, v24), v11), v44[5]);
              v25 = v42[6];
              *(v43 + 6) = v25;
              v45[6] = vmulq_f32(vmulq_n_f32(vmulq_f32(v25, v25), v11), v44[6]);
              v26 = v42[7];
              *(v43 + 7) = v26;
              v45[7] = vmulq_f32(vmulq_n_f32(vmulq_f32(v26, v26), v11), v44[7]);
              v27 = v42[8];
              *(v43 + 8) = v27;
              v45[8] = vmulq_f32(vmulq_n_f32(vmulq_f32(v27, v27), v11), v44[8]);
              v28 = v42[9];
              *(v43 + 9) = v28;
              v45[9] = vmulq_f32(vmulq_n_f32(vmulq_f32(v28, v28), v11), v44[9]);
              v29 = v42[10];
              *(v43 + 10) = v29;
              v45[10] = vmulq_f32(vmulq_n_f32(vmulq_f32(v29, v29), v11), v44[10]);
              v30 = v42[11];
              *(v43 + 11) = v30;
              v45[11] = vmulq_f32(vmulq_n_f32(vmulq_f32(v30, v30), v11), v44[11]);
              v31 = v42[12];
              *(v43 + 12) = v31;
              v45[12] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31, v31), v11), v44[12]);
              v32 = v42[13];
              *(v43 + 13) = v32;
              v45[13] = vmulq_f32(vmulq_n_f32(vmulq_f32(v32, v32), v11), v44[13]);
              v33 = v42[14];
              *(v43 + 14) = v33;
              v45[14] = vmulq_f32(vmulq_n_f32(vmulq_f32(v33, v33), v11), v44[14]);
              v34 = v42[15];
              *(v43 + 15) = v34;
              v45[15] = vmulq_f32(vmulq_n_f32(vmulq_f32(v34, v34), v11), v44[15]);
              v35 = v42[16];
              *(v43 + 16) = v35;
              v45[16] = vmulq_f32(vmulq_n_f32(vmulq_f32(v35, v35), v11), v44[16]);
              v36 = v42[17];
              *(v43 + 17) = v36;
              v45[17] = vmulq_f32(vmulq_n_f32(vmulq_f32(v36, v36), v11), v44[17]);
              v37 = v42[18];
              *(v43 + 18) = v37;
              v45[18] = vmulq_f32(vmulq_n_f32(vmulq_f32(v37, v37), v11), v44[18]);
              v38 = v42[19];
              *(v43 + 19) = v38;
              v45[19] = vmulq_f32(vmulq_n_f32(vmulq_f32(v38, v38), v11), v44[19]);
              v39 = v42[20];
              *(v43 + 20) = v39;
              v45[20] = vmulq_f32(vmulq_n_f32(vmulq_f32(v39, v39), v11), v44[20]);
              v40 = v42[21];
              *(v43 + 21) = v40;
              v45[21] = vmulq_f32(vmulq_n_f32(vmulq_f32(v40, v40), v11), v44[21]);
              v41 = v42[22];
              *(v43 + 22) = v41;
              v45[22] = vmulq_f32(vmulq_n_f32(vmulq_f32(v41, v41), v11), v44[22]);
            }

            else
            {
              for (j = 0; j != 92; ++j)
              {
                v51 = v42->f32[j];
                *&v43[j * 4] = v51;
                v45->f32[j] = (v51 * v51) * (v11 * v44->f32[j]);
              }
            }
          }
        }

        else
        {
          v52 = (v16 + 8);
          do
          {
            v54 = *v52;
            v52 += 3;
            v53 = v54;
            v55 = *v17++;
            v56 = *(v55 + 8);
            *v56 = *v53;
            v56[1] = v53[1];
            v56[2] = v53[2];
            v56[3] = v53[3];
            v56[4] = v53[4];
            v56[5] = v53[5];
            v56[6] = v53[6];
            v56[7] = v53[7];
            v56[8] = v53[8];
            v56[9] = v53[9];
            v56[10] = v53[10];
            v56[11] = v53[11];
            v56[12] = v53[12];
            v56[13] = v53[13];
            v56[14] = v53[14];
            v56[15] = v53[15];
            v56[16] = v53[16];
            v56[17] = v53[17];
            v56[18] = v53[18];
            v56[19] = v53[19];
            v56[20] = v53[20];
            v56[21] = v53[21];
            v56[22] = v53[22];
            v56[23] = v53[23];
            v56[24] = v53[24];
            v56[25] = v53[25];
            v56[26] = v53[26];
            v56[27] = v53[27];
            v56[28] = v53[28];
            v56[29] = v53[29];
            v56[30] = v53[30];
            v56[31] = v53[31];
            v56[32] = v53[32];
            v56[33] = v53[33];
            v56[34] = v53[34];
            v56[35] = v53[35];
            v56[36] = v53[36];
            v56[37] = v53[37];
            v56[38] = v53[38];
            v56[39] = v53[39];
            v56[40] = v53[40];
            v56[41] = v53[41];
            v56[42] = v53[42];
            v56[43] = v53[43];
            v56[44] = v53[44];
            v56[45] = v53[45];
            v56[46] = v53[46];
            v56[47] = v53[47];
            v56[48] = v53[48];
            v56[49] = v53[49];
            v56[50] = v53[50];
            v56[51] = v53[51];
            v56[52] = v53[52];
            v56[53] = v53[53];
            v56[54] = v53[54];
            v56[55] = v53[55];
            v56[56] = v53[56];
            v56[57] = v53[57];
            v56[58] = v53[58];
            v56[59] = v53[59];
            v56[60] = v53[60];
            v56[61] = v53[61];
            v56[62] = v53[62];
            v56[63] = v53[63];
            v56[64] = v53[64];
            v56[65] = v53[65];
            v56[66] = v53[66];
            v56[67] = v53[67];
            v56[68] = v53[68];
            v56[69] = v53[69];
            v56[70] = v53[70];
            v56[71] = v53[71];
            v56[72] = v53[72];
            v56[73] = v53[73];
            v56[74] = v53[74];
            v56[75] = v53[75];
            v56[76] = v53[76];
            v56[77] = v53[77];
            v56[78] = v53[78];
            v56[79] = v53[79];
            v56[80] = v53[80];
            v56[81] = v53[81];
            v56[82] = v53[82];
            v56[83] = v53[83];
            v56[84] = v53[84];
            v56[85] = v53[85];
            v56[86] = v53[86];
            v56[87] = v53[87];
            v56[88] = v53[88];
            v56[89] = v53[89];
            v56[90] = v53[90];
            v56[91] = v53[91];
            --a5;
          }

          while (a5);
        }

        return 0;
      }
    }

    goto LABEL_3;
  }

  return 0;
}

uint64_t peridot::PeridotDXPPreProcessor::process(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, peridot::PeridotPreProcessOutput::PreProcessorOutSpot *a6, float a7, float a8)
{
  v8 = a4;
  v9 = a3;
  v10 = *(a1 + 37325);
  if (*(a1 + 37325))
  {
    v11 = *(a1 + 37324);
    if (*(a1 + 37324))
    {
      v12 = 0;
      v13 = *a2;
      v14 = *(a1 + 37328);
      v15 = *a2 + 640 * a3 + 9776;
      do
      {
        v16 = *(v14 + 24 * v12 + 8);
        v17 = v13 + 9280 * v12 * v11 + 640 * a3;
        v18 = *(v17 + 320);
        v19 = *(v17 + 336);
        v20 = vcvtq_f32_u32(vmovl_u16(*v18.i8));
        v21 = vcvtq_f32_u32(vmovl_high_u16(v18));
        *v16 = v20;
        v16[1] = v21;
        v22 = vcvtq_f32_u32(vmovl_u16(*v19.i8));
        v23 = vcvtq_f32_u32(vmovl_high_u16(v19));
        v16[2] = v22;
        v16[3] = v23;
        v24 = *(v17 + 352);
        v25 = *(v17 + 368);
        v26 = vcvtq_f32_u32(vmovl_u16(*v24.i8));
        v27 = vcvtq_f32_u32(vmovl_high_u16(v24));
        v28 = vcvtq_f32_u32(vmovl_u16(*v25.i8));
        v29 = vcvtq_f32_u32(vmovl_high_u16(v25));
        v16[4] = v26;
        v16[5] = v27;
        v16[6] = v28;
        v16[7] = v29;
        v30 = *(v17 + 384);
        v31 = *(v17 + 400);
        v32 = vcvtq_f32_u32(vmovl_u16(*v30.i8));
        v33 = vcvtq_f32_u32(vmovl_high_u16(v30));
        v34 = vcvtq_f32_u32(vmovl_u16(*v31.i8));
        v35 = vcvtq_f32_u32(vmovl_high_u16(v31));
        v16[8] = v32;
        v16[9] = v33;
        v16[10] = v34;
        v16[11] = v35;
        v36 = *(v17 + 416);
        v37 = *(v17 + 432);
        v38 = vcvtq_f32_u32(vmovl_u16(*v36.i8));
        v39 = vcvtq_f32_u32(vmovl_high_u16(v36));
        v40 = vcvtq_f32_u32(vmovl_u16(*v37.i8));
        v41 = vcvtq_f32_u32(vmovl_high_u16(v37));
        v16[12] = v38;
        v16[13] = v39;
        v16[14] = v40;
        v16[15] = v41;
        v42 = *(v17 + 448);
        v43 = *(v17 + 464);
        v44 = vcvtq_f32_u32(vmovl_u16(*v42.i8));
        v45 = vcvtq_f32_u32(vmovl_high_u16(v42));
        v46 = vcvtq_f32_u32(vmovl_u16(*v43.i8));
        v47 = vcvtq_f32_u32(vmovl_high_u16(v43));
        v16[16] = v44;
        v16[17] = v45;
        v16[18] = v46;
        v16[19] = v47;
        v48 = vcvtq_f32_u32(vmovl_u16(*(v17 + 480)));
        v49 = vcvtq_f32_u32(vmovl_u16(*(v17 + 488)));
        v16[20] = v48;
        v16[21] = v49;
        v50 = vcvtq_f32_u32(vmovl_u16(*(v17 + 496)));
        v16[22] = v50;
        if (v11 != 1)
        {
          v51 = v15;
          v52 = v11 - 1;
          do
          {
            v53 = *v51[-22].i8;
            v54 = *v51[-20].i8;
            v21 = vaddq_f32(v21, vcvtq_f32_u32(vmovl_high_u16(v53)));
            v20 = vaddq_f32(v20, vcvtq_f32_u32(vmovl_u16(*v53.i8)));
            v23 = vaddq_f32(v23, vcvtq_f32_u32(vmovl_high_u16(v54)));
            v22 = vaddq_f32(v22, vcvtq_f32_u32(vmovl_u16(*v54.i8)));
            v55 = *v51[-18].i8;
            v56 = *v51[-16].i8;
            v27 = vaddq_f32(v27, vcvtq_f32_u32(vmovl_high_u16(v55)));
            v26 = vaddq_f32(v26, vcvtq_f32_u32(vmovl_u16(*v55.i8)));
            v29 = vaddq_f32(v29, vcvtq_f32_u32(vmovl_high_u16(v56)));
            v28 = vaddq_f32(v28, vcvtq_f32_u32(vmovl_u16(*v56.i8)));
            v57 = *v51[-14].i8;
            v58 = *v51[-12].i8;
            v33 = vaddq_f32(v33, vcvtq_f32_u32(vmovl_high_u16(v57)));
            v32 = vaddq_f32(v32, vcvtq_f32_u32(vmovl_u16(*v57.i8)));
            v35 = vaddq_f32(v35, vcvtq_f32_u32(vmovl_high_u16(v58)));
            v34 = vaddq_f32(v34, vcvtq_f32_u32(vmovl_u16(*v58.i8)));
            v59 = *v51[-10].i8;
            v60 = *v51[-8].i8;
            v39 = vaddq_f32(v39, vcvtq_f32_u32(vmovl_high_u16(v59)));
            v38 = vaddq_f32(v38, vcvtq_f32_u32(vmovl_u16(*v59.i8)));
            v41 = vaddq_f32(v41, vcvtq_f32_u32(vmovl_high_u16(v60)));
            v40 = vaddq_f32(v40, vcvtq_f32_u32(vmovl_u16(*v60.i8)));
            v61 = *v51[-6].i8;
            v62 = *v51[-4].i8;
            v45 = vaddq_f32(v45, vcvtq_f32_u32(vmovl_high_u16(v61)));
            v44 = vaddq_f32(v44, vcvtq_f32_u32(vmovl_u16(*v61.i8)));
            v47 = vaddq_f32(v47, vcvtq_f32_u32(vmovl_high_u16(v62)));
            v46 = vaddq_f32(v46, vcvtq_f32_u32(vmovl_u16(*v62.i8)));
            v48 = vaddq_f32(v48, vcvtq_f32_u32(vmovl_u16(v51[-2])));
            v49 = vaddq_f32(v49, vcvtq_f32_u32(vmovl_u16(v51[-1])));
            v63 = vcvtq_f32_u32(vmovl_u16(*v51));
            v51 += 1160;
            v50 = vaddq_f32(v50, v63);
            --v52;
          }

          while (v52);
          *v16 = v20;
          v16[1] = v21;
          v16[2] = v22;
          v16[3] = v23;
          v16[4] = v26;
          v16[5] = v27;
          v16[6] = v28;
          v16[7] = v29;
          v16[8] = v32;
          v16[9] = v33;
          v16[10] = v34;
          v16[11] = v35;
          v16[12] = v38;
          v16[13] = v39;
          v16[14] = v40;
          v16[15] = v41;
          v16[16] = v44;
          v16[17] = v45;
          v16[18] = v46;
          v16[19] = v47;
          v16[20] = v48;
          v16[21] = v49;
          v16[22] = v50;
        }

        ++v12;
        v15 += 9280 * v11;
      }

      while (v12 != v10);
      v64 = 0;
      v65 = *(a1 + 37352);
      v66 = *(a1 + 37376);
      v67 = *(a1 + 37400);
      v68 = *a2 + 640 * a3 + 512;
      do
      {
        a3 = 0;
        a4 = (v64 * v11);
        v69 = v68;
        do
        {
          v70 = 24 * (a4 + a3);
          v71 = *(v65 + v70 + 8);
          v72 = *(v66 + v70 + 8);
          v73 = *(v67 + v70 + 8);
          v74 = v71 + 92;
          v75 = v72 + 92;
          v77 = v71 < v73 + 92 && v73 < v74;
          v79 = v72 < v73 + 92 && v73 < v75;
          v80 = v72 >= v74 || v71 >= v75;
          if (!v80 || v77 || v79)
          {
            for (i = 0; i != 92; ++i)
            {
              v20.i16[0] = v69->i16[i];
              v86 = v20.u32[0];
              *v71 = v86;
              LOWORD(v86) = v69[24].i16[i];
              v87 = LODWORD(v86);
              *v72++ = v87;
              v88 = *v71++;
              v20.f32[0] = v88 + v87;
              *v73++ = v20.f32[0];
            }
          }

          else
          {
            v81 = 0;
            v82 = v69;
            do
            {
              v83 = vcvtq_f32_u32(vmovl_u16(*v82));
              *&v71[v81] = v83;
              v84 = vcvtq_f32_u32(vmovl_u16(v82[24]));
              *&v72[v81] = v84;
              v20 = vaddq_f32(v83, v84);
              *&v73[v81] = v20;
              v81 += 4;
              ++v82;
            }

            while (v81 != 92);
          }

          ++a3;
          v69 += 1160;
        }

        while (a3 != v11);
        ++v64;
        v68 += 9280 * v11;
      }

      while (v64 != v10);
    }
  }

  if (a8 < 0.0)
  {
    peridot_depth_log("Error: global T0 is negative", a2, a3, a4, a5, a6, v9, v8);
    return 5;
  }

  *v90.i64 = ceil(a8 * 1.0e10) + 45.0;
  v91 = *v90.i64;
  if (*v90.i64 >= 0x5B)
  {
    v92 = 91;
  }

  else
  {
    v92 = *v90.i64;
  }

  if ((*(a1 + 37320) - 1) > 1)
  {
    return peridot::PeridotDXPPreProcessor::process_inner(a1, (a1 + 37328), (a1 + 37376), (a1 + 37400), (a1 + 37424), (a1 + 37448), v9, v8, a7, a6);
  }

  v93 = a2[1];
  v94 = *(*(a1 + 37448) + 8);
  v95 = *(*(a1 + 37424) + 8);
  v96 = v92 + 1;
  v97 = v94 - v95;
  v99 = v91 < 7 || v97 < 0x20;
  if ((a5 & 1) == 0)
  {
    if (v99)
    {
      v101 = 0;
    }

    else
    {
      v101 = v96 & 0xF8;
      v113 = (v93 + 640 * v9);
      v114 = *(*(a1 + 37424) + 8);
      v115 = *(*(a1 + 37448) + 8);
      v116 = v101;
      do
      {
        v117 = v113[44];
        *v114 = vcvtq_f32_u32(vmovl_u16(*v117.i8));
        v114[1] = vcvtq_f32_u32(vmovl_high_u16(v117));
        v114 += 2;
        v118 = v113[20];
        v119 = vcvtq_f32_u32(vmovl_high_u16(v118));
        v90 = vcvtq_f32_u32(vmovl_u16(*v118.i8));
        *v115 = v90;
        v115[1] = v119;
        v115 += 2;
        ++v113;
        v116 -= 8;
      }

      while (v116);
      if (v96 == v101)
      {
        goto LABEL_66;
      }
    }

    v120 = v92 - v101 + 1;
    v121 = (v94 + 4 * v101);
    v122 = v93 + 640 * v9 + 2 * v101;
    v123 = (v95 + 4 * v101);
    do
    {
      v90.i16[0] = *(v122 + 704);
      v124 = v90.u32[0];
      *v123++ = v124;
      LOWORD(v124) = *(v122 + 320);
      v90.f32[0] = LODWORD(v124);
      *v121++ = v90.i32[0];
      v122 += 2;
      --v120;
    }

    while (v120);
    goto LABEL_66;
  }

  if (v99)
  {
    v100 = 0;
LABEL_58:
    v108 = v92 - v100 + 1;
    v109 = (v94 + 4 * v100);
    v110 = (640 * v9 + 2 * v100 + v93 + 512);
    v111 = (v95 + 4 * v100);
    do
    {
      v90.i16[0] = *v110;
      v112 = v90.u32[0];
      *v111++ = v112;
      LOWORD(v112) = *(v110 - 96);
      v90.f32[0] = LODWORD(v112);
      *v109++ = v90.i32[0];
      ++v110;
      --v108;
    }

    while (v108);
    goto LABEL_66;
  }

  v102 = (v93 + 640 * v9 + 320);
  v100 = v96 & 0xF8;
  v103 = *(*(a1 + 37424) + 8);
  v104 = *(*(a1 + 37448) + 8);
  v105 = v100;
  do
  {
    v106 = v102[12];
    *v103 = vcvtq_f32_u32(vmovl_u16(*v106.i8));
    v103[1] = vcvtq_f32_u32(vmovl_high_u16(v106));
    v103 += 2;
    v107 = *v102++;
    v90 = vcvtq_f32_u32(vmovl_u16(*v107.i8));
    *v104 = v90;
    v104[1] = vcvtq_f32_u32(vmovl_high_u16(v107));
    v104 += 2;
    v105 -= 8;
  }

  while (v105);
  if (v96 != v100)
  {
    goto LABEL_58;
  }

LABEL_66:
  if (v91 <= 0x5A)
  {
    if (v91 <= 0x53 && v97 > 0x1F)
    {
      v125 = 91 - v92;
      v126 = (91 - v92) & 0x78;
      v127 = 4 * v92 + 4;
      v128 = (v94 + v127);
      v129 = (v95 + v127);
      v130 = v126;
      do
      {
        *v129 = 0uLL;
        v129[1] = 0uLL;
        v129 += 2;
        *v128 = 0uLL;
        v128[1] = 0uLL;
        v128 += 2;
        v130 -= 8;
      }

      while (v130);
      if (v125 == v126)
      {
        return peridot::PeridotDXPPreProcessor::process_inner(a1, (a1 + 37328), (a1 + 37376), (a1 + 37400), (a1 + 37424), (a1 + 37448), v9, v8, a7, a6);
      }

      v96 += v126;
    }

    v131 = 4 * v96;
    do
    {
      *(v95 + v131) = 0;
      *(v94 + v131) = 0;
      v131 += 4;
    }

    while (v131 != 368);
  }

  return peridot::PeridotDXPPreProcessor::process_inner(a1, (a1 + 37328), (a1 + 37376), (a1 + 37400), (a1 + 37424), (a1 + 37448), v9, v8, a7, a6);
}

void conv<float,float const>(const float *a1, vDSP_Length __N, uint64_t a3, vDSP_Length a4, float *a5, int a6)
{
  if (a4 <= 3)
  {
    __assert_rtn("conv", "MatlabUtils.cpp", 30, "coeffLen>=4");
  }

  v9 = a1;
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v17 = a4 - 1;
      v18 = a4 - 1 + __N;
      if (v18 <= 0x1F)
      {
        __assert_rtn("conv", "MatlabUtils.cpp", 69, "(arrLen+coeffLen-1)>=32");
      }

      {
        v58 = a5;
        a5 = v58;
        if (v59)
        {
          conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr = 0;
          unk_28134C3E0 = 0;
          qword_28134C3E8 = 0;
          a5 = v58;
        }
      }

      v19 = a5;
      v20 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v21 = (unk_28134C3E0 - conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr) >> 2;
      if (v18 > v21)
      {
        std::vector<float>::__append(&conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr, v18 - v21);
        v20 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      }

      bzero(v20, 4 * v18);
      memcpy((conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr + 4 * (v17 >> 1)), v9, 4 * __N);
      a1 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v14 = (a3 + 4 * a4 - 4);
      a5 = v19;
    }

    else
    {
      if (a6 != 3)
      {
        goto LABEL_52;
      }

      v14 = (a3 + 4 * a4 - 4);
    }

    v15 = __N;
LABEL_22:

    vDSP_conv(a1, 1, v14, -1, a5, 1, v15, a4);
    return;
  }

  if (a6)
  {
    if (a6 == 1)
    {
      if (a4 + __N - 1 <= 0x1F)
      {
        __assert_rtn("conv", "MatlabUtils.cpp", 57, "(arrLen+coeffLen-1)>=32");
      }

      {
        v56 = a5;
        a5 = v56;
        if (v57)
        {
          conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr = 0;
          unk_28134C400 = 0;
          qword_28134C408 = 0;
          a5 = v56;
        }
      }

      v10 = a5;
      v11 = __N + 2 * a4 - 2;
      v12 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v13 = (unk_28134C400 - conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr) >> 2;
      if (v11 > v13)
      {
        std::vector<float>::__append(&conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr, v11 - v13);
        v12 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      }

      bzero(v12, 4 * v11);
      memcpy((conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr + 4 * a4 - 4), v9, 4 * __N);
      a1 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v14 = (a3 + 4 * a4 - 4);
      a5 = v10;
      v15 = a4 + __N - 1;
      goto LABEL_22;
    }

LABEL_52:
    v55 = std::operator<<[abi:ne200100]<std::char_traits<char>>();
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v55);
    exit(-1);
  }

  v16 = __N - a4 + 1;
  if (__N - a4 != -1)
  {
    if (v16 >= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = __N - a4 + 1;
    }

    v23 = a3 + 4 * a4;
    if (a4 > 7)
    {
      if (a4 == (a4 & 0xFFFFFFFFFFFFFFF8))
      {
        v29 = 0;
        v30 = (v23 - 16);
        v31 = a1 + 4;
        do
        {
          v32 = 0uLL;
          v33 = v31;
          v34 = v30;
          v35 = a4;
          v36 = 0uLL;
          do
          {
            v37 = vrev64q_s32(*v34);
            v38 = vrev64q_s32(v34[-1]);
            v32 = vmlaq_f32(v32, v33[-1], vextq_s8(v37, v37, 8uLL));
            v36 = vmlaq_f32(v36, *v33, vextq_s8(v38, v38, 8uLL));
            v34 -= 2;
            v33 += 2;
            v35 -= 8;
          }

          while (v35);
          v39 = vaddq_f32(v36, v32);
          a5[v29++] = vaddv_f32(*&vpaddq_f32(v39, v39));
          ++v31;
        }

        while (v29 != v22);
      }

      else
      {
        v40 = 0;
        v41 = a1 + 4;
        v42 = (a1 + ((4 * a4) & 0xFFFFFFFFFFFFFFE0));
        do
        {
          v43 = 0uLL;
          v44 = v41;
          v45 = (4 * a4 + a3 - 16);
          v46 = a4 & 0xFFFFFFFFFFFFFFF8;
          v47 = 0uLL;
          do
          {
            v48 = vrev64q_s32(*v45);
            v49 = vrev64q_s32(v45[-1]);
            v43 = vmlaq_f32(v43, v44[-1], vextq_s8(v48, v48, 8uLL));
            v47 = vmlaq_f32(v47, *v44, vextq_s8(v49, v49, 8uLL));
            v45 -= 2;
            v44 += 2;
            v46 -= 8;
          }

          while (v46);
          v50 = vaddq_f32(v47, v43);
          v51 = vaddv_f32(*&vpaddq_f32(v50, v50));
          v52 = v42;
          v53 = a4 - (a4 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v54 = *v52++;
            v51 = v51 + (*(a3 - 4 + 4 * v53--) * v54);
          }

          while (v53);
          a5[v40++] = v51;
          ++v41;
          ++v42;
        }

        while (v40 != v22);
      }
    }

    else
    {
      v24 = (a1 + 6);
      v25 = a5;
      do
      {
        v26 = vrev64q_s32(*(v24 - 6));
        v27 = vmulq_f32(*(v23 - 16), vextq_s8(v26, v26, 8uLL));
        v28 = vaddv_f32(*&vpaddq_f32(v27, v27));
        if (a4 != 4)
        {
          v28 = v28 + (*(v23 - 20) * *(v24 - 2));
          if (a4 != 5)
          {
            v28 = v28 + (*(v23 - 24) * *(v24 - 1));
            if (a4 != 6)
            {
              v28 = v28 + (*(v23 - 28) * *v24);
            }
          }
        }

        *v25++ = v28;
        ++v24;
        --v22;
      }

      while (v22);
    }
  }

  v15 = v16 - a4;
  if (v16 > a4)
  {
    v14 = (a3 + 4 * a4 - 4);
    a1 = &v9[a4];
    a5 += a4;
    goto LABEL_22;
  }
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void cConv(const float *a1, vDSP_Length a2, const float *a3, vDSP_Length __P, uint64_t a5, float *a6)
{
  v11 = __P - 1;
  v12 = ((__P - 1) >> 1);
  {
    v77 = a3;
    a3 = v77;
    if (v78)
    {
      cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr = 0;
      unk_28134C3C0 = 0;
      qword_28134C3C8 = 0;
      a3 = v77;
    }
  }

  v13 = a5 + 1;
  v14 = a5 + 1 + v12 + v12;
  v15 = cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr;
  v16 = (unk_28134C3C0 - cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr) >> 2;
  v17 = v14 - v16;
  if (v14 > v16)
  {
    v79 = v12;
    v18 = a6;
    v19 = a1;
    v20 = a5;
    v21 = v14;
    v22 = v11;
    v23 = a2;
    v24 = a3;
    std::vector<float>::__append(&cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr, v17);
    a3 = v24;
    a2 = v23;
    v11 = v22;
    v14 = v21;
    a5 = v20;
    a1 = v19;
    a6 = v18;
    v12 = v79;
    v15 = cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr;
  }

  if (v12)
  {
    if (v12 <= 0xB || 4 * v12 + v15 - &a1[a5] - 4 < 0x20)
    {
      v25 = 0;
LABEL_8:
      v26 = v25 - v12;
      v27 = (v15 + 4 * v25);
      do
      {
        *v27++ = a1[a5 + 1 + v26];
      }

      while (!__CFADD__(v26++, 1));
      goto LABEL_11;
    }

    v25 = v12 & 0xFFFFFFFFFFFFFFF8;
    v65 = (v15 + 16);
    v66 = (a1 + 4 * a5 - 4 * v12 + 20);
    v67 = v12 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v68 = *v66;
      *(v65 - 1) = *(v66 - 1);
      *v65 = v68;
      v65 += 2;
      v66 += 2;
      v67 -= 8;
    }

    while (v67);
    if (v25 != v12)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (!v13)
  {
    goto LABEL_17;
  }

  if (v13 <= 7 || 4 * v12 + v15 - a1 < 0x20)
  {
    v29 = 0;
LABEL_15:
    v30 = a5 - v29 + 1;
    v31 = v29;
    v32 = (v15 + 4 * v29 + 4 * v12);
    v33 = &a1[v31];
    do
    {
      v34 = *v33++;
      *v32++ = v34;
      --v30;
    }

    while (v30);
    goto LABEL_17;
  }

  v29 = v13 & 0xFFFFFFFFFFFFFFF8;
  v69 = (4 * v12 + v15 + 16);
  v70 = a1 + 4;
  v71 = v13 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v72 = *v70;
    *(v69 - 1) = *(v70 - 1);
    *v69 = v72;
    v69 += 2;
    v70 += 8;
    v71 -= 8;
  }

  while (v71);
  if (v13 != v29)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12 <= 0xB || (v35 = 4 * (v12 + a5), (v35 + v15 - a1 + 4) < 0x20))
  {
    v36 = 0;
LABEL_21:
    v37 = v12 - v36;
    v38 = v36;
    v39 = (4 * v36 + 4 * (v12 + a5) + v15 + 4);
    v40 = &a1[v38];
    do
    {
      v41 = *v40++;
      *v39++ = v41;
      --v37;
    }

    while (v37);
    goto LABEL_23;
  }

  v36 = v12 & 0xFFFFFFFFFFFFFFF8;
  v73 = (v35 + v15 + 20);
  v74 = a1 + 4;
  v75 = v12 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v76 = *v74;
    *(v73 - 1) = *(v74 - 1);
    *v73 = v76;
    v73 += 2;
    v74 += 8;
    v75 -= 8;
  }

  while (v75);
  if (v36 != v12)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (__P <= 3)
  {
    __assert_rtn("conv", "MatlabUtils.cpp", 30, "coeffLen>=4");
  }

  v42 = v14 - __P + 1;
  if (v14 - __P != -1)
  {
    if (v42 >= __P)
    {
      v43 = __P;
    }

    else
    {
      v43 = v14 - __P + 1;
    }

    if (__P >= 8)
    {
      v50 = 0;
      v51 = (v15 + 16);
      v52 = (v15 + ((4 * __P) & 0xFFFFFFFFFFFFFFE0));
      do
      {
        v53 = 0uLL;
        v54 = v51;
        v55 = &a3[__P - 4];
        v56 = __P & 0xFFFFFFFFFFFFFFF8;
        v57 = 0uLL;
        do
        {
          v58 = vrev64q_s32(*v55);
          v59 = vrev64q_s32(v55[-1]);
          v53 = vmlaq_f32(v53, v54[-1], vextq_s8(v58, v58, 8uLL));
          v57 = vmlaq_f32(v57, *v54, vextq_s8(v59, v59, 8uLL));
          v55 -= 2;
          v54 += 2;
          v56 -= 8;
        }

        while (v56);
        v60 = vaddq_f32(v57, v53);
        v61 = vaddv_f32(*&vpaddq_f32(v60, v60));
        if (__P != (__P & 0xFFFFFFFFFFFFFFF8))
        {
          v62 = v52;
          v63 = __P - (__P & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v64 = *v62++;
            v61 = v61 + (a3[--v63] * v64);
          }

          while (v63);
        }

        a6[v50++] = v61;
        v51 = (v51 + 4);
        ++v52;
      }

      while (v50 != v43);
    }

    else
    {
      v44 = &a3[__P];
      v45 = (v15 + 24);
      v46 = a6;
      do
      {
        v47 = vrev64q_s32(*(v45 - 6));
        v48 = vmulq_f32(*(v44 - 4), vextq_s8(v47, v47, 8uLL));
        v49 = vaddv_f32(*&vpaddq_f32(v48, v48));
        if (__P != 4)
        {
          v49 = v49 + (*(v44 - 5) * *(v45 - 2));
          if (__P != 5)
          {
            v49 = v49 + (*(v44 - 6) * *(v45 - 1));
            if (__P != 6)
            {
              v49 = v49 + (*(v44 - 7) * *v45);
            }
          }
        }

        *v46++ = v49;
        ++v45;
        --v43;
      }

      while (v43);
    }
  }

  if (v42 > __P)
  {
    vDSP_conv((v15 + 4 * __P), 1, &a3[__P - 1], -1, &a6[__P], 1, v42 - __P, __P);
  }

  if (v14 - v11 < a2)
  {

    bzero(a6 + 8 * v12 + 4 * a5 - 4 * __P + 8, 4 * (__P + a2 - (a5 + 2 * v12)) - 8);
  }
}

double peridot::PeridotDxpMacroSpatial::PeridotDxpMacroSpatial(peridot::PeridotDxpMacroSpatial *this)
{
  result = 32.0000076;
  *this = xmmword_2247A4B60;
  *(this + 4) = 1092616192;
  *(this + 6) = 0;
  return result;
}

{
  result = 32.0000076;
  *this = xmmword_2247A4B60;
  *(this + 4) = 1092616192;
  *(this + 6) = 0;
  return result;
}

void peridot::PeridotDxpMacroSpatial::~PeridotDxpMacroSpatial(id *this)
{
}

{
}

void *peridot::PeridotDxpMacroSpatial::configure(void *this, const peridot::PeridotDXPCalib *a2)
{
  v2 = *(a2 + 503);
  *(this + 26) = *(a2 + 4030);
  *(this + 20) = v2;
  v3 = *(a2 + 4038);
  this[5] = *(a2 + 4044);
  *(this + 34) = v3;
  return this;
}

void peridot::PeridotDxpMacroSpatial::runPolyFit(float *a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, int a6)
{
  v82 = *MEMORY[0x277D85DE8];
  if (*(a2 + 108) == 1)
  {
    peridot::PeridotDxpMacroSpatial::detector(a1, a2, (a5 + 8), (a5 + 16));
    v12 = 0.0;
    if (*(a5 + 16) > a1[3])
    {
      v12 = 1.0;
    }

    v13 = 1.0 / (expf((a1[2] - (*(a5 + 8) * v12)) * a1[1]) + 1.0);
    *(a5 + 4) = v13;
    if (v13 <= 0.5)
    {
      *a5 = 0;
      return;
    }

    v16 = *a2;
    v17 = (*(a2 + 4) + *a2) + *(a2 + 8);
    if (v17 > *a2)
    {
      v16 = (*(a2 + 4) + *a2) + *(a2 + 8);
    }

    v18 = (*(a2 + 16) + *(a2 + 12)) + *(a2 + 20);
    v19 = v18 > v16;
    if (v18 > v16)
    {
      v16 = (*(a2 + 16) + *(a2 + 12)) + *(a2 + 20);
    }

    v20 = (*(a2 + 28) + *(a2 + 24)) + *(a2 + 32);
    if (v20 > v16)
    {
      v19 = 2;
      v16 = (*(a2 + 28) + *(a2 + 24)) + *(a2 + 32);
    }

    v21 = *(a2 + 44);
    v22 = *(a2 + 40) + *(a2 + 36);
    v23 = v22 + v21;
    if ((v22 + v21) > v16)
    {
      v19 = 3;
      v16 = v22 + v21;
    }

    v24 = (*(a2 + 52) + *(a2 + 48)) + *(a2 + 56);
    if (v24 > v16)
    {
      v19 = 4;
      v16 = (*(a2 + 52) + *(a2 + 48)) + *(a2 + 56);
    }

    v25 = *(a2 + 68);
    v26 = *(a2 + 64) + *(a2 + 60);
    v27 = v26 + v25;
    if ((v26 + v25) > v16)
    {
      v19 = 5;
      v16 = v26 + v25;
    }

    v28 = *(a2 + 72);
    v29 = *(a2 + 76);
    v30 = *(a2 + 80);
    v31 = *(a2 + 84);
    v32 = (v29 + v28) + v30;
    if (v32 > v16)
    {
      v19 = 6;
      v16 = (v29 + v28) + v30;
    }

    v33 = *(a2 + 88);
    v34 = *(a2 + 92);
    v35 = (v33 + v31) + v34;
    v36 = 7;
    if (v35 > v16)
    {
      v37 = (v33 + v31) + v34;
    }

    else
    {
      v36 = v19;
      v37 = v16;
    }

    v38 = *(a2 + 96);
    v39 = *(a2 + 100);
    v40 = *(a2 + 104);
    *v14.i32 = (v39 + v38) + v40;
    v41 = 8;
    if (*v14.i32 <= v37)
    {
      v41 = v36;
    }

    v42 = 2.0;
    if (*v14.i32 <= v37)
    {
      if (!v36)
      {
LABEL_74:
        *(a5 + 4) = 0;
        return;
      }

      v43 = (a2 + 12 * v36);
      v28 = *(v43 - 3);
      v29 = *(v43 - 2);
      v30 = *(v43 - 1);
      v31 = *v43;
      v33 = v43[1];
      v34 = v43[2];
      v38 = v43[3];
      v39 = v43[4];
      v40 = v43[5];
      v42 = 1.0;
    }

    v44 = (v31 + v28) + v38;
    v45 = (v33 + v29) + v39;
    v46 = (v34 + v30) + v40;
    v47 = v45 > v44;
    if (v45 <= v44)
    {
      v48 = (v31 + v28) + v38;
    }

    else
    {
      v48 = (v33 + v29) + v39;
    }

    if (v46 > v48)
    {
      v47 = 2;
    }

    if (v47)
    {
      v49 = 0.0;
      if (v47 == 1)
      {
        v50 = -(v45 + (v46 + v44) * -0.5);
        *v15.i32 = ((v46 + (v44 * 2.0)) + (v45 * -3.0)) / (v50 + v50);
LABEL_40:
        v51 = (v29 + v28) + v30;
        v52 = (v33 + v31) + v34;
        v53 = (v39 + v38) + v40;
        if (a6)
        {
          v54 = v35;
          v55 = (*v14.i32 + v35 * 0.5) * 0.5;
          v56 = v17;
          v57 = v18;
          v58 = (v56 + v57 * 0.5) * 0.5;
          v59 = v20;
          v60 = (v57 + (v59 + v56) * 0.5) * 0.5;
          *v81 = v58;
          *&v81[1] = v60;
          v61 = v60 > v58;
          if (v60 <= v58)
          {
            v60 = v58;
          }

          v62 = v23;
          v63 = (v59 + (v62 + v57) * 0.5) * 0.5;
          if (v60 < v63)
          {
            v61 = 2;
            v60 = v63;
          }

          v64 = v24;
          v65 = (v62 + (v64 + v59) * 0.5) * 0.5;
          *&v81[2] = v63;
          *&v81[3] = v65;
          if (v60 < v65)
          {
            v61 = 3;
            v60 = v65;
          }

          v66 = v27;
          v67 = (v64 + (v27 + v62) * 0.5) * 0.5;
          if (v60 < v67)
          {
            v61 = 4;
            v60 = v67;
          }

          v68 = v32;
          v69 = (v66 + (v32 + v64) * 0.5) * 0.5;
          *&v81[4] = v67;
          *&v81[5] = v69;
          if (v60 < v69)
          {
            v61 = 5;
            v60 = (v66 + (v32 + v64) * 0.5) * 0.5;
          }

          v70 = (v68 + (v54 + v66) * 0.5) * 0.5;
          if (v60 < v70)
          {
            v61 = 6;
            v60 = v70;
          }

          v71 = (v54 + (*v14.i32 + v68) * 0.5) * 0.5;
          *&v81[6] = v70;
          *&v81[7] = v71;
          if (v60 < v71)
          {
            v61 = 7;
            v60 = (v54 + (*v14.i32 + v68) * 0.5) * 0.5;
          }

          *&v81[8] = v55;
          if (v60 < v55)
          {
            v61 = 8;
          }

          if (v41 - 1 <= 6)
          {
            if ((v61 & 0xFFFFFFFFFFFFFFF7) != 0)
            {
              v72 = &v81[v61];
              v51 = *(v72 - 1);
              v52 = *v72;
              v53 = v72[1];
            }

            else
            {
              v51 = 0.0;
              v52 = 0.0;
              v53 = 0.0;
            }

            v41 = v61;
          }
        }

        if (v52 > v51 && v52 > v53)
        {
          v73 = -(v52 + (v53 + v51) * -0.5);
          v74 = ((v53 + (v51 * 2.0)) + (v52 * -3.0)) / (v73 + v73);
          v14.i32[1] = 0;
          if (v74 < 0.0)
          {
            v74 = 0.0;
          }

          v14.i32[0] = 3.0;
          if (v74 <= 3.0)
          {
            v75 = v74;
          }

          else
          {
            v75 = 3.0;
          }

LABEL_75:
          v14.i8[0] = *(a1 + a3 + 20);
          v77 = *v15.i32 + (vmovl_s16(*&vmovl_s8(v14)).i32[0] + -1.0);
          v15.i8[0] = *(a1 + a3 + 34);
          v78 = (((-1.0 - v42) + v75) + vmovl_s16(*&vmovl_s8(v15)).i32[0]) + v41;
          v79 = *a4;
          v80 = a4[1];
          *(a5 + 20) = v80 - v78;
          *(a5 + 12) = -(v80 - v78);
          peridot::PeridotDxpMacroSpatial::shiftToDistance(a1, v79, v80, v77, v78, a1[4]);
        }

        v75 = 2.5;
        v76 = *v14.i32 <= v37 || v53 <= v52;
        if (!v76)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v49 = 0.5;
    }

    v76 = v46 <= v48;
    v15.i32[0] = 2.5;
    if (v76)
    {
      *v15.i32 = v49;
    }

    goto LABEL_40;
  }
}

float peridot::PeridotDxpMacroSpatial::detector(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v4.i32[0] = *(a2 + 4);
  v5 = *(a2 + 12);
  if (((*&v5 + *a2) + (v4.f32[0] + *(&v5 + 1))) <= *a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = (*&v5 + *a2) + (v4.f32[0] + *(&v5 + 1));
  }

  v7 = *(a2 + 20);
  v8 = (*(&v5 + 1) + v7.f32[0]) + (v4.f32[0] + *(a2 + 8));
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = (*(&v5 + 1) + v7.f32[0]) + (v4.f32[0] + *(a2 + 8));
  }

  v10 = (v7.f32[1] + *&v5) + (*(&v5 + 1) + v7.f32[2]);
  if (v10 > v9)
  {
    v11 = (v7.f32[1] + *&v5) + (*(&v5 + 1) + v7.f32[2]);
  }

  else
  {
    v11 = v9;
  }

  v12 = (v7.f32[2] + *(&v5 + 1)) + (v7.f32[0] + v7.f32[3]);
  v13 = v12 > v11;
  v14 = v10 > v9 || v12 > v11;
  if (v12 > v11)
  {
    v11 = (v7.f32[2] + *(&v5 + 1)) + (v7.f32[0] + v7.f32[3]);
  }

  v15 = *(a2 + 36);
  v17 = v8 > v6 && v10 <= v9;
  v18 = (v15.f32[0] + v7.f32[1]) + (v7.f32[2] + v15.f32[1]);
  v19 = v18 <= v11 && (v13 || v17);
  if (v18 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v14 = 2;
  }

  v20 = (v15.f32[1] + v7.f32[2]) + (v7.f32[3] + v15.f32[2]);
  if (v20 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v14 = 2;
  }

  v21 = *(a2 + 52);
  if (((v15.f32[3] + v15.f32[0]) + (v15.f32[1] + v21.f32[0])) > v20)
  {
    v19 = 0;
    v14 = 3;
    v20 = (v15.f32[3] + v15.f32[0]) + (v15.f32[1] + v21.f32[0]);
  }

  v22 = (v21.f32[0] + v15.f32[1]) + (v15.f32[2] + v21.f32[1]);
  if (v22 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v19 = 1;
    v14 = 3;
  }

  v23 = (v21.f32[2] + v15.f32[3]) + (v21.f32[0] + v21.f32[3]);
  if (v23 <= v22)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v25 = 4;
  if (v23 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v14 = 4;
  }

  v26 = *(a2 + 68);
  v27 = (v21.f32[3] + v21.f32[0]) + (v21.f32[1] + v26);
  if (v27 <= v23)
  {
    v27 = v23;
  }

  else
  {
    v24 = 1;
    v14 = 4;
  }

  v28 = *(a2 + 72);
  if (((*&v28 + v21.f32[2]) + (v21.f32[3] + *(&v28 + 1))) > v27)
  {
    v24 = 0;
    v14 = 5;
    v27 = (*&v28 + v21.f32[2]) + (v21.f32[3] + *(&v28 + 1));
  }

  v29 = *(a2 + 80);
  v30 = (*(&v28 + 1) + v21.f32[3]) + (v26 + v29.f32[0]);
  if (v30 <= v27)
  {
    v30 = v27;
  }

  else
  {
    v24 = 1;
    v14 = 5;
  }

  if (((v29.f32[1] + *&v28) + (*(&v28 + 1) + v29.f32[2])) > v30)
  {
    v24 = 0;
    v14 = 6;
    v30 = (v29.f32[1] + *&v28) + (*(&v28 + 1) + v29.f32[2]);
  }

  if (((v29.f32[2] + *(&v28 + 1)) + (v29.f32[0] + v29.f32[3])) > v30)
  {
    v24 = 1;
    v14 = 6;
    v30 = (v29.f32[2] + *(&v28 + 1)) + (v29.f32[0] + v29.f32[3]);
  }

  v31 = *(a2 + 96);
  v32 = *(a2 + 100);
  if (((v31 + v29.f32[1]) + (v29.f32[2] + v32)) > v30)
  {
    v24 = 0;
    v14 = 7;
    v30 = (v31 + v29.f32[1]) + (v29.f32[2] + v32);
  }

  v33 = *(a2 + 104);
  if (((v32 + v29.f32[2]) + (v29.f32[3] + v33)) > v30)
  {
    v24 = 1;
    v14 = 7;
  }

  v34 = 12 * v14;
  v35 = a2 + 12 + v34;
  v36 = a2 + v34;
  if (v24)
  {
    v25 = 8;
  }

  v37.i32[1] = *(a2 + 8);
  v37.i64[1] = *(a2 + 12);
  v4.i32[1] = *(a2 + 68);
  v4.i64[1] = *(a2 + 72);
  v38 = vaddq_f32(v4, v29);
  v37.i32[0] = *a2;
  v39 = vaddq_f32(v37, vaddq_f32(v15, vaddq_f32(v7, v21)));
  v39.f32[0] = ((v31 + (v32 + v33)) + vaddv_f32(*&vpaddq_f32(v38, v38))) + vaddv_f32(*&vpaddq_f32(v39, v39));
  v38.f32[0] = (*(v36 + 4 * v24) + *(v35 + 4 * v24)) + (*(v35 + v25) + *(v36 + v25));
  v39.f32[0] = (v39.f32[0] - v38.f32[0]) * 0.043478;
  *a3 = (v38.f32[0] * 0.25) / v39.f32[0];
  result = (v38.f32[0] * 0.25) - v39.f32[0];
  *a4 = result;
  return result;
}

void peridot::PeridotDxpMacroSpatial::shiftToDistance(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  v11[0] = 84.0 - a2;
  v11[1] = a3;
  v10[0] = 84.0 - a4;
  v10[1] = a5;
  [*(a1 + 48) undistort:1 distortedPixels:v11 outUndistorted:&v9];
  [*(a1 + 48) undistort:1 distortedPixels:v10 outUndistorted:v8];
  v7 = &unk_283809D60;
  operator new[]();
}

void sub_224769428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  Matrix<float>::~Matrix(&a15);
  Matrix<float>::~Matrix(&a25);
  Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

unint64_t Matrix<float>::Inverse(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  *a1 = &unk_283809D60;
  if (v4 * v5)
  {
    operator new[]();
  }

  result = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 4 * v5 * v4;
  v7 = *(a2 + 8);
  v8 = *v7;
  if (v5 == 3)
  {
    v9 = ((-((v7[7] * v7[5]) - (v7[8] * v7[4])) * v8) + (-((v7[6] * v7[4]) - (v7[3] * v7[7])) * v7[2])) + (-((v7[3] * v7[8]) - (v7[6] * v7[5])) * v7[1]);
    if (v9 == 0.0)
    {
      return result;
    }
  }

  else
  {
    v10 = v7[3];
    v9 = -((v7[2] * v7[1]) - (v10 * v8));
    if (v9 == 0.0)
    {
      return result;
    }

    if (v5 == 2)
    {
      v11 = 1.0 / v9;
      MEMORY[0] = v10 * v11;
      MEMORY[4] = -(v7[1] * v11);
      MEMORY[8] = -(v7[2] * v11);
      MEMORY[0xC] = *v7 * v11;
      return result;
    }
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = 0;
    v14 = 5;
    v15 = 1;
    v16 = 8;
    v17 = 2;
    v18 = 7;
    v19 = 4;
    v20 = 1.0 / v9;
    do
    {
      LODWORD(result) = 0;
      v21 = 0;
      v22 = 9 * (v15 / 3);
      v23 = 9 * (v17 / 3);
      v24 = v13 + 1;
      v25 = v14 - v22;
      v26 = v16 - v23;
      v27 = v18 - v23;
      v28 = v19 - v22;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = *(a2 + 8);
        *(*(a1 + 8) + 4 * v13 + 4 * result) = -((*(v31 + 4 * (v21 + v27 - 3 * (v30 / 3))) * *(v31 + 4 * (v21 + v25 - 3 * (v29 / 3)))) - (*(v31 + 4 * (v21 + v26 - 3 * (v29 / 3))) * *(v31 + 4 * (v21 + v28 - 3 * (v30 / 3))))) * v20;
        result = result + v4;
        ++v29;
        ++v30;
        ++v21;
      }

      while (v12 != v21);
      v14 += 3;
      ++v15;
      v16 += 3;
      ++v17;
      v18 += 3;
      v19 += 3;
      ++v13;
    }

    while (v24 != v12);
  }

  return result;
}

void sub_224769DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  Matrix<float>::~Matrix(&a22);
  Matrix<float>::~Matrix(&a27);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a32);
  MatrixNxPts<1u,float>::~MatrixNxPts(va);
  MatrixNxPts<1u,float>::~MatrixNxPts(v36 - 232);
  operator delete(__p);
  operator delete(a11);
  _Unwind_Resume(a1);
}

void sub_22476A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 == 1)
  {
    if (a22)
    {
      MEMORY[0x22AA53170](a22, 0x1000C8052888210);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

_DWORD *coder::array_base<float,int,2>::ensureCapacity(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    if (v2 <= 16)
    {
      v2 = 16;
    }

    if (a2 >= 17)
    {
      do
      {
        if (v2 <= 0x3FFFFFFF)
        {
          v2 *= 2;
        }

        else
        {
          v2 = 0x7FFFFFFF;
        }
      }

      while (v2 < a2);
    }

    operator new[]();
  }

  result[2] = a2;
  return result;
}

uint64_t Buckets::Buckets(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  v3 = *(a2 + 8);
  v4 = (v3 - *a2) >> 2;
  if (v4 <= 1)
  {
    __assert_rtn("Buckets", "PeridotTelemetry.mm", 87, "false");
  }

  if (a1 + 16 == a2)
  {
LABEL_37:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 16), *a2, v3, v4);
  v5 = ((*(a1 + 24) - *(a1 + 16)) >> 2) - 1;
  if (v5 > (*(a1 + 56) - *(a1 + 40)) >> 3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    goto LABEL_37;
  }

  v6 = *(a1 + 16);
  v7 = 0x277CCA000uLL;
  if (*(a1 + 24) - v6 != 4)
  {
    v17 = 0;
    while (1)
    {
      v19 = v6[v17++];
      v20 = v6[v17];
      v21 = *(v7 + 3240);
      v22 = floatToStringScientific(v19);
      v23 = floatToStringScientific(v20);
      v24 = objc_msgSend(v21, "stringWithFormat:", @"(%@,%@]"), v22, v23;

      v26 = *(a1 + 48);
      v25 = *(a1 + 56);
      if (v26 >= v25)
      {
        break;
      }

      *v26 = v24;
      v18 = (v26 + 1);
LABEL_10:
      *(a1 + 48) = v18;

      v6 = *(a1 + 16);
      if (v17 >= ((*(a1 + 24) - v6) >> 2) - 1)
      {
        goto LABEL_7;
      }
    }

    v27 = *(a1 + 40);
    v28 = v26 - v27;
    v29 = (v26 - v27) >> 3;
    if ((v29 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v30 = v25 - v27;
    v31 = v30 >> 2;
    if (v30 >> 2 <= (v29 + 1))
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      if (!(v32 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = v24;
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    v36 = 8 * v29 - (v35 - v34);
    *(8 * v29) = v33;
    v18 = 8 * v29 + 8;
    v37 = v35 - v34;
    if (v35 == v34)
    {
LABEL_33:
      *(a1 + 40) = v36;
      *(a1 + 48) = v18;
      *(a1 + 56) = 0;
      v7 = 0x277CCA000;
      if (v34)
      {
        operator delete(v34);
      }

      goto LABEL_10;
    }

    v38 = v37 - 8;
    v39 = v34;
    v40 = (8 * v29 - (v35 - v34));
    if ((v37 - 8) >= 0x98)
    {
      if (v34 >= &v28[(v38 & 0xFFFFFFFFFFFFFFF8) - v37 + 8] || (v39 = v34, v40 = (8 * v29 - (v35 - v34)), v36 >= v34 + (v38 & 0xFFFFFFFFFFFFFFF8) + 8))
      {
        v41 = v37 >> 3;
        v42 = (v38 >> 3) + 1;
        v43 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        v39 = &v34[v43];
        v44 = (-8 * v41 + 8 * v29 + 16);
        v45 = v34;
        v46 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *v45;
          v48 = *(v45 + 1);
          *v45 = 0uLL;
          *(v45 + 1) = 0uLL;
          v45 += 4;
          *(v44 - 1) = v47;
          *v44 = v48;
          v44 += 2;
          v46 -= 4;
        }

        while (v46);
        if (v42 == (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_30;
        }

        v40 = (v36 + v43 * 8);
      }
    }

    do
    {
      v49 = *v39;
      *v39++ = 0;
      *v40++ = v49;
    }

    while (v39 != v35);
LABEL_30:
    v50 = 8 * v29 - (v35 - v34);
    do
    {
      v51 = *v34++;
    }

    while (v34 != v35);
    v34 = *(a1 + 40);
    v36 = v50;
    goto LABEL_33;
  }

LABEL_7:
  v8 = *(v7 + 3240);
  v9 = floatToStringScientific(*v6);
  v10 = objc_msgSend(v8, "stringWithFormat:", @"(-Inf,%@]"), v9;
  v11 = *(a1 + 8);
  *(a1 + 8) = v10;

  v12 = *(v7 + 3240);
  v13 = floatToStringScientific(*(*(a1 + 24) - 4));
  v14 = objc_msgSend(v12, "stringWithFormat:", @"(%@,Inf]"), v13;
  v15 = *a1;
  *a1 = v14;

  return a1;
}

void sub_22476B020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::vector<NSString * {__strong}>::~vector[abi:ne200100]((v12 + 40));
  v15 = *a12;
  if (*a12)
  {
    *(v12 + 24) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

id floatToStringScientific(float a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::ostream::operator<<();
  std::stringbuf::str();
  v1 = HIBYTE(v16);
  v2 = HIBYTE(v16);
  if (v16 < 0)
  {
    v1 = __p[1];
  }

  v3 = MEMORY[0x277D82828];
  if (v1 >= 5)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::ostream::operator<<();
    *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFEFB | 0x100;
    std::stringbuf::str();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v8;
    v16 = v9;
    v10 = *v3;
    *(&v10 + *(v10 - 24)) = v3[3];
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    MEMORY[0x22AA53140](&v14);
    v2 = HIBYTE(v16);
  }

  v4 = v2 < 0;
  v5 = __p;
  if (v4)
  {
    v5 = __p[0];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v5];
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *v3;
  *(&v17 + *(v17 - 24)) = v3[3];
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](&v21);

  return v6;
}

void sub_22476B3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  std::ostringstream::~ostringstream(&a14);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a53);
  _Unwind_Resume(a1);
}

char **std::vector<NSString * {__strong}>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AA530C0](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_22476B64C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x22AA53140](v2);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x22AA53140](a1 + 112);
  return a1;
}

__CFString *Buckets::getBucketName(Buckets *this, float a2)
{
  v2 = *(this + 2);
  v3 = *v2;
  if (*v2 >= a2)
  {
    this = (this + 8);
    goto LABEL_11;
  }

  v4 = *(this + 3);
  if (*(v4 - 4) < a2)
  {
LABEL_11:
    v9 = *this;
    goto LABEL_12;
  }

  v5 = (v4 - v2) >> 2;
  v6 = 1;
  while (v5 != v6)
  {
    v7 = v6;
    v8 = v3 < a2;
    v3 = v2[v6++];
    v8 = !v8 || v3 < a2;
    if (!v8)
    {
      this = (*(this + 5) + 8 * (v7 - 1));
      goto LABEL_11;
    }
  }

  v9 = @"N/A";
LABEL_12:

  return v9;
}

void sub_22476BACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v17;
  operator delete(v18);
  Buckets::~Buckets((v16 + 256));
  Buckets::~Buckets((v16 + 192));
  Buckets::~Buckets((v16 + 128));
  Buckets::~Buckets((v16 + 64));
  Buckets::~Buckets(v16);
  _Unwind_Resume(a1);
}

void sub_22476BB78()
{
  *(v1 - 56) = v0;
  operator delete(v0);
  JUMPOUT(0x22476BB48);
}

void sub_22476BB90()
{
  v1 = *(v0 - 64);
  if (v1)
  {
    *(v0 - 56) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x22476BB48);
}

void sub_22476BBA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Buckets::~Buckets(Buckets *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

uint64_t *Filters::filters(Filters *this)
{
  {
    Filters::Filters(&Filters::filters(void)::inst);
  }

  return &Filters::filters(void)::inst;
}

void PeridotTelemetry::reportEvent(PeridotTelemetry *this, NSString *a2, NSDictionary *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = this;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a2;
  v6 = [(NSString *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSString *)v5 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 doubleValue];
          if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            NSLog(&cfstr_EventContainsI.isa, v4, v9, v10);

            goto LABEL_17;
          }
        }
      }

      v6 = [(NSString *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (PeridotTelemetry::sendToCoreAnalytics == 1)
  {
    v12 = v5;
    if ((AnalyticsSendEventLazy() & 1) == 0)
    {
      NSLog(&cfstr_FailedSendingE.isa, v4);
    }
  }

  if (PeridotTelemetry::printToConsole == 1)
  {
    NSLog(&stru_28380D3B0.isa, v4, v5);
  }

LABEL_17:
}

void PeridotTelemetry::PeridotTelemetry(PeridotTelemetry *this)
{
  *this = 0;
}

{
  *this = 0;
}

uint64_t PeridotTelemetry::startSession(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 3792) = a3;
  bzero((a1 + 16), 0xEC0uLL);
  *(a1 + 184) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 192) = arc4random_uniform(0x29u) + 10;
  *(a1 + 656) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 664) = arc4random_uniform(0x29u) + 10;
  *(a1 + 1128) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 1136) = arc4random_uniform(0x29u) + 10;
  *(a1 + 1600) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 1608) = arc4random_uniform(0x29u) + 10;
  *(a1 + 2072) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 2080) = arc4random_uniform(0x29u) + 10;
  *(a1 + 2544) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 2552) = arc4random_uniform(0x29u) + 10;
  *(a1 + 3016) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 3024) = arc4random_uniform(0x29u) + 10;
  *(a1 + 3488) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 3496) = arc4random_uniform(0x29u) + 10;
  *a1 = [MEMORY[0x277CBEAA8] now];

  return MEMORY[0x2821F96F8]();
}

void PeridotTelemetry::endSession(PeridotTelemetry *this)
{
  if (*this)
  {
    PeridotTelemetry::reportSessionStatistics(this);
    v2 = *this;
    *this = 0;
  }
}

void PeridotTelemetry::reportSessionStatistics(PeridotTelemetry *this)
{
  v57[25] = *MEMORY[0x277D85DE8];
  v35 = [MEMORY[0x277CBEAA8] now];
  [v35 timeIntervalSinceDate:*this];
  v3 = v2;
  if (v2 >= 2.0)
  {
    v4 = 0;
    v55 = 0;
    do
    {
      v5 = *(this + v4 + 24);
      if (v5)
      {
        v56[0] = @"BankId";
        v57[0] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v55];
        v56[1] = @"OperatingMode";
        v54 = v57[0];
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
        v57[1] = v53;
        v56[2] = @"Preset";
        v52 = [PDUtils getPresetName:*(this + 2)];
        v57[2] = v52;
        v56[3] = @"NumberOfFrames";
        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + v4 + 24)];
        v57[3] = v51;
        v56[4] = @"SessionTime";
        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
        v57[4] = v50;
        v56[5] = @"MaxVSpad";
        LODWORD(v6) = *(this + v4 + 44);
        v49 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
        v57[5] = v49;
        v56[6] = @"MinVSpad";
        LODWORD(v7) = *(this + v4 + 40);
        v48 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
        v57[6] = v48;
        v56[7] = @"MaxVSpadDiff";
        *&v8 = *(this + v4 + 44) - *(this + v4 + 40);
        v47 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        v57[7] = v47;
        v56[8] = @"SessionVSpadDiff";
        *&v9 = *(this + v4 + 60) - *(this + v4 + 56);
        v46 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
        v57[8] = v46;
        v56[9] = @"MaxPeriscopeTemperature";
        LODWORD(v10) = *(this + v4 + 68);
        v45 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        v57[9] = v45;
        v56[10] = @"MinPeriscopeTemperature";
        LODWORD(v11) = *(this + v4 + 64);
        v44 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
        v57[10] = v44;
        v56[11] = @"MaxPeriscopeTemperatureDiff";
        *&v12 = *(this + v4 + 68) - *(this + v4 + 64);
        v43 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
        v57[11] = v43;
        v56[12] = @"SessionPeriscopeTemperatureDiff";
        *&v13 = *(this + v4 + 84) - *(this + v4 + 80);
        [MEMORY[0x277CCABB0] numberWithFloat:v13];
        v42 = v14 = 14 * v5;
        v57[12] = v42;
        v56[13] = @"HighConfSpotsPercentage";
        if (14 * v5)
        {
          v15 = *(this + v4 + 88) * 100.0 / v14;
        }

        else
        {
          v15 = 0.0;
        }

        v41 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        v57[13] = v41;
        v56[14] = @"EdgeOrReflectionPercentage";
        if (v14)
        {
          v16 = *(this + v4 + 96) * 100.0 / v14;
        }

        else
        {
          v16 = 0.0;
        }

        v40 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        v57[14] = v40;
        v56[15] = @"GlarePercentage";
        if (v14)
        {
          v17 = *(this + v4 + 104) * 100.0 / v14;
        }

        else
        {
          v17 = 0.0;
        }

        v39 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v57[15] = v39;
        v56[16] = @"RegularGlareFAPercentage";
        if (v14)
        {
          v18 = *(this + v4 + 112) * 100.0 / v14;
        }

        else
        {
          v18 = 0.0;
        }

        v38 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        v57[16] = v38;
        v56[17] = @"GroupGlareFAPercentage";
        if (v14)
        {
          v19 = *(this + v4 + 120) * 100.0 / v14;
        }

        else
        {
          v19 = 0.0;
        }

        v37 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
        v57[17] = v37;
        v56[18] = @"SaturatedPercentage";
        if (v14)
        {
          v20 = *(this + v4 + 136) * 100.0 / v14;
        }

        else
        {
          v20 = 0.0;
        }

        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
        v57[18] = v36;
        v56[19] = @"ExtremeAmbPercentage";
        if (v14)
        {
          v21 = *(this + v4 + 144) * 100.0 / v14;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
        v57[19] = v22;
        v56[20] = @"HighStrayPercentage";
        if (v14)
        {
          v23 = *(this + v4 + 152) * 100.0 / v14;
        }

        else
        {
          v23 = 0.0;
        }

        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
        v57[20] = v24;
        v56[21] = @"ReflectivityFilteredSpotsPercentage";
        if (v14)
        {
          v25 = *(this + v4 + 160) * 100.0 / v14;
        }

        else
        {
          v25 = 0.0;
        }

        v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
        v57[21] = v26;
        v56[22] = @"SecondEchoFiltered";
        if (v14)
        {
          v27 = *(this + v4 + 168) * 100.0 / v14;
        }

        else
        {
          v27 = 0.0;
        }

        v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
        v57[22] = v28;
        v56[23] = @"DRfilterPercentage";
        if (v14)
        {
          v29 = *(this + v4 + 128) * 100.0 / v14;
        }

        else
        {
          v29 = 0.0;
        }

        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
        v57[23] = v30;
        v56[24] = @"OverallFiltered";
        if (v14)
        {
          v31 = *(this + v4 + 176) * 100.0 / v14;
        }

        else
        {
          v31 = 0.0;
        }

        v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
        v57[24] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:25];

        PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.SessionStatistics", v33, v34);
      }

      ++v55;
      v4 += 472;
    }

    while (v4 != 3776);
  }
}

float PeridotTelemetry::MeasurementStatistics::add(PeridotTelemetry::MeasurementStatistics *this, float a2)
{
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    *(this + 4) = a2;
    *this = a2;
    *(this + 1) = a2;
  }

  else
  {
    v3 = *this;
    v4 = *(this + 1);
    if (*this > a2)
    {
      v3 = a2;
    }

    if (v4 < a2)
    {
      v4 = a2;
    }

    *this = v3;
    *(this + 1) = v4;
  }

  *(this + 5) = a2;
  result = *(this + 2) + a2;
  *(this + 2) = result;
  *(this + 3) = v2 + 1.0;
  return result;
}

uint64_t PeridotTelemetry::aggregateBankOutputStats(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[7];
  v7 = a3[8];
  v8 = a3[9];
  v9 = a3[10];
  v11 = a3[5];
  result = a3[6];
  v12 = a3[11];
  v13 = a2 + 92;
  v14 = 14;
  do
  {
    v15 = *(v13 - 88);
    v16 = *v13;
    if (v15 > 0.8 || v16 > 0.8)
    {
      *a3 = ++v3;
    }

    if (v15 > 0.8 && v16 > 0.8)
    {
      a3[1] = ++v4;
    }

    v17 = *(v13 - 8);
    v18 = *(v13 + 80);
    if (((v17 | v18) & 0x800) != 0)
    {
      a3[2] = ++v5;
    }

    v19 = a3 + 4;
    if (((v17 | v18) & 0x100) != 0 || (v19 = a3 + 3, ((v17 | v18) & 0x40) != 0))
    {
      ++*v19;
      v20 = v17 | v18;
      if (((v17 | v18) & 0x1000) == 0)
      {
LABEL_14:
        if ((v20 & 0x40000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v20 = v17 | v18;
      if (((v17 | v18) & 0x1000) == 0)
      {
        goto LABEL_14;
      }
    }

    a3[6] = ++result;
    if ((v20 & 0x40000) == 0)
    {
LABEL_15:
      v21 = v17 | v18;
      if (((v17 | v18) & 0x400000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_26:
    a3[7] = ++v6;
    v21 = v17 | v18;
    if (((v17 | v18) & 0x400000) == 0)
    {
LABEL_16:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      a3[9] = ++v8;
      goto LABEL_18;
    }

LABEL_27:
    a3[8] = ++v7;
    if ((v21 & 0x400) != 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (((v17 | v18) & 0xC000) != 0)
    {
      a3[10] = ++v9;
    }

    if (((v17 | v18) & 0x20000) != 0)
    {
      a3[5] = ++v11;
    }

    if (((v17 | v18) & 0x46C540) != 0)
    {
      a3[11] = ++v12;
    }

    v13 += 308;
    --v14;
  }

  while (v14);
  return result;
}

const peridot::PeridotUserOutput *PeridotTelemetry::saveBankUserOutputData(PeridotTelemetry *this, const peridot::PeridotUserOutput *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = this + 16;
  v6 = this + 472 * a3;
  v7 = v6 + 316;
  v8 = v6 + 204;
  v9 = 0.0;
  v10 = 14;
  result = a2;
  do
  {
    *(v8 - 1) = *(result + 66);
    *v8 = *(result + 67);
    *(v7 - 1) = *(result + 68);
    *v7 = *(result + 69);
    if (*(result + 1) >= 0.8)
    {
      v12 = *(result + 23) >= 0.8 && *(result + 22) < *result;
      if (*(result + 45) >= 0.8 && *(result + 44) < *(result + 22 * v12))
      {
        v12 = 2;
      }

      goto LABEL_5;
    }

    v14 = *(result + 45);
    if (*(result + 23) >= 0.8)
    {
      if (v14 >= 0.8)
      {
        if (*(result + 44) < *(result + 22))
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 1;
      }

LABEL_5:
      v13 = (a2 + 308 * v3 + 88 * v12 + 12);
LABEL_6:
      v9 = *v13 + v9;
      ++v4;
      goto LABEL_7;
    }

    if (v14 >= 0.8)
    {
      v13 = (result + 188);
      goto LABEL_6;
    }

LABEL_7:
    ++v3;
    result = (result + 308);
    v7 += 3;
    v8 += 2;
    --v10;
  }

  while (v10);
  if (v4)
  {
    v9 = v9 / v4;
  }

  *&v5[472 * a3 + 464] = v9;
  return result;
}

void PeridotTelemetry::frameProcessed(void *this, const PeridotSuperFrame *a2, const peridot::PeridotUserOutput *a3)
{
  if (*this)
  {
    v5 = this;
    v6 = 0;
    v29 = this + 2;
    v7 = a2 + 920;
    v8 = a2 + 3728;
    while (1)
    {
      if (v6 >= *(a2 + 1))
      {
        return;
      }

      v9 = v6;
      v10 = (*(*&v7[8 * *&v8[8 * v6]] + 2) - 1);
      v11 = &v29[59 * v10];
      ++v11[1];
      this = PeridotTelemetry::aggregateBankOutputStats(this, a3 + 4504 * v6, v11 + 9);
      v13 = *&v8[8 * v6];
      v14 = v11 + 15;
      v15 = v11 + 9;
      ++v6;
      if (*(a2 + 1) - 1 <= v9)
      {
        v16 = a2;
      }

      else
      {
        v16 = &v8[8 * v6];
      }

      v17 = (*(a2 + 2) + 9280 * v13 + 12);
      while (v13 < *v16)
      {
        ++v11[2];
        v22 = *v17 & 7;
        if (v22 == 5)
        {
          v23 = *(*(a2 + v13 + 339) + 8);
          v24 = *v14;
          if (*v14 == 0.0)
          {
            *(v11 + 16) = v23;
            v25 = v23;
            v26 = v23;
          }

          else
          {
            v25 = *(v11 + 12);
            v26 = *(v11 + 13);
            if (v25 > v23)
            {
              v25 = *(*(a2 + v13 + 339) + 8);
            }

            if (v26 < v23)
            {
              v26 = *(*(a2 + v13 + 339) + 8);
            }
          }

          *(v11 + 12) = v25;
          *(v11 + 13) = v26;
          v20 = (v11 + 7);
          v21 = v11 + 15;
          *(v11 + 17) = v23;
          goto LABEL_13;
        }

        if (v22 == 4)
        {
          v23 = *(*(a2 + v13 + 339) + 8);
          v24 = *v15;
          if (*v15 == 0.0)
          {
            *(v11 + 10) = v23;
            v18 = v23;
            v19 = v23;
          }

          else
          {
            v18 = *(v11 + 6);
            v19 = *(v11 + 7);
            if (v18 > v23)
            {
              v18 = *(*(a2 + v13 + 339) + 8);
            }

            if (v19 < v23)
            {
              v19 = *(*(a2 + v13 + 339) + 8);
            }
          }

          *(v11 + 6) = v18;
          *(v11 + 7) = v19;
          v20 = (v11 + 4);
          v21 = v11 + 9;
          *(v11 + 11) = v23;
LABEL_13:
          *v20 = *v20 + v23;
          *v21 = v24 + 1.0;
        }

        ++v13;
        v17 += 9280;
      }

      if (v11[1] == v11[21])
      {
        PeridotTelemetry::saveBankUserOutputData(v5, a3, v10);
        PeridotTelemetry::reportFrameStatistics(v5, a2, a3, v9);
        if ((v10 & 0xFFFFFFFB) == 3)
        {
          v28 = *(v5 + 3);
          if (*(v5 + 62) == v28 && *(v5 + 121) == v28 && *(v5 + 180) == v28 && *(v5 + 239) == v28 && *(v5 + 298) == v28 && *(v5 + 357) == v28 && *(v5 + 416) == v28)
          {
            PeridotTelemetry::reportFrameStatisticsAllBanks(v5, v12, v27);
          }
        }
      }

      if (v11[1] == v11[22])
      {
        PeridotTelemetry::reportSpotStatistics(v5, v12, a3, v9, *(v11 + 17));
      }
    }
  }
}

void PeridotTelemetry::reportFrameStatistics(PeridotTelemetry *this, const PeridotSuperFrame *a2, const peridot::PeridotUserOutput *a3, uint64_t a4)
{
  v62[13] = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v7 = a3 + 4504 * a4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  PeridotTelemetry::aggregateBankOutputStats(this, v7, &v55);
  v8 = *(a2 + 451);
  if (v8)
  {
    v9 = *(v8 + 22) + *(v8 + 26);
    v10 = v9 * 0.0625;
    v11 = *(v8 + 6);
    v12 = *(v8 + 10);
    v13 = *(v8 + 14);
    v14 = *(v8 + 18);
    v15 = (v12 - (v9 * 0.0625)) * 0.98;
    v16 = (v13 - (v9 * 0.0625)) * 1.01;
    v17 = (v14 - (v9 * 0.0625)) * 1.05;
    v18 = (v17 + (v16 + v15)) * 0.333333333;
    if (v18 < 0.01)
    {
      v18 = 0.01;
    }

    v19 = fmaxf((vabds_f32(v11, v10) * 0.99) / v18, 0.0) + -1.0;
    v20 = (v11 - v10) * 0.99;
    v21 = (v17 + (v16 + v20)) * 0.333333333;
    if (v21 < 0.01)
    {
      v21 = 0.01;
    }

    v22 = (vabds_f32(v12, v10) * 0.98) / v21;
    if (v19 >= v22)
    {
      v22 = v19;
    }

    v23 = v22 + -1.0;
    v24 = v15 + v20;
    v25 = (v17 + v24) * 0.333333333;
    if (v25 < 0.01)
    {
      v25 = 0.01;
    }

    v26 = (vabds_f32(v13, v10) * 1.01) / v25;
    if (v23 < v26)
    {
      v23 = v26;
    }

    v27 = v23 + -1.0;
    v28 = (v16 + v24) * 0.333333333;
    if (v28 < 0.01)
    {
      v28 = 0.01;
    }

    v29 = (vabds_f32(v14, v10) * 1.05) / v28;
    if (v27 >= v29)
    {
      v29 = v27;
    }

    v30 = v29 + -1.0;
    v31 = ((v14 + v13) + (v12 + v11)) + (v9 * -0.25);
    v32 = *(v8 + 2) * 184.0;
    if (v32 < 0.01)
    {
      v32 = 0.01;
    }

    v33 = v31 / v32;
  }

  else
  {
    v30 = 0.0;
    v33 = 0.0;
    v10 = 0.0;
  }

  v34 = *(a2 + *(a2 + a4 + 466) + 3);
  v35 = v34[32] > 100;
  if (v34[33] > 100)
  {
    ++v35;
  }

  if (v34[34] > 100)
  {
    ++v35;
  }

  if (v34[35] > 100)
  {
    ++v35;
  }

  if (v34[36] > 100)
  {
    ++v35;
  }

  if (v34[37] > 100)
  {
    ++v35;
  }

  if (v34[38] > 100)
  {
    ++v35;
  }

  if (v34[39] > 100)
  {
    ++v35;
  }

  if (v34[40] > 100)
  {
    ++v35;
  }

  if (v34[41] > 100)
  {
    ++v35;
  }

  if (v34[42] > 100)
  {
    ++v35;
  }

  if (v34[43] > 100)
  {
    ++v35;
  }

  if (v34[44] > 100)
  {
    ++v35;
  }

  if (v34[45] <= 100)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 + 1;
  }

  v61[0] = @"BankId";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7[4312]];
  v62[0] = v54;
  v61[1] = @"FrameId";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 59 * v7[4312] + 3)];
  v62[1] = v53;
  v61[2] = @"OperatingMode";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
  v62[2] = v52;
  v61[3] = @"Preset";
  v51 = [PDUtils getPresetName:*(this + 2)];
  v62[3] = v51;
  v61[4] = @"HighConfSpotsPercentage";
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v55 * 7.14285714];
  v62[4] = v37;
  v61[5] = @"EdgeOrReflectionPercentage";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v55 + 1) * 7.14285714];
  v62[5] = v38;
  v61[6] = @"GrimaldiBaseline";
  *&v39 = v10;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v62[6] = v40;
  v61[7] = @"GrimaldiBeta";
  *&v41 = v30;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v62[7] = v42;
  v61[8] = @"GrimaldiBetaSNR";
  *&v43 = v33;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v62[8] = v44;
  v61[9] = @"NumDisabledMacroTwo";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v36];
  v62[9] = v45;
  v61[10] = @"RegularGlareFAPercentage";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v56 + 1) * 7.14285714];
  v62[10] = v46;
  v61[11] = @"GroupGlareFAPercentage";
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:v57 * 7.14285714];
  v62[11] = v47;
  v61[12] = @"ReflectivityFilteredSpotsPercentage";
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v59 + 1) * 7.14285714];
  v62[12] = v48;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:13];

  PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.FrameStatistics", v49, v50);
}

void PeridotTelemetry::reportFrameStatisticsAllBanks(PeridotTelemetry *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v4 = 0;
  v221 = v3 + 16;
  v280 = *MEMORY[0x277D85DE8];
  v5 = (v3 + 204);
  v219 = v3;
  v6 = (v3 + 316);
  v7 = 0.0;
  v8 = &v224;
  v9 = &v228;
  v10 = &v232;
  v11 = &v236;
  while (2)
  {
    v12 = *(v221 + 472 * v4 + 464);
    v13 = 2 * v4;
    v14 = (2 * v4) & 0xC;
    if ((v4 & 1) == 0)
    {
      v15 = 0;
      v16 = v6;
      v17 = v5;
      while (1)
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        v21 = *(v16 - 1);
        v20 = *v16;
        *&v11[4 * v15] = v19;
        *&v10[4 * v15] = v21;
        *&v9[4 * v15] = v18;
        *&v8[4 * v15] = v20;
        if ((v15 & 9) == 1)
        {
          break;
        }

        if ((v15 & 9) != 0)
        {
          goto LABEL_9;
        }

        v26 = v13 | (v15 >> 1);
        v235[v26 + 96] = v19;
        v231[v26 + 96] = v21;
        v227[v26 + 96] = v18;
        v223[v26 + 96] = v20;
        if (v15 >= 6)
        {
          goto LABEL_13;
        }

LABEL_5:
        ++v15;
        v17 += 2;
        v16 += 3;
        if (v15 == 14)
        {
          goto LABEL_2;
        }
      }

      v22 = v13 | (v15 >> 1);
      v235[v22 + 112] = v19;
      v231[v22 + 112] = v21;
      v227[v22 + 112] = v18;
      v223[v22 + 112] = v20;
LABEL_9:
      v23 = v15 < 6;
      if (v15 >= 6 && (v15 & 1) != 0)
      {
        v23 = 0;
        v24 = v14 + ((v15 - 6) >> 1);
        v235[v24 + 80] = v19;
        v231[v24 + 80] = v21;
        v227[v24 + 80] = v18;
        v223[v24 + 80] = v20;
      }

      if (v23)
      {
        goto LABEL_5;
      }

LABEL_13:
      if ((v15 & 1) == 0)
      {
        v25 = v14 + ((v15 - 6) >> 1);
        v235[v25 + 64] = v19;
        v231[v25 + 64] = v21;
        v227[v25 + 64] = v18;
        v223[v25 + 64] = v20;
      }

      goto LABEL_5;
    }

    v27 = 0;
    v28 = v6;
    v29 = v5;
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v33 = *(v28 - 1);
      v32 = *v28;
      *&v11[4 * v27] = v31;
      *&v10[4 * v27] = v33;
      *&v9[4 * v27] = v30;
      *&v8[4 * v27] = v32;
      if ((v27 & 9) == 1)
      {
        v34 = v14 | (v27 >> 1);
        v235[v34 + 48] = v31;
        v231[v34 + 48] = v33;
        v227[v34 + 48] = v30;
        v223[v34 + 48] = v32;
      }

      else if ((v27 & 9) == 0)
      {
        v38 = v14 | (v27 >> 1);
        v235[v38 + 32] = v31;
        v231[v38 + 32] = v33;
        v227[v38 + 32] = v30;
        v223[v38 + 32] = v32;
        if (v27 < 6)
        {
          goto LABEL_18;
        }

LABEL_26:
        if ((v27 & 1) == 0)
        {
          v37 = v14 + ((v27 - 6) >> 1);
          v235[v37] = v31;
          v231[v37] = v33;
          v227[v37] = v30;
          v223[v37] = v32;
        }

        goto LABEL_18;
      }

      v35 = v27 < 6;
      if (v27 >= 6 && (v27 & 1) != 0)
      {
        v35 = 0;
        v36 = v14 + ((v27 - 6) >> 1);
        v235[v36 + 16] = v31;
        v231[v36 + 16] = v33;
        v227[v36 + 16] = v30;
        v223[v36 + 16] = v32;
      }

      if (!v35)
      {
        goto LABEL_26;
      }

LABEL_18:
      ++v27;
      v29 += 2;
      v28 += 3;
    }

    while (v27 != 14);
LABEL_2:
    v7 = v12 + v7;
    ++v4;
    v8 += 56;
    v9 += 56;
    v10 += 56;
    v11 += 56;
    v5 += 118;
    v6 += 118;
    if (v4 != 8)
    {
      continue;
    }

    break;
  }

  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  v39 = v237;
  v40 = v238;
  v41 = v233;
  v42 = v234;
  v43 = v229;
  v44 = v230;
  v217 = v225;
  v45 = v226;
  std::__sort<std::__less<float,float> &,float *>();
  v215 = *&v235[119];
  v213 = *&v235[120];
  std::__sort<std::__less<float,float> &,float *>();
  v211 = *&v235[103];
  v209 = *&v235[104];
  std::__sort<std::__less<float,float> &,float *>();
  v207 = *&v235[87];
  v205 = *&v235[88];
  std::__sort<std::__less<float,float> &,float *>();
  v203 = *&v235[71];
  v201 = *&v235[72];
  std::__sort<std::__less<float,float> &,float *>();
  v199 = *&v235[55];
  v197 = *&v235[56];
  std::__sort<std::__less<float,float> &,float *>();
  v195 = *&v235[39];
  v193 = *&v235[40];
  std::__sort<std::__less<float,float> &,float *>();
  v191 = *&v235[23];
  v189 = *&v235[24];
  std::__sort<std::__less<float,float> &,float *>();
  v187 = *&v235[7];
  v185 = *&v235[8];
  std::__sort<std::__less<float,float> &,float *>();
  v183 = *&v231[119];
  v181 = *&v231[120];
  std::__sort<std::__less<float,float> &,float *>();
  v179 = *&v231[103];
  v177 = *&v231[104];
  std::__sort<std::__less<float,float> &,float *>();
  v175 = *&v231[87];
  v173 = *&v231[88];
  std::__sort<std::__less<float,float> &,float *>();
  v171 = *&v231[71];
  v169 = *&v231[72];
  std::__sort<std::__less<float,float> &,float *>();
  v166 = *&v231[56];
  v167 = *&v231[55];
  std::__sort<std::__less<float,float> &,float *>();
  v164 = *&v231[40];
  v165 = *&v231[39];
  std::__sort<std::__less<float,float> &,float *>();
  v162 = *&v231[24];
  v163 = *&v231[23];
  std::__sort<std::__less<float,float> &,float *>();
  v160 = *&v231[8];
  v161 = *&v231[7];
  std::__sort<std::__less<float,float> &,float *>();
  v158 = *&v227[120];
  v159 = *&v227[119];
  std::__sort<std::__less<float,float> &,float *>();
  v156 = *&v227[104];
  v157 = *&v227[103];
  std::__sort<std::__less<float,float> &,float *>();
  v154 = *&v227[88];
  v155 = *&v227[87];
  std::__sort<std::__less<float,float> &,float *>();
  v152 = *&v227[72];
  v153 = *&v227[71];
  std::__sort<std::__less<float,float> &,float *>();
  v150 = *&v227[56];
  v151 = *&v227[55];
  std::__sort<std::__less<float,float> &,float *>();
  v148 = *&v227[40];
  v149 = *&v227[39];
  std::__sort<std::__less<float,float> &,float *>();
  v146 = *&v227[24];
  v147 = *&v227[23];
  std::__sort<std::__less<float,float> &,float *>();
  v144 = *&v227[8];
  v145 = *&v227[7];
  std::__sort<std::__less<float,float> &,float *>();
  v142 = *&v223[120];
  v143 = *&v223[119];
  std::__sort<std::__less<float,float> &,float *>();
  v140 = *&v223[104];
  v141 = *&v223[103];
  std::__sort<std::__less<float,float> &,float *>();
  v138 = *&v223[88];
  v139 = *&v223[87];
  std::__sort<std::__less<float,float> &,float *>();
  v136 = *&v223[72];
  v137 = *&v223[71];
  std::__sort<std::__less<float,float> &,float *>();
  v134 = *&v223[56];
  v135 = *&v223[55];
  std::__sort<std::__less<float,float> &,float *>();
  v132 = *&v223[40];
  v133 = *&v223[39];
  std::__sort<std::__less<float,float> &,float *>();
  v130 = *&v223[24];
  v131 = *&v223[23];
  std::__sort<std::__less<float,float> &,float *>();
  v128 = *&v223[8];
  v129 = *&v223[7];
  v239[0] = @"FrameId";
  v222 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v219 + 24)];
  v240 = v222;
  v239[1] = @"OperatingMode";
  v241 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v219 + 8)];
  v239[2] = @"Preset";
  v127 = v241;
  v46 = [PDUtils getPresetName:*(v219 + 8)];
  *&v47 = v7 * 0.125;
  v242 = v46;
  v239[3] = @"MeanIntensityForIndicator";
  v126 = v46;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  *&v49 = (v40 + v39) * 0.5;
  v220 = v48;
  v243 = v48;
  v239[4] = @"StrayEstNormalAllFoV";
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
  *&v51 = (v42 + v41) * 0.5;
  v244 = v50;
  v239[5] = @"StrayChangeNormalAllFoV";
  v125 = v50;
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
  *&v53 = (v44 + v43) * 0.5;
  v124 = v52;
  v245 = v52;
  v239[6] = @"StrayEstM1AllFoV";
  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
  *&v55 = (v45 + v217) * 0.5;
  v123 = v54;
  v246 = v54;
  v239[7] = @"StrayChangeM1AllFoV";
  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
  *&v57 = (v213 + v215) * 0.5;
  v216 = v56;
  v247 = v56;
  v239[8] = @"StrayEstNormalRegion0";
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
  *&v59 = (v209 + v211) * 0.5;
  v214 = v58;
  v248 = v58;
  v239[9] = @"StrayEstNormalRegion1";
  v60 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
  *&v61 = (v205 + v207) * 0.5;
  v212 = v60;
  v249 = v60;
  v239[10] = @"StrayEstNormalRegion2";
  v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
  *&v63 = (v201 + v203) * 0.5;
  v210 = v62;
  v250 = v62;
  v239[11] = @"StrayEstNormalRegion3";
  v64 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
  *&v65 = (v197 + v199) * 0.5;
  v208 = v64;
  v251 = v64;
  v239[12] = @"StrayEstNormalRegion4";
  v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
  *&v67 = (v193 + v195) * 0.5;
  v206 = v66;
  v252 = v66;
  v239[13] = @"StrayEstNormalRegion5";
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
  *&v69 = (v189 + v191) * 0.5;
  v204 = v68;
  v253 = v68;
  v239[14] = @"StrayEstNormalRegion6";
  v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
  *&v71 = (v185 + v187) * 0.5;
  v202 = v70;
  v254 = v70;
  v239[15] = @"StrayEstNormalRegion7";
  v72 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
  *&v73 = (v181 + v183) * 0.5;
  v200 = v72;
  v255 = v72;
  v239[16] = @"StrayChangeNormalRegion0";
  v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  *&v75 = (v177 + v179) * 0.5;
  v198 = v74;
  v256 = v74;
  v239[17] = @"StrayChangeNormalRegion1";
  v76 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
  *&v77 = (v173 + v175) * 0.5;
  v196 = v76;
  v257 = v76;
  v239[18] = @"StrayChangeNormalRegion2";
  v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
  *&v79 = (v169 + v171) * 0.5;
  v194 = v78;
  v258 = v78;
  v239[19] = @"StrayChangeNormalRegion3";
  v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
  *&v81 = (v166 + v167) * 0.5;
  v192 = v80;
  v259 = v80;
  v239[20] = @"StrayChangeNormalRegion4";
  v82 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
  *&v83 = (v164 + v165) * 0.5;
  v190 = v82;
  v260 = v82;
  v239[21] = @"StrayChangeNormalRegion5";
  v84 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
  *&v85 = (v162 + v163) * 0.5;
  v188 = v84;
  v261 = v84;
  v239[22] = @"StrayChangeNormalRegion6";
  v86 = [MEMORY[0x277CCABB0] numberWithFloat:v85];
  *&v87 = (v160 + v161) * 0.5;
  v186 = v86;
  v262 = v86;
  v239[23] = @"StrayChangeNormalRegion7";
  v88 = [MEMORY[0x277CCABB0] numberWithFloat:v87];
  *&v89 = (v158 + v159) * 0.5;
  v184 = v88;
  v263 = v88;
  v239[24] = @"StrayEstM1Region0";
  v90 = [MEMORY[0x277CCABB0] numberWithFloat:v89];
  *&v91 = (v156 + v157) * 0.5;
  v218 = v90;
  v264 = v90;
  v239[25] = @"StrayEstM1Region1";
  v92 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
  *&v93 = (v154 + v155) * 0.5;
  v182 = v92;
  v265 = v92;
  v239[26] = @"StrayEstM1Region2";
  v94 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
  *&v95 = (v152 + v153) * 0.5;
  v180 = v94;
  v266 = v94;
  v239[27] = @"StrayEstM1Region3";
  v96 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
  *&v97 = (v150 + v151) * 0.5;
  v178 = v96;
  v267 = v96;
  v239[28] = @"StrayEstM1Region4";
  v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
  *&v99 = (v148 + v149) * 0.5;
  v176 = v98;
  v268 = v98;
  v239[29] = @"StrayEstM1Region5";
  v100 = [MEMORY[0x277CCABB0] numberWithFloat:v99];
  *&v101 = (v146 + v147) * 0.5;
  v174 = v100;
  v269 = v100;
  v239[30] = @"StrayEstM1Region6";
  v102 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
  *&v103 = (v144 + v145) * 0.5;
  v172 = v102;
  v270 = v102;
  v239[31] = @"StrayEstM1Region7";
  v104 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
  *&v105 = (v142 + v143) * 0.5;
  v170 = v104;
  v271 = v104;
  v239[32] = @"StrayChangeM1Region0";
  v106 = [MEMORY[0x277CCABB0] numberWithFloat:v105];
  *&v107 = (v140 + v141) * 0.5;
  v168 = v106;
  v272 = v106;
  v239[33] = @"StrayChangeM1Region1";
  v108 = [MEMORY[0x277CCABB0] numberWithFloat:v107];
  *&v109 = (v138 + v139) * 0.5;
  v273 = v108;
  v239[34] = @"StrayChangeM1Region2";
  v110 = [MEMORY[0x277CCABB0] numberWithFloat:v109];
  *&v111 = (v136 + v137) * 0.5;
  v274 = v110;
  v239[35] = @"StrayChangeM1Region3";
  v112 = [MEMORY[0x277CCABB0] numberWithFloat:v111];
  *&v113 = (v134 + v135) * 0.5;
  v275 = v112;
  v239[36] = @"StrayChangeM1Region4";
  v114 = [MEMORY[0x277CCABB0] numberWithFloat:v113];
  *&v115 = (v132 + v133) * 0.5;
  v276 = v114;
  v239[37] = @"StrayChangeM1Region5";
  v116 = [MEMORY[0x277CCABB0] numberWithFloat:v115];
  *&v117 = (v130 + v131) * 0.5;
  v277 = v116;
  v239[38] = @"StrayChangeM1Region6";
  v118 = [MEMORY[0x277CCABB0] numberWithFloat:v117];
  *&v119 = (v128 + v129) * 0.5;
  v278 = v118;
  v239[39] = @"StrayChangeM1Region7";
  v120 = [MEMORY[0x277CCABB0] numberWithFloat:v119];
  v279 = v120;
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v240 forKeys:v239 count:40];

  PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.FrameStatisticsAllBanks", v121, v122);
}

void PeridotTelemetry::reportSpotStatistics(PeridotTelemetry *this, const PeridotSuperFrame *a2, const peridot::PeridotUserOutput *a3, uint64_t a4, float a5)
{
  v125 = *MEMORY[0x277D85DE8];
  {
    Filters::Filters(&Filters::filters(void)::inst);
  }

  v9 = 0;
  v114 = (a3 + 4504 * a4);
  v10 = v114 + 23;
  v11 = 0.0;
  v12 = 14;
  do
  {
    if (*(v10 - 22) > 0.8)
    {
      v11 = (*(v10 - 16) / *(v10 - 20)) + v11;
      ++v9;
    }

    if (*v10 > 0.8)
    {
      v11 = (v10[6] / v10[2]) + v11;
      ++v9;
    }

    v10 += 77;
    --v12;
  }

  while (v12);
  if (v9)
  {
    v13 = v11 / v9;
  }

  else
  {
    v13 = 0.0;
  }

  v90 = v13;
  v119 = xmmword_2247A50F0;
  v120 = 13;
  v121 = 0;
  v122 = 13;
  v123 = 0;
  v124 = xmmword_2247A50F0;
  v118[0] = 0;
  v118[2] = 0;
  v118[4] = 0;
  v118[1] = 12;
  v118[3] = 12;
  v118[6] = 0;
  v118[5] = 12;
  v14 = *(v114 + 4312);
  v15 = *(&v119 + v14);
  v118[7] = 12;
  v16 = v118[v14];
  v117[0] = v15;
  v117[1] = v16;
  v17 = arc4random_uniform(0xCu);
  v18 = 0;
  if (v17)
  {
    v19 = v17;
    do
    {
      v21 = v15 != v18 && v16 != v18;
      ++v18;
      v19 -= v21;
    }

    while (v19);
  }

  v22 = 0;
  v117[2] = v18;
  v89 = this + 16;
  v23 = ((v114[1067] + (v114[990] + v114[913])) + ((v114[836] + (v114[759] + (v114[682] + v114[605]))) + ((v114[528] + (v114[451] + v114[374])) + ((v114[297] + v114[220]) + (v114[143] + v114[66]))))) * 0.071429;
  do
  {
    v92 = v117[v22];
    v24 = &v114[77 * v92];
    v88 = v22;
    v91 = *(v24 + 1) > 0.8 && *(v24 + 23) > 0.8;
    v25 = 0;
    v26 = 0;
    v27 = *(v24 + 66);
    v28 = *(v24 + 67);
    v29 = *(v24 + 68);
    v30 = 1;
    v31 = *(v24 + 69);
    do
    {
      if ((v25 & 1) != 0 && *(v24 + 23) < 0.3)
      {
        break;
      }

      v93 = v30;
      v32 = &v24[88 * v26];
      v33 = *(v32 + 3);
      v115[0] = @"BankId";
      v113 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v114 + 4312)];
      v116[0] = v113;
      v115[1] = @"FrameId";
      v108 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*&v89[472 * *(v114 + 4312) + 8]];
      v116[1] = v108;
      v115[2] = @"OperatingMode";
      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
      v116[2] = v107;
      v115[3] = @"Preset";
      v100 = [PDUtils getPresetName:*(this + 2)];
      v116[3] = v100;
      v115[4] = @"SpotId";
      v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92];
      v116[4] = v106;
      v115[5] = @"TileId";
      v105 = [MEMORY[0x277CCABB0] numberWithInt:v114[1078] & 1];
      v116[5] = v105;
      v115[6] = @"Echo";
      v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
      v116[6] = v104;
      v115[7] = @"StrayEstNormal";
      LODWORD(v34) = v27;
      v99 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
      v116[7] = v99;
      v115[8] = @"StrayEstM1";
      LODWORD(v35) = v28;
      v103 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
      v116[8] = v103;
      v115[9] = @"StrayChangeNormal";
      LODWORD(v36) = v29;
      v102 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
      v116[9] = v102;
      v115[10] = @"StrayChangeM1";
      LODWORD(v37) = v31;
      v101 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
      v116[10] = v101;
      v115[11] = @"BankMeanStrayEstNormal";
      *&v38 = v23;
      v98 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
      v116[11] = v98;
      v115[12] = @"SuspectedBlockedAperture";
      v97 = [MEMORY[0x277CCABB0] numberWithBool:v23 > 0.5];
      v116[12] = v97;
      v115[13] = @"TwoEchos";
      v95 = [MEMORY[0x277CCABB0] numberWithBool:v91];
      v116[13] = v95;
      v115[14] = @"TimeOfFlight";
      v94 = [MEMORY[0x277CCABB0] numberWithDouble:*v32 * 149852322.0];
      v116[14] = v94;
      v115[15] = @"RangeBucket";
      v39 = *v32 * 149852322.0;
      *&v39 = v39;
      v40 = &qword_28134C240;
      v41 = *qword_28134C248;
      if (*qword_28134C248 >= *&v39 || (v40 = &Filters::filters(void)::inst, *(qword_28134C250 - 4) < *&v39))
      {
LABEL_37:
        v46 = *v40;
      }

      else
      {
        v42 = 1;
        while ((qword_28134C250 - qword_28134C248) >> 2 != v42)
        {
          v43 = v42;
          v44 = v41 < *&v39;
          v41 = *(qword_28134C248 + 4 * v42++);
          if (v44 && v41 >= *&v39)
          {
            v40 = (qword_28134C260 + 8 * (v43 - 1));
            goto LABEL_37;
          }
        }

        v46 = @"N/A";
      }

      v109 = v46;
      v116[15] = v46;
      v115[16] = @"SNR";
      LODWORD(v39) = *(v32 + 2);
      v96 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
      v116[16] = v96;
      v115[17] = @"SnrBucket";
      LODWORD(v47) = *(v32 + 2);
      v48 = &qword_28134C300;
      v49 = *qword_28134C308;
      if (*qword_28134C308 >= *&v47 || (v48 = &qword_28134C2F8, *(qword_28134C310 - 4) < *&v47))
      {
LABEL_47:
        v53 = *v48;
      }

      else
      {
        v50 = 1;
        while ((qword_28134C310 - qword_28134C308) >> 2 != v50)
        {
          v51 = v50;
          v44 = v49 < *&v47;
          v49 = *(qword_28134C308 + 4 * v50++);
          if (v44 && v49 >= *&v47)
          {
            v48 = (qword_28134C320 + 8 * (v51 - 1));
            goto LABEL_47;
          }
        }

        v53 = @"N/A";
      }

      v110 = v53;
      v116[17] = v53;
      v115[18] = @"Confidence";
      LODWORD(v47) = *(v32 + 1);
      v54 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
      v116[18] = v54;
      v115[19] = @"ConfidenceBucket";
      LODWORD(v55) = *(v32 + 1);
      v56 = &qword_28134C280;
      v57 = *qword_28134C288;
      if (*qword_28134C288 >= *&v55 || (v56 = &qword_28134C278, *(qword_28134C290 - 4) < *&v55))
      {
LABEL_57:
        v61 = *v56;
      }

      else
      {
        v58 = 1;
        while ((qword_28134C290 - qword_28134C288) >> 2 != v58)
        {
          v59 = v58;
          v44 = v57 < *&v55;
          v57 = *(qword_28134C288 + 4 * v58++);
          if (v44 && v57 >= *&v55)
          {
            v56 = (qword_28134C2A0 + 8 * (v59 - 1));
            goto LABEL_57;
          }
        }

        v61 = @"N/A";
      }

      v111 = v61;
      v116[19] = v61;
      v115[20] = @"Reflectivity";
      *&v55 = v33;
      v62 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
      v116[20] = v62;
      v115[21] = @"ReflectivityBucket";
      v63 = &qword_28134C2C0;
      LODWORD(v64) = *qword_28134C2C8;
      if (*qword_28134C2C8 >= v33 || (v63 = &qword_28134C2B8, *(qword_28134C2D0 - 4) < v33))
      {
LABEL_67:
        v68 = *v63;
      }

      else
      {
        v65 = 1;
        while ((qword_28134C2D0 - qword_28134C2C8) >> 2 != v65)
        {
          v66 = v65;
          v44 = *&v64 < v33;
          LODWORD(v64) = *(qword_28134C2C8 + 4 * v65++);
          if (v44 && *&v64 >= v33)
          {
            v63 = (qword_28134C2E0 + 8 * (v66 - 1));
            goto LABEL_67;
          }
        }

        v68 = @"N/A";
      }

      v116[21] = v68;
      v115[22] = @"TempBucket";
      v69 = &qword_28134C340;
      v70 = *qword_28134C348;
      if (*qword_28134C348 >= a5 || (v69 = &qword_28134C338, *(qword_28134C350 - 4) < a5))
      {
LABEL_77:
        v74 = *v69;
      }

      else
      {
        v71 = 1;
        while ((qword_28134C350 - qword_28134C348) >> 2 != v71)
        {
          v72 = v71;
          v44 = v70 < a5;
          v70 = *(qword_28134C348 + 4 * v71++);
          if (v44 && v70 >= a5)
          {
            v69 = (qword_28134C360 + 8 * (v72 - 1));
            goto LABEL_77;
          }
        }

        v74 = @"N/A";
      }

      v116[22] = v74;
      v115[23] = @"Na";
      LODWORD(v64) = *(v32 + 7);
      v75 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
      v116[23] = v75;
      v115[24] = @"NaBucket";
      v76 = *(v32 + 7);
      v77 = &qword_28134C380;
      v78 = *qword_28134C388;
      if (*qword_28134C388 >= v76 || (v77 = &qword_28134C378, *(qword_28134C390 - 4) < v76))
      {
LABEL_87:
        v82 = *v77;
      }

      else
      {
        v79 = 1;
        while ((qword_28134C390 - qword_28134C388) >> 2 != v79)
        {
          v80 = v79;
          v44 = v78 < v76;
          v78 = *(qword_28134C388 + 4 * v79++);
          if (v44 && v78 >= v76)
          {
            v77 = (qword_28134C3A0 + 8 * (v80 - 1));
            goto LABEL_87;
          }
        }

        v82 = @"N/A";
      }

      v116[24] = v82;
      v115[25] = @"AmbToNaRatio";
      v83 = 0.0;
      if (v90 > 0.0)
      {
        *&v83 = *(v32 + 7) * (1.0 / v90);
      }

      v84 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
      v116[25] = v84;
      v115[26] = @"BgReplacedDevice";
      v85 = [MEMORY[0x277CCABB0] numberWithBool:*(*(this + 474) + 4) & 1];
      v116[26] = v85;
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:27];

      PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.SpotStatistics", v86, v87);
      v30 = 0;
      v25 = 1;
      v26 = 1;
      v24 = &v114[77 * v92];
    }

    while ((v93 & 1) != 0);
    v22 = v88 + 1;
  }

  while (v88 != 2);
}

double PeridotTelemetry::calcBankAmbient(PeridotTelemetry *this, const peridot::PeridotUserOutput *a2)
{
  v2 = 0;
  v3 = (a2 + 92);
  result = 0.0;
  v5 = 14;
  do
  {
    if (*(v3 - 22) > 0.8)
    {
      *&result = (*(v3 - 16) / *(v3 - 20)) + *&result;
      ++v2;
    }

    if (*v3 > 0.8)
    {
      *&result = (v3[6] / v3[2]) + *&result;
      ++v2;
    }

    v3 += 77;
    --v5;
  }

  while (v5);
  if (!v2)
  {
    return 0.0;
  }

  *&result = *&result / v2;
  return result;
}

double peridot::PeridotT0::PeridotT0(peridot::PeridotT0 *this)
{
  *(this + 600) = xmmword_2247B9640;
  *(this + 616) = unk_2247B9650;
  *(this + 632) = xmmword_2247B9660;
  *(this + 536) = xmmword_2247B9600;
  *(this + 552) = unk_2247B9610;
  *(this + 568) = xmmword_2247B9620;
  *(this + 584) = unk_2247B9630;
  *(this + 81) = 6;
  *(this + 84) = 0;
  *(this + 680) = xmmword_2247A48F0;
  *(this + 696) = xmmword_2247A4900;
  *(this + 712) = xmmword_2247A4910;
  result = 1.79440326e15;
  *(this + 91) = 0x4319800042F48000;
  *(this + 184) = 1128611840;
  return result;
}

{
  *(this + 600) = xmmword_2247B9640;
  *(this + 616) = unk_2247B9650;
  *(this + 632) = xmmword_2247B9660;
  *(this + 536) = xmmword_2247B9600;
  *(this + 552) = unk_2247B9610;
  *(this + 568) = xmmword_2247B9620;
  *(this + 584) = unk_2247B9630;
  *(this + 81) = 6;
  *(this + 84) = 0;
  *(this + 680) = xmmword_2247A48F0;
  *(this + 696) = xmmword_2247A4900;
  *(this + 712) = xmmword_2247A4910;
  result = 1.79440326e15;
  *(this + 91) = 0x4319800042F48000;
  *(this + 184) = 1128611840;
  return result;
}

float peridot::PeridotT0::init(peridot::PeridotT0 *this, const _PeridotCalib *a2, const peridot::PeridotDXPCalib *a3, uint64_t a4)
{
  *(this + 764) = 0;
  *(this + 8) = xmmword_2247A4650;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 66) = 0;
  if (a2)
  {
    p_refTimingWide = &a2->skews.refSkews.banks[0].refs[0].refTimingWide;
    v5 = &a2->skews.absSkews.banks[a4];
    v6 = *v5->widePulse;
    *(this + 12) = *&a2->skews.absSkews.banks[a4].widePulse[6];
    *this = v6;
    v8 = *v5->widePulse;
    *(this + 40) = *&a2->skews.absSkews.banks[a4].widePulse[6];
    *(this + 28) = v8;
    v7 = *this;
    v8.i64[0] = *(this + 2);
    if (*(this + 13) || ((v9 = vrev64q_s16(v7), *v10.i8 = vrev64_s16(*v8.i8), v10.i64[1] = vextq_s8(v9, v9, 8uLL).u64[0], !vaddvq_s16(vbicq_s8(xmmword_2247A5060, vceqzq_s16(v10)))) ? (v11 = v7.i64[0] == 0) : (v11 = 0), v11 ? (v12 = *(this + 12) == 0) : (v12 = 0), !v12))
    {
      v13.i64[0] = 0x96009600960096;
      v13.i64[1] = 0x96009600960096;
      v14 = vaddq_s16(*(this + 2), v13);
      v8.i64[1] = *(this + 3);
      *this = vaddq_s16(v7, v13);
      *(this + 1) = vaddq_s16(v8, v13);
      *(this + 2) = v14;
      *(this + 6) = vadd_s16(*(this + 48), 0x96009600960096);
    }

    jlskVersion = a2->additionalParams.jlskVersion;
    refTimingWide = a2->skews.refSkews.banks[a4].refs[0].refTimingWide;
    v17 = (refTimingWide - a2->skews.refSkews.banks[a4].refs[1].refTimingWide);
    *(this + 14) = v17;
    if (jlskVersion > 0x64)
    {
      v22 = (refTimingWide - a2->skews.refSkews.banks[1].refs[0].refTimingWide);
      v23 = (refTimingWide - a2->skews.refSkews.banks[2].refs[0].refTimingWide);
      v24 = (refTimingWide - a2->skews.refSkews.banks[3].refs[0].refTimingWide);
      *(this + 15) = (refTimingWide - *p_refTimingWide);
      *(this + 16) = v22;
      v25 = (refTimingWide - a2->skews.refSkews.banks[4].refs[0].refTimingWide);
      *(this + 17) = v23;
      *(this + 18) = v24;
      v26 = (refTimingWide - a2->skews.refSkews.banks[5].refs[0].refTimingWide);
      *(this + 19) = v25;
      *(this + 20) = v26;
      v27 = (refTimingWide - a2->skews.refSkews.banks[7].refs[0].refTimingWide);
      *(this + 21) = (refTimingWide - a2->skews.refSkews.banks[6].refs[0].refTimingWide);
      *(this + 22) = v27;
      if (jlskVersion == 101)
      {
        *(this + 14) += a2->skews.absSkews.banks[a4].narrowPulse[0] - a2->skews.absSkews.banks[a4].widePulse[0];
        *(this + 15) += a2->skews.absSkews.banks[a4].narrowPulse[1] - a2->skews.absSkews.banks[a4].widePulse[1];
        *(this + 16) += a2->skews.absSkews.banks[a4].narrowPulse[2] - a2->skews.absSkews.banks[a4].widePulse[2];
        *(this + 17) += a2->skews.absSkews.banks[a4].narrowPulse[3] - a2->skews.absSkews.banks[a4].widePulse[3];
        *(this + 18) += a2->skews.absSkews.banks[a4].narrowPulse[4] - a2->skews.absSkews.banks[a4].widePulse[4];
        *(this + 19) += a2->skews.absSkews.banks[a4].narrowPulse[5] - a2->skews.absSkews.banks[a4].widePulse[5];
        *(this + 20) += a2->skews.absSkews.banks[a4].narrowPulse[6] - a2->skews.absSkews.banks[a4].widePulse[6];
        *(this + 21) += a2->skews.absSkews.banks[a4].narrowPulse[7] - a2->skews.absSkews.banks[a4].widePulse[7];
        *(this + 22) += a2->skews.absSkews.banks[a4].narrowPulse[8] - a2->skews.absSkews.banks[a4].widePulse[8];
        *(this + 23) += a2->skews.absSkews.banks[a4].narrowPulse[9] - a2->skews.absSkews.banks[a4].widePulse[9];
        *(this + 24) += a2->skews.absSkews.banks[a4].narrowPulse[10] - a2->skews.absSkews.banks[a4].widePulse[10];
        *(this + 25) += a2->skews.absSkews.banks[a4].narrowPulse[11] - a2->skews.absSkews.banks[a4].widePulse[11];
        *(this + 26) += a2->skews.absSkews.banks[a4].narrowPulse[12] - a2->skews.absSkews.banks[a4].widePulse[12];
        *(this + 27) += a2->skews.absSkews.banks[a4].narrowPulse[13] - a2->skews.absSkews.banks[a4].widePulse[13];
        *(this + 31) = v17;
        refTimingNarrow = a2->skews.refSkews.banks[a4].refs[1].refTimingWide;
        v29 = (refTimingNarrow - a2->skews.refSkews.banks[1].refs[1].refTimingWide);
        *(this + 23) = (refTimingNarrow - a2->skews.refSkews.banks[0].refs[1].refTimingWide);
        *(this + 24) = v29;
        v30 = (refTimingNarrow - a2->skews.refSkews.banks[3].refs[1].refTimingWide);
        *(this + 25) = (refTimingNarrow - a2->skews.refSkews.banks[2].refs[1].refTimingWide);
        *(this + 26) = v30;
        v31 = (refTimingNarrow - a2->skews.refSkews.banks[5].refs[1].refTimingWide);
        *(this + 27) = (refTimingNarrow - a2->skews.refSkews.banks[4].refs[1].refTimingWide);
        *(this + 28) = v31;
        v32 = (refTimingNarrow - a2->skews.refSkews.banks[6].refs[1].refTimingWide);
        v33 = a2->skews.refSkews.banks[7].refs[1].refTimingWide;
      }

      else
      {
        *(this + 764) = 1;
        *(this + 14) = a2->skews.absSkews.banks[a4].narrowPulse[0];
        *(this + 15) = a2->skews.absSkews.banks[a4].narrowPulse[1];
        *(this + 16) = a2->skews.absSkews.banks[a4].narrowPulse[2];
        *(this + 17) = a2->skews.absSkews.banks[a4].narrowPulse[3];
        *(this + 18) = a2->skews.absSkews.banks[a4].narrowPulse[4];
        *(this + 19) = a2->skews.absSkews.banks[a4].narrowPulse[5];
        *(this + 20) = a2->skews.absSkews.banks[a4].narrowPulse[6];
        *(this + 21) = a2->skews.absSkews.banks[a4].narrowPulse[7];
        *(this + 22) = a2->skews.absSkews.banks[a4].narrowPulse[8];
        *(this + 23) = a2->skews.absSkews.banks[a4].narrowPulse[9];
        *(this + 24) = a2->skews.absSkews.banks[a4].narrowPulse[10];
        *(this + 25) = a2->skews.absSkews.banks[a4].narrowPulse[11];
        *(this + 26) = a2->skews.absSkews.banks[a4].narrowPulse[12];
        *(this + 27) = a2->skews.absSkews.banks[a4].narrowPulse[13];
        refTimingNarrow = a2->skews.refSkews.banks[a4].refs[1].refTimingNarrow;
        *(this + 31) = (refTimingNarrow - a2->skews.refSkews.banks[a4].refs[0].refTimingNarrow);
        *(this + 8) = xmmword_2247A4A50;
        v34 = (refTimingNarrow - a2->skews.refSkews.banks[1].refs[1].refTimingNarrow);
        *(this + 23) = (refTimingNarrow - a2->skews.refSkews.banks[0].refs[1].refTimingNarrow);
        *(this + 24) = v34;
        v35 = (refTimingNarrow - a2->skews.refSkews.banks[3].refs[1].refTimingNarrow);
        *(this + 25) = (refTimingNarrow - a2->skews.refSkews.banks[2].refs[1].refTimingNarrow);
        *(this + 26) = v35;
        v36 = (refTimingNarrow - a2->skews.refSkews.banks[5].refs[1].refTimingNarrow);
        *(this + 27) = (refTimingNarrow - a2->skews.refSkews.banks[4].refs[1].refTimingNarrow);
        *(this + 28) = v36;
        v32 = (refTimingNarrow - a2->skews.refSkews.banks[6].refs[1].refTimingNarrow);
        v33 = a2->skews.refSkews.banks[7].refs[1].refTimingNarrow;
      }

      *(this + 29) = v32;
      *(this + 30) = (refTimingNarrow - v33);
    }

    else
    {
      *(this + 31) = v17;
      v18 = (refTimingWide - a2->skews.refSkews.banks[1].refs[0].refTimingWide);
      *(this + 15) = (refTimingWide - *p_refTimingWide);
      *(this + 16) = v18;
      v19 = (refTimingWide - a2->skews.refSkews.banks[3].refs[0].refTimingWide);
      *(this + 17) = (refTimingWide - a2->skews.refSkews.banks[2].refs[0].refTimingWide);
      *(this + 18) = v19;
      v20 = (refTimingWide - a2->skews.refSkews.banks[5].refs[0].refTimingWide);
      *(this + 19) = (refTimingWide - a2->skews.refSkews.banks[4].refs[0].refTimingWide);
      *(this + 20) = v20;
      v21 = (refTimingWide - a2->skews.refSkews.banks[7].refs[0].refTimingWide);
      *(this + 21) = (refTimingWide - a2->skews.refSkews.banks[6].refs[0].refTimingWide);
      *(this + 22) = v21;
    }
  }

  else
  {
    *(this + 31) = 0;
    *this = 0uLL;
    *(this + 1) = 0uLL;
    *(this + 2) = 0uLL;
    *(this + 3) = 0uLL;
    *(this + 4) = 0uLL;
    *(this + 76) = 0uLL;
  }

  *(this + 185) = *(this + 180);
  *(this + 186) = *(this + 182);
  result = *(this + 184);
  *(this + 187) = result;
  *(this + 188) = *(this + 181);
  *(this + 189) = *(this + 183);
  *(this + 190) = result;
  *(this + 96) = a3;
  return result;
}

float32x2_t peridot::PeridotT0::calcP2P(void *a1, uint64_t a2, char a3, double a4, float a5)
{
  v5 = a2;
  v7 = a1[96];
  v8 = a1 + 18;
  if (a3)
  {
    LODWORD(a4) = 2.0;
    v9 = peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(v7 + 3521), 0, &a1[7 * a1[80] + 18], a4, a5);
    LODWORD(v9) = 3.0;
    peridot::PeridotT0::calcP2PPerChannel(a1, v5, *(a1[96] + 3522), 0, &v8[7 * a1[81]], v9, v10);
    v11 = &v8[7 * a1[80]];
    v12 = &v8[7 * a1[81]];
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = vmulq_f32(vaddq_f32(v12[1], v11[1]), v13);
    *v11 = vmulq_f32(vaddq_f32(*v12, *v11), v13);
    v11[1] = v14;
    v11[2] = vmulq_f32(vaddq_f32(v12[2], v11[2]), v13);
    result = vmul_f32(vadd_f32(*v12[3].f32, *v11[3].f32), 0x3F0000003F000000);
    *v11[3].f32 = result;
  }

  else
  {
    LODWORD(a4) = 1.0;
    v16 = peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(v7 + 3520), *(v7 + 3521), &a1[7 * a1[67] + 18], a4, a5);
    LODWORD(v16) = 3.0;
    v18 = peridot::PeridotT0::calcP2PPerChannel(a1, v5, *(a1[96] + 3522), 0, &v8[7 * a1[68]], v16, v17);
    LODWORD(v18) = 2.0;
    peridot::PeridotT0::calcP2PPerChannel(a1, v5, *(a1[96] + 3521), 0, &v8[7 * a1[69]], v18, v19);
    v20 = &v8[7 * a1[68]];
    v21 = &v8[7 * a1[78]];
    v22 = *(v20 + 1);
    *v21 = *v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = *(v20 + 2);
    result = v20[6];
    v21[6] = result;
  }

  return result;
}

double peridot::PeridotT0::calcP2PPerChannel(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double result, float a7)
{
  if (a4 + a3 == 1)
  {
    v7 = 0;
    v8 = *(a1 + 768);
    v9 = v8 + 504 * a2;
    v10 = v8 + 126 * a2 + 40484;
    while (1)
    {
      LOBYTE(a7) = *(v10 + v7 - 4);
      v11 = LODWORD(a7);
      if (v11 == *&result)
      {
        v12 = 0;
      }

      else
      {
        LOBYTE(v11) = *(v10 + v7 - 3);
        v13 = LODWORD(v11);
        if (v13 == *&result)
        {
          v12 = 1;
        }

        else
        {
          LOBYTE(v13) = *(v10 + v7 - 2);
          v14 = LODWORD(v13);
          if (v14 != *&result)
          {
            goto LABEL_10;
          }

          v12 = 2;
        }
      }

      v14 = *(v9 + 4 * v12 + 4 * v7 + 1840);
      *a5 = v14;
LABEL_10:
      LOBYTE(v14) = *(v10 + v7 - 1);
      v15 = LODWORD(v14);
      if (v15 == *&result)
      {
        v16 = 0;
      }

      else
      {
        LOBYTE(v15) = *(v10 + v7);
        v17 = LODWORD(v15);
        if (v17 == *&result)
        {
          v16 = 1;
        }

        else
        {
          LOBYTE(v17) = *(v10 + v7 + 1);
          v18 = LODWORD(v17);
          if (v18 != *&result)
          {
            goto LABEL_17;
          }

          v16 = 2;
        }
      }

      v18 = *(v9 + 4 * v16 + 4 * v7 + 1852);
      *a5 = v18;
LABEL_17:
      LOBYTE(v18) = *(v10 + v7 + 2);
      v19 = LODWORD(v18);
      if (v19 == *&result)
      {
        v20 = 0;
LABEL_23:
        a7 = *(v9 + 4 * v20 + 4 * v7 + 1864);
        *a5 = a7;
        goto LABEL_24;
      }

      LOBYTE(v19) = *(v10 + v7 + 3);
      v21 = LODWORD(v19);
      if (v21 == *&result)
      {
        v20 = 1;
        goto LABEL_23;
      }

      LOBYTE(v21) = *(v10 + v7 + 4);
      a7 = LODWORD(v21);
      if (a7 == *&result)
      {
        v20 = 2;
        goto LABEL_23;
      }

LABEL_24:
      v7 += 9;
      a5 += 4;
      if (v7 == 126)
      {
        return result;
      }
    }
  }

  *(a5 + 48) = 0;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  return result;
}

__n128 peridot::PeridotT0::getAbsSkew(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *this;
  *(a2 + 6) = *(this + 12);
  *a2 = result;
  return result;
}

__n128 peridot::PeridotT0::getAbsSkewM1(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *(this + 28);
  *(a2 + 6) = *(this + 40);
  *a2 = result;
  return result;
}

__n128 peridot::PeridotT0::setAbsSkew(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *a2;
  *(this + 12) = *(a2 + 6);
  *this = result;
  return result;
}

__n128 peridot::PeridotT0::setAbsSkewM1(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *a2;
  *(this + 40) = *(a2 + 6);
  *(this + 28) = result;
  return result;
}

__n128 peridot::PeridotT0::getRsps_p2p_b2b(peridot::PeridotT0 *this, float *a2)
{
  result = *(this + 60);
  v3 = *(this + 76);
  *a2 = result;
  *(a2 + 1) = v3;
  return result;
}

__n128 peridot::PeridotT0::setRsps_p2p_b2b(peridot::PeridotT0 *this, float *a2)
{
  result = *a2;
  *(this + 76) = *(a2 + 1);
  *(this + 60) = result;
  return result;
}

float32x2_t peridot::PeridotT0::configure(peridot::PeridotT0 *this, const PeridotSuperFrame *a2, uint64_t a3, BOOL *a4, float32x2_t result, double a6, float a7)
{
  v7 = *(a2 + *(a2 + a3 + 494) + 227);
  result.i16[0] = *(v7 + 4);
  LOBYTE(a7) = *(a2 + 3616);
  *&v8 = 0.000000020833 / (result.u32[0] + (((*(v7 + 6) << 8) + LODWORD(a7)) * 0.000015259));
  *(this + 164) = *&v8;
  LOWORD(v8) = *(v7 + 16);
  v9 = v8;
  *(this + 165) = v9;
  LOWORD(v9) = *(v7 + 22);
  result.f32[0] = LODWORD(v9);
  *(this + 166) = result.i32[0];
  if (*a4)
  {
    v10 = this + 144;
    result.i32[0] = 1.0;
    v12 = peridot::PeridotT0::calcP2PPerChannel(this, 0, *(*(this + 96) + 3520), *(*(this + 96) + 3521), this + 56 * *(this + 67) + 144, *&result, 0.000000020833);
    LODWORD(v12) = 3.0;
    v14 = peridot::PeridotT0::calcP2PPerChannel(this, 0, *(*(this + 96) + 3522), 0, &v10[56 * *(this + 68)], v12, v13);
    LODWORD(v14) = 2.0;
    peridot::PeridotT0::calcP2PPerChannel(this, 0, *(*(this + 96) + 3521), 0, &v10[56 * *(this + 69)], v14, v15);
    v16 = &v10[56 * *(this + 68)];
    v17 = &v10[56 * *(this + 78)];
    v18 = *(v16 + 1);
    *v17 = *v16;
    *(v17 + 1) = v18;
    *(v17 + 2) = *(v16 + 2);
    v19 = *(v16 + 6);
    *(v17 + 6) = v19;
    LODWORD(v19) = 2.0;
    v20 = peridot::PeridotT0::calcP2PPerChannel(this, 1u, *(*(this + 96) + 3521), 0, &v10[56 * *(this + 80)], v19, *&v18);
    LODWORD(v20) = 3.0;
    peridot::PeridotT0::calcP2PPerChannel(this, 1u, *(*(this + 96) + 3522), 0, &v10[56 * *(this + 81)], v20, v21);
    v22 = &v10[56 * *(this + 80)];
    v23 = &v10[56 * *(this + 81)];
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(*(v23 + 1), *(v22 + 1)), v24);
    *v22 = vmulq_f32(vaddq_f32(*v23, *v22), v24);
    *(v22 + 1) = v25;
    *(v22 + 2) = vmulq_f32(vaddq_f32(*(v23 + 2), *(v22 + 2)), v24);
    result = vmul_f32(vadd_f32(*(v23 + 48), *(v22 + 48)), 0x3F0000003F000000);
    *(v22 + 6) = result;
  }

  return result;
}

uint64_t peridot::PeridotT0::getAbsDepth(uint64_t this, peridot::PeridotDepth *a2, const peridot::PeridotSpotRefDepth *a3, const peridot::PeridotSpotRefDepth *a4, double a5, double a6, double a7, double a8)
{
  v8 = 0;
  v9 = 112 * *(this + 672);
  v10 = *(a3 + v9);
  v11 = *(a4 + v9);
  do
  {
    LOWORD(a8) = *(this + 2 * v8);
    a8 = vmovl_s16(*&a8).i32[0] * 1.0e-12;
    *&a8 = a8;
    v12 = (a2 + 192 * v8);
    v13 = *v12;
    v14 = v12[1] - *v12;
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14 >> 4;
    v16 = 0xCCCCCCCCCCCCCCCDLL * v15;
    v17 = (*(this + 660) - *(this + 664)) * *(this + 656);
    v18 = *&a8 - v10;
    v19 = 0xCCCCCCCCCCCCCCCDLL * v15 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v15 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * v15;
    }

    if (!v19)
    {
      v21 = 0;
LABEL_12:
      v25 = v20 - v21;
      v26 = (v13 + 80 * v21 + 16);
      do
      {
        *v26 = (v18 + *(v26 - 4)) + v17;
        v26 += 20;
        --v25;
      }

      while (v25);
      goto LABEL_14;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    v22 = (v13 + 96);
    v23 = v20 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v24 = (v18 + *(v22 - 4)) + v17;
      *(v22 - 20) = (v18 + *(v22 - 24)) + v17;
      *v22 = v24;
      v22 += 40;
      v23 -= 2;
    }

    while (v23);
    if (v16 != v21)
    {
      goto LABEL_12;
    }

LABEL_14:
    v27 = v12[8];
    v28 = v12[9] - v27;
    if (!v28)
    {
      goto LABEL_25;
    }

    v29 = v28 >> 4;
    v30 = 0xCCCCCCCCCCCCCCCDLL * v29;
    v31 = (*(this + 660) - *(this + 664)) * *(this + 656);
    v32 = *&a8 - v10;
    v33 = 0xCCCCCCCCCCCCCCCDLL * v29 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v29 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0xCCCCCCCCCCCCCCCDLL * v29;
    }

    if (!v33)
    {
      v35 = 0;
LABEL_23:
      v39 = v34 - v35;
      v40 = (v27 + 80 * v35 + 16);
      do
      {
        *v40 = (v32 + *(v40 - 4)) + v31;
        v40 += 20;
        --v39;
      }

      while (v39);
      goto LABEL_25;
    }

    v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v36 = (v27 + 96);
    v37 = v34 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v38 = (v32 + *(v36 - 4)) + v31;
      *(v36 - 20) = (v32 + *(v36 - 24)) + v31;
      *v36 = v38;
      v36 += 40;
      v37 -= 2;
    }

    while (v37);
    if (v30 != v35)
    {
      goto LABEL_23;
    }

LABEL_25:
    v41 = v12[12];
    v42 = v12[13] - v41;
    if (!v42)
    {
      goto LABEL_36;
    }

    v43 = v42 >> 4;
    v44 = 0xCCCCCCCCCCCCCCCDLL * v43;
    v45 = (*(this + 660) - *(this + 664)) * *(this + 656);
    *&a8 = *&a8 - v10;
    v46 = 0xCCCCCCCCCCCCCCCDLL * v43 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v43 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = 0xCCCCCCCCCCCCCCCDLL * v43;
    }

    if (!v46)
    {
      v48 = 0;
LABEL_34:
      v52 = v47 - v48;
      v53 = (v41 + 80 * v48 + 16);
      do
      {
        *v53 = (*&a8 + *(v53 - 4)) + v45;
        v53 += 20;
        --v52;
      }

      while (v52);
      goto LABEL_36;
    }

    v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
    v49 = (v41 + 96);
    v50 = v47 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v51 = (*&a8 + *(v49 - 4)) + v45;
      *(v49 - 20) = (*&a8 + *(v49 - 24)) + v45;
      *v49 = v51;
      v49 += 40;
      v50 -= 2;
    }

    while (v50);
    if (v44 != v48)
    {
      goto LABEL_34;
    }

LABEL_36:
    v55 = v12 + 16;
    v54 = v12[16];
    v56 = v55[1] - v54;
    if (!v56)
    {
      goto LABEL_2;
    }

    v57 = 0xCCCCCCCCCCCCCCCDLL * (v56 >> 4);
    LOWORD(a8) = *(this + 28 + 2 * v8);
    a8 = vmovl_s16(*&a8).i32[0] * 1.0e-12;
    *&a8 = a8;
    v58 = (*(this + 660) - *(this + 664)) * *(this + 656);
    if (v57 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = v57;
    }

    if (v57 <= 1)
    {
      v60 = 0;
LABEL_45:
      v64 = v59 - v60;
      v65 = (v54 + 80 * v60 + 16);
      do
      {
        *v65 = ((*(v65 - 4) - v11) + *&a8) + v58;
        v65 += 20;
        --v64;
      }

      while (v64);
      goto LABEL_2;
    }

    v60 = v59 & 0xFFFFFFFFFFFFFFFELL;
    v61 = (v54 + 96);
    v62 = v59 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v63 = ((*(v61 - 4) - v11) + *&a8) + v58;
      *(v61 - 20) = ((*(v61 - 24) - v11) + *&a8) + v58;
      *v61 = v63;
      v61 += 40;
      v62 -= 2;
    }

    while (v62);
    if (v57 != v60)
    {
      goto LABEL_45;
    }

LABEL_2:
    ++v8;
  }

  while (v8 != 14);
  return this;
}

float *peridot::PeridotT0::getAbsDepthWithT0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 688;
  v5 = a3 + 856;
  v6 = a3 + 1024;
  v7 = (a3 + 576);
  v8 = a3 + 632;
  v9 = a3 + 520;
  do
  {
    v10 = (a2 + 192 * v3);
    v11 = v10[1] - *v10;
    if (v11)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 4);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = v4 + 4 * v3;
      v14 = (v13 + 56);
      v15 = (v13 + 112);
      v16 = (*v10 + 72);
      do
      {
        v17 = *(v16 - 18);
        *(v16 - 14) = v17;
        if (v17 != 0.0)
        {
          *(v16 - 14) = v17 - (((*(v4 + 4 * v3) * *(v16 - 2)) + (*v14 * *(v16 - 1))) + (*v15 * *v16));
        }

        v16 += 20;
        --v12;
      }

      while (v12);
    }

    v18 = v10[4];
    v19 = v10[5] - v18;
    if (v19)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v19 >> 4);
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = v5 + 4 * v3;
      v22 = (v21 + 56);
      v23 = (v21 + 112);
      v24 = (v18 + 72);
      do
      {
        v25 = *(v24 - 18);
        *(v24 - 14) = v25;
        if (v25 != 0.0)
        {
          *(v24 - 14) = v25 - (((*(v5 + 4 * v3) * *(v24 - 2)) + (*v22 * *(v24 - 1))) + (*v23 * *v24));
        }

        v24 += 20;
        --v20;
      }

      while (v20);
    }

    v26 = v10[8];
    v27 = v10[9] - v26;
    if (v27)
    {
      v28 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 4);
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v29 = v6 + 4 * v3;
      v30 = (v29 + 56);
      v31 = (v29 + 112);
      v32 = (v26 + 72);
      do
      {
        v33 = *(v32 - 18);
        *(v32 - 14) = v33;
        if (v33 != 0.0)
        {
          *(v32 - 14) = v33 - (((*(v6 + 4 * v3) * *(v32 - 2)) + (*v30 * *(v32 - 1))) + (*v31 * *v32));
        }

        v32 += 20;
        --v28;
      }

      while (v28);
    }

    v34 = v10[12];
    v35 = v10[13] - v34;
    if (v35)
    {
      v36 = 0xCCCCCCCCCCCCCCCDLL * (v35 >> 4);
      if (v36 <= 1)
      {
        v36 = 1;
      }

      v37 = (v34 + 16);
      v38 = v7;
      do
      {
        v39 = *(v37 - 4);
        *v37 = v39;
        if (v39 != 0.0)
        {
          *v37 = v39 - *v38;
        }

        v38 += 14;
        v37 += 20;
        --v36;
      }

      while (v36);
    }

    v40 = v10[16];
    v41 = v10[17] - v40;
    if (v41)
    {
      v42 = 0xCCCCCCCCCCCCCCCDLL * (v41 >> 4);
      if (v42 <= 1)
      {
        v42 = 1;
      }

      v43 = (v40 + 16);
      do
      {
        v44 = *(v43 - 4);
        *v43 = v44;
        if (v44 != 0.0)
        {
          *v43 = v44 - *(v8 + 4 * v3);
        }

        v43 += 20;
        --v42;
      }

      while (v42);
    }

    result = v10[20];
    v46 = v10[21];
    if (v46 != result)
    {
      v47 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - result) >> 4);
      if (v47 <= 1)
      {
        v47 = 1;
      }

      result += 4;
      do
      {
        v48 = *(result - 4);
        *result = v48;
        if (v48 != 0.0)
        {
          *result = v48 - *(v9 + 4 * v3);
        }

        result += 20;
        --v47;
      }

      while (v47);
    }

    ++v3;
    ++v7;
  }

  while (v3 != 14);
  return result;
}

float peridot::PeridotT0::getBaseOffset(peridot::PeridotT0 *this, int a2, float *a3, double a4, double a5, double a6, int16x4_t a7, int16x4_t a8, int16x4_t a9, int16x4_t a10, int16x4_t a11)
{
  LODWORD(a5) = *(this + 166);
  v19 = 24;
  v20 = 22;
  v21 = 20;
  v22 = 18;
  v23 = 16;
  v24 = 14;
  v25 = 12;
  v26 = 10;
  v27 = 8;
  v28 = 6;
  v29 = 4;
  v30 = 2;
  v31 = (this + 28);
  if (a2)
  {
    v30 = 30;
  }

  else
  {
    v31 = this;
  }

  if (a2)
  {
    v29 = 32;
    v28 = 34;
    v27 = 36;
    v26 = 38;
    v25 = 40;
    v24 = 42;
    v23 = 44;
    v22 = 46;
    v21 = 48;
    v20 = 50;
    v19 = 52;
  }

  v32 = 26;
  if (a2)
  {
    v32 = 54;
  }

  v33 = ((*(this + 165) - *&a5) * *(this + 164));
  LOWORD(a5) = *v31;
  a7.i16[0] = *(this + v30);
  a8.i16[0] = *(this + v29);
  a9.i16[0] = *(this + v28);
  a10.i16[0] = *(this + v27);
  a11.i16[0] = *(this + v26);
  v11.i16[0] = *(this + v25);
  v12.i16[0] = *(this + v24);
  v13.i16[0] = *(this + v23);
  v14.i16[0] = *(this + v22);
  v15.i16[0] = *(this + v21);
  v16.i16[0] = *(this + v20);
  v17.i16[0] = *(this + v19);
  v18.i16[0] = *(this + v32);
  v34 = v33 + vmovl_s16(*&a5).i32[0] * 1.0e-12;
  v35 = v33 + vmovl_s16(a7).i32[0] * 1.0e-12;
  *a3 = v34;
  a3[1] = v35;
  v36 = v33 + vmovl_s16(a8).i32[0] * 1.0e-12;
  v37 = v33 + vmovl_s16(a9).i32[0] * 1.0e-12;
  a3[2] = v36;
  a3[3] = v37;
  v38 = v33 + vmovl_s16(a10).i32[0] * 1.0e-12;
  v39 = v33 + vmovl_s16(a11).i32[0] * 1.0e-12;
  a3[4] = v38;
  a3[5] = v39;
  v40 = v33 + vmovl_s16(v11).i32[0] * 1.0e-12;
  v41 = v33 + vmovl_s16(v12).i32[0] * 1.0e-12;
  a3[6] = v40;
  a3[7] = v41;
  v42 = v33 + vmovl_s16(v13).i32[0] * 1.0e-12;
  v43 = v33 + vmovl_s16(v14).i32[0] * 1.0e-12;
  a3[8] = v42;
  a3[9] = v43;
  v44 = v33 + vmovl_s16(v15).i32[0] * 1.0e-12;
  v45 = v33 + vmovl_s16(v16).i32[0] * 1.0e-12;
  a3[10] = v44;
  a3[11] = v45;
  v46 = v33 + vmovl_s16(v17).i32[0] * 1.0e-12;
  result = v33 + vmovl_s16(v18).i32[0] * 1.0e-12;
  a3[12] = v46;
  a3[13] = result;
  return result;
}

uint64_t peridot::PeridotT0::calcT0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8)
{
  v8 = 0;
  v220 = *MEMORY[0x277D85DE8];
  *(a8 + 1224) = 0;
  *(a8 + 1192) = 0u;
  *(a8 + 1208) = 0u;
  v9 = *(a1 + 680);
  v10.i32[0] = *(a2 + 4);
  v11 = *(a2 + 16);
  *v12.f32 = *v11;
  v10.i32[1] = *(a2 + 116);
  v13 = vcvtq_f64_f32(v10);
  v14 = vdupq_n_s64(0x3FB999999999999AuLL);
  v15 = vdupq_lane_s64(COERCE__INT64(*(a1 + 692)), 0);
  v16 = vdupq_lane_s64(COERCE__INT64(*(a1 + 696)), 0);
  v17 = vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(v13, v14), v9)), v16);
  v18 = *(a2 + 128);
  v12.i32[2] = v11[1].i32[0];
  v12.i32[3] = *v18;
  v22 = vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(vcvt_hight_f64_f32(v12), v14), v9)), v16);
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(vcvtq_f64_f32(*v11), v14), v9)), v16)), v22);
  v22.f64[0] = *(a1 + 740);
  v20 = vzip1q_s32(v22, v22);
  v20.i32[2] = LODWORD(v22.f64[0]);
  v21 = vmlaq_f32(v20, v19, v19);
  *&v15.f64[0] = vcvt_f32_f64(vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(vcvtq_f64_f32(*(v18 + 4)), v14), v9)), v16));
  *&v22.f64[0] = vmla_f32(vdup_lane_s32(*&v22.f64[0], 1), *&v15.f64[0], *&v15.f64[0]);
  v23 = vdupq_laneq_s32(v21, 3);
  __asm { FMOV            V6.4S, #1.0 }

  v29 = vdivq_f32(_Q6, vextq_s8(vextq_s8(v23, v23, 4uLL), v22, 0xCuLL));
  *v19.i64 = ((*(a1 + 660) - *(a1 + 664)) * *(a1 + 656));
  v30 = vmovl_s16(*a1);
  v31.i64[0] = v30.i32[0];
  v31.i64[1] = v30.i32[1];
  v32 = vcvtq_f64_s64(v31);
  v31.i64[0] = v30.i32[2];
  v31.i64[1] = v30.i32[3];
  v33 = vdupq_n_s64(0x3D719799812DEA11uLL);
  v34 = vdupq_lane_s64(v19.i64[0], 0);
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v34, v33, v32)), vmlaq_f64(v34, v33, vcvtq_f64_s64(v31)));
  v36 = vmovl_s16(*(a1 + 8));
  v31.i64[0] = v36.i32[0];
  v31.i64[1] = v36.i32[1];
  v37 = vcvtq_f64_s64(v31);
  v31.i64[0] = v36.i32[2];
  v31.i64[1] = v36.i32[3];
  v38 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v34, v33, v37)), vmlaq_f64(v34, v33, vcvtq_f64_s64(v31)));
  v216 = v35;
  v217 = v38;
  v39 = vmovl_s16(*(a1 + 16));
  v31.i64[0] = v39.i32[0];
  v31.i64[1] = v39.i32[1];
  v40 = vcvtq_f64_s64(v31);
  v31.i64[0] = v39.i32[2];
  v31.i64[1] = v39.i32[3];
  v41 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v42 = vmlaq_f64(v34, v33, v40);
  v43 = vcvt_hight_f32_f64(vcvt_f32_f64(v42), v41);
  v218 = v43;
  LOWORD(v42.f64[0]) = *(a1 + 24);
  *v40.f64 = *v19.i64 + vmovl_s16(*&v42.f64[0]).i32[0] * 1.0e-12;
  LOWORD(v41.f64[0]) = *(a1 + 26);
  *v41.f64 = *v19.i64 + vmovl_s16(*&v41.f64[0]).i32[0] * 1.0e-12;
  v219 = __PAIR64__(LODWORD(v41.f64[0]), LODWORD(v40.f64[0]));
  v44 = vmovl_s16(*(a1 + 28));
  v31.i64[0] = v44.i32[0];
  v31.i64[1] = v44.i32[1];
  v45 = vcvtq_f64_s64(v31);
  v31.i64[0] = v44.i32[2];
  v31.i64[1] = v44.i32[3];
  v46 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v47 = vmlaq_f64(v34, v33, v45);
  v48 = vmovl_s16(*(a1 + 36));
  v31.i64[0] = v48.i32[0];
  v31.i64[1] = v48.i32[1];
  v49 = vcvtq_f64_s64(v31);
  v31.i64[0] = v48.i32[2];
  v31.i64[1] = v48.i32[3];
  v50 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v51 = vmlaq_f64(v34, v33, v49);
  v52 = vmovl_s16(*(a1 + 44));
  v31.i64[0] = v52.i32[0];
  v31.i64[1] = v52.i32[1];
  v53 = vcvtq_f64_s64(v31);
  v31.i64[0] = v52.i32[2];
  v31.i64[1] = v52.i32[3];
  v54 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v55 = vmlaq_f64(v34, v33, v53);
  LOWORD(v33.f64[0]) = *(a1 + 52);
  v33.f64[0] = vmovl_s16(*&v33.f64[0]).i32[0];
  v56 = *v19.i64 + v33.f64[0] * 1.0e-12;
  LOWORD(v33.f64[0]) = *(a1 + 54);
  v57 = *v19.i64 + vmovl_s16(*&v33.f64[0]).i32[0] * 1.0e-12;
  v58 = *a2;
  v59 = *(a2 + 112);
  v60 = *(a1 + 56) * 1.0e-12;
  v61 = *(a2 + 40);
  v62 = *(a2 + 152);
  v63 = *v61;
  v64 = v61[1];
  v65 = *v62;
  v66 = v62[1];
  v67 = v61[2];
  v68 = v62[2];
  do
  {
    v69 = v216.f32[v8];
    v215[v8] = v58 - v69;
    v70 = v60 + (v59 - v69);
    v214[v8] = v70;
    v71 = &v204[0].f32[v8];
    *v71 = v63 - v69;
    v72 = v60 + (v65 - v69);
    v73 = &v194[0].f32[v8];
    *v73 = v72;
    v71[14] = v64 - v69;
    v74 = v60 + (v66 - v69);
    v73[14] = v74;
    v71[28] = v67 - v69;
    v75 = v60 + (v68 - v69);
    v73[28] = v75;
    ++v8;
  }

  while (v8 != 14);
  v76 = vcvt_f32_f64(v17);
  v77 = vcvt_f32_f64(v47);
  v78 = vcvt_f32_f64(v51);
  v79 = vcvt_f32_f64(v55);
  v80 = v214[0];
  v81 = v215[0];
  v82 = vabds_f32(v194[0].f32[0], v204[0].f32[0]);
  v83 = vabds_f32(v196.f32[0], v206.f32[0]);
  v84 = vabds_f32(v200.f32[0], v210.f32[0]);
  v85 = vabds_f32(v214[0], v215[0]);
  *(a8 + 1192) = v85 > 5.0e-12;
  *(a8 + 1196) = v85 > 1.0e-11;
  *(a8 + 1200) = v85 > 2.0e-11;
  v86 = v82;
  *(a8 + 1193) = v86 > 5.0e-12;
  *(a8 + 1197) = v86 > 1.0e-11;
  *(a8 + 1201) = v86 > 2.0e-11;
  v87 = v83;
  *(a8 + 1205) = v87 > 5.0e-12;
  *(a8 + 1209) = v87 > 1.0e-11;
  *(a8 + 1213) = v87 > 2.0e-11;
  *(a8 + 1217) = v84 > 5.0e-12;
  *(a8 + 1221) = v84 > 1.0e-11;
  *(a8 + 1225) = v84 > 2.0e-11;
  if (a4)
  {
    v88 = *(a1 + 692) / (fmax(*(a4 + 4), 0.1) * *(a1 + 680)) + *(a1 + 696);
  }

  else
  {
    v88 = 0.0;
  }

  v89 = vdivq_f32(_Q6, v21);
  v90 = vmla_f32(*(a1 + 740), v76, v76);
  v91 = (1.0 / v90.f32[1]) + (1.0 / v90.f32[0]);
  v92 = a1 + 4 * a6;
  if (a4)
  {
    v93 = *(a1 + 748) + (v88 * v88);
    v91 = (1.0 / v93) + v91;
    v94 = vld1q_dup_f32(a4);
    v95 = vsubq_f32(v94, v35);
    v96 = vdupq_lane_s64(COERCE__INT64(*(v92 + 60) * 1.0e-12), 0);
    v97 = vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(*v95.f32)));
    v98 = vsubq_f32(v94, v38);
    v190 = vcvt_hight_f32_f64(v97, vaddq_f64(v96, vcvt_hight_f64_f32(v95)));
    v191 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(*v98.f32))), vaddq_f64(v96, vcvt_hight_f64_f32(v98)));
    v99 = vsubq_f32(v94, v43);
    v192 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(*v99.f32))), vaddq_f64(v96, vcvt_hight_f64_f32(v99)));
    v193 = vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(vsub_f32(*v94.f32, v219))));
    *v99.i64 = vabds_f32(*v97.i32, v81);
    *(a8 + 1204) = *v99.i64 > 1.0e-11;
    v43.i32[1] = 1034976799;
    *(a8 + 1208) = *v99.i64 > 1.5e-11;
    *(a8 + 1212) = *v99.i64 > 2.0e-11;
    *v99.i64 = vabds_f32(*v97.i32, v80);
    *(a8 + 1216) = *v99.i64 > 1.0e-11;
    *(a8 + 1220) = *v99.i64 > 1.5e-11;
    *(a8 + 1224) = *v99.i64 > 2.0e-11;
  }

  else
  {
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v93 = 0.0;
  }

  v100 = 0;
  v101 = vaddq_f32(v29, v89);
  v102 = vcvt_hight_f32_f64(v77, v46);
  v103 = vcvt_hight_f32_f64(v78, v50);
  v104 = vcvt_hight_f32_f64(v79, v54);
  v105 = v56;
  v106 = v57;
  __asm { FMOV            V22.2S, #1.0 }

  v108 = vdiv_f32(_D22, v90);
  do
  {
    v109.f32[0] = v215[v100];
    v109.f32[1] = v214[v100];
    v110 = vaddv_f32(vmul_f32(v109, v108));
    if (a4)
    {
      v110 = v110 + (v190.f32[v100] * (1.0 / v93));
    }

    *(a8 + 16 + v100 * 4) = v110 * (1.0 / v91);
    ++v100;
  }

  while (v100 != 14);
  v43.f32[0] = 1.0 / v101.f32[0];
  v111 = v204[1];
  v112 = vdupq_lane_s32(*v21.f32, 0);
  v113 = vdivq_f32(_Q6, v112);
  v114 = v194[1];
  v115 = vdivq_f32(_Q6, v23);
  v116 = vdupq_lane_s32(*v43.f32, 0).u64[0];
  *(a8 + 72) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v204[0], 1.0 / v101.f32[0]), v113), v115, vmulq_n_f32(v194[0], 1.0 / v101.f32[0]));
  *(a8 + 88) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v111, 1.0 / v101.f32[0]), v113), v115, vmulq_n_f32(v114, 1.0 / v101.f32[0]));
  *(a8 + 104) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v204[2], 1.0 / v101.f32[0]), v113), v115, vmulq_n_f32(v194[2], 1.0 / v101.f32[0]));
  v117 = vdiv_f32(vmul_f32(v116, v205), *v112.f32);
  v112.i64[0] = v199;
  v118 = vmul_f32(v116, v195);
  *(a8 + 120) = vadd_f32(vdiv_f32(v118, *v23.f32), v117);
  v118.f32[0] = 1.0 / v101.f32[1];
  v119 = vdupq_lane_s32(*v21.f32, 1);
  v120 = vdivq_f32(_Q6, v119);
  v121 = vdupq_lane_s32(*&v22.f64[0], 0);
  v122 = vdivq_f32(_Q6, v121);
  v123 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v206, 1.0 / v101.f32[1]), v120), v122, vmulq_n_f32(v196, 1.0 / v101.f32[1]));
  v124 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v207, 1.0 / v101.f32[1]), v120), v122, vmulq_n_f32(v197, 1.0 / v101.f32[1]));
  v115.i64[0] = vdupq_lane_s32(v118, 0).u64[0];
  *(a8 + 128) = v123;
  *(a8 + 144) = v124;
  *(a8 + 160) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v208, 1.0 / v101.f32[1]), v120), v122, vmulq_n_f32(v198, 1.0 / v101.f32[1]));
  *(a8 + 176) = vadd_f32(vdiv_f32(vmul_f32(*v115.f32, *v112.f32), *v121.f32), vdiv_f32(vmul_f32(*v115.f32, v209), *v119.f32));
  v108.f32[0] = 1.0 / v101.f32[2];
  v101.i64[0] = vdupq_lane_s32(v108, 0).u64[0];
  v125 = v211;
  v126 = vdupq_laneq_s32(v21, 2);
  v127 = vdivq_f32(_Q6, v126);
  v128 = v201;
  v129 = vdupq_lane_s32(*&v22.f64[0], 1);
  v130 = vdivq_f32(_Q6, v129);
  v131 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v210, v108.f32[0]), v127), v130, vmulq_n_f32(v200, v108.f32[0]));
  *(a8 + 184) = v131;
  *(a8 + 200) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v125, 1.0 / v101.f32[2]), v127), v130, vmulq_n_f32(v128, 1.0 / v101.f32[2]));
  *(a8 + 216) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v212, 1.0 / v101.f32[2]), v127), v130, vmulq_n_f32(v202, 1.0 / v101.f32[2]));
  *(a8 + 232) = vadd_f32(vdiv_f32(vmul_f32(*v101.f32, v203), *v129.f32), vdiv_f32(vmul_f32(*v101.f32, v213), *v126.f32));
  v126.i32[0] = *(a8 + 72);
  *v129.i64 = vabds_f32(v123.f32[0], v126.f32[0]);
  *(a8 + 1194) = *v129.i64 > 2.0e-11;
  *(a8 + 1198) = *v129.i64 > 3.5e-11;
  *(a8 + 1202) = *v129.i64 > 5.0e-11;
  *v129.i64 = fabsf(vsubq_f32(v131, v123).f32[0]);
  *(a8 + 1206) = *v129.i64 > 2.0e-11;
  *(a8 + 1210) = *v129.i64 > 3.5e-11;
  *(a8 + 1214) = *v129.i64 > 5.0e-11;
  *v126.i64 = vabds_f32(v126.f32[0], v131.f32[0]);
  *(a8 + 1218) = *v126.i64 > 2.0e-11;
  *(a8 + 1222) = *v126.i64 > 3.5e-11;
  *(a8 + 1226) = *v126.i64 > 5.0e-11;
  v126.i32[0] = *(a3 + 4);
  v126.i32[1] = *(a3 + 116);
  v133 = *(a1 + 128);
  v132 = *(a1 + 136);
  v129.i32[0] = *(a3 + 112 * v133);
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  v134 = vdupq_lane_s64(COERCE__INT64(*(a1 + 696)), 0);
  v135 = vcvt_f32_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(*(a1 + 692)), 0), vmulq_n_f64(vmaxnmq_f64(vcvtq_f64_f32(*v126.f32), v14), *(a1 + 684))), v134));
  LODWORD(v134.f64[0]) = *(a3 + 112 * v132);
  v189 = v135;
  *v123.i64 = *(a1 + 124) * 1.0e-12;
  v136 = vdupq_lane_s32(*v129.f32, 0);
  v137 = vsubq_f32(v136, v102);
  v138 = vdupq_lane_s32(*&v134.f64[0], 0);
  v139 = vsubq_f32(v138, v102);
  v140 = vdupq_lane_s64(v123.i64[0], 0);
  v141 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v140, vcvtq_f64_f32(*v139.f32))), vaddq_f64(v140, vcvt_hight_f64_f32(v139)));
  v182[0] = v137;
  v182[1] = vsubq_f32(v136, v103);
  v142 = vsubq_f32(v138, v103);
  v179[0] = v141;
  v179[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v140, vcvtq_f64_f32(*v142.f32))), vaddq_f64(v140, vcvt_hight_f64_f32(v142)));
  v182[2] = vsubq_f32(v136, v104);
  v143 = vsubq_f32(v138, v104);
  v179[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v140, vcvtq_f64_f32(*v143.f32))), vaddq_f64(v140, vcvt_hight_f64_f32(v143)));
  v142.f32[0] = *v123.i64 + (*v134.f64 - v105);
  v183 = v129.f32[0] - v105;
  v184 = v129.f32[0] - v106;
  v129.f32[0] = *v123.i64 + (*v134.f64 - v106);
  v180 = v142.i32[0];
  v181 = v129.i32[0];
  *v129.i64 = fabsf(vsubq_f32(v141, v137).f32[0]);
  *(a8 + 1195) = *v129.i64 > 5.0e-12;
  *(a8 + 1199) = *v129.i64 > 1.0e-11;
  *(a8 + 1203) = *v129.i64 > 2.0e-11;
  if (a4 && (*(a1 + 764) & 1) != 0)
  {
    v144 = (*(a1 + 692) / (fmaxf(*(a5 + 116), 1.0) * *(a1 + 684))) + *(a1 + 696);
    v145 = &v189;
    v146 = *(a1 + 752) + (v145[v133] * v145[v133]);
    v147 = *(a1 + 756) + (v145[v132] * v145[v132]);
    v148 = *(a1 + 760) + (v144 * v144);
    v149 = (a5 + 112);
    v150 = vld1q_dup_f32(v149);
    v151 = vsubq_f32(v150, v216);
    v152 = vdupq_lane_s64(COERCE__INT64(*(v92 + 92) * 1.0e-12), 0);
    v153 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(*v151.f32))), vaddq_f64(v152, vcvt_hight_f64_f32(v151)));
    v154 = vsubq_f32(v150, v217);
    v185 = v153;
    v186 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(*v154.f32))), vaddq_f64(v152, vcvt_hight_f64_f32(v154)));
    v155 = vsubq_f32(v150, v218);
    v187 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(*v155.f32))), vaddq_f64(v152, vcvt_hight_f64_f32(v155)));
    v188 = vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(vsub_f32(*v150.f32, v219))));
    v156 = fabsf(vsubq_f32(v153, v137).f32[0]);
    *(a8 + 1207) = v156 > 1.0e-11;
    *(a8 + 1211) = v156 > 1.5e-11;
    *(a8 + 1215) = v156 > 2.0e-11;
    v157 = fabsf(vsubq_f32(v153, v141).f32[0]);
    *(a8 + 1219) = v157 > 1.0e-11;
    *(a8 + 1223) = v157 > 1.5e-11;
    *(a8 + 1227) = v157 > 2.0e-11;
  }

  else
  {
    v146 = *(a1 + 752) + (v189.f32[v133] * v189.f32[v133]);
    v147 = *(a1 + 756) + (v189.f32[v132] * v189.f32[v132]);
    v148 = 0.0;
  }

  v158 = 0;
  if (v146 <= 0.0)
  {
    v159 = 0.0;
  }

  else
  {
    v159 = 1.0 / v146;
  }

  if (v147 > 0.0)
  {
    v159 = (1.0 / v147) + v159;
  }

  if (v148 > 0.0)
  {
    v159 = (1.0 / v148) + v159;
  }

  v160 = 1.0 / v159;
  v161 = a8 + 240;
  v162 = (1.0 / v159) * (1.0 / v146);
  v163 = (1.0 / v159) * (1.0 / v148);
  do
  {
    v164 = (v162 * *(v182 + v158)) + ((v160 * *(v179 + v158)) * (1.0 / v147));
    *(v161 + v158) = v164;
    if (v148 > 0.0)
    {
      *(v161 + v158) = v164 + (v163 * v185.f32[v158 / 4]);
    }

    v158 += 4;
  }

  while (v158 != 56);
  v165 = 0;
  v166 = 1.0e-12;
  if (a7)
  {
    v166 = 0.0;
  }

  v167 = a1 + 56 * *(a1 + 536) + 144;
  v168 = a1 + 56 * *(a1 + 552) + 144;
  v169 = a1 + 56 * *(a1 + 544) + 144;
  v170 = a1 + 56 * *(a1 + 640) + 144;
  do
  {
    v171 = a8 + v165;
    v172 = *(a8 + v165 + 16);
    *(v171 + 296) = v172 - (*(v167 + v165) * v166);
    *(v171 + 352) = v172 - (*(v168 + v165) * v166);
    v173 = v172 - (*(v169 + v165) * v166);
    *(v171 + 408) = v173;
    v174 = v172 - (*(v170 + v165) * v166);
    *(v171 + 464) = v174;
    *(v171 + 520) = 0;
    *(v171 + 576) = v173;
    *(v171 + 632) = v174;
    v175 = *(a8 + v165 + 72);
    *(v171 + 688) = v175 - (*(v167 + v165) * v166);
    *(v171 + 856) = v175 - (*(v168 + v165) * v166);
    *(v171 + 1024) = v175 - (*(v169 + v165) * v166);
    v176 = *(a8 + v165 + 128);
    *(v171 + 744) = v176 - (*(v167 + v165) * v166);
    *(v171 + 912) = v176 - (*(v168 + v165) * v166);
    *(v171 + 1080) = v176 - (*(v169 + v165) * v166);
    v177 = *(a8 + v165 + 184);
    *(v171 + 800) = v177 - (*(v167 + v165) * v166);
    *(v171 + 968) = v177 - (*(v168 + v165) * v166);
    *(v171 + 1136) = v177 - (*(v169 + v165) * v166);
    v165 += 4;
  }

  while (v165 != 56);
  return 0;
}

uint64_t peridot::AggressorsClassifier::AggressorsClassifier(uint64_t this, float a2)
{
  *(this + 152) = xmmword_2247A4920;
  *(this + 168) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 16) = 0xBF8000003F4CCCCDLL;
  *(this + 24) = (1.0 / a2) * 3.0;
  *(this + 36) = 1061997773;
  *(this + 28) = 0x3D4CCCCD3F800000;
  v2 = vmul_n_f32(0x3F19999A40800000, a2);
  *(this + 40) = v2;
  v3 = a2 * 1.2;
  *(this + 68) = a2 * 3.0;
  *(this + 72) = v3;
  v4 = 1.0 / a2;
  v5 = v4 * 5.0e-10;
  *(this + 52) = a2;
  *(this + 56) = v5;
  v6 = v4 * 0.03;
  *(this + 60) = (1.0 / a2) * 0.005;
  *(this + 64) = v6;
  *(this + 76) = 1061997773;
  *(this + 80) = a2 * 1.7;
  v7 = vcvt_f32_f64(vmulq_n_f64(xmmword_2247A5100, a2));
  *(this + 48) = v7.i32[1];
  *(this + 84) = v7;
  *(this + 92) = a2 + a2;
  *(this + 96) = v5;
  v8 = v4 * 0.02;
  *(this + 100) = (1.0 / a2) * 0.0066667;
  *(this + 104) = v8;
  *(this + 108) = 1061997773;
  v9 = v4 * 7.5e-10;
  *(this + 112) = v9;
  *(this + 116) = v9;
  *(this + 120) = fminf(v2.f32[0], a2 * 1.7);
  *(this + 124) = a2 * 1.5;
  *(this + 128) = v7.i32[1];
  v2.f32[0] = v4 * 1.2;
  *(this + 132) = v2.i32[0];
  *(this + 136) = (1.0 / a2) * 0.00625;
  *(this + 140) = a2 + a2;
  *(this + 144) = a2;
  return this;
}

{
  *(this + 152) = xmmword_2247A4920;
  *(this + 168) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 16) = 0xBF8000003F4CCCCDLL;
  *(this + 24) = (1.0 / a2) * 3.0;
  *(this + 36) = 1061997773;
  *(this + 28) = 0x3D4CCCCD3F800000;
  v2 = vmul_n_f32(0x3F19999A40800000, a2);
  *(this + 40) = v2;
  v3 = a2 * 1.2;
  *(this + 68) = a2 * 3.0;
  *(this + 72) = v3;
  v4 = 1.0 / a2;
  v5 = v4 * 5.0e-10;
  *(this + 52) = a2;
  *(this + 56) = v5;
  v6 = v4 * 0.03;
  *(this + 60) = (1.0 / a2) * 0.005;
  *(this + 64) = v6;
  *(this + 76) = 1061997773;
  *(this + 80) = a2 * 1.7;
  v7 = vcvt_f32_f64(vmulq_n_f64(xmmword_2247A5100, a2));
  *(this + 48) = v7.i32[1];
  *(this + 84) = v7;
  *(this + 92) = a2 + a2;
  *(this + 96) = v5;
  v8 = v4 * 0.02;
  *(this + 100) = (1.0 / a2) * 0.0066667;
  *(this + 104) = v8;
  *(this + 108) = 1061997773;
  v9 = v4 * 7.5e-10;
  *(this + 112) = v9;
  *(this + 116) = v9;
  *(this + 120) = fminf(v2.f32[0], a2 * 1.7);
  *(this + 124) = a2 * 1.5;
  *(this + 128) = v7.i32[1];
  v2.f32[0] = v4 * 1.2;
  *(this + 132) = v2.i32[0];
  *(this + 136) = (1.0 / a2) * 0.00625;
  *(this + 140) = a2 + a2;
  *(this + 144) = a2;
  return this;
}

double peridot::AggressorsClassifier::AggressorsClassifier(peridot::AggressorsClassifier *this)
{
  *(this + 152) = xmmword_2247A4920;
  *(this + 21) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 1) = xmmword_2247A5110;
  *(this + 2) = xmmword_2247A5120;
  *(this + 3) = xmmword_2247A4950;
  *(this + 4) = xmmword_2247A4940;
  *(this + 5) = xmmword_2247A5130;
  *(this + 6) = xmmword_2247A5140;
  result = 5.20906654e-76;
  *(this + 7) = xmmword_2247A5150;
  *(this + 8) = xmmword_2247A5160;
  *(this + 36) = 1065353216;
  return result;
}

{
  *(this + 152) = xmmword_2247A4920;
  *(this + 21) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 1) = xmmword_2247A5110;
  *(this + 2) = xmmword_2247A5120;
  *(this + 3) = xmmword_2247A4950;
  *(this + 4) = xmmword_2247A4940;
  *(this + 5) = xmmword_2247A5130;
  *(this + 6) = xmmword_2247A5140;
  result = 5.20906654e-76;
  *(this + 7) = xmmword_2247A5150;
  *(this + 8) = xmmword_2247A5160;
  *(this + 36) = 1065353216;
  return result;
}

void peridot::AggressorsClassifier::classifyBankAggressors(uint64_t a1, peridot::PeridotUserOutput *a2, uint64_t a3, _DWORD *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  memset(v47, 0, sizeof(v47));
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, 42);
  peridot::AggressorsClassifier::findGlareSpots(a1, a2, 0, v47, v46);
  for (i = 0; i != 14; ++i)
  {
    v12 = &v45[i * 3];
    *v12 = v46[i][0] || v47[i][0];
    v12[1] = v46[i][1] || v47[i][1];
    v12[2] = v46[i][2] || v47[i][2];
  }

  if (v45[0])
  {
    *a4 = 6;
  }

  if (v45[1])
  {
    a4[1] = 6;
  }

  if (v45[2])
  {
    a4[2] = 6;
  }

  if (v45[3])
  {
    a4[3] = 6;
  }

  if (v45[4])
  {
    a4[4] = 6;
  }

  if (v45[5])
  {
    a4[5] = 6;
  }

  if (v45[6])
  {
    a4[6] = 6;
  }

  if (v45[7])
  {
    a4[7] = 6;
  }

  if (v45[8])
  {
    a4[8] = 6;
  }

  if (v45[9])
  {
    a4[9] = 6;
  }

  if (v45[10])
  {
    a4[10] = 6;
  }

  if (v45[11])
  {
    a4[11] = 6;
  }

  if (v45[12])
  {
    a4[12] = 6;
  }

  if (v45[13])
  {
    a4[13] = 6;
  }

  if (v45[14])
  {
    a4[14] = 6;
  }

  if (v45[15])
  {
    a4[15] = 6;
  }

  if (v45[16])
  {
    a4[16] = 6;
  }

  if (v45[17])
  {
    a4[17] = 6;
  }

  if (v45[18])
  {
    a4[18] = 6;
  }

  if (v45[19])
  {
    a4[19] = 6;
  }

  if (v45[20])
  {
    a4[20] = 6;
  }

  if (v45[21])
  {
    a4[21] = 6;
  }

  if (v45[22])
  {
    a4[22] = 6;
  }

  if (v45[23])
  {
    a4[23] = 6;
  }

  if (v45[24])
  {
    a4[24] = 6;
  }

  if (v45[25])
  {
    a4[25] = 6;
  }

  if (v45[26])
  {
    a4[26] = 6;
  }

  if (v45[27])
  {
    a4[27] = 6;
  }

  if (v45[28])
  {
    a4[28] = 6;
  }

  if (v45[29])
  {
    a4[29] = 6;
  }

  if (v45[30])
  {
    a4[30] = 6;
  }

  if (v45[31])
  {
    a4[31] = 6;
  }

  if (v45[32])
  {
    a4[32] = 6;
  }

  if (v45[33])
  {
    a4[33] = 6;
  }

  if (v45[34])
  {
    a4[34] = 6;
  }

  if (v45[35])
  {
    a4[35] = 6;
  }

  if (v45[36])
  {
    a4[36] = 6;
  }

  if (v45[37])
  {
    a4[37] = 6;
  }

  if (v45[38])
  {
    a4[38] = 6;
  }

  if (v45[39])
  {
    a4[39] = 6;
  }

  if (v45[40])
  {
    a4[40] = 6;
  }

  if (v45[41])
  {
    a4[41] = 6;
  }

  memset(v44, 0, 42);
  peridot::AggressorsClassifier::findGlareFa(a1, a2, v44, 0.0, v7, v8, v9, v10, 0, v47, 0);
  peridot::AggressorsClassifier::findGlareFa(a1, a2, v44, v13, v14, v15, v16, v17, 0, v46, 1);
  memset(v43, 0, sizeof(v43));
  v38 = 0.0;
  peridot::AggressorsClassifier::findGroupGlareFa(a1, a2, 0, v45, v43, &v38);
  v18 = 0;
  v19 = a4 + 2;
  do
  {
    if (v43[v18 / 3][0])
    {
      if (v44[v18])
      {
        *(v19 - 2) = 5;
      }

      else
      {
        *(v19 - 2) = 4;
      }
    }

    else if (v44[v18])
    {
      *(v19 - 2) = 1;
    }

    if (v43[v18 / 3][1])
    {
      if (v44[v18 + 1])
      {
        *(v19 - 1) = 5;
      }

      else
      {
        *(v19 - 1) = 4;
      }
    }

    else if (v44[v18 + 1])
    {
      *(v19 - 1) = 1;
    }

    if (v43[v18 / 3][2])
    {
      if (v44[v18 + 2])
      {
        *v19 = 5;
      }

      else
      {
        *v19 = 4;
      }
    }

    else if (v44[v18 + 2])
    {
      *v19 = 1;
    }

    v18 += 3;
    v19 += 3;
  }

  while (v18 != 42);
  v20 = 0;
  v21 = *(a1 + 16);
  do
  {
    memset(v39, 0, 24);
    v25 = (a2 + 308 * v20);
    if (v21 <= v25[1])
    {
      v26 = a4[3 * v20] != 0;
      v27 = v39 + 1;
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v27 = v39;
    }

    if (v21 <= v25[23])
    {
      ++v24;
      *v27 = 1;
      v26 |= a4[3 * v20 + 1] != 0;
    }

    if (v21 <= v25[45])
    {
      *(v39 + v24++) = 2;
      v26 |= a4[3 * v20 + 2] != 0;
    }

    if (v24 && (v26 & 1) == 0)
    {
      if (v24 == 2)
      {
        v28 = *&v39[0];
        if (v25[22 * *&v39[0]] > v25[22 * *(&v39[0] + 1)])
        {
          *&v39[0] = *(&v39[0] + 1);
          *(&v39[0] + 1) = v28;
        }
      }

      for (j = 0; j != v24; ++j)
      {
        v30 = &v25[22 * *(v39 + j)];
        v42[j] = v30[5];
        *(&v40 + j) = v30[3];
      }

      v31 = *(a1 + 20);
      if (v24 != 1)
      {
        if (v41 == 0.0 || v41 >= v31)
        {
          if (*(a1 + 28) >= (v42[1] / v42[0]))
          {
            v23 = *(&v39[0] + 1);
            v34 = *&v39[0];
          }

          else
          {
            v23 = *(&v39[0] + 1);
            v34 = *&v39[0];
            if (v40 != 0.0 && v40 < *(a1 + 32))
            {
              a4[3 * v20 + *&v39[0]] = 12;
              v22 = 13;
              goto LABEL_109;
            }
          }

          v22 = 10;
          a4[3 * v20 + v34] = 10;
          goto LABEL_109;
        }

        v22 = 8;
        v23 = *(&v39[0] + 1);
LABEL_109:
        v24 = &a4[3 * v20];
        *(v24 + 4 * v23) = v22;
        goto LABEL_110;
      }

      v32 = v40 != 0.0 && v40 < v31;
      if (v32 && *(a1 + 148) == 1)
      {
        v22 = 8;
        v23 = *&v39[0];
        goto LABEL_109;
      }
    }

LABEL_110:
    ++v20;
  }

  while (v20 != 14);
  v35 = 0;
  v36 = 0;
  memset(v39, 0, 42);
  v37 = a4 + 1;
  do
  {
    if (*(v37 - 1) == 8)
    {
      *(v39 + v35) = 1;
      ++v36;
    }

    if (*v37 == 8)
    {
      *(v39 + v35 + 1) = 1;
      ++v36;
    }

    if (v37[1] == 8)
    {
      *(v39 + v35 + 2) = 1;
      ++v36;
    }

    v35 += 3;
    v37 += 3;
  }

  while (v35 != 42);
  if (*(a1 + 24) < v36)
  {
    if (v39[0])
    {
      *a4 = 0;
    }

    if (BYTE1(v39[0]) == 1)
    {
      a4[1] = 0;
    }

    if (BYTE2(v39[0]) == 1)
    {
      a4[2] = 0;
    }

    if (BYTE3(v39[0]) == 1)
    {
      a4[3] = 0;
    }

    if (BYTE4(v39[0]) == 1)
    {
      a4[4] = 0;
    }

    if (BYTE5(v39[0]) == 1)
    {
      a4[5] = 0;
    }

    if (BYTE6(v39[0]) == 1)
    {
      a4[6] = 0;
    }

    if (BYTE7(v39[0]) == 1)
    {
      a4[7] = 0;
    }

    if (BYTE8(v39[0]) == 1)
    {
      a4[8] = 0;
    }

    if (BYTE9(v39[0]) == 1)
    {
      a4[9] = 0;
    }

    if (BYTE10(v39[0]) == 1)
    {
      a4[10] = 0;
    }

    if (BYTE11(v39[0]) == 1)
    {
      a4[11] = 0;
    }

    if (BYTE12(v39[0]) == 1)
    {
      a4[12] = 0;
    }

    if (BYTE13(v39[0]) == 1)
    {
      a4[13] = 0;
    }

    if (BYTE14(v39[0]) == 1)
    {
      a4[14] = 0;
    }

    if (HIBYTE(v39[0]) == 1)
    {
      a4[15] = 0;
    }

    if (LOBYTE(v39[1]) == 1)
    {
      a4[16] = 0;
    }

    if (BYTE1(v39[1]) == 1)
    {
      a4[17] = 0;
    }

    if (BYTE2(v39[1]) == 1)
    {
      a4[18] = 0;
    }

    if (BYTE3(v39[1]) == 1)
    {
      a4[19] = 0;
    }

    if (BYTE4(v39[1]) == 1)
    {
      a4[20] = 0;
    }

    if (BYTE5(v39[1]) == 1)
    {
      a4[21] = 0;
    }

    if (BYTE6(v39[1]) == 1)
    {
      a4[22] = 0;
    }

    if (BYTE7(v39[1]) == 1)
    {
      a4[23] = 0;
    }

    if (BYTE8(v39[1]) == 1)
    {
      a4[24] = 0;
    }

    if (BYTE9(v39[1]) == 1)
    {
      a4[25] = 0;
    }

    if (BYTE10(v39[1]) == 1)
    {
      a4[26] = 0;
    }

    if (BYTE11(v39[1]) == 1)
    {
      a4[27] = 0;
    }

    if (BYTE12(v39[1]) == 1)
    {
      a4[28] = 0;
    }

    if (BYTE13(v39[1]) == 1)
    {
      a4[29] = 0;
    }

    if (BYTE14(v39[1]) == 1)
    {
      a4[30] = 0;
    }

    if (HIBYTE(v39[1]) == 1)
    {
      a4[31] = 0;
    }

    if (LOBYTE(v39[2]) == 1)
    {
      a4[32] = 0;
    }

    if (BYTE1(v39[2]) == 1)
    {
      a4[33] = 0;
    }

    if (BYTE2(v39[2]) == 1)
    {
      a4[34] = 0;
    }

    if (BYTE3(v39[2]) == 1)
    {
      a4[35] = 0;
    }

    if (BYTE4(v39[2]) == 1)
    {
      a4[36] = 0;
    }

    if (BYTE5(v39[2]) == 1)
    {
      a4[37] = 0;
    }

    if (BYTE6(v39[2]) == 1)
    {
      a4[38] = 0;
    }

    if (BYTE7(v39[2]) == 1)
    {
      a4[39] = 0;
    }

    if (BYTE8(v39[2]) == 1)
    {
      a4[40] = 0;
    }

    if (BYTE9(v39[2]) == 1)
    {
      a4[41] = 0;
    }
  }

  peridot::AggressorsClassifier::setAggressorsFlags(v24, a2, a4);
}

double peridot::AggressorsClassifier::findGlareSpots(peridot::AggressorsClassifier *this, peridot::PeridotUserOutput *a2, unsigned __int8 a3, BOOL (*a4)[14][3], BOOL (*a5)[14][3])
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  LODWORD(result) = *(this + 9);
  v9 = *(this + 19);
  v10 = (a2 + 100);
  do
  {
    v11 = *(v10 - 24);
    if (*&result <= v11)
    {
      if ((v12 = *(v10 - 20), *(this + 10) <= v12) && ((v13 = *(v10 - 22), *(this + 11) <= v13) || v13 == 0.0) || *(this + 17) <= v12 && ((v14 = *(v10 - 22), *(this + 18) <= v14) || v14 == 0.0))
      {
        ++v7;
        (*a4)[v5][0] = 1;
      }
    }

    if (v9 <= v11 && *(this + 20) <= *(v10 - 20))
    {
      v15 = *(v10 - 22);
      if (*(this + 21) <= v15 || v15 == 0.0)
      {
        ++v6;
        (*a5)[v5][0] = 1;
      }
    }

    v16 = *(v10 - 2);
    if (*&result <= v16)
    {
      if ((v17 = v10[2], *(this + 10) <= v17) && (*(this + 11) <= *v10 || *v10 == 0.0) || *(this + 17) <= v17 && (*(this + 18) <= *v10 || *v10 == 0.0))
      {
        ++v7;
        (*a4)[v5][1] = 1;
      }
    }

    if (v9 <= v16 && *(this + 20) <= v10[2] && (*(this + 21) <= *v10 || *v10 == 0.0))
    {
      ++v6;
      (*a5)[v5][1] = 1;
    }

    v18 = v10[20];
    if (*&result <= v18)
    {
      if ((v19 = v10[24], *(this + 10) <= v19) && ((v20 = v10[22], *(this + 11) <= v20) || v20 == 0.0) || *(this + 17) <= v19 && ((v21 = v10[22], *(this + 18) <= v21) || v21 == 0.0))
      {
        ++v7;
        (*a4)[v5][2] = 1;
      }
    }

    if (v9 <= v18 && *(this + 20) <= v10[24])
    {
      v22 = v10[22];
      if (*(this + 21) <= v22 || v22 == 0.0)
      {
        ++v6;
        (*a5)[v5][2] = 1;
      }
    }

    ++v5;
    v10 += 77;
  }

  while (v5 != 14);
  if (v7)
  {
    *&result = v7;
    if (*(this + 13) > v7)
    {
      result = 0.0;
      *&(*a4)[8][2] = 0u;
      *a4 = 0u;
      *&(*a4)[5][1] = 0u;
    }
  }

  if (v6)
  {
    *&result = v6;
    if (*(this + 23) > v6)
    {
      result = 0.0;
      *&(*a5)[8][2] = 0u;
      *a5 = 0u;
      *&(*a5)[5][1] = 0u;
    }
  }

  return result;
}

char *peridot::AggressorsClassifier::findGlareFa(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, int a11)
{
  v66[84] = *MEMORY[0x277D85DE8];
  if (a11 == 1)
  {
    v15 = 88;
    v16 = 104;
    v17 = 100;
    v18 = 96;
    v19 = 76;
    goto LABEL_5;
  }

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  a8 = 0.0;
  if (!a11)
  {
    v15 = 48;
    v16 = 64;
    v17 = 60;
    v18 = 56;
    v19 = 36;
LABEL_5:
    LODWORD(a8) = *(a1 + v19);
    v14 = *(a1 + v18);
    v13 = *(a1 + v17);
    v12 = *(a1 + v16);
    v11 = *(a1 + v15);
  }

  v20 = 0;
  v21 = 0;
  v22 = (a10 + 2);
  do
  {
    if (*(v22 - 2))
    {
      v66[v21 + 42] = v20;
      v66[v21++] = 0;
    }

    if (*(v22 - 1) == 1)
    {
      v66[v21 + 42] = v20;
      v66[v21++] = 1;
    }

    if (*v22 == 1)
    {
      v66[v21 + 42] = v20;
      v66[v21++] = 2;
    }

    ++v20;
    v22 += 3;
  }

  while (v20 != 14);
  v23.i64[0] = *(a2 + 4);
  v24.i32[0] = *(a2 + 400);
  v25.i32[0] = *(a2 + 796);
  v26.i32[0] = *(a2 + 1236);
  v23.i32[1] = *(a2 + 92);
  v23.i32[2] = *(a2 + 180);
  v23.i32[3] = *(a2 + 312);
  v24.i32[1] = *(a2 + 488);
  v24.i32[2] = *(a2 + 620);
  v24.i32[3] = *(a2 + 708);
  v25.i32[1] = *(a2 + 928);
  v25.i32[2] = *(a2 + 1016);
  v25.i32[3] = *(a2 + 1104);
  v26.i32[1] = *(a2 + 1324);
  v26.i32[2] = *(a2 + 1412);
  v26.i32[3] = *(a2 + 1544);
  v27 = vdupq_lane_s32(*&a8, 0);
  v28 = vuzp1q_s8(vuzp1q_s16(vcgeq_f32(v23, v27), vcgeq_f32(v24, v27)), vuzp1q_s16(vcgeq_f32(v25, v27), vcgeq_f32(v26, v27)));
  v24.i64[0] = 0x101010101010101;
  v24.i64[1] = 0x101010101010101;
  v25.i64[0] = *(a2 + 1632);
  v26.i32[0] = *(a2 + 2468);
  v29.i32[0] = *(a2 + 2864);
  result = (a2 + 3172);
  v26.i32[1] = *(a2 + 2556);
  v26.i32[2] = *(a2 + 2644);
  v26.i32[3] = *(a2 + 2776);
  v29.i32[1] = *(a2 + 2952);
  v29.i32[2] = *(a2 + 3084);
  v29.i32[3] = *(a2 + 3172);
  v31 = vuzp1q_s16(vcgeq_f32(v26, v27), vcgeq_f32(v29, v27));
  v29.i32[0] = *(a2 + 2028);
  v25.i32[1] = *(a2 + 1720);
  v25.i32[2] = *(a2 + 1852);
  v25.i32[3] = *(a2 + 1940);
  v29.i32[1] = *(a2 + 2160);
  v29.i32[2] = *(a2 + 2248);
  v29.i32[3] = *(a2 + 2336);
  v62[0] = vandq_s8(v28, v24);
  v62[1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(v25, v27), vcgeq_f32(v29, v27)), v31), v24);
  v28.i64[0] = *(a2 + 3260);
  v24.i32[0] = *(a2 + 3700);
  v28.i32[1] = *(a2 + 3392);
  v28.i32[2] = *(a2 + 3480);
  v28.i32[3] = *(a2 + 3568);
  v24.i32[1] = *(a2 + 3788);
  v24.i32[2] = *(a2 + 3876);
  v24.i32[3] = *(a2 + 4008);
  v63 = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v28, v27), vcgeq_f32(v24, v27))), 0x101010101010101);
  v64 = *&a8 <= *(a2 + 4096);
  v65 = *&a8 <= *(a2 + 4184);
  if (v21)
  {
    v32 = 0;
    v33 = v14 * -0.5;
    result = v62 + 2;
    v34 = a3 + 1;
    do
    {
      v35 = 0;
      v36 = (a2 + 308 * v66[v32 + 42] + 88 * v66[v32]);
      memset(v61, 0, 42);
      memset(v60, 0, 42);
      v37 = *v36;
      v38 = 1.0 / v36[5];
      v39 = (a2 + 108);
      do
      {
        v40 = *(v39 - 27) - v37;
        if (v33 <= v40 && v40 <= v14)
        {
          *(v61 + v35) = 1;
        }

        if ((*(v39 - 22) * v38) < v13)
        {
          *(v60 + v35) = 1;
        }

        v42 = *(v39 - 5) - v37;
        if (v33 <= v42 && v42 <= v14)
        {
          *(v61 + v35 + 1) = 1;
        }

        if ((*v39 * v38) < v13)
        {
          *(v60 + v35 + 1) = 1;
        }

        v44 = v39[17] - v37;
        if (v33 <= v44 && v44 <= v14)
        {
          *(v61 + v35 + 2) = 1;
        }

        if ((v39[22] * v38) < v13)
        {
          *(v60 + v35 + 2) = 1;
        }

        v35 += 3;
        v39 += 77;
      }

      while (v35 != 42);
      memset(v59, 0, sizeof(v59));
      v58 = 1;
      v46 = &v59[1];
      v47 = (a2 + 100);
      v48 = 14;
      do
      {
        v50 = *(v47 - 22);
        v51 = v50 < v12 && (v50 != 0.0 || *(v47 - 20) < v11);
        *(v46 - 2) = v51;
        v52 = *v47 < v12 && (*v47 != 0.0 || v47[2] < v11);
        *(v46 - 1) = v52;
        v53 = v47[22];
        v49 = v53 < v12 && (v53 != 0.0 || v47[24] < v11);
        *v46 = v49;
        v46 += 3;
        v47 += 77;
        --v48;
      }

      while (v48);
      for (i = 0; i != 42; i += 3)
      {
        if ((*(v62 + i) & 1) != 0 && *(v61 + i) == 1 && *(v60 + i) == 1)
        {
          v56 = v59[i - 1];
        }

        else
        {
          v56 = 0;
        }

        *(v34 + i - 1) |= v56;
        if (*(v62 + i + 1) == 1 && *(v61 + i + 1) == 1 && *(v60 + i + 1) == 1)
        {
          v57 = v59[i];
        }

        else
        {
          v57 = 0;
        }

        *(v34 + i) |= v57;
        if (*(v62 + i + 2) == 1 && *(v61 + i + 2) == 1 && *(v60 + i + 2) == 1)
        {
          v55 = v59[i + 1];
        }

        else
        {
          v55 = 0;
        }

        *(v34 + i + 1) |= v55;
      }

      ++v32;
    }

    while (v32 != v21);
  }

  return result;
}

uint64_t peridot::AggressorsClassifier::findGroupGlareFa(peridot::AggressorsClassifier *this, peridot::PeridotUserOutput *a2, unsigned __int8 a3, BOOL (*a4)[3], BOOL (*a5)[14][3], float *a6)
{
  v10 = 0;
  v11 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v12 = &(*a4)[2];
  memset(v136, 0, 42);
  do
  {
    if (*(v12 - 2))
    {
      *&v135[2 * v10 + 126] = v11;
      *&v135[2 * v10++ + 42] = 0;
    }

    if (*(v12 - 1))
    {
      *&v135[2 * v10 + 126] = v11;
      *&v135[2 * v10++ + 42] = 1;
    }

    if (*v12)
    {
      *&v135[2 * v10 + 126] = v11;
      *&v135[2 * v10++ + 42] = 2;
    }

    ++v11;
    v12 += 3;
  }

  while (v11 != 14);
  if (v10)
  {
    v13 = 0;
    v14 = *(this + 29);
    do
    {
      v15 = *(a2 + 77 * *&v135[2 * v13 + 126] + 22 * *&v135[2 * v13 + 42]);
      v16 = &v136[0].i8[2];
      v17 = (a2 + 88);
      v18 = 14;
      do
      {
        *(v16 - 2) |= vabds_f32(*(v17 - 22), v15) < v14;
        *(v16 - 1) |= vabds_f32(*v17, v15) < v14;
        *v16 |= vabds_f32(v17[22], v15) < v14;
        v16 += 3;
        v17 += 77;
        --v18;
      }

      while (v18);
      ++v13;
    }

    while (v13 != v10);
  }

  v19 = 0;
  v20 = *(this + 27);
  v21 = (a2 + 92);
  do
  {
    v22 = &v136[0].i8[v19];
    if (v136[0].i8[v19])
    {
      v23 = v20 > *(v21 - 22);
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    *v22 = v24;
    if (v22[1])
    {
      v25 = v20 > *v21;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    v22[1] = v26;
    if (v22[2])
    {
      v27 = v20 > v21[22];
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    v22[2] = v28;
    v19 += 3;
    v21 += 77;
  }

  while (v19 != 42);
  v29 = 0;
  v30 = 0;
  v31 = (a2 + 88);
  do
  {
    if (v136[0].i8[v29])
    {
      v135[v30++] = *(v31 - 22);
    }

    if (v136[0].i8[v29 + 1] == 1)
    {
      v135[v30++] = *v31;
    }

    if (v136[0].i8[v29 + 2] == 1)
    {
      v135[v30++] = v31[22];
    }

    v29 += 3;
    v31 += 77;
  }

  while (v29 != 42);
  result = std::__sort<std::__less<float,float> &,float *>();
  v133[0] = 0;
  if (v30 >= 2)
  {
    v33 = 0;
    v34 = 0;
    v35 = *(this + 28);
    v36 = *v135;
    v37 = 1;
    do
    {
      v38 = v36;
      v36 = *&v135[v33 + 1];
      if (v35 <= (v36 - v38))
      {
        ++v34;
        v133[v37++] = v33;
      }

      ++v33;
    }

    while (v30 - 1 != v33);
    v133[v37] = v30;
    if (v34)
    {
      if (!v37)
      {
        v41 = 0;
        v42 = 0;
LABEL_62:
        v56 = v133[v42];
        v57 = *&v135[v56];
        v58 = *&v135[v56 + v41];
        v59 = (a2 + 88);
        v60 = &v136[0].i8[2];
        v61 = 14;
        do
        {
          v62 = *(v59 - 22);
          v63 = v58 < v62 || v57 > v62;
          v64 = *(v60 - 2);
          if (v63)
          {
            v64 = 0;
          }

          *(v60 - 2) = v64;
          v65 = v58 < *v59 || v57 > *v59;
          v66 = *(v60 - 1);
          if (v65)
          {
            v66 = 0;
          }

          *(v60 - 1) = v66;
          v67 = v59[22];
          v68 = v58 < v67 || v57 > v67;
          v69 = *v60;
          if (v68)
          {
            v69 = 0;
          }

          *v60 = v69;
          v60 += 3;
          v59 += 77;
          --v61;
        }

        while (v61);
        goto LABEL_82;
      }

      v39 = v133[0];
      if (v37 > 3)
      {
        v43 = vdupq_n_s64(v133[0]);
        v40 = v37 & 0xFFFFFFFFFFFFFFFCLL;
        v44 = &v132;
        v45 = &v134;
        v46 = v37 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v47 = v45[-1];
          v48 = vextq_s8(v43, v47, 8uLL);
          v49 = *v45;
          v45 += 2;
          v43 = v49;
          v44[-1] = vsubq_s64(v47, v48);
          *v44 = vsubq_s64(v49, vextq_s8(v47, v49, 8uLL));
          v44 += 2;
          v46 -= 4;
        }

        while (v46);
        if (v37 == v40)
        {
LABEL_58:
          v55 = 0;
          v42 = 0;
          v41 = 0;
          do
          {
            if (*&v131[8 * v55 + 148] > v41)
            {
              v41 = *&v131[8 * v55 + 148];
              v42 = v55;
            }

            ++v55;
          }

          while (v37 != v55);
          goto LABEL_62;
        }

        v39 = v43.u64[1];
      }

      else
      {
        v40 = 0;
      }

      v50 = v40;
      v51 = &v131[8 * v40 + 148];
      v52 = v37 - v40;
      v53 = &v133[v50 + 1];
      do
      {
        v54 = *v53++;
        *v51++ = v54 - v39;
        v39 = v54;
        --v52;
      }

      while (v52);
      goto LABEL_58;
    }
  }

LABEL_82:
  v70 = vandq_s8(vcltzq_s8(vshlq_n_s8(*(&v136[1] + 10), 7uLL)), xmmword_2247A4660);
  v71 = vaddvq_s16(vzip1q_s8(v70, vextq_s8(v70, v70, 8uLL)));
  v72 = vandq_s8(vcltzq_s8(vshlq_n_s8(*(v136 + 10), 7uLL)), xmmword_2247A4660);
  v73 = vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(*&v136[0].i16[1], 7uLL)), 0x8040201008040201));
  if (vaddvq_s16(vzip1q_s8(v72, vextq_s8(v72, v72, 8uLL))) | v71)
  {
    v74 = 0;
  }

  else
  {
    v74 = v73 == 0;
  }

  if (v74 && (v136[0].i8[1] & 1) == 0 && (v136[0].i8[0] & 1) == 0)
  {
    return result;
  }

  v75 = 0;
  v76 = (a2 + 108);
  v77 = &v136[0].i8[2];
  v78 = 14;
  do
  {
    if (*(v77 - 2))
    {
      v130[v75++] = *(v76 - 22);
    }

    if (*(v77 - 1) == 1)
    {
      v130[v75++] = *v76;
    }

    if (*v77 == 1)
    {
      v130[v75++] = v76[22];
    }

    v77 += 3;
    v76 += 77;
    --v78;
  }

  while (v78);
  result = std::__sort<std::__less<float,float> &,float *>();
  if (v75)
  {
    v80 = 4 * v75;
    v81 = v130;
    v82 = 4 * v75;
    while (*(this + 30) > *v81)
    {
      v81 += 4;
      v82 -= 4;
      if (!v82)
      {
        v83 = v75;
        goto LABEL_104;
      }
    }
  }

  else
  {
    v81 = v130;
  }

  v80 = v81 - v130;
  v83 = (v81 - v130) >> 2;
  if (v81 == &v130[v75])
  {
LABEL_104:
    v81 = &v130[v75];
    if (*v81 != 1.0)
    {
      return result;
    }
  }

  if (v81 != v130)
  {
    v79.i32[0] = v130[0];
    if (v83 >= 8)
    {
      v79 = vdupq_lane_s32(*v79.i8, 0);
      v84 = v83 & 0xFFFFFFFFFFFFFFF8;
      v86 = &v129;
      v87 = v131;
      v88 = v83 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v89 = v87[-1];
        v90 = vextq_s8(v79, v89, 0xCuLL);
        v91 = *v87;
        v87 += 2;
        v79 = v91;
        v86[-1] = vsubq_f32(v89, v90);
        *v86 = vsubq_f32(v91, vextq_s8(v89, v91, 0xCuLL));
        v86 += 2;
        v88 -= 8;
      }

      while (v88);
      if (v83 == v84)
      {
LABEL_115:
        v85 = &v127;
        v96 = v80 - 4;
        if (v96)
        {
          v97 = v128;
          v98 = v127;
          v99 = v128;
          do
          {
            v100 = *v99++;
            v101 = v100;
            if (v98 < v100)
            {
              v98 = v101;
              v85 = v97;
            }

            v97 = v99;
            v96 -= 4;
          }

          while (v96);
        }

        goto LABEL_120;
      }

      v79.i32[0] = v79.i32[3];
    }

    else
    {
      v84 = 0;
    }

    v92 = &v128[4 * v84 - 4];
    v93 = v83 - v84;
    v94 = &v130[v84 + 1];
    do
    {
      v95 = *v94++;
      *v92++ = v95 - *v79.i32;
      *v79.i32 = v95;
      --v93;
    }

    while (v93);
    goto LABEL_115;
  }

  v85 = &v127;
LABEL_120:
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = *(v130 + v85 - &v127);
  v106 = fminf(v105, *(this + 33));
  memset(v126, 0, 42);
  v107 = (a2 + 100);
  memset(v125, 0, 42);
  do
  {
    if (v136[0].i8[v102])
    {
      v108 = *(v107 - 20);
      if (v108 <= v106)
      {
        v109 = *(v107 - 22) != 0.0 || v108 < *(this + 32);
      }

      else
      {
        v109 = 0;
      }

      *(v126 + v102) = v109;
      if (v108 <= v105)
      {
        result = 0;
      }

      else
      {
        v110 = *(v107 - 22);
        result = v110 > *(this + 31) || v110 == 0.0;
      }

      *(v125 + v102) = result;
      v104 += v109;
      v103 += result;
    }

    if (v136[0].i8[v102 + 1] == 1)
    {
      v111 = v107[2];
      if (v111 <= v106)
      {
        v112 = *v107 != 0.0 || v111 < *(this + 32);
      }

      else
      {
        v112 = 0;
      }

      *(v126 + v102 + 1) = v112;
      if (v111 <= v105)
      {
        result = 0;
      }

      else
      {
        result = *v107 > *(this + 31) || *v107 == 0.0;
      }

      *(v125 + v102 + 1) = result;
      v104 += v112;
      v103 += result;
    }

    if (v136[0].i8[v102 + 2] == 1)
    {
      v113 = v107[24];
      if (v113 <= v106)
      {
        v114 = v107[22] != 0.0 || v113 < *(this + 32);
      }

      else
      {
        v114 = 0;
      }

      *(v126 + v102 + 2) = v114;
      if (v113 <= v105)
      {
        result = 0;
      }

      else
      {
        v115 = v107[22];
        result = v115 > *(this + 31) || v115 == 0.0;
      }

      *(v125 + v102 + 2) = result;
      v104 += v114;
      v103 += result;
    }

    v102 += 3;
    v107 += 77;
  }

  while (v102 != 42);
  if (*(this + 35) <= v104 && *(this + 36) <= v103)
  {
    v116 = 0;
    v117 = (a2 + 108);
    v118 = 0.0;
    v119 = 0.0;
    do
    {
      if ((*(v126 + v116) & 1) != 0 && v136[0].i8[v116] == 1)
      {
        v119 = *(v117 - 22) + v119;
      }

      if (*(v125 + v116) == 1 && v136[0].i8[v116] == 1)
      {
        v118 = *(v117 - 22) + v118;
      }

      if (*(v126 + v116 + 1) == 1 && v136[0].i8[v116 + 1] == 1)
      {
        v119 = *v117 + v119;
      }

      if (*(v125 + v116 + 1) == 1 && v136[0].i8[v116 + 1] == 1)
      {
        v118 = *v117 + v118;
      }

      if (*(v126 + v116 + 2) == 1 && v136[0].i8[v116 + 2] == 1)
      {
        v119 = v117[22] + v119;
      }

      if (*(v125 + v116 + 2) == 1 && v136[0].i8[v116 + 2] == 1)
      {
        v118 = v117[22] + v118;
      }

      v116 += 3;
      v117 += 77;
    }

    while (v116 != 42);
    v120 = v119 / (v118 * v104);
    *a6 = v120;
    if (v120 < *(this + 34))
    {
      v121 = &(*a5)[0][1];
      v122 = &v136[0].i8[2];
      v123 = v126 + 2;
      v124 = 14;
      do
      {
        if (*(v123 - 2) == 1 && *(v122 - 2) == 1)
        {
          *(v121 - 1) = 1;
        }

        if (*(v123 - 1) == 1 && *(v122 - 1) == 1)
        {
          *v121 = 1;
        }

        if (*v123 == 1 && *v122 == 1)
        {
          v121[1] = 1;
        }

        v121 += 3;
        v122 += 3;
        v123 += 3;
        --v124;
      }

      while (v124);
    }
  }

  return result;
}

void peridot::AggressorsClassifier::setAggressorsFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v50 = *MEMORY[0x277D85DE8];
  memset(v49, 0, 42);
  v5 = (a3 + 4);
  do
  {
    if (*(v5 - 1))
    {
      *(v49 + v3) = 1;
      ++v4;
    }

    if (*v5)
    {
      *(v49 + v3 + 1) = 1;
      ++v4;
    }

    if (v5[1])
    {
      *(v49 + v3 + 2) = 1;
      ++v4;
    }

    v3 += 3;
    v5 += 3;
  }

  while (v3 != 42);
  if (v4)
  {
    v6 = 0;
    memset(v48, 0, 42);
    memset(v47, 0, 42);
    memset(v46, 0, 42);
    memset(v45, 0, 42);
    memset(v44, 0, 42);
    v7 = (a3 + 4);
    memset(v43, 0, 42);
    while (1)
    {
      v9 = *(v7 - 1);
      if (v9 > 5)
      {
        switch(v9)
        {
          case 6:
            v11 = v45;
            goto LABEL_30;
          case 8:
            v11 = v46;
            goto LABEL_30;
          case 10:
            v11 = v44;
            goto LABEL_30;
        }
      }

      else if ((v9 - 4) < 2 || v9 == 1)
      {
        *(v48 + v6) = 1;
        if ((v9 & 0xFFFFFFFE) != 4)
        {
          goto LABEL_31;
        }

        v11 = v47;
        goto LABEL_30;
      }

      if ((v9 & 0xFFFFFFFE) != 0xC)
      {
        goto LABEL_31;
      }

      v11 = v43;
LABEL_30:
      *(v11 + v6) = 1;
LABEL_31:
      v12 = *v7;
      if (*v7 > 5)
      {
        switch(v12)
        {
          case 10:
            v13 = v44;
            goto LABEL_44;
          case 8:
            v13 = v46;
            goto LABEL_44;
          case 6:
            v13 = v45;
            goto LABEL_44;
        }
      }

      else if ((v12 - 4) < 2 || v12 == 1)
      {
        *(v48 + v6 + 1) = 1;
        if ((v12 & 0xFFFFFFFE) != 4)
        {
          goto LABEL_45;
        }

        v13 = v47;
        goto LABEL_44;
      }

      if ((v12 & 0xFFFFFFFE) != 0xC)
      {
        goto LABEL_45;
      }

      v13 = v43;
LABEL_44:
      *(v13 + v6 + 1) = 1;
LABEL_45:
      v14 = v7[1];
      if (v14 > 5)
      {
        switch(v14)
        {
          case 10:
            v8 = v44;
            break;
          case 8:
            v8 = v46;
            break;
          case 6:
            v8 = v45;
            break;
          default:
            goto LABEL_54;
        }
      }

      else
      {
        if ((v14 - 4) >= 2 && v14 != 1)
        {
LABEL_54:
          if ((v14 & 0xFFFFFFFE) != 0xC)
          {
            goto LABEL_13;
          }

          v8 = v43;
          goto LABEL_12;
        }

        *(v48 + v6 + 2) = 1;
        if ((v14 & 0xFFFFFFFE) != 4)
        {
          goto LABEL_13;
        }

        v8 = v47;
      }

LABEL_12:
      *(v8 + v6 + 2) = 1;
LABEL_13:
      v6 += 3;
      v7 += 3;
      if (v6 == 42)
      {
        v15 = 0;
        v16 = (a2 + 172);
        do
        {
          if (*(v48 + v15) == 1)
          {
            *(v16 - 22) |= 0x40u;
          }

          if (*(v48 + v15 + 1) == 1)
          {
            *v16 |= 0x40u;
          }

          if (*(v48 + v15 + 2) == 1)
          {
            v16[22] |= 0x40u;
          }

          v15 += 3;
          v16 += 77;
        }

        while (v15 != 42);
        v17 = 0;
        v18 = (a2 + 172);
        do
        {
          if (*(v47 + v17) == 1)
          {
            *(v18 - 22) |= 0x100u;
          }

          if (*(v47 + v17 + 1) == 1)
          {
            *v18 |= 0x100u;
          }

          if (*(v47 + v17 + 2) == 1)
          {
            v18[22] |= 0x100u;
          }

          v17 += 3;
          v18 += 77;
        }

        while (v17 != 42);
        v19 = 0;
        v20 = (a2 + 172);
        do
        {
          if (*(v46 + v19) == 1)
          {
            *(v20 - 22) |= 0x400u;
          }

          if (*(v46 + v19 + 1) == 1)
          {
            *v20 |= 0x400u;
          }

          if (*(v46 + v19 + 2) == 1)
          {
            v20[22] |= 0x400u;
          }

          v19 += 3;
          v20 += 77;
        }

        while (v19 != 42);
        v21 = 0;
        v22 = (a2 + 172);
        do
        {
          if (*(v45 + v21) == 1)
          {
            *(v22 - 22) |= 0x800u;
          }

          if (*(v45 + v21 + 1) == 1)
          {
            *v22 |= 0x800u;
          }

          if (*(v45 + v21 + 2) == 1)
          {
            v22[22] |= 0x800u;
          }

          v21 += 3;
          v22 += 77;
        }

        while (v21 != 42);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = v44 + 2;
        do
        {
          if (*(v26 - 2))
          {
            *(&v49[24] + ++v23) = 0;
            *(&v49[3] + ++v25) = v24;
          }

          if (*(v26 - 1) == 1)
          {
            *(&v49[24] + ++v23) = 1;
            *(&v49[3] + ++v25) = v24;
          }

          if (*v26 == 1)
          {
            *(&v49[24] + ++v23) = 2;
            *(&v49[3] + ++v25) = v24;
          }

          ++v24;
          v26 += 3;
        }

        while (v24 != 14);
        if (v23)
        {
          for (i = 0; i < v23; i += 2)
          {
            v29 = &v49[i / 2 + 24] + 1;
            v30 = &v49[i / 2 + 3] + 1;
            if (*(a3 + 12 * *v30 + 4 * *v29) == 10)
            {
              v31 = a2 + 308 * *v30 + 88 * *v29;
              *(v31 + 84) |= 0x10000000u;
            }

            v28 = a2 + 308 * v30[1] + 88 * v29[1];
            *(v28 + 84) |= 0x10000000u;
          }
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = v43 + 2;
        do
        {
          if (*(v35 - 2))
          {
            *(&v49[24] + ++v32) = 0;
            *(&v49[3] + ++v34) = v33;
          }

          if (*(v35 - 1) == 1)
          {
            *(&v49[24] + ++v32) = 1;
            *(&v49[3] + ++v34) = v33;
          }

          if (*v35 == 1)
          {
            *(&v49[24] + ++v32) = 2;
            *(&v49[3] + ++v34) = v33;
          }

          ++v33;
          v35 += 3;
        }

        while (v33 != 14);
        if (v32)
        {
          for (j = 0; j < v32; j += 2)
          {
            v38 = &v49[j / 2 + 24] + 1;
            v39 = &v49[j / 2 + 3] + 1;
            if (*(a3 + 12 * *v39 + 4 * *v38) == 10)
            {
              v40 = a2 + 308 * *v39 + 88 * *v38;
              *(v40 + 84) |= 0x10000000u;
            }

            v37 = a2 + 308 * v39[1] + 88 * v38[1];
            *(v37 + 84) |= 0x10000000u;
          }
        }

        v41 = 0;
        v42 = a2 + 176;
        do
        {
          if ((*(v48 + v41) & 1) != 0 && *(v49 + v41) == 1 && *(v42 + 4) >= 0.6 && vabds_f32(*v42, *(v42 - 176)) < 0.000000001)
          {
            *(v42 + 84) |= 0x40u;
          }

          if (*(v48 + v41 + 1) == 1 && *(v49 + v41 + 1) == 1 && *(v42 + 4) >= 0.6 && vabds_f32(*v42, *(v42 - 88)) < 0.000000001)
          {
            *(v42 + 84) |= 0x40u;
          }

          if (*(v48 + v41 + 2) == 1 && *(v49 + v41 + 2) == 1 && *(v42 + 4) >= 0.6 && vabds_f32(*v42, *v42) < 0.000000001)
          {
            *(v42 + 84) |= 0x40u;
          }

          v41 += 3;
          v42 += 308;
        }

        while (v41 != 42);
        return;
      }
    }
  }
}

void peridot::AggressorsClassifier::setAggressorFlag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18[84] = *MEMORY[0x277D85DE8];
  if (a5 == 28)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = (a4 + 2);
    do
    {
      if (*(v8 - 2))
      {
        v18[v5++ + 42] = 0;
        v18[v7++] = v6;
      }

      if (*(v8 - 1) == 1)
      {
        v18[v5++ + 42] = 1;
        v18[v7++] = v6;
      }

      if (*v8 == 1)
      {
        v18[v5++ + 42] = 2;
        v18[v7++] = v6;
      }

      ++v6;
      v8 += 3;
    }

    while (v6 != 14);
    if (v5)
    {
      for (i = 0; i < v5; i += 2)
      {
        v15 = &v18[i + 42];
        v16 = &v18[i];
        if (*(a3 + 12 * *v16 + 4 * *v15) == 10)
        {
          v17 = a2 + 308 * *v16 + 88 * *v15;
          *(v17 + 84) |= 0x10000000u;
        }

        v14 = a2 + 308 * v16[1] + 88 * v15[1];
        *(v14 + 84) |= 0x10000000u;
      }
    }
  }

  else
  {
    v9 = 1 << a5;
    v10 = (a2 + 172);
    v11 = (a4 + 2);
    v12 = 14;
    do
    {
      if (*(v11 - 2) == 1)
      {
        *(v10 - 22) |= v9;
      }

      if (*(v11 - 1) == 1)
      {
        *v10 |= v9;
      }

      if (*v11 == 1)
      {
        v10[22] |= v9;
      }

      v11 += 3;
      v10 += 77;
      --v12;
    }

    while (v12);
  }
}

double afdr_package::bufferClass::b_getData(afdr_package::bufferClass *this, const unint64_t *a2, const char *a3, double *a4, int *a5)
{
  if ((*a3 != 1953393013 || *(a3 + 2) != 13873) && (*a3 != 1953393013 || *(a3 + 2) != 12851) && (*a3 != 1735289203 || *(a3 + 2) != 25964) && *a3 == 1651863396 && *(a3 + 2) == 25964)
  {
    v9 = *(this + *a2) | (*(this + *(a2 + 2)) << 8) | (*(this + *(a2 + 4)) << 16) | (*(this + *(a2 + 6)) << 24) | (*(this + *(a2 + 8)) << 32) | (*(this + *(a2 + 10)) << 40) | (*(this + *(a2 + 12)) << 48) | (*(this + *(a2 + 14)) << 56);
    v10 = *(this + *(a2 + 30));
    v11 = *(this + *(a2 + 16)) | (*(this + *(a2 + 18)) << 8) | (*(this + *(a2 + 20)) << 16) | (*(this + *(a2 + 22)) << 24) | (*(this + *(a2 + 24)) << 32) | (*(this + *(a2 + 26)) << 40) | (*(this + *(a2 + 28)) << 48);
    *&result = 0x100000002;
    *a5 = 0x100000002;
    *a4 = v9;
    *(a4 + 1) = v11 | (v10 << 56);
  }

  return result;
}

_BYTE *afdr_package::bufferClass::getData(_BYTE *this, const unint64_t *a2, const char *a3, double *__dst, int *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a3 == 1953393013 && *(a3 + 2) == 13873)
  {
    v13 = &__src[1];
    v14 = a2 + 1;
    v15 = 2048;
    do
    {
      v16 = this[*v14];
      *(v13 - 1) = this[*(v14 - 2)];
      *v13 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
  }

  else if (*a3 == 1953393013 && *(a3 + 2) == 12851)
  {
    v17 = &__src[1];
    v18 = a2 + 1;
    v19 = 2048;
    do
    {
      v20 = this[*v18];
      *(v17 - 1) = this[*(v18 - 2)];
      *v17 = v20;
      v17 += 2;
      v18 += 2;
      v19 -= 2;
    }

    while (v19);
  }

  else if (*a3 == 1735289203 && *(a3 + 2) == 25964)
  {
    v21 = &__src[1];
    v22 = a2 + 1;
    v23 = 2048;
    do
    {
      v24 = this[*v22];
      *(v21 - 1) = this[*(v22 - 2)];
      *v21 = v24;
      v21 += 2;
      v22 += 2;
      v23 -= 2;
    }

    while (v23);
  }

  else if (*a3 == 1651863396 && *(a3 + 2) == 25964)
  {
    for (i = 0; i != 2048; i += 2)
    {
      v10 = &a2[i];
      v11 = this[*v10];
      LOBYTE(v10) = this[*(v10 + 2)];
      v12 = &__src[i];
      *v12 = v11;
      v12[1] = v10;
    }

    *a5 = 0x100000100;
    return memcpy(__dst, __src, 0x800uLL);
  }

  return this;
}

double afdr_package::jlin_v100::jlinClass::get_efl(afdr_package::jlin_v100::jlinClass *this, double *a2, int *a3)
{
  v3 = *(this + 1) << 32;
  v4 = *(*this + ((v3 + 0x400000000) >> 32)) | (*(*this + ((v3 + 0x500000000) >> 32)) << 8) | (*(*this + ((v3 + 0x600000000) >> 32)) << 16) | (*(*this + ((v3 + 0x700000000) >> 32)) << 24) | (*(*this + ((v3 + 0x800000000) >> 32)) << 32) | (*(*this + ((v3 + 0x900000000) >> 32)) << 40) | (*(*this + ((v3 + 0xA00000000) >> 32)) << 48) | (*(*this + ((v3 + 0xB00000000) >> 32)) << 56);
  *&result = 0x100000001;
  *a3 = 0x100000001;
  *a2 = v4;
  return result;
}

uint64_t *afdr_package::jlin_v100::jlinClass::set_pixelSize(uint64_t *this)
{
  v1 = *this;
  v2 = this[1] << 32;
  *(v1 + ((v2 + 0xC00000000) >> 32)) = 77;
  *(v1 + ((v2 + 0xD00000000) >> 32)) = -37;
  *(v1 + ((v2 + 0xE00000000) >> 32)) = -65;
  *(v1 + ((v2 + 0xF00000000) >> 32)) = -78;
  *(v1 + ((v2 + 0x1000000000) >> 32)) = -46;
  *(v1 + ((v2 + 0x1100000000) >> 32)) = -92;
  *(v1 + ((v2 + 0x1200000000) >> 32)) = -124;
  *(v1 + ((v2 + 0x1300000000) >> 32)) = 63;
  return this;
}

uint64_t afdr_package::bufferClass::setData(uint64_t this, const unint64_t *a2, const char *a3)
{
  if (*a3 == 1953393013 && *(a3 + 2) == 13873)
  {
    v8 = 4;
LABEL_23:
    v7 = 1;
    goto LABEL_24;
  }

  if (*a3 == 1735289203 && *(a3 + 2) == 25964)
  {
    v8 = 8;
    goto LABEL_23;
  }

  if (*a3 == 1651863396 && *(a3 + 2) == 25964)
  {
    v8 = 16;
    goto LABEL_23;
  }

  v7 = *a3 == 1953393013 && *(a3 + 2) == 12851;
  v8 = 8 * v7;
LABEL_24:
  if (v8 * v7 == 16)
  {
    *(this + *a2) = 0;
    *(this + *(a2 + 2)) = 0;
    *(this + *(a2 + 4)) = 0;
    *(this + *(a2 + 6)) = 0;
    *(this + *(a2 + 8)) = 0;
    *(this + *(a2 + 10)) = 0;
    *(this + *(a2 + 12)) = 0;
    *(this + *(a2 + 14)) = 0;
    *(this + *(a2 + 16)) = 0;
    *(this + *(a2 + 18)) = 0;
    *(this + *(a2 + 20)) = 0;
    *(this + *(a2 + 22)) = 0;
    *(this + *(a2 + 24)) = 0;
    *(this + *(a2 + 26)) = 0;
    *(this + *(a2 + 28)) = 0;
    *(this + *(a2 + 30)) = 0;
  }

  return this;
}

float *coder::internal::FFTImplementationCallback::doHalfLengthRadix2(uint64_t a1, char *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x2A000uLL);
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    *&v91[4 * v4] = v6;
    v7 = 128;
    do
    {
      v8 = v5;
      v7 >>= 1;
      v5 ^= v7;
    }

    while ((v7 & ~v8) == 0);
    v6 = v5 + 1;
    ++v4;
  }

  while (v4 != 127);
  v9 = 0;
  v10 = 0;
  v92 = v6;
  v11 = (a1 + 4);
  v12 = a2 + 12;
  v13 = 1;
  result = a2;
  do
  {
    v15 = 0;
    v16 = v9 << 8;
    v17 = v11;
    do
    {
      v18 = &a2[8 * *&v91[v15] + 8 * v16];
      *(v18 - 2) = *(v17 - 1);
      v19 = *v17;
      v17 += 2;
      *(v18 - 1) = v19;
      v15 += 4;
    }

    while (v15 != 216);
    for (i = 0; i != 256; i += 16)
    {
      v21 = &result[i];
      v94 = vld4q_f32(v21);
      v95.val[2] = vsubq_f32(v94.val[0], v94.val[2]);
      v95.val[3] = vsubq_f32(v94.val[1], v94.val[3]);
      v95.val[0] = vaddq_f32(v94.val[0], v94.val[2]);
      v95.val[1] = vaddq_f32(v94.val[1], v94.val[3]);
      vst4q_f32(v21, v95);
    }

    v22 = 125;
    v23 = 4;
    v24 = 2;
    v25 = 32;
    do
    {
      if (v22 >= 1)
      {
        v27 = 8 * v23;
        v28 = 2 * v24;
        v29 = result;
        v30 = v10;
        do
        {
          v31 = &v29[v28];
          v32 = v29[2 * v24];
          v33 = v29[v28 + 1];
          v34 = *v29;
          v35 = v29[1];
          *v31 = *v29 - v32;
          v31[1] = v35 - v33;
          *v29 = v34 + v32;
          v29[1] = v35 + v33;
          v30 += v23;
          v29 = (v29 + v27);
        }

        while (v30 < v22 + v16);
        v36 = 2 * v24;
        v37 = v12;
        v38 = v25;
        v39 = v13;
        do
        {
          v40 = coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::b_fv[v38];
          v41 = coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::fv1[v38];
          v42 = v37;
          v43 = v39;
          do
          {
            v44 = &v42[v36];
            v46 = v42[v36 - 1];
            v45 = v42[2 * v24];
            v47 = -((v45 * v41) - (v46 * v40));
            v48 = (v45 * v40) + (v46 * v41);
            v49 = *(v42 - 1);
            v50 = *v42;
            v51 = *v42 - v48;
            *(v44 - 1) = v49 - v47;
            *v44 = v51;
            *(v42 - 1) = v47 + v49;
            *v42 = v50 + v48;
            v43 += v23;
            v42 = (v42 + v27);
          }

          while (v43 < v39 + v22);
          ++v39;
          v38 += v25;
          v37 += 2;
        }

        while (v38 < 0x40);
      }

      v22 -= v23;
      v24 = v23;
      v23 *= 2;
      v26 = v25 > 1;
      v25 >>= 1;
    }

    while (v26);
    v52 = 0;
    v53 = &a2[2048 * v9];
    v54 = *v53;
    v55 = *(v53 + 1);
    *v53 = v55 + *v53;
    *(v53 + 1) = 0;
    *(v53 + 256) = v54 - v55;
    *(v53 + 257) = 0;
    v56 = &byte_2247BA081;
    do
    {
      v57 = &result[v52];
      v58 = *v56++;
      v60 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar2 + v52 * 4 + 8);
      v59 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar2 + v52 * 4 + 12);
      v61 = 8 * v58 - 8;
      v62 = (&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar2 + v61);
      v63 = vld1_dup_f32(v62++);
      v64 = &a2[8 * (v16 | v58)];
      v65 = *&result[v52 + 2];
      v66 = v64[-1];
      v67 = vmul_n_f32(v66, v60);
      v68 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar1 + v52 * 4 + 8);
      v69 = vrev64_s32(vmul_lane_f32(v65, v68, 1));
      v70 = vmul_n_f32(v65, v68.f32[0]);
      v71 = *v62;
      v72.i32[0] = vsub_f32(v70, v69).u32[0];
      v72.i32[1] = vadd_f32(v70, v69).i32[1];
      v73 = vadd_f32(v72, vrev64_s32(vmul_n_f32(v66, v59)));
      v69.i32[0] = vadd_f32(v73, v67).u32[0];
      v74 = vsub_f32(v73, v67);
      v75 = vrev64_s32(vmul_n_f32(v65, v59));
      v76 = vmul_n_f32(v68, v66.f32[0]);
      v69.i32[1] = v74.i32[1];
      v77 = vrev64_s32(vmul_lane_f32(v68, v66, 1));
      v78 = vadd_f32(v76, v77);
      v79 = vsub_f32(v76, v77);
      v76.i32[0] = vsub_f32(v78, v75).u32[0];
      v76.i32[1] = vadd_f32(v79, v75).i32[1];
      v57[1] = vmul_f32(v69, 0x3F0000003F000000);
      v57[129] = vmul_f32(vmla_n_f32(v76, v65, v60), 0x3F0000003F000000);
      v80 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar1 + v61);
      v81 = vrev64_s32(vmul_lane_f32(v66, v80, 1));
      v82 = vmul_n_f32(v66, v80.f32[0]);
      v78.i32[0] = vsub_f32(v82, v81).u32[0];
      v78.i32[1] = vadd_f32(v82, v81).i32[1];
      v83 = vmul_f32(v63, v65);
      v84 = vadd_f32(v78, vrev64_s32(vmul_n_f32(v65, v71)));
      v82.i32[0] = vadd_f32(v84, v83).u32[0];
      v85 = vrev64_s32(vmul_n_f32(v66, v71));
      v86 = vsub_f32(v84, v83);
      v87 = vmul_n_f32(v80, v65.f32[0]);
      v88 = vrev64_s32(vmul_lane_f32(v80, v65, 1));
      v82.i32[1] = v86.i32[1];
      v86.i32[0] = vsub_f32(vadd_f32(v87, v88), v85).u32[0];
      v86.i32[1] = vadd_f32(vsub_f32(v87, v88), v85).i32[1];
      v64[-1] = vmul_f32(v82, 0x3F0000003F000000);
      v64[127] = vmul_f32(vmla_f32(v86, v66, v63), 0x3F0000003F000000);
      v52 += 2;
    }

    while (v52 != 126);
    v89 = *(v53 + 128);
    v90 = *(v53 + 129);
    *(v53 + 129) = (v89 * 0.0) - v90;
    *(v53 + 384) = v89;
    ++v9;
    v10 += 256;
    v13 += 256;
    *(v53 + 385) = (v89 * 0.0) + v90;
    v11 += 108;
    result += 512;
    v12 += 2048;
  }

  while (v9 != 84);
  return result;
}

uint64_t coder::internal::FFTImplementationCallback::r2br_r2dit_trig(uint64_t result, float32x4_t *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &a2->i8[12];
  v5 = 1;
  v6 = a2;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v2 << 8;
    v10 = v2 << 8;
    do
    {
      a2->i64[v10] = *(result + 8 * (v7 | v9));
      v11 = 256;
      do
      {
        v12 = v8;
        v11 >>= 1;
        v8 ^= v11;
      }

      while ((v11 & ~v12) == 0);
      v10 = v8 + v9;
      ++v7;
    }

    while (v7 != 255);
    v13 = 0;
    a2->i64[v10] = *(result + (v2 << 11) + 2040);
    do
    {
      f32 = v6[v13].f32;
      v52 = vld4q_f32(f32);
      v53.val[2] = vsubq_f32(v52.val[0], v52.val[2]);
      v53.val[3] = vsubq_f32(v52.val[1], v52.val[3]);
      v53.val[0] = vaddq_f32(v52.val[0], v52.val[2]);
      v53.val[1] = vaddq_f32(v52.val[1], v52.val[3]);
      vst4q_f32(f32, v53);
      v13 += 4;
    }

    while (v13 != 128);
    v15 = 2;
    v16 = 253;
    v17 = 4;
    v18 = 64;
    do
    {
      v20 = v15;
      v15 = v17;
      if (v16 >= 1)
      {
        v21 = 8 * v17;
        v22 = 2 * v20;
        v23 = v6;
        v24 = v3;
        do
        {
          v25 = &v23[v22];
          v26 = v23[2 * v20];
          v27 = v23[v22 + 1];
          v28 = *v23;
          v29 = v23[1];
          *v25 = *v23 - v26;
          v25[1] = v29 - v27;
          *v23 = v28 + v26;
          v23[1] = v29 + v27;
          v24 += v15;
          v23 = (v23 + v21);
        }

        while (v24 < v16 + v9);
        v30 = 2 * v20;
        v31 = v4;
        v32 = v18;
        v33 = v5;
        do
        {
          v34 = fv[v32];
          v35 = coder::internal::FFTImplementationCallback::r2br_r2dit_trig(creal32_T const*,creal32_T*)::b_fv[v32];
          v36 = v31;
          v37 = v33;
          do
          {
            v38 = &v36[v30];
            v40 = v36[v30 - 1];
            v39 = v36[2 * v20];
            v41 = -((v39 * v35) - (v40 * v34));
            v42 = (v39 * v34) + (v40 * v35);
            v43 = *(v36 - 1);
            v44 = *v36;
            v45 = *v36 - v42;
            *(v38 - 1) = v43 - v41;
            *v38 = v45;
            *(v36 - 1) = v41 + v43;
            *v36 = v44 + v42;
            v37 += v15;
            v36 = (v36 + v21);
          }

          while (v37 < v33 + v16);
          ++v33;
          v32 += v18;
          v31 += 2;
        }

        while (v32 < 0x80);
      }

      v17 = 2 * v15;
      v16 -= v15;
      v19 = v18 > 1;
      v18 >>= 1;
    }

    while (v19);
    ++v2;
    v3 += 256;
    v5 += 256;
    v6 += 128;
    v4 += 2048;
  }

  while (v2 != 256);
  v46 = a2 + 2;
  v47 = 0x10000;
  v48 = vdupq_n_s32(0x3B800000u);
  do
  {
    v49 = *v46;
    v50 = v46[1];
    v51 = vmulq_f32(v46[-1], v48);
    v46[-2] = vmulq_f32(v46[-2], v48);
    v46[-1] = v51;
    *v46 = vmulq_f32(v49, v48);
    v46[1] = vmulq_f32(v50, v48);
    v46 += 4;
    v47 -= 8;
  }

  while (v47);
  return result;
}

unint64_t spot_finder_peridot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v967 = v4;
  v968 = v5;
  v960 = v7;
  v961 = v6;
  v971 = v8;
  v966 = v9;
  v964 = v10;
  v11 = v3;
  v1058[4536] = *MEMORY[0x277D85DE8];
  v1027 = 0;
  v1028 = 0;
  v1029 = 0;
  v1030 = 0;
  v1023 = 0;
  v1024 = 0;
  v1025 = 0;
  v1026 = 0;
  v1019[0] = 0;
  v1019[1] = 0;
  v1020 = 0;
  v1021 = 0;
  v1022 = 0;
  v1015[0] = 0;
  v1015[1] = 0;
  v1016 = 0;
  v1017 = 0;
  v1018 = 0;
  v1011[0] = 0;
  v1011[1] = 0;
  v1012 = 0;
  v1013 = 0;
  v1014 = 0;
  v1007[0] = 0;
  v1007[1] = 0;
  v1008 = 0;
  v1009 = 0;
  v1010 = 0;
  __src = 0;
  v1004 = 0;
  v1005 = 0;
  v1006 = 0;
  v1000[0] = 0;
  v1000[1] = 0;
  v1001 = 0;
  v1002 = 0;
  v997[0] = 0;
  v997[1] = 0;
  v998 = 0;
  v999 = 0;
  if ((isInitialized_spot_finder_peridot[0] & 1) == 0)
  {
    memcpy(&state, &uv, 0x9C4uLL);
    isInitialized_spot_finder_peridot[0] = 1;
  }

  v12 = *(v971 + 4);
  v1013 = 0x6C00000054;
  v1014 = v12;
  v979 = v12;
  coder::array_base<float,int,2>::ensureCapacity(v1011, 9072 * v12);
  v13 = *(v971 + 4);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 9072 * v13;
    v16 = *v11;
    v17 = v1011[0];
    v18 = v15 <= 1 ? 1 : v15;
    if (v15 < 8)
    {
      goto LABEL_12;
    }

    if (v1011[0] - v16 < 0x20uLL)
    {
      goto LABEL_12;
    }

    v14 = v18 & 0x7FFFFFF0;
    v19 = (v1011[0] + 16);
    v20 = v16 + 1;
    __asm { FMOV            V0.4S, #1.0 }

    v24 = v14;
    do
    {
      v25 = vminnmq_f32(*v20, _Q0);
      v19[-1] = vminnmq_f32(v20[-1], _Q0);
      *v19 = v25;
      v19 += 2;
      v20 += 2;
      v24 -= 8;
    }

    while (v24);
    if (v14 != v18)
    {
LABEL_12:
      v26 = v18 - v14;
      v27 = v14;
      v28 = (v17 + 4 * v14);
      v29 = &v16->f32[v27];
      do
      {
        v30 = *v29++;
        *v28++ = fminf(v30, 1.0);
        --v26;
      }

      while (v26);
    }
  }

  v31 = (9072 * v1014);
  v1013 = 0x6C00000054;
  coder::array_base<float,int,2>::ensureCapacity(v1011, 9072 * v1014);
  if (v31 >= 1)
  {
    v32 = (v1011[0] + 16);
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v34 = vsubq_f32(_Q0, *v32);
      v32[-1] = vsubq_f32(_Q0, v32[-1]);
      *v32 = v34;
      v32 += 2;
      v31 -= 8;
    }

    while (v31);
  }

  v35 = v1014;
  v36 = 9072 * v1014;
  if (v1014 >= 1)
  {
    v37 = v1011[0];
    if (v36 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v36;
    }

    if (v36 < 2)
    {
      v39 = 0;
LABEL_26:
      v43 = v38 - v39;
      v44 = (v37 + 4 * v39);
      do
      {
        *v44 = logf(*v44);
        ++v44;
        --v43;
      }

      while (v43);
      goto LABEL_28;
    }

    v39 = v38 & 0x7FFFFFF0;
    v40 = v1011[0];
    v41 = v39;
    do
    {
      LODWORD(__dstc) = *v40;
      v987 = logf(COERCE_FLOAT(HIDWORD(*v40)));
      *&v42 = logf(__dstc);
      *(&v42 + 1) = v987;
      *v40++ = v42;
      v41 -= 2;
    }

    while (v41);
    if (v39 != v38)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  v1013 = 0x6C00000054;
  v1014 = v35;
  coder::array_base<float,int,2>::ensureCapacity(v1011, v36);
  v45 = v964;
  if (v35 >= 1)
  {
    v46 = v1011[0];
    if (v36 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v36;
    }

    if (v36 >= 8)
    {
      v48 = v47 & 0x7FFFFFF0;
      v49 = (v1011[0] + 16);
      v50 = v48;
      do
      {
        v51 = vnegq_f32(*v49);
        v49[-1] = vnegq_f32(v49[-1]);
        *v49 = v51;
        v49 += 2;
        v50 -= 8;
      }

      while (v50);
      if (v48 == v47)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v48 = 0;
    }

    v52 = v47 - v48;
    v53 = (v46 + 4 * v48);
    do
    {
      *v53 = -*v53;
      ++v53;
      --v52;
    }

    while (v52);
  }

LABEL_39:
  if (v964 < 301)
  {
    goto LABEL_277;
  }

  v54 = *(v971 + 4);
  if (v54 <= 1)
  {
LABEL_278:
    for (i = 0; i != 180; ++i)
    {
      LODWORD(__dstd) = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b_fv[i];
      v990 = expf(COERCE_FLOAT(HIDWORD(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b_fv[i])));
      *&v289 = expf(__dstd);
      *(&v289 + 1) = v990;
      *&v1040[i * 8] = v289;
    }

    v290 = expf(-1972.0);
    v291 = 1;
    goto LABEL_284;
  }

  v55 = (v54 >> 1) + (v54 & 1) + ((v54 >> 1) & 0x3FFFFF80);
  if (v55 < 4)
  {
    v56 = 1;
  }

  else
  {
    v56 = v55 - 2;
  }

  memset(v1058, 0, 17);
  memset(v1031, 0, 17);
  *&v1031[24] = 0;
  v1053 = 0;
  v1054 = 0;
  v1055 = 0;
  v1056 = 0;
  v1049 = 0;
  v1050 = 0;
  v1051 = 0;
  v1052 = 0;
  v1046 = 0uLL;
  v1047 = 0;
  v1048[0] = 0;
  v57 = v1014;
  if (v56 <= v1014)
  {
    v58 = v56;
  }

  else
  {
    v58 = v1014;
  }

  v1009 = 0x6C00000054;
  v1010 = v58;
  coder::array_base<float,int,2>::ensureCapacity(v1007, 9072 * v58);
  v59 = v1007[0];
  if (9072 * v58 >= 1)
  {
    bzero(v1007[0], 4 * (9072 * v58));
  }

  v60 = 0;
  v61 = 0;
  v62 = 4 * v57;
  v63 = v58 - 2;
  if (v58 < 2)
  {
    v63 = 0;
  }

  v972 = v63;
  v970 = v63 + 1;
  v969 = v58 - ((v63 + 1) & 0xFFFFFFFC);
  v962 = 4 * v58 - 20;
  v956 = v59;
  v957 = v1011[0];
  v64 = v59;
  v977 = v1011[0];
  v958 = 4 * v57;
  v959 = v57;
  v963 = (v63 + 1) & 0xFFFFFFFC;
  while (2)
  {
    v974 = v64;
    LODWORD(v1058[3]) = v57;
    coder::array_base<float,int,2>::ensureCapacity(v1058, v57);
    if (v57 >= 1)
    {
      v65 = v1058[0];
      bzero(v1058[0], v62);
      v66 = v977;
      v67 = v57;
      do
      {
        *v65++ = *v66;
        v66 += 9072;
        --v67;
      }

      while (v67);
    }

    v68 = LODWORD(v1058[3]);
    v1056 = v58;
    coder::array_base<float,int,2>::ensureCapacity(&v1053, v58);
    *&v1031[24] = v58;
    coder::array_base<float,int,2>::ensureCapacity(v1031, v58);
    if (v58 >= 1)
    {
      v71 = v1053;
      v72 = *v1031;
      if (v58 < 8)
      {
        v73 = 0;
LABEL_62:
        v77 = v58 - v73;
        v78 = 4 * v73;
        v79 = (v72 + v78);
        v80 = (v71 + v78);
        do
        {
          *v80++ = 0;
          *v79++ = 0;
          --v77;
        }

        while (v77);
        goto LABEL_64;
      }

      v74 = v1053;
      v75 = *v1031;
      v76 = v58 & 0x7FFFFFF8;
      do
      {
        *v74 = 0uLL;
        v74[1] = 0uLL;
        v74 += 2;
        *v75 = 0uLL;
        v75[1] = 0uLL;
        v75 += 2;
        v76 -= 8;
      }

      while (v76);
      v73 = v58 & 0x7FFFFFF8;
      if (v73 != v58)
      {
        goto LABEL_62;
      }
    }

LABEL_64:
    if (!v58)
    {
      goto LABEL_200;
    }

    if (v58 < 65)
    {
      if (v58 >= 1)
      {
LABEL_70:
        v81 = 0;
        v82 = v1058[0];
        v83 = *v1031;
        v84 = *v1031 - 4;
        v85 = v1053;
        v86 = v1053 - 1;
        v87 = *v1031 - 16;
        v88 = v1053 - 4;
        v89 = 1;
        do
        {
          v90 = v81++;
          v91 = v82[v90];
          if (v90)
          {
            if (*v83 > v91)
            {
              v92 = v81;
              if (v90 <= 3)
              {
LABEL_80:
                v95 = v92 + 1;
                v96 = 4 * v92;
                v69 = v84 + v96;
                v70 = &v88[v96];
                v97 = &v88[v96];
                v98 = v69;
                do
                {
                  v99 = *(v97 - 1);
                  v97 -= 4;
                  *v70 = v99;
                  v100 = *(v98 - 4);
                  v98 -= 4;
                  *v69 = v100;
                  --v95;
                  v70 = v97;
                  v69 = v98;
                }

                while (v95 > 2);
              }

              else
              {
                v93 = v90 & 0x7FFFFFFFFFFFFFFCLL;
                v94 = v90 & 0x7FFFFFFFFFFFFFFCLL;
                v69 = v86;
                v70 = v87;
                do
                {
                  *(v69 + 4) = *v69;
                  *(v70 + 4) = *v70;
                  v70 -= 16;
                  v69 -= 16;
                  v93 -= 4;
                }

                while (v93);
                if (v90 != v94)
                {
                  v92 = v81 - v94;
                  goto LABEL_80;
                }
              }

              *v83 = v91;
              *v85 = v81;
              goto LABEL_72;
            }

            if (v90 != 1 && *(v84 + 4 * v90) > v91)
            {
              v101 = 1;
              v102 = v90;
              while (1)
              {
                v69 = (v102 - v101);
                if (v69 < 2)
                {
                  break;
                }

                v69 = (v101 + (v69 >> 1));
                if (*(v84 + 4 * v69) > v91)
                {
                  v102 = v69;
                }

                else
                {
                  v101 = v69;
                }

                if (v101 >= v102)
                {
                  goto LABEL_94;
                }
              }

              v101 = v102;
LABEL_94:
              if (v90 >= v101)
              {
                v103 = v81 - v101;
                v104 = v81;
                if (v103 < 4)
                {
LABEL_100:
                  v70 = &v88[4 * v104];
                  v107 = (v84 + 4 * v104);
                  v108 = v107;
                  v69 = v70;
                  do
                  {
                    v109 = *--v108;
                    --v104;
                    *v107 = v109;
                    v110 = *(v69 - 4);
                    v69 -= 4;
                    *v70 = v110;
                    v107 = v108;
                    v70 = v69;
                  }

                  while (v104 > v101);
                }

                else
                {
                  v105 = v103 & 0xFFFFFFFFFFFFFFFCLL;
                  v69 = (v89 - v101) & 0xFFFFFFFFFFFFFFFCLL;
                  v70 = v87;
                  v106 = v86;
                  do
                  {
                    *(v70 + 4) = *v70;
                    *(v106 + 4) = *v106;
                    --v106;
                    v70 -= 16;
                    v69 -= 4;
                  }

                  while (v69);
                  if (v103 != v105)
                  {
                    v104 = v81 - v105;
                    goto LABEL_100;
                  }
                }
              }

              v111 = 4 * v101 - 4;
              *(v83 + v111) = v91;
              *(v85 + v111) = v81;
              goto LABEL_72;
            }

            v83[v90] = v91;
            v85[v90] = v81;
          }

          else
          {
            *v85 = 1;
            *v83 = v91;
          }

LABEL_72:
          ++v89;
          v86 = (v86 + 4);
          v87 += 4;
        }

        while (v81 != v58);
      }

      if (v58 >= v68)
      {
        goto LABEL_200;
      }

      v112 = v1058[0];
      v113 = *v1031;
      v114 = *v1031 + 4 * v58;
      v115 = *v1031 - 4;
      v116 = v1053;
      v117 = (v1053 + v962);
      v118 = (*v1031 + v962);
      v119 = v1053 - 4;
      v120 = v58;
      v121 = v974;
      while (1)
      {
        v123 = v112[v120++];
        if (*v113 > v123)
        {
          if (v58 >= 2)
          {
            v69 = v58;
            v124 = v117;
            v125 = v118;
            v126 = v963;
            v70 = v972;
            if (v972 < 3)
            {
              goto LABEL_113;
            }

            do
            {
              *(v124 + 4) = *v124;
              *(v125 + 4) = *v125;
              --v125;
              --v124;
              v126 -= 4;
            }

            while (v126);
            v69 = v969;
            if (v970 != v963)
            {
LABEL_113:
              v127 = v69 + 1;
              v128 = 4 * v69;
              v69 = v115 + 4 * v69;
              v70 = &v119[v128];
              v129 = &v119[v128];
              v130 = v69;
              do
              {
                v131 = *(v129 - 1);
                v129 -= 4;
                *v70 = v131;
                v132 = *(v130 - 4);
                v130 -= 4;
                *v69 = v132;
                --v127;
                v70 = v129;
                v69 = v130;
              }

              while (v127 > 2);
            }
          }

          *v113 = v123;
          v122 = v116;
          goto LABEL_106;
        }

        if (v58 < 2 || *(v114 - 4) <= v123)
        {
          goto LABEL_107;
        }

        v133 = 1;
        v134 = v58;
        do
        {
          if ((v134 - v133) < 2)
          {
            v133 = v134;
            if (v58 <= v134)
            {
              goto LABEL_134;
            }

            goto LABEL_127;
          }

          if (*(v115 + 4 * (v133 + ((v134 - v133) >> 1))) > v123)
          {
            v134 = v133 + ((v134 - v133) >> 1);
          }

          else
          {
            v133 += (v134 - v133) >> 1;
          }
        }

        while (v133 < v134);
        if (v58 <= v133)
        {
          goto LABEL_134;
        }

LABEL_127:
        v69 = v58 - v133;
        v135 = v58;
        if (v69 >= 4)
        {
          v136 = v69 & 0xFFFFFFFFFFFFFFFCLL;
          v70 = v118;
          v137 = v117;
          v138 = v69 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            *(v70 + 4) = *v70;
            *(v137 + 4) = *v137;
            --v137;
            v70 -= 16;
            v138 -= 4;
          }

          while (v138);
          if (v69 == v136)
          {
            goto LABEL_134;
          }

          v135 = v58 - v136;
        }

        v139 = &v119[4 * v135];
        v140 = (v115 + 4 * v135);
        v69 = v140;
        v70 = v139;
        do
        {
          v141 = *(v69 - 4);
          v69 -= 4;
          --v135;
          *v140 = v141;
          v142 = *(v70 - 1);
          v70 -= 4;
          *v139 = v142;
          v140 = v69;
          v139 = v70;
        }

        while (v135 > v133);
LABEL_134:
        v143 = 4 * v133 - 4;
        *(v113 + v143) = v123;
        v122 = (v116 + v143);
LABEL_106:
        *v122 = v120;
LABEL_107:
        if (v120 == v68)
        {
          goto LABEL_201;
        }
      }
    }

    if (v58 <= v68 >> 6)
    {
      goto LABEL_70;
    }

    v1052 = v68;
    coder::array_base<float,int,2>::ensureCapacity(&v1049, v68);
    v965 = v61;
    if (v68 < 1)
    {
      if (!v68)
      {
        goto LABEL_198;
      }
    }

    else
    {
      bzero(v1049, 4 * v68);
    }

    v1048[0] = v68;
    coder::array_base<float,int,2>::ensureCapacity(&v1046, v68);
    v144.i64[0] = 0x100000001;
    v144.i64[1] = 0x100000001;
    v145.i64[0] = 0x800000008;
    v145.i64[1] = 0x800000008;
    if (v68 < 2)
    {
      goto LABEL_148;
    }

    v146 = v1058[0];
    v147 = v1049;
    if (v68 - 2 < 6)
    {
      v148 = 1;
      goto LABEL_144;
    }

    v149 = ((v68 - 2) >> 1) + 1;
    v150 = v1058[0];
    v151 = v1049;
    v152 = v149 & 0x7FFFFFFFFFFFFFFCLL;
    v153 = xmmword_2247A5170;
    do
    {
      v1059 = vld2q_f32(v150);
      v150 += 8;
      v1059.val[0] = vbicq_s8(vceqq_f32(v1059.val[1], v1059.val[1]), vcgeq_f32(v1059.val[1], v1059.val[0]));
      v1060.val[0] = vsubq_s32(v153, v1059.val[0]);
      v1060.val[1] = vaddq_s32(v153, vandq_s8(vmovl_u16(vmvn_s8(vmovn_s32(v1059.val[0]))), v144));
      vst2q_f32(v151, v1060);
      v151 += 8;
      v153 = vaddq_s32(v153, v145);
      v152 -= 4;
    }

    while (v152);
    if (v149 != (v149 & 0x7FFFFFFFFFFFFFFCLL))
    {
      v148 = (2 * (v149 & 0x7FFFFFFFFFFFFFFCLL)) | 1;
LABEL_144:
      v154 = &v147[4 * v148];
      v155 = &v146[4 * v148];
      do
      {
        v156 = *(v155 - 1) > *v155;
        v157 = v156;
        if (*(v155 - 1) > *v155)
        {
          v156 = 1;
        }

        *(v154 - 1) = v156 + v148;
        *v154 = v148 + !v157;
        v148 += 2;
        v154 += 8;
        v155 += 2;
      }

      while (v148 < v68);
    }

LABEL_148:
    if (v68)
    {
      *&v1049[4 * v68 - 4] = v68;
    }

    if (v68 < 3)
    {
      goto LABEL_198;
    }

    v158 = v1049;
    v159 = v1058[0] - 4;
    v160 = v1049 - 4;
    v161 = v1046;
    v988 = &v1049[-v1046 - 4];
    v162 = v1046 - v1049 + 4;
    v163 = v1046 - v1049 + 8;
    v164 = v1046 + 20;
    v165 = v1049 + 12;
    v166 = v1046 + 4;
    __dst = (v1046 + 16);
    v167 = 2;
    while (2)
    {
      v168 = 2 * v167;
      if (v167 >= v68)
      {
        goto LABEL_152;
      }

      v169 = v167 | 1;
      v170 = 1;
      while (2)
      {
        if (v170 + v168 >= v68 + 1)
        {
          v171 = v68 + 1;
        }

        else
        {
          v171 = v170 + v168;
        }

        v172 = (v171 - v170);
        if (v172 < 1)
        {
          goto LABEL_155;
        }

        v173 = 0;
        v174 = (v169 - 1);
        v175 = v171 - 2;
        LODWORD(v176) = v170;
        do
        {
          v178 = *&v158[4 * v174];
          v179 = *&v160[4 * v176];
          v180 = v173;
          if (*&v159[4 * v179] <= *&v159[4 * v178])
          {
            *(v161 + 4 * v173) = v179;
            LODWORD(v176) = v176 + 1;
            v181 = v174 + 1;
            if (v174 + 1 >= v171 || v176 != v169)
            {
              goto LABEL_162;
            }

            v182 = (v175 - v174);
            if (v182 >= 7 && v175 >= v174)
            {
              v183 = 4 * v173;
              if ((v162 + v183 - 4 * v174) >= 0x20)
              {
                v184 = v182 + 1;
                v185 = (v182 + 1) & 0x1FFFFFFF8;
                v180 += v185;
                v186 = (v164 + v183);
                v187 = v174;
                v188 = v185;
                do
                {
                  v189 = &v158[4 * v187];
                  v190 = *(v189 + 1);
                  *(v186 - 1) = *v189;
                  *v186 = v190;
                  v186 += 2;
                  v187 += 8;
                  v188 -= 8;
                }

                while (v188);
                v174 = (v174 + v185);
                if (v184 == v185)
                {
LABEL_161:
                  v173 = v180;
                  LODWORD(v176) = v169;
LABEL_162:
                  v177 = v174;
                  goto LABEL_163;
                }

                v181 += v185;
              }
            }

            do
            {
              *(v166 + 4 * v180++) = *&v158[4 * v174];
              LODWORD(v174) = v181++;
            }

            while (v171 != v181);
            v174 = (v181 - 1);
            goto LABEL_161;
          }

          *(v161 + 4 * v173) = v178;
          v177 = (v174 + 1);
          if (v174 + 2 == v171 && v176 < v169)
          {
            v176 = v176;
            v191 = v169 - v176;
            if (v191 >= 8)
            {
              v192 = 4 * v180;
              if ((v163 + 4 * v180 - 4 * v176) >= 0x20)
              {
                v193 = v191 & 0xFFFFFFFFFFFFFFF8;
                v180 += v191 & 0xFFFFFFFFFFFFFFF8;
                v194 = (v164 + v192);
                v195 = &v165[4 * v176];
                v196 = v191 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v197 = *v195;
                  *(v194 - 1) = *(v195 - 1);
                  *v194 = v197;
                  v194 += 2;
                  v195 += 32;
                  v196 -= 8;
                }

                while (v196);
                if (v191 == v193)
                {
                  goto LABEL_186;
                }

                v176 = v193 + v176;
              }
            }

            v198 = v169 - v176;
            v199 = &v160[4 * v176];
            v200 = v180;
            do
            {
              LODWORD(v180) = v200 + 1;
              v201 = *v199;
              v199 += 4;
              *(v166 + 4 * v200++) = v201;
              --v198;
            }

            while (v198);
LABEL_186:
            v173 = v180;
            LODWORD(v176) = v169;
          }

LABEL_163:
          ++v173;
          v174 = v177;
        }

        while (v173 < v172);
        v202 = v170;
        if (v172 <= 7 || &v988[4 * v170] < 0x20)
        {
          v203 = 0;
          goto LABEL_190;
        }

        v203 = v172 & 0x7FFFFFF8;
        v209 = &v165[4 * v202];
        v210 = __dst;
        v211 = v203;
        do
        {
          v212 = *v210;
          *(v209 - 1) = *(v210 - 1);
          *v209 = v212;
          v209 += 32;
          v210 += 2;
          v211 -= 8;
        }

        while (v211);
        if (v203 != v172)
        {
LABEL_190:
          v204 = v203 - v172;
          v205 = 4 * v203;
          v206 = &v160[4 * v202 + v205];
          v207 = (v161 + v205);
          do
          {
            v208 = *v207++;
            *v206 = v208;
            v206 += 4;
            _CF = __CFADD__(v204++, 1);
          }

          while (!_CF);
        }

LABEL_155:
        v169 = v171 + v167;
        v170 = v171;
        if (v171 + v167 <= v68)
        {
          continue;
        }

        break;
      }

LABEL_152:
      v167 *= 2;
      if (v168 < v68)
      {
        continue;
      }

      break;
    }

LABEL_198:
    *&v1031[24] = v58;
    coder::array_base<float,int,2>::ensureCapacity(v1031, v58);
    v62 = v958;
    v57 = v959;
    v61 = v965;
    v213 = 0;
    v60 = v1049;
    v214 = v1058[0] - 4;
    v215 = *v1031;
    do
    {
      *(v215 + 4 * v213) = *&v214[4 * *&v60[4 * v213]];
      ++v213;
    }

    while (v58 != v213);
LABEL_200:
    v121 = v974;
LABEL_201:
    v216 = *&v1031[24];
    if (*&v1031[24] >= 1)
    {
      v217 = *v1031;
      v218 = v121;
      do
      {
        v219 = *v217++;
        *v218 = v219;
        v218 += 36288;
        --v216;
      }

      while (v216);
    }

    ++v61;
    ++v977;
    v64 = v121 + 4;
    if (v61 != 9072)
    {
      continue;
    }

    break;
  }

  if (v1047 == 1 && v1046)
  {
    MEMORY[0x22AA53170](v1046, 0x1000C8052888210, v69, v70);
  }

  if (v1051 == 1 && v60)
  {
    MEMORY[0x22AA53170](v60, 0x1000C8052888210, v69, v70);
  }

  if (v1055 == 1 && v1053)
  {
    MEMORY[0x22AA53170](v1053, 0x1000C8052888210, v69, v70);
  }

  if (v1031[16] == 1 && *v1031)
  {
    MEMORY[0x22AA53170](*v1031, 0x1000C8052888210, v69, v70);
  }

  if (LOBYTE(v1058[2]) == 1 && v1058[0])
  {
    MEMORY[0x22AA53170](v1058[0], 0x1000C8052888210, v69, v70);
  }

  v220 = v1010;
  v978 = v1010;
  if (v1010)
  {
    if (v1010 >= 1025)
    {
      v221 = v1010 >> 10;
      v222 = v1010 & 0x3FF;
      v220 = 1024;
      if ((v1010 & 0x3FF) == 0)
      {
        v222 = 1024;
      }

      __dsta = v222;
      if ((v1010 & 0x3FF) != 0)
      {
        ++v221;
      }
    }

    else
    {
      __dsta = 0;
      v221 = 1;
    }

    v989 = v221;
    if ((spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b - v956) >= 0x20)
    {
      v227 = (v956 + 16);
      v228 = &unk_27D0FB850;
      v229 = 9072;
      do
      {
        v230 = *v227;
        *(v228 - 1) = *(v227 - 1);
        *v228 = v230;
        v228 += 2;
        v227 += 2;
        v229 -= 8;
      }

      while (v229);
    }

    else
    {
      v223 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
      v224 = 9072;
      v225 = v956;
      do
      {
        v226 = *v225++;
        *v223 = v226;
        v223 = (v223 + 4);
        --v224;
      }

      while (v224);
    }

    if (v220 >= 2)
    {
      v504 = (v220 + 1);
      v505 = 2;
      do
      {
        v506 = (0x237000000000 * v505 - 0x237000000000) >> 30;
        v507 = &v956[v506];
        if (&v956[v506 + 36288] <= spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b || v507 >= isInitialized_spot_finder_peridot)
        {
          v509 = &v956[v506 + 16];
          v510 = &unk_27D0FB850;
          v511 = 9072;
          do
          {
            v512 = vaddq_f32(*v510, *v509);
            v510[-1] = vaddq_f32(v510[-1], v509[-1]);
            *v510 = v512;
            v510 += 2;
            v509 += 2;
            v511 -= 8;
          }

          while (v511);
        }

        else
        {
          v513 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
          v514 = 9072;
          do
          {
            v515 = *v507++;
            *v513 = *v513 + v515;
            ++v513;
            --v514;
          }

          while (v514);
        }

        ++v505;
      }

      while (v505 != v504);
    }

    if (v989 >= 2)
    {
      v231 = 0;
      v232 = 2;
      v233 = 9298800;
      do
      {
        memcpy(v1058, &v956[(0x8DC00000000000 * v231 + 0x8DC00000000000) >> 30], 0x8DC0uLL);
        v234 = __dsta;
        if (v232 != v989)
        {
          v234 = 1024;
        }

        if (v234 > 1)
        {
          v235 = (v234 + 1);
          v236 = v233;
          v237 = 2;
          do
          {
            v238 = &v956[4 * v236 + 16];
            v239 = &v1058[2];
            v240 = 9072;
            do
            {
              v241 = vaddq_f32(*v239, *v238);
              v239[-1] = vaddq_f32(v239[-1], v238[-1]);
              *v239 = v241;
              v239 += 2;
              v238 += 2;
              v240 -= 8;
            }

            while (v240);
            ++v237;
            v236 += 9072;
          }

          while (v237 != v235);
        }

        v242 = 0xFFFFFFFFFFFF7240;
        do
        {
          v243 = &spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v242 / 0x10];
          v244 = vaddq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v242 / 0x10 + 2269], *&v1058[v242 / 8 + 4538]);
          v243[2268] = vaddq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v242 / 0x10 + 2268], *&v1058[v242 / 8 + 4536]);
          v243[2269] = v244;
          v242 += 32;
        }

        while (v242);
        ++v232;
        ++v231;
        v233 += 9289728;
      }

      while (v231 != v989 - 1);
    }
  }

  else
  {
    bzero(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b, 0x8DC0uLL);
  }

  v245 = 1.0 / v978;
  v246 = &unk_27D0FB850;
  v247 = 9072;
  do
  {
    v248 = vmulq_n_f32(*v246, v245);
    v246[-1] = vmulq_n_f32(v246[-1], v245);
    *v246 = v248;
    v246 += 2;
    v247 -= 8;
  }

  while (v247);
  v1009 = 0x6C00000054;
  v1010 = v959;
  coder::array_base<float,int,2>::ensureCapacity(v1007, 9072 * v959);
  if (v959 > 0)
  {
    v249 = 0;
    v250 = v1007[0];
    v251 = v1007[0] - spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
    v252 = v1007[0];
    do
    {
      v253 = (9072 * v249);
      if (v959 == 1)
      {
        v253 = 0;
      }

      v254 = v957 + 4 * v253;
      _CF = (v251 + 36288 * v249) >= 0x20 && v250 + 36288 * v249 - v254 >= 0x20;
      if (_CF)
      {
        v260 = 0;
        v261 = 108;
        do
        {
          v262 = vsubq_f32(*(v254 + v260 * 16 + 16), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 1]);
          v263 = &v252[v260 * 16];
          *v263 = vsubq_f32(*(v254 + v260 * 16), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260]);
          v263[1] = v262;
          v264 = vsubq_f32(*(v254 + v260 * 16 + 48), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 3]);
          v263[2] = vsubq_f32(*(v254 + v260 * 16 + 32), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 2]);
          v263[3] = v264;
          v265 = vsubq_f32(*(v254 + v260 * 16 + 80), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 5]);
          v263[4] = vsubq_f32(*(v254 + v260 * 16 + 64), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 4]);
          v263[5] = v265;
          v266 = vsubq_f32(*(v254 + v260 * 16 + 112), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 7]);
          v263[6] = vsubq_f32(*(v254 + v260 * 16 + 96), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 6]);
          v263[7] = v266;
          v267 = vsubq_f32(*(v254 + v260 * 16 + 144), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 9]);
          v263[8] = vsubq_f32(*(v254 + v260 * 16 + 128), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 8]);
          v263[9] = v267;
          v268 = vsubq_f32(*(v254 + v260 * 16 + 176), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 11]);
          v263[10] = vsubq_f32(*(v254 + v260 * 16 + 160), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 10]);
          v263[11] = v268;
          v269 = vsubq_f32(*(v254 + v260 * 16 + 208), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 13]);
          v263[12] = vsubq_f32(*(v254 + v260 * 16 + 192), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 12]);
          v263[13] = v269;
          v270 = vsubq_f32(*(v254 + v260 * 16 + 240), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 15]);
          v263[14] = vsubq_f32(*(v254 + v260 * 16 + 224), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 14]);
          v263[15] = v270;
          v271 = vsubq_f32(*(v254 + v260 * 16 + 272), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 17]);
          v263[16] = vsubq_f32(*(v254 + v260 * 16 + 256), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 16]);
          v263[17] = v271;
          v272 = vsubq_f32(*(v254 + v260 * 16 + 304), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 19]);
          v263[18] = vsubq_f32(*(v254 + v260 * 16 + 288), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 18]);
          v263[19] = v272;
          v263[20].f32[0] = *(v254 + v260 * 16 + 320) - *&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 20];
          v263[20].f32[1] = *(v254 + v260 * 16 + 324) - *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 20] + 1);
          v263[20].f32[2] = *(v254 + v260 * 16 + 328) - *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 20] + 2);
          v263[20].f32[3] = *(v254 + v260 * 16 + 332) - *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v260 + 20] + 3);
          v260 += 21;
          --v261;
        }

        while (v261);
      }

      else
      {
        v256 = 0;
        v257 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
        v258 = v252;
        do
        {
          for (j = 0; j != 336; j += 4)
          {
            *&v258[j] = *(v254 + j) - *(v257 + j);
          }

          ++v256;
          v258 += 336;
          v257 += 21;
          v254 += 336;
        }

        while (v256 != 108);
      }

      ++v249;
      v252 += 36288;
    }

    while (v249 != v959);
  }

  v273 = v1010;
  v1013 = 0x6C00000054;
  v1014 = v1010;
  v274 = 9072 * v1010;
  coder::array_base<float,int,2>::ensureCapacity(v1011, 9072 * v1010);
  v45 = v964;
  if (v273 >= 1)
  {
    v275 = 0;
    v276 = v1007[0];
    v277 = v1011[0];
    v278 = v274 <= 1 ? 1 : v274;
    if (v274 < 8)
    {
      goto LABEL_275;
    }

    if (v1011[0] - v1007[0] < 0x20)
    {
      goto LABEL_275;
    }

    v275 = v278 & 0x7FFFFFF0;
    v279 = (v1011[0] + 16);
    v280 = (v1007[0] + 16);
    v281 = v275;
    do
    {
      v282 = vmaxnmq_f32(*v280, 0);
      v279[-1] = vmaxnmq_f32(v280[-1], 0);
      *v279 = v282;
      v279 += 2;
      v280 += 2;
      v281 -= 8;
    }

    while (v281);
    if (v275 != v278)
    {
LABEL_275:
      v283 = v278 - v275;
      v284 = 4 * v275;
      v285 = (v277 + v284);
      v286 = &v276[v284];
      do
      {
        v287 = *v286++;
        *v285++ = fmaxf(v287, 0.0);
        --v283;
      }

      while (v283);
    }
  }

LABEL_277:
  if (v45 > 199)
  {
    goto LABEL_278;
  }

  for (k = 0; k != 180; ++k)
  {
    LODWORD(__dste) = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv1[k];
    v991 = expf(COERCE_FLOAT(HIDWORD(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv1[k])));
    *&v293 = expf(__dste);
    *(&v293 + 1) = v991;
    *&v1040[k * 8] = v293;
  }

  v290 = expf(-950.98);
  v291 = 0;
LABEL_284:
  v1041 = v290;
  v294 = *(v971 + 4);
  LODWORD(v1030) = 1;
  HIDWORD(v1030) = v294;
  if (SHIDWORD(v1028) < v294)
  {
    if (SHIDWORD(v1028) <= 16)
    {
      v295 = 16;
    }

    else
    {
      v295 = HIDWORD(v1028);
    }

    if (v294 >= 17)
    {
      do
      {
        if (v295 <= 0x3FFFFFFF)
        {
          v295 *= 2;
        }

        else
        {
          v295 = 0x7FFFFFFF;
        }
      }

      while (v295 < v294);
    }

    coder::detail::data_ptr<cell_wrap_0,int>::reserve(&v1027, v295);
  }

  coder::detail::data_ptr<cell_wrap_0,int>::reserve(&v1027, v294);
  LODWORD(v1028) = v294;
  v296 = *(v971 + 4);
  LODWORD(v1026) = 1;
  HIDWORD(v1026) = v296;
  if (SHIDWORD(v1024) < v296)
  {
    if (SHIDWORD(v1024) <= 16)
    {
      v297 = 16;
    }

    else
    {
      v297 = HIDWORD(v1024);
    }

    if (v296 >= 17)
    {
      do
      {
        if (v297 <= 0x3FFFFFFF)
        {
          v297 *= 2;
        }

        else
        {
          v297 = 0x7FFFFFFF;
        }
      }

      while (v297 < v296);
    }

    coder::detail::data_ptr<cell_wrap_1,int>::reserve(&v1023, v297);
  }

  coder::detail::data_ptr<cell_wrap_1,int>::reserve(&v1023, v296);
  v992 = v291;
  LODWORD(v1024) = v296;
  if (v979 >= 1)
  {
    v299 = v1011[0];
    v300 = v1027;
    v301 = 1;
    do
    {
      v302 = v301 - 1;
      memmove(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b, (v299 + 36288 * v302), 0x8DC0uLL);
      findSpotsPeaksDan(v1040, v1000, v300 + 32 * v302);
      v303 = v1023;
      v304 = (v1023 + 32 * v1026 * v302);
      v305 = v1002;
      v304[6] = v1002;
      v304[7] = 2;
      v306 = 2 * v305;
      coder::array_base<float,int,2>::ensureCapacity(v304, 2 * v305);
      v298.i64[0] = 0xBF000000BF000000;
      v298.i64[1] = 0xBF000000BF000000;
      if (v305 >= 1)
      {
        v307 = 0;
        v308 = v1000[0];
        v309 = *(v303 + 32 * v302);
        v310 = v306 <= 1 ? 1 : v306;
        if (v306 < 8)
        {
          goto LABEL_316;
        }

        if (v309 - v1000[0] < 0x20)
        {
          goto LABEL_316;
        }

        v307 = v310 & 0x7FFFFFF8;
        v311 = v309 + 1;
        v312 = (v1000[0] + 16);
        v313 = v307;
        do
        {
          v314 = vaddq_f32(*v312, v298);
          v311[-1] = vaddq_f32(v312[-1], v298);
          *v311 = v314;
          v311 += 2;
          v312 += 2;
          v313 -= 8;
        }

        while (v313);
        if (v307 != v310)
        {
LABEL_316:
          v315 = v310 - v307;
          v316 = 4 * v307;
          v317 = &v309->f32[v307];
          v318 = (v308 + v316);
          do
          {
            v319 = *v318++;
            *v317++ = v319 + -0.5;
            --v315;
          }

          while (v315);
        }
      }

      _ZF = v301++ == v979;
    }

    while (!_ZF);
  }

  v320 = 0;
  v1042 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv2;
  v1043 = unk_2247BB290;
  v1044 = xmmword_2247BB2A0;
  v321.i32[1] = unk_2247BB4C4;
  *(v1045 + 8) = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv3;
  v322 = 1568;
  *&v1045[0] = 0x42922508420B62C1;
  *(&v1045[1] + 8) = unk_2247BB4C0;
  v323 = 0x421450EF421455ACLL;
  *(&v1045[2] + 8) = xmmword_2247BB4D0;
  *(&v1045[3] + 1) = 0x424CB5AE424CA9E1;
  do
  {
    v323.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv[v320];
    v324 = vmovl_s16(*&vmovl_s8(v323)).u64[0];
    *v324.i32 = v324.i32[0];
    v325 = &v1042 + 4 * v320;
    *(v325 + 28) = v324.i32[0];
    v324.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv1[v320];
    v326 = vmovl_s16(*&vmovl_s8(v324)).u64[0];
    *v326.i32 = v326.i32[0];
    *(v325 + 42) = v326.i32[0];
    v326.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv2[v320];
    v327 = vmovl_s16(*&vmovl_s8(v326)).u64[0];
    *v327.i32 = v327.i32[0];
    *(v325 + 56) = v327.i32[0];
    v298.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv5 + v320);
    *(v325 + 70) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv4 + v320);
    *(v325 + 84) = v298.i32[0];
    v321.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv6 + v320);
    v298.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv7 + v320);
    *(v325 + 98) = v321.i32[0];
    *(v325 + 112) = v298.i32[0];
    v321.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv3[v320];
    v328 = vmovl_s16(*&vmovl_s8(v321)).u64[0];
    *v328.i32 = v328.i32[0];
    *(v325 + 126) = v328.i32[0];
    v328.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv4[v320];
    v329 = vmovl_s16(*&vmovl_s8(v328)).u64[0];
    *v329.i32 = v329.i32[0];
    *(v325 + 140) = v329.i32[0];
    v329.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv5[v320];
    v321 = vmovl_s16(*&vmovl_s8(v329)).u64[0];
    *v321.i32 = v321.i32[0];
    *(v325 + 154) = v321.i32[0];
    v330 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv9 + v320);
    *(v325 + 168) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv8 + v320);
    *(v325 + 182) = v330;
    v298.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv10 + v320);
    v331 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv11 + v320);
    *(v325 + 196) = v298.i32[0];
    *(v325 + 210) = v331;
    v298.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv6[v320];
    v332 = vmovl_s16(*&vmovl_s8(*v298.f32)).u64[0];
    *v332.i32 = v332.i32[0];
    *(v325 + 224) = v332.i32[0];
    v332.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv7[v320];
    v333 = vmovl_s16(*&vmovl_s8(v332)).u64[0];
    *(v325 + 238) = v333.i32[0];
    *(v325 + 252) = v327.i32[0];
    *(v325 + 266) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv12 + v320);
    *(v325 + 280) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv13 + v320);
    *(v325 + 294) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv14 + v320);
    v333.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv15 + v320);
    *(v325 + 308) = v333.i32[0];
    v333.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv8[v320];
    v334 = vmovl_s16(*&vmovl_s8(v333)).u64[0];
    *v334.i32 = v334.i32[0];
    *(v325 + 322) = v334.i32[0];
    v334.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv9[v320];
    v335 = vmovl_s16(*&vmovl_s8(v334)).u64[0];
    *v335.i32 = v335.i32[0];
    v336 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv16 + v320);
    v337 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv17 + v320);
    v338 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv18 + v320);
    v339 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv19 + v320);
    v340 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv20 + v320);
    v341 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv21 + v320);
    v342 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv22 + v320);
    v343 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv23 + v320);
    v344 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv25 + v320);
    v345 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv26 + v320);
    v346 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv27 + v320);
    v347 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv28 + v320);
    v348 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv29 + v320);
    v349 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv30 + v320);
    v350 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv31 + v320);
    v351 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv32 + v320);
    v352 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv33 + v320);
    v353 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv34 + v320);
    v354 = &v1042 + v322;
    *(v354 - 56) = v335.i32[0];
    *(v354 - 28) = v336;
    *(v354 - 14) = v337;
    *v354 = v338;
    *(v354 + 14) = v339;
    v335.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv10[v320];
    v355 = vmovl_s16(*&vmovl_s8(v335)).u64[0];
    *v355.i32 = v355.i32[0];
    *(v354 + 28) = v355.i32[0];
    v355.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv11[v320];
    v356 = vmovl_s16(*&vmovl_s8(v355)).u64[0];
    *v356.i32 = v356.i32[0];
    *(v354 + 42) = v356.i32[0];
    *(v354 + 70) = v340;
    *(v354 + 84) = v341;
    *(v354 + 98) = v342;
    *(v354 + 112) = v343;
    v356.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv12[v320];
    v357 = vmovl_s16(*&vmovl_s8(v356)).u64[0];
    *v357.i32 = v357.i32[0];
    *(v354 + 126) = v357.i32[0];
    v357.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv13[v320];
    v358 = vmovl_s16(*&vmovl_s8(v357)).u64[0];
    *v358.i32 = v358.i32[0];
    *(v354 + 140) = v358.i32[0];
    *(v354 + 168) = v344;
    *(v354 + 182) = v345;
    *(v354 + 196) = v346;
    *(v354 + 210) = v347;
    v358.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv14[v320];
    v359 = vmovl_s16(*&vmovl_s8(v358)).u64[0];
    *v359.i32 = v359.i32[0];
    *(v354 + 224) = v359.i32[0];
    v359.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv15[v320];
    v298.i64[0] = vmovl_s16(*&vmovl_s8(v359)).u64[0];
    *(v354 + 238) = v298.i32[0];
    *(v354 + 56) = v327.i32[0];
    *(v354 + 252) = v327.i32[0];
    *(v354 + 266) = v348;
    *(v354 + 280) = v349;
    *(v354 + 294) = v350;
    *(v354 + 308) = v351;
    v327.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv16[v320];
    v360 = vmovl_s16(*&vmovl_s8(v327)).u64[0];
    *v360.i32 = v360.i32[0];
    *(v354 + 322) = v360.i32[0];
    v360.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv17[v320];
    v323 = vmovl_s16(*&vmovl_s8(v360)).u64[0];
    *v323.i32 = v323.i32[0];
    *(v354 + 336) = v323.i32[0];
    *(v354 - 42) = v321.i32[0];
    *(v354 + 154) = v321.i32[0];
    *(v354 + 350) = v321.i32[0];
    *(v354 + 364) = v352;
    *(v354 + 378) = v353;
    ++v320;
    v322 += 4;
  }

  while (v320 != 14);
  if ((v992 & 1) == 0)
  {
    v1042 = *(&v1045[14] + 8);
    v1043 = *(&v1045[15] + 8);
    v1045[1] = *(&v1045[18] + 8);
    v1045[2] = *(&v1045[19] + 8);
    v1044 = *(&v1045[16] + 8);
    v1045[0] = *(&v1045[17] + 8);
    v1045[3] = *(&v1045[20] + 8);
    *(&v1045[21] + 8) = v1045[39];
    *(&v1045[22] + 8) = v1045[40];
    *(&v1045[25] + 8) = v1045[43];
    *(&v1045[26] + 8) = v1045[44];
    *(&v1045[23] + 8) = v1045[41];
    *(&v1045[24] + 8) = v1045[42];
    *(&v1045[27] + 8) = v1045[45];
    v1045[46] = *(&v1045[63] + 8);
    v1045[47] = *(&v1045[64] + 8);
    v1045[50] = *(&v1045[67] + 8);
    v1045[51] = *(&v1045[68] + 8);
    v1045[48] = *(&v1045[65] + 8);
    v1045[49] = *(&v1045[66] + 8);
    v1045[52] = *(&v1045[69] + 8);
    *(&v1045[70] + 8) = v1045[88];
    *(&v1045[71] + 8) = v1045[89];
    *(&v1045[74] + 8) = v1045[92];
    *(&v1045[75] + 8) = v1045[93];
    *(&v1045[72] + 8) = v1045[90];
    *(&v1045[73] + 8) = v1045[91];
    *(&v1045[76] + 8) = v1045[94];
    v1045[95] = *(&v1045[112] + 8);
    v1045[99] = *(&v1045[116] + 8);
    v1045[96] = *(&v1045[113] + 8);
    v1045[100] = *(&v1045[117] + 8);
    v1045[97] = *(&v1045[114] + 8);
    v1045[98] = *(&v1045[115] + 8);
    v1045[101] = *(&v1045[118] + 8);
    *(&v1045[119] + 8) = v1045[137];
    *(&v1045[123] + 8) = v1045[141];
    *(&v1045[120] + 8) = v1045[138];
    *(&v1045[124] + 8) = v1045[142];
    *(&v1045[121] + 8) = v1045[139];
    *(&v1045[122] + 8) = v1045[140];
    *(&v1045[125] + 8) = v1045[143];
    v1045[144] = *(&v1045[161] + 8);
    v1045[148] = *(&v1045[165] + 8);
    v1045[145] = *(&v1045[162] + 8);
    v1045[149] = *(&v1045[166] + 8);
    v1045[146] = *(&v1045[163] + 8);
    v1045[147] = *(&v1045[164] + 8);
    v1045[150] = *(&v1045[167] + 8);
    *(&v1045[168] + 8) = v1045[186];
    *(&v1045[172] + 8) = v1045[190];
    *(&v1045[169] + 8) = v1045[187];
    *(&v1045[173] + 8) = v1045[191];
    *(&v1045[170] + 8) = v1045[188];
    *(&v1045[171] + 8) = v1045[189];
    *(&v1045[174] + 8) = v1045[192];
  }

  (runHomography)(&v1023, &v1042, &v1027, v966, v971, v967, v961, v1035, &v1037, v997, v960, &v1032, v968 + 72);
  v362 = 0;
  v363 = 0;
  v364 = &v1049 + 1;
  do
  {
    v365 = *&v1035[4 * v362];
    if (v365 == 0.0)
    {
      v366 = v363;
    }

    else
    {
      v366 = 1;
    }

    v363 = v366;
    if (v365 < 0.0)
    {
      break;
    }

    if (v365 > 0.0)
    {
      break;
    }

    v362 += v365 == 0.0;
  }

  while (v362 < 3);
  v367 = 0;
  v996[0] = v366;
  for (m = 3; m < 6; m += v369 == 0.0)
  {
    v369 = *&v1035[4 * m];
    if (v369 == 0.0)
    {
      v370 = v367;
    }

    else
    {
      v370 = 1;
    }

    v367 = v370;
    if (v369 < 0.0)
    {
      break;
    }

    if (v369 > 0.0)
    {
      break;
    }
  }

  v371 = 0;
  v996[1] = v370;
  for (n = 6; n < 9; n += v373 == 0.0)
  {
    v373 = *&v1035[4 * n];
    if (v373 == 0.0)
    {
      v374 = v371;
    }

    else
    {
      v374 = 1;
    }

    v371 = v374;
    if (v373 < 0.0)
    {
      break;
    }

    if (v373 > 0.0)
    {
      break;
    }
  }

  v375 = 0;
  v996[2] = v374;
  v376 = 1;
  do
  {
    v377 = v996[v375];
    if (v996[v375])
    {
      ++v375;
    }

    if (v377)
    {
      v378 = v375 >= 3;
    }

    else
    {
      v376 = 0;
      v378 = 1;
    }
  }

  while (!v378);
  if (!v376)
  {
    v1034 = 0.0;
    memset(v1033, 0, sizeof(v1033));
    v475 = 0.0;
    goto LABEL_633;
  }

  v379 = v1036;
  v380 = vmul_f32(*v1035, 0);
  v381 = vdup_n_s32(0x3F8C035Cu);
  v389.i32[1] = -1088918396;
  v382 = vmla_n_f32(vmla_f32(vrev64_s32(v380), v381, *v1035), 0xBF186C84BEED1A95, *&v1035[8]);
  v383 = vmul_f32(*&v1035[12], 0);
  v384 = vmla_n_f32(vmla_f32(vrev64_s32(v383), v381, *&v1035[12]), 0xBF186C84BEED1A95, *&v1035[20]);
  v385 = vaddv_f32(v380) + *&v1035[8];
  v386 = vaddv_f32(v383) + *&v1035[20];
  v387 = fabsf(v382.f32[0]);
  v388 = (v387 * 7.7371e25) * (v387 * 7.7371e25);
  *v389.i32 = fmaxf(v387, 1.2925e-26);
  if (v387 > 1.2925e-26)
  {
    v388 = 1.0;
  }

  v390 = fabsf(v382.f32[1]);
  v391 = v388 + ((v390 / *v389.i32) * (v390 / *v389.i32));
  v392 = (((*v389.i32 / v390) * (*v389.i32 / v390)) * v388) + 1.0;
  if (v390 <= *v389.i32)
  {
    v390 = *v389.i32;
    v392 = v391;
  }

  v393 = fabsf(v385);
  v394 = v392 + ((v393 / v390) * (v393 / v390));
  v395 = (((v390 / v393) * (v390 / v393)) * v392) + 1.0;
  if (v393 <= v390)
  {
    v395 = v394;
  }

  else
  {
    v390 = v393;
  }

  *v361.i32 = sqrtf(v395) * v390;
  v396 = fabsf(v384.f32[0]);
  v397 = fmaxf(v396, 1.2925e-26);
  if (v396 <= 1.2925e-26)
  {
    v398 = (v396 * 7.7371e25) * (v396 * 7.7371e25);
  }

  else
  {
    v398 = 1.0;
  }

  v399 = fabsf(v384.f32[1]);
  v400 = v398 + ((v399 / v397) * (v399 / v397));
  v401 = (((v397 / v399) * (v397 / v399)) * v398) + 1.0;
  if (v399 <= v397)
  {
    v399 = v397;
    v401 = v400;
  }

  v402 = fabsf(v386);
  v403 = v401 + ((v402 / v399) * (v402 / v399));
  v404 = (((v399 / v402) * (v399 / v402)) * v401) + 1.0;
  if (v402 > v399)
  {
    v405 = v402;
  }

  else
  {
    v405 = v399;
  }

  if (v402 <= v399)
  {
    v404 = v403;
  }

  *v389.i32 = sqrtf(v404) * v405;
  _D4 = vdiv_f32(v382, vdup_lane_s32(v361, 0));
  _D0 = vdup_lane_s32(v389, 0);
  v407 = vdiv_f32(v384, _D0);
  v973 = *v389.i32;
  v975 = *v361.i32;
  v408 = v385 / *v361.i32;
  _D0.f32[0] = v386 / *v389.i32;
  v410 = vdup_lane_s32(_D4, 0);
  __asm { FMLA            S1, S0, V4.S[1] }

  v410.f32[0] = v385 / *v361.i32;
  v412 = vdup_lane_s32(v407, 0);
  v413.i32[3] = v412.i32[1];
  v412.i32[0] = _D0.i32[0];
  v414 = vmla_f32(vneg_f32(vmul_f32(v412, _D4)), v410, v407);
  v415.i32[0] = vdup_lane_s32(v407, 1).u32[0] & 0x7FFFFFFF;
  v415.i32[1] = _D0.i32[0] & 0x7FFFFFFF;
  v415.i32[2] = _S1 & 0x7FFFFFFF;
  v415.i32[3] = vdup_lane_s32(v414, 0).i32[1] & 0x7FFFFFFF;
  v413.i64[0] = *&_D4 & 0x7FFFFFFF7FFFFFFFLL;
  v413.i32[2] = LODWORD(v408) & 0x7FFFFFFF;
  v413.i32[3] &= ~0x80000000;
  v416.i64[0] = 0x7F0000007FLL;
  v416.i64[1] = 0x7F0000007FLL;
  v417 = vnegq_f32(v416);
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v413, v417), vcgeq_s32(v415, v417)))) & 1) != 0 || (HIDWORD(v414) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    _D0.i32[0] = rtNaNF;
    v476 = vdupq_lane_s32(_D0, 0);
    LODWORD(v477) = rtNaNF;
    v1033[0] = v476;
    v1033[1] = v476;
    v1034 = *&rtNaNF;
    v478 = v476;
    v479 = v476;
    v480 = *v476.f32;
    v481 = *v476.f32;
    goto LABEL_583;
  }

  v418 = 0;
  v419 = 0;
  v420 = 0;
  LODWORD(v1054) = 0;
  v1053 = 0;
  v421 = &v1053;
  LODWORD(v1050) = 0;
  v1049 = 0;
  DWORD2(v1046) = 0;
  *&v1046 = 0;
  v1058[0] = _D4;
  *&v1058[1] = v408;
  memset(v1033, 0, 28);
  *(&v1058[1] + 4) = v407;
  HIDWORD(v1058[2]) = _D0.i32[0];
  LODWORD(v1058[3]) = _S1;
  v422 = 1;
  v423 = 3;
  v424 = 4;
  memset(v1031, 0, sizeof(v1031));
  *(&v1058[3] + 4) = v414;
  v425 = 0.0;
  while (2)
  {
    v426 = 4 * v420;
    v427 = 4 * v420 + 4;
    v428 = v420;
    v429 = (4 * v420) | 1;
    v430 = v429 + (v420 ^ 3);
    v431 = &v1058[2 * v420];
    v432 = fabsf(*v431);
    v433 = (v432 * 7.7371e25) * (v432 * 7.7371e25);
    if (v432 <= 1.2925e-26)
    {
      v432 = 1.2925e-26;
    }

    else
    {
      v433 = 1.0;
    }

    if ((v426 | 2) < v430)
    {
      v434 = fabsf(*&v1057[4 * (v426 | 2)]);
      v435 = (((v432 / v434) * (v432 / v434)) * v433) + 1.0;
      v433 = v433 + ((v434 / v432) * (v434 / v432));
      if (v434 > v432)
      {
        v433 = v435;
        v432 = v434;
      }

      if ((v426 | 3) < v430)
      {
        v436 = fabsf(*&v1057[4 * (v426 | 3)]);
        v437 = (((v432 / v436) * (v432 / v436)) * v433) + 1.0;
        v433 = v433 + ((v436 / v432) * (v436 / v432));
        if (v436 > v432)
        {
          v433 = v437;
          v432 = v436;
        }

        if (v427 < v430)
        {
          v438 = fabsf(*&v1057[4 * v427]);
          v439 = (((v432 / v438) * (v432 / v438)) * v433) + 1.0;
          v433 = v433 + ((v438 / v432) * (v438 / v432));
          if (v438 > v432)
          {
            v433 = v439;
            v432 = v438;
          }

          if (v426 + 5 < v430)
          {
            v440 = fabsf(*&v1057[4 * v426 + 20]);
            v441 = (((v432 / v440) * (v432 / v440)) * v433) + 1.0;
            v433 = v433 + ((v440 / v432) * (v440 / v432));
            if (v440 > v432)
            {
              v433 = v441;
              v432 = v440;
            }

            if (v426 + 6 < v430)
            {
              v442 = fabsf(*&v1057[4 * v426 + 24]);
              v443 = (((v432 / v442) * (v432 / v442)) * v433) + 1.0;
              v433 = v433 + ((v442 / v432) * (v442 / v432));
              if (v442 > v432)
              {
                v433 = v443;
                v432 = v442;
              }

              if (v426 + 7 < v430)
              {
                v444 = fabsf(*&v1057[4 * v426 + 28]);
                if (v444 <= v432)
                {
                  v433 = v433 + ((v444 / v432) * (v444 / v432));
                }

                else
                {
                  v433 = (((v432 / v444) * (v432 / v444)) * v433) + 1.0;
                  v432 = v444;
                }
              }
            }
          }
        }
      }
    }

    v445 = -4 * v420;
    v446 = v432 * sqrtf(v433);
    if (v446 <= 0.0)
    {
      *v421 = 0.0;
      *v364 = *(v1058 + v423 + v420);
      if (v419)
      {
        goto LABEL_437;
      }

      v447 = v420 | 6;
      goto LABEL_422;
    }

    if (*v431 >= 0.0)
    {
      v448 = v446;
    }

    else
    {
      v448 = -v446;
    }

    v449 = (v429 - v420) | 2;
    if (v446 < 9.8608e-32)
    {
      if (v426 >= v449)
      {
        goto LABEL_413;
      }

      *&v1058[v418] = *&v1058[v418] / v448;
      v450 = v418 * 2 + 2;
      if (v418 * 2 + 2 == v424)
      {
        goto LABEL_413;
      }

      *(&v1058[v418] + 1) = *(&v1058[v418] + 1) / v448;
      if (v418 * 2 + 3 == v424)
      {
        goto LABEL_413;
      }

LABEL_412:
      *(v1058 + v450) = *(v1058 + v450) / v448;
      goto LABEL_413;
    }

    if (v426 < v449)
    {
      *&v1058[v418] = *&v1058[v418] / v448;
      if (v418 * 2 + 2 != v424)
      {
        *(&v1058[v418] + 1) = *(&v1058[v418] + 1) / v448;
        if (v418 * 2 + 3 != v424)
        {
          v450 = v422 + 1;
          goto LABEL_412;
        }
      }
    }

LABEL_413:
    v451.i32[0] = *(v431 + 1);
    v452 = *v431 + 1.0;
    *v431 = v452;
    *v421 = -v448;
    v453 = v1058 + v423 + v420;
    v454 = *v453;
    v455 = v453[1];
    v456 = (*v453 * v452) + (v455 * v451.f32[0]);
    if ((v419 & 1) == 0)
    {
      v458 = *(v431 + 2);
      v457 = -(v456 + (v453[2] * v458)) / v452;
      if (v457 != 0.0)
      {
        goto LABEL_418;
      }

      *v364 = v454;
      v451.f32[1] = v458;
LABEL_420:
      v447 = v420 | 6;
      v459 = v1058 + 4 * v447;
      v460 = *(v459 + 4);
      v461 = vmul_f32(v460, v451);
      v462 = -(v461.f32[1] + (v461.f32[0] + (*v459 * v452))) / v452;
      if (v462 != 0.0)
      {
        *v459 = *v459 + (v452 * v462);
        *(v459 + 4) = vmla_n_f32(v460, *(v431 + 4), v462);
      }

LABEL_422:
      v463 = *(v1058 + v447);
      *&v1050 = v463;
      memcpy(&v1033[v428], v431, v445 + 12);
      v465 = fabsf(*(&v1049 + 1));
      v466.f32[0] = (v465 * 7.7371e25) * (v465 * 7.7371e25);
      if (v465 <= 1.2925e-26)
      {
        v465 = 1.2925e-26;
      }

      else
      {
        v466.f32[0] = 1.0;
      }

      v467 = fabsf(v463);
      v468 = (((v465 / v467) * (v465 / v467)) * v466.f32[0]) + 1.0;
      v469 = v466.f32[0] + ((v467 / v465) * (v467 / v465));
      if (v467 > v465)
      {
        v469 = v468;
        v465 = v467;
      }

      v470 = v465 * sqrtf(v469);
      if (v470 == 0.0)
      {
        LODWORD(v1049) = 0;
        v425 = 0.0;
      }

      else
      {
        if (*(&v1049 + 1) < 0.0)
        {
          v470 = -v470;
        }

        v466.f32[0] = v463 / v470;
        v464.f32[0] = (*(&v1049 + 1) / v470) + 1.0;
        __dstb = v464;
        v993 = v466;
        v425 = -v470;
        *(&v1049 + 1) = v464.f32[0];
        LODWORD(v1050) = v466.i32[0];
        *&v1049 = -v470;
        bzero(&v1046 + v427, v445 + 8);
        v471 = vbsl_s8(vdup_lane_s32(vceq_f32(__dstb, 0), 0), *(&v1046 + 4), vmla_n_f32(*(&v1046 + 4), v1058[2], __dstb.f32[0]));
        v472 = vbsl_s8(vdup_lane_s32(vceq_f32(v993, 0), 0), v471, vmla_n_f32(v471, *(&v1058[3] + 4), v993.f32[0]));
        *(&v1046 + 4) = v472;
        v473 = -__dstb.f32[0] / __dstb.f32[0];
        if (v473 != 0.0)
        {
          v1058[2] = vmla_n_f32(v1058[2], v472, v473);
        }

        v474 = -v993.f32[0] / __dstb.f32[0];
        if (v474 != 0.0)
        {
          *(&v1058[3] + 4) = vmla_n_f32(*(&v1058[3] + 4), v472, v474);
        }
      }

      memcpy(&v1031[v427], &v1049 + v427, v445 + 8);
      v422 += 4;
      v424 += 3;
      v418 += 2;
      v419 = 1;
      v421 = &v1053 + 1;
      v420 = 1;
      v364 = &v1050;
      v423 = 6;
      continue;
    }

    break;
  }

  v457 = -v456 / v452;
  if (v457 == 0.0)
  {
    goto LABEL_436;
  }

LABEL_418:
  v454 = v454 + (v452 * v457);
  *v453 = v454;
  v453[1] = v455 + (*(v431 + 1) * v457);
  if ((v419 & 1) == 0)
  {
    v453[2] = v453[2] + (*(v431 + 2) * v457);
    *v364 = v454;
    v452 = *v431;
    v451 = *(v431 + 4);
    goto LABEL_420;
  }

LABEL_436:
  *v364 = v454;
LABEL_437:
  memcpy(&v1033[v428], v431, v445 + 12);
  v491 = *(&v1058[3] + 1);
  v490 = *&v1058[4];
  LODWORD(v1054) = v1058[4];
  HIDWORD(v1049) = HIDWORD(v1058[3]);
  LODWORD(v1050) = 0;
  v1034 = 1.0;
  *(&v1033[1] + 1) = 0;
  v492 = *(&v1053 + 1);
  if (*(&v1053 + 1) == 0.0)
  {
    DWORD1(v1033[1]) = 0;
    *(v1033 + 12) = 0x3F80000000000000;
    v496 = 1.0;
    v493 = 0.0;
    v495 = 0.0;
    v497 = 1.0;
  }

  else
  {
    v493 = -*(&v1033[1] + 1);
    v494 = -*(&v1033[1] + 1) / *&v1033[1];
    v495 = 0.0;
    v496 = 1.0;
    if (v494 != 0.0)
    {
      v495 = v494 * *&v1033[1];
      *(&v1033[1] + 3) = v494 * *&v1033[1];
      v496 = (v494 * *(&v1033[1] + 1)) + 1.0;
      v1034 = v496;
    }

    *(&v1033[1] + 1) = -*(&v1033[1] + 1);
    v497 = 1.0 - *&v1033[1];
    *&v1033[1] = 1.0 - *&v1033[1];
    HIDWORD(v1033[0]) = 0;
  }

  v498 = *&v1053;
  if (*&v1053 == 0.0)
  {
    *(v1033 + 4) = 0;
    v502 = 1.0;
    v499 = 0.0;
    v501 = 0.0;
    v503 = 0.0;
    v487.i64[0] = 0;
  }

  else
  {
    v499 = 0.0;
    v500 = -(((*v1033 * 0.0) + (*(v1033 + 1) * v497)) + (*(v1033 + 2) * v493)) / *v1033;
    if (v500 == 0.0)
    {
      v501 = 0.0;
    }

    else
    {
      v501 = v500 * *v1033;
      v497 = v497 + (v500 * *(v1033 + 1));
      *(v1033 + 3) = v500 * *v1033;
      *&v1033[1] = v497;
      v493 = v493 + (v500 * *(v1033 + 2));
      *(&v1033[1] + 1) = v493;
    }

    v516 = -(((*v1033 * 0.0) + (*(v1033 + 1) * v495)) + (*(v1033 + 2) * v496)) / *v1033;
    if (v516 != 0.0)
    {
      v499 = v516 * *v1033;
      v495 = v495 + (v516 * *(v1033 + 1));
      *(&v1033[1] + 2) = v516 * *v1033;
      *(&v1033[1] + 3) = v495;
      v496 = v496 + (v516 * *(v1033 + 2));
      v1034 = v496;
    }

    *v487.i32 = -*(v1033 + 1);
    v503 = -*(v1033 + 2);
    *(v1033 + 1) = -*(v1033 + 1);
    *(v1033 + 2) = -*(v1033 + 2);
    v502 = 1.0 - *v1033;
  }

  *v1033 = v502;
  *&v1031[28] = 0x3F80000000000000;
  *&v1031[12] = xmmword_2247A5180;
  if (v425 == 0.0)
  {
    v485.i64[0] = 0;
    v518 = 1.0;
    v519 = 0.0;
    v520 = 1.0;
  }

  else
  {
    v517 = -*&v1031[4] / *&v1031[4];
    v518 = 1.0;
    v485.i64[0] = 0;
    v519 = 0.0;
    v520 = 1.0;
    if (v517 != 0.0)
    {
      v520 = (v517 * *&v1031[4]) + 1.0;
      v519 = v517 * *&v1031[8];
      *&v1031[16] = v520;
      *&v1031[20] = v517 * *&v1031[8];
    }

    v521 = -*&v1031[8] / *&v1031[4];
    if (v521 != 0.0)
    {
      *v485.i32 = v521 * *&v1031[4];
      v518 = (v521 * *&v1031[8]) + 1.0;
      *&v1031[28] = v521 * *&v1031[4];
      *&v1031[32] = v518;
    }
  }

  *&v1031[8] = 0;
  *v1031 = 1065353216;
  if (*&v1053 == 0.0)
  {
    if (v425 != 0.0)
    {
LABEL_470:
      LODWORD(v1049) = fabsf(v425);
      v492 = (*&v1049 / v425) * *(&v1053 + 1);
      *(&v1053 + 1) = v492;
      v487.i32[1] = 0;
      *&v1031[12] = (*&v1049 / v425) * 0.0;
      *&v1031[16] = v520 * (*&v1049 / v425);
      *&v1031[20] = v519 * (*&v1049 / v425);
      v425 = *&v1049;
    }
  }

  else
  {
    v522 = fabsf(*&v1053);
    v523 = *&v1053 / v522;
    *&v1053 = v522;
    v425 = v425 / v523;
    *&v1049 = v425;
    *v1033 = v502 * v523;
    *(v1033 + 1) = *v487.i32 * v523;
    *(v1033 + 2) = v503 * v523;
    v498 = v522;
    if (v425 != 0.0)
    {
      goto LABEL_470;
    }
  }

  v524 = fmaxf(fabsf(v498), fabsf(v425));
  if (v492 != 0.0)
  {
    v525 = fabsf(v492);
    v526 = v492 / v525;
    *(&v1053 + 1) = v525;
    v491 = *(&v1058[3] + 1) / v526;
    *(&v1049 + 1) = *(&v1058[3] + 1) / v526;
    *(v1033 + 3) = v501 * v526;
    *&v1033[1] = v497 * v526;
    *(&v1033[1] + 1) = v493 * v526;
    v492 = v525;
  }

  v527 = fmaxf(v524, 0.0);
  if (v491 != 0.0)
  {
    v528 = fabsf(v491);
    v529 = v528 / v491;
    *(&v1049 + 1) = v528;
    v490 = v529 * *&v1058[4];
    *&v1054 = v529 * *&v1058[4];
    _Q17.i32[1] = 0;
    *&v1031[24] = v529 * 0.0;
    *&v1031[28] = *v485.i32 * v529;
    *&v1031[32] = v518 * v529;
    v491 = v528;
  }

  v530 = fmaxf(v527, fmaxf(fabsf(v492), fabsf(v491)));
  if (v490 != 0.0)
  {
    LODWORD(v1054) = fabsf(v490);
    v531 = v490 / *&v1054;
    *(&v1033[1] + 2) = v499 * v531;
    *(&v1033[1] + 3) = v495 * v531;
    v1034 = v496 * v531;
    v490 = *&v1054;
  }

  v532 = 0;
  v533 = fmaxf(v530, fmaxf(fabsf(v490), 0.0)) * 0.00000011921;
  v534 = 1;
  v535 = 3;
  while (2)
  {
    v536 = v534 + 1;
    if (v534 == -1)
    {
LABEL_495:
      v545 = 0;
      if (v534 != -1)
      {
        goto LABEL_505;
      }

      goto LABEL_496;
    }

    v537 = v534;
    v538 = *(&v1053 + v534 + 1);
    while (1)
    {
      v539 = fabsf(*(&v1049 + v537));
      v540 = fabsf(v538);
      v538 = *(&v1053 + v537);
      v541 = (fabsf(v538) + v540) * 0.00000011921;
      v542 = v539 > v533 || v532 < 21;
      v543 = v542;
      v544 = v539 > 9.8608e-32 && v539 > v541;
      if (!v544 || !v543)
      {
        break;
      }

      if (--v537 == -1)
      {
        goto LABEL_495;
      }
    }

    v545 = v537 + 1;
    *(&v1049 + v537) = 0;
    if (v537 + 1 == v536)
    {
LABEL_496:
      v546 = *(&v1053 + v536);
      if (v546 < 0.0)
      {
        v546 = -v546;
        *(&v1053 + v536) = v546;
        v547 = &v1031[12 * v536];
        _Q16.i64[0] = *v547;
        _Q16.i32[2] = *(v547 + 2);
        _Q16 = vnegq_f32(_Q16);
        *(v547 + 2) = _Q16.i32[2];
        *v547 = _Q16.i64[0];
      }

      if (v534 <= 0)
      {
        v548 = v534 - 1;
        v549 = 12 * v534;
        v550 = &v1054 + v534;
        v551 = v1033;
        v552 = v1031;
        do
        {
          if (v546 >= *v550)
          {
            break;
          }

          v553 = &v552[v549];
          v555 = *&v552[v549 + 16];
          v554 = *&v552[v549 + 24];
          _Q17.i32[2] = *&v552[v549 + 32];
          _Q17.i32[3] = *&v552[v549 + 12];
          *(v550 - 1) = *v550;
          *v550 = v546;
          *(v553 + 12) = _Q17;
          *(v553 + 28) = v555;
          v556 = v551 + v549;
          _Q17.i64[0] = *(v551 + v549 + 16);
          _Q16.i64[0] = *(v551 + v549 + 24);
          _Q16.i32[2] = *(v551 + v549 + 32);
          _Q16.i32[3] = *(v551 + v549 + 12);
          *(v556 + 12) = _Q16;
          *(v556 + 28) = _Q17.i64[0];
          v551 = (v551 + 12);
          ++v550;
          v552 += 12;
          _CF = __CFADD__(v548++, 1);
        }

        while (!_CF);
      }

      v532 = 0;
      --v534;
      goto LABEL_563;
    }

LABEL_505:
    v557 = v535;
    if (v535 >= v545)
    {
      LODWORD(v571) = v535;
      while (v571 != v545)
      {
        v557 = v571;
        v577 = 0.0;
        if (v571 < v535)
        {
          v577 = fabsf(*(&v1049 + v571 - 1));
        }

        if (v571 > v545 + 1)
        {
          v577 = fabsf(*&v1048[v571]) + v577;
        }

        v571 = v571 - 1;
        v572 = fabsf(*(&v1053 + v571));
        v573 = fmaxf(v577 * 0.00000011921, 9.8608e-32);
        v574 = v573 < v572;
        if (v573 >= v572)
        {
          v575 = 0.0;
        }

        else
        {
          v575 = *(&v1053 + v571);
        }

        *(&v1053 + v571) = v575;
        if (v574)
        {
          v576 = v571 < v545;
        }

        else
        {
          LODWORD(v571) = v557;
          v576 = 1;
        }

        if (v576)
        {
          goto LABEL_506;
        }
      }

LABEL_507:
      v558 = *(&v1053 + v536);
      v559 = *(&v1053 + v534);
      v560 = *(&v1049 + v534);
      v561 = *(&v1053 + v545);
      v562 = *(&v1049 + v545);
      v563 = fmaxf(fmaxf(fmaxf(fmaxf(fabsf(v558), fabsf(v559)), fabsf(v560)), fabsf(v561)), fabsf(v562));
      v564 = v558 * (1.0 / v563);
      v565 = v560 * (1.0 / v563);
      v566 = ((v565 * v565) + (((v559 * (1.0 / v563)) + v564) * ((v559 * (1.0 / v563)) - v564))) * 0.5;
      v567 = (v564 * v565) * (v564 * v565);
      if (v567 != 0.0 || (v486.i64[0] = 0, v566 != 0.0))
      {
        v568 = sqrtf(v567 + (v566 * v566));
        if (v566 < 0.0)
        {
          v568 = -v568;
        }

        v486.f32[0] = v567 / (v568 + v566);
      }

      v569 = v561 * (1.0 / v563);
      v570 = v486.f32[0] + ((v569 + v564) * (v569 - v564));
      if (v545 > v534)
      {
LABEL_513:
        *(&v1049 + v534) = v570;
        ++v532;
        goto LABEL_563;
      }

      v582.f32[0] = (v569 * v562) / v563;
      v580 = v545 + 1;
      v581 = 12 * v580;
      v582.f32[1] = v486.f32[0] + ((v569 + v564) * (v569 - v564));
      v583 = 4 * v580 - 4;
      v584 = v1033;
      v585 = v1031;
      v586 = v580;
      while (1)
      {
        v604 = vabs_f32(v582);
        *_Q17.i32 = vaddv_f32(v604);
        v605 = 0;
        _Q16.i64[0] = 0x3F80000000000000;
        if (*_Q17.i32 != 0.0)
        {
          break;
        }

        if (v586 > v580)
        {
          goto LABEL_550;
        }

LABEL_531:
        _S19 = *(&v1049 + v583);
        _S20 = *(&v1053 + v583);
        _Q17.i32[0] = *(&v1053 + v583 + 4);
        __asm { FMLA            S7, S19, V16.S[1] }

        *(&v1049 + v583) = _S7;
        v590 = &v585[v581];
        v486.i32[0] = *&v585[12 * v580];
        v487.i32[0] = *&v585[v581 - 12];
        v488.i64[0] = *&v585[v581 + 4];
        v489.i64[0] = *&v585[v581 - 8];
        *(v590 + 4) = vmla_lane_f32(vneg_f32(vmul_n_f32(*v489.i8, _Q16.f32[0])), *v488.i8, *_Q16.f32, 1);
        v591.i64[0] = vzip1q_s32(v486, v488).u64[0];
        v591.i64[1] = __PAIR64__(v591.u32[0], v489.u32[1]);
        v487.i32[2] = v488.i32[1];
        v592 = vmulq_f32(v591, vzip1q_s32(_Q16, _Q16));
        v593 = vtrn1q_s32(v487, v489);
        v593.i32[3] = v593.i32[0];
        v594 = vrev64q_s32(_Q16);
        v486 = vmulq_f32(v593, vzip1q_s32(v594, v594));
        v487 = vaddq_f32(v592, v486);
        v596 = vsubq_f32(v592, v486);
        v487.i32[3] = v596.i32[3];
        *(v590 - 12) = v487;
        __asm { FMLA            S19, S20, V16.S[1] }

        *v596.i32 = fabsf(_S19);
        v486.f32[0] = fabsf(*_Q17.i32 * _Q16.f32[0]);
        if ((v486.f32[0] + *v596.i32) == 0.0)
        {
          _Q18.i64[0] = 0x3F80000000000000;
          v485.i64[0] = 0;
        }

        else
        {
          if (*v596.i32 <= v486.f32[0])
          {
            v606 = *_Q17.i32 * _Q16.f32[0];
          }

          else
          {
            v606 = _S19;
          }

          v607 = sqrtf(((v486.f32[0] / (v486.f32[0] + *v596.i32)) * (v486.f32[0] / (v486.f32[0] + *v596.i32))) + ((*v596.i32 / (v486.f32[0] + *v596.i32)) * (*v596.i32 / (v486.f32[0] + *v596.i32)))) * (v486.f32[0] + *v596.i32);
          *v485.i32 = -v607;
          if (v606 >= 0.0)
          {
            *v485.i32 = v607;
          }

          v608.f32[1] = _S19;
          v608.f32[0] = *_Q17.i32 * _Q16.f32[0];
          *_Q18.f32 = vdiv_f32(v608, vdup_lane_s32(*v485.i8, 0));
        }

        *_Q17.i32 = vmuls_lane_f32(*_Q17.i32, *_Q16.f32, 1);
        *(&v1053 + v583) = v485.i32[0];
        v570 = vmuls_lane_f32(_S7, *_Q18.f32, 1) + (_Q18.f32[0] * *_Q17.i32);
        __asm { FMLA            S7, S17, V18.S[1] }

        *(&v1053 + v583 + 4) = _S7;
        _Q17.i32[0] = *(&v1049 + v583 + 4);
        v582.f32[0] = *_Q17.i32 * _Q18.f32[0];
        *(&v1049 + v583 + 4) = vmuls_lane_f32(*_Q17.i32, *_Q18.f32, 1);
        v598 = v584 + v581;
        _Q17.i32[0] = *(v584 + 3 * v580);
        v485.i32[0] = *(v584 + v581 - 12);
        v596.i64[0] = *(v584 + v581 + 4);
        v486.i64[0] = *(v584 + v581 - 8);
        *v487.i8 = vmla_lane_f32(vneg_f32(vmul_n_f32(*v486.f32, _Q18.f32[0])), *v596.i8, *_Q18.f32, 1);
        *(v598 + 4) = v487.i64[0];
        v599.i64[0] = vzip1q_s32(_Q17, v596).u64[0];
        v599.i64[1] = __PAIR64__(v599.u32[0], v486.u32[1]);
        v600 = vmulq_f32(v599, vzip1q_s32(_Q18, _Q18));
        v485.i32[2] = v596.i32[1];
        v601 = vtrn1q_s32(v485, v486);
        v601.i32[3] = v601.i32[0];
        v602 = vrev64q_s32(_Q18);
        _Q18 = vmulq_f32(v601, vzip1q_s32(v602, v602));
        v603 = vaddq_f32(v600, _Q18);
        _Q17 = vsubq_f32(v600, _Q18);
        v603.i32[3] = _Q17.i32[3];
        *(v598 - 12) = v603;
        v582.f32[1] = v570;
        v584 = (v584 + 12);
        v585 += 12;
        v583 += 4;
        v542 = v586++ <= v534;
        if (!v542)
        {
          goto LABEL_513;
        }
      }

      v609 = v582.f32[1];
      v610 = vdup_lane_s32(*_Q17.i8, 0);
      if (v604.f32[1] <= v604.f32[0])
      {
        v609 = v582.f32[0];
      }

      v611 = vdiv_f32(v604, v610);
      v612 = sqrtf(vaddv_f32(vmul_f32(v611, v611))) * *_Q17.i32;
      if (v609 >= 0.0)
      {
        *v605.i32 = v612;
      }

      else
      {
        *v605.i32 = -v612;
      }

      *_Q16.f32 = vdiv_f32(v582, vdup_lane_s32(v605, 0));
      if (v586 <= v580)
      {
        goto LABEL_531;
      }

LABEL_550:
      LODWORD(v1049) = v605.i32[0];
      goto LABEL_531;
    }

LABEL_506:
    if (v557 == v545)
    {
      goto LABEL_507;
    }

    if (v557 == v535)
    {
      v578 = *(&v1049 + v534);
      *(&v1049 + v534) = 0;
      v579 = *&v1049;
      if (v534 >= v545)
      {
        v634 = &v1031[12 * v536];
        v635 = v534 + 1;
        v636 = &v1031[12 * v534 + 8];
        v637 = &v1053 + v534;
        do
        {
          v649 = fabsf(*v637);
          v650 = fabsf(v578);
          if ((v649 + v650) == 0.0)
          {
            v638 = 1.0;
            v639 = 0.0;
            v578 = 0.0;
            v640 = 0.0;
          }

          else
          {
            if (v649 <= v650)
            {
              v651 = v578;
            }

            else
            {
              v651 = *v637;
            }

            v652 = sqrtf(((v650 / (v649 + v650)) * (v650 / (v649 + v650))) + ((v649 / (v649 + v650)) * (v649 / (v649 + v650)))) * (v649 + v650);
            v639 = -v652;
            if (v651 >= 0.0)
            {
              v639 = v652;
            }

            v542 = v649 <= v650;
            v638 = *v637 / v639;
            v640 = v578 / v639;
            if (v542)
            {
              if (v638 == 0.0)
              {
                v578 = 1.0;
              }

              else
              {
                v578 = 1.0 / v638;
              }
            }

            else
            {
              v578 = v578 / v639;
            }
          }

          v641 = v635 - 1;
          *v637-- = v639;
          v642 = -(v579 * v640);
          if (v635 > v545 + 1)
          {
            v579 = v638 * v579;
            v578 = v642;
          }

          v643 = *v634;
          v644 = *(v636 - 2);
          *v634 = -((v644 * v640) - (*v634 * v638));
          *(v636 - 2) = (v643 * v640) + (v644 * v638);
          v645 = *(v636 - 1);
          v646 = v634[1];
          v634[1] = -((v645 * v640) - (v646 * v638));
          *(v636 - 1) = (v645 * v638) + (v646 * v640);
          v647 = v634[2];
          v648 = *v636;
          v634[2] = -((*v636 * v640) - (v647 * v638));
          *v636 = (v647 * v640) + (v648 * v638);
          v636 -= 3;
          --v635;
        }

        while (v641 > v545);
      }

      *&v1049 = v579;
    }

    else
    {
      v613 = v557 - 1;
      v614 = *(&v1049 + v613);
      *(&v1049 + v613) = 0;
      if (v557 < v535)
      {
        v615 = 3 * v613;
        v616 = v535 - v557;
        v617 = 4 * v557;
        v618 = (&v1053 + v617);
        v619 = v1033 + 3 * v557 + 1;
        v620 = (&v1049 + v617);
        v621 = v1033 + v615;
        do
        {
          v632 = fabsf(*v618);
          v633 = fabsf(v614);
          if ((v632 + v633) == 0.0)
          {
            v625 = 1.0;
            v624 = 0.0;
            _Q17.i64[0] = 0;
          }

          else
          {
            if (v632 <= v633)
            {
              v622 = v614;
            }

            else
            {
              v622 = *v618;
            }

            v623 = sqrtf(((v633 / (v632 + v633)) * (v633 / (v632 + v633))) + ((v632 / (v632 + v633)) * (v632 / (v632 + v633)))) * (v632 + v633);
            if (v622 >= 0.0)
            {
              v624 = v623;
            }

            else
            {
              v624 = -v623;
            }

            v625 = *v618 / v624;
            *_Q17.i32 = v614 / v624;
          }

          *v618++ = v624;
          v614 = -(*_Q17.i32 * *v620);
          *v620 = *v620 * v625;
          ++v620;
          v626 = *v621;
          v627 = *(v619 - 1);
          *v621 = -((v627 * *_Q17.i32) - (*v621 * v625));
          *(v619 - 1) = (v626 * *_Q17.i32) + (v627 * v625);
          v628 = v621[1];
          v629 = (*v619 * v625) + (v628 * *_Q17.i32);
          v621[1] = -((*v619 * *_Q17.i32) - (v628 * v625));
          *v619 = v629;
          v630 = v621[2];
          v631 = v619[1];
          v621[2] = -((v631 * *_Q17.i32) - (v630 * v625));
          v619[1] = (v630 * *_Q17.i32) + (v631 * v625);
          v619 += 3;
          --v616;
        }

        while (v616);
      }
    }

LABEL_563:
    if (v534 >= -1)
    {
      v535 = v534 + 2;
      if (v532 < 75)
      {
        continue;
      }
    }

    break;
  }

  v477 = *&v1031[32];
  v478 = v1033[0];
  v476 = *(v1033 + 12);
  v479.i64[0] = *(&v1033[1] + 1);
  _D0.f32[0] = v1034;
  v653 = vextq_s8(v476, v476, 8uLL).u64[0];
  v476.i64[1] = *&v1031[12];
  v654 = vextq_s8(v478, v478, 8uLL).u64[0];
  v478.i64[1] = *v1031;
  v479.i64[1] = *&v1031[24];
  v480 = vzip1_s32(*&vextq_s8(*&v1031[12], *&v1031[12], 8uLL), v653);
  v481 = vzip1_s32(*&vextq_s8(*v1031, *v1031, 8uLL), v654);
LABEL_583:
  v655 = vextq_s8(v478, v478, 4uLL);
  v656 = vtrn2q_s32(v655, v655);
  v656.i32[2] = v481.i32[1];
  v657.i32[0] = v481.i32[0];
  v658 = vextq_s8(v476, v476, 4uLL);
  v659 = vtrn2q_s32(v658, v658);
  v659.i32[2] = v480.i32[1];
  v660.i32[0] = v480.i32[0];
  v661 = vmulq_f32(v478, v656);
  v662 = vextq_s8(v479, v479, 4uLL);
  v663 = vtrn2q_s32(v662, v662);
  v663.i32[2] = _D0.i32[0];
  v664 = vmlaq_f32(v661, v659, v476);
  v665 = vdupq_laneq_s32(v478, 3);
  v478.i32[2] = v478.i32[1];
  v657.i32[1] = v665.i32[1];
  v666 = vmlaq_f32(v664, v663, v479);
  *&v657.u32[2] = v481;
  v667 = vdupq_laneq_s32(v476, 3);
  v476.i32[2] = v476.i32[1];
  v660.i32[1] = v667.i32[1];
  *&v660.u32[2] = v480;
  v668 = vdupq_laneq_s32(v479, 3);
  v479.i32[2] = v479.i32[1];
  v668.f32[0] = v477;
  v668.i64[1] = __PAIR64__(_D0.u32[0], LODWORD(v477));
  v669 = vmlaq_f32(vmlaq_f32(vmulq_f32(v478, v657), v660, v476), v668, v479);
  *v1035 = v666;
  *&v1035[16] = vuzp2q_s32(v669, vrev64q_s32(v669));
  v670 = vaddv_f32(vmul_f32(vzip1_s32(v480, v481), vzip2_s32(v480, v481))) + (v477 * _D0.f32[0]);
  v1036 = v670;
  v671 = *&v669.i32[3];
  v994 = v666;
  v672 = fabsf(v670) == INFINITY;
  _ZF = fabsf(*&v669.i32[3]) != INFINITY || !v672;
  if (_ZF)
  {
    if (v670 != 0.0)
    {
      v677 = *&v669.i32[3];
      v676 = v670;
      goto LABEL_600;
    }

    v674 = 1.5708;
    v675 = -1.5708;
    if (*&v669.i32[3] >= 0.0)
    {
      v675 = 0.0;
    }

    if (*&v669.i32[3] <= 0.0)
    {
      v674 = v675;
    }
  }

  else
  {
    v676 = -1.0;
    if (*&v669.i32[3] <= 0.0)
    {
      v677 = -1.0;
    }

    else
    {
      v677 = 1.0;
    }

    if (v670 > 0.0)
    {
      v676 = 1.0;
    }

LABEL_600:
    v674 = atan2f(v677, v676);
    v666.i32[2] = v994.i32[2];
  }

  *v1033 = v674 * 1000.0;
  v678 = -v666.f32[2];
  v679 = sqrtf((v671 * v671) + (v670 * v670));
  v680 = fabsf(v666.f32[2]) == INFINITY;
  if (fabsf(v679) != INFINITY || !v680)
  {
    if (v679 != 0.0)
    {
      goto LABEL_615;
    }

    if (v666.f32[2] >= 0.0)
    {
      v682 = -1.5708;
      if (v666.f32[2] <= 0.0)
      {
        v682 = 0.0;
      }
    }

    else
    {
      v682 = 1.5708;
    }
  }

  else
  {
    if (v666.f32[2] >= 0.0)
    {
      v678 = -1.0;
    }

    else
    {
      v678 = 1.0;
    }

    if (v679 <= 0.0)
    {
      v679 = -1.0;
    }

    else
    {
      v679 = 1.0;
    }

LABEL_615:
    v682 = atan2f(v678, v679);
  }

  *(v1033 + 1) = v682 * 1000.0;
  v683 = v994.f32[1];
  v684 = sqrtf(v973 * v975);
  v685 = fabsf(v994.f32[0]) == INFINITY;
  if (fabsf(v994.f32[1]) != INFINITY || !v685)
  {
    if (v994.f32[0] != 0.0)
    {
      v688 = v994.f32[0];
      goto LABEL_631;
    }

    if (v994.f32[1] <= 0.0)
    {
      v687 = -1.5708;
      if (v994.f32[1] >= 0.0)
      {
        v687 = 0.0;
      }
    }

    else
    {
      v687 = 1.5708;
    }
  }

  else
  {
    v688 = -1.0;
    if (v994.f32[1] <= 0.0)
    {
      v683 = -1.0;
    }

    else
    {
      v683 = 1.0;
    }

    if (v994.f32[0] > 0.0)
    {
      v688 = 1.0;
    }

LABEL_631:
    v687 = atan2f(v683, v688);
  }

  *(v1033 + 2) = v687 * 1000.0;
  v475 = (((v379 * 0.01008) / v684) + -0.9142);
LABEL_633:
  v689 = *(v971 + 4);
  LODWORD(v1021) = 14;
  HIDWORD(v1021) = v689;
  v1022 = 2;
  coder::array_base<float,int,2>::ensureCapacity(v1019, 28 * v689);
  v690 = *(v971 + 4);
  v691 = (28 * v690);
  if (v691 >= 1)
  {
    bzero(v1019[0], 4 * (28 * v690));
  }

  v692 = v979;
  if (v979 >= 1)
  {
    v693 = v1045 + 2;
    v694 = v1019[0] + 52;
    v695 = v1019[0] + 56 * SHIDWORD(v1021) + 28;
    do
    {
      *(v694 - 13) = *(v693 - 14);
      *(v695 - 7) = *v693;
      *(v694 - 12) = *(v693 - 13);
      *(v695 - 6) = v693[1];
      *(v694 - 11) = *(v693 - 12);
      *(v695 - 5) = v693[2];
      *(v694 - 10) = *(v693 - 11);
      *(v695 - 4) = v693[3];
      *(v694 - 9) = *(v693 - 10);
      *(v695 - 3) = v693[4];
      *(v694 - 8) = *(v693 - 9);
      *(v695 - 2) = v693[5];
      *(v694 - 7) = *(v693 - 8);
      *(v695 - 1) = v693[6];
      *(v694 - 6) = *(v693 - 7);
      *v695 = v693[7];
      *(v694 - 5) = *(v693 - 6);
      v695[1] = v693[8];
      *(v694 - 4) = *(v693 - 5);
      v695[2] = v693[9];
      *(v694 - 3) = *(v693 - 4);
      v695[3] = v693[10];
      *(v694 - 2) = *(v693 - 3);
      v695[4] = v693[11];
      *(v694 - 1) = *(v693 - 2);
      v695[5] = v693[12];
      *v694 = *(v693 - 1);
      v694 += 14;
      v695[6] = v693[13];
      v693 += 98;
      v695 += 14;
      --v692;
    }

    while (v692);
  }

  v696 = v966;
  if (v690 >= 1)
  {
    v697 = 0;
    v698 = 14 * v690;
    v699 = v966;
    do
    {
      v700 = *v699;
      v699 += 2;
      *&v1038[4 * v697] = *(v967 + 4 * (14 * v700 - 14));
      *&v1038[4 * v697 + 8] = *(v967 + 4 * (14 * v700 - 12));
      *&v1038[4 * v697 + 16] = *(v967 + 4 * (14 * v700 - 10));
      *&v1038[4 * v697 + 24] = *(v967 + 4 * (14 * v700 - 8));
      *&v1038[4 * v697 + 32] = *(v967 + 4 * (14 * v700 - 6));
      *&v1038[4 * v697 + 40] = *(v967 + 4 * (14 * v700 - 4));
      v701 = 4 * (v697 + 12);
      v697 += 14;
      *&v1038[v701] = *(v967 + 4 * (14 * v700 - 2));
    }

    while (v698 != v697);
    v702 = 0;
    v703 = 14 * v690;
    do
    {
      v704 = *v696;
      v696 += 2;
      *&v1038[4 * v703 + 4 * v702] = *(v967 + 4 * (14 * v704 + 98));
      *&v1038[4 * v703 + 4 + 4 * v702] = *(v967 + 4 * (14 * v704 + 99));
      *&v1038[4 * v703 + 8 + 4 * v702] = *(v967 + 4 * (14 * v704 + 100));
      *&v1038[4 * v703 + 12 + 4 * v702] = *(v967 + 4 * (14 * v704 + 101));
      *&v1038[4 * v703 + 16 + 4 * v702] = *(v967 + 4 * (14 * v704 + 102));
      *&v1038[4 * v703 + 20 + 4 * v702] = *(v967 + 4 * (14 * v704 + 103));
      *&v1038[4 * v703 + 24 + 4 * v702] = *(v967 + 4 * (14 * v704 + 104));
      *&v1038[4 * v703 + 28 + 4 * v702] = *(v967 + 4 * (14 * v704 + 105));
      *&v1038[4 * v703 + 32 + 4 * v702] = *(v967 + 4 * (14 * v704 + 106));
      *&v1038[4 * v703 + 36 + 4 * v702] = *(v967 + 4 * (14 * v704 + 107));
      *&v1038[4 * v703 + 40 + 4 * v702] = *(v967 + 4 * (14 * v704 + 108));
      *&v1038[4 * v703 + 44 + 4 * v702] = *(v967 + 4 * (14 * v704 + 109));
      *&v1038[4 * v703 + 48 + 4 * v702] = *(v967 + 4 * (14 * v704 + 110));
      v705 = v703 + v702 + 13;
      v702 += 14;
      *&v1038[4 * v705] = *(v967 + 4 * (14 * v704 + 111));
    }

    while (v698 != v702);
  }

  v706 = HIDWORD(v1021);
  if (v690 == HIDWORD(v1021))
  {
    LODWORD(v1021) = 14;
    v1022 = 2;
    coder::array_base<float,int,2>::ensureCapacity(v1019, 28 * v690);
    if (v691 >= 1)
    {
      v707 = v1019[0];
      if (v691 < 8 || v1019[0] < &v1038[4 * v691] && v1038 < v1019[0] + 4 * v691)
      {
        v708 = 0;
        goto LABEL_649;
      }

      v708 = v691 & 0x7FFFFFF8;
      v851 = (v1019[0] + 16);
      v852 = &v1039;
      v853 = v708;
      do
      {
        v854 = vsubq_f32(*v852, *v851);
        v851[-1] = vsubq_f32(v852[-1], v851[-1]);
        *v851 = v854;
        v851 += 2;
        v852 += 2;
        v853 -= 8;
      }

      while (v853);
      if (v708 != v691)
      {
LABEL_649:
        v709 = v691 - v708;
        v710 = 4 * v708;
        v711 = &v707[v710];
        v712 = &v1038[v710];
        do
        {
          v713 = *v712++;
          *v711 = v713 - *v711;
          ++v711;
          --v709;
        }

        while (v709);
      }
    }
  }

  else
  {
    memset(v1058, 0, 17);
    if (HIDWORD(v1021) == 1)
    {
      v714 = v690;
    }

    else
    {
      v714 = HIDWORD(v1021);
    }

    LODWORD(v1058[3]) = 14;
    HIDWORD(v1058[3]) = v714;
    LODWORD(v1058[4]) = 2;
    coder::array_base<float,int,2>::ensureCapacity(v1058, 28 * v714);
    v715 = HIDWORD(v1058[3]);
    if (v714 >= 1)
    {
      v716 = 0;
      v717 = v1019[0];
      v718 = v1058[0];
      v719 = 13;
      v720 = 13;
      do
      {
        v718[v716] = *&v1038[4 * v720 - 52] - v717[v719 - 13];
        v718[v716 + 1] = *&v1038[4 * v720 - 48] - v717[v719 - 12];
        v718[v716 + 2] = *&v1038[4 * v720 - 44] - v717[v719 - 11];
        v718[v716 + 3] = *&v1038[4 * v720 - 40] - v717[v719 - 10];
        v718[v716 + 4] = *&v1038[4 * v720 - 36] - v717[v719 - 9];
        v718[v716 + 5] = *&v1038[4 * v720 - 32] - v717[v719 - 8];
        v718[v716 + 6] = *&v1038[4 * v720 - 28] - v717[v719 - 7];
        v718[v716 + 7] = *&v1038[4 * v720 - 24] - v717[v719 - 6];
        v718[v716 + 8] = *&v1038[4 * v720 - 20] - v717[v719 - 5];
        v718[v716 + 9] = *&v1038[4 * v720 - 16] - v717[v719 - 4];
        v718[v716 + 10] = *&v1038[4 * v720 - 12] - v717[v719 - 3];
        v718[v716 + 11] = *&v1038[4 * v720 - 8] - v717[v719 - 2];
        v718[v716 + 12] = *&v1038[4 * v720 - 4] - v717[v719 - 1];
        v718[v716 + 13] = *&v1038[4 * v720] - v717[v719];
        v720 += 14 * (v690 != 1);
        v719 += 14 * (v706 != 1);
        v716 += 14;
      }

      while (14 * v714 != v716);
      v721 = 0;
      v722 = 14 * v690 + 13;
      v723 = 14 * v706 + 13;
      v724 = 14 * v715;
      do
      {
        v718[v724 + v721] = *&v1038[4 * v722 - 52] - v717[v723 - 13];
        v718[v724 + 1 + v721] = *&v1038[4 * v722 - 48] - v717[v723 - 12];
        v718[v724 + 2 + v721] = *&v1038[4 * v722 - 44] - v717[v723 - 11];
        v718[v724 + 3 + v721] = *&v1038[4 * v722 - 40] - v717[v723 - 10];
        v718[v724 + 4 + v721] = *&v1038[4 * v722 - 36] - v717[v723 - 9];
        v718[v724 + 5 + v721] = *&v1038[4 * v722 - 32] - v717[v723 - 8];
        v718[v724 + 6 + v721] = *&v1038[4 * v722 - 28] - v717[v723 - 7];
        v718[v724 + 7 + v721] = *&v1038[4 * v722 - 24] - v717[v723 - 6];
        v718[v724 + 8 + v721] = *&v1038[4 * v722 - 20] - v717[v723 - 5];
        v718[v724 + 9 + v721] = *&v1038[4 * v722 - 16] - v717[v723 - 4];
        v718[v724 + 10 + v721] = *&v1038[4 * v722 - 12] - v717[v723 - 3];
        v718[v724 + 11 + v721] = *&v1038[4 * v722 - 8] - v717[v723 - 2];
        v718[v724 + 12 + v721] = *&v1038[4 * v722 - 4] - v717[v723 - 1];
        v718[v724 + 13 + v721] = *&v1038[4 * v722] - v717[v723];
        v722 += 14 * (v690 != 1);
        v723 += 14 * (v706 != 1);
        v721 += 14;
      }

      while (14 * v714 != v721);
    }

    LODWORD(v1021) = 14;
    HIDWORD(v1021) = v715;
    v1022 = 2;
    coder::array_base<float,int,2>::ensureCapacity(v1019, 28 * v715);
    v725 = HIDWORD(v1058[3]);
    v726 = v1058[0];
    if (SHIDWORD(v1058[3]) >= 1)
    {
      v727 = v1019[0];
      v728 = HIDWORD(v1021);
      v729 = v1019[0] + 28;
      v730 = v1058[0] + 28;
      v731 = HIDWORD(v1058[3]);
      do
      {
        *(v729 - 7) = *(v730 - 7);
        *(v729 - 6) = *(v730 - 6);
        *(v729 - 5) = *(v730 - 5);
        *(v729 - 4) = *(v730 - 4);
        *(v729 - 3) = *(v730 - 3);
        *(v729 - 2) = *(v730 - 2);
        *(v729 - 1) = *(v730 - 1);
        *v729 = *v730;
        v729[1] = v730[1];
        v729[2] = v730[2];
        v729[3] = v730[3];
        v729[4] = v730[4];
        v729[5] = v730[5];
        v729[6] = v730[6];
        v729 += 14;
        v730 += 14;
        --v731;
      }

      while (v731);
      v732 = &v727[56 * v728 + 28];
      v733 = &v726[56 * v725 + 28];
      do
      {
        *(v732 - 7) = *(v733 - 7);
        *(v732 - 6) = *(v733 - 6);
        *(v732 - 5) = *(v733 - 5);
        *(v732 - 4) = *(v733 - 4);
        *(v732 - 3) = *(v733 - 3);
        *(v732 - 2) = *(v733 - 2);
        *(v732 - 1) = *(v733 - 1);
        *v732 = *v733;
        *(v732 + 1) = *(v733 + 1);
        *(v732 + 2) = *(v733 + 2);
        *(v732 + 3) = *(v733 + 3);
        *(v732 + 4) = *(v733 + 4);
        *(v732 + 5) = *(v733 + 5);
        *(v732 + 6) = *(v733 + 6);
        v732 += 56;
        v733 += 56;
        --v725;
      }

      while (v725);
    }

    if (LOBYTE(v1058[2]) == 1 && v726)
    {
      MEMORY[0x22AA53170](v726, 0x1000C8052888210);
    }
  }

  LODWORD(v1017) = 14;
  HIDWORD(v1017) = HIDWORD(v1021);
  v1018 = 2;
  v734 = (28 * HIDWORD(v1021));
  result = coder::array_base<float,int,2>::ensureCapacity(v1015, 28 * HIDWORD(v1021));
  if (v734 >= 1)
  {
    v737 = 0;
    v738 = v1019[0];
    v739 = v1015[0];
    if (v734 < 8)
    {
      goto LABEL_674;
    }

    if (v1015[0] - v1019[0] < 0x20)
    {
      goto LABEL_674;
    }

    v737 = v734 & 0x7FFFFFF8;
    v740 = (v1015[0] + 16);
    v741 = (v1019[0] + 16);
    v742 = v737;
    do
    {
      v736 = vmulq_f32(*v741, *v741);
      v740[-1] = vmulq_f32(v741[-1], v741[-1]);
      *v740 = v736;
      v740 += 2;
      v741 += 2;
      v742 -= 8;
    }

    while (v742);
    if (v737 != v734)
    {
LABEL_674:
      v743 = v734 - v737;
      v744 = 4 * v737;
      v745 = (v739 + v744);
      v746 = &v738[v744];
      do
      {
        v747 = *v746++;
        *v745++ = v747 * v747;
        --v743;
      }

      while (v743);
    }
  }

  v748 = HIDWORD(v1017);
  if (HIDWORD(v1017))
  {
    v749 = (14 * HIDWORD(v1017));
    LODWORD(v1006) = 14;
    HIDWORD(v1006) = HIDWORD(v1017);
    result = coder::array_base<float,int,2>::ensureCapacity(&__src, 14 * HIDWORD(v1017));
    if (v748 >= 1)
    {
      v750 = v1015[0];
      v751 = __src;
      if (__src - v1015[0] <= 0x1F)
      {
        v752 = 0;
        goto LABEL_686;
      }

      v752 = v749 & 0x7FFFFFF8;
      v753 = (__src + 16);
      v754 = (v1015[0] + 16);
      v755 = v752;
      do
      {
        v736 = *v754;
        v753[-1] = v754[-1];
        *v753 = v736;
        v753 += 2;
        v754 += 2;
        v755 -= 8;
      }

      while (v755);
      if (v752 != v749)
      {
LABEL_686:
        v756 = v749 - v752;
        v757 = 4 * v752;
        v758 = &v751->i32[v752];
        v759 = (v750 + v757);
        do
        {
          v760 = *v759++;
          *v758++ = v760;
          --v756;
        }

        while (v756);
      }

      v761 = 4 * v749;
      if (v751 < v750 + 8 * v749 && v750 + v761 < v751 + v761)
      {
        v762 = 0;
        goto LABEL_694;
      }

      v762 = v749 & 0x7FFFFFF8;
      v763 = (v761 + v750 + 16);
      v764 = v751 + 1;
      v765 = v762;
      do
      {
        v736 = vaddq_f32(*v763, *v764);
        v764[-1] = vaddq_f32(v763[-1], v764[-1]);
        *v764 = v736;
        v763 += 2;
        v764 += 2;
        v765 -= 8;
      }

      while (v765);
      if (v762 != v749)
      {
LABEL_694:
        v766 = v749 - v762;
        v767 = v762;
        v768 = (v750 + v767 * 4 + v761);
        v769 = &v751->f32[v767];
        do
        {
          v770 = *v768++;
          WORD1(v736.f64[0]) = HIWORD(v770);
          *v769 = v770 + *v769;
          ++v769;
          --v766;
        }

        while (v766);
      }
    }
  }

  else
  {
    v1006 = 14;
    if (v1004 < 0)
    {
      operator new[]();
    }

    LODWORD(v1004) = 0;
  }

  v771 = HIDWORD(v1006);
  v772 = 16 * HIDWORD(v1006);
  if (SHIDWORD(v1006) >= 1)
  {
    v773 = 14 * HIDWORD(v1006);
    v774 = __src;
    if (14 * HIDWORD(v1006) <= 1)
    {
      v775 = 1;
    }

    else
    {
      v775 = v773;
    }

    if (v773 < 8)
    {
      v776 = 0;
      goto LABEL_705;
    }

    v776 = v775 & 0x7FFFFFF8;
    v777 = (__src + 16);
    v778 = v776;
    do
    {
      v736 = vsqrtq_f32(*v777);
      v777[-1] = vsqrtq_f32(v777[-1]);
      *v777 = v736;
      v777 += 2;
      v778 -= 8;
    }

    while (v778);
    if (v776 != v775)
    {
LABEL_705:
      v779 = v775 - v776;
      v780 = &v774[4 * v776];
      do
      {
        *v780 = sqrtf(*v780);
        ++v780;
        --v779;
      }

      while (v779);
    }
  }

  v976 = v772;
  v980 = v771;
  if (v1019[0])
  {
    operator new[]();
  }

  memset(v1058, 0, 17);
  memset(v1031, 0, 17);
  if (!v734)
  {
    v781 = 0;
    v783 = *&rtNaNF;
    goto LABEL_787;
  }

  LODWORD(v1058[3]) = v734;
  coder::array_base<float,int,2>::ensureCapacity(v1058, v734);
  if (v734 >= 1)
  {
    bzero(v1058[0], 4 * v734);
  }

  *&v1031[24] = v734;
  result = coder::array_base<float,int,2>::ensureCapacity(v1031, v734);
  v781 = v1058[0];
  if (v734 < 2)
  {
    goto LABEL_770;
  }

  if (v734 - 2 >= 6)
  {
    v784 = ((v734 - 2) >> 1) + 1;
    v785 = xmmword_2247A5170;
    *&v736.f64[0] = 0x100000001;
    *&v736.f64[1] = 0x100000001;
    v786.i64[0] = 0x800000008;
    v786.i64[1] = 0x800000008;
    v787 = 0;
    v788 = v1058[0];
    v789 = v784 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v1061 = vld2q_f32(v787);
      v787 += 8;
      v1061.val[0] = vbicq_s8(vceqq_f32(v1061.val[1], v1061.val[1]), vcgeq_f32(v1061.val[1], v1061.val[0]));
      v1062.val[0] = vsubq_s32(v785, v1061.val[0]);
      v1062.val[1] = vaddq_s32(v785, vandq_s8(vmovl_u16(vmvn_s8(vmovn_s32(v1061.val[0]))), v736));
      vst2q_f32(v788, v1062);
      v788 += 8;
      v785 = vaddq_s32(v785, v786);
      v789 -= 4;
    }

    while (v789);
    if (v784 != (v784 & 0x7FFFFFFFFFFFFFFCLL))
    {
      v782 = (2 * (v784 & 0x7FFFFFFFFFFFFFFCLL)) | 1;
      goto LABEL_720;
    }
  }

  else
  {
    v782 = 1;
LABEL_720:
    v790 = &v781[v782];
    v791 = (4 * v782);
    do
    {
      *v736.f64 = *v791;
      v792 = *(v791 - 1) > *v791;
      v793 = v792;
      if (*(v791 - 1) > *v791)
      {
        v792 = 1;
      }

      *(v790 - 1) = v792 + v782;
      *v790 = v782 + !v793;
      v782 += 2;
      v790 += 2;
      v791 += 2;
    }

    while (v782 < v734);
  }

  v794 = v781 - 1;
  v795 = *v1031;
  v796 = v781 - *v1031 - 4;
  v797 = *v1031 - v781 + 4;
  v798 = *v1031 - v781 + 8;
  v799 = *v1031 + 20;
  v800 = v781 + 3;
  v801 = *v1031 + 4;
  result = *v1031 + 16;
  v995 = *v1031 + 16;
  v802 = 2;
  while (2)
  {
    v803 = 2 * v802;
    if (v802 >= v734)
    {
      goto LABEL_725;
    }

    v804 = v802 | 1;
    v805 = 1;
    while (2)
    {
      v806 = v805 + v803;
      if (v805 + v803 >= (v734 | 1))
      {
        v806 = v734 | 1;
      }

      v807 = (v806 - v805);
      if (v807 < 1)
      {
        goto LABEL_728;
      }

      v808 = 0;
      v809 = (v804 - 1);
      v810 = v806 - 2;
      LODWORD(v811) = v805;
      while (2)
      {
        v813 = v781[v809];
        v814 = v794[v811];
        LODWORD(v736.f64[0]) = *(4 * v814 - 4);
        v815 = v808;
        if (*v736.f64 > *(4 * v813 - 4))
        {
          *(v795 + 4 * v808) = v813;
          v812 = (v809 + 1);
          result = (v809 + 2);
          if (result != v806 || v811 >= v804)
          {
            goto LABEL_735;
          }

          v811 = v811;
          v824 = v804 - v811;
          if (v824 >= 8)
          {
            v825 = 4 * v808;
            result = v798 + v825 - 4 * v811;
            if (result >= 0x20)
            {
              v826 = v824 & 0xFFFFFFFFFFFFFFF8;
              v815 += v824 & 0xFFFFFFFFFFFFFFF8;
              v827 = (v799 + v825);
              v828 = &v800[v811];
              v829 = v824 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v736 = *v828;
                v827[-1] = v828[-1];
                *v827 = v736;
                v827 += 2;
                v828 += 2;
                v829 -= 8;
              }

              while (v829);
              if (v824 == v826)
              {
                goto LABEL_758;
              }

              v811 = v826 + v811;
            }
          }

          v830 = v804 - v811;
          v831 = &v794[v811];
          v832 = v815;
          do
          {
            LODWORD(v815) = v832 + 1;
            v833 = *v831++;
            result = v833;
            *(v801 + 4 * v832++) = v833;
            --v830;
          }

          while (v830);
LABEL_758:
          v808 = v815;
          LODWORD(v811) = v804;
          goto LABEL_735;
        }

        *(v795 + 4 * v808) = v814;
        LODWORD(v811) = v811 + 1;
        v816 = v809 + 1;
        if (v809 + 1 < v806 && v811 == v804)
        {
          v817 = (v810 - v809);
          if (v817 < 7)
          {
            goto LABEL_746;
          }

          if (v810 < v809)
          {
            goto LABEL_746;
          }

          v818 = 4 * v808;
          if ((v797 + v818 - 4 * v809) < 0x20)
          {
            goto LABEL_746;
          }

          v819 = v817 + 1;
          v820 = (v817 + 1) & 0x1FFFFFFF8;
          v815 += v820;
          v821 = (v799 + v818);
          v822 = v809;
          v823 = v820;
          do
          {
            result = &v781[v822];
            v736 = *(result + 16);
            v821[-1] = *result;
            *v821 = v736;
            v821 += 2;
            v822 += 8;
            v823 -= 8;
          }

          while (v823);
          v809 = (v809 + v820);
          if (v819 != v820)
          {
            v816 += v820;
            do
            {
LABEL_746:
              *(v801 + 4 * v815++) = v781[v809];
              LODWORD(v809) = v816++;
            }

            while (v806 != v816);
            v809 = (v816 - 1);
          }

          v808 = v815;
          LODWORD(v811) = v804;
        }

        v812 = v809;
LABEL_735:
        ++v808;
        v809 = v812;
        if (v808 < v807)
        {
          continue;
        }

        break;
      }

      v834 = v805;
      if (v807 <= 7 || (v835 = v805, (v796 + v835 * 4) < 0x20))
      {
        v836 = 0;
        goto LABEL_762;
      }

      v836 = v807 & 0x7FFFFFF8;
      v842 = &v800[v835];
      v843 = v995;
      v844 = v836;
      do
      {
        v736 = *v843;
        v842[-1] = v843[-1];
        *v842 = v736;
        v842 += 2;
        v843 += 2;
        v844 -= 8;
      }

      while (v844);
      if (v836 != v807)
      {
LABEL_762:
        v837 = v836 - v807;
        v838 = v836;
        v839 = &v794[v834 + v838];
        v840 = (v795 + v838 * 4);
        do
        {
          v841 = *v840++;
          result = v841;
          *v839++ = v841;
          _CF = __CFADD__(v837++, 1);
        }

        while (!_CF);
      }

LABEL_728:
      v804 = v806 + v802;
      v805 = v806;
      if (v806 + v802 <= v734)
      {
        continue;
      }

      break;
    }

LABEL_725:
    v802 *= 2;
    if (v803 < v734)
    {
      continue;
    }

    break;
  }

LABEL_770:
  if (v734 < 1)
  {
    v783 = *&rtNaNF;
  }

  else
  {
    if (v734 == 1)
    {
      v845 = *v781;
      goto LABEL_786;
    }

    v736.f64[0] = 0.99;
    v846 = v734 * 0.99;
    v847 = llround(v846);
    if (v734 <= v847)
    {
      v845 = v781[(v734 & 0x7FFFFFFF) - 1];
LABEL_786:
      v783 = *(4 * v845 - 4);
    }

    else
    {
      v848 = &v781[v847];
      v849 = v846 - v847;
      v736.f64[0] = 0.5;
      v850 = v849 + 0.5;
      *&v849 = 0.5 - v849;
      LODWORD(v736.f64[0]) = *(4 * *v848 - 4);
      v783 = (*(4 * *(v848 - 1) - 4) * *&v849) + (*v736.f64 * v850);
    }
  }

LABEL_787:
  if (v1031[16] == 1)
  {
    result = *v1031;
    if (*v1031)
    {
      result = MEMORY[0x22AA53170](*v1031, 0x1000C8052888210);
    }
  }

  if (LOBYTE(v1058[2]) == 1 && v781 != 0)
  {
    result = MEMORY[0x22AA53170](v781, 0x1000C8052888210);
  }

  *v968 = v783;
  v856 = v976 - 2 * v980;
  if (v856 >= 1)
  {
    v857 = 16;
    if (v980 >= 2)
    {
      do
      {
        if (v857 <= 0x3FFFFFFF)
        {
          v857 *= 2;
        }

        else
        {
          v857 = 0x7FFFFFFF;
        }
      }

      while (v857 < v856);
    }

    operator new[]();
  }

  if (v980 >= 1)
  {
    v858 = 0;
    do
    {
      LODWORD(v736.f64[0]) = *(__src + v858);
      *v858++ = *v736.f64 > 5.0;
    }

    while (v858 != 1);
  }

  if (v856)
  {
    v859 = MEMORY[0];
  }

  else
  {
    v859 = 0;
  }

  v860 = v859;
  *(v968 + 8) = v859;
  if (!HIDWORD(v999))
  {
    v861 = 0.0;
    goto LABEL_831;
  }

  if (SHIDWORD(v999) >= 1025)
  {
    v864 = WORD2(v999) & 0x3FF;
    if ((v999 & 0x3FF00000000) != 0)
    {
      v865 = (HIDWORD(v999) >> 10) + 1;
    }

    else
    {
      v864 = 1024;
      v865 = HIDWORD(v999) >> 10;
    }

    v862 = v997[0] - 2;
    v861 = *v997[0];
    v867 = 1023;
    v863 = 1025;
    goto LABEL_818;
  }

  LOWORD(v860) = *v997[0];
  v861 = *&v860;
  if (SHIDWORD(v999) < 2)
  {
    goto LABEL_831;
  }

  v862 = v997[0] - 2;
  v863 = HIDWORD(v999) + 1;
  if (HIDWORD(v999) >= 5)
  {
    v864 = 0;
    v867 = HIDWORD(v999) - 1;
    v865 = 1;
    if (HIDWORD(v999) < 0x11)
    {
      v868 = 0;
LABEL_825:
      v893 = v867 & 0xFFFFFFFFFFFFFFFCLL;
      v736 = 0uLL;
      v894 = *&v861;
      v895 = v868 - (v867 & 0xFFFFFFFFFFFFFFFCLL);
      v896 = 2 * v868 + 4;
      do
      {
        v897 = vmovl_u16(*(v862 + v896));
        v898.i64[0] = v897.u32[0];
        v898.i64[1] = v897.u32[1];
        v899 = vcvtq_f64_u64(v898);
        v898.i64[0] = v897.u32[2];
        v898.i64[1] = v897.u32[3];
        v736 = vaddq_f64(v736, vcvtq_f64_u64(v898));
        v894 = vaddq_f64(v894, v899);
        v896 += 8;
        v895 += 4;
      }

      while (v895);
      v861 = vaddvq_f64(vaddq_f64(v894, v736));
      if (v867 != v893)
      {
        v866 = v893 | 2;
        goto LABEL_829;
      }

      goto LABEL_830;
    }

LABEL_818:
    v868 = v867 & 0xFFFFFFFFFFFFFFF0;
    v869 = 0uLL;
    v870 = *&v861;
    v871 = (v997[0] + 18);
    v872 = v867 & 0xFFFFFFFFFFFFFFF0;
    v873 = 0uLL;
    v874 = 0uLL;
    v875 = 0uLL;
    v876 = 0uLL;
    v877 = 0uLL;
    v878 = 0uLL;
    do
    {
      v879 = *v871[-2].i8;
      v880 = vmovl_u16(*v879.i8);
      v881.i64[0] = v880.u32[0];
      v881.i64[1] = v880.u32[1];
      v882 = vcvtq_f64_u64(v881);
      v881.i64[0] = v880.u32[2];
      v881.i64[1] = v880.u32[3];
      v883 = vcvtq_f64_u64(v881);
      v884 = vmovl_high_u16(v879);
      v881.i64[0] = v884.u32[0];
      v881.i64[1] = v884.u32[1];
      v885 = vcvtq_f64_u64(v881);
      v881.i64[0] = v884.u32[2];
      v881.i64[1] = v884.u32[3];
      v886 = vcvtq_f64_u64(v881);
      v887 = vmovl_u16(*v871);
      v881.i64[0] = v887.u32[0];
      v881.i64[1] = v887.u32[1];
      v888 = vcvtq_f64_u64(v881);
      v881.i64[0] = v887.u32[2];
      v881.i64[1] = v887.u32[3];
      v889 = vcvtq_f64_u64(v881);
      v890 = vmovl_high_u16(*v871->i8);
      v881.i64[0] = v890.u32[0];
      v881.i64[1] = v890.u32[1];
      v891 = vcvtq_f64_u64(v881);
      v881.i64[0] = v890.u32[2];
      v881.i64[1] = v890.u32[3];
      v874 = vaddq_f64(v874, v886);
      v873 = vaddq_f64(v873, v885);
      v869 = vaddq_f64(v869, v883);
      v870 = vaddq_f64(v870, v882);
      v878 = vaddq_f64(v878, vcvtq_f64_u64(v881));
      v877 = vaddq_f64(v877, v891);
      v876 = vaddq_f64(v876, v889);
      v875 = vaddq_f64(v875, v888);
      v871 += 4;
      v872 -= 16;
    }

    while (v872);
    v892 = vaddq_f64(vaddq_f64(v875, v870), vaddq_f64(v877, v873));
    v736 = vaddq_f64(vaddq_f64(v876, v869), vaddq_f64(v878, v874));
    v861 = vaddvq_f64(vaddq_f64(v892, v736));
    if (v867 == v868)
    {
      goto LABEL_830;
    }

    if ((v867 & 0xC) == 0)
    {
      v866 = v868 | 2;
      goto LABEL_829;
    }

    goto LABEL_825;
  }

  v864 = 0;
  v865 = 1;
  v866 = 2;
  do
  {
LABEL_829:
    LOWORD(v736.f64[0]) = *(v862 + 2 * v866);
    v736.f64[0] = *&v736.f64[0];
    v861 = v861 + v736.f64[0];
    ++v866;
  }

  while (v863 != v866);
LABEL_830:
  if (v865 >= 2)
  {
    v916 = 2;
    v917 = 1024;
    do
    {
      result = ((v916 << 10) - 1024);
      LOWORD(v736.f64[0]) = *(v997[0] + 2 * result);
      v736.f64[0] = *&v736.f64[0];
      if (v916 == v865)
      {
        v918 = v864;
      }

      else
      {
        v918 = 1024;
      }

      if (v918 < 2)
      {
        goto LABEL_872;
      }

      result = 2 * v917;
      v919 = (v918 + 1);
      v920 = v919 - 2;
      if ((v919 - 2) <= 3)
      {
        v921 = 2;
        goto LABEL_890;
      }

      if (v920 >= 0x10)
      {
        v923 = (v862 + 20 + result);
        v924 = 0uLL;
        v925 = *&v736.f64[0];
        v922 = v920 & 0xFFFFFFFFFFFFFFF0;
        v926 = v920 & 0xFFFFFFFFFFFFFFF0;
        v736 = 0uLL;
        v927 = 0uLL;
        v928 = 0uLL;
        v929 = 0uLL;
        v930 = 0uLL;
        v931 = 0uLL;
        do
        {
          v932 = *v923[-2].i8;
          v933 = vmovl_u16(*v932.i8);
          v934.i64[0] = v933.u32[0];
          v934.i64[1] = v933.u32[1];
          v935 = vcvtq_f64_u64(v934);
          v934.i64[0] = v933.u32[2];
          v934.i64[1] = v933.u32[3];
          v936 = vcvtq_f64_u64(v934);
          v937 = vmovl_high_u16(v932);
          v934.i64[0] = v937.u32[0];
          v934.i64[1] = v937.u32[1];
          v938 = vcvtq_f64_u64(v934);
          v934.i64[0] = v937.u32[2];
          v934.i64[1] = v937.u32[3];
          v939 = vcvtq_f64_u64(v934);
          v940 = vmovl_u16(*v923);
          v934.i64[0] = v940.u32[0];
          v934.i64[1] = v940.u32[1];
          v941 = vcvtq_f64_u64(v934);
          v934.i64[0] = v940.u32[2];
          v934.i64[1] = v940.u32[3];
          v942 = vcvtq_f64_u64(v934);
          v943 = vmovl_high_u16(*v923->i8);
          v934.i64[0] = v943.u32[0];
          v934.i64[1] = v943.u32[1];
          v944 = vcvtq_f64_u64(v934);
          v934.i64[0] = v943.u32[2];
          v934.i64[1] = v943.u32[3];
          v927 = vaddq_f64(v927, v939);
          v736 = vaddq_f64(v736, v938);
          v924 = vaddq_f64(v924, v936);
          v925 = vaddq_f64(v925, v935);
          v931 = vaddq_f64(v931, vcvtq_f64_u64(v934));
          v930 = vaddq_f64(v930, v944);
          v929 = vaddq_f64(v929, v942);
          v928 = vaddq_f64(v928, v941);
          v923 += 4;
          v926 -= 16;
        }

        while (v926);
        v736.f64[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v928, v925), vaddq_f64(v930, v736)), vaddq_f64(vaddq_f64(v929, v924), vaddq_f64(v931, v927))));
        if (v920 == v922)
        {
          goto LABEL_872;
        }

        if ((v920 & 0xC) == 0)
        {
          v921 = v922 | 2;
          goto LABEL_890;
        }
      }

      else
      {
        v922 = 0;
      }

      v945 = v920 & 0xFFFFFFFFFFFFFFFCLL;
      v946 = 0uLL;
      v947 = *&v736.f64[0];
      v948 = v922 - (v920 & 0xFFFFFFFFFFFFFFFCLL);
      v949 = (v862 + 4 + result + 2 * v922);
      do
      {
        v950 = *v949++;
        v951 = vmovl_u16(v950);
        v952.i64[0] = v951.u32[0];
        v952.i64[1] = v951.u32[1];
        v953 = vcvtq_f64_u64(v952);
        v952.i64[0] = v951.u32[2];
        v952.i64[1] = v951.u32[3];
        v946 = vaddq_f64(v946, vcvtq_f64_u64(v952));
        v947 = vaddq_f64(v947, v953);
        v948 += 4;
      }

      while (v948);
      v736.f64[0] = vaddvq_f64(vaddq_f64(v947, v946));
      if (v920 == v945)
      {
        goto LABEL_872;
      }

      v921 = v945 | 2;
LABEL_890:
      v954 = v919 - v921;
      result += v862 + 2 * v921;
      do
      {
        v955 = *result;
        result += 2;
        v736.f64[0] = v736.f64[0] + v955;
        --v954;
      }

      while (v954);
LABEL_872:
      v861 = v736.f64[0] + v861;
      ++v916;
      v917 += 1024;
    }

    while (v916 != v865 + 1);
  }

LABEL_831:
  *(v968 + 16) = v861;
  *(v968 + 24) = v475;
  *(v968 + 32) = vcvtq_f64_f32(*&v1033[0]);
  *(v968 + 48) = *(v1033 + 2);
  *(v968 + 56) = vcvtq_f64_f32(vmul_f32(v1032, vdup_n_s32(0x3A83126Fu)));
  if (v998 == 1)
  {
    result = v997[0];
    if (v997[0])
    {
      result = MEMORY[0x22AA53170](v997[0], 0x1000C80BDFB0063);
    }
  }

  if (v1001 == 1)
  {
    result = v1000[0];
    if (v1000[0])
    {
      result = MEMORY[0x22AA53170](v1000[0], 0x1000C8052888210);
    }
  }

  if (v1005 == 1)
  {
    result = __src;
    if (__src)
    {
      result = MEMORY[0x22AA53170](__src, 0x1000C8052888210);
    }
  }

  if (v1008 == 1)
  {
    result = v1007[0];
    if (v1007[0])
    {
      result = MEMORY[0x22AA53170](v1007[0], 0x1000C8052888210);
    }
  }

  if (v1012 == 1)
  {
    result = v1011[0];
    if (v1011[0])
    {
      result = MEMORY[0x22AA53170](v1011[0], 0x1000C8052888210);
    }
  }

  if (v1016 == 1)
  {
    result = v1015[0];
    if (v1015[0])
    {
      result = MEMORY[0x22AA53170](v1015[0], 0x1000C8052888210);
    }
  }

  if (v1020 == 1)
  {
    result = v1019[0];
    if (v1019[0])
    {
      result = MEMORY[0x22AA53170](v1019[0], 0x1000C8052888210);
    }
  }

  if (v1025 == 1 && v1023)
  {
    v900 = v1023 - 16;
    v901 = *(v1023 - 8);
    if (v901)
    {
      v902 = 32 * v901;
      v903 = v902 + v1023 - 16;
      v904 = -v902;
      v905 = v903;
      do
      {
        v906 = *v905;
        v905 -= 32;
        if (v906 == 1)
        {
          v907 = *(v903 - 16);
          if (v907)
          {
            MEMORY[0x22AA53170](v907, 0x1000C8052888210);
          }
        }

        v903 = v905;
        v904 += 32;
      }

      while (v904);
    }

    result = MEMORY[0x22AA53170](v900, 0x1080C8075AFF985);
  }

  if (v1029 == 1 && v1027)
  {
    v908 = v1027 - 16;
    v909 = *(v1027 - 8);
    if (v909)
    {
      v910 = 32 * v909;
      v911 = v910 + v1027 - 16;
      v912 = -v910;
      v913 = v911;
      do
      {
        v914 = *v913;
        v913 -= 32;
        if (v914 == 1)
        {
          v915 = *(v911 - 16);
          if (v915)
          {
            MEMORY[0x22AA53170](v915, 0x1000C8052888210);
          }
        }

        v911 = v913;
        v912 += 32;
      }

      while (v912);
    }

    return MEMORY[0x22AA53170](v908, 0x1080C808A25AF7CLL);
  }

  return result;
}

void sub_22477DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x18B0]) == 1 && STACK[0x18A0])
  {
    MEMORY[0x22AA53170](STACK[0x18A0], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x18D0]) == 1 && STACK[0x18C0])
  {
    MEMORY[0x22AA53170](STACK[0x18C0], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x18F0]) == 1 && STACK[0x18E0])
  {
    MEMORY[0x22AA53170](STACK[0x18E0], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x280]) == 1 && STACK[0x270])
  {
    MEMORY[0x22AA53170](STACK[0x270], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x1918]) == 1 && STACK[0x1908])
  {
    MEMORY[0x22AA53170]();
  }

  if (a49 == 1 && a47)
  {
    MEMORY[0x22AA53170](a47, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  if (a53 == 1 && a51)
  {
    MEMORY[0x22AA53170](a51, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (a57 == 1 && a55)
  {
    MEMORY[0x22AA53170](a55, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (a61 == 1 && a59)
  {
    MEMORY[0x22AA53170](a59, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (a65 == 1 && a64)
  {
    MEMORY[0x22AA53170](a64, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (a67 == 1 && a66)
  {
    MEMORY[0x22AA53170](a66, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x218]) == 1)
  {
    if (STACK[0x208])
    {
      MEMORY[0x22AA53170](STACK[0x208], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
    }
  }

  coder::array<cell_wrap_1,2>::~array(&STACK[0x230]);
  coder::array<cell_wrap_0,2>::~array(&STACK[0x250]);
  _Unwind_Resume(a1);
}

_DWORD *coder::detail::data_ptr<cell_wrap_0,int>::reserve(_DWORD *result, int a2)
{
  if (result[3] < a2)
  {
    operator new[]();
  }

  return result;
}

_DWORD *coder::detail::data_ptr<cell_wrap_1,int>::reserve(_DWORD *result, int a2)
{
  if (result[3] < a2)
  {
    operator new[]();
  }

  return result;
}

void *findSpotsPeaksDan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v1416 = v4;
  v1366 = v5;
  v6 = v9.f32[0];
  v7 = v3;
  v1516 = *MEMORY[0x277D85DE8];
  v1452[0] = 0;
  v1452[1] = 0;
  v1453 = 0;
  v1454 = 0;
  v1449[0] = 0;
  v1449[1] = 0;
  v1450 = 0;
  v1451 = 0;
  v1446[0] = 0;
  v1446[1] = 0;
  v1447 = 0;
  v1448 = 0;
  v1443[1] = 0;
  v1443[0] = 0;
  v1444 = 0;
  v1445 = 0;
  v1440[1] = 0;
  v1440[0] = 0;
  v1441 = 0;
  v1442 = 0;
  v1437[1] = 0;
  v1437[0] = 0;
  v1438 = 0;
  v1439 = 0;
  v1434[1] = 0;
  v1434[0] = 0;
  v1435 = 0;
  *v9.i64 = v8 * 14.0;
  v1436 = 0;
  v10 = (v8 * 14.0);
  v11 = 4 * v10;
  if (v10 < 1)
  {
LABEL_29:
    v34 = v10;
    v35 = v10 - 2;
    if (v10 < 2)
    {
      v35 = 0;
    }

    v36 = (v35 + 1) & 0xFFFFFFFC;
    while (1)
    {
      v37 = *(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b + v34++);
      if (v10)
      {
        if (v1464 < v37)
        {
          if (v10 >= 2)
          {
            v38 = v10;
            v39 = &v1461[v11 + 45390];
            v40 = (&v1464 + v11 - 20);
            v41 = (v35 + 1) & 0xFFFFFFFC;
            if (v35 < 3)
            {
              goto LABEL_40;
            }

            do
            {
              *(v39 + 4) = *v39;
              *(v40 + 4) = *v40;
              --v40;
              --v39;
              v41 -= 4;
            }

            while (v41);
            v38 = v10 - v36;
            if (v35 + 1 != v36)
            {
LABEL_40:
              v42 = v38 + 1;
              v43 = 4 * v38;
              v44 = &v1463[4 * v38 + 12];
              v45 = &v1461[v43 + 45406];
              v46 = &v1461[v43 + 45406];
              v47 = v44;
              do
              {
                v49 = *(v46 - 1);
                v46 -= 2;
                v48 = v49;
                v50 = *--v47;
                *v45 = v48;
                *v44 = v50;
                --v42;
                v45 = v46;
                v44 = v47;
              }

              while (v42 > 2);
            }
          }

          v1464 = v37;
          *&v1461[45410] = v34;
          goto LABEL_33;
        }

        if (v10 >= 2 && *&v1463[4 * v10 + 12] < v37)
        {
          v51 = 1;
          v52 = v10;
          while ((v52 - v51) >= 2)
          {
            if (*&v1463[4 * v51 + 12 + 4 * ((v52 - v51) >> 1)] < v37)
            {
              v52 = v51 + ((v52 - v51) >> 1);
            }

            else
            {
              v51 += (v52 - v51) >> 1;
            }

            if (v51 >= v52)
            {
              if (v51 >= v10)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            }
          }

          v51 = v52;
          if (v52 >= v10)
          {
            goto LABEL_61;
          }

LABEL_54:
          v53 = v10 - v51;
          v54 = v10;
          if (v53 < 4)
          {
LABEL_59:
            v59 = &v1461[4 * v54 + 45406];
            v60 = &v1463[4 * v54 + 12];
            v61 = v60;
            v62 = v59;
            do
            {
              v63 = *--v61;
              --v54;
              *v60 = v63;
              v64 = *--v62;
              *v59 = v64;
              v60 = v61;
              v59 = v62;
            }

            while (v54 > v51);
          }

          else
          {
            v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
            v56 = (&v1464 + v11 - 20);
            v57 = &v1461[v11 + 45390];
            v58 = v53 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              *(v56 + 4) = *v56;
              *(v57 + 4) = *v57;
              --v57;
              --v56;
              v58 -= 4;
            }

            while (v58);
            if (v53 != v55)
            {
              v54 = v10 - v55;
              goto LABEL_59;
            }
          }

LABEL_61:
          v65 = 4 * v51 - 4;
          *(&v1464 + v65) = v37;
          *&v1461[v65 + 45410] = v34;
        }
      }

      else
      {
        *&v1461[45410] = v34;
        v1464 = v37;
      }

LABEL_33:
      if (v34 == 9072)
      {
        goto LABEL_62;
      }
    }
  }

  bzero(&v1461[45410], 4 * v10);
  v1432.i64[0] = 4 * v10;
  bzero(&v1464, 4 * v10);
  v12 = 0;
  v13 = &v1461[45394];
  v14 = v1463;
  __n[0] = &v1461[45406];
  v15 = 1;
  do
  {
    v16 = v12++;
    v17 = 4 * v16;
    v18 = *(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b + v16);
    if (!v16)
    {
      *&v1461[45410] = 1;
      v1464 = v18;
      goto LABEL_4;
    }

    if (v1464 < v18)
    {
      memmove(&v1461[45414], &v1461[45410], 4 * v16);
      memmove(&v1465, &v1464, v17);
      v1464 = v18;
      *&v1461[45410] = v12;
      goto LABEL_4;
    }

    if (v16 == 1 || *&v1463[4 * v16 + 12] >= v18)
    {
      *(&v1464 + v16) = v18;
      *&v1461[4 * v16 + 45410] = v12;
      goto LABEL_4;
    }

    v19 = 1;
    v20 = v16;
    while ((v20 - v19) >= 2)
    {
      if (*&v1463[4 * v19 + 12 + 4 * ((v20 - v19) >> 1)] < v18)
      {
        v20 = v19 + ((v20 - v19) >> 1);
      }

      else
      {
        v19 += (v20 - v19) >> 1;
      }

      if (v19 >= v20)
      {
        goto LABEL_19;
      }
    }

    v19 = v20;
LABEL_19:
    if (v16 >= v19)
    {
      v21 = v12 - v19;
      v22 = v12;
      if (v21 >= 4)
      {
        v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
        v24 = (v15 - v19) & 0xFFFFFFFFFFFFFFFCLL;
        v25 = v14;
        v26 = v13;
        do
        {
          *(v25 + 4) = *v25;
          v9 = *v26;
          *(v26 + 4) = *v26;
          --v26;
          --v25;
          v24 -= 4;
        }

        while (v24);
        if (v21 == v23)
        {
          goto LABEL_27;
        }

        v22 = v12 - v23;
      }

      v27 = (__n[0] + 4 * v22);
      v28 = &v1463[4 * v22 + 12];
      v29 = v28;
      v30 = v27;
      do
      {
        v31 = *--v29;
        --v22;
        *v28 = v31;
        v32 = *--v30;
        *v27 = v32;
        v28 = v29;
        v27 = v30;
      }

      while (v22 > v19);
    }

LABEL_27:
    v33 = 4 * v19 - 4;
    *(&v1464 + v33) = v18;
    *&v1461[v33 + 45410] = v12;
LABEL_4:
    ++v15;
    v13 += 2;
    v14 += 4;
  }

  while (v12 != v10);
  v11 = v1432.i64[0];
  if (v10 <= 9071)
  {
    goto LABEL_29;
  }

LABEL_62:
  v66 = 0;
  v67 = (v7 + 65);
  v9.f32[0] = *(&v1464 + v10 - 1);
  v1432 = v9;
  v68 = v1490;
  do
  {
    v69 = vrev64q_s32(*&v7[v66 + 357]);
    v70 = vrev64q_s32(*&v7[v66 + 353]);
    *(v68 - 3) = vextq_s8(v69, v69, 8uLL);
    *(v68 - 2) = vextq_s8(v70, v70, 8uLL);
    v71 = vrev64q_s32(*&v7[v66 + 349]);
    v72 = vrev64q_s32(*&v7[v66 + 345]);
    *(v68 - 1) = vextq_s8(v71, v71, 8uLL);
    *v68 = vextq_s8(v72, v72, 8uLL);
    *(v68 + 2) = vrev64_s32(*&v7[v66 + 343]);
    *(v68 + 6) = v7[v66 + 342];
    v66 -= 19;
    v68 = (v68 + 76);
  }

  while (v66 != -361);
  bzero(utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA, 0xC8D0uLL);
  v73 = 0;
  v74 = utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA;
  do
  {
    LODWORD(v75) = 18 - v73;
    if (v73 <= 0x12)
    {
      v75 = v75;
    }

    else
    {
      v75 = 0;
    }

    LODWORD(v76) = 125 - v73;
    if (v73 <= 0x6B)
    {
      v76 = 18;
    }

    else
    {
      v76 = v76;
    }

    if (v75 <= v76)
    {
      v77 = 0x16800000000 - 0x1300000000 * v75;
      do
      {
        v78 = 0;
        v79 = (spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b + ((0x5400000000 * (v75 + v73) - 0x5E800000000) >> 30));
        v80 = *v79;
        v81 = v79[1];
        v82 = v79[2];
        v83 = v79[3];
        v84 = v79[4];
        v85 = v79[5];
        v86 = v79[6];
        v87 = v79[7];
        v88 = v79[8];
        v89 = v79[9];
        v90 = v79[10];
        v91 = v79[11];
        v92 = v79[12];
        v93 = v79[13];
        v94 = v79[14];
        v95 = v79[15];
        v96 = v79[16];
        v97 = v79[17];
        v98 = v79[18];
        v99 = v79[19];
        v100 = v79[20];
        v101 = v77;
        do
        {
          v102 = *&v1488[v101 >> 30];
          v103 = &v74[v78];
          v104 = vmlaq_n_f32(*&v74[v78 + 22], v81, v102);
          *(v103 + 18) = vmlaq_n_f32(*&v74[v78 + 18], v80, v102);
          *(v103 + 22) = v104;
          v105 = vmlaq_n_f32(*&v74[v78 + 30], v83, v102);
          *(v103 + 26) = vmlaq_n_f32(*&v74[v78 + 26], v82, v102);
          *(v103 + 30) = v105;
          v106 = vmlaq_n_f32(*&v74[v78 + 38], v85, v102);
          *(v103 + 34) = vmlaq_n_f32(*&v74[v78 + 34], v84, v102);
          *(v103 + 38) = v106;
          v107 = vmlaq_n_f32(*&v74[v78 + 46], v87, v102);
          *(v103 + 42) = vmlaq_n_f32(*&v74[v78 + 42], v86, v102);
          *(v103 + 46) = v107;
          v108 = vmlaq_n_f32(*&v74[v78 + 54], v89, v102);
          *(v103 + 50) = vmlaq_n_f32(*&v74[v78 + 50], v88, v102);
          *(v103 + 54) = v108;
          v109 = vmlaq_n_f32(*&v74[v78 + 62], v91, v102);
          *(v103 + 58) = vmlaq_n_f32(*&v74[v78 + 58], v90, v102);
          *(v103 + 62) = v109;
          v110 = &v74[v78 + 70];
          v111 = vmlaq_n_f32(*v110, v93, v102);
          *&v74[v78 + 66] = vmlaq_n_f32(*&v74[v78 + 66], v92, v102);
          *v110 = v111;
          v112 = &v74[v78 + 78];
          v113 = vmlaq_n_f32(*v112, v95, v102);
          *&v74[v78 + 74] = vmlaq_n_f32(*&v74[v78 + 74], v94, v102);
          *v112 = v113;
          v114 = &v74[v78 + 86];
          v115 = vmlaq_n_f32(*v114, v97, v102);
          *&v74[v78 + 82] = vmlaq_n_f32(*&v74[v78 + 82], v96, v102);
          *v114 = v115;
          v116 = &v74[v78 + 94];
          v117 = vmlaq_n_f32(*v116, v99, v102);
          *&v74[v78 + 90] = vmlaq_n_f32(*&v74[v78 + 90], v98, v102);
          v118 = &v74[v78 + 98];
          v119 = vmlaq_n_f32(*v118, v100, v102);
          *v116 = v117;
          --v78;
          v101 -= 0x100000000;
          *v118 = v119;
        }

        while (v78 != -19);
        v77 -= 0x1300000000;
        _CF = v75++ >= v76;
      }

      while (!_CF);
    }

    ++v73;
    v74 += 102;
  }

  while (v73 != 126);
  utils::local_sum(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b, &utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A, v76);
  v121 = &unk_27D15A058;
  v122 = &unk_27D166928;
  v123 = 12848;
  do
  {
    v124 = vmulq_f32(*v121, *v121);
    v122[-1] = vmulq_f32(v121[-1], v121[-1]);
    *v122 = v124;
    v122 += 2;
    v121 += 2;
    v123 -= 8;
  }

  while (v123);
  xmmword_27D1731D8 = vmulq_f32(xmmword_27D166908, xmmword_27D166908);
  v125 = 0xFFFFFFFFFFFF7240;
  do
  {
    v126 = vmulq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v125 / 0x10 + 2269], spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v125 / 0x10 + 2269]);
    v127 = &v1501[v125 / 4];
    v127[2268] = vmulq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v125 / 0x10 + 2268], spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v125 / 0x10 + 2268]);
    v127[2269] = v126;
    v125 += 32;
  }

  while (v125);
  v128 = utils::normxcorr2_lim(float const*,float const*,float,double *)::diff_local_sums;
  utils::local_sum(v1501, utils::normxcorr2_lim(float const*,float const*,float,double *)::diff_local_sums, v120);
  v129 = 3213;
  v130 = vdupq_n_s32(0xBB358A48);
  v131 = &utils::normxcorr2_lim(float const*,float const*,float,double *)::x;
  v132 = &utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A;
  do
  {
    v133 = *v131++;
    v134 = vmlaq_f32(*v128, v130, v133);
    *v128++ = v134;
    *v132++ = vsqrtq_f32(vmaxnmq_f32(v134, 0));
    --v129;
  }

  while (v129 * 4);
  v135 = *v7;
  v136 = vaddq_f32(vaddq_f32(*(v7 + 293), vaddq_f32(*(v7 + 285), vaddq_f32(*(v7 + 277), vaddq_f32(*(v7 + 269), vaddq_f32(*(v7 + 261), vaddq_f32(*(v7 + 253), vaddq_f32(*(v7 + 245), *(v7 + 237)))))))), vaddq_f32(vaddq_f32(*(v7 + 229), vaddq_f32(*(v7 + 221), vaddq_f32(*(v7 + 213), vaddq_f32(*(v7 + 205), vaddq_f32(*(v7 + 197), vaddq_f32(*(v7 + 189), *(v7 + 181))))))), vaddq_f32(vaddq_f32(*(v7 + 173), vaddq_f32(*(v7 + 165), vaddq_f32(*(v7 + 157), vaddq_f32(*(v7 + 149), vaddq_f32(*(v7 + 141), *(v7 + 133)))))), vaddq_f32(vaddq_f32(*(v7 + 125), vaddq_f32(*(v7 + 117), vaddq_f32(*(v7 + 109), vaddq_f32(*(v7 + 101), *(v7 + 93))))), vaddq_f32(vaddq_f32(*(v7 + 85), vaddq_f32(*(v7 + 77), vaddq_f32(*(v7 + 69), *(v7 + 61)))), vaddq_f32(vaddq_f32(*(v7 + 53), vaddq_f32(*(v7 + 45), *(v7 + 37))), vaddq_f32(vaddq_f32(*(v7 + 29), *(v7 + 21)), vaddq_f32(*(v7 + 13), *(v7 + 5)))))))));
  v138 = *(v7 + 353);
  v137 = vaddq_f32(v138, vaddq_f32(*(v7 + 337), vaddq_f32(*(v7 + 321), vaddq_f32(*(v7 + 305), vaddq_f32(*(v7 + 289), vaddq_f32(*(v7 + 273), vaddq_f32(*(v7 + 257), vaddq_f32(*(v7 + 241), vaddq_f32(*(v7 + 225), vaddq_f32(*(v7 + 209), vaddq_f32(*(v7 + 193), vaddq_f32(*(v7 + 177), vaddq_f32(*(v7 + 161), vaddq_f32(*(v7 + 145), vaddq_f32(*(v7 + 129), vaddq_f32(*(v7 + 113), vaddq_f32(*(v7 + 97), vaddq_f32(*(v7 + 81), vaddq_f32(*v67, vaddq_f32(*(v7 + 49), vaddq_f32(*(v7 + 33), vaddq_f32(*(v7 + 17), vaddq_f32(*(v7 + 9), v135)))))))))))))))))))))));
  v138.i32[0] = 343932928;
  v139 = vaddq_f32(vaddq_f32(vaddq_f32(*(v7 + 357), vaddq_f32(*(v7 + 349), vaddq_f32(*(v7 + 341), vaddq_f32(*(v7 + 333), vaddq_f32(*(v7 + 325), vaddq_f32(*(v7 + 317), vaddq_f32(*(v7 + 309), *(v7 + 301)))))))), v136), vaddq_f32(v137, vaddq_f32(*(v7 + 345), vaddq_f32(*(v7 + 329), vaddq_f32(*(v7 + 313), vaddq_f32(*(v7 + 297), vaddq_f32(*(v7 + 281), vaddq_f32(*(v7 + 265), vaddq_f32(*(v7 + 249), vaddq_f32(*(v7 + 233), vaddq_f32(*(v7 + 217), vaddq_f32(*(v7 + 201), vaddq_f32(*(v7 + 185), vaddq_f32(*(v7 + 169), vaddq_f32(*(v7 + 153), vaddq_f32(*(v7 + 137), vaddq_f32(*(v7 + 121), vaddq_f32(*(v7 + 105), vaddq_f32(*(v7 + 89), vaddq_f32(*(v7 + 73), vaddq_f32(*(v7 + 57), vaddq_f32(*(v7 + 41), vaddq_f32(*(v7 + 25), *(v7 + 1))))))))))))))))))))))));
  v140 = vaddv_f32(*&vpaddq_f32(v139, v139)) * 0.0027701;
  v141 = 0.0;
  do
  {
    v142 = vabds_f32(*&v7[v129], v140);
    v143 = v141 + ((v142 / v138.f32[0]) * (v142 / v138.f32[0]));
    v141 = (((v138.f32[0] / v142) * (v138.f32[0] / v142)) * v141) + 1.0;
    if (v142 <= v138.f32[0])
    {
      v141 = v143;
    }

    else
    {
      v138.f32[0] = v142;
    }

    ++v129;
  }

  while (v129 != 361);
  v138.f32[0] = sqrtf(v141) * v138.f32[0];
  v144 = vdupq_lane_s32(*v138.f32, 0);
  v145 = *v1432.f32;
  v146 = vdupq_lane_s32(*v1432.f32, 0);
  v147 = &unk_27D140EB8;
  v148 = 12848;
  v149 = &unk_27D140EB8;
  do
  {
    v150 = vmlaq_f32(v146, *v149, v144);
    v149[-1] = vmlaq_f32(v146, v149[-1], v144);
    *v149 = v150;
    v149 += 2;
    v148 -= 8;
  }

  while (v148);
  xmmword_27D14D768 = vmlaq_n_f32(vdupq_lane_s32(v145, 0), xmmword_27D14D768, v138.f32[0]);
  v151 = vaddq_f32(vaddq_f32(*(v7 + 281), vaddq_f32(*(v7 + 273), vaddq_f32(*(v7 + 265), vaddq_f32(*(v7 + 257), vaddq_f32(*(v7 + 249), vaddq_f32(*(v7 + 241), vaddq_f32(*(v7 + 233), *(v7 + 225)))))))), vaddq_f32(vaddq_f32(*(v7 + 217), vaddq_f32(*(v7 + 209), vaddq_f32(*(v7 + 201), vaddq_f32(*(v7 + 193), vaddq_f32(*(v7 + 185), vaddq_f32(*(v7 + 177), *(v7 + 169))))))), vaddq_f32(vaddq_f32(*(v7 + 161), vaddq_f32(*(v7 + 153), vaddq_f32(*(v7 + 145), vaddq_f32(*(v7 + 137), vaddq_f32(*(v7 + 129), *(v7 + 121)))))), vaddq_f32(vaddq_f32(*(v7 + 113), vaddq_f32(*(v7 + 105), vaddq_f32(*(v7 + 97), vaddq_f32(*(v7 + 89), *(v7 + 81))))), vaddq_f32(vaddq_f32(*(v7 + 73), vaddq_f32(*v67, vaddq_f32(*(v7 + 57), *(v7 + 49)))), vaddq_f32(vaddq_f32(*(v7 + 41), vaddq_f32(*(v7 + 33), *(v7 + 25))), vaddq_f32(vaddq_f32(*(v7 + 17), *(v7 + 9)), vaddq_f32(*(v7 + 1), v135))))))));
  v152 = vaddq_f32(vaddq_f32(*(v7 + 293), vaddq_f32(*(v7 + 285), vaddq_f32(*(v7 + 277), vaddq_f32(*(v7 + 269), vaddq_f32(*(v7 + 261), vaddq_f32(*(v7 + 253), vaddq_f32(*(v7 + 245), *(v7 + 237)))))))), vaddq_f32(vaddq_f32(*(v7 + 229), vaddq_f32(*(v7 + 221), vaddq_f32(*(v7 + 213), vaddq_f32(*(v7 + 205), vaddq_f32(*(v7 + 197), vaddq_f32(*(v7 + 189), *(v7 + 181))))))), vaddq_f32(vaddq_f32(*(v7 + 173), vaddq_f32(*(v7 + 165), vaddq_f32(*(v7 + 157), vaddq_f32(*(v7 + 149), vaddq_f32(*(v7 + 141), *(v7 + 133)))))), vaddq_f32(vaddq_f32(*(v7 + 125), vaddq_f32(*(v7 + 117), vaddq_f32(*(v7 + 109), vaddq_f32(*(v7 + 101), *(v7 + 93))))), vaddq_f32(vaddq_f32(*(v7 + 85), vaddq_f32(*(v7 + 77), vaddq_f32(*(v7 + 69), *(v7 + 61)))), vaddq_f32(vaddq_f32(*(v7 + 53), vaddq_f32(*(v7 + 45), *(v7 + 37))), vaddq_f32(vaddq_f32(*(v7 + 29), *(v7 + 21)), vaddq_f32(*(v7 + 13), *(v7 + 5)))))))));
  v1432 = vaddq_f32(vaddq_f32(vaddq_f32(*(v7 + 357), vaddq_f32(*(v7 + 349), vaddq_f32(*(v7 + 341), vaddq_f32(*(v7 + 333), vaddq_f32(*(v7 + 325), vaddq_f32(*(v7 + 317), vaddq_f32(*(v7 + 309), *(v7 + 301)))))))), v152), vaddq_f32(vaddq_f32(*(v7 + 353), vaddq_f32(*(v7 + 345), vaddq_f32(*(v7 + 337), vaddq_f32(*(v7 + 329), vaddq_f32(*(v7 + 321), vaddq_f32(*(v7 + 313), vaddq_f32(*(v7 + 305), vaddq_f32(*(v7 + 297), *(v7 + 289))))))))), v151));
  bzero(findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC, 0x191A0uLL);
  v153 = &unk_27D166928;
  v154 = 12848;
  do
  {
    v155 = vabsq_f32(*v147);
    v153[-1] = vabsq_f32(v147[-1]);
    *v153 = v155;
    v153 += 2;
    v147 += 2;
    v154 -= 8;
  }

  while (v154);
  v156 = vpaddq_f32(v1432, v1432);
  xmmword_27D1731D8 = vabsq_f32(xmmword_27D14D768);
  v157 = *&utils::normxcorr2_lim(float const*,float const*,float,double *)::x;
  v158 = &utils::normxcorr2_lim(float const*,float const*,float,double *)::x + 1;
  v159 = 2;
  do
  {
    v160 = *v158++;
    v161 = v160;
    if (v157 < v160)
    {
      v157 = v161;
    }

    _ZF = v159++ == 12852;
  }

  while (!_ZF);
  if ((LODWORD(v157) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (v157 <= 1.1755e-38)
    {
      v162 = 1;
    }

    else
    {
      v1432 = v156;
      frexpf(v157, &v1433);
      *&v162 = ldexpf(1.0, v1433 - 24);
      v156.i64[0] = v1432.i64[0];
    }
  }

  else
  {
    v162 = rtNaNF;
  }

  v163 = 0;
  v164 = 0;
  v165 = vaddv_f32(*v156.f32);
  v166 = sqrtf(*&v162);
  while (2)
  {
    if (*(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + v163) <= v166)
    {
      ++v163;
      goto LABEL_106;
    }

    v1493.i16[v164] = v163 + 1;
    v167 = v164++ < 12851;
    v168 = v167;
    if (v167)
    {
      ++v163;
    }

    if (v168)
    {
LABEL_106:
      if (v163 >= 12852)
      {
        break;
      }

      continue;
    }

    break;
  }

  if (v164 > 0)
  {
    v169 = v165 * 0.0027701;
    v170 = v164;
    if (v164 == 1)
    {
      v171 = 0;
      goto LABEL_120;
    }

    v171 = v164 & 0x7FFFFFFE;
    v172 = &v1493.i16[1];
    v173 = v170 & 0x7FFFFFFE;
    do
    {
      v174 = *v172 - 1;
      v175 = ((utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA[v174] - (v169 * *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A + v174))) / *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + v174));
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[*(v172 - 1) - 1] = ((utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA[*(v172 - 1) - 1] - (v169 * *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A + *(v172 - 1) - 1))) / *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + *(v172 - 1) - 1));
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v174] = v175;
      v172 += 2;
      v173 -= 2;
    }

    while (v173);
    if (v171 != v170)
    {
LABEL_120:
      v176 = v170 - v171;
      v177 = &v1493 + v171;
      do
      {
        v178 = *v177++;
        findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v178 - 1] = ((utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA[v178 - 1] - (v169 * *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A + v178 - 1))) / *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + v178 - 1));
        --v176;
      }

      while (v176);
    }
  }

  v179 = 0;
  v180 = 0;
  v181 = 0;
  do
  {
    if (fabs(findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v179]) + -1.0 > 0.0000000149011612)
    {
      ++v181;
      *&v1485[2 * v180++] = v179 + 1;
    }

    ++v179;
  }

  while (v179 != 12852);
  if (v181 >= 1)
  {
    v182 = v181;
    if (v181 == 1)
    {
      v183 = 0;
      goto LABEL_132;
    }

    v183 = v181 & 0x7FFFFFFE;
    v184 = v1486;
    v185 = v182 & 0x7FFFFFFE;
    do
    {
      v186 = *v184;
      *&isInitialized_spot_finder_peridot[8 * *(v184 - 1)] = 0;
      *&isInitialized_spot_finder_peridot[8 * v186] = 0;
      v184 += 2;
      v185 -= 2;
    }

    while (v185);
    if (v183 != v182)
    {
LABEL_132:
      v187 = v182 - v183;
      v188 = &v1485[2 * v183];
      do
      {
        v189 = *v188++;
        findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v189 - 1] = 0.0;
        --v187;
      }

      while (v187);
    }
  }

  v190 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L;
  v191 = &xmmword_27D106300;
  v192 = 108;
  do
  {
    memcpy(v190, v191, 0x2A0uLL);
    v190 += 84;
    v191 += 51;
    --v192;
  }

  while (v192);
  v1459 = 0u;
  v1460 = 0u;
  v1457[0] = 0;
  bzero(v1501, 0x8DC0uLL);
  bzero(coder::internal::sort(double *)::xwork, 0x11B80uLL);
  v197 = 0;
  LODWORD(v198) = 0;
  do
  {
    v199 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v197];
    *(v1457 + v198) = v197 + 1;
    *(&v1459 + v198) = v199;
    if (v198 == 3)
    {
      if (*&v1459 >= *(&v1459 + 1))
      {
        v196 = 1;
      }

      else
      {
        v196 = 2;
      }

      if (*&v1459 < *(&v1459 + 1))
      {
        v193 = 1;
      }

      else
      {
        v193 = 2;
      }

      if (*&v1460 >= *(&v1460 + 1))
      {
        v200 = 3;
      }

      else
      {
        v200 = 4;
      }

      if (*&v1460 >= *(&v1460 + 1))
      {
        v201 = 4;
      }

      else
      {
        v201 = 3;
      }

      v202 = *(&v1459 + v196 - 1);
      v203 = *(&v1459 + (v200 - 1));
      if (v202 >= v203)
      {
        v205 = *(&v1459 + v193 - 1);
        if (v205 >= v203)
        {
          v194 = v201;
          v195 = v200;
        }

        else
        {
          if (v205 >= *(&v1459 + (v201 - 1)))
          {
            v194 = v201;
            v195 = v193;
          }

          else
          {
            v194 = v193;
            v195 = v201;
          }

          v193 = v200;
        }
      }

      else
      {
        v204 = *(&v1459 + (v201 - 1));
        if (v202 >= v204)
        {
          if (*(&v1459 + v193 - 1) >= v204)
          {
            v194 = v201;
            v195 = v193;
          }

          else
          {
            v194 = v193;
            v195 = v201;
          }

          v193 = v196;
        }

        else
        {
          v194 = v193;
          v195 = v196;
          v193 = v201;
        }

        v196 = v200;
      }

      LODWORD(v198) = 0;
      v206 = v196 - 1;
      v207 = v197 - 3;
      v1501[v207] = *(v1457 + v206);
      v208 = v193 - 1;
      v209 = v197 - 2;
      v1501[v209] = *(v1457 + v208);
      v210 = v195 - 1;
      v211 = v197 - 1;
      v1501[v211] = *(v1457 + v210);
      v212 = v194 - 1;
      v1501[v197] = *(v1457 + v212);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v207] = *(&v1459 + v206);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v209] = *(&v1459 + v208);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v211] = *(&v1459 + v210);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v197] = *(&v1459 + v212);
    }

    else
    {
      LODWORD(v198) = v198 + 1;
    }

    ++v197;
  }

  while (v197 != 9072);
  v1514[1] = v193;
  v1514[2] = v195;
  v1515 = v194;
  v1514[0] = v196;
  if (v198 > 0)
  {
    *&v1514[1] = 0;
    v1515 = 0;
    if (v198 != 2)
    {
      if (v198 == 1)
      {
        v1514[0] = 1;
        goto LABEL_189;
      }

      if (*&v1459 >= *(&v1459 + 1))
      {
        if (*(&v1459 + 1) < *&v1460)
        {
          if (*&v1459 >= *&v1460)
          {
            v214 = 769;
          }

          else
          {
            v214 = 259;
          }

          *v1514 = v214;
          v216 = 2;
          goto LABEL_188;
        }

        v215 = 513;
      }

      else
      {
        if (*&v1459 < *&v1460)
        {
          if (*(&v1459 + 1) >= *&v1460)
          {
            v213 = 770;
          }

          else
          {
            v213 = 515;
          }

          *v1514 = v213;
          v216 = 1;
          goto LABEL_188;
        }

        v215 = 258;
      }

      *v1514 = v215;
      v216 = 3;
LABEL_188:
      v1514[2] = v216;
      goto LABEL_189;
    }

    if (*&v1459 >= *(&v1459 + 1))
    {
      *v1514 = 513;
    }

    else
    {
      *v1514 = 258;
    }

LABEL_189:
    v217 = 9072 - v198;
    v218 = v1514;
    v198 = v198;
    do
    {
      v219 = *v218++;
      v1501[v217] = *(v1457 + v219 - 1);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v217++] = *(&v1459 + v219 - 1);
      --v198;
    }

    while (v198);
  }

  bzero(&v1493, 0x8DC0uLL);
  LODWORD(v1411) = 0;
  v1413 = 9072;
  v1426 = 0;
  v220 = 0;
  LODWORD(v1412) = 35;
  v1414 = 35;
  v1421 = &v1504;
  __n[0] = &v1504 + 4;
  v1417 = &v1501[1];
  v1423 = &v1488[16];
  while (2)
  {
    v221 = 0;
    v1415 = v220;
    LODWORD(v1425) = v220 << 8;
    v1424 = (v220 << 8) - 1;
    while (2)
    {
      v222 = 0;
      v223 = (4 << v221);
      v224 = 0x20u >> v221;
      LODWORD(__src) = v221;
      LODWORD(v1429) = v221 + 3;
      if (0x20u >> v221 <= 1)
      {
        v224 = 1;
      }

      LODWORD(v1428) = v224;
      v1427 = 8 * (8 << v221);
      v1422 = ((8 << v221) & 0x7FFFFFF0);
      v1430 = (8 << v221);
      while (2)
      {
        v1432.i32[0] = v222;
        v225 = v222 << v1429;
        memcpy(v1485, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[(v222 << v1429) + v1425], v1427);
        v226 = v1430;
        if (v1430 >= 0x10)
        {
          v233 = v1422;
          v234 = (v1421 + 4 * (v1426 + v225));
          v230 = v1423;
          v235 = v1423;
          do
          {
            v237 = v234[-2];
            v236 = v234[-1];
            v239 = *v234;
            v238 = v234[1];
            v234 += 4;
            v235[-1] = vuzp1q_s16(v237, v236);
            *v235 = vuzp1q_s16(v239, v238);
            v235 += 2;
            v233 -= 16;
          }

          while (v233);
        }

        else
        {
          v227 = &v1501[v1426 + v225];
          v228 = v1488;
          v229 = v1430;
          v230 = v1423;
          do
          {
            v232 = *v227;
            v231 = v227[1];
            v227 += 2;
            *v228++ = vuzp1q_s16(v232, v231);
            v229 -= 8;
          }

          while (v229);
        }

        v240 = 0;
        v241 = v1424 + v225;
        v242 = v223;
        do
        {
          v243 = *&v1485[8 * v242];
          v244 = v240 << 32;
          v245 = v240;
          v246 = v241;
          v247 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v241];
          v248 = &v1501[v241];
          v249 = v240 + 1;
          v250 = -v240;
          v251 = (v230 + 2 * v240);
          v252 = v240 + (v241 - v240 + 1);
          v253 = v252 + 1;
          v254 = 1;
          v255 = v240;
          v256 = (__n[0] + 4 * v252);
          while (1)
          {
            v257 = *&v1485[8 * v255];
            if (v257 < v243)
            {
              break;
            }

            v248[v254] = *&v1488[2 * v255];
            *&v247[v254] = v257;
            ++v255;
            ++v254;
            ++v249;
            --v250;
            v251 = (v251 + 2);
            v256 = (v256 + 4);
            ++v253;
            if (v240 + v254 - 1 >= v223)
            {
              goto LABEL_198;
            }
          }

          v258 = v254 - 1;
          v240 = v254 - 1 + v240;
          v241 = v246 + v254;
          v1501[v241] = *&v1488[2 * v242];
          *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v241] = v243;
          ++v242;
        }

        while (v242 < v226);
        if (v223 > v240)
        {
          v1419 = v241 - v240;
          v259 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v258 + v1419 + v245];
          v260 = &v1485[8 * v258 + (v244 >> 29)];
          v261 = v258 + v245;
          if (v258 + v245 + 1 > v223)
          {
            v262 = v261 + 1;
          }

          else
          {
            v262 = v223;
          }

          v1418 = v262 - v261;
          memcpy(v259 + 1, v260, 8 * (v262 - v261));
          v264 = v1418;
          v263 = v1419;
          if (v1418 < 4)
          {
LABEL_233:
            v277 = &v1417[v263];
            do
            {
              v277[v240] = *&v1488[2 * v240];
              ++v240;
            }

            while (v240 < v223);
          }

          else
          {
            if (v1418 < 0x10)
            {
              v265 = 0;
              goto LABEL_225;
            }

            v265 = v1418 & 0xFFFFFFFFFFFFFFF0;
            if (v249 <= v223)
            {
              v266 = v223;
            }

            else
            {
              v266 = v249;
            }

            v267 = (v266 + v250) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v268 = *v251[-2].i8;
              v269 = vmovl_s16(*v251);
              v270 = vmovl_high_s16(*v251->i8);
              v256[-2] = vmovl_s16(*v268.i8);
              v256[-1] = vmovl_high_s16(v268);
              *v256 = v269;
              v256[1] = v270;
              v256 += 4;
              v251 += 4;
              v267 -= 16;
            }

            while (v267);
            if (v264 != v265)
            {
              if ((v264 & 0xC) == 0)
              {
                v240 += v265;
                goto LABEL_233;
              }

LABEL_225:
              v271 = v264 & 0xFFFFFFFFFFFFFFFCLL;
              v272 = v249 <= v223 ? v223 : v249;
              v273 = v265 - ((v272 + v250) & 0xFFFFFFFFFFFFFFFCLL);
              v274 = &v1488[2 * v265 + 2 * v255];
              v275 = &v1501[v265 + v253];
              do
              {
                v276 = *v274++;
                *v275++ = vmovl_s16(v276);
                v273 += 4;
              }

              while (v273);
              if (v264 != v271)
              {
                v240 += v271;
                goto LABEL_233;
              }
            }
          }
        }

LABEL_198:
        v222 = v1432.i32[0] + 1;
        if (v1432.i32[0] + 1 != v1428)
        {
          continue;
        }

        break;
      }

      v221 = __src + 1;
      if (__src != 5)
      {
        continue;
      }

      break;
    }

    v220 = v1415 + 1;
    v1426 += 256;
    if (v1415 + 1 != v1414)
    {
      continue;
    }

    break;
  }

  v278 = v1413;
  LODWORD(__n[0]) = v1413 & 0xFFFFFF00;
  v279 = (v1413 & 0xFFFFFF00) + v1411;
  LODWORD(v280) = v1412;
  if (v279 < 9072)
  {
    v281 = (9072 - v279);
    v1425 = v281;
    if (v281 < 8)
    {
      v253 = 4;
    }

    else
    {
      v282 = v281 >> 2;
      v283 = LODWORD(__n[0]) - 1;
      LODWORD(v253) = 4;
      do
      {
        v284 = v253;
        if (v282)
        {
          v285 = v1425 - --v282 * v253;
          if (v285 > v253)
          {
            v286 = v282 * v253 + LODWORD(__n[0]);
            if (v285 >= 1)
            {
              memcpy(&v1493, &v1501[v286], 4 * (v1425 - v282 * v253));
              memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v286], 8 * (v1425 - v282 * v253));
            }

            v287 = 0;
            v288 = v286 - 1;
            if (v284 <= 1)
            {
              v289 = 1;
            }

            else
            {
              v289 = v284;
            }

            LODWORD(v290) = v284;
            while (2)
            {
              v291 = coder::internal::sort(double *)::xwork[v287];
              v290 = v290;
              v292 = v288 + 1;
              while (1)
              {
                v288 = v292;
                v293 = coder::internal::sort(double *)::xwork[v290];
                if (v291 >= v293)
                {
                  break;
                }

                v1501[v292] = v1493.i32[v290];
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v292] = v293;
                ++v290;
                ++v292;
                if (v290 >= v285)
                {
                  if (v284 > v287)
                  {
                    v294 = v287 + v288 - v287 + 1;
                    v295 = v284 - v287;
                    memcpy(&v1501[v294], &v1493.f32[v287], 4 * v295);
                    memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v294], &coder::internal::sort(double *)::xwork[v287], 8 * v295);
                  }

                  goto LABEL_256;
                }
              }

              v1501[v292] = v1493.i32[v287];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v292] = v291;
              if (++v287 != v289)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_256:
        v253 = (2 * v284);
        if (v282 < 2)
        {
          break;
        }

        v1426 = v282;
        if (v284 <= 1)
        {
          v296 = 1;
        }

        else
        {
          v296 = v284;
        }

        v1432.i64[0] = v296;
        if (v284)
        {
          v297 = 0;
          v1430 = 4 * (2 * v284);
          v1429 = 8 * (2 * v284);
          v1427 = v284;
          LODWORD(v1428) = v284;
          do
          {
            v298 = v253 * v297;
            if (v284 >= 1)
            {
              memcpy(&v1493, &v1501[v298 + LODWORD(__n[0])], v1430);
              memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v298 + LODWORD(__n[0])], v1429);
            }

            v299 = 0;
            v300 = v283 + v298;
            LODWORD(v301) = v284;
            while (2)
            {
              v302 = coder::internal::sort(double *)::xwork[v299];
              v301 = v301;
              v303 = v300 + 1;
              while (1)
              {
                v300 = v303;
                v304 = coder::internal::sort(double *)::xwork[v301];
                if (v302 >= v304)
                {
                  break;
                }

                v1501[v303] = v1493.i32[v301];
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v303] = v304;
                ++v301;
                ++v303;
                if (v301 >= v253)
                {
                  if (v284 > v299)
                  {
                    v305 = v299 + v300 - v299 + 1;
                    memcpy(&v1501[v305], &v1493.f32[v299], 4 * (v1427 - v299));
                    v284 = v1428;
                    memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v305], &coder::internal::sort(double *)::xwork[v299], 8 * (v1427 - v299));
                  }

                  goto LABEL_262;
                }
              }

              v1501[v303] = v1493.i32[v299];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v303] = v302;
              if (++v299 != v1432.i64[0])
              {
                continue;
              }

              break;
            }

LABEL_262:
            ++v297;
          }

          while (v297 != v282 >> 1);
        }

        v282 >>= 1;
      }

      while (v1426 >= 4);
    }

    v306 = v1425;
    v278 = v1413;
    LODWORD(v280) = v1412;
    if (v253 < v1425)
    {
      v307 = v253;
      memcpy(&v1493, &v1501[SLODWORD(__n[0])], 4 * v1425);
      memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[SLODWORD(__n[0])], 8 * v1425);
      v253 = 0;
      v308 = LODWORD(__n[0]) - 1;
      LODWORD(v309) = v307;
      if (v307 <= 1)
      {
        v310 = 1;
      }

      else
      {
        v310 = v307;
      }

      while (2)
      {
        v311 = coder::internal::sort(double *)::xwork[v253];
        v309 = v309;
        v312 = v308 + 1;
        while (1)
        {
          v308 = v312;
          v313 = coder::internal::sort(double *)::xwork[v309];
          if (v311 >= v313)
          {
            break;
          }

          v1501[v312] = v1493.i32[v309];
          *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v312] = v313;
          ++v309;
          ++v312;
          if (v309 >= v306)
          {
            if (v307 > v253)
            {
              v314 = v253 + v308 - v253 + 1;
              v315 = v307 - v253;
              memcpy(&v1501[v314], &v1493.f32[v253], 4 * v315);
              memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v314], &coder::internal::sort(double *)::xwork[v253], 8 * v315);
            }

            goto LABEL_287;
          }
        }

        v1501[v312] = v1493.i32[v253];
        *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v312] = v311;
        if (++v253 != v310)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_287:
  if (v278 < 0x200)
  {
    v1432.i64[0] = 256;
  }

  else
  {
    v1432.i64[0] = 256;
    v253 = v1501;
    do
    {
      v316 = v1432.i32[0];
      if (v280)
      {
        LODWORD(v280) = v280 - 1;
        v317 = v280 * v1432.i32[0];
        v318 = v278 - v280 * v1432.i32[0];
        if (v318 > v1432.i32[0])
        {
          if (v318 >= 1)
          {
            memcpy(&v1493, &v1501[v317], 4 * (v278 - v280 * v1432.i32[0]));
            memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v317], 8 * (v278 - v280 * v1432.i32[0]));
          }

          v319 = 0;
          v320 = v317 - 1;
          if (v1432.i32[0] <= 1)
          {
            v321 = 1;
          }

          else
          {
            v321 = v1432.u32[0];
          }

          LODWORD(v322) = v1432.i32[0];
          while (2)
          {
            v323 = coder::internal::sort(double *)::xwork[v319];
            v322 = v322;
            v324 = v320 + 1;
            while (1)
            {
              v320 = v324;
              v325 = coder::internal::sort(double *)::xwork[v322];
              if (v323 >= v325)
              {
                break;
              }

              v1501[v324] = v1493.i32[v322];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v324] = v325;
              ++v322;
              ++v324;
              if (v322 >= v318)
              {
                if (v316 > v319)
                {
                  v326 = v319 + v320 - v319 + 1;
                  v327 = v316 - v319;
                  memcpy(&v1501[v326], &v1493.f32[v319], 4 * v327);
                  memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v326], &coder::internal::sort(double *)::xwork[v319], 8 * v327);
                }

                goto LABEL_307;
              }
            }

            v1501[v324] = v1493.i32[v319];
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v324] = v323;
            if (++v319 != v321)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_307:
      v1432.i64[0] = (2 * v316);
      if (v280 < 2)
      {
        break;
      }

      LODWORD(v1412) = v280;
      v280 = v280 >> 1;
      if (v316 <= 1)
      {
        v328 = 1;
      }

      else
      {
        v328 = v316;
      }

      if (v316)
      {
        v329 = 0;
        v330 = v1432.i32[0];
        __n[0] = 4 * v1432.u32[0];
        v1430 = 8 * v1432.u32[0];
        v1429 = v316;
        do
        {
          v331 = v1432.i32[0] * v329;
          if (v316 >= 1)
          {
            memcpy(&v1493, &v1501[v331], __n[0]);
            memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v331], v1430);
          }

          v332 = 0;
          v333 = v331 - 1;
          LODWORD(v334) = v316;
          while (2)
          {
            v335 = coder::internal::sort(double *)::xwork[v332];
            v334 = v334;
            v336 = v333 + 1;
            while (1)
            {
              v333 = v336;
              v337 = coder::internal::sort(double *)::xwork[v334];
              if (v335 >= v337)
              {
                break;
              }

              v1501[v336] = v1493.i32[v334];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v336] = v337;
              ++v334;
              ++v336;
              if (v334 >= v330)
              {
                if (v316 > v332)
                {
                  v338 = v332 + v333 - v332 + 1;
                  memcpy(&v1501[v338], &v1493.f32[v332], 4 * (v1429 - v332));
                  memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v338], &coder::internal::sort(double *)::xwork[v332], 8 * (v1429 - v332));
                }

                goto LABEL_313;
              }
            }

            v1501[v336] = v1493.i32[v332];
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v336] = v335;
            if (++v332 != v328)
            {
              continue;
            }

            break;
          }

LABEL_313:
          ++v329;
        }

        while (v329 != v280);
      }

      v278 = v1413;
    }

    while (v1412 >= 4);
  }

  if (v1432.i32[0] < v278)
  {
    v253 = &v1493;
    memcpy(&v1493, v1501, 4 * v278);
    memcpy(coder::internal::sort(double *)::xwork, findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L, 8 * v278);
    v339 = 0;
    LODWORD(v340) = v1432.i32[0];
    if (v1432.i32[0] <= 1)
    {
      v341 = 1;
    }

    else
    {
      v341 = v1432.u32[0];
    }

    v342 = -1;
    while (2)
    {
      v343 = coder::internal::sort(double *)::xwork[v339];
      v340 = v340;
      v344 = v342 + 1;
      while (1)
      {
        v342 = v344;
        v345 = coder::internal::sort(double *)::xwork[v340];
        if (v343 >= v345)
        {
          break;
        }

        v1501[v344] = v1493.i32[v340];
        *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v344] = v345;
        ++v340;
        ++v344;
        if (v340 >= v278)
        {
          if (v1432.i32[0] > v339)
          {
            memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v339 + 1 + v342 - v339], &coder::internal::sort(double *)::xwork[v339], 8 * (v1432.u32[0] - v339));
          }

          goto LABEL_339;
        }
      }

      v1501[v344] = v1493.i32[v339];
      *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v344] = v343;
      if (++v339 != v341)
      {
        continue;
      }

      break;
    }
  }

LABEL_339:
  v346 = v1411;
  if ((v1411 - 1) <= 0x236E)
  {
    v253 = v1411;
    memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[-v1411 + 9072], (8 * v1411));
    if (v278 >= 1)
    {
      v347 = 1;
    }

    else
    {
      v347 = v278;
    }

    v348 = (9072 - v1411 - v347);
    if (v348 <= 2)
    {
LABEL_348:
      v356 = v278 + 1;
      v357 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v278 - 1];
      do
      {
        v357[v346] = *v357;
        --v356;
        --v357;
      }

      while (v356 > 1);
    }

    else
    {
      v349 = v348 + 1;
      v350 = (v348 + 1) & 0x1FFFFFFFCLL;
      v351 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v278 - 4];
      v352 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v278 - 2 + v1411];
      v353 = v350;
      do
      {
        v355 = *v351;
        v354 = *(v351 + 1);
        v351 -= 4;
        *(v352 - 1) = v355;
        *v352 = v354;
        v352 -= 4;
        v353 -= 4;
      }

      while (v353);
      if (v349 != v350)
      {
        v278 -= v350;
        goto LABEL_348;
      }
    }

    if (v1411)
    {
      memcpy(findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L, coder::internal::sort(double *)::xwork, (8 * v346));
    }
  }

  v358 = vdupq_lane_s64(COERCE__INT64(fmax(*&qword_27D11DC00, 0.45)), 0);
  v359 = -9072;
  v360 = &xmmword_27D106300;
  v361.i64[0] = 0x101010101010101;
  v361.i64[1] = 0x101010101010101;
  do
  {
    v362 = &v1461[v359];
    v362[567] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(*v360, v358), vcgtq_f64(v360[1], v358)), vuzp1q_s32(vcgtq_f64(v360[2], v358), vcgtq_f64(v360[3], v358))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[4], v358), vcgtq_f64(v360[5], v358)), vuzp1q_s32(vcgtq_f64(v360[6], v358), vcgtq_f64(v360[7], v358)))), v361);
    v362[568] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[8], v358), vcgtq_f64(v360[9], v358)), vuzp1q_s32(vcgtq_f64(v360[10], v358), vcgtq_f64(v360[11], v358))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[12], v358), vcgtq_f64(v360[13], v358)), vuzp1q_s32(vcgtq_f64(v360[14], v358), vcgtq_f64(v360[15], v358)))), v361);
    v362[569] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[16], v358), vcgtq_f64(v360[17], v358)), vuzp1q_s32(vcgtq_f64(v360[18], v358), vcgtq_f64(v360[19], v358))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[20], v358), vcgtq_f64(v360[21], v358)), vuzp1q_s32(vcgtq_f64(v360[22], v358), vcgtq_f64(v360[23], v358)))), v361);
    v362[570] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[24], v358), vcgtq_f64(v360[25], v358)), vuzp1q_s32(vcgtq_f64(v360[26], v358), vcgtq_f64(v360[27], v358))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[28], v358), vcgtq_f64(v360[29], v358)), vuzp1q_s32(vcgtq_f64(v360[30], v358), vcgtq_f64(v360[31], v358)))), v361);
    v362[571] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[32], v358), vcgtq_f64(v360[33], v358)), vuzp1q_s32(vcgtq_f64(v360[34], v358), vcgtq_f64(v360[35], v358))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v360[36], v358), vcgtq_f64(v360[37], v358)), vuzp1q_s32(vcgtq_f64(v360[38], v358), vcgtq_f64(v360[39], v358)))), v361);
    v362[572].i32[0] = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v360[40], v358), vcgtq_f64(v360[41], v358))), 0x1000100010001), *&v358.f64[0]).u32[0];
    v360 += 51;
    v359 += 84;
  }

  while (v359);
  v363 = 0;
  *v1501 = 0;
  v364 = &v1461[1];
  v365 = &qword_27D11D7B0;
  while (2)
  {
    v366 = 14 * v363;
    v367 = (14 * v363) | 1;
    v368 = v363 + 1;
    v369 = 14 * (v363 + 1);
    v1493.i32[14 * v363] = fmin((v369 | 1), 109.0);
    v370 = floor(vcvtd_n_f64_u32(v367, 1uLL)) * 42.0 + 1.0;
    v371 = fmin(v369, 108.0);
    v372 = v370;
    if (v371 - 14 * v363 >= 1)
    {
      v373 = 0;
      v374 = (v359 + v371);
      v375 = v365;
      v376 = v364;
      v372 = v370;
      while (1)
      {
        v377 = 84 * (v373 + v366);
        if (v373)
        {
          break;
        }

        if (v1461[v377])
        {
          *&v1501[2 * (v372 + 1.0) - 2] = v372;
          v426 = *&v372;
          v372 = v372 + 1.0;
        }

        else
        {
          v426 = 0;
        }

        findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[84 * v366] = v426;
        v427 = v375;
        v253 = v376;
        v428 = 83;
        do
        {
          if (*v253)
          {
            if (*(v253 - 1))
            {
              *v427 = *(v427 - 1);
            }

            else
            {
              *v427 = v372;
              *&v1501[2 * (v372 + 1.0) - 2] = v372;
              v372 = v372 + 1.0;
            }
          }

          else
          {
            *v427 = 0.0;
          }

          ++v253;
          ++v427;
          --v428;
        }

        while (v428);
LABEL_358:
        ++v373;
        v376 += 84;
        v375 += 84;
        if (v373 == v374)
        {
          goto LABEL_355;
        }
      }

      v253 = 0;
      v378 = v377 - 84;
      v379 = v377 - 85;
      while (2)
      {
        v380 = v253 + v377;
        if (!v1461[v253 + v377])
        {
          findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = 0;
          goto LABEL_362;
        }

        v381 = v378 + v253;
        if (v1461[v378 + v253])
        {
          findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
          goto LABEL_362;
        }

        if (v253 == 83)
        {
LABEL_367:
          if (v1461[v379 + v253])
          {
            findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v379 + v253];
            goto LABEL_362;
          }

          v382 = v380 - 1;
          if (v1461[v380 - 1])
          {
LABEL_388:
            findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
            goto LABEL_362;
          }

LABEL_390:
          *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = v372;
          *&v1501[2 * (v372 + 1.0) - 2] = v372;
          v372 = v372 + 1.0;
        }

        else
        {
          v382 = v381 + 1;
          if (!v1461[v381 + 1])
          {
            if (v253)
            {
              goto LABEL_367;
            }

            goto LABEL_390;
          }

          if (!v253)
          {
            goto LABEL_388;
          }

          v383 = v381 - 1;
          if (v1461[v383])
          {
            v384 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
            do
            {
              v385 = v384;
              v384 = *&v1501[2 * (v384 + 1.0) - 2];
            }

            while (v384 < v385);
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = v385;
            v386 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
            v387 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
            if (v386 != v387)
            {
              v388 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
              do
              {
                v389 = v388;
                v388 = *&v1501[2 * (v388 + 1.0) - 2];
              }

              while (v388 < v389);
              if (v385 > v389)
              {
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = v389;
                v387 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
                v385 = v389;
              }

              v390 = &v1501[2 * (v387 + 1.0)];
              v392 = *(v390 - 1);
              v391 = (v390 - 1);
              v393 = v392;
              if (v392 < v387)
              {
                do
                {
                  v394 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380];
                  *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382] = v393;
                  *v391 = v394;
                  v395 = &v1501[2 * (v393 + 1.0)];
                  v396 = *(v395 - 1);
                  v391 = (v395 - 1);
                  _NF = v396 < v393;
                  v393 = v396;
                }

                while (_NF);
                v385 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380];
              }

              *v391 = v385;
              v386 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
            }

            v398 = &v1501[2 * (v386 + 1.0)];
            v400 = *(v398 - 1);
            v399 = (v398 - 1);
            v401 = v400;
            if (v400 < v386)
            {
              do
              {
                v402 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380];
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383] = v401;
                *v399 = v402;
                v403 = &v1501[2 * (v401 + 1.0)];
                v404 = *(v403 - 1);
                v399 = (v403 - 1);
                _NF = v404 < v401;
                v401 = v404;
              }

              while (_NF);
              v385 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380];
            }

            *v399 = v385;
          }

          else
          {
            v405 = v380 - 1;
            if (!v1461[v380 - 1])
            {
              goto LABEL_388;
            }

            v406 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v405];
            v407 = v406;
            do
            {
              v408 = v407;
              v407 = *&v1501[2 * (v407 + 1.0) - 2];
            }

            while (v407 < v408);
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = v408;
            v409 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
            if (v406 != v409)
            {
              v410 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
              do
              {
                v411 = v410;
                v410 = *&v1501[2 * (v410 + 1.0) - 2];
              }

              while (v410 < v411);
              if (v408 > v411)
              {
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380] = v411;
                v409 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
                v408 = v411;
              }

              v412 = &v1501[2 * (v409 + 1.0)];
              v414 = *(v412 - 1);
              v413 = (v412 - 1);
              v415 = v414;
              if (v414 < v409)
              {
                do
                {
                  v416 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380];
                  *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382] = v415;
                  *v413 = v416;
                  v417 = &v1501[2 * (v415 + 1.0)];
                  v418 = *(v417 - 1);
                  v413 = (v417 - 1);
                  _NF = v418 < v415;
                  v415 = v418;
                }

                while (_NF);
                v408 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380];
                v406 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v405];
              }

              *v413 = v408;
            }

            v419 = &v1501[2 * (v406 + 1.0)];
            v421 = *(v419 - 1);
            v420 = v419 - 1;
            v422 = v421;
            if (v421 < v406)
            {
              do
              {
                v423 = v422;
                *v420 = v408;
                v424 = &v1501[2 * (v422 + 1.0)];
                v425 = *(v424 - 1);
                v420 = v424 - 1;
                v422 = v425;
              }

              while (v425 < v423);
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v405] = v423;
            }

            *v420 = v408;
          }
        }

LABEL_362:
        if (++v253 == 84)
        {
          goto LABEL_358;
        }

        continue;
      }
    }

LABEL_355:
    v1493.i32[v367] = (v372 - v370);
    LODWORD(v359) = v359 - 14;
    v364 += 1176;
    v365 += 1176;
    v363 = v368;
    if (v368 != 8)
    {
      continue;
    }

    break;
  }

  v429 = v1493.i32[0];
  if (v1493.i32[0] > 108)
  {
    goto LABEL_471;
  }

  while (2)
  {
    v430 = 0;
    v431 = v429 - 1;
    v432 = 84 * v429 - 168;
    v433 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[84 * v431];
    while (2)
    {
      v434 = *&v433[v430];
      if (v434 != 0.0)
      {
        if (v430)
        {
          v435 = v430 + v432;
          v436 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v430 - 1 + v432];
          if (v436 == 0.0)
          {
            v438 = *&v433[v430];
            if (v430 == 83)
            {
              goto LABEL_457;
            }
          }

          else
          {
            v437 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v430 - 1 + v432];
            do
            {
              v438 = v437;
              v437 = *&v1501[2 * (v437 + 1.0) - 2];
            }

            while (v437 < v438);
            if (v436 != v434)
            {
              v439 = *&v433[v430];
              do
              {
                v440 = v439;
                v439 = *&v1501[2 * (v439 + 1.0) - 2];
              }

              while (v439 < v440);
              if (v438 > v440)
              {
                v438 = v440;
              }

              v441 = (v434 + 1.0) - 1;
              v442 = &v1501[2 * v441];
              v443 = *v442;
              if (*v442 < v434)
              {
                do
                {
                  *v442 = v438;
                  v441 = (v443 + 1.0) - 1;
                  v442 = &v1501[2 * v441];
                  _NF = *v442 < v443;
                  v443 = *v442;
                }

                while (_NF);
              }

              *&v1501[2 * v441] = v438;
            }

            v444 = (v436 + 1.0) - 1;
            v445 = &v1501[2 * v444];
            v446 = *v445;
            if (*v445 < v436)
            {
              do
              {
                *v445 = v438;
                v444 = (v446 + 1.0) - 1;
                v445 = &v1501[2 * v444];
                _NF = *v445 < v446;
                v446 = *v445;
              }

              while (_NF);
            }

            *&v1501[2 * v444] = v438;
            *&v433[v430] = v438;
            v434 = v438;
            if (v430 == 83)
            {
LABEL_457:
              v457 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v435];
              if (v457 != 0.0)
              {
                v458 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v435];
                do
                {
                  v459 = v458;
                  v458 = *&v1501[2 * (v458 + 1.0) - 2];
                }

                while (v458 < v459);
                if (v457 != v438)
                {
                  v460 = v438;
                  do
                  {
                    v461 = v460;
                    v460 = *&v1501[2 * (v460 + 1.0) - 2];
                  }

                  while (v460 < v461);
                  if (v459 > v461)
                  {
                    v459 = v461;
                  }

                  v462 = (v438 + 1.0) - 1;
                  v463 = &v1501[2 * v462];
                  v464 = *v463;
                  if (*v463 < v438)
                  {
                    do
                    {
                      *v463 = v459;
                      v462 = (v464 + 1.0) - 1;
                      v463 = &v1501[2 * v462];
                      _NF = *v463 < v464;
                      v464 = *v463;
                    }

                    while (_NF);
                  }

                  *&v1501[2 * v462] = v459;
                }

                v465 = (v457 + 1.0) - 1;
                v466 = &v1501[2 * v465];
                v467 = *v466;
                if (*v466 < v457)
                {
                  do
                  {
                    *v466 = v459;
                    v465 = (v467 + 1.0) - 1;
                    v466 = &v1501[2 * v465];
                    _NF = *v466 < v467;
                    v467 = *v466;
                  }

                  while (_NF);
                }

                *&v1501[2 * v465] = v459;
                *&v433[v430] = v459;
              }

              goto LABEL_422;
            }
          }
        }

        else
        {
          v435 = v432;
        }

        v447 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v435 + 1];
        if (v447 == 0.0)
        {
          v438 = v434;
        }

        else
        {
          v448 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v435 + 1];
          do
          {
            v438 = v448;
            v448 = *&v1501[2 * (v448 + 1.0) - 2];
          }

          while (v448 < v438);
          if (v447 != v434)
          {
            v449 = v434;
            do
            {
              v450 = v449;
              v449 = *&v1501[2 * (v449 + 1.0) - 2];
            }

            while (v449 < v450);
            if (v438 > v450)
            {
              v438 = v450;
            }

            v451 = (v434 + 1.0) - 1;
            v452 = &v1501[2 * v451];
            v453 = *v452;
            if (*v452 < v434)
            {
              do
              {
                *v452 = v438;
                v451 = (v453 + 1.0) - 1;
                v452 = &v1501[2 * v451];
                _NF = *v452 < v453;
                v453 = *v452;
              }

              while (_NF);
            }

            *&v1501[2 * v451] = v438;
          }

          v454 = (v447 + 1.0) - 1;
          v455 = &v1501[2 * v454];
          v456 = *v455;
          if (*v455 < v447)
          {
            do
            {
              *v455 = v438;
              v454 = (v456 + 1.0) - 1;
              v455 = &v1501[2 * v454];
              _NF = *v455 < v456;
              v456 = *v455;
            }

            while (_NF);
          }

          *&v1501[2 * v454] = v438;
          *&v433[v430] = v438;
        }

        goto LABEL_457;
      }

LABEL_422:
      if (++v430 != 84)
      {
        continue;
      }

      break;
    }

    v429 = v1493.i32[v431];
    if (v429 < 109)
    {
      continue;
    }

    break;
  }

LABEL_471:
  v468 = 1;
  v469 = 1.0;
  do
  {
    v470 = v468 - 1;
    v471 = 42 * llround(vcvtd_n_f64_s32(v470, 1uLL));
    v472 = v471 + 2;
    v473 = v1493.i32[v468];
    if ((v471 + 2) <= (v473 + v471 + 1))
    {
      v474 = &v1501[2 * v471 + 2];
      v475 = v469;
      do
      {
        if (*v474 >= v472 + -1.0)
        {
          v469 = v475 + 1.0;
        }

        else
        {
          v469 = v475;
          v475 = *&v1501[2 * (*v474 + 1.0) - 2];
        }

        *v474++ = v475;
        ++v472;
        v475 = v469;
        --v473;
      }

      while (v473);
    }

    v468 = v1493.i32[v470];
  }

  while (v468 < 109);
  v476 = 0;
  v477 = &qword_27D11D7B0;
  do
  {
    v478 = v477;
    v479 = 84;
    do
    {
      v480 = *&v1501[2 * (*v478 + 1.0) - 2];
      *(v478 - 1) = *&v1501[2 * (*(v478 - 1) + 1.0) - 2];
      *v478 = v480;
      v478 += 2;
      v479 -= 2;
    }

    while (v479);
    ++v476;
    v477 += 84;
  }

  while (v476 != 108);
  LODWORD(v253) = vcvtad_u64_f64(v469 + -1.0);
  v1416[6] = v253;
  __src = 0;
  coder::array_base<float,int,2>::ensureCapacity(v1416, v253);
  v1451 = v253;
  __src = 0;
  coder::array_base<float,int,2>::ensureCapacity(v1449, v253);
  if (v253 < 1)
  {
    LODWORD(v1419) = 0;
  }

  else
  {
    v481 = &xmmword_27D106300;
    v482 = 108;
    v483 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::c_XC;
    do
    {
      memcpy(v483, v481, 0x2A0uLL);
      v483 += 42;
      v481 += 51;
      --v482;
    }

    while (v482);
    LODWORD(v1419) = 0;
    v484 = 0;
    __n[0] = v1449[0];
    v1430 = v253;
    do
    {
      v485 = 0;
      v486 = 0;
      v487 = 0;
      v1432.i64[0] = v484 + 1;
      v488 = (v484 + 1);
      do
      {
        v489 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v485];
        if (v489 == v488)
        {
          ++v486;
          *&v1461[2 * v487++ + 9122] = v485 + 1;
        }

        ++v485;
      }

      while (v485 != 9072);
      if (v486 > 0)
      {
        v490 = 16;
        __src = 0;
        if (v486 >= 17)
        {
          do
          {
            if (v490 <= 0x3FFFFFFF)
            {
              v490 *= 2;
            }

            else
            {
              v490 = 0x7FFFFFFF;
            }
          }

          while (v490 < v486);
        }

        operator new[]();
      }

      v491 = MEMORY[0];
      v492 = 1;
      if (MEMORY[0] < *(8 * v486 - 8))
      {
        v491 = *(8 * v486 - 8);
        v492 = v486;
      }

      v493 = 0;
      v494 = 0;
      do
      {
        v495 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v493];
        if (v495 == v488)
        {
          *&v1461[2 * v494++ + 27266] = v493 + 1;
        }

        ++v493;
      }

      while (v493 != 9072);
      *&v491 = v491;
      *(*v1416 + 4 * v484) = LODWORD(v491);
      LOWORD(v491) = *&v1461[2 * v492 + 27264];
      *(__n[0] + 4 * v484) = vmovl_s16(*&v491).i32[0];
      v484 = v1432.i64[0];
    }

    while (v1432.i64[0] != v253);
  }

  __src = 0;
  v496 = v1451;
  if (v1451 >= 1)
  {
    v497 = 16;
    if (v1451 >= 0x11)
    {
      do
      {
        if (v497 <= 0x3FFFFFFF)
        {
          v497 *= 2;
        }

        else
        {
          v497 = 0x7FFFFFFF;
        }
      }

      while (v497 < v1451);
    }

    operator new[]();
  }

  v498 = 0;
  v499 = v1366;
  v500 = v1419;
  v501 = 0;
  v502 = 0;
  v503 = v1451 > 0;
  coder::array_base<float,int,2>::ensureCapacity(v1449, v1451);
  v1448 = v496;
  coder::array_base<float,int,2>::ensureCapacity(v1446, v496);
  v504 = v6 + v6;
  v505 = (v6 + v6) + 108.0;
  v1393 = ((v6 + v6) + 84.0);
  if (v1393 * v505 >= 1)
  {
    memset_pattern16(v1468, &unk_2247A54D0, 4 * (v1393 * v505));
  }

  __asm { FMOV            V0.4S, #1.0 }

  v1374 = _Q0;
  v508 = &xmmword_27D106300;
  v509 = 108;
  v510 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::c_XC;
  do
  {
    memcpy(v510, v508, 0x2A0uLL);
    v510 += 42;
    v508 += 51;
    --v509;
  }

  while (v509);
  v512 = (v6 + 1.0);
  v513 = (v6 + 108.0);
  v514 = v513 - v512;
  v515 = v1393;
  if (v513 >= v512)
  {
    v522 = 0;
    v523 = 0;
    v524 = (v6 + 84.0) - v512;
    v525 = (v524 + 1);
    v526 = (v514 + 1);
    v527 = v512 - 1 + (v512 - 1) * v1393;
    v528 = &xmmword_27D12F348;
    v529 = v527;
    do
    {
      if ((v524 & 0x80000000) == 0)
      {
        if ((v524 + 1) >= 8 && (v527 + v523 * v515 + v524 >= v527 + v523 * v515 ? (_ZF = (v525 - 1) >> 32 == 0) : (_ZF = 0), _ZF))
        {
          v537 = v529;
          v538 = v528;
          v539 = v525 & 0xFFFFFFF8;
          do
          {
            v541 = v538[-2];
            v540 = v538[-1];
            v543 = *v538;
            v542 = v538[1];
            v538 += 4;
            v544 = vcvt_hight_f32_f64(vcvt_f32_f64(v541), v540);
            v511 = vcvt_hight_f32_f64(vcvt_f32_f64(v543), v542);
            v545 = &v1468[v537];
            *v545 = v544;
            v545[1] = v511;
            v537 += 8;
            v539 -= 8;
          }

          while (v539);
          v531 = v525 & 0xFFFFFFF8;
          if (v531 == v525)
          {
            goto LABEL_526;
          }
        }

        else
        {
          v531 = 0;
        }

        v532 = v525 - v531;
        v533 = v529 + v531;
        v534 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::c_XC + v531 + v522;
        do
        {
          v535 = *v534++;
          v536 = v535;
          *&v1468[v533++] = v536;
          --v532;
        }

        while (v532);
      }

LABEL_526:
      ++v523;
      v528 = (v528 + 8 * v525);
      v529 += v515;
      v522 += v525;
    }

    while (v523 != v526);
  }

  v1390 = v1451;
  if (v1451 >= 1)
  {
    v516 = (v504 + 1);
    v1388 = (v516 * v516);
    v517 = v504;
    v518 = vcvtd_n_f64_s32(v504, 1uLL);
    *v519.i64 = -(v517 * 0.5);
    v520 = floor(*v519.i64);
    v1389 = v504;
    v1363 = 0;
    v1361 = v503;
    v1362 = 0;
    v1360 = 0;
    if (v520 == *v519.i64)
    {
      if (v504 < 0)
      {
        v549 = v1388;
        v550 = v1388;
        v551 = v1389;
        goto LABEL_600;
      }

      if (v516 < 4)
      {
        v521 = 0;
        do
        {
LABEL_548:
          v1469[v521] = v521 - v518;
          ++v521;
        }

        while (v516 != v521);
        v559 = v504 + 1;
        if (v520 != *v519.i64)
        {
LABEL_550:
          v560 = floor(v517 + 0.5);
          v561 = v560 - v518;
          if (vabdd_f64(v560 - v518, v518) >= fabs(v518) * 4.4408921e-16)
          {
            if (v561 - v518 <= 0.0)
            {
              v560 = v560 + 1.0;
            }

            else
            {
              v561 = v561 + -1.0;
            }
          }

          else
          {
            v560 = v560 + 1.0;
            v561 = v518;
          }

          v567 = v560;
          v1471[0] = -(v504 * 0.5);
          v575 = v560 - 1;
          v1471[v575] = v561;
          v576 = v575 / 2;
          if (v560 >= 5)
          {
            if (v576 <= 2)
            {
              v577 = 2;
            }

            else
            {
              v577 = v575 / 2;
            }

            v578 = v577 - 1;
            do
            {
              v1471[1] = 1.0 - v518;
              *&v1470[8 * v567 + 8] = v561 + -1.0;
              --v578;
            }

            while (v578);
          }

          v579 = &v1471[v576];
          if (v575 == 2 * v576)
          {
            v519.i64[0] = 0.5;
            *v579 = (v561 - v518) * 0.5;
          }

          else
          {
            *v519.i64 = v561 - v576;
            *v579 = v576 - v518;
            v579[1] = *v519.i64;
          }

          v551 = v1389;
          v549 = v1388;
          goto LABEL_587;
        }

LABEL_566:
        v567 = v504 + 1;
        v551 = v1389;
        v549 = v1388;
        if (v1389 < 0)
        {
          goto LABEL_587;
        }

        if (v516 >= 4)
        {
          v568 = v516 & 0xFFFFFFFC;
          v519 = vdupq_lane_s64(*&v518, 0);
          v569 = 0x100000000;
          v570 = &v1472;
          v571 = v568;
          do
          {
            v572 = vadd_s32(v569, 0x200000002);
            v573.i64[0] = v569.u32[0];
            v573.i64[1] = v569.u32[1];
            v574 = vcvtq_f64_u64(v573);
            v573.i64[0] = v572.u32[0];
            v573.i64[1] = v572.u32[1];
            v570[-1] = vsubq_f64(v574, v519);
            *v570 = vsubq_f64(vcvtq_f64_u64(v573), v519);
            v569 = vadd_s32(v569, 0x400000004);
            v570 += 2;
            v571 -= 4;
          }

          while (v571);
          v567 = v504 + 1;
          if (v568 == v516)
          {
            goto LABEL_587;
          }
        }

        else
        {
          v568 = 0;
        }

        do
        {
          *v519.i64 = v568 - v518;
          v1471[v568++] = *v519.i64;
        }

        while (v516 != v568);
        v567 = v504 + 1;
LABEL_587:
        v550 = v567 * v559;
        if (v559 < 1)
        {
          goto LABEL_600;
        }

        LODWORD(__n[0]) = v567 * v559;
        v580 = 0;
        v581 = 0;
        v582 = v559;
        v583 = v1480;
        while (2)
        {
          if (v567 >= 1)
          {
            *v511.i64 = v1469[v581];
            v1432 = v511;
            memcpy(&v1477[8 * v567 * v581], v1471, 8 * v567);
            if (v567 <= 3)
            {
              v584 = 0;
              v519.i64[0] = v1432.i64[0];
              goto LABEL_596;
            }

            v519.i64[0] = v1432.i64[0];
            v511 = vdupq_lane_s64(v1432.i64[0], 0);
            v585 = v583;
            v586 = v567 & 0x7FFFFFFC;
            do
            {
              v585[-1] = v511;
              *v585 = v511;
              v585 += 2;
              v586 -= 4;
            }

            while (v586);
            v584 = v567 & 0x7FFFFFFC;
            if (v584 != v567)
            {
LABEL_596:
              v587 = v567 - v584;
              v588 = &v1479[8 * v584 + 8 * v580];
              do
              {
                *v588++ = v519.i64[0];
                --v587;
              }

              while (v587);
            }
          }

          ++v581;
          v583 = (v583 + 8 * v567);
          v580 += v567;
          if (v581 != v582)
          {
            continue;
          }

          break;
        }

        v515 = v1393;
        v551 = v1389;
        v549 = v1388;
        v550 = __n[0];
LABEL_600:
        v589 = v550;
        v590 = v1390;
        if (v550 >= 1)
        {
          if (v550 <= 3)
          {
            v591 = 0;
            goto LABEL_606;
          }

          v591 = v550 & 0x7FFFFFFC;
          v592 = &v1476;
          v593 = v1480;
          v594 = v589 & 0x7FFFFFFC;
          do
          {
            v511 = vmulq_f64(v593[-1], v593[-1]);
            v519 = vmulq_f64(*v593, *v593);
            v592[-1] = v511;
            *v592 = v519;
            v592 += 2;
            v593 += 2;
            v594 -= 4;
          }

          while (v594);
          if (v591 != v589)
          {
LABEL_606:
            v595 = v589 - v591;
            v596 = 8 * v591;
            v597 = &v1475[v591];
            v598 = &v1479[v596];
            do
            {
              v599 = *v598++;
              *v597++ = v599 * v599;
              --v595;
            }

            while (v595);
          }

          if (v589 <= 3)
          {
            v600 = 0;
            goto LABEL_613;
          }

          v600 = v589 & 0x7FFFFFFC;
          v601 = &v1474;
          v602 = &v1478;
          v603 = v600;
          do
          {
            v511 = vmulq_f64(v602[-1], v602[-1]);
            v519 = vmulq_f64(*v602, *v602);
            v601[-1] = v511;
            *v601 = v519;
            v601 += 2;
            v602 += 2;
            v603 -= 4;
          }

          while (v603);
          if (v600 != v589)
          {
LABEL_613:
            v604 = v589 - v600;
            v605 = 8 * v600;
            v606 = &v1473[v600];
            v607 = &v1477[v605];
            do
            {
              v608 = *v607++;
              *v606++ = v608 * v608;
              --v604;
            }

            while (v604);
          }
        }

        v609 = 0;
        v1375 = v549 - 1;
        v1402 = 8 * v589;
        v1422 = v1500;
        v1373 = &v1505;
        v1372 = &v1461[45966];
        v1400 = &v1483[8 * (3 * v589)];
        __dst = &v1483[8 * (2 * v589)];
        __b = &v1483[8 * (4 * v589)];
        v1383 = 2 * v589 - 1;
        v1384 = v589 - 1;
        v1381 = 4 * v589 - 1;
        v1382 = 3 * v589 - 1;
        v1427 = &v1501[1];
        v610 = v516 & 0xFFFFFFFE;
        v1392 = v549 & 0xFFFFFFF8;
        v1406 = v549 & 0xFFFFFFE0;
        v611 = 4 * (v504 + 1);
        v1397 = &v1461[45986];
        v1398 = &v1461[45974];
        v1377 = &v1458;
        v1367 = &v1462;
        v1368 = v549 & 0x1C;
        v1387 = v549 & 0xFFFFFFFC;
        v1386 = -v1387;
        v511.i64[0] = 67305985;
        v1371 = v511;
        v1376 = &v1461[9098];
        v1379 = &v1461[9073];
        v1380 = &v1482;
        v1370 = &v1459 + 4;
        v1378 = &v1467;
        v1394 = &v1503;
        v1410 = &v1502;
        v1416 = &v1487;
        v1421 = &v1484;
        v1364 = &v1486[2];
        v1365 = &v1456;
        v1369 = &v1489.i8[8];
        v1385 = v589;
        v1404 = v610;
        v1405 = v611;
LABEL_618:
        if ((v551 & 0x80000000) == 0)
        {
          v615 = 0;
          v616 = *(v1449[0] + 4 * v609);
          v617 = *(v1446[0] + 4 * v609);
          v618 = &v1461[45970];
          v619 = v1398;
          do
          {
            v620 = ((v617 + v615) - 1) * v515;
            if (v516 >= 2)
            {
              v622 = 0;
              v623 = v619;
              v624 = v610;
              do
              {
                v625 = v1468[(v616 + (v622 + 1)) - 1 + v620];
                *(v623 - 1) = v1468[(v616 + v622) - 1 + v620];
                *v623 = v625;
                v623 += 2;
                v622 += 2;
                v624 -= 2;
              }

              while (v624);
              v621 = v610;
              if (v610 == v516)
              {
                goto LABEL_620;
              }
            }

            else
            {
              v621 = 0;
            }

            do
            {
              *&v618[2 * v621] = v1468[(v616 + v621) - 1 + v620];
              ++v621;
            }

            while (v516 != v621);
LABEL_620:
            ++v615;
            v619 = (v619 + v611);
            v618 = (v618 + v611);
          }

          while (v615 != v516);
        }

        if (v549 > 2)
        {
          v626 = v1449[0];
          v628 = v1446[0];
          v511.i32[0] = v1468[(*(v1449[0] + 4 * v609) + (0 % v516)) - 1 + ((*(v1446[0] + 4 * v609) + (0 / v516)) - 1) * v515];
          if (v549 > 1)
          {
            v631 = &v1461[45974];
            v632 = v549 - 1;
            do
            {
              v633 = *v631++;
              v634 = v633;
              if (*v511.i32 > v633)
              {
                *v511.i32 = v634;
              }

              --v632;
            }

            while (v632);
          }
        }

        else
        {
          v626 = v1449[0];
          v627 = *(v1449[0] + 4 * v609);
          v628 = v1446[0];
          v629 = *(v1446[0] + 4 * v609);
          v511.i32[0] = v1468[v627 - 1 + (v629 - 1) * v515];
          if (v549 == 1)
          {
            goto LABEL_640;
          }

          v630 = (v627 + (v1375 % v516)) + ((v629 + (v1375 / v516)) - 1) * v515 - 1;
          if (*v511.i32 > *&v1468[v630])
          {
            v511.i32[0] = v1468[v630];
            if (v504 == -1)
            {
              goto LABEL_643;
            }

LABEL_639:
            if (v549 < 8)
            {
LABEL_640:
              v635 = 0;
              goto LABEL_641;
            }

            v519 = vdupq_lane_s32(*v511.i8, 0);
            v644 = v1397;
            v645 = v1392;
            do
            {
              v646 = vsubq_f32(*v644, v519);
              v644[-1] = vsubq_f32(v644[-1], v519);
              *v644 = v646;
              v644 += 2;
              v645 -= 8;
            }

            while (v645);
            v635 = v1392;
            if (v1392 != v549)
            {
LABEL_641:
              v636 = v549 - v635;
              v637 = &v1461[4 * v635 + 45970];
              do
              {
                *v637 = *v637 - *v511.i32;
                ++v637;
                --v636;
              }

              while (v636);
            }

LABEL_643:
            v1429 = v628;
            v1430 = v626;
            v1417 = v609;
            if (v589 >= 1)
            {
              v638 = v1402;
              memcpy(v1483, v1475, v1402);
              memcpy(&v1483[v638], v1473, v638);
              memcpy(__dst, v1479, v638);
              memcpy(v1400, v1477, v638);
              memset_pattern16(__b, &unk_2247A3FB0, v638);
            }

            v639.i64[0] = 0x100000001;
            v639.i64[1] = 0x100000001;
            v640.i64[0] = 0x101010101010101;
            v640.i64[1] = 0x101010101010101;
            if (v504 == -1)
            {
LABEL_616:
              memset(&v1461[45970], 0, 20);
              v519.i64[0] = 0;
              v511.i64[0] = 0;
              v612 = v1417;
              v610 = v1404;
              v613 = v1430;
              v614 = v1429;
              goto LABEL_617;
            }

            if (v549 < 4)
            {
              v641 = 0;
              v642 = v1406;
              goto LABEL_661;
            }

            v642 = v1406;
            if (v549 >= 0x20)
            {
              v647 = v1367;
              v648 = v1377;
              v649 = v1406;
              do
              {
                v511 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v647[-4]), vcgtzq_f32(v647[-3])), vuzp1q_s16(vcgtzq_f32(v647[-2]), vcgtzq_f32(v647[-1]))), v640);
                v519 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(*v647), vcgtzq_f32(v647[1])), vuzp1q_s16(vcgtzq_f32(v647[2]), vcgtzq_f32(v647[3]))), v640);
                v648[-1] = v511;
                *v648 = v519;
                v648 += 2;
                v647 += 8;
                v649 -= 32;
              }

              while (v649);
              if (v642 != v549)
              {
                v643 = v642;
                v641 = v642;
                if (!v1368)
                {
                  goto LABEL_661;
                }

                goto LABEL_658;
              }
            }

            else
            {
              v643 = 0;
LABEL_658:
              v650 = v1386 + v643;
              v651 = (v1457 + v643);
              v652 = &v1461[4 * v643 + 45970];
              do
              {
                v653 = *v652++;
                v511 = vcgtzq_f32(v653);
                *v511.i8 = vand_s8(vmovn_s32(v511), 0x1000100010001);
                *v651++ = vuzp1_s8(*v511.i8, *v511.i8).u32[0];
                v650 += 4;
              }

              while (v650);
              v641 = v1387;
              if (v1387 != v549)
              {
LABEL_661:
                v654 = v549 - v641;
                v655 = v1457 + v641;
                v656 = &v1461[4 * v641 + 45970];
                do
                {
                  v657 = *v656++;
                  *v655++ = v657 > 0.0;
                  --v654;
                }

                while (v654);
              }
            }

            LODWORD(v658) = 0;
            v659 = v1457;
            v660 = v549;
            do
            {
              v661 = v658;
              v663 = *v659++;
              v662 = v663;
              v664 = v663 != 0;
              if (v663)
              {
                v658 = (v658 + 1);
              }

              else
              {
                v658 = v658;
              }

              --v660;
            }

            while (v660);
            v1403 = v664;
            v665 = 0;
            do
            {
              if (*(v1457 + v665))
              {
                v1461[v660 + 9097] = v665 + 1;
                LODWORD(v660) = v660 + 1;
              }

              ++v665;
            }

            while (v549 != v665);
            v1409 = v661;
            if (v658)
            {
              bzero(v1466, 4 * (v658 * v658));
              v666 = v658 + 1;
              v667 = 0;
              if (v658 == 1)
              {
                goto LABEL_674;
              }

              v675 = ~v1409 - (v662 != 0);
              if (v666 >= 0)
              {
                v675 = v658 + 1;
              }

              v676 = v675 * (v658 - 1);
              v677 = (v676 & 0x80000000) != 0;
              if (v666 < 0)
              {
                v677 = v676 > 0x80000000;
              }

              v678 = (v676 & 0xFFFFFFFF00000000) != 0;
              if (v677)
              {
LABEL_674:
                v642 = v1406;
                v639.i64[0] = 0x100000001;
                v639.i64[1] = 0x100000001;
              }

              else
              {
                v642 = v1406;
                v639.i64[0] = 0x100000001;
                v639.i64[1] = 0x100000001;
                if (!v678)
                {
                  v679 = 0;
                  v667 = v658 & 0x7FFFFFFE;
                  v680 = v1376;
                  v681 = v667;
                  do
                  {
                    v682 = &v1461[4 * *v680 + 45970];
                    v1466[v679] = *&v1461[4 * *(v680 - 1) + 45966];
                    v1466[v666 + v679] = *(v682 - 1);
                    v680 += 2;
                    v679 += 2 * v666;
                    v681 -= 2;
                  }

                  while (v681);
                  if (v667 == v658)
                  {
                    goto LABEL_677;
                  }
                }
              }

              v668 = v658 - v667;
              v669 = v667 * v666;
              v670 = &v1461[v667 + 9097];
              do
              {
                v671 = *v670++;
                v1466[v669] = *&v1461[4 * v671 + 45966];
                v669 += v666;
                --v668;
              }

              while (v668);
            }

LABEL_677:
            if (v549 > 3)
            {
              if (v549 >= 0x20)
              {
                v683 = 0uLL;
                v684 = v1377;
                v685 = 0uLL;
                v686 = v642;
                v687 = 0uLL;
                v688 = 0uLL;
                v689 = 0uLL;
                v690 = 0uLL;
                v691 = 0uLL;
                v692 = 0uLL;
                do
                {
                  v693 = vtstq_s8(v684[-1], v684[-1]);
                  v694 = vmovl_u8(*v693.i8);
                  v695 = vmovl_high_u8(v693);
                  v696 = vtstq_s8(*v684, *v684);
                  v697 = vmovl_u8(*v696.i8);
                  v698 = vmovl_high_u8(v696);
                  v688 = vaddq_s32(v688, vandq_s8(vmovl_high_u16(v695), v639));
                  v687 = vaddq_s32(v687, vandq_s8(vmovl_u16(*v695.i8), v639));
                  v685 = vaddq_s32(v685, vandq_s8(vmovl_high_u16(v694), v639));
                  v683 = vaddq_s32(v683, vandq_s8(vmovl_u16(*v694.i8), v639));
                  v692 = vaddq_s32(v692, vandq_s8(vmovl_high_u16(v698), v639));
                  v691 = vaddq_s32(v691, vandq_s8(vmovl_u16(*v698.i8), v639));
                  v690 = vaddq_s32(v690, vandq_s8(vmovl_high_u16(v697), v639));
                  v689 = vaddq_s32(v689, vandq_s8(vmovl_u16(*v697.i8), v639));
                  v684 += 2;
                  v686 -= 32;
                }

                while (v686);
                v699 = vaddq_s32(vaddq_s32(v689, v683), vaddq_s32(v691, v687));
                v519 = vaddq_s32(vaddq_s32(v690, v685), vaddq_s32(v692, v688));
                v511 = vaddq_s32(v699, v519);
                v673 = vaddvq_s32(v511);
                if (v642 == v549)
                {
                  goto LABEL_702;
                }

                v672 = v642;
                v674 = v642;
                if (!v1368)
                {
                  goto LABEL_698;
                }
              }

              else
              {
                v673 = 0;
                v674 = 0;
              }

              v511 = v673;
              v700 = v1386 + v674;
              v701 = (v1457 + v674);
              do
              {
                v702 = *v701++;
                v519.i32[0] = v702;
                v703 = vmovl_u8(*v519.f32).u64[0];
                v519 = vandq_s8(vmovl_u16(vtst_s16(v703, v703)), v639);
                v511 = vaddq_s32(v511, v519);
                v700 += 4;
              }

              while (v700);
              v673 = vaddvq_s32(v511);
              v672 = v1387;
              if (v1387 != v549)
              {
                goto LABEL_698;
              }
            }

            else
            {
              v672 = 0;
              v673 = 0;
LABEL_698:
              v704 = v549 - v672;
              v705 = v1457 + v672;
              do
              {
                if (*v705++)
                {
                  ++v673;
                }

                --v704;
              }

              while (v704);
            }

LABEL_702:
            v707 = 0;
            v708 = 0;
            do
            {
              if (*(v1457 + v707))
              {
                v1461[v708++ + 9072] = v707 + 1;
              }

              ++v707;
            }

            while (v549 != v707);
            v709 = v673;
            if (v673)
            {
              if (v673 == 1)
              {
                v710 = 0;
                v712 = v1383;
                v711 = v1384;
                v714 = v1379;
                v713 = v1380;
                goto LABEL_712;
              }

              v710 = v673 & 0xFFFFFFFE;
              v714 = v1379;
              v713 = v1380;
              v715 = v1379;
              v716 = v1380;
              v717 = v710;
              v712 = v1383;
              v711 = v1384;
              do
              {
                v718 = *&v1483[8 * *v715 - 8];
                *(v716 - 1) = *&v1483[8 * *(v715 - 1) - 8];
                *v716 = v718;
                v716 += 2;
                v715 += 2;
                v717 -= 2;
              }

              while (v717);
              if (v710 != v673)
              {
LABEL_712:
                v719 = v673 - v710;
                v720 = &v1481[8 * v710];
                v721 = &v1461[v710 + 9072];
                do
                {
                  v722 = *v721++;
                  *v720++ = *&v1483[8 * v722 - 8];
                  --v719;
                }

                while (v719);
              }

              if (v673 == 1)
              {
                v723 = 0;
                goto LABEL_719;
              }

              v723 = v673 & 0xFFFFFFFE;
              v724 = &v713[v673];
              v725 = v714;
              v726 = v723;
              do
              {
                v727 = *&v1483[8 * v711 + 8 * *v725];
                *(v724 - 1) = *&v1483[8 * v711 + 8 * *(v725 - 1)];
                *v724 = v727;
                v724 += 2;
                v725 += 2;
                v726 -= 2;
              }

              while (v726);
              if (v723 != v673)
              {
LABEL_719:
                v728 = v673 - v723;
                v729 = &v1481[8 * v723 + 8 * v673];
                v730 = &v1461[v723 + 9072];
                do
                {
                  v731 = *v730++;
                  *v729++ = *&v1483[8 * v711 + 8 * v731];
                  --v728;
                }

                while (v728);
              }

              if (v673 == 1)
              {
                v732 = 0;
                goto LABEL_726;
              }

              v732 = v673 & 0xFFFFFFFE;
              v733 = &v713[2 * v673];
              v734 = v714;
              v735 = v732;
              do
              {
                v736 = *&v1483[8 * v712 + 8 * *v734];
                *(v733 - 1) = *&v1483[8 * v712 + 8 * *(v734 - 1)];
                *v733 = v736;
                v733 += 2;
                v734 += 2;
                v735 -= 2;
              }

              while (v735);
              if (v732 != v673)
              {
LABEL_726:
                v737 = v673 - v732;
                v738 = &v1481[16 * v673 + 8 * v732];
                v739 = &v1461[v732 + 9072];
                do
                {
                  v740 = *v739++;
                  *v738++ = *&v1483[8 * v712 + 8 * v740];
                  --v737;
                }

                while (v737);
              }

              if (v673 == 1)
              {
                v741 = 0;
                v743 = v1381;
                v742 = v1382;
                goto LABEL_733;
              }

              v741 = v673 & 0xFFFFFFFE;
              v744 = &v713[3 * v673];
              v745 = v714;
              v746 = v741;
              v743 = v1381;
              v742 = v1382;
              do
              {
                v747 = *&v1483[8 * v742 + 8 * *v745];
                *(v744 - 1) = *&v1483[8 * v742 + 8 * *(v745 - 1)];
                *v744 = v747;
                v744 += 2;
                v745 += 2;
                v746 -= 2;
              }

              while (v746);
              if (v741 != v673)
              {
LABEL_733:
                v748 = v673 - v741;
                v749 = &v1481[24 * v673 + 8 * v741];
                v750 = &v1461[v741 + 9072];
                do
                {
                  v751 = *v750++;
                  *v749++ = *&v1483[8 * v742 + 8 * v751];
                  --v748;
                }

                while (v748);
              }

              if (v673 == 1)
              {
                v752 = 0;
                goto LABEL_740;
              }

              v752 = v673 & 0xFFFFFFFE;
              v753 = &v713[4 * v673];
              v754 = v714;
              v755 = v752;
              do
              {
                v756 = *&v1483[8 * v743 + 8 * *v754];
                *(v753 - 1) = *&v1483[8 * v743 + 8 * *(v754 - 1)];
                *v753 = v756;
                v753 += 2;
                v754 += 2;
                v755 -= 2;
              }

              while (v755);
              if (v752 != v673)
              {
LABEL_740:
                v757 = v673 - v752;
                v758 = &v1481[32 * v673 + 8 * v752];
                v759 = &v1461[v752 + 9072];
                do
                {
                  v760 = *v759++;
                  *v758++ = *&v1483[8 * v743 + 8 * v760];
                  --v757;
                }

                while (v757);
              }

              memcpy(v1483, v1481, 40 * v673);
            }

            if (!v658)
            {
              goto LABEL_616;
            }

            if (v658 <= 1)
            {
              v761 = 0;
              goto LABEL_749;
            }

            v761 = v658 & 0xFFFFFFFE;
            v762 = v1376;
            v763 = v1370;
            v764 = v761;
            do
            {
              v765 = *&v1461[4 * *v762 + 45966];
              *(v763 - 1) = *&v1461[4 * *(v762 - 1) + 45966];
              *v763 = v765;
              v763 += 2;
              v762 += 2;
              v764 -= 2;
            }

            while (v764);
            if (v761 != v658)
            {
LABEL_749:
              v766 = v658 - v761;
              v767 = &v1459 + v761;
              v768 = &v1461[v761 + 9097];
              do
              {
                v769 = *v768++;
                *v767++ = *&v1461[4 * v769 + 45966];
                --v766;
              }

              while (v766);
            }

            if (v658 <= 1)
            {
              v770 = 0;
              goto LABEL_756;
            }

            v770 = v658 & 0xFFFFFFFE;
            v771 = &v1459;
            v772 = v770;
            do
            {
              v511.i64[0] = *v771;
              *__n = v511;
              v773.f32[0] = logf(COERCE_FLOAT(HIDWORD(*v771)));
              v1432 = v773;
              *v511.i32 = logf(*__n);
              v511.i32[1] = v1432.i32[0];
              *v771++ = v511.i64[0];
              v772 -= 2;
            }

            while (v772);
            if (v770 != v658)
            {
LABEL_756:
              v774 = v658 - v770;
              v775 = &v1459 + v770;
              do
              {
                *v775 = logf(*v775);
                ++v775;
                --v774;
              }

              while (v774);
            }

            v776 = 4 * v658;
            bzero(&v1461[45970], 4 * v658);
            v780 = 0;
            v781 = 0;
            v782 = v1378;
            v783 = v1397;
            while (2)
            {
              v777.i32[0] = *(&v1459 + v781);
              if (v658 < 8)
              {
                v784 = 0;
                goto LABEL_765;
              }

              v785 = vdupq_lane_s32(v777, 0);
              v786 = v782;
              v787 = v783;
              v788 = v658 & 0xFFFFFFF8;
              do
              {
                v778 = *v786;
                v779 = vmlaq_f32(v787[-1], v786[-1], v785);
                v789 = vmlaq_f32(*v787, *v786, v785);
                v787[-1] = v779;
                *v787 = v789;
                v787 += 2;
                v786 += 2;
                v788 -= 8;
              }

              while (v788);
              v784 = v658 & 0xFFFFFFF8;
              if (v784 != v658)
              {
LABEL_765:
                v790 = v658 - v784;
                v791 = &v1461[4 * v784 + 45970];
                v792 = &v1466[v784 + v780];
                do
                {
                  v793 = *v792++;
                  *v791 = *v791 + (*v777.i32 * v793);
                  ++v791;
                  --v790;
                }

                while (v790);
              }

              ++v781;
              v782 = (v782 + v776);
              v780 += v658;
              if (v781 != v658)
              {
                continue;
              }

              break;
            }

            v794 = 0;
            v795 = 2 * v658;
            v796 = 3 * v658;
            v797 = v658 & 0xFFFFFFFE;
            v798 = 8 * v658;
            v799 = v1466;
            while (2)
            {
              if (v658 < 2)
              {
                v800 = 0;
                v801 = 0.0;
                goto LABEL_775;
              }

              v802 = 0;
              v803 = v1483;
              v804 = v799;
              v805 = v658 & 0xFFFFFFFE;
              do
              {
                v806.i32[0] = *v804;
                v807 = *v803++;
                v806.i32[1] = v804[v658];
                v802 = vmla_f32(v802, vcvt_f32_f64(v807), v806);
                v804 = (v804 + v798);
                v805 -= 2;
              }

              while (v805);
              v801 = vaddv_f32(v802);
              v800 = v658 & 0xFFFFFFFE;
              if (v797 != v658)
              {
LABEL_775:
                v808 = v658 - v800;
                v809 = &v1483[8 * v800];
                v810 = v776 * v800;
                do
                {
                  v811 = *v809++;
                  v812 = v811;
                  v801 = v801 + (*(v799 + v810) * v812);
                  v810 += v776;
                  --v808;
                }

                while (v808);
              }

              v1493.f32[v794] = v801;
              if (v658 < 2)
              {
                v813 = 0;
                v814 = 0.0;
                goto LABEL_782;
              }

              v815 = 0;
              v816 = v799;
              v817 = &v1483[8 * v709];
              v818 = v658 & 0xFFFFFFFE;
              do
              {
                v819.i32[0] = *v816;
                v820 = *v817++;
                v819.i32[1] = v816[v658];
                v815 = vmla_f32(v815, vcvt_f32_f64(v820), v819);
                v816 = (v816 + v798);
                v818 -= 2;
              }

              while (v818);
              v814 = vaddv_f32(v815);
              v813 = v658 & 0xFFFFFFFE;
              if (v797 != v658)
              {
LABEL_782:
                v821 = v658 - v813;
                v822 = &v1483[8 * v709 + 8 * v813];
                v823 = v776 * v813;
                do
                {
                  v824 = *v822++;
                  v825 = v824;
                  v814 = v814 + (*(v799 + v823) * v825);
                  v823 += v776;
                  --v821;
                }

                while (v821);
              }

              v1493.f32[v794 + v658] = v814;
              if (v658 < 2)
              {
                v826 = 0;
                v827 = 0.0;
                goto LABEL_789;
              }

              v828 = 0;
              v829 = v799;
              v830 = &v1483[16 * v709];
              v831 = v658 & 0xFFFFFFFE;
              do
              {
                v832.i32[0] = *v829;
                v833 = *v830++;
                v832.i32[1] = v829[v658];
                v828 = vmla_f32(v828, vcvt_f32_f64(v833), v832);
                v829 = (v829 + v798);
                v831 -= 2;
              }

              while (v831);
              v827 = vaddv_f32(v828);
              v826 = v658 & 0xFFFFFFFE;
              if (v797 != v658)
              {
LABEL_789:
                v834 = v658 - v826;
                v835 = &v1483[16 * v709 + 8 * v826];
                v836 = v776 * v826;
                do
                {
                  v837 = *v835++;
                  v838 = v837;
                  v827 = v827 + (*(v799 + v836) * v838);
                  v836 += v776;
                  --v834;
                }

                while (v834);
              }

              v1493.f32[v795 + v794] = v827;
              if (v658 < 2)
              {
                v839 = 0;
                v840 = 0.0;
                goto LABEL_796;
              }

              v841 = 0;
              v842 = v799;
              v843 = &v1483[24 * v709];
              v844 = v658 & 0xFFFFFFFE;
              do
              {
                v845.i32[0] = *v842;
                v846 = *v843++;
                v845.i32[1] = v842[v658];
                v841 = vmla_f32(v841, vcvt_f32_f64(v846), v845);
                v842 = (v842 + v798);
                v844 -= 2;
              }

              while (v844);
              v840 = vaddv_f32(v841);
              v839 = v658 & 0xFFFFFFFE;
              if (v797 != v658)
              {
LABEL_796:
                v847 = v658 - v839;
                v848 = &v1483[24 * v709 + 8 * v839];
                v849 = v776 * v839;
                do
                {
                  v850 = *v848++;
                  v851 = v850;
                  v840 = v840 + (*(v799 + v849) * v851);
                  v849 += v776;
                  --v847;
                }

                while (v847);
              }

              v1493.f32[v796 + v794] = v840;
              if (v658 < 2)
              {
                v852 = 0;
                v853 = 0.0;
                goto LABEL_803;
              }

              v854 = 0;
              v855 = v799;
              v856 = &v1483[32 * v709];
              v857 = v658 & 0xFFFFFFFE;
              do
              {
                v858.i32[0] = *v855;
                v859 = *v856++;
                v858.i32[1] = v855[v658];
                v854 = vmla_f32(v854, vcvt_f32_f64(v859), v858);
                v855 = (v855 + v798);
                v857 -= 2;
              }

              while (v857);
              v853 = vaddv_f32(v854);
              v852 = v658 & 0xFFFFFFFE;
              if (v797 != v658)
              {
LABEL_803:
                v860 = v658 - v852;
                v861 = &v1483[32 * v709 + 8 * v852];
                v862 = v776 * v852;
                do
                {
                  v863 = *v861++;
                  v864 = v863;
                  v853 = v853 + (*(v799 + v862) * v864);
                  v862 += v776;
                  --v860;
                }

                while (v860);
              }

              v1493.f32[v776 + v794++] = v853;
              ++v799;
              if (v794 != v658)
              {
                continue;
              }

              break;
            }

            if (v658 == 5)
            {
              v865 = 0;
              v866 = 0;
              v1490[1] = v1497;
              v1491 = v1498;
              v1492 = v1499;
              *v1488 = v1493;
              *&v1488[16] = v1494;
              v519 = v1495;
              v1489 = v1495;
              v1490[0] = v1496;
              v511 = v1371;
              v1501[0] = v1371.i32[0];
              v867 = v1488;
              v868 = v1369;
              v869 = 6;
              LOBYTE(v1501[1]) = 5;
              v515 = v1393;
              v590 = v1390;
              v551 = v1389;
              v549 = v1388;
              LODWORD(v589) = v1385;
              v612 = v1417;
              v870 = v1372;
              v610 = v1404;
              do
              {
                v871 = *v867;
                v872 = fabsf(*v867);
                v873 = fabsf(v867[1]);
                v874 = v873 > v872;
                if (v865 != 18)
                {
                  if (v873 > v872)
                  {
                    v872 = v873;
                  }

                  v875 = fabsf(v867[2]);
                  if (v875 > v872)
                  {
                    v874 = 2;
                  }

                  if (v865 != 12)
                  {
                    if (v875 > v872)
                    {
                      v872 = v875;
                    }

                    v876 = fabsf(v867[3]);
                    if (v876 > v872)
                    {
                      v874 = 3;
                    }

                    if (v865 != 6)
                    {
                      if (v876 > v872)
                      {
                        v872 = v876;
                      }

                      if (fabsf(v867[4]) > v872)
                      {
                        v874 = 4;
                      }
                    }
                  }
                }

                if (*&v1488[4 * v865 + 4 * v874] != 0.0)
                {
                  if (v874)
                  {
                    v877 = v866 + v874;
                    *(v1501 + v866) = v877 + 1;
                    v878 = *(v868 - 10);
                    v879 = &v1488[4 * v877];
                    *(v868 - 10) = *v879;
                    *v879 = v878;
                    v880 = *(v868 - 5);
                    *(v868 - 5) = v879[5];
                    v879[5] = v880;
                    v881 = *v868;
                    *v868 = v879[10];
                    v879[10] = v881;
                    v882 = v868[5];
                    v868[5] = v879[15];
                    v879[15] = v882;
                    v883 = v868[10];
                    v868[10] = v879[20];
                    v879[20] = v883;
                    v871 = *v867;
                  }

                  v867[1] = v867[1] / v871;
                  if (v865 + 3 != v869)
                  {
                    v867[2] = v867[2] / *v867;
                    if (v865 + 4 != v869)
                    {
                      v867[3] = v867[3] / *v867;
                      if (v865 + 5 != v869)
                      {
                        v867[4] = v867[4] / *v867;
                      }
                    }
                  }
                }

                v884 = v869 + 5;
                v885 = v867[5];
                if (v885 != 0.0)
                {
                  v867[6] = v867[6] - (v867[1] * v885);
                  if (v865 + 8 != v884)
                  {
                    v867[7] = v867[7] - (v867[2] * v885);
                    if (v865 + 9 != v884)
                    {
                      v867[8] = v867[8] - (v867[3] * v885);
                      if (v865 + 10 != v884)
                      {
                        v867[9] = v867[9] - (v867[4] * v885);
                      }
                    }
                  }
                }

                if (v865 != 18)
                {
                  v886 = v867[10];
                  if (v886 != 0.0)
                  {
                    v867[11] = v867[11] - (v867[1] * v886);
                    if (v865 + 13 != v869 + 10)
                    {
                      v867[12] = v867[12] - (v867[2] * v886);
                      if (v865 + 14 != v869 + 10)
                      {
                        v867[13] = v867[13] - (v867[3] * v886);
                        if (v865 + 10 != v884)
                        {
                          v867[14] = v867[14] - (v867[4] * v886);
                        }
                      }
                    }
                  }

                  if (v865 != 12)
                  {
                    v887 = v867[15];
                    if (v887 != 0.0)
                    {
                      v867[16] = v867[16] - (v867[1] * v887);
                      if (v865 + 18 != v869 + 15)
                      {
                        v867[17] = v867[17] - (v867[2] * v887);
                        if (v865 + 19 != v869 + 15)
                        {
                          v867[18] = v867[18] - (v867[3] * v887);
                          if (v865 + 10 != v884)
                          {
                            v867[19] = v867[19] - (v867[4] * v887);
                          }
                        }
                      }
                    }

                    if (v865 != 6)
                    {
                      v888 = v867[20];
                      if (v888 != 0.0)
                      {
                        v867[21] = v867[21] - (v867[1] * v888);
                        if (v865 + 23 != v869 + 20)
                        {
                          v867[22] = v867[22] - (v867[2] * v888);
                          if (v865 + 24 != v869 + 20)
                          {
                            v867[23] = v867[23] - (v867[3] * v888);
                            if (v865 + 10 != v884)
                            {
                              v867[24] = v867[24] - (v867[4] * v888);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v889 = *(v1501 + v866);
                if (v866 + 1 != v889)
                {
                  v890 = *&v1461[4 * v866 + 45970];
                  *&v1461[4 * v866 + 45970] = *&v870[2 * v889];
                  *&v870[2 * v889] = v890;
                }

                v869 += 5;
                v865 += 6;
                ++v868;
                v867 += 6;
                ++v866;
              }

              while (v865 != 24);
              v519.i32[0] = *&v1461[45970];
              v895 = *&v1461[45982];
              v778.i64[0] = *&v1461[45974];
              if (*&v1461[45970] != 0.0)
              {
                *v778.i8 = vmls_lane_f32(*&v1461[45974], *&v1488[4], *v519.f32, 0);
                *&v1461[45974] = v778.i64[0];
                v511.i32[1] = *&v1488[16];
                v895 = vmls_lane_f32(*&v1461[45982], *&v1488[12], *v519.f32, 0);
                *&v1461[45982] = v895;
              }

              v613 = v1430;
              v614 = v1429;
              v511.i32[0] = v778.i32[1];
              if (*v778.i32 != 0.0)
              {
                *v511.i32 = *&v778.i32[1] - (*&v1488[28] * *v778.i32);
                *&v1461[45978] = *v511.i32;
                v779.i32[1] = v1489.i32[1];
                v895 = vmls_lane_f32(v895, *v1489.f32, *v778.i8, 0);
                *&v1461[45982] = v895;
              }

              if (*v511.i32 != 0.0)
              {
                v779.i32[1] = DWORD2(v1490[0]);
                v895 = vmls_lane_f32(v895, *(v1490 + 4), *v511.i8, 0);
                *&v1461[45982] = v895;
              }

              v779.i32[0] = v895.i32[1];
              if (v895.f32[0] != 0.0)
              {
                v779.f32[0] = v895.f32[1] - (*(&v1490[1] + 3) * v895.f32[0]);
                *&v1461[45986] = v779.f32[0];
              }

              if (v779.f32[0] == 0.0)
              {
                *v519.f32 = vzip1_s32(*v519.f32, *v778.i8);
                if (v895.f32[0] != 0.0)
                {
LABEL_871:
                  v895.f32[0] = v895.f32[0] / *(&v1490[1] + 2);
                  *v519.f32 = vmls_lane_f32(*v519.f32, *(v1490 + 12), v895, 0);
                  *&v1461[45970] = v519.i64[0];
                  *v511.i32 = *v511.i32 - (*(&v1490[1] + 1) * v895.f32[0]);
                  *&v1461[45978] = v511.i32[0];
                  *&v1461[45982] = v895.i32[0];
                }
              }

              else
              {
                v779.f32[0] = v779.f32[0] / v1492;
                *&v1461[45986] = v779.i32[0];
                v896.i64[0] = vzip1q_s32(v519, v778).u64[0];
                v896.i64[1] = __PAIR64__(v895.u32[0], v511.u32[0]);
                v519 = vmlsq_lane_f32(v896, v1491, *v779.f32, 0);
                *&v1461[45970] = v519;
                v895.i32[0] = v519.i32[3];
                v511.i32[0] = v519.i32[2];
                if (v519.f32[3] != 0.0)
                {
                  goto LABEL_871;
                }
              }

              if (*v511.i32 != 0.0)
              {
                *v511.i32 = *v511.i32 / *v1490;
                *&v1461[45978] = v511.i32[0];
                *v519.f32 = vmls_lane_f32(*v519.f32, *&v1489.u32[2], *v511.i8, 0);
                *&v1461[45970] = v519.i64[0];
              }

              if (v519.f32[1] != 0.0)
              {
                v519.f32[0] = v519.f32[0] - (*&v1488[20] * (v519.f32[1] / *&v1488[24]));
                *&v1461[45970] = v519.i32[0];
                *&v1461[45974] = v519.f32[1] / *&v1488[24];
              }

              if (v519.f32[0] != 0.0)
              {
                v519.f32[0] = v519.f32[0] / *v1488;
                *&v1461[45970] = v519.i32[0];
              }

              goto LABEL_617;
            }

            v1408 = v658 & 0xFFFFFFF8;
            memcpy(v1501, &v1493, 4 * (5 * v658));
            if (v658 >= 5)
            {
              v891 = 5;
            }

            else
            {
              v891 = v658;
            }

            v1432.i64[0] = v891;
            bzero(v1514, (4 * v891));
            v1512[0] = 0;
            v1512[1] = 0;
            v1513 = 0;
            v1455 = 1;
            if (v658 == 1)
            {
              v1510 = vabsq_f32(v1493);
              v1508 = v1510;
              v1456 = 84148994;
              v892 = fabsf(*&v1494);
              v893 = v1422;
              v894.i64[0] = 0x7300000073000000;
              v894.i64[1] = 0x7300000073000000;
            }

            else
            {
              v897 = 0.0;
              v898 = &v1493;
              v899 = 1.2925e-26;
              v900 = v658;
              v893 = v1422;
              v894.i64[0] = 0x7300000073000000;
              v894.i64[1] = 0x7300000073000000;
              do
              {
                v901 = v898->f32[0];
                v898 = (v898 + 4);
                v902 = fabsf(v901);
                v903 = (((v899 / v902) * (v899 / v902)) * v897) + 1.0;
                v897 = v897 + ((v902 / v899) * (v902 / v899));
                if (v902 > v899)
                {
                  v899 = v902;
                  v897 = v903;
                }

                --v900;
              }

              while (v900);
              v904 = v658 + 1;
              v1510.f32[0] = sqrtf(v897) * v899;
              v1508.f32[0] = v1510.f32[0];
              LOBYTE(v1456) = 2;
              v905 = &v1493.f32[v776 / 4];
              v906 = 0.0;
              v907 = 1.2925e-26;
              do
              {
                v908 = *v905++;
                v909 = fabsf(v908);
                v910 = (((v907 / v909) * (v907 / v909)) * v906) + 1.0;
                v906 = v906 + ((v909 / v907) * (v909 / v907));
                if (v909 > v907)
                {
                  v907 = v909;
                  v906 = v910;
                }

                ++v904;
              }

              while (v904 < v658 + 1 + v658);
              v1510.f32[1] = sqrtf(v906) * v907;
              v1508.f32[1] = v1510.f32[1];
              BYTE1(v1456) = 3;
              v911 = v795 | 1;
              v912 = &v1493.f32[v798 / 4];
              v913 = 0.0;
              v914 = 1.2925e-26;
              do
              {
                v915 = *v912++;
                v916 = fabsf(v915);
                v917 = (((v914 / v916) * (v914 / v916)) * v913) + 1.0;
                v913 = v913 + ((v916 / v914) * (v916 / v914));
                if (v916 > v914)
                {
                  v914 = v916;
                  v913 = v917;
                }

                ++v911;
              }

              while (v911 < (v795 | 1uLL) + v658);
              v1510.f32[2] = sqrtf(v913) * v914;
              v1508.f32[2] = v1510.f32[2];
              BYTE2(v1456) = 4;
              v918 = v796 + 1;
              v919 = &v1493.f32[3 * v658];
              v920 = 0.0;
              v921 = 1.2925e-26;
              do
              {
                v922 = *v919++;
                v923 = fabsf(v922);
                v924 = (((v921 / v923) * (v921 / v923)) * v920) + 1.0;
                v920 = v920 + ((v923 / v921) * (v923 / v921));
                if (v923 > v921)
                {
                  v921 = v923;
                  v920 = v924;
                }

                ++v918;
              }

              while (v918 < v796 + 1 + v658);
              v1510.f32[3] = sqrtf(v920) * v921;
              v1508.f32[3] = v1510.f32[3];
              HIBYTE(v1456) = 5;
              v925 = v776 | 1;
              v926 = &v1493 + v658;
              v927 = 0.0;
              v928 = 1.2925e-26;
              do
              {
                v929 = v926->f32[0];
                v926 = (v926 + 4);
                v930 = fabsf(v929);
                v931 = (((v928 / v930) * (v928 / v930)) * v927) + 1.0;
                v927 = v927 + ((v930 / v928) * (v930 / v928));
                if (v930 > v928)
                {
                  v928 = v930;
                  v927 = v931;
                }

                ++v925;
              }

              while (v925 < (v776 | 1) + v658);
              v892 = sqrtf(v927) * v928;
            }

            v932 = 0;
            v933 = 0;
            v1511 = v892;
            v934 = v658 + 1;
            v1509 = v892;
            v1407 = &v1501[v776 / 4];
            v935 = 2;
            v936 = ~(v1409 + v1403);
            v1426 = v1409 + v1403 - 2;
            v937 = v1426;
            v938 = v658 + 1;
            v939 = v658;
            v940 = v658 + 1;
            v941 = 2;
            LODWORD(__n[0]) = v658 + 1;
            LODWORD(v1430) = v936;
            while (2)
            {
              v942 = v935;
              v943 = v938;
              v944 = v941;
              v945 = v658 * v933;
              v946 = (v658 * v933 + v933);
              v947 = v658 - v933;
              if (v933 > 3)
              {
                v950 = (v933 + 1);
                if ((v933 + 1) < v658)
                {
                  goto LABEL_935;
                }

                *&v1514[4 * v933] = 0;
                goto LABEL_900;
              }

              v948 = v1510.i32[v933];
              v949 = fabsf(*&v948);
              v950 = (v933 + 1);
              v951 = fabsf(v1510.f32[v933 + 1]);
              v952 = v951 > v949;
              if (v933 != 3)
              {
                if (v951 > v949)
                {
                  v949 = v951;
                }

                v953 = &v1510.f32[v933];
                v954 = fabsf(v953[2]);
                if (v954 > v949)
                {
                  v952 = 2;
                }

                if (v933 != 2)
                {
                  if (v954 > v949)
                  {
                    v949 = v954;
                  }

                  v955 = fabsf(v953[3]);
                  if (v955 > v949)
                  {
                    v952 = 3;
                  }

                  if (v933 != 1)
                  {
                    if (v955 > v949)
                    {
                      v949 = v955;
                    }

                    if (fabsf(v1511) > v949)
                    {
                      v956 = v933 | 4;
                      goto LABEL_921;
                    }
                  }
                }
              }

              if (v952)
              {
                v956 = v952 + v933;
LABEL_921:
                v957 = v956 * v658;
                if (v658 < 8)
                {
                  v958 = 0;
                  goto LABEL_931;
                }

                v1428 = v941;
                v1429 = v938;
                _CF = &v1501[v957] >= (v1501 + (4 * v933 + 4) * v658) || (v1501 + v776 * v933) >= &v1407[v957];
                if (!_CF)
                {
                  v958 = 0;
                  v942 = v935;
                  v943 = v1429;
                  v944 = v1428;
                  goto LABEL_931;
                }

                v960 = (v1394 + v776 * v933);
                v961 = (v1394 + 4 * v957);
                v962 = v1408;
                do
                {
                  v963 = *(v961 - 1);
                  v964 = *v961;
                  v965 = *v960;
                  *(v961 - 1) = *(v960 - 1);
                  *v961 = v965;
                  *(v960 - 1) = v963;
                  *v960 = v964;
                  v960 += 2;
                  v961 += 2;
                  v962 -= 8;
                }

                while (v962);
                v958 = v1408;
                v942 = v935;
                v943 = v1429;
                v944 = v1428;
                if (v1408 != v658)
                {
LABEL_931:
                  v966 = v658 - v958;
                  v967 = &v1501[v958 + v933 * v658];
                  v968 = &v1501[v958 + v957];
                  do
                  {
                    v969 = *v968;
                    *v968++ = *v967;
                    *v967++ = v969;
                    --v966;
                  }

                  while (v966);
                }

                v970 = *(&v1455 + v956);
                *(&v1455 + v956) = *(&v1455 + v933);
                *(&v1455 + v933) = v970;
                v1510.i32[v956] = v948;
                v1508.i32[v956] = v1508.i32[v933];
                v947 = v658 - v933;
                v946 = (v945 + v933);
                v893 = v1422;
              }

              if (v950 >= v658)
              {
                v1007 = 0;
                *&v1514[4 * v933] = 0;
                v1008 = &v1501[v946];
                v972 = *v1008;
                *v1008 = 1.0;
              }

              else
              {
LABEL_935:
                v971 = v946;
                v972 = *&v1501[v946];
                v973 = 0.0;
                *&v1514[4 * v933] = 0;
                v974 = v947 - 1;
                if (v947 < 1 || v947 == 1)
                {
                  v934 = __n[0];
                  goto LABEL_1013;
                }

                v1428 = v946;
                v1429 = v943;
                v975 = v946 + 2;
                if (v947 == 2)
                {
                  v976 = v942;
                  v977 = v939;
                  v978 = fabsf(*&v893[4 * v975]);
                  if (v978 != 0.0)
                  {
                    goto LABEL_939;
                  }

LABEL_968:
                  v934 = __n[0];
LABEL_971:
                  v939 = v977;
                  v942 = v976;
                  v943 = v1429;
                  LODWORD(v946) = v1428;
                }

                else
                {
                  v976 = v942;
                  v1009 = v975;
                  v1010 = 0.0;
                  v1011 = 1.2925e-26;
                  do
                  {
                    v1012 = fabsf(*&v893[4 * v1009]);
                    v1013 = v1010 + ((v1012 / v1011) * (v1012 / v1011));
                    v1010 = (((v1011 / v1012) * (v1011 / v1012)) * v1010) + 1.0;
                    if (v1012 <= v1011)
                    {
                      v1010 = v1013;
                    }

                    else
                    {
                      v1011 = v1012;
                    }

                    ++v1009;
                  }

                  while (v1009 < v974 + v975);
                  v977 = v939;
                  v978 = sqrtf(v1010) * v1011;
                  if (v978 == 0.0)
                  {
                    goto LABEL_968;
                  }

LABEL_939:
                  v979 = v947;
                  v980 = (v937 + 1) & 0x1FFFFFFF8;
                  v981 = &v1410[v941];
                  v982 = v1426 - v932;
                  v983 = v982 + 1;
                  v984 = fabsf(v972);
                  v985 = fabsf(v978);
                  v986 = v984 * 1.4142;
                  v987 = sqrtf(((v985 / v984) * (v985 / v984)) + 1.0) * v984;
                  if (v984 > v985)
                  {
                    v986 = v987;
                  }

                  v988 = sqrtf(((v984 / v985) * (v984 / v985)) + 1.0) * v985;
                  if (v984 < v985)
                  {
                    v989 = v988;
                  }

                  else
                  {
                    v989 = v986;
                  }

                  v990 = -v989;
                  if (v972 < 0.0)
                  {
                    v990 = v989;
                  }

                  if (fabsf(v989) >= 9.8608e-32)
                  {
                    v973 = (v990 - v972) / v990;
                    *&v1514[4 * v933] = v973;
                    v934 = __n[0];
                    if (v975 > v945 + v658)
                    {
                      v972 = v990;
                      goto LABEL_971;
                    }

                    v1016 = v972 - v990;
                    v1017 = v944;
                    _CF = v982 >= 7;
                    v939 = v977;
                    v942 = v976;
                    v943 = v1429;
                    if (_CF)
                    {
                      v1018 = v983 & 0x1FFFFFFF8;
                      v1019 = 1.0 / v1016;
                      do
                      {
                        v1020 = vmulq_n_f32(*v981, v1019);
                        v981[-1] = vmulq_n_f32(v981[-1], v1019);
                        *v981 = v1020;
                        v981 += 2;
                        v980 -= 8;
                      }

                      while (v980);
                      if (v983 == v1018)
                      {
                        v972 = v990;
                        LODWORD(v946) = v1428;
                        goto LABEL_1013;
                      }

                      v1017 = v1018 + v944;
                    }

                    v1045 = v940 - v1017;
                    v1046 = &v893[4 * v1017];
                    v1047 = 1.0 / v1016;
                    LODWORD(v946) = v1428;
                    do
                    {
                      *v1046 = *v1046 * v1047;
                      ++v1046;
                      --v1045;
                    }

                    while (v1045);
                    v972 = v990;
                  }

                  else
                  {
                    v1423 = v950;
                    v1424 = v937;
                    LODWORD(v1425) = v936;
                    v991 = v932;
                    v992 = 0;
                    v993 = v945 + v658;
                    v994 = v983 & 0x1FFFFFFF8;
                    v995 = v944;
                    v996 = (v983 & 0x1FFFFFFF8) + v944;
                    v997 = 1;
                    do
                    {
                      v999 = v992;
                      v1000 = v997;
                      if (v975 <= v993)
                      {
                        v1001 = v995;
                        if (v982 < 7)
                        {
                          goto LABEL_957;
                        }

                        v1002 = v981;
                        v1003 = v980;
                        do
                        {
                          v1004 = vmulq_f32(*v1002, v894);
                          v1002[-1] = vmulq_f32(v1002[-1], v894);
                          *v1002 = v1004;
                          v1002 += 2;
                          v1003 -= 8;
                        }

                        while (v1003);
                        v1001 = v996;
                        if (v983 != v994)
                        {
LABEL_957:
                          v1005 = v940 - v1001;
                          v1006 = &v893[4 * v1001];
                          do
                          {
                            *v1006 = *v1006 * 1.0141e31;
                            ++v1006;
                            --v1005;
                          }

                          while (v1005);
                        }
                      }

                      v992 = v999 + 1;
                      v990 = v990 * 1.0141e31;
                      v972 = v972 * 1.0141e31;
                      v997 = v1000 + 1;
                    }

                    while (fabsf(v990) < 9.8608e-32 && v999 < 0x13);
                    v1014 = v975;
                    if (v974 == 1)
                    {
                      v1015 = fabsf(*&v893[4 * v975]);
                    }

                    else
                    {
                      v1021 = v974 + v975;
                      v1022 = 0.0;
                      v1023 = 1.2925e-26;
                      do
                      {
                        v1024 = fabsf(*&v893[4 * v1014]);
                        v1025 = v1022 + ((v1024 / v1023) * (v1024 / v1023));
                        v1022 = (((v1023 / v1024) * (v1023 / v1024)) * v1022) + 1.0;
                        if (v1024 <= v1023)
                        {
                          v1022 = v1025;
                        }

                        else
                        {
                          v1023 = v1024;
                        }

                        ++v1014;
                      }

                      while (v1014 < v1021);
                      v1015 = sqrtf(v1022) * v1023;
                    }

                    v944 = v995;
                    v1026 = fabsf(v972);
                    v1027 = fabsf(v1015);
                    v1028 = v1026 * 1.4142;
                    v1029 = sqrtf(((v1027 / v1026) * (v1027 / v1026)) + 1.0) * v1026;
                    if (v1026 > v1027)
                    {
                      v1028 = v1029;
                    }

                    v1030 = sqrtf(((v1026 / v1027) * (v1026 / v1027)) + 1.0) * v1027;
                    if (v1026 < v1027)
                    {
                      v1028 = v1030;
                    }

                    if (v972 >= 0.0)
                    {
                      v1028 = -v1028;
                    }

                    v973 = (v1028 - v972) / v1028;
                    *&v1514[4 * v933] = v973;
                    v934 = __n[0];
                    if (v975 <= v993)
                    {
                      v1031 = v972 - v1028;
                      v1032 = v995;
                      if (v982 <= 6)
                      {
                        goto LABEL_997;
                      }

                      v1033 = 1.0 / v1031;
                      do
                      {
                        v1034 = vmulq_n_f32(*v981, v1033);
                        v981[-1] = vmulq_n_f32(v981[-1], v1033);
                        *v981 = v1034;
                        v981 += 2;
                        v980 -= 8;
                      }

                      while (v980);
                      v1032 = v996;
                      if (v983 != v994)
                      {
LABEL_997:
                        v1035 = v940 - v1032;
                        v1036 = &v893[4 * v1032];
                        v1037 = 1.0 / v1031;
                        do
                        {
                          *v1036 = *v1036 * v1037;
                          ++v1036;
                          --v1035;
                        }

                        while (v1035);
                      }
                    }

                    if (v1000 > 7)
                    {
                      v1038 = v1000 & 0x7FFFFFF8;
                      v1039 = v1374;
                      v1039.f32[0] = v1028;
                      v1040 = v1000 & 0xFFFFFFF8;
                      v1041 = v1374;
                      v1042.i64[0] = 0xC0000000C000000;
                      v1042.i64[1] = 0xC0000000C000000;
                      v932 = v991;
                      v939 = v977;
                      v950 = v1423;
                      LODWORD(v946) = v1428;
                      do
                      {
                        v1039 = vmulq_f32(v1039, v1042);
                        v1041 = vmulq_f32(v1041, v1042);
                        v1040 -= 8;
                      }

                      while (v1040);
                      v1043 = vmulq_f32(v1041, v1039);
                      *v1043.i8 = vmul_f32(*v1043.i8, *&vextq_s8(v1043, v1043, 8uLL));
                      v1028 = vmuls_lane_f32(*v1043.i32, *v1043.i8, 1);
                      v936 = v1425;
                      v942 = v976;
                      if (v1000 == v1038)
                      {
                        v972 = v1028;
                        v937 = v1424;
                        v943 = v1429;
                        v947 = v979;
                        goto LABEL_1013;
                      }
                    }

                    else
                    {
                      v1038 = 0;
                      v932 = v991;
                      v936 = v1425;
                      v939 = v977;
                      v942 = v976;
                      v950 = v1423;
                      LODWORD(v946) = v1428;
                    }

                    v1044 = ~v999 + v1038;
                    v972 = v1028;
                    v937 = v1424;
                    v943 = v1429;
                    v947 = v979;
                    do
                    {
                      v972 = v972 * 9.8608e-32;
                      _CF = __CFADD__(v1044++, 1);
                    }

                    while (!_CF);
                  }
                }

LABEL_1013:
                *&v1501[v971] = v972;
                if (v933 >= 4)
                {
                  goto LABEL_900;
                }

                v1008 = &v1501[v946];
                *v1008 = 1.0;
                if (v973 != 0.0)
                {
                  v1411 = &v1501[v946];
                  v1424 = v937;
                  LODWORD(v1425) = v936;
                  v1048 = 1 - v943;
                  v1049 = v938;
                  v1050 = &v1410[v1049];
                  v1051 = &v893[4 * v939];
                  v1052 = v946 + v934;
                  v1053 = v947;
                  while (1)
                  {
                    v1054 = v1053;
                    _VF = __OFSUB__(v1053--, 1);
                    if (v1053 < 0 != _VF)
                    {
                      break;
                    }

                    v1055 = *v1051--;
                    if (v1055 != 0.0)
                    {
                      goto LABEL_1022;
                    }
                  }

                  v1053 = (v947 & (v947 >> 31)) - 1;
LABEL_1022:
                  v1428 = v944;
                  v1412 = v947;
                  v1413 = v942;
                  v1056 = 3 - v933;
                  v1057 = v943 + v658 * (3 - v933);
                  v1415 = v932;
                  v1414 = v939;
                  v1423 = v950;
                  while (v1054 < 1)
                  {
LABEL_1023:
                    v1057 -= v658;
                    v167 = v1056-- <= 0;
                    if (v167)
                    {
                      LODWORD(v1056) = -1;
                      goto LABEL_1030;
                    }
                  }

                  v1058 = v1057 - 1;
                  while (*&v1501[v1058] == 0.0)
                  {
                    if (++v1058 >= v1053 + v1052 + v658 * v1056)
                    {
                      goto LABEL_1023;
                    }
                  }

LABEL_1030:
                  if (v1054 >= 1 && v1056 != -1)
                  {
                    v1391 = v1052;
                    v1395 = v1049 * 4;
                    v1396 = v940;
                    v1418 = (v1056 + 1);
                    v1429 = v943;
                    bzero(v1512, 4 * (v1056 + 1));
                    LODWORD(v943) = v1429;
                    v893 = v1422;
                    if (((v1056 * v658) & 0x80000000) == 0)
                    {
                      v1060 = 0;
                      v1061 = v1056 * v658 + v1391;
                      v1062 = LODWORD(__n[0]) * v933;
                      v1063 = v1425 + LODWORD(__n[0]) * v933;
                      v1064 = v1050;
                      v1065 = v1048;
                      v1066 = v1429 + v1053;
                      v1067 = v1429;
                      while (1)
                      {
                        if (v1066 <= v1067)
                        {
                          v1068 = v1067;
                        }

                        else
                        {
                          v1068 = v1066;
                        }

                        v1069 = v1429 + v1053 + v1060 * v658;
                        if (v1069 <= v1067)
                        {
                          v1069 = v1067;
                        }

                        v1070 = v1069 - (v1060 * v658 + v1429);
                        v1071 = v1070 + 1;
                        v1059 = 0;
                        if (v1070 + 1 < 8)
                        {
                          break;
                        }

                        v1073 = v1062 + v1070;
                        _NF = (v1070 & 0x80000000) != 0;
                        v1074 = HIDWORD(v1070);
                        v1075 = _NF == __OFSUB__(v1073, v1062) && v1074 == 0;
                        v1072 = v1067;
                        if (!v1075)
                        {
                          goto LABEL_1051;
                        }

                        v1076 = (v1068 + v1065) & 0x1FFFFFFF8;
                        v1077 = v1071 & 0x1FFFFFFF8;
                        v1078 = 0uLL;
                        v1079 = v1062;
                        v1080 = v1064;
                        v1081 = 0uLL;
                        do
                        {
                          v1082 = &v1501[v1079];
                          v1078 = vmlaq_f32(v1078, v1080[-1], *v1082);
                          v1081 = vmlaq_f32(v1081, *v1080, v1082[1]);
                          v1080 += 2;
                          v1079 += 8;
                          v1076 -= 8;
                        }

                        while (v1076);
                        v1083 = vaddq_f32(v1081, v1078);
                        v1059 = vpaddq_f32(v1083, v1083).u64[0];
                        v1059.f32[0] = vaddv_f32(v1059);
                        if (v1071 != v1077)
                        {
                          v1072 = v1067 + v1077;
                          goto LABEL_1051;
                        }

LABEL_1034:
                        *(v1512 + v1060) = *(v1512 + v1060) + v1059.f32[0];
                        ++v1060;
                        v1067 += v658;
                        v1066 += v658;
                        v1065 -= v658;
                        v1064 = (v1064 + v776);
                        v1063 -= v658;
                        if (v1067 > v1061)
                        {
                          goto LABEL_1057;
                        }
                      }

                      v1072 = v1067;
LABEL_1051:
                      if (v1072 <= v1066)
                      {
                        v1084 = v1066;
                      }

                      else
                      {
                        v1084 = v1072;
                      }

                      v1085 = v1084 - v1072 + 1;
                      v1086 = v1063 + v1072;
                      v1087 = &v893[4 * v1072];
                      do
                      {
                        v1088 = *v1087++;
                        v1059.f32[0] = v1059.f32[0] + (*&v1501[v1086++] * v1088);
                        --v1085;
                      }

                      while (v1085);
                      goto LABEL_1034;
                    }

LABEL_1057:
                    v894.i64[0] = 0x7300000073000000;
                    v894.i64[1] = 0x7300000073000000;
                    v940 = v1396;
                    v1089 = v1418;
                    if ((v1056 & 0x80000000) == 0)
                    {
                      v1090 = 0;
                      v1091 = LODWORD(__n[0]) * v933;
                      v1092 = LODWORD(__n[0]) * v933;
                      v1093 = &v1501[v1092];
                      v1094 = v1427 + v1092 * 4;
                      v1095 = v1501 + v1395;
                      v1096 = &v1500[v1395];
                      v1097 = v1425 + LODWORD(__n[0]) * v933;
                      v1098 = v1429 + v1053;
                      v1099 = v1429;
                      while (1)
                      {
                        if (v1098 <= v1099)
                        {
                          v1100 = v1099;
                        }

                        else
                        {
                          v1100 = v1098;
                        }

                        v1101 = v1429 + v1053 + v1090 * v658;
                        if (v1101 <= v1099)
                        {
                          v1101 = v1099;
                        }

                        v1102 = *(v1512 + v1090);
                        if (v1102 == 0.0)
                        {
                          goto LABEL_1059;
                        }

                        v1103 = v1101 - (v1090 * v658 + v1429);
                        v1104 = v1103 + 1;
                        v1059.f32[0] = v1102 * v973;
                        v1106 = v1103 + 1 >= 8 && v1091 + v1103 >= v1091 && HIDWORD(v1103) == 0;
                        v1107 = v1099;
                        if (!v1106)
                        {
                          goto LABEL_1073;
                        }

                        v1112 = 4 * v1103;
                        v1089 = v1418;
                        v1113 = &v1096[v776 * v1090] >= v1094 + v1112 || v1093 >= &v1095[v776 * v1090 + v1112];
                        v1107 = v1099;
                        if (!v1113)
                        {
                          goto LABEL_1073;
                        }

                        v1114 = (v1100 + v1048) & 0x1FFFFFFF8;
                        v1115 = v1104 & 0x1FFFFFFF8;
                        v1116 = vdupq_lane_s32(v1059, 0);
                        v1117 = v1091;
                        v1118 = v1050;
                        do
                        {
                          v1119 = &v1501[v1117];
                          v1120 = vmlsq_f32(*v1118, v1119[1], v1116);
                          v1118[-1] = vmlsq_f32(v1118[-1], *v1119, v1116);
                          *v1118 = v1120;
                          v1118 += 2;
                          v1117 += 8;
                          v1114 -= 8;
                        }

                        while (v1114);
                        v1089 = v1418;
                        if (v1104 != v1115)
                        {
                          break;
                        }

LABEL_1059:
                        v1099 += v658;
                        ++v1090;
                        v1098 += v658;
                        v1048 -= v658;
                        v1050 = (v1050 + v776);
                        v1097 -= v658;
                        if (v1090 == v1089)
                        {
                          goto LABEL_1088;
                        }
                      }

                      v1107 = v1099 + v1115;
LABEL_1073:
                      if (v1107 <= v1098)
                      {
                        v1108 = v1098;
                      }

                      else
                      {
                        v1108 = v1107;
                      }

                      v1109 = v1108 - v1107 + 1;
                      v1110 = &v893[4 * v1107];
                      v1111 = v1097 + v1107;
                      do
                      {
                        *v1110 = *v1110 - (v1059.f32[0] * *&v1501[v1111]);
                        ++v1110;
                        ++v1111;
                        --v1109;
                      }

                      while (v1109);
                      goto LABEL_1059;
                    }
                  }

LABEL_1088:
                  v947 = v1412;
                  *v1411 = v972;
                  v1007 = 1;
                  v934 = __n[0];
                  v932 = v1415;
                  v936 = v1425;
                  v937 = v1424;
                  v939 = v1414;
                  v942 = v1413;
                  v950 = v1423;
                  LODWORD(v944) = v1428;
LABEL_1089:
                  v1121 = v1427 + v776 * (v942 - 1) + 4 * v933;
                  v1122 = v942;
                  do
                  {
                    v1123 = v1122 - 1;
                    v1124 = v1510.f32[v1122 - 1];
                    if (v1124 != 0.0)
                    {
                      v1125 = v933 + v1123 * v658;
                      v1126 = fabsf(*&v1501[v1125]);
                      v1127 = 1.0 - ((v1126 / v1124) * (v1126 / v1124));
                      if (v1127 < 0.0)
                      {
                        v1127 = 0.0;
                      }

                      if ((((v1124 / v1508.f32[v1123]) * (v1124 / v1508.f32[v1123])) * v1127) > 0.00034527)
                      {
                        v1510.f32[v1123] = sqrtf(v1127) * v1124;
                      }

                      else if (v1007)
                      {
                        v1128 = 0.0;
                        if (v947 >= 2)
                        {
                          v1129 = v1125 + 2;
                          if (v947 == 2)
                          {
                            v1128 = fabsf(*&v893[4 * v1129]);
                          }

                          else
                          {
                            v1130 = v1129 + v947 - 1;
                            v1131 = 0.0;
                            v1132 = 1.2925e-26;
                            v1133 = v1121;
                            do
                            {
                              v1134 = *v1133++;
                              v1135 = fabsf(v1134);
                              v1136 = v1131 + ((v1135 / v1132) * (v1135 / v1132));
                              v1131 = (((v1132 / v1135) * (v1132 / v1135)) * v1131) + 1.0;
                              if (v1135 <= v1132)
                              {
                                v1131 = v1136;
                              }

                              else
                              {
                                v1132 = v1135;
                              }

                              ++v1129;
                            }

                            while (v1129 < v1130);
                            v1128 = sqrtf(v1131) * v1132;
                          }
                        }

                        v1510.f32[v1123] = v1128;
                        v1508.f32[v1123] = v1128;
                      }

                      else
                      {
                        v1510.i32[v1123] = 0;
                        v1508.i32[v1123] = 0;
                      }
                    }

                    ++v1122;
                    v1121 += v776;
                  }

                  while (v1122 != 6);
LABEL_900:
                  v941 = v944 + v934;
                  v940 += v658;
                  v939 += v658;
                  v938 = v943 + v934;
                  v935 = v942 + 1;
                  ++v932;
                  --v937;
                  v936 += v1430;
                  v933 = v950;
                  if (v950 != v1432.i64[0])
                  {
                    continue;
                  }

                  v1137 = 0;
                  v1138 = 0;
                  if (v658 >= 5)
                  {
                    v1139 = 5;
                  }

                  else
                  {
                    v1139 = v658;
                  }

                  v1140 = v658 * 0.0000011921;
                  if (v658 < 5)
                  {
                    v1140 = 0.0000059605;
                  }

                  v1141 = fabsf(*v1501) * v1140;
                  v515 = v1393;
                  while (fabsf(*&v1501[v1137]) > v1141)
                  {
                    ++v1138;
                    v1137 += v934;
                    if (v1139 == v1138)
                    {
                      goto LABEL_1118;
                    }
                  }

                  LODWORD(v1139) = v1138;
LABEL_1118:
                  memcpy(v1485, &v1461[45970], 4 * v658);
                  v1142 = 0;
                  v1143 = v1409 + v1403 + 1;
                  v1506 = 0uLL;
                  v1507 = 0;
                  v1144 = 2;
                  v1145 = 1;
                  v1146 = -1;
                  v1147 = v1426;
                  v590 = v1390;
                  v551 = v1389;
                  v549 = v1388;
                  LODWORD(v589) = v1385;
                  v1148 = __n[0];
                  while (2)
                  {
                    v1149 = v1144;
                    v1150 = *&v1514[4 * v1142];
                    if (v1150 == 0.0)
                    {
LABEL_1119:
                      ++v1142;
                      v1144 = v1149 + 1;
                      --v1147;
                      v1145 += v1148;
                      v1146 += v658;
                      if (v1142 == v1432.i64[0])
                      {
                        v1184 = v1373;
                        if (v1139)
                        {
                          if (v1139 == 1)
                          {
                            v1185 = 0;
                            goto LABEL_1154;
                          }

                          v1185 = v1139 & 0xFFFFFFFE;
                          v1186 = v1364;
                          v1187 = v1365;
                          v1188 = v1185;
                          do
                          {
                            v1189 = *v1186;
                            v1184[*(v1187 - 1)] = *(v1186 - 1);
                            v1184[*v1187] = v1189;
                            v1187 = (v1187 + 2);
                            v1186 += 2;
                            v1188 -= 2;
                          }

                          while (v1188);
                          if (v1185 != v1139)
                          {
LABEL_1154:
                            v1190 = v1139 - v1185;
                            v1191 = &v1455 + v1185;
                            v1192 = &v1485[4 * v1185];
                            do
                            {
                              v1193 = *v1192++;
                              v1194 = v1193;
                              v1195 = *v1191++;
                              v1184[v1195] = v1194;
                              --v1190;
                            }

                            while (v1190);
                          }

                          if (v1139 >= 1)
                          {
                            v1196 = v1139 - 1;
                            v1197 = &v1184[*(&v1455 + v1196)];
                            *v1197 = *v1197 / *&v1501[v1139 - 1 + (v1139 - 1) * v658];
                            v1198 = (v1139 - 1);
                            if (v1139 != 1)
                            {
                              v1199 = &v1501[v1196 * v658];
                              do
                              {
                                v1200 = 0;
                                do
                                {
                                  *&v1184[*(&v1455 + v1200)] = *&v1184[*(&v1455 + v1200)] - (*&v1199[v1200] * *v1197);
                                  ++v1200;
                                }

                                while (v1198 != v1200);
                                --v1198;
                                v1197 = &v1184[*(&v1455 + v1196 - 1)];
                                *v1197 = *v1197 / *&v1501[v1196 - 1 + (v1196 - 1) * v658];
                                v1199 -= v658;
                                _CF = v1196-- >= 2;
                              }

                              while (_CF);
                            }
                          }
                        }

                        v511 = v1506;
                        *&v1461[45970] = v1506;
                        *&v1461[45986] = v1507;
                        v614 = v1446[0];
                        v511.i32[0] = v1506.i32[2];
                        v519.i32[0] = v1506.i32[0];
                        v613 = v1449[0];
                        v612 = v1417;
                        v610 = v1404;
LABEL_617:
                        *(v614 + 4 * v612) = *(v614 + 4 * v612) - (*v511.i32 / (v519.f32[0] + v519.f32[0]));
                        *(v613 + 4 * v612) = *(v613 + 4 * v612) - (*&v1461[45982] / (*&v1461[45974] + *&v1461[45974]));
                        v609 = (v612 + 1);
                        v611 = v1405;
                        if (v609 == v590)
                        {
                          v546 = v1451;
                          v499 = v1366;
                          v500 = v1419;
                          v498 = v1363;
                          v503 = v1361;
                          v501 = v1362;
                          v502 = v1360;
                          goto LABEL_1164;
                        }

                        goto LABEL_618;
                      }

                      continue;
                    }

                    break;
                  }

                  v1151 = *&v1485[4 * v1142];
                  if (v1142 + 2 > v658)
                  {
                    v1152 = v1151 * v1150;
                    if (v1152 != 0.0)
                    {
                      *&v1485[4 * v1142] = v1151 - v1152;
                    }

                    goto LABEL_1119;
                  }

                  v1153 = (v1147 + 1) & 0x1FFFFFFF8;
                  v1154 = &v1416[v1144];
                  v1155 = v1426 - v1142;
                  v1156 = v1155 + 1;
                  v1157 = v1148 * v1142 + 1;
                  _CF = v1155 >= 7;
                  v1158 = v1157 + v1155;
                  v1160 = !_CF || v1158 < v1157;
                  v1161 = v1149;
                  v1162 = *&v1485[4 * v1142];
                  if (v1160 == 1)
                  {
LABEL_1135:
                    v1171 = v1143 - v1161;
                    v1172 = v1421 + v1161;
                    v1173 = v1146 + v1161;
                    do
                    {
                      v1174 = *v1172++;
                      v1162 = v1162 + (v1174 * *&v1501[v1173++]);
                      --v1171;
                    }

                    while (v1171);
                  }

                  else
                  {
                    v1163 = v1156 & 0x1FFFFFFF8;
                    v1164 = 0uLL;
                    v1165 = *&v1485[4 * v1142];
                    v1166 = v1154;
                    v1167 = v1145;
                    v1168 = (v1147 + 1) & 0x1FFFFFFF8;
                    do
                    {
                      v1169 = &v1501[v1167];
                      v1165 = vmlaq_f32(v1165, *v1169, v1166[-1]);
                      v1164 = vmlaq_f32(v1164, v1169[1], *v1166);
                      v1167 += 8;
                      v1166 += 2;
                      v1168 -= 8;
                    }

                    while (v1168);
                    v1170 = vaddq_f32(v1164, v1165);
                    v1162 = vaddv_f32(*&vpaddq_f32(v1170, v1170));
                    if (v1156 != v1163)
                    {
                      v1161 = v1163 + v1149;
                      goto LABEL_1135;
                    }
                  }

                  v519.f32[0] = v1162 * v1150;
                  v1148 = __n[0];
                  if (v519.f32[0] == 0.0)
                  {
                    goto LABEL_1119;
                  }

                  *&v1485[4 * v1142] = v1151 - v519.f32[0];
                  v1175 = v1149;
                  if ((v1160 & 1) == 0)
                  {
                    v1176 = v1156 & 0x1FFFFFFF8;
                    v1177 = vdupq_lane_s32(*v519.f32, 0);
                    v1178 = v1145;
                    do
                    {
                      v1179 = &v1501[v1178];
                      v1180 = vmlsq_f32(*v1154, v1177, v1179[1]);
                      v1154[-1] = vmlsq_f32(v1154[-1], v1177, *v1179);
                      *v1154 = v1180;
                      v1178 += 8;
                      v1154 += 2;
                      v1153 -= 8;
                    }

                    while (v1153);
                    v1148 = __n[0];
                    if (v1156 == v1176)
                    {
                      goto LABEL_1119;
                    }

                    v1175 = v1176 + v1149;
                  }

                  v1181 = v1143 - v1175;
                  v1182 = v1421 + v1175;
                  v1183 = v1146 + v1175;
                  do
                  {
                    *v1182 = *v1182 - (*&v1501[v1183] * v519.f32[0]);
                    ++v1182;
                    ++v1183;
                    --v1181;
                  }

                  while (v1181);
                  goto LABEL_1119;
                }

                v1007 = 1;
              }

              break;
            }

            *v1008 = v972;
            goto LABEL_1089;
          }
        }

        if (v504 == -1)
        {
          goto LABEL_643;
        }

        goto LABEL_639;
      }

      v521 = v516 & 0xFFFFFFFC;
      v552 = vdupq_lane_s64(*&v518, 0);
      v553 = 0x100000000;
      v554 = v1470;
      v555 = v521;
      do
      {
        v556 = vadd_s32(v553, 0x200000002);
        v557.i64[0] = v553.u32[0];
        v557.i64[1] = v553.u32[1];
        v558 = vcvtq_f64_u64(v557);
        v557.i64[0] = v556.u32[0];
        v557.i64[1] = v556.u32[1];
        v554[-1] = vsubq_f64(v558, v552);
        *v554 = vsubq_f64(vcvtq_f64_u64(v557), v552);
        v553 = vadd_s32(v553, 0x400000004);
        v554 += 2;
        v555 -= 4;
      }

      while (v555);
      v559 = v504 + 1;
      if (v521 != v516)
      {
        goto LABEL_548;
      }
    }

    else
    {
      v547 = floor(v517 + 0.5);
      v548 = v547 - v518;
      if (vabdd_f64(v547 - v518, v518) >= fabs(v518) * 4.4408921e-16)
      {
        if (v548 - v518 <= 0.0)
        {
          v547 = v547 + 1.0;
        }

        else
        {
          v548 = v548 + -1.0;
        }
      }

      else
      {
        v547 = v547 + 1.0;
        v548 = v518;
      }

      v559 = v547;
      v1469[0] = -(v504 * 0.5);
      v562 = v547 - 1;
      v1469[v562] = v548;
      v563 = v562 / 2;
      if (v547 >= 5)
      {
        if (v563 <= 2)
        {
          v564 = 2;
        }

        else
        {
          v564 = v562 / 2;
        }

        v565 = v564 - 1;
        do
        {
          v1469[1] = 1.0 - v518;
          *&v1468[2 * v559 + 9852] = v548 + -1.0;
          --v565;
        }

        while (v565);
      }

      v566 = &v1469[v563];
      if (v562 != 2 * v563)
      {
        *v566 = v563 - v518;
        v566[1] = v548 - v563;
        if (v520 != *v519.i64)
        {
          goto LABEL_550;
        }

        goto LABEL_566;
      }

      *v566 = (v548 - v518) * 0.5;
    }

    if (v520 != *v519.i64)
    {
      goto LABEL_550;
    }

    goto LABEL_566;
  }

  v546 = v1390;
LABEL_1164:
  v1445 = v546;
  coder::array_base<float,int,2>::ensureCapacity(v1443, v546);
  if (v546 >= 1)
  {
    v1201 = 0;
    v1202 = v1449[0];
    v1203 = v1443[0];
    if (v546 < 8)
    {
      goto LABEL_1170;
    }

    if (v1443[0] - v1449[0] < 0x20uLL)
    {
      goto LABEL_1170;
    }

    v1201 = v546 & 0x7FFFFFF8;
    v1204 = (v1443[0] + 16);
    v1205 = (v1449[0] + 16);
    v1206.i64[0] = 0x3F0000003F000000;
    v1206.i64[1] = 0x3F0000003F000000;
    v1207 = v1201;
    do
    {
      v1208 = vmaxnmq_f32(*v1205, v1206);
      v1204[-1] = vmaxnmq_f32(v1205[-1], v1206);
      *v1204 = v1208;
      v1204 += 2;
      v1205 += 2;
      v1207 -= 8;
    }

    while (v1207);
    if (v1201 != v546)
    {
LABEL_1170:
      v1209 = v546 - v1201;
      v1210 = 4 * v1201;
      v1211 = (v1203 + v1210);
      v1212 = (v1202 + v1210);
      do
      {
        v1213 = *v1212++;
        *v1211++ = fmaxf(v1213, 0.5);
        --v1209;
      }

      while (v1209);
    }
  }

  v1214 = v1445;
  if (v1445 >= 1)
  {
    v1215 = v1443[0];
    if (v1445 < 8)
    {
      v1216 = 0;
      goto LABEL_1178;
    }

    v1216 = v1445 & 0x7FFFFFF8;
    v1217 = (v1443[0] + 16);
    v1218 = vdupq_n_s32(0x42A90000u);
    v1219 = v1216;
    do
    {
      v1220 = vminnmq_f32(*v1217, v1218);
      v1217[-1] = vminnmq_f32(v1217[-1], v1218);
      *v1217 = v1220;
      v1217 += 2;
      v1219 -= 8;
    }

    while (v1219);
    if (v1216 != v1214)
    {
LABEL_1178:
      v1221 = v1214 - v1216;
      v1222 = (v1215 + 4 * v1216);
      do
      {
        *v1222 = fminf(*v1222, 84.5);
        ++v1222;
        --v1221;
      }

      while (v1221);
    }
  }

  v1223 = v1448;
  v1451 = v1448;
  coder::array_base<float,int,2>::ensureCapacity(v1449, v1448);
  if (v1223 >= 1)
  {
    v1224 = 0;
    v1225 = v1446[0];
    v1226 = v1449[0];
    if (v1223 < 8)
    {
      goto LABEL_1186;
    }

    if (v1449[0] - v1446[0] < 0x20uLL)
    {
      goto LABEL_1186;
    }

    v1224 = v1223 & 0x7FFFFFF8;
    v1227 = (v1449[0] + 16);
    v1228 = (v1446[0] + 16);
    v1229.i64[0] = 0x3F0000003F000000;
    v1229.i64[1] = 0x3F0000003F000000;
    v1230 = v1224;
    do
    {
      v1231 = vmaxnmq_f32(*v1228, v1229);
      v1227[-1] = vmaxnmq_f32(v1228[-1], v1229);
      *v1227 = v1231;
      v1227 += 2;
      v1228 += 2;
      v1230 -= 8;
    }

    while (v1230);
    if (v1224 != v1223)
    {
LABEL_1186:
      v1232 = v1223 - v1224;
      v1233 = 4 * v1224;
      v1234 = (v1226 + 4 * v1224);
      v1235 = (v1225 + v1233);
      do
      {
        v1236 = *v1235++;
        *v1234++ = fmaxf(v1236, 0.5);
        --v1232;
      }

      while (v1232);
    }
  }

  v1237 = v1451;
  if (v1451 >= 1)
  {
    v1238 = v1449[0];
    if (v1451 < 8)
    {
      v1239 = 0;
      goto LABEL_1194;
    }

    v1239 = v1451 & 0x7FFFFFF8;
    v1240 = (v1449[0] + 16);
    v1241 = vdupq_n_s32(0x42D90000u);
    v1242 = v1239;
    do
    {
      v1243 = vminnmq_f32(*v1240, v1241);
      v1240[-1] = vminnmq_f32(v1240[-1], v1241);
      *v1240 = v1243;
      v1240 += 2;
      v1242 -= 8;
    }

    while (v1242);
    if (v1239 != v1237)
    {
LABEL_1194:
      v1244 = v1237 - v1239;
      v1245 = (v1238 + 4 * v1239);
      do
      {
        *v1245 = fminf(*v1245, 108.5);
        ++v1245;
        --v1244;
      }

      while (v1244);
    }
  }

  v499[6] = v1214;
  v499[7] = 2;
  coder::array_base<float,int,2>::ensureCapacity(v499, 2 * v1214);
  if (v1214 >= 1)
  {
    v1246 = 0;
    v1247 = v1443[0];
    v1248 = *v499;
    if (v1214 < 8)
    {
      goto LABEL_1202;
    }

    if ((v1248 - v1443[0]) < 0x20)
    {
      goto LABEL_1202;
    }

    v1246 = v1214 & 0x7FFFFFF8;
    v1249 = (v1248 + 16);
    v1250 = (v1443[0] + 16);
    v1251 = v1246;
    do
    {
      v1252 = *v1250;
      *(v1249 - 1) = *(v1250 - 1);
      *v1249 = v1252;
      v1249 += 2;
      v1250 += 2;
      v1251 -= 8;
    }

    while (v1251);
    if (v1246 != v1214)
    {
LABEL_1202:
      v1253 = v1214 - v1246;
      v1254 = 4 * v1246;
      v1255 = (v1248 + v1254);
      v1256 = (v1247 + v1254);
      do
      {
        v1257 = *v1256++;
        *v1255++ = v1257;
        --v1253;
      }

      while (v1253);
    }
  }

  v1258 = v499[6];
  if (v1237 >= 1)
  {
    v1259 = v1449[0];
    v1260 = *v499;
    if (v1237 < 8 || (v1261 = 4 * v1258 + v1260, (v1261 - v1449[0]) < 0x20))
    {
      v1262 = 0;
      goto LABEL_1208;
    }

    v1262 = v1237 & 0x7FFFFFF8;
    v1356 = (v1261 + 16);
    v1357 = (v1449[0] + 16);
    v1358 = v1262;
    do
    {
      v1359 = *v1357;
      *(v1356 - 1) = *(v1357 - 1);
      *v1356 = v1359;
      v1356 += 2;
      v1357 += 2;
      v1358 -= 8;
    }

    while (v1358);
    if (v1262 != v1237)
    {
LABEL_1208:
      v1263 = v1237 - v1262;
      v1264 = 4 * v1262;
      v1265 = (v1260 + v1264 + 4 * v1258);
      v1266 = (v1259 + v1264);
      do
      {
        v1267 = *v1266++;
        *v1265++ = v1267;
        --v1263;
      }

      while (v1263);
    }
  }

  v1436 = v1258 | 0x200000000;
  coder::array_base<unsigned char,int,2>::ensureCapacity(v1434, 2 * v1258);
  v1268 = v499[6];
  if (v1268 >= 1)
  {
    v1269 = 0;
    LODWORD(v1270) = 2 * v1268;
    if (v1270 <= 1)
    {
      v1270 = 1;
    }

    else
    {
      v1270 = v1270;
    }

    v1271 = v1434[0];
    do
    {
      *(v1271 + v1269++) = 0;
    }

    while (v1270 != v1269);
  }

  v1272 = v1436;
  v1442 = v1436 & ~(v1436 >> 31);
  coder::array_base<float,int,2>::ensureCapacity(v1440, v1442);
  if (v1272 >= 1)
  {
    v1273 = v1440[0];
    if (v1272 < 8)
    {
      v1274 = 0;
      goto LABEL_1222;
    }

    v1274 = v1272 & 0x7FFFFFF8;
    v1275 = xmmword_2247A48C0;
    v1276 = (v1440[0] + 16);
    v1277.i64[0] = 0x100000001;
    v1277.i64[1] = 0x100000001;
    v1278.i64[0] = 0x500000005;
    v1278.i64[1] = 0x500000005;
    v1279.i64[0] = 0x800000008;
    v1279.i64[1] = 0x800000008;
    v1280 = v1274;
    do
    {
      v1276[-1] = vaddq_s32(v1275, v1277);
      *v1276 = vaddq_s32(v1275, v1278);
      v1275 = vaddq_s32(v1275, v1279);
      v1276 += 2;
      v1280 -= 8;
    }

    while (v1280);
    if (v1274 != v1272)
    {
LABEL_1222:
      v1281 = v1272 - v1274;
      v1282 = v1274 + 1;
      v1283 = (v1273 + 4 * v1274);
      do
      {
        *v1283++ = v1282++;
        --v1281;
      }

      while (v1281);
    }
  }

  v1284 = v1442;
  v1454 = v1442 | 0x200000000;
  coder::array_base<float,int,2>::ensureCapacity(v1452, 2 * v1442);
  v1285 = v1454;
  v1286 = v1452[0];
  if (v1284 >= 1)
  {
    v1287 = v1440[0];
    v1288 = *v499 - 4;
    v1289 = v499[6];
    v1290 = v1440[0];
    v1291 = v1452[0];
    v1292 = v1284;
    do
    {
      v1293 = *v1290++;
      *v1291++ = *(v1288 + 4 * v1293);
      --v1292;
    }

    while (v1292);
    v1294 = v1288 + 4 * v1289;
    v1295 = (v1286 + 4 * v1285);
    do
    {
      v1296 = *v1287++;
      *v1295++ = *(v1294 + 4 * v1296);
      --v1284;
    }

    while (v1284);
  }

  v499[6] = v1285;
  v499[7] = 2;
  v1297 = 2 * v1285;
  coder::array_base<float,int,2>::ensureCapacity(v499, 2 * v1285);
  if (v1285 >= 1)
  {
    v1298 = 0;
    v1299 = *v499;
    v1300 = v1297 <= 1 ? 1 : v1297;
    if (v1297 < 8)
    {
      goto LABEL_1238;
    }

    if ((v1299 - v1286) < 0x20)
    {
      goto LABEL_1238;
    }

    v1298 = v1300 & 0x7FFFFFF8;
    v1301 = (v1299 + 16);
    v1302 = (v1286 + 16);
    v1303 = v1298;
    do
    {
      v1304 = *v1302;
      *(v1301 - 1) = *(v1302 - 1);
      *v1301 = v1304;
      v1301 += 2;
      v1302 += 2;
      v1303 -= 8;
    }

    while (v1303);
    if (v1298 != v1300)
    {
LABEL_1238:
      v1305 = v1300 - v1298;
      v1306 = 4 * v1298;
      v1307 = (v1299 + v1306);
      v1308 = (v1286 + v1306);
      do
      {
        v1309 = *v1308++;
        *v1307++ = v1309;
        --v1305;
      }

      while (v1305);
    }
  }

  LODWORD(v1436) = v499[6];
  HIDWORD(v1436) = 2;
  coder::array_base<unsigned char,int,2>::ensureCapacity(v1434, 2 * v1436);
  v1310 = v499[6];
  if (v1310 >= 1)
  {
    v1311 = 0;
    LODWORD(v1312) = 2 * v1310;
    if (v1312 <= 1)
    {
      v1312 = 1;
    }

    else
    {
      v1312 = v1312;
    }

    v1313 = v1434[0];
    do
    {
      *(v1313 + v1311) = fabsf(*(*v499 + 4 * v1311)) == INFINITY;
      ++v1311;
    }

    while (v1312 != v1311);
  }

  v1314 = v1436;
  v1439 = v1436 & ~(v1436 >> 31);
  coder::array_base<float,int,2>::ensureCapacity(v1437, v1439);
  if (v1314 >= 1)
  {
    v1315 = v1437[0];
    if (v1314 < 8)
    {
      v1316 = 0;
      goto LABEL_1252;
    }

    v1316 = v1314 & 0x7FFFFFF8;
    v1317 = xmmword_2247A48C0;
    v1318 = (v1437[0] + 16);
    v1319.i64[0] = 0x100000001;
    v1319.i64[1] = 0x100000001;
    v1320.i64[0] = 0x500000005;
    v1320.i64[1] = 0x500000005;
    v1321.i64[0] = 0x800000008;
    v1321.i64[1] = 0x800000008;
    v1322 = v1316;
    do
    {
      v1318[-1] = vaddq_s32(v1317, v1319);
      *v1318 = vaddq_s32(v1317, v1320);
      v1317 = vaddq_s32(v1317, v1321);
      v1318 += 2;
      v1322 -= 8;
    }

    while (v1322);
    if (v1316 != v1314)
    {
LABEL_1252:
      v1323 = v1314 - v1316;
      v1324 = v1316 + 1;
      v1325 = (v1315 + 4 * v1316);
      do
      {
        *v1325++ = v1324++;
        --v1323;
      }

      while (v1323);
    }
  }

  v1326 = v1439;
  v1454 = v1439 | 0x200000000;
  coder::array_base<float,int,2>::ensureCapacity(v1452, 2 * v1439);
  v1327 = v1454;
  if (v1326 >= 1)
  {
    v1328 = v1437[0];
    v1329 = v499[6];
    v1330 = *v499 - 4;
    v1331 = v1452[0];
    v1332 = v1437[0];
    v1333 = v1452[0];
    v1334 = v1326;
    do
    {
      v1335 = *v1332++;
      *v1333++ = *(v1330 + 4 * v1335);
      --v1334;
    }

    while (v1334);
    v1336 = v1330 + 4 * v1329;
    v1337 = (v1331 + 4 * v1327);
    do
    {
      v1338 = *v1328++;
      *v1337++ = *(v1336 + 4 * v1338);
      --v1326;
    }

    while (v1326);
  }

  v499[6] = v1327;
  v499[7] = 2;
  v1339 = 2 * v1327;
  coder::array_base<float,int,2>::ensureCapacity(v499, 2 * v1327);
  if (v1327 >= 1)
  {
    v1340 = 0;
    v1341 = v1452[0];
    v1342 = *v499;
    v1343 = v1339 <= 1 ? 1 : v1339;
    if (v1339 < 8)
    {
      goto LABEL_1268;
    }

    if ((v1342 - v1452[0]) < 0x20)
    {
      goto LABEL_1268;
    }

    v1340 = v1343 & 0x7FFFFFF8;
    v1344 = (v1342 + 16);
    v1345 = (v1452[0] + 16);
    v1346 = v1340;
    do
    {
      v1347 = *v1345;
      *(v1344 - 1) = *(v1345 - 1);
      *v1344 = v1347;
      v1344 += 2;
      v1345 += 2;
      v1346 -= 8;
    }

    while (v1346);
    if (v1340 != v1343)
    {
LABEL_1268:
      v1348 = v1343 - v1340;
      v1349 = 4 * v1340;
      v1350 = (v1342 + v1349);
      v1351 = (v1341 + v1349);
      do
      {
        v1352 = *v1351++;
        *v1350++ = v1352;
        --v1348;
      }

      while (v1348);
    }
  }

  if (v1435 == 1 && v1434[0])
  {
    MEMORY[0x22AA53170](v1434[0], 0x1000C8077774924);
  }

  if (v502)
  {
    v1353 = v503;
  }

  else
  {
    v1353 = 0;
  }

  if (v1353)
  {
    MEMORY[0x22AA53170](v502, 0x1000C8077774924);
  }

  if (v498)
  {
    v1354 = v501;
  }

  else
  {
    v1354 = 0;
  }

  if (v1354 == 1)
  {
    MEMORY[0x22AA53170](v498, 0x1000C80BDFB0063);
  }

  if (v1438 == 1 && v1437[0])
  {
    MEMORY[0x22AA53170](v1437[0], 0x1000C8052888210);
  }

  if (v1441 == 1 && v1440[0])
  {
    MEMORY[0x22AA53170](v1440[0], 0x1000C8052888210);
  }

  if (v1444 == 1 && v1443[0])
  {
    MEMORY[0x22AA53170](v1443[0], 0x1000C8052888210);
  }

  if (v1447 == 1 && v1446[0])
  {
    MEMORY[0x22AA53170](v1446[0], 0x1000C8052888210);
  }

  if (v1450 == 1 && v1449[0])
  {
    MEMORY[0x22AA53170](v1449[0], 0x1000C8052888210);
  }

  if (v1453 == 1 && v1452[0])
  {
    MEMORY[0x22AA53170](v1452[0], 0x1000C8052888210);
  }

  result = __src;
  if ((v500 & (__src != 0)) == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_224785B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x268]) == 1 && STACK[0x258])
  {
    MEMORY[0x22AA53170](STACK[0x258], 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  if (v69)
  {
    v71 = v68 ^ 1;
  }

  else
  {
    v71 = 1;
  }

  if ((v71 & 1) == 0)
  {
    MEMORY[0x22AA53170](v69, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  if (v66)
  {
    v72 = v67 ^ 1;
  }

  else
  {
    v72 = 1;
  }

  if ((v72 & 1) == 0)
  {
    MEMORY[0x22AA53170](v66, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x288]) == 1 && STACK[0x278])
  {
    MEMORY[0x22AA53170](STACK[0x278], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x2A8]) == 1 && STACK[0x298])
  {
    MEMORY[0x22AA53170](STACK[0x298], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x2C8]) == 1 && STACK[0x2B8])
  {
    MEMORY[0x22AA53170](STACK[0x2B8], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x2E8]) == 1 && STACK[0x2D8])
  {
    MEMORY[0x22AA53170](STACK[0x2D8], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x308]) == 1 && STACK[0x2F8])
  {
    MEMORY[0x22AA53170](STACK[0x2F8], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (LOBYTE(STACK[0x328]) == 1 && STACK[0x318])
  {
    MEMORY[0x22AA53170](STACK[0x318], 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if ((v65 & (a65 != 0)) == 1)
  {
    MEMORY[0x22AA53170](a65, 0x1000C8000313F17, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(a1);
}

uint64_t *coder::array<cell_wrap_1,2>::~array(uint64_t *result)
{
  if (*(result + 16) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result;
      v3 = v1 - 16;
      v4 = *(v1 - 8);
      if (v4)
      {
        v5 = 32 * v4;
        v6 = v5 + v1 - 16;
        v7 = -v5;
        v8 = v6;
        do
        {
          v9 = *v8;
          v8 -= 32;
          if (v9 == 1)
          {
            v10 = *(v6 - 16);
            if (v10)
            {
              MEMORY[0x22AA53170](v10, 0x1000C8052888210);
            }
          }

          v6 = v8;
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x22AA53170](v3, 0x1080C8075AFF985);
      return v2;
    }
  }

  return result;
}

uint64_t *coder::array<cell_wrap_0,2>::~array(uint64_t *result)
{
  if (*(result + 16) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result;
      v3 = v1 - 16;
      v4 = *(v1 - 8);
      if (v4)
      {
        v5 = 32 * v4;
        v6 = v5 + v1 - 16;
        v7 = -v5;
        v8 = v6;
        do
        {
          v9 = *v8;
          v8 -= 32;
          if (v9 == 1)
          {
            v10 = *(v6 - 16);
            if (v10)
            {
              MEMORY[0x22AA53170](v10, 0x1000C8052888210);
            }
          }

          v6 = v8;
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x22AA53170](v3, 0x1080C808A25AF7CLL);
      return v2;
    }
  }

  return result;
}

uint64_t coder::fft2(uint64_t a1, uint64_t a2)
{
  v3 = coder::fft2(float const*,creal32_T *)::fcv;
  coder::internal::FFTImplementationCallback::doHalfLengthRadix2(a1, coder::fft2(float const*,creal32_T *)::fcv);
  v4 = 0;
  v5 = &unk_27D35B548;
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = 84;
    do
    {
      v9 = v6[256];
      *(v7 - 1) = *v6;
      *v7 = v9;
      v7 += 2;
      v6 += 512;
      v8 -= 2;
    }

    while (v8);
    ++v4;
    v5 += 84;
    ++v3;
  }

  while (v4 != 256);
  bzero(coder::fft2(float const*,creal32_T *)::yPerm, 0x80000uLL);
  v10 = 0;
  v11 = 0;
  v12 = &unk_27D2B154C;
  v13 = 1;
  v14 = coder::fft2(float const*,creal32_T *)::yPerm;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = v10 << 8;
    v18 = v10 << 8;
    do
    {
      coder::fft2(float const*,creal32_T *)::yPerm[v18] = coder::fft2(float const*,creal32_T *)::xPerm[84 * v10 + v15];
      v19 = 256;
      do
      {
        v20 = v16;
        v19 >>= 1;
        v16 ^= v19;
      }

      while ((v19 & ~v20) == 0);
      v18 = v16 + v17;
      ++v15;
    }

    while (v15 != 83);
    v21 = 0;
    coder::fft2(float const*,creal32_T *)::yPerm[v18] = coder::fft2(float const*,creal32_T *)::xPerm[84 * v10 + 83];
    do
    {
      v22 = &v14[v21];
      v62 = vld4q_f32(v22);
      v63.val[2] = vsubq_f32(v62.val[0], v62.val[2]);
      v63.val[3] = vsubq_f32(v62.val[1], v62.val[3]);
      v63.val[0] = vaddq_f32(v62.val[0], v62.val[2]);
      v63.val[1] = vaddq_f32(v62.val[1], v62.val[3]);
      vst4q_f32(v22, v63);
      v21 += 8;
    }

    while (v21 != 256);
    LODWORD(result) = 2;
    v24 = 4;
    v25 = 253;
    v26 = 64;
    do
    {
      v28 = result;
      result = v24;
      if (v25 >= 1)
      {
        v29 = 0;
        v30 = v28;
        v31 = 8 * v24;
        v32 = v11;
        v33 = &v14[v28];
        do
        {
          v34 = (v33 + v29);
          v35 = *(v33 + v29);
          v36 = *(v33 + v29 + 4);
          v37 = (v14 + v29);
          v38 = *(v14 + v29);
          v39 = *(v14 + v29 + 4);
          *v34 = v38 - v35;
          v34[1] = v39 - v36;
          *v37 = v38 + v35;
          v37[1] = v39 + v36;
          v32 += v24;
          v29 += v31;
        }

        while (v32 < v25 + v17);
        v40 = &coder::fft2(float const*,creal32_T *)::yPerm[v13 + v30] + 1;
        v41 = v12;
        v42 = v26;
        v43 = v13;
        do
        {
          v44 = fv[v42];
          v45 = coder::fft2(float const*,creal32_T *)::b_fv[v42];
          v46 = v41;
          v47 = v40;
          v48 = v43;
          do
          {
            v49 = *(v47 - 1);
            v50 = -((*v47 * v45) - (v49 * v44));
            v51 = (*v47 * v44) + (v49 * v45);
            v52 = *(v46 - 1);
            v53 = *v46;
            v54 = *v46 - v51;
            *(v47 - 1) = v52 - v50;
            *v47 = v54;
            *(v46 - 1) = v50 + v52;
            *v46 = v53 + v51;
            v48 += v24;
            v47 = (v47 + v31);
            v46 = (v46 + v31);
          }

          while (v48 < v43 + v25);
          ++v43;
          v42 += v26;
          v40 += 2;
          v41 += 2;
        }

        while (v42 < 0x80);
      }

      v24 = (2 * v24);
      v25 -= result;
      v27 = v26 > 1;
      v26 >>= 1;
    }

    while (v27);
    ++v10;
    v11 += 256;
    v13 += 256;
    v14 += 256;
    v12 += 512;
  }

  while (v10 != 256);
  v55 = 0;
  v56 = (a2 + 8);
  v57 = coder::fft2(float const*,creal32_T *)::yPerm;
  do
  {
    v58 = v57;
    v59 = v56;
    v60 = 256;
    do
    {
      v61 = v58[256];
      *(v59 - 1) = *v58;
      *v59 = v61;
      v59 += 2;
      v58 += 512;
      v60 -= 2;
    }

    while (v60);
    ++v55;
    v56 += 256;
    ++v57;
  }

  while (v55 != 256);
  return result;
}

_DWORD *coder::array_base<unsigned char,int,2>::ensureCapacity(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    if (v2 <= 16)
    {
      v2 = 16;
    }

    if (a2 >= 17)
    {
      do
      {
        if (v2 <= 0x3FFFFFFF)
        {
          v2 *= 2;
        }

        else
        {
          v2 = 0x7FFFFFFF;
        }
      }

      while (v2 < a2);
    }

    operator new[]();
  }

  result[2] = a2;
  return result;
}

float coder::cat(coder *this, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  *a9 = *this;
  a9[14] = *a2;
  a9[28] = *a3;
  a9[42] = *a4;
  a9[56] = *a5;
  a9[70] = *a6;
  a9[84] = *a7;
  a9[98] = *a8;
  a9[1] = *(this + 1);
  a9[15] = a2[1];
  a9[29] = a3[1];
  a9[43] = a4[1];
  a9[57] = a5[1];
  a9[71] = a6[1];
  a9[85] = a7[1];
  a9[99] = a8[1];
  a9[2] = *(this + 2);
  a9[16] = a2[2];
  a9[30] = a3[2];
  a9[44] = a4[2];
  a9[58] = a5[2];
  a9[72] = a6[2];
  a9[86] = a7[2];
  a9[100] = a8[2];
  a9[3] = *(this + 3);
  a9[17] = a2[3];
  a9[31] = a3[3];
  a9[45] = a4[3];
  a9[59] = a5[3];
  a9[73] = a6[3];
  a9[87] = a7[3];
  a9[101] = a8[3];
  a9[4] = *(this + 4);
  a9[18] = a2[4];
  a9[32] = a3[4];
  a9[46] = a4[4];
  a9[60] = a5[4];
  a9[74] = a6[4];
  a9[88] = a7[4];
  a9[102] = a8[4];
  a9[5] = *(this + 5);
  a9[19] = a2[5];
  a9[33] = a3[5];
  a9[47] = a4[5];
  a9[61] = a5[5];
  a9[75] = a6[5];
  a9[89] = a7[5];
  a9[103] = a8[5];
  a9[6] = *(this + 6);
  a9[20] = a2[6];
  a9[34] = a3[6];
  a9[48] = a4[6];
  a9[62] = a5[6];
  a9[76] = a6[6];
  a9[90] = a7[6];
  a9[104] = a8[6];
  a9[7] = *(this + 7);
  a9[21] = a2[7];
  a9[35] = a3[7];
  a9[49] = a4[7];
  a9[63] = a5[7];
  a9[77] = a6[7];
  a9[91] = a7[7];
  a9[105] = a8[7];
  a9[8] = *(this + 8);
  a9[22] = a2[8];
  a9[36] = a3[8];
  a9[50] = a4[8];
  a9[64] = a5[8];
  a9[78] = a6[8];
  a9[92] = a7[8];
  a9[106] = a8[8];
  a9[9] = *(this + 9);
  a9[23] = a2[9];
  a9[37] = a3[9];
  a9[51] = a4[9];
  a9[65] = a5[9];
  a9[79] = a6[9];
  a9[93] = a7[9];
  a9[107] = a8[9];
  a9[10] = *(this + 10);
  a9[24] = a2[10];
  a9[38] = a3[10];
  a9[52] = a4[10];
  a9[66] = a5[10];
  a9[80] = a6[10];
  a9[94] = a7[10];
  a9[108] = a8[10];
  a9[11] = *(this + 11);
  a9[25] = a2[11];
  a9[39] = a3[11];
  a9[53] = a4[11];
  a9[67] = a5[11];
  a9[81] = a6[11];
  a9[95] = a7[11];
  a9[109] = a8[11];
  a9[12] = *(this + 12);
  a9[26] = a2[12];
  a9[40] = a3[12];
  a9[54] = a4[12];
  a9[68] = a5[12];
  a9[82] = a6[12];
  a9[96] = a7[12];
  a9[110] = a8[12];
  a9[13] = *(this + 13);
  a9[27] = a2[13];
  a9[41] = a3[13];
  a9[55] = a4[13];
  a9[69] = a5[13];
  a9[83] = a6[13];
  a9[97] = a7[13];
  result = a8[13];
  a9[111] = result;
  return result;
}

uint64_t *get_peridot_nominal_jlin(afdr_package::bufferClass *a1, afdr_package::jlin_v100::jlinClass *a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v67 = *MEMORY[0x277D85DE8];
  bzero((v3 + 4), 0x1048uLL);
  *v5 = v6;
  v5[1] = 0;
  *v6 = 100;
  v7 = *v5;
  v8 = v5[1] << 32;
  *(v7 + ((v8 + 0x400000000) >> 32)) = 55;
  *(v7 + ((v8 + 0x500000000) >> 32)) = 26;
  *(v7 + ((v8 + 0x600000000) >> 32)) = -64;
  *(v7 + ((v8 + 0x700000000) >> 32)) = 91;
  *(v7 + ((v8 + 0x800000000) >> 32)) = 32;
  *(v7 + ((v8 + 0x900000000) >> 32)) = 65;
  *(v7 + ((v8 + 0xA00000000) >> 32)) = -19;
  *(v7 + ((v8 + 0xB00000000) >> 32)) = 63;
  v9 = *v5;
  v10 = v5[1] << 32;
  *(v9 + ((v10 + 0xC00000000) >> 32)) = 77;
  *(v9 + ((v10 + 0xD00000000) >> 32)) = -37;
  *(v9 + ((v10 + 0xE00000000) >> 32)) = -65;
  *(v9 + ((v10 + 0xF00000000) >> 32)) = -78;
  *(v9 + ((v10 + 0x1000000000) >> 32)) = -46;
  *(v9 + ((v10 + 0x1100000000) >> 32)) = -92;
  *(v9 + ((v10 + 0x1200000000) >> 32)) = -124;
  *(v9 + ((v10 + 0x1300000000) >> 32)) = 63;
  v11 = *v5;
  v12 = v5[1];
  v13 = vdupq_n_s64(v12);
  v14 = vaddq_s64(v13, xmmword_2247A53A0);
  v15 = vaddq_s64(v13, xmmword_2247A53B0);
  v16 = vaddq_s64(v13, xmmword_2247A53C0);
  v17 = vaddq_s64(v13, xmmword_2247A53D0);
  v18 = vaddq_s64(v13, xmmword_2247A53E0);
  v19 = vaddq_s64(v13, xmmword_2247A53F0);
  v12 <<= 32;
  *(v11 + ((v12 + 0x1400000000) >> 32)) = -43;
  *(v11 + v14.i32[0]) = -49;
  *(v11 + v14.i32[2]) = -101;
  *(v11 + v15.i32[0]) = -118;
  *(v11 + v15.i32[2]) = 84;
  *(v11 + v16.i32[0]) = 24;
  *(v11 + v16.i32[2]) = -37;
  *(v11 + v17.i32[0]) = 63;
  *(v11 + v17.i32[2]) = 9;
  *(v11 + v18.i32[0]) = -31;
  *(v11 + v18.i32[2]) = -47;
  *(v11 + v19.i32[0]) = -58;
  v20 = vaddq_s64(v13, xmmword_2247A5400);
  *(v11 + v19.i32[2]) = 17;
  *(v11 + v20.i32[0]) = 107;
  *(v11 + v20.i32[2]) = -31;
  *(v11 + ((v12 + 0x2300000000) >> 32)) = 63;
  v21 = vdupq_lane_s64(v5[1], 0);
  *v58 = vaddq_s64(v21, xmmword_2247A5290);
  v59 = vaddq_s64(v21, xmmword_2247A52A0);
  v60 = vaddq_s64(v21, xmmword_2247A52B0);
  v61 = vaddq_s64(v21, xmmword_2247A52C0);
  v62 = vaddq_s64(v21, xmmword_2247A52D0);
  v63 = vaddq_s64(v21, xmmword_2247A52E0);
  v64 = vaddq_s64(v21, xmmword_2247A52F0);
  v65 = vaddq_s64(v21, xmmword_2247A5300);
  afdr_package::bufferClass::setData(*v5, v58, get_peridot_nominal_jlin(afdr_package::bufferClass *,afdr_package::jlin_v100::jlinClass *)::S_type);
  v22 = (v5 + 1);
  v23 = vld1q_dup_f64(v22);
  *v58 = vaddq_s64(v23, xmmword_2247A5410);
  v59 = vaddq_s64(v23, xmmword_2247A5420);
  v60 = vaddq_s64(v23, xmmword_2247A5430);
  v61 = vaddq_s64(v23, xmmword_2247A5440);
  v62 = vaddq_s64(v23, xmmword_2247A5450);
  v63 = vaddq_s64(v23, xmmword_2247A5460);
  v64 = vaddq_s64(v23, xmmword_2247A5470);
  v65 = vaddq_s64(v23, xmmword_2247A5480);
  afdr_package::bufferClass::setData(*v5, v58, get_peridot_nominal_jlin(afdr_package::bufferClass *,afdr_package::jlin_v100::jlinClass *)::S_type);
  v24 = 0;
  v25 = xmmword_2247A4650;
  v26 = vdupq_n_s64(v5[1] + 36);
  v27 = vdupq_n_s64(2uLL);
  v28 = vdupq_n_s64(4uLL);
  do
  {
    v29 = vaddq_s64(v26, v25);
    v30 = &v66[v24];
    *v30 = v29;
    v30[1] = vaddq_s64(v29, v27);
    v25 = vaddq_s64(v25, v28);
    v24 += 32;
  }

  while (v24 != 0x4000);
  v31 = *v5;
  v32 = 0x100000000;
  v33 = &v57;
  v34 = 256;
  v35 = vdupq_n_s64(0x3F6F03A5C468173AuLL);
  do
  {
    v36 = vadd_s32(v32, 0x200000002);
    v37.i64[0] = v32.u32[0];
    v37.i64[1] = v32.u32[1];
    v38 = vcvtq_f64_u64(v37);
    v37.i64[0] = v36.u32[0];
    v37.i64[1] = v36.u32[1];
    v33[-1] = vmulq_f64(v38, v35);
    *v33 = vmulq_f64(vcvtq_f64_u64(v37), v35);
    v32 = vadd_s32(v32, 0x400000004);
    v33 += 2;
    v34 -= 4;
  }

  while (v34);
  v39 = 0;
  v40 = v56;
  do
  {
    v41 = *(v40 - 1);
    v42 = *v40;
    v40 += 2;
    *(v31 + *&v66[v39]) = v41;
    *(v31 + *&v66[v39 + 8]) = v42;
    v39 += 16;
  }

  while (v39 != 0x4000);
  v43 = 0;
  v44 = xmmword_2247A4650;
  v45 = vdupq_n_s64(v5[1] + 2084);
  v46 = vdupq_n_s64(2uLL);
  v47 = vdupq_n_s64(4uLL);
  do
  {
    v48 = vaddq_s64(v45, v44);
    v49 = &v66[v43];
    *v49 = v48;
    v49[1] = vaddq_s64(v48, v46);
    v44 = vaddq_s64(v44, v47);
    v43 += 32;
  }

  while (v43 != 0x4000);
  v50 = 0;
  v51 = *v5;
  v52 = &byte_2247BBA59;
  do
  {
    v53 = *(v52 - 1);
    v54 = *v52;
    v52 += 2;
    *(v51 + *&v66[v50]) = v53;
    *(v51 + *&v66[v50 + 8]) = v54;
    v50 += 16;
  }

  while (v50 != 0x4000);
  return v5;
}

void *coder::interp1(coder *this, const float *a2, const float *a3, const float *a4, float *a5, int *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, sizeof(__dst));
  result = memcpy(v36, this, sizeof(v36));
  v11 = 0;
  *a5 = 0x100000070;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 6) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 8) = 0u;
  *(a4 + 9) = 0u;
  *(a4 + 10) = 0u;
  *(a4 + 11) = 0u;
  *(a4 + 12) = 0u;
  *(a4 + 13) = 0u;
  *(a4 + 14) = 0u;
  *(a4 + 15) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 17) = 0u;
  *(a4 + 18) = 0u;
  *(a4 + 19) = 0u;
  *(a4 + 20) = 0u;
  *(a4 + 21) = 0u;
  *(a4 + 22) = 0u;
  *(a4 + 23) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 25) = 0u;
  *(a4 + 26) = 0u;
  *(a4 + 27) = 0u;
  while (v11 != 1024)
  {
    v11 += 4;
  }

  if (*(this + 1) < *this)
  {
    v12 = 0;
    for (i = 255; i != 127; --i)
    {
      v14 = v36[v12];
      v36[v12] = v36[i];
      v36[i] = v14;
      v15 = __dst[v12];
      __dst[v12] = __dst[i];
      __dst[i] = v15;
      ++v12;
    }
  }

  v16 = 0;
  v17 = v36[255];
  *a5 = 0x100000070;
  v18 = v36[0];
  v19 = __dst[0];
  v20 = __dst[1] - __dst[0];
  v21 = __dst[255];
  v22 = __dst[255] - __dst[254];
  v23 = 1.0 / (v36[1] - v36[0]);
  v24 = 1.0 / (v17 - v36[254]);
  do
  {
    v26 = a3[v16];
    if (v26 > v17)
    {
      v25 = v21 + ((v22 * (v26 - v17)) * v24);
    }

    else if (v26 >= v18)
    {
      v27 = 256;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = (v27 >> 1) + (v29 >> 1) + (v29 & v27 & 1);
        v31 = __dst[v30 + 255];
        if (v31 <= v26)
        {
          v28 = v30 + 1;
        }

        else
        {
          v27 = (v27 >> 1) + (v29 >> 1) + (v29 & v27 & 1);
        }

        if (v31 <= v26)
        {
          v29 = v30;
        }
      }

      while (v27 > v28);
      v32 = v29 - 1;
      v33 = (v26 - v36[v32]) / (v36[v29] - v36[v32]);
      if (v33 == 0.0)
      {
        v25 = __dst[v32];
      }

      else if (v33 == 1.0)
      {
        v25 = __dst[v29];
      }

      else
      {
        v25 = __dst[v32];
        v34 = __dst[v29];
        if (v25 != v34)
        {
          v25 = v25 + ((v34 - v25) * v33);
        }
      }
    }

    else
    {
      v25 = v19 + ((v20 * (v26 - v18)) * v23);
    }

    a4[v16++] = v25;
  }

  while (v16 != 112);
  return result;
}

float32x4_t *ransac::ransacComputeHomography(ransac *this, const float *a2, const int *a3, const float *a4, const int *a5, float *a6)
{
  v7 = MEMORY[0x28223BE20](this, a2, a3);
  v2609 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v8;
  v2938 = *MEMORY[0x277D85DE8];
  if (v8 < 1)
  {
    v19.i32[0] = 2143289344;
    v20.i32[0] = 2143289344;
    v18.i32[0] = 2143289344;
    goto LABEL_141;
  }

  v17 = v7;
  memcpy(&v2792, v7, 4 * (3 * v8));
  if (v16 > 8)
  {
    v22 = v16 & 7;
    if (!v22)
    {
      v22 = 8;
    }

    v21 = v16 - v22;
    v23 = v2769;
    v24 = (v17 + 56);
    v25 = v21;
    do
    {
      v26 = v24 - 12;
      v27 = vld3q_f32(v26);
      v28 = vld3q_f32(v24);
      v9 = vabsq_f32(v27);
      v10 = vabsq_f32(v28);
      v23[-1] = v9;
      *v23 = v10;
      v23 += 2;
      v24 += 24;
      v25 -= 8;
    }

    while (v25);
  }

  else
  {
    v21 = 0;
  }

  v29 = &v17[12 * v21 + 8];
  do
  {
    v30 = *v29;
    v29 += 3;
    *&v2768[4 * v21++ - 4] = fabsf(v30);
  }

  while (v16 != v21);
  if (v16 > 3)
  {
    if (v16 >= 0x20)
    {
      v31 = v16 & 0x7FFFFFE0;
      v32 = v2745;
      v33 = v2771;
      v9 = vdupq_n_s32(0x25800000u);
      v10.i64[0] = 0x101010101010101;
      v10.i64[1] = 0x101010101010101;
      v34 = v31;
      do
      {
        v35 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(*v33, v9), vcgtq_f32(v33[1], v9)), vuzp1q_s16(vcgtq_f32(v33[2], v9), vcgtq_f32(v33[3], v9))), v10);
        v32[-1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v33[-4], v9), vcgtq_f32(v33[-3], v9)), vuzp1q_s16(vcgtq_f32(v33[-2], v9), vcgtq_f32(v33[-1], v9))), v10);
        *v32 = v35;
        v32 += 2;
        v33 += 8;
        v34 -= 32;
      }

      while (v34);
      if (v31 == v16)
      {
        goto LABEL_24;
      }

      if ((v16 & 0x1C) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v31 = 0;
    }

    v36 = v31;
    v31 = v16 & 0x7FFFFFFC;
    v37 = v36 - v31;
    v38 = &v2744[v36 + 9];
    v9 = vdupq_n_s32(0x25800000u);
    v10.i32[1] = 65537;
    v39 = &v2768[4 * v36 - 4];
    do
    {
      v40 = *v39++;
      *v38++ = vuzp1_s8(vand_s8(vmovn_s32(vcgtq_f32(v40, v9)), 0x1000100010001), *v9.f32).u32[0];
      v37 += 4;
    }

    while (v37);
    if (v31 == v16)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v31 = 0;
LABEL_22:
  v41 = v16 - v31;
  v42 = &v2744[v31 + 9];
  v43 = &v2768[4 * v31 - 4];
  do
  {
    v44 = *v43++;
    *v42++ = v44 > 2.2204e-16;
    --v41;
  }

  while (v41);
LABEL_24:
  v45 = 0;
  v46 = 0;
  while (!v2744[v45 + 9])
  {
    ++v45;
LABEL_26:
    if (v45 >= v16)
    {
      goto LABEL_31;
    }
  }

  __src[v46] = v45 + 1;
  v47 = (v46 + 1) < v16;
  if ((v46 + 1) < v16)
  {
    ++v45;
  }

  ++v46;
  if (v47)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v16 == 1)
  {
    if (v46)
    {
      v48 = 0;
      __dst = __src[0];
      v49 = 1;
      v50 = 1;
      v46 = 1;
      goto LABEL_42;
    }

    v51 = 0;
    v18.i32[0] = 2143289344;
    v20.i32[0] = 2143289344;
    v19.i32[0] = 2143289344;
    goto LABEL_139;
  }

  if (v46 < 1)
  {
    v9.i64[0] = 0;
    v52 = NAN;
    v53 = NAN;
    v54 = 0.0;
  }

  else
  {
    v50 = v46;
    memcpy(&__dst, __src, 4 * v46);
    if (v46 == 1)
    {
      v48 = 0;
      v49 = 1;
      do
      {
LABEL_42:
        *(&v2792 + 3 * *&v2751[4 * v48 - 4] - 3) = *&v17[12 * *&v2751[4 * v48 - 4] - 12] / *&v17[12 * *&v2751[4 * v48 - 4] - 4];
        ++v48;
      }

      while (v50 != v48);
      if (v49)
      {
        v59 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v48 = v46 & 0x7FFFFFFE;
      v55 = v2751;
      v56 = v48;
      do
      {
        v57 = 3 * *v55;
        v58 = *&v17[4 * v57 - 12] / *&v17[4 * v57 - 4];
        *(&v2792 + 3 * *(v55 - 1) - 3) = *&v17[12 * *(v55 - 1) - 12] / *&v17[12 * *(v55 - 1) - 4];
        *(&v2792 + v57 - 3) = v58;
        v55 += 2;
        v56 -= 2;
      }

      while (v56);
      v49 = 0;
      if (v48 != v46)
      {
        goto LABEL_42;
      }
    }

    v59 = v50 & 0x7FFFFFFE;
    v60 = v2775;
    v61 = v2751;
    v62 = v59;
    do
    {
      v63 = *(&v2792 + 3 * *v61 - 2) / *(&v2792 + 3 * *v61 - 1);
      *(v60 - 1) = *(&v2792 + 3 * *(v61 - 1) - 2) / *(&v2792 + 3 * *(v61 - 1) - 1);
      *v60 = v63;
      v60 += 2;
      v61 += 2;
      v62 -= 2;
    }

    while (v62);
    for (; v50 != v59; ++v59)
    {
LABEL_48:
      *&v2775[4 * v59 - 4] = *(&v2792 + 3 * *&v2751[4 * v59 - 4] - 2) / *(&v2792 + 3 * *&v2751[4 * v59 - 4] - 1);
    }

    if (v49)
    {
      v64 = 0;
      goto LABEL_54;
    }

    v64 = v50 & 0x7FFFFFFE;
    v65 = v2751;
    v66 = v2775;
    v67 = v64;
    do
    {
      v68 = *v66;
      v69 = 3 * *v65;
      *(&v2792 + 3 * *(v65 - 1) - 2) = *(v66 - 1);
      *(&v2792 + v69 - 2) = v68;
      v65 += 2;
      v66 += 2;
      v67 -= 2;
    }

    while (v67);
    if (v64 != v50)
    {
LABEL_54:
      v70 = v50 - v64;
      v71 = 4 * v64;
      v72 = &v2751[4 * v64 - 4];
      v73 = &v2775[v71 - 4];
      do
      {
        v74 = *v73++;
        v75 = v74;
        v76 = *v72++;
        *(&v2792 + 3 * v76 - 2) = v75;
        --v70;
      }

      while (v70);
    }

    if (v46 <= 3)
    {
      v77 = 0;
      goto LABEL_67;
    }

    if (v46 >= 0x20)
    {
      v77 = v50 & 0x7FFFFFE0;
      v78 = v2747;
      v79 = v2752;
      v9 = xmmword_2247A4600;
      v80 = v77;
      do
      {
        v81 = v79->val[0];
        v82 = v79->val[1];
        v10 = vqtbl4q_s8(v79[-1], xmmword_2247A4600);
        v83 = v79->val[2];
        v18 = v79->val[3];
        v78[-1] = v10;
        *v78 = vqtbl4q_s8(*(&v18 - 3), xmmword_2247A4600);
        v78 += 2;
        v79 += 2;
        v80 -= 32;
      }

      while (v80);
      if (v77 != v50)
      {
        if ((v50 & 0x1C) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v77 = 0;
LABEL_64:
      v84 = v77;
      v77 = v50 & 0x7FFFFFFC;
      v85 = v84 - v77;
      v86 = &v2745[v84 + 96];
      v87 = &v2751[4 * v84 - 4];
      do
      {
        v88 = *v87++;
        v9.i64[1] = v88.i64[1];
        *v9.f32 = vmovn_s32(v88);
        *v9.f32 = vuzp1_s8(*v9.f32, *v9.f32);
        *v86++ = v9.i32[0];
        v85 += 4;
      }

      while (v85);
      if (v77 != v50)
      {
LABEL_67:
        v89 = v50 - v77;
        v90 = &v2745[v77 + 96];
        v91 = &v2751[4 * v77 - 4];
        do
        {
          v92 = *v91++;
          *v90++ = v92;
          --v89;
        }

        while (v89);
      }
    }

    if (v49)
    {
      v93 = 0;
      goto LABEL_74;
    }

    v93 = v50 & 0x7FFFFFFE;
    v94 = v2746;
    v95 = v93;
    do
    {
      v96 = &v2792 + 3 * *v94;
      *(&v2792 + 3 * *(v94 - 1) - 1) = 1.0;
      *(v96 - 1) = 1.0;
      v94 += 2;
      v95 -= 2;
    }

    while (v95);
    if (v93 != v50)
    {
LABEL_74:
      v97 = v50 - v93;
      v98 = &v2745[v93 + 96];
      do
      {
        v99 = *v98++;
        *(&v2792 + 3 * v99 - 1) = 1.0;
        --v97;
      }

      while (v97);
    }

    v100 = 0;
    v101 = v2778;
    do
    {
      v102 = 3 * *&v2751[4 * v100 - 4];
      v103 = *(&v2792 + v102 - 2);
      *(v101 - 1) = *(&v2792 + v102 - 3);
      *v101 = v103;
      ++v100;
      v101 += 2;
    }

    while (v50 != v100);
    v104 = v2777;
    v105 = v2778[0];
    if ((v49 & 1) == 0)
    {
      if (v46 < 0x15)
      {
        v106 = 2;
        goto LABEL_88;
      }

      v107 = v50 - 2;
      v106 = 2;
      if (((v50 - 2) & 0x7FFFFFFFu) > 0x3FFFFFFE || (2 * v107) > 0x7FFFFFFD || v107 >> 31)
      {
LABEL_88:
        v118 = v46 + 1 - v106;
        v119 = 2 * v106 - 1;
        v120 = (v106 << 33) - 0x200000000;
        do
        {
          v104 = *(&v2778[-1] + (v120 >> 30)) + v104;
          v105 = v2778[v119 - 1] + v105;
          v119 += 2;
          v120 += 0x200000000;
          --v118;
        }

        while (v118);
      }

      else
      {
        v108 = 0;
        v109 = (v50 - 1) & 0xFFFFFFFFFFFFFFF8;
        v110 = 0uLL;
        v111 = LODWORD(v2778[0]);
        v112 = LODWORD(v2777);
        v113 = v109;
        v10 = 0uLL;
        do
        {
          v114 = (&v2778[-1] + (v108 >> 30));
          v115 = v114 + 2;
          v2939 = vld2q_f32(v115);
          v114 += 10;
          v2941 = vld2q_f32(v114);
          v112 = vaddq_f32(v2939.val[0], v112);
          v10 = vaddq_f32(v2941.val[0], v10);
          v111 = vaddq_f32(v2939.val[1], v111);
          v110 = vaddq_f32(v2941.val[1], v110);
          v108 += 0x1000000000;
          v113 -= 8;
        }

        while (v113);
        v116 = vaddq_f32(v110, v111);
        v105 = vaddv_f32(*&vpaddq_f32(v116, v116));
        v117 = vaddq_f32(v10, v112);
        v9 = vpaddq_f32(v117, v117);
        v104 = vaddv_f32(*v9.f32);
        if (v50 - 1 != v109)
        {
          v106 = v109 | 2;
          goto LABEL_88;
        }
      }
    }

    v121 = 0;
    v9.f32[0] = v46;
    v52 = v104 / v46;
    v122 = v2778;
    v53 = v105 / v46;
    do
    {
      v123 = v121;
      if (v46 == 1)
      {
        v123 = 0;
      }

      v124 = 3 * *&v2751[4 * v123 - 4];
      v125 = *(&v2792 + v124 - 2) - v53;
      *(v122 - 1) = *(&v2792 + v124 - 3) - v52;
      *v122 = v125;
      ++v121;
      v122 += 2;
    }

    while (v50 != v121);
    if (v46 > 8)
    {
      v127 = v50 & 7;
      if ((v50 & 7) == 0)
      {
        v127 = 8;
      }

      v126 = v50 - v127;
      v128 = v2769;
      v129 = v2779;
      v130 = v126;
      do
      {
        v131 = v129 - 8;
        v132 = vld2q_f32(v131);
        v133 = vld2q_f32(v129);
        v128[-1] = vmulq_f32(v132, v132);
        *v128 = vmulq_f32(v133, v133);
        v128 += 2;
        v129 += 16;
        v130 -= 8;
      }

      while (v130);
    }

    else
    {
      v126 = 0;
    }

    v134 = &v2778[2 * v126 - 1];
    do
    {
      v135 = *v134;
      v134 += 2;
      *&v2768[4 * v126++ - 4] = v135 * v135;
    }

    while (v50 != v126);
    if (v46 > 8)
    {
      v137 = v50 & 7;
      if ((v50 & 7) == 0)
      {
        v137 = 8;
      }

      v136 = v50 - v137;
      v138 = v2776;
      v139 = v2780;
      v140 = v136;
      do
      {
        v141 = v139 - 8;
        v142 = vld2q_f32(v141);
        v143 = vld2q_f32(v139);
        v138[-1] = vmulq_f32(v142, v142);
        *v138 = vmulq_f32(v143, v143);
        v138 += 2;
        v139 += 16;
        v140 -= 8;
      }

      while (v140);
    }

    else
    {
      v136 = 0;
    }

    v144 = v50 - v136;
    v145 = &v2775[4 * v136 - 4];
    v146 = &v2778[2 * v136];
    do
    {
      v147 = *v146;
      v146 += 2;
      *v145++ = v147 * v147;
      --v144;
    }

    while (v144);
    if (v46 <= 7)
    {
      v148 = 0;
      goto LABEL_115;
    }

    v148 = v50 & 0x7FFFFFF8;
    v149 = v2769;
    v150 = v2776;
    v151 = v148;
    do
    {
      v152 = vaddq_f32(*v149, *v150);
      v149[-1] = vaddq_f32(v149[-1], v150[-1]);
      *v149 = v152;
      v149 += 2;
      v150 += 2;
      v151 -= 8;
    }

    while (v151);
    if (v148 != v50)
    {
LABEL_115:
      v153 = v50 - v148;
      v154 = 4 * v148;
      v155 = &v2768[4 * v148 - 4];
      v156 = &v2775[v154 - 4];
      do
      {
        v157 = *v156++;
        *v155 = *v155 + v157;
        ++v155;
        --v153;
      }

      while (v153);
    }

    if (v46 <= 7)
    {
      v158 = 0;
      goto LABEL_122;
    }

    v158 = v50 & 0x7FFFFFF8;
    v159 = v2769;
    v160 = v158;
    do
    {
      v161 = vsqrtq_f32(*v159);
      v159[-1] = vsqrtq_f32(v159[-1]);
      *v159 = v161;
      v159 += 2;
      v160 -= 8;
    }

    while (v160);
    if (v158 != v50)
    {
LABEL_122:
      v162 = v50 - v158;
      v163 = &v2768[4 * v158 - 4];
      do
      {
        *v163 = sqrtf(*v163);
        ++v163;
        --v162;
      }

      while (v162);
    }

    v54 = v2767;
    if ((v49 & 1) == 0)
    {
      if (v46 >= 9)
      {
        v165 = (v50 - 1) & 0xFFFFFFFFFFFFFFF8;
        v166 = 0uLL;
        v167 = LODWORD(v2767);
        v168 = v2770;
        v169 = v165;
        do
        {
          v167 = vaddq_f32(v168[-1], v167);
          v166 = vaddq_f32(*v168, v166);
          v168 += 2;
          v169 -= 8;
        }

        while (v169);
        v170 = vaddq_f32(v166, v167);
        v54 = vaddv_f32(*&vpaddq_f32(v170, v170));
        if (v50 - 1 != v165)
        {
          v164 = v165 | 2;
          goto LABEL_131;
        }
      }

      else
      {
        v164 = 2;
LABEL_131:
        v171 = v46 + 1 - v164;
        v172 = &v2768[4 * v164 - 8];
        do
        {
          v173 = *v172++;
          v54 = v173 + v54;
          --v171;
        }

        while (v171);
      }
    }
  }

  *v18.i32 = (v9.f32[0] * 1.4142) / v54;
  *v20.i32 = -(*v18.i32 * v52);
  *v19.i32 = -(*v18.i32 * v53);
  if (v16 >= 1)
  {
    if (v16 < 4)
    {
      v51 = 0;
      goto LABEL_139;
    }

    v51 = v16 & 0x7FFFFFFC;
    v9 = vdupq_lane_s32(*v18.i8, 0);
    v10 = vdupq_lane_s32(v20, 0);
    v174 = vdupq_lane_s32(v19, 0);
    v175 = v2791;
    v176 = &v2792;
    v177 = v51;
    do
    {
      v2948 = vld3q_f32(v176);
      v176 += 12;
      v178 = vmulq_f32(v2948.val[1], 0);
      v2952.val[0] = vmlaq_f32(vmlaq_f32(v178, v9, v2948.val[0]), v10, v2948.val[2]);
      v179 = vmulq_f32(v2948.val[0], 0);
      v180 = vaddq_f32(v178, v179);
      v2952.val[1] = vmlaq_f32(vmlaq_f32(v179, v9, v2948.val[1]), v174, v2948.val[2]);
      v2952.val[2] = vaddq_f32(v180, v2948.val[2]);
      vst3q_f32(v175, v2952);
      v175 += 12;
      v177 -= 4;
    }

    while (v177);
    if (v51 != v16)
    {
LABEL_139:
      v181 = v16 - v51;
      v182 = 12 * v51;
      v183 = &v2791[12 * v51 + 8];
      v184 = &v2791[12 * v51 + 4];
      v185 = &v2791[12 * v51];
      v186 = (&v2792 + v182 + 8);
      v9.i32[1] = 0;
      do
      {
        v187 = *(v186 - 2);
        v188 = *(v186 - 1);
        v189 = *v186;
        v186 += 3;
        *v185 = ((v188 * 0.0) + (v187 * *v18.i32)) + (v189 * *v20.i32);
        v185 += 3;
        v190 = v187 * 0.0;
        *v184 = (v190 + (v188 * *v18.i32)) + (v189 * *v19.i32);
        v184 += 3;
        *v183 = ((v188 * 0.0) + v190) + v189;
        v183 += 3;
        --v181;
      }

      while (v181);
    }
  }

LABEL_141:
  v2606 = *v20.i32;
  v2607 = *v19.i32;
  v2608 = *v18.i32;
  v2748 = 3;
  v2749 = v13;
  v191 = v13 > 0;
  v192 = 0.0;
  if (v13 < 1)
  {
    goto LABEL_171;
  }

  memcpy(v2797, v15, 12 * v13);
  v194 = 0;
  v195 = v15 + 2;
  do
  {
    v196 = *v195;
    v195 += 3;
    *&v2768[v194 - 4] = fabsf(v196);
    v194 += 4;
  }

  while (4 * v13 != v194);
  if (v13 <= 3)
  {
    v197 = 0;
    goto LABEL_155;
  }

  if (v13 >= 0x20)
  {
    v197 = v13 & 0x7FFFFFE0;
    v198 = v2745;
    v199 = v2771;
    v9 = vdupq_n_s32(0x25800000u);
    v10.i64[0] = 0x101010101010101;
    v10.i64[1] = 0x101010101010101;
    v200 = v197;
    do
    {
      v193 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v199[-4], v9), vcgtq_f32(v199[-3], v9)), vuzp1q_s16(vcgtq_f32(v199[-2], v9), vcgtq_f32(v199[-1], v9))), v10);
      v201 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(*v199, v9), vcgtq_f32(v199[1], v9)), vuzp1q_s16(vcgtq_f32(v199[2], v9), vcgtq_f32(v199[3], v9))), v10);
      v198[-1] = v193;
      *v198 = v201;
      v198 += 2;
      v199 += 8;
      v200 -= 32;
    }

    while (v200);
    if (v197 != v13)
    {
      if ((v13 & 0x1C) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_152;
    }
  }

  else
  {
    v197 = 0;
LABEL_152:
    v202 = v197;
    v197 = v13 & 0x7FFFFFFC;
    v203 = v202 - v197;
    v204 = &v2744[v202 + 9];
    v9 = vdupq_n_s32(0x25800000u);
    v10.i32[1] = 65537;
    v205 = &v2768[4 * v202 - 4];
    do
    {
      v206 = *v205++;
      *v193.f32 = vuzp1_s8(vand_s8(vmovn_s32(vcgtq_f32(v206, v9)), 0x1000100010001), *v9.f32);
      *v204++ = v193.i32[0];
      v203 += 4;
    }

    while (v203);
    if (v197 != v13)
    {
LABEL_155:
      v207 = v13 - v197;
      v208 = &v2744[v197 + 9];
      v209 = &v2768[4 * v197 - 4];
      do
      {
        v210 = *v209++;
        *v208++ = v210 > 2.2204e-16;
        --v207;
      }

      while (v207);
    }
  }

  v211 = 0;
  v212 = 0;
  while (2)
  {
    if (!v2744[v211 + 9])
    {
      ++v211;
      goto LABEL_159;
    }

    __src[v212] = v211 + 1;
    v213 = (v212 + 1) < v13;
    if ((v212 + 1) < v13)
    {
      ++v211;
    }

    ++v212;
    if (v213)
    {
LABEL_159:
      if (v211 >= v13)
      {
        break;
      }

      continue;
    }

    break;
  }

  if (v13 != 1)
  {
    if (v212 < 1)
    {
      goto LABEL_170;
    }

    v216 = v212;
    memcpy(&__dst, __src, 4 * v212);
    if (v212 == 1)
    {
      v214 = 0;
      v215 = 1;
      do
      {
LABEL_175:
        v224 = 3 * *&v2751[4 * v214 - 4] - 3;
        *&v2797[v224 * 4] = v15[v224] / v15[v224 + 2];
        ++v214;
      }

      while (v216 != v214);
      if (v215)
      {
        v225 = 0;
        goto LABEL_181;
      }
    }

    else
    {
      v214 = v212 & 0x7FFFFFFE;
      p_dst = &__dst;
      v220 = v214;
      do
      {
        v221 = *p_dst++;
        v10.i32[1] = v221.i32[1];
        *v193.f32 = vmla_s32(0x200000002, v221, 0x300000003);
        v222 = v193.i32[0];
        v223 = v193.i32[1];
        v193.f32[0] = v15[v223] / v15[v223 + 2];
        *&v2797[v222 * 4] = v15[v222] / v15[v222 + 2];
        *&v2797[v223 * 4] = v193.i32[0];
        v220 -= 2;
      }

      while (v220);
      v215 = 0;
      if (v214 != v212)
      {
        goto LABEL_175;
      }
    }

    v225 = v216 & 0x7FFFFFFE;
    v226 = v2775;
    v227 = v2751;
    v228 = v225;
    do
    {
      v229 = *&v2797[12 * *v227 - 8] / *&v2797[12 * *v227 - 4];
      *(v226 - 1) = *&v2797[12 * *(v227 - 1) - 8] / *&v2797[12 * *(v227 - 1) - 4];
      *v226 = v229;
      v226 += 2;
      v227 += 2;
      v228 -= 2;
    }

    while (v228);
    if (v225 == v216)
    {
LABEL_182:
      if (v215)
      {
        v230 = 0;
      }

      else
      {
        v230 = v216 & 0x7FFFFFFE;
        v231 = v2751;
        v232 = v2775;
        v233 = v230;
        do
        {
          v234 = *v232;
          v235 = 3 * *v231;
          *&v2797[12 * *(v231 - 1) - 8] = *(v232 - 1);
          *&v2797[4 * v235 - 8] = v234;
          v231 += 2;
          v232 += 2;
          v233 -= 2;
        }

        while (v233);
        if (v230 == v216)
        {
LABEL_189:
          if (v212 <= 3)
          {
            v243 = 0;
            goto LABEL_200;
          }

          if (v212 >= 0x20)
          {
            v243 = v216 & 0x7FFFFFE0;
            v244 = v2747;
            v245 = v2752;
            v9.i64[1] = 0x3C3834302C282420;
            v246 = v243;
            do
            {
              v10 = vqtbl4q_s8(v245[-1], xmmword_2247A4600);
              v193 = vqtbl4q_s8(*v245, xmmword_2247A4600);
              v244[-1] = v10;
              *v244 = v193;
              v244 += 2;
              v245 += 2;
              v246 -= 32;
            }

            while (v246);
            if (v243 == v216)
            {
              goto LABEL_202;
            }

            if ((v216 & 0x1C) == 0)
            {
LABEL_200:
              v252 = v216 - v243;
              v253 = &v2745[v243 + 96];
              v254 = &v2751[4 * v243 - 4];
              do
              {
                v255 = *v254++;
                *v253++ = v255;
                --v252;
              }

              while (v252);
              goto LABEL_202;
            }
          }

          else
          {
            v243 = 0;
          }

          v247 = v243;
          v243 = v216 & 0x7FFFFFFC;
          v248 = v247 - v243;
          v249 = &v2745[v247 + 96];
          v250 = &v2751[4 * v247 - 4];
          do
          {
            v251 = *v250++;
            v9.i64[1] = v251.i64[1];
            *v9.f32 = vmovn_s32(v251);
            *v249++ = vuzp1_s8(*v9.f32, *v9.f32).u32[0];
            v248 += 4;
          }

          while (v248);
          if (v243 != v216)
          {
            goto LABEL_200;
          }

LABEL_202:
          if (v215)
          {
            v256 = 0;
          }

          else
          {
            v256 = v216 & 0x7FFFFFFE;
            v257 = v2746;
            v258 = v256;
            do
            {
              v259 = &v2797[12 * *v257];
              *&v2797[12 * *(v257 - 1) - 4] = 1065353216;
              *(v259 - 1) = 1065353216;
              v257 += 2;
              v258 -= 2;
            }

            while (v258);
            if (v256 == v216)
            {
LABEL_209:
              for (i = 0; i != v216; ++i)
              {
                v9.i64[0] = *&v2797[12 * *&v2751[4 * i - 4] - 12];
                *&v2778[2 * i - 1] = v9.i64[0];
              }

              v9.f32[0] = v2777;
              v10.f32[0] = v2778[0];
              if (v215)
              {
                goto LABEL_223;
              }

              if (v212 >= 0x15)
              {
                v265 = v216 - 2;
                v264 = 2;
                if (((v216 - 2) & 0x7FFFFFFFu) <= 0x3FFFFFFE && (2 * v265) <= 0x7FFFFFFD && !(v265 >> 31))
                {
                  v266 = 0;
                  v267 = (v216 - 1) & 0xFFFFFFFFFFFFFFF8;
                  v193 = 0uLL;
                  v268 = LODWORD(v2778[0]);
                  v269 = LODWORD(v2777);
                  v270 = v267;
                  v271 = 0uLL;
                  do
                  {
                    v272 = (&v2778[-1] + (v266 >> 30));
                    v273 = v272 + 2;
                    v2940 = vld2q_f32(v273);
                    v272 += 10;
                    v2942 = vld2q_f32(v272);
                    v269 = vaddq_f32(v2940.val[0], v269);
                    v271 = vaddq_f32(v2942.val[0], v271);
                    v268 = vaddq_f32(v2940.val[1], v268);
                    v193 = vaddq_f32(v2942.val[1], v193);
                    v266 += 0x1000000000;
                    v270 -= 8;
                  }

                  while (v270);
                  v10 = vaddq_f32(v193, v268);
                  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
                  v10.f32[0] = vaddv_f32(*v10.f32);
                  v274 = vaddq_f32(v271, v269);
                  v9 = vpaddq_f32(v274, v274);
                  v9.f32[0] = vaddv_f32(*v9.f32);
                  if (v216 - 1 == v267)
                  {
                    goto LABEL_223;
                  }

                  v264 = v267 | 2;
                }
              }

              else
              {
                v264 = 2;
              }

              v275 = v212 + 1 - v264;
              v276 = 2 * v264 - 1;
              v277 = (v264 << 33) - 0x200000000;
              do
              {
                v9.f32[0] = *(&v2778[-1] + (v277 >> 30)) + v9.f32[0];
                v10.f32[0] = v2778[v276 - 1] + v10.f32[0];
                v276 += 2;
                v277 += 0x200000000;
                --v275;
              }

              while (v275);
LABEL_223:
              v278 = 0;
              v192 = v212;
              v217 = v9.f32[0] / v212;
              v279 = v2778;
              v218 = v10.f32[0] / v212;
              do
              {
                v280 = v278;
                if (v212 == 1)
                {
                  v280 = 0;
                }

                v281 = 3 * *&v2751[4 * v280 - 4];
                v282 = *&v2797[4 * v281 - 8] - v218;
                *(v279 - 1) = *&v2797[4 * v281 - 12] - v217;
                *v279 = v282;
                ++v278;
                v279 += 2;
              }

              while (v216 != v278);
              if (v212 > 8)
              {
                v284 = v216 & 7;
                if ((v216 & 7) == 0)
                {
                  v284 = 8;
                }

                v283 = v216 - v284;
                v285 = v2769;
                v286 = v2779;
                v287 = v283;
                do
                {
                  v288 = v286 - 8;
                  v289 = vld2q_f32(v288);
                  v290 = vld2q_f32(v286);
                  v193 = vmulq_f32(v289, v289);
                  v285[-1] = v193;
                  *v285 = vmulq_f32(v290, v290);
                  v285 += 2;
                  v286 += 16;
                  v287 -= 8;
                }

                while (v287);
              }

              else
              {
                v283 = 0;
              }

              v291 = &v2778[2 * v283 - 1];
              do
              {
                v292 = *v291;
                v291 += 2;
                *&v2768[4 * v283++ - 4] = v292 * v292;
              }

              while (v216 != v283);
              if (v212 > 8)
              {
                v294 = v216 & 7;
                if ((v216 & 7) == 0)
                {
                  v294 = 8;
                }

                v293 = v216 - v294;
                v295 = v2776;
                v296 = v2780;
                v297 = v293;
                do
                {
                  v298 = v296 - 8;
                  v299 = vld2q_f32(v298);
                  v300 = vld2q_f32(v296);
                  v193 = vmulq_f32(v299, v299);
                  v295[-1] = v193;
                  *v295 = vmulq_f32(v300, v300);
                  v295 += 2;
                  v296 += 16;
                  v297 -= 8;
                }

                while (v297);
              }

              else
              {
                v293 = 0;
              }

              v301 = v216 - v293;
              v302 = &v2775[4 * v293 - 4];
              v303 = &v2778[2 * v293];
              do
              {
                v304 = *v303;
                v303 += 2;
                *v302++ = v304 * v304;
                --v301;
              }

              while (v301);
              if (v212 > 7)
              {
                v305 = v216 & 0x7FFFFFF8;
                v306 = v2769;
                v307 = v2776;
                v308 = v305;
                do
                {
                  v193 = vaddq_f32(v306[-1], v307[-1]);
                  v309 = vaddq_f32(*v306, *v307);
                  v306[-1] = v193;
                  *v306 = v309;
                  v306 += 2;
                  v307 += 2;
                  v308 -= 8;
                }

                while (v308);
                if (v305 == v216)
                {
LABEL_250:
                  if (v212 > 7)
                  {
                    v315 = v216 & 0x7FFFFFF8;
                    v316 = v2769;
                    v317 = v315;
                    do
                    {
                      v193 = vsqrtq_f32(v316[-1]);
                      v318 = vsqrtq_f32(*v316);
                      v316[-1] = v193;
                      *v316 = v318;
                      v316 += 2;
                      v317 -= 8;
                    }

                    while (v317);
                    if (v315 == v216)
                    {
LABEL_257:
                      v193.f32[0] = v2767;
                      if ((v215 & 1) == 0)
                      {
                        if (v212 >= 9)
                        {
                          v322 = (v216 - 1) & 0xFFFFFFFFFFFFFFF8;
                          v323 = 0uLL;
                          v324 = LODWORD(v2767);
                          v325 = v2770;
                          v326 = v322;
                          do
                          {
                            v324 = vaddq_f32(v325[-1], v324);
                            v323 = vaddq_f32(*v325, v323);
                            v325 += 2;
                            v326 -= 8;
                          }

                          while (v326);
                          v193 = vaddq_f32(v323, v324);
                          v193.i64[0] = vpaddq_f32(v193, v193).u64[0];
                          v193.f32[0] = vaddv_f32(*v193.f32);
                          if (v216 - 1 == v322)
                          {
                            goto LABEL_266;
                          }

                          v321 = v322 | 2;
                        }

                        else
                        {
                          v321 = 2;
                        }

                        v327 = v212 + 1 - v321;
                        v328 = &v2768[4 * v321 - 8];
                        do
                        {
                          v329 = *v328++;
                          v193.f32[0] = v329 + v193.f32[0];
                          --v327;
                        }

                        while (v327);
                      }

LABEL_266:
                      v191 = 1;
                      goto LABEL_267;
                    }
                  }

                  else
                  {
                    v315 = 0;
                  }

                  v319 = v216 - v315;
                  v320 = &v2768[4 * v315 - 4];
                  do
                  {
                    *v320 = sqrtf(*v320);
                    ++v320;
                    --v319;
                  }

                  while (v319);
                  goto LABEL_257;
                }
              }

              else
              {
                v305 = 0;
              }

              v310 = v216 - v305;
              v311 = 4 * v305;
              v312 = &v2768[4 * v305 - 4];
              v313 = &v2775[v311 - 4];
              do
              {
                v314 = *v313++;
                *v312 = *v312 + v314;
                ++v312;
                --v310;
              }

              while (v310);
              goto LABEL_250;
            }
          }

          v260 = v216 - v256;
          v261 = &v2745[v256 + 96];
          do
          {
            v262 = *v261++;
            *&v2797[12 * v262 - 4] = 1065353216;
            --v260;
          }

          while (v260);
          goto LABEL_209;
        }
      }

      v236 = v216 - v230;
      v237 = 4 * v230;
      v238 = &v2751[4 * v230 - 4];
      v239 = &v2775[v237 - 4];
      do
      {
        v240 = *v239++;
        v241 = v240;
        v242 = *v238++;
        *&v2797[12 * v242 - 8] = v241;
        --v236;
      }

      while (v236);
      goto LABEL_189;
    }

    do
    {
LABEL_181:
      *&v2775[4 * v225 - 4] = *&v2797[12 * *&v2751[4 * v225 - 4] - 8] / *&v2797[12 * *&v2751[4 * v225 - 4] - 4];
      ++v225;
    }

    while (v216 != v225);
    goto LABEL_182;
  }

  if (v212)
  {
    v214 = 0;
    __dst = __src[0];
    v215 = 1;
    v216 = 1;
    v212 = 1;
    goto LABEL_175;
  }

LABEL_170:
  v191 = 1;
LABEL_171:
  v217 = NAN;
  v218 = NAN;
  v193.i64[0] = 0;
LABEL_267:
  v193.f32[0] = (v192 * 1.4142) / v193.f32[0];
  LODWORD(v2761) = v193.i32[0];
  v9.f32[0] = -(v193.f32[0] * v217);
  *&v2762 = v193.u32[0];
  v10.f32[0] = -(v193.f32[0] * v218);
  *(&v2762 + 1) = __PAIR64__(v10.u32[0], v9.u32[0]);
  HIDWORD(v2761) = 0;
  *(&v2761 + 4) = 0;
  v2763 = 1065353216;
  if (v191)
  {
    if (v13 < 4)
    {
      v330 = 0;
      goto LABEL_273;
    }

    v330 = v13 & 0x7FFFFFFC;
    v331 = vdupq_lane_s32(*v193.f32, 0);
    v332 = vdupq_lane_s32(*v9.f32, 0);
    v333 = vdupq_lane_s32(*v10.f32, 0);
    v334 = v2790;
    v335 = v2797;
    v336 = v330;
    do
    {
      v2953 = vld3q_f32(v335);
      v335 += 12;
      v337 = vmulq_f32(v2953.val[1], 0);
      v2957.val[0] = vmlaq_f32(vmlaq_f32(v337, v331, v2953.val[0]), v332, v2953.val[2]);
      v338 = vmulq_f32(v2953.val[0], 0);
      v339 = vaddq_f32(v337, v338);
      v2957.val[1] = vmlaq_f32(vmlaq_f32(v338, v331, v2953.val[1]), v333, v2953.val[2]);
      v2957.val[2] = vaddq_f32(v339, v2953.val[2]);
      vst3q_f32(v334, v2957);
      v334 += 12;
      v336 -= 4;
    }

    while (v336);
    if (v330 != v13)
    {
LABEL_273:
      v340 = v13 - v330;
      v341 = 12 * v330 + 8;
      v342 = &v2797[v341];
      v343 = &v2790[v341];
      do
      {
        v344 = *(v342 - 2);
        v345 = *(v342 - 1);
        v346 = *v342;
        v342 += 3;
        v347 = ((v345 * 0.0) + (v344 * v193.f32[0])) + (v346 * v9.f32[0]);
        v348 = v344 * 0.0;
        *(v343 - 2) = v347;
        *(v343 - 1) = (v348 + (v345 * v193.f32[0])) + (v346 * v10.f32[0]);
        *v343 = ((v345 * 0.0) + v348) + v346;
        v343 += 3;
        --v340;
      }

      while (v340);
    }
  }

  if (v16)
  {
    v349 = v16;
  }

  else
  {
    v349 = v13;
  }

  v9.f32[0] = (v193.f32[0] * 0.5) * (v193.f32[0] * 0.5);
  v2623 = v9;
  if (v16)
  {
    v350 = 1;
  }

  else
  {
    v350 = v349 == 0;
  }

  if (v350)
  {
    v351 = 3;
  }

  else
  {
    v351 = 0;
  }

  if (v13)
  {
    v352 = 1;
  }

  else
  {
    v352 = v349 == 0;
  }

  if (v352)
  {
    v353 = 3;
  }

  else
  {
    v353 = 0;
  }

  v354 = v351 + v353;
  v2717 = v349;
  v2720 = v351 + v353;
  if (v349 >= 1)
  {
    v355 = 0;
    v356 = 0;
    if (v351 <= 1)
    {
      v357 = 1;
    }

    else
    {
      v357 = v351;
    }

    v358 = (4 * v357);
    v359 = 4 * (v349 + 2 * v349);
    do
    {
      if (v350)
      {
        memcpy(&v2799[4 * v355], &v2791[v356 & 0x3FFFFFFFCLL], v358);
        v354 = v351 + v353;
        v349 = v2717;
      }

      v356 += 12;
      v355 += v354;
    }

    while (v359 != v356);
    v360 = 0;
    if (v353 <= 1)
    {
      v361 = 1;
    }

    else
    {
      v361 = v353;
    }

    v362 = (4 * v361);
    v363 = 12 * v349;
    do
    {
      if (v352)
      {
        memcpy(&v2799[4 * v351], &v2790[v360 & 0x3FFFFFFFCLL], v362);
        v354 = v2720;
      }

      v360 += 12;
      v351 += v354;
    }

    while (v363 != v360);
  }

  memcpy(&state, &uv, 0x9C4uLL);
  v2622 = 0;
  v2619 = 0;
  v2638 = 0;
  v2663 = 0;
  v2756[0] = rtNaNF;
  v372 = v2717;
  *v373.i64 = v2717;
  v374 = v2720;
  v2715 = 4 * (v2720 - 1);
  v375 = v2720 + 2 * v2720;
  v2680 = &v2901 + v375;
  v2678 = v375 + 3;
  v2676 = v375 + 4;
  v2632 = v375 + 5;
  v376 = v2717 & 3;
  if ((v2717 & 3) == 0)
  {
    v376 = 4;
  }

  v2639 = v2717 - v376;
  v377 = v2717 & 7;
  if ((v2717 & 7) == 0)
  {
    v377 = 8;
  }

  v2631 = v2717 - v377;
  v2616 = vdupq_lane_s32(*v2623.f32, 0);
  v2665 = vdup_n_s32(v2720);
  v2682 = v373;
  v2618 = 1.0 / *v373.i64;
  v378.i64[0] = 0x100000001;
  v378.i64[1] = 0x100000001;
  v2674 = vnegq_f32(v378);
  v2672 = vdupq_n_s32(0x9908B0DF);
  v379 = vneg_f32(0x100000001);
  v380 = 0;
  v381 = 1.0;
  v2637 = 1.0;
  v2633 = 4 * v2720;
  v2686 = (&v2901 + v2633);
  v2669 = (&v2901 + v2633 + 12);
  v2684 = &v2901 + 2 * v2720;
  v2667 = v2684 + 3;
  v2666 = &v2901 + 12 * v2720;
  v2634 = v2717 & 0xFFFFFFE0;
  v2626 = v2717 & 0xFFFFFFFC;
  v382 = 629145600;
  v2620 = 1;
  v2621 = 1;
  while (2)
  {
    v2641 = v380;
    v383 = 1;
    while (1)
    {
      v2723 = v383;
      v389 = 0;
      v390 = dword_27D385F00;
      v391.i64[0] = 0x8000000080000000;
      v391.i64[1] = 0x8000000080000000;
      v392.i64[0] = 0x100000001;
      v392.i64[1] = 0x100000001;
      while (1)
      {
        v397 = v390 + 1;
        v398 = vdup_n_s32(0x9908B0DF);
        if ((v390 + 1) <= 0x270)
        {
          v413 = *(&state + v390);
        }

        else
        {
          v399 = vld1q_dup_f32(&state);
          v400 = &state;
          v401 = 224;
          do
          {
            v402 = *(v400 + 4);
            v403 = vextq_s8(v399, v402, 0xCuLL);
            v399 = *(v400 + 20);
            v404 = vshrq_n_u32(vorrq_s8(vandq_s8(v402, v2674), vandq_s8(v403, v391)), 1uLL);
            v405 = vshrq_n_u32(vorrq_s8(vandq_s8(v399, v2674), vandq_s8(vextq_s8(v402, v399, 0xCuLL), v391)), 1uLL);
            v366 = veorq_s8(v405, v2672);
            v365 = *(v400 + 1604);
            *v400 = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v402, v392)), v404, veorq_s8(v404, v2672)), *(v400 + 1588));
            v400[1] = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v399, v392)), v405, v366), v365);
            v400 += 2;
            v401 -= 8;
          }

          while (v401);
          v406 = vshr_n_u32(vorr_s8(vand_s8(*(&qword_27D3858C0 + 4), v379), vand_s8(vzip1_s32(vdup_laneq_s32(v399, 3), *(&qword_27D3858C0 + 4)), 0x8000000080000000)), 1uLL);
          v407 = &xmmword_27D3858CC;
          qword_27D3858C0 = veor_s8(vbsl_s8(vceqz_s32(vand_s8(*(&qword_27D3858C0 + 4), 0x100000001)), v406, veor_s8(v406, v398)), qword_27D385EF4);
          v408 = (dword_27D3858C8 & 0x80000000 | xmmword_27D3858CC & 0x7FFFFFFF) >> 1;
          if (xmmword_27D3858CC)
          {
            v408 ^= 0x9908B0DF;
          }

          dword_27D3858C8 = v408 ^ dword_27D385EFC;
          v409 = vdupq_n_s32(xmmword_27D3858CC);
          v410 = 396;
          do
          {
            v411 = *(v407 + 4);
            v412 = vshrq_n_u32(vorrq_s8(vandq_s8(v411, v2674), vandq_s8(vextq_s8(v409, v411, 0xCuLL), v391)), 1uLL);
            v364 = veorq_s8(v412, v2672);
            *v407 = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v411, v392)), v412, v364), *(v407 - 908));
            ++v407;
            v409 = v411;
            v410 -= 4;
          }

          while (v410);
          v413 = state;
          v414 = (dword_27D385EFC & 0x80000000 | state & 0x7FFFFFFF) >> 1;
          if (state)
          {
            v414 ^= 0x9908B0DF;
          }

          dword_27D385EFC = v414 ^ dword_27D385B70;
          v397 = 1;
        }

        dword_27D385F00 = v397;
        if (v397 <= 0x26F)
        {
          v390 = v397 + 1;
          v393 = *(&state + v397);
        }

        else
        {
          v415 = vld1q_dup_f32(&state);
          v416 = &state;
          v417 = 224;
          do
          {
            v418 = *(v416 + 4);
            v419 = vextq_s8(v415, v418, 0xCuLL);
            v415 = *(v416 + 20);
            v420 = vshrq_n_u32(vorrq_s8(vandq_s8(v418, v2674), vandq_s8(v419, v391)), 1uLL);
            v421 = vshrq_n_u32(vorrq_s8(vandq_s8(v415, v2674), vandq_s8(vextq_s8(v418, v415, 0xCuLL), v391)), 1uLL);
            v366 = veorq_s8(v421, v2672);
            v422 = vbslq_s8(vceqzq_s32(vandq_s8(v418, v392)), v420, veorq_s8(v420, v2672));
            v423 = vbslq_s8(vceqzq_s32(vandq_s8(v415, v392)), v421, v366);
            v364 = *(v416 + 1588);
            v365 = *(v416 + 1604);
            *v416 = veorq_s8(v422, v364);
            v416[1] = veorq_s8(v423, v365);
            v416 += 2;
            v417 -= 8;
          }

          while (v417);
          v424 = vshr_n_u32(vorr_s8(vand_s8(*(&qword_27D3858C0 + 4), v379), vand_s8(vzip1_s32(vdup_laneq_s32(v415, 3), *(&qword_27D3858C0 + 4)), 0x8000000080000000)), 1uLL);
          v425 = &xmmword_27D3858CC;
          qword_27D3858C0 = veor_s8(vbsl_s8(vceqz_s32(vand_s8(*(&qword_27D3858C0 + 4), 0x100000001)), v424, veor_s8(v424, v398)), qword_27D385EF4);
          v426 = (dword_27D3858C8 & 0x80000000 | xmmword_27D3858CC & 0x7FFFFFFF) >> 1;
          if (xmmword_27D3858CC)
          {
            v426 ^= 0x9908B0DF;
          }

          dword_27D3858C8 = v426 ^ dword_27D385EFC;
          v427 = vdupq_n_s32(xmmword_27D3858CC);
          v428 = 396;
          do
          {
            v429 = *(v425 + 4);
            v430 = vshrq_n_u32(vorrq_s8(vandq_s8(v429, v2674), vandq_s8(vextq_s8(v427, v429, 0xCuLL), v391)), 1uLL);
            *v425 = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v429, v392)), v430, veorq_s8(v430, v2672)), *(v425 - 908));
            ++v425;
            v427 = v429;
            v428 -= 4;
          }

          while (v428);
          v393 = state;
          v431 = (dword_27D385EFC & 0x80000000 | state & 0x7FFFFFFF) >> 1;
          if (state)
          {
            v431 ^= 0x9908B0DF;
          }

          dword_27D385EFC = v431 ^ dword_27D385B70;
          v390 = 1;
        }

        v394 = ((v413 ^ (v413 >> 11)) << 7) & 0x9D2C5680 ^ v413 ^ (v413 >> 11);
        v395 = ((v393 ^ (v393 >> 11)) << 7) & 0x9D2C5680 ^ v393 ^ (v393 >> 11);
        dword_27D385F00 = v390;
        v396 = (((((v395 << 15) & 0xEFC60000 ^ v395) >> 24) ^ (((v395 << 15) & 0xEFC60000 ^ v395) >> 6)) + ((((v394 << 15) & 0xEFC60000 ^ v394) >> 23) ^ (((v394 << 15) & 0xEFC60000 ^ v394) >> 5)) * 67108864.0) * 1.11022302e-16;
        if (v396 != 0.0)
        {
          v2930.f64[v389++] = v396;
          if (v389 == 4)
          {
            break;
          }
        }
      }

      v432 = v2682;
      __asm { FMOV            V1.2D, #1.0 }

      v435 = vaddq_f64(vrndmq_f64(vmulq_n_f64(v2930, *v2682.i64)), _Q1);
      v2930 = v435;
      v436 = vaddq_f64(vrndmq_f64(vmulq_n_f64(v2931, *v2682.i64)), _Q1);
      v2731 = v436;
      v2931 = v436;
      if (v374)
      {
        v2708 = v435;
        memcpy(&v2901, &v2799[4 * (*v435.i64 - 1) * v374], v2715 + 4);
        v435 = v2708;
        v382 = 629145600;
        v381 = 1.0;
        v374 = v2720;
        v372 = v2717;
        LODWORD(v6) = v2901;
      }

      v2837 = *&v6;
      v2692 = *(&v2901 + 3);
      *v2835 = HIDWORD(v2901);
      v437 = *(&v2901 + 1);
      v2838 = *(&v2901 + 4);
      v438 = *&v2902;
      *&v2835[4] = v2902;
      v439 = *(&v2901 + 2);
      v440 = *(&v2902 + 1);
      if (v374)
      {
        v2697 = vshll_n_s32(vmul_s32(vadd_s32(vmovn_s64(vcvtq_s64_f64(vextq_s8(v435, v2731, 8uLL))), -1), v2665), 2uLL);
        memcpy(v2686, &v2799[v2697.i64[0]], v2715 + 4);
        v441.i64[0] = *v2686;
        v441.i32[2] = v2686[2];
        v2709 = v441;
        v441.i64[0] = *v2669;
        v441.i32[2] = *(&v2902 + v2720 + 1);
        v2702 = v441;
        memcpy(v2684, &v2799[v2697.i64[1]], v2715 + 4);
        *&v442 = *v2684;
        DWORD2(v442) = v2684[2];
        *v2698 = v442;
        LODWORD(v442) = v2684[5];
        *&v2835[24] = *v2667;
        v443.i64[0] = *&v2835[24];
        v443.i32[2] = v442;
        v2688 = v443;
        LODWORD(v2836) = v442;
        memcpy(v2666, &v2799[4 * (*&v2731.i64[1] - 1) * v2720], v2715 + 4);
        v369 = *v2698;
        v371 = v2709;
        v370 = v2702;
        v382 = 629145600;
        v381 = 1.0;
        v374 = v2720;
        v372 = v2717;
      }

      else
      {
        v371.i64[0] = *v2686;
        v371.i32[2] = v2686[2];
        v370.i64[0] = *v2669;
        v370.i32[2] = *(&v2902 + v2720 + 1);
        v369.i64[0] = *v2684;
        v369.i32[2] = v2684[2];
        v436.f64[0] = *v2667;
        LODWORD(v436.f64[1]) = v2684[5];
        v2688 = v436;
      }

      v2840 = v371.f32[2];
      v2839 = v371.i64[0];
      v432.i32[0] = v371.i32[2];
      *&v2835[20] = v370.i32[2];
      *&v2835[12] = v370.i64[0];
      v2842 = v369.f32[2];
      v2841 = v369.i64[0];
      _Q1.i32[0] = *(&v2901 + v2678);
      v444 = *(&v2901 + v2676);
      v445 = *v2680;
      v446 = v2680[2];
      v2844 = v446;
      v2843 = v445;
      v447 = v371.f32[0] - *&v6;
      v448 = v369.f32[0] - *&v6;
      v449 = v371.f32[1] - v437;
      v450 = v369.f32[1] - v437;
      v451 = v371.f32[2] - v439;
      v452 = v369.f32[2] - v439;
      v453 = fabsf(-(((v371.f32[2] - v439) * (v369.f32[1] - v437)) - ((v369.f32[2] - v439) * (v371.f32[1] - v437))));
      v454 = fmaxf(v453, 1.2925e-26);
      if (v453 <= 1.2925e-26)
      {
        v455 = (v453 * 7.7371e25) * (v453 * 7.7371e25);
      }

      else
      {
        v455 = v381;
      }

      v456 = fabsf(-(((v369.f32[2] - v439) * (v371.f32[0] - *&v6)) - ((v371.f32[2] - v439) * (v369.f32[0] - *&v6))));
      v457 = v455 + ((v456 / v454) * (v456 / v454));
      v458 = v381 + (((v454 / v456) * (v454 / v456)) * v455);
      if (v456 <= v454)
      {
        v456 = v454;
        v458 = v457;
      }

      v459 = fabsf(-(((v371.f32[1] - v437) * (v369.f32[0] - *&v6)) - ((v369.f32[1] - v437) * (v371.f32[0] - *&v6))));
      v460 = v458 + ((v459 / v456) * (v459 / v456));
      v461 = v381 + (((v456 / v459) * (v456 / v459)) * v458);
      if (v459 <= v456)
      {
        v461 = v460;
      }

      else
      {
        v456 = v459;
      }

      v388 = v2723;
      if ((sqrtf(v461) * v456) >= 2.2204e-16)
      {
        v392.i64[0] = v445;
        v462 = *&v445 - *&v6;
        v463 = *(&v445 + 1) - v437;
        v464 = v446 - v439;
        v465 = -((v451 * (*(&v445 + 1) - v437)) - ((v446 - v439) * v449));
        v466 = -(((v446 - v439) * v447) - (v451 * (*&v445 - *&v6)));
        v467 = -((v449 * (*&v445 - *&v6)) - ((*(&v445 + 1) - v437) * v447));
        v468 = fabsf(v465);
        v469 = fmaxf(v468, 1.2925e-26);
        if (v468 <= 1.2925e-26)
        {
          v470 = (v468 * 7.7371e25) * (v468 * 7.7371e25);
        }

        else
        {
          v470 = v381;
        }

        v471 = fabsf(v466);
        v472 = v470 + ((v471 / v469) * (v471 / v469));
        v473 = v381 + (((v469 / v471) * (v469 / v471)) * v470);
        if (v471 <= v469)
        {
          v471 = v469;
          v473 = v472;
        }

        v474 = fabsf(v467);
        v475 = v473 + ((v474 / v471) * (v474 / v471));
        v476 = v381 + (((v471 / v474) * (v471 / v474)) * v473);
        if (v474 <= v471)
        {
          v474 = v471;
          v476 = v475;
        }

        if ((sqrtf(v476) * v474) >= 2.2204e-16)
        {
          v477 = -((v452 * v463) - (v464 * v450));
          v478 = -((v464 * v448) - (v452 * v462));
          v479 = -((v450 * v462) - (v463 * v448));
          v480 = fabsf(v477);
          v481 = fmaxf(v480, 1.2925e-26);
          if (v480 <= 1.2925e-26)
          {
            v482 = (v480 * 7.7371e25) * (v480 * 7.7371e25);
          }

          else
          {
            v482 = v381;
          }

          v483 = fabsf(v478);
          v484 = v482 + ((v483 / v481) * (v483 / v481));
          v485 = v381 + (((v481 / v483) * (v481 / v483)) * v482);
          if (v483 <= v481)
          {
            v483 = v481;
            v485 = v484;
          }

          v486 = fabsf(v479);
          v487 = v485 + ((v486 / v483) * (v486 / v483));
          v488 = v381 + (((v483 / v486) * (v483 / v486)) * v485);
          if (v486 <= v483)
          {
            v486 = v483;
            v488 = v487;
          }

          if ((sqrtf(v488) * v486) >= 2.2204e-16)
          {
            v366 = vsubq_f32(v369, v371);
            v391 = vsubq_f32(v392, v371);
            v489 = -(((v446 - v371.f32[2]) * v366.f32[0]) - ((v369.f32[2] - v371.f32[2]) * v391.f32[0]));
            v490 = fabsf(-(((v369.f32[2] - v371.f32[2]) * (*(&v445 + 1) - v371.f32[1])) - ((v446 - v371.f32[2]) * (v369.f32[1] - v371.f32[1]))));
            v491 = fmaxf(v490, 1.2925e-26);
            v492 = v490 <= 1.2925e-26 ? (v490 * 7.7371e25) * (v490 * 7.7371e25) : v381;
            v493 = fabsf(v489);
            if (v493 <= v491)
            {
              v494 = v492 + ((v493 / v491) * (v493 / v491));
              v493 = v491;
            }

            else
            {
              v494 = v381 + (((v491 / v493) * (v491 / v493)) * v492);
            }

            v495 = fabsf(-(((v369.f32[1] - v371.f32[1]) * v391.f32[0]) - ((*(&v445 + 1) - v371.f32[1]) * v366.f32[0])));
            if (v495 <= v493)
            {
              v496 = v494 + ((v495 / v493) * (v495 / v493));
              v495 = v493;
            }

            else
            {
              v496 = v381 + (((v493 / v495) * (v493 / v495)) * v494);
            }

            v432.f32[0] = sqrtf(v496) * v495;
            v388 = v2723;
            if (v432.f32[0] >= 2.2204e-16)
            {
              v497 = v370.f32[0] - v2692;
              v365.i32[1] = v2688.i32[1];
              v498 = v2688.f32[0] - v2692;
              v432.i32[0] = v370.i32[1];
              v499 = v370.f32[1] - v438;
              v500 = v2688.f32[1] - v438;
              v501 = v370.f32[2] - v440;
              v502 = v2688.f32[2] - v440;
              v503 = fabsf(-(((v370.f32[2] - v440) * (v2688.f32[1] - v438)) - ((v2688.f32[2] - v440) * (v370.f32[1] - v438))));
              v504 = (v503 * 7.7371e25) * (v503 * 7.7371e25);
              v505 = fmaxf(v503, 1.2925e-26);
              if (v503 > 1.2925e-26)
              {
                v504 = v381;
              }

              v506 = fabsf(-(((v2688.f32[2] - v440) * (v370.f32[0] - v2692)) - ((v370.f32[2] - v440) * (v2688.f32[0] - v2692))));
              if (v506 <= v505)
              {
                v507 = v504 + ((v506 / v505) * (v506 / v505));
                v506 = v505;
              }

              else
              {
                v507 = v381 + (((v505 / v506) * (v505 / v506)) * v504);
              }

              v508 = fabsf(-((v499 * v498) - (v500 * v497)));
              if (v508 <= v506)
              {
                v509 = v507 + ((v508 / v506) * (v508 / v506));
                v508 = v506;
              }

              else
              {
                v509 = v381 + (((v506 / v508) * (v506 / v508)) * v507);
              }

              v388 = v2723;
              if ((sqrtf(v509) * v508) >= 2.2204e-16)
              {
                v510 = *(&v2901 + v2632);
                v511 = _Q1.f32[0] - v2692;
                v512 = v444 - v438;
                v513 = v510 - v440;
                v514 = -((v501 * (v444 - v438)) - ((v510 - v440) * v499));
                v515 = -(((v510 - v440) * v497) - (v501 * (_Q1.f32[0] - v2692)));
                v516 = fabsf(v514);
                v517 = fmaxf(v516, 1.2925e-26);
                v518 = v516 <= 1.2925e-26 ? (v516 * 7.7371e25) * (v516 * 7.7371e25) : v381;
                v519 = fabsf(v515);
                if (v519 <= v517)
                {
                  v520 = v518 + ((v519 / v517) * (v519 / v517));
                  v519 = v517;
                }

                else
                {
                  v520 = v381 + (((v517 / v519) * (v517 / v519)) * v518);
                }

                v521 = fabsf(-((v499 * v511) - (v512 * v497)));
                if (v521 <= v519)
                {
                  v522 = v520 + ((v521 / v519) * (v521 / v519));
                  v521 = v519;
                }

                else
                {
                  v522 = v381 + (((v519 / v521) * (v519 / v521)) * v520);
                }

                v388 = v2723;
                if ((sqrtf(v522) * v521) >= 2.2204e-16)
                {
                  v523 = -((v502 * v512) - (v513 * v500));
                  v524 = -((v513 * v498) - (v502 * v511));
                  v525 = fabsf(v523);
                  v526 = fmaxf(v525, 1.2925e-26);
                  v527 = v525 <= 1.2925e-26 ? (v525 * 7.7371e25) * (v525 * 7.7371e25) : v381;
                  v528 = fabsf(v524);
                  if (v528 <= v526)
                  {
                    v529 = v527 + ((v528 / v526) * (v528 / v526));
                    v528 = v526;
                  }

                  else
                  {
                    v529 = v381 + (((v526 / v528) * (v526 / v528)) * v527);
                  }

                  v530 = fabsf(-((v500 * v511) - (v512 * v498)));
                  if (v530 <= v528)
                  {
                    v531 = v529 + ((v530 / v528) * (v530 / v528));
                    v530 = v528;
                  }

                  else
                  {
                    v531 = v381 + (((v528 / v530) * (v528 / v530)) * v529);
                  }

                  v388 = v2723;
                  if ((sqrtf(v531) * v530) >= 2.2204e-16)
                  {
                    v532 = vsubq_f32(v2688, v370).f32[0];
                    v533 = _Q1.f32[0] - v370.f32[0];
                    v534 = v444 - v370.f32[1];
                    v535 = fabsf(-(((v2688.f32[2] - v370.f32[2]) * v534) - ((v510 - v370.f32[2]) * (v2688.f32[1] - v370.f32[1]))));
                    v536 = fmaxf(v535, 1.2925e-26);
                    v537 = v535 <= 1.2925e-26 ? (v535 * 7.7371e25) * (v535 * 7.7371e25) : v381;
                    v432.f32[0] = fabsf(-(((v510 - v370.f32[2]) * v532) - ((v2688.f32[2] - v370.f32[2]) * v533)));
                    if (v432.f32[0] <= v536)
                    {
                      v538 = v537 + ((v432.f32[0] / v536) * (v432.f32[0] / v536));
                      v432.f32[0] = v536;
                    }

                    else
                    {
                      v538 = v381 + (((v536 / v432.f32[0]) * (v536 / v432.f32[0])) * v537);
                    }

                    v385 = fabsf(-(((v2688.f32[1] - v370.f32[1]) * v533) - (v534 * v532)));
                    if (v385 <= v432.f32[0])
                    {
                      v384 = v538 + ((v385 / v432.f32[0]) * (v385 / v432.f32[0]));
                      v385 = v432.f32[0];
                    }

                    else
                    {
                      v384 = v381 + (((v432.f32[0] / v385) * (v432.f32[0] / v385)) * v538);
                    }

                    v386 = sqrtf(v384) * v385;
                    _Q1.i32[0] = 629145600;
                    v388 = v2723;
                    if (v386 >= 2.2204e-16)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v383 = v388 + 1;
      v6 = 1.0;
      if (v383 == 101)
      {
        v539 = v2663;
        goto LABEL_417;
      }
    }

    if (v374)
    {
      v1068 = v374;
      memcpy(&v2901, &v2799[4 * (v2930.f64[0] - 1) * v374], v2715 + 4);
      memcpy(v2686, &v2799[4 * (v2930.f64[1] - 1) * v1068], v2715 + 4);
      memcpy(v2684, &v2799[4 * (v2931.f64[0] - 1) * v2720], v2715 + 4);
      memcpy(v2666, &v2799[4 * (v2931.f64[1] - 1) * v2720], v2715 + 4);
      v1070 = v2601;
      v1069 = v2602;
      v1072 = v2599;
      v1071 = v2600;
      v1074 = v2597;
      v1073 = v2598;
      v1075 = v2596;
      if (v2720 == 6)
      {
        v1069 = HIDWORD(v2901);
        v1073 = v2901;
        *&v1076 = v2902;
        v1071 = v2905;
        v1070 = v2908;
        *&v1074 = __PAIR64__(v2910, v2907);
        *&v1077 = v2909;
        v1072 = v2913;
        HIDWORD(v1073) = v2903;
        *&v1075 = v2904[0];
        *(&v1075 + 1) = v2906;
        *(&v1074 + 1) = v2911;
        *(&v1076 + 1) = v2904[1];
        *(&v1077 + 1) = v2912;
        v2594 = v1077;
        v2595 = v1076;
      }
    }

    else
    {
      v1070 = v2601;
      v1069 = v2602;
      v1072 = v2599;
      v1071 = v2600;
      v1074 = v2597;
      v1073 = v2598;
      v1075 = v2596;
    }

    v2597 = v1074;
    v2598 = v1073;
    *v2835 = v1073;
    *&v2835[16] = v1075;
    v2596 = v1075;
    v2836 = v1074;
    ransac::normalise2dpts(v2835, &v2837, &v2757, v382);
    v2601 = v1070;
    v2602 = v1069;
    v2828 = v1069;
    v2829 = v2595;
    v2599 = v1072;
    v2600 = v1071;
    v2830 = v1071;
    v2831 = v1070;
    v2832 = v2594;
    v2833 = v1072;
    ransac::normalise2dpts(&v2828, v2835, v2825.f32, v1078);
    v1079 = 0;
    v1080 = 0;
    *&v2928[18] = -(*&v2835[8] * v2837);
    v1081.i32[0] = *&v2835[4];
    v1081.f32[1] = -*v2835;
    v2928[36] = vcvtq_f64_f32(vmul_n_f32(v1081, v2837));
    v366 = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-*&v2835[4], *&v2835[8]), v2837));
    *(v2928 + 8) = v366;
    v2928[42] = vcvtq_f64_f32(vmul_n_f32(v1081, *&v2838));
    *(&v2928[6] + 8) = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-*&v2835[4], *&v2835[8]), *&v2838));
    v2928[48] = vcvtq_f64_f32(vmul_n_f32(v1081, *(&v2838 + 1)));
    *(&v2928[12] + 8) = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-*&v2835[4], *&v2835[8]), *(&v2838 + 1)));
    *&v2928[19] = (v2837 * *v2835);
    *(&v2928[19] + 1) = -(*&v2835[20] * *&v2839);
    *(&v2928[37] + 1) = (*&v2839 * *&v2835[16]);
    *&v2928[38] = -(*&v2835[12] * *&v2839);
    v1082.i32[0] = *&v2835[20];
    v1082.f32[1] = -*&v2835[16];
    v2928[2] = vcvtq_f64_f32(vmul_n_f32(v1082, *&v2839));
    *&v2928[25] = (*&v2838 * *v2835);
    *(&v2928[25] + 1) = -(*&v2835[20] * *(&v2839 + 1));
    *(&v2928[43] + 1) = (*(&v2839 + 1) * *&v2835[16]);
    *&v2928[44] = -(*&v2835[12] * *(&v2839 + 1));
    v2928[8] = vcvtq_f64_f32(vmul_n_f32(v1082, *(&v2839 + 1)));
    *&v2928[31] = (*(&v2838 + 1) * *v2835);
    *(&v2928[31] + 1) = -(*&v2835[20] * v2840);
    *(&v2928[49] + 1) = (v2840 * *&v2835[16]);
    *&v2928[50] = -(*&v2835[12] * v2840);
    v2928[14] = vcvtq_f64_f32(vmul_n_f32(v1082, v2840));
    *(&v2928[32] + 1) = (v2840 * *&v2835[12]);
    v1081.i32[0] = v2836;
    *(&v2928[20] + 1) = (*&v2839 * *&v2835[12]);
    *&v2928[21] = -(*&v2836 * *&v2841);
    v1083.i32[0] = *&v2835[28];
    v1083.f32[1] = -*&v2835[24];
    v2928[39] = vcvtq_f64_f32(vmul_n_f32(v1083, *&v2841));
    v1081.f32[1] = -*&v2835[28];
    *(&v2928[3] + 8) = vcvtq_f64_f32(vmul_n_f32(v1081, *&v2841));
    *(&v2928[26] + 1) = (*(&v2839 + 1) * *&v2835[12]);
    *&v2928[27] = -(*&v2836 * *(&v2841 + 1));
    v2928[45] = vcvtq_f64_f32(vmul_n_f32(v1083, *(&v2841 + 1)));
    *(&v2928[9] + 8) = vcvtq_f64_f32(vmul_n_f32(v1081, *(&v2841 + 1)));
    *&v2928[33] = -(*&v2836 * v2842);
    v2928[51] = vcvtq_f64_f32(vmul_n_f32(v1083, v2842));
    *(&v2928[15] + 8) = vcvtq_f64_f32(vmul_n_f32(v1081, v2842));
    *&v2928[34] = (v2842 * *&v2835[24]);
    v391.i32[0] = HIDWORD(v2836);
    *&v2928[22] = (*&v2841 * *&v2835[24]);
    *(&v2928[22] + 1) = -(*(&v2836 + 3) * *&v2843);
    *(&v2928[40] + 1) = (*&v2843 * *(&v2836 + 2));
    *&v2928[41] = -(*(&v2836 + 1) * *&v2843);
    v391.f32[1] = -*(&v2836 + 2);
    v2928[5] = vcvtq_f64_f32(vmul_n_f32(*v391.f32, *&v2843));
    *(&v2928[23] + 1) = (*&v2843 * *(&v2836 + 1));
    *&v2928[24] = -(*&v2835[8] * *&v2838);
    *&v2928[28] = (*(&v2841 + 1) * *&v2835[24]);
    *(&v2928[28] + 1) = -(*(&v2836 + 3) * *(&v2843 + 1));
    *(&v2928[46] + 1) = (*(&v2843 + 1) * *(&v2836 + 2));
    *&v2928[47] = -(*(&v2836 + 1) * *(&v2843 + 1));
    v2928[11] = vcvtq_f64_f32(vmul_n_f32(*v391.f32, *(&v2843 + 1)));
    *&v2928[0] = 0;
    *(&v2928[18] + 1) = 0;
    *&v2928[37] = 0;
    *&v2928[6] = 0;
    *(&v2928[24] + 1) = 0;
    *&v2928[43] = 0;
    *&v2928[12] = 0;
    *(&v2928[30] + 1) = 0;
    *&v2928[49] = 0;
    *(&v2928[1] + 1) = 0;
    *&v2928[20] = 0;
    *(&v2928[38] + 1) = 0;
    *(&v2928[7] + 1) = 0;
    *&v2928[26] = 0;
    *(&v2928[44] + 1) = 0;
    *(&v2928[13] + 1) = 0;
    *&v2928[32] = 0;
    *(&v2928[50] + 1) = 0;
    *&v2928[3] = 0;
    *(&v2928[21] + 1) = 0;
    *&v2928[40] = 0;
    *&v2928[9] = 0;
    *(&v2928[27] + 1) = 0;
    *&v2928[46] = 0;
    *&v2928[15] = 0;
    *(&v2928[33] + 1) = 0;
    *&v2928[52] = 0;
    *(&v2928[4] + 1) = 0;
    *&v2928[23] = 0;
    *(&v2928[41] + 1) = 0;
    *(&v2928[10] + 1) = 0;
    *&v2928[29] = 0;
    *(&v2928[29] + 1) = (*(&v2843 + 1) * *(&v2836 + 1));
    *&v2928[30] = -(*&v2835[8] * *(&v2838 + 1));
    *(&v2928[47] + 1) = 0;
    *(&v2928[16] + 1) = 0;
    *(&v2928[34] + 1) = -(*(&v2836 + 3) * v2844);
    *(&v2928[52] + 1) = (v2844 * *(&v2836 + 2));
    *&v2928[35] = 0;
    *&v2928[53] = -(*(&v2836 + 1) * v2844);
    v2928[17] = vcvtq_f64_f32(vmul_n_f32(*v391.f32, v2844));
    *(&v2928[35] + 1) = (v2844 * *(&v2836 + 1));
    *(&v2928[53] + 1) = 0;
    v372 = v2717;
    v6 = 1.0;
    v1084 = 1.0;
    do
    {
      while ((v1080 & 1) != 0 || (*(v2928 + v1079) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        ++v1079;
        v1080 = 1;
        if (v1079 == 108)
        {
          v1321 = rtNaN;
          v2921[0] = rtNaN;
          v2921[1] = rtNaN;
          v2922[0] = rtNaN;
          v2922[1] = rtNaN;
          v2922[2] = rtNaN;
          v2922[3] = rtNaN;
          v2923[0] = rtNaN;
          v2923[1] = rtNaN;
          v2923[2] = rtNaN;
          v2923[3] = rtNaN;
          v2923[4] = rtNaN;
          v2923[5] = rtNaN;
          v2923[6] = rtNaN;
          v2923[7] = rtNaN;
          v2923[8] = rtNaN;
          v2923[9] = rtNaN;
          v2923[10] = rtNaN;
          v2923[11] = rtNaN;
          v2924[0] = rtNaN;
          v2924[1] = rtNaN;
          v2924[2] = rtNaN;
          v2924[3] = rtNaN;
          v2924[4] = rtNaN;
          v2924[5] = rtNaN;
          v2924[6] = rtNaN;
          v2924[7] = rtNaN;
          v2924[8] = rtNaN;
          v2924[9] = rtNaN;
          v2924[10] = rtNaN;
          v2924[11] = rtNaN;
          v2924[12] = rtNaN;
          v2924[13] = rtNaN;
          v2924[14] = rtNaN;
          v2924[15] = rtNaN;
          v2924[16] = rtNaN;
          v2924[17] = rtNaN;
          v2924[18] = rtNaN;
          v2924[19] = rtNaN;
          v2924[20] = rtNaN;
          v2924[21] = rtNaN;
          v2924[22] = rtNaN;
          v2924[23] = rtNaN;
          v2924[24] = rtNaN;
          v2924[25] = rtNaN;
          v2924[26] = rtNaN;
          v2924[27] = rtNaN;
          v2924[28] = rtNaN;
          v2924[29] = rtNaN;
          v2924[30] = rtNaN;
          v2924[31] = rtNaN;
          v2924[32] = rtNaN;
          v2924[33] = rtNaN;
          v2924[34] = rtNaN;
          v2924[35] = rtNaN;
          v2924[36] = rtNaN;
          v2924[37] = rtNaN;
          v2924[38] = rtNaN;
          v2924[39] = rtNaN;
          v2924[40] = rtNaN;
          v2924[41] = rtNaN;
          v2924[42] = rtNaN;
          v2924[43] = rtNaN;
          v2924[44] = rtNaN;
          v2924[45] = rtNaN;
          v2924[46] = rtNaN;
          v2924[47] = rtNaN;
          v2924[48] = rtNaN;
          v2924[49] = rtNaN;
          v2924[50] = rtNaN;
          v2924[51] = rtNaN;
          v2924[52] = rtNaN;
          v2924[53] = rtNaN;
          v2924[54] = rtNaN;
          v2924[55] = rtNaN;
          v2924[56] = rtNaN;
          v2924[57] = rtNaN;
          v2924[58] = rtNaN;
          v2924[59] = rtNaN;
          v2924[60] = rtNaN;
          v2924[61] = rtNaN;
          v2924[62] = rtNaN;
          v2924[63] = rtNaN;
          v2924[64] = rtNaN;
          v2924[65] = rtNaN;
          v2924[66] = rtNaN;
          v2924[67] = rtNaN;
          v2924[68] = rtNaN;
          v2924[69] = rtNaN;
          v2924[70] = rtNaN;
          v2924[71] = rtNaN;
          v2924[72] = rtNaN;
          v2924[73] = rtNaN;
          v2924[74] = rtNaN;
          v2924[75] = rtNaN;
          v2924[76] = rtNaN;
          v2924[77] = rtNaN;
          v2925[0] = rtNaN;
          v2925[1] = rtNaN;
          v2925[2] = rtNaN;
          v2925[3] = rtNaN;
          v2925[4] = rtNaN;
          v2925[5] = rtNaN;
          v2925[6] = rtNaN;
          v2925[7] = rtNaN;
          v2926[0] = rtNaN;
          v2926[1] = rtNaN;
          v2926[2] = rtNaN;
          v2926[3] = rtNaN;
          *&v2847 = rtNaN;
          *(&v2847 + 1) = rtNaN;
          *&v2848 = rtNaN;
          *(&v2848 + 1) = rtNaN;
          *&v2849 = rtNaN;
          *(&v2849 + 1) = rtNaN;
          *&v2850 = rtNaN;
          *(&v2850 + 1) = rtNaN;
          v2851 = rtNaN;
          v2800[0] = rtNaN;
          v2800[1] = rtNaN;
          v2801[0] = rtNaN;
          v2801[1] = rtNaN;
          v2802[0] = rtNaN;
          v2802[1] = rtNaN;
          v2803[0] = rtNaN;
          v2803[1] = rtNaN;
          v2804[0] = rtNaN;
          v2804[1] = rtNaN;
          v2804[2] = rtNaN;
          v2804[3] = rtNaN;
          v2804[4] = rtNaN;
          v2805[0] = rtNaN;
          v2805[1] = rtNaN;
          v2805[2] = rtNaN;
          v2805[3] = rtNaN;
          v2806[0] = rtNaN;
          v2806[1] = rtNaN;
          v2806[2] = rtNaN;
          v2806[3] = rtNaN;
          v2806[4] = rtNaN;
          v2806[5] = rtNaN;
          v2806[6] = rtNaN;
          v2806[7] = rtNaN;
          v2806[8] = rtNaN;
          v2806[9] = rtNaN;
          v2806[10] = rtNaN;
          v2806[11] = rtNaN;
          v2806[12] = rtNaN;
          v2806[13] = rtNaN;
          v2806[14] = rtNaN;
          v2806[15] = rtNaN;
          v2806[16] = rtNaN;
          v2806[17] = rtNaN;
          v2806[18] = rtNaN;
          v2806[19] = rtNaN;
          v2806[20] = rtNaN;
          v2806[21] = rtNaN;
          v2806[22] = rtNaN;
          v2806[23] = rtNaN;
          v2806[24] = rtNaN;
          v2806[25] = rtNaN;
          v2806[26] = rtNaN;
          v2806[27] = rtNaN;
          v2806[28] = rtNaN;
          v2806[29] = rtNaN;
          v2806[30] = rtNaN;
          v2806[31] = rtNaN;
          v2806[32] = rtNaN;
          v2806[33] = rtNaN;
          v2806[34] = rtNaN;
          v2806[35] = rtNaN;
          v2806[36] = rtNaN;
          v2806[37] = rtNaN;
          v2806[38] = rtNaN;
          v2806[39] = rtNaN;
          v2806[40] = rtNaN;
          v2806[41] = rtNaN;
          v2806[42] = rtNaN;
          v2806[43] = rtNaN;
          v2806[44] = rtNaN;
          v2806[45] = rtNaN;
          v2806[46] = rtNaN;
          v2806[47] = rtNaN;
          v2806[48] = rtNaN;
          v2806[49] = rtNaN;
          v2806[50] = rtNaN;
          v2806[51] = rtNaN;
          v2806[52] = rtNaN;
          v2806[53] = rtNaN;
          v2806[54] = rtNaN;
          v2807 = rtNaN;
          v2808 = rtNaN;
          v2809 = rtNaN;
          v2810 = rtNaN;
          v2811 = rtNaN;
          v1322 = rtNaN;
          v2812 = rtNaN;
          v365.i64[0] = rtNaN;
          v1323 = rtNaN;
          v2813 = rtNaN;
          v1324 = rtNaN;
          v1325 = rtNaN;
          v2814 = rtNaN;
          v1326 = rtNaN;
          v1327 = rtNaN;
          v1328 = rtNaN;
          v2815 = rtNaN;
          goto LABEL_1299;
        }
      }

      v1080 = 0;
      ++v1079;
    }

    while (v1079 != 108);
    memcpy(v2937, v2928, 0x360uLL);
    v2847 = 0u;
    v2848 = 0u;
    v2849 = 0u;
    v2850 = 0u;
    v2851 = 0;
    v2853 = 0u;
    memset(v2854, 0, sizeof(v2854));
    v2855 = 0u;
    v2856 = 0.0;
    v2914 = 0u;
    v2915 = 0u;
    v2916 = 0u;
    v2917 = 0u;
    v2918 = 0u;
    v2919 = 0u;
    bzero(v2921, 0x360uLL);
    bzero(v2800, 0x288uLL);
    v1085 = 0;
    v1086 = 0;
    v2612 = 0;
    v1087 = &v2937[43] + 8;
    v2654 = &v2937[49] + 8;
    v1088 = &v2937[37] + 8;
    v1089 = &v2937[31] + 8;
    v1090 = &v2937[25] + 8;
    v1091 = &v2937[19] + 8;
    v1092 = &v2937[48] + 8;
    v1093 = &v2937[42] + 8;
    v1094 = &v2937[30] + 8;
    v2656 = &v2937[36] + 8;
    v1095 = &v2937[24] + 8;
    v2705 = &v2937[18] + 8;
    v1096 = &v2937[12] + 8;
    v2658 = &v2937[13] + 8;
    v1097 = &v2937[6] + 8;
    v1098 = &v2937[7] + 8;
    v1099 = &v2937[6];
    v1100 = &v2937[1];
    v1101 = 12;
    v2727 = 13;
    v1102 = 2;
    v2712 = 1;
    while (2)
    {
      v2643 = v1093;
      v2651 = v1092;
      v2649 = v1091;
      v2645 = v1090;
      v2642 = v1089;
      v2640 = v1088;
      v2636 = v1087;
      v2615 = v1101;
      v1119 = v1101 & 0xFFFFFFFFFFFFFFFCLL;
      if (v1102 <= 9)
      {
        v1120 = 9;
      }

      else
      {
        v1120 = v1102;
      }

      v2611 = 8 * (v1120 - v1086 - 2);
      v1121 = 13 * v1086;
      v1122 = 13 * v1086;
      v2738 = v1086;
      v1123 = 0.0;
      v1124 = 3.31216864e-170;
      v1125 = 13 * v1086;
      v1126 = v1102;
      do
      {
        v1127 = fabs(*(v2937 + v1125));
        v1128 = v1123 + v1127 / v1124 * (v1127 / v1124);
        v1123 = v1124 / v1127 * (v1124 / v1127) * v1123 + 1.0;
        if (v1127 > v1124)
        {
          v1124 = v1127;
        }

        else
        {
          v1123 = v1128;
        }

        v1129 = v1125 + 2;
        ++v1125;
      }

      while (v1129 < 12 * v1086 + 13);
      v1130 = v1124 * sqrt(v1123);
      v2695 = v1095;
      if (v1130 <= 0.0)
      {
        v1131 = v1086;
        *(&v2847 + v1086) = 0;
        goto LABEL_953;
      }

      v1132 = 12 - v1085;
      if (*(v2937 + 13 * v1086) >= 0.0)
      {
        v1133 = v1130;
      }

      else
      {
        v1133 = -v1130;
      }

      v1134 = (v1122 + v2612 + 12);
      if (v1130 >= 1.00208418e-292)
      {
        if (v1122 < v1134)
        {
          v1140 = v2712;
          if (v1132 >= 4)
          {
            v1141 = v1132 & 0xFFFFFFFFFFFFFFFCLL;
            v1142 = v1100;
            v1143 = 1.0 / v1133;
            do
            {
              v1144 = vmulq_n_f64(*v1142, v1143);
              v1142[-1] = vmulq_n_f64(v1142[-1], v1143);
              *v1142 = v1144;
              v1142 += 2;
              v1119 -= 4;
            }

            while (v1119);
            if (v1132 == v1141)
            {
              goto LABEL_952;
            }

            v1140 = v2712 + v1141;
          }

          do
          {
            *&v2936[8 * v1140 + 16104] = *&v2936[8 * v1140 + 16104] * (1.0 / v1133);
            ++v1140;
          }

          while (v2727 != v1140);
        }
      }

      else if (v1122 < v1134)
      {
        v1135 = v2712;
        if (v1132 < 4)
        {
          do
          {
LABEL_943:
            *&v2936[8 * v1135 + 16104] = *&v2936[8 * v1135 + 16104] * (1.0 / v1133);
            ++v1135;
          }

          while (v2727 != v1135);
        }

        else
        {
          v1136 = v1132 & 0xFFFFFFFFFFFFFFFCLL;
          v1137 = v1100;
          v1138 = 1.0 / v1133;
          do
          {
            v1139 = vmulq_n_f64(*v1137, v1138);
            v1137[-1] = vmulq_n_f64(v1137[-1], v1138);
            *v1137 = v1139;
            v1137 += 2;
            v1119 -= 4;
          }

          while (v1119);
          if (v1132 != v1136)
          {
            v1135 = v2712 + v1136;
            goto LABEL_943;
          }
        }
      }

LABEL_952:
      *(v2937 + 13 * v1086) = *(v2937 + 13 * v1086) + 1.0;
      v1131 = v1086;
      *(&v2847 + v1086) = -v1133;
LABEL_953:
      v1145 = 8 * v1131;
      v1146 = 96 - 8 * v1131;
      v2635 = v1085;
      v2690 = v1094;
      v2700 = v1096;
      v2664 = v1097;
      v2660 = v1098;
      v2617 = v1099;
      if (v1131 >= 8)
      {
        v2613 = v1131 + 1;
        memcpy(&v2921[v1121], v2937 + v1121 * 8, v1146);
        v1103 = v2613;
        v1104 = v2738;
        v1105 = v2660;
        v1106 = v2664;
        v1107 = v2700;
        v1108 = v2705;
        v1109 = v2690;
        v1110 = v2635;
        v1111 = v2642;
        v1112 = v2645;
        v1113 = v2649;
        v1114 = v2651;
        v1115 = v2643;
        v1116 = v2656;
        v1117 = v2695;
        goto LABEL_921;
      }

      v2605 = v1145 + 8;
      v2604 = &v2800[10 * v1086];
      v2610 = 88 - v1145;
      v2614 = v1131 + 2;
      v1147 = v1099;
      v1148 = v1126;
      do
      {
        if (v1130 > 0.0)
        {
          v1149 = 0.0;
          v1150 = v2937 + 13 * v1086;
          for (j = v1131; j != 12; ++j)
          {
            v1152 = *v1150++;
            v1149 = v1149 + v1147[j] * v1152;
          }

          v1153 = -v1149 / *(v2937 + 13 * v1086);
          if (v1153 != 0.0)
          {
            v1154 = v2937 + 13 * v1086;
            for (k = v1131; k != 12; ++k)
            {
              v1156 = *v1154++;
              v1147[k] = v1147[k] + v1156 * v1153;
            }
          }
        }

        *(&v2853 + v1148 - 1) = *(&v2937[6 * v1148 - 6] + v1131);
        ++v1148;
        v1147 += 12;
      }

      while (v1148 != 10);
      v2603 = 8 * v1131;
      memcpy(&v2921[v1121], v2937 + v1121 * 8, v1146);
      v1104 = v2738;
      if (v2738 != 7)
      {
        v1157 = *&v2852[8 * v2614 + 16];
        v1158 = fabs(v1157);
        if (v1158 <= 3.31216864e-170)
        {
          v1159 = v1158 * 3.01916994e169 * (v1158 * 3.01916994e169);
          v1158 = 3.31216864e-170;
        }

        else
        {
          v1159 = 1.0;
        }

        v1160 = fabs(*&v2854[v2738]);
        v1161 = v1158 / v1160 * (v1158 / v1160) * v1159 + 1.0;
        v1162 = v1159 + v1160 / v1158 * (v1160 / v1158);
        if (v1160 > v1158)
        {
          v1162 = v1161;
          v1158 = v1160;
        }

        if (v2738 != 6)
        {
          v1163 = fabs(*&v2852[8 * v2738 + 48]);
          v1164 = v1158 / v1163 * (v1158 / v1163) * v1162 + 1.0;
          v1162 = v1162 + v1163 / v1158 * (v1163 / v1158);
          if (v1163 > v1158)
          {
            v1162 = v1164;
            v1158 = v1163;
          }

          if (v2738 != 5)
          {
            v1165 = fabs(*&v2852[8 * v2738 + 56]);
            v1166 = v1158 / v1165 * (v1158 / v1165) * v1162 + 1.0;
            v1162 = v1162 + v1165 / v1158 * (v1165 / v1158);
            if (v1165 > v1158)
            {
              v1162 = v1166;
              v1158 = v1165;
            }

            if (v2738 != 4)
            {
              v1167 = fabs(*&v2852[8 * v2738 + 64]);
              v1168 = v1158 / v1167 * (v1158 / v1167) * v1162 + 1.0;
              v1162 = v1162 + v1167 / v1158 * (v1167 / v1158);
              if (v1167 > v1158)
              {
                v1162 = v1168;
                v1158 = v1167;
              }

              if (v2738 != 3)
              {
                v1169 = fabs(*&v2852[8 * v2738 + 72]);
                v1170 = v1158 / v1169 * (v1158 / v1169) * v1162 + 1.0;
                v1162 = v1162 + v1169 / v1158 * (v1169 / v1158);
                if (v1169 > v1158)
                {
                  v1162 = v1170;
                  v1158 = v1169;
                }

                if (v2738 != 2)
                {
                  v1171 = fabs(*(&v2855 + v2738 + 1));
                  v1172 = v1158 / v1171 * (v1158 / v1171) * v1162 + 1.0;
                  v1162 = v1162 + v1171 / v1158 * (v1171 / v1158);
                  if (v1171 > v1158)
                  {
                    v1162 = v1172;
                    v1158 = v1171;
                  }

                  if (v2738 != 1)
                  {
                    v1173 = fabs(*&v2852[8 * v2738 + 88]);
                    if (v1173 <= v1158)
                    {
                      v1162 = v1162 + v1173 / v1158 * (v1173 / v1158);
                    }

                    else
                    {
                      v1162 = v1158 / v1173 * (v1158 / v1173) * v1162 + 1.0;
                      v1158 = v1173;
                    }
                  }
                }
              }
            }
          }
        }

        v1174 = v1158 * sqrt(v1162);
        if (v1174 == 0.0)
        {
          v2854[v2738 - 2] = 0;
LABEL_1121:
          memcpy(v2604 + 1, &v2854[-2] + v2605, v2611 + 8);
          v1104 = v2738;
          v1110 = v2635;
          v1111 = v2642;
          v1112 = v2645;
          v1113 = v2649;
          v1114 = v2651;
          v1115 = v2643;
          v1116 = v2656;
          v1109 = v2690;
          v1117 = v2695;
          v1108 = v2705;
          v1107 = v2700;
          v1106 = v2664;
          v1105 = v2660;
          v1118 = v2615;
          v1103 = v2738 + 1;
          goto LABEL_922;
        }

        if (v1157 >= 0.0)
        {
          v1175 = v1174;
        }

        else
        {
          v1175 = -v1174;
        }

        *&v2854[v2738 - 2] = v1175;
        v1176 = 1.0 / v1175;
        *(&v2853 + v1126 - 1) = *(&v2853 + v1126 - 1) * v1176;
        if (fabs(v1174) >= 1.00208418e-292)
        {
          v1177 = v2738 + 1;
          if (v1126 > 8)
          {
            goto LABEL_1011;
          }

          *&v2854[v1126 - 2] = *&v2854[v1126 - 2] * v1176;
          if (v1126 == 8)
          {
            goto LABEL_1011;
          }

          v1179 = &v2854[v1126 - 2];
          v1179[1] = v1179[1] * v1176;
          if (v1126 > 6)
          {
            goto LABEL_1011;
          }

          v1179[2] = v1179[2] * v1176;
          if (v1126 == 6)
          {
            goto LABEL_1011;
          }

          v1179[3] = v1179[3] * v1176;
          if (v1126 > 4)
          {
            goto LABEL_1011;
          }

          v1179[4] = v1179[4] * v1176;
          if (v1126 == 4)
          {
            goto LABEL_1011;
          }

          v1179[5] = v1179[5] * v1176;
          if (v1126 >= 3)
          {
            goto LABEL_1011;
          }
        }

        else
        {
          v1177 = v2738 + 1;
          if (v1126 > 8)
          {
            goto LABEL_1011;
          }

          *&v2854[v1126 - 2] = *&v2854[v1126 - 2] * v1176;
          if (v1126 == 8)
          {
            goto LABEL_1011;
          }

          v1178 = &v2854[v1126 - 2];
          v1178[1] = v1178[1] * v1176;
          if (v1126 > 6)
          {
            goto LABEL_1011;
          }

          v1178[2] = v1178[2] * v1176;
          if (v1126 == 6)
          {
            goto LABEL_1011;
          }

          v1178[3] = v1178[3] * v1176;
          if (v1126 > 4)
          {
            goto LABEL_1011;
          }

          v1178[4] = v1178[4] * v1176;
          if (v1126 == 4)
          {
            goto LABEL_1011;
          }

          v1178[5] = v1178[5] * v1176;
          if (v1126 > 2)
          {
            goto LABEL_1011;
          }
        }

        *(&v2855 + v1126) = *(&v2855 + v1126) * v1176;
LABEL_1011:
        v1180 = *&v2854[v1177 - 2] + 1.0;
        *&v2854[v1177 - 2] = v1180;
        *&v2854[v2738 - 2] = -*&v2854[v2738 - 2];
        bzero(&v2914 + v2605, v2610);
        v1181 = 11 - v2738;
        v1182 = (11 - v2738) & 0xC;
        v1183 = *(&v2853 + v1126 - 1);
        if (*&v1183 != 0.0)
        {
          v1184 = vdupq_lane_s64(v1183, 0);
          v1185 = &v2660[v2603];
          v1186 = &v2915.u32[v2603 / 4 + 2];
          v1187 = &v2664[v2603];
          v1188 = v1181 & 0xC;
          do
          {
            v1189 = *v1187;
            v1187 += 2;
            v1190 = v1189;
            v1191 = *v1185;
            v1185 += 2;
            v1192 = vmlaq_f64(*v1186, v1184, v1191);
            v1186[-1] = vmlaq_f64(v1186[-1], v1184, v1190);
            *v1186 = v1192;
            v1186 += 2;
            v1188 -= 4;
          }

          while (v1188);
          if (v1181 != v1182)
          {
            v1193 = v2738 + v1182;
            do
            {
              *&v2914.i64[v1193 + 1] = *&v2914.i64[v1193 + 1] + *&v2664[8 * v1193] * *&v1183;
              ++v1193;
            }

            while (v1193 != 11);
          }
        }

        if (v1126 <= 8)
        {
          v1194 = v2854[v1126 - 2];
          if (*&v1194 != 0.0)
          {
            v1195 = vdupq_lane_s64(v1194, 0);
            v1196 = &v2658[v2603];
            v1197 = &v2915.u32[v2603 / 4 + 2];
            v1198 = &v2700[v2603];
            v1199 = v1181 & 0xC;
            do
            {
              v1200 = *v1198;
              v1198 += 2;
              v1201 = v1200;
              v1202 = *v1196;
              v1196 += 2;
              v1203 = vmlaq_f64(*v1197, v1195, v1202);
              v1197[-1] = vmlaq_f64(v1197[-1], v1195, v1201);
              *v1197 = v1203;
              v1197 += 2;
              v1199 -= 4;
            }

            while (v1199);
            if (v1181 != v1182)
            {
              v1204 = v2738 + v1182;
              do
              {
                *&v2914.i64[v1204 + 1] = *&v2914.i64[v1204 + 1] + *&v2700[8 * v1204] * *&v1194;
                ++v1204;
              }

              while (v1204 != 11);
            }
          }

          if (v1126 != 8)
          {
            v1205 = &v2854[v1126 - 2];
            v1206 = *(v1205 + 1);
            if (*&v1206 != 0.0)
            {
              v1207 = vdupq_lane_s64(v1206, 0);
              v1208 = &v2705[v2603];
              v1209 = &v2915.u32[v2603 / 4 + 2];
              v1210 = v1181 & 0xC;
              do
              {
                v1211 = *v1208;
                v1212 = v1208[1];
                v1208 += 2;
                v1213 = vmlaq_f64(*v1209, v1207, v1212);
                v1209[-1] = vmlaq_f64(v1209[-1], v1207, v1211);
                *v1209 = v1213;
                v1209 += 2;
                v1210 -= 4;
              }

              while (v1210);
              if (v1181 != v1182)
              {
                v1214 = v2738 + v1182;
                do
                {
                  *&v2914.i64[v1214 + 1] = *&v2914.i64[v1214 + 1] + *&v2705[8 * v1214] * *&v1206;
                  ++v1214;
                }

                while (v1214 != 11);
              }
            }

            if (v1126 <= 6)
            {
              v1215 = *(v1205 + 2);
              if (*&v1215 != 0.0)
              {
                v1216 = vdupq_lane_s64(v1215, 0);
                v1217 = &v2695[v2603];
                v1218 = &v2915.u32[v2603 / 4 + 2];
                v1219 = v1181 & 0xC;
                do
                {
                  v1220 = *v1217;
                  v1221 = v1217[1];
                  v1217 += 2;
                  v1222 = vmlaq_f64(*v1218, v1216, v1221);
                  v1218[-1] = vmlaq_f64(v1218[-1], v1216, v1220);
                  *v1218 = v1222;
                  v1218 += 2;
                  v1219 -= 4;
                }

                while (v1219);
                if (v1181 != v1182)
                {
                  v1223 = v2738 + v1182;
                  do
                  {
                    *&v2914.i64[v1223 + 1] = *&v2914.i64[v1223 + 1] + *&v2695[8 * v1223] * *&v1215;
                    ++v1223;
                  }

                  while (v1223 != 11);
                }
              }

              if (v1126 != 6)
              {
                v1224 = *(v1205 + 3);
                if (*&v1224 != 0.0)
                {
                  v1225 = vdupq_lane_s64(v1224, 0);
                  v1226 = &v2690[v2603];
                  v1227 = &v2915.u32[v2603 / 4 + 2];
                  v1228 = v1181 & 0xC;
                  do
                  {
                    v1229 = *v1226;
                    v1230 = v1226[1];
                    v1226 += 2;
                    v1231 = vmlaq_f64(*v1227, v1225, v1230);
                    v1227[-1] = vmlaq_f64(v1227[-1], v1225, v1229);
                    *v1227 = v1231;
                    v1227 += 2;
                    v1228 -= 4;
                  }

                  while (v1228);
                  if (v1181 != v1182)
                  {
                    v1232 = v2738 + v1182;
                    do
                    {
                      *&v2914.i64[v1232 + 1] = *&v2914.i64[v1232 + 1] + *&v2690[8 * v1232] * *&v1224;
                      ++v1232;
                    }

                    while (v1232 != 11);
                  }
                }

                if (v1126 <= 4)
                {
                  v1233 = *(v1205 + 4);
                  if (*&v1233 != 0.0)
                  {
                    v1234 = vdupq_lane_s64(v1233, 0);
                    v1235 = &v2656[v2603];
                    v1236 = &v2915.u32[v2603 / 4 + 2];
                    v1237 = v1181 & 0xC;
                    do
                    {
                      v1238 = *v1235;
                      v1239 = v1235[1];
                      v1235 += 2;
                      v1240 = vmlaq_f64(*v1236, v1234, v1239);
                      v1236[-1] = vmlaq_f64(v1236[-1], v1234, v1238);
                      *v1236 = v1240;
                      v1236 += 2;
                      v1237 -= 4;
                    }

                    while (v1237);
                    if (v1181 != v1182)
                    {
                      v1241 = v2738 + v1182;
                      do
                      {
                        *&v2914.i64[v1241 + 1] = *&v2914.i64[v1241 + 1] + *&v2656[8 * v1241] * *&v1233;
                        ++v1241;
                      }

                      while (v1241 != 11);
                    }
                  }

                  if (v1126 != 4)
                  {
                    v1242 = *(v1205 + 5);
                    if (*&v1242 != 0.0)
                    {
                      v1243 = vdupq_lane_s64(v1242, 0);
                      v1244 = &v2643[v2603];
                      v1245 = &v2915.u32[v2603 / 4 + 2];
                      v1246 = v1181 & 0xC;
                      do
                      {
                        v1247 = *v1244;
                        v1248 = v1244[1];
                        v1244 += 2;
                        v1249 = vmlaq_f64(*v1245, v1243, v1248);
                        v1245[-1] = vmlaq_f64(v1245[-1], v1243, v1247);
                        *v1245 = v1249;
                        v1245 += 2;
                        v1246 -= 4;
                      }

                      while (v1246);
                      if (v1181 != v1182)
                      {
                        v1250 = v2738 + v1182;
                        do
                        {
                          *&v2914.i64[v1250 + 1] = *&v2914.i64[v1250 + 1] + *&v2643[8 * v1250] * *&v1242;
                          ++v1250;
                        }

                        while (v1250 != 11);
                      }
                    }

                    if (v1126 <= 2)
                    {
                      v1251 = *(v1205 + 6);
                      if (*&v1251 != 0.0)
                      {
                        v1252 = vdupq_lane_s64(v1251, 0);
                        v1253 = &v2651[v2603];
                        v1254 = &v2915.u32[v2603 / 4 + 2];
                        v1255 = v1181 & 0xC;
                        do
                        {
                          v1256 = *v1253;
                          v1257 = v1253[1];
                          v1253 += 2;
                          v1258 = vmlaq_f64(*v1254, v1252, v1257);
                          v1254[-1] = vmlaq_f64(v1254[-1], v1252, v1256);
                          *v1254 = v1258;
                          v1254 += 2;
                          v1255 -= 4;
                        }

                        while (v1255);
                        if (v1181 != v1182)
                        {
                          v1259 = v2738 + v1182;
                          do
                          {
                            *&v2914.i64[v1259 + 1] = *&v2914.i64[v1259 + 1] + *&v2651[8 * v1259] * *&v1251;
                            ++v1259;
                          }

                          while (v1259 != 11);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v1260 = -*&v1183 / v1180;
        if (v1260 != 0.0)
        {
          v1261 = vdupq_lane_s64(*&v1260, 0);
          v1262 = v2603;
          v1263 = v1181 & 0xC;
          do
          {
            v1264 = vmlaq_f64(*&v2660[v1262], v1261, *(&v2915 + v1262 + 8));
            *&v2664[v1262] = vmlaq_f64(*&v2664[v1262], v1261, *(&v2914 + v1262 + 8));
            *&v2660[v1262] = v1264;
            v1262 += 32;
            v1263 -= 4;
          }

          while (v1263);
          if (v1181 != v1182)
          {
            v1265 = v2738 + v1182;
            do
            {
              *&v2664[8 * v1265] = *&v2664[8 * v1265] + *&v2914.i64[v1265 + 1] * v1260;
              ++v1265;
            }

            while (v1265 != 11);
          }
        }

        if (v1126 <= 8)
        {
          v1266 = -*&v2854[v1126 - 2] / v1180;
          if (v1266 != 0.0)
          {
            v1267 = vdupq_lane_s64(*&v1266, 0);
            v1268 = v2603;
            v1269 = v1181 & 0xC;
            do
            {
              v1270 = vmlaq_f64(*&v2658[v1268], v1267, *(&v2915 + v1268 + 8));
              *&v2700[v1268] = vmlaq_f64(*&v2700[v1268], v1267, *(&v2914 + v1268 + 8));
              *&v2658[v1268] = v1270;
              v1268 += 32;
              v1269 -= 4;
            }

            while (v1269);
            if (v1181 != v1182)
            {
              v1271 = v2738 + v1182;
              do
              {
                *&v2700[8 * v1271] = *&v2700[8 * v1271] + *&v2914.i64[v1271 + 1] * v1266;
                ++v1271;
              }

              while (v1271 != 11);
            }
          }

          if (v1126 != 8)
          {
            v1272 = &v2854[v1126 - 2];
            v1273 = -v1272[1] / v1180;
            if (v1273 != 0.0)
            {
              v1274 = vdupq_lane_s64(*&v1273, 0);
              v1275 = &v2705[v2603];
              v1276 = &v2649[v2603];
              v1277 = &v2915.u32[v2603 / 4 + 2];
              v1278 = v1181 & 0xC;
              do
              {
                v1279 = vmlaq_f64(*v1276, v1274, *v1277);
                *v1275 = vmlaq_f64(*v1275, v1274, v1277[-1]);
                v1275 += 2;
                *v1276 = v1279;
                v1276 += 2;
                v1277 += 2;
                v1278 -= 4;
              }

              while (v1278);
              if (v1181 != v1182)
              {
                v1280 = v2738 + v1182;
                do
                {
                  *&v2705[8 * v1280] = *&v2705[8 * v1280] + *&v2914.i64[v1280 + 1] * v1273;
                  ++v1280;
                }

                while (v1280 != 11);
              }
            }

            if (v1126 <= 6)
            {
              v1281 = -v1272[2] / v1180;
              if (v1281 != 0.0)
              {
                v1282 = vdupq_lane_s64(*&v1281, 0);
                v1283 = &v2695[v2603];
                v1284 = &v2645[v2603];
                v1285 = &v2915.u32[v2603 / 4 + 2];
                v1286 = v1181 & 0xC;
                do
                {
                  v1287 = vmlaq_f64(*v1284, v1282, *v1285);
                  *v1283 = vmlaq_f64(*v1283, v1282, v1285[-1]);
                  v1283 += 2;
                  *v1284 = v1287;
                  v1284 += 2;
                  v1285 += 2;
                  v1286 -= 4;
                }

                while (v1286);
                if (v1181 != v1182)
                {
                  v1288 = v2738 + v1182;
                  do
                  {
                    *&v2695[8 * v1288] = *&v2695[8 * v1288] + *&v2914.i64[v1288 + 1] * v1281;
                    ++v1288;
                  }

                  while (v1288 != 11);
                }
              }

              if (v1126 != 6)
              {
                v1289 = -v1272[3] / v1180;
                if (v1289 != 0.0)
                {
                  v1290 = vdupq_lane_s64(*&v1289, 0);
                  v1291 = &v2690[v2603];
                  v1292 = (v2642 + v2603);
                  v1293 = &v2915.u32[v2603 / 4 + 2];
                  v1294 = v1181 & 0xC;
                  do
                  {
                    v1295 = vmlaq_f64(*v1292, v1290, *v1293);
                    *v1291 = vmlaq_f64(*v1291, v1290, v1293[-1]);
                    v1291 += 2;
                    *v1292 = v1295;
                    v1292 += 2;
                    v1293 += 2;
                    v1294 -= 4;
                  }

                  while (v1294);
                  if (v1181 != v1182)
                  {
                    v1296 = v2738 + v1182;
                    do
                    {
                      *&v2690[8 * v1296] = *&v2690[8 * v1296] + *&v2914.i64[v1296 + 1] * v1289;
                      ++v1296;
                    }

                    while (v1296 != 11);
                  }
                }

                if (v1126 <= 4)
                {
                  v1297 = -v1272[4] / v1180;
                  if (v1297 != 0.0)
                  {
                    v1298 = vdupq_lane_s64(*&v1297, 0);
                    v1299 = &v2656[v2603];
                    v1300 = &v2640[v2603];
                    v1301 = &v2915.u32[v2603 / 4 + 2];
                    v1302 = v1181 & 0xC;
                    do
                    {
                      v1303 = vmlaq_f64(*v1300, v1298, *v1301);
                      *v1299 = vmlaq_f64(*v1299, v1298, v1301[-1]);
                      v1299 += 2;
                      *v1300 = v1303;
                      v1300 += 2;
                      v1301 += 2;
                      v1302 -= 4;
                    }

                    while (v1302);
                    if (v1181 != v1182)
                    {
                      v1304 = v2738 + v1182;
                      do
                      {
                        *&v2656[8 * v1304] = *&v2656[8 * v1304] + *&v2914.i64[v1304 + 1] * v1297;
                        ++v1304;
                      }

                      while (v1304 != 11);
                    }
                  }

                  if (v1126 != 4)
                  {
                    v1305 = -v1272[5] / v1180;
                    if (v1305 != 0.0)
                    {
                      v1306 = vdupq_lane_s64(*&v1305, 0);
                      v1307 = &v2643[v2603];
                      v1308 = &v2636[v2603];
                      v1309 = &v2915.u32[v2603 / 4 + 2];
                      v1310 = v1181 & 0xC;
                      do
                      {
                        v1311 = vmlaq_f64(*v1308, v1306, *v1309);
                        *v1307 = vmlaq_f64(*v1307, v1306, v1309[-1]);
                        v1307 += 2;
                        *v1308 = v1311;
                        v1308 += 2;
                        v1309 += 2;
                        v1310 -= 4;
                      }

                      while (v1310);
                      if (v1181 != v1182)
                      {
                        v1312 = v2738 + v1182;
                        do
                        {
                          *&v2643[8 * v1312] = *&v2643[8 * v1312] + *&v2914.i64[v1312 + 1] * v1305;
                          ++v1312;
                        }

                        while (v1312 != 11);
                      }
                    }

                    if (v1126 <= 2)
                    {
                      v1313 = -v1272[6] / v1180;
                      if (v1313 != 0.0)
                      {
                        v1314 = vdupq_lane_s64(*&v1313, 0);
                        v1315 = &v2651[v2603];
                        v1316 = &v2654[v2603];
                        v1317 = &v2915.u32[v2603 / 4 + 2];
                        v1318 = v1181 & 0xC;
                        do
                        {
                          v1319 = vmlaq_f64(*v1316, v1314, *v1317);
                          *v1315 = vmlaq_f64(*v1315, v1314, v1317[-1]);
                          v1315 += 2;
                          *v1316 = v1319;
                          v1316 += 2;
                          v1317 += 2;
                          v1318 -= 4;
                        }

                        while (v1318);
                        if (v1181 != v1182)
                        {
                          v1320 = v2738 + v1182;
                          do
                          {
                            *&v2651[8 * v1320] = *&v2651[8 * v1320] + *&v2914.i64[v1320 + 1] * v1313;
                            ++v1320;
                          }

                          while (v1320 != 11);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_1121;
      }

      v1103 = 8;
      v1110 = v2635;
      v1111 = v2642;
      v1112 = v2645;
      v1113 = v2649;
      v1114 = v2651;
      v1115 = v2643;
      v1116 = v2656;
      v1109 = v2690;
      v1117 = v2695;
      v1108 = v2705;
      v1107 = v2700;
      v1106 = v2664;
      v1105 = v2660;
LABEL_921:
      v1118 = v2615;
LABEL_922:
      v2712 += 13;
      v2727 += 12;
      v2612 = ~v1104;
      v1085 = v1110 + 1;
      v1100 = (v1100 + 104);
      v1099 = v2617 + 6;
      v1098 = v1105 + 96;
      v1097 = v1106 + 96;
      v2658 += 96;
      v1096 = v1107 + 96;
      v2705 = v1108 + 96;
      v1095 = v1117 + 96;
      v1094 = v1109 + 96;
      v2656 = v1116 + 96;
      v1093 = v1115 + 96;
      v1092 = v1114 + 96;
      v1091 = v1113 + 96;
      v1090 = v1112 + 96;
      v1089 = (v1111 + 96);
      v1088 = v2640 + 96;
      v1087 = v2636 + 96;
      v1102 = v1126 + 1;
      v2654 += 96;
      v1086 = v1103;
      v1101 = v1118 - 1;
      if (v1103 != 9)
      {
        continue;
      }

      break;
    }

    v1329 = 0;
    *(&v2855 + 1) = *(&v2937[51] + 1);
    v2856 = 0.0;
    v1331 = v2926;
    v1330 = &v2927;
    v1332 = 8;
    v1333 = 10;
    v372 = v2717;
    v1084 = 1.0;
    do
    {
      if (*(&v2847 + v1332) == 0.0)
      {
        v1334 = &v2921[12 * v1332];
        v1334[4] = 0u;
        v1334[5] = 0u;
        v1334[2] = 0u;
        v1334[3] = 0u;
        *v1334 = 0u;
        v1334[1] = 0u;
        v2921[13 * v1332] = 0x3FF0000000000000;
      }

      else
      {
        if (v1332 <= 7)
        {
          v1335 = v1329 + 4;
          v1336 = v1330;
          v1337 = v1333;
          do
          {
            v1338 = 0;
            v1339 = 0.0;
            do
            {
              v1339 = v1339 + *&v1336[v1338] * *&v1331[v1338];
              ++v1338;
            }

            while (v1335 != v1338);
            v1340 = -v1339 / *&v2921[13 * v1332];
            if (v1340 != 0.0)
            {
              v1341 = 0;
              do
              {
                *&v1336[v1341] = *&v1336[v1341] + *&v1331[v1341] * v1340;
                ++v1341;
              }

              while (v1335 != v1341);
            }

            ++v1337;
            v1336 += 12;
          }

          while (v1337 != 10);
        }

        v1342 = 0;
        do
        {
          *&v1331[v1342] = -*&v1331[v1342];
          ++v1342;
        }

        while (v1329 + 4 != v1342);
        *&v2921[13 * v1332] = *&v2921[13 * v1332] + 1.0;
        if (v1332)
        {
          v2739 = v1329;
          v2728 = v1330;
          v2713 = v1332;
          v2706 = v1333;
          bzero(&v2925[-12 * v1329], 64 - 8 * v1329);
          v1333 = v2706;
          v1332 = v2713;
          v1330 = v2728;
          v1329 = v2739;
          v1084 = 1.0;
          v372 = v2717;
        }
      }

      --v1332;
      --v1333;
      ++v1329;
      v1330 -= 13;
      v1331 -= 13;
    }

    while (v1329 != 9);
    v1343 = 0;
    v1344 = &v2816;
    v1345 = &v2821;
    v1346 = v2822;
    v1347 = v2818;
    v1348 = 8;
    v1349 = 10;
    while (2)
    {
      v1351 = v1348;
      if (v1348 <= 6 && *&v2854[v1348 - 2] != 0.0)
      {
        v1352 = &v2800[-10 * v1343];
        v1353 = (10 * v1348) | 1;
        _CF = v1352 + 90 >= &v2816 - 9 * v1343 || v1352 >= v2800;
        v1355 = !_CF;
        v2740 = v1355;
        if (v1343 < 4)
        {
          v1356 = v1345;
          v1357 = v1349;
          do
          {
            v1358 = 0;
            v1359 = 0.0;
            do
            {
              v1359 = v1359 + *&v1356[v1358] * *&v1344[v1358];
              ++v1358;
            }

            while (v1343 != v1358);
            v1360 = -v1359 / *&v2800[v1353];
            if (v1360 != 0.0)
            {
              v1361 = 0;
              do
              {
                *&v1356[v1361] = *&v1356[v1361] + *&v1344[v1361] * v1360;
                ++v1361;
              }

              while (v1343 != v1361);
            }

            ++v1357;
            v1356 += 9;
          }

          while (v1357 != 10);
          goto LABEL_1141;
        }

        v1362 = 4 * (v1343 >> 2);
        v1363 = &v1345[v1362];
        v1364 = &v1344[v1362];
        v1365 = v1343 & 0x7FFFFFFFFFFFFFFCLL;
        v1366 = v1345;
        v1367 = v1346;
        v1368 = v1349;
        while (2)
        {
          v1369 = 0uLL;
          v1370 = v1367;
          v1371 = v1347;
          v1372 = 4 * (v1343 >> 2);
          v1373 = 0uLL;
          do
          {
            v1369 = vmlaq_f64(v1369, v1371[-1], v1370[-1]);
            v1373 = vmlaq_f64(v1373, *v1371, *v1370);
            v1371 += 2;
            v1370 += 2;
            v1372 -= 4;
          }

          while (v1372);
          v1374 = vaddvq_f64(vaddq_f64(v1373, v1369));
          if (v1343 != v1365)
          {
            v1375 = v1364;
            v1376 = v1363;
            v1377 = v1343 - 4 * (v1343 >> 2);
            do
            {
              v1378 = *v1375++;
              v1379 = v1378;
              v1380 = *v1376++;
              v1374 = v1374 + v1380 * v1379;
              --v1377;
            }

            while (v1377);
          }

          v1381 = -v1374 / *&v2800[v1353];
          if (v1381 != 0.0)
          {
            if (v2740)
            {
              v1382 = 0;
              goto LABEL_1172;
            }

            v1383 = 0;
            v1384 = vdupq_lane_s64(*&v1381, 0);
            v1385 = 4 * (v1343 >> 2);
            do
            {
              v1386 = &v1367[v1383 / 2];
              v1387 = vmlaq_f64(v1367[v1383 / 2], v1384, v1347[v1383 / 2]);
              v1386[-1] = vmlaq_f64(v1367[v1383 / 2 - 1], v1384, *&v1344[v1383]);
              *v1386 = v1387;
              v1383 += 4;
              v1385 -= 4;
            }

            while (v1385);
            v1382 = v1343 & 0x7FFFFFFFFFFFFFFCLL;
            if (v1343 != v1365)
            {
              do
              {
LABEL_1172:
                *&v1366[v1382] = *&v1366[v1382] + *&v1344[v1382] * v1381;
                ++v1382;
              }

              while (v1343 != v1382);
            }
          }

          ++v1368;
          v1367 = (v1367 + 72);
          v1363 += 9;
          v1366 += 9;
          if (v1368 == 10)
          {
            break;
          }

          continue;
        }
      }

LABEL_1141:
      v1350 = &v2800[9 * v1351];
      v1350[8] = 0;
      *(v1350 + 2) = 0u;
      *(v1350 + 3) = 0u;
      *v1350 = 0u;
      *(v1350 + 1) = 0u;
      v2800[10 * v1351] = 0x3FF0000000000000;
      v1348 = v1351 - 1;
      --v1349;
      ++v1343;
      v1347 -= 5;
      v1346 -= 5;
      v1345 -= 10;
      v1344 -= 10;
      if (v1351)
      {
        continue;
      }

      break;
    }

    v1388 = 0;
    v1389 = 0.0;
    v1390 = v2923;
    v1391 = v2806;
    while (2)
    {
      v1393 = *(&v2847 + v1388 * 8);
      if (v1393 == 0.0)
      {
        v1394 = *(&v2847 + v1388 * 8);
        if (v1388 != 8)
        {
          goto LABEL_1183;
        }

LABEL_1175:
        v1392 = v2856;
        goto LABEL_1176;
      }

      v1394 = fabs(v1393);
      *(&v2847 + v1388 * 8) = v1394;
      v1395 = v1393 / v1394;
      if (v1388 != 8)
      {
        *&v2854[v1388 - 2] = *&v2854[v1388 - 2] / v1395;
      }

      v1396 = vmulq_n_f64(v1390[-2], v1395);
      v1390[-3] = vmulq_n_f64(v1390[-3], v1395);
      v1390[-2] = v1396;
      v1397 = vmulq_n_f64(*v1390, v1395);
      v1390[-1] = vmulq_n_f64(v1390[-1], v1395);
      *v1390 = v1397;
      v1398 = vmulq_n_f64(v1390[1], v1395);
      v1399 = vmulq_n_f64(v1390[2], v1395);
      v1390[1] = v1398;
      v1390[2] = v1399;
      if (v1388 == 8)
      {
        goto LABEL_1175;
      }

LABEL_1183:
      v1392 = *&v2854[v1388 - 2];
      if (v1392 != 0.0)
      {
        v1400 = fabs(v1392);
        v1401 = v1400 / v1392;
        *&v2854[v1388 - 2] = v1400;
        *(&v2847 + v1388 * 8 + 8) = *(&v2847 + v1388 * 8 + 8) * v1401;
        v1402 = vmulq_n_f64(*(v1391 - 6), v1401);
        *(v1391 - 4) = vmulq_n_f64(*(v1391 - 8), v1401);
        *(v1391 - 3) = v1402;
        v1403 = vmulq_n_f64(*(v1391 - 2), v1401);
        *(v1391 - 2) = vmulq_n_f64(*(v1391 - 4), v1401);
        *(v1391 - 1) = v1403;
        *v1391 = *v1391 * v1401;
        v1392 = v1400;
      }

LABEL_1176:
      v1389 = fmax(v1389, fmax(fabs(v1394), fabs(v1392)));
      ++v1388;
      v1391 += 9;
      v1390 += 6;
      if (v1388 != 9)
      {
        continue;
      }

      break;
    }

    v1404 = 0;
    v1405 = v1389 * 2.22044605e-16;
    v1406 = 7;
    v1407 = 9;
    while (2)
    {
      v1408 = v1406 + 1;
      if (v1406 == -1)
      {
LABEL_1201:
        v1417 = 0;
        if (v1406 != -1)
        {
          goto LABEL_1212;
        }

LABEL_1202:
        v1418 = *(&v2847 + v1408);
        if (v1418 < 0.0)
        {
          v1418 = -v1418;
          *(&v2847 + v1408) = v1418;
          v1419 = 9 * v1408;
          *&v2800[v1419] = vnegq_f64(*&v2800[v1419]);
          *&v2801[v1419] = vnegq_f64(*&v2801[v1419]);
          *&v2802[v1419] = vnegq_f64(*&v2802[v1419]);
          *&v2803[v1419] = vnegq_f64(*&v2803[v1419]);
          *&v2804[v1419] = -*&v2804[v1419];
        }

        if (v1406 <= 6)
        {
          v1420 = &v2805[9 * v1406];
          v1421 = v1406 - 7;
          v1422 = &v2924[12 * v1406];
          v1423 = &v2848 + v1406;
          do
          {
            v1424 = *v1423;
            if (v1418 >= *v1423)
            {
              break;
            }

            v1425 = *(v1420 + 5);
            v1426 = *(v1420 - 1);
            *(v1420 + 5) = *(v1420 - 2);
            v1427 = *(v1420 + 7);
            *(v1420 - 2) = v1425;
            *(v1420 - 1) = v1427;
            *(v1420 + 7) = v1426;
            v1428 = *(v1420 + 9);
            v1429 = *(v1420 + 1);
            *(v1420 + 9) = *v1420;
            v1430 = *(v1420 + 11);
            *v1420 = v1428;
            *(v1420 + 1) = v1430;
            *(v1420 + 11) = v1429;
            *&v1428 = v1420[4];
            v1420[4] = v1420[13];
            v1420[13] = v1428;
            v1431 = v1422[4];
            v1432 = v1422[-3];
            v1433 = v1422[-2];
            v1422[-3] = v1422[3];
            v1422[-2] = v1431;
            v1422[3] = v1432;
            v1422[4] = v1433;
            v1434 = v1422[5];
            v1435 = v1422[6];
            v1436 = *v1422;
            v1422[5] = v1422[-1];
            v1422[-1] = v1434;
            *v1422 = v1435;
            v1437 = v1422[8];
            v1438 = v1422[1];
            v366 = v1422[2];
            v1422[1] = v1422[7];
            v1422[2] = v1437;
            *(v1423 - 1) = v1424;
            *v1423++ = v1418;
            v1422[7] = v1438;
            v1422[8] = v366;
            v1422 += 6;
            v1420 += 9;
            *v1422 = v1436;
            _CF = __CFADD__(v1421++, 1);
          }

          while (!_CF);
        }

        v1404 = 0;
        --v1406;
        goto LABEL_1243;
      }

      v1409 = v1406;
      v1410 = *(&v2847 + v1406 + 1);
      while (1)
      {
        v1411 = fabs(*&v2854[v1409 - 2]);
        v1412 = fabs(v1410);
        v1410 = *(&v2847 + v1409);
        v1413 = (fabs(v1410) + v1412) * 2.22044605e-16;
        v1414 = v1411 > v1405 || v1404 < 21;
        v1415 = v1414;
        v1416 = v1411 > 1.00208418e-292 && v1411 > v1413;
        if (!v1416 || !v1415)
        {
          break;
        }

        if (--v1409 == -1)
        {
          goto LABEL_1201;
        }
      }

      v1417 = v1409 + 1;
      v2854[v1409 - 2] = 0;
      if (v1409 + 1 == v1408)
      {
        goto LABEL_1202;
      }

LABEL_1212:
      LODWORD(v1439) = v1407;
      if (v1407 <= v1417)
      {
        goto LABEL_1235;
      }

      v1440 = 0.0;
      if (v1407 > v1417 + 1)
      {
        v1440 = fabs(*&v2852[8 * v1407 + 8]) * 2.22044605e-16;
      }

      v1441 = fabs(*&v2846[8 * v1407 + 1280]);
      v1442 = v1441 > v1440 && v1441 > 1.00208418e-292;
      v1439 = v1407;
      if (!v1442)
      {
        goto LABEL_1234;
      }

      v1439 = v1407 - 1;
      if (v1417 == v1407 - 1)
      {
        goto LABEL_1236;
      }

      v1443 = &v2852[8 * v1407];
      v1444 = &v2846[8 * v1407 + 1272];
      v1445 = v1417 - v1407 + 1;
      while (1)
      {
        v1446 = 0.0;
        if (v1439 < v1407)
        {
          v1446 = fabs(v1443[1]);
        }

        if (v1439 > v1417 + 1)
        {
          v1446 = fabs(*v1443) + v1446;
        }

        v1447 = fabs(*v1444);
        if (v1447 <= v1446 * 2.22044605e-16 || v1447 <= 1.00208418e-292)
        {
          break;
        }

        --v1439;
        --v1443;
        --v1444;
        _CF = __CFADD__(v1445++, 1);
        if (_CF)
        {
          goto LABEL_1236;
        }
      }

LABEL_1234:
      *&v2846[8 * v1439 + 1280] = 0;
LABEL_1235:
      if (v1439 == v1417)
      {
LABEL_1236:
        v1449 = *(&v2847 + v1408);
        v1450 = *(&v2847 + v1406);
        v1451 = *&v2854[v1406 - 2];
        v1452 = *(&v2847 + v1417);
        v1453 = *&v2854[v1417 - 2];
        v1454 = fmax(fmax(fmax(fmax(fabs(v1449), fabs(v1450)), fabs(v1451)), fabs(v1452)), fabs(v1453));
        v1455 = v1449 * (1.0 / v1454);
        v1456 = v1451 * (1.0 / v1454);
        v1457 = (v1456 * v1456 + (v1450 * (1.0 / v1454) + v1455) * (v1450 * (1.0 / v1454) - v1455)) * 0.5;
        v1458 = v1455 * v1456 * (v1455 * v1456);
        if (v1458 != 0.0 || (v1459 = 0.0, v1457 != 0.0))
        {
          v1460 = sqrt(v1458 + v1457 * v1457);
          if (v1457 < 0.0)
          {
            v1460 = -v1460;
          }

          v1459 = v1458 / (v1460 + v1457);
        }

        v1461 = v1452 * (1.0 / v1454);
        v1462 = v1459 + (v1461 + v1455) * (v1461 - v1455);
        if (v1417 > v1406)
        {
LABEL_1242:
          *&v2854[v1406 - 2] = v1462;
          ++v1404;
          goto LABEL_1243;
        }

        v1495 = v1417 + 1;
        v1496 = &v2847 + v1495;
        v1497 = &v2800[9 * v1495];
        v1498 = &v2854[v1495 - 2];
        v1499 = &v2921[12 * v1495];
        v1500 = v1495;
        v1501 = v1461 * v1453 / v1454;
        while (2)
        {
          v1521 = fabs(v1462);
          v1522 = fabs(v1501);
          if (v1522 + v1521 == 0.0)
          {
            v1523 = 1.0;
            v1524 = 0.0;
            v1525 = 0.0;
            if (v1500 > v1495)
            {
              goto LABEL_1275;
            }
          }

          else
          {
            if (v1521 <= v1522)
            {
              v1543 = v1501;
            }

            else
            {
              v1543 = v1462;
            }

            v1544 = sqrt(v1522 / (v1522 + v1521) * (v1522 / (v1522 + v1521)) + v1521 / (v1522 + v1521) * (v1521 / (v1522 + v1521))) * (v1522 + v1521);
            if (v1543 >= 0.0)
            {
              v1524 = v1544;
            }

            else
            {
              v1524 = -v1544;
            }

            v1523 = v1462 / v1524;
            v1525 = v1501 / v1524;
            if (v1500 > v1495)
            {
LABEL_1275:
              *(v1498 - 2) = v1524;
            }
          }

          v1526 = *(v1498 - 1);
          v1528 = *(v1496 - 1);
          v1527 = *v1496;
          v1529 = -(v1528 * v1525 - v1526 * v1523);
          *(v1498 - 1) = v1529;
          v1530 = v1527 * v1525;
          v1531 = *(v1497 - 72);
          v1532 = v1497[1];
          v1533 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1531, v1525)), *v1497, v1523);
          *(v1497 - 72) = vmlaq_n_f64(vmulq_n_f64(*v1497, v1525), v1531, v1523);
          v1534 = *(v1497 - 56);
          *v1497 = v1533;
          v1497[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1534, v1525)), v1532, v1523);
          *(v1497 - 56) = vmlaq_n_f64(vmulq_n_f64(v1532, v1525), v1534, v1523);
          v1535 = *(v1497 - 40);
          v1536 = v1497[2];
          v1537 = v1497[3];
          v1538 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1535, v1525)), v1536, v1523);
          *(v1497 - 40) = vmlaq_n_f64(vmulq_n_f64(v1536, v1525), v1535, v1523);
          v1539 = *(v1497 - 24);
          v1497[2] = v1538;
          v1497[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1539, v1525)), v1537, v1523);
          *(v1497 - 24) = vmlaq_n_f64(vmulq_n_f64(v1537, v1525), v1539, v1523);
          v1539.f64[0] = v1497[4].f64[0];
          v1538.f64[0] = v1497[-1].f64[1];
          v1497[4].f64[0] = -(v1538.f64[0] * v1525 - v1539.f64[0] * v1523);
          v1497[-1].f64[1] = v1539.f64[0] * v1525 + v1538.f64[0] * v1523;
          v1540 = v1526 * v1525 + v1528 * v1523;
          v1541 = fabs(v1540);
          v1542 = fabs(v1530);
          if (v1542 + v1541 == 0.0)
          {
            v1505 = 1.0;
            v1504 = 0.0;
            v1506 = 0.0;
          }

          else
          {
            if (v1541 <= v1542)
            {
              v1502 = v1530;
            }

            else
            {
              v1502 = v1540;
            }

            v1503 = sqrt(v1542 / (v1542 + v1541) * (v1542 / (v1542 + v1541)) + v1541 / (v1542 + v1541) * (v1541 / (v1542 + v1541))) * (v1542 + v1541);
            v1504 = -v1503;
            if (v1502 >= 0.0)
            {
              v1504 = v1503;
            }

            v1505 = v1540 / v1504;
            v1506 = v1530 / v1504;
          }

          v1507 = v1527 * v1523;
          v1462 = v1505 * v1529 + v1506 * v1507;
          *(v1496 - 1) = v1504;
          *v1496 = -(v1506 * v1529 - v1505 * v1507);
          v1508 = *v1498;
          *v1498 = *v1498 * v1505;
          ++v1498;
          v1509 = v1499[-6];
          v1510 = v1499[-5];
          v1511 = v1499[1];
          v1512 = vmlaq_n_f64(vmulq_n_f64(*v1499, v1506), v1509, v1505);
          *v1499 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1509, v1506)), *v1499, v1505);
          v1499[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1510, v1506)), v1511, v1505);
          v1499[-6] = v1512;
          v1499[-5] = vmlaq_n_f64(vmulq_n_f64(v1511, v1506), v1510, v1505);
          v1513 = v1499[-4];
          v1514 = v1499[-3];
          v1515 = v1499[2];
          v1516 = v1499[3];
          v1499[2] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1513, v1506)), v1515, v1505);
          v1499[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1514, v1506)), v1516, v1505);
          v1499[-4] = vmlaq_n_f64(vmulq_n_f64(v1515, v1506), v1513, v1505);
          v1499[-3] = vmlaq_n_f64(vmulq_n_f64(v1516, v1506), v1514, v1505);
          v1517 = v1499[-2];
          v1518 = v1499[-1];
          v1519 = v1499[4];
          v1520 = v1499[5];
          v366 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1517, v1506)), v1519, v1505);
          v391 = vmlaq_n_f64(vmulq_n_f64(v1519, v1506), v1517, v1505);
          v1499[4] = v366;
          v1499[5] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1518, v1506)), v1520, v1505);
          v1501 = v1508 * v1506;
          v1499[-2] = v391;
          v1499[-1] = vmlaq_n_f64(vmulq_n_f64(v1520, v1506), v1518, v1505);
          ++v1496;
          v1497 = (v1497 + 72);
          v1499 += 6;
          v1414 = v1500++ <= v1406;
          if (!v1414)
          {
            goto LABEL_1242;
          }

          continue;
        }
      }

      if (v1439 == v1407)
      {
        v1463 = *&v2854[v1406 - 2];
        v2854[v1406 - 2] = 0;
        if (v1406 >= v1417)
        {
          v1464 = v1406;
          v1465 = 9 * v1408 + 1;
          v1466 = &v2799[8 * v1465 + 2680];
          v1467 = &v2802[9 * v1406];
          do
          {
            v1486 = *(&v2847 + v1464);
            v1487 = fabs(v1486);
            v1488 = fabs(v1463);
            if (v1487 + v1488 == 0.0)
            {
              v1489 = 1.0;
              v1490 = 0.0;
              v1463 = 0.0;
              v1491 = 0.0;
            }

            else
            {
              if (v1487 <= v1488)
              {
                v1492 = v1463;
              }

              else
              {
                v1492 = *(&v2847 + v1464);
              }

              v1493 = sqrt(v1488 / (v1487 + v1488) * (v1488 / (v1487 + v1488)) + v1487 / (v1487 + v1488) * (v1487 / (v1487 + v1488))) * (v1487 + v1488);
              v1490 = -v1493;
              if (v1492 >= 0.0)
              {
                v1490 = v1493;
              }

              v1414 = v1487 <= v1488;
              v1489 = v1486 / v1490;
              v1491 = v1463 / v1490;
              if (v1414)
              {
                if (v1489 == 0.0)
                {
                  v1463 = 1.0;
                }

                else
                {
                  v1463 = 1.0 / v1489;
                }
              }

              else
              {
                v1463 = v1463 / v1490;
              }
            }

            *(&v2847 + v1464) = v1490;
            if (v1464 + 1 > v1417 + 1)
            {
              v1494 = *&v2852[8 * v1464 + 16];
              v1463 = -(v1491 * v1494);
              *&v2852[8 * v1464 + 16] = v1494 * v1489;
            }

            v1468 = *v1466;
            v1469 = *(v1467 - 4);
            *v1466 = -(v1469 * v1491 - *v1466 * v1489);
            *(v1467 - 4) = v1468 * v1491 + v1469 * v1489;
            v1470 = *&v2800[v1465];
            v1471 = *(v1467 - 3);
            *&v2800[v1465] = -(v1471 * v1491 - v1470 * v1489);
            *(v1467 - 3) = v1470 * v1491 + v1471 * v1489;
            v1472 = v1466[2];
            v1473 = *(v1467 - 2);
            v1466[2] = -(v1473 * v1491 - v1472 * v1489);
            *(v1467 - 2) = v1472 * v1491 + v1473 * v1489;
            v1474 = v1466[3];
            v1475 = *(v1467 - 1);
            v1466[3] = -(v1475 * v1491 - v1474 * v1489);
            *(v1467 - 1) = v1474 * v1491 + v1475 * v1489;
            v1476 = v1466[4];
            v1477 = *v1467;
            v1466[4] = -(*v1467 * v1491 - v1476 * v1489);
            *v1467 = v1476 * v1491 + v1477 * v1489;
            v1478 = v1466[5];
            v1479 = v1467[1];
            v1466[5] = -(v1479 * v1491 - v1478 * v1489);
            v1467[1] = v1478 * v1491 + v1479 * v1489;
            v1480 = v1466[6];
            v1481 = v1467[2];
            v1466[6] = -(v1481 * v1491 - v1480 * v1489);
            v1467[2] = v1480 * v1491 + v1481 * v1489;
            v1482 = v1466[7];
            v1483 = v1467[3];
            v1466[7] = -(v1483 * v1491 - v1482 * v1489);
            v1467[3] = v1482 * v1491 + v1483 * v1489;
            v1484 = v1466[8];
            v1485 = v1467[4];
            v1466[8] = -(v1485 * v1491 - v1484 * v1489);
            v1467[4] = v1484 * v1491 + v1485 * v1489;
            v1467 -= 9;
            v1414 = v1464-- <= v1417;
          }

          while (!v1414);
        }
      }

      else
      {
        v1545 = v1439 - 1;
        v1546 = *&v2854[v1545 - 2];
        v2854[v1545 - 2] = 0;
        if (v1439 < v1407)
        {
          v1547 = &v2921[((12 * v1545) | 1) - 1];
          v1548 = v1407 - v1439;
          v1549 = v1439;
          v1550 = (&v2847 + v1549 * 8);
          v1551 = &v2854[v1549 - 2];
          v1552 = &v2923[12 * v1439];
          do
          {
            v1570 = fabs(*v1550);
            v1571 = fabs(v1546);
            if (v1570 + v1571 == 0.0)
            {
              v1556 = 1.0;
              v1555 = 0.0;
              v1557 = 0.0;
            }

            else
            {
              if (v1570 <= v1571)
              {
                v1553 = v1546;
              }

              else
              {
                v1553 = *v1550;
              }

              v1554 = sqrt(v1571 / (v1570 + v1571) * (v1571 / (v1570 + v1571)) + v1570 / (v1570 + v1571) * (v1570 / (v1570 + v1571))) * (v1570 + v1571);
              if (v1553 >= 0.0)
              {
                v1555 = v1554;
              }

              else
              {
                v1555 = -v1554;
              }

              v1556 = *v1550 / v1555;
              v1557 = v1546 / v1555;
            }

            *v1550++ = v1555;
            v1546 = -(v1557 * *v1551);
            *v1551 = *v1551 * v1556;
            ++v1551;
            v1558 = *v1547;
            v1559 = v1552[-3];
            *v1547 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1559, v1557)), *v1547, v1556);
            v1552[-3] = vmlaq_n_f64(vmulq_n_f64(v1558, v1557), v1559, v1556);
            v1560 = v1547[1];
            v1561 = v1552[-2];
            v1547[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1561, v1557)), v1560, v1556);
            v1552[-2] = vmlaq_n_f64(vmulq_n_f64(v1560, v1557), v1561, v1556);
            v1562 = v1547[2];
            v1563 = v1552[-1];
            v1547[2] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1563, v1557)), v1562, v1556);
            v1552[-1] = vmlaq_n_f64(vmulq_n_f64(v1562, v1557), v1563, v1556);
            v1564 = v1547[3];
            v1565 = *v1552;
            v1547[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(*v1552, v1557)), v1564, v1556);
            *v1552 = vmlaq_n_f64(vmulq_n_f64(v1564, v1557), v1565, v1556);
            v1566 = v1547[4];
            v1567 = v1552[1];
            v1547[4] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1567, v1557)), v1566, v1556);
            v1552[1] = vmlaq_n_f64(vmulq_n_f64(v1566, v1557), v1567, v1556);
            v1568 = v1547[5];
            v1569 = v1552[2];
            v1547[5] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1569, v1557)), v1568, v1556);
            v1552[2] = vmlaq_n_f64(vmulq_n_f64(v1568, v1557), v1569, v1556);
            v1552 += 6;
            --v1548;
          }

          while (v1548);
        }
      }

LABEL_1243:
      if (v1406 >= -1)
      {
        v1407 = v1406 + 2;
        if (v1404 < 75)
        {
          continue;
        }
      }

      break;
    }

    v1328 = v2807;
    v1327 = v2808;
    v1326 = v2809;
    v1325 = v2810;
    v1324 = v2811;
    v1323 = v2812;
    v365.i64[0] = v2813;
    v1322 = v2814;
    v1321 = v2815;
LABEL_1299:
    v1572 = fabsf(v2825.f32[0]);
    v1573 = fabsf(v2825.f32[1]);
    if (v1573 <= v1572)
    {
      v1574 = v1572;
    }

    else
    {
      v1574 = v1573;
    }

    v1575 = fabsf(v2825.f32[2]);
    if (v1575 <= v1574)
    {
      v1576 = v1573 > v1572;
    }

    else
    {
      v1576 = 2;
    }

    *&v2937[0] = v1328;
    *(&v2937[0] + 1) = v1325;
    *&v2937[1] = v365.i64[0];
    *(&v2937[1] + 1) = v1327;
    *&v2937[2] = v1324;
    *(&v2937[2] + 1) = v1322;
    *&v2937[3] = v1326;
    *(&v2937[3] + 1) = v1323;
    v2914 = v2825;
    v2915 = v2826;
    *&v2916 = v2827;
    v1577 = v1573 <= v1572 || v1575 > v1574;
    v1578 = 2 * (v1575 <= v1574);
    v1579 = *(&v2825 | (4 * v1577)) / *(&v2825 | (4 * v1576));
    *(&v2914 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v1577 & 1))) = v1579;
    v1580 = (&v2914 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v1578 >> 1) & 1)));
    v1581 = v1084 / *(&v2914 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1576 & 3)));
    v1582 = *v1580 * v1581;
    *v1580 = v1582;
    v1583 = v2914.f32[(v1576 + 3)];
    v1584 = 4;
    if (!v1577)
    {
      v1584 = 3;
    }

    v1585 = v2914.f32[v1584] - (v1583 * v1579);
    v2914.f32[v1584] = v1585;
    v1586 = v2914.f32[(v1578 + 3)] - (v1583 * v1582);
    v2914.f32[(v1578 + 3)] = v1586;
    v1587 = v2914.f32[(v1576 + 6)];
    v1588 = 6;
    if (v1577)
    {
      v1588 = 7;
    }

    v2914.f32[v1588] = v2914.f32[v1588] - (v1587 * v1579);
    v2914.f32[(v1578 + 6)] = v2914.f32[(v1578 + 6)] - (v1587 * v1582);
    v1589 = fabsf(v1586);
    v1590 = fabsf(v1585);
    if (v1589 <= v1590)
    {
      v1591 = v1577;
    }

    else
    {
      v1591 = v1578;
    }

    if (v1589 <= v1590)
    {
      v1577 = v1578;
    }

    else
    {
      v1577 = v1577;
    }

    v1592 = v1084 / v2914.f32[(v1591 + 3)];
    v1593 = v2914.f32[(v1577 + 3)] * v1592;
    v2914.f32[(v1577 + 3)] = v1593;
    v1594 = v2914.f32[(v1591 + 6)];
    v1595 = v2914.f32[(v1577 + 6)];
    *&v2937[4] = v1321;
    v1596 = v1595 - (v1594 * v1593);
    v1597 = *(v2937 + v1576);
    v1598 = *(v2937 + v1591);
    v1599 = *(&v2914 | (4 * v1591));
    v1600 = v1598 - (v1599 * v1597);
    v1601 = *(v2937 + v1577);
    v1602 = *(&v2914 | (4 * v1577));
    v1603 = v1601 - ((v1600 * v1593) + (v1602 * v1597));
    v1604 = *(v2937 + (v1576 + 3));
    v1605 = *(v2937 + (v1591 + 3));
    v1606 = v1605 - (v1599 * v1604);
    v1607 = *(v2937 + (v1577 + 3));
    v1608 = v1607 - ((v1602 * v1604) + (v1606 * v1593));
    v366.i64[0] = *(v2937 + (v1576 + 6));
    v368.i64[0] = *(v2937 + (v1591 + 6));
    v1609 = *v366.i64;
    v366.f32[0] = *v368.i64;
    v366.f32[0] = v366.f32[0] - (v1599 * v1609);
    v391.i64[0] = *(v2937 + (v1577 + 6));
    v391.f32[0] = *v391.i64;
    v368.f32[0] = v1084 / v1596;
    *&v1610 = (v391.f32[0] - ((v1602 * v1609) + (v366.f32[0] * v1593))) * (v1084 / v1596);
    v366.f32[0] = (v366.f32[0] - (*&v1610 * v1594)) * v1592;
    v391.f32[0] = (v1609 - ((*&v1610 * v1587) + (v366.f32[0] * v1583))) * v1581;
    *v1611.f32 = v2757;
    v1612 = v2758;
    _V6.S[1] = v2759.i32[1];
    *v367.f32 = vrev64_s32(v2757);
    v1611.i64[1] = __PAIR64__(v2758.u32[1], v2757.u32[0]);
    v367.i64[1] = __PAIR64__(v2758.u32[2], v367.u32[0]);
    v369.i64[0] = __PAIR64__(v2758.u32[1], v2758.u32[2]);
    *&v369.u32[2] = vrev64_s32(v2759);
    v1614 = vzip2q_s32(v369, vtrn1q_s32(v2758, v369));
    v1614.i32[0] = v2758.i32[1];
    v370.i32[0] = vdup_laneq_s32(v2758, 3).u32[0];
    v1612.i32[1] = v2758.i32[3];
    v371 = vzip1q_s32(v1612, v1612);
    v371.i32[2] = v2758.i32[0];
    *&v1615 = v1603 * v368.f32[0];
    v1616.f32[0] = (v1600 - (*&v1615 * v1594)) * v1592;
    v1612.i64[0] = __PAIR64__(v366.u32[0], v391.u32[0]);
    v1612.i64[1] = __PAIR64__(v391.u32[0], v1610);
    *&_S22 = v1608 * v368.f32[0];
    *&v1618 = (v1597 - ((*&v1615 * v1587) + (v1616.f32[0] * v1583))) * v1581;
    *&v1619 = (v1606 - (*&_S22 * v1594)) * v1592;
    v1620 = v1604 - ((*&_S22 * v1587) + (*&v1619 * v1583));
    v1621.i64[0] = __PAIR64__(v1619, v1618);
    *&v1622 = v1620 * v1581;
    v1621.i64[1] = __PAIR64__(v1618, v1615);
    v1623.i64[0] = __PAIR64__(v1616.u32[0], v1622);
    v1623.i64[1] = __PAIR64__(v1622, _S22);
    v435 = vmlaq_f32(vmlaq_f32(vmulq_f32(v1611, v1621), v1623, v367), v1612, v371);
    v1623.i64[0] = __PAIR64__(v1615, v1619);
    v1623.i64[1] = __PAIR64__(v1616.u32[0], v1622);
    v1616.i32[1] = _S22;
    v1616.i64[1] = __PAIR64__(v1619, v1618);
    _Q1 = vmlaq_f32(vmulq_f32(v369, v1623), v1616, v1614);
    v370.f32[1] = v2760;
    v432 = vzip1q_s32(v370, v370);
    v364.i64[0] = __PAIR64__(v1610, v366.u32[0]);
    v364.i64[1] = __PAIR64__(v366.u32[0], v391.u32[0]);
    v2825 = v435;
    v2826 = vmlaq_f32(_Q1, v364, v432);
    __asm { FMLA            S1, S22, V6.S[1] }

    v2827 = _Q1.f32[0] + (v2760 * *&v1610);
    _Q1 = v2826;
    v2766 = v2827;
    v2765 = v2826;
    v2764 = v435;
    v539 = 3;
LABEL_417:
    v2703 = v539;
    v540 = vdupq_n_s32(0x25800000u);
    v2644 = v540;
    v2663 = v539;
    if (v372 < 1)
    {
      v2748 = v539;
      v2749 = v372;
      v546 = v539;
    }

    else
    {
      v541 = 0;
      v542 = &v2792;
      v543 = v2785;
      v544 = v2799;
      do
      {
        *(v543 + 2) = *(v544 + 2);
        v540.i32[0] = *(v544 + 5);
        _Q1.f32[0] = fabsf(v540.f32[0]);
        *&v2768[4 * v541 - 4] = _Q1.f32[0];
        *v543 = *v544;
        v543 += 12;
        v545 = *(v544 + 12);
        ++v541;
        v542[2] = v540.f32[0];
        *v542 = v545;
        v542 += 3;
        v544 += v2633;
      }

      while (v372 != v541);
      v546 = v2663;
      v2748 = v2663;
      v2749 = v372;
      if (v2663 >= 1)
      {
        v547 = 0;
        v548 = v2785;
        do
        {
          v2724 = v548;
          v2732 = v547;
          v549 = &v2797[4 * v547 * v2663];
          bzero(v549, 4 * v2663);
          v546 = v2663;
          v372 = v2717;
          v540.f32[0] = *v549;
          v550 = &v2764.f32[2];
          v551 = v2724;
          v552 = v2703;
          do
          {
            _Q1.i32[0] = *v551;
            v432.f32[0] = *(v550 - 2);
            v549[1] = v549[1] + (*(v550 - 1) * *v551);
            v549[2] = v549[2] + (*v550 * _Q1.f32[0]);
            v540.f32[0] = v540.f32[0] + (v432.f32[0] * _Q1.f32[0]);
            ++v551;
            v550 += v2663;
            --v552;
          }

          while (v552);
          *v549 = v540.f32[0];
          v547 = v2732 + 1;
          v548 = v2724 + 12;
        }

        while (v2732 + 1 != v2717);
      }
    }

    v553 = 1.0;
    if (!v372 || !v546)
    {
      v584 = v546;
      if (v546 * v372 < 1)
      {
        if (v372 >= 1)
        {
          goto LABEL_455;
        }
      }

      else
      {
        bzero(v2781, 4 * (v546 * v372));
        v372 = v2717;
        v584 = v2663;
        if (v2717 >= 1)
        {
          goto LABEL_455;
        }
      }

LABEL_502:
      v620 = 0;
      v2699 = 0;
      v585.i64[0] = 0x101010101010101;
      v585.i64[1] = 0x101010101010101;
      v382 = 629145600;
      v586 = v2644;
      goto LABEL_524;
    }

    v554 = fabsf(v2764.f32[0]);
    v555 = fabsf(v2764.f32[1]);
    if (v555 <= v554)
    {
      v556 = v554;
    }

    else
    {
      v556 = v555;
    }

    v557 = fabsf(v2764.f32[2]);
    if (v557 <= v556)
    {
      v558 = v555 > v554;
    }

    else
    {
      v558 = 2;
    }

    v559.i32[1] = v2765.i32[1];
    v2928[0] = v2764;
    v2928[1] = v2765;
    *&v2928[2] = v2766;
    v560 = v555 <= v554 || v557 > v556;
    v561 = 2 * (v557 <= v556);
    v562 = *(&v2764 | (4 * v560)) / *(&v2764 | (4 * v558));
    *(v2928 & 0xFFFFFFFFFFFFFFFBLL | (4 * v560)) = v562;
    v563 = (v2928 & 0xFFFFFFFFFFFFFFF3 | (4 * (v558 & 3)));
    v564 = (v2928 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v561 >> 1) & 1)));
    v565 = *v564 / *v563;
    *v564 = v565;
    v566 = (v558 + 3);
    v567 = *(v2928 + v566);
    v568 = 12;
    if (v560)
    {
      v568 = 16;
    }

    v569 = *(v2928 + v568) - (v567 * v562);
    *(v2928 + v568) = v569;
    v570 = *(v2928 + (v561 + 3)) - (v567 * v565);
    *(v2928 + (v561 + 3)) = v570;
    v571 = (v558 + 6);
    v572 = *(v2928 + v571);
    v573 = 24;
    if (v560)
    {
      v573 = 28;
    }

    *(v2928 + v573) = *(v2928 + v573) - (v572 * v562);
    *(v2928 + (v561 + 6)) = *(v2928 + (v561 + 6)) - (v572 * v565);
    v574 = fabsf(v570);
    v575 = fabsf(v569);
    if (v574 <= v575)
    {
      v576 = v560;
    }

    else
    {
      v576 = v561;
    }

    if (v574 <= v575)
    {
      v561 = v561;
    }

    else
    {
      v561 = v560;
    }

    v577 = (v576 + 3);
    v578 = *(v2928 + (v561 + 3)) / *(v2928 + v577);
    *(v2928 + (v561 + 3)) = v578;
    v579 = (v576 + 6);
    v580 = *(v2928 + (v561 + 6)) - (*(v2928 + v579) * v578);
    *(v2928 + (v561 + 6)) = v580;
    if (v372 >= 1)
    {
      v559.i32[0] = *(v2928 & 0xFFFFFFFFFFFFFFF3 | (4 * (v576 & 3)));
      v432.i32[0] = *(v2928 + v579);
      v391.i32[0] = *(v2928 + v577);
      v581 = *(v2928 + v566);
      v366.f32[0] = *v563;
      v364.f32[0] = -*(v2928 & 0xFFFFFFFFFFFFFFF3 | (4 * (v561 & 3)));
      v365.f32[0] = -*(v2928 + v571);
      v582 = 1.0 / v580;
      if (v372 > 4)
      {
        v622 = &v2792 + v558;
        v623 = &v2792 + v576;
        v624 = vdupq_lane_s32(v559, 0);
        v625 = vdupq_lane_s32(*v364.f32, 0);
        v626 = vdupq_lane_s32(*v432.f32, 0);
        v627 = vdupq_lane_s32(*v365.f32, 0);
        v628 = &v2792 + v561;
        __asm { FMOV            V22.4S, #1.0 }

        LODWORD(v630) = vdivq_f32(_Q22, v391).u32[0];
        LODWORD(v631) = vdivq_f32(_Q22, v366).u32[0];
        v632 = v2937;
        v633 = v2639;
        do
        {
          v634 = vld3q_f32(v622);
          v622 += 12;
          v635 = vld3q_f32(v623);
          v623 += 12;
          v636 = vmlsq_f32(v635, v624, v634);
          v637 = vld3q_f32(v628);
          v628 += 12;
          v2960.val[2] = vmulq_n_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vmulq_n_f32(v636, v578)), v625, v634), v637), v582);
          v2960.val[1] = vmulq_n_f32(vmlsq_f32(v636, v626, v2960.val[2]), v630);
          v2960.val[0] = vmulq_n_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vmulq_n_f32(v2960.val[1], v581)), v627, v2960.val[2]), v634), v631);
          vst3q_f32(v632, v2960);
          v632 += 12;
          v633 -= 4;
        }

        while (v633);
        v583 = v2639;
        v553 = 1.0;
      }

      else
      {
        v583 = 0;
      }

      v638 = v553 / v391.f32[0];
      v639 = v372 - v583;
      v640 = 12 * v583;
      v641 = &v2792 + 3 * v583 + v558;
      v642 = &v2792 + 3 * v583 + v576;
      v643 = v2937 + 3 * v583 + 2;
      v644 = (&v2792 + 4 * v561 + v640);
      v645 = v553 / v366.f32[0];
      do
      {
        v646 = *v641;
        v641 += 3;
        v647 = v646;
        v648 = *v642;
        v642 += 3;
        v649 = v648 - (v647 * *v559.i32);
        v650 = *v644;
        v644 += 3;
        v651 = (v650 - ((v578 * v649) - (v647 * v364.f32[0]))) * v582;
        v652 = (v649 - (v651 * v432.f32[0])) * v638;
        *(v643 - 1) = v652;
        *v643 = v651;
        *(v643 - 2) = (v647 - ((v581 * v652) - (v651 * v365.f32[0]))) * v645;
        v643 += 3;
        --v639;
      }

      while (v639);
    }

    memcpy(v2781, v2937, 12 * v2717);
    v372 = v2717;
    v584 = 3;
    if (v2717 < 1)
    {
      goto LABEL_502;
    }

LABEL_455:
    v585.i64[0] = 0x101010101010101;
    v585.i64[1] = 0x101010101010101;
    v382 = 629145600;
    v586 = v2644;
    if (v372 < 4)
    {
      v587 = 0;
      goto LABEL_466;
    }

    if (v372 >= 0x20)
    {
      v589 = v2771;
      v590 = v2745;
      v591 = v2717 & 0xFFFFFFE0;
      do
      {
        v364 = *v589;
        v365 = v589[1];
        v366 = v589[3];
        v540 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v589[-4], v2644), vcgtq_f32(v589[-3], v2644)), vuzp1q_s16(vcgtq_f32(v589[-2], v2644), vcgtq_f32(v589[-1], v2644))), v585);
        v435 = vcgtq_f32(*v589, v2644);
        v432 = vuzp1q_s16(v435, vcgtq_f32(v365, v2644));
        _Q1 = vandq_s8(vuzp1q_s8(v432, vuzp1q_s16(vcgtq_f32(v589[2], v2644), vcgtq_f32(v366, v2644))), v585);
        v590[-1] = v540;
        *v590 = _Q1;
        v590 += 2;
        v589 += 8;
        v591 -= 32;
      }

      while (v591);
      if (v372 != v2634)
      {
        v587 = v2717 & 0xFFFFFFE0;
        v588 = v587;
        if ((v2717 & 0x1C) == 0)
        {
          goto LABEL_466;
        }

        goto LABEL_463;
      }
    }

    else
    {
      v588 = 0;
LABEL_463:
      v592 = v588 - (v2717 & 0xFFFFFFFC);
      v593 = &v2744[v588 + 9];
      v594 = &v2768[4 * v588 - 4];
      do
      {
        v595 = *v594++;
        v540 = vcgtq_f32(v595, v2644);
        *v540.f32 = vand_s8(vmovn_s32(v540), 0x1000100010001);
        *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
        *v593++ = v540.i32[0];
        v592 += 4;
      }

      while (v592);
      v587 = v2717 & 0xFFFFFFFC;
      if (v372 != v2626)
      {
LABEL_466:
        v596 = v372 - v587;
        v597 = &v2744[v587 + 9];
        v598 = &v2768[4 * v587 - 4];
        do
        {
          v599 = *v598++;
          v540.f32[0] = v599;
          _Q1.i32[0] = 629145600;
          *v597++ = v599 > 2.2204e-16;
          --v596;
        }

        while (v596);
      }
    }

    v600 = 0;
    v601 = 0;
    while (2)
    {
      if (!v2744[v600 + 9])
      {
        ++v600;
        goto LABEL_470;
      }

      __src[v601] = v600 + 1;
      v601 = (v601 + 1);
      if (v601 < v372)
      {
        ++v600;
LABEL_470:
        if (v600 >= v372)
        {
          break;
        }

        continue;
      }

      break;
    }

    v2725 = v584;
    if (v372 != 1)
    {
      if (v601 < 1)
      {
        v620 = 0;
        v2699 = 0;
        goto LABEL_524;
      }

      v603 = v601;
      v604 = v601;
      memcpy(&__dst, __src, 4 * v601);
      if (v604 == 1)
      {
        v602 = 0;
        m = 1;
        goto LABEL_480;
      }

      v602 = v603 & 0x7FFFFFFE;
      v653 = v2751;
      v654 = v2768;
      v655 = v602;
      do
      {
        v656 = *(&v2792 + 3 * *v653 - 1);
        *(v654 - 1) = *(&v2792 + 3 * *(v653 - 1) - 1);
        *v654 = v656;
        v654 += 2;
        v653 += 2;
        v655 -= 2;
      }

      while (v655);
      for (m = 0; v603 != v602; ++v602)
      {
LABEL_480:
        *&v2768[4 * v602 - 4] = *(&v2792 + 3 * *&v2751[4 * v602 - 4] - 1);
      }

      if (v604 <= 7)
      {
        v605 = 0;
        goto LABEL_486;
      }

      v605 = v603 & 0x7FFFFFF8;
      v606 = v2935;
      v607 = v2769;
      v608 = v605;
      do
      {
        v540 = v607[-1];
        v2945.val[0] = *v607;
        v609 = v540;
        v610 = v540;
        v2945.val[1] = *v607;
        v2945.val[2] = *v607;
        v611 = v606 + 24;
        vst3q_f32(v606, *v540.f32);
        v612 = v606 + 12;
        vst3q_f32(v612, v2945);
        v607 += 2;
        v606 = v611;
        v608 -= 8;
      }

      while (v608);
      if (v605 != v603)
      {
LABEL_486:
        v613 = v603 - v605;
        v614 = &v2768[4 * v605 - 4];
        v615 = &v2935[3 * v605];
        do
        {
          v616 = *v614++;
          v540.i32[0] = v616;
          v609 = vdupq_lane_s32(*v540.f32, 0);
          *(v615 + 2) = v616;
          *v615 = v609.i64[0];
          v615 += 3;
          --v613;
        }

        while (v613);
      }

      v617 = 0;
      for (n = 0; n != v603; ++n)
      {
        v619 = 3 * *&v2751[4 * n - 4];
        v540.i64[0] = *&v2935[v617];
        v540.f32[2] = v2935[v617 + 2];
        v609.f32[0] = *(&v2792 + v619 - 3);
        v609.f32[1] = *(&v2792 + v619 - 2);
        v609.f32[2] = *(&v2792 + v619 - 1);
        v540 = vdivq_f32(v609, v540);
        *&v2783[v617 * 4 + 8] = v540.i32[2];
        *&v2783[v617 * 4] = v540.i64[0];
        v617 += 3;
      }

      memcpy(&v2792, v2783, 4 * (3 * v604));
      v620 = v604;
      if (v604 <= 3)
      {
        v621 = 0;
        v372 = v2717;
        v585.i64[0] = 0x101010101010101;
        v585.i64[1] = 0x101010101010101;
        v382 = 629145600;
        v586 = v2644;
        v584 = v2725;
        goto LABEL_514;
      }

      v372 = v2717;
      v585.i64[0] = 0x101010101010101;
      v585.i64[1] = 0x101010101010101;
      v382 = 629145600;
      v586 = v2644;
      v584 = v2725;
      if (v604 >= 0x20)
      {
        v621 = v603 & 0x7FFFFFE0;
        v657 = v2752;
        v658 = v2747;
        v659 = v621;
        do
        {
          v660 = v657[-1].val[0];
          v661 = v657[-1].val[1];
          v432 = v657[-1].val[2];
          v435 = v657[-1].val[3];
          v364.i32[1] = 471340048;
          v540 = vqtbl4q_s8(*(&v432 - 2), xmmword_2247A4600);
          _Q1 = vqtbl4q_s8(*v657, xmmword_2247A4600);
          v658[-1] = v540;
          *v658 = _Q1;
          v658 += 2;
          v657 += 2;
          v659 -= 32;
        }

        while (v659);
        if (v621 != v603)
        {
          if ((v603 & 0x1C) == 0)
          {
            goto LABEL_514;
          }

          goto LABEL_511;
        }
      }

      else
      {
        v621 = 0;
LABEL_511:
        v662 = v621;
        v621 = v603 & 0x7FFFFFFC;
        v663 = v662 - v621;
        v664 = &v2745[v662 + 96];
        v665 = &v2751[4 * v662 - 4];
        do
        {
          v666 = *v665++;
          v540.i64[1] = v666.i64[1];
          *v540.f32 = vmovn_s32(v666);
          *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
          *v664++ = v540.i32[0];
          v663 += 4;
        }

        while (v663);
        if (v621 != v603)
        {
LABEL_514:
          v667 = v603 - v621;
          v668 = &v2745[v621 + 96];
          v669 = &v2751[4 * v621 - 4];
          do
          {
            v670 = *v669++;
            *v668++ = v670;
            --v667;
          }

          while (v667);
        }
      }

      if (m)
      {
        v671 = 0;
        goto LABEL_521;
      }

      v671 = v603 & 0x7FFFFFFE;
      v672 = v2746;
      v673 = v671;
      do
      {
        v674 = &v2792 + 3 * *v672;
        *(&v2792 + 3 * *(v672 - 1) - 1) = 1.0;
        *(v674 - 1) = 1.0;
        v672 += 2;
        v673 -= 2;
      }

      while (v673);
      if (v671 != v603)
      {
LABEL_521:
        v675 = v603 - v671;
        v676 = &v2745[v671 + 96];
        do
        {
          v677 = *v676++;
          *(&v2792 + 3 * v677 - 1) = 1.0;
          --v675;
        }

        while (v675);
      }

      v2699 = 1;
      goto LABEL_524;
    }

    if (v601)
    {
      v602 = 0;
      __dst = __src[0];
      v603 = 1;
      m = 1;
      v604 = 1;
      goto LABEL_480;
    }

    v620 = 0;
    v2699 = 0;
LABEL_524:
    v678 = v2749;
    v2710 = v2748;
    v679 = v2748;
    v2704 = v620;
    v2726 = v584;
    if (v2749 < 1)
    {
      goto LABEL_561;
    }

    if (v2749 < 8 || v2748 != 1)
    {
      v681 = 0;
      goto LABEL_533;
    }

    v681 = v2749 & 0x7FFFFFF8;
    v682 = v2798;
    v683 = v2769;
    v684 = v681;
    do
    {
      v540 = vabsq_f32(v682[-1]);
      _Q1 = vabsq_f32(*v682);
      v683[-1] = v540;
      *v683 = _Q1;
      v683 += 2;
      v682 += 2;
      v684 -= 8;
    }

    while (v684);
    if (v681 != v678)
    {
LABEL_533:
      v685 = &v2768[4 * v681 - 4];
      v686 = v678 - v681;
      v687 = v2710 + v2710 * v681 - 1;
      do
      {
        *v685++ = fabsf(*&v2797[4 * v687]);
        v687 += v679;
        --v686;
      }

      while (v686);
    }

    if (v678 <= 3)
    {
      v688 = 0;
      goto LABEL_546;
    }

    if (v678 >= 0x20)
    {
      v688 = v678 & 0x7FFFFFE0;
      v689 = v2771;
      v690 = v2745;
      v691 = v688;
      do
      {
        v364 = *v689;
        v365 = v689[1];
        v366 = v689[3];
        v540 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v689[-4], v586), vcgtq_f32(v689[-3], v586)), vuzp1q_s16(vcgtq_f32(v689[-2], v586), vcgtq_f32(v689[-1], v586))), v585);
        v435 = vcgtq_f32(*v689, v586);
        v432 = vuzp1q_s16(v435, vcgtq_f32(v365, v586));
        _Q1 = vandq_s8(vuzp1q_s8(v432, vuzp1q_s16(vcgtq_f32(v689[2], v586), vcgtq_f32(v366, v586))), v585);
        v690[-1] = v540;
        *v690 = _Q1;
        v690 += 2;
        v689 += 8;
        v691 -= 32;
      }

      while (v691);
      if (v688 != v678)
      {
        if ((v678 & 0x1C) == 0)
        {
          goto LABEL_546;
        }

        goto LABEL_543;
      }
    }

    else
    {
      v688 = 0;
LABEL_543:
      v692 = v688;
      v688 = v678 & 0x7FFFFFFC;
      v693 = v692 - v688;
      v694 = &v2744[v692 + 9];
      v695 = &v2768[4 * v692 - 4];
      do
      {
        v696 = *v695++;
        v540 = vcgtq_f32(v696, v586);
        *v540.f32 = vand_s8(vmovn_s32(v540), 0x1000100010001);
        *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
        *v694++ = v540.i32[0];
        v693 += 4;
      }

      while (v693);
      if (v688 != v678)
      {
LABEL_546:
        v697 = v678 - v688;
        v698 = &v2744[v688 + 9];
        v699 = &v2768[4 * v688 - 4];
        do
        {
          v700 = *v699++;
          v540.f32[0] = v700;
          _Q1.i32[0] = 629145600;
          *v698++ = v700 > 2.2204e-16;
          --v697;
        }

        while (v697);
      }
    }

    v701 = 0;
    v702 = 0;
    while (2)
    {
      if (!v2744[v701 + 9])
      {
        ++v701;
LABEL_550:
        if (v701 >= v678)
        {
          goto LABEL_555;
        }

        continue;
      }

      break;
    }

    __src[v702] = v701 + 1;
    v703 = v702 + 1 < v678;
    if (v702 + 1 < v678)
    {
      ++v701;
    }

    v702 = (v702 + 1);
    if (v703)
    {
      goto LABEL_550;
    }

LABEL_555:
    v704 = v679;
    if (v678 == 1)
    {
      if (v702)
      {
        v705 = 0;
        __dst = __src[0];
        v702 = 1;
        v706 = 1;
        v2693 = 1;
        v707 = v2710;
        goto LABEL_567;
      }

LABEL_561:
      v708 = v679;
      if (v679 == v708)
      {
        v2749 = 0;
      }

      else
      {
        binary_expand_op(v2797, &v2748, &__dst, 0, v2935, v708, 0, *v540.i64, *_Q1.i64, v432);
        v584 = v2726;
        v620 = v2704;
        v586 = v2644;
        v382 = 629145600;
        v585.i64[0] = 0x101010101010101;
        v585.i64[1] = 0x101010101010101;
        v372 = v2717;
      }

      goto LABEL_615;
    }

    if (v702 < 1)
    {
      goto LABEL_561;
    }

    memcpy(&__dst, __src, 4 * v702);
    if (v702 == 1)
    {
      v705 = 0;
      v2693 = 1;
      v585.i64[0] = 0x101010101010101;
      v585.i64[1] = 0x101010101010101;
      v586 = v2644;
      v620 = v2704;
      v707 = v2710;
      v679 = v704;
      v706 = 1;
      goto LABEL_567;
    }

    v706 = v702;
    v705 = v702 & 0x7FFFFFFE;
    v709 = v2751;
    v710 = v2775;
    v711 = v705;
    v707 = v2710;
    v679 = v704;
    do
    {
      v540.i32[0] = *&v2797[4 * *(v709 - 1) * v704 - 4];
      _Q1.i32[0] = *&v2797[4 * *v709 * v704 - 4];
      *(v710 - 1) = v540.i32[0];
      *v710 = _Q1.i32[0];
      v710 += 2;
      v709 += 2;
      v711 -= 2;
    }

    while (v711);
    v2693 = 0;
    v585.i64[0] = 0x101010101010101;
    v585.i64[1] = 0x101010101010101;
    v586 = v2644;
    v620 = v2704;
    if (v705 != v702)
    {
      do
      {
LABEL_567:
        v540.i32[0] = *&v2797[4 * *&v2751[4 * v705 - 4] * v707 - 4];
        *&v2775[4 * v705++ - 4] = v540.f32[0];
      }

      while (v706 != v705);
    }

    if (v679 >= 1)
    {
      v712 = 0;
      v713 = 4 * v679;
      v714 = v2935;
      v715 = v2936;
      do
      {
        v540.f32[0] = *&v2775[4 * v712 - 4];
        if (v707 >= 8)
        {
          _Q1 = vdupq_lane_s32(*v540.f32, 0);
          v717 = v715;
          v718 = v679 & 0x7FFFFFF8;
          do
          {
            v717[-1] = _Q1;
            *v717 = _Q1;
            v717 += 2;
            v718 -= 8;
          }

          while (v718);
          v716 = v679 & 0x7FFFFFF8;
          if (v716 == v679)
          {
            goto LABEL_570;
          }
        }

        else
        {
          v716 = 0;
        }

        v719 = v679 - v716;
        v720 = &v714[v716];
        do
        {
          *v720++ = v540.f32[0];
          --v719;
        }

        while (v719);
LABEL_570:
        ++v712;
        v715 = (v715 + v713);
        v714 = (v714 + v713);
      }

      while (v712 != v706);
    }

    v2734 = v706;
    v721 = v679;
    if (v707 != v721)
    {
      binary_expand_op(v2797, &v2748, &__dst, v702, v2935, v721, v702, *v540.i64, *_Q1.i64, v432);
      goto LABEL_594;
    }

    v722 = 0;
    v723 = 0;
    v724 = v679 & 0x7FFFFFF8;
    v725 = 4 * v707;
    v726 = v2936;
    v727 = &v2784;
    while (2)
    {
      if (v679 >= 1)
      {
        v728 = (*&v2751[4 * v723 - 4] - 1) * v704;
        if (v704 < 8)
        {
          v729 = 0;
          goto LABEL_588;
        }

        v730 = v726;
        v731 = v727;
        v732 = v724;
        v733 = &v2798[v728];
        do
        {
          v432 = v730[-1];
          v435 = *v730;
          v540 = vdivq_f32(v733[-1], v432);
          _Q1 = vdivq_f32(*v733, *v730);
          v731[-1] = v540;
          *v731 = _Q1;
          v733 += 2;
          v731 += 2;
          v730 += 2;
          v732 -= 8;
        }

        while (v732);
        v729 = v724;
        if (v724 != v704)
        {
LABEL_588:
          v734 = v704 - v729;
          v735 = v729 + v722;
          v736 = &v2783[v735 * 4];
          v737 = &v2935[v735];
          v738 = &v2797[4 * v729 + 4 * v728];
          do
          {
            v739 = *v738;
            v738 += 4;
            v740 = v739;
            v741 = *v737++;
            *v736++ = v740 / v741;
            --v734;
          }

          while (v734);
        }
      }

      ++v723;
      v727 = (v727 + v725);
      v726 = (v726 + v725);
      v722 += v707;
      LODWORD(v679) = v704;
      if (v723 != v2734)
      {
        continue;
      }

      break;
    }

    v2749 = v702;
    if (v702 * v704 > 0)
    {
      memcpy(v2797, v2783, 4 * (v702 * v704));
LABEL_594:
      v620 = v2704;
      v586 = v2644;
      v585.i64[0] = 0x101010101010101;
      v585.i64[1] = 0x101010101010101;
    }

    if (v702 <= 3)
    {
      v742 = 0;
      v372 = v2717;
      v382 = 629145600;
      v584 = v2726;
      v743 = v2734;
      goto LABEL_606;
    }

    v372 = v2717;
    v382 = 629145600;
    v584 = v2726;
    v743 = v2734;
    if (v702 >= 0x20)
    {
      v742 = v2734 & 0x7FFFFFE0;
      v744 = v2752;
      v745 = v2747;
      v746 = v742;
      do
      {
        v747 = v744[-1].val[0];
        v748 = v744[-1].val[1];
        v432 = v744[-1].val[2];
        v435 = v744[-1].val[3];
        v364.i32[1] = 471340048;
        v540 = vqtbl4q_s8(*(&v432 - 2), xmmword_2247A4600);
        _Q1 = vqtbl4q_s8(*v744, xmmword_2247A4600);
        v745[-1] = v540;
        *v745 = _Q1;
        v745 += 2;
        v744 += 2;
        v746 -= 32;
      }

      while (v746);
      if (v742 != v2734)
      {
        if ((v2734 & 0x1C) == 0)
        {
          goto LABEL_606;
        }

        goto LABEL_603;
      }
    }

    else
    {
      v742 = 0;
LABEL_603:
      v749 = v742;
      v742 = v2734 & 0x7FFFFFFC;
      v750 = v749 - v742;
      v751 = &v2745[v749 + 96];
      v752 = &v2751[4 * v749 - 4];
      do
      {
        v753 = *v752++;
        v540.i64[1] = v753.i64[1];
        *v540.f32 = vmovn_s32(v753);
        *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
        *v751++ = v540.i32[0];
        v750 += 4;
      }

      while (v750);
      if (v742 != v2734)
      {
LABEL_606:
        v754 = v743 - v742;
        v755 = &v2745[v742 + 96];
        v756 = &v2751[4 * v742 - 4];
        do
        {
          v757 = *v756++;
          *v755++ = v757;
          --v754;
        }

        while (v754);
      }
    }

    v758 = v2748;
    v759 = v2710 - 1;
    if (v2693)
    {
      v760 = 0;
      goto LABEL_613;
    }

    v760 = v743 & 0x7FFFFFFE;
    v761 = v2746;
    v762 = v760;
    do
    {
      v763 = v759 + (*v761 - 1) * v758;
      *&v2797[4 * v759 + 4 * (*(v761 - 1) - 1) * v758] = 1065353216;
      *&v2797[4 * v763] = 1065353216;
      v761 += 2;
      v762 -= 2;
    }

    while (v762);
    if (v760 != v743)
    {
LABEL_613:
      v764 = v743 - v760;
      v765 = &v2745[v760 + 96];
      do
      {
        v766 = *v765++;
        *&v2797[4 * v759 + 4 * (v766 - 1) * v758] = 1065353216;
        --v764;
      }

      while (v764);
    }

LABEL_615:
    if (v372 < 1)
    {
      v775 = 0;
      v776 = 0;
      v777 = 0;
      goto LABEL_751;
    }

    v767 = v2789;
    v768 = v2769;
    v769 = v2631;
    if (v372 >= 9)
    {
      do
      {
        v771 = v767 - 12;
        *(&v432 - 2) = vld3q_f32(v771);
        *(&v364 - 1) = vld3q_f32(v767);
        v540 = vabsq_f32(v772);
        _Q1 = vabsq_f32(v435);
        v768[-1] = v540;
        *v768 = _Q1;
        v768 += 2;
        v767 += 24;
        v769 -= 8;
      }

      while (v769);
      v770 = v2631;
    }

    else
    {
      v770 = 0;
    }

    v773 = 12 * v770 + 8;
    do
    {
      *&v2768[4 * v770++ - 4] = fabsf(*&v2785[v773]);
      v773 += 12;
    }

    while (v372 != v770);
    if (v372 <= 3)
    {
      v774 = 0;
      goto LABEL_634;
    }

    if (v372 >= 0x20)
    {
      v779 = v2771;
      v780 = v2745;
      v781 = v2717 & 0xFFFFFFE0;
      do
      {
        v364 = *v779;
        v365 = v779[1];
        v366 = v779[3];
        v540 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v779[-4], v586), vcgtq_f32(v779[-3], v586)), vuzp1q_s16(vcgtq_f32(v779[-2], v586), vcgtq_f32(v779[-1], v586))), v585);
        v435 = vcgtq_f32(*v779, v586);
        v432 = vuzp1q_s16(v435, vcgtq_f32(v365, v586));
        _Q1 = vandq_s8(vuzp1q_s8(v432, vuzp1q_s16(vcgtq_f32(v779[2], v586), vcgtq_f32(v366, v586))), v585);
        v780[-1] = v540;
        *v780 = _Q1;
        v780 += 2;
        v779 += 8;
        v781 -= 32;
      }

      while (v781);
      if (v372 != v2634)
      {
        v778 = v2717 & 0xFFFFFFE0;
        v774 = v778;
        if ((v2717 & 0x1C) == 0)
        {
          goto LABEL_634;
        }

        goto LABEL_631;
      }
    }

    else
    {
      v778 = 0;
LABEL_631:
      v782 = v778 - (v2717 & 0xFFFFFFFC);
      v783 = &v2744[v778 + 9];
      v784 = &v2768[4 * v778 - 4];
      do
      {
        v785 = *v784++;
        v540 = vcgtq_f32(v785, v586);
        *v540.f32 = vand_s8(vmovn_s32(v540), 0x1000100010001);
        *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
        *v783++ = v540.i32[0];
        v782 += 4;
      }

      while (v782);
      v774 = v2717 & 0xFFFFFFFC;
      if (v372 != v2626)
      {
LABEL_634:
        v786 = v372 - v774;
        v787 = &v2744[v774 + 9];
        v788 = &v2768[4 * v774 - 4];
        do
        {
          v789 = *v788++;
          *v787++ = v789 > 2.2204e-16;
          --v786;
        }

        while (v786);
      }
    }

    v790 = 0;
    v791 = 0;
    while (2)
    {
      if (!v2744[v790 + 9])
      {
        ++v790;
        goto LABEL_638;
      }

      __src[v791++] = v790 + 1;
      if (v791 < v372)
      {
        ++v790;
LABEL_638:
        if (v790 >= v372)
        {
          break;
        }

        continue;
      }

      break;
    }

    if (v372 != 1)
    {
      if (v791 < 1)
      {
        goto LABEL_651;
      }

      v793 = v791;
      v794 = v791;
      memcpy(&__dst, __src, 4 * v791);
      if (v794 == 1)
      {
        v792 = 0;
        ii = 1;
        goto LABEL_648;
      }

      v792 = v793 & 0x7FFFFFFE;
      v811 = v2751;
      v812 = v2768;
      v813 = v792;
      do
      {
        v814 = *&v2785[12 * *v811 - 4];
        *(v812 - 1) = *&v2785[12 * *(v811 - 1) - 4];
        *v812 = v814;
        v812 += 2;
        v811 += 2;
        v813 -= 2;
      }

      while (v813);
      for (ii = 0; v793 != v792; ++v792)
      {
LABEL_648:
        *&v2768[4 * v792 - 4] = *&v2785[12 * *&v2751[4 * v792 - 4] - 4];
      }

      if (v794 > 7)
      {
        v795 = v793 & 0x7FFFFFF8;
        v796 = v2935;
        v797 = v2769;
        v798 = v795;
        do
        {
          v540 = v797[-1];
          v2946.val[0] = *v797;
          v799 = v540;
          v800 = v540;
          v2946.val[1] = *v797;
          v2946.val[2] = *v797;
          v801 = v796 + 24;
          vst3q_f32(v796, *v540.f32);
          v802 = v796 + 12;
          vst3q_f32(v802, v2946);
          v797 += 2;
          v796 = v801;
          v798 -= 8;
        }

        while (v798);
        if (v795 == v793)
        {
LABEL_657:
          v807 = 0;
          for (jj = 0; jj != v793; ++jj)
          {
            v809 = 3 * *&v2751[4 * jj - 4];
            v540.i64[0] = *&v2935[v807];
            v540.f32[2] = v2935[v807 + 2];
            v799.i32[0] = *&v2785[4 * v809 - 12];
            v799.i32[1] = *&v2785[4 * v809 - 8];
            v799.i32[2] = *&v2785[4 * v809 - 4];
            v540 = vdivq_f32(v799, v540);
            *&v2783[v807 * 4 + 8] = v540.i32[2];
            *&v2783[v807 * 4] = v540.i64[0];
            v807 += 3;
          }

          memcpy(v2785, v2783, 12 * v794);
          v776 = v794;
          if (v794 <= 3)
          {
            v810 = 0;
            v372 = v2717;
            v585.i64[0] = 0x101010101010101;
            v585.i64[1] = 0x101010101010101;
            v382 = 629145600;
            v586 = v2644;
            v620 = v2704;
            v584 = v2726;
            goto LABEL_674;
          }

          v372 = v2717;
          v585.i64[0] = 0x101010101010101;
          v585.i64[1] = 0x101010101010101;
          v382 = 629145600;
          v586 = v2644;
          v620 = v2704;
          v584 = v2726;
          if (v794 >= 0x20)
          {
            v810 = v793 & 0x7FFFFFE0;
            v815 = v2752;
            v816 = v2747;
            v817 = v810;
            do
            {
              v818 = v815[-1].val[0];
              v819 = v815[-1].val[1];
              v432 = v815[-1].val[2];
              v435 = v815[-1].val[3];
              v364.i32[1] = 471340048;
              v540 = vqtbl4q_s8(*(&v432 - 2), xmmword_2247A4600);
              _Q1 = vqtbl4q_s8(*v815, xmmword_2247A4600);
              v816[-1] = v540;
              *v816 = _Q1;
              v816 += 2;
              v815 += 2;
              v817 -= 32;
            }

            while (v817);
            if (v810 == v793)
            {
              goto LABEL_676;
            }

            if ((v793 & 0x1C) == 0)
            {
LABEL_674:
              v825 = v793 - v810;
              v826 = &v2745[v810 + 96];
              v827 = &v2751[4 * v810 - 4];
              do
              {
                v828 = *v827++;
                *v826++ = v828;
                --v825;
              }

              while (v825);
              goto LABEL_676;
            }
          }

          else
          {
            v810 = 0;
          }

          v820 = v810;
          v810 = v793 & 0x7FFFFFFC;
          v821 = v820 - v810;
          v822 = &v2745[v820 + 96];
          v823 = &v2751[4 * v820 - 4];
          do
          {
            v824 = *v823++;
            v540.i64[1] = v824.i64[1];
            *v540.f32 = vmovn_s32(v824);
            *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
            *v822++ = v540.i32[0];
            v821 += 4;
          }

          while (v821);
          if (v810 != v793)
          {
            goto LABEL_674;
          }

LABEL_676:
          if (ii)
          {
            v829 = 0;
          }

          else
          {
            v829 = v793 & 0x7FFFFFFE;
            v830 = v2746;
            v831 = v829;
            do
            {
              v832 = &v2785[12 * *v830];
              *&v2785[12 * *(v830 - 1) - 4] = 1065353216;
              *(v832 - 1) = 1065353216;
              v830 += 2;
              v831 -= 2;
            }

            while (v831);
            if (v829 == v793)
            {
              goto LABEL_683;
            }
          }

          v833 = v793 - v829;
          v834 = &v2745[v829 + 96];
          do
          {
            v835 = *v834++;
            *&v2785[12 * v835 - 4] = 1065353216;
            --v833;
          }

          while (v833);
LABEL_683:
          v777 = 1;
          goto LABEL_684;
        }
      }

      else
      {
        v795 = 0;
      }

      v803 = v793 - v795;
      v804 = &v2768[4 * v795 - 4];
      v805 = &v2935[3 * v795];
      do
      {
        v806 = *v804++;
        v540.i32[0] = v806;
        v799 = vdupq_lane_s32(*v540.f32, 0);
        *(v805 + 2) = v806;
        *v805 = v799.i64[0];
        v805 += 3;
        --v803;
      }

      while (v803);
      goto LABEL_657;
    }

    if (v791)
    {
      v792 = 0;
      __dst = __src[0];
      v793 = 1;
      ii = 1;
      v794 = 1;
      goto LABEL_648;
    }

LABEL_651:
    v777 = 0;
    v776 = 0;
    v584 = v2726;
LABEL_684:
    v836 = &v2767;
    v837 = v372;
    v838 = v584 - 1;
    do
    {
      *v836++ = fabsf(*&v2781[4 * v838]);
      v838 += v584;
      --v837;
    }

    while (v837);
    if (v372 <= 3)
    {
      v839 = 0;
      goto LABEL_697;
    }

    if (v372 >= 0x20)
    {
      v841 = v2771;
      v842 = v2745;
      v843 = v2717 & 0xFFFFFFE0;
      do
      {
        v364 = *v841;
        v365 = v841[1];
        v366 = v841[3];
        v540 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v841[-4], v586), vcgtq_f32(v841[-3], v586)), vuzp1q_s16(vcgtq_f32(v841[-2], v586), vcgtq_f32(v841[-1], v586))), v585);
        v435 = vcgtq_f32(*v841, v586);
        v432 = vuzp1q_s16(v435, vcgtq_f32(v365, v586));
        _Q1 = vandq_s8(vuzp1q_s8(v432, vuzp1q_s16(vcgtq_f32(v841[2], v586), vcgtq_f32(v366, v586))), v585);
        v842[-1] = v540;
        *v842 = _Q1;
        v842 += 2;
        v841 += 8;
        v843 -= 32;
      }

      while (v843);
      if (v372 != v2634)
      {
        v840 = v2717 & 0xFFFFFFE0;
        v839 = v840;
        if ((v2717 & 0x1C) == 0)
        {
          goto LABEL_697;
        }

        goto LABEL_694;
      }
    }

    else
    {
      v840 = 0;
LABEL_694:
      v844 = v840 - (v2717 & 0xFFFFFFFC);
      v845 = &v2744[v840 + 9];
      v846 = &v2768[4 * v840 - 4];
      do
      {
        v847 = *v846++;
        v540 = vcgtq_f32(v847, v586);
        *v540.f32 = vand_s8(vmovn_s32(v540), 0x1000100010001);
        *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
        *v845++ = v540.i32[0];
        v844 += 4;
      }

      while (v844);
      v839 = v2717 & 0xFFFFFFFC;
      if (v372 != v2626)
      {
LABEL_697:
        v848 = v372 - v839;
        v849 = &v2744[v839 + 9];
        v850 = &v2768[4 * v839 - 4];
        do
        {
          v851 = *v850++;
          *v849++ = v851 > 2.2204e-16;
          --v848;
        }

        while (v848);
      }
    }

    v852 = 0;
    v853 = 0;
    while (2)
    {
      if (!v2744[v852 + 9])
      {
        ++v852;
LABEL_701:
        if (v852 >= v372)
        {
          goto LABEL_706;
        }

        continue;
      }

      break;
    }

    __src[v853] = v852 + 1;
    v854 = v853 + 1 < v372;
    if (v853 + 1 < v372)
    {
      ++v852;
    }

    ++v853;
    if (v854)
    {
      goto LABEL_701;
    }

LABEL_706:
    v2711 = v777;
    if (v372 != 1)
    {
      if (v853 < 1)
      {
        goto LABEL_712;
      }

      v2736 = v776;
      memcpy(&__dst, __src, 4 * v853);
      v775 = v853;
      if (v853 == 1)
      {
        v855 = 0;
        v2689 = 1;
        v372 = v2717;
        v620 = v2704;
        v584 = v2726;
        v776 = v2736;
        v856 = 1;
        goto LABEL_716;
      }

      v856 = v853;
      v855 = v853 & 0x7FFFFFFE;
      v857 = v2751;
      v858 = v2775;
      v859 = v855;
      v584 = v2726;
      do
      {
        v860 = *&v2781[4 * *v857 * v2726 - 4];
        *(v858 - 1) = *&v2781[4 * *(v857 - 1) * v2726 - 4];
        *v858 = v860;
        v858 += 2;
        v857 += 2;
        v859 -= 2;
      }

      while (v859);
      v2689 = 0;
      v372 = v2717;
      v620 = v2704;
      v776 = v2736;
      if (v855 != v853)
      {
        do
        {
LABEL_716:
          *&v2775[4 * v855 - 4] = *&v2781[4 * *&v2751[4 * v855 - 4] * v584 - 4];
          ++v855;
        }

        while (v856 != v855);
      }

      v861 = 4 * v584;
      if (v584 >= 1)
      {
        v862 = 0;
        v863 = v2935;
        do
        {
          v864 = *&v2775[4 * v862 - 4];
          v865 = v863;
          v866 = v584;
          do
          {
            *v865++ = v864;
            --v866;
          }

          while (v866);
          ++v862;
          v863 = (v863 + v861);
        }

        while (v862 != v856);
      }

      v867 = 0;
      v868 = v2783;
      v869 = v2935;
      do
      {
        v870 = v584 - 1;
        if (v584 >= 1)
        {
          v871 = &v2781[4 * (*&v2751[4 * v867 - 4] - 1) * v584];
          v872 = v869;
          v873 = v868;
          v874 = v584;
          do
          {
            v875 = *v871++;
            v876 = v875;
            v877 = *v872++;
            *v873++ = v876 / v877;
            --v874;
          }

          while (v874);
        }

        ++v867;
        v868 = (v868 + v861);
        v869 = (v869 + v861);
      }

      while (v867 != v856);
      if ((v775 * v584) >= 1)
      {
        v2659 = v775;
        v2737 = v776;
        v2694 = v856;
        memcpy(v2781, v2783, 4 * v775 * v584);
        v856 = v2694;
        v775 = v2659;
        v776 = v2737;
        v584 = v2726;
        v620 = v2704;
        v372 = v2717;
      }

      if (v775 <= 3)
      {
        v878 = 0;
        v585.i64[0] = 0x101010101010101;
        v585.i64[1] = 0x101010101010101;
        v382 = 629145600;
        goto LABEL_741;
      }

      v585.i64[0] = 0x101010101010101;
      v585.i64[1] = 0x101010101010101;
      v382 = 629145600;
      if (v775 >= 0x20)
      {
        v878 = v856 & 0x7FFFFFE0;
        v879 = v2752;
        v880 = v2747;
        v881 = v878;
        do
        {
          v882 = v879[-1].val[0];
          v883 = v879[-1].val[1];
          v432 = v879[-1].val[2];
          v435 = v879[-1].val[3];
          v364.i32[1] = 471340048;
          v540 = vqtbl4q_s8(*(&v432 - 2), xmmword_2247A4600);
          _Q1 = vqtbl4q_s8(*v879, xmmword_2247A4600);
          v880[-1] = v540;
          *v880 = _Q1;
          v880 += 2;
          v879 += 2;
          v881 -= 32;
        }

        while (v881);
        if (v878 == v856)
        {
          goto LABEL_743;
        }

        if ((v856 & 0x1C) == 0)
        {
LABEL_741:
          v889 = v856 - v878;
          v890 = &v2745[v878 + 96];
          v891 = &v2751[4 * v878 - 4];
          do
          {
            v892 = *v891++;
            *v890++ = v892;
            --v889;
          }

          while (v889);
          goto LABEL_743;
        }
      }

      else
      {
        v878 = 0;
      }

      v884 = v878;
      v878 = v856 & 0x7FFFFFFC;
      v885 = v884 - v878;
      v886 = &v2745[v884 + 96];
      v887 = &v2751[4 * v884 - 4];
      do
      {
        v888 = *v887++;
        v540.i64[1] = v888.i64[1];
        *v540.f32 = vmovn_s32(v888);
        *v540.f32 = vuzp1_s8(*v540.f32, *v540.f32);
        *v886++ = v540.i32[0];
        v885 += 4;
      }

      while (v885);
      if (v878 != v856)
      {
        goto LABEL_741;
      }

LABEL_743:
      if (v2689)
      {
        v893 = 0;
      }

      else
      {
        v893 = v856 & 0x7FFFFFFE;
        v894 = v2746;
        v895 = v893;
        do
        {
          v896 = v870 + (*v894 - 1) * v584;
          *&v2781[4 * v870 + 4 * (*(v894 - 1) - 1) * v584] = 1065353216;
          *&v2781[4 * v896] = 1065353216;
          v894 += 2;
          v895 -= 2;
        }

        while (v895);
        if (v893 == v856)
        {
          goto LABEL_750;
        }
      }

      v897 = v856 - v893;
      v898 = &v2745[v893 + 96];
      do
      {
        v899 = *v898++;
        *&v2781[4 * v870 + 4 * (v899 - 1) * v584] = 1065353216;
        --v897;
      }

      while (v897);
LABEL_750:
      v777 = v2711;
      goto LABEL_751;
    }

    if (v853)
    {
      v855 = 0;
      __dst = __src[0];
      v775 = 1;
      v856 = 1;
      v2689 = 1;
      goto LABEL_716;
    }

LABEL_712:
    v775 = 0;
LABEL_751:
    if (v2748 == 3 && v620 == v2749)
    {
      if (!v2699)
      {
        goto LABEL_787;
      }

      v910 = 3 * v620;
      if (3 * v620 <= 1)
      {
        v911 = 1;
      }

      else
      {
        v911 = v910;
      }

      if (v910 >= 8)
      {
        v912 = v911 & 0x7FFFFFF8;
        v926 = v2795;
        v927 = v2798;
        v928 = v912;
        do
        {
          v432 = v927[-1];
          v435 = *v927;
          v929 = vsubq_f32(v926[-1], v432);
          v930 = vsubq_f32(*v926, *v927);
          v540 = vmulq_f32(v929, v929);
          _Q1 = vmulq_f32(v930, v930);
          v926[-1] = v540;
          *v926 = _Q1;
          v927 += 2;
          v926 += 2;
          v928 -= 8;
        }

        while (v928);
        if (v912 == v911)
        {
          goto LABEL_787;
        }
      }

      else
      {
        v912 = 0;
      }

      v931 = v911 - v912;
      v932 = 4 * v912;
      v933 = &v2797[4 * v912];
      v934 = (&v2792 + v932);
      do
      {
        v935 = *v933++;
        *v934 = (*v934 - v935) * (*v934 - v935);
        ++v934;
        --v931;
      }

      while (v931);
      goto LABEL_787;
    }

    if (v2749 == 1)
    {
      v901 = v620;
    }

    else
    {
      v901 = v2749;
    }

    if (v901 >= 1)
    {
      v902 = v777;
      v903 = v2748 != 1;
      v904 = 4 * v2748 * (v2749 != 1);
      v905 = v2937;
      v906 = v2797;
      v907 = &v2792;
      v908 = v901;
      do
      {
        v540.i32[0] = *v906;
        _Q1.i64[0] = *v907;
        _Q1.f32[2] = v907[2];
        v540.i32[1] = *&v906[4 * v903];
        v540.i32[2] = *&v906[8 * v903];
        v540 = vsubq_f32(_Q1, v540);
        *(v905 + 2) = v540.i32[2];
        *v905 = v540.i64[0];
        v905 = (v905 + 12);
        v906 += v904;
        v907 += 3 * (v620 != 1);
        v908 = (v908 - 1);
      }

      while (v908);
      if (v901 < 8)
      {
        v909 = 0;
        v584 = v2726;
        v777 = v902;
        goto LABEL_772;
      }

      v909 = (v901 & 0x7FFFFFF8);
      v913 = &v2792;
      v914 = v2937;
      v915 = v909;
      v777 = v902;
      do
      {
        v540 = *v914;
        _Q1 = v914[1];
        v432 = v914[2];
        v435 = v914[3];
        v364 = v914[4];
        v365 = v914[5];
        *v913 = *v914;
        *(v913 + 1) = _Q1;
        *(v913 + 4) = v364;
        *(v913 + 5) = v365;
        *(v913 + 2) = v432;
        *(v913 + 3) = v435;
        v913 += 24;
        v914 += 6;
        --v915;
      }

      while (v915);
      v584 = v2726;
      if (v909 != v901)
      {
LABEL_772:
        v916 = (v901 - v909);
        v917 = 12 * v909;
        v918 = &v2792 + 3 * v909;
        v919 = (v2937 + v917);
        do
        {
          v920 = *v919;
          v918[2] = v919[2];
          *v918 = v920;
          v918 += 3;
          v919 += 3;
          --v916;
        }

        while (v916);
      }

      if (v901 < 4)
      {
        v921 = 0;
        goto LABEL_779;
      }

      v921 = (v901 & 0x7FFFFFFC);
      v922 = &v2792;
      v923 = v921;
      do
      {
        v432 = vmulq_f32(v922[2], v922[2]);
        _Q1 = vmulq_f32(v922[1], v922[1]);
        v540 = vmulq_f32(*v922, *v922);
        *v922 = v540;
        v922[1] = _Q1;
        v922[2] = v432;
        v922 += 3;
        v923 = (v923 - 4);
      }

      while (v923);
      if (v921 != v901)
      {
LABEL_779:
        v924 = (v901 - v921);
        v925 = &v2792 + 3 * v921;
        do
        {
          v540.i64[0] = *v925;
          v540.f32[2] = v925[2];
          v540 = vmulq_f32(v540, v540);
          v925[2] = v540.f32[2];
          *v925 = v540.i64[0];
          v925 += 3;
          --v924;
        }

        while (v924);
      }
    }

    v620 = v901;
LABEL_787:
    if (v620 >= 1)
    {
      if (v620 < 8)
      {
        v936 = 0;
        goto LABEL_793;
      }

      v936 = v620 & 0x7FFFFFF8;
      v937 = &v2792;
      v938 = v2773;
      v939 = v936;
      do
      {
        v940 = v937;
        v937 += 24;
        v2943 = vld3q_f32(v940);
        v940 += 12;
        v540 = vaddq_f32(vaddq_f32(v2943.val[1], v2943.val[0]), v2943.val[2]);
        *(&v432 - 1) = vld3q_f32(v940);
        v364 = vaddq_f32(v432, v2943.val[1]);
        _Q1 = vaddq_f32(v364, v435);
        v938[-1] = v540;
        *v938 = _Q1;
        v938 += 2;
        v939 -= 8;
      }

      while (v939);
      if (v936 != v620)
      {
LABEL_793:
        v941 = v620 - v936;
        v942 = &v2772[v936];
        v943 = &v2794[3 * v936];
        do
        {
          v944 = *(v943 - 1) + *(v943 - 2);
          v945 = *v943;
          v943 += 3;
          *v942++ = v944 + v945;
          --v941;
        }

        while (v941);
      }
    }

    if (v584 != 3 || v776 != v775)
    {
      if (v775 == 1)
      {
        v949 = v776;
      }

      else
      {
        v949 = v775;
      }

      if (v949 < 1)
      {
        goto LABEL_816;
      }

      v950 = v2937;
      v951 = v2781;
      v952 = v2785;
      v953 = v949;
      do
      {
        v540.i32[0] = *v951;
        _Q1.i64[0] = *v952;
        _Q1.i32[2] = *(v952 + 2);
        v540.i32[1] = v951[v584 != 1];
        v540.i32[2] = v951[2 * (v584 != 1)];
        v540 = vsubq_f32(_Q1, v540);
        *(v950 + 2) = v540.i32[2];
        *v950 = v540.i64[0];
        v950 = (v950 + 12);
        v951 += v584 * (v775 != 1);
        v952 += 12 * (v776 != 1);
        --v953;
      }

      while (v953);
      if (v949 >= 4)
      {
        v954 = v949 & 0x7FFFFFFC;
        v955 = &v2792;
        v956 = v2937;
        v957 = v954;
        do
        {
          v959 = v956[1];
          v958 = v956[2];
          v960 = *v956;
          v956 += 3;
          v432 = vmulq_f32(v960, v960);
          _Q1 = vmulq_f32(v959, v959);
          v540 = vmulq_f32(v958, v958);
          *(v955 + 1) = _Q1;
          *(v955 + 2) = v540;
          *v955 = v432;
          v955 += 12;
          v957 -= 4;
        }

        while (v957);
        if (v954 == v949)
        {
          goto LABEL_816;
        }
      }

      else
      {
        v954 = 0;
      }

      v961 = v949 - v954;
      v962 = 12 * v954;
      v963 = &v2792 + 3 * v954;
      v964 = v2937 + v962;
      do
      {
        v540.i64[0] = *v964;
        v540.i32[2] = *(v964 + 2);
        v540 = vmulq_f32(v540, v540);
        v963[2] = v540.f32[2];
        *v963 = v540.i64[0];
        v963 += 3;
        v964 += 12;
        --v961;
      }

      while (v961);
LABEL_816:
      v775 = v949;
      goto LABEL_822;
    }

    if (v777)
    {
      v946 = 3 * v775;
      if ((3 * v775) <= 1)
      {
        v947 = 1;
      }

      else
      {
        v947 = v946;
      }

      if (v946 < 8)
      {
        v948 = 0;
        goto LABEL_820;
      }

      v948 = v947 & 0x7FFFFFF8;
      v965 = &v2787;
      v966 = &v2782;
      v967 = v2795;
      v968 = v948;
      do
      {
        v432 = v966[-1];
        v435 = *v966;
        v969 = vsubq_f32(v965[-1], v432);
        v970 = vsubq_f32(*v965, *v966);
        v540 = vmulq_f32(v969, v969);
        _Q1 = vmulq_f32(v970, v970);
        v967[-1] = v540;
        *v967 = _Q1;
        v967 += 2;
        v966 += 2;
        v965 += 2;
        v968 -= 8;
      }

      while (v968);
      if (v948 != v947)
      {
LABEL_820:
        v971 = v947 - v948;
        v972 = 4 * v948;
        v973 = &v2792 + v948;
        v974 = &v2781[v972];
        v975 = &v2785[v972];
        do
        {
          v976 = *v975++;
          v977 = v976;
          v978 = *v974++;
          *v973++ = (v977 - v978) * (v977 - v978);
          --v971;
        }

        while (v971);
      }
    }

LABEL_822:
    if (v775 >= 1)
    {
      if (v775 < 8)
      {
        v979 = 0;
        goto LABEL_828;
      }

      v979 = v775 & 0x7FFFFFF8;
      v980 = &v2792;
      v981 = v2776;
      v982 = v979;
      do
      {
        v983 = v980;
        v980 += 24;
        v2944 = vld3q_f32(v983);
        v983 += 12;
        v540 = vaddq_f32(vaddq_f32(v2944.val[1], v2944.val[0]), v2944.val[2]);
        *(&v432 - 1) = vld3q_f32(v983);
        v364 = vaddq_f32(v432, v2944.val[1]);
        _Q1 = vaddq_f32(v364, v435);
        v981[-1] = v540;
        *v981 = _Q1;
        v981 += 2;
        v982 -= 8;
      }

      while (v982);
      if (v979 != v775)
      {
LABEL_828:
        v984 = v775 - v979;
        v985 = &v2775[4 * v979 - 4];
        v986 = &v2794[3 * v979];
        do
        {
          v987 = *(v986 - 1) + *(v986 - 2);
          v988 = *v986;
          v986 += 3;
          *v985++ = v987 + v988;
          --v984;
        }

        while (v984);
      }
    }

    if (v620 != v775)
    {
      if (v775 == 1)
      {
        v990 = v620;
      }

      else
      {
        v990 = v775;
      }

      if (v990 < 1)
      {
LABEL_900:
        v620 = v990;
        if (v990 >= 1)
        {
          goto LABEL_846;
        }

LABEL_901:
        v1032 = 0;
        goto LABEL_902;
      }

      if (v620 == 1)
      {
        v540.f32[0] = v2772[0];
        if (v775 == 1)
        {
          *v2937 = v2774 + v2772[0];
        }

        else
        {
          if (v775 > 7)
          {
            v1033 = v775 & 0x7FFFFFF8;
            v1045 = vdupq_lane_s32(*v540.f32, 0);
            v1046 = v2776;
            v1047 = &v2937[1];
            v1048 = v1033;
            do
            {
              v1049 = vaddq_f32(*v1046, v1045);
              v1047[-1] = vaddq_f32(v1046[-1], v1045);
              *v1047 = v1049;
              v1047 += 2;
              v1046 += 2;
              v1048 -= 8;
            }

            while (v1048);
            if (v1033 == v775)
            {
              goto LABEL_899;
            }
          }

          else
          {
            v1033 = 0;
          }

          v1050 = v775 - v1033;
          v1051 = 4 * v1033;
          v1052 = v2937 + v1033;
          v1053 = &v2775[v1051 - 4];
          do
          {
            v1054 = *v1053++;
            *v1052++ = v1054 + v540.f32[0];
            --v1050;
          }

          while (v1050);
        }
      }

      else if (v775 == 1)
      {
        v540.f32[0] = v2774;
        if (v620 >= 8)
        {
          v1011 = v620 & 0x7FFFFFF8;
          v1035 = vdupq_lane_s32(*v540.f32, 0);
          v1036 = v2773;
          v1037 = &v2937[1];
          v1038 = v1011;
          do
          {
            v1039 = vaddq_f32(*v1036, v1035);
            v1037[-1] = vaddq_f32(v1036[-1], v1035);
            *v1037 = v1039;
            v1037 += 2;
            v1036 += 2;
            v1038 -= 8;
          }

          while (v1038);
          if (v1011 == v620)
          {
            goto LABEL_899;
          }
        }

        else
        {
          v1011 = 0;
        }

        v1040 = v620 - v1011;
        v1041 = v1011;
        v1042 = v2937 + v1011;
        v1043 = &v2772[v1041];
        do
        {
          v1044 = *v1043++;
          *v1042++ = v1044 + v540.f32[0];
          --v1040;
        }

        while (v1040);
      }

      else
      {
        if (v775 > 7)
        {
          v1034 = v775 & 0x7FFFFFF8;
          v1055 = v2773;
          v1056 = v2776;
          v1057 = &v2937[1];
          v1058 = v1034;
          do
          {
            v1059 = vaddq_f32(*v1056, *v1055);
            v1057[-1] = vaddq_f32(v1056[-1], v1055[-1]);
            *v1057 = v1059;
            v1057 += 2;
            v1056 += 2;
            v1055 += 2;
            v1058 -= 8;
          }

          while (v1058);
          if (v1034 == v775)
          {
            goto LABEL_899;
          }
        }

        else
        {
          v1034 = 0;
        }

        v1060 = v775 - v1034;
        v1061 = v1034;
        v1062 = v2937 + v1034;
        v1063 = &v2775[v1061 * 4 - 4];
        v1064 = &v2772[v1061];
        do
        {
          v1065 = *v1064++;
          v1066 = v1065;
          v1067 = *v1063++;
          *v1062++ = v1067 + v1066;
          --v1060;
        }

        while (v1060);
      }

LABEL_899:
      memcpy(v2772, v2937, 4 * v990);
      v372 = v2717;
      v585.i64[0] = 0x101010101010101;
      v585.i64[1] = 0x101010101010101;
      v382 = 629145600;
      goto LABEL_900;
    }

    if (v620 < 1)
    {
      goto LABEL_901;
    }

    if (v620 < 8)
    {
      v989 = 0;
      goto LABEL_844;
    }

    v989 = v620 & 0x7FFFFFF8;
    v991 = v2776;
    v992 = v2773;
    v993 = v989;
    do
    {
      v432 = v992[-1];
      v435 = *v992;
      v540 = vaddq_f32(v432, v991[-1]);
      v994 = vaddq_f32(*v992, *v991);
      v992[-1] = v540;
      *v992 = v994;
      v992 += 2;
      v991 += 2;
      v993 -= 8;
    }

    while (v993);
    if (v989 != v620)
    {
LABEL_844:
      v995 = v620 - v989;
      v996 = 4 * v989;
      v997 = &v2772[v989];
      v998 = &v2775[v996 - 4];
      do
      {
        v999 = *v998++;
        *v997 = *v997 + v999;
        ++v997;
        --v995;
      }

      while (v995);
    }

LABEL_846:
    if (v620 <= 7)
    {
      v1000 = 0;
      goto LABEL_851;
    }

    v1000 = v620 & 0x7FFFFFF8;
    v1001 = v2773;
    v1002 = v2769;
    v1003 = v1000;
    do
    {
      v540 = vabsq_f32(v1001[-1]);
      v1004 = vabsq_f32(*v1001);
      v1002[-1] = v540;
      *v1002 = v1004;
      v1002 += 2;
      v1001 += 2;
      v1003 -= 8;
    }

    while (v1003);
    if (v1000 != v620)
    {
LABEL_851:
      v1005 = v620 - v1000;
      v1006 = v1000;
      v1007 = &v2768[4 * v1000 - 4];
      v1008 = &v2772[v1006];
      do
      {
        v1009 = *v1008++;
        *v1007++ = fabsf(v1009);
        --v1005;
      }

      while (v1005);
    }

    if (v620 <= 3)
    {
      v1010 = 0;
      _Q1 = v2623;
      goto LABEL_867;
    }

    if (v620 >= 0x20)
    {
      v1010 = v620 & 0x7FFFFFE0;
      v1012 = v2771;
      v1013 = v2745;
      v1014 = v1010;
      do
      {
        v1016 = v1012[-2];
        v1015 = v1012[-1];
        v1017 = v1012[-4];
        v1018 = v1012[-3];
        v365 = v1012[2];
        v364 = v1012[3];
        v1019 = *v1012;
        v366 = v1012[1];
        v1012 += 8;
        v540 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v2616, v1017), vcgtq_f32(v2616, v1018)), vuzp1q_s16(vcgtq_f32(v2616, v1016), vcgtq_f32(v2616, v1015))), v585);
        v435 = vcgtq_f32(v2616, v364);
        v432 = vuzp1q_s16(vcgtq_f32(v2616, v365), v435);
        v1013[-1] = v540;
        *v1013 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v2616, v1019), vcgtq_f32(v2616, v366)), v432), v585);
        v1013 += 2;
        v1014 -= 32;
      }

      while (v1014);
      _Q1 = v2623;
      if (v1010 != v620)
      {
        if ((v620 & 0x1C) == 0)
        {
          goto LABEL_867;
        }

        goto LABEL_864;
      }
    }

    else
    {
      v1010 = 0;
LABEL_864:
      v1020 = v1010;
      v1010 = v620 & 0x7FFFFFFC;
      v1021 = v1020 - v1010;
      v1022 = &v2744[v1020 + 9];
      v1023 = &v2768[4 * v1020 - 4];
      do
      {
        v1024 = *v1023++;
        v540 = vcgtq_f32(v2616, v1024);
        *v540.f32 = vand_s8(vmovn_s32(v540), 0x1000100010001);
        *v1022++ = vuzp1_s8(*v540.f32, *v540.f32).u32[0];
        v1021 += 4;
      }

      while (v1021);
      _Q1 = v2623;
      if (v1010 != v620)
      {
LABEL_867:
        v1025 = v620 - v1010;
        v1026 = &v2744[v1010 + 9];
        v1027 = &v2768[4 * v1010 - 4];
        do
        {
          v1028 = *v1027++;
          *v1026++ = v1028 < _Q1.f32[0];
          --v1025;
        }

        while (v1025);
      }
    }

    v1029 = 0;
    v1030 = 0;
    while (2)
    {
      if (!v2744[v1029 + 9])
      {
        ++v1029;
        goto LABEL_871;
      }

      __src[v1030++] = v1029 + 1;
      if (v1030 < v620)
      {
        ++v1029;
LABEL_871:
        if (v1029 >= v620)
        {
          break;
        }

        continue;
      }

      break;
    }

    if (v620 == 1)
    {
      v1031 = v2641;
      v1032 = v1030 != 0;
      goto LABEL_903;
    }

    v1032 = v1030 & ~(v1030 >> 31);
LABEL_902:
    v1031 = v2641;
LABEL_903:
    if (v1032 > v2638)
    {
      memcpy(v2755, __src, 4 * v1032);
      if (v2663 * v2663 >= 1)
      {
        memcpy(v2756, &v2764, 4 * (v2663 * v2663));
      }

      v2622 = 1;
      v2638 = v1032;
      v2619 = v1032;
      v2621 = v2663;
      v2620 = v2663;
      v2637 = -4.60517019 / log(fmax(v6 - v1032 * v2618 * (v1032 * v2618) * (v1032 * v2618 * (v1032 * v2618)), 2.22044605e-16));
      v372 = v2717;
      v1031 = v2641;
      v382 = 629145600;
    }

    v374 = v2720;
    v381 = 1.0;
    if (v1031 <= 0x3E7)
    {
      v380 = v1031 + 1;
      if (v2637 > v380)
      {
        continue;
      }
    }

    break;
  }

  v1625 = (v2620 * v2621);
  if (v1625 < 1)
  {
    v1629 = 0;
    v1626 = v2622;
    v1630 = 0;
    if (v2620)
    {
      v1628 = v2619;
      if (v2621)
      {
        goto LABEL_1349;
      }
    }
  }

  else
  {
    v1626 = v2622;
    if (v1625 <= 3)
    {
      v1627 = 0;
      v1628 = v2619;
      goto LABEL_1328;
    }

    v1627 = v1625 & 0x7FFFFFFC;
    v1631 = v2744;
    v1632 = v2756;
    v1633 = v1627;
    do
    {
      v1634 = *v1632++;
      _Q1 = vmvnq_s8(vceqq_f32(v1634, v1634));
      *v1631++ = vuzp1_s8(vand_s8(vmovn_s32(_Q1), 0x1000100010001), 0x1000100010001).u32[0];
      v1633 -= 4;
    }

    while (v1633);
    v1628 = v2619;
    if (v1627 != v1625)
    {
LABEL_1328:
      v1635 = v1625 - v1627;
      v1636 = &v2744[v1627];
      v1637 = &v2756[v1627];
      do
      {
        ++v1637;
        *v1636++ = 0;
        --v1635;
      }

      while (v1635);
    }

    if (v1625 > 7)
    {
      v1639 = v1625 & 0x7FFFFFF8;
      v1640 = (&v2743 + 6);
      v1641 = v2744;
      do
      {
        v1642 = *v1641++;
        *v1640++ = vand_s8(vceqz_s8(v1642), 0x101010101010101);
        v1639 -= 8;
      }

      while (v1639);
      if (v1625 != 8)
      {
        v1638 = 8;
        goto LABEL_1336;
      }
    }

    else
    {
      v1638 = 0;
LABEL_1336:
      v1643 = v1625 - v1638;
      v1644 = v2744 + v1638 + 5;
      v1645 = &v2744[v1638];
      do
      {
        v1646 = *v1645++;
        *v1644++ = v1646 == 0;
        --v1643;
      }

      while (v1643);
    }

    v1629 = 0;
    v1630 = 0;
    if (v2620 && v2621)
    {
      v1647 = 0;
      v1648 = 1;
      do
      {
        v1649 = *(v2744 + v1647 + 5);
        if (*(v2744 + v1647 + 5))
        {
          ++v1647;
        }

        else
        {
          v1648 = 0;
        }

        if (v1649)
        {
          v1650 = v1647 < v1625;
        }

        else
        {
          v1650 = 0;
        }
      }

      while (v1650);
      if (v1648)
      {
LABEL_1349:
        if ((v1626 * v1628) >= 1)
        {
          memcpy(v2754, v2755, 4 * v1626 * v1628);
        }

        v1629 = v1628;
        v1630 = v1626;
      }

      else
      {
        v1629 = 0;
        v1630 = 0;
      }
    }
  }

  v1651 = v1630 * v1629;
  v1652 = 3 * v1651;
  if (v1651 >= 1)
  {
    v1653 = v2786;
    v1654 = v2754;
    v1655 = v1651;
    do
    {
      v1656 = *v1654++;
      v1657 = *&v2791[12 * v1656 - 8];
      *(v1653 - 2) = *&v2791[12 * v1656 - 12];
      *(v1653 - 1) = v1657;
      *v1653 = *&v2791[12 * v1656 - 4];
      v1653 += 3;
      --v1655;
    }

    while (v1655);
    v1658 = v2794;
    v1659 = v2754;
    v1660 = v1651;
    do
    {
      v1661 = *v1659++;
      v1662 = *&v2790[12 * v1661 - 8];
      *(v1658 - 2) = *&v2790[12 * v1661 - 12];
      *(v1658 - 1) = v1662;
      *v1658 = *&v2790[12 * v1661 - 4];
      v1658 += 3;
      --v1660;
    }

    while (v1660);
    if (v1651 < 4)
    {
      v1663 = 0;
      goto LABEL_1363;
    }

    v1663 = v1651 & 0x7FFFFFFC;
    v1664 = &v2792;
    v1665 = v2835;
    __asm { FMOV            V0.4S, #1.0 }

    v1667 = v1663;
    do
    {
      *_Q1.f32 = vld3q_f32(v1664);
      v1664 += 12;
      v1669 = vdivq_f32(_Q0, v1668);
      v2949.val[0] = vmulq_f32(_Q1, v1669);
      v2949.val[1] = vmulq_f32(v1670, v1669);
      v2949.val[2] = vmulq_f32(v1668, v1669);
      vst3q_f32(v1665, v2949);
      v1665 += 12;
      v1667 -= 4;
    }

    while (v1667);
    if (v1663 != v1651)
    {
LABEL_1363:
      v1671 = v1651 - v1663;
      v1672 = 12 * v1663;
      v1673 = &v2835[12 * v1663];
      v1674 = &v2792 + v1672;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        _Q1.i64[0] = *v1674;
        _Q1.i32[2] = *(v1674 + 2);
        _Q1 = vmulq_f32(_Q1, vdivq_f32(_Q0, vdupq_laneq_s32(_Q1, 2)));
        *(v1673 + 2) = _Q1.i32[2];
        *v1673 = _Q1.i64[0];
        v1673 += 12;
        v1674 += 12;
        --v1671;
      }

      while (v1671);
    }

    memcpy(&v2792, v2835, 4 * (3 * v1651));
    if (v1651 < 4)
    {
      v1677 = 0;
      goto LABEL_1370;
    }

    v1677 = v1651 & 0x7FFFFFFC;
    v1678 = v2785;
    v1679 = v2835;
    __asm { FMOV            V0.4S, #1.0 }

    v1681 = v1677;
    do
    {
      *v1676.f32 = vld3q_f32(v1678);
      v1678 += 12;
      v1683 = vdivq_f32(_Q0, v1682);
      v2950.val[0] = vmulq_f32(v1676, v1683);
      v2950.val[1] = vmulq_f32(v1684, v1683);
      v2950.val[2] = vmulq_f32(v1682, v1683);
      vst3q_f32(v1679, v2950);
      v1679 += 12;
      v1681 -= 4;
    }

    while (v1681);
    if (v1677 != v1651)
    {
LABEL_1370:
      v1685 = v1651 - v1677;
      v1686 = 12 * v1677;
      v1687 = &v2835[12 * v1677];
      v1688 = &v2785[v1686];
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v1676.i64[0] = *v1688;
        v1676.i32[2] = *(v1688 + 2);
        v1676 = vmulq_f32(v1676, vdivq_f32(_Q0, vdupq_laneq_s32(v1676, 2)));
        *(v1687 + 2) = v1676.i32[2];
        *v1687 = v1676.i64[0];
        v1687 += 12;
        v1688 += 12;
        --v1685;
      }

      while (v1685);
    }

    memcpy(v2785, v2835, 4 * (3 * v1651));
  }

  v1690 = (2 * v1651);
  if (!v1651)
  {
    v1694 = 0;
    v1695 = 0;
    v1696 = 0;
    v1697 = 0;
    v2662 = 0;
    LODWORD(v1698) = 0;
    v540.i64[0] = 0x97FC00000;
    v432.i32[0] = 2143289344;
    v2817 = 0x900000000;
    v2816 = 0x300000000;
    v2718 = v540;
    *&v2729 = NAN;
    v2721 = v432;
    *&v2741 = NAN;
    goto LABEL_1638;
  }

  v1691 = v2792;
  if (v1651 <= 1)
  {
    v1692 = v1651;
    v586.f32[0] = v2792 / v1651;
    v1693 = v2793;
    goto LABEL_1394;
  }

  v1699 = (v1651 + 1);
  v1700 = v1699 - 2;
  if ((v1699 - 2) <= 1)
  {
    v1701 = 2;
    goto LABEL_1383;
  }

  v1702 = v1700 & 0xFFFFFFFFFFFFFFFELL;
  v1703 = 0.0;
  v1704 = 0x300000000;
  v1705 = 0x600000000;
  v1706 = v1700 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v1691 = *(&v2792 + (v1704 >> 30)) + v1691;
    v1703 = *(&v2792 + (v1705 >> 30)) + v1703;
    v1705 += 0x600000000;
    v1704 += 0x600000000;
    v1706 -= 2;
  }

  while (v1706);
  v1701 = v1702 + 2;
  v1691 = v1703 + v1691;
  if (v1700 == v1702)
  {
    v1692 = v1651;
    v1693 = v2793;
LABEL_1388:
    v1709 = 0x700000000;
    v435.i64[0] = 0;
    v1710 = 0x400000000;
    v1711 = v1702;
    do
    {
      v1693 = *(&v2792 + (v1710 >> 30)) + v1693;
      v435.f32[0] = *(&v2792 + (v1709 >> 30)) + v435.f32[0];
      v1709 += 0x600000000;
      v1710 += 0x600000000;
      v1711 -= 2;
    }

    while (v1711);
    v1693 = v435.f32[0] + v1693;
    if (v1700 != v1702)
    {
      goto LABEL_1391;
    }
  }

  else
  {
LABEL_1383:
    v1707 = v1699 - v1701;
    v1708 = 0x300000000 * v1701 - 0x300000000;
    do
    {
      v1691 = *(&v2792 + (v1708 >> 30)) + v1691;
      v1708 += 0x300000000;
      --v1707;
    }

    while (v1707);
    v1692 = v1651;
    v1693 = v2793;
    if (v1700 >= 2)
    {
      v1702 = v1700 & 0xFFFFFFFFFFFFFFFELL;
      v1701 = (v1700 & 0xFFFFFFFFFFFFFFFELL) + 2;
      goto LABEL_1388;
    }

    v1701 = 2;
LABEL_1391:
    v1712 = v1699 - v1701;
    v1713 = 0x300000000 * v1701 - 0x200000000;
    do
    {
      v1693 = *(&v2792 + (v1713 >> 30)) + v1693;
      v1713 += 0x300000000;
      --v1712;
    }

    while (v1712);
  }

  v586.f32[0] = v1691 / v1692;
LABEL_1394:
  v367.f32[0] = v1693 / v1692;
  if (v1651 < 1)
  {
    v366.i32[0] = 2143289344;
    v368.i32[0] = 2143289344;
  }

  else
  {
    if (v1651 > 8)
    {
      v1715 = v1651 & 7;
      if ((v1651 & 7) == 0)
      {
        v1715 = 8;
      }

      v1714 = v1651 - v1715;
      v1716 = vdupq_lane_s32(*v586.f32, 0);
      v1717 = v2824;
      v1718 = &v2792;
      v1719 = v1714;
      do
      {
        v1720 = v1718;
        v1718 += 24;
        v1721 = vld3q_f32(v1720);
        v1720 += 12;
        v432 = vsubq_f32(v1721, v1716);
        v1722 = vld3q_f32(v1720);
        v435 = vsubq_f32(v1722, v1716);
        v1717[-1] = v432;
        *v1717 = v435;
        v1717 += 2;
        v1719 -= 8;
      }

      while (v1719);
    }

    else
    {
      v1714 = 0;
    }

    v1723 = v1651 - v1714;
    v1724 = &v2823[4 * v1714 + 432];
    v1725 = &v2792 + 3 * v1714;
    do
    {
      v1726 = *v1725;
      v1725 += 3;
      *v1724++ = v1726 - v586.f32[0];
      --v1723;
    }

    while (v1723);
    if (v1651 > 8)
    {
      v1728 = v1651 & 7;
      if ((v1651 & 7) == 0)
      {
        v1728 = 8;
      }

      v1729 = vdupq_lane_s32(*v367.f32, 0);
      v1727 = v1651 - v1728;
      v1730 = v2823;
      v1731 = &v2796;
      v1732 = v1727;
      do
      {
        v1733 = v1731 - 12;
        v1734 = vld3q_f32(v1733);
        *(&v366 - 2) = vld3q_f32(v1731);
        v432 = vsubq_f32(v1734, v1729);
        v435 = vsubq_f32(v1735, v1729);
        v1730[-1] = v432;
        *v1730 = v435;
        v1730 += 2;
        v1731 += 24;
        v1732 -= 8;
      }

      while (v1732);
    }

    else
    {
      v1727 = 0;
    }

    v1736 = v1651 - v1727;
    v1737 = &v2822[4 * v1727 + 376];
    v1738 = &v2792 + 3 * v1727 + 1;
    do
    {
      v1739 = *v1738;
      v1738 += 3;
      *v1737++ = v1739 - v367.f32[0];
      --v1736;
    }

    while (v1736);
    if (v1651 < 8)
    {
      v1740 = 0;
      goto LABEL_1417;
    }

    v1740 = v1651 & 0x7FFFFFF8;
    v1741 = v2819;
    v1742 = v2824;
    v1743 = v1740;
    do
    {
      v432 = vabsq_f32(*v1742);
      v1741[-1] = vabsq_f32(v1742[-1]);
      *v1741 = v432;
      v1741 += 2;
      v1742 += 2;
      v1743 -= 8;
    }

    while (v1743);
    if (v1740 != v1651)
    {
LABEL_1417:
      v1744 = v1651 - v1740;
      v1745 = 4 * v1740;
      v1746 = &v2818[v1740];
      v1747 = &v2823[v1745 + 432];
      do
      {
        v1748 = *v1747++;
        *v1746++ = fabsf(v1748);
        --v1744;
      }

      while (v1744);
    }

    v1749 = *v2818;
    if (v1651 >= 2)
    {
      v1750 = (v1651 + 1);
      v1751 = v1750 - 2;
      if ((v1750 - 2) >= 8)
      {
        v1753 = v1751 & 0xFFFFFFFFFFFFFFF8;
        v432 = 0uLL;
        v435 = v2818[0];
        v1754 = v2820;
        v1755 = v1751 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v435 = vaddq_f32(v1754[-1], v435);
          v432 = vaddq_f32(*v1754, v432);
          v1754 += 2;
          v1755 -= 8;
        }

        while (v1755);
        v1756 = vaddq_f32(v432, v435);
        v1749 = vaddv_f32(*&vpaddq_f32(v1756, v1756));
        if (v1751 != v1753)
        {
          v1752 = v1753 | 2;
          goto LABEL_1426;
        }
      }

      else
      {
        v1752 = 2;
LABEL_1426:
        v1757 = v1750 - v1752;
        v1758 = &v2818[v1752 - 1];
        do
        {
          v1759 = *v1758++;
          v1749 = v1759 + v1749;
          --v1757;
        }

        while (v1757);
      }
    }

    if (v1651 < 8)
    {
      v1760 = 0;
      goto LABEL_1433;
    }

    v1760 = v1651 & 0x7FFFFFF8;
    v1761 = v2819;
    v1762 = v2823;
    v1763 = v1760;
    do
    {
      v432 = vabsq_f32(v1762[-1]);
      v435 = vabsq_f32(*v1762);
      v1761[-1] = v432;
      *v1761 = v435;
      v1761 += 2;
      v1762 += 2;
      v1763 -= 8;
    }

    while (v1763);
    if (v1760 != v1651)
    {
LABEL_1433:
      v1764 = v1651 - v1760;
      v1765 = 4 * v1760;
      v1766 = &v2818[v1760];
      v1767 = &v2822[v1765 + 376];
      do
      {
        v1768 = *v1767++;
        *v1766++ = fabsf(v1768);
        --v1764;
      }

      while (v1764);
    }

    v432.i32[0] = v2818[0];
    if (v1651 >= 2)
    {
      v1769 = (v1651 + 1);
      v1770 = v1769 - 2;
      if ((v1769 - 2) >= 8)
      {
        v1772 = v1770 & 0xFFFFFFFFFFFFFFF8;
        v435 = 0uLL;
        v1773 = v2818[0];
        v1774 = v2820;
        v1775 = v1770 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v1773 = vaddq_f32(v1774[-1], v1773);
          v435 = vaddq_f32(*v1774, v435);
          v1774 += 2;
          v1775 -= 8;
        }

        while (v1775);
        v432 = vaddq_f32(v435, v1773);
        v432.i64[0] = vpaddq_f32(v432, v432).u64[0];
        v432.f32[0] = vaddv_f32(*v432.f32);
        if (v1770 != v1772)
        {
          v1771 = v1772 | 2;
          goto LABEL_1442;
        }
      }

      else
      {
        v1771 = 2;
LABEL_1442:
        v1776 = v1769 - v1771;
        v1777 = &v2818[v1771 - 1];
        do
        {
          v1778 = *v1777++;
          v432.f32[0] = v1778 + v432.f32[0];
          --v1776;
        }

        while (v1776);
      }
    }

    v368.f32[0] = v1749 / v1692;
    v1779 = v586;
    v1779.i32[1] = v367.i32[0];
    *v1779.f32 = vneg_f32(*v1779.f32);
    v366.f32[0] = v432.f32[0] / v1692;
    if (v1651 <= 3)
    {
      v1780 = 0;
      goto LABEL_1449;
    }

    v435.f32[0] = 1.0 / v368.f32[0];
    v1781 = vdupq_lane_s32(*v435.f32, 0);
    v432.f32[0] = 1.0 / v366.f32[0];
    v1782 = vdupq_lane_s32(*v432.f32, 0);
    v1783 = vdupq_lane_s32(*&vmulq_f32(v1779, v435), 0);
    v1780 = v1651 & 0x7FFFFFFC;
    v1784 = vmulq_lane_f32(v1782, *v1779.f32, 1);
    v1785 = &v2828;
    v1786 = &v2792;
    v1787 = v1780;
    do
    {
      v2954 = vld3q_f32(v1786);
      v1786 += 12;
      v1788 = vmulq_f32(v2954.val[1], 0);
      v2958.val[0] = vmlaq_f32(vmlaq_f32(v1788, v1781, v2954.val[0]), v1783, v2954.val[2]);
      v1789 = vmulq_f32(v2954.val[0], 0);
      v1790 = vaddq_f32(v1788, v1789);
      v2958.val[1] = vmlaq_f32(vmlaq_f32(v1789, v1782, v2954.val[1]), v1784, v2954.val[2]);
      v2958.val[2] = vaddq_f32(v1790, v2954.val[2]);
      vst3q_f32(v1785, v2958);
      v1785 += 12;
      v1787 -= 4;
    }

    while (v1787);
    if (v1780 != v1651)
    {
LABEL_1449:
      __asm { FMOV            V2.2S, #1.0 }

      v1792 = vdiv_f32(_D2, __PAIR64__(v366.u32[0], v368.u32[0]));
      v1793 = vmul_f32(*v1779.f32, v1792);
      v1794 = v1651 - v1780;
      v1795 = 12 * v1780 + 8;
      v1796 = (&v2828 + v1795);
      v1797 = (&v2792 + v1795);
      do
      {
        v1798 = *v1797;
        v1799 = *(v1797 - 2);
        v1800 = vmul_f32(v1799, 0);
        *(v1796 - 1) = vmla_n_f32(vmla_f32(vrev64_s32(v1800), v1792, v1799), v1793, *v1797);
        *v1796 = vaddv_f32(v1800) + v1798;
        v1796 += 3;
        v1797 += 3;
        --v1794;
      }

      while (v1794);
    }
  }

  v2718 = v368;
  v2721 = v366;
  v2817 = v1690 | 0x900000000;
  v2741 = v586.i32[0];
  v2729 = v367.i32[0];
  if (18 * v1651 > 0)
  {
    bzero(v2928, 8 * (18 * v1651));
  }

  v2816 = v1651 | 0x300000000;
  if (v1651 < 1)
  {
    v1802 = v1690;
    if (v1690 <= 0)
    {
      goto LABEL_1626;
    }

LABEL_1457:
    v1694 = 0;
    v1803 = 1;
    v1804 = 2 * v1651;
LABEL_1628:
    v2074 = 0;
    v2075 = 0;
    LODWORD(v1698) = 9 * v1804;
    if (9 * v1804 <= 1)
    {
      v1698 = 1;
    }

    else
    {
      v1698 = v1698;
    }

    v2662 = v1803;
    do
    {
      while ((v2075 & 1) == 0 && (*(v2928 + v2074) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v2075 = 0;
        if (++v2074 == v1698)
        {
          v1697 = v1802;
          goto LABEL_1637;
        }
      }

      ++v2074;
      v2075 = 1;
    }

    while (v2074 != v1698);
    v2095 = v1802;
    LODWORD(v2743) = v1698;
    LODWORD(v2932) = v1804;
    HIDWORD(v2932) = 9;
    if (v1804)
    {
      bzero(v2935, 72 * v1804);
    }

    coder::internal::b_svd(v2935, &v2932, v2937, &v2929, v2933, &v2743, &v2930, v620);
    v2816 = v2929;
    v2096 = (HIDWORD(v2929) * v2929);
    v2089 = *&rtNaN;
    v2091 = *&v2741;
    v2092 = *&v2729;
    v2093 = v2721;
    v2094 = v2718;
    if (v2096 >= 1)
    {
      if (v2096 <= 3)
      {
        v2097 = 0;
LABEL_1647:
        v2101 = v2096 - v2097;
        v2102 = &v2921[v2097];
        do
        {
          *v2102++ = v2089;
          --v2101;
        }

        while (v2101);
        goto LABEL_1649;
      }

      v2097 = v2096 & 0x7FFFFFFC;
      v2098 = vdupq_lane_s64(rtNaN, 0);
      v2099 = v2922;
      v2100 = v2097;
      do
      {
        v2099[-1] = v2098;
        *v2099 = v2098;
        v2099 += 2;
        v2100 -= 4;
      }

      while (v2100);
      if (v2097 != v2096)
      {
        goto LABEL_1647;
      }
    }

LABEL_1649:
    v2103 = LODWORD(v2743);
    v2090 = v2095;
    if (SLODWORD(v2743) >= 1)
    {
      if (LODWORD(v2743) > 3)
      {
        v2104 = LODWORD(v2743) & 0x7FFFFFFC;
        v2105 = vdupq_lane_s64(*&v2089, 0);
        v2106 = &v2934;
        v2107 = v2104;
        do
        {
          v2106[-1] = v2105;
          *v2106 = v2105;
          v2106 += 2;
          v2107 -= 4;
        }

        while (v2107);
        if (v2104 == v2103)
        {
          goto LABEL_1657;
        }
      }

      else
      {
        v2104 = 0;
      }

      v2108 = v2103 - v2104;
      v2109 = &v2933[v2104];
      do
      {
        *v2109++ = v2089;
        --v2108;
      }

      while (v2108);
    }

LABEL_1657:
    *v2900 = v2089;
    *&v2900[1] = v2089;
    *&v2900[2] = v2089;
    *&v2900[3] = v2089;
    *&v2900[4] = v2089;
    *&v2900[5] = v2089;
    *&v2900[6] = v2089;
    *&v2900[7] = v2089;
    *&v2900[8] = v2089;
    *&v2900[9] = v2089;
    *&v2900[10] = v2089;
    *&v2900[11] = v2089;
    *&v2900[12] = v2089;
    *&v2900[13] = v2089;
    *&v2900[14] = v2089;
    *&v2900[15] = v2089;
    *&v2900[16] = v2089;
    *&v2900[17] = v2089;
    *&v2900[18] = v2089;
    *&v2900[19] = v2089;
    *&v2900[20] = v2089;
    *&v2900[21] = v2089;
    *&v2900[22] = v2089;
    *&v2900[23] = v2089;
    *&v2900[24] = v2089;
    *&v2900[25] = v2089;
    *&v2900[26] = v2089;
    *&v2900[27] = v2089;
    *&v2900[28] = v2089;
    *&v2900[29] = v2089;
    *&v2900[30] = v2089;
    *&v2900[31] = v2089;
    *&v2900[32] = v2089;
    *&v2900[33] = v2089;
    *&v2900[34] = v2089;
    *&v2900[35] = v2089;
    *&v2900[36] = v2089;
    *&v2900[37] = v2089;
    *&v2900[38] = v2089;
    *&v2900[39] = v2089;
    *&v2900[40] = v2089;
    *&v2900[41] = v2089;
    *&v2900[42] = v2089;
    *&v2900[43] = v2089;
    *&v2900[44] = v2089;
    *&v2900[45] = v2089;
    *&v2900[46] = v2089;
    *&v2900[47] = v2089;
    *&v2900[48] = v2089;
    *&v2900[49] = v2089;
    *&v2900[50] = v2089;
    *&v2900[51] = v2089;
    *&v2900[52] = v2089;
    *&v2900[53] = v2089;
    *&v2900[54] = v2089;
    *&v2900[55] = v2089;
    *&v2900[56] = v2089;
    *&v2900[57] = v2089;
    *&v2900[58] = v2089;
    *&v2900[59] = v2089;
    *&v2900[60] = v2089;
    *&v2900[61] = v2089;
    *&v2900[62] = v2089;
    *&v2900[63] = v2089;
    *&v2900[64] = v2089;
    *&v2900[65] = v2089;
    *&v2900[66] = v2089;
    *&v2900[67] = v2089;
    *&v2900[68] = v2089;
    *&v2900[69] = v2089;
    *&v2900[70] = v2089;
    *&v2900[71] = v2089;
    *&v2900[72] = v2089;
    *&v2900[73] = v2089;
    *&v2900[74] = v2089;
    *&v2900[75] = v2089;
    v1695 = v1651;
    *&v2900[76] = v2089;
    v1696 = 2 * v1651;
    v2088 = v2089;
    *&v2900[77] = v2089;
    *&v2087 = v2089;
    v2086 = v2089;
    *&v2900[78] = v2089;
    v2085 = v2089;
    v2084 = v2089;
    *&v2900[79] = v2089;
    *v2083.i64 = v2089;
    *v2082.i64 = v2089;
    v2081 = v2089;
    *&v2900[80] = v2089;
    goto LABEL_1658;
  }

  if (v1651 >= 9)
  {
    v1805 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1805 = 8;
    }

    v1801 = v1651 - v1805;
    v1806 = &v2835[16];
    v1807 = v2785;
    v1808 = v1801;
    do
    {
      v1809 = v1807 + 24;
      v1811 = vld3q_f32(v1807);
      v1810 = v1807 + 12;
      v1812 = vld3q_f32(v1810);
      *(v1806 - 1) = v1811;
      *v1806 = v1812;
      v1806 += 2;
      v1807 = v1809;
      v1808 -= 8;
    }

    while (v1808);
  }

  else
  {
    v1801 = 0;
  }

  v1813 = v1651 - v1801;
  v1814 = &v2835[4 * v1801];
  v1815 = &v2785[12 * v1801];
  do
  {
    v1816 = *v1815;
    v1815 += 3;
    *v1814++ = v1816;
    --v1813;
  }

  while (v1813);
  if (v1651 >= 9)
  {
    v1818 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1818 = 8;
    }

    v1817 = v1651 - v1818;
    v1819 = &v2835[4 * v1651 + 16];
    v1820 = &v2788;
    v1821 = v1817;
    do
    {
      v1822 = v1820 - 12;
      v1823 = vld3q_f32(v1822);
      v1824 = vld3q_f32(v1820);
      *(v1819 - 1) = v1823;
      *v1819 = v1824;
      v1819 += 2;
      v1820 += 24;
      v1821 -= 8;
    }

    while (v1821);
  }

  else
  {
    v1817 = 0;
  }

  v1825 = v1651 - v1817;
  v1826 = &v2835[4 * v1817 + 4 * v1651];
  v1827 = &v2785[12 * v1817 + 4];
  do
  {
    v1828 = *v1827;
    v1827 += 3;
    *v1826++ = v1828;
    --v1825;
  }

  while (v1825);
  if (v1651 >= 9)
  {
    v1830 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1830 = 8;
    }

    v1829 = v1651 - v1830;
    v1831 = &v2835[8 * v1651 + 16];
    v1832 = v2789;
    v1833 = v1829;
    do
    {
      v1834 = v1832 - 12;
      v1835 = vld3q_f32(v1834);
      v1836 = vld3q_f32(v1832);
      *(v1831 - 1) = v1835;
      *v1831 = v1836;
      v1831 += 2;
      v1832 += 24;
      v1833 -= 8;
    }

    while (v1833);
  }

  else
  {
    v1829 = 0;
  }

  v1837 = v1651 - v1829;
  v1838 = 8 * v1651;
  v1839 = &v2835[8 * v1651 + 4 * v1829];
  v1840 = &v2785[12 * v1829 + 8];
  do
  {
    v1841 = *v1840;
    v1840 += 3;
    *v1839++ = v1841;
    --v1837;
  }

  while (v1837);
  if (v1652 <= 1)
  {
    v1842 = 1;
  }

  else
  {
    v1842 = v1652;
  }

  if (v1652 <= 7)
  {
    v1843 = 0;
    goto LABEL_1488;
  }

  v1843 = v1842 & 0x7FFFFFF8;
  v1844 = (v2904 + 4);
  v1845 = &v2835[16];
  v1846 = v1843;
  do
  {
    v1847 = *v1845[-2].f32;
    v1848 = vcvtq_f64_f32(*v1845);
    v1849 = vcvt_hight_f64_f32(*v1845->f32);
    v1844[-2] = vcvtq_f64_f32(*v1847.f32);
    v1844[-1] = vcvt_hight_f64_f32(v1847);
    *v1844 = v1848;
    v1844[1] = v1849;
    v1844 += 4;
    v1845 += 4;
    v1846 -= 8;
  }

  while (v1846);
  if (v1843 != v1842)
  {
LABEL_1488:
    v1850 = v1842 - v1843;
    v1851 = &v2901 + v1843;
    v1852 = &v2835[4 * v1843];
    do
    {
      v1853 = *v1852++;
      *v1851++ = v1853;
      --v1850;
    }

    while (v1850);
  }

  v1854 = v1690 > 0;
  if (v1651 == 1)
  {
    v1855 = 0;
    goto LABEL_1495;
  }

  v1856 = 0;
  v1855 = v1651 & 0x7FFFFFFE;
  v1857 = &v2901 + 1;
  v1858 = v1855;
  do
  {
    v1859 = *v1857;
    *(v2928 + (v1856 << v1854)) = *(v1857 - 1);
    *(v2928 + ((v1856 + 1) << v1854)) = v1859;
    v1857 += 2;
    v1856 += 2;
    v1858 -= 2;
  }

  while (v1858);
  for (; v1651 != v1855; ++v1855)
  {
LABEL_1495:
    *(v2928 + (v1855 << v1854)) = *(&v2901 + v1855);
  }

  v1802 = v1690;
  if (v1651 == 1)
  {
    v1860 = 0;
    goto LABEL_1501;
  }

  v1861 = 0;
  v1860 = v1651 & 0x7FFFFFFE;
  v1862 = &v2901 + v1651 + 1;
  v1863 = v1860;
  do
  {
    v1864 = *v1862;
    *(v2928 + v1690 + (v1861 << v1854)) = *(v1862 - 1);
    *(v2928 + v1690 + ((v1861 + 1) << v1854)) = v1864;
    v1862 += 2;
    v1861 += 2;
    v1863 -= 2;
  }

  while (v1863);
  for (; v1651 != v1860; ++v1860)
  {
LABEL_1501:
    *(v2928 + v1690 + (v1860 << v1854)) = *(&v2901 + v1651 + v1860);
  }

  v1865 = v1690;
  if (v1651 == 1)
  {
    v1866 = 0;
    goto LABEL_1507;
  }

  v1867 = 0;
  v1866 = v1651 & 0x7FFFFFFE;
  v1868 = &v2901 + 2 * v1651 + 1;
  v1869 = v1866;
  do
  {
    v1870 = *v1868;
    *(&v2928[v1865] + (v1867 << v1854)) = *(v1868 - 1);
    *(&v2928[v1865] + ((v1867 + 1) << v1854)) = v1870;
    v1868 += 2;
    v1867 += 2;
    v1869 -= 2;
  }

  while (v1869);
  for (; v1651 != v1866; ++v1866)
  {
LABEL_1507:
    *(&v2928[v1865] + (v1866 << v1854)) = *(&v2901 + 2 * v1651 + v1866);
  }

  v1871 = v1690 > 1;
  v1872 = (6 * v1651) | v1871;
  if (v1651 == 1)
  {
    v1873 = 0;
    goto LABEL_1513;
  }

  v1874 = 0;
  v1873 = v1651 & 0x7FFFFFFE;
  v1875 = &v2901 + 1;
  v1876 = v1873;
  do
  {
    v1877 = *v1875;
    *(v2928 + (v1874 << v1871) + v1872) = *(v1875 - 1);
    *(v2928 + ((v1874 + 1) << v1871) + v1872) = v1877;
    v1875 += 2;
    v1874 += 2;
    v1876 -= 2;
  }

  while (v1876);
  for (; v1651 != v1873; ++v1873)
  {
LABEL_1513:
    *(v2928 + (v1873 << v1871) + v1872) = *(&v2901 + v1873);
  }

  v1878 = v1871 | (8 * v1651);
  if (v1651 == 1)
  {
    v1879 = 0;
    goto LABEL_1519;
  }

  v1880 = 0;
  v1879 = v1651 & 0x7FFFFFFE;
  v1881 = &v2901 + v1651 + 1;
  v1882 = v1879;
  do
  {
    v1883 = *v1881;
    *(v2928 + (v1880 << v1871) + v1878) = *(v1881 - 1);
    *(v2928 + ((v1880 + 1) << v1871) + v1878) = v1883;
    v1881 += 2;
    v1880 += 2;
    v1882 -= 2;
  }

  while (v1882);
  for (; v1651 != v1879; ++v1879)
  {
LABEL_1519:
    *(v2928 + (v1879 << v1871) + v1878) = *(&v2901 + v1651 + v1879);
  }

  v1884 = (10 * v1651) | v1871;
  if (v1651 == 1)
  {
    v1885 = 0;
    goto LABEL_1525;
  }

  v1886 = 0;
  v1885 = v1651 & 0x7FFFFFFE;
  v1887 = &v2901 + 2 * v1651 + 1;
  v1888 = v1885;
  do
  {
    v1889 = *v1887;
    *(v2928 + (v1886 << v1871) + v1884) = *(v1887 - 1);
    *(v2928 + ((v1886 + 1) << v1871) + v1884) = v1889;
    v1887 += 2;
    v1886 += 2;
    v1888 -= 2;
  }

  while (v1888);
  for (; v1651 != v1885; ++v1885)
  {
LABEL_1525:
    *(v2928 + (v1885 << v1871) + v1884) = *(&v2901 + 2 * v1651 + v1885);
  }

  if (v1651 >= 9)
  {
    v1891 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1891 = 8;
    }

    v1890 = v1651 - v1891;
    v1892 = (&v2839 + 4);
    v1893 = &v2828;
    v1894 = v1890;
    do
    {
      v1895 = v1893 + 24;
      v1897 = vld3q_f32(v1893);
      v1896 = v1893 + 12;
      v1898 = vld3q_f32(v1896);
      *(v1892 - 1) = v1897;
      *v1892 = v1898;
      v1892 += 2;
      v1893 = v1895;
      v1894 -= 8;
    }

    while (v1894);
  }

  else
  {
    v1890 = 0;
  }

  v1899 = v1651 - v1890;
  v1900 = &v2837 + v1890;
  v1901 = &v2828 + 3 * v1890;
  do
  {
    v1902 = *v1901;
    v1901 += 3;
    *v1900++ = v1902;
    --v1899;
  }

  while (v1899);
  if (v1651 >= 9)
  {
    v1904 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1904 = 8;
    }

    v1903 = v1651 - v1904;
    v1905 = (&v2839 + 4 * v1651 + 4);
    v1906 = &v2828;
    v1907 = v1903;
    do
    {
      v1908 = v1906 + 24;
      v1910 = vld3q_f32(v1906);
      v1909 = v1906 + 12;
      v1911 = vld3q_f32(v1909);
      *(v1905 - 1) = v1910;
      *v1905 = v1911;
      v1905 += 2;
      v1906 = v1908;
      v1907 -= 8;
    }

    while (v1907);
  }

  else
  {
    v1903 = 0;
  }

  v1912 = v1651 - v1903;
  v1913 = &v2837 + v1903 + v1651;
  v1914 = &v2828 + 3 * v1903;
  do
  {
    v1915 = *v1914;
    v1914 += 3;
    *v1913++ = v1915;
    --v1912;
  }

  while (v1912);
  if (v1651 >= 9)
  {
    v1917 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1917 = 8;
    }

    v1916 = v1651 - v1917;
    v1918 = (&v2839 + 8 * v1651 + 4);
    v1919 = &v2828;
    v1920 = v1916;
    do
    {
      v1921 = v1919 + 24;
      v1923 = vld3q_f32(v1919);
      v1922 = v1919 + 12;
      v1924 = vld3q_f32(v1922);
      *(v1918 - 1) = v1923;
      *v1918 = v1924;
      v1918 += 2;
      v1919 = v1921;
      v1920 -= 8;
    }

    while (v1920);
  }

  else
  {
    v1916 = 0;
  }

  v1925 = v1651 - v1916;
  v1926 = (&v2837 + 4 * v1916 + v1838);
  v1927 = &v2828 + 3 * v1916;
  do
  {
    v1928 = *v1927;
    v1927 += 3;
    *v1926++ = v1928;
    --v1925;
  }

  while (v1925);
  v1929 = 3 * v1690;
  if (v1651 == 1)
  {
    v1930 = 0;
    goto LABEL_1555;
  }

  v1931 = 0;
  v1930 = v1651 & 0x7FFFFFFE;
  v1932 = &v2835[4];
  v1933 = &v2838;
  v1934 = v1930;
  do
  {
    v1935 = -(*v1933 * *v1932);
    *(&v2928[v1929] + (v1931 << v1854)) = -(*(v1933 - 1) * *(v1932 - 1));
    *(&v2928[v1929] + ((v1931 + 1) << v1854)) = v1935;
    v1932 += 2;
    v1933 += 2;
    v1931 += 2;
    v1934 -= 2;
  }

  while (v1934);
  for (; v1651 != v1930; ++v1930)
  {
LABEL_1555:
    *(&v2928[v1929] + (v1930 << v1854)) = -(*(&v2837 + v1930) * *&v2835[4 * v1930]);
  }

  v1936 = 4 * v1690;
  v1937 = 7 * v1690;
  v1938 = 4 * v1651;
  if (v1651 == 1)
  {
    v1939 = 0;
    goto LABEL_1561;
  }

  v1940 = 0;
  v1939 = v1651 & 0x7FFFFFFE;
  v1941 = &v2835[v1938 + 4];
  v1942 = (&v2837 + v1938 + 4);
  do
  {
    v1943 = -(*v1942 * *v1941);
    *(v2928 + v1937 + (v1940 << v1854)) = -(*(v1942 - 1) * *(v1941 - 1));
    *(v2928 + v1937 + ((v1940 + 1) << v1854)) = v1943;
    v1940 += 2;
    v1941 += 2;
    v1942 += 2;
  }

  while (v1939 != v1940);
  for (; v1651 != v1939; ++v1939)
  {
LABEL_1561:
    *(v2928 + v1937 + (v1939 << v1854)) = -(*(&v2837 + 4 * v1939 + v1938) * *&v2835[4 * v1939 + v1938]);
  }

  if (v1651 == 1)
  {
    v1944 = 0;
    goto LABEL_1567;
  }

  v1945 = 0;
  v1944 = v1651 & 0x7FFFFFFE;
  v1946 = (8 * v1651) | 4;
  v1947 = &v2835[v1946];
  v1948 = (&v2837 + v1946);
  do
  {
    v1949 = -(*v1948 * *v1947);
    *(&v2928[v1936] + (v1945 << v1854)) = -(*(v1948 - 1) * *(v1947 - 1));
    *(&v2928[v1936] + ((v1945 + 1) << v1854)) = v1949;
    v1945 += 2;
    v1947 += 2;
    v1948 += 2;
  }

  while (v1944 != v1945);
  for (; v1651 != v1944; ++v1944)
  {
LABEL_1567:
    *(&v2928[v1936] + (v1944 << v1854)) = -(*(&v2837 + 4 * v1944 + v1838) * *&v2835[4 * v1944 + v1838]);
  }

  if (v1651 >= 9)
  {
    v1951 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1951 = 8;
    }

    v1950 = v1651 - v1951;
    v1952 = (&v2839 + 4);
    v1953 = v2834;
    v1954 = v1950;
    do
    {
      v1955 = v1953 - 12;
      v1956 = vld3q_f32(v1955);
      v1957 = vld3q_f32(v1953);
      *(v1952 - 1) = v1956;
      *v1952 = v1957;
      v1952 += 2;
      v1953 += 24;
      v1954 -= 8;
    }

    while (v1954);
  }

  else
  {
    v1950 = 0;
  }

  v1958 = v1651 - v1950;
  v1959 = &v2837 + v1950;
  v1960 = &v2828 + 3 * v1950 + 1;
  do
  {
    v1961 = *v1960;
    v1960 += 3;
    *v1959++ = v1961;
    --v1958;
  }

  while (v1958);
  if (v1651 >= 9)
  {
    v1963 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1963 = 8;
    }

    v1962 = v1651 - v1963;
    v1964 = (&v2839 + 4 * v1651 + 4);
    v1965 = v2834;
    v1966 = v1962;
    do
    {
      v1967 = v1965 - 12;
      v1968 = vld3q_f32(v1967);
      v1969 = vld3q_f32(v1965);
      *(v1964 - 1) = v1968;
      *v1964 = v1969;
      v1964 += 2;
      v1965 += 24;
      v1966 -= 8;
    }

    while (v1966);
  }

  else
  {
    v1962 = 0;
  }

  v1970 = v1651 - v1962;
  v1971 = &v2837 + v1962 + v1651;
  v1972 = &v2828 + 3 * v1962 + 1;
  do
  {
    v1973 = *v1972;
    v1972 += 3;
    *v1971++ = v1973;
    --v1970;
  }

  while (v1970);
  if (v1651 >= 9)
  {
    v1975 = v1651 & 7;
    if ((v1651 & 7) == 0)
    {
      v1975 = 8;
    }

    v1974 = v1651 - v1975;
    v1976 = (&v2839 + 8 * v1651 + 4);
    v1977 = v2834;
    v1978 = v1974;
    do
    {
      v1979 = v1977 - 12;
      v1980 = vld3q_f32(v1979);
      v1981 = vld3q_f32(v1977);
      *(v1976 - 1) = v1980;
      *v1976 = v1981;
      v1976 += 2;
      v1977 += 24;
      v1978 -= 8;
    }

    while (v1978);
  }

  else
  {
    v1974 = 0;
  }

  v1982 = v1651 - v1974;
  v1983 = (&v2837 + 4 * v1974 + v1838);
  v1984 = &v2828 + 3 * v1974 + 1;
  do
  {
    v1985 = *v1984;
    v1984 += 3;
    *v1983++ = v1985;
    --v1982;
  }

  while (v1982);
  v1986 = (v1929 * 2) | v1871;
  if (v1651 == 1)
  {
    v1987 = 0;
    goto LABEL_1597;
  }

  v1988 = 0;
  v1987 = v1651 & 0x7FFFFFFE;
  v1989 = &v2835[4];
  v1990 = &v2838;
  v1991 = v1987;
  do
  {
    v1992 = -(*v1990 * *v1989);
    *(v2928 + (v1988 << v1871) + v1986) = -(*(v1990 - 1) * *(v1989 - 1));
    *(v2928 + ((v1988 + 1) << v1871) + v1986) = v1992;
    v1989 += 2;
    v1990 += 2;
    v1988 += 2;
    v1991 -= 2;
  }

  while (v1991);
  for (; v1651 != v1987; ++v1987)
  {
LABEL_1597:
    *(v2928 + (v1987 << v1871) + v1986) = -(*(&v2837 + v1987) * *&v2835[4 * v1987]);
  }

  v1993 = v1937 | v1871;
  if (v1651 == 1)
  {
    v1994 = 0;
    goto LABEL_1603;
  }

  v1995 = 0;
  v1994 = v1651 & 0x7FFFFFFE;
  v1996 = &v2835[v1938 + 4];
  v1997 = (&v2837 + v1938 + 4);
  do
  {
    v1998 = -(*v1997 * *v1996);
    *(v2928 + (v1995 << v1871) + v1993) = -(*(v1997 - 1) * *(v1996 - 1));
    *(v2928 + ((v1995 + 1) << v1871) + v1993) = v1998;
    v1995 += 2;
    v1996 += 2;
    v1997 += 2;
  }

  while (v1994 != v1995);
  if (v1994 != v1651)
  {
LABEL_1603:
    v1999 = &v2835[v1938];
    v2000 = &v2837 + v1938;
    do
    {
      *(v2928 + (v1994 << v1871) + v1993) = -(*&v2000[4 * v1994] * *&v1999[4 * v1994]);
      ++v1994;
    }

    while (v1651 != v1994);
  }

  v2001 = (v1936 * 2) | v1871;
  if (v1651 == 1)
  {
    v2002 = 0;
    goto LABEL_1610;
  }

  v2003 = 0;
  v2002 = v1651 & 0x7FFFFFFE;
  v2004 = (8 * v1651) | 4;
  v2005 = &v2835[v2004];
  v2006 = (&v2837 + v2004);
  do
  {
    v2007 = -(*v2006 * *v2005);
    *(v2928 + (v2003 << v1871) + v2001) = -(*(v2006 - 1) * *(v2005 - 1));
    *(v2928 + ((v2003 + 1) << v1871) + v2001) = v2007;
    v2003 += 2;
    v2005 += 2;
    v2006 += 2;
  }

  while (v2002 != v2003);
  if (v2002 != v1651)
  {
LABEL_1610:
    v2008 = &v2835[v1838];
    v2009 = &v2837 + v1838;
    do
    {
      *(v2928 + (v2002 << v1871) + v2001) = -(*&v2009[4 * v2002] * *&v2008[4 * v2002]);
      ++v2002;
    }

    while (v1651 != v2002);
  }

  if (v1651 >= 5)
  {
    v1803 = v1690 > 0;
    v2010 = 0;
    v2011 = 0;
    v2012 = 8 * (2 * v1651);
    while (2)
    {
      v2013 = 9 * v2011;
      v2014 = &v2900[9 * v2011];
      v2014[8] = 0;
      *(v2014 + 2) = 0uLL;
      *(v2014 + 3) = 0uLL;
      v2015 = v2010;
      *v2014 = 0uLL;
      *(v2014 + 1) = 0uLL;
      if (v1690 < 1)
      {
        goto LABEL_1615;
      }

      v2016 = 8 * v2010;
      v2017 = v2013 + 1;
      v2018 = v2013 + 2;
      v2019 = v2013 + 3;
      v2020 = v2013 + 4;
      v2021 = v2013 + 5;
      v2022 = v2013 + 6;
      v2023 = v2013 + 7;
      v2024 = *&v2900[v2013 + 1];
      v2025 = *&v2900[v2013 + 2];
      v2026 = *&v2900[v2013 + 3];
      v2027 = *&v2900[v2013 + 4];
      v2028 = *&v2900[v2013 + 5];
      v2029 = *&v2900[v2013 + 6];
      v2030 = v2013 + 8;
      v2031 = *&v2900[v2023];
      v2032 = *&v2900[v2030];
      if (v1690 <= 3)
      {
        v2033 = 0;
        v2034 = 0.0;
        goto LABEL_1622;
      }

      v2035 = v2900[v2030];
      v2036 = v2900[v2023];
      v2037 = *&v2029;
      v2038 = *&v2028;
      v2039 = *&v2027;
      v2040 = *&v2026;
      v2041 = *&v2025;
      v2042 = *&v2024;
      v2043 = 0uLL;
      v2044 = v2928;
      v2045 = v1690 & 0xFFFFFFFC;
      v2046 = 0uLL;
      v2047 = 0uLL;
      v2048 = 0uLL;
      v2049 = 0uLL;
      v2050 = 0uLL;
      v2051 = 0uLL;
      v2052 = 0uLL;
      v2053 = 0uLL;
      v2054 = 0uLL;
      do
      {
        v2055 = *(v2044 + v2016);
        v2056 = *(v2044 + v2016 + 16);
        v2053 = vmlaq_f64(v2053, v2055, *v2044);
        v2054 = vmlaq_f64(v2054, v2056, v2044[1]);
        v2042 = vmlaq_f64(v2042, v2055, *(v2044 + 8 * (2 * v1651)));
        v2052 = vmlaq_f64(v2052, v2056, *(v2044 + v2012 + 16));
        v2057 = (v2044 + v2012 + v2012);
        v2041 = vmlaq_f64(v2041, v2055, *v2057);
        v2051 = vmlaq_f64(v2051, v2056, v2057[1]);
        v2058 = (v2057 + v2012);
        v2040 = vmlaq_f64(v2040, v2055, *v2058);
        v2050 = vmlaq_f64(v2050, v2056, v2058[1]);
        v2059 = (v2058 + v2012);
        v2039 = vmlaq_f64(v2039, v2055, *v2059);
        v2049 = vmlaq_f64(v2049, v2056, v2059[1]);
        v2060 = (v2059 + v2012);
        v2038 = vmlaq_f64(v2038, v2055, *v2060);
        v2048 = vmlaq_f64(v2048, v2056, v2060[1]);
        v2061 = (v2060 + v2012);
        v2037 = vmlaq_f64(v2037, v2055, *v2061);
        v2047 = vmlaq_f64(v2047, v2056, v2061[1]);
        v2062 = (v2061 + v2012);
        v2036 = vmlaq_f64(v2036, v2055, *v2062);
        v2046 = vmlaq_f64(v2046, v2056, v2062[1]);
        v2063 = (v2062 + v2012);
        v2035 = vmlaq_f64(v2035, v2055, *v2063);
        v2043 = vmlaq_f64(v2043, v2056, v2063[1]);
        v2044 += 2;
        v2045 -= 4;
      }

      while (v2045);
      v2032 = vaddvq_f64(vaddq_f64(v2043, v2035));
      v2031 = vaddvq_f64(vaddq_f64(v2046, v2036));
      v2029 = vaddvq_f64(vaddq_f64(v2047, v2037));
      v2028 = vaddvq_f64(vaddq_f64(v2048, v2038));
      v2027 = vaddvq_f64(vaddq_f64(v2049, v2039));
      v2026 = vaddvq_f64(vaddq_f64(v2050, v2040));
      v2025 = vaddvq_f64(vaddq_f64(v2051, v2041));
      v2024 = vaddvq_f64(vaddq_f64(v2052, v2042));
      v2034 = vaddvq_f64(vaddq_f64(v2054, v2053));
      v2033 = v1690 & 0xFFFFFFFC;
      if (v2033 != v1690)
      {
LABEL_1622:
        v2064 = -v2016;
        v2065 = v1690 - v2033;
        v2066 = v2928 + v2033 + v2015;
        do
        {
          v2034 = v2034 + *(v2066 + v2064) * *v2066;
          v2067 = (v2066 + v2064 + v2012);
          v2024 = v2024 + *v2067 * *v2066;
          v2068 = &v2067[v2012 / 8];
          v2025 = v2025 + *v2068 * *v2066;
          v2069 = &v2068[v2012 / 8];
          v2026 = v2026 + *v2069 * *v2066;
          v2070 = &v2069[v2012 / 8];
          v2027 = v2027 + *v2070 * *v2066;
          v2071 = &v2070[v2012 / 8];
          v2028 = v2028 + *v2071 * *v2066;
          v2072 = &v2071[v2012 / 8];
          v2029 = v2029 + *v2072 * *v2066;
          v2073 = &v2072[v2012 / 8];
          v2031 = v2031 + *v2073 * *v2066;
          v2032 = v2032 + v2073[(2 * v1651)] * *v2066++;
          --v2065;
        }

        while (v2065);
      }

      *&v2900[v2017] = v2024;
      *&v2900[v2018] = v2025;
      *&v2900[v2019] = v2026;
      *&v2900[v2020] = v2027;
      *&v2900[v2021] = v2028;
      *&v2900[v2022] = v2029;
      *v2014 = v2034;
      *&v2900[v2023] = v2031;
      *&v2900[v2030] = v2032;
LABEL_1615:
      ++v2011;
      v2010 = v2015 + v1690;
      if (v2011 == 9)
      {
        v2817 = 0x900000009;
        memcpy(v2928, v2900, 0x288uLL);
        v1804 = 9;
        v1694 = 1;
        v1802 = v1690;
        goto LABEL_1628;
      }

      continue;
    }
  }

  if (v1690 >= 1)
  {
    goto LABEL_1457;
  }

LABEL_1626:
  v1697 = v1802;
  v1694 = 0;
  v2662 = 0;
  LODWORD(v1698) = 0;
LABEL_1637:
  v1695 = v1651;
  v1696 = 2 * v1651;
LABEL_1638:
  LODWORD(v2743) = v1698;
  coder::internal::b_svd(v2928, &v2817, v2921, &v2816, v2933, &v2743, v2900, v620);
  v2081 = *&v2900[80];
  v2082.i64[0] = v2900[72];
  v2083.i64[0] = v2900[73];
  v2084 = *&v2900[74];
  v2085 = *&v2900[75];
  v2086 = *&v2900[76];
  *&v2087 = v2900[77];
  v2088 = *&v2900[78];
  v2089 = *&v2900[79];
  v2090 = v1697;
  v2091 = *&v2741;
  v2092 = *&v2729;
  v2093 = v2721;
  v2094 = v2718;
LABEL_1658:
  *&v2076 = 1.0 / v2081;
  *v2083.i64 = *v2083.i64 * (1.0 / v2081);
  v2123 = v2086 * (1.0 / v2081);
  *&v2087 = *&v2087 * (1.0 / v2081);
  v2114 = v2089 * (1.0 / v2081);
  v2110 = *v2082.i64 * (1.0 / v2081);
  v2111 = v2085 * (1.0 / v2081);
  v2112 = v2088 * (1.0 / v2081);
  *&v2077 = ((v2111 * 0.0) + (v2094.f32[0] * v2110)) + (v2091 * v2112);
  *v2083.i32 = *v2083.i64;
  *&v2123 = v2123;
  v2113 = *&v2123 * 0.0;
  *&v2114 = v2114;
  v2115 = ((*&v2123 * 0.0) + (v2094.f32[0] * *v2083.i32)) + (v2091 * *&v2114);
  v2116 = v2084 * (1.0 / v2081);
  *&v2087 = *&v2087;
  v2117 = *&v2087 * 0.0;
  v2118 = v2081 * (1.0 / v2081);
  v2119 = ((*&v2087 * 0.0) + (v2091 * v2118)) + (v2094.f32[0] * v2116);
  v2120 = v2110 * 0.0;
  v2121 = (v2120 + (*v2093.i32 * v2111)) + (v2092 * v2112);
  v2122 = ((*v2083.i32 * 0.0) + (*v2093.i32 * *&v2123)) + (v2092 * *&v2114);
  *&v2123 = v2116 * 0.0;
  v2124 = ((v2116 * 0.0) + (v2092 * v2118)) + (*v2093.i32 * *&v2087);
  v2125 = ((v2111 * 0.0) + v2120) + v2112;
  v2126 = (v2113 + (*v2083.i32 * 0.0)) + *&v2114;
  v2127 = ((v2116 * 0.0) + v2118) + (*&v2087 * 0.0);
  if (!v1694)
  {
    v2523 = (*&v2123 + v2118) + v2117;
    *&v2078 = ((v2116 * 0.0) + (v2092 * v2118)) + (*v2093.i32 * *&v2087);
    *&v2080 = ((*&v2087 * 0.0) + (v2091 * v2118)) + (v2094.f32[0] * v2116);
    *&v2079 = v2126;
    *v2082.i32 = v2122;
    *&v2076 = v2115;
    *v2093.i32 = v2125;
    v2094.f32[0] = v2121;
    v2524 = v2609;
    goto LABEL_1942;
  }

  v2128 = 0;
  if (3 * v1651 <= 1)
  {
    v2129 = 1;
  }

  else
  {
    v2129 = (3 * v1651);
  }

  v2657 = 2 * v2090;
  v2655 = 6 * v2090;
  v2653 = 7 * v2090;
  v2130 = 14 * v1651;
  v2131 = v1695 - 1;
  v2132 = v1695 & 3;
  if ((v1695 & 3) == 0)
  {
    v2132 = 4;
  }

  v2691 = v1695 - v2132;
  v2133 = v1695 & 7;
  if ((v1695 & 7) == 0)
  {
    v2133 = 8;
  }

  v2687 = (v1695 - v2133);
  v2134 = v1695 < 2;
  v2670 = (6 * v1651) | 1;
  v2135 = v2670 + 2 * v2131 <= 6 * v1651;
  v2136 = (((8 * v1651) | 1) + 2 * v2131) <= 8 * v1651;
  v2137 = (((10 * v1651) | 1) + 2 * v2131) <= 10 * v1651;
  v2668 = (12 * v1651) | 1;
  v2138 = v2668 + 2 * v2131 <= 12 * v1651;
  v2671 = v2130 | 1;
  v2139 = (v2130 | 1) + 2 * v2131 <= v2130;
  if ((v2131 & 0xFFFFFFFF80000000) != 0)
  {
    v2135 = 1;
    v2136 = 1;
    v2137 = 1;
    v2138 = 1;
    v2139 = 1;
  }

  v2719 = v1695 - 1073741825;
  v2652 = v2134 || v2135;
  v2650 = v2134 || v2136;
  v2648 = v2134 || v2137;
  v2647 = v2134 || v2138;
  v2646 = v2134 || v2139;
  v2630 = &v2915 + 8 * v2090;
  v2140 = (&v2901 + v1695);
  v2629 = &v2915.i64[6 * v2090];
  v2628 = &v2915.i64[7 * v2090];
  *&v2114 = (*&v2123 + v2118) + v2117;
  *&v2079 = v2126;
  *v2093.i32 = ((v2111 * 0.0) + v2120) + v2112;
  *&v2078 = v2124;
  *v2083.i32 = v2122;
  v2094.f32[0] = v2121;
  *&v2080 = v2119;
  v2624 = v2115;
  *&v2076 = v2115;
  v2625 = *&v2077;
  v2696 = 3 * v1651;
  v2685 = (v1695 & 0xFFFFFFFC);
  v2716 = v1695 & 0x7FFFFFFE;
  v2714 = v1695 & 0xFFFFFFFE;
  v2707 = v2129;
  v2683 = v2129 & 0x7FFFFFF8;
  v2141 = 8 * v1696;
  v2627 = &v2915.f32[4 * v2090];
  v2661 = v2090;
  while (2)
  {
    *v2701 = v2076;
    v2673 = v2128;
    if (v1695 <= 3)
    {
      v2142 = 0;
      goto LABEL_1675;
    }

    v2143 = vdupq_lane_s32(*&v2076, 0);
    v2144 = vdupq_lane_s32(*&v2080, 0);
    v2145 = vdupq_lane_s32(*v2083.i8, 0);
    v2146 = vdupq_lane_s32(*&v2078, 0);
    v2147 = vdupq_lane_s32(*&v2079, 0);
    v2148 = &v2828;
    v2149 = v2785;
    v2150 = v1695 & 0xFFFFFFFC;
    v2151 = vdupq_lane_s32(*&v2114, 0);
    do
    {
      v2955 = vld3q_f32(v2149);
      v2149 += 12;
      v2959.val[0] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v2955.val[0], *&v2077), v2143, v2955.val[1]), v2144, v2955.val[2]);
      v2959.val[1] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v2955.val[0], v2094.f32[0]), v2145, v2955.val[1]), v2146, v2955.val[2]);
      v2959.val[2] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v2955.val[0], *v2093.i32), v2147, v2955.val[1]), v2151, v2955.val[2]);
      vst3q_f32(v2148, v2959);
      v2148 += 12;
      v2150 -= 4;
    }

    while (v2150);
    v2142 = v1695 & 0xFFFFFFFC;
    LODWORD(v2076) = v2701[0];
    if (v1695 != v2685)
    {
LABEL_1675:
      v2152 = v1695 - v2142;
      v2153 = 12 * v2142;
      v2154 = &v2786[3 * v2142];
      v2155 = (&v2829 + v2153 + 4);
      do
      {
        v2156 = *(v2154 - 2);
        v2157 = *(v2154 - 1);
        v2158 = *v2154;
        v2154 += 3;
        *(v2155 - 2) = ((v2156 * *&v2077) + (v2157 * *&v2076)) + (v2158 * *&v2080);
        *(v2155 - 1) = ((v2156 * v2094.f32[0]) + (v2157 * *v2083.i32)) + (v2158 * *&v2078);
        *v2155 = ((v2156 * *v2093.i32) + (v2157 * *&v2079)) + (v2158 * *&v2114);
        v2155 += 3;
        --v2152;
      }

      while (v2152);
    }

    v2722 = v2077;
    v2730 = v2094;
    v2742 = v2093;
    v2675 = v2083;
    v2677 = v2080;
    v2679 = v2079;
    v2681 = v2078;
    bzero(&v2914, 128 * v1651);
    if (v1695 >= 5)
    {
      v2163 = v2785;
      v2164 = &v2837;
      v2165 = &v2829 + 1;
      v2166 = v2691;
      v2162 = v2687;
      do
      {
        *(&v2159 - 1) = vld3q_f32(v2165);
        v2165 += 12;
        v2947 = vld3q_f32(v2163);
        v2163 += 12;
        __asm { FMOV            V6.4S, #1.0 }

        v2169 = vdivq_f32(_Q6, v2168);
        v2956.val[0] = vmulq_f32(v2947.val[0], v2169);
        v2956.val[1] = vmulq_f32(v2947.val[1], v2169);
        v2956.val[2] = vmulq_f32(v2947.val[2], v2169);
        vst3q_f32(v2164, v2956);
        v2164 += 12;
        v2166 -= 4;
      }

      while (v2166);
      v2160 = v2691;
      v2161 = v2661;
    }

    else
    {
      v2160 = 0;
      v2161 = v2661;
      v2162 = v2687;
    }

    v2170 = v1695 - v2160;
    v2171 = 12 * v2160;
    do
    {
      v2172 = (&v2829 + v2171 + 4);
      v2159.i64[0] = *&v2785[v2171];
      v2159.i32[2] = *&v2785[v2171 + 8];
      v2173 = vld1q_dup_f32(v2172);
      __asm { FMOV            V0.4S, #1.0 }

      v2159 = vmulq_f32(v2159, vdivq_f32(_Q0, v2173));
      *(&v2838 + v2171 + 4) = v2159.i32[2];
      *(&v2837 + v2171) = v2159.i64[0];
      v2171 += 12;
      --v2170;
    }

    while (v2170);
    if (v1695 >= 9)
    {
      v2176 = &v2837;
      v2177 = (v2904 + 4);
      v2178 = v2162;
      do
      {
        v2179 = v2176;
        v2176 += 24;
        v2180 = vld3q_f32(v2179);
        v2179 += 12;
        v2181 = vnegq_f32(v2180);
        v2182 = vcvtq_f64_f32(*v2181.f32);
        v2183 = vld3q_f32(v2179);
        v2184 = vnegq_f32(v2183);
        v2159 = vcvt_hight_f64_f32(v2181);
        v2177[-2] = v2182;
        v2177[-1] = v2159;
        *v2177 = vcvtq_f64_f32(*v2184.f32);
        v2177[1] = vcvt_hight_f64_f32(v2184);
        v2177 += 4;
        v2178 -= 8;
      }

      while (v2178);
      v2175 = v2162;
    }

    else
    {
      v2175 = 0;
    }

    v2185 = &v2837 + 3 * v2175;
    do
    {
      v2186 = *v2185;
      v2185 += 3;
      *(&v2901 + v2175) = -v2186;
      v2175 = v2175 + 1;
    }

    while (v1695 != v2175);
    if (v1695 >= 9)
    {
      v2188 = &v2845;
      v2189 = (&v2904[v1695] + 4);
      v2190 = v2162;
      do
      {
        v2191 = v2188 - 12;
        v2192 = vld3q_f32(v2191);
        v2193 = vld3q_f32(v2188);
        v2194 = vnegq_f32(v2192);
        v2195 = vnegq_f32(v2193);
        v2196 = vcvtq_f64_f32(*v2194.f32);
        v2159 = vcvt_hight_f64_f32(v2194);
        v2189[-2] = v2196;
        v2189[-1] = v2159;
        *v2189 = vcvtq_f64_f32(*v2195.f32);
        v2189[1] = vcvt_hight_f64_f32(v2195);
        v2189 += 4;
        v2188 += 24;
        v2190 -= 8;
      }

      while (v2190);
      v2187 = v2162;
    }

    else
    {
      v2187 = 0;
    }

    v2197 = &v2838 + 3 * v2187;
    do
    {
      v2198 = *v2197;
      v2197 += 3;
      *(&v2901 + v1695 + v2187) = -v2198;
      v2187 = v2187 + 1;
    }

    while (v1695 != v2187);
    if (v1695 >= 9)
    {
      v2200 = v2846;
      v2201 = (&v2904[2 * v1695] + 4);
      v2202 = v2162;
      do
      {
        v2203 = v2200 - 12;
        v2204 = vld3q_f32(v2203);
        v2205 = vld3q_f32(v2200);
        v2206 = vnegq_f32(v2204);
        v2207 = vnegq_f32(v2205);
        v2208 = vcvtq_f64_f32(*v2206.f32);
        v2159 = vcvt_hight_f64_f32(v2206);
        v2201[-2] = v2208;
        v2201[-1] = v2159;
        *v2201 = vcvtq_f64_f32(*v2207.f32);
        v2201[1] = vcvt_hight_f64_f32(v2207);
        v2201 += 4;
        v2200 += 24;
        v2202 -= 8;
      }

      while (v2202);
      v2199 = v2162;
    }

    else
    {
      v2199 = 0;
    }

    v2209 = &v2838 + 3 * v2199 + 1;
    do
    {
      v2210 = *v2209;
      v2209 += 3;
      v2140[v2199] = -v2210;
      v2199 = v2199 + 1;
    }

    while (v1695 != v2199);
    if (v2719 < 0xFFFFFFFFC0000001)
    {
      v2211 = 0;
      goto LABEL_1710;
    }

    v2212 = &v2915;
    v2213 = &v2901 + 1;
    v2214 = v1695 & 0x7FFFFFFE;
    do
    {
      v2215 = *v2213;
      v2212[-1].i64[0] = *(v2213 - 1);
      v2212->i64[0] = v2215;
      v2212 += 2;
      v2213 += 2;
      v2214 -= 2;
    }

    while (v2214);
    v2211 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2716)
    {
LABEL_1710:
      v2216 = v1695 - v2211;
      v2217 = 2 * v2211;
      v2218 = &v2901 + v2211;
      do
      {
        v2219 = *v2218++;
        v2914.i64[v2217] = v2219;
        v2217 += 2;
        --v2216;
      }

      while (v2216);
    }

    if (v2652)
    {
      v2220 = 0;
      goto LABEL_1717;
    }

    v2221 = v2670;
    v2222 = &v2901 + 1;
    v2223 = v1695 & 0xFFFFFFFE;
    do
    {
      v2224 = *v2222;
      v2914.i64[v2221] = *(v2222 - 1);
      *(&v2914 + v2221 + 2) = v2224;
      v2222 += 2;
      v2221 += 4;
      v2223 -= 2;
    }

    while (v2223);
    v2220 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1717:
      v2225 = v1695 - v2220;
      v2226 = v2670 + 2 * v2220;
      v2227 = &v2901 + v2220;
      do
      {
        v2228 = *v2227++;
        v2914.i64[v2226] = v2228;
        v2226 += 2;
        --v2225;
      }

      while (v2225);
    }

    if (v2719 < 0xFFFFFFFFC0000001)
    {
      v2229 = 0;
      goto LABEL_1724;
    }

    v2230 = v2630;
    v2231 = &v2901 + v1695 + 1;
    v2232 = v1695 & 0x7FFFFFFE;
    do
    {
      v2233 = *v2231;
      *(v2230 - 2) = *(v2231 - 1);
      *v2230 = v2233;
      v2230 += 4;
      v2231 += 2;
      v2232 -= 2;
    }

    while (v2232);
    v2229 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2716)
    {
LABEL_1724:
      v2234 = v1695 - v2229;
      v2235 = 2 * v2229;
      v2236 = &v2901 + v1695 + v2229;
      do
      {
        v2237 = *v2236++;
        v2914.i64[v2161 + v2235] = v2237;
        v2235 += 2;
        --v2234;
      }

      while (v2234);
    }

    if (v2650)
    {
      v2238 = 0;
      v2239 = v2657;
      goto LABEL_1731;
    }

    v2240 = (8 * v1651) | 1;
    v2241 = &v2901 + v1695 + 1;
    v2242 = v1695 & 0xFFFFFFFE;
    v2239 = v2657;
    do
    {
      v2243 = *v2241;
      v2914.i64[v2240] = *(v2241 - 1);
      *(&v2914 + v2240 + 2) = v2243;
      v2241 += 2;
      v2240 += 4;
      v2242 -= 2;
    }

    while (v2242);
    v2238 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1731:
      v2244 = v1695 - v2238;
      v2245 = ((8 * v1651) | 1) + 2 * v2238;
      v2246 = &v2901 + v1695 + v2238;
      do
      {
        v2247 = *v2246++;
        v2914.i64[v2245] = v2247;
        v2245 += 2;
        --v2244;
      }

      while (v2244);
    }

    if (v2719 < 0xFFFFFFFFC0000001)
    {
      v2248 = 0;
      goto LABEL_1738;
    }

    v2249 = v2627;
    v2250 = &v2901 + 2 * v1695 + 1;
    v2251 = v1695 & 0x7FFFFFFE;
    do
    {
      v2252 = *v2250;
      *(v2249 - 2) = *(v2250 - 1);
      *v2249 = v2252;
      v2249 += 4;
      v2250 += 2;
      v2251 -= 2;
    }

    while (v2251);
    v2248 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2716)
    {
LABEL_1738:
      v2253 = v1695 - v2248;
      v2254 = 2 * v2248;
      v2255 = &v2140[v2248];
      do
      {
        v2256 = *v2255++;
        v2914.i64[v2239 + v2254] = v2256;
        v2254 += 2;
        --v2253;
      }

      while (v2253);
    }

    if (v2648)
    {
      v2257 = 0;
      goto LABEL_1745;
    }

    v2258 = (10 * v1651) | 1;
    v2259 = &v2901 + 2 * v1695 + 1;
    v2260 = v1695 & 0xFFFFFFFE;
    do
    {
      v2261 = *v2259;
      v2914.i64[v2258] = *(v2259 - 1);
      *(&v2914 + v2258 + 2) = v2261;
      v2259 += 2;
      v2258 += 4;
      v2260 -= 2;
    }

    while (v2260);
    v2257 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1745:
      v2262 = v1695 - v2257;
      v2263 = ((10 * v1651) | 1) + 2 * v2257;
      v2264 = &v2140[v2257];
      do
      {
        v2265 = *v2264++;
        v2914.i64[v2263] = v2265;
        v2263 += 2;
        --v2262;
      }

      while (v2262);
    }

    if (v1695 < 4)
    {
      v2266 = 0;
      goto LABEL_1752;
    }

    v2267 = v2835;
    v2268 = &v2828;
    v2269 = v1695 & 0xFFFFFFFC;
    do
    {
      *v2159.f32 = vld3q_f32(v2268);
      v2268 += 12;
      v2271 = vdivq_f32(_Q0, v2270);
      v2951.val[0] = vmulq_f32(v2159, v2271);
      v2951.val[1] = vmulq_f32(v2272, v2271);
      v2951.val[2] = vmulq_f32(v2270, v2271);
      vst3q_f32(v2267, v2951);
      v2267 += 12;
      v2269 -= 4;
    }

    while (v2269);
    v2266 = v1695 & 0xFFFFFFFC;
    if (v1695 != v2685)
    {
LABEL_1752:
      v2273 = v1695 - v2266;
      v2274 = 12 * v2266;
      v2275 = &v2835[12 * v2266];
      v2276 = &v2828 + v2274;
      do
      {
        v2159.i64[0] = *v2276;
        v2159.i32[2] = *(v2276 + 2);
        v2159 = vmulq_f32(v2159, vdivq_f32(_Q0, vdupq_laneq_s32(v2159, 2)));
        *(v2275 + 2) = v2159.i32[2];
        *v2275 = v2159.i64[0];
        v2275 += 12;
        v2276 += 12;
        --v2273;
      }

      while (v2273);
    }

    memcpy(&v2828, v2835, 4 * (3 * v1651));
    if (v1695 >= 5)
    {
      v2286 = &v2825;
      v2287 = &v2828;
      v2288 = &v2792;
      v2289 = v2691;
      v2280 = v2662;
      v2078 = v2681;
      v2079 = v2679;
      v2080 = v2677;
      v2093 = v2742;
      v2094 = v2730;
      v2077 = v2722;
      v2281 = v2655;
      v2282 = v2653;
      v2283 = v2687;
      v2284 = 0uLL;
      v2285 = v1696 & 0xFFFFFFFC;
      do
      {
        v2290 = vsubq_f32(v2288[1], v2287[1]);
        v2291 = vsubq_f32(*v2288, *v2287);
        v2087 = vextq_s8(v2291, v2290, 4uLL);
        *&v2087 = v2291.i64[0];
        v2292 = vextq_s8(v2290, vextq_s8(vsubq_f32(v2288[2], v2287[2]), v2290, 4uLL), 8uLL);
        *v2286 = v2087;
        v2286[1] = v2292;
        v2286 += 2;
        v2287 += 3;
        v2288 += 3;
        v2289 -= 4;
      }

      while (v2289);
      v2279 = v2691;
    }

    else
    {
      v2279 = 0;
      v2280 = v2662;
      v2078 = v2681;
      v2079 = v2679;
      v2080 = v2677;
      v2093 = v2742;
      v2094 = v2730;
      v2077 = v2722;
      v2281 = v2655;
      v2282 = v2653;
      v2283 = v2687;
      v2284 = 0uLL;
      v2285 = v1696 & 0xFFFFFFFC;
    }

    v2293 = &v2828 + 3 * v2279;
    v2294 = &v2792 + 3 * v2279;
    do
    {
      v2295 = *v2294;
      v2294 += 3;
      v2296 = v2295;
      v2297 = *v2293;
      v2293 += 3;
      *&v2298 = vsub_f32(v2296, v2297);
      v2825.i64[v2279++] = v2298;
    }

    while (v1695 != v2279);
    if (v1695 >= 9)
    {
      v2300 = v2835;
      v2301 = &v2828;
      v2302 = v2283;
      do
      {
        v2303 = v2301;
        v2298 = vld3q_f32(v2303);
        v2303 += 12;
        v2304 = v2298;
        v2305 = v2298;
        v2087 = vld3q_f32(v2303);
        v2306 = v2087;
        v2307 = v2087;
        v2308 = v2300 + 24;
        vst3q_f32(v2300, *&v2298);
        v2309 = v2300 + 12;
        vst3q_f32(v2309, *&v2087);
        v2301 += 24;
        v2300 = v2308;
        v2302 -= 8;
      }

      while (v2302);
      v2299 = v2283;
    }

    else
    {
      v2299 = 0;
    }

    v2310 = v1695 - v2299;
    v2311 = 12 * v2299;
    v2312 = &v2835[12 * v2299];
    v2313 = (&v2828 + v2311);
    do
    {
      v2314 = *v2313;
      v2313 += 3;
      LODWORD(v2298) = v2314;
      *(v2312 + 2) = v2314;
      *v2312 = vdupq_lane_s32(*&v2298, 0).u64[0];
      v2312 += 12;
      --v2310;
    }

    while (v2310);
    if (v2696 < 8)
    {
      v2315 = 0;
      goto LABEL_1773;
    }

    v2316 = &v2835[16];
    v2317 = (&v2839 + 4);
    v2318 = v2854;
    v2319 = v2683;
    do
    {
      v2087 = *v2317;
      v2298 = vmulq_f32(v2317[-1], v2316[-1]);
      v2320 = vmulq_f32(*v2317, *v2316);
      v2318[-1] = v2298;
      *v2318 = v2320;
      v2318 += 2;
      v2317 += 2;
      v2316 += 2;
      v2319 -= 8;
    }

    while (v2319);
    v2315 = v2683;
    if (v2683 != v2707)
    {
LABEL_1773:
      v2321 = v2707 - v2315;
      v2322 = 4 * v2315;
      v2323 = &v2854[-2] + v2315;
      v2324 = (&v2837 + v2322);
      v2325 = &v2835[v2322];
      do
      {
        v2326 = *v2325++;
        v2327 = v2326;
        v2328 = *v2324++;
        *v2323++ = v2328 * v2327;
        --v2321;
      }

      while (v2321);
    }

    if (v1695 >= 9)
    {
      v2330 = v2835;
      v2331 = v2834;
      v2332 = v2283;
      do
      {
        v2333 = v2331 - 12;
        v2298 = vld3q_f32(v2333);
        v2087 = vld3q_f32(v2331);
        v2334 = v2298;
        v2335 = v2298;
        v2336 = v2087;
        v2337 = v2087;
        v2338 = v2330 + 24;
        vst3q_f32(v2330, *&v2298);
        v2339 = v2330 + 12;
        vst3q_f32(v2339, *&v2087);
        v2331 += 24;
        v2330 = v2338;
        v2332 -= 8;
      }

      while (v2332);
      v2329 = v2283;
    }

    else
    {
      v2329 = 0;
    }

    v2340 = v1695 - v2329;
    v2341 = 12 * v2329;
    v2342 = &v2835[12 * v2329];
    v2343 = (&v2829 + v2341);
    do
    {
      v2344 = *v2343;
      v2343 += 3;
      LODWORD(v2298) = v2344;
      *(v2342 + 2) = v2344;
      *v2342 = vdupq_lane_s32(*&v2298, 0).u64[0];
      v2342 += 12;
      --v2340;
    }

    while (v2340);
    if (v2696 < 8)
    {
      v2345 = 0;
      goto LABEL_1787;
    }

    v2346 = &v2835[16];
    v2347 = (&v2839 + 4);
    v2348 = &v2848;
    v2349 = v2683;
    do
    {
      v2087 = *v2347;
      v2350 = vmulq_f32(*v2347, *v2346);
      v2348[-1] = vmulq_f32(v2347[-1], v2346[-1]);
      *v2348 = v2350;
      v2348 += 2;
      v2347 += 2;
      v2346 += 2;
      v2349 -= 8;
    }

    while (v2349);
    v2345 = v2683;
    if (v2683 != v2707)
    {
LABEL_1787:
      v2351 = v2707 - v2345;
      v2352 = 4 * v2345;
      v2353 = &v2847 + v2345;
      v2354 = (&v2837 + v2352);
      v2355 = &v2835[v2352];
      do
      {
        v2356 = *v2355++;
        v2357 = v2356;
        v2358 = *v2354++;
        *v2353++ = v2358 * v2357;
        --v2351;
      }

      while (v2351);
    }

    if (v2719 < 0xFFFFFFFFC0000001)
    {
      v2359 = 0;
      goto LABEL_1794;
    }

    v2360 = &v2853;
    v2361 = v2629;
    v2362 = v1695 & 0x7FFFFFFE;
    do
    {
      v2363 = v2360[3];
      *(v2361 - 2) = *v2360;
      *v2361 = v2363;
      v2361 += 4;
      v2360 += 6;
      v2362 -= 2;
    }

    while (v2362);
    v2359 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2716)
    {
LABEL_1794:
      v2364 = v1695 - v2359;
      v2365 = 2 * v2359;
      v2366 = &v2854[-2] + 3 * v2359;
      do
      {
        v2367 = *v2366;
        v2366 += 3;
        *&v2914.i64[v2281 + v2365] = v2367;
        v2365 += 2;
        --v2364;
      }

      while (v2364);
    }

    if (v2647)
    {
      v2368 = 0;
      goto LABEL_1801;
    }

    v2369 = &v2847;
    v2370 = v2668;
    v2371 = v1695 & 0xFFFFFFFE;
    do
    {
      v2372 = v2369[3];
      *&v2914.i64[v2370] = *v2369;
      *(&v2914 + v2370 + 2) = v2372;
      v2369 += 6;
      v2370 += 4;
      v2371 -= 2;
    }

    while (v2371);
    v2368 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1801:
      v2373 = v1695 - v2368;
      v2374 = v2668 + 2 * v2368;
      v2375 = &v2847 + 3 * v2368;
      do
      {
        v2376 = *v2375;
        v2375 += 3;
        *&v2914.i64[v2374] = v2376;
        v2374 += 2;
        --v2373;
      }

      while (v2373);
    }

    if (v2719 < 0xFFFFFFFFC0000001)
    {
      v2377 = 0;
      goto LABEL_1808;
    }

    v2378 = v2628;
    v2379 = v2854;
    v2380 = v1695 & 0x7FFFFFFE;
    do
    {
      v2381 = *(v2379 - 3);
      v2382 = *v2379;
      v2379 += 6;
      *(v2378 - 2) = v2381;
      *v2378 = v2382;
      v2378 += 4;
      v2380 -= 2;
    }

    while (v2380);
    v2377 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2716)
    {
LABEL_1808:
      v2383 = v1695 - v2377;
      v2384 = 2 * v2377;
      v2385 = &v2853 + 3 * v2377 + 1;
      do
      {
        v2386 = *v2385;
        v2385 += 3;
        *&v2914.i64[v2282 + v2384] = v2386;
        v2384 += 2;
        --v2383;
      }

      while (v2383);
    }

    if (v2646)
    {
      v2387 = 0;
      goto LABEL_1815;
    }

    v2388 = v2671;
    v2389 = &v2848;
    v2390 = v1695 & 0xFFFFFFFE;
    do
    {
      v2391 = *(v2389 - 3);
      v2392 = *v2389;
      v2389 += 6;
      *&v2914.i64[v2388] = v2391;
      *(&v2914 + v2388 + 2) = v2392;
      v2388 += 4;
      v2390 -= 2;
    }

    while (v2390);
    v2387 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1815:
      v2393 = v1695 - v2387;
      v2394 = v2671 + 2 * v2387;
      v2395 = &v2847 + 3 * v2387 + 1;
      do
      {
        v2396 = *v2395;
        v2395 += 3;
        *&v2914.i64[v2394] = v2396;
        v2394 += 2;
        --v2393;
      }

      while (v2393);
    }

    v2397 = 0;
    v2398 = 0;
    while (2)
    {
      v2399 = &v2857 + 8 * v2398;
      *(v2399 + 2) = v2284;
      *(v2399 + 3) = v2284;
      v2400 = v2397;
      *v2399 = v2284;
      *(v2399 + 1) = v2284;
      *(v2937 + v2398) = 0;
      if (v2280)
      {
        v2401 = 8 * v2397;
        v2402 = (8 * v2398) | 1;
        v2403 = (8 * v2398) | 2;
        v2404 = (8 * v2398) | 3;
        v2405 = (8 * v2398) | 4;
        v2406 = (8 * v2398) | 5;
        v2407 = (8 * v2398) | 6;
        v2408 = *(&v2857 + v2402);
        v2409 = *(&v2857 + v2403);
        v2410 = *(&v2857 + v2404);
        *&v2087 = *(&v2857 + v2405);
        v2411 = *(&v2857 + v2406);
        v2412 = (8 * v2398) | 7;
        v2277 = *(&v2857 + v2407);
        v2413 = *(&v2857 + v2412);
        if (v1696 <= 3)
        {
          v2414 = 0;
          v2278 = 0;
          v2415 = 0.0;
          goto LABEL_1826;
        }

        v2416 = 0uLL;
        v2417 = *(&v2857 + v2412);
        v2418 = *(&v2857 + v2407);
        v2419 = *(&v2857 + v2406);
        v2420 = *(&v2857 + v2405);
        v2421 = *(&v2857 + v2404);
        v2422 = *(&v2857 + v2403);
        v2423 = *(&v2857 + v2402);
        v2424 = &v2825;
        v2425 = &v2914;
        v2426 = v2285;
        v2427 = 0uLL;
        v2428 = 0uLL;
        v2429 = 0uLL;
        v2430 = 0uLL;
        v2431 = 0uLL;
        v2432 = 0uLL;
        v2433 = 0uLL;
        v2434 = 0uLL;
        v2435 = 0uLL;
        do
        {
          v2436 = *(v2425 + v2401);
          v2437 = *(v2425 + v2401 + 16);
          v2434 = vmlaq_f64(v2434, v2437, v2425[1]);
          v2433 = vmlaq_f64(v2433, v2436, *v2425);
          v2432 = vmlaq_f64(v2432, v2437, *(v2425 + v2141 + 16));
          v2423 = vmlaq_f64(v2423, v2436, v2425[v1696 / 2]);
          v2438 = (v2425 + v2141 + v2141);
          v2431 = vmlaq_f64(v2431, v2437, v2438[1]);
          v2422 = vmlaq_f64(v2422, v2436, *v2438);
          v2439 = (v2438 + v2141);
          v2430 = vmlaq_f64(v2430, v2437, v2439[1]);
          v2421 = vmlaq_f64(v2421, v2436, *v2439);
          v2440 = (v2439 + v2141);
          v2429 = vmlaq_f64(v2429, v2437, v2440[1]);
          v2420 = vmlaq_f64(v2420, v2436, *v2440);
          v2441 = (v2440 + v2141);
          v2428 = vmlaq_f64(v2428, v2437, v2441[1]);
          v2419 = vmlaq_f64(v2419, v2436, *v2441);
          v2442 = (v2441 + v2141);
          v2427 = vmlaq_f64(v2427, v2437, v2442[1]);
          v2418 = vmlaq_f64(v2418, v2436, *v2442);
          v2443 = (v2442 + v2141);
          v2416 = vmlaq_f64(v2416, v2437, v2443[1]);
          v2417 = vmlaq_f64(v2417, v2436, *v2443);
          v2444 = *v2424++;
          v2435 = vmlaq_f32(v2435, vcvt_hight_f32_f64(vcvt_f32_f64(v2436), v2437), v2444);
          v2425 += 2;
          v2426 -= 4;
        }

        while (v2426);
        v2087 = vaddq_f64(v2417, v2416);
        v2413 = vaddvq_f64(v2087);
        v2277 = vaddvq_f64(vaddq_f64(v2418, v2427));
        v2411 = vaddvq_f64(vaddq_f64(v2419, v2428));
        *&v2087 = vaddvq_f64(vaddq_f64(v2420, v2429));
        v2410 = vaddvq_f64(vaddq_f64(v2421, v2430));
        v2409 = vaddvq_f64(vaddq_f64(v2422, v2431));
        v2408 = vaddvq_f64(vaddq_f64(v2423, v2432));
        v2415 = vaddvq_f64(vaddq_f64(v2433, v2434));
        v2278 = vpaddq_f32(v2435, v2435).u64[0];
        v2278.f32[0] = vaddv_f32(v2278);
        v2414 = v2285;
        v2093 = v2742;
        v2094 = v2730;
        v2077 = v2722;
        v2284 = 0uLL;
        if (v2285 != v1696)
        {
LABEL_1826:
          v2445 = -v2401;
          v2446 = v1696 - v2414;
          v2447 = &v2825.f32[v2414];
          v2448 = &v2914.i64[v2414 + v2400];
          do
          {
            v2415 = v2415 + *(v2448 + v2445) * *v2448;
            v2449 = (&v2448[v1696] + v2445);
            v2408 = v2408 + *v2449 * *v2448;
            v2450 = &v2449[v2141 / 8];
            v2409 = v2409 + *v2450 * *v2448;
            v2451 = &v2450[v2141 / 8];
            v2410 = v2410 + *v2451 * *v2448;
            v2452 = &v2451[v2141 / 8];
            *&v2087 = *&v2087 + *v2452 * *v2448;
            v2453 = &v2452[v2141 / 8];
            v2411 = v2411 + *v2453 * *v2448;
            v2454 = &v2453[v2141 / 8];
            v2277 = v2277 + *v2454 * *v2448;
            v2413 = v2413 + v2454[v1696] * *v2448;
            v2455 = *v2448;
            v2456 = *v2447++;
            v2278.f32[0] = v2278.f32[0] + (v2456 * v2455);
            ++v2448;
            --v2446;
          }

          while (v2446);
        }

        *(&v2857 + v2402) = v2408;
        *(&v2857 + v2403) = v2409;
        *(&v2857 + v2404) = v2410;
        *(&v2857 + v2405) = v2087;
        *(&v2857 + v2406) = v2411;
        *(&v2857 + v2407) = v2277;
        *v2399 = v2415;
        *(&v2857 + v2412) = v2413;
        *(v2937 + v2398) = v2278.i32[0];
      }

      *(v2935 + v2398) = v2398 + 1;
      v2397 = v2400 + v1696;
      if (++v2398 != 8)
      {
        continue;
      }

      break;
    }

    v2457 = 0;
    v2458 = 0;
    v2459 = 0;
    v2460 = 11;
    v2461 = &v2867;
    v2462 = 7;
    v2463 = 6;
    v2464 = 5;
    v2465 = 4;
    v2466 = 3;
    v2467 = 1;
    v2468 = 9;
    v2469 = 9;
    v2470 = 2;
    do
    {
      v2471 = &v2857 + 9 * v2459;
      v2472 = *v2471;
      v2473 = fabs(*v2471);
      v2474 = fabs(v2471[1]);
      v2475 = v2474 > v2473;
      if (v2468 != 3)
      {
        if (v2474 > v2473)
        {
          v2473 = v2474;
        }

        v2476 = fabs(v2471[2]);
        if (v2476 > v2473)
        {
          v2475 = 2;
        }

        if (v2468 != 4)
        {
          if (v2476 > v2473)
          {
            v2473 = v2476;
          }

          v2477 = fabs(v2471[3]);
          if (v2477 > v2473)
          {
            v2475 = 3;
          }

          if (v2468 != 5)
          {
            if (v2477 > v2473)
            {
              v2473 = v2477;
            }

            v2478 = fabs(v2471[4]);
            if (v2478 > v2473)
            {
              v2475 = 4;
            }

            if (v2468 != 6)
            {
              if (v2478 > v2473)
              {
                v2473 = v2478;
              }

              v2479 = fabs(v2471[5]);
              if (v2479 > v2473)
              {
                v2475 = 5;
              }

              if (v2468 != 7)
              {
                if (v2479 > v2473)
                {
                  v2473 = v2479;
                }

                v2480 = fabs(v2471[6]);
                if (v2480 > v2473)
                {
                  v2475 = 6;
                }

                if (v2468 != 8)
                {
                  if (v2480 > v2473)
                  {
                    v2473 = v2480;
                  }

                  if (fabs(v2471[7]) > v2473)
                  {
                    v2475 = 7;
                  }
                }
              }
            }
          }
        }
      }

      v2481 = *(&v2857 + 9 * v2459 + v2475);
      if (v2481 != 0.0)
      {
        if (v2475)
        {
          v2482 = v2475 + v2459;
          *(v2935 + v2459) = v2482 + 1;
          v2483 = &v2857 + v2459;
          v2484 = *v2483;
          v2485 = &v2857 + v2482;
          *v2483 = *v2485;
          *v2485 = v2484;
          v2486 = *(v2483 + 8);
          v2483[8] = v2485[8];
          *(v2485 + 8) = v2486;
          v2487 = *(v2483 + 16);
          v2483[16] = v2485[16];
          *(v2485 + 16) = v2487;
          v2488 = *(v2483 + 24);
          v2483[24] = v2485[24];
          *(v2485 + 24) = v2488;
          v2489 = *(v2483 + 32);
          v2483[32] = v2485[32];
          *(v2485 + 32) = v2489;
          v2490 = *(v2483 + 40);
          v2483[40] = v2485[40];
          *(v2485 + 40) = v2490;
          v2491 = *(v2483 + 48);
          v2483[48] = v2485[48];
          *(v2485 + 48) = v2491;
          v2492 = *(v2483 + 56);
          v2483[56] = v2485[56];
          *(v2485 + 56) = v2492;
          v2472 = *(&v2857 + 9 * v2459);
        }

        v2493 = &v2857 + v2470;
        v2481 = *(v2493 - 1);
        *(v2493 - 1) = v2481 / v2472;
        v2494 = v2470 + 1;
        if (v2470 + 1 != v2469)
        {
          v2481 = *(&v2857 + v2470);
          *(&v2857 + v2470) = v2481 / *(&v2857 + 9 * v2459);
          v2495 = v2470 + 2;
          if (v2470 + 2 != v2469)
          {
            v2481 = *(&v2857 + v2494);
            *(&v2857 + v2494) = v2481 / *(&v2857 + 9 * v2459);
            v2496 = v2470 + 3;
            if (v2470 + 3 != v2469)
            {
              v2481 = *(&v2857 + v2495);
              *(&v2857 + v2495) = v2481 / *(&v2857 + 9 * v2459);
              v2497 = v2470 + 4;
              if (v2470 + 4 != v2469)
              {
                v2481 = *(&v2857 + v2496);
                *(&v2857 + v2496) = v2481 / *(&v2857 + 9 * v2459);
                v2498 = v2470 + 5;
                if (v2470 + 5 != v2469)
                {
                  v2481 = *(&v2857 + v2497);
                  *(&v2857 + v2497) = v2481 / *(&v2857 + 9 * v2459);
                  if (v2470 + 6 != v2469)
                  {
                    v2481 = *(&v2857 + v2498);
                    *(&v2857 + v2498) = v2481 / *(&v2857 + 9 * v2459);
                  }
                }
              }
            }
          }
        }
      }

      v2499 = 0;
      v2500 = v2461;
      do
      {
        v2114 = *(v2500 - 7);
        if (v2114 != 0.0)
        {
          v2501 = v2458 + v2499 + 17;
          v2481 = *(v2500 - 6) - *(&v2857 + v2467) * v2114;
          *(v2500 - 6) = v2481;
          if (v2460 + v2499 != v2501)
          {
            v2481 = *(v2500 - 5) - *(&v2857 + v2470) * v2114;
            *(v2500 - 5) = v2481;
            if (v2457 + v2499 + 12 != v2501)
            {
              v2481 = *(v2500 - 4) - *(&v2857 + v2466) * v2114;
              *(v2500 - 4) = v2481;
              if (v2457 + v2499 + 13 != v2501)
              {
                v2481 = *(v2500 - 3) - *(&v2857 + v2465) * v2114;
                *(v2500 - 3) = v2481;
                if (v2457 + v2499 + 14 != v2501)
                {
                  v2481 = *(v2500 - 2) - *(&v2857 + v2464) * v2114;
                  *(v2500 - 2) = v2481;
                  if (v2457 + v2499 + 15 != v2501)
                  {
                    v2481 = *(v2500 - 1) - *(&v2857 + v2463) * v2114;
                    *(v2500 - 1) = v2481;
                    if (v2457 + v2499 + 16 != v2501)
                    {
                      v2481 = *(&v2857 + v2462);
                      v2114 = *v2500 - v2481 * v2114;
                      *v2500 = v2114;
                    }
                  }
                }
              }
            }
          }
        }

        v2499 += 8;
        v2500 += 8;
      }

      while (v2458 + v2499 != 56);
      v2502 = v2459 + 1;
      if (v2459 + 1 != *(v2935 + v2459))
      {
        v2503 = *(v2937 + v2459);
        v2504 = v2937 + 4 * *(v2935 + v2459);
        *(v2937 + v2459) = *(v2504 - 1);
        *(v2504 - 1) = v2503;
      }

      --v2468;
      v2470 += 9;
      v2469 += 8;
      v2467 += 9;
      v2466 += 9;
      v2465 += 9;
      v2464 += 9;
      v2463 += 9;
      v2462 += 9;
      v2458 += 8;
      v2457 += 9;
      v2461 += 9;
      v2460 += 9;
      ++v2459;
    }

    while (v2502 != 7);
    LODWORD(v2087) = v2937[0];
    v2505 = *(v2937 + 4);
    v2506 = *(v2937 + 12);
    v2507 = *(&v2937[1] + 4);
    if (*v2937 != 0.0)
    {
      v2505 = vmls_lane_f32(*(v2937 + 4), vcvt_f32_f64(v2858), *&v2087, 0);
      DWORD1(v2937[0]) = v2505.i32[0];
      v2506 = vmls_lane_f32(*(v2937 + 12), vcvt_f32_f64(v2859), *&v2087, 0);
      v2507 = vmls_lane_f32(*(&v2937[1] + 4), vcvt_f32_f64(v2860), *&v2087, 0);
      HIDWORD(v2114) = HIDWORD(v2861);
      *&v2114 = v2861;
      *(&v2937[1] + 3) = *(&v2937[1] + 3) - (*v2937 * *&v2114);
    }

    LODWORD(v2277) = v2505.i32[1];
    if (v2505.f32[0] != 0.0)
    {
      v2508 = v2864;
      *&v2277 = v2505.f32[1] - (v2505.f32[0] * v2508);
      *(v2937 + 2) = *&v2277;
      v2506 = vmls_lane_f32(v2506, vcvt_f32_f64(v2865), v2505, 0);
      v2507 = vmls_lane_f32(v2507, vcvt_f32_f64(v2866), v2505, 0);
      HIDWORD(v2114) = HIDWORD(v2867);
      *&v2114 = v2867;
      *(&v2937[1] + 3) = *(&v2937[1] + 3) - (v2505.f32[0] * *&v2114);
    }

    if (*&v2277 != 0.0)
    {
      v2506 = vmls_lane_f32(v2506, vcvt_f32_f64(v2870), *&v2277, 0);
      HIDWORD(v2937[0]) = v2506.i32[0];
      v2507 = vmls_lane_f32(v2507, vcvt_f32_f64(v2871), *&v2277, 0);
      HIDWORD(v2114) = HIDWORD(v2872);
      *&v2114 = v2872;
      *(&v2937[1] + 3) = *(&v2937[1] + 3) - (*&v2277 * *&v2114);
    }

    v2278.i32[0] = v2506.i32[1];
    if (v2506.f32[0] != 0.0)
    {
      v2509 = v2876;
      v2278.f32[0] = v2506.f32[1] - (v2506.f32[0] * v2509);
      v2507 = vmls_lane_f32(v2507, vcvt_f32_f64(v2877), v2506, 0);
      DWORD2(v2937[1]) = v2507.i32[1];
      *&v2937[1] = v2278.f32[0];
      HIDWORD(v2114) = HIDWORD(v2878);
      *&v2114 = v2878;
      *(&v2937[1] + 3) = *(&v2937[1] + 3) - (v2506.f32[0] * *&v2114);
    }

    if (v2278.f32[0] != 0.0)
    {
      v2507 = vmls_lane_f32(v2507, vcvt_f32_f64(v2882), v2278, 0);
      DWORD1(v2937[1]) = v2507.i32[0];
      HIDWORD(v2114) = HIDWORD(v2883);
      *&v2114 = v2883;
      *(&v2937[1] + 3) = *(&v2937[1] + 3) - (v2278.f32[0] * *&v2114);
    }

    LODWORD(v2114) = v2507.i32[1];
    if (v2507.f32[0] != 0.0)
    {
      HIDWORD(v2481) = HIDWORD(v2888);
      *&v2481 = v2888;
      *&v2114 = v2507.f32[1] - (v2507.f32[0] * *&v2481);
      *&v2481 = v2889;
      *(&v2937[1] + 3) = *(&v2937[1] + 3) - (v2507.f32[0] * *&v2481);
    }

    if (*&v2114 == 0.0)
    {
      LODWORD(v2481) = HIDWORD(v2937[1]);
    }

    else
    {
      HIDWORD(v2481) = HIDWORD(v2894);
      *&v2481 = v2894;
      *&v2481 = *(&v2937[1] + 3) - (*&v2114 * *&v2481);
    }

    *&v2123 = vzip1_s32(*&v2087, v2505);
    *&v2087 = vzip1_s32(*&v2277, v2506);
    v2510 = vzip1_s32(v2278, v2507);
    if (*&v2481 != 0.0)
    {
      HIDWORD(v2277) = HIDWORD(v2898);
      v2511 = v2899;
      *&v2481 = *&v2481 / v2511;
      *&v2123 = vmls_lane_f32(*&v2123, vcvt_f32_f64(v2895), *&v2481, 0);
      *&v2087 = vmls_lane_f32(*&v2087, vcvt_f32_f64(v2896), *&v2481, 0);
      v2506 = vcvt_f32_f64(v2897);
      v2510 = vmls_lane_f32(v2510, v2506, *&v2481, 0);
      v2506.f32[0] = v2898;
      *&v2114 = *&v2114 - (*&v2481 * v2506.f32[0]);
    }

    if (*&v2114 != 0.0)
    {
      v2512 = v2893;
      *&v2114 = *&v2114 / v2512;
      HIDWORD(v2277) = HIDWORD(v2891.f64[0]);
      *&v2123 = vmls_lane_f32(*&v2123, vcvt_f32_f64(v2890), *&v2114, 0);
      *&v2087 = vmls_lane_f32(*&v2087, vcvt_f32_f64(v2891), *&v2114, 0);
      v2506 = vcvt_f32_f64(v2892);
      v2510 = vmls_lane_f32(v2510, v2506, *&v2114, 0);
    }

    v2506.i32[0] = v2510.i32[1];
    if (v2510.f32[1] != 0.0)
    {
      v2513 = v2887;
      v2506.f32[0] = v2510.f32[1] / v2513;
      *&v2123 = vmls_lane_f32(*&v2123, vcvt_f32_f64(v2884), v2506, 0);
      v2277 = COERCE_DOUBLE(vcvt_f32_f64(v2885));
      *&v2087 = vmls_lane_f32(*&v2087, *&v2277, v2506, 0);
      *&v2277 = v2886;
      v2510.f32[0] = v2510.f32[0] - (v2506.f32[0] * *&v2277);
    }

    if (v2510.f32[0] != 0.0)
    {
      v2514 = v2881;
      v2510.f32[0] = v2510.f32[0] / v2514;
      *&v2123 = vmls_lane_f32(*&v2123, vcvt_f32_f64(v2879), v2510, 0);
      v2277 = COERCE_DOUBLE(vcvt_f32_f64(v2880));
      *&v2087 = vmls_lane_f32(*&v2087, *&v2277, v2510, 0);
    }

    if (*(&v2087 + 1) != 0.0)
    {
      v2515 = v2875;
      *&v2277 = *(&v2087 + 1) / v2515;
      *&v2123 = vmls_lane_f32(*&v2123, vcvt_f32_f64(v2873), *&v2277, 0);
      v2516 = v2874;
      *&v2087 = *&v2087 - (*&v2277 * v2516);
      DWORD1(v2087) = LODWORD(v2277);
    }

    LODWORD(v2277) = v2087;
    if (*&v2087 != 0.0)
    {
      v2517 = v2869;
      *&v2277 = *&v2087 / v2517;
      *&v2123 = vmls_lane_f32(*&v2123, vcvt_f32_f64(v2868), *&v2277, 0);
    }

    if (*(&v2123 + 1) != 0.0)
    {
      v2518 = v2863;
      v2519 = *(&v2123 + 1) / v2518;
      v2520 = v2862;
      *&v2123 = *&v2123 - (v2519 * v2520);
      *(&v2123 + 1) = v2519;
    }

    v2076 = *v2701;
    v2521 = *&v2123;
    if (*&v2123 != 0.0)
    {
      v2522 = v2857;
      v2521 = *&v2123 / v2522;
    }

    *&v2077 = *&v2077 - v2521;
    *&v2076 = *v2701 - *(&v2123 + 1);
    *&v2080 = *&v2080 - *&v2277;
    v2094.f32[0] = v2094.f32[0] - *(&v2087 + 1);
    v2083 = v2675;
    *v2083.i32 = *v2675.i32 - v2510.f32[0];
    *&v2078 = *&v2078 - v2506.f32[0];
    *v2093.i32 = *v2093.i32 - *&v2114;
    *&v2079 = *&v2079 - *&v2481;
    v2128 = v2673 + 1;
    LODWORD(v2114) = 1.0;
    if (v2673 != 9)
    {
      continue;
    }

    break;
  }

  v2082 = v2083;
  v2525 = vabds_f32(*&v2077, v2625);
  if (v2525 <= 1.2925e-26)
  {
    v2526 = (v2525 * 7.7371e25) * (v2525 * 7.7371e25);
    v2525 = 1.2925e-26;
  }

  else
  {
    v2526 = 1.0;
  }

  v2524 = v2609;
  v2527 = fabsf(v2094.f32[0] - v2121);
  if (v2527 <= v2525)
  {
    v2528 = v2526 + ((v2527 / v2525) * (v2527 / v2525));
  }

  else
  {
    v2528 = (((v2525 / v2527) * (v2525 / v2527)) * v2526) + 1.0;
    v2525 = v2527;
  }

  v2529 = fabsf(*v2093.i32 - v2125);
  if (v2529 <= v2525)
  {
    v2530 = v2528 + ((v2529 / v2525) * (v2529 / v2525));
  }

  else
  {
    v2530 = (((v2525 / v2529) * (v2525 / v2529)) * v2528) + 1.0;
    v2525 = v2529;
  }

  v2531 = fabsf(*&v2076 - v2624);
  if (v2531 <= v2525)
  {
    v2532 = v2530 + ((v2531 / v2525) * (v2531 / v2525));
  }

  else
  {
    v2532 = (((v2525 / v2531) * (v2525 / v2531)) * v2530) + 1.0;
    v2525 = v2531;
  }

  v2533 = fabsf(*v2083.i32 - v2122);
  if (v2533 <= v2525)
  {
    v2534 = v2532 + ((v2533 / v2525) * (v2533 / v2525));
  }

  else
  {
    v2534 = (((v2525 / v2533) * (v2525 / v2533)) * v2532) + 1.0;
    v2525 = v2533;
  }

  v2535 = fabsf(*&v2079 - v2126);
  if (v2535 <= v2525)
  {
    v2536 = v2534 + ((v2535 / v2525) * (v2535 / v2525));
  }

  else
  {
    v2536 = (((v2525 / v2535) * (v2525 / v2535)) * v2534) + 1.0;
    v2525 = v2535;
  }

  v2537 = fabsf(*&v2080 - v2119);
  if (v2537 <= v2525)
  {
    v2538 = v2536 + ((v2537 / v2525) * (v2537 / v2525));
  }

  else
  {
    v2538 = (((v2525 / v2537) * (v2525 / v2537)) * v2536) + 1.0;
    v2525 = v2537;
  }

  v2539 = fabsf(*&v2078 - v2124);
  v2523 = 1.0;
  v2540 = (((v2525 / v2539) * (v2525 / v2539)) * v2538) + 1.0;
  v2541 = v2538 + ((v2539 / v2525) * (v2539 / v2525));
  if (v2539 > v2525)
  {
    v2541 = v2540;
    v2525 = v2539;
  }

  v2542 = fabsf(1.0 - v2127);
  v2543 = (((v2525 / v2542) * (v2525 / v2542)) * v2541) + 1.0;
  v2544 = v2541 + ((v2542 / v2525) * (v2542 / v2525));
  if (v2542 > v2525)
  {
    v2544 = v2543;
    v2525 = v2542;
  }

  if ((v2525 * sqrtf(v2544)) > 700.0)
  {
    v2523 = v2127;
    *&v2078 = v2124;
    *&v2080 = v2119;
    *&v2079 = v2126;
    *v2082.i32 = v2122;
    *&v2076 = v2624;
    *v2093.i32 = v2125;
    v2094.f32[0] = v2121;
    *&v2077 = v2625;
  }

LABEL_1942:
  v2764.i64[0] = __PAIR64__(v2094.u32[0], v2077);
  v2764.i64[1] = __PAIR64__(v2076, v2093.u32[0]);
  v2765.i64[0] = __PAIR64__(v2079, v2082.u32[0]);
  v2765.i64[1] = __PAIR64__(v2078, v2080);
  v2766 = v2523;
  v2937[0] = v2761;
  v2937[1] = v2762;
  LODWORD(v2937[2]) = v2763;
  v2545 = fabsf(*&v2761);
  v2546 = fabsf(*(&v2761 + 1));
  v2547 = v2546 > v2545;
  if (v2546 <= v2545)
  {
    v2548 = v2545;
  }

  else
  {
    v2548 = v2546;
  }

  v2549 = fabsf(*(&v2761 + 2));
  if (v2549 > v2548)
  {
    v2547 = 2;
  }

  LODWORD(v2550) = v2546 <= v2545 || v2549 > v2548;
  v2551 = 2 * (v2549 <= v2548);
  v2552 = *(&v2761 + v2550) / *(&v2761 + v2547);
  *(v2937 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v2550 & 1))) = v2552;
  v2553 = (v2937 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v2551 >> 1) & 1)));
  v2554 = 1.0 / *(v2937 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2547 & 3)));
  v2555 = *v2553 * v2554;
  v2556 = *(v2937 + v2547 + 3);
  v2557 = 12;
  if (v2550)
  {
    v2557 = 16;
  }

  v2558 = *(v2937 + v2557) - (v2556 * v2552);
  *(v2937 + v2557) = v2558;
  v2559 = *(v2937 + (v2551 + 3)) - (v2556 * v2555);
  *(v2937 + (v2551 + 3)) = v2559;
  LODWORD(v2087) = *(&v2937[1] + v2547 + 2);
  *v2553 = v2555;
  v2560 = 24;
  if (v2550)
  {
    v2560 = 28;
  }

  *(v2937 + v2560) = *(v2937 + v2560) - (*&v2087 * v2552);
  *(v2937 + (v2551 + 6)) = *(v2937 + (v2551 + 6)) - (*&v2087 * v2555);
  v2561 = fabsf(v2559);
  v2562 = fabsf(v2558);
  if (v2561 <= v2562)
  {
    v2563 = v2550;
  }

  else
  {
    v2563 = v2551;
  }

  if (v2561 <= v2562)
  {
    v2550 = v2551;
  }

  else
  {
    v2550 = v2550;
  }

  *v2082.i32 = 1.0 / *(v2937 + (v2563 + 3));
  v2564 = *(v2937 + (v2550 + 3)) * *v2082.i32;
  *(v2937 + (v2550 + 3)) = v2564;
  v2565 = *(v2937 + (v2563 + 6));
  result = &v2764;
  v2567 = (&v2764 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2547 & 3)));
  v2568 = *(v2937 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2563 & 3)));
  v2569 = *(&v2764 | (4 * v2563)) - (v2568 * *v2567);
  v2570 = *(v2937 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2550 & 3)));
  v2571 = 1.0 / (*(v2937 + (v2550 + 6)) - (v2565 * v2564));
  *&v2123 = (*(&v2764 | (4 * v2550)) - ((v2569 * v2564) + (v2570 * *v2567))) * v2571;
  v2572.f32[0] = (v2569 - (*&v2123 * v2565)) * *v2082.i32;
  v2573 = v2764.f32[v2547 + 3];
  v2574 = v2764.f32[(v2563 + 3)] - (v2573 * v2568);
  v2575 = v2764.f32[(v2550 + 3)] - ((v2573 * v2570) + (v2574 * v2564));
  v2576 = *(&v2764 + v2547 + 6);
  v2577 = v2764.f32[(v2563 + 6)] - (v2576 * v2568);
  v2578 = v2764.f32[(v2550 + 6)] - ((v2576 * v2570) + (v2577 * v2564));
  v2579.i64[0] = 0;
  v2579.i32[2] = 0;
  v2580 = vzip1q_s32(LODWORD(v2608), LODWORD(v2608));
  v2580.f32[2] = v2608;
  v2581.f32[0] = (*v2567 - ((*&v2123 * *&v2087) + (v2572.f32[0] * v2556))) * v2554;
  v2581.i32[1] = v2572.i32[0];
  v2581.i64[1] = __PAIR64__(v2581.u32[0], LODWORD(v2123));
  v2579.f32[3] = v2608;
  *&v2582 = v2575 * v2571;
  v2583.f32[0] = (v2574 - (*&v2582 * v2565)) * *v2082.i32;
  *&v2584 = (v2573 - ((*&v2582 * *&v2087) + (v2583.f32[0] * v2556))) * v2554;
  *&v2585 = v2578 * v2571;
  *v2082.i32 = (v2577 - (*&v2585 * v2565)) * *v2082.i32;
  v2586 = (v2576 - ((*&v2585 * *&v2087) + (*v2082.i32 * v2556))) * v2554;
  *&v2087 = v2586 * 0.0;
  v2587 = (*v2082.i32 + (v2606 * v2572.f32[0])) + (v2607 * v2583.f32[0]);
  v2082.i32[1] = v2585;
  *v2082.i8 = vmul_f32(*v2082.i8, 0);
  v2572.i32[1] = LODWORD(v2123);
  v2588.i64[0] = __PAIR64__(v2583.u32[0], v2584);
  v2583.i32[1] = v2582;
  v2589 = vextq_s8(vextq_s8(v2087, v2087, 4uLL), v2082, 0xCuLL);
  v2590 = vmla_n_f32(vmla_f32(*v2082.i8, 0, v2572), v2583, v2608);
  *&v2123 = (*&v2585 + (v2606 * *&v2123)) + (v2607 * *&v2582);
  v2588.i64[1] = __PAIR64__(v2584, v2582);
  v2589.i32[3] = v2589.i32[0];
  v2591 = vmlaq_f32(vmlaq_f32(v2589, v2581, v2580), v2588, v2579);
  v2592 = vdupq_lane_s32(*&v2123, 0);
  __asm { FMOV            V6.4S, #1.0 }

  *v2524 = vmulq_f32(v2591, vdivq_f32(_Q6, v2592));
  *(v2524 + 16) = vdiv_f32(v2590, *v2592.f32);
  *(v2524 + 24) = ((v2586 + (v2606 * v2581.f32[0])) + (v2607 * *&v2584)) * (1.0 / *&v2123);
  *(v2524 + 28) = v2587 * (1.0 / *&v2123);
  *(v2524 + 32) = *&v2123 * (1.0 / *&v2123);
  return result;
}

float ransac::normalise2dpts(ransac *this, float *a2, float *a3, float *a4)
{
  v7 = 0;
  v8 = 0;
  *&v183[864] = *MEMORY[0x277D85DE8];
  v9.i32[0] = *(this + 2);
  v9.i32[1] = *(this + 5);
  v9.i32[2] = *(this + 8);
  v9.i32[3] = *(this + 11);
  *v9.f32 = vand_s8(vmovn_s32(vcgtq_f32(vabsq_f32(v9), vdupq_n_s32(0x25800000u))), 0x1000100010001);
  v169 = vuzp1_s8(*v9.f32, *v9.f32).u32[0];
  while (!*(&v169 + v8))
  {
    ++v8;
LABEL_3:
    if (v8 >= 4)
    {
      goto LABEL_11;
    }
  }

  v173[v7 - 1] = v8 + 1;
  v10 = v7++ < 3;
  v11 = v10;
  if (v10)
  {
    ++v8;
  }

  if (v11)
  {
    goto LABEL_3;
  }

LABEL_11:
  v12 = v7 & ~(v7 >> 31);
  if (v7 <= 0)
  {
    v14 = v12;
    v15 = 0.0;
    v16 = 0.0 / v12;
    v17 = v16;
  }

  else
  {
    memcpy(&__dst, &__src, v7 & ~(v7 >> 31));
    if (v7 <= 7)
    {
      v13 = 0;
      goto LABEL_24;
    }

    if (v7 >= 0x20)
    {
      v13 = v7 & 0x7FFFFFE0;
      v18 = v176;
      v19 = &v175;
      v20.i64[0] = -1;
      v20.i64[1] = -1;
      v21 = v13;
      do
      {
        v22 = vaddq_s8(*v19, v20);
        v18[-1] = vaddq_s8(v19[-1], v20);
        *v18 = v22;
        v18 += 2;
        v19 += 2;
        v21 -= 32;
      }

      while (v21);
      if (v13 != v7)
      {
        if ((v7 & 0x18) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
LABEL_21:
      v23 = v13;
      v13 = v7 & 0x7FFFFFF8;
      v24 = v23 - v13;
      v25 = &v173[v23 + 3];
      v26 = &v171[v23 - 1];
      do
      {
        v27 = *v26++;
        *v25++ = vadd_s8(v27, -1);
        v24 += 8;
      }

      while (v24);
      if (v13 != v7)
      {
LABEL_24:
        v28 = v7 - v13;
        v29 = &v173[v13 + 3];
        v30 = &v171[v13 - 1];
        do
        {
          v31 = *v30++;
          *v29++ = v31 - 1;
          --v28;
        }

        while (v28);
      }
    }

    v32 = this - 12;
    v33 = this - 4;
    if (v7 == 1)
    {
      v34 = 0;
      goto LABEL_31;
    }

    v34 = v7 & 0x7FFFFFFE;
    v35 = &v175;
    v36 = v173;
    v37 = v34;
    do
    {
      v38 = *&v32[12 * *v36] / *&v33[12 * *v36];
      *(v35 - 1) = *&v32[12 * *(v36 - 1)] / *&v33[12 * *(v36 - 1)];
      *v35 = v38;
      v35 += 2;
      v36 += 2;
      v37 -= 2;
    }

    while (v37);
    if (v34 != v7)
    {
LABEL_31:
      v39 = v7 - v34;
      v40 = &v174[4 * v34 + 3];
      v41 = &v173[v34 - 1];
      do
      {
        v42 = *v41++;
        *v40++ = *&v32[12 * v42] / *&v33[12 * v42];
        --v39;
      }

      while (v39);
    }

    if (v7 == 1)
    {
      v43 = 0;
      goto LABEL_38;
    }

    v43 = v7 & 0x7FFFFFFE;
    v44 = v174;
    v45 = &v175;
    v46 = v43;
    do
    {
      v47 = *v45;
      v48 = *v44;
      *(this + 3 * *(v44 - 1)) = *(v45 - 1);
      *(this + 3 * v48) = v47;
      v44 += 2;
      v45 += 2;
      v46 -= 2;
    }

    while (v46);
    if (v43 != v7)
    {
LABEL_38:
      v49 = v7 - v43;
      v50 = &v173[v43 + 3];
      v51 = &v174[4 * v43 + 3];
      do
      {
        v52 = *v51++;
        v53 = v52;
        v54 = *v50++;
        *(this + 3 * v54) = v53;
        --v49;
      }

      while (v49);
    }

    if (v7 == 1)
    {
      v55 = 0;
      goto LABEL_45;
    }

    v55 = v7 & 0x7FFFFFFE;
    v56 = &v175;
    v57 = v173;
    v58 = v55;
    do
    {
      v59 = (this + 12 * *(v57 - 1));
      v60 = *(this + 3 * *v57 - 2) / *(this + 3 * *v57 - 1);
      *(v56 - 1) = *(v59 - 2) / *(v59 - 1);
      *v56 = v60;
      v56 += 2;
      v57 += 2;
      v58 -= 2;
    }

    while (v58);
    if (v55 != v7)
    {
LABEL_45:
      v61 = v7 - v55;
      v62 = &v174[4 * v55 + 3];
      v63 = &v173[v55 - 1];
      do
      {
        v64 = *v63++;
        *v62++ = *(this + 3 * v64 - 2) / *(this + 3 * v64 - 1);
        --v61;
      }

      while (v61);
    }

    v65 = this + 4;
    if (v7 == 1)
    {
      v66 = 0;
      goto LABEL_52;
    }

    v66 = v7 & 0x7FFFFFFE;
    v67 = v174;
    v68 = &v175;
    v69 = v66;
    do
    {
      v70 = *v68;
      v71 = *v67;
      *&v65[12 * *(v67 - 1)] = *(v68 - 1);
      *&v65[12 * v71] = v70;
      v67 += 2;
      v68 += 2;
      v69 -= 2;
    }

    while (v69);
    if (v66 != v7)
    {
LABEL_52:
      v72 = v7 - v66;
      v73 = &v173[v66 + 3];
      v74 = &v174[4 * v66 + 3];
      do
      {
        v75 = *v74++;
        v76 = v75;
        v77 = *v73++;
        *&v65[12 * v77] = v76;
        --v72;
      }

      while (v72);
    }

    if (v7 == 1)
    {
      v78 = 0;
      goto LABEL_59;
    }

    v78 = v7 & 0x7FFFFFFE;
    v79 = v171;
    v80 = v78;
    do
    {
      v81 = 12 * *v79;
      *&v33[12 * *(v79 - 1)] = 1065353216;
      *&v33[v81] = 1065353216;
      v79 += 2;
      v80 -= 2;
    }

    while (v80);
    if (v78 != v7)
    {
LABEL_59:
      v82 = v7 - v78;
      v83 = &v171[v78 - 1];
      do
      {
        v84 = *v83++;
        *&v33[12 * v84] = 1065353216;
        --v82;
      }

      while (v82);
    }

    for (i = 0; i != v7; ++i)
    {
      *(&v181 + i) = *&v32[12 * v173[i - 1]];
    }

    v86 = v181;
    v87 = v182;
    if (v7 != 1)
    {
      v88 = v7 + 1;
      v89 = v88 - 2;
      if ((v88 - 2) >= 8 && 2 * v7 + 2147483646 >= 0x80000002)
      {
        v158 = 0;
        v159 = v89 & 0xFFFFFFFFFFFFFFF8;
        v160 = 0uLL;
        v161 = LODWORD(v181);
        v162 = LODWORD(v182);
        v163 = v89 & 0xFFFFFFFFFFFFFFF8;
        v164 = 0uLL;
        do
        {
          v165 = (&v181 + (v158 >> 30));
          v166 = v165 + 2;
          v184 = vld2q_f32(v166);
          v165 += 10;
          v185 = vld2q_f32(v165);
          v161 = vaddq_f32(v184.val[0], v161);
          v160 = vaddq_f32(v185.val[0], v160);
          v162 = vaddq_f32(v184.val[1], v162);
          v164 = vaddq_f32(v185.val[1], v164);
          v158 += 0x1000000000;
          v163 -= 8;
        }

        while (v163);
        v167 = vaddq_f32(v160, v161);
        v86 = vaddv_f32(*&vpaddq_f32(v167, v167));
        v168 = vaddq_f32(v164, v162);
        v87 = vaddv_f32(*&vpaddq_f32(v168, v168));
        if (v89 != v159)
        {
          v90 = v159 | 2;
          goto LABEL_67;
        }
      }

      else
      {
        v90 = 2;
LABEL_67:
        v91 = v88 - v90;
        v92 = 2 * v90 - 1;
        v93 = (v90 << 33) - 0x200000000;
        do
        {
          v86 = *(&v181 + (v93 >> 30)) + v86;
          v87 = *(&v181 + v92) + v87;
          v92 += 2;
          v93 += 0x200000000;
          --v91;
        }

        while (v91);
      }
    }

    v94 = 0;
    v14 = v12;
    v16 = v86 / v12;
    v95 = &v182;
    v17 = v87 / v12;
    do
    {
      v96 = v94;
      if (v7 == 1)
      {
        v96 = 0;
      }

      v97 = 3 * v173[v96 - 1];
      v98 = *(this + v97 - 2) - v17;
      *(v95 - 1) = *&v32[4 * v97] - v16;
      *v95 = v98;
      ++v94;
      v95 += 2;
    }

    while (v7 != v94);
    if (v7 > 8)
    {
      v100 = v7 & 7;
      if (!v100)
      {
        v100 = 8;
      }

      v99 = v7 - v100;
      v101 = v179;
      v102 = v183;
      v103 = v99;
      do
      {
        v104 = v102 - 8;
        v105 = vld2q_f32(v104);
        v106 = vld2q_f32(v102);
        v101[-1] = vmulq_f32(v105, v105);
        *v101 = vmulq_f32(v106, v106);
        v101 += 2;
        v102 += 16;
        v103 -= 8;
      }

      while (v103);
    }

    else
    {
      v99 = 0;
    }

    v107 = &v181 + 2 * v99;
    do
    {
      v108 = *v107;
      v107 += 2;
      v178[v99++] = v108 * v108;
    }

    while (v7 != v99);
    if (v7 > 8)
    {
      v110 = v7 & 7;
      if (!v110)
      {
        v110 = 8;
      }

      v109 = v7 - v110;
      v111 = v177;
      v112 = &v183[4];
      v113 = v109;
      do
      {
        v114 = v112 - 8;
        v115 = vld2q_f32(v114);
        v116 = vld2q_f32(v112);
        v111[-1] = vmulq_f32(v115, v115);
        *v111 = vmulq_f32(v116, v116);
        v111 += 2;
        v112 += 16;
        v113 -= 8;
      }

      while (v113);
    }

    else
    {
      v109 = 0;
    }

    v117 = v7 - v109;
    v118 = &v176[4 * v109 + 4];
    v119 = &v181 + 2 * v109 + 1;
    do
    {
      v120 = *v119;
      v119 += 2;
      *v118++ = v120 * v120;
      --v117;
    }

    while (v117);
    if (v7 <= 7)
    {
      v121 = 0;
      goto LABEL_94;
    }

    v121 = v7 & 0x7FFFFFF8;
    v122 = v179;
    v123 = v177;
    v124 = v121;
    do
    {
      v125 = vaddq_f32(*v122, *v123);
      v122[-1] = vaddq_f32(v122[-1], v123[-1]);
      *v122 = v125;
      v122 += 2;
      v123 += 2;
      v124 -= 8;
    }

    while (v124);
    if (v121 != v7)
    {
LABEL_94:
      v126 = v7 - v121;
      v127 = 4 * v121;
      v128 = &v178[v121];
      v129 = &v176[v127 + 4];
      do
      {
        v130 = *v129++;
        *v128 = *v128 + v130;
        ++v128;
        --v126;
      }

      while (v126);
    }

    if (v7 <= 7)
    {
      v131 = 0;
      goto LABEL_101;
    }

    v131 = v7 & 0x7FFFFFF8;
    v132 = v179;
    v133 = v131;
    do
    {
      v134 = vsqrtq_f32(*v132);
      v132[-1] = vsqrtq_f32(v132[-1]);
      *v132 = v134;
      v132 += 2;
      v133 -= 8;
    }

    while (v133);
    if (v131 != v7)
    {
LABEL_101:
      v135 = v7 - v131;
      v136 = &v178[v131];
      do
      {
        *v136 = sqrtf(*v136);
        ++v136;
        --v135;
      }

      while (v135);
    }

    v15 = v178[0];
    if (v7 != 1)
    {
      v137 = v7 + 1;
      v138 = v137 - 2;
      if ((v137 - 2) >= 8)
      {
        v140 = v138 & 0xFFFFFFFFFFFFFFF8;
        v141 = 0uLL;
        v142 = LODWORD(v178[0]);
        v143 = &v180;
        v144 = v138 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v142 = vaddq_f32(v143[-1], v142);
          v141 = vaddq_f32(*v143, v141);
          v143 += 2;
          v144 -= 8;
        }

        while (v144);
        v145 = vaddq_f32(v141, v142);
        v15 = vaddv_f32(*&vpaddq_f32(v145, v145));
        if (v138 != v140)
        {
          v139 = v140 | 2;
          goto LABEL_110;
        }
      }

      else
      {
        v139 = 2;
LABEL_110:
        v146 = v137 - v139;
        v147 = &v178[v139 - 1];
        do
        {
          v148 = *v147++;
          v15 = v148 + v15;
          --v146;
        }

        while (v146);
      }
    }
  }

  v149 = (v14 * 1.4142) / v15;
  *a3 = v149;
  v150 = -(v149 * v16);
  a3[4] = v149;
  a3[6] = v150;
  a3[7] = -(v149 * v17);
  *(a3 + 1) = 0;
  a3[1] = 0.0;
  a3[5] = 0.0;
  a3[8] = 1.0;
  *a2 = (*this * v149) + (*(this + 2) * v150);
  a2[3] = (*(this + 3) * v149) + (*(this + 5) * v150);
  a2[6] = (*(this + 6) * v149) + (*(this + 8) * v150);
  a2[9] = (*(this + 9) * v149) + (*(this + 11) * v150);
  v151 = a3[1];
  v152 = a3[4];
  v153 = a3[7];
  a2[1] = ((*this * v151) + (*(this + 1) * v152)) + (*(this + 2) * v153);
  a2[4] = ((*(this + 3) * v151) + (*(this + 4) * v152)) + (*(this + 5) * v153);
  a2[7] = ((*(this + 6) * v151) + (*(this + 7) * v152)) + (*(this + 8) * v153);
  a2[10] = ((*(this + 9) * v151) + (*(this + 10) * v152)) + (*(this + 11) * v153);
  v154 = a3[2];
  v155 = a3[5];
  v156 = a3[8];
  a2[2] = ((*this * v154) + (*(this + 1) * v155)) + (*(this + 2) * v156);
  a2[5] = ((*(this + 3) * v154) + (*(this + 4) * v155)) + (*(this + 5) * v156);
  a2[8] = ((*(this + 6) * v154) + (*(this + 7) * v155)) + (*(this + 8) * v156);
  result = ((*(this + 9) * v154) + (*(this + 10) * v155)) + (*(this + 11) * v156);
  a2[11] = result;
  return result;
}

char *binary_expand_op(char *result, unsigned int *a2, const int *a3, const int *a4, float *a5, const int *a6, unsigned int a7, double a8, double a9, float32x4_t a10)
{
  v102[166] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (a6 == 1)
  {
    v11 = *a2;
  }

  else
  {
    v11 = a6;
  }

  if (a7 == 1)
  {
    v12 = a4;
  }

  else
  {
    v12 = a7;
  }

  if (v12 < 1 || v11 < 1)
  {
    *a2 = v11;
    a2[1] = v12;
    return result;
  }

  v14 = result;
  v15 = a7 != 1;
  if (v10 != 1)
  {
    if (a6 == 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = v102;
      __asm { FMOV            V1.4S, #1.0 }

      while (1)
      {
        a10.f32[0] = a5[v34];
        v42 = (a3[v33] - 1) * v10;
        if (v11 >= 8)
        {
          LODWORD(v44) = vdivq_f32(_Q1, a10).u32[0];
          v45 = &v14[4 * v42 + 16];
          v46 = v36;
          v47 = v10 & 0x7FFFFFF8;
          do
          {
            v48 = vmulq_n_f32(*v45, v44);
            v46[-1] = vmulq_n_f32(v45[-1], v44);
            *v46 = v48;
            v46 += 2;
            v45 += 2;
            v47 -= 8;
          }

          while (v47);
          v43 = v10 & 0x7FFFFFF8;
          if (v43 == v10)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = 0;
        }

        v49 = v10 - v43;
        v50 = &v100[4 * v43 + 4 * v32];
        v51 = &v14[4 * v43 + 4 * v42];
        v52 = 1.0 / a10.f32[0];
        do
        {
          v53 = *v51++;
          *v50++ = v53 * v52;
          --v49;
        }

        while (v49);
LABEL_28:
        v34 += v15;
        v33 += a4 != 1;
        ++v35;
        v36 = (v36 + 4 * v10);
        v32 += v10;
        if (v35 == v12)
        {
          goto LABEL_23;
        }
      }
    }

    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = a4 != 1;
    v78 = a6;
    v79 = a6 & 0x7FFFFFF8;
    v80 = v102;
    v81 = 4 * a6;
    v82 = v15 * a6;
    v83 = a5 + 4;
    v84 = 4 * v82;
    while (1)
    {
      v85 = (a3[v75] - 1) * v10;
      if (v11 >= 8)
      {
        v87 = v83;
        v88 = v80;
        v89 = v79;
        v90 = &result[4 * v85 + 16];
        do
        {
          v91 = vdivq_f32(*v90, *v87);
          v88[-1] = vdivq_f32(v90[-1], v87[-1]);
          *v88 = v91;
          v90 += 2;
          v88 += 2;
          v87 += 2;
          v89 -= 8;
        }

        while (v89);
        v86 = v79;
        if (v79 == v78)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v86 = 0;
      }

      v92 = v78 - v86;
      v93 = &v100[4 * v86 + 4 * v74];
      v94 = 4 * v86;
      v95 = &a5[v86];
      v96 = &result[4 * v85 + v94];
      do
      {
        v97 = *v96;
        v96 += 4;
        v98 = v97;
        v99 = *v95++;
        *v93++ = v98 / v99;
        --v92;
      }

      while (v92);
LABEL_48:
      v75 += v77;
      ++v76;
      v80 = (v80 + v81);
      v83 = (v83 + v84);
      v74 += v78;
      a5 = (a5 + v84);
      if (v76 == v12)
      {
        goto LABEL_23;
      }
    }
  }

  if (a6 != 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = a4 != 1;
    v58 = a6;
    v59 = a6 & 0x7FFFFFF8;
    v60 = v102;
    v61 = 4 * a6;
    v62 = a5 + 4;
    v63 = 4 * v15 * a6;
    while (1)
    {
      LODWORD(a8) = *&v14[4 * a3[v55] - 4];
      if (v11 >= 8)
      {
        v65 = vdupq_lane_s32(*&a8, 0);
        v66 = v62;
        v67 = v60;
        v68 = v59;
        do
        {
          v69 = vdivq_f32(v65, *v66);
          v67[-1] = vdivq_f32(v65, v66[-1]);
          *v67 = v69;
          v67 += 2;
          v66 += 2;
          v68 -= 8;
        }

        while (v68);
        v64 = v59;
        if (v59 == v58)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v64 = 0;
      }

      v70 = v58 - v64;
      v71 = &v100[4 * v64 + 4 * v54];
      v72 = &a5[v64];
      do
      {
        v73 = *v72++;
        *v71++ = *&a8 / v73;
        --v70;
      }

      while (v70);
LABEL_38:
      v55 += v57;
      ++v56;
      v60 = (v60 + v61);
      v62 = (v62 + v63);
      v54 += v58;
      a5 = (a5 + v63);
      if (v56 == v12)
      {
        goto LABEL_23;
      }
    }
  }

  v16 = 0;
  v17 = a4 != 1;
  v18 = result - 4;
  if (v12 < 2)
  {
    goto LABEL_21;
  }

  if (a4 == 1)
  {
    goto LABEL_21;
  }

  if (a7 == 1)
  {
    goto LABEL_21;
  }

  v16 = v12 & 0x7FFFFFFE;
  v19 = &v101;
  v20 = a5;
  v21 = a3;
  v22 = v16;
  do
  {
    v23 = *&v18[4 * v21[v17]] / v20[v15];
    *(v19 - 1) = *&v18[4 * *v21] / *v20;
    *v19 = v23;
    v21 += 2;
    v20 += 2;
    v19 += 2;
    v22 -= 2;
  }

  while (v22);
  if (v16 != v12)
  {
LABEL_21:
    v24 = &a3[v16];
    v25 = 4 * v17;
    v26 = &a5[v16];
    v27 = 4 * v15;
    v28 = v12 - v16;
    v29 = &v100[4 * v16];
    do
    {
      *v29++ = *&v18[4 * *v24] / *v26;
      v24 = (v24 + v25);
      v26 = (v26 + v27);
      --v28;
    }

    while (v28);
  }

LABEL_23:
  v30 = 0;
  *a2 = v11;
  a2[1] = v12;
  v31 = 4 * v11;
  do
  {
    result = memcpy(&v14[v30], &v100[v30], v31);
    v30 += v31;
    --v12;
  }

  while (v12);
  return result;
}

void coder::internal::b_svd(coder::internal *this, const double *a2, const int *a3, double *a4, int *a5, double *a6, int *a7, double *a8)
{
  v8 = MEMORY[0x28223BE20](this, a2, a3);
  v10 = v9;
  v12 = v11;
  v527 = v13;
  v539 = v14;
  v544 = v15;
  v17 = v16;
  v590[2013] = *MEMORY[0x277D85DE8];
  v18 = *v16;
  v19 = v18;
  if (v18 >= 1)
  {
    memcpy(__dst, v8, 72 * v18);
  }

  if (v18 >= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v18;
  }

  if (v18 >= 9)
  {
    v21 = 9;
  }

  else
  {
    v21 = v18;
  }

  *v12 = v21;
  bzero(__src, 8 * v20 + 8);
  v584 = 0.0;
  v582 = 0u;
  v583 = 0u;
  v580 = 0u;
  v581 = 0u;
  v22 = *v17;
  if (v22 >= 1)
  {
    bzero(v586, 8 * v22);
  }

  *v539 = v22;
  v23 = *v12;
  v539[1] = *v12;
  v24 = v23 * *v17;
  if (v24 >= 1)
  {
    bzero(v544, 8 * v24);
  }

  v533 = v12;
  bzero(v10, 0x288uLL);
  v25 = *v17;
  if (!*v17)
  {
    *v10 = 0x3FF0000000000000;
    v10[10] = 0x3FF0000000000000;
    v10[20] = 0x3FF0000000000000;
    v10[30] = 0x3FF0000000000000;
    v10[40] = 0x3FF0000000000000;
    v10[50] = 0x3FF0000000000000;
    v10[60] = 0x3FF0000000000000;
    v10[70] = 0x3FF0000000000000;
    v10[80] = 0x3FF0000000000000;
    goto LABEL_454;
  }

  if (v25 >= 10)
  {
    v26 = 10;
  }

  else
  {
    v26 = *v17;
  }

  v528 = v26;
  v27 = v26 - 1;
  v532 = *v17;
  if (v25 >= 7)
  {
    LODWORD(v28) = 7;
  }

  else
  {
    LODWORD(v28) = *v17;
  }

  v530 = v28;
  v529 = v27;
  if (v25 <= 7)
  {
    v28 = v28;
  }

  else
  {
    v28 = v27;
  }

  v537 = v28;
  v29 = v544;
  if (v28 >= 1)
  {
    v562 = 0;
    v578 = 0;
    v30 = 0;
    v31 = (v18 + 1);
    v534 = v31 - 2;
    v32 = 8 * v18;
    v574 = &v589;
    v558 = v544 + 16;
    v560 = v31 - 1;
    v33 = v18 - 1;
    v550 = v588;
    v552 = v590;
    v34 = &v586[24];
    v35 = &v586[8];
    v36 = 1;
    v37 = 2;
    v569 = -1;
    v563 = 8;
    v556 = v544;
    v571 = __dst;
    v38 = v18;
    v554 = v18 + 1;
    v39 = 1;
    v540 = v31;
    do
    {
      v565 = v36;
      v567 = v34;
      v40 = v30;
      v41 = v39;
      v42 = 8 * v39;
      v43 = &v588[v42];
      v44 = (v18 + ~v30);
      v45 = v18 - v30;
      v46 = v31 * v30;
      v548 = v41;
      if (v30 < v529)
      {
        if (v45 >= 1)
        {
          v47 = v46 + 1;
          if (v45 == 1)
          {
            v48 = fabs(*&v586[8 * v47 + 1784]);
            if (v48 > 0.0)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v104 = v45 + v47;
            v105 = 0.0;
            v106 = 3.31216864e-170;
            do
            {
              v107 = fabs(*&v586[8 * v47 + 1784]);
              v108 = v105 + v107 / v106 * (v107 / v106);
              v105 = v106 / v107 * (v106 / v107) * v105 + 1.0;
              if (v107 <= v106)
              {
                v105 = v108;
              }

              else
              {
                v106 = v107;
              }

              ++v47;
            }

            while (v47 < v104);
            v48 = sqrt(v105) * v106;
            if (v48 > 0.0)
            {
LABEL_97:
              v109 = (v33 + 1) & 0x1FFFFFFFCLL;
              v110 = v44 + 1;
              if (*&__dst[8 * v46] >= 0.0)
              {
                v111 = v48;
              }

              else
              {
                v111 = -v48;
              }

              v112 = v46 + v18 - v30;
              if (v48 >= 1.00208418e-292)
              {
                if (v46 < v112)
                {
                  v120 = v41;
                  if (v44 >= 3)
                  {
                    v121 = v110 & 0x1FFFFFFFCLL;
                    v122 = &v588[v42];
                    v123 = 1.0 / v111;
                    do
                    {
                      v124 = vmulq_n_f64(*v122, v123);
                      v122[-1] = vmulq_n_f64(v122[-1], v123);
                      *v122 = v124;
                      v122 += 2;
                      v109 -= 4;
                    }

                    while (v109);
                    if (v110 == v121)
                    {
                      goto LABEL_118;
                    }

                    v120 = v121 + v41;
                  }

                  v125 = v554 - v120;
                  v126 = &v586[8 * v120 + 1784];
                  do
                  {
                    *v126 = *v126 * (1.0 / v111);
                    ++v126;
                    --v125;
                  }

                  while (v125);
                }
              }

              else if (v46 < v112)
              {
                v113 = v41;
                if (v44 < 3)
                {
LABEL_107:
                  v118 = v554 - v113;
                  v119 = &v586[8 * v113 + 1784];
                  do
                  {
                    *v119 = *v119 * (1.0 / v111);
                    ++v119;
                    --v118;
                  }

                  while (v118);
                }

                else
                {
                  v114 = v110 & 0x1FFFFFFFCLL;
                  v115 = &v588[v42];
                  v116 = 1.0 / v111;
                  do
                  {
                    v117 = vmulq_n_f64(*v115, v116);
                    v115[-1] = vmulq_n_f64(v115[-1], v116);
                    *v115 = v117;
                    v115 += 2;
                    v109 -= 4;
                  }

                  while (v109);
                  if (v110 != v114)
                  {
                    v113 = v114 + v41;
                    goto LABEL_107;
                  }
                }
              }

LABEL_118:
              v49 = 0;
              *&__dst[8 * v46] = *&__dst[8 * v46] + 1.0;
              __src[v30] = -v111;
              goto LABEL_33;
            }
          }
        }

        __src[v30] = 0.0;
      }

      v49 = 1;
LABEL_33:
      v579 = v37;
      v542 = v37 - 1;
      v545 = 8 * v30;
      if (v30 <= 7)
      {
        v50 = 0;
        v51 = &v586[v42 + 1784];
        v52 = &v571[v32 * v542];
        v53 = (v574 + v32 * v542);
        v54 = v579;
        v55 = &__dst[v42 + 8 * v18 - 8 - v545];
        v56 = &__dst[v32 * v579];
        if (v45 < 1)
        {
          v49 = 1;
        }

        v57 = v45 & 0x7FFFFFFFFFFFFFFCLL;
        while (2)
        {
          if (v49)
          {
            goto LABEL_37;
          }

          if (v45 < 4)
          {
            v58 = 0;
            v59 = 0.0;
            goto LABEL_44;
          }

          v60 = 0uLL;
          v61 = v53;
          v62 = v43;
          v63 = v38 & 0x7FFFFFFFFFFFFFFCLL;
          v64 = 0uLL;
          do
          {
            v60 = vmlaq_f64(v60, v62[-1], v61[-1]);
            v64 = vmlaq_f64(v64, *v62, *v61);
            v62 += 2;
            v61 += 2;
            v63 -= 4;
          }

          while (v63);
          v59 = vaddvq_f64(vaddq_f64(v64, v60));
          v58 = v45 & 0x7FFFFFFFFFFFFFFCLL;
          if (v45 != v57)
          {
            do
            {
LABEL_44:
              v59 = v59 + *&v52[8 * v58] * *&v51[8 * v58];
              ++v58;
            }

            while (v38 != v58);
          }

          v65 = -v59 / *&__dst[8 * v46];
          if (v65 != 0.0)
          {
            if (v45 >= 4)
            {
              if (&__dst[v545 + v32 * v542 + v32 * v50] >= v55 || v51 >= &v56[v32 * v50])
              {
                v67 = vdupq_lane_s64(*&v65, 0);
                v68 = v53;
                v69 = v43;
                v70 = v38 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v71 = vmlaq_f64(*v68, v67, *v69);
                  v68[-1] = vmlaq_f64(v68[-1], v67, v69[-1]);
                  *v68 = v71;
                  v69 += 2;
                  v68 += 2;
                  v70 -= 4;
                }

                while (v70);
                v66 = v45 & 0x7FFFFFFFFFFFFFFCLL;
                if (v45 == v57)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v66 = 0;
              }
            }

            else
            {
              v66 = 0;
            }

            do
            {
              *&v52[8 * v66] = *&v52[8 * v66] + *&v51[8 * v66] * v65;
              ++v66;
            }

            while (v38 != v66);
          }

LABEL_37:
          *(&v580 + v54 - 1) = *&__dst[8 * v40 + 8 * (v54 - 1) * v18];
          ++v54;
          ++v50;
          v53 = (v53 + v32);
          v52 += v32;
          if (v54 == 10)
          {
            break;
          }

          continue;
        }
      }

      v72 = ~v40;
      LODWORD(v31) = v540;
      v74 = v565;
      v73 = v567;
      if (v40 < v529 && v18 > v40)
      {
        v75 = v72 + v540;
        v76 = *v539;
        v77 = v565;
        if (v72 + v540 <= 5)
        {
          goto LABEL_59;
        }

        v77 = v565;
        if (v46 + v534 - v40 < v46)
        {
          goto LABEL_59;
        }

        v77 = v565;
        if ((v534 - v40) >> 32)
        {
          goto LABEL_59;
        }

        v97 = v560 & 0xFFFFFFFFFFFFFFFCLL;
        v98 = v75 & 0xFFFFFFFFFFFFFFFCLL;
        v99 = &v556[v578 * v76];
        v100 = &v558[v578 * v76];
        v101 = v562;
        do
        {
          v102 = &__dst[8 * v101];
          v103 = v102[1];
          *v99 = *v102;
          v99 += 32;
          *v100 = v103;
          v100 += 32;
          v101 += 4;
          v97 -= 4;
        }

        while (v97);
        if (v75 != v98)
        {
          v77 = v565 + v98;
LABEL_59:
          v78 = v540 - v77;
          v79 = &v544[8 * v77 - 8 + v578 * v76];
          v80 = v569 + v77;
          do
          {
            *v79 = *&__dst[8 * v80];
            v79 += 8;
            ++v80;
            --v78;
          }

          while (v78);
        }
      }

      v30 = v40 + 1;
      if (v40 >= v530)
      {
        goto LABEL_25;
      }

      v81 = *(&v579 + v40 + 2);
      v82 = fabs(v81);
      v83 = v82 * 3.01916994e169 * (v82 * 3.01916994e169);
      if (v82 <= 3.31216864e-170)
      {
        v82 = 3.31216864e-170;
      }

      else
      {
        v83 = 1.0;
      }

      if (v40 <= 6)
      {
        v84 = fabs(*(&v581 + v40));
        v85 = v82 / v84 * (v82 / v84) * v83 + 1.0;
        v83 = v83 + v84 / v82 * (v84 / v82);
        if (v84 > v82)
        {
          v83 = v85;
          v82 = v84;
        }

        if (v40 != 6)
        {
          v86 = fabs(*(&v581 + v40 + 1));
          v87 = v82 / v86 * (v82 / v86) * v83 + 1.0;
          v83 = v83 + v86 / v82 * (v86 / v82);
          if (v86 > v82)
          {
            v83 = v87;
            v82 = v86;
          }

          if (v40 <= 4)
          {
            v88 = fabs(*(&v582 + v40));
            v89 = v82 / v88 * (v82 / v88) * v83 + 1.0;
            v83 = v83 + v88 / v82 * (v88 / v82);
            if (v88 > v82)
            {
              v83 = v89;
              v82 = v88;
            }

            if (v40 != 4)
            {
              v90 = fabs(*(&v582 + v40 + 1));
              v91 = v82 / v90 * (v82 / v90) * v83 + 1.0;
              v83 = v83 + v90 / v82 * (v90 / v82);
              if (v90 > v82)
              {
                v83 = v91;
                v82 = v90;
              }

              if (v40 <= 2)
              {
                v92 = fabs(*(&v583 + v40));
                v93 = v82 / v92 * (v82 / v92) * v83 + 1.0;
                v83 = v83 + v92 / v82 * (v92 / v82);
                if (v92 > v82)
                {
                  v83 = v93;
                  v82 = v92;
                }

                if (v40 != 2)
                {
                  v94 = fabs(*(&v583 + v40 + 1));
                  v95 = v82 / v94 * (v82 / v94) * v83 + 1.0;
                  v83 = v83 + v94 / v82 * (v94 / v82);
                  if (v94 > v82)
                  {
                    v83 = v95;
                    v82 = v94;
                  }

                  if (!v40)
                  {
                    v96 = fabs(v584);
                    if (v96 <= v82)
                    {
                      v83 = v83 + v96 / v82 * (v96 / v82);
                    }

                    else
                    {
                      v83 = v82 / v96 * (v82 / v96) * v83 + 1.0;
                      v82 = v96;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v127 = v82 * sqrt(v83);
      if (v127 == 0.0)
      {
        *(&v580 + v40) = 0;
LABEL_146:
        if (v40 <= 7)
        {
          v148 = v30;
          memcpy(v10 + ((80 * v40 + 16) & 0x7FFFFFFF0) - 8, &v580 + v545 + 8, ((56 - v545) & 0x7FFFFFFF8) + 8);
          v30 = v148;
          v74 = v565;
          v73 = v567;
          LODWORD(v31) = v540;
          v29 = v544;
        }

        goto LABEL_25;
      }

      v128 = v563 & 0xC;
      v129 = (&v580 + 8 * v37 + 8);
      v130 = 8 - v40;
      if (v81 >= 0.0)
      {
        v131 = v127;
      }

      else
      {
        v131 = -v127;
      }

      *(&v580 + v40) = v131;
      if (fabs(v127) >= 1.00208418e-292)
      {
        if (v40 <= 7)
        {
          v140 = v579;
          if (v130 > 3)
          {
            v141 = v130 & 0xC;
            v142 = 1.0 / v131;
            do
            {
              v143 = vmulq_n_f64(*v129, v142);
              v129[-1] = vmulq_n_f64(v129[-1], v142);
              *v129 = v143;
              v129 += 2;
              v128 -= 4;
            }

            while (v128);
            if (v130 == v141)
            {
              goto LABEL_145;
            }

            v140 = v141 + v579;
          }

          v144 = v140 + 1;
          v145 = (&v579 + v140);
          v146 = 1.0 / v131;
          do
          {
            *v145 = *v145 * v146;
            ++v145;
            v139 = v144++ == 10;
          }

          while (!v139);
        }
      }

      else if (v40 <= 7)
      {
        v132 = v579;
        if (v130 > 3)
        {
          v133 = v130 & 0xC;
          v134 = 1.0 / v131;
          do
          {
            v135 = vmulq_n_f64(*v129, v134);
            v129[-1] = vmulq_n_f64(v129[-1], v134);
            *v129 = v135;
            v129 += 2;
            v128 -= 4;
          }

          while (v128);
          if (v130 == v133)
          {
            goto LABEL_145;
          }

          v132 = v133 + v579;
        }

        v136 = v132 + 1;
        v137 = (&v579 + v132);
        v138 = 1.0 / v131;
        do
        {
          *v137 = *v137 * v138;
          ++v137;
          v139 = v136++ == 10;
        }

        while (!v139);
      }

LABEL_145:
      v147 = *(&v580 + v30) + 1.0;
      *(&v580 + v30) = v147;
      *(&v580 + v40) = -*(&v580 + v40);
      if ((v40 + 2) > v18)
      {
        goto LABEL_146;
      }

      v531 = ~v40;
      bzero(&v586[8 * v30], 8 * v44);
      v30 = v40 + 1;
      v74 = v565;
      v73 = v567;
      LODWORD(v31) = v540;
      v29 = v544;
      if (v40 <= 7)
      {
        v149 = &v550[v32 * v542];
        v150 = (v552 + v32 * v542);
        v151 = v531 + v18;
        v152 = (v531 + v18) & 0xFFFFFFFFFFFFFFFCLL;
        v153 = v149;
        v154 = v150;
        v155 = v579;
        while (2)
        {
          if (v45 >= 2)
          {
            v156 = *(&v580 + v155 - 1);
            if (*&v156 != 0.0)
            {
              if (v151 < 4)
              {
                v157 = 0;
                goto LABEL_158;
              }

              v158 = vdupq_lane_s64(v156, 0);
              v159 = v567;
              v160 = v154;
              v161 = v33 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v162 = vmlaq_f64(*v159, v158, *v160);
                v159[-1] = vmlaq_f64(v159[-1], v158, v160[-1]);
                *v159 = v162;
                v160 += 2;
                v159 += 2;
                v161 -= 4;
              }

              while (v161);
              v157 = (v531 + v18) & 0xFFFFFFFFFFFFFFFCLL;
              if (v151 != v152)
              {
                do
                {
LABEL_158:
                  *&v35[8 * v157] = *&v35[8 * v157] + *&v153[8 * v157] * *&v156;
                  ++v157;
                }

                while (v33 != v157);
              }
            }
          }

          ++v155;
          v154 = (v154 + v32);
          v153 += v32;
          if (v155 != 10)
          {
            continue;
          }

          break;
        }

        v163 = v579;
        while (2)
        {
          if (v45 >= 2)
          {
            v164 = -(*(&v580 + v163 - 1) * (1.0 / v147));
            if (v164 != 0.0)
            {
              if (v151 < 4)
              {
                v165 = 0;
                goto LABEL_169;
              }

              v166 = vdupq_lane_s64(*&v164, 0);
              v167 = v150;
              v168 = v567;
              v169 = v33 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v170 = vmlaq_f64(*v167, v166, *v168);
                v167[-1] = vmlaq_f64(v167[-1], v166, v168[-1]);
                *v167 = v170;
                v168 += 2;
                v167 += 2;
                v169 -= 4;
              }

              while (v169);
              v165 = (v531 + v18) & 0xFFFFFFFFFFFFFFFCLL;
              if (v151 != v152)
              {
                do
                {
LABEL_169:
                  *&v149[8 * v165] = *&v149[8 * v165] + *&v35[8 * v165] * v164;
                  ++v165;
                }

                while (v33 != v165);
              }
            }
          }

          ++v163;
          v150 = (v150 + v32);
          v149 += v32;
          if (v163 == 10)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

LABEL_25:
      v39 = v548 + v31;
      v554 += v18;
      v37 = v579 + 1;
      v36 = v74 + 1;
      --v33;
      --v38;
      v571 += 8;
      ++v574;
      v556 += 8;
      v578 += 8;
      v558 += 8;
      --v560;
      v562 += v31;
      v569 += v18;
      --v563;
      v34 = &v73->f64[1];
      v35 += 8;
      v550 += 8;
      ++v552;
    }

    while (v30 != v537);
  }

  if (v532 >= 8)
  {
    v171 = 8;
  }

  else
  {
    v171 = v532;
  }

  v578 = v171;
  if (v532 >= 10 || (__src[v529] = *&__dst[8 * v529 + 8 * v529 * v532], v532 == 9) || (__src[v171] = 0.0, v532 >= 8))
  {
    *(&v580 + v530) = *&__dst[8 * v530 + 8 * v171 * v532];
  }

  v579 = v171;
  *(&v580 + v171) = 0;
  v568 = *v12;
  if (v568 >= v528)
  {
    v172 = *v539;
    if (v18 > 0)
    {
      v173 = v568 - v528 + 1;
      v174 = &v29[8 * (v528 - 1) * v172 - 8 + 8 * v528];
      v175 = v172 * v529;
      do
      {
        bzero(&v29[8 * v175], 8 * v18);
        v29 = v544;
        *v174 = 0x3FF0000000000000;
        v174 += 8 * v172 + 8;
        v175 += v172;
        --v173;
      }

      while (v173);
      goto LABEL_188;
    }

    v176 = v528;
    v177 = *v12;
    v178 = (v568 - v528);
    if (v568 == v528)
    {
      goto LABEL_185;
    }

    v514 = v172 * v529;
    if (v172 >= 0)
    {
      v515 = *v539;
    }

    else
    {
      v515 = -v172;
    }

    v516 = v515 * v178;
    v517 = v514 + v516 < v514;
    v518 = v514 - v516 > v514;
    if (v172 >= 0)
    {
      v518 = v517;
    }

    if (v518)
    {
LABEL_185:
      v179 = v528;
      goto LABEL_186;
    }

    v179 = v528;
    if ((v516 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_186:
      v180 = &v29[8 * (v179 - 1) * v172 - 8 + 8 * v176];
      v181 = v177 - v176 + 1;
      do
      {
        *v180 = 0x3FF0000000000000;
        v180 += 8 * v172 + 8;
        --v181;
      }

      while (v181);
      goto LABEL_188;
    }

    v519 = v178 + 1;
    v520 = (v178 + 1) & 0x1FFFFFFFELL;
    v521 = v172 * v528;
    v522 = 2 * v172;
    v523 = v172 * v529;
    v524 = &v29[8 * v528];
    v525 = v524 - 8;
    v526 = v520;
    do
    {
      *&v525[8 * v523] = 0x3FF0000000000000;
      *&v524[8 * v521] = 0x3FF0000000000000;
      v521 += v522;
      v523 += v522;
      v524 += 16;
      v525 += 16;
      v526 -= 2;
    }

    while (v526);
    if (v519 != v520)
    {
      v176 = v520 + v528;
      v179 = v528 + v520;
      v177 = v568;
      goto LABEL_186;
    }
  }

LABEL_188:
  v182 = v568;
  if (v532 >= 2)
  {
    v183 = 0;
    v551 = 8 * v18;
    v184 = v529;
    v185 = v18 - v529 + 1;
    v186 = 8 * v18;
    v187 = (8 * v18 + 8) * v529;
    v572 = (8 * v18) ^ 0xFFFFFFFFFFFFFFF8;
    v188 = 8 * v529;
    v549 = -8 * v18;
    v547 = v528 + v18 * (v528 - 2) - 1;
    v570 = ~v18;
    v546 = &v29[v187 - 8];
    v541 = &v29[8 * v18 - v188];
    v543 = &v29[(v188 + 8) * v18];
    if (v529 <= 1)
    {
      v189 = 1;
    }

    else
    {
      v189 = v529;
    }

    v564 = v18 - v529 + 1;
    v566 = v189;
    v561 = 8 * v18;
    v190 = v528 + v18 * (v528 - 2) - 1;
    v538 = v29 + 8;
    v191 = &v29[v187 + 8];
    v559 = v29 - 8;
    v192 = &v29[v187 - 8];
    v193 = v188 - 8;
    v194 = &v29[v188 - 8];
    v195 = &v29[v188 + 8];
    v535 = v10;
    v536 = v18;
    while (1)
    {
      v196 = v184 - 1;
      v197 = v184 + v19 * (v184 - 1) - 1;
      if (__src[v184 - 1] == 0.0)
      {
        if (v19 >= 1)
        {
          v246 = &v29[8 * v196 * *v539];
          v576 = v193;
          v555 = v184 - 1;
          v557 = v192;
          v247 = v190;
          v248 = v191;
          v553 = v195;
          v249 = v194;
          v250 = v184 + v19 * (v184 - 1) - 1;
          bzero(v246, v551);
          v197 = v250;
          v194 = v249;
          v191 = v248;
          v195 = v553;
          v196 = v555;
          v190 = v247;
          v192 = v557;
          v193 = v576;
          v182 = v568;
          v29 = v544;
        }

        *&v29[8 * v197] = 0x3FF0000000000000;
        goto LABEL_194;
      }

      v575 = v184 + v19 * (v184 - 1) - 1;
      v198 = v185 & 0xFFFFFFFFFFFFFFFCLL;
      v199 = v564 + v183;
      if (v184 < v182 && ((v18 - v184) & 0x8000000000000000) == 0)
      {
        v200 = 8 * v190;
        v201 = &v559[v200];
        v202 = &v538[v200];
        v203 = 8 * (v547 + v183 * v570);
        v204 = v199 & 0xFFFFFFFFFFFFFFFCLL;
        v206 = v546 + v572 * v183 < &v541[8 * v183 + v203] && &v559[v203] < &v543[v549 * v183 + v186 * (v568 - v528 + v183)] || v18 < 0;
        v208 = v206 || v199 < 4;
        v209 = v192;
        v210 = v191;
        v211 = v184;
        while (v199 >= 4)
        {
          v214 = 0uLL;
          v215 = v210;
          v216 = v202;
          v217 = v185 & 0xFFFFFFFFFFFFFFFCLL;
          v218 = 0uLL;
          do
          {
            v214 = vmlaq_f64(v214, v216[-1], v215[-1]);
            v218 = vmlaq_f64(v218, *v216, *v215);
            v216 += 2;
            v215 += 2;
            v217 -= 4;
          }

          while (v217);
          v213 = vaddvq_f64(vaddq_f64(v218, v214));
          v212 = v199 & 0xFFFFFFFFFFFFFFFCLL;
          if (v199 != v204)
          {
            goto LABEL_217;
          }

LABEL_218:
          v219 = -v213 / *&v29[8 * v575];
          if (v219 != 0.0)
          {
            if (v208)
            {
              v220 = 0;
            }

            else
            {
              v221 = vdupq_lane_s64(*&v219, 0);
              v222 = v210;
              v223 = v202;
              v224 = v185 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v225 = vmlaq_f64(*v222, v221, *v223);
                v222[-1] = vmlaq_f64(v222[-1], v221, v223[-1]);
                *v222 = v225;
                v223 += 2;
                v222 += 2;
                v224 -= 4;
              }

              while (v224);
              v220 = v199 & 0xFFFFFFFFFFFFFFFCLL;
              if (v199 == v204)
              {
                goto LABEL_211;
              }
            }

            do
            {
              *(v209 + 8 * v220) = *(v209 + 8 * v220) + *&v201[8 * v220] * v219;
              ++v220;
            }

            while (v185 != v220);
          }

LABEL_211:
          ++v211;
          v210 = (v210 + v186);
          v209 += v186;
          if (v182 == v211)
          {
            goto LABEL_226;
          }
        }

        v212 = 0;
        v213 = 0.0;
        do
        {
LABEL_217:
          v213 = v213 + *(v209 + 8 * v212) * *&v201[8 * v212];
          ++v212;
        }

        while (v185 != v212);
        goto LABEL_218;
      }

LABEL_226:
      if (v18 >= v184)
      {
        v226 = *v539;
        v227 = v184;
        if (v199 < 4)
        {
          goto LABEL_232;
        }

        v228 = v199 & 0xFFFFFFFFFFFFFFFCLL;
        v229 = &v194[v193 * v226];
        v230 = &v195[v193 * v226];
        do
        {
          v231 = vnegq_f64(*v230);
          *v229 = vnegq_f64(*v229);
          v229 += 2;
          *v230 = v231;
          v230 += 2;
          v198 -= 4;
        }

        while (v198);
        if (v199 != v228)
        {
          break;
        }
      }

LABEL_237:
      *&v29[8 * v575] = *&v29[8 * v575] + 1.0;
      if (v184 < 2)
      {
        goto LABEL_241;
      }

      v235 = 8 * ((v528 - 2) - v183);
      v236 = &v29[8 * v196 * *v539];
      v237 = v183;
      v238 = v18;
      v239 = v193;
      v240 = v192;
      v241 = v190;
      v242 = v184 - 1;
      v243 = v191;
      v244 = v195;
      v245 = v194;
      bzero(v236, v235);
      v194 = v245;
      v195 = v244;
      v191 = v243;
      v196 = v242;
      v190 = v241;
      v192 = v240;
      v193 = v239;
      v18 = v238;
      v183 = v237;
      v10 = v535;
      v19 = v536;
      v186 = v561;
      v182 = v568;
      v29 = v544;
LABEL_194:
      ++v183;
      ++v185;
      v190 += v570;
      v191 += v572;
      v192 += v572;
      v194 -= 8;
      v193 -= 8;
      v195 -= 8;
      v184 = v196;
      if (v183 == v566)
      {
        goto LABEL_241;
      }
    }

    v227 = v184 + v228;
LABEL_232:
    if (v227 <= v18)
    {
      v232 = v18;
    }

    else
    {
      v232 = v227;
    }

    v233 = v232 - v227 + 1;
    v234 = &v559[8 * v227 + v193 * v226];
    do
    {
      *v234 = -*v234;
      ++v234;
      --v233;
    }

    while (v233);
    goto LABEL_237;
  }

LABEL_241:
  v251 = 0;
  v252 = (v10 + 83);
  v253 = (v10 + 92);
  v254 = v10 + 90;
  v255 = 10;
  v256 = 8;
  v257 = v10 + 81;
  do
  {
    v259 = v256;
    if (v256 < v530 && *(&v580 + v256) != 0.0)
    {
      v260 = &v10[-10 * v251];
      v261 = (10 * v256) | 1;
      v263 = v260 + 90 < &v10[-9 * v251 + 81] && v260 < v10;
      if (v251 >= 4)
      {
        v270 = 4 * (v251 >> 2);
        v271 = &v254[v270];
        v272 = &v257[v270];
        v273 = v251 & 0x7FFFFFFFFFFFFFFCLL;
        v274 = v254;
        v275 = v253;
        v276 = v255;
        do
        {
          v278 = 0uLL;
          v279 = v275;
          v280 = v252;
          v281 = 4 * (v251 >> 2);
          v282 = 0uLL;
          do
          {
            v278 = vmlaq_f64(v278, v280[-1], v279[-1]);
            v282 = vmlaq_f64(v282, *v280, *v279);
            v280 += 2;
            v279 += 2;
            v281 -= 4;
          }

          while (v281);
          v283 = vaddvq_f64(vaddq_f64(v282, v278));
          if (v251 != v273)
          {
            v284 = v272;
            v285 = v271;
            v286 = v251 - 4 * (v251 >> 2);
            do
            {
              v287 = *v284++;
              v288 = v287;
              v289 = *v285++;
              v283 = v283 + v289 * v288;
              --v286;
            }

            while (v286);
          }

          v277 = -v283 / *&v10[v261];
          if (v277 != 0.0)
          {
            v290 = 0;
            if (v263)
            {
              goto LABEL_470;
            }

            v291 = vdupq_lane_s64(*&v277, 0);
            v292 = 4 * (v251 >> 2);
            do
            {
              v293 = (v275 + v290);
              v294 = vmlaq_f64(*(v275 + v290), v291, *(v252 + v290));
              v293[-1] = vmlaq_f64(*(v275 + v290 - 16), v291, *(v257 + v290));
              *v293 = v294;
              v290 += 32;
              v292 -= 4;
            }

            while (v292);
            v290 = v251 & 0x7FFFFFFFFFFFFFFCLL;
            if (v251 != v273)
            {
LABEL_470:
              do
              {
                *&v274[v290] = *&v274[v290] + *&v257[v290] * v277;
                ++v290;
              }

              while (v251 != v290);
            }
          }

          ++v276;
          v275 = (v275 + 72);
          v271 += 9;
          v274 += 9;
        }

        while (v276 != 10);
      }

      else
      {
        v264 = v254;
        v265 = v255;
        do
        {
          v266 = 0;
          v267 = 0.0;
          do
          {
            v267 = v267 + *&v264[v266] * *&v257[v266];
            ++v266;
          }

          while (v251 != v266);
          v268 = -v267 / *&v10[v261];
          if (v268 != 0.0)
          {
            v269 = 0;
            do
            {
              *&v264[v269] = *&v264[v269] + *&v257[v269] * v268;
              ++v269;
            }

            while (v251 != v269);
          }

          ++v265;
          v264 += 9;
        }

        while (v265 != 10);
      }
    }

    v258 = &v10[9 * v259];
    v258[8] = 0;
    *(v258 + 2) = 0uLL;
    *(v258 + 3) = 0uLL;
    *v258 = 0uLL;
    *(v258 + 1) = 0uLL;
    v10[10 * v259] = 0x3FF0000000000000;
    v256 = v259 - 1;
    --v255;
    ++v251;
    v252 -= 5;
    v253 -= 5;
    v254 -= 10;
    v257 -= 10;
  }

  while (v259);
  v295 = v544;
  if ((v532 & 0x80000000) == 0)
  {
    v296 = 0;
    v297 = 0;
    v298 = v578;
    v299 = v579;
    v300 = (v578 + 1);
    v301 = 0.0;
    v302 = 9;
    v303 = v18;
    while (1)
    {
      v304 = v296;
      v305 = v297;
      v306 = v297 + 1;
      if (v303 <= v306)
      {
        v307 = v297 + 1;
      }

      else
      {
        v307 = v303;
      }

      if (++v296 * v18 <= v306)
      {
        v308 = v297 + 1;
      }

      else
      {
        v308 = v296 * v18;
      }

      v309 = __src[v304];
      if (v309 == 0.0)
      {
        goto LABEL_295;
      }

      v310 = fabs(v309);
      __src[v304] = v310;
      v311 = v309 / v310;
      if (v304 < v299)
      {
        *(&v580 + v304) = *(&v580 + v304) / v311;
      }

      if (v304 < v18)
      {
        v312 = v308 - v297;
        v313 = v297;
        if (v312 >= 4)
        {
          v314 = (v307 - v297) & 0xFFFFFFFFFFFFFFFCLL;
          v315 = &v544[8 * v297 + 16];
          v316 = v312 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v317 = vmulq_n_f64(*v315, v311);
            v315[-1] = vmulq_n_f64(v315[-1], v311);
            *v315 = v317;
            v315 += 2;
            v314 -= 4;
          }

          while (v314);
          if (v312 == v316)
          {
            goto LABEL_294;
          }

          v313 = v316 + v305;
        }

        do
        {
          *&v544[8 * v313] = *&v544[8 * v313] * v311;
          ++v313;
        }

        while (v313 < v296 * v18);
      }

LABEL_294:
      v309 = v310;
LABEL_295:
      v318 = *(&v580 + v304);
      if (v304 < v299 && v318 != 0.0)
      {
        v319 = fabs(v318);
        *(&v580 + v304) = v319;
        v320 = v319 / v318;
        __src[v296] = __src[v296] * v320;
        v321 = v302;
        *&v10[v321] = vmulq_n_f64(*&v10[v302], v320);
        *&v10[v321 + 2] = vmulq_n_f64(*&v10[v302 + 2], v320);
        *&v10[v321 + 4] = vmulq_n_f64(*&v10[v302 + 4], v320);
        *&v10[v321 + 6] = vmulq_n_f64(*&v10[v302 + 6], v320);
        *&v10[v321 + 8] = *&v10[v302 + 8] * v320;
        v318 = v319;
      }

      v301 = fmax(v301, fmax(fabs(v309), fabs(v318)));
      v297 = v305 + v18;
      v302 += 9;
      v303 += v18;
      if (v296 == v300)
      {
        v322 = 0;
        v323 = v301 * 2.22044605e-16;
        v324 = 8 * v18;
        v573 = &v544[8 * v19];
        v325 = &v573[(8 * v299 - 8) * v18];
        v326 = v19 & 0x7FFFFFFE;
        v327 = v544 + 16;
        v328 = v298;
        v577 = &v544[8 * v19 + 8 * v299 * v18];
        while (1)
        {
          if (!v328)
          {
            v330 = 0;
            v331 = __src[0];
            if (__src[0] >= 0.0)
            {
              goto LABEL_328;
            }

            goto LABEL_318;
          }

          v329 = v328 + 1;
          v330 = v328;
          v331 = __src[v328];
          v332 = v328;
          v333 = v331;
          while (1)
          {
            v334 = v332 - 1;
            v335 = fabs(*(&v579 + v332));
            v336 = fabs(v333);
            v333 = __src[v332 - 1];
            v337 = (v336 + fabs(v333)) * 2.22044605e-16;
            v338 = v335 > v323 || v322 < 21;
            v339 = v338;
            v340 = v335 > 1.00208418e-292 && v335 > v337;
            if (!v340 || !v339)
            {
              break;
            }

            --v332;
            if (!v334)
            {
              goto LABEL_350;
            }
          }

          *(&v580 + v334) = 0;
          if (v332 == v328)
          {
            break;
          }

LABEL_350:
          if (v329 >= v332)
          {
            LODWORD(v445) = v328 + 1;
            while (v445 != v332)
            {
              v382 = v445;
              v451 = 0.0;
              if (v445 <= v328)
              {
                v451 = fabs(*(&v580 + v445 - 1));
              }

              if (v445 > v332 + 1)
              {
                v451 = fabs(*(&v578 + v445)) + v451;
              }

              v445 = v445 - 1;
              v446 = fabs(__src[v445]);
              v447 = fmax(v451 * 2.22044605e-16, 1.00208418e-292);
              v448 = v447 < v446;
              if (v447 >= v446)
              {
                v449 = 0.0;
              }

              else
              {
                v449 = __src[v445];
              }

              __src[v445] = v449;
              if (v448)
              {
                v450 = v445 < v332;
              }

              else
              {
                LODWORD(v445) = v382;
                v450 = 1;
              }

              if (v450)
              {
                goto LABEL_352;
              }
            }

LABEL_353:
            v383 = __src[v328 - 1];
            v384 = *(&v580 + v328 - 1);
            v385 = __src[v328];
            v386 = __src[v332];
            v387 = *(&v580 + v332);
            v388 = fmax(fmax(fmax(fmax(fabs(v385), fabs(v383)), fabs(v384)), fabs(v386)), fabs(v387));
            v389 = v385 * (1.0 / v388);
            v390 = v384 * (1.0 / v388);
            v391 = (v390 * v390 + (v383 * (1.0 / v388) + v389) * (v383 * (1.0 / v388) - v389)) * 0.5;
            v392 = v389 * v390 * (v389 * v390);
            if (v392 != 0.0 || (v393 = 0.0, v391 != 0.0))
            {
              v394 = sqrt(v392 + v391 * v391);
              if (v391 < 0.0)
              {
                v394 = -v394;
              }

              v393 = v392 / (v394 + v391);
            }

            v395 = v386 * (1.0 / v388);
            v396 = v393 + (v395 + v389) * (v395 - v389);
            if (v332 < v328)
            {
              v397 = v332;
              v398 = v395 * v387 / v388;
              v399 = v332 + 1;
              v400 = v332 + 1;
              v401 = &v295[v324 * v399];
              v402 = 8 * v332 + 8 * (v328 + ~v332);
              v403 = &v295[v324 * v397];
              v405 = v401 < &v573[v402 * v18] && v403 < &v573[(v402 + 8) * v18];
              v406 = v18 < 2 || v405;
              while (1)
              {
                v407 = fabs(v396);
                v408 = fabs(v398);
                if (v407 + v408 == 0.0)
                {
                  break;
                }

                if (v407 <= v408)
                {
                  v431 = v398;
                }

                else
                {
                  v431 = v396;
                }

                v410 = sqrt(v408 / (v407 + v408) * (v408 / (v407 + v408)) + v407 / (v407 + v408) * (v407 / (v407 + v408))) * (v407 + v408);
                if (v431 < 0.0)
                {
                  v410 = -v410;
                }

                v409 = v396 / v410;
                v411 = v398 / v410;
                if (v399 > v400)
                {
                  goto LABEL_369;
                }

LABEL_370:
                v412 = -(v386 * v411 - v387 * v409);
                *(&v580 + v399 - 1) = v412;
                v413 = __src[v399];
                v414 = v413 * v411;
                v415 = &v10[9 * v399];
                v416 = *(v415 - 72);
                v417 = v415[1];
                v418 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v416, v411)), *v415, v409);
                *(v415 - 72) = vmlaq_n_f64(vmulq_n_f64(*v415, v411), v416, v409);
                v419 = *(v415 - 56);
                *v415 = v418;
                v415[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v419, v411)), v417, v409);
                *(v415 - 56) = vmlaq_n_f64(vmulq_n_f64(v417, v411), v419, v409);
                v420 = *(v415 - 40);
                v421 = v415[2];
                v422 = v415[3];
                v423 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v420, v411)), v421, v409);
                *(v415 - 40) = vmlaq_n_f64(vmulq_n_f64(v421, v411), v420, v409);
                v424 = *(v415 - 24);
                v415[2] = v423;
                v415[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v424, v411)), v422, v409);
                *(v415 - 24) = vmlaq_n_f64(vmulq_n_f64(v422, v411), v424, v409);
                v424.f64[0] = v415[4].f64[0];
                v423.f64[0] = v415[-1].f64[1];
                v415[4].f64[0] = -(v423.f64[0] * v411 - v424.f64[0] * v409);
                v415[-1].f64[1] = v424.f64[0] * v411 + v423.f64[0] * v409;
                v425 = v387 * v411 + v386 * v409;
                v426 = fabs(v425);
                v427 = fabs(v414);
                if (v427 + v426 == 0.0)
                {
                  v428 = 1.0;
                  v429 = 0.0;
                  v430 = 0.0;
                }

                else
                {
                  if (v426 <= v427)
                  {
                    v432 = v414;
                  }

                  else
                  {
                    v432 = v425;
                  }

                  v433 = sqrt(v427 / (v427 + v426) * (v427 / (v427 + v426)) + v426 / (v427 + v426) * (v426 / (v427 + v426))) * (v427 + v426);
                  v429 = -v433;
                  if (v432 >= 0.0)
                  {
                    v429 = v433;
                  }

                  v428 = v425 / v429;
                  v430 = v414 / v429;
                }

                v434 = v413 * v409;
                __src[v399 - 1] = v429;
                v386 = -(v430 * v412 - v434 * v428);
                __src[v399] = v386;
                v435 = *(&v580 + v399);
                v387 = v435 * v428;
                *(&v580 + v399) = v435 * v428;
                if (v18 < 1 || v399 >= v18)
                {
                  goto LABEL_366;
                }

                if (v406)
                {
                  v436 = 0;
                }

                else
                {
                  v437 = vdupq_lane_s64(*&v428, 0);
                  v438 = vdupq_lane_s64(*&v430, 0);
                  v439 = v403;
                  v440 = v401;
                  v441 = v19 & 0x7FFFFFFE;
                  do
                  {
                    v442 = vmlaq_f64(vmulq_n_f64(*v439, v428), v438, *v440);
                    *v440 = vmlaq_f64(vnegq_f64(vmulq_n_f64(*v439, v430)), v437, *v440);
                    ++v440;
                    *v439++ = v442;
                    v441 -= 2;
                  }

                  while (v441);
                  v436 = v19 & 0x7FFFFFFE;
                  if (v326 == v19)
                  {
                    goto LABEL_366;
                  }
                }

                do
                {
                  v443 = *(v403 + 8 * v436);
                  v444 = v401->f64[v436];
                  v401->f64[v436] = -(v443 * v430 - v444 * v428);
                  *(v403 + 8 * v436++) = v443 * v428 + v444 * v430;
                }

                while (v19 != v436);
LABEL_366:
                v396 = v428 * v412 + v434 * v430;
                v398 = v435 * v430;
                ++v399;
                v401 = (v401 + v324);
                v403 += v324;
                if (v329 == v399)
                {
                  goto LABEL_394;
                }
              }

              v409 = 1.0;
              v410 = 0.0;
              v411 = 0.0;
              if (v399 <= v400)
              {
                goto LABEL_370;
              }

LABEL_369:
              *(&v578 + v399) = v410;
              goto LABEL_370;
            }

LABEL_394:
            *(&v580 + v328 - 1) = v396;
            ++v322;
            v295 = v544;
            goto LABEL_395;
          }

          v382 = v328 + 1;
LABEL_352:
          if (v382 == v332)
          {
            goto LABEL_353;
          }

          if (v382 == v329)
          {
            v452 = &v580 + v328;
            v453 = *(v452 - 1);
            *(v452 - 1) = 0.0;
            if (v328 > v332)
            {
              v454 = 9 * v328 + 1;
              v455 = &v10[v454 - 1];
              v456 = &v10[9 * v328 - 4];
              do
              {
                v475 = __src[v330 - 1];
                v476 = fabs(v475);
                v477 = fabs(v453);
                if (v476 + v477 == 0.0)
                {
                  v478 = 1.0;
                  v479 = 0.0;
                  v453 = 0.0;
                  v480 = 0.0;
                }

                else
                {
                  if (v476 <= v477)
                  {
                    v481 = v453;
                  }

                  else
                  {
                    v481 = __src[v330 - 1];
                  }

                  v482 = sqrt(v477 / (v476 + v477) * (v477 / (v476 + v477)) + v476 / (v476 + v477) * (v476 / (v476 + v477))) * (v476 + v477);
                  v479 = -v482;
                  if (v481 >= 0.0)
                  {
                    v479 = v482;
                  }

                  v206 = v476 <= v477;
                  v478 = v475 / v479;
                  v480 = v453 / v479;
                  if (v206)
                  {
                    if (v478 == 0.0)
                    {
                      v453 = 1.0;
                    }

                    else
                    {
                      v453 = 1.0 / v478;
                    }
                  }

                  else
                  {
                    v453 = v453 / v479;
                  }
                }

                __src[v330 - 1] = v479;
                if (v330 > v332 + 1)
                {
                  v483 = *(&v578 + v330);
                  v453 = -(v480 * v483);
                  *(&v578 + v330) = v483 * v478;
                }

                --v330;
                v457 = *v455;
                v458 = *(v456 - 5);
                *v455 = -(v458 * v480 - *v455 * v478);
                *(v456 - 5) = v457 * v480 + v458 * v478;
                v459 = *&v10[v454];
                v460 = *(v456 - 4);
                *&v10[v454] = -(v460 * v480 - v459 * v478);
                *(v456 - 4) = v459 * v480 + v460 * v478;
                v461 = v455[2];
                v462 = *(v456 - 3);
                v455[2] = -(v462 * v480 - v461 * v478);
                *(v456 - 3) = v461 * v480 + v462 * v478;
                v463 = v455[3];
                v464 = *(v456 - 2);
                v455[3] = -(v464 * v480 - v463 * v478);
                *(v456 - 2) = v463 * v480 + v464 * v478;
                v465 = v455[4];
                v466 = *(v456 - 1);
                v455[4] = -(v466 * v480 - v465 * v478);
                *(v456 - 1) = v465 * v480 + v466 * v478;
                v467 = v455[5];
                v468 = *v456;
                v455[5] = -(*v456 * v480 - v467 * v478);
                *v456 = v467 * v480 + v468 * v478;
                v469 = v455[6];
                v470 = v456[1];
                v455[6] = -(v470 * v480 - v469 * v478);
                v456[1] = v469 * v480 + v470 * v478;
                v471 = v455[7];
                v472 = v456[2];
                v455[7] = -(v472 * v480 - v471 * v478);
                v456[2] = v471 * v480 + v472 * v478;
                v473 = v455[8];
                v474 = v456[3];
                v455[8] = -(v474 * v480 - v473 * v478);
                v456[3] = v473 * v480 + v474 * v478;
                v456 -= 9;
              }

              while (v330 > v332);
            }

            goto LABEL_395;
          }

          v484 = v382 - 1;
          v485 = *(&v580 + v484);
          *(&v580 + v484) = 0;
          v486 = (v328 - v382);
          if (v328 >= v382)
          {
            v487 = 8 * v484 * v19;
            v488 = &v295[v487];
            v489 = v382;
            v490 = &v573[v487];
            v491 = &v295[v324 * v489];
            v493 = v488 < &v573[8 * (v489 + v486) * v18] && v491 < v490;
            v494 = v18 == 1 || v493;
            do
            {
              v495 = __src[v489];
              v496 = fabs(v495);
              v497 = fabs(v485);
              if (v496 + v497 == 0.0)
              {
                v498 = 1.0;
                v499 = 0.0;
                v500 = 0.0;
              }

              else
              {
                if (v496 <= v497)
                {
                  v501 = v485;
                }

                else
                {
                  v501 = __src[v489];
                }

                v502 = sqrt(v497 / (v496 + v497) * (v497 / (v496 + v497)) + v496 / (v496 + v497) * (v496 / (v496 + v497))) * (v496 + v497);
                v499 = -v502;
                if (v501 >= 0.0)
                {
                  v499 = v502;
                }

                v498 = v495 / v499;
                v500 = v485 / v499;
              }

              __src[v489] = v499;
              v503 = *(&v580 + v489);
              *(&v580 + v489) = v503 * v498;
              if (v19 < 1)
              {
                goto LABEL_437;
              }

              if (v494)
              {
                v504 = 0;
              }

              else
              {
                v505 = vdupq_lane_s64(*&v498, 0);
                v506 = vdupq_lane_s64(*&v500, 0);
                v507 = v491;
                v508 = v488;
                v509 = v19 & 0x7FFFFFFE;
                do
                {
                  v510 = vmlaq_f64(vmulq_n_f64(*v507, v498), v506, *v508);
                  *v508 = vmlaq_f64(vnegq_f64(vmulq_n_f64(*v507, v500)), v505, *v508);
                  ++v508;
                  *v507++ = v510;
                  v509 -= 2;
                }

                while (v509);
                v504 = v19 & 0x7FFFFFFE;
                if (v326 == v19)
                {
                  goto LABEL_437;
                }
              }

              do
              {
                v511 = v491->f64[v504];
                v512 = *(v488 + 8 * v504);
                *(v488 + 8 * v504) = -(v511 * v500 - v512 * v498);
                v491->f64[v504++] = v511 * v498 + v512 * v500;
              }

              while (v19 != v504);
LABEL_437:
              ++v489;
              v485 = -(v500 * v503);
              v491 = (v491 + v324);
            }

            while (v329 != v489);
          }

LABEL_395:
          if (v328 < 0 || v322 >= 75)
          {
            goto LABEL_454;
          }
        }

        if (v331 >= 0.0)
        {
          goto LABEL_328;
        }

LABEL_318:
        v331 = -v331;
        __src[v330] = v331;
        v341 = 9 * v328;
        v342 = 9 * v328 + 8;
        v343 = v342 - v341 + 1;
        if (v343 < 4)
        {
LABEL_323:
          if (v341 <= v342)
          {
            v348 = 9 * v328 + 8;
          }

          else
          {
            v348 = v341;
          }

          v349 = v348 - v341 + 1;
          v350 = &v10[v341];
          do
          {
            *v350 = -*v350;
            ++v350;
            --v349;
          }

          while (v349);
        }

        else
        {
          v344 = v343 & 0xFFFFFFFFFFFFFFFCLL;
          v345 = &v10[v341 + 2];
          v346 = v343 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v347 = vnegq_f64(*v345);
            v345[-1] = vnegq_f64(v345[-1]);
            *v345 = v347;
            v345 += 2;
            v346 -= 4;
          }

          while (v346);
          if (v343 != v344)
          {
            v341 += v344;
            goto LABEL_323;
          }
        }

LABEL_328:
        if (v328 >= v578)
        {
LABEL_348:
          v322 = 0;
          --v328;
          goto LABEL_395;
        }

        v352 = &v295[v324 * v330] < v577 && &v295[v324 * (v330 + 1)] < v325;
        v353 = v19 < 4 || v352;
        v354 = &v327[v324 * v330];
        v355 = v324 * (v330 + 1);
        v356 = &v327[v355];
        v357 = &v295[v355];
        v358 = &v295[v324 * v330];
        while (2)
        {
          v359 = v330++;
          v360 = __src[v330];
          if (v331 >= v360)
          {
            goto LABEL_348;
          }

          __src[v359] = v360;
          v361 = &v10[9 * v330];
          v362 = *(v361 + 1);
          v363 = &v10[9 * v359];
          v364 = *v363;
          v365 = *(v363 + 1);
          *v363 = *v361;
          *(v363 + 1) = v362;
          *v361 = v364;
          *(v361 + 1) = v365;
          v366 = *(v361 + 3);
          v367 = *(v363 + 2);
          v368 = *(v363 + 3);
          *(v363 + 2) = *(v361 + 2);
          *(v363 + 3) = v366;
          __src[v330] = v331;
          *(v361 + 2) = v367;
          *(v361 + 3) = v368;
          v369 = v363[8];
          v363[8] = v361[8];
          v361[8] = v369;
          if (v19 >= 1 && v330 < v18)
          {
            if (v353)
            {
              v370 = 0;
              goto LABEL_345;
            }

            v371 = v356;
            v372 = v354;
            v373 = v19 & 0x7FFFFFFC;
            do
            {
              v374 = *(v372 - 1);
              v375 = *v372;
              v376 = *v371;
              *(v372 - 1) = *(v371 - 1);
              *v372 = v376;
              *(v371 - 1) = v374;
              *v371 = v375;
              v372 += 32;
              v371 += 32;
              v373 -= 4;
            }

            while (v373);
            v370 = v19 & 0x7FFFFFFC;
            if (v370 != v19)
            {
LABEL_345:
              v377 = v19 - v370;
              v378 = 8 * v370;
              v379 = &v357[8 * v370];
              v380 = &v358[v378];
              do
              {
                v381 = *v380;
                *v380 = *v379;
                v380 += 8;
                *v379 = v381;
                v379 += 8;
                --v377;
              }

              while (v377);
            }
          }

          v354 += v324;
          v356 += v324;
          v357 += v324;
          v358 += v324;
          if (v330 == v579)
          {
            goto LABEL_348;
          }

          continue;
        }
      }
    }
  }

LABEL_454:
  v513 = *v533;
  if (v513 >= 1)
  {
    memcpy(v527, __src, 8 * v513);
  }
}

void *utils::local_sum(utils *this, const float *a2, float *a3)
{
  bzero(&utils::local_sum(float const*,float *)::B, 0x2438uLL);
  bzero(&utils::local_sum(float const*,float *)::B + 61976, 0x2438uLL);
  v5 = &utils::local_sum(float const*,float *)::B + 2439;
  v6 = 108;
  do
  {
    *(v5 - 121) = 0u;
    *(v5 - 18) = 0u;
    *(v5 - 117) = 0u;
    *(v5 - 14) = 0u;
    *(v5 - 113) = 0u;
    *(v5 - 10) = 0u;
    *(v5 - 109) = 0u;
    *(v5 - 6) = 0u;
    *(v5 - 105) = 0;
    *(v5 - 1) = 0;
    *(v5 - 103) = 0;
    *v5 = 0;
    result = memcpy(v5 - 102, this, 0x150uLL);
    this = (this + 336);
    v5 += 122;
    --v6;
  }

  while (v6);
  v8 = 0;
  v9 = &utils::local_sum(float const*,float *)::B;
  do
  {
    v10 = *(&utils::local_sum(float const*,float *)::B + 122 * v8);
    for (i = 4; i != 488; i += 4)
    {
      v10 = *(v9 + i) + v10;
      *(v9 + i) = v10;
    }

    ++v8;
    v9 = (v9 + 488);
  }

  while (v8 != 146);
  v12 = &unk_27D1911E0;
  v13 = 146;
  v14 = &unk_27D17FBB0;
  do
  {
    v15 = vsubq_f32(*(v14 - 148), *(v14 - 14));
    v12[-13] = vsubq_f32(*(v14 - 164), *(v14 - 15));
    v12[-12] = v15;
    v16 = vsubq_f32(*(v14 - 116), *(v14 - 12));
    v12[-11] = vsubq_f32(*(v14 - 132), *(v14 - 13));
    v12[-10] = v16;
    v17 = vsubq_f32(*(v14 - 84), *(v14 - 10));
    v12[-9] = vsubq_f32(*(v14 - 100), *(v14 - 11));
    v12[-8] = v17;
    v18 = vsubq_f32(*(v14 - 52), *(v14 - 8));
    v12[-7] = vsubq_f32(*(v14 - 68), *(v14 - 9));
    v12[-6] = v18;
    v19 = vsubq_f32(*(v14 - 20), *(v14 - 6));
    v12[-5] = vsubq_f32(*(v14 - 36), *(v14 - 7));
    v12[-4] = v19;
    v20 = vsubq_f32(*(v14 + 12), *(v14 - 4));
    v12[-3] = vsubq_f32(*(v14 - 4), *(v14 - 5));
    v12[-2] = v20;
    v21 = vsubq_f32(*(v14 + 44), *(v14 - 2));
    v12[-1] = vsubq_f32(*(v14 + 28), *(v14 - 3));
    *v12 = v21;
    v22 = vsubq_f32(*(v14 + 76), *v14);
    v12[1] = vsubq_f32(*(v14 + 60), *(v14 - 1));
    v12[2] = v22;
    v23 = vsubq_f32(*(v14 + 108), *(v14 + 2));
    v12[3] = vsubq_f32(*(v14 + 92), *(v14 + 1));
    v12[4] = v23;
    v24 = *(v14 + 140);
    v25 = vsubq_f32(v24, *(v14 + 4));
    v12[5] = vsubq_f32(*(v14 + 124), *(v14 + 3));
    v12[6] = v25;
    v26 = *(v14 + 156);
    v27 = vsubq_f32(*(v14 + 172), *(v14 + 6));
    v12[7] = vsubq_f32(v26, *(v14 + 5));
    v12[8] = v27;
    v28 = vsubq_f32(*(v14 + 204), *(v14 + 8));
    v12[9] = vsubq_f32(*(v14 + 188), *(v14 + 7));
    v12[10] = v28;
    v29 = vsubq_f32(*(v14 + 220), vextq_s8(v24, v26, 4uLL));
    *v26.f32 = vsub_f32(*(v14 + 236), vext_s8(*v26.f32, *&vextq_s8(v26, v26, 8uLL), 4uLL));
    v12[11] = v29;
    v12[12].i64[0] = v26.i64[0];
    v12 = (v12 + 408);
    v14 += 488;
    --v13;
  }

  while (v13);
  v30 = &utils::local_sum(float const*,float *)::c;
  v31 = 145;
  v32 = &utils::local_sum(float const*,float *)::c;
  do
  {
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v36 = v32[3];
    v37 = v32[4];
    v38 = v32[5];
    v39 = v32[6];
    v40 = v32[7];
    v41 = v32[8];
    v42 = v32[9];
    v43 = v32[10];
    v44 = v32[11];
    v45 = v32[12];
    v46 = v32[13];
    v47 = v32[14];
    v48 = v32[15];
    v49 = v32[16];
    v50 = v32[17];
    v51 = v32[18];
    v52 = v32[19];
    v53 = v32[20];
    v54 = v32[21];
    v55 = v32[22];
    v56 = v32[23];
    v57 = v32[24];
    *(v32 + 101) = vadd_f32(*(v32 + 808), v32[25]);
    v32 = (v32 + 408);
    v58 = v32[1];
    *v32 = vaddq_f32(*v32, v33);
    v32[1] = vaddq_f32(v58, v34);
    v59 = vaddq_f32(*(v32 + 3), v36);
    v32[2] = vaddq_f32(*(v32 + 2), v35);
    v32[3] = v59;
    v60 = vaddq_f32(*(v32 + 5), v38);
    v32[4] = vaddq_f32(*(v32 + 4), v37);
    v32[5] = v60;
    v61 = vaddq_f32(*(v32 + 7), v40);
    v32[6] = vaddq_f32(*(v32 + 6), v39);
    v32[7] = v61;
    v62 = vaddq_f32(*(v32 + 9), v42);
    v32[8] = vaddq_f32(*(v32 + 8), v41);
    v32[9] = v62;
    v63 = vaddq_f32(*(v32 + 11), v44);
    v32[10] = vaddq_f32(*(v32 + 10), v43);
    v32[11] = v63;
    v64 = vaddq_f32(*(v32 + 13), v46);
    v32[12] = vaddq_f32(*(v32 + 12), v45);
    v32[13] = v64;
    v65 = vaddq_f32(*(v32 + 15), v48);
    v32[14] = vaddq_f32(*(v32 + 14), v47);
    v32[15] = v65;
    v66 = vaddq_f32(*(v32 + 17), v50);
    v32[16] = vaddq_f32(*(v32 + 16), v49);
    v32[17] = v66;
    v67 = vaddq_f32(*(v32 + 19), v52);
    v32[18] = vaddq_f32(*(v32 + 18), v51);
    v32[19] = v67;
    v68 = vaddq_f32(*(v32 + 21), v54);
    v32[20] = vaddq_f32(*(v32 + 20), v53);
    v32[21] = v68;
    v69 = vaddq_f32(*(v32 + 23), v56);
    v70 = vaddq_f32(*(v32 + 24), v57);
    v32[22] = vaddq_f32(*(v32 + 22), v55);
    v32[23] = v69;
    v32[24] = v70;
    --v31;
  }

  while (v31);
  v71 = (&utils::local_sum(float const*,float *)::c + 7752);
  v72 = (a2 + 52);
  v73 = 126;
  do
  {
    v74 = vsubq_f32(v71[1], *(v30 + 1));
    *(v72 - 13) = vsubq_f32(*v71, *v30);
    *(v72 - 12) = v74;
    v75 = vsubq_f32(v71[3], *(v30 + 3));
    *(v72 - 11) = vsubq_f32(v71[2], *(v30 + 2));
    *(v72 - 10) = v75;
    v76 = vsubq_f32(v71[5], *(v30 + 5));
    *(v72 - 9) = vsubq_f32(v71[4], *(v30 + 4));
    *(v72 - 8) = v76;
    v77 = vsubq_f32(v71[7], *(v30 + 7));
    *(v72 - 7) = vsubq_f32(v71[6], *(v30 + 6));
    *(v72 - 6) = v77;
    v78 = vsubq_f32(v71[9], *(v30 + 9));
    *(v72 - 5) = vsubq_f32(v71[8], *(v30 + 8));
    *(v72 - 4) = v78;
    v79 = vsubq_f32(v71[11], *(v30 + 11));
    *(v72 - 3) = vsubq_f32(v71[10], *(v30 + 10));
    *(v72 - 2) = v79;
    v80 = vsubq_f32(v71[13], *(v30 + 13));
    *(v72 - 1) = vsubq_f32(v71[12], *(v30 + 12));
    *v72 = v80;
    v81 = vsubq_f32(v71[15], *(v30 + 15));
    *(v72 + 1) = vsubq_f32(v71[14], *(v30 + 14));
    *(v72 + 2) = v81;
    v82 = vsubq_f32(v71[17], *(v30 + 17));
    *(v72 + 3) = vsubq_f32(v71[16], *(v30 + 16));
    *(v72 + 4) = v82;
    v83 = vsubq_f32(v71[19], *(v30 + 19));
    *(v72 + 5) = vsubq_f32(v71[18], *(v30 + 18));
    *(v72 + 6) = v83;
    v84 = vsubq_f32(v71[21], *(v30 + 21));
    *(v72 + 7) = vsubq_f32(v71[20], *(v30 + 20));
    *(v72 + 8) = v84;
    v85 = vsubq_f32(v71[23], *(v30 + 23));
    *(v72 + 9) = vsubq_f32(v71[22], *(v30 + 22));
    *(v72 + 10) = v85;
    *(v72 + 11) = vsubq_f32(v71[24], *(v30 + 24));
    *(v72 + 24) = vsub_f32(*v71[25].f32, v30[25]);
    v71 = (v71 + 408);
    v72 += 102;
    v30 = (v30 + 408);
    --v73;
  }

  while (v73);
  return result;
}

void *spot_finder_peridot_initialize(void)
{
  result = memcpy(&state, &uv, 0x9C4uLL);
  isInitialized_spot_finder_peridot[0] = 1;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void ImageUtils::ConnectedComp<BOOL>()
{
    ;
  }
}

void ImageUtils::IntegralImage<double>()
{
    ;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x282204398](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}