float *hq_hr_enc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v845[1] = *MEMORY[0x1E69E9840];
  v755 = -21846;
  v795 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v794[4] = v13;
  v794[3] = v13;
  v794[2] = v13;
  v794[1] = v13;
  v706 = v1 + 49152;
  v794[0] = v13;
  v792 = 0xAAAAAAAAAAAAAAAALL;
  v791[4] = v13;
  v791[3] = v13;
  v791[2] = v13;
  v791[1] = v13;
  v791[0] = v13;
  v789 = 0xAAAAAAAAAAAAAAAALL;
  v788[4] = v13;
  v788[3] = v13;
  v788[2] = v13;
  v788[1] = v13;
  v788[0] = v13;
  v754 = -21846;
  v786 = 0xAAAAAAAAAAAAAAAALL;
  v785[4] = v13;
  v785[3] = v13;
  v785[2] = v13;
  v785[1] = v13;
  v785[0] = v13;
  v783 = 0xAAAAAAAAAAAAAAAALL;
  v782[4] = v13;
  v782[3] = v13;
  v782[2] = v13;
  v782[1] = v13;
  v782[0] = v13;
  v781[2] = v13;
  v781[1] = v13;
  v781[0] = v13;
  memset(v747, 170, sizeof(v747));
  v779 = 0xAAAAAAAAAAAAAAAALL;
  v778[4] = v13;
  v778[3] = v13;
  v778[2] = v13;
  v778[1] = v13;
  v778[0] = v13;
  v776 = 0xAAAAAAAAAAAAAAAALL;
  v775[4] = v13;
  v775[3] = v13;
  v775[2] = v13;
  v775[1] = v13;
  v775[0] = v13;
  v773 = 0xAAAAAAAAAAAAAAAALL;
  v772[4] = v13;
  v772[3] = v13;
  v772[2] = v13;
  v772[1] = v13;
  v772[0] = v13;
  memset(__b, 255, sizeof(__b));
  v14 = 0;
  v769 = -1;
  __C = -1;
  v768 = -1;
  v766 = -1;
  *&v15 = -1;
  *(&v15 + 1) = -1;
  v764 = v15;
  v765 = v15;
  __dst[1] = v15;
  __dst[0] = v15;
  v745 = -21846;
  v744 = 0;
  v743 = 1;
  v742 = -1431655766;
  v749 = 0;
  do
  {
    v16 = v778 + v14 + 2;
    if ((v778 + v14) < v778 || v16 > &v780 || v778 + v14 > v16)
    {
      goto LABEL_1191;
    }

    *(v778 + v14) = 0;
    v14 += 2;
  }

  while (v14 != 88);
  for (i = 0; i != 88; i += 2)
  {
    v20 = v775 + i + 2;
    if ((v775 + i) < v775 || v20 > &v777 || v775 + i > v20)
    {
      goto LABEL_1191;
    }

    *(v775 + i) = 0;
  }

  for (j = 0; j != 88; j += 2)
  {
    v24 = v785 + j + 2;
    if ((v785 + j) < v785 || v24 > &v787 || v785 + j > v24)
    {
      goto LABEL_1191;
    }

    *(v785 + j) = 0;
  }

  v709 = v5;
  LODWORD(v797[0]) = 0;
  v27 = 1;
  vDSP_vfill(v797, __b, 1, 0x3C0uLL);
  LODWORD(v797[0]) = 0;
  vDSP_vfill(v797, &__C, 1, 2uLL);
  LODWORD(v797[0]) = 0;
  vDSP_vfill(v797, &v769, 1, 2uLL);
  v751 = 0;
  if (!v3)
  {
    if (v7 == 960)
    {
      if (*(v12 + 96) <= 32000 && *(v12 + 130) == *(v12 + 136))
      {
        v33 = (v12 + 52114);
        if (v12 + 52114 > (v12 + 52116))
        {
          goto LABEL_1191;
        }

        if (v9 < v11)
        {
          goto LABEL_1191;
        }

        if ((v9 - v11) < 2557)
        {
          goto LABEL_1191;
        }

        if (v12 + 52112 > v33)
        {
          goto LABEL_1191;
        }

        v751 = peak_avrg_ratio(*(v12 + 64), v11, 640, (v12 + 52112), v33);
        if (v12 + 52118 > (v12 + 52120) || v12 + 52168 > (v12 + 52170))
        {
          goto LABEL_1191;
        }

        hvq_classifier(v11, v9, v12 + 52118, v12 + 52120, v12 + 52168, &v751, &v749, v34, v781, v782, *(v12 + 96), *(v706 + 2956), &__C, __b, (v12 + 52168), &v769, &__C);
        v27 = v751;
      }

      else
      {
        v27 = 0;
      }

      if (*(v12 + 96) < 32001)
      {
        if (v27)
        {
          if (v27 < 4)
          {
            goto LABEL_31;
          }
        }

        else
        {
          LOWORD(v27) = 5;
          v751 = 5;
        }

        v28 = 2;
        v30 = v27 - 5;
        v29 = v12;
        goto LABEL_32;
      }

      goto LABEL_65;
    }

    if (v7 == 640)
    {
      if (*(v12 + 96) <= 32000 && *(v12 + 130) == *(v12 + 136))
      {
        v31 = (v12 + 52114);
        if (v12 + 52114 > (v12 + 52116))
        {
          goto LABEL_1191;
        }

        if (v9 < v11)
        {
          goto LABEL_1191;
        }

        if ((v9 - v11) < 2557)
        {
          goto LABEL_1191;
        }

        if (v12 + 52112 > v31)
        {
          goto LABEL_1191;
        }

        v751 = peak_avrg_ratio(*(v12 + 64), v11, 640, (v12 + 52112), v31);
        if (v12 + 52118 > (v12 + 52120) || v12 + 52168 > (v12 + 52170))
        {
          goto LABEL_1191;
        }

        hvq_classifier(v11, v9, v12 + 52118, v12 + 52120, v12 + 52168, &v751, &v749, v32, v781, v782, *(v12 + 96), *(v706 + 2956), &__C, __b, (v12 + 52168), &v769, &__C);
        v27 = v751;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_57;
    }

    v27 = 0;
LABEL_54:
    if (v7 < 640)
    {
LABEL_65:
      v28 = 1;
      goto LABEL_66;
    }

LABEL_57:
    if (*(v12 + 96) >= 32001)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    goto LABEL_66;
  }

  v751 = 1;
  if (v7 != 960)
  {
    goto LABEL_54;
  }

  v27 = 1;
  v28 = 1;
  if (*(v12 + 96) < 32001)
  {
LABEL_31:
    v28 = 2;
    v29 = v12;
    v30 = v27;
LABEL_32:
    push_indice(v29, 462, v30, 2);
    goto LABEL_71;
  }

LABEL_66:
  push_indice(v12, 462, v27, v28);
  if (v7 == 640 && !v27)
  {
    if (*(v12 + 96) > 32000)
    {
      LOWORD(v27) = 0;
    }

    else
    {
      LOWORD(v27) = 4;
      v751 = 4;
    }
  }

LABEL_71:
  v756 = -21846;
  v753 = -21846;
  v752 = -21846;
  v750 = -21846;
  v748 = -21846;
  v746 = -21846;
  *v5 -= v28;
  hq_configure(v7, v27, *(v12 + 96), &v753, &v756, &v748, &v750, &v752, &v746, &v747[6], &v747[3], v747);
  v741 = v12;
  v705 = v3;
  if (v3)
  {
    if (v7 == 960)
    {
      v35 = &intl_bw_48;
      v36 = &intl_cnt_48;
      v37 = &intl_cnt_48;
      v38 = &intl_bw_32;
      v39 = 3;
    }

    else
    {
      if (v7 == 640)
      {
        v35 = &intl_bw_32;
        v36 = &intl_cnt_32;
        v37 = &intl_cnt_32;
      }

      else
      {
        v35 = &intl_bw_16;
        v36 = &intl_cnt_16;
        v37 = &intl_cnt_16;
      }

      v38 = v37 + 2;
      v39 = 2;
    }

    memset(v797, 255, sizeof(v797));
    v40 = 0;
    v41 = ((v7 + ((v7 >> 29) & 3)) << 16) >> 18;
    v42 = &v11[v41];
    v43 = &v11[2 * v41];
    v44 = &v11[3 * v41];
    v45 = v11;
    v46 = v797;
    do
    {
      v47 = &v37[v40];
      v48 = v47 + 1;
      if (v47 < v37 || v48 > v38 || v47 > v48)
      {
        goto LABEL_1191;
      }

      v51 = *v47;
      v52 = &v35[v40];
      v55 = v52 + 1 <= v36 && v52 <= v52 + 1 && v52 >= v35;
      if (v51 >= 1)
      {
        LOWORD(v56) = 0;
        do
        {
          if (!v55)
          {
            goto LABEL_1191;
          }

          v57 = *v52;
          if (v57 >= 1)
          {
            LOWORD(v58) = 0;
            do
            {
              if (v45 < v11)
              {
                goto LABEL_1191;
              }

              v59 = v45 + 1;
              if ((v45 + 1) > v9)
              {
                goto LABEL_1191;
              }

              if (v45 > v59)
              {
                goto LABEL_1191;
              }

              if (v46 < v797)
              {
                goto LABEL_1191;
              }

              v60 = v46 + 1;
              if (v46 + 1 > &v798 || v46 > v60)
              {
                goto LABEL_1191;
              }

              *v46 = *v45;
              v58 = (v58 + 1);
              ++v46;
              ++v45;
            }

            while (v58 < v57);
            LOWORD(v61) = 0;
            do
            {
              if (v42 < v11)
              {
                goto LABEL_1191;
              }

              v62 = v42 + 1;
              if ((v42 + 1) > v9)
              {
                goto LABEL_1191;
              }

              if (v42 > v62)
              {
                goto LABEL_1191;
              }

              if (v60 < v797)
              {
                goto LABEL_1191;
              }

              v63 = v60 + 1;
              if (v60 + 1 > &v798 || v60 > v63)
              {
                goto LABEL_1191;
              }

              *v60 = *v42;
              v61 = (v61 + 1);
              ++v42;
              ++v60;
            }

            while (v61 < v57);
            LOWORD(v64) = 0;
            do
            {
              if (v43 < v11)
              {
                goto LABEL_1191;
              }

              v65 = v43 + 1;
              if ((v43 + 1) > v9)
              {
                goto LABEL_1191;
              }

              if (v43 > v65)
              {
                goto LABEL_1191;
              }

              if (v63 < v797)
              {
                goto LABEL_1191;
              }

              v66 = v63 + 1;
              if (v63 + 1 > &v798 || v63 > v66)
              {
                goto LABEL_1191;
              }

              *v63 = *v43;
              v64 = (v64 + 1);
              ++v43;
              ++v63;
            }

            while (v64 < v57);
            LOWORD(v67) = 0;
            do
            {
              if (v44 < v11)
              {
                goto LABEL_1191;
              }

              v68 = v44 + 1;
              if ((v44 + 1) > v9)
              {
                goto LABEL_1191;
              }

              if (v44 > v68)
              {
                goto LABEL_1191;
              }

              if (v66 < v797)
              {
                goto LABEL_1191;
              }

              v46 = v66 + 1;
              if (v66 + 1 > &v798 || v66 > v46)
              {
                goto LABEL_1191;
              }

              *v66 = *v44;
              v67 = (v67 + 1);
              ++v44;
              ++v66;
            }

            while (v67 < v57);
            v45 = v59;
            v43 = v65;
            v42 = v62;
            v44 = v68;
          }

          v56 = (v56 + 1);
        }

        while (v56 < v51);
      }

      ++v40;
    }

    while (v39 > v40);
    v69 = v46 - v797;
    if (((v46 - v797) >> 2) >= 1)
    {
      if (v9 < v11)
      {
        goto LABEL_1191;
      }

      v70 = v69 & 0x1FFFC;
      if ((v69 & 0x1FFFCuLL) > 0xC80)
      {
        goto LABEL_1191;
      }

      if (v70 > v9 - v11)
      {
        goto LABEL_1191;
      }

      memmove(v11, v797, v69 & 0x1FFFC);
      if ((v11 + v70) < v11)
      {
        goto LABEL_1191;
      }
    }
  }

  v707 = v747[6];
  if (v747[6] < v747[8] || v747[3] < v747[5])
  {
    goto LABEL_1191;
  }

  v702 = v7;
  v71 = v748;
  v72 = v750;
  v708 = v750;
  v73 = v750;
  v703 = v747[4];
  v704 = v747[7];
  v700 = v747[3];
  calc_norm(v11, v9, v788, &v790, v791, &v793, v748, v750, v747[6], v747[7], v747[3], v747[4]);
  *&v797[5] = 0xAAAAAAAAAAAAAAAALL;
  *&v74 = 0xAAAAAAAAAAAAAAAALL;
  *(&v74 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v797[4] = v74;
  v797[3] = v74;
  v797[2] = v74;
  v797[1] = v74;
  v797[0] = v74;
  v701 = v73;
  if (v705)
  {
    v75 = v741;
    if (v73 >= 0x2D)
    {
      goto LABEL_1191;
    }

    if (v72)
    {
      if (v72 == 39)
      {
        v76 = &norm_order_32;
        v77 = &norm_order_16;
      }

      else if (v72 == 26)
      {
        v76 = &norm_order_16;
        v77 = &unk_19B35E872;
      }

      else
      {
        v76 = &norm_order_48;
        v77 = &norm_order_32;
      }

      v95 = v797;
      v96 = v76;
      v97 = v72;
      do
      {
        if (v96 < v76 || v96 + 1 > v77 || v96 > v96 + 1)
        {
          goto LABEL_1191;
        }

        v98 = *v96;
        v99 = v788 + 2 * v98;
        v100 = v99 + 2;
        v101 = v99 < v788 || v100 > &v790;
        if (v101 || v99 > v100)
        {
          goto LABEL_1191;
        }

        *v95 = *(v788 + v98);
        v103 = v791 + 2 * v98;
        if (v103 < v791 || v103 + 2 > &v793 || v103 > v103 + 2)
        {
          goto LABEL_1191;
        }

        ++v95;
        ++v96;
        --v97;
      }

      while (v97);
    }

    diffcod(v708, v797, v794 + 2, &v796);
    LOWORD(v794[0]) = v797[0];
    recovernorm(v797, &v797[5] + 8, v788, &v790, v791, &v793, v72);
    v79 = v708;
  }

  else
  {
    v78 = (v788 + 2 * v71);
    v75 = v741;
    if (v78 > &v790)
    {
      goto LABEL_1191;
    }

    if (v78 < v788)
    {
      goto LABEL_1191;
    }

    if ((v708 & 0x80000000) != 0)
    {
      goto LABEL_1191;
    }

    if ((88 - 2 * v71) >> 1 < v708)
    {
      goto LABEL_1191;
    }

    diffcod(v701, v78, v794 + 2, &v796);
    v79 = v708;
    if ((v78 + 2) > &v790 || v78 > (v78 + 2))
    {
      goto LABEL_1191;
    }

    LOWORD(v794[0]) = *v78;
    if (v708)
    {
      v80 = v71 + v701;
      do
      {
        v81 = v788 + v71;
        v82 = v81 + 1;
        if (v81 < v788 || v82 > &v790 || v81 > v82)
        {
          goto LABEL_1191;
        }

        v85 = v71;
        v86 = &dicnlg2[*v81];
        v87 = v86 + 1;
        v88 = v86 < dicnlg2 || v87 > thren_HQ;
        v89 = v88 || v86 > v87;
        v90 = v791 + 2 * v71;
        v91 = v90 + 2;
        v92 = !v89 && v90 >= v791;
        v93 = !v92 || v91 > &v793;
        if (v93 || v90 > v91)
        {
          goto LABEL_1191;
        }

        *(v791 + v71) = *v86;
        LOWORD(v71) = v71 + 1;
      }

      while (v80 > (v85 + 1));
    }
  }

  v104 = v752;
  v105 = v709;
  *v709 = *v709 - encode_envelope_indices(v75, v79, v752, v794, &v796, &v754, 0, 0, v705) - 7;
  encode_envelope_indices(v75, v72, v104, v794, &v796, &v754, 1, 0, v705);
  if ((v27 & 0xFFFE) == 4)
  {
    v107 = 0;
    v108 = v746;
    *&v836[0] = -1;
    *&v109 = -1;
    *(&v109 + 1) = -1;
    v834 = v109;
    v835 = v109;
    v833 = v109;
    *&v814[0] = -1;
    v813 = v109;
    v812 = v109;
    v811 = v109;
    DWORD2(v810[0]) = -1431655766;
    *&v810[0] = 0xAAAAAAAAAAAAAAAALL;
    *v828 = 0;
    v110 = 12;
    if (v746 < 81)
    {
      v110 = 14;
    }

    v733 = v110;
    do
    {
      v111 = &swb_bwe_subband[v107];
      v112 = v111 + 2;
      if (v111 < swb_bwe_subband || v112 > fb_bwe_subband || v111 + 1 > v112)
      {
        goto LABEL_1191;
      }

      v115 = *v111 + v108;
      v116 = v111[1] + v108;
      v117 = 1.0e-15;
      if (v116 > v115)
      {
        v117 = 1.0e-15;
        do
        {
          v118 = &v11[v115];
          v119 = v118 + 1;
          if (v118 < v11 || v119 > v9 || v118 > v119)
          {
            goto LABEL_1191;
          }

          v117 = v117 + (*v118 * *v118);
          ++v115;
        }

        while (v116 > v115);
      }

      v122 = __dst + 4 * v107;
      if (v122 < __dst || v122 + 4 > v767 || v122 > v122 + 4)
      {
        goto LABEL_1191;
      }

      *(__dst + v107++) = v117;
    }

    while (v107 != v110);
    if (*(v741 + 130) == 3)
    {
      v123 = 0;
      v124 = __dst + 4 * v110;
      do
      {
        v125 = &fb_bwe_subband[v123];
        v126 = *v125;
        v127 = v125[1];
        v128 = 1.0e-15;
        if (v126 < v127)
        {
          v129 = v127 - v126;
          v130 = &v11[v126];
          v128 = 1.0e-15;
          do
          {
            if (v130 < v11 || (v130 + 1) > v9 || v130 > v130 + 1)
            {
              goto LABEL_1191;
            }

            v131 = *v130++;
            v128 = v128 + (v131 * v131);
            --v129;
          }

          while (v129);
        }

        v132 = &v124[4 * v123];
        if (v132 < __dst || v132 + 1 > v767 || v132 > v132 + 1)
        {
          goto LABEL_1191;
        }

        *v132 = v128;
        ++v123;
      }

      while (v123 != 3);
    }

    energy_control(v741, 3, 0xFFFFFFFFLL, -1, v11, v9, v108, v106, &v833, v836 + 8);
    v698 = *(v706 + 2958);
    if (v698 == 1)
    {
      v133 = v741;
      v134 = 1;
    }

    else
    {
      v138 = 0;
      if (v108 == 80)
      {
        v139 = 10;
      }

      else
      {
        v139 = 8;
      }

      v140 = 0.0;
      do
      {
        v141 = &swb_bwe_subband[v138];
        v142 = v141 + 2;
        if (v141 < swb_bwe_subband || v142 > fb_bwe_subband || v141 + 1 > v142)
        {
          goto LABEL_1191;
        }

        v145 = *v141 + v108;
        v146 = v141[1] + v108;
        if (v146 > v145)
        {
          v147 = 0.0;
          v148 = 0.0;
          do
          {
            v149 = &v11[v145];
            v150 = v149 + 1;
            if (v149 < v11 || v150 > v9 || v149 > v150)
            {
              goto LABEL_1191;
            }

            v153 = *v149 * *v149;
            if (v153 > v148)
            {
              v148 = *v149 * *v149;
            }

            v147 = v147 + v153;
            ++v145;
          }

          while (v146 > v145);
          if (v147 > 0.0)
          {
            v154 = &swb_inv_bwe_subband_width[v138];
            if (v154 < swb_inv_bwe_subband_width || v154 + 1 > &fb_inv_bwe_subband_width || v154 > v154 + 1)
            {
              goto LABEL_1191;
            }

            v155 = log10((v148 / (v147 * *v154)));
            v140 = v140 + (v155 * 10.0);
          }
        }

        ++v138;
      }

      while (v138 != v139);
      push_indice(v741, 509, 0, 1);
      v133 = v741;
      v134 = (v140 / v139) > 8.6;
    }

    push_indice(v133, 509, v134, 1);
    v156 = 0;
    do
    {
      v157 = &v833 + v156 + 4;
      v159 = (&v833 + v156) < &v833 || v157 > v836 + 8 || &v833 + v156 > v157;
      v160 = __dst + v156;
      v161 = __dst + v156 + 4;
      if (v159 || v160 < __dst || v161 > v767 || v160 > v161)
      {
        goto LABEL_1191;
      }

      v165 = *(&v833 + v156) * *(__dst + v156);
      *(__dst + v156) = v165;
      v166 = &swb_inv_bwe_subband_width[v156 / 4];
      if (&swb_inv_bwe_subband_width[v156 / 4] < swb_inv_bwe_subband_width || v166 + 1 > &fb_inv_bwe_subband_width || v166 > v166 + 1)
      {
        goto LABEL_1191;
      }

      v167 = log10((v165 * swb_inv_bwe_subband_width[v156 / 4]));
      *(__dst + v156) = v167 * 10.0;
      v156 += 4;
    }

    while (4 * v733 != v156);
    if (*(v741 + 130) == 3)
    {
      v168 = __dst + v733;
      v169 = &fb_inv_bwe_subband_width;
      v170 = 3;
      do
      {
        v171 = v168 + 1;
        if (v168 < __dst || v171 > v767 || v168 > v171)
        {
          goto LABEL_1191;
        }

        v174 = *v169++;
        v175 = log10((*v168 * v174));
        *v168++ = v175 * 10.0;
        --v170;
      }

      while (v170);
    }

    v176 = v733;
    freq_weights(__dst, &v811, v733);
    v177 = EnvCdbkFB;
    v178 = &Mean_env;
    v179 = __dst;
    do
    {
      v180 = v178 + 1;
      v182 = v178 < &Mean_env || v180 > EnvCdbkFB || v178 > v180;
      v183 = v179 + 1;
      if (v182 || v179 < __dst || v183 > v767 || v179 > v183)
      {
        goto LABEL_1191;
      }

      v187 = *v178++;
      *v179 = *v179 - v187;
      ++v179;
      --v176;
    }

    while (v176);
    if (*(v741 + 130) == 3)
    {
      v188 = __dst + v733;
      v189 = Mean_env_fb;
      v190 = 3;
      do
      {
        v191 = v188 + 1;
        if (v188 < __dst || v191 > v767 || v188 > v191)
        {
          goto LABEL_1191;
        }

        v194 = *v189++;
        *v188 = *v188 - v194;
        ++v188;
        --v190;
      }

      while (v190);
    }

    v699 = v108;
    if (v108 > 80)
    {
      v196 = 0;
      v197 = 0;
      LODWORD(v830) = -1431655766;
      DWORD2(v803[0]) = -1;
      *&v803[0] = -1;
      *(&v802 + 1) = -1;
      *&v802 = -1;
      DWORD2(v838) = -1;
      *&v838 = -1;
      *(&v837 + 1) = -1;
      *&v837 = -1;
      *&v797[3] = -1;
      *&v198 = -1;
      *(&v198 + 1) = -1;
      v797[2] = v198;
      v797[1] = v198;
      v797[0] = v198;
      *&v816[3] = -1;
      v816[2] = v198;
      v816[1] = v198;
      v816[0] = v198;
      *&v827[3] = -1;
      v827[1] = v198;
      v827[2] = v198;
      v827[0] = v198;
      *&v809[0] = -1;
      *&v807[3] = -1;
      v807[1] = v198;
      v807[2] = v198;
      v807[0] = v198;
      DWORD2(v822[0]) = -1;
      *(&v821 + 1) = -1;
      *&v822[0] = -1;
      *&v821 = -1;
      DWORD2(v818[0]) = -1;
      *&v818[0] = -1;
      *(&v817 + 1) = -1;
      *&v817 = -1;
      *&v805[3] = -1;
      v805[1] = v198;
      v805[2] = v198;
      v805[0] = v198;
      do
      {
        v199 = __dst + v197 + 4;
        if ((__dst + v197) < __dst || v199 > v767 || __dst + v197 > v199)
        {
          goto LABEL_1191;
        }

        *(&v803[-1] + v196) = *(__dst + v197);
        v202 = &v811 + v197;
        if ((&v811 + v197) < &v811 || v202 + 4 > v814 + 8 || v202 > v202 + 4)
        {
          goto LABEL_1191;
        }

        *(&v822[-1] + v196) = *(&v811 + v197);
        v197 += 8;
        v196 += 4;
      }

      while (v197 != 48);
      v203 = 0;
      DWORD2(v803[0]) = HIDWORD(v764);
      DWORD2(v822[0]) = HIDWORD(v813);
      LODWORD(v837) = __dst[0];
      LODWORD(v817) = v811;
      v204 = 4;
      do
      {
        v205 = __dst + v203 + 4;
        v206 = __dst + v203 + 8;
        if (v205 < __dst || v206 > v767 || v205 > v206)
        {
          goto LABEL_1191;
        }

        *(&v837 + v204) = *v205;
        v209 = &v811 + v203 + 4;
        if (v209 < &v811)
        {
          goto LABEL_1191;
        }

        v210 = &v811 + v203 + 8;
        if (v210 > v814 + 8 || v209 > v210)
        {
          goto LABEL_1191;
        }

        *(&v818[-1] + v204) = *v209;
        v203 += 8;
        v204 += 4;
      }

      while (v203 != 40);
      vqWithCand_w(&v802, v803 + 12, EnvCdbk11, EnvCdbk1st, 7u, 32, &v830, 2, v809, v809 + 8, &v821, v822 + 12, 1);
      v211 = &v830;
      v212 = *&v837;
      v213 = -1;
      v214 = 3.4028e38;
      v215 = 1;
      do
      {
        v216 = 0;
        v721 = v215;
        v717 = v211;
        v217 = &EnvCdbk11[7 * *v211];
        do
        {
          v218 = &v217[v216];
          v219 = &v217[v216 + 1];
          if (&v217[v216] < EnvCdbk11 || v219 > EnvCdbk1st || v218 > v219)
          {
            goto LABEL_1191;
          }

          v222 = *v218;
          *(v816 + v216 * 4) = *v218;
          *(v827 + v216 * 4) = *(&v803[-1] + v216 * 4) - v222;
          ++v216;
        }

        while (v216 != 7);
        v715 = vqSimple_w(v827, &v827[3] + 8, v827, &v827[3] + 8, EnvCdbk1st, EnvCdbk2nd, &v821, v822 + 12, 3, 128, 1);
        v711 = vqSimple_w((v827 | 0xC), &v827[3] + 8, (v827 | 0xC), &v827[3] + 8, EnvCdbk2nd, EnvCdbk3rd, &v821 + 3, v822 + 12, 4, 64, 1);
        for (k = 0; k != 28; k += 4)
        {
          *(v797 + k) = *(v816 + k) + *(v827 + k);
        }

        v224 = 0;
        *v827 = v212 - *v797;
        do
        {
          v225 = (v797 + v224 + 4);
          if ((v797 + v224) < v797 || (v797 + v224) > v225)
          {
            goto LABEL_1191;
          }

          *(v827 + v224 + 4) = *(&v837 + v224 + 4) + ((*(v797 + v224) + *v225) * -0.5);
          v224 += 4;
        }

        while (v224 != 20);
        v710 = vqSimple_w(v827, &v827[3] + 8, v827, &v827[3] + 8, EnvCdbk3rd, EnvCdbk4th, &v817, v818 + 12, 3, 32, 1);
        v227 = vqSimple_w((v827 | 0xC), &v827[3] + 8, (v827 | 0xC), &v827[3] + 8, EnvCdbk3rd, EnvCdbk4th, &v817 + 3, v818 + 12, 3, 32, 1);
        v228 = 0;
        v229 = v807;
        do
        {
          *v229 = *(v797 + v228);
          v229 += 2;
          v228 += 4;
        }

        while (v228 != 24);
        v230 = 0;
        HIDWORD(v807[2]) = DWORD2(v797[1]);
        *v807 = *v827 + *v807;
        v231 = v807 + 1;
        do
        {
          v232 = (v797 + v230 + 4);
          if ((v797 + v230) < v797 || (v797 + v230) > v232 || v231 < v807 || v231 > v231 + 1)
          {
            goto LABEL_1191;
          }

          *v231 = *(v827 + v230 + 4) + ((*(v797 + v230) + *v232) * 0.5);
          v231 += 2;
          v230 += 4;
        }

        while (v230 != 20);
        v236 = 0;
        v237 = 0.0;
        do
        {
          v238 = __dst + v236 + 4;
          v239 = v238 > v767 || __dst + v236 > v238;
          v240 = &v811 + v236 + 4;
          if (v239 || v240 > v814 + 8 || &v811 + v236 > v240)
          {
            goto LABEL_1191;
          }

          v243 = *(__dst + v236) - *(v807 + v236);
          v237 = v237 + ((v243 * v243) * *(&v811 + v236));
          v236 += 4;
        }

        while (v236 != 48);
        if (v237 < v214)
        {
          v805[0] = v807[0];
          v805[1] = v807[1];
          v805[2] = v807[2];
          LOWORD(v810[0]) = *v717;
          WORD1(v810[0]) = v715;
          WORD2(v810[0]) = v711;
          WORD3(v810[0]) = v710;
          v213 = 0;
          v214 = v237;
          WORD4(v810[0]) = v227;
        }

        v215 = 0;
        v211 = (&v830 + 2);
      }

      while ((v721 & 1) != 0);
      *&v805[3] = v213;
      memcpy(__dst, v805, (4 * v733));
      if ((__dst + (4 * v733)) < __dst)
      {
        goto LABEL_1191;
      }

      v195 = v741;
      v177 = EnvCdbkFB;
    }

    else
    {
      msvq_interpol(__dst, v767, &v811, v814 + 8, v810, v810 + 12);
      v195 = v741;
    }

    if (*(v195 + 130) == 3)
    {
      v244 = __dst + v733;
      if (v244 < __dst)
      {
        goto LABEL_1191;
      }

      WORD5(v810[0]) = vqSimple_w(v244, v767, __dst + 4 * v733, v767, EnvCdbkFB, Mean_env_fb, 0, 0, 3, 32, 0);
      v195 = v741;
    }

    push_indice(v195, 509, v810[0], 5);
    push_indice(v195, 509, SWORD1(v810[0]), 7);
    push_indice(v195, 509, SWORD2(v810[0]), 6);
    push_indice(v195, 509, SWORD3(v810[0]), 5);
    if (v108 >= 81)
    {
      v245 = 5;
    }

    else
    {
      v245 = 6;
    }

    push_indice(v195, 509, SWORD4(v810[0]), v245);
    if (*(v195 + 130) == 3)
    {
      push_indice(v195, 514, SWORD5(v810[0]), 5);
    }

    v246 = __dst;
    v247 = &Mean_env;
    v248 = v733;
    do
    {
      v249 = v246 + 1;
      v251 = v246 < __dst || v249 > v767 || v246 > v249;
      v252 = v247 + 1;
      if (v251 || v247 < &Mean_env || v252 > v177 || v247 > v252)
      {
        goto LABEL_1191;
      }

      v256 = v177;
      v257.i32[0] = *v247;
      v257.i32[1] = *v246;
      v258 = vcvt_n_s32_f32(v257, 8uLL);
      v259 = v258.i16[0] + v258.i16[2];
      v260 = 1426740714;
      if (v259 < 0x8000 && ((v260 = -1426784256, v259 < -32768) || (v260 = 43542 * v259, (v259 & 0x8000) != 0)))
      {
        v261 = v260 >> 10;
      }

      else
      {
        v261 = v260 >> 10;
      }

      v262 = Pow2_11469(13, v261 >> 1, v828);
      *v246++ = vcvts_n_f32_s32(shl(v262, (HIWORD(v261) - 12), v828), 1uLL);
      ++v247;
      --v248;
      v177 = v256;
    }

    while (v248);
    if (*(v741 + 130) == 3)
    {
      v263 = 0;
      v264 = 0;
      v265 = __dst + 4 * v733;
      do
      {
        v266 = &v265[v263 * 4];
        if (&v265[v263 * 4] < __dst)
        {
          goto LABEL_1191;
        }

        if (v266 + 1 > v767 || v266 > v266 + 1)
        {
          goto LABEL_1191;
        }

        v268.i32[0] = Mean_env_fb[v263];
        v268.i32[1] = *v266;
        v269 = vcvt_n_s32_f32(v268, 7uLL);
        v270 = v269.i16[0] + v269.i16[2];
        v271 = 1426740714;
        if (v270 < 0x8000 && ((v271 = -1426784256, v270 < -32768) || (v271 = 43542 * v270, (v270 & 0x8000) != 0)))
        {
          v272 = v271 >> 9;
        }

        else
        {
          v272 = v271 >> 9;
        }

        v273 = Pow2_11469(13, v272 >> 1, v828);
        v274 = shl(v273, (HIWORD(v272) - 12), v828);
        LODWORD(v275) = v733 + (v264 >> 16);
        if (v275 < 0x8000)
        {
          v275 = v275;
        }

        else
        {
          *v828 = 1;
          v275 = 0x7FFFLL;
        }

        v276 = __dst + v275;
        if (v276 < __dst || v276 + 1 > v767 || v276 > v276 + 1)
        {
          goto LABEL_1191;
        }

        *v276 = vcvts_n_f32_s32(v274, 1uLL);
        v264 += 0x10000;
        ++v263;
      }

      while (v263 != 3);
    }

    v105 = v709;
    if (v698 == 1)
    {
      ++*v709;
    }

    v75 = v741;
    v136 = v702;
    v137 = v700;
    if (v756 > 0x2Cu)
    {
      goto LABEL_1191;
    }

    LOWORD(v27) = v751;
    v277 = v756;
    map_hq_generic_fenv_norm(v751, __dst, v767, v788, v791, v708, v756, v699);
    v135 = v277;
  }

  else
  {
    v135 = v756;
    v136 = v7;
    v137 = v700;
    if (v756 > 0x2Cu)
    {
      goto LABEL_1191;
    }
  }

  v734 = v135;
  v278 = v135;
  hq_bit_allocation(*(v75 + 96), v136, v27, v105, v791, v278, v707, v704, &v768, v782, v772, &v774, &v755, &v745, v701);
  if (v27 != 3)
  {
    if ((v27 & 0xFFFE) != 4)
    {
LABEL_1127:
      v672 = v747[0];
      v673 = v747[1];
      if (v747[0] <= v747[1] && v747[2] <= v747[0] && v734 <= v747[1] - v747[0] && v137 <= v703 && v734 <= (v703 - v137) >> 1)
      {
        normalizecoefs(v11, v9, v788, v278, v137, v747[0]);
        v674 = v137;
        v675 = v755;
        result = pvq_core_enc(v75, v11, v9, __b, v772, v755, v278, v676, v674, v703, v672, v673, v707, v704, v772, &v774, v782, &v784, v778, &v780, v775, &v777, 3);
        v653 = v709;
        v654 = v675 - result + *v709;
        goto LABEL_1133;
      }

      goto LABEL_1191;
    }

    *&v797[5] = 0xAAAAAAAAAAAAAAAALL;
    *&v398 = 0xAAAAAAAAAAAAAAAALL;
    *(&v398 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v797[4] = v398;
    v797[3] = v398;
    v797[2] = v398;
    v797[1] = v398;
    v797[0] = v398;
    *&v816[5] = 0xAAAAAAAAAAAAAAAALL;
    v816[4] = v398;
    v816[3] = v398;
    v816[2] = v398;
    v816[1] = v398;
    v816[0] = v398;
    v399 = v745;
    v714 = v278;
    calc_norm(v11, v9, v797, &v797[5] + 8, v816, &v816[5] + 8, 0, v278, v707, v704, v137, v703);
    if (v708 >= v734)
    {
      if (v399 < v701)
      {
        LOWORD(v412) = 0;
        v278 = v278;
LABEL_1126:
        v755 -= v412;
        v136 = v702;
        goto LABEL_1127;
      }
    }

    else
    {
      v400 = 2 * v708;
      v401 = v708 + 1;
      v402 = -100;
      v403 = v772;
      v404 = v797;
      v405 = v788;
      do
      {
        v406 = (v403 + v400);
        if ((v403 + v400) < v772)
        {
          goto LABEL_1191;
        }

        if (v406 + 1 > v772 + v734 || v406 > v406 + 1)
        {
          goto LABEL_1191;
        }

        if (*v406)
        {
          v408 = (v404 + v400);
          if ((v404 + v400) < v797)
          {
            goto LABEL_1191;
          }

          if (v408 + 1 > &v797[5] + 4)
          {
            goto LABEL_1191;
          }

          if (v408 > v408 + 1)
          {
            goto LABEL_1191;
          }

          v409 = (v405 + v400);
          if ((v405 + v400) < v788 || v409 + 1 > v788 + v734 || v409 > v409 + 1)
          {
            goto LABEL_1191;
          }

          v410 = *v408 - *v409;
          if (v410 > 0)
          {
            v411 = v410 + 1;
          }

          else
          {
            v411 = -v410;
          }

          if (v411 > v402)
          {
            v402 = v411;
          }
        }

        v495 = v734 == v401++;
        v405 = (v405 + 2);
        v404 = (v404 + 2);
        v403 = (v403 + 2);
      }

      while (!v495);
      v278 = v278;
      if (v399 < v708)
      {
        LOWORD(v412) = 0;
LABEL_1125:
        v75 = v741;
        v137 = v700;
        goto LABEL_1126;
      }

      v75 = v741;
      if (v402 > 15)
      {
        v655 = 5;
        goto LABEL_1102;
      }

      if (v402 >= 2)
      {
        LODWORD(v655) = 2;
        do
        {
          v655 = (v655 + 1);
          v656 = v402;
          v402 = v402 >> 1;
        }

        while (v656 > 3);
        goto LABEL_1102;
      }
    }

    v655 = 2;
LABEL_1102:
    v412 = 2;
    push_indice(v75, 519, v655 - 2, 2);
    v657 = v734;
    if (v708 < v734)
    {
      v727 = v655;
      v726 = -1 << (v655 - 1);
      v724 = ~(-1 << (v655 - 1));
      v723 = -65536 << (v655 - 1) >> 16;
      v720 = -65535 << (v655 - 1);
      v658 = v708 + 1;
      v659 = 2 * v708;
      v660 = v772;
      v661 = v797;
      v662 = v788;
      do
      {
        v663 = (v660 + v659);
        if ((v660 + v659) < v772)
        {
          goto LABEL_1191;
        }

        if (v663 + 1 > v772 + v734 || v663 > v663 + 1)
        {
          goto LABEL_1191;
        }

        if (*v663)
        {
          v665 = (v661 + v659);
          if ((v661 + v659) < v797)
          {
            goto LABEL_1191;
          }

          if (v665 + 1 > &v797[5] + 4)
          {
            goto LABEL_1191;
          }

          if (v665 > v665 + 1)
          {
            goto LABEL_1191;
          }

          v666 = (v662 + v659);
          if ((v662 + v659) < v788 || v666 + 1 > v788 + v734 || v666 > v666 + 1)
          {
            goto LABEL_1191;
          }

          v667 = *v665 - *v666;
          v668 = v667;
          if (v723 > v667)
          {
            v667 = v726;
          }

          v739 = v412;
          v669 = v655;
          if (v668 <= v724)
          {
            v670 = v667;
          }

          else
          {
            v670 = v724;
          }

          push_indice(v741, 519, v670 + v720, v727);
          v659 = 2 * v708;
          v657 = v734;
          v671 = *v666 + v670;
          v655 = v669;
          *v666 = v671;
          v412 = v739 + v669;
        }

        v495 = v657 == v658++;
        v662 = (v662 + 2);
        v661 = (v661 + 2);
        v660 = (v660 + 2);
      }

      while (!v495);
    }

    v278 = v714;
    update_rsubband(v714, v772, v412);
    goto LABEL_1125;
  }

  v718 = v749;
  v279 = *(v75 + 96);
  v712 = *v105;
  v799 = -1;
  v716 = v279;
  if (v279 == 24400)
  {
    v280 = 224;
  }

  else
  {
    v280 = 320;
  }

  if (v279 == 24400)
  {
    v281 = 416;
  }

  else
  {
    v281 = 320;
  }

  v282 = v281 >> 1;
  v735 = (v281 >> 1);
  v283 = &v799;
  v284 = &v768;
  v285 = 1;
  v286 = 800.0;
  v287 = 800.0;
  do
  {
    v288 = 0;
    v289 = 0;
    v290 = v285;
    v291 = v280;
    v280 += v282;
    v292 = 1.0e-15;
    v293 = 1.0e-15;
    do
    {
      v294 = &v11[v291];
      v295 = v294 + 1;
      if (v294 < v11 || v295 > v9 || v294 > v295)
      {
        goto LABEL_1191;
      }

      v298 = fabsf(*v294);
      if (v298 <= v287)
      {
        v287 = (v298 * 0.05) + (v287 * 0.95);
        if (v298 <= v286)
        {
          v286 = (v298 * 0.8) + (v286 * 0.2);
        }

        else
        {
          v286 = (v298 * 0.05) + (v286 * 0.95);
        }

        v292 = v292 + v286;
        ++v289;
      }

      else
      {
        v287 = (v298 * 0.8) + (v287 * 0.2);
      }

      v293 = v293 + v287;
      ++v288;
      ++v291;
    }

    while (v282 > v288);
    if (v289 >= 1)
    {
      v292 = v292 / v289;
    }

    if (v284 + 1 > &v769)
    {
      goto LABEL_1191;
    }

    v299 = ((v292 * 6.4) / (v293 / v735)) * (((v292 * 6.4) / (v293 / v735)) * ((v292 * 6.4) / (v293 / v735)));
    *v284 = v299;
    v300 = (v299 / 0.1) + 0.5;
    if (v300 > 3.0)
    {
      v300 = 3.0;
    }

    if (v300 < 0.0)
    {
      v300 = 0.0;
    }

    *v283 = (v300 * 0.1) + 0.0;
    push_indice(v741, 520, v300, 2);
    if (v283 + 1 > v800)
    {
      goto LABEL_1191;
    }

    v285 = 0;
    *v284 = *v283;
    v283 = &v799 + 1;
    v284 = &v768 + 1;
  }

  while ((v290 & 1) != 0);
  p_C = &__C;
  v302 = &v769;
  v303 = 1;
  do
  {
    v304 = v303;
    if (p_C + 1 > __b || v302 + 1 > &__C)
    {
      goto LABEL_1191;
    }

    v303 = 0;
    v306 = ((*p_C * 3.2) / *v302) * (((*p_C * 3.2) / *v302) * ((*p_C * 3.2) / *v302));
    if (v306 > 0.5)
    {
      v306 = 0.5;
    }

    *p_C = *p_C * (v306 + v306);
    v302 = &v769 + 1;
    p_C = &__C + 1;
  }

  while ((v304 & 1) != 0);
  v762 = NAN;
  v713 = v712 - 4;
  *&v307 = -1;
  *(&v307 + 1) = -1;
  *&v823[12] = v307;
  v822[2] = v307;
  *v823 = v307;
  v822[0] = v307;
  v822[1] = v307;
  v821 = v307;
  *&v819[12] = v307;
  v818[2] = v307;
  *v819 = v307;
  v818[0] = v307;
  v818[1] = v307;
  v817 = v307;
  memset(v797, 255, 0x420uLL);
  memset(v816, 255, sizeof(v816));
  v815 = -1;
  *&v308 = -1;
  *(&v308 + 1) = -1;
  v814[10] = v308;
  v814[9] = v308;
  v814[8] = v308;
  v814[7] = v308;
  v814[6] = v308;
  v814[5] = v308;
  v814[4] = v308;
  v814[3] = v308;
  v814[2] = v308;
  v814[1] = v308;
  v814[0] = v308;
  v813 = v308;
  v812 = v308;
  v811 = v308;
  v761 = -21846;
  v760 = -1431655766;
  *&v308 = 0xAAAAAAAAAAAAAAAALL;
  *(&v308 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v810[2] = v308;
  v810[1] = v308;
  v810[0] = v308;
  v809[2] = v308;
  v809[1] = v308;
  v809[0] = v308;
  v808[1] = 0xAAAAAAAAAAAAAAAALL;
  v808[0] = 0xAAAAAAAAAAAAAAAALL;
  memset(v807, 170, sizeof(v807));
  v806[1] = 0xAAAAAAAAAAAAAAAALL;
  v806[0] = 0xAAAAAAAAAAAAAAAALL;
  memset(v805, 170, sizeof(v805));
  memset(v804, 170, sizeof(v804));
  *&v309 = -1;
  *(&v309 + 1) = -1;
  v803[9] = v309;
  v803[8] = v309;
  v803[7] = v309;
  v803[6] = v309;
  v803[5] = v309;
  v803[4] = v309;
  v803[3] = v309;
  v803[2] = v309;
  v803[1] = v309;
  v803[0] = v309;
  v802 = v309;
  *&v309 = 0xAAAAAAAAAAAAAAAALL;
  *(&v309 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v801[1] = v309;
  v801[0] = v309;
  v759 = -21846;
  v758 = -1431655766;
  v757 = -21846;
  memset(v800, 170, sizeof(v800));
  LODWORD(v827[0]) = 0;
  vDSP_vfill(v827, v797, 1, 0x108uLL);
  LODWORD(v827[0]) = 0;
  vDSP_vfill(v827, v816, 1, 0x108uLL);
  for (m = 0; m != 16; m += 2)
  {
    v311 = v806 + m + 2;
    if ((v806 + m) < v806 || v311 > v807 || v806 + m > v311)
    {
      goto LABEL_1191;
    }

    *(v806 + m) = 0;
  }

  if (v716 == 24400)
  {
    v314 = 17;
  }

  else
  {
    v314 = 23;
  }

  v315 = 224;
  if (v716 != 24400)
  {
    v315 = 320;
  }

  v316 = v807;
  v736 = v315;
  do
  {
    v317 = v316 + 1;
    if (v316 < v807 || v317 > v808 || v316 > v317)
    {
      goto LABEL_1191;
    }

    *v316++ = 0;
    --v315;
  }

  while (v315);
  v320 = &v760;
  v321 = &__C;
  v322 = 1;
  do
  {
    v323 = v322;
    logqnorm(v321, __b, v320, 32, 1, thren_HQ, AMRWB_IOmode2rate);
    if (v320 + 2 > &v761)
    {
      goto LABEL_1191;
    }

    v324 = *v320;
    v325 = &dicn[v324];
    v326 = v325 + 1;
    v327 = v325 < dicn || v326 > band_len_harm;
    v328 = v327 || v325 > v326;
    if (v328 || v321 + 1 > __b)
    {
      goto LABEL_1191;
    }

    *v321 = *v325 * 0.5;
    push_indice(v741, 885, v324, 5);
    v322 = 0;
    v320 = (&v760 + 2);
    v321 = &__C + 1;
  }

  while ((v323 & 1) != 0);
  push_indice(v741, 522, v314 - v718, 5);
  if (v718 >= 1)
  {
    v330 = v781;
    v331 = v718;
    do
    {
      v332 = v330 + 1;
      if (v330 < v781 || v332 > v782 || v330 > v332)
      {
        goto LABEL_1191;
      }

      v335 = *v330;
      v336 = &v11[v335];
      v337 = v336 + 1;
      v338 = v336 < v11 || v337 > v9;
      v339 = v338 || v336 > v337;
      v340 = v807 + v335;
      v341 = v340 + 1;
      v342 = !v339 && v340 >= v807;
      v343 = !v342 || v341 > v808;
      if (v343 || v340 > v341)
      {
        goto LABEL_1191;
      }

      if (*v336 >= 0.0)
      {
        v345 = 1.0;
      }

      else
      {
        v345 = -1.0;
      }

      *v340 = v345;
      ++v330;
      --v331;
    }

    while (v331);
  }

  v346 = 0;
  v347 = 0;
  v348 = 0;
  v349 = 0;
  do
  {
    v350 = v807 + v346 + 2;
    if ((v807 + v346) < v807 || v350 > v808 || v807 + v346 > v350)
    {
      goto LABEL_1191;
    }

    if (*(v807 + v348))
    {
      v353 = &v11[v347];
      if (&v11[v347] < v11)
      {
        goto LABEL_1191;
      }

      if (v353 + 4 > v9)
      {
        goto LABEL_1191;
      }

      if (v353 > v353 + 4)
      {
        goto LABEL_1191;
      }

      v354 = &v818[-1] + 4 * v349;
      if (v354 < &v817)
      {
        goto LABEL_1191;
      }

      if (v354 + 4 > v820)
      {
        goto LABEL_1191;
      }

      if (v354 > v354 + 4)
      {
        goto LABEL_1191;
      }

      *(&v818[-1] + v349) = fabsf(v11[v348]);
      v355 = v781 + v349;
      if (v355 < v781 || v355 + 1 > v782 || v355 > v355 + 1)
      {
        goto LABEL_1191;
      }

      *v355 = v348;
      ++v349;
    }

    ++v348;
    ++v347;
    v346 += 2;
  }

  while (v736 != v348);
  if (v718 >= 1)
  {
    v356 = &v817;
    v357 = v718;
    do
    {
      v358 = v356 + 1;
      if (v356 < &v817 || v358 > v820 || v356 > v358)
      {
        goto LABEL_1191;
      }

      *v356 = *v356 * 0.25;
      ++v356;
      --v357;
    }

    while (v357);
  }

  logqnorm(&v817, v820, v810, 32, 1, thren_pg, dicn_pg);
  if (v718 > 1)
  {
    v361 = v718 - 1;
    v362 = v810 + 2;
    v363 = &v817 + 4;
    v364 = &v817 + 1;
    do
    {
      if (v363 < &v817)
      {
        goto LABEL_1191;
      }

      if (v362)
      {
        if (v362 < v810 || v362 + 2 > &v811 || v362 > v362 + 2)
        {
          goto LABEL_1191;
        }

        v365 = v364;
        v366 = v362;
      }

      else
      {
        v365 = v364;
        v366 = 0;
      }

      logqnorm(v365, v820, v366, 45, 1, thren_pg, dicn_pg);
      v362 += 2;
      ++v364;
      v363 += 4;
      --v361;
    }

    while (v361);
  }

  if (v718 > 0x18)
  {
    goto LABEL_1191;
  }

  diffcod(v718, v810, v809 + 2, v810);
  if (v718)
  {
    v367 = 0;
    v368 = &v821;
    do
    {
      v369 = &dicn_pg[*(v810 + v367)];
      v370 = v369 + 1;
      v372 = v369 < dicn_pg || v370 > manPkEnrg_tbl || v369 > v370;
      v373 = v368 + 1;
      if (v372 || v373 > v824 || v368 > v373)
      {
        goto LABEL_1191;
      }

      *v368++ = *v369;
      v367 += 2;
    }

    while (2 * v718 != v367);
    LOWORD(v809[0]) = v810[0];
    v376 = v810;
    v377 = &v821;
    v758 = 0;
    v757 = 32;
    v378 = v718;
    do
    {
      if (v377 + 1 > v824 || v377 > v377 + 1)
      {
        goto LABEL_1191;
      }

      *v377 = *v377 * 4.0;
      v380 = *v376;
      v381 = &manPkEnrg_tbl[v380];
      v382 = v381 + 1;
      v383 = v381 < manPkEnrg_tbl || v382 > expPkEnrg_tbl;
      v384 = v383 || v381 > v382;
      v385 = &expPkEnrg_tbl[v380];
      v386 = v385 + 1;
      v387 = !v384 && v385 >= expPkEnrg_tbl;
      v388 = !v387 || v386 > pgain_huffsizn;
      if (v388 || v385 > v386)
      {
        goto LABEL_1191;
      }

      floating_point_add(&v758, &v757, *v381, *v385);
      ++v376;
      ++v377;
      --v378;
    }

    while (v378);
    if (v718 < 2)
    {
      v390 = 0;
    }

    else
    {
      v390 = 0;
      v391 = v718 - 1;
      v392 = v809 + 1;
      do
      {
        v393 = *v392++;
        v394 = &pgain_huffsizn[v393];
        v395 = v394 + 1;
        if (v394 < pgain_huffsizn || v395 > pgain_huffnorm || v394 > v395)
        {
          goto LABEL_1191;
        }

        v390 += *v394;
        --v391;
      }

      while (v391);
    }
  }

  else
  {
    v390 = 0;
    LOWORD(v809[0]) = v810[0];
    v758 = 0;
    v757 = 32;
  }

  v413 = (5 * (v718 - 1));
  push_indice(v741, 803, v413 > v390, 1);
  push_indice(v741, 804, v809[0], 5);
  if (v413 >= v390)
  {
    v416 = v390;
  }

  else
  {
    v416 = 5 * (v718 - 1);
  }

  if (v413 <= v390)
  {
    if (v718 >= 2)
    {
      v430 = v718 - 1;
      v431 = v809 + 1;
      do
      {
        v432 = *v431++;
        push_indice(v741, 804, v432, 5);
        --v430;
      }

      while (v430);
    }
  }

  else if (v718 >= 2)
  {
    v417 = v718 - 1;
    v418 = v809 + 1;
    do
    {
      v420 = *v418++;
      v419 = v420;
      v421 = &pgain_huffnorm[v420];
      v422 = v421 + 1;
      v424 = v421 < pgain_huffnorm || v422 > &word_19B38ED42 || v421 > v422;
      v425 = &pgain_huffsizn[v419];
      v426 = v425 + 1;
      if (v424 || v425 < pgain_huffsizn || v426 > pgain_huffnorm || v425 > v426)
      {
        goto LABEL_1191;
      }

      push_indice(v741, 804, *v421, *v425);
      --v417;
    }

    while (v417);
  }

  v433 = v416 + 21;
  if (!v718)
  {
    goto LABEL_747;
  }

  v434 = 0;
  v435 = v781;
  do
  {
    if (v435 + 1 > v782 || v435 > v435 + 1)
    {
      goto LABEL_1191;
    }

    v437 = v807 + *v435;
    v438 = v437 + 1;
    v439 = v437 < v807 || v438 > v808;
    v440 = v439 || v437 > v438;
    v441 = &v822[-1] + v434 + 4;
    v442 = v440 || v441 > v824;
    v443 = v442 || &v822[-1] + v434 > v441;
    v444 = &v818[-1] + v434 + 4;
    v445 = v443 || v444 > v820;
    if (v445 || &v818[-1] + v434 > v444)
    {
      goto LABEL_1191;
    }

    v415.n128_u32[0] = *(&v822[-1] + v434);
    v414.n128_f32[0] = v415.n128_f32[0] * *v437;
    *(&v818[-1] + v434) = v414.n128_u32[0];
    v434 += 4;
    ++v435;
  }

  while (4 * v718 != v434);
  if (v718 >= 2)
  {
    v433 = v416 + 9 * v718 + 12;
    v447 = (v718 - 1);
    v448 = v781 + 1;
    v449 = &v817;
    do
    {
      v450 = v448 + 1;
      if (v448 < v781 || v450 > v782 || v448 > v450)
      {
        goto LABEL_1191;
      }

      v453 = *(v448 - 1);
      v454 = &v11[v453 - 2];
      v455 = &__b[v453 - 2];
      if (v454 < v11 || v455 < __b)
      {
        goto LABEL_1191;
      }

      v457 = *v448++;
      *&v827[0] = v449;
      *(&v827[0] + 1) = v820;
      *&v827[1] = &v817;
      quant_peaks(v741, v454, v9, v455, v772, v827, &v761, (v453 - v457 + 5), v414, v415, v716, v718);
      push_indice(v741, 831, v761, 8);
      v449 = (v449 + 4);
      --v447;
    }

    while (v447);
    v458 = (v718 - 1);
  }

  else
  {
LABEL_747:
    v458 = 0;
  }

  v459 = v458;
  v460 = v781 + v458;
  if (v460 < v781 || v460 + 1 > v782 || v460 > v460 + 1)
  {
    goto LABEL_1191;
  }

  v461 = *v460 - 2;
  v462 = &v11[v461];
  v463 = &__b[v461];
  if (v462 < v11 || v463 < __b)
  {
    goto LABEL_1191;
  }

  *&v827[0] = &v818[-1] + 4 * v459;
  *(&v827[0] + 1) = v820;
  *&v827[1] = &v817;
  quant_peaks(v741, v462, v9, v463, v772, v827, &v761, 0, v414, v415, v716, v718);
  push_indice(v741, 831, v761, 8);
  *&v465 = 0xAAAAAAAAAAAAAAAALL;
  *(&v465 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v836[27] = v465;
  v836[28] = v465;
  v836[25] = v465;
  v836[26] = v465;
  v836[23] = v465;
  v836[24] = v465;
  v836[21] = v465;
  v836[22] = v465;
  v836[19] = v465;
  v836[20] = v465;
  v836[17] = v465;
  v836[18] = v465;
  v836[15] = v465;
  v836[16] = v465;
  v836[13] = v465;
  v836[14] = v465;
  v836[11] = v465;
  v836[12] = v465;
  v836[9] = v465;
  v836[10] = v465;
  v836[7] = v465;
  v836[8] = v465;
  v836[5] = v465;
  v836[6] = v465;
  v836[3] = v465;
  v836[4] = v465;
  v836[1] = v465;
  v836[2] = v465;
  v835 = v465;
  v836[0] = v465;
  v833 = v465;
  v834 = v465;
  *&v831[14] = v465;
  v830 = v465;
  *v831 = v465;
  memset(v828, 0, sizeof(v828));
  memset(v827, 170, sizeof(v827));
  v466 = 0;
  v467 = 0;
  memset(v825, 0, sizeof(v825));
  do
  {
    v468 = v807 + v466;
    v469 = v468 + 1;
    v471 = v468 < v807 || v469 > v808 || v468 > v469;
    v472 = v827 + v466;
    v473 = v472 + 1;
    if (v471 || v472 < v827 || v473 > v828 || v472 > v473)
    {
      goto LABEL_1191;
    }

    v477 = *v468;
    LOWORD(v478) = v477;
    if ((v477 & 0x8000u) != 0)
    {
      v478 = -v477;
    }

    *v472 = v478;
    if (v477)
    {
      v479 = &v828[2 * v467];
      if (v479 < v828)
      {
        goto LABEL_1191;
      }

      if (v479 + 2 > v829)
      {
        goto LABEL_1191;
      }

      if (v479 > v479 + 2)
      {
        goto LABEL_1191;
      }

      *&v828[2 * v467] = v466;
      v480 = &v825[v467];
      if (v480 < v825 || v480 + 1 > v826 || v480 > v480 + 1)
      {
        goto LABEL_1191;
      }

      ++v467;
      *v480 = v477;
    }

    ++v466;
  }

  while (v466 != v736);
  v481 = *v828 + 3;
  LOWORD(v830) = *v828 + 3;
  if (v718 >= 2)
  {
    v482 = 0;
    do
    {
      v483 = &v828[v482 + 2];
      v484 = &v828[v482 + 4];
      v487 = v483 >= v828 && v484 <= v829 && v483 <= v484 && &v828[v482] >= v828;
      v488 = &v831[v482 - 14];
      v489 = &v831[v482 - 12];
      if (!v487 || v489 > v832 || v488 > v489)
      {
        goto LABEL_1191;
      }

      v492 = *v483 - *&v828[v482] - 3;
      *v488 = v492;
      if (v481 <= v492)
      {
        v481 = v492;
      }

      v482 += 2;
    }

    while (2 * v718 - 2 != v482);
  }

  if (v481 <= 51)
  {
    v493 = 0;
  }

  else
  {
    v493 = -1;
  }

  v494 = v718;
  v495 = v481 > 51 || v718 == 0;
  if (!v495)
  {
    v493 = 0;
    v496 = &v830;
    do
    {
      v497 = v496 + 1;
      if (v496 < &v830 || v497 > v832 || v496 > v497)
      {
        goto LABEL_1191;
      }

      v500 = &hvq_cp_huff_len[*v496];
      v501 = v500 + 1;
      v502 = v500 < hvq_cp_huff_len || v501 > hvq_cp_huff_val;
      if (v502 || v500 > v501)
      {
        goto LABEL_1191;
      }

      v493 += *v500;
      ++v496;
      --v494;
    }

    while (v494);
  }

  v504 = 0;
  *&v505 = 0xAAAAAAAAAAAAAAAALL;
  *(&v505 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v843 = v505;
  v844 = v505;
  v841 = v505;
  v842 = v505;
  v839 = v505;
  v840 = v505;
  v837 = v505;
  v838 = v505;
  do
  {
    v506 = &v837 + v504 + 2;
    if ((&v837 + v504) < &v837 || v506 > v845 || &v837 + v504 > v506)
    {
      goto LABEL_1191;
    }

    *(&v837 + v504) = 0;
    v504 += 2;
  }

  while (v504 != 128);
  v509 = (v736 / 5.0) + 0.5;
  v510 = v509;
  if (v509 < 1)
  {
    v529 = v509;
    if (v493 < 0)
    {
      goto LABEL_944;
    }

LABEL_916:
    if (v493 > v529)
    {
      goto LABEL_944;
    }

    push_indice(v741, 523, 0, 1);
    v550 = v718;
    if (!v718)
    {
      LOWORD(v571) = 0;
      goto LABEL_970;
    }

    v551 = &v830;
    while (1)
    {
      v552 = v551 + 1;
      v553 = v551 < &v830 || v552 > v832;
      if (v553 || v551 > v552)
      {
        break;
      }

      v555 = *v551;
      v556 = &hvq_cp_huff_val[v555];
      v557 = v556 + 1;
      v558 = v556 < hvq_cp_huff_val || v557 > hvq_cp_layer1_map5;
      v559 = v558 || v556 > v557;
      v560 = &hvq_cp_huff_len[v555];
      v561 = v560 + 1;
      v562 = !v559 && v560 >= hvq_cp_huff_len;
      v563 = !v562 || v561 > hvq_cp_huff_val;
      if (v563 || v560 > v561)
      {
        break;
      }

      push_indice(v741, 523, *v556, *v560);
      ++v551;
      if (!--v550)
      {
        goto LABEL_955;
      }
    }

LABEL_1191:
    __break(0x5519u);
  }

  v511 = 0;
  do
  {
    v512 = 5 * v511;
    v513 = 5 * v511 + 5;
    if (v513 >= v736)
    {
      v513 = v736;
    }

    while (v513 > v512)
    {
      v514 = v827 + v512;
      v515 = v514 + 1;
      if (v514 < v827 || v515 > v828 || v514 > v515)
      {
        goto LABEL_1191;
      }

      if (*v514)
      {
        v518 = (&v837 + 2 * v511);
        if (v518 < &v837 || v518 + 2 > v845 || v518 > (v518 + 2))
        {
          goto LABEL_1191;
        }

        *v518 = 1;
        break;
      }

      ++v512;
    }

    ++v511;
  }

  while (v511 != v510);
  v519 = 0;
  do
  {
    v520 = &v837 + v519 + 2;
    v522 = (&v837 + v519) < &v837 || v520 > v845 || &v837 + v519 > v520;
    v523 = &v833 + v519;
    v524 = &v833 + v519 + 2;
    if (v522 || v523 < &v833 || v524 > &v837 || v523 > v524)
    {
      goto LABEL_1191;
    }

    *(&v833 + v519) = *(&v837 + v519);
    v519 += 2;
  }

  while (2 * v510 != v519);
  v528 = 0;
  v529 = v509;
  do
  {
    v530 = (&v837 + 2 * v528);
    v531 = (v530 + 2);
    if (v530 < &v837 || v531 > v845 || v530 > v531)
    {
      goto LABEL_1191;
    }

    if (*v530)
    {
      v534 = 5 * v528;
      if (5 * v528 + 5 >= v736)
      {
        v535 = v736;
      }

      else
      {
        v535 = 5 * v528 + 5;
      }

      if (v535 <= v534)
      {
        v536 = 0;
LABEL_898:
        for (n = 0; n != 8; ++n)
        {
          if (hvq_cp_layer1_map5[n] == v536)
          {
            v542 = n;
            goto LABEL_903;
          }
        }

        v542 = 8;
LABEL_903:
        v543 = 4;
        v544 = 2;
        while (1)
        {
          v545 = (&v833 + 2 * v529);
          v546 = (v545 + 2);
          v547 = v545 < &v833 || v546 > &v837;
          if (v547 || v545 > v546)
          {
            break;
          }

          LOWORD(v529) = v529 + 1;
          *v545 = (v543 & v542) >> v544;
          v543 >>= 1;
          if (--v544 == -1)
          {
            goto LABEL_912;
          }
        }
      }

      else
      {
        v536 = 0;
        while (1)
        {
          v537 = v827 + v534;
          v538 = v537 + 1;
          v539 = v537 < v827 || v538 > v828;
          if (v539 || v537 > v538)
          {
            break;
          }

          v536 = *v537 | (2 * v536);
          if (v535 <= ++v534)
          {
            goto LABEL_898;
          }
        }
      }

      goto LABEL_1191;
    }

LABEL_912:
    v528 = (v528 + 1);
  }

  while (v528 < v510);
  if ((v493 & 0x8000) == 0)
  {
    goto LABEL_916;
  }

LABEL_944:
  push_indice(v741, 523, 1, 1);
  if (v529 >= 1)
  {
    v565 = v529;
    v566 = &v833;
    do
    {
      v567 = v566 + 1;
      v568 = v566 < &v833 || v567 > &v837;
      if (v568 || v566 > v567)
      {
        goto LABEL_1191;
      }

      v570 = *v566++;
      push_indice(v741, 523, v570, 1);
    }

    while (--v565);
  }

  v493 = v529;
LABEL_955:
  v571 = v718;
  if (v718)
  {
    v572 = v825;
    do
    {
      v573 = v572 + 1;
      if (v572 < v825 || v573 > v826 || v572 > v573)
      {
        goto LABEL_1191;
      }

      v576 = *v572++;
      push_indice(v741, 523, (v576 >> 15) ^ 1, 1);
      --v571;
    }

    while (v571);
    LOWORD(v571) = v718;
  }

LABEL_970:
  v719 = v571 + v433 + v493 + 10;
  v730 = hvq_pvq_bitalloc((v713 - v719), v716, *(v741 + 130), v788, &v790, v758, v757, v549, &v804[8], &v804[16], v782, &v784, v801, &v802, &v759);
  if (v730 > 8)
  {
    goto LABEL_1191;
  }

  v577 = v759;
  v578 = v730;
  hvq_concat_bands(v730, v801, &v802, v759, &v800[8], v800, &v800[16]);
  if (v730)
  {
    v580 = 0;
    v581 = 0;
    v582 = 0;
    v583 = 0;
    v584 = v730;
    while (1)
    {
      if (v580 >= v730 - v577)
      {
        v585 = v801 + v583;
        v586 = v585 + 1;
        if (v585 < v801 || v586 > &v802 || v585 > v586)
        {
          goto LABEL_1191;
        }

        v589 = &band_start_harm[*v585];
        v590 = v589 + 1;
        v591 = v589 < band_start_harm || v590 > band_end_harm;
        if (v591 || v589 > v590)
        {
          goto LABEL_1191;
        }

        v581 = *v589;
        ++v583;
      }

      v804[v580 + 16] = v580;
      v593 = v800[v580];
      if (v593 >= 1)
      {
        break;
      }

      v595 = v582;
LABEL_1009:
      v602 = v816 + v582;
      if (v602 < v816)
      {
        goto LABEL_1191;
      }

      logqnorm(v602, &v817, v808 + v580++, 40, v593, thren_HQ, AMRWB_IOmode2rate);
      v582 = v595;
      if (v580 == v730)
      {
        v578 = v730;
        normalizecoefs(v816, &v817, v808, v730, &v800[8], &v800[16]);
        v603 = v804;
        v604 = &v804[8];
        v605 = v741;
        do
        {
          v606 = *v604++;
          *v603++ = 8 * v606;
          --v584;
        }

        while (v584);
        v607 = -5 * v730 + v713 - v719;
        goto LABEL_1015;
      }
    }

    v594 = 0;
    v595 = v582;
    while (1)
    {
      v596 = &__b[v581];
      v597 = v596 + 1;
      v598 = v596 < __b || v597 > v772;
      if (v598 || v596 > v597)
      {
        goto LABEL_1191;
      }

      if (*v596 == 0.0)
      {
        v600 = &v11[v581];
        if (v600 < v11)
        {
          goto LABEL_1191;
        }

        if ((v600 + 1) > v9)
        {
          goto LABEL_1191;
        }

        if (v600 > v600 + 1)
        {
          goto LABEL_1191;
        }

        v601 = v816 + v595;
        if (v601 < v816 || v601 + 1 > &v817 || v601 > v601 + 1)
        {
          goto LABEL_1191;
        }

        *v601 = *v600;
        ++v594;
        v595 = (v595 + 1);
      }

      ++v581;
      if (v593 <= v594)
      {
        goto LABEL_1009;
      }
    }
  }

  v605 = v741;
  v607 = v713 - v719;
LABEL_1015:
  for (ii = 0; ii != 16; ii += 2)
  {
    v609 = v806 + ii + 2;
    if ((v806 + ii) < v806 || v609 > v807 || v806 + ii > v609)
    {
      goto LABEL_1191;
    }

    *(v806 + ii) = 0;
  }

  pvq_encode_frame(v605, v816, &v817, v797, &v797[66], &v802, v804, v579, v806, v807, v805, v806, &v800[8], &v800[16], &v800[16], v801, v800, &v800[8], v578, v804, v607, 3);
  if (!v578)
  {
    v722 = v607;
    goto LABEL_1080;
  }

  v613 = vdupq_n_s64(v578 - 1);
  v614 = vmovn_s64(vcgeq_u64(v613, xmmword_19B0A5850));
  if (vuzp1_s8(vuzp1_s16(v614, *v613.i8), *v613.i8).u8[0])
  {
    v804[16] = 0;
  }

  if (vuzp1_s8(vuzp1_s16(v614, *&v613), *&v613).i8[1])
  {
    v804[17] = 1;
  }

  if (vuzp1_s8(vuzp1_s16(*&v613, vmovn_s64(vcgeq_u64(v613, xmmword_19B0A5840))), *&v613).i8[2])
  {
    v804[18] = 2;
    v804[19] = 3;
  }

  v615 = vmovn_s64(vcgeq_u64(v613, xmmword_19B0B23A0));
  if (vuzp1_s8(*&v613, vuzp1_s16(v615, *&v613)).i32[1])
  {
    v804[20] = 4;
  }

  if (vuzp1_s8(*&v613, vuzp1_s16(v615, *&v613)).i8[5])
  {
    v804[21] = 5;
  }

  v616 = vmovn_s64(vcgeq_u64(v613, xmmword_19B0B2390));
  if (vuzp1_s8(*&v616, vuzp1_s16(v616, v616)).i8[6])
  {
    v804[22] = 6;
  }

  v617 = vuzp1_s16(v616, v616);
  if (vuzp1_s8(v617, v617).i8[7])
  {
    v804[23] = 7;
  }

  fine_gain_pred(&v800[8], &v800[16], &v800[16], v801, v800, &v800[8], &v804[16], v612, v806, v807, 0, 0, 0, 0, v578, v797, &v797[66], v805, v806, &v811, 3);
  v618 = 0;
  v619 = 0;
  v620 = 0;
  v738 = 0;
  v725 = v578 - v577;
  if (v578 <= 1)
  {
    v621 = 1;
  }

  else
  {
    v621 = v578;
  }

  v722 = v607 + 5 * v621;
  do
  {
    v622 = v808 + v618;
    v623 = &dicn[*v622];
    v624 = v623 + 1;
    if (v623 < dicn || v624 > band_len_harm || v623 > v624)
    {
      goto LABEL_1191;
    }

    v627 = v618;
    v628 = *(&v811 + v618);
    v762 = *v623 * (*(&v803[-1] + v618) / v628);
    logqnorm(&v762, __dst, v622, 40, 1, thren_HQ, AMRWB_IOmode2rate);
    v629 = (*(v808 + v627) - 8);
    v630 = v629 & ~(v629 >> 31);
    push_indice(v741, 1378, v629 & ~(v629 >> 31), 5);
    *(v808 + v627) = v630 + 8;
    if (v725 <= v627)
    {
      v631 = v801 + v738;
      if (v631 < v801)
      {
        goto LABEL_1191;
      }

      if (v631 + 1 > &v802)
      {
        goto LABEL_1191;
      }

      if (v631 > v631 + 1)
      {
        goto LABEL_1191;
      }

      v632 = &band_start_harm[*v631];
      if (v632 < band_start_harm || v632 + 1 > band_end_harm || v632 > v632 + 1)
      {
        goto LABEL_1191;
      }

      ++v738;
      v619 = *v632;
    }

    v633 = v800[v627];
    if (v633 < 1)
    {
      goto LABEL_1077;
    }

    v634 = &dicn[(v630 + 8)];
    if (v634 < dicn || v634 + 1 > band_len_harm || v634 > v634 + 1)
    {
      goto LABEL_1191;
    }

    v635 = 0;
    v636 = *v634;
    do
    {
      v637 = &__b[v619];
      v638 = v637 + 1;
      if (v637 < __b || v638 > v772 || v637 > v638)
      {
LABEL_1190:
        v762 = v636;
        goto LABEL_1191;
      }

      if (*v637 == 0.0)
      {
        v641 = v797 + v620;
        if (v641 < v797 || v641 + 1 > &v797[66] || v641 > v641 + 1)
        {
          goto LABEL_1190;
        }

        *v637 = (*v641 * v628) * v636;
        ++v635;
        ++v620;
      }

      ++v619;
    }

    while (v633 > v635);
    v762 = v636;
LABEL_1077:
    v618 = (v627 + 1);
  }

  while ((v627 + 1) < v730);
LABEL_1080:
  v642 = 0;
  LODWORD(v643) = 0;
  v644 = v736 >> 1;
  v645 = &__C;
  v646 = 21845;
  do
  {
    v647 = v644 + v644 * v643;
    v648 = v644 * v642;
    do
    {
      result = &__b[v648];
      v650 = result + 1;
      if (result < __b || v650 > v772 || result > v650)
      {
        goto LABEL_1191;
      }

      if (*result == 0.0)
      {
        if (v645 + 1 > __b)
        {
          goto LABEL_1191;
        }

        v646 = 31821 * v646 + 13849;
        *result = (v646 / 32767.0) * *v645;
      }

      ++v648;
    }

    while (v647 > v648);
    v643 = v642 + 1;
    v645 = &__C + 1;
    v642 = 1;
  }

  while (v643 != 2);
  v653 = v709;
  v654 = *v709 - (v722 + v719) - 4;
  v75 = v741;
  v136 = v702;
LABEL_1133:
  *v653 = v654;
  v677 = v751;
  v678 = v751 & 0xFFFE;
  if (v678 == 2)
  {
    v742 = 7209020;
    if (v75 + 52216 <= (v75 + 52218) && v75 + 52218 <= (v75 + 52220))
    {
      result = har_est(__b, v772, 300, &v744 + 1, &v744, &v743, (v75 + 52216), v612, &subband_search_offsets_13p2kbps_Har, &subband_offsets_sub5_13p2kbps_Har, &v742, (v75 + 52218));
      goto LABEL_1137;
    }

    goto LABEL_1191;
  }

LABEL_1137:
  *(v706 + 3064) = 0;
  if (v705 || v677 == 3 || v136 == 320 && *(v75 + 96) == 32000)
  {
    goto LABEL_1187;
  }

  v737 = v747[4];
  if (v678 != 4)
  {
    if (v747[3] < v747[5])
    {
      goto LABEL_1191;
    }

    v732 = v747[0];
    if (v747[0] < v747[2])
    {
      goto LABEL_1191;
    }

    v731 = v747[1];
    v679 = v745;
    if ((v745 & 0x8000) == 0)
    {
      goto LABEL_1148;
    }

LABEL_1185:
    v695 = 3;
    v696 = v741;
    goto LABEL_1186;
  }

  if (v747[3] < v747[5])
  {
    goto LABEL_1191;
  }

  v732 = v747[0];
  if (v747[0] < v747[2])
  {
    goto LABEL_1191;
  }

  v731 = v747[1];
  if (v750 - 1 <= v745)
  {
    v679 = v745;
  }

  else
  {
    v679 = v750 - 1;
  }

  if (v679 < 0)
  {
    goto LABEL_1185;
  }

LABEL_1148:
  v729 = v747[3];
  v728 = v677;
  LOWORD(v680) = 0;
  v740 = 0;
  v681 = 0;
  do
  {
    v682 = (v782 + 2 * v680);
    v683 = (v682 + 2);
    if (v682 < v782 || v683 > &v784 || v682 > v683)
    {
      goto LABEL_1191;
    }

    v686 = v680;
    if (!*v682)
    {
      v687 = &v729[v680];
      if (v687 < v729)
      {
        goto LABEL_1191;
      }

      if (v687 + 1 > v737)
      {
        goto LABEL_1191;
      }

      if (v687 > v687 + 1)
      {
        goto LABEL_1191;
      }

      v688 = &v732[v686];
      if (v688 < v732 || v688 + 1 > v731 || v688 > v688 + 1)
      {
        goto LABEL_1191;
      }

      v689 = *v687;
      v690 = *v688;
      v691 = v689 < v690;
      if (v689 > v690)
      {
        v690 = v689;
      }

      if (v691)
      {
        v740 = v740 + v690 - v689;
        v692 = v690 - v689;
        v693 = &v11[v689];
        while (v693 >= v11 && (v693 + 1) <= v9 && v693 <= v693 + 1)
        {
          if (*v693 == 0.0)
          {
            --v681;
          }

          else
          {
            v694 = floor(log10(fabsf(*v693 * 256.0)) / 0.30103001) + 1.0;
            v681 += v694 & ~(v694 >> 31);
          }

          ++v693;
          if (!--v692)
          {
            goto LABEL_1175;
          }
        }

        goto LABEL_1191;
      }
    }

LABEL_1175:
    v680 = (v686 + 1);
  }

  while (v680 <= v679);
  v695 = 3;
  v696 = v741;
  LOWORD(v677) = v728;
  if (v740)
  {
    v697 = v681 / v740;
    if (7 - v697 >= 3)
    {
      v695 = 3;
    }

    else
    {
      v695 = 7 - v697;
    }

    if (v697 > 7)
    {
      v695 = 0;
    }
  }

LABEL_1186:
  result = push_indice(v696, 463, v695, 2);
LABEL_1187:
  *(v706 + 3018) = v677;
  return result;
}

uint64_t hq_configure(uint64_t result, int a2, uint64_t a3, __int16 *a4, __int16 *a5, _WORD *a6, __int16 *a7, _WORD *a8, __int16 *a9, void *a10, void *a11, __int16 **a12)
{
  *a6 = 0;
  if (result == 640)
  {
    if (a2 == 4)
    {
      *a4 = 39;
      *a10 = band_len_HQ;
      a10[1] = &band_start_HQ;
      a10[2] = band_len_HQ;
      *a11 = &band_start_HQ;
      a11[1] = band_end_HQ;
      a11[2] = &band_start_HQ;
      *a12 = band_end_HQ;
      a12[1] = band_start_harm;
      a12[2] = band_end_HQ;
      if (a3 == 32000)
      {
        v12 = 30;
        v18 = 144;
      }

      else
      {
        if (a3 != 24400)
        {
          goto LABEL_35;
        }

        v12 = 27;
        v18 = 80;
      }

      *a9 = v18;
      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v16 = 31;
      goto LABEL_17;
    }

    if (a2 != 2)
    {
      v17 = 39;
LABEL_28:
      *a4 = v17;
      *a5 = v17;
      *a7 = v17;
      *a10 = band_len_HQ;
      a10[1] = &band_start_HQ;
      a10[2] = band_len_HQ;
      *a11 = &band_start_HQ;
      a11[1] = band_end_HQ;
      a11[2] = &band_start_HQ;
      v14 = band_end_HQ;
      v15 = band_start_harm;
      goto LABEL_29;
    }

    v13 = 31;
LABEL_21:
    *a4 = v13;
    *a5 = v13;
    *a7 = v13;
    *a10 = band_len_harm;
    a10[1] = &word_19B3A21A2;
    a10[2] = band_len_harm;
    *a11 = band_start_harm;
    a11[1] = band_end_harm;
    a11[2] = band_start_harm;
    goto LABEL_22;
  }

  if (result != 960)
  {
    *a4 = 26;
    *a5 = 26;
    *a7 = 26;
    *a10 = band_len_wb;
    a10[1] = &band_start_wb;
    a10[2] = band_len_wb;
    *a11 = &band_start_wb;
    a11[1] = &band_end_wb;
    a11[2] = &band_start_wb;
    v14 = &band_end_wb;
    v15 = FrameSizeConfig;
LABEL_29:
    *a12 = v14;
    a12[1] = v15;
    a12[2] = v14;
    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v13 = 33;
    goto LABEL_21;
  }

  if (a2 != 3)
  {
    if (a2 == 5)
    {
      *a4 = 44;
      *a10 = band_len_HQ;
      a10[1] = &band_start_HQ;
      a10[2] = band_len_HQ;
      *a11 = &band_start_HQ;
      a11[1] = band_end_HQ;
      a11[2] = &band_start_HQ;
      *a12 = band_end_HQ;
      a12[1] = band_start_harm;
      a12[2] = band_end_HQ;
      switch(a3)
      {
        case 16400:
          goto LABEL_9;
        case 32000:
          *a9 = 144;
          v12 = 30;
          goto LABEL_34;
        case 24400:
LABEL_9:
          *a9 = 80;
          v12 = 27;
LABEL_34:
          *a7 = v12;
          break;
      }

LABEL_35:
      *a5 = *a4;
      goto LABEL_30;
    }

    v17 = 44;
    goto LABEL_28;
  }

  v16 = 33;
LABEL_17:
  *a4 = v16;
  if (a3 != 24400)
  {
    *a5 = 25;
    *a7 = *a4 - 25;
    *a10 = band_len_harm;
    a10[1] = &word_19B3A21A2;
    a10[2] = band_len_harm;
    *a11 = band_start_harm;
    a11[1] = band_end_harm;
    a11[2] = band_start_harm;
    *a6 = 25;
LABEL_22:
    v14 = band_end_harm;
    v15 = band_len_wb;
    goto LABEL_29;
  }

  *a5 = 22;
  *a7 = *a4 - 22;
  *a10 = band_len_harm;
  a10[1] = &word_19B3A21A2;
  a10[2] = band_len_harm;
  *a11 = band_start_harm;
  a11[1] = band_end_harm;
  a11[2] = band_start_harm;
  *a12 = band_end_harm;
  a12[1] = band_len_wb;
  a12[2] = band_end_harm;
  *a6 = 22;
LABEL_30:
  *a8 = 5 * *a7 - 5;
  return result;
}

float *calc_norm(float *result, unint64_t a2, __int16 *a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  v16 = result;
  if (a7 >= 1)
  {
    v17 = a7;
    v18 = a3;
    while (v18 >= a3 && (v18 + 1) <= a4 && v18 <= v18 + 1)
    {
      *v18++ = 0;
      if (!--v17)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_63;
  }

LABEL_7:
  v19 = (a11 + 2 * a7);
  v20 = (v19 + 1);
  v22 = v19 < a11 || v20 > a12 || v19 >= v20;
  if (v22 || ((v23 = a7, result += *v19, v24 = (a9 + 2 * a7), v25 = (v24 + 1), result >= v16) ? (v26 = v24 >= a9) : (v26 = 0), v26 ? (v27 = v25 > a10) : (v27 = 1), !v27 ? (v28 = v24 >= v25) : (v28 = 1), v28 || (v52 = -21846, result = logqnorm(result, a2, &v52, 32, *v24, thren_HQ, AMRWB_IOmode2rate), v30 = &a3[v23], v30 < a3) || (v30 + 1) > a4 || v30 > v30 + 1 || (v31 = v52, *v30 = v52, v32 = &dicnlg2[v31], v32 < dicnlg2) || v32 + 1 > thren_HQ || v32 > v32 + 1 || (v33 = (a5 + 2 * v23), v33 < a5) || (v33 + 1) > a6 || v33 > v33 + 1))
  {
LABEL_63:
    __break(0x5519u);
    return result;
  }

  *v33 = *v32;
  v34 = a8 + a7;
  for (i = a7 + 1; v34 > i; i = v40 + 1)
  {
    v36 = (a11 + 2 * i);
    v37 = (v36 + 1);
    if (v36 < a11 || v37 > a12 || v36 >= v37)
    {
      goto LABEL_63;
    }

    v40 = i;
    result = &v16[*v36];
    v41 = (a9 + 2 * i);
    v42 = (v41 + 1);
    v43 = result >= v16 && v41 >= a9;
    v44 = !v43 || v42 > a10;
    if (v44 || v41 >= v42)
    {
      goto LABEL_63;
    }

    result = logqnorm(result, a2, &v52, 40, *v41, thren_HQ, AMRWB_IOmode2rate);
    v46 = &a3[v40];
    if (v46 < a3)
    {
      goto LABEL_63;
    }

    if ((v46 + 1) > a4)
    {
      goto LABEL_63;
    }

    if (v46 > v46 + 1)
    {
      goto LABEL_63;
    }

    v47 = v52;
    *v46 = v52;
    v48 = &dicnlg2[v47];
    if (v48 < dicnlg2)
    {
      goto LABEL_63;
    }

    if (v48 + 1 > thren_HQ)
    {
      goto LABEL_63;
    }

    if (v48 > v48 + 1)
    {
      goto LABEL_63;
    }

    v49 = (a5 + 2 * v40);
    if (v49 < a5 || (v49 + 1) > a6 || v49 > v49 + 1)
    {
      goto LABEL_63;
    }

    *v49 = *v48;
  }

  return result;
}

uint64_t encode_envelope_indices(uint64_t a1, int a2, int a3, __int16 *a4, unint64_t a5, __int16 *a6, int a7, unsigned __int16 a8, __int16 a9)
{
  v14 = 0;
  v233 = *MEMORY[0x1E69E9840];
  v232 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v231[3] = v15;
  v231[4] = v15;
  v16 = a8;
  v231[1] = v15;
  v231[2] = v15;
  v231[0] = v15;
  do
  {
    v17 = v231 + v14 + 2;
    if ((v231 + v14) < v231 || v17 > &v233 || v231 + v14 > v17)
    {
      goto LABEL_470;
    }

    *(v231 + v14) = 0;
    v14 += 2;
  }

  while (v14 != 88);
  if (a7)
  {
    v20 = *a6;
    v21 = a4 + 1;
    v23 = (a4 + 1) <= a5 && v21 >= a4;
    if (a8 - 1 > 1)
    {
      push_indice(a1, 464, v20, 2);
      if (!v23)
      {
        goto LABEL_470;
      }

      push_indice(a1, 465, *a4, 5);
    }

    else
    {
      push_indice(a1, 894, v20, 1);
      if (!v23)
      {
        goto LABEL_470;
      }

      push_indice(a1, 895, *a4, 5);
      if (v16 == 2 && a9)
      {
        if (*a6 == 1)
        {
          if (a2 >= 2)
          {
            v24 = 1;
            while (1)
            {
              v25 = &a4[v24];
              v26 = (v25 + 1);
              v27 = v25 < a4 || v26 > a5;
              if (v27 || v25 > v26)
              {
                goto LABEL_470;
              }

              v29 = *v25;
              v30 = &huffnorm_tran + 2 * v29;
              v31 = v30 + 2;
              v32 = v30 < &huffnorm_tran || v31 > &GENB_Ave;
              v33 = v32 || v30 > v31;
              v34 = huffsizn_tran + v29;
              v35 = v34 + 1;
              v36 = !v33 && v34 >= huffsizn_tran;
              v37 = !v36 || v35 > resize_huffsizn;
              if (v37 || v34 > v35)
              {
                goto LABEL_470;
              }

              v39 = *v34;
              if (v39 < 1)
              {
                v40 = 0;
              }

              else
              {
                v40 = 0;
                LOWORD(v41) = 0;
                LOWORD(v30) = *v30;
                do
                {
                  v40 = v30 & 1 | (2 * v40);
                  v41 = (v41 + 1);
                  LODWORD(v30) = v30 >> 1;
                }

                while (v41 < v39);
              }

              push_indice(a1, 895, v40, v39);
              if (++v24 == a2)
              {
                goto LABEL_440;
              }
            }
          }
        }

        else if (a2 >= 2)
        {
          v205 = *a4 + 3;
          v206 = a2 - 1;
          while (v21 >= a4 && (v21 + 1) <= a5 && v21 <= v21 + 1)
          {
            v207 = *v21;
            if (v205 < 18)
            {
              if (v205 > 12)
              {
                v208 = &huffsizn_e[v207];
                if (v208 < huffsizn_e)
                {
                  goto LABEL_470;
                }

                if (v208 + 1 > huffsizn_n)
                {
                  goto LABEL_470;
                }

                if (v208 > v208 + 1)
                {
                  goto LABEL_470;
                }

                v212 = &huffnorm_e[v207];
                if (v212 < huffnorm_e)
                {
                  goto LABEL_470;
                }

                v217 = v212 + 1;
                if (v212 + 1 > huffnorm_n)
                {
                  goto LABEL_470;
                }
              }

              else
              {
                v208 = &huffsizn_n[v207];
                if (v208 < huffsizn_n)
                {
                  goto LABEL_470;
                }

                if (v208 + 1 > resize_huffnorm)
                {
                  goto LABEL_470;
                }

                if (v208 > v208 + 1)
                {
                  goto LABEL_470;
                }

                v212 = &huffnorm_n[v207];
                if (v212 < huffnorm_n)
                {
                  goto LABEL_470;
                }

                v217 = v212 + 1;
                if (v212 + 1 > huffsizn_e)
                {
                  goto LABEL_470;
                }
              }

              if (v212 > v217)
              {
                goto LABEL_470;
              }
            }

            else
            {
              v208 = &huffsizn_n[31 - v207];
              v209 = v208 + 1;
              v211 = v208 < huffsizn_n || v209 > resize_huffnorm || v208 > v209;
              v212 = &huffnorm_n[31 - v207];
              v213 = v212 + 1;
              if (v211 || v212 < huffnorm_n || v213 > huffsizn_e || v212 > v213)
              {
                goto LABEL_470;
              }
            }

            v205 = *v21;
            push_indice(a1, 895, *v212, *v208);
            ++v21;
            if (!--v206)
            {
              goto LABEL_440;
            }
          }

          goto LABEL_470;
        }

        goto LABEL_440;
      }
    }

    v67 = *a6;
    if (*a6)
    {
      if (v67 == 1)
      {
        if (v16 == 1)
        {
          if (a2 >= 2)
          {
            v140 = 0;
            do
            {
              v141 = &a4[v140 / 2 + 1];
              v142 = &a4[v140 / 2 + 2];
              v144 = v141 < a4 || v142 > a5 || v141 > v142;
              v145 = (v231 + v140 + 2);
              v146 = v231 + v140 + 4;
              if (v144 || v145 < v231 || v146 > &v233 || v145 > v146)
              {
                goto LABEL_470;
              }

              *v145 = *v141;
              v140 += 2;
            }

            while (2 * a2 - 2 != v140);
            if (a2 == 2)
            {
LABEL_306:
              v167 = a2 - 1;
              while (v21 >= a4 && (v21 + 1) <= a5 && v21 <= v21 + 1)
              {
                ++v21;
                if (!--v167)
                {
                  goto LABEL_311;
                }
              }
            }

            else
            {
              v150 = 0;
              v151 = a2 - 2;
              while (1)
              {
                v152 = (v231 + v150 * 2 + 4);
                v153 = (v231 + v150 * 2 + 2);
                v154 = v153 < v231 || v152 > &v233;
                if (v154 || v153 > v152)
                {
                  break;
                }

                v156 = *v153;
                if (v156 < 18)
                {
                  if (v156 <= 12)
                  {
                    v162 = v231 + v150 * 2 + 6;
                    if (v162 > &v233)
                    {
                      goto LABEL_470;
                    }

                    if (v152 > v162)
                    {
                      goto LABEL_470;
                    }

                    v163 = &a4[v150 + 2];
                    if (v163 < a4)
                    {
                      goto LABEL_470;
                    }

                    v164 = &a4[v150 + 3];
                    if (v164 > a5 || v163 > v164)
                    {
                      goto LABEL_470;
                    }

                    v165 = v156 <= 10 ? -3 : v156 - 13;
                    v166 = *v152 + v165;
                    *v163 = v166;
                    if (v166 < 0)
                    {
                      goto LABEL_311;
                    }
                  }
                }

                else
                {
                  v157 = v231 + v150 * 2 + 6;
                  if (v157 > &v233)
                  {
                    goto LABEL_470;
                  }

                  if (v152 > v157)
                  {
                    goto LABEL_470;
                  }

                  v158 = &a4[v150 + 2];
                  if (v158 < a4)
                  {
                    goto LABEL_470;
                  }

                  v159 = &a4[v150 + 3];
                  if (v159 > a5 || v158 > v159)
                  {
                    goto LABEL_470;
                  }

                  if (v156 >= 0x14)
                  {
                    v160 = 3;
                  }

                  else
                  {
                    v160 = v156 - 17;
                  }

                  v161 = *v152 + v160;
                  *v158 = v161;
                  if (v161 > 31)
                  {
                    goto LABEL_311;
                  }
                }

                ++v150;
                if (!--v151)
                {
                  goto LABEL_306;
                }
              }
            }

            goto LABEL_470;
          }
        }

        else
        {
LABEL_311:
          if (a2 >= 2)
          {
            if (v16)
            {
              v168 = 895;
            }

            else
            {
              v168 = 465;
            }

            v169 = 1;
            while (1)
            {
              v170 = &a4[v169];
              v171 = (v170 + 1);
              v172 = v170 < a4 || v171 > a5;
              if (v172 || v170 > v171)
              {
                goto LABEL_470;
              }

              v174 = *v170;
              v175 = &resize_huffnorm[v174];
              v176 = v175 + 2;
              v177 = v175 < resize_huffnorm || v176 > huffnorm;
              v178 = v177 || v175 > v176;
              v179 = resize_huffsizn + v174;
              v180 = v179 + 1;
              v181 = !v178 && v179 >= resize_huffsizn;
              v182 = !v181 || v180 > huffsizn;
              if (v182 || v179 > v180)
              {
                goto LABEL_470;
              }

              v184 = *v179;
              if (v184 < 1)
              {
                v185 = 0;
              }

              else
              {
                v185 = 0;
                LOWORD(v186) = 0;
                LOWORD(v175) = *v175;
                do
                {
                  v185 = v175 & 1 | (2 * v185);
                  v186 = (v186 + 1);
                  LODWORD(v175) = v175 >> 1;
                }

                while (v186 < v184);
              }

              push_indice(a1, v168, v185, v184);
              if (++v169 == a2)
              {
                goto LABEL_440;
              }
            }
          }
        }
      }

      else if (v67 == 2)
      {
        if (a2 >= 2)
        {
          v68 = a2 - 1;
          while (v21 >= a4 && (v21 + 1) <= a5 && v21 <= v21 + 1)
          {
            v69 = *v21;
            v70 = &huffnorm[v69];
            v71 = v70 + 1;
            v72 = v70 < huffnorm || v71 > hessize;
            v73 = v72 || v70 > v71;
            v74 = &huffsizn[2 * v69];
            v75 = v74 + 1;
            v76 = !v73 && v74 >= huffsizn;
            v77 = !v76 || v75 > W_DTX_HO;
            if (v77 || v74 > v75)
            {
              break;
            }

            push_indice(a1, 465, *v70, *v74);
            ++v21;
            if (!--v68)
            {
              goto LABEL_440;
            }
          }

          goto LABEL_470;
        }
      }

      else if (a2 >= 2)
      {
        v202 = a2 - 1;
        while (v21 >= a4 && (v21 + 1) <= a5 && v21 <= v21 + 1)
        {
          v203 = *v21++;
          push_indice(a1, 465, v203, 5);
          if (!--v202)
          {
            goto LABEL_440;
          }
        }

        goto LABEL_470;
      }
    }

    else if (a2 >= 2)
    {
      v187 = *a4 + 3;
      v188 = a2;
      if (v16 == 1)
      {
        v189 = 895;
      }

      else
      {
        v189 = 465;
      }

      v190 = v188 - 1;
      while (v21 >= a4 && (v21 + 1) <= a5 && v21 <= v21 + 1)
      {
        v191 = *v21;
        if (v187 < 18)
        {
          if (v187 > 12)
          {
            v192 = &huffsizn_e[v191];
            if (v192 < huffsizn_e)
            {
              goto LABEL_470;
            }

            if (v192 + 1 > huffsizn_n)
            {
              goto LABEL_470;
            }

            if (v192 > v192 + 1)
            {
              goto LABEL_470;
            }

            v196 = &huffnorm_e[v191];
            if (v196 < huffnorm_e)
            {
              goto LABEL_470;
            }

            v201 = v196 + 1;
            if (v196 + 1 > huffnorm_n)
            {
              goto LABEL_470;
            }
          }

          else
          {
            v192 = &huffsizn_n[v191];
            if (v192 < huffsizn_n)
            {
              goto LABEL_470;
            }

            if (v192 + 1 > resize_huffnorm)
            {
              goto LABEL_470;
            }

            if (v192 > v192 + 1)
            {
              goto LABEL_470;
            }

            v196 = &huffnorm_n[v191];
            if (v196 < huffnorm_n)
            {
              goto LABEL_470;
            }

            v201 = v196 + 1;
            if (v196 + 1 > huffsizn_e)
            {
              goto LABEL_470;
            }
          }

          if (v196 > v201)
          {
            goto LABEL_470;
          }
        }

        else
        {
          v192 = &huffsizn_n[31 - v191];
          v193 = v192 + 1;
          v195 = v192 < huffsizn_n || v193 > resize_huffnorm || v192 > v193;
          v196 = &huffnorm_n[31 - v191];
          v197 = v196 + 1;
          if (v195 || v196 < huffnorm_n || v197 > huffsizn_e || v196 > v197)
          {
            goto LABEL_470;
          }
        }

        v187 = *v21;
        push_indice(a1, v189, *v196, *v192);
        ++v21;
        if (!--v190)
        {
          goto LABEL_440;
        }
      }

      goto LABEL_470;
    }

    goto LABEL_440;
  }

  if (a8 == 2 && a9)
  {
    if (a2 >= 1)
    {
      v42 = 0;
      v43 = 31;
      v44 = a4;
      v45 = a2;
      do
      {
        if (v44 < a4 || (v44 + 1) > a5 || v44 > v44 + 1)
        {
          goto LABEL_470;
        }

        v47 = *v44++;
        v46 = v47;
        if (v47 > v42)
        {
          v42 = v46;
        }

        if (v46 < v43)
        {
          v43 = v46;
        }

        --v45;
      }

      while (v45);
      v48 = v43 >= 11 && v42 <= 21;
      v49 = 0;
      if (v48 && a2 != 1)
      {
        v51 = a2 - 1;
        v52 = a4 + 1;
        while (v52 >= a4 && (v52 + 1) <= a5 && v52 <= v52 + 1)
        {
          v53 = (huffsizn_tran + 2 * *v52);
          v54 = (v53 + 2);
          v55 = v53 < huffsizn_tran || v54 > resize_huffsizn;
          if (v55 || v53 > v54)
          {
            break;
          }

          v49 += *v53;
          ++v52;
          if (!--v51)
          {
            goto LABEL_85;
          }
        }

        goto LABEL_470;
      }

LABEL_85:
      *a6 = 0;
      v57 = a4 + 1;
      if ((a4 + 1) > a5 || v57 < a4)
      {
        goto LABEL_470;
      }

      if (a2 != 1)
      {
        LOWORD(v58) = 0;
        v59 = *a4 + 3;
        v60 = a2 - 1;
        while (v57 >= a4 && (v57 + 1) <= a5 && v57 <= v57 + 1)
        {
          v61 = *v57;
          if (v59 < 18)
          {
            if (v59 > 12)
            {
              v62 = &huffsizn_e[v61];
              if (v62 < huffsizn_e)
              {
                goto LABEL_470;
              }

              v66 = v62 + 1;
              if (v62 + 1 > huffsizn_n)
              {
                goto LABEL_470;
              }
            }

            else
            {
              v62 = &huffsizn_n[v61];
              if (v62 < huffsizn_n)
              {
                goto LABEL_470;
              }

              v66 = v62 + 1;
              if (v62 + 1 > resize_huffnorm)
              {
                goto LABEL_470;
              }
            }

            if (v62 > v66)
            {
              goto LABEL_470;
            }
          }

          else
          {
            v62 = &huffsizn_n[31 - v61];
            v63 = v62 + 1;
            if (v62 < huffsizn_n || v63 > resize_huffnorm || v62 > v63)
            {
              goto LABEL_470;
            }
          }

          v59 = *v57;
          LOWORD(v58) = *v62 + v58;
          ++v57;
          if (!--v60)
          {
            goto LABEL_443;
          }
        }

        goto LABEL_470;
      }

      LOWORD(v58) = 0;
LABEL_443:
      if (v49 && v58 >= v49)
      {
        *a6 = 1;
        LOWORD(v58) = v49;
      }

      return v58;
    }

    *a6 = 0;
    if ((a4 + 1) > a5 || a4 + 1 < a4)
    {
      goto LABEL_470;
    }

LABEL_440:
    LOWORD(v58) = 0;
    return v58;
  }

  v79 = a4 + 1;
  if ((a4 + 1) > a5 || v79 < a4)
  {
    goto LABEL_470;
  }

  if (a2 < 2)
  {
    v108 = 0;
    v58 = 0;
    *a6 = 0;
    v90 = a8 == 0;
    goto LABEL_396;
  }

  LOWORD(v58) = 0;
  v80 = *a4 + 3;
  v81 = a2 - 1;
  v82 = a4 + 1;
  v83 = v81;
  do
  {
    if (v82 < a4 || (v82 + 1) > a5 || v82 > v82 + 1)
    {
      goto LABEL_470;
    }

    v84 = *v82;
    if (v80 < 18)
    {
      if (v80 > 12)
      {
        v85 = &huffsizn_e[v84];
        if (v85 < huffsizn_e)
        {
          goto LABEL_470;
        }

        v89 = v85 + 1;
        if (v85 + 1 > huffsizn_n)
        {
          goto LABEL_470;
        }
      }

      else
      {
        v85 = &huffsizn_n[v84];
        if (v85 < huffsizn_n)
        {
          goto LABEL_470;
        }

        v89 = v85 + 1;
        if (v85 + 1 > resize_huffnorm)
        {
          goto LABEL_470;
        }
      }

      if (v85 > v89)
      {
        goto LABEL_470;
      }
    }

    else
    {
      v85 = &huffsizn_n[31 - v84];
      v86 = v85 + 1;
      if (v85 < huffsizn_n || v86 > resize_huffnorm || v85 > v86)
      {
        goto LABEL_470;
      }
    }

    v80 = *v82;
    v58 = (*v85 + v58);
    ++v82;
    --v83;
  }

  while (v83);
  *a6 = 0;
  v90 = a8 == 0;
  if (!a8)
  {
    LOWORD(v91) = 0;
    v92 = a2 - 1;
    do
    {
      if (v79 < a4 || (v79 + 1) > a5 || v79 > v79 + 1)
      {
        goto LABEL_470;
      }

      v93 = &huffsizn[2 * *v79];
      v94 = v93 + 1;
      v95 = v93 < huffsizn || v94 > W_DTX_HO;
      if (v95 || v93 > v94)
      {
        goto LABEL_470;
      }

      v91 = (*v93 + v91);
      ++v79;
      --v92;
    }

    while (v92);
    if (v58 > v91)
    {
      *a6 = 2;
      v58 = v91;
    }
  }

  v97 = 0;
  v98 = a2 - 1;
  do
  {
    v99 = &a4[v97 + 1];
    v100 = &a4[v97 + 2];
    v102 = v99 < a4 || v100 > a5 || v99 > v100;
    v103 = (v231 + v97 * 2 + 2);
    v104 = v231 + v97 * 2 + 4;
    if (v102 || v103 < v231 || v104 > &v233 || v103 > v104)
    {
      goto LABEL_470;
    }

    *v103 = *v99;
    ++v97;
    --v98;
  }

  while (v98);
  v108 = a2 != 2;
  if (a2 == 2)
  {
LABEL_228:
    v126 = 0;
    v127 = a4 + 1;
    v128 = 31;
    v129 = a2 - 1;
    do
    {
      if (v127 < a4 || (v127 + 1) > a5 || v127 > v127 + 1)
      {
        goto LABEL_470;
      }

      v131 = *v127++;
      v130 = v131;
      if (v131 > v126)
      {
        v126 = v130;
      }

      if (v130 < v128)
      {
        v128 = v130;
      }

      --v129;
    }

    while (v129);
    v132 = 15 - v128;
    v133 = v126 - 15;
    if (v132 > v133)
    {
      LOWORD(v133) = v132;
    }

    if (v133 <= 10)
    {
      LOWORD(v134) = 0;
      v135 = a4 + 1;
      do
      {
        if (v135 < a4 || (v135 + 1) > a5 || v135 > v135 + 1)
        {
          goto LABEL_470;
        }

        v136 = (resize_huffsizn + 2 * *v135);
        v137 = (v136 + 2);
        v138 = v136 < resize_huffsizn || v137 > huffsizn;
        if (v138 || v136 > v137)
        {
          goto LABEL_470;
        }

        v134 = (*v136 + v134);
        ++v135;
        --v81;
      }

      while (v81);
      if (v58 > v134)
      {
        *a6 = 1;
        v58 = v134;
        if (!a8)
        {
          goto LABEL_397;
        }

LABEL_447:
        v204 = *a6 != 1;
        goto LABEL_448;
      }
    }

LABEL_396:
    if (!v90)
    {
      goto LABEL_447;
    }

    goto LABEL_397;
  }

  v109 = 0;
  v110 = a2 - 2;
  while (1)
  {
    v111 = (v231 + v109 * 2 + 4);
    v112 = (v231 + v109 * 2 + 2);
    if (v112 < v231 || v111 > &v233 || v112 > v111)
    {
      goto LABEL_470;
    }

    v115 = *v112;
    if (v115 < 18)
    {
      break;
    }

    v116 = v231 + v109 * 2 + 6;
    if (v116 > &v233)
    {
      goto LABEL_470;
    }

    if (v111 > v116)
    {
      goto LABEL_470;
    }

    v117 = &a4[v109 + 2];
    if (v117 < a4)
    {
      goto LABEL_470;
    }

    v118 = &a4[v109 + 3];
    if (v118 > a5 || v117 > v118)
    {
      goto LABEL_470;
    }

    if (v115 >= 0x14)
    {
      v119 = 3;
    }

    else
    {
      v119 = v115 - 17;
    }

    v120 = *v111 + v119;
    *v117 = v120;
    if (v120 > 31)
    {
      goto LABEL_446;
    }

LABEL_227:
    ++v109;
    if (!--v110)
    {
      goto LABEL_228;
    }
  }

  if (v115 > 12)
  {
    goto LABEL_227;
  }

  v121 = v231 + v109 * 2 + 6;
  if (v121 > &v233)
  {
    goto LABEL_470;
  }

  if (v111 > v121)
  {
    goto LABEL_470;
  }

  v122 = &a4[v109 + 2];
  if (v122 < a4)
  {
    goto LABEL_470;
  }

  v123 = &a4[v109 + 3];
  if (v123 > a5 || v122 > v123)
  {
    goto LABEL_470;
  }

  v124 = v115 <= 10 ? -3 : v115 - 13;
  v125 = *v111 + v124;
  *v122 = v125;
  if ((v125 & 0x8000) == 0)
  {
    goto LABEL_227;
  }

LABEL_446:
  v108 = 1;
  if (a8)
  {
    goto LABEL_447;
  }

LABEL_397:
  if (v58 < a3)
  {
    goto LABEL_447;
  }

  *a6 = 3;
  v204 = 1;
  LOWORD(v58) = a3;
LABEL_448:
  v219 = v90 && v204;
  if (a8 == 1)
  {
    v219 = 1;
  }

  if ((v219 & v108) == 1)
  {
    v220 = 0;
    v221 = a2 - 2;
    while (1)
    {
      v222 = (v231 + v220 * 2 + 4);
      v223 = v231 + v220 * 2 + 6;
      v224 = v222 < v231 || v223 > &v233;
      v225 = v224 || v222 > v223;
      v226 = &a4[v220 + 2];
      v227 = &a4[v220 + 3];
      v228 = !v225 && v226 >= a4;
      v229 = !v228 || v227 > a5;
      if (v229 || v226 > v227)
      {
        break;
      }

      *v226 = *v222;
      ++v220;
      if (!--v221)
      {
        return v58;
      }
    }

LABEL_470:
    __break(0x5519u);
  }

  return v58;
}

void map_hq_generic_fenv_norm(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8)
{
  *&v111[4] = *MEMORY[0x1E69E9840];
  v110 = -1;
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v108 = v16;
  v109 = v16;
  __C = v16;
  v107 = v16;
  __A = 0.0;
  vDSP_vfill(&__A, &__C, 1, 0x11uLL);
  v17 = a2 + 4;
  if (a8 != 144)
  {
    if (v17 > a3)
    {
      goto LABEL_166;
    }

    if (v17 < a2)
    {
      goto LABEL_166;
    }

    v41 = a2 + 8;
    if (a2 + 8 > a3)
    {
      goto LABEL_166;
    }

    if (v17 > v41)
    {
      goto LABEL_166;
    }

    v42 = *(a2 + 4);
    *&__C = (v42 * 0.66406) + (*a2 * 0.33594);
    if (v41 < a2)
    {
      goto LABEL_166;
    }

    v43 = a2 + 12;
    if (a2 + 12 > a3)
    {
      goto LABEL_166;
    }

    if (v41 > v43)
    {
      goto LABEL_166;
    }

    *(&__C + 1) = (*(a2 + 8) * 0.66406) + (v42 * 0.33594);
    if (v43 < a2)
    {
      goto LABEL_166;
    }

    v44 = a2 + 16;
    if (a2 + 16 > a3)
    {
      goto LABEL_166;
    }

    if (v43 > v44)
    {
      goto LABEL_166;
    }

    DWORD2(__C) = *(a2 + 12);
    if (v44 < a2)
    {
      goto LABEL_166;
    }

    v45 = a2 + 20;
    if (a2 + 20 > a3)
    {
      goto LABEL_166;
    }

    if (v44 > v45)
    {
      goto LABEL_166;
    }

    if (v45 < a2)
    {
      goto LABEL_166;
    }

    v46 = a2 + 24;
    if (a2 + 24 > a3)
    {
      goto LABEL_166;
    }

    if (v45 > v46)
    {
      goto LABEL_166;
    }

    v47 = *(a2 + 20);
    *(&__C + 3) = (v47 * 0.33594) + (*(a2 + 16) * 0.66406);
    if (v46 < a2)
    {
      goto LABEL_166;
    }

    v48 = a2 + 28;
    if (a2 + 28 > a3)
    {
      goto LABEL_166;
    }

    if (v46 > v48)
    {
      goto LABEL_166;
    }

    v49 = *(a2 + 24);
    *&v107 = (v49 * 0.33594) + (v47 * 0.66406);
    if (v48 < a2)
    {
      goto LABEL_166;
    }

    v50 = a2 + 32;
    if (a2 + 32 > a3)
    {
      goto LABEL_166;
    }

    if (v48 > v50)
    {
      goto LABEL_166;
    }

    v51 = *(a2 + 28);
    *(&v107 + 1) = (v51 * 0.66406) + (v49 * 0.33594);
    if (v50 < a2)
    {
      goto LABEL_166;
    }

    v52 = a2 + 36;
    if (a2 + 36 > a3)
    {
      goto LABEL_166;
    }

    if (v50 > v52)
    {
      goto LABEL_166;
    }

    v53 = *(a2 + 32);
    *(&v107 + 2) = (v53 * 0.66406) + (v51 * 0.33594);
    if (v52 < a2)
    {
      goto LABEL_166;
    }

    v54 = a2 + 40;
    if (a2 + 40 > a3)
    {
      goto LABEL_166;
    }

    if (v52 > v54)
    {
      goto LABEL_166;
    }

    v55 = *(a2 + 36);
    *(&v107 + 3) = (v55 * 0.66406) + (v53 * 0.33594);
    if (v54 < a2)
    {
      goto LABEL_166;
    }

    v56 = a2 + 44;
    if (a2 + 44 > a3)
    {
      goto LABEL_166;
    }

    if (v54 > v56)
    {
      goto LABEL_166;
    }

    v57 = *(a2 + 40);
    *&v108 = (v57 * 0.66406) + (v55 * 0.33594);
    if (v56 < a2)
    {
      goto LABEL_166;
    }

    v58 = a2 + 48;
    if (a2 + 48 > a3)
    {
      goto LABEL_166;
    }

    if (v56 > v58)
    {
      goto LABEL_166;
    }

    *(&v108 + 1) = (*(a2 + 44) * 0.75) + (v57 * 0.25);
    if (v58 < a2)
    {
      goto LABEL_166;
    }

    v59 = (a2 + 52);
    if (a2 + 52 > a3)
    {
      goto LABEL_166;
    }

    if (v58 > v59)
    {
      goto LABEL_166;
    }

    DWORD2(v108) = *(a2 + 48);
    if (v59 < a2)
    {
      goto LABEL_166;
    }

    v60 = a2 + 56;
    if (a2 + 56 > a3 || v59 > v60)
    {
      goto LABEL_166;
    }

    HIDWORD(v108) = *v59;
    if (a1 != 5)
    {
      goto LABEL_98;
    }

    if (v60 < a2)
    {
      goto LABEL_166;
    }

    v61 = a2 + 60;
    if (a2 + 60 > a3)
    {
      goto LABEL_166;
    }

    if (v60 > v61)
    {
      goto LABEL_166;
    }

    v62 = *(a2 + 56);
    *&v109 = v62;
    if (v61 < a2)
    {
      goto LABEL_166;
    }

    v36 = (a2 + 64);
    if (a2 + 64 > a3)
    {
      goto LABEL_166;
    }

    if (v61 > v36)
    {
      goto LABEL_166;
    }

    v37 = *(a2 + 60);
    *(&v109 + 1) = (v37 * 0.75) + (v62 * 0.25);
    if (v36 < a2 || a2 + 68 > a3 || v36 > a2 + 68)
    {
      goto LABEL_166;
    }

    v39 = &v110;
    v38 = &v109 + 3;
    v40 = &v109 + 2;
    goto LABEL_97;
  }

  if (v17 < a2)
  {
    goto LABEL_166;
  }

  v18 = a2 + 8;
  if (a2 + 8 > a3)
  {
    goto LABEL_166;
  }

  if (v17 > v18)
  {
    goto LABEL_166;
  }

  LODWORD(__C) = *(a2 + 4);
  if (v18 < a2)
  {
    goto LABEL_166;
  }

  v19 = a2 + 12;
  if (a2 + 12 > a3)
  {
    goto LABEL_166;
  }

  if (v18 > v19)
  {
    goto LABEL_166;
  }

  if (v19 < a2)
  {
    goto LABEL_166;
  }

  v20 = a2 + 16;
  if (a2 + 16 > a3)
  {
    goto LABEL_166;
  }

  if (v19 > v20)
  {
    goto LABEL_166;
  }

  v21 = *(a2 + 12);
  *(&__C + 1) = (v21 * 0.33594) + (*(a2 + 8) * 0.66406);
  if (v20 < a2)
  {
    goto LABEL_166;
  }

  v22 = a2 + 20;
  if (a2 + 20 > a3)
  {
    goto LABEL_166;
  }

  if (v20 > v22)
  {
    goto LABEL_166;
  }

  v23 = *(a2 + 16);
  *(&__C + 2) = (v23 * 0.33594) + (v21 * 0.66406);
  if (v22 < a2)
  {
    goto LABEL_166;
  }

  v24 = a2 + 24;
  if (a2 + 24 > a3)
  {
    goto LABEL_166;
  }

  if (v22 > v24)
  {
    goto LABEL_166;
  }

  v25 = *(a2 + 20);
  *(&__C + 3) = (v25 * 0.66406) + (v23 * 0.33594);
  if (v24 < a2)
  {
    goto LABEL_166;
  }

  v26 = a2 + 28;
  if (a2 + 28 > a3)
  {
    goto LABEL_166;
  }

  if (v24 > v26)
  {
    goto LABEL_166;
  }

  *&v107 = (*(a2 + 24) * 0.66406) + (v25 * 0.33594);
  if (v26 < a2)
  {
    goto LABEL_166;
  }

  v27 = a2 + 32;
  if (a2 + 32 > a3)
  {
    goto LABEL_166;
  }

  if (v26 > v27)
  {
    goto LABEL_166;
  }

  DWORD1(v107) = *(a2 + 28);
  if (v27 < a2)
  {
    goto LABEL_166;
  }

  v28 = a2 + 36;
  if (a2 + 36 > a3)
  {
    goto LABEL_166;
  }

  if (v27 > v28)
  {
    goto LABEL_166;
  }

  if (v28 < a2)
  {
    goto LABEL_166;
  }

  v29 = a2 + 40;
  if (a2 + 40 > a3)
  {
    goto LABEL_166;
  }

  if (v28 > v29)
  {
    goto LABEL_166;
  }

  v30 = *(a2 + 36);
  *(&v107 + 2) = (v30 * 0.25) + (*(a2 + 32) * 0.75);
  if (v29 < a2)
  {
    goto LABEL_166;
  }

  v31 = (a2 + 44);
  if (a2 + 44 > a3)
  {
    goto LABEL_166;
  }

  if (v29 > v31)
  {
    goto LABEL_166;
  }

  v32 = *(a2 + 40);
  *(&v107 + 3) = (v32 * 0.25) + (v30 * 0.75);
  if (v31 < a2)
  {
    goto LABEL_166;
  }

  v33 = a2 + 48;
  if (a2 + 48 > a3 || v31 > v33)
  {
    goto LABEL_166;
  }

  *&v108 = (*v31 * 0.75) + (v32 * 0.25);
  if (a1 == 5)
  {
    if (v33 < a2)
    {
      goto LABEL_166;
    }

    v34 = a2 + 52;
    if (a2 + 52 > a3)
    {
      goto LABEL_166;
    }

    if (v33 > v34)
    {
      goto LABEL_166;
    }

    v35 = *(a2 + 48);
    *(&v108 + 1) = v35;
    if (v34 < a2)
    {
      goto LABEL_166;
    }

    v36 = (a2 + 56);
    if (a2 + 56 > a3)
    {
      goto LABEL_166;
    }

    if (v34 > v36)
    {
      goto LABEL_166;
    }

    v37 = *(a2 + 52);
    *(&v108 + 2) = (v37 * 0.75) + (v35 * 0.25);
    if (v36 < a2 || a2 + 60 > a3 || v36 > a2 + 60)
    {
      goto LABEL_166;
    }

    v38 = &v109;
    v39 = &v109 + 1;
    v40 = &v108 + 3;
LABEL_97:
    v63 = *v36;
    *v40 = (*v36 * 0.5) + (v37 * 0.5);
    *v38 = v63;
    *v39 = v63;
  }

LABEL_98:
  v64 = (a4 + 2 * a6);
  if (v64 < a4)
  {
    goto LABEL_166;
  }

  v65 = (a5 + 2 * a6);
  if (v65 < a5)
  {
    goto LABEL_166;
  }

  if (a6 < a7)
  {
    v66 = a7;
    v67 = a4 + 2 * a7;
    v68 = a7;
    v69 = a5 + 2 * a7;
    v70 = a6;
    do
    {
      v71 = &__C + v70 - a6;
      v72 = v71 + 1;
      if (v71 < &__C || v72 > v111 || v71 > v72)
      {
        goto LABEL_166;
      }

      v75 = *v71;
      if (*v71 >= 110220.0)
      {
        if ((v64 + 1) > v67 || v64 > v64 + 1)
        {
          goto LABEL_166;
        }

        v76 = 0;
      }

      else if (v75 >= 0.21022)
      {
        v77 = 0;
        v78 = 0;
        v79 = 39;
        v76 = 39;
        do
        {
          v80 = (v77 + v79) >> 1;
          v81 = &thren_HQ[2 * v80];
          v82 = v81 + 1;
          if (v81 < thren_HQ || v82 > AMRWB_IOmode2rate || v81 > v82)
          {
            goto LABEL_166;
          }

          if (v75 < *v81)
          {
            v78 = v80;
          }

          else
          {
            v76 = v80;
          }

          v79 = v76;
          v77 = v78;
        }

        while (v76 - v78 > 1);
        if ((v64 + 1) > v67 || v64 > v64 + 1)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if ((v64 + 1) > v67 || v64 > v64 + 1)
        {
          goto LABEL_166;
        }

        v76 = 39;
      }

      *v64++ = v76;
      v85 = &dicnlg2[v76];
      if (v85 < dicnlg2 || v85 + 1 > thren_HQ || v85 > v85 + 1 || (v65 + 1) > v69 || v65 > v65 + 1)
      {
        goto LABEL_166;
      }

      *v65 = *v85;
      ++v70;
      ++v65;
    }

    while (v70 != v68);
    v86 = v66 - a6;
    v87 = 2 * a6;
    v88 = a4;
    for (i = a5; ; i += 2)
    {
      v90 = (v88 + v87);
      v91 = v88 + v87 + 2;
      v92 = v88 + v87 < a4 || v91 > v67;
      if (v92 || v90 > v91)
      {
        break;
      }

      v94 = *v90;
      v95 = v94 >= 29 ? 39 : v94 + 10;
      v96 = &dicnlg2[v95];
      v97 = v96 + 1;
      v98 = v96 < dicnlg2 || v97 > thren_HQ;
      v99 = v98 || v96 > v97;
      v100 = (i + v87);
      v101 = i + v87 + 2;
      v102 = !v99 && v100 >= a5;
      v103 = !v102 || v101 > v69;
      if (v103 || v100 > v101)
      {
        break;
      }

      *v100 = *v96;
      v88 += 2;
      if (!--v86)
      {
        return;
      }
    }

LABEL_166:
    __break(0x5519u);
  }
}

uint64_t hq_bit_allocation(uint64_t result, unsigned int a2, int a3, __int16 *a4, __int16 *a5, uint64_t a6, __int16 *a7, unint64_t a8, float *a9, __int16 *a10, __int16 *a11, unint64_t a12, _WORD *a13, unsigned __int16 *a14, __int16 a15)
{
  v15 = a4;
  v16 = a2;
  v17 = 0;
  v18 = a13;
  v19 = a14;
  v20 = a6;
  v680 = a11;
  v716[1] = *MEMORY[0x1E69E9840];
  v700 = 0xAAAAAAAAAAAAAAAALL;
  v21.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v21.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v699[3] = v21;
  v699[4] = v21;
  v699[2] = v21;
  v699[0] = v21;
  v699[1] = v21;
  v697 = 0xAAAAAAAAAAAAAAAALL;
  v696[0] = v21;
  v696[1] = v21;
  v694 = v21;
  v695 = v21;
  v693 = v21;
  do
  {
    v22 = &a10[v17];
    v23 = &a10[v17 + 1];
    v24 = &a10[v17] < a10 || v23 > a10 + 44;
    if (v24 || v22 > v23)
    {
      goto LABEL_1327;
    }

    *v22 = 0;
    ++v17;
  }

  while (v17 != 44);
  v665 = a6 - 1;
  if (a6 >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v699 + v26 + 2;
      v29 = (v699 + v26) < v699 || v28 > &v701;
      if (v29 || v699 + v26 > v28)
      {
        goto LABEL_1327;
      }

      *(v699 + v27) = v27;
      ++v27;
      v26 += 2;
    }

    while (a6 != v27);
  }

  v679 = a10 + 44;
  v666 = a3;
  if ((a3 | 2) != 3)
  {
    if (result == 32000 && a2 == 320)
    {
      if ((a3 & 0xFFFFFFFE) != 4)
      {
        v689 = 32000;
        v47 = a2;
        v48 = a13;
        v49 = a4;
        v664 = 0;
        goto LABEL_233;
      }

      v31 = *a4;
      goto LABEL_29;
    }

    *a4 -= 2;
  }

  if ((a3 & 0xFFFFFFFE) == 4)
  {
    v31 = *a4;
    if (result != 32000)
    {
      v32 = v31 - 31;
LABEL_30:
      *a4 = v32;
      if (a2 == 960)
      {
        *a4 = v32 - 5;
        v664 = 1;
        goto LABEL_32;
      }

      v689 = result;
      v47 = a2;
      v48 = a13;
      v49 = a4;
      v664 = 1;
LABEL_233:
      v172 = a6;
      v173 = a6;
      mvs2s(a5, &a5[a6], v693.i16, &v698, a6);
      a3 = v666;
      if (v666 == 2)
      {
        v174 = 0;
        v175 = (v172 - 2);
        *a9 = 0.0;
        v176 = 0.0;
        v177 = 0.00001;
        LODWORD(a6) = v172;
        v20 = v173;
        v15 = v49;
        v18 = v48;
        v16 = v47;
        result = v689;
        do
        {
          v178 = &v693.i16[v174 + 1];
          v179 = &v693.i8[v174 * 2 + 4];
          if (v178 < &v693 || v179 > &v698 || v178 > v179)
          {
            goto LABEL_1327;
          }

          v182 = v693.i16[v174];
          v177 = v177 + v182;
          v183 = *v178 - v182;
          if (v183 < 0)
          {
            v183 = -v183;
          }

          v176 = v176 + v183;
          *a9 = v176;
          ++v174;
        }

        while (v174 != 10);
        v184 = v175 - 1;
        if (v175 >= 12)
        {
          v185 = 10;
          v186 = v177;
          while (1)
          {
            v187 = &v693.i16[v185];
            v188 = v187 + 1;
            v189 = v187 < &v693 || v188 > &v698;
            v190 = v189 || v187 > v188;
            v191 = v187 + 2;
            v192 = v190 || v191 > &v698;
            if (v192 || v188 > v191)
            {
              goto LABEL_1327;
            }

            v194 = *v187;
            v186 = v186 + v194;
            v195 = v187[1] - v194;
            if (v195 < 0)
            {
              v195 = -v195;
            }

            v176 = v176 + v195;
            *a9 = v176;
            if (v184 <= ++v185)
            {
              goto LABEL_266;
            }
          }
        }

        v186 = v177;
LABEL_266:
        v196 = &v693.i16[v184];
        if (v196 < &v693 || v196 + 1 > &v698 || v196 > v196 + 1)
        {
LABEL_1327:
          __break(0x5519u);
        }

        v197 = v186 + *v196;
        v198 = flt_19B0B0080[v689 == 24400] * v197;
        v171 = 9;
        if (v177 < v198 && v175 >= 11)
        {
          do
          {
            v200 = &v693.i16[++v171];
            v201 = v200 + 1;
            v202 = v200 < &v693 || v201 > &v698;
            if (v202 || v200 > v201)
            {
              goto LABEL_1327;
            }

            v177 = v177 + *v200;
          }

          while (v177 < v198 && v184 > v171);
        }

        v205 = v176 / v197;
        v206 = 0.25 - v205;
        v207 = v205 < 0.0;
        v208 = 0.0;
        if (v207)
        {
          v206 = 0.0;
        }

        if (v206 >= 0.0)
        {
          v208 = v206;
        }

        *a9 = v208;
        if (v172 < 17)
        {
          v211 = 0;
          v218 = 0.0;
          v212 = 0x8000;
        }

        else
        {
          v209 = 0;
          v210 = 0;
          v211 = 0;
          v212 = 0x8000;
          v213 = 16;
          do
          {
            v214 = &v695.i8[v209 + 2];
            if (&v695.i8[v209] < &v693 || v214 > &v698 || &v695.i8[v209] > v214)
            {
              goto LABEL_1327;
            }

            v217 = v693.i16[v213];
            v210 += v217;
            if (v217 > v212)
            {
              v211 = v213;
              v212 = v693.i16[v213];
            }

            ++v213;
            v209 += 2;
          }

          while (v172 != v213);
          v218 = (v210 >> 4);
        }

        if (15 * v212 < vaddvq_s16(vaddq_s16(v694, v693)) || v212 * 0.67 < v218 || v211 < v171)
        {
          v211 = 0;
        }

        v219 = &v693.i8[2 * v171];
        if (v219 < &v693)
        {
          goto LABEL_1327;
        }

        if ((v172 - v171) >= 1)
        {
          v220 = (v172 - v171);
          v221 = &v693.i16[v171];
          while (v221 >= v219 && v221 + 1 <= &v698 && v221 <= v221 + 1)
          {
            *v221++ = -20;
            if (!--v220)
            {
              goto LABEL_314;
            }
          }

          goto LABEL_1327;
        }

LABEL_314:
        if (v211 < 1)
        {
          v169 = a12;
        }

        else
        {
          v222 = (&v693 + 2 * v211);
          if (v222 < &v693 || &v222->i16[1] > &v698 || v222 > &v222->i16[1])
          {
            goto LABEL_1327;
          }

          v169 = a12;
          v222->i16[0] = v212;
        }

        v170 = 1;
      }

      else
      {
        v169 = a12;
        v170 = 0;
        v171 = v173;
        LODWORD(a6) = v172;
        v20 = v173;
        v15 = v49;
        v18 = v48;
        v16 = v47;
        result = v689;
      }

      goto LABEL_321;
    }

LABEL_29:
    v32 = v31 - 30;
    goto LABEL_30;
  }

  v664 = 0;
LABEL_32:
  if (a2 != 960 || (a3 - 4) > 0xFFFDu)
  {
    v689 = result;
    v47 = a2;
    v48 = a13;
    v49 = a4;
    goto LABEL_233;
  }

  v704 = 0xAAAAAAAAAAAAAAAALL;
  v33 = &a5[a6];
  v34.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v34.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v702 = v34;
  v703 = v34;
  v710.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v708 = v34;
  v709 = v34;
  *v707 = v34;
  *&v707[16] = v34;
  v706 = v34;
  if (a3 != 1)
  {
    v50 = &v706;
    v51 = 44;
    v52 = a5;
    while (v52 >= a5 && v52 + 1 <= v33 && v52 <= v52 + 1)
    {
      v53 = *v52++;
      v50->i16[0] = v53;
      v50 = (v50 + 2);
      if (!--v51)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_1327;
  }

  for (i = 0; i < 44; i = (v37 + 4))
  {
    v36 = 0;
    v37 = i;
    v38 = 4;
    v39 = &a5[i];
    do
    {
      if (v39 < a5 || v39 + 1 > v33 || v39 > v39 + 1)
      {
        goto LABEL_1327;
      }

      v40 = *v39++;
      v36 += v40;
      --v38;
    }

    while (v38);
    v41 = v36 >> 2;
    v42 = 4;
    v43 = (&v706 + 2 * v37);
    do
    {
      v44 = &v43->i16[1];
      if (v43 < &v706 || v44 > &v710.u64[1] || v43 > v44)
      {
        goto LABEL_1327;
      }

      v43->i16[0] = v41;
      v43 = (v43 + 2);
      --v42;
    }

    while (v42);
  }

LABEL_60:
  v54 = 0;
  v55 = 0;
  v703.i16[0] = *v707 + 3;
  v703.i16[1] = *&v707[2] + 3;
  v703.i16[2] = ((*&v707[6] + *&v707[4]) >> 1) + 4;
  v703.i16[3] = ((*&v707[10] + *&v707[8]) >> 1) + 4;
  v703.i16[4] = ((*&v707[14] + *&v707[12]) >> 1) + 4;
  v703.i16[5] = ((*&v707[18] + *&v707[16]) >> 1) + 5;
  v703.i16[6] = ((*&v707[22] + *&v707[20]) >> 1) + 5;
  v56.i64[0] = 0x3000300030003;
  v56.i64[1] = 0x3000300030003;
  v702 = vaddq_s16(v706, v56);
  do
  {
    v57 = &v707[v54 + 24];
    v58 = &v707[v54 + 26];
    if (&v707[v54 + 24] < &v706 || v58 > &v710.i8[8] || v57 > v58)
    {
      goto LABEL_1327;
    }

    v55 += *v57;
    v54 += 2;
  }

  while (v54 != 8);
  v61 = 0;
  v62 = 0;
  v703.i16[7] = (v55 >> 2) + 6;
  do
  {
    v63 = &v708.i8[v61];
    v64 = &v708.i8[v61 + 2];
    if (&v708.i8[v61] < &v706 || v64 > &v710.i8[8] || v63 > v64)
    {
      goto LABEL_1327;
    }

    v62 += *v63;
    v61 += 2;
  }

  while (v61 != 6);
  v67 = 0;
  v68 = 0;
  LOWORD(v704) = ((21846 * v62) >> 16) + 6;
  do
  {
    v69 = &v708.i8[v67 * 2 + 6];
    v70 = &v708.i8[v67 * 2 + 8];
    if (&v708.u16[v67 + 3] < &v706 || v70 > &v710.i8[8] || v69 > v70)
    {
      goto LABEL_1327;
    }

    v68 += *v69;
    ++v67;
  }

  while (v67 != 3);
  v73 = 0;
  v74 = 0;
  WORD1(v704) = ((21846 * v68) >> 16) + 6;
  do
  {
    v75 = &v708.i8[v73 + 12];
    v76 = &v708.i8[v73 + 14];
    if ((&v708.u64[1] + v73 + 4) < &v706 || v76 > &v710.i8[8] || v75 > v76)
    {
      goto LABEL_1327;
    }

    v74 += *v75;
    v73 += 2;
  }

  while (v73 != 10);
  v79 = 0;
  v80 = 0;
  WORD2(v704) = ((13106 * v74) >> 16) + 7;
  do
  {
    v81 = &v709.i8[v79 * 2 + 6];
    v82 = &v709.i8[v79 * 2 + 8];
    if (&v709.u16[v79 + 3] < &v706 || v82 > &v710.i8[8] || v81 > v82)
    {
      goto LABEL_1327;
    }

    v80 += *v81;
    ++v79;
  }

  while (v79 != 9);
  v85 = 0;
  HIWORD(v704) = ((7282 * v80) >> 16) + 8;
  do
  {
    v702.i16[v85++] -= 10;
  }

  while (v85 != 20);
  for (j = 0; j != 19; ++j)
  {
    v87 = &v702.i16[j];
    v88 = &v702.i16[j + 1];
    if (&v702.i8[j * 2] < &v702 || v87 > v88)
    {
      goto LABEL_1327;
    }

    v90 = *v87 - 4;
    if (v87[1] < v90)
    {
      *v88 = v90;
    }
  }

  v91 = 18;
  do
  {
    v92 = (&v702 + 2 * (v91 + 1));
    if (v92 < &v702 || v92 > &v92->i16[1])
    {
      goto LABEL_1327;
    }

    v94 = &v702.i16[v91];
    if (v94 + 1 > &v705)
    {
      goto LABEL_1327;
    }

    v95 = (v92->i16[0] - 8);
    if (*v94 < v95)
    {
      *v94 = v95;
    }

    v96 = v91-- == 0;
  }

  while (!v96);
  for (k = 0; k != 20; ++k)
  {
    v98 = a_map[k];
    if (v702.i16[k] < v98)
    {
      v702.i16[k] = v98;
    }
  }

  v99 = 0;
  v100 = 0x7FFF;
  v101 = 0x8000;
  do
  {
    v102 = sfm_width[v99] - v702.i16[v99];
    v702.i16[v99] = v102;
    if (v101 <= v102)
    {
      v101 = v102;
    }

    if (v100 >= v102)
    {
      v100 = v102;
    }

    ++v99;
  }

  while (v99 != 20);
  for (m = 0; m != 20; ++m)
  {
    v702.i16[m] -= v100;
  }

  if (v101 == v100 || (v104 = ((v101 - v100) ^ ((v101 - v100) >> 15)), v104 >= 0x4000))
  {
    v107 = -13;
  }

  else
  {
    v105 = 0;
    do
    {
      v106 = v105;
      v104 = (2 * v104);
      ++v105;
    }

    while (v104 < 0x4000);
    v107 = v106 - 12;
  }

  v108 = 0;
  v109 = v107;
  v110 = -v107;
  do
  {
    v111 = v702.i16[v108];
    v112 = v111 >> v110;
    v113 = v111 << v109;
    if (v109 < 0)
    {
      LOWORD(v113) = v112;
    }

    v702.i16[v108++] = v113;
  }

  while (v108 != 20);
  v114 = 0;
  v115.i64[1] = v702.i64[1];
  v706 = v702;
  *v707 = v703.i32[0];
  v115.i64[0] = *(v703.i64 + 4);
  *&v707[4] = vzip1q_s16(v115, v115);
  *&v707[20] = v703.i16[6];
  *&v707[22] = v703.i16[6];
  v116 = v703.i16[7];
  do
  {
    v117 = &v707[v114 + 24];
    v118 = &v707[v114 + 26];
    if (&v707[v114 + 24] < &v706 || v118 > &v710.i8[8] || v117 > v118)
    {
      goto LABEL_1327;
    }

    *v117 = v116;
    v114 += 2;
  }

  while (v114 != 8);
  v121 = 0;
  v122 = v704;
  do
  {
    v123 = &v708.i8[v121];
    v124 = &v708.i8[v121 + 2];
    if (&v708.i8[v121] < &v706 || v124 > &v710.i8[8] || v123 > v124)
    {
      goto LABEL_1327;
    }

    *v123 = v122;
    v121 += 2;
  }

  while (v121 != 6);
  v127 = 0;
  v128 = WORD1(v704);
  do
  {
    v129 = &v708.i8[v127 * 2 + 6];
    v130 = &v708.i8[v127 * 2 + 8];
    if (&v708.u16[v127 + 3] < &v706 || v130 > &v710.i8[8] || v129 > v130)
    {
      goto LABEL_1327;
    }

    *v129 = v128;
    ++v127;
  }

  while (v127 != 3);
  v133 = 0;
  v134 = WORD2(v704);
  do
  {
    v135 = &v708.i8[v133 + 12];
    v136 = &v708.i8[v133 + 14];
    if ((&v708.u64[1] + v133 + 4) < &v706 || v136 > &v710.i8[8] || v135 > v136)
    {
      goto LABEL_1327;
    }

    *v135 = v134;
    v133 += 2;
  }

  while (v133 != 10);
  v139 = 0;
  v140 = HIWORD(v704);
  do
  {
    v141 = &v709.i8[v139 * 2 + 6];
    v142 = &v709.i8[v139 * 2 + 8];
    if (&v709.u16[v139 + 3] < &v706 || v142 > &v710.i8[8] || v141 > v142)
    {
      goto LABEL_1327;
    }

    *v141 = v140;
    ++v139;
  }

  while (v139 != 9);
  if (a3 == 1)
  {
    for (n = 0; n < 44; n = (n + 4))
    {
      v146 = 0;
      v147 = (&v706 + 2 * n);
      v148 = v147;
      v149 = 4;
      do
      {
        v150 = &v148->i16[1];
        if (v148 < &v706 || v150 > &v710.u64[1] || v148 > v150)
        {
          goto LABEL_1327;
        }

        v153 = v148->i16[0];
        v148 = (v148 + 2);
        v146 += v153;
        --v149;
      }

      while (v149);
      v154 = v146 >> 2;
      v155 = 4;
      do
      {
        v156 = &v147->i16[1];
        if (v147 < &v706 || v156 > &v710.u64[1] || v147 > v156)
        {
          goto LABEL_1327;
        }

        v147->i16[0] = v154;
        v147 = (v147 + 2);
        --v155;
      }

      while (v155);
    }
  }

  for (ii = 0; ii != 44; ++ii)
  {
    v160 = &a5[ii];
    v161 = &a5[ii + 1];
    v163 = &a5[ii] < a5 || v161 > v33 || v160 > v161;
    v164 = &v693.i8[ii * 2];
    v165 = &v693.i8[ii * 2 + 2];
    if (v163 || v164 < &v693 || v165 > &v698 || v164 > v165)
    {
      goto LABEL_1327;
    }

    v693.i16[ii] = v706.i16[ii] + *v160;
  }

  v169 = a12;
  v170 = 0;
  v171 = a6;
LABEL_321:
  v685 = a6;
  if (a3 != 4)
  {
    if (a3 == 3)
    {
      *v18 = 0;
      v223 = a10;
LABEL_324:
      *a14 = v665;
      goto LABEL_970;
    }

    if (v16 != 640 || result > 32000 || a3 != 1)
    {
      if (result != 32000 || v16 != 320)
      {
        v283 = v20;
        v690 = v16;
        reordvct(&v693, &v698, v20, v699, &v701);
        v284 = v170 ^ 1;
        if (v171 < 1)
        {
          v284 = 1;
        }

        v223 = a10;
        if (v284)
        {
LABEL_457:
          bitalloc(v693.i16, &v698, v699, &v701, *v15, v283, a10, v679, a7, a8, v666);
          if (a8 >= a7 && v685 <= (a8 - a7) >> 1 && v169 >= a11 && v685 <= (v169 - a11) >> 1)
          {
            result = bitallocsum(a10, v283, v18, a11, *v15, v690, a7);
            v291 = v666;
            LODWORD(a6) = v685;
            goto LABEL_956;
          }
        }

        else
        {
          v285 = (&v693 + 2 * (v171 >> 1));
          v286 = (v285 - 2);
          if ((&v285[-1].u64[1] + 6) >= &v693 && v285 <= &v698 && v286 <= v285)
          {
            v287 = (v171 >> 1) + 1;
            while (1)
            {
              v288 = &v285->i16[1];
              v289 = v285 < &v693 || v288 > &v698;
              if (v289 || v285 > v288)
              {
                break;
              }

              v285->i16[0] = v286->i16[0];
              v285 = (v285 + 2);
              v24 = v171 <= v287++;
              if (v24)
              {
                goto LABEL_457;
              }
            }
          }
        }

        goto LABEL_1327;
      }

      if (a3 == 1)
      {
        v270 = v20;
        reordvct(&v693, &v698, v20, v699, &v701);
        v223 = a10;
        bitalloc(v693.i16, &v698, v699, &v701, *v15, v270, a10, v679, a7, a8, 1);
        if (a8 < a7 || v685 > (a8 - a7) >> 1 || v169 < a11 || v685 > (v169 - a11) >> 1)
        {
          goto LABEL_1327;
        }

        result = bitallocsum(a10, v270, v18, a11, *v15, 320, a7);
        LODWORD(a6) = v685;
        goto LABEL_324;
      }

      v326 = v694.u16[2];
      v327 = 11;
      v328 = v169;
      do
      {
        v326 += v693.u16[v327++];
      }

      while (v327 != 18);
      v329 = ((v326 + ((v326 >> 28) & 7)) << 16) >> 19;
      v330 = vcgt_s16(vdup_n_s16(v329), *v693.i8);
      if (v330.i8[0])
      {
        v693.i16[0] = v329;
      }

      if (v330.i8[2])
      {
        v693.i16[1] = v329;
      }

      if (v330.i8[4])
      {
        v693.i16[2] = v329;
      }

      if (v330.i8[6])
      {
        v693.i16[3] = v329;
      }

      v331 = *v15;
      v702.i32[0] = -1431655766;
      v332.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v332.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v714 = v332;
      v715 = v332;
      v712 = v332;
      v713 = v332;
      v710 = v332;
      v711 = v332;
      v708 = v332;
      v709 = v332;
      *v707 = v332;
      *&v707[16] = v332;
      v706 = v332;
      v663 = v18;
      if (a6 >= -32732)
      {
        if (a6 >= 36)
        {
          v341 = 36;
        }

        else
        {
          v341 = a6;
        }

        if (a6 < 1)
        {
          v334 = 0;
          v333 = 0;
        }

        else
        {
          v342 = v341;
          v343 = &v706;
          do
          {
            v344 = v343->u64 + 4;
            if (v343 < &v706 || v344 > v716 || v343 > v344)
            {
              goto LABEL_1327;
            }

            v343->i32[0] = 0x200000;
            v343 = (v343 + 4);
            --v342;
          }

          while (v342);
          v334 = 0;
          v333 = 1;
          LOWORD(v20) = v341;
        }
      }

      else
      {
        v333 = 0;
        v334 = 1;
      }

      v514 = 0;
      v515 = 0;
      v691 = v331;
      do
      {
        v516 = &v693.i16[v514];
        v517 = &v693.i8[v514 * 2 + 2];
        if (&v693.i8[v514 * 2] < &v693 || v517 > &v698 || v516 > v517)
        {
          goto LABEL_1327;
        }

        v520 = *v516;
        if (v520 >= 1)
        {
          v521 = v520 + v515;
          if (v521 >> 15)
          {
            v334 = 1;
          }

          if (v521 >= 0x7FFF)
          {
            LOWORD(v521) = 0x7FFF;
          }

          v515 = v521;
        }

        ++v514;
      }

      while (v514 != 16);
      v522 = 0;
      v523 = 0;
      do
      {
        v524 = &v695.i16[v522];
        v525 = &v695.i16[v522 + 1];
        if (&v695.i8[v522 * 2] < &v693 || v525 > &v698 || v524 > v525)
        {
          goto LABEL_1327;
        }

        v528 = *v524;
        if (v528 >= 1)
        {
          v529 = v528 + v523;
          if (v529 >> 15)
          {
            v334 = 1;
          }

          if (v529 >= 0x7FFF)
          {
            v523 = 0x7FFF;
          }

          else
          {
            v523 = v529;
          }
        }

        ++v522;
      }

      while (v522 != 8);
      v692 = v334;
      v682 = v328;
      v688 = v20;
      v530 = 0;
      if (v20 >= 25)
      {
        v531 = v20 - 24;
        v532 = v696;
        do
        {
          v533 = v532 + 1;
          if (v532 < &v693 || v533 > &v698 || v532 > v533)
          {
            goto LABEL_1327;
          }

          v536 = *v532;
          v537 = v536 + v530;
          if ((v536 + v530) >> 15)
          {
            v538 = 1;
          }

          else
          {
            v538 = v334;
          }

          if (v537 >= 0x7FFF)
          {
            LOWORD(v537) = 0x7FFF;
          }

          if (v536 >= 1)
          {
            v334 = v538;
            v530 = v537;
          }

          v532 = v533;
          --v531;
        }

        while (v531);
        v692 = v334;
      }

      v539 = v523;
      v678 = v20;
      v540 = div_s(1, (v20 - 24)) * v530;
      v541 = v523 + v515;
      if (v541 >= 0x8000)
      {
        v692 = 1;
        v541 = 0x7FFF;
      }

      v542 = v523 << 13;
      v543 = 2 * v540;
      LOWORD(v544) = v541 + v530;
      if ((v541 + v530) >= 0x8000)
      {
        v692 = 1;
        LOWORD(v544) = 0x7FFF;
      }

      v702.i32[0] = 1610629120;
      v545 = (v515 << 12) - v542;
      v546 = v542 - v543;
      if (v540 < 0 && v546 < 0)
      {
        v692 = 1;
        v546 = 0x7FFFFFFF;
      }

      if (v545 < 0 && ((v545 - 393216) ^ v545) < 0)
      {
        v692 = 1;
      }

      else if (v545 >= 393216)
      {
        goto LABEL_1058;
      }

      if (v546 < 0 && ((v546 - 245760) ^ v546) < 0)
      {
        v692 = 1;
        goto LABEL_1055;
      }

      if (v546 < 245760)
      {
LABEL_1055:
        if (!v544)
        {
          LOWORD(v550) = v544;
          v551 = v544;
          v552 = v331;
LABEL_1140:
          if (v540 < 0 && ((v543 - 786432) ^ v543) < 0)
          {
            v692 = 1;
LABEL_1272:
            v702.i32[0] = 805322752;
            LOWORD(v555) = v544;
            LOWORD(v544) = v550;
            v554 = v688;
            goto LABEL_1273;
          }

          if (v540 <= 393216)
          {
            goto LABEL_1272;
          }

          if (v551 > -32481)
          {
            v603 = (v551 - 288);
            v588 = v603 & ~(v603 >> 31);
            if (v603 > 0)
            {
              v551 = 288;
            }
          }

          else
          {
            v588 = 0;
            v692 = 1;
          }

          if (v550 > -32513)
          {
            v604 = (v550 - 256);
            if (v604 >= 1)
            {
              LOWORD(v588) = v604 + v588;
              if ((v588 & 0x8000) != 0)
              {
                v692 = 1;
                LOWORD(v550) = 256;
                v588 = 0x7FFF;
              }

              else
              {
                v588 = v588;
                LOWORD(v550) = 256;
              }
            }
          }

          else
          {
            v692 = 1;
          }

          if (v544 > -32673)
          {
            v622 = (v544 - 96);
            if (v622 >= 1)
            {
              v588 += v622;
              if (v588 >= 0x8000)
              {
                v692 = 1;
                LOWORD(v588) = 0x7FFF;
              }

              LOWORD(v544) = 96;
              goto LABEL_1243;
            }
          }

          else
          {
            v692 = 1;
          }

          if (!v588)
          {
            goto LABEL_1272;
          }

LABEL_1243:
          v623 = v588 >> 1;
          if (v551 > -32481)
          {
            if (v551 == 288)
            {
              LOWORD(v550) = v623 + v550;
              if (v552 > -32481)
              {
                v624 = (v331 - 288);
              }

              else
              {
                v692 = 1;
                v624 = -32768;
              }

              v544 = v624 - v550;
              if (v544 >= 0x8000)
              {
                v692 = 1;
                v551 = 288;
                goto LABEL_1267;
              }

              if (v544 > -32769)
              {
                v551 = 288;
                goto LABEL_1272;
              }

              v692 = 1;
              v551 = 288;
LABEL_1270:
              LOWORD(v544) = 0x8000;
              goto LABEL_1272;
            }
          }

          else
          {
            v692 = 1;
          }

          v551 += v623;
          if (v550 > -32513)
          {
            v625 = v550 == 256;
          }

          else
          {
            v625 = 0;
            v692 = 1;
          }

          v626 = v552 - v551;
          if (v626 < 0x8000)
          {
            if (v626 <= -32769)
            {
              v692 = 1;
              v626 = -32768;
            }
          }

          else
          {
            v692 = 1;
            v626 = 0x7FFF;
          }

          if (!v625)
          {
            v550 = v626 - v544;
            if (v550 < 0x8000)
            {
              if (v550 <= -32769)
              {
                v692 = 1;
                LOWORD(v550) = 0x8000;
              }
            }

            else
            {
              v692 = 1;
              LOWORD(v550) = 0x7FFF;
            }

            goto LABEL_1272;
          }

          v544 = v626 - v550;
          if (v544 >= 0x8000)
          {
            v692 = 1;
LABEL_1267:
            LOWORD(v544) = 0x7FFF;
            goto LABEL_1272;
          }

          if (v544 > -32769)
          {
            goto LABEL_1272;
          }

          v692 = 1;
          goto LABEL_1270;
        }

        v658 = v15;
        v676 = v333;
        v656 = 2 * v540;
        v661 = v540;
        if (v544 == 0xFFFF)
        {
          v547 = 15;
        }

        else
        {
          v553 = (v544 ^ (v544 >> 15));
          if (v553 >= 0x4000)
          {
            v547 = 0;
          }

          else
          {
            v547 = 0;
            do
            {
              v553 = (2 * v553);
              ++v547;
            }

            while (v553 < 0x4000);
          }
        }

        v557 = shl(v544, v547, &v692);
        v558 = div_s(0x4000, v557);
        v559 = v515 * v331;
        v560 = 2 * v559;
        v672 = 2 * v558;
        if (v547 == 0x7FFF)
        {
          v561 = 0x7FFF;
        }

        else
        {
          v561 = v547 + 1;
        }

        v669 = v561;
        v562 = L_shl(((((2 * v559) & 0xFFFE) * v558) >> 15) + 2 * v558 * (v559 >> 15), v561);
        v563 = (v562 >> 16) * v544;
        v564 = 2 * v563;
        if (v563 == 0x40000000)
        {
          v564 = 0x7FFFFFFF;
        }

        if (v547 == 0x7FFF || v563 == 0x40000000)
        {
          v692 = 1;
        }

        v565 = v560 - v564;
        if ((v564 ^ v560) < 0 && (v565 ^ v560) < 0)
        {
          v692 = 1;
          if (v559 < 0)
          {
            goto LABEL_1091;
          }
        }

        else if (v565 < 1)
        {
LABEL_1091:
          v569 = HIWORD(v562);
          goto LABEL_1096;
        }

        if (v562 <= 2147418111)
        {
          v566 = (v562 + 0x10000) >> 16;
        }

        else
        {
          v692 = 1;
          v566 = 0x7FFF;
        }

        v567 = v566 * v544;
        v568 = v560 - 2 * v567;
        if ((v560 ^ (2 * v567)) < 0 && (v568 ^ v560) < 0)
        {
          v692 = 1;
          if (v559 < 0)
          {
            goto LABEL_1091;
          }
        }

        else if (v568 < 0)
        {
          goto LABEL_1091;
        }

        if (v562 >> 16 < 0x7FFF)
        {
          v569 = HIWORD(v562) + 1;
        }

        else
        {
          v692 = 1;
          LOWORD(v569) = 0x7FFF;
        }

LABEL_1096:
        v655 = v569;
        v570 = v539 * v331;
        v571 = 2 * v570;
        v572 = L_shl(((((2 * v570) & 0xFFFE) * v558) >> 15) + v672 * (v570 >> 15), v669);
        v573 = (v572 >> 16) * v544;
        v574 = 2 * v573;
        if (v573 == 0x40000000)
        {
          v574 = 0x7FFFFFFF;
        }

        if (v547 == 0x7FFF || v573 == 0x40000000)
        {
          v692 = 1;
        }

        v575 = v571 - v574;
        if ((v574 ^ v571) < 0 && (v575 ^ v571) < 0)
        {
          v692 = 1;
          if (v570 < 0)
          {
            goto LABEL_1112;
          }
        }

        else if (v575 < 1)
        {
LABEL_1112:
          v550 = HIWORD(v572);
          goto LABEL_1117;
        }

        if (v572 <= 2147418111)
        {
          v576 = (v572 + 0x10000) >> 16;
        }

        else
        {
          v692 = 1;
          v576 = 0x7FFF;
        }

        v577 = v576 * v544;
        v578 = v571 - 2 * v577;
        if ((v571 ^ (2 * v577)) < 0 && (v578 ^ v571) < 0)
        {
          v692 = 1;
          if (v570 < 0)
          {
            goto LABEL_1112;
          }
        }

        else if (v578 < 0)
        {
          goto LABEL_1112;
        }

        if (v572 >> 16 < 0x7FFF)
        {
          v550 = HIWORD(v572) + 1;
        }

        else
        {
          v692 = 1;
          LOWORD(v550) = 0x7FFF;
        }

LABEL_1117:
        v579 = v530 * v331;
        v580 = 2 * v579;
        v581 = L_shl(((((2 * v579) & 0xFFFE) * v558) >> 15) + v672 * (v579 >> 15), v669);
        v582 = (v581 >> 16) * v544;
        v583 = 2 * v582;
        if (v582 == 0x40000000)
        {
          v583 = 0x7FFFFFFF;
        }

        if (v547 == 0x7FFF || v582 == 0x40000000)
        {
          v692 = 1;
        }

        v584 = v580 - v583;
        v333 = v676;
        if ((v583 ^ v580) < 0 && (v584 ^ v580) < 0)
        {
          v692 = 1;
          v551 = v655;
          if (v579 < 0)
          {
            goto LABEL_1133;
          }
        }

        else
        {
          v551 = v655;
          if (v584 < 1)
          {
LABEL_1133:
            v544 = HIWORD(v581);
            v15 = v658;
            v552 = v331;
LABEL_1139:
            v540 = v661;
            v543 = v656;
            goto LABEL_1140;
          }
        }

        if (v581 <= 2147418111)
        {
          v585 = (v581 + 0x10000) >> 16;
        }

        else
        {
          v692 = 1;
          v585 = 0x7FFF;
        }

        v586 = v585 * v544;
        v587 = v580 - 2 * v586;
        if ((v580 ^ (2 * v586)) < 0 && (v587 ^ v580) < 0)
        {
          v692 = 1;
          if (v579 < 0)
          {
            goto LABEL_1133;
          }
        }

        else if (v587 < 0)
        {
          goto LABEL_1133;
        }

        v552 = v331;
        if (v581 >> 16 < 0x7FFF)
        {
          v544 = HIWORD(v581) + 1;
        }

        else
        {
          v692 = 1;
          LOWORD(v544) = 0x7FFF;
        }

        v15 = v658;
        goto LABEL_1139;
      }

LABEL_1058:
      if (!v544)
      {
        v551 = v544;
        v554 = v688;
        LOWORD(v555) = v331;
        goto LABEL_1273;
      }

      v548 = v544;
      v659 = v15;
      v677 = v333;
      if (v544 == 0xFFFF)
      {
        v549 = 15;
      }

      else
      {
        v556 = (v544 ^ (v544 >> 15));
        if (v556 >= 0x4000)
        {
          v549 = 0;
        }

        else
        {
          v549 = 0;
          do
          {
            v556 = (2 * v556);
            ++v549;
          }

          while (v556 < 0x4000);
        }
      }

      v589 = shl(v544, v549, &v692);
      v590 = div_s(0x4000, v589);
      v591 = v515 * v331;
      v592 = 2 * v591;
      v673 = 2 * v590;
      if (v549 == 0x7FFF)
      {
        v593 = 0x7FFF;
      }

      else
      {
        v593 = v549 + 1;
      }

      v594 = L_shl((((2 * v591) * v590) >> 15) + v673 * (v591 >> 15), v593);
      v595 = (v594 >> 16) * v544;
      v596 = 2 * v595;
      if (v595 == 0x40000000)
      {
        v596 = 0x7FFFFFFF;
      }

      if (v549 == 0x7FFF || v595 == 0x40000000)
      {
        v692 = 1;
      }

      v597 = v592 - v596;
      v598 = HIWORD(v594);
      if ((v596 ^ v592) < 0 && (v597 ^ v592) < 0)
      {
        v692 = 1;
        if (v591 < 0)
        {
          goto LABEL_1166;
        }
      }

      else if (v597 < 1)
      {
LABEL_1166:
        v15 = v659;
        v602 = v691;
        goto LABEL_1179;
      }

      if (v594 <= 2147418111)
      {
        v599 = (v594 + 0x10000) >> 16;
      }

      else
      {
        v692 = 1;
        v599 = 0x7FFF;
      }

      v600 = v599 * v544;
      v601 = v592 - 2 * v600;
      if ((v592 ^ (2 * v600)) < 0 && (v601 ^ v592) < 0)
      {
        v692 = 1;
        if (v591 < 0)
        {
          goto LABEL_1166;
        }
      }

      else if (v601 < 0)
      {
        goto LABEL_1166;
      }

      v602 = v691;
      if (v594 >> 16 < 0x7FFF)
      {
        LOWORD(v598) = HIWORD(v594) + 1;
      }

      else
      {
        v692 = 1;
        LOWORD(v598) = 0x7FFF;
      }

      v15 = v659;
LABEL_1179:
      v605 = v590;
      v606 = 32 * v602;
      if (32 * v602 != (32 * v602))
      {
        v692 = 1;
        v606 = 0x7FFF;
        if (v602 <= 0)
        {
          v606 = 0x8000;
        }
      }

      v333 = v677;
      v607 = 60292 * v606 + ((36700 * v606) >> 15);
      if (v523 > 0xFFu)
      {
        v692 = 1;
        if (v523 > 0)
        {
          v608 = 0x7FFF;
        }

        else
        {
          v608 = 0x8000;
        }

        if (v607 == 0x80000000 && v608 == 0x8000)
        {
          v609 = 0x7FFFFFFF;
          goto LABEL_1193;
        }
      }

      else
      {
        v608 = v523 << 7;
      }

      v609 = ((v607 * v608) >> 15) + 2 * v608 * (v607 >> 16);
      if (v609 == 0x80000000 && v605 == -32768)
      {
        v610 = 0x7FFFFFFF;
        v609 = 0x80000000;
        goto LABEL_1194;
      }

LABEL_1193:
      v610 = ((v609 * v605) >> 15) + v673 * (v609 >> 16);
LABEL_1194:
      if (v549 > -32758)
      {
        v611 = v549 - 11;
      }

      else
      {
        v692 = 1;
        v611 = 0x8000;
      }

      v554 = v688;
      v612 = L_shl(v610, v611);
      v613 = (v612 >> 16) * v544;
      if (v613 == 0x40000000)
      {
        v692 = 1;
        v614 = 0x7FFFFFFF;
      }

      else if ((2 * v613 - 0x80000) >> 20 == 4095)
      {
        v614 = v613 << 13;
      }

      else
      {
        v614 = (v613 >> 31) ^ 0x7FFFFFFF;
      }

      v615 = v609 - v614;
      v544 = HIWORD(v612);
      if ((v614 ^ v609) < 0 && (v615 ^ v609) < 0)
      {
        v692 = 1;
        if (v609 < 0)
        {
          goto LABEL_1227;
        }
      }

      else if (v615 < 1)
      {
        goto LABEL_1227;
      }

      v616 = v609 + 2;
      if (v609 >= 0 && ((v609 + 2) ^ v609) < 0)
      {
        v616 = 0x7FFFFFFF;
      }

      v617 = (v612 + 0x10000) >> 16;
      if (v612 > 2147418111)
      {
        v617 = 0x7FFF;
      }

      if (v609 >= 0 && ((v609 + 2) ^ v609) < 0 || v612 > 2147418111)
      {
        v692 = 1;
      }

      v618 = v617 * v548;
      if (v618 == 0x40000000)
      {
        v692 = 1;
        v619 = 0x7FFFFFFF;
      }

      else if ((2 * v618 - 0x80000) >> 20 == 4095)
      {
        v619 = v618 << 13;
      }

      else
      {
        v619 = (v618 >> 31) ^ 0x7FFFFFFF;
      }

      v620 = v616 - v619;
      if ((v619 ^ v616) < 0 && (v620 ^ v616) < 0)
      {
        v692 = 1;
        if (v616 < 0)
        {
          goto LABEL_1227;
        }

LABEL_1224:
        if (v612 >> 16 < 0x7FFF)
        {
          LOWORD(v544) = HIWORD(v612) + 1;
        }

        else
        {
          v692 = 1;
          LOWORD(v544) = 0x7FFF;
        }

        goto LABEL_1227;
      }

      if ((v620 & 0x80000000) == 0)
      {
        goto LABEL_1224;
      }

LABEL_1227:
      v551 = v598;
      v621 = v602 - v598;
      if (v621 < 0x8000)
      {
        if (v621 <= -32769)
        {
          v692 = 1;
          v621 = -32768;
        }
      }

      else
      {
        v692 = 1;
        v621 = 0x7FFF;
      }

      v555 = v621 - v544;
      if (v555 < 0x8000)
      {
        if (v555 <= -32769)
        {
          v692 = 1;
          LOWORD(v555) = 0x8000;
        }
      }

      else
      {
        v692 = 1;
        LOWORD(v555) = 0x7FFF;
      }

LABEL_1273:
      if (v530 <= 2)
      {
        v544 = v555 + v544;
        if (v544 < 0x8000)
        {
          LOWORD(v555) = 0;
          if (v544 <= -32769)
          {
            v692 = 1;
            LOWORD(v544) = 0x8000;
          }
        }

        else
        {
          LOWORD(v555) = 0;
          v692 = 1;
          LOWORD(v544) = 0x7FFF;
        }
      }

      Bit_group_fx(&v693, &v698, 0, 16, v551, 5, &v706, v716, v702.i16, v702.u64 + 4);
      Bit_group_fx(&v693, &v698, 16, 24, v544, 6, &v706, v716, v702.i16, v702.u64 + 4);
      Bit_group_fx(&v693, &v698, 24, v554, v555, 7, &v706, v716, v702.i16, v702.u64 + 4);
      result = (a10 + 44);
      v223 = a10;
      LODWORD(a6) = v685;
      v291 = v666;
      v627 = a10;
      if (v333)
      {
        v628 = v678;
        v629 = &v706;
        v630 = a11;
        do
        {
          v631 = v629->u64 + 4;
          v632 = v629 < &v706 || v631 > v716;
          v633 = v632 || v629 > v631;
          v634 = v630 + 1;
          v635 = !v633 && v630 >= a11;
          v636 = !v635 || v634 > v682;
          if (v636 || v630 > v634)
          {
            goto LABEL_1327;
          }

          v638 = v629->i32[0];
          v629 = (v629 + 4);
          *v630++ = v638 >> 18;
        }

        while (--v628);
      }

      if (v685 < 1)
      {
        v639 = 0;
      }

      else
      {
        v639 = 0;
        v640 = v685;
        v641 = &v706;
        do
        {
          v642 = v641->u64 + 4;
          v644 = v641 < &v706 || v642 > v716 || v641 > v642;
          v645 = v627 + 1;
          if (v644 || v627 < a10 || v645 > v679 || v627 > v645)
          {
            goto LABEL_1327;
          }

          v650 = v641->i32[0];
          v641 = (v641 + 4);
          v649 = v650;
          v651 = v650 ^ v639;
          v652 = v650 + v639;
          v653 = ((v650 + v639) ^ v639) > -1 || v651 < 0;
          v639 = (v639 >> 31) ^ 0x7FFFFFFF;
          if (v653)
          {
            v639 = v652;
          }

          *v627++ = (v649 >> 5) >> 16;
          --v640;
        }

        while (v640);
        if (v639 < 0)
        {
          v654 = v639 >> 5;
LABEL_1323:
          v18 = v663;
          v500 = HIWORD(v654);
          goto LABEL_955;
        }
      }

      v654 = v639 >> 5;
      goto LABEL_1323;
    }
  }

  if (v169 < a11)
  {
    goto LABEL_1327;
  }

  v684 = a6;
  if (a6 > (v169 - a11) >> 1)
  {
    goto LABEL_1327;
  }

  v224 = 0;
  v225 = *v15;
  v226.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v226.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v714 = v226;
  v715 = v226;
  v712 = v226;
  v713 = v226;
  v710 = v226;
  v711 = v226;
  v708 = v226;
  v709 = v226;
  *v707 = v226;
  *&v707[16] = v226;
  v706 = v226;
  v702.i32[0] = 0;
  do
  {
    v227 = &v706.i8[v224 * 4 + 4];
    if (&v706.i8[v224 * 4] < &v706 || v227 > v716 || &v706.i8[v224 * 4] > v227)
    {
      goto LABEL_1327;
    }

    v706.i32[v224++] = 0;
  }

  while (v224 != 44);
  v230 = 0;
  v660 = result - 32000;
  if ((result & 0x80000000) != 0 && (((result - 32000) ^ result) & 0x80000000) != 0)
  {
    v230 = 1;
    v702.i32[0] = 1;
    v660 = 0x80000000;
  }

  v687 = v225;
  v657 = v15;
  v662 = v18;
  if ((a3 - 4) >= 2)
  {
    if (a6 < 1)
    {
      v231 = 0;
    }

    else
    {
      v231 = 0;
      v232 = Nb;
      v233 = &v693;
      v234 = a6;
      do
      {
        v235 = v232 + 1;
        v237 = v232 < Nb || v235 > LNb || v232 > v235;
        v238 = v233->u64 + 2;
        if (v237 || v233 < &v693 || v238 > &v698 || v233 > v238)
        {
          goto LABEL_1327;
        }

        v243 = *v232++;
        v242 = v243;
        v244 = v233->i16[0];
        v233 = (v233 + 2);
        v245 = v244 * v242;
        v246 = v245 + v231;
        v207 = (v245 ^ v231) < 0;
        v247 = (v245 + v231) ^ v231;
        v249 = v207 || v247 >= 0;
        v231 = (v231 >> 31) ^ 0x7FFFFFFF;
        if (v249)
        {
          v231 = v246;
        }

        else
        {
          v230 = 1;
        }

        --v234;
      }

      while (v234);
      v702.i32[0] = v230;
    }

    v271 = (v231 - 3 * v225);
    if (((3 * v225) ^ v231) < 0 && ((v271 ^ v231) & 0x80000000) != 0)
    {
      v271 = (v231 >> 31) ^ 0x7FFFFFFFu;
      v702.i32[0] = 1;
    }

    v272 = &band_end_HQ[a6];
    v273 = v272 - 1;
    if (v272 - 1 < band_end_HQ || v272 > band_start_harm || v273 > v272)
    {
      goto LABEL_1327;
    }

    v274 = *v273;
    v275 = 2 * v274;
    if (2 * v274 != (2 * v274))
    {
      v702.i32[0] = 1;
      if (v274 > 0)
      {
        v275 = 0x7FFF;
      }

      else
      {
        v275 = -32768;
      }
    }

    v276 = v275 + v274;
    if (v276 < 0x8000)
    {
      if (v276 > -32769)
      {
        if (!v276)
        {
          v277 = v276;
          goto LABEL_434;
        }

        if (v276 == 0xFFFF)
        {
          v277 = 15;
          goto LABEL_434;
        }
      }

      else
      {
        v702.i32[0] = 1;
        LOWORD(v276) = 0x8000;
      }
    }

    else
    {
      v702.i32[0] = 1;
      LOWORD(v276) = 0x7FFF;
    }

    v278 = (v276 ^ (v276 >> 15));
    if (v278 >= 0x4000)
    {
      v277 = 0;
    }

    else
    {
      v277 = 0;
      do
      {
        v278 = (2 * v278);
        ++v277;
      }

      while (v278 < 0x4000);
    }

LABEL_434:
    v279 = shl(v276, v277, &v702);
    v280 = div_s(0x4000, v279);
    v281 = v280;
    if (v280)
    {
      if (v280 == 0xFFFF)
      {
        v281 = 15;
      }

      else
      {
        v282 = v280 ^ (v280 >> 15);
        if (v282 >= 0x4000)
        {
          v281 = 0;
        }

        else
        {
          v281 = 0;
          do
          {
            v282 = (2 * v282);
            ++v281;
          }

          while (v282 < 0x4000);
        }
      }
    }

    v292 = v281;
    result = shl(v280, v281, &v702);
    v670 = result;
    v293 = v292 - v277;
    if (v293 >= 0x8000)
    {
      goto LABEL_464;
    }

    if (v293 > -32769)
    {
      if (v293 >= 32739)
      {
LABEL_464:
        v702.i32[0] = 1;
        v674 = -32737;
        LODWORD(a6) = v685;
        v294 = v687;
        v295 = v271;
        goto LABEL_470;
      }

      v296 = v293 + 29;
    }

    else
    {
      v702.i32[0] = 1;
      v296 = -32739;
    }

    LODWORD(a6) = v685;
    v294 = v687;
    v295 = v271;
    v674 = 30 - v296;
LABEL_470:
    if (a6 >= 1)
    {
      v297 = 0;
      v298 = 0;
      v299 = 0;
      v300 = v702.i32[0];
      v301 = v674;
      if (v674 >= 0x7FFF)
      {
        v301 = 0x7FFF;
      }

      v667 = v301;
      v302 = &v706;
      do
      {
        v303 = v299;
        v304 = &v693.i8[v297 * 2 + 2];
        if (&v693.i8[v297 * 2] < &v693 || v304 > &v698 || &v693.i8[v297 * 2] > v304)
        {
          goto LABEL_1327;
        }

        v307 = v274 * v693.i16[v297];
        v308 = v307 - v295;
        v309 = v295 ^ v307;
        v310 = (v307 - v295) ^ v307;
        v311 = v307 >= 0 ? -1 : 0;
        if ((v309 & v310) >= 0)
        {
          v311 = v308;
        }

        else
        {
          v300 = 1;
        }

        v312 = &Nb[v297];
        if (&Nb[v297] < Nb || v312 + 1 > LNb || v312 > v312 + 1 || v302 < &v706 || v302->i64 + 4 > v716 || v302 > (v302->i64 + 4))
        {
          goto LABEL_1327;
        }

        v313 = *v312;
        result = (v311 * v313);
        if (result < 1)
        {
          v302->i32[0] = 0;
          v299 = v303;
        }

        else
        {
          v314 = v274;
          v315 = v295;
          v316 = v313 + v298;
          if (v316 <= -32768)
          {
            v317 = -32768;
          }

          else
          {
            v317 = v313 + v298;
          }

          if (v317 >= 0x7FFF)
          {
            v298 = 0x7FFF;
          }

          else
          {
            v298 = v317;
          }

          v318 = Mpy_32_16_1(result, v670);
          if (v316 != v316 || v674 > 0x7FFF)
          {
            v300 = 1;
          }

          result = L_shl(v318, v667);
          v302->i32[0] = result;
          v299 = (result + v303);
          if (((result ^ v303) & 0x80000000) != 0)
          {
            LODWORD(a6) = v685;
            v294 = v687;
            v295 = v315;
            v274 = v314;
          }

          else
          {
            LODWORD(a6) = v685;
            v294 = v687;
            v295 = v315;
            v274 = v314;
            if (((v299 ^ v303) & 0x80000000) != 0)
            {
              v299 = (v303 >> 31) ^ 0x7FFFFFFFu;
              v300 = 1;
            }
          }
        }

        ++v297;
        v302 = (v302 + 4);
      }

      while (v684 != v297);
      v702.i32[0] = v300;
      goto LABEL_620;
    }

    goto LABEL_619;
  }

  v250 = a15;
  if (a15 < 1)
  {
    v251 = 0;
  }

  else
  {
    v251 = 0;
    v252 = a15;
    v253 = Nb;
    v254 = &v693;
    do
    {
      v255 = v253 + 1;
      v257 = v253 < Nb || v255 > LNb || v253 > v255;
      v258 = v254->u64 + 2;
      if (v257 || v254 < &v693 || v258 > &v698 || v254 > v258)
      {
        goto LABEL_1327;
      }

      v263 = *v253++;
      v262 = v263;
      v264 = v254->i16[0];
      v254 = (v254 + 2);
      v265 = v264 * v262;
      v266 = v265 + v251;
      v207 = (v265 ^ v251) < 0;
      v267 = (v265 + v251) ^ v251;
      v269 = v207 || v267 >= 0;
      v251 = (v251 >> 31) ^ 0x7FFFFFFF;
      if (v269)
      {
        v251 = v266;
      }

      else
      {
        v230 = 1;
      }

      --v252;
    }

    while (v252);
    v702.i32[0] = v230;
    v250 = a15;
  }

  v320 = (v251 - 3 * v225);
  if (((3 * v225) ^ v251) < 0 && ((v320 ^ v251) & 0x80000000) != 0)
  {
    v320 = (v251 >> 31) ^ 0x7FFFFFFFu;
    v702.i32[0] = 1;
  }

  v321 = &band_end_HQ[v250];
  v322 = v321 - 1;
  if (v321 - 1 < band_end_HQ || v321 > band_start_harm || v322 > v321)
  {
    goto LABEL_1327;
  }

  v323 = *v322;
  v324 = 2 * v323;
  if (2 * v323 != (2 * v323))
  {
    v702.i32[0] = 1;
    if (v323 > 0)
    {
      v324 = 0x7FFF;
    }

    else
    {
      v324 = -32768;
    }
  }

  v325 = v324 + v323;
  if (v325 < 0x8000)
  {
    if (v325 > -32769)
    {
      if (!v325)
      {
        v335 = v325;
        goto LABEL_548;
      }

      if (v325 == 0xFFFF)
      {
        v335 = 15;
        goto LABEL_548;
      }
    }

    else
    {
      v702.i32[0] = 1;
      LOWORD(v325) = 0x8000;
    }
  }

  else
  {
    v702.i32[0] = 1;
    LOWORD(v325) = 0x7FFF;
  }

  v336 = (v325 ^ (v325 >> 15));
  if (v336 >= 0x4000)
  {
    v335 = 0;
  }

  else
  {
    v335 = 0;
    do
    {
      v336 = (2 * v336);
      ++v335;
    }

    while (v336 < 0x4000);
  }

LABEL_548:
  v337 = shl(v325, v335, &v702);
  v338 = div_s(0x4000, v337);
  v339 = v338;
  if (v338)
  {
    if (v338 == 0xFFFF)
    {
      v339 = 15;
    }

    else
    {
      v340 = v338 ^ (v338 >> 15);
      if (v340 >= 0x4000)
      {
        v339 = 0;
      }

      else
      {
        v339 = 0;
        do
        {
          v340 = (2 * v340);
          ++v339;
        }

        while (v340 < 0x4000);
      }
    }
  }

  v347 = v339;
  result = shl(v338, v339, &v702);
  v671 = result;
  v348 = v347 - v335;
  if (v348 >= 0x8000)
  {
    goto LABEL_571;
  }

  if (v348 > -32769)
  {
    if (v348 >= 32739)
    {
LABEL_571:
      v702.i32[0] = 1;
      v675 = -32737;
      LODWORD(a6) = v685;
      v294 = v687;
      v349 = v320;
      goto LABEL_577;
    }

    v350 = v348 + 29;
  }

  else
  {
    v702.i32[0] = 1;
    v350 = -32739;
  }

  LODWORD(a6) = v685;
  v294 = v687;
  v349 = v320;
  v675 = 30 - v350;
LABEL_577:
  if (a6 >= 1)
  {
    v351 = 0;
    v298 = 0;
    v299 = 0;
    v352 = v702.i32[0];
    v353 = v675;
    if (v675 >= 0x7FFF)
    {
      v353 = 0x7FFF;
    }

    v668 = v353;
    v354 = &v706;
    do
    {
      v355 = v299;
      v356 = &v693.i8[v351 * 2 + 2];
      if (&v693.i8[v351 * 2] < &v693 || v356 > &v698 || &v693.i8[v351 * 2] > v356)
      {
        goto LABEL_1327;
      }

      v359 = v323 * v693.i16[v351];
      v360 = v359 - v349;
      v361 = v349 ^ v359;
      v362 = (v359 - v349) ^ v359;
      v363 = v359 >= 0 ? -1 : 0;
      if ((v361 & v362) >= 0)
      {
        v363 = v360;
      }

      else
      {
        v352 = 1;
      }

      v364 = &Nb[v351];
      if (&Nb[v351] < Nb || v364 + 1 > LNb || v364 > v364 + 1 || v354 < &v706 || v354->i64 + 4 > v716 || v354 > (v354->i64 + 4))
      {
        goto LABEL_1327;
      }

      v365 = *v364;
      result = (v363 * v365);
      if (result < 1)
      {
        v354->i32[0] = 0;
        v299 = v355;
      }

      else
      {
        v366 = v349;
        v367 = v365 + v298;
        if (v367 <= -32768)
        {
          v368 = -32768;
        }

        else
        {
          v368 = v365 + v298;
        }

        if (v368 >= 0x7FFF)
        {
          v298 = 0x7FFF;
        }

        else
        {
          v298 = v368;
        }

        v369 = Mpy_32_16_1(result, v671);
        if (v367 != v367 || v675 > 0x7FFF)
        {
          v352 = 1;
        }

        result = L_shl(v369, v668);
        v354->i32[0] = result;
        v299 = (result + v355);
        if (((result ^ v355) & 0x80000000) != 0)
        {
          LODWORD(a6) = v685;
          v294 = v687;
          v349 = v366;
        }

        else
        {
          LODWORD(a6) = v685;
          v294 = v687;
          v349 = v366;
          if (((v299 ^ v355) & 0x80000000) != 0)
          {
            v299 = (v355 >> 31) ^ 0x7FFFFFFFu;
            v352 = 1;
          }
        }
      }

      ++v351;
      v354 = (v354 + 4);
    }

    while (v684 != v351);
    v702.i32[0] = v352;
    goto LABEL_620;
  }

LABEL_619:
  LODWORD(v299) = 0;
  v298 = 0;
LABEL_620:
  v681 = v294 << 15;
  while (1)
  {
LABEL_621:
    v371 = v299 + 0x4000;
    if ((v299 & 0x80000000) == 0 && ((v371 ^ v299) & 0x80000000) != 0)
    {
      v702.i32[0] = 1;
      v371 = 0x7FFFFFFF;
LABEL_626:
      v372 = v371 >> 15;
      goto LABEL_627;
    }

    if (v299 > -16385)
    {
      goto LABEL_626;
    }

    v372 = v371 >> 15;
LABEL_627:
    if (((v372 ^ v294) & 0x80000000) == 0 || (((v372 - v294) ^ v372) & 0x80000000) == 0)
    {
      break;
    }

    v702.i32[0] = 1;
LABEL_631:
    v373 = v299 - v681;
    if (((v681 ^ v299) & 0x80000000) != 0 && ((v373 ^ v299) & 0x80000000) != 0)
    {
      v702.i32[0] = 1;
      v373 = (v299 >> 31) ^ 0x7FFFFFFF;
LABEL_637:
      v375 = v373 ^ (v373 >> 31);
      if (v375 <= 0x3FFFFFFF)
      {
        v376 = 0;
        do
        {
          v374 = v376;
          v377 = v375 >> 29;
          v375 *= 2;
          ++v376;
        }

        while (!v377);
        if (v376 == 0x8000)
        {
          v702.i32[0] = 1;
          v374 = 0x8000;
        }

        goto LABEL_643;
      }

LABEL_642:
      v374 = -1;
      goto LABEL_643;
    }

    if (!v373)
    {
      goto LABEL_642;
    }

    if (v373 != -1)
    {
      goto LABEL_637;
    }

    v374 = 30;
LABEL_643:
    v378 = v298;
    if (v298)
    {
      if (v298 == 0xFFFF)
      {
        v298 = 15;
      }

      else
      {
        v379 = (v298 ^ (v378 >> 15));
        if (v379 >= 0x4000)
        {
          v298 = 0;
        }

        else
        {
          v298 = 0;
          do
          {
            v379 = (2 * v379);
            ++v298;
          }

          while (v379 < 0x4000);
        }
      }
    }

    v380 = L_shl(v373, v374);
    v381 = shl(v378, v298, &v702);
    v382 = div_s(v380 >> 16, v381);
    v383 = v298 - v374;
    if (v383 < 0x8000)
    {
      if (v383 <= -32769)
      {
        v702.i32[0] = 1;
        LOWORD(v383) = 0x8000;
      }
    }

    else
    {
      v702.i32[0] = 1;
      LOWORD(v383) = 0x7FFF;
    }

    result = shl(v382, v383, &v702);
    LODWORD(v299) = 0;
    v298 = 0;
    LODWORD(a6) = v685;
    v294 = v687;
    if (v685 >= 1)
    {
      v298 = 0;
      LODWORD(v299) = 0;
      v384 = &v706;
      v385 = v702.i32[0];
      v386 = v684;
      v387 = Nb;
      while (1)
      {
        v388 = v384->u64 + 4;
        if (v384 < &v706 || v388 > v716 || v384 > v388)
        {
          goto LABEL_1327;
        }

        v391 = v384->i32[0];
        if (v384->i32[0] < 1)
        {
          goto LABEL_691;
        }

        if (v387 < Nb || v387 + 1 > LNb || v387 > v387 + 1)
        {
          goto LABEL_1327;
        }

        v392 = *v387;
        v393 = 2 * v392 * result;
        if (v392 * result == 0x40000000)
        {
          v385 = 1;
          v393 = 0x7FFFFFFF;
        }

        v394 = v391 - v393;
        if ((v393 ^ v391) < 0 && (v394 ^ v391) < 0)
        {
          break;
        }

        v384->i32[0] = v394;
        if (v394 >= 1)
        {
          goto LABEL_674;
        }

        v384->i32[0] = 0;
LABEL_691:
        ++v387;
        v384 = (v384 + 4);
        if (!--v386)
        {
          v702.i32[0] = v385;
          goto LABEL_621;
        }
      }

      v394 = 0x7FFFFFFF;
      v384->i32[0] = 0x7FFFFFFF;
      v385 = 1;
LABEL_674:
      v395 = v392 + v298;
      if (v395 <= -32768)
      {
        v396 = -32768;
      }

      else
      {
        v396 = v395;
      }

      if (v395 != v395)
      {
        v385 = 1;
      }

      if (v396 >= 0x7FFF)
      {
        v298 = 0x7FFF;
      }

      else
      {
        v298 = v396;
      }

      v397 = v394 + v299;
      v207 = v299 < 0;
      v398 = v397 ^ v299;
      if (v207 || v398 >= 0)
      {
        LODWORD(v299) = v397;
      }

      else
      {
        v385 = 1;
        LODWORD(v299) = 0x7FFFFFFF;
      }

      goto LABEL_691;
    }
  }

  if (v372 != v294)
  {
    goto LABEL_631;
  }

  if (a6 < 1)
  {
    v403 = 0;
    LOWORD(v402) = 0;
    LOWORD(v407) = v294;
    goto LABEL_748;
  }

  v401 = 0;
  LOWORD(v402) = 0;
  v403 = 0;
  if (v660 < 0)
  {
    v404 = 2;
  }

  else
  {
    v404 = 3;
  }

  v405 = v702.i32[0];
  result = 0x7FFFLL;
  v406 = &v706;
  LOWORD(v407) = v294;
  while (2)
  {
    v408 = v406->u64 + 4;
    if (v406 < &v706 || v408 > v716 || v406 > v408)
    {
      goto LABEL_1327;
    }

    v411 = v406->i32[0];
    if (v406->i32[0] >= 1)
    {
      v412 = &LNb[v401];
      if (&LNb[v401] < LNb || v412 + 1 > UVG1CB_NB || v412 > v412 + 1)
      {
        goto LABEL_1327;
      }

      v413 = v404 + *v412;
      v414 = v413 << 16 >> 1;
      if (v413 >= 0x8000)
      {
        v405 = 1;
        v414 = 1073709056;
      }

      v415 = v411 - v414;
      if ((v414 ^ v411) < 0 && (v415 ^ v411) < 0)
      {
        v405 = 1;
LABEL_716:
        v416 = &Nb[v401];
        if (&Nb[v401] < Nb || v416 + 1 > LNb || v416 > v416 + 1)
        {
          goto LABEL_1327;
        }

        v417 = *v416;
        v418 = v411 - (v417 << 15);
        if ((v411 ^ (v417 << 15)) < 0 && (v418 ^ v411) < 0)
        {
          v405 = 1;
          goto LABEL_723;
        }

        if (v418 <= 0)
        {
          v421 = v417 << 15;
          v422 = v407 - v417;
          if (v422 <= -32768)
          {
            v423 = -32768;
          }

          else
          {
            v423 = v422;
          }

          if (v422 != v422)
          {
            v405 = 1;
          }

          if (v423 >= 0x7FFF)
          {
            LOWORD(v407) = 0x7FFF;
          }

          else
          {
            LOWORD(v407) = v423;
          }

          v406->i32[0] = v421;
          v294 = v687;
        }

        else
        {
LABEL_723:
          v294 = v687;
          v419 = v417 + v402;
          if (v419 <= -32768)
          {
            v420 = -32768;
          }

          else
          {
            v420 = v419;
          }

          if (v419 != v419)
          {
            v405 = 1;
          }

          if (v420 >= 0x7FFF)
          {
            LOWORD(v402) = 0x7FFF;
          }

          else
          {
            LOWORD(v402) = v420;
          }

          if ((v411 ^ v403) < 0 || (((v411 + v403) ^ v403) & 0x80000000) == 0)
          {
            v403 += v411;
          }

          else
          {
            v403 = (v403 >> 31) ^ 0x7FFFFFFF;
            v405 = 1;
          }
        }
      }

      else
      {
        if ((v415 & 0x80000000) == 0)
        {
          goto LABEL_716;
        }

        v406->i32[0] = 0;
      }
    }

    ++v401;
    v406 = (v406 + 4);
    if (v684 != v401)
    {
      continue;
    }

    break;
  }

  v702.i32[0] = v405;
LABEL_748:
  while (2)
  {
    v424 = v403 + 0x4000;
    if ((v403 & 0x80000000) == 0 && (v424 ^ v403) < 0)
    {
      v702.i32[0] = 1;
      v424 = 0x7FFFFFFF;
      goto LABEL_753;
    }

    if (v403 > -16385)
    {
LABEL_753:
      v425 = v424 >> 15;
    }

    else
    {
      v425 = v424 >> 15;
    }

    if (((v425 ^ v407) & 0x80000000) != 0 && (((v425 - v407) ^ v425) & 0x80000000) != 0)
    {
      v702.i32[0] = 1;
    }

    else if (v425 == v407)
    {
      goto LABEL_872;
    }

    v426 = v403 - (v407 << 15);
    if ((v403 ^ (v407 << 15)) < 0 && (v426 ^ v403) < 0)
    {
      v426 = (v403 >> 31) ^ 0x7FFFFFFF;
      v702.i32[0] = 1;
    }

    v427 = v402;
    if (v427 >= 1)
    {
      if (v426 >= 0)
      {
        v428 = v426;
      }

      else
      {
        v428 = -v426;
      }

      if (v426 == 0x80000000)
      {
        v429 = 0x7FFFFFFF;
      }

      else
      {
        v429 = v428;
      }

      if ((v429 - 1) > 0x3FFFFFFE)
      {
        v431 = -1;
      }

      else
      {
        v430 = 0;
        do
        {
          v431 = v430;
          v432 = v428 >> 29;
          v428 *= 2;
          ++v430;
        }

        while (!v432);
        if (v430 == 0x8000)
        {
          v702.i32[0] = 1;
          v431 = 0x8000;
        }
      }

      if (v402)
      {
        if (v402 == 0xFFFF)
        {
          v433 = 15;
        }

        else if (v427 >= 0x4000)
        {
          v433 = 0;
        }

        else
        {
          v433 = 0;
          do
          {
            v402 = (2 * v402);
            ++v433;
          }

          while (v402 < 0x4000);
        }
      }

      else
      {
        v433 = v402;
      }

      v434 = L_shl(v429, v431);
      v435 = shl(v427, v433, &v702);
      v436 = div_s(v434 >> 16, v435);
      v437 = v433 - v431;
      if (v437 < 0x8000)
      {
        if (v437 <= -32769)
        {
          v702.i32[0] = 1;
          LOWORD(v437) = 0x8000;
        }
      }

      else
      {
        v702.i32[0] = 1;
        LOWORD(v437) = 0x7FFF;
      }

      result = shl(v436, v437, &v702);
      LODWORD(a6) = v685;
      if (v685 < 1)
      {
        v471 = 0;
        v294 = v687;
        goto LABEL_892;
      }

      LOWORD(v402) = 0;
      v403 = 0;
      if (result == -32768)
      {
        LOWORD(v438) = 0x7FFF;
      }

      else
      {
        v438 = -result;
      }

      if (v426 >= 0)
      {
        LOWORD(v438) = result;
      }

      v439 = &v706;
      v440 = v702.i32[0];
      v441 = Nb;
      v442 = v684;
      v294 = v687;
      while (1)
      {
        v443 = v439->u64 + 4;
        v445 = v439 < &v706 || v443 > v716 || v439 > v443;
        v446 = v441 + 1;
        if (v445 || v441 < Nb || v446 > LNb || v441 > v446)
        {
          goto LABEL_1327;
        }

        v450 = v439->i32[0];
        v451 = *v441;
        v452 = v439->i32[0] - (v451 << 15);
        result = v439->i32[0] ^ (v451 << 15);
        if ((result & 0x80000000) != 0 && (result = v452 ^ v450, (result & 0x80000000) != 0))
        {
          v440 = 1;
          if (v450 < 0)
          {
            goto LABEL_848;
          }
        }

        else if (v452 < 1)
        {
          goto LABEL_848;
        }

        v453 = v451 << 15;
        result = (v451 * v438);
        v454 = 2 * result;
        if (result == 0x40000000)
        {
          v454 = 0x7FFFFFFF;
        }

        v455 = v450 - v454;
        v456 = (v454 ^ v450) & ((v450 - v454) ^ v450);
        v457 = (v450 >> 31) ^ 0x7FFFFFFF;
        if (v456 < 0 == __OFSUB__(result, 0x40000000))
        {
          v457 = v455;
        }

        v439->i32[0] = v457;
        v458 = v457 - v453;
        if ((v453 ^ v457) < 0 && (v458 ^ v457) < 0)
        {
          v440 = 1;
          if ((v457 & 0x80000000) == 0)
          {
            goto LABEL_836;
          }
        }

        else
        {
          v461 = v456 >= 0;
          if (result == 0x40000000)
          {
            v440 = 1;
          }

          if (!v461)
          {
            v440 = 1;
          }

          if (v458 >= 1)
          {
LABEL_836:
            v462 = v451 + v402;
            if (v462 <= -32768)
            {
              v463 = -32768;
            }

            else
            {
              v463 = v462;
            }

            if (v462 != v462)
            {
              v440 = 1;
            }

            if (v463 >= 0x7FFF)
            {
              LOWORD(v402) = 0x7FFF;
            }

            else
            {
              LOWORD(v402) = v463;
            }

            if ((v457 ^ v403) < 0 || (((v457 + v403) ^ v403) & 0x80000000) == 0)
            {
              v403 += v457;
            }

            else
            {
              v403 = (v403 >> 31) ^ 0x7FFFFFFF;
              v440 = 1;
            }

            goto LABEL_848;
          }
        }

        v459 = v407 - v451;
        if (v459 <= -32768)
        {
          v460 = -32768;
        }

        else
        {
          v460 = v459;
        }

        if (v459 != v459)
        {
          v440 = 1;
        }

        if (v460 >= 0x7FFF)
        {
          LOWORD(v407) = 0x7FFF;
        }

        else
        {
          LOWORD(v407) = v460;
        }

        v439->i32[0] = v453;
LABEL_848:
        ++v441;
        v439 = (v439 + 4);
        if (!--v442)
        {
          v702.i32[0] = v440;
          break;
        }
      }
    }

    if (v403)
    {
      continue;
    }

    break;
  }

  if (a6 < 1)
  {
    goto LABEL_891;
  }

  v464 = v702.i32[0];
  v465 = v684 + 1;
  v466 = &v706.i32[v684 - 1];
  v467 = &Nb[v684 - 1];
  while (1)
  {
    v468 = v466 + 1;
    if (v466 < &v706 || v468 > v716 || v466 > v468)
    {
      goto LABEL_1327;
    }

    if (*v466 < 1)
    {
      goto LABEL_868;
    }

    if (v467 < Nb || v467 + 1 > LNb || v467 > v467 + 1)
    {
      goto LABEL_1327;
    }

    v407 = *v467 + v407;
    if (v407 >= 0x8000)
    {
      break;
    }

    if (v407 > -32769)
    {
      *v466 = 0;
      if ((v407 & 0x80000000) == 0)
      {
        goto LABEL_869;
      }
    }

    else
    {
      *v466 = 0;
      LOWORD(v407) = 0x8000;
      v464 = 1;
    }

LABEL_868:
    --v465;
    --v466;
    --v467;
    if (v465 <= 1)
    {
LABEL_869:
      v702.i32[0] = v464;
      goto LABEL_872;
    }
  }

  v702.i32[0] = 1;
  *v466 = 0;
LABEL_872:
  if (a6 < 1)
  {
LABEL_891:
    v471 = 0;
    goto LABEL_892;
  }

  v471 = 0;
  v472 = v702.i32[0];
  v473 = &v706;
  v474 = a11;
  v475 = v684;
  do
  {
    v476 = v473->u64 + 4;
    if (v473 < &v706 || v476 > v716 || v473 > v476)
    {
      goto LABEL_1327;
    }

    v479 = v473->i32[0];
    v473 = (v473 + 4);
    *v474++ = v479 >> 12;
    v480 = v471 + (v479 >> 12);
    if (v480 <= -32768)
    {
      v481 = -32768;
    }

    else
    {
      v481 = v480;
    }

    if (v480 != v480)
    {
      v472 = 1;
    }

    if (v481 >= 0x7FFF)
    {
      v471 = 0x7FFF;
    }

    else
    {
      v471 = v481;
    }

    --v475;
  }

  while (v475);
  v702.i32[0] = v472;
LABEL_892:
  v482 = 8 * v294;
  if (8 * v294 != (8 * v294))
  {
    v702.i32[0] = 1;
    if (v294 > 0)
    {
      v482 = 0x7FFF;
    }

    else
    {
      v482 = -32768;
    }
  }

  v483 = v471 - v482;
  v15 = v657;
  v19 = a14;
  v18 = v662;
  v223 = a10;
  v291 = v666;
  v484 = a10;
  if (v483 >= 0x8000)
  {
    v702.i32[0] = 1;
    v483 = 0x7FFF;
    goto LABEL_901;
  }

  if (v483 < -32768)
  {
    v702.i32[0] = 1;
    v483 = -32768;
    goto LABEL_930;
  }

  if (v483 >= 1)
  {
LABEL_901:
    if (a6 >= 1)
    {
      v485 = 0;
      v486 = 0;
      v487 = v702.i32[0];
      while (1)
      {
        v488 = &Nb[v485 + 1];
        if (&Nb[v485] < Nb || v488 > LNb || &Nb[v485] > v488)
        {
          goto LABEL_1327;
        }

        v491 = a11[v486];
        v492 = Nb[v486];
        if (v492 > 0)
        {
          v493 = 0x7FFF;
        }

        else
        {
          v493 = -32768;
        }

        result = (8 * v492);
        if (result == 8 * v492)
        {
          v494 = 8 * v492;
        }

        else
        {
          v487 = 1;
          v494 = v493;
        }

        v495 = v483 + v494;
        if (v495 <= -32768)
        {
          v496 = -32768;
        }

        else
        {
          v496 = v495;
        }

        if (v495 != v495)
        {
          v487 = 1;
        }

        v497 = v496 >= 0x7FFF ? 0x7FFF : v496;
        v498 = v491 - v497;
        if (v498 >= 0x8000)
        {
          break;
        }

        if (v498 >= -32768)
        {
          if ((v498 & 0x80000000) == 0)
          {
            goto LABEL_936;
          }
        }

        else
        {
          v487 = 1;
        }

        ++v486;
        ++v485;
        if (v684 == v486)
        {
          v702.i32[0] = v487;
          v223 = a10;
          v484 = a10;
          goto LABEL_942;
        }
      }

      v487 = 1;
LABEL_936:
      v702.i32[0] = v487;
      v223 = a10;
      v484 = a10;
      goto LABEL_937;
    }

LABEL_953:
    LOWORD(v500) = 0;
    goto LABEL_954;
  }

LABEL_930:
  if (a6 < 1)
  {
    goto LABEL_953;
  }

  v486 = 0;
  while (1)
  {
    v491 = a11[v486];
    if (v491 >= 1)
    {
      break;
    }

    if (v684 == ++v486)
    {
      goto LABEL_942;
    }
  }

LABEL_937:
  v499 = v491 - v483;
  if (v499 < 0x8000)
  {
    if (v499 <= -32769)
    {
      v702.i32[0] = 1;
      LOWORD(v499) = 0x8000;
    }
  }

  else
  {
    v702.i32[0] = 1;
    LOWORD(v499) = 0x7FFF;
  }

  a11[v486] = v499;
LABEL_942:
  LOWORD(v500) = 0;
  do
  {
    if (v484 < v223)
    {
      goto LABEL_1327;
    }

    v501 = v484;
    v502 = v484 + 1;
    if (v502 > v679 || v501 > v502)
    {
      goto LABEL_1327;
    }

    v223 = a10;
    v503 = *v680++;
    v500 = v503 + v500;
    if (v500 >= 0x7FFF)
    {
      v500 = 0x7FFF;
    }

    if (v500 <= -32768)
    {
      LOWORD(v500) = 0x8000;
    }

    *v501 = v503 >> 3;
    v484 = v501 + 1;
    --v684;
  }

  while (v684);
  v291 = v666;
  if ((v500 & 0x8000) != 0)
  {
    v500 = v500 >> 3;
  }

  else
  {
LABEL_954:
    LOWORD(v500) = v500 >> 3;
  }

LABEL_955:
  *v18 = v500;
LABEL_956:
  *v19 = v665;
  if ((v291 | 2) != 2)
  {
LABEL_970:
    if (v664)
    {
      if (a6 < 1)
      {
        v509 = -1;
      }

      else
      {
        v509 = a6 - 1;
        do
        {
          v510 = &v223[v509];
          v511 = (v510 + 1);
          if (v510 < v223 || v511 > &v223[a6] || v510 > v511)
          {
            goto LABEL_1327;
          }

          if (*v510)
          {
            goto LABEL_986;
          }

          v96 = v509-- == 0;
        }

        while (!v96);
        v509 = a6 - 1;
      }

LABEL_986:
      *v19 = v509;
      if (a15 > v509)
      {
        v504 = a15 - 1;
        goto LABEL_988;
      }
    }

    goto LABEL_989;
  }

  if (a6 < 1)
  {
    v504 = -1;
  }

  else
  {
    v504 = v665;
    do
    {
      v505 = &v223[v504];
      v506 = (v505 + 1);
      if (v505 < v223 || v506 > &v223[a6] || v505 > v506)
      {
        goto LABEL_1327;
      }

      if (*v505)
      {
        goto LABEL_988;
      }

      v96 = v504-- == 0;
    }

    while (!v96);
    v504 = v665;
  }

LABEL_988:
  *v19 = v504;
LABEL_989:
  *v15 -= *v18;
  return result;
}

unint64_t normalizecoefs(unint64_t result, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = &dicn_inv[*(a3 + 2 * v6)];
      v8 = v7 + 1;
      v9 = v7 < dicn_inv || v8 > lsf_init;
      if (v9 || v7 > v8)
      {
        break;
      }

      if (*(a5 + 2 * v6) < *(a6 + 2 * v6))
      {
        v11 = *v7;
        v12 = *(a6 + 2 * v6) - *(a5 + 2 * v6);
        v13 = (result + 4 * *(a5 + 2 * v6));
        while (v13 >= result && (v13 + 1) <= a2 && v13 <= v13 + 1)
        {
          *v13 = v11 * *v13;
          ++v13;
          if (!--v12)
          {
            goto LABEL_16;
          }
        }

        break;
      }

LABEL_16:
      if (++v6 == a4)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t pvq_core_enc(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, __int16 *a13, unint64_t a14, __int16 *a15, unint64_t a16, __int16 *a17, unint64_t a18, __int16 *a19, unint64_t a20, unint64_t a21, unint64_t a22, __int16 a23)
{
  v23 = a7;
  v93 = *MEMORY[0x1E69E9840];
  v89 = -1;
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v88[13] = v27;
  v88[12] = v27;
  v88[11] = v27;
  v88[10] = v27;
  v88[9] = v27;
  v88[8] = v27;
  v88[7] = v27;
  v88[6] = v27;
  v88[5] = v27;
  v88[4] = v27;
  v88[3] = v27;
  v88[2] = v27;
  v88[1] = v27;
  v88[0] = v27;
  memset(__b, 170, sizeof(__b));
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v86[9] = v28;
  v86[10] = v28;
  v86[7] = v28;
  v86[8] = v28;
  v86[5] = v28;
  v86[6] = v28;
  v86[3] = v28;
  v86[4] = v28;
  v86[2] = v28;
  v86[0] = v28;
  v86[1] = v28;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v83[3] = v28;
  v83[4] = v28;
  v83[1] = v28;
  v83[2] = v28;
  v83[0] = v28;
  v82 = 8 * a6;
  if (v23 > 0x2C || a16 < a15 || a14 < a13 || (a16 - a15) >> 1 < v23 || v23 > (a14 - a13) >> 1)
  {
    goto LABEL_78;
  }

  v29 = assign_gain_bits(a23, v23, a13, a15, v83, &v82);
  v77 = v82 >> 3;
  v78 = v29;
  pvq_encode_frame(a1, a2, a3, a4, a5, v86, __b, v30, a19, a20, __b, v88, a9, a10, a11, a12, a13, a14, v23, a15, v82 >> 3, a23);
  if (a17 && v23)
  {
    v31 = v23;
    v32 = a17;
    v33 = a19;
    while (v32 >= a17 && (v32 + 1) <= a18 && v32 <= v32 + 1 && v33 >= a19 && (v33 + 1) <= a20 && v33 <= v33 + 1)
    {
      v34 = *v33++;
      if (v34 <= 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = *v32;
      }

      *v32++ = v35;
      if (!--v31)
      {
        goto LABEL_19;
      }
    }

LABEL_78:
    __break(0x5519u);
  }

LABEL_19:
  if (v23)
  {
    v36 = 0;
    v92 = -1431655766;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v91[6] = v37;
    v91[5] = v37;
    v91[4] = v37;
    v91[3] = v37;
    v91[2] = v37;
    v91[1] = v37;
    v91[0] = v37;
    v38 = a15;
    v39 = a19;
    v40 = v23;
    do
    {
      *(v91 + v36) = v36;
      if (v38 < a15 || (v38 + 1) > a16 || v38 > v38 + 1 || v39 < a19 || (v39 + 1) > a20 || v39 > v39 + 1)
      {
        goto LABEL_78;
      }

      v41 = *v39++;
      if (v41 <= 0)
      {
        v42 = 0;
      }

      else
      {
        v42 = *v38;
      }

      *v38++ = v42;
      ++v36;
      --v40;
    }

    while (v40);
    get_max_pulses(a9, a10, a11, a12, v91, a19, a20, v23, __b, v88, a21, a22);
    fine_gain_pred(a9, a10, a11, a12, a13, a14, v91, v43, a19, a20, a21, a22, a15, a16, v23, a4, a5, __b, v88, v88, a23);
    v44 = 0;
    do
    {
      v45 = v83 + *(v91 + v44);
      v46 = v45 + 1;
      if (v45 < v83 || v46 > &v85 || v45 >= v46)
      {
        goto LABEL_78;
      }

      v49 = *v45;
      v50 = *(v88 + v44);
      if (v50 != 0.0 && v49 >= 1)
      {
        v52 = log10((*(v86 + v44) / v50));
        v53 = &finegain + 2 * (v49 - 1);
        v54 = v53 + 2;
        if (v53 < &finegain || v54 > &sort_ptr || v53 >= v54)
        {
          goto LABEL_78;
        }

        v57 = &gain_cb_size[(v49 - 1)];
        v58 = v57 + 1;
        v59 = v57 < gain_cb_size || v58 > &word_19B36F512;
        if (v59 || v57 >= v58)
        {
          goto LABEL_78;
        }

        v61 = *v53;
        v62 = v53[1];
        if (*v53 > v62)
        {
          goto LABEL_78;
        }

        v63 = *v57;
        if ((v63 & 0x80000000) != 0 || (v62 - v61) >> 2 < v63)
        {
          goto LABEL_78;
        }

        if (v63 < 1)
        {
          v65 = 0;
        }

        else
        {
          v64 = 0;
          v65 = 0;
          v66 = v52;
          v67 = v66 * 20.0;
          v68 = 1.0e16;
          do
          {
            if ((((v67 - *(v61 + 4 * v64)) * (v67 - *(v61 + 4 * v64))) + 0.0) < v68)
            {
              v65 = v64;
              v68 = ((v67 - *(v61 + 4 * v64)) * (v67 - *(v61 + 4 * v64))) + 0.0;
            }

            ++v64;
          }

          while (v63 != v64);
        }

        v69 = v61 + 4 * v63;
        v70 = (v61 + 4 * v65);
        v71 = v70 + 1;
        v72 = v70 < v61 || v71 > v69;
        if (v72 || v70 >= v71)
        {
          goto LABEL_78;
        }

        v74 = *v70;
        push_indice(a1, 1402, v65, v49);
        v75 = __exp10((v74 * 0.05));
        *(v88 + v44) = v50 * v75;
      }

      ++v44;
    }

    while (v44 != v23);
    apply_gain_11468(v91, a9, a10, a11, a12, v23, v88, &v90, a4, a5);
  }

  return (v77 + v78);
}

uint64_t har_est(unint64_t a1, unint64_t a2, signed int a3, unsigned __int16 *a4, unsigned __int16 *a5, _WORD *a6, unsigned __int16 *a7, uint64_t a8, __int16 *a9, unint64_t a10, __int16 *a11, __int16 *a12)
{
  v16 = a3;
  v218[0] = *MEMORY[0x1E69E9840];
  bzero(v217, 0xA00uLL);
  v17 = 0;
  v216 = -1;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v215[5] = v18;
  v215[6] = v18;
  v215[3] = v18;
  v215[4] = v18;
  v215[1] = v18;
  v215[2] = v18;
  v215[0] = v18;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v213[12] = v18;
  v212[1] = v18;
  *v213 = v18;
  v212[0] = v18;
  *&v210[12] = v18;
  v209[1] = v18;
  *v210 = v18;
  v209[0] = v18;
  *&v207[12] = v18;
  v206[1] = v18;
  *v207 = v18;
  v206[0] = v18;
  v204 = 0;
  memset(v203, 0, sizeof(v203));
  *&v201[12] = v18;
  v200[1] = v18;
  *v201 = v18;
  v200[0] = v18;
  *&v198[12] = v18;
  v197[1] = v18;
  *v198 = v18;
  v197[0] = v18;
  *&v195[12] = v18;
  v194[1] = v18;
  *v195 = v18;
  v194[0] = v18;
  do
  {
    v19 = v206 + v17 + 2;
    if ((v206 + v17) < v206 || v19 > v208 || v206 + v17 > v19)
    {
      goto LABEL_361;
    }

    *(v206 + v17) = 0;
    v17 += 2;
  }

  while (v17 != 60);
  for (i = 0; i != 60; i += 2)
  {
    v23 = v209 + i + 2;
    if ((v209 + i) < v209 || v23 > v211 || v209 + i > v23)
    {
      goto LABEL_361;
    }

    *(v209 + i) = 0;
  }

  v192 = a5;
  if (a3 >= 81)
  {
    v26 = 0;
    while (1)
    {
      v27 = (a1 + v26 + 320);
      v28 = a1 + v26 + 324;
      v29 = v27 < a1 || v28 > a2;
      v30 = v29 || v27 > v28;
      v31 = &v217[v26 / 4 + 80];
      v32 = &v217[v26 / 4 + 81];
      v33 = !v30 && v31 >= v217;
      v34 = !v33 || v32 > v218;
      if (v34 || v31 > v32)
      {
        break;
      }

      *v31 = fabsf(*v27);
      v26 += 4;
      if (4 * a3 - 320 == v26)
      {
        goto LABEL_38;
      }
    }

LABEL_361:
    __break(0x5519u);
  }

LABEL_38:
  v36 = ((a3 + ((a3 >> 27) & 0xF)) << 16) >> 20;
  if (vcvts_n_f32_s32(a3, 4uLL) > v36)
  {
    ++v36;
  }

  if (16 * v36 > a3)
  {
    do
    {
      v37 = &v217[v16];
      v38 = v37 + 1;
      v39 = v37 < v217 || v38 > v218;
      if (v39 || v37 > v38)
      {
        goto LABEL_361;
      }

      *v37 = 0.0;
    }

    while (16 * v36 > ++v16);
  }

  if (v36 < 6)
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v86 = 0;
    v88 = 0;
    LOWORD(v84) = v206[0];
LABEL_162:
    v90 = 80;
    goto LABEL_163;
  }

  v41 = 80;
  for (j = 5; j < v36; ++j)
  {
    v43 = 0;
    v44 = 0;
    v45 = v41;
    v46 = v212 + j;
    v47 = v46 - 1;
    v50 = v46 <= v214 && v47 <= v46 && v47 >= v212;
    v41 = v45 + 16;
    v51 = 0.0;
    do
    {
      v52 = &v217[v45];
      v53 = v52 + 1;
      if (v52 < v217 || v53 > v218 || v52 > v53)
      {
        goto LABEL_361;
      }

      v56 = *v52;
      if (*v52 > v51)
      {
        v44 = v45;
        v51 = *v52;
      }

      if (j >= 6 && v56 != 0.0 && v56 == v51)
      {
        if (!v50)
        {
          goto LABEL_361;
        }

        if (v44 - *v47 < 8)
        {
          v44 = v45;
          v51 = *v52;
        }
      }

      LOWORD(v45) = v45 + 1;
      v33 = v43++ >= 0xF;
    }

    while (!v33);
    v58 = v215 + 4 * j;
    if (v58 < v215)
    {
      goto LABEL_361;
    }

    if (v58 + 4 > v217)
    {
      goto LABEL_361;
    }

    if (v58 > v58 + 4)
    {
      goto LABEL_361;
    }

    *(v215 + j) = v51;
    v59 = v212 + j;
    if (v59 < v212 || v59 + 1 > v214 || v59 > v59 + 1)
    {
      goto LABEL_361;
    }

    *v59 = v44;
  }

  v60 = 5;
  for (k = 5; k < v36; v60 = ++k)
  {
    if (k >= 6)
    {
      v62 = v212 + k;
      v63 = v62 + 1;
      if (v62 < v212 || v63 > v214 || v62 > v63)
      {
        goto LABEL_361;
      }

      if (*v62)
      {
        v66 = (v60 - 1);
        v67 = v212 + v66;
        if (v67 < v212 || v67 + 1 > v214 || v67 > v67 + 1)
        {
          goto LABEL_361;
        }

        v68 = *v67;
        if (*v67 && *v62 - v68 <= 9)
        {
          v69 = v215 + k;
          if (v69 < v215)
          {
            goto LABEL_361;
          }

          if (v69 + 1 > v217)
          {
            goto LABEL_361;
          }

          if (v69 > v69 + 1)
          {
            goto LABEL_361;
          }

          v70 = v215 + v66;
          if (v70 < v215 || v70 + 1 > v217 || v70 > v70 + 1)
          {
            goto LABEL_361;
          }

          if (*v69 <= *v70)
          {
            *v69 = *v70;
            *v62 = v68;
          }

          *v70 = 0.0;
          *v67 = 0;
        }
      }
    }
  }

  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  LOWORD(v75) = 5;
  do
  {
    v76 = v212 + v75;
    v77 = v76 + 1;
    if (v76 < v212 || v77 > v214 || v76 > v77)
    {
      goto LABEL_361;
    }

    v75 = v75;
    v80 = *v76;
    if (v80)
    {
      v81 = v206 + v71;
      if (v81 < v206 || v81 + 1 > v208 || v81 > v81 + 1)
      {
        goto LABEL_361;
      }

      *v81 = v80;
      if (v80 > 139)
      {
        if (v80 > 0xC7)
        {
          ++v74;
        }

        else
        {
          ++v73;
        }
      }

      else
      {
        ++v72;
      }

      v82 = v215 + v75;
      if (v82 < v215)
      {
        goto LABEL_361;
      }

      if (v82 + 1 > v217)
      {
        goto LABEL_361;
      }

      if (v82 > v82 + 1)
      {
        goto LABEL_361;
      }

      v83 = v203 + v71;
      if (v83 < v203 || v83 + 1 > &v205 || v83 > v83 + 1)
      {
        goto LABEL_361;
      }

      *v83 = *v82;
      ++v71;
    }

    LOWORD(v75) = v75 + 1;
  }

  while (v36 > v75);
  LOWORD(v84) = v206[0];
  if (v71 < 2)
  {
    v86 = 0;
    v88 = 0;
    goto LABEL_162;
  }

  v85 = 0;
  LOWORD(v86) = 0;
  v87 = *v203;
  v88 = v71 - 1;
  v89 = 2 * v71 - 2;
  v90 = 80;
  v91 = 1;
  v92 = v203;
  v93 = v206[0];
  do
  {
    v94 = v206 + v85 + 2;
    v95 = v206 + v85 + 4;
    if (v94 < v206 || v95 > v208 || v94 > v95)
    {
      goto LABEL_361;
    }

    if ((v206 + v85) < v206)
    {
      goto LABEL_361;
    }

    v98 = (v209 + v85);
    if ((v209 + v85) < v209)
    {
      goto LABEL_361;
    }

    if (v98 + 1 > v211)
    {
      goto LABEL_361;
    }

    if (v98 > v98 + 1)
    {
      goto LABEL_361;
    }

    v99 = *v94;
    v100 = v99 - v84;
    *v98 = v99 - v84;
    if (v92 < v203 || v92 + 1 > &v205 || v92 > v92 + 1)
    {
      goto LABEL_361;
    }

    if (v90 >= v100)
    {
      v90 = v100;
    }

    v101 = *v92++;
    v102 = v101;
    if (v101 > v87)
    {
      LOWORD(v86) = v91 - 1;
      v93 = v84;
      v87 = v102;
    }

    ++v91;
    v85 += 2;
    LOWORD(v84) = v99;
  }

  while (v89 != v85);
  v86 = v86;
  LOWORD(v84) = v93;
LABEL_163:
  v103 = v209 + v86;
  if (v103 < v209 || v103 + 1 > v211 || v103 > v103 + 1)
  {
    goto LABEL_361;
  }

  v105 = v74 < 2 && v73 < 2 && v72 < 2;
  if (v105 || v90 >= 80)
  {
    v108 = v72 == 1 && v73 == 1 && v74 < 2u;
    *a6 = v108;
  }

  v109 = v88;
  if (v88 <= 0)
  {
    mvs2s(v209, v211, v194, v196, v88);
LABEL_255:
    if (!*a6)
    {
      v150 = v192;
      v151 = *a7;
      if (!*a7)
      {
LABEL_358:
        v151 = v90;
      }

LABEL_359:
      *v150 = v151;
      return v84;
    }

    LOWORD(v123) = 0;
    v147 = v192;
    v119 = a9;
    goto LABEL_257;
  }

  v110 = *v103 + 10;
  v111 = v88;
  v112 = v209;
  v113 = v88;
  do
  {
    v114 = v112 + 1;
    if (v112 < v209 || v114 > v211 || v112 > v114)
    {
      goto LABEL_361;
    }

    if (v110 < *v112)
    {
      *v112 = 0;
    }

    ++v112;
    --v113;
  }

  while (v113);
  mvs2s(v209, v211, v194, v196, v88);
  if (v109 < 1)
  {
    goto LABEL_255;
  }

  v117 = v209;
  v118 = v111;
  v119 = a9;
  do
  {
    v120 = v117 + 1;
    if (v117 < v209 || v120 > v211 || v117 > v120)
    {
      goto LABEL_361;
    }

    *v117++ = -1;
    --v118;
  }

  while (v118);
  LOWORD(v123) = 0;
  v124 = v194;
  do
  {
    v125 = v124 + 1;
    if (v124 < v194 || v125 > v196 || v124 > v125)
    {
      goto LABEL_361;
    }

    if (*v124)
    {
      v128 = v209 + v123;
      if (v128 < v209 || v128 + 1 > v211 || v128 > v128 + 1)
      {
        goto LABEL_361;
      }

      *v128 = *v124;
      LOWORD(v123) = v123 + 1;
    }

    ++v124;
    --v111;
  }

  while (v111);
  if (!*a6)
  {
    v150 = v192;
    goto LABEL_303;
  }

  if (v123 < 1)
  {
    v147 = v192;
LABEL_257:
    v146 = 0;
    LOWORD(v130) = 0;
    v129 = 0;
    v134 = v123;
LABEL_258:
    if (v146 || v129 >= 2)
    {
      v149 = *a4;
    }

    else
    {
      v148 = (v73 | v74) == 0;
      if (v130)
      {
        v148 = 1;
      }

      v149 = *a4 << v148;
    }

    goto LABEL_271;
  }

  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = v123;
  v135 = v209;
  v136 = v123;
  do
  {
    v137 = v135 + 1;
    if (v135 < v209 || v137 > v211 || v135 > v137)
    {
      goto LABEL_361;
    }

    v140 = *v135;
    if (v140 <= 0)
    {
      v141 = v131;
    }

    else
    {
      v141 = v131 + 1;
    }

    v142 = v140 + v133;
    v143 = v140 < 1 || v90 + 20 < v140;
    if (v143)
    {
      v142 = v133;
    }

    else
    {
      v141 = v131;
    }

    if (v143)
    {
      v144 = v130;
    }

    else
    {
      v144 = v130 + 1;
    }

    v145 = v140 < 1 || v90 + 10 < v140;
    if (v145)
    {
      v133 = v142;
    }

    else
    {
      v132 += v140;
    }

    if (v145)
    {
      v131 = v141;
      v130 = v144;
    }

    else
    {
      ++v129;
    }

    v135 = v137;
    --v136;
  }

  while (v136);
  v146 = v131 != 0;
  if (v129)
  {
    *a4 = v132 / v129;
  }

  else
  {
    v129 = 0;
  }

  v147 = v192;
  if (v130 < 2)
  {
    goto LABEL_258;
  }

  v149 = v133 / v130;
LABEL_271:
  *v147 = v149;
  v152 = *a7;
  v153 = *a7;
  if (*a7)
  {
    v154 = v152 - v149;
    if (v154 < 0)
    {
      LOWORD(v154) = v149 - v152;
    }

    if (v154 < 10)
    {
      goto LABEL_285;
    }

    v155 = v152 - 2 * v149;
    if (v155 < 0)
    {
      v155 = 2 * v149 - v152;
    }

    if (v155 < 0xA)
    {
      goto LABEL_285;
    }

    v156 = v149 - 2 * v152;
    if (v156 < 0)
    {
      v156 = 2 * v152 - v149;
    }

    if (v156 <= 9)
    {
      LOWORD(v153) = 2 * v152;
LABEL_285:
      *v147 = v153;
      LOWORD(v149) = v153;
      goto LABEL_286;
    }
  }

  v157 = (((v153 + v149 + (((v153 + v149) & 0x8000u) >> 15)) << 16) >> 17) - v152;
  if (v157 < 0)
  {
    v157 = -v157;
  }

  if (v157 <= 1)
  {
    goto LABEL_285;
  }

LABEL_286:
  if (v130 <= 1 && v129 >= 2)
  {
    v158 = *a4;
    if (v158 > v149)
    {
      *v147 = *a4;
      LOWORD(v149) = v158;
    }
  }

  v159 = v206 + v134;
  v160 = (v159 - 1);
  if (v159 - 1 < v206 || v159 > v208 || v160 > v159)
  {
    goto LABEL_361;
  }

  v161 = *v160;
  v84 = *a12;
  v150 = v192;
  if (v84 < 1)
  {
    goto LABEL_297;
  }

  if (v84 >= a3)
  {
    goto LABEL_297;
  }

  v162 = *a7;
  if (v162 < 1 || v149 % v162)
  {
    goto LABEL_297;
  }

  v188 = v161 - v84;
  if (v161 - v84 < 0)
  {
    v188 = v84 - v161;
  }

  if (v188 >= 9 && v149 && (v188 / v149) >= 10 && ((v188 / v162) & 0xFFFE) >= 0xA)
  {
LABEL_297:
    LOWORD(v84) = v161;
    *a12 = v161;
  }

  if (!*a4 || !*v192)
  {
    *a6 = 0;
    goto LABEL_303;
  }

  if (!*a6)
  {
LABEL_303:
    v151 = *a7;
    if (!*a7)
    {
      if (v123 >= 1)
      {
        v163 = 0;
        v165 = (v119 + 1) <= a10 && v119 + 1 >= v119;
        v123 = v123;
        v166 = v206;
        do
        {
          v167 = v166 + 1;
          v169 = v166 < v206 || v167 > v208 || v166 > v167;
          if (v169 || !v165)
          {
            goto LABEL_361;
          }

          v170 = *v166;
          v171 = *v119;
          if (v171 - 1 <= v170 && v171 + *a11 + 1 > v170)
          {
            v172 = v200 + v163;
            if (v172 < v200 || v172 + 1 > v202 || v172 > v172 + 1)
            {
              goto LABEL_361;
            }

            *v172 = v170;
            ++v163;
          }

          ++v166;
          --v123;
        }

        while (v123);
        v173 = v163;
        if (v163 >= 2)
        {
          v174 = 0;
          v175 = 0;
          v176 = 2 * v163 - 2;
          do
          {
            v177 = v200 + v174 + 2;
            v178 = v200 + v174 + 4;
            v181 = v177 >= v200 && v178 <= v202 && v177 <= v178 && (v200 + v174) >= v200;
            v182 = v197 + v174;
            v183 = v197 + v174 + 2;
            if (!v181 || v182 < v197 || v183 > &v199 || v182 > v183)
            {
              goto LABEL_361;
            }

            v187 = *v177 - *(v200 + v174);
            *(v197 + v174) = v187;
            v175 += v187;
            v174 += 2;
          }

          while (v176 != v174);
          v151 = v175 / v173;
          v150 = v192;
          goto LABEL_359;
        }

        v150 = v192;
      }

      goto LABEL_358;
    }

    goto LABEL_359;
  }

  return v84;
}