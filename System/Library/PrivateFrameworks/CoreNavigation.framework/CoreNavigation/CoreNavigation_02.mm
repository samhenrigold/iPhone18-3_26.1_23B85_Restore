uint64_t sub_1D0B8768C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a3 + 8);
  v14.i64[1] = *(a4 + 8);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v14, xmmword_1D0E87BF0)))))
  {
    return 0xFFFFFFFFLL;
  }

  v131 = v13;
  v132 = v12;
  v133 = v11;
  v134 = v10;
  v135 = v8;
  v136 = v9;
  v128[0] = &unk_1F4CEF658;
  v128[1] = 0;
  v129 = vdupq_n_s64(0x7FF8000000000000uLL);
  v128[2] = 0;
  v130 = NAN;
  if ((*(**a5 + 48))(*a5, a1, v128))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(a3 + 32);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = sqrt(v23 * v23 + v22 * v22 + v24 * v24 + v25 * v25);
  if (fabs(v26) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = v22 / v26;
  v28 = v23 / v26;
  v29 = v24 / v26;
  v30 = v25 / v26;
  v31 = sqrt(v28 * v28 + v27 * v27 + v29 * v29 + v30 * v30);
  if (fabs(v31) >= 2.22044605e-16)
  {
    v33 = v27 / v31;
    v34 = v28 / v31;
    v35 = v29 / v31;
    v32 = v30 / v31;
  }

  else
  {
    v32 = 1.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
  }

  *v127 = v33;
  *&v127[1] = v34;
  *&v127[2] = v35;
  *&v127[3] = v32;
  v124 = 0x100000004;
  v123 = xmmword_1D0E7DCE0;
  v122 = &unk_1F4CDEBB8;
  v125 = v126;
  *v126 = v27;
  *&v126[1] = v28;
  *&v126[2] = v29;
  *&v126[3] = v30;
  v36 = *(a4 + 32);
  v37 = *v129.i64 - *v36;
  v38 = *&v129.i64[1] - v36[1];
  v39 = v130 - v36[2];
  cnrotation::CNRotation::RotationDerivativeQuaternion(v121, v127, v37, v38, v39);
  v118 = 0x100000004;
  v117 = xmmword_1D0E7DCE0;
  v116 = &unk_1F4CDEBB8;
  v119 = v120;
  v40 = sub_1D0B894B0(a6, &v116);
  v41 = *(a6 + 32);
  *v41 = v121[0];
  v41[1] = v121[1];
  v41[2] = v121[2];
  v41[3] = v121[3];
  v118 = 0x400000004;
  v117 = xmmword_1D0E7DCD0;
  v116 = &unk_1F4CDEB70;
  v119 = v120;
  v120[0] = 0;
  v120[5] = 0;
  *&v120[8] = -v38;
  *&v120[9] = v37;
  *&v120[1] = -v39;
  *&v120[2] = v38;
  v120[10] = 0;
  *&v120[13] = v38;
  *&v120[14] = v39;
  *&v120[4] = v39;
  *&v120[3] = -v37;
  *&v120[6] = -v37;
  *&v120[7] = -v38;
  *&v120[12] = v37;
  *&v120[11] = -v39;
  v120[15] = 0;
  v104 = 0x400000004;
  v102 = &unk_1F4CDEB70;
  v105 = &v106;
  v103 = xmmword_1D0E7DCD0;
  v114 = 0u;
  v111 = 0;
  v110 = 0u;
  v107 = 0;
  v106 = 0u;
  v109 = 0u;
  v113 = 0u;
  v115 = 0u;
  *&v114 = 0x3FF0000000000000;
  v112 = 0x3FF0000000000000;
  *&v110 = 0xBFF0000000000000;
  v108 = 0xBFF0000000000000;
  v93 = 0x400000004;
  v91 = &unk_1F4CDEB70;
  v94 = &v95;
  v92 = xmmword_1D0E7DCD0;
  v96 = 0u;
  v98 = 0;
  memset(&v99[8], 0, 40);
  v95 = 0u;
  v97 = 0u;
  v101 = 0u;
  v100 = 0x3FF0000000000000;
  *&v96 = 0x3FF0000000000000;
  __asm { FMOV            V3.2D, #-1.0 }

  *v99 = _Q3;
  v80 = 0x400000004;
  v78 = &unk_1F4CDEB70;
  v81 = v82;
  v79 = xmmword_1D0E7DCD0;
  v84 = 0u;
  v82[0] = 0;
  v90 = 0u;
  v87 = 0;
  v83 = 0u;
  v85 = 0u;
  v86 = 0u;
  v89 = 0u;
  *&v84 = 0x3FF0000000000000;
  v82[1] = 0xBFF0000000000000;
  *&v90 = 0x3FF0000000000000;
  v88 = 0xBFF0000000000000;
  v75 = 0x400000004;
  v74 = xmmword_1D0E7DCD0;
  v73 = &unk_1F4CDEB70;
  v76 = v77;
  v40.n128_u64[0] = 0.5;
  sub_1D0B8930C(&v116, &v73, v40);
  sub_1D0B894B0(a7, &v73);
  v60 = 0x100000004;
  v59 = xmmword_1D0E7DCE0;
  v58 = &unk_1F4CDEBB8;
  v61 = &v62;
  sub_1D0B89390(&v102, &v122, &v58);
  v55 = 0x100000004;
  v53 = &unk_1F4CDEBB8;
  v54 = xmmword_1D0E7DCE0;
  v56 = &v57;
  sub_1D0B89390(&v91, &v122, &v53);
  v65 = 0x200000004;
  v64 = xmmword_1D0E87A60;
  v63 = &unk_1F4CE45F8;
  v66 = &v67;
  sub_1D0B8876C(&v58, &v53, &v63);
  v50 = 0x100000004;
  v48 = &unk_1F4CDEBB8;
  v49 = xmmword_1D0E7DCE0;
  v51 = &v52;
  sub_1D0B89390(&v78, &v122, &v48);
  v70 = 0x300000004;
  v69 = xmmword_1D0E7DCF0;
  v68 = &unk_1F4CDEC00;
  v71 = &v72;
  sub_1D0B8876C(&v63, &v48, &v68);
  v75 = 0x300000004;
  *&v47.f64[1] = 0x40000000CLL;
  v74 = xmmword_1D0E7DCF0;
  v73 = &unk_1F4CDEC00;
  v76 = v77;
  v47.f64[0] = -0.5;
  sub_1D0B8930C(&v68, &v73, v47);
  sub_1D0B894B0(a8, &v73);
  return 0;
}

uint64_t sub_1D0B87CF0(uint64_t a1, double *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 == 1)
  {
    v9 = a1 + 48 * *(a1 + 40);
    v122 = *(v9 + 56);
    v123 = *(v9 + 72);
    v10 = *(v9 + 88);
    v121 = &unk_1F4CEF658;
    v124 = v10;
    *v117 = v122;
    v11 = CNTimeSpan::operator-(v117, a2, v122, a5);
    v120.i64[0] = v11;
    *&v120.i64[1] = v12;
    if (v11 < 0 || (*v13.i64 = v12, v12 < 0.0))
    {
      v11 = CNTimeSpan::operator-(v120.i64, v13, v14);
    }

    v113[0] = v11;
    *&v113[1] = v12;
    if (!sub_1D0B7CF88(v113, (a1 + 16)))
    {
      result = 0;
      *(a3 + 8) = v122;
      *(a3 + 24) = v123;
      *(a3 + 40) = v124;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = a1 + 48;
  v17 = a1 + 48 + 48 * *(a1 + 40);
  v121 = (*(*v17 + 16))(v17, a4, a5);
  v122.i64[0] = v18;
  v21 = CNTimeSpan::operator-(a2, &v121, v19, v20);
  v23.i64[0] = *(a1 + 32);
  v24 = llround(*v23.i64 * (v22 + v21));
  v25 = v24 & ~(v24 >> 31);
  v26 = *(a1 + 8);
  v27 = v26 - 1;
  if (v25 < v26 - 1)
  {
    v27 = v25;
  }

  v28 = *(a1 + 40);
  v29 = (v27 + v28) % 0x15E;
  v30 = v16 + 48 * v29;
  v122 = *(v30 + 8);
  v123 = *(v30 + 24);
  v31 = *(v30 + 40);
  v121 = &unk_1F4CEF658;
  v124 = v31;
  *v117 = &unk_1F4CEF658;
  *&v117[8] = 0;
  v118 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v117[16] = 0;
  v119 = 0x7FF8000000000000;
  v109 = a3;
  if (v29 == v28)
  {
    v32 = (v28 + 1) % v26;
    goto LABEL_20;
  }

  if (v29 == *(a1 + 44))
  {
    if (v29)
    {
      v26 = v29;
    }

LABEL_19:
    v32 = v26 - 1;
    goto LABEL_20;
  }

  *v113 = v122;
  if (sub_1D0B7CF88(v113, a2) || v29 == *(a1 + 44))
  {
    v26 = v29;
    if (!v29)
    {
      v26 = *(a1 + 8);
    }

    goto LABEL_19;
  }

  v32 = (v29 + 1) % *(a1 + 8);
LABEL_20:
  v110 = a1 + 48;
  v106 = v32;
  v33 = v16 + 48 * v32;
  *&v117[8] = *(v33 + 8);
  v118 = *(v33 + 24);
  v119 = *(v33 + 40);
  v120 = v122;
  v116 = *&v117[8];
  v34 = CNTimeSpan::operator-(a2, &v120, *&v117[8], v23);
  v36 = v35;
  v115.i64[0] = v34;
  *&v115.i64[1] = v35;
  v37 = a2;
  v40 = CNTimeSpan::operator-(a2, &v116, v38, v39);
  v44 = v40;
  v45 = v36;
  v47 = v36 < 0.0 || v34 < 0;
  v114.i64[0] = v40;
  *&v114.i64[1] = v41;
  v48 = v41;
  v49 = v34;
  v50 = v45;
  if (v47)
  {
    v49 = CNTimeSpan::operator-(v115.i64, v42, v43);
    v50 = v51;
  }

  v53 = v48 < 0.0 || v44 < 0;
  v111 = v44;
  v54 = v48;
  if (v53)
  {
    v111 = CNTimeSpan::operator-(v114.i64, v42, v43);
    v54 = v55;
  }

  v56 = v34;
  v57 = v45;
  if (v47)
  {
    v56 = CNTimeSpan::operator-(v115.i64, v42, v43);
    v57 = v58;
  }

  v59 = v44;
  *v42.i64 = v48;
  if (v53)
  {
    v59 = CNTimeSpan::operator-(v114.i64, v42, v43);
    v42.i64[0] = v60;
  }

  v61 = v37;
  if (!v56 && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v59 && (v42.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v62 = v56 <= v59, v56 == v59))
  {
    v62 = v57 <= *v42.i64;
  }

  if (!v62)
  {
    *&v113[1] = v122;
    v63 = v122;
    *&v113[3] = v123;
    v64 = v123;
    v113[5] = v124;
    v65 = v124;
    v122 = *(v33 + 8);
    v123 = *(v33 + 24);
    v124 = *(v33 + 40);
    v119 = v65;
    v118 = v64;
    *&v117[8] = v63;
    v120 = v122;
    v43 = v114;
    v66 = v115;
    v112 = v115;
    v114 = v115;
    v115 = v43;
    v45 = *&v43.i64[1];
    v34 = v43.i64[0];
    if (v43.i64[0] < 0 || (v50 = *&v43.i64[1], v49 = v43.i64[0], *&v43.i64[1] < 0.0))
    {
      v49 = CNTimeSpan::operator-(v115.i64, v66, v43);
      v50 = v67;
    }

    v48 = *&v114.i64[1];
    v44 = v114.i64[0];
    if (v114.i64[0] < 0 || (v54 = *&v114.i64[1], v111 = v114.i64[0], *&v114.i64[1] < 0.0))
    {
      v111 = CNTimeSpan::operator-(v114.i64, v66, v43);
      v54 = v68;
    }

    v29 = v106;
  }

  if (v29 != *(a1 + 44))
  {
    if (v34)
    {
      if (v34 < 1)
      {
        goto LABEL_55;
      }
    }

    else if (v45 <= 0.0)
    {
      goto LABEL_55;
    }

    if (v44)
    {
      if (v44 < 1)
      {
        goto LABEL_55;
      }
    }

    else if (v48 <= 0.0)
    {
      goto LABEL_55;
    }

    v69 = (v29 + 1) % 0x15E;
    v70 = v120.i64[1];
    v107 = v120.i64[0];
    while (1)
    {
      v71 = v110 + 48 * v69;
      v112.i64[0] = (*(*v71 + 16))(v71);
      v112.i64[1] = v72;
      v75 = CNTimeSpan::operator-(v61, &v112, v73, v74);
      v78 = v75;
      v113[0] = v75;
      *&v113[1] = v76;
      v79 = v76;
      if (v75 < 0 || (*v77.i64 = v76, v76 < 0.0))
      {
        v75 = CNTimeSpan::operator-(v113, v77, v43);
        v77.i64[0] = v80;
      }

      if (!v75 && (v77.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((v49 || (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v75 != v49)
      {
        if (v75 < v49)
        {
LABEL_82:
          *&v117[8] = v122;
          v118 = v123;
          v119 = v124;
          v122 = *(v71 + 8);
          v123 = *(v71 + 24);
          v124 = *(v71 + 40);
          v70 = v122.i64[1];
          v107 = v122.i64[0];
          v81 = &v115;
          v111 = v49;
          v43.i64[1] = v115.i64[1];
          v54 = v50;
          v49 = v75;
          v50 = *v77.i64;
          v114 = v115;
          goto LABEL_95;
        }
      }

      else if (*v77.i64 < v50)
      {
        goto LABEL_82;
      }

      if (!v111 && (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v75 == v111)
      {
        goto LABEL_87;
      }

      if (v75 >= v111)
      {
LABEL_88:
        if (v78)
        {
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }
        }

        else if (v79 >= 0.0)
        {
          goto LABEL_99;
        }
      }

LABEL_94:
      *&v117[8] = *(v71 + 8);
      v43 = *(v71 + 24);
      v118 = v43;
      v119 = *(v71 + 40);
      v81 = &v114;
      v111 = v75;
      v54 = *v77.i64;
LABEL_95:
      *v81 = *v113;
      if (v78)
      {
        if (v78 < 0)
        {
          goto LABEL_103;
        }
      }

      else if (v79 < 0.0)
      {
        goto LABEL_103;
      }

LABEL_99:
      if (v69 == 349)
      {
        v69 = 0;
      }

      else
      {
        ++v69;
      }

      if (v69 == *(a1 + 44))
      {
LABEL_103:
        v120.i64[0] = v107;
        v120.i64[1] = v70;
        goto LABEL_146;
      }
    }

    if (*v77.i64 < v50)
    {
      goto LABEL_82;
    }

LABEL_87:
    if (*v77.i64 >= v54)
    {
      goto LABEL_88;
    }

    goto LABEL_94;
  }

LABEL_55:
  if (v29 == *(a1 + 40))
  {
    goto LABEL_146;
  }

  if (v34)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_105;
  }

  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (v45 >= 0.0)
    {
      v94 = 0;
      goto LABEL_147;
    }

LABEL_105:
    if (v44)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (v48 >= 0.0)
    {
      goto LABEL_146;
    }

    if (v29)
    {
      v82 = v29 - 1;
    }

    else
    {
      v82 = 349;
    }

    v105 = v120.i64[1];
    v108 = v120.i64[0];
    while (1)
    {
      v83 = v110 + 48 * v82;
      v112.i64[0] = (*(*v83 + 16))(v83);
      v112.i64[1] = v84;
      v87 = CNTimeSpan::operator-(v61, &v112, v85, v86);
      v90 = v87;
      v113[0] = v87;
      *&v113[1] = v88;
      v91 = v88;
      if (v87 < 0 || (*v89.i64 = v88, v88 < 0.0))
      {
        v87 = CNTimeSpan::operator-(v113, v89, v43);
        v89.i64[0] = v92;
      }

      if (v87 || (v89.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if ((v49 || (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v87 != v49)
        {
          if (v87 >= v49)
          {
LABEL_126:
            if ((v111 || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v87 != v111)
            {
              if (v87 >= v111)
              {
                goto LABEL_130;
              }
            }

            else
            {
LABEL_129:
              if (*v89.i64 >= v54)
              {
LABEL_130:
                if (v90)
                {
                  if (v90 < 1)
                  {
                    goto LABEL_141;
                  }
                }

                else if (v91 <= 0.0)
                {
                  goto LABEL_140;
                }
              }
            }

            *&v117[8] = *(v83 + 8);
            v43 = *(v83 + 24);
            v118 = v43;
            v119 = *(v83 + 40);
            v93 = &v114;
            v111 = v87;
            v54 = *v89.i64;
            goto LABEL_137;
          }
        }

        else if (*v89.i64 >= v50)
        {
          goto LABEL_126;
        }
      }

      else if (*v89.i64 >= v50)
      {
        goto LABEL_129;
      }

      *&v117[8] = v122;
      v118 = v123;
      v119 = v124;
      v122 = *(v83 + 8);
      v123 = *(v83 + 24);
      v124 = *(v83 + 40);
      v105 = v122.i64[1];
      v108 = v122.i64[0];
      v93 = &v115;
      v111 = v49;
      v43.i64[1] = v115.i64[1];
      v54 = v50;
      v49 = v87;
      v50 = *v89.i64;
      v114 = v115;
LABEL_137:
      *v93 = *v113;
      if (!v90)
      {
LABEL_140:
        if (v91 > 0.0)
        {
          goto LABEL_145;
        }

        goto LABEL_141;
      }

      if (v90 > 0)
      {
        goto LABEL_145;
      }

LABEL_141:
      if (v82)
      {
        --v82;
      }

      else
      {
        v82 = 349;
      }

      if (v82 == *(a1 + 44))
      {
LABEL_145:
        v120.i64[0] = v108;
        v120.i64[1] = v105;
        goto LABEL_146;
      }
    }
  }

  if (v45 < 0.0)
  {
    goto LABEL_105;
  }

LABEL_146:
  v45 = *&v115.i64[1];
  v94 = v115.i64[0];
LABEL_147:
  v43.i64[0] = 0x3CB0000000000000;
  if (fabs(v45 + v94) >= 2.22044605e-16)
  {
    if ((*(*v109 + 24))(v109, v61, &v121, v117))
    {
      return 0xFFFFFFFFLL;
    }

    if (v94 < 0 || v45 < 0.0)
    {
      v94 = CNTimeSpan::operator-(v115.i64, v97, v98);
    }

    else
    {
      v99 = v45;
    }

    v113[0] = v94;
    *&v113[1] = v99;
    if (sub_1D0B7CF88(v113, (a1 + 16)))
    {
      return 0xFFFFFFFFLL;
    }

    v103 = v114.i64[0];
    if (v114.i64[0] < 0 || (v101.i64[0] = v114.i64[1], *&v114.i64[1] < 0.0))
    {
      v103 = CNTimeSpan::operator-(v114.i64, v101, v102);
    }

    else
    {
      v104 = v114.i64[1];
    }

    v112.i64[0] = v103;
    v112.i64[1] = v104;
    v100 = &v112;
  }

  else
  {
    *(v109 + 8) = v122;
    v95 = v123;
    *(v109 + 24) = v123;
    *(v109 + 40) = v124;
    if (v94 < 0 || v45 < 0.0)
    {
      v94 = CNTimeSpan::operator-(v115.i64, v95, v43);
    }

    else
    {
      v96 = v45;
    }

    v113[0] = v94;
    *&v113[1] = v96;
    v100 = v113;
  }

  if (!sub_1D0B7CF88(v100, (a1 + 16)))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0B8876C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *(a2 + 12);
  *(a3 + 8) = v3;
  *(a3 + 12) = v5 + v4;
  *(a3 + 16) = (v5 + v4) * v3;
  *(a3 + 20) = v3;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 20);
    v10 = *(result + 32);
    v11 = *(a3 + 32);
    do
    {
      v12 = v6;
      result = v7;
      for (i = v3; i; --i)
      {
        *(v11 + 8 * result) = *(v10 + 8 * v12);
        result = (result + 1);
        ++v12;
      }

      ++v8;
      v7 = (v7 + v3);
      v6 += v9;
    }

    while (v8 != v4);
  }

  if (v5)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 20);
    v17 = *(a2 + 32);
    v18 = v4 * v3;
    v19 = *(a3 + 32);
    do
    {
      v20 = v14;
      v21 = v18;
      for (result = v3; result; result = (result - 1))
      {
        *(v19 + 8 * v21++) = *(v17 + 8 * v20++);
      }

      ++v15;
      v18 += v3;
      v14 += v16;
    }

    while (v15 != v5);
  }

  return result;
}

float64x2_t sub_1D0B88838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a3 + 8) = v4;
  *(a3 + 12) = v3;
  v5 = (v3 * v4);
  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  if (v5 > 3)
  {
    v13 = (v5 - 2);
    v14 = *(a1 + 32);
    v15 = *(a2 + 32);
    v16 = *(a3 + 32);
    v17 = (v15 + 8 * v13);
    v18 = (v5 - 1) >> 1;
    v19 = v14;
    v20 = v16;
    do
    {
      v21 = *v19++;
      v22 = v21;
      v23 = *v15++;
      *v20++ = vaddq_f64(v22, v23);
      --v18;
    }

    while (v18);
    result = vaddq_f64(*(v14 + 8 * v13), *v17);
    *(v16 + 8 * v13) = result;
  }

  else if (v5 >= 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    v8 = *(a3 + 32);
    do
    {
      v9 = *v6++;
      v10 = v9;
      v11 = *v7++;
      result.f64[0] = v10 + v11;
      *v8++ = result.f64[0];
      --v5;
    }

    while (v5);
  }

  return result;
}

void cnrotation::CNRotation::RotationDerivativeQuaternion(uint64_t *__return_ptr a1@<X8>, cnrotation::CNRotation *this@<X0>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v25 = 0x400000004;
  v24 = xmmword_1D0E7DCD0;
  v23 = &unk_1F4CDEB70;
  v26 = v27;
  v27[0] = 0;
  v27[5] = 0;
  *&v27[8] = -a4;
  *&v27[9] = a3;
  *&v27[1] = -a5;
  *&v27[2] = a4;
  v27[10] = 0;
  *&v27[13] = a4;
  *&v27[14] = a5;
  *&v27[3] = -a3;
  *&v27[4] = a5;
  *&v27[6] = -a3;
  *&v27[7] = -a4;
  *&v27[11] = -a5;
  *&v27[12] = a3;
  v27[15] = 0;
  v20 = 0x100000004;
  v19 = xmmword_1D0E7DCE0;
  v18 = &unk_1F4CDEBB8;
  v21 = v22;
  v7 = *(this + 1);
  v22[0] = *this;
  v6.f64[1] = *(v22 + 1);
  v22[1] = v7;
  v10 = 0x400000004;
  v8 = &unk_1F4CDEB70;
  v9 = xmmword_1D0E7DCD0;
  v11 = &v12;
  v6.f64[0] = 0.5;
  sub_1D0B8930C(&v23, &v8, v6);
  v15 = 0x100000004;
  v14 = xmmword_1D0E7DCE0;
  v13 = &unk_1F4CDEBB8;
  v16 = &v17;
  sub_1D0B89390(&v8, &v18, &v13);
  sub_1D0B8BD08(a1, &v13);
}

void sub_1D0B88A54(cnrotation::CNRotation *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (v5 == 3 && v6 == 1)
  {
    cnrotation::CNRotation::RotationMatrix(&v25, a1);
    v22 = 0x100000003;
    v20 = &unk_1F4CDEB28;
    v21 = xmmword_1D0E7DCC0;
    v23 = &v24;
    sub_1D0B89390(&v25, a2, &v20);
    sub_1D0B88DB0(a3, &v20);
  }

  else
  {
    if (v5 != 1 || v6 != 3)
    {
      __assert_rtn("RotateCoordinateFrame", "cnrotation.h", 275, "false && Error: CNRotation::RotateCoordinateFrame called with invalid vector.");
    }

    cnrotation::CNRotation::RotationMatrix(&v20, a1);
    v10 = *(a2 + 8);
    v9 = *(a2 + 12);
    v17 = 0x300000001;
    v12 = &unk_1F4CDF248;
    v13 = v9;
    v14 = v10;
    v15 = v10 * v9;
    v16 = v9;
    v18 = &v19;
    sub_1D0BD2018(a2, &v12);
    v27 = 0x300000003;
    v25 = &unk_1F4CD5DD0;
    v26 = xmmword_1D0E76C10;
    v28 = &v29;
    sub_1D0B89390(&v20, &v12, &v25);
    v11 = v26;
    *(a3 + 24) = 0x300000003;
    *a3 = &unk_1F4CD5DD0;
    *(a3 + 8) = HIDWORD(v11);
    *(a3 + 12) = v11;
    *(a3 + 16) = v11 * HIDWORD(v11);
    *(a3 + 20) = HIDWORD(v11);
    *(a3 + 32) = a3 + 40;
    sub_1D0BD2018(&v25, a3);
  }
}

double *cnrotation::Cat@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = v4 * v6 + v5 * *a2 - v3 * v7 + *result * v8;
  v10 = v5 * v6 - v4 * *a2 + *result * v7 + v3 * v8;
  v11 = v3 * *a2 - *result * v6 + v5 * v7 + v4 * v8;
  v12 = -(v3 * v6) - *result * *a2 - v4 * v7 + v5 * v8;
  v13 = sqrt(v10 * v10 + v9 * v9 + v11 * v11 + v12 * v12);
  if (fabs(v13) >= 2.22044605e-16)
  {
    v15 = v9 / v13;
    v16 = v10 / v13;
    v17 = v11 / v13;
    v14 = v12 / v13;
  }

  else
  {
    v14 = 1.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  *a3 = v15;
  a3[1] = v16;
  a3[2] = v17;
  a3[3] = v14;
  return result;
}

double cnrotation::CNRotation::RotationMatrix@<D0>(uint64_t *__return_ptr a1@<X8>, cnrotation::CNRotation *this@<X0>)
{
  a1[3] = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 1) = xmmword_1D0E76C10;
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = v3 * v3;
  *(a1 + 5) = -(v3 * v3 - *this * *this) - v4 * v4 + v5 * v5;
  a1[4] = (a1 + 5);
  v7 = v3 * v5;
  *(a1 + 6) = -(v4 * v5 - v2 * v3) - (v4 * v5 - v2 * v3);
  *(a1 + 7) = v3 * v5 + v2 * v4 + v3 * v5 + v2 * v4;
  *(a1 + 8) = v4 * v5 + v2 * v3 + v4 * v5 + v2 * v3;
  *(a1 + 9) = v3 * v3 - v2 * v2 - v4 * v4 + v5 * v5;
  v8 = v3 * v4;
  *(a1 + 10) = v8 - v2 * v5 + v8 - v2 * v5;
  *(a1 + 11) = -(v7 - v2 * v4) - (v7 - v2 * v4);
  v9 = v8 + v2 * v5 + v8 + v2 * v5;
  result = v4 * v4 - (v6 + v2 * v2) + v5 * v5;
  *(a1 + 12) = v9;
  *(a1 + 13) = result;
  return result;
}

double sub_1D0B88DB0(uint64_t a1, uint64_t a2)
{
  *&result = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CD5DD0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 3)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 3)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

int64x2_t sub_1D0B88E94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v19.__vftable) = 3;
    LOBYTE(v17) = 5;
    cnprint::CNPrinter::Print(&v19, &v17, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEED8 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEED8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19.__vftable = 0;
        std::bad_cast::bad_cast(&v19);
        v19.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v19);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEEEB0;
    *(a1 + 8) = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    *(a1 + 24) = *(v10 + 32);
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 40) = v13;
    v14 = *(v10 + 112);
    result = *(v10 + 128);
    v15 = *(v10 + 138);
    *(a1 + 88) = *(v10 + 96);
    *(a1 + 130) = v15;
    *(a1 + 120) = result;
    *(a1 + 104) = v14;
  }

  else
  {
    v17 = 3;
    v16 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v19.__vftable) = 3;
      v18 = 5;
      cnprint::CNPrinter::Print(&v19, &v18, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEED8 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEEB0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = result;
    *(a1 + 112) = result;
    *(a1 + 136) = 0x7FF8000000000000;
    *(a1 + 145) = 0;
  }

  return result;
}

__n128 sub_1D0B8910C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 26 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1D0BA6B3C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  }

  *v8 = &unk_1F4CEEEB0;
  *(v8 + 8) = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  *(v8 + 72) = *(a2 + 72);
  *(v8 + 56) = v11;
  *(v8 + 40) = v10;
  *(v8 + 24) = v9;
  result = *(a2 + 88);
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  *(v8 + 130) = *(a2 + 130);
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = result;
  ++a1[5];
  return result;
}

uint64_t CNTimeSpan::operator+(void *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  a3.i64[0] = a1[1];
  a4.i64[0] = a2[1];
  v6 = __OFADD__(*a1, *a2);
  v7 = *a1 + *a2;
  if (v6)
  {
    return 0;
  }

  v9[2] = v4;
  v9[3] = v5;
  *a3.i64 = *a3.i64 + *a4.i64;
  v9[0] = 0;
  v9[1] = 0;
  CNTimeSpan::SetTimeSpan(v9, v7, a3, a4);
  return v9[0];
}

uint64_t CNTimeSpan::operator-(uint64_t *a1, int8x16_t a2, int8x16_t a3)
{
  a2.i64[0] = a1[1];
  v5 = *a1;
  if (*a1 == 0x8000000000000000)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  *a2.i64 = -*a2.i64;
  v7[0] = 0;
  v7[1] = 0;
  CNTimeSpan::SetTimeSpan(v7, -v5, a2, a3);
  return v7[0];
}

float64x2_t sub_1D0B8930C(uint64_t a1, uint64_t a2, float64x2_t result)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  v5 = (v3 * v4);
  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  if (v5 > 3)
  {
    v9 = (v5 - 2);
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * v9);
    v13 = (v5 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v10++;
      *v14++ = vmulq_n_f64(v15, result.f64[0]);
      --v13;
    }

    while (v13);
    result = vmulq_n_f64(*v12, result.f64[0]);
    *(v11 + 8 * v9) = result;
  }

  else if (v5 >= 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    do
    {
      v8 = *v6++;
      *v7++ = v8 * result.f64[0];
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0B89390(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  v5 = v3;
  *(a3 + 8) = __PAIR64__(HIDWORD(v4), v3);
  *(a3 + 16) = HIDWORD(v4) * v3;
  *(a3 + 20) = v3;
  v6.i64[0] = v4;
  v6.i64[1] = v3;
  v7 = *(result + 32);
  if (vmaxvq_u32(v6) > 5)
  {
    return cblas_dgemm_NEWLAPACK();
  }

  if (HIDWORD(v4))
  {
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = *(a3 + 32);
    v11 = HIDWORD(v3);
    do
    {
      if (v5)
      {
        v12 = 0;
        v13 = v7;
        do
        {
          v14 = 0.0;
          if (v11)
          {
            v15 = v13;
            result = v9;
            v16 = v11;
            do
            {
              v17 = *result;
              result += 8;
              v14 = v14 + *v15 * v17;
              v15 += v5;
              --v16;
            }

            while (v16);
          }

          *(v10 + 8 * v8 * v5 + 8 * v12++) = v14;
          ++v13;
        }

        while (v12 != v5);
      }

      ++v8;
      v9 += 8 * v4;
    }

    while (v8 != HIDWORD(v4));
  }

  return result;
}

__n128 sub_1D0B894B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(a1 + 8) = v3;
    *(a1 + 12) = v2;
    v4 = (v2 * v3);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = (v5 - 2);
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = (v11 + 8 * v10);
      v14 = (v5 - 1) >> 1;
      v15 = v12;
      do
      {
        v16 = *v15++;
        *v11++ = v16;
        --v14;
      }

      while (v14);
      result = *(v12 + 8 * v10);
      *v13 = result;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1D0B8954C(uint64_t a1, double *a2, double a3)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 32) = 0u;
  }

  if (a3 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 4);
  if (v3 != -1)
  {
    v4 = *(a1 + 8) + a3;
    v5 = *(a1 + 16) + a3 * a3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *a2 - v6;
    v9 = v6 + a3 / v4 * v8;
    *(a1 + 4) = v3 + 1;
    *(a1 + 24) = v9;
    v10 = v7 + v8 * a3 * (*a2 - v9);
    *(a1 + 32) = v10;
    if (v10 >= 0.0)
    {
      if (!v3)
      {
LABEL_10:
        v3 = 0;
        *a1 = 1;
        return v3;
      }

      v11 = v4 * v4 - v5;
      if (v11 > 0.000000015)
      {
        v12 = v4 / v11;
        if (v12 > 0.000000015)
        {
          *(a1 + 40) = v12 * v10;
          goto LABEL_10;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t cnestimation::RotationStabilizedAccelerationEstimator::AddAcceleration(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1) == 1)
  {
    v73 = *a2;
    v6 = CNTimeSpan::operator-(&v73, (a1 + 16), v73, a4);
    v8 = v7 + v6;
    if (v8 <= 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 64);
    v11 = *(a1 + 72);
    *&v70[24] = 0x100000004;
    *v70 = &unk_1F4CDEBB8;
    *&v70[8] = xmmword_1D0E7DCE0;
    v71 = &v72;
    if (sub_1D0B89B20((a1 + 104), &v73, *(a1 + 720), v70))
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0B8BD08(v58, v70);
    _D3 = *&v58[24];
    __asm { FMLA            D2, D3, V1.D[1] }

    v19 = sqrt(_D2);
    if (fabs(v19) >= 2.22044605e-16)
    {
      v30 = vdupq_lane_s64(*&v19, 0);
      v21 = vdivq_f64(*v58, v30);
      v20 = vdivq_f64(*&v58[16], v30);
    }

    else
    {
      v20 = xmmword_1D0E7DCB0;
      v21 = 0uLL;
    }

    v68 = v21;
    v69 = v20;
    v31 = sqrt(v10 * v10 + v9 * v9 + v12 * v12 + v11 * v11);
    if (fabs(v31) >= 2.22044605e-16)
    {
      v33 = -v9 / v31;
      v34 = -v10 / v31;
      v35 = -v12 / v31;
      v32 = v11 / v31;
    }

    else
    {
      v32 = 1.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    *v58 = v33;
    *&v58[8] = v34;
    *&v58[16] = v35;
    *&v58[24] = v32;
    cnrotation::Cat(v68.f64, v58, v67);
    v63 = 0x100000003;
    *&v62[8] = xmmword_1D0E7DCC0;
    *v62 = &unk_1F4CDEB28;
    v64 = &v65;
    v65 = *(a1 + 80);
    v66 = *(a1 + 96);
    sub_1D0B88A54(v67, v62, v58);
    sub_1D0B894B0(v62, v58);
    v54 = 0x100000003;
    v53 = xmmword_1D0E7DCC0;
    v52 = &unk_1F4CDEB28;
    v55 = &v56;
    v56 = *(a2 + 16);
    v36.f64[1] = *(&v56 + 1);
    v57 = *(a2 + 32);
    v37 = v8 / (v8 + *(a1 + 8) / 6.28318531);
    *&v58[24] = 0x100000003;
    *&v58[8] = xmmword_1D0E7DCC0;
    *v58 = &unk_1F4CDEB28;
    v59 = &v60;
    v36.f64[0] = v37;
    v38 = sub_1D0B8930C(&v52, v58, v36);
    v38.f64[0] = 1.0 - v37;
    v44 = 0x100000003;
    v42 = &unk_1F4CDEB28;
    v43 = xmmword_1D0E7DCC0;
    v45 = &v46;
    sub_1D0B8930C(v62, &v42, v38);
    v49 = 0x100000003;
    v47 = &unk_1F4CDEB28;
    v48 = xmmword_1D0E7DCC0;
    v50 = &v51;
    sub_1D0B88838(v58, &v42, &v47);
    *(a1 + 16) = v73;
    v39 = v68;
    v40 = v69;
    if ((a1 + 48) != &v68)
    {
      *(a1 + 48) = v68;
      *(a1 + 64) = v40;
    }

    v41 = v50;
    *(a1 + 80) = *v50;
    *(a1 + 88) = v41[1];
    *(a1 + 96) = v41[2];
    *&v58[24] = 0x100000004;
    *&v58[8] = xmmword_1D0E7DCE0;
    *v58 = &unk_1F4CDEBB8;
    v59 = &v60;
    v60 = v39;
    v61 = v40;
    result = sub_1D0B8DB1C(a1 + 104, &v73, v58);
    if (result)
    {
      *(a1 + 1) = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *v62 = *a2;
    *&v58[24] = 0x100000004;
    *v58 = &unk_1F4CDEBB8;
    v59 = &v60;
    v60 = 0uLL;
    *&v58[8] = xmmword_1D0E7DCE0;
    v61.f64[0] = 0.0;
    v61.f64[1] = 1.0;
    if (sub_1D0B8DB1C(a1 + 104, v62, v58))
    {
      return 0xFFFFFFFFLL;
    }

    v23 = *v62;
    *(a1 + 16) = *v62;
    *(a1 + 32) = v23;
    sub_1D0B8BD08(v70, v58);
    _D3 = *&v70[24];
    __asm { FMLA            D2, D3, V1.D[1] }

    v26 = sqrt(_D2);
    if (fabs(v26) >= 2.22044605e-16)
    {
      v29 = vdupq_lane_s64(*&v26, 0);
      v28 = vdivq_f64(*v70, v29);
      v27 = vdivq_f64(*&v70[16], v29);
    }

    else
    {
      v27 = xmmword_1D0E7DCB0;
      v28 = 0uLL;
    }

    result = 0;
    *(a1 + 48) = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = *(a2 + 16);
    *(a1 + 96) = *(a2 + 32);
    *(a1 + 1) = 1;
  }

  return result;
}

uint64_t sub_1D0B89B20(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[5];
  v26 = 0x100000003;
  v21 = &unk_1F4CDEB28;
  v27 = v28;
  v22 = v8;
  v23 = 1;
  v24 = v8;
  v25 = v8;
  if (v8 > 3)
  {
    v10 = &v28[v8];
    bzero(v28, 16 * ((v8 - 1) >> 1));
    *(v10 - 2) = 0;
    *(v10 - 1) = 0;
  }

  else if (v8 >= 1)
  {
    bzero(v28, 8 * v8);
  }

  v18 = 0x400000004;
  v16 = &unk_1F4CDEB70;
  v17 = xmmword_1D0E7DCD0;
  v19 = &v20;
  v13 = 0x300000004;
  v11 = &unk_1F4CDEC00;
  v12 = xmmword_1D0E7DCF0;
  v14 = &v15;
  return (*(*a1 + 96))(a1, a2, &v21, a3, a4, &v16, &v11);
}

uint64_t sub_1D0B89CD0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (!(*(*v14 + 24))(v14, v1) || !(*(*v15 + 64))(v15))
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *(v15 + 20);
  result = 0xFFFFFFFFLL;
  if (*(v11 + 8) == v18 && *(v11 + 12) == 1)
  {
    v20 = v13;
    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    v23 = *(v15 + 208);
    v115 = v20;
    v24 = CNTimeSpan::operator-(v20, (v15 + 224), v16, v17);
    v26 = v25 + v24;
    if (fabs(v26) >= 2.22044605e-16)
    {
      v113 = v5;
      v114 = v7;
      v29 = 1.0;
      if (v26 <= 0.0)
      {
        v29 = -1.0;
      }

      v356 = v29;
      v30 = vcvtpd_s64_f64(fabs(v26 / *(v15 + 48)));
      if (v30 <= 1)
      {
        v30 = 1;
      }

      v118 = v30;
      sub_1D0B87544(v355, v15 + 240);
      v359 = 0x400000004;
      v357 = &unk_1F4CDEB70;
      v32 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
      v33 = v21 * v21;
      if (v23)
      {
        v360 = v361;
        LODWORD(v358) = v21;
        DWORD1(v358) = v21;
        DWORD2(v358) = v21 * v21;
        HIDWORD(v358) = v21;
        if (v33 > 3)
        {
          bzero(v361, 16 * ((v33 - 1) >> 1));
          v32 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
          v39 = &v361[v33];
          *(v39 - 2) = 0;
          *(v39 - 1) = 0;
        }

        else if (v33 >= 1)
        {
          bzero(v361, 8 * (v21 * v21));
          v32 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
        }

        if (v21 >= 1)
        {
          v40 = 0;
          v41 = v360;
          v42 = v21;
          do
          {
            v41[v40] = 0x3FF0000000000000;
            v40 += v21 + 1;
            --v42;
          }

          while (v42);
        }

        v352 = *(v32 + 426);
        v350 = &unk_1F4CDEC00;
        v43 = v18 * v21;
        v353 = v354;
        *&v351 = __PAIR64__(v18, v21);
        DWORD2(v351) = v18 * v21;
        HIDWORD(v351) = v21;
        if ((v18 * v21) > 3)
        {
          bzero(v354, 16 * ((v43 - 1) >> 1));
          v45 = &v354[v43];
          *(v45 - 2) = 0;
          *(v45 - 1) = 0;
        }

        else if (v43 >= 1)
        {
          bzero(v354, 8 * v18 * v21);
        }
      }

      else
      {
        v358 = xmmword_1D0E7DCD0;
        v360 = v361;
        v352 = 0x300000004;
        v351 = xmmword_1D0E7DCF0;
        v350 = &unk_1F4CDEC00;
        v353 = v354;
      }

      v347 = 0x100000004;
      v342 = &unk_1F4CDEBB8;
      v348 = v349;
      v343 = v21;
      v344 = 1;
      v345 = v21;
      v346 = v21;
      if (v21 > 3)
      {
        v46 = &v349[v21];
        bzero(v349, 16 * ((v21 - 1) >> 1));
        *(v46 - 2) = 0;
        *(v46 - 1) = 0;
      }

      else if (v21 >= 1)
      {
        bzero(v349, 8 * v21);
      }

      v339 = 0x400000004;
      v337 = &unk_1F4CDEB70;
      v47 = v26 / v118;
      if (v23)
      {
        v340 = v341;
        LODWORD(v338) = v21;
        DWORD1(v338) = v21;
        DWORD2(v338) = v21 * v21;
        HIDWORD(v338) = v21;
        if (v33 > 3)
        {
          bzero(v341, 16 * ((v33 - 1) >> 1));
          v51 = &v341[v33];
          *(v51 - 2) = 0;
          *(v51 - 1) = 0;
        }

        else if (v33 >= 1)
        {
          bzero(v341, 8 * (v21 * v21));
        }

        v49 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v334 = 0x300000004;
        v332 = &unk_1F4CDEC00;
        v52 = v18 * v21;
        v335 = v336;
        *&v333 = __PAIR64__(v18, v21);
        DWORD2(v333) = v18 * v21;
        HIDWORD(v333) = v21;
        if ((v18 * v21) > 3)
        {
          bzero(v336, 16 * ((v52 - 1) >> 1));
          v49 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
          v53 = &v336[v52];
          *(v53 - 2) = 0;
          *(v53 - 1) = 0;
          v50 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
          v48 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        }

        else
        {
          v50 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
          v48 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
          if (v52 >= 1)
          {
            bzero(v336, 8 * v18 * v21);
            v48 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
            v49 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
            v50 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
          }
        }
      }

      else
      {
        v48 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v338 = xmmword_1D0E7DCD0;
        v340 = v341;
        v49 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v334 = 0x300000004;
        v50 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v333 = xmmword_1D0E7DCF0;
        v332 = &unk_1F4CDEC00;
        v335 = v336;
      }

      v119 = *(v48 + 205);
      v54 = *(v49 + 426);
      v55 = *(v50 + 207);
      v120 = v55;
      v56 = 1;
      v117 = v9;
      v116 = v11;
      while (1)
      {
        v55.n128_f64[0] = v47 * (v56 - 1);
        *&v322 = 0;
        v321 = 0;
        *v57.i64 = CNTimeSpan::SetTimeSpan(&v321, 0, v55, v31);
        *&v331 = CNTimeSpan::operator+((v15 + 224), &v321, v57, v58);
        *(&v331 + 1) = v59;
        v328 = 0x100000004;
        v326 = &unk_1F4CDEBB8;
        v327 = xmmword_1D0E7DCE0;
        v329 = &v330;
        sub_1D0B88838(v355, &v342, &v326);
        v323 = 0x400000004;
        v322 = v119;
        v321 = &unk_1F4CDEB70;
        v324 = v325;
        if (v23)
        {
          sub_1D0B88838(&v357, &v337, &v321);
          v318 = v54;
          v317 = v120;
          v316 = &unk_1F4CDEC00;
          v319 = v320;
          sub_1D0B88838(&v350, &v332, &v316);
        }

        else
        {
          v318 = v54;
          v317 = v120;
          v316 = &unk_1F4CDEC00;
          v319 = v320;
        }

        v315 = v331;
        sub_1D0B87544(v314, &v326);
        if (v23)
        {
          sub_1D0DAA484(&v309, &v321);
          v306 = v54;
          v304 = &unk_1F4CDEC00;
          *&v305 = v317;
          v60 = (DWORD1(v317) * v317);
          DWORD2(v305) = DWORD1(v317) * v317;
          HIDWORD(v305) = v317;
          v307 = v308;
          if (v317 > 4)
          {
            v111 = 616;
            v112 = "this->max_num_rows_ >= A.num_rows_";
            goto LABEL_104;
          }

          if (DWORD1(v317) >= 4)
          {
            v111 = 617;
            v112 = "this->max_num_cols_ >= A.num_cols_";
LABEL_104:
            __assert_rtn("CNMatrix", "cnmatrix.h", v111, v112);
          }

          v61 = DWORD2(v317);
          if (SDWORD2(v317) > 3)
          {
            v65 = v319;
            v66 = (DWORD2(v317) - 1) >> 1;
            v67 = v319;
            v68 = v308;
            do
            {
              v69 = *v67++;
              *v68++ = v69;
              --v66;
            }

            while (v66);
            *&v308[v61 - 2] = *&v65[8 * (v61 - 2)];
          }

          else if (v60 >= 1)
          {
            v62 = v319;
            v63 = v308;
            do
            {
              v64 = *v62++;
              *v63++ = v64;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          v311 = 0x400000004;
          v310 = v119;
          v309 = &unk_1F4CDEB70;
          v312 = &v313;
          v306 = v54;
          v305 = v120;
          v304 = &unk_1F4CDEC00;
          v307 = v308;
        }

        v301 = 0x100000004;
        v300 = xmmword_1D0E7DCE0;
        v299 = &unk_1F4CDEBB8;
        v302 = &v303;
        v296 = 0x400000004;
        v295 = v119;
        v294 = &unk_1F4CDEB70;
        v297 = &v298;
        v291 = v54;
        v290 = v120;
        v289 = &unk_1F4CDEC00;
        v292 = &v293;
        if (v22(&v315, &v356, v314, v11, v9, &v299, &v294, &v289))
        {
          return 0xFFFFFFFFLL;
        }

        v286 = 0x400000004;
        v285 = v119;
        v284 = &unk_1F4CDEB70;
        v287 = &v288;
        if (v23)
        {
          sub_1D0B89390(&v294, &v309, &v284);
          v270 = v54;
          v269 = v120;
          v268 = &unk_1F4CDEC00;
          v271 = v272;
          sub_1D0B89390(&v294, &v304, &v268);
          v281 = v54;
          v280 = v120;
          v279 = &unk_1F4CDEC00;
          v282 = v283;
          v71 = sub_1D0B88838(&v268, &v289, &v279);
        }

        else
        {
          v281 = v54;
          v71.i64[1] = *(&v120 + 1);
          v280 = v120;
          v279 = &unk_1F4CDEC00;
          v282 = v283;
        }

        *&v269 = 0;
        v268 = 0;
        *v71.i64 = v47 * 0.5;
        *v72.i64 = CNTimeSpan::SetTimeSpan(&v268, 0, v71, v70);
        v278[0] = CNTimeSpan::operator+(&v331, &v268, v72, v73);
        v278[1] = v74;
        v270 = 0x100000004;
        *&v75.f64[1] = 0x400000004;
        v269 = xmmword_1D0E7DCE0;
        v268 = &unk_1F4CDEBB8;
        v271 = v272;
        v75.f64[0] = v47 * 0.5;
        sub_1D0B8930C(&v299, &v268, v75);
        v275 = 0x100000004;
        v274 = xmmword_1D0E7DCE0;
        v273 = &unk_1F4CDEBB8;
        v276 = &v277;
        sub_1D0B88838(&v326, &v268, &v273);
        if (v23)
        {
          v265 = 0x400000004;
          v76.f64[1] = *(&v119 + 1);
          v264 = v119;
          v263 = &unk_1F4CDEB70;
          v266 = v267;
          v76.f64[0] = v47 * 0.5;
          sub_1D0B8930C(&v284, &v263, v76);
          v270 = 0x400000004;
          v269 = v119;
          v268 = &unk_1F4CDEB70;
          v271 = v272;
          sub_1D0B88838(&v321, &v263, &v268);
          v265 = v54;
          v77.f64[1] = *(&v120 + 1);
          v264 = v120;
          v263 = &unk_1F4CDEC00;
          v266 = v267;
          v77.f64[0] = v47 * 0.5;
          sub_1D0B8930C(&v279, &v263, v77);
          v260 = v54;
          v259 = v120;
          v258 = &unk_1F4CDEC00;
          v261 = v262;
          sub_1D0B88838(&v316, &v263, &v258);
          v78 = v119;
          v79 = v120;
        }

        else
        {
          v270 = 0x400000004;
          v78 = v119;
          v79 = v120;
          v269 = v119;
          v268 = &unk_1F4CDEB70;
          v271 = v272;
          v260 = v54;
          v259 = v120;
          v258 = &unk_1F4CDEC00;
          v261 = v262;
        }

        v255 = 0x100000004;
        v254 = xmmword_1D0E7DCE0;
        v253 = &unk_1F4CDEBB8;
        v256 = &v257;
        v265 = 0x400000004;
        v264 = v78;
        v263 = &unk_1F4CDEB70;
        v266 = v267;
        v250 = v54;
        v249 = v79;
        v248 = &unk_1F4CDEC00;
        v251 = &v252;
        if (v22(v278, &v356, &v273, v11, v9, &v253, &v263, &v248))
        {
          return 0xFFFFFFFFLL;
        }

        v245 = 0x400000004;
        v244 = v119;
        v243 = &unk_1F4CDEB70;
        v246 = &v247;
        if (v23)
        {
          sub_1D0B89390(&v263, &v268, &v243);
          v229 = v54;
          v228 = v120;
          v227 = &unk_1F4CDEC00;
          v230 = v231;
          sub_1D0B89390(&v263, &v258, &v227);
          v240 = v54;
          v239 = v120;
          v238 = &unk_1F4CDEC00;
          v241 = v242;
          v81 = sub_1D0B88838(&v227, &v248, &v238);
        }

        else
        {
          v240 = v54;
          v81.i64[1] = *(&v120 + 1);
          v239 = v120;
          v238 = &unk_1F4CDEC00;
          v241 = v242;
        }

        *&v228 = 0;
        v227 = 0;
        *v81.i64 = v47 * 0.5;
        *v82.i64 = CNTimeSpan::SetTimeSpan(&v227, 0, v81, v80);
        v237[0] = CNTimeSpan::operator+(&v331, &v227, v82, v83);
        v237[1] = v84;
        v229 = 0x100000004;
        *&v85.f64[1] = 0x400000004;
        v228 = xmmword_1D0E7DCE0;
        v227 = &unk_1F4CDEBB8;
        v230 = v231;
        v85.f64[0] = v47 * 0.5;
        sub_1D0B8930C(&v253, &v227, v85);
        v234 = 0x100000004;
        v233 = xmmword_1D0E7DCE0;
        v232 = &unk_1F4CDEBB8;
        v235 = &v236;
        sub_1D0B88838(&v326, &v227, &v232);
        if (v23)
        {
          v224 = 0x400000004;
          v86.f64[1] = *(&v119 + 1);
          v223 = v119;
          v222 = &unk_1F4CDEB70;
          v225 = v226;
          v86.f64[0] = v47 * 0.5;
          sub_1D0B8930C(&v243, &v222, v86);
          v229 = 0x400000004;
          v228 = v119;
          v227 = &unk_1F4CDEB70;
          v230 = v231;
          sub_1D0B88838(&v321, &v222, &v227);
          v224 = v54;
          v87.f64[1] = *(&v120 + 1);
          v223 = v120;
          v222 = &unk_1F4CDEC00;
          v225 = v226;
          v87.f64[0] = v47 * 0.5;
          sub_1D0B8930C(&v238, &v222, v87);
          v219 = v54;
          v218 = v120;
          v217 = &unk_1F4CDEC00;
          v220 = v221;
          sub_1D0B88838(&v316, &v222, &v217);
          v88 = v119;
          v89 = v120;
        }

        else
        {
          v229 = 0x400000004;
          v88 = v119;
          v89 = v120;
          v228 = v119;
          v227 = &unk_1F4CDEB70;
          v230 = v231;
          v219 = v54;
          v218 = v120;
          v217 = &unk_1F4CDEC00;
          v220 = v221;
        }

        v214 = 0x100000004;
        v213 = xmmword_1D0E7DCE0;
        v212 = &unk_1F4CDEBB8;
        v215 = &v216;
        v224 = 0x400000004;
        v223 = v88;
        v222 = &unk_1F4CDEB70;
        v225 = v226;
        v209 = v54;
        v208 = v89;
        v207 = &unk_1F4CDEC00;
        v210 = &v211;
        v9 = v117;
        if (v22(v237, &v356, &v232, v11, v117, &v212, &v222, &v207))
        {
          return 0xFFFFFFFFLL;
        }

        v204 = 0x400000004;
        v203 = v119;
        v202 = &unk_1F4CDEB70;
        v205 = &v206;
        if (v23)
        {
          sub_1D0B89390(&v222, &v227, &v202);
          v188 = v54;
          v187 = v120;
          v186 = &unk_1F4CDEC00;
          v189 = v190;
          sub_1D0B89390(&v222, &v217, &v186);
          v199 = v54;
          v198 = v120;
          v197 = &unk_1F4CDEC00;
          v200 = v201;
          v91 = sub_1D0B88838(&v186, &v207, &v197);
        }

        else
        {
          v199 = v54;
          v91.i64[1] = *(&v120 + 1);
          v198 = v120;
          v197 = &unk_1F4CDEC00;
          v200 = v201;
        }

        *&v187 = 0;
        v186 = 0;
        *v91.i64 = v47;
        *v92.i64 = CNTimeSpan::SetTimeSpan(&v186, 0, v91, v90);
        v196[0] = CNTimeSpan::operator+(&v331, &v186, v92, v93);
        v196[1] = v94;
        v188 = 0x100000004;
        *&v95.f64[1] = 0x400000004;
        v187 = xmmword_1D0E7DCE0;
        v186 = &unk_1F4CDEBB8;
        v189 = v190;
        v95.f64[0] = v47;
        sub_1D0B8930C(&v212, &v186, v95);
        v193 = 0x100000004;
        v192 = xmmword_1D0E7DCE0;
        v191 = &unk_1F4CDEBB8;
        v194 = &v195;
        sub_1D0B88838(&v326, &v186, &v191);
        if (v23)
        {
          v183 = 0x400000004;
          v96.f64[1] = *(&v119 + 1);
          v182 = v119;
          v181 = &unk_1F4CDEB70;
          v184 = v185;
          v96.f64[0] = v47;
          sub_1D0B8930C(&v202, &v181, v96);
          v188 = 0x400000004;
          v187 = v119;
          v186 = &unk_1F4CDEB70;
          v189 = v190;
          sub_1D0B88838(&v321, &v181, &v186);
          v183 = v54;
          v97.f64[1] = *(&v120 + 1);
          v182 = v120;
          v181 = &unk_1F4CDEC00;
          v184 = v185;
          v97.f64[0] = v47;
          sub_1D0B8930C(&v197, &v181, v97);
          v178 = v54;
          v177 = v120;
          v176 = &unk_1F4CDEC00;
          v179 = v180;
          sub_1D0B88838(&v316, &v181, &v176);
          v98 = v119;
          v99 = v120;
        }

        else
        {
          v188 = 0x400000004;
          v98 = v119;
          v99 = v120;
          v187 = v119;
          v186 = &unk_1F4CDEB70;
          v189 = v190;
          v178 = v54;
          v177 = v120;
          v176 = &unk_1F4CDEC00;
          v179 = v180;
        }

        v173 = 0x100000004;
        v172 = xmmword_1D0E7DCE0;
        v171 = &unk_1F4CDEBB8;
        v174 = &v175;
        v183 = 0x400000004;
        v182 = v98;
        v181 = &unk_1F4CDEB70;
        v184 = v185;
        v168 = v54;
        v167 = v99;
        v166 = &unk_1F4CDEC00;
        v169 = &v170;
        v11 = v116;
        if (v22(v196, &v356, &v191, v116, v117, &v171, &v181, &v166))
        {
          return 0xFFFFFFFFLL;
        }

        if (v23)
        {
          sub_1D0DAA2F4(&v161, &v181, &v186);
          sub_1D0DAA37C(&v181, &v176, &v151);
          sub_1D0DAA2A4(&v156, &v151, &v166);
        }

        else
        {
          v163 = 0x400000004;
          v162 = v119;
          v161 = &unk_1F4CDEB70;
          v164 = &v165;
          v158 = v54;
          v157 = v120;
          v156 = &unk_1F4CDEC00;
          v159 = &v160;
        }

        v128 = 0x100000004;
        *&v100.f64[1] = 0x400000004;
        v127 = xmmword_1D0E7DCE0;
        v126 = &unk_1F4CDEBB8;
        v129 = &v130;
        v100.f64[0] = 2.0;
        sub_1D0B8930C(&v253, &v126, v100);
        v133 = 0x100000004;
        v132 = xmmword_1D0E7DCE0;
        v131 = &unk_1F4CDEBB8;
        v134 = &v135;
        sub_1D0B88838(&v299, &v126, &v131);
        v123 = 0x100000004;
        v121 = &unk_1F4CDEBB8;
        *&v101.f64[1] = 0x400000004;
        v122 = xmmword_1D0E7DCE0;
        v124 = &v125;
        v101.f64[0] = 2.0;
        sub_1D0B8930C(&v212, &v121, v101);
        v138 = 0x100000004;
        v137 = xmmword_1D0E7DCE0;
        v136 = &unk_1F4CDEBB8;
        v139 = &v140;
        sub_1D0B88838(&v131, &v121, &v136);
        v143 = 0x100000004;
        v142 = xmmword_1D0E7DCE0;
        v141 = &unk_1F4CDEBB8;
        v144 = &v145;
        sub_1D0B88838(&v136, &v171, &v141);
        v148 = 0x100000004;
        *&v102.f64[1] = 0x400000004;
        v147 = xmmword_1D0E7DCE0;
        v146 = &unk_1F4CDEBB8;
        v149 = &v150;
        v102.f64[0] = v47 / 6.0;
        sub_1D0B8930C(&v141, &v146, v102);
        v153 = 0x100000004;
        v152 = xmmword_1D0E7DCE0;
        v151 = &unk_1F4CDEBB8;
        v154 = &v155;
        sub_1D0B88838(&v342, &v146, &v151);
        v55 = sub_1D0B894B0(&v342, &v151);
        if (v23)
        {
          v55.n128_u64[0] = 2.0;
          sub_1D0DAA400(&v243, &v126, v55);
          sub_1D0D870A8(&v284, &v126, &v131);
          v103.f64[0] = 2.0;
          sub_1D0DAA400(&v202, &v121, v103);
          sub_1D0D870A8(&v131, &v121, &v136);
          sub_1D0D870A8(&v136, &v161, &v141);
          v104.f64[0] = v47 / 6.0;
          sub_1D0DAA400(&v141, &v146, v104);
          sub_1D0D870A8(&v337, &v146, &v151);
          v105 = sub_1D0B894B0(&v337, &v151);
          v105.n128_u64[0] = 2.0;
          sub_1D0DAA440(&v238, &v126, v105);
          sub_1D0DAA2A4(&v131, &v279, &v126);
          v106.f64[0] = 2.0;
          sub_1D0DAA440(&v197, &v121, v106);
          sub_1D0DAA2A4(&v136, &v131, &v121);
          sub_1D0DAA2A4(&v141, &v136, &v156);
          v107.f64[0] = v47 / 6.0;
          sub_1D0DAA440(&v141, &v146, v107);
          sub_1D0DAA2A4(&v151, &v332, &v146);
          v55 = sub_1D0B894B0(&v332, &v151);
        }

        if (v56++ == v118)
        {
          *(v15 + 40) = v47;
          *(v15 + 224) = *v115;
          v323 = 0x100000004;
          v322 = xmmword_1D0E7DCE0;
          v321 = &unk_1F4CDEBB8;
          v324 = v325;
          sub_1D0B88838(v15 + 240, &v342, &v321);
          sub_1D0B894B0(v15 + 240, &v321);
          if (v23)
          {
            sub_1D0D870A8(&v357, &v337, &v309);
            sub_1D0DAA2F4(&v321, &v309, v15 + 312);
            sub_1D0B894B0(v15 + 312, &v321);
            sub_1D0D870A8(&v357, &v337, &v321);
            sub_1D0DAA37C(&v321, v15 + 480, &v294);
            sub_1D0DAA2A4(&v284, &v350, &v332);
            sub_1D0DAA2A4(&v309, &v294, &v284);
            sub_1D0B894B0(v15 + 480, &v309);
            sub_1D0B894B0(v114, v15 + 240);
            sub_1D0D870A8(&v357, &v337, &v321);
            sub_1D0B894B0(v113, &v321);
            sub_1D0DAA2A4(&v321, &v350, &v332);
            v109 = &v321;
            v110 = v3;
          }

          else
          {
            v109 = (v15 + 240);
            v110 = v114;
          }

          sub_1D0B894B0(v110, v109);
          return 0;
        }
      }
    }

    sub_1D0B894B0(v7, v15 + 240);
    if (v23)
    {
      v27 = v5;
      v359 = 0x400000004;
      v357 = &unk_1F4CDEB70;
      v360 = v361;
      v28 = v21 * v21;
      LODWORD(v358) = v21;
      DWORD1(v358) = v21;
      DWORD2(v358) = v21 * v21;
      HIDWORD(v358) = v21;
      if (v21 * v21 > 3)
      {
        bzero(v361, 16 * ((v28 - 1) >> 1));
        v34 = &v361[v28];
        *(v34 - 2) = 0;
        *(v34 - 1) = 0;
      }

      else if (v28 >= 1)
      {
        bzero(v361, 8 * (v21 * v21));
      }

      if (v21 >= 1)
      {
        v35 = 0;
        v36 = v360;
        v37 = v21;
        do
        {
          v36[v35] = 0x3FF0000000000000;
          v35 += v21 + 1;
          --v37;
        }

        while (v37);
      }

      sub_1D0B894B0(v27, &v357);
      v359 = 0x300000004;
      v357 = &unk_1F4CDEC00;
      v38 = v18 * v21;
      v360 = v361;
      *&v358 = __PAIR64__(v18, v21);
      DWORD2(v358) = v18 * v21;
      HIDWORD(v358) = v21;
      if ((v18 * v21) > 3)
      {
        bzero(v361, 16 * ((v38 - 1) >> 1));
        v44 = &v361[v38];
        *(v44 - 2) = 0;
        *(v44 - 1) = 0;
      }

      else if (v38 >= 1)
      {
        bzero(v361, 8 * v18 * v21);
      }

      sub_1D0B894B0(v3, &v357);
    }

    result = 0;
    *(v15 + 40) = 0;
  }

  return result;
}

double sub_1D0B8BD08(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  if (v2 <= v3)
  {
    v4 = *(a2 + 12);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 != 4)
  {
    *a1 = 0uLL;
    *(a1 + 16) = 0uLL;
    __assert_rtn("CNQuaternion", "cnquaternion.h", 60, "false && Error: attempted to create a CNQuaternion from an invalid CNMatrix.");
  }

  v7 = *(a2 + 32);
  *a1 = *v7;
  *(a1 + 8) = *(v7 + 8);
  *(a1 + 16) = *(v7 + 16);
  result = *(v7 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D0B8BD84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = (*(*a3 + 16))(a3);
  v24[1] = v8;
  v23[0] = (*(*a4 + 16))(a4);
  v23[1] = v9;
  v12 = CNTimeSpan::operator-(a2, v24, v10, v11);
  *v14.i64 = v13;
  *v15.i64 = v12;
  v16 = v13 + v12;
  v17 = CNTimeSpan::operator-(v23, v24, v14, v15);
  v19 = v18 + v17;
  v20 = fabs(v19);
  v21 = v16 / v19;
  if (v20 < 2.22044605e-16)
  {
    v21 = 0.0;
  }

  *(a1 + 8) = *a2;
  *(a1 + 24) = vmlaq_n_f64(*(a3 + 24), vsubq_f64(*(a4 + 24), *(a3 + 24)), v21);
  *(a1 + 40) = *(a3 + 40) + (*(a4 + 40) - *(a3 + 40)) * v21;
  return 0;
}

void CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::~LogEntry_TimeStamp(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this)
{
  CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::~LogEntry_TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9408;
  CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1D0B8BF18(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1D0C54E78(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1D0B8C020(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x14;
  v3 = v1 - 20;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1D0C54E78(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1D0B8BF18(a1, &v9);
}

void sub_1D0B8C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  *this = &unk_1F4CD9480;
  CoreNavigation::CLP::LogEntry::LogEntry::SharedDtor(this);
  MEMORY[0x1D387E4E0](this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(CoreNavigation::CLP::LogEntry *this)
{
  v1 = CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0B8C37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 10);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(this + 11);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(this + 12);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(this + 13);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(this + 14);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = *(this + 15);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(this + 16);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(this + 17);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(this + 18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(this + 19);
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(this + 20);
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *(this + 21);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *(this + 22);
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(this + 23);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = *(this + 24);
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = *(this + 25);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = *(this + 26);
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(this + 27);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = *(this + 28);
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = *(this + 29);
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = *(this + 30);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = *(this + 31);
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = *(this + 32);
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = *(this + 33);
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = *(this + 34);
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = *(this + 35);
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = *(this + 36);
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = *(this + 37);
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = *(this + 38);
    if (v39)
    {
      v40 = *(*v39 + 8);

      v40();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::~PrivateDataCapture(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  *this = &unk_1F4CDC738;
  CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::~PrivateDataCapture(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0B8CBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this)
{
  *this = &unk_1F4CD9528;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0B8CCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0B8CD0C(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x1D387EC80);
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Location::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Location *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 7);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 8);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 10);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 11);
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Location::~Location(CoreNavigation::CLP::LogEntry::PrivateData::Location *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::Location::~Location(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9E10;
  CoreNavigation::CLP::LogEntry::PrivateData::Location::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 12);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::~ClientLocationCoordinate(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::~ClientLocationCoordinate(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9870;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::~DaemonLocation(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
  *this = &unk_1F4CD98E8;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::~DaemonLocation(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::~DaemonLocationPrivate(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  *this = &unk_1F4CD9B40;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::SharedDtor(this);
  sub_1D0B8CD0C(this + 36);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::~DaemonLocationPrivate(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ != this)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 11);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 13);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 17);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 26);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 40);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::~PressureSample(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this)
{
  *this = &unk_1F4CD99D8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::~PressureSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::~DaemonLocationPrivate_AltitudeInfo(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this)
{
  *this = &unk_1F4CD9AC8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::~DaemonLocationPrivate_AltitudeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::~TechnologyStatus(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this)
{
  *this = &unk_1F4CD9BB8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::~TechnologyStatus(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this)
{
  v1 = *(this + 2);
  if (v1 != MEMORY[0x1E69E5958] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x1D387ECA0](v1, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::~XtraFileAvailable(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this)
{
  *this = &unk_1F4CD9D20;
  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::~XtraFileAvailable(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::~LocationDerivedSpeed(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this)
{
  *this = &unk_1F4CD9D98;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::~LocationDerivedSpeed(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::~MapMatcherData(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this)
{
  *this = &unk_1F4CD9960;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::~MapMatcherData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::~VehicleSpeed(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::~VehicleSpeed(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9C30;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t trackrun::TrackRunEngineActiveObject::GetTrackRunSolution(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 288));
  if (*(a1 + 1800) == 1 && *(a1 + 1794) == 1)
  {
    memcpy((a2 + 8), (a1 + 1432), 0x16BuLL);
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  std::mutex::unlock((a1 + 288));
  return v4;
}

__n128 sub_1D0B8D894(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v24.__vftable) = 3;
    LOBYTE(v22) = 5;
    cnprint::CNPrinter::Print(&v24, &v22, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v10 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v10 != (off_1F4CEE790 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v10, (off_1F4CEE790 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v24.__vftable = 0;
      std::bad_cast::bad_cast(&v24);
      v24.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v24);
    }

    v11 = *(a2 + 16);
    *a1 = &unk_1F4CEE768;
    result = *(v11 + 112);
    v12 = *(v11 + 128);
    v13 = *(v11 + 144);
    v14 = *(v11 + 160);
    v15 = *(v11 + 48);
    v16 = *(v11 + 64);
    v17 = *(v11 + 80);
    v18 = *(v11 + 96);
    v19 = *(v11 + 16);
    v20 = *(v11 + 32);
    *(a1 + 168) = 0u;
    *(a1 + 8) = v19;
    *(a1 + 24) = v20;
    *(a1 + 72) = v17;
    *(a1 + 88) = v18;
    *(a1 + 40) = v15;
    *(a1 + 56) = v16;
    *(a1 + 136) = v13;
    *(a1 + 152) = v14;
    *(a1 + 104) = result;
    *(a1 + 120) = v12;
    *(a1 + 184) = 0u;
    if (a1 + 168 != v11 + 176)
    {
      *(a1 + 168) = *(v11 + 176);
      result = *(v11 + 192);
      *(a1 + 184) = result;
    }
  }

  else
  {
    v22 = 3;
    v21 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v24.__vftable) = 3;
      v23 = 5;
      cnprint::CNPrinter::Print(&v24, &v23, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v22, &v21, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE790 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE768;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    v9 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = v9;
    *(a1 + 112) = v9;
    *(a1 + 128) = v9;
    *(a1 + 144) = 0x7FF8000000000000;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x3FF0000000000000;
  }

  return result;
}

uint64_t sub_1D0B8DB1C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *(a3 + 12) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != *(a1 + 16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 16) = v3;
  }

  *(a1 + 224) = *a2;
  sub_1D0B894B0(a1 + 240, a3);
  v20 = 0x400000004;
  v15 = &unk_1F4CDEB70;
  v21 = v22;
  v7 = v3 * v3;
  v16 = v3;
  v17 = v3;
  v18 = v3 * v3;
  v19 = v3;
  if (v3 * v3 > 3)
  {
    v8 = &v22[v7];
    bzero(v22, 16 * ((v7 - 1) >> 1));
    *(v8 - 2) = 0;
    *(v8 - 1) = 0;
  }

  else if (v7 >= 1)
  {
    bzero(v22, 8 * (v3 * v3));
  }

  if (v3 >= 1)
  {
    v9 = 0;
    v10 = v21;
    v11 = v3;
    do
    {
      v10[v9] = 0x3FF0000000000000;
      v9 += v3 + 1;
      --v11;
    }

    while (v11);
  }

  sub_1D0B894B0(a1 + 312, &v15);
  if (*(a1 + 8) == 1)
  {
    v12 = *(a1 + 20);
    v20 = 0x300000004;
    v15 = &unk_1F4CDEC00;
    v13 = v12 * v3;
    v21 = v22;
    v16 = v3;
    v17 = v12;
    v18 = v12 * v3;
    v19 = v3;
    if (v12 * v3 > 3)
    {
      v14 = &v22[v13];
      bzero(v22, 16 * ((v13 - 1) >> 1));
      *(v14 - 2) = 0;
      *(v14 - 1) = 0;
    }

    else if (v13 >= 1)
    {
      bzero(v22, 8 * (v12 * v3));
    }

    sub_1D0B894B0(a1 + 480, &v15);
  }

  result = 0;
  *(a1 + 216) = 1;
  return result;
}

void sub_1D0B8DD18(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B8D894(v6, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v6, v4, v5);
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(uint64_t this, const raven::DecomposedAccelerationEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 224) == 1)
  {
    if (*(this + 8080))
    {
      v6 = CNTimeSpan::operator-((*(*(this + 8048) + 8 * (*(this + 8072) / 0x14uLL)) + 200 * (*(this + 8072) % 0x14uLL) + 152), a2 + 19, a3, a4);
      if (fabs(v7 + v6) >= 2.22044605e-16)
      {
        raven::RavenDeviceAttitudeActiveObject::ResetWahbaSolver(this);
      }
    }

    sub_1D0B8DE4C((this + 8040), a2);
    if (*(this + 8080) > *(*(this + 232) + 984))
    {

      sub_1D0B8DF84((this + 8040));
    }
  }
}

void sub_1D0B8DE4C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 20 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1D0B8C020(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x14)) + 200 * (v7 % 0x14);
  }

  *v8 = &unk_1F4CEE768;
  v9 = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 8) = v9;
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 72) = v12;
  *(v8 + 56) = v11;
  *(v8 + 40) = v10;
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  v15 = *(a2 + 136);
  *(v8 + 152) = *(a2 + 152);
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  if (v8 != a2)
  {
    *(v8 + 168) = *(a2 + 168);
    *(v8 + 184) = *(a2 + 184);
  }

  ++a1[5];
}

uint64_t sub_1D0B8DF84(int64x2_t *a1)
{
  (**(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x14uLL)) + 200 * (a1[2].i64[0] % 0x14uLL)))();
  a1[2] = vaddq_s64(a1[2], xmmword_1D0E76280);

  return sub_1D0B8E038(a1, 1);
}

uint64_t sub_1D0B8E038(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x14)
  {
    a2 = 1;
  }

  if (v2 < 0x28)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 20;
  }

  return v4 ^ 1u;
}

void sub_1D0B8E0BC(uint64_t a1, int64x2_t **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B88E94(v4, a3);
  raven::RavenIMUPreprocessorActiveObject::HandleEvent(v3, v4);
}

void raven::RavenIMUPreprocessorActiveObject::HandleEvent(int64x2_t *this, const raven::AccelerometerEvent *a2)
{
  if (this[14].i8[0] != 1)
  {
    return;
  }

  if (!this[29].i64[1])
  {
    goto LABEL_28;
  }

  __p = (*(*a2 + 16))(a2);
  *&v63 = v4;
  v5 = *(this[27].i64[1] + 8 * (this[29].i64[0] / 0x1AuLL)) + 152 * (this[29].i64[0] % 0x1AuLL);
  v73[0] = (*(*v5 + 16))(v5);
  v73[1] = v6;
  v9 = CNTimeSpan::operator-(&__p, v73, v7, v8);
  v74 = v9;
  v75 = v10;
  if (v9)
  {
    if (v9 < 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!sub_1D0B8E6A8(&v74, &this[22].i64[1]))
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v11.n128_f64[0] = v10;
  if (v10 >= 0.0)
  {
    goto LABEL_7;
  }

LABEL_8:
  LOWORD(v73[0]) = 12;
  v72 = 3;
  v12 = (*(*a2 + 16))(a2, v11);
  v14 = v13 + v12;
  (*(this->i64[0] + 16))(&__p, this);
  if (v63 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  cnprint::CNPrinter::Print(v73, &v72, "Warning: time,%.3lf,%s emptying history,accelerometer,dt,%.3lf", v14, p_p, v75 + v74);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p);
  }

  v16 = this[27].i64[1];
  v17 = this[28].i64[0];
  if (v17 == v16)
  {
    v17 = this[27].i64[1];
  }

  else
  {
    v18 = this[29].u64[0];
    v19 = &v16[v18 / 0x1A];
    v20 = v16[(this[29].i64[1] + v18) / 0x1A] + 152 * ((this[29].i64[1] + v18) % 0x1A);
    if (*v19 + 152 * (v18 % 0x1A) != v20)
    {
      v21 = (*v19 + 152 * (v18 % 0x1A));
      do
      {
        v22 = *v21;
        v21 += 19;
        (*v22)();
        if (v21 - *v19 == 3952)
        {
          v23 = v19[1];
          ++v19;
          v21 = v23;
        }
      }

      while (v21 != v20);
      v16 = this[27].i64[1];
      v17 = this[28].i64[0];
    }
  }

  this[29].i64[1] = 0;
  v24 = (v17 - v16) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v16);
      v25 = this[28].i64[0];
      v16 = (this[27].i64[1] + 8);
      this[27].i64[1] = v16;
      v24 = (v25 - v16) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 13;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_28;
    }

    v26 = 26;
  }

  this[29].i64[0] = v26;
LABEL_28:
  sub_1D0B7E140(this + 27, a2);
  v27 = this[29].u64[1];
  if (v27 == this[26].i64[1])
  {
    v63 = 0uLL;
    __p = &unk_1F4CEEEB0;
    LOBYTE(v64) = 0;
    *(&v64 + 1) = 0;
    *&v65 = 0;
    BYTE8(v65) = 0;
    v66 = 0uLL;
    LOBYTE(v67) = 0;
    *(&v67 + 1) = 0;
    *v68 = 0;
    *&v68[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v68[24] = *&v68[8];
    v69 = 0;
    v70 = 0x7FF8000000000000;
    v71 = 0;
    v28 = this[23].u32[2];
    if (v27 > v28)
    {
      v29 = this[29].u64[0];
      v30 = v29 + v28;
      v31 = this[27].i64[1];
      v32 = *(v31 + 8 * (v30 / 0x1A)) + 152 * (v30 % 0x1A);
      v33 = *(v32 + 8);
      v64 = *(v32 + 24);
      v63 = v33;
      v34 = *(v32 + 40);
      v35 = *(v32 + 56);
      v36 = *(v32 + 72);
      *v68 = *(v32 + 88);
      v67 = v36;
      v66 = v35;
      v65 = v34;
      memset(&v68[16], 0, 24);
      v37 = this[26].u64[0];
      v38 = this[24].i64[1];
      v39 = this[25].i64[0];
      v40 = (v38 + 8 * (v37 >> 9));
      if (v39 == v38)
      {
        v41 = 0;
      }

      else
      {
        v41 = (*v40 + 8 * (this[26].i64[0] & 0x1FF));
      }

      v42 = (v31 + 8 * (v29 / 0x1A));
      v43 = this[28].i64[0];
      if (v43 == v31)
      {
        v44 = 0;
      }

      else
      {
        v44 = *v42 + 152 * (v29 % 0x1A);
      }

      v45 = (v29 + v27) % 0x1A;
      v46 = v37 + v27;
      v47 = (v37 + v27) >> 9;
      v48 = v46 & 0x1FF;
      v49 = 0uLL;
      v35.n128_u64[0] = 0;
      while (1)
      {
        v50 = v44 - 3952;
        do
        {
          if (v39 == v38)
          {
            v51 = 0;
          }

          else
          {
            v51 = *(v38 + 8 * v47) + 8 * v48;
          }

          if (v41 == v51 || (v43 == v31 ? (v52 = 0) : (v52 = *(v31 + 8 * ((v29 + v27) / 0x1A)) + 152 * v45), v44 == v52))
          {
            v56 = (*(v31 + 8 * ((v27 + v29 - 1) / 0x1A)) + 152 * ((v27 + v29 - 1) % 0x1A));
            (**v56)(v56, v45, v49, v35);
            v57 = this[28].i64[0];
            v58 = v57 == this[27].i64[1];
            v59 = 26 * ((v57 - this[27].i64[1]) >> 3) - 1;
            v61 = this[29].i64[0];
            v60 = this[29].i64[1];
            this[29].i64[1] = v60 - 1;
            if (v58)
            {
              v59 = 0;
            }

            if ((v59 - (v60 + v61) - 51) <= 0xFFFFFFFFFFFFFFCBLL)
            {
              operator delete(*(v57 - 8));
              this[28].i64[0] -= 8;
            }

            sub_1D0B8E718(this, &__p);
          }

          v53 = *v41++;
          v49 = vmlaq_n_f64(v49, *(v44 + 104), v53);
          *&v68[16] = v49;
          v35.n128_f64[0] = v35.n128_f64[0] + v53 * *(v44 + 120);
          *&v68[32] = v35.n128_u64[0];
          if ((v41 - *v40) == 4096)
          {
            v54 = v40[1];
            ++v40;
            v41 = v54;
          }

          v50 += 152;
          v44 += 152;
        }

        while (*v42 != v50);
        v55 = v42[1];
        ++v42;
        v44 = v55;
      }
    }

    sub_1D0C543A8("deque");
  }
}

void sub_1D0B8E680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D0B8E6A8(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 || (v3 = a1[1], (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    v4 = *a2;
    if (!*a2 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v5 = a1[1] < a2[1];
      return !v5;
    }

    if (v2 != v4)
    {
      return v2 > v4;
    }

    v3 = a1[1];
  }

  v5 = v3 < a2[1];
  return !v5;
}

void sub_1D0B8E7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B8E7D0(uint64_t a1, int64x2_t **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B88E94(v4, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0B8E830(int64x2_t *a1, uint64_t a2, double *a3, unint64_t a4)
{
  v8 = sub_1D0B8910C(a1, a2);
  if (a1[2].i64[1])
  {
    for (i = 1; ; i = 0)
    {
      v19[0] = (*(*a2 + 16))(a2, v8);
      v19[1] = v10;
      v11 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x1AuLL)) + 152 * (a1[2].i64[0] % 0x1AuLL);
      v18[0] = (*(*v11 + 16))(v11);
      v18[1] = v12;
      *&v20[0] = CNTimeSpan::operator-(v19, v18, v13, v14);
      v20[1] = v15;
      if (!sub_1D0B7CF88(v20, a3) && a1[2].i64[1] <= a4)
      {
        break;
      }

      sub_1D0B7E234(a1);
      v16 = 0;
      if (!a1[2].i64[1])
      {
        return v16 & 1;
      }
    }

    v16 = i;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(int64x2_t *this, const raven::AccelerometerEvent *a2)
{
  if (this[14].i8[0])
  {
    __p = 2;
    v24 = 0;
    v4 = sub_1D0B8E830(this + 479, a2, &__p, this[454].u64[0]);
    if ((v4 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v4))
    {
      LOWORD(__p) = 12;
      LOBYTE(v27) = 0;
      v5 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&__p, &v27, "DevAtt,Accelerometer stationary detection queue overflowed at %.3lf", v6 + v5);
    }

    __p = 3;
    v24 = 0x3FE0000000000000;
    v7 = sub_1D0B8E830(this + 467, a2, &__p, this[454].u64[1]);
    if ((v7 & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(v7))
      {
        LOWORD(__p) = 12;
        LOBYTE(v27) = 0;
        v8 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&__p, &v27, "DevAtt,Accelerometer down sampling queue overflowed at %.3lf", v9 + v8);
      }

      v10 = this[15].i64[1];
      v11 = this[16].i64[0];
      if (v11 == v10)
      {
        v14 = &this[17].i64[1];
        v11 = this[15].i64[1];
      }

      else
      {
        v12 = this[17].u64[0];
        v13 = &v10[v12 / 0x1A];
        v14 = &this[17].i64[1];
        v15 = v10[(this[17].i64[1] + v12) / 0x1A] + 152 * ((this[17].i64[1] + v12) % 0x1A);
        if (*v13 + 152 * (v12 % 0x1A) != v15)
        {
          v16 = (*v13 + 152 * (v12 % 0x1A));
          do
          {
            v17 = *v16;
            v16 += 19;
            (*v17)();
            if (v16 - *v13 == 3952)
            {
              v18 = v13[1];
              ++v13;
              v16 = v18;
            }
          }

          while (v16 != v15);
          v10 = this[15].i64[1];
          v11 = this[16].i64[0];
        }
      }

      *v14 = 0;
      v20 = (v11 - v10) >> 3;
      if (v20 >= 3)
      {
        do
        {
          operator delete(*v10);
          v21 = this[16].i64[0];
          v10 = (this[15].i64[1] + 8);
          this[15].i64[1] = v10;
          v20 = (v21 - v10) >> 3;
        }

        while (v20 > 2);
      }

      if (v20 == 1)
      {
        v22 = 13;
      }

      else
      {
        if (v20 != 2)
        {
          return;
        }

        v22 = 26;
      }

      this[17].i64[0] = v22;
    }
  }

  else
  {
    v27 = 12;
    v26 = 3;
    (*(this->i64[0] + 16))(&__p, this, a2);
    if (v25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNPrinter::Print(&v27, &v26, "Warning: %s is not configured yet.", p_p);
    if (v25 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1D0B8EC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B8EC88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B88E94(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  sub_1D0B8E718(v3, v4);
}

uint64_t sub_1D0B8ECD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B8D894(v5, a3);
  return sub_1D0B8ED10(v3 + 440, v5);
}

uint64_t sub_1D0B8ED10(uint64_t result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = *(a2 + 24);
    *(result + 16) = *(a2 + 8);
    *(result + 32) = v2;
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    v5 = *(a2 + 88);
    *(result + 80) = *(a2 + 72);
    *(result + 96) = v5;
    *(result + 48) = v3;
    *(result + 64) = v4;
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    v8 = *(a2 + 152);
    *(result + 144) = *(a2 + 136);
    *(result + 160) = v8;
    *(result + 112) = v6;
    *(result + 128) = v7;
    if (result + 176 != a2 + 168)
    {
      *(result + 176) = *(a2 + 168);
      *(result + 192) = *(a2 + 184);
    }
  }

  else
  {
    *(result + 8) = &unk_1F4CEE768;
    v9 = *(a2 + 104);
    v10 = *(a2 + 120);
    v11 = *(a2 + 136);
    v12 = *(a2 + 152);
    v13 = *(a2 + 40);
    v14 = *(a2 + 56);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v17 = *(a2 + 8);
    v18 = *(a2 + 24);
    *(result + 176) = 0u;
    *(result + 16) = v17;
    *(result + 32) = v18;
    *(result + 80) = v15;
    *(result + 96) = v16;
    *(result + 48) = v13;
    *(result + 64) = v14;
    *(result + 144) = v11;
    *(result + 160) = v12;
    *(result + 112) = v9;
    *(result + 128) = v10;
    *(result + 192) = 0u;
    if (result + 176 != a2 + 168)
    {
      *(result + 176) = *(a2 + 168);
      *(result + 192) = *(a2 + 184);
    }

    *result = 1;
  }

  return result;
}

void sub_1D0B8EE34(uint64_t a1, int64x2_t **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B8D894(v41, a3);
  v6 = v3[17].i64[1];
  if (!v6)
  {
LABEL_31:
    sub_1D0B8DE4C(&v3[15], v41);
    goto LABEL_32;
  }

  v7 = CNTimeSpan::operator-(v42, (*(v3[15].i64[1] + 8 * ((v6 + v3[17].i64[0] - 1) / 0x14uLL)) + 200 * ((v6 + v3[17].i64[0] - 1) % 0x14uLL) + 152), v4, v5);
  if (fabs(v8 + v7) > 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(v44[0]) = 12;
      LOBYTE(v43[0]) = 1;
      v9 = (*(v41[0] + 16))(v41);
      cnprint::CNPrinter::Print(v44, v43, "Acceleration reference frame change, t,%.3lf, reset buffer", v10 + v9);
    }

    v11 = v3[15].i64[1];
    v12 = v3[16].i64[0];
    if (v12 == v11)
    {
      v12 = v3[15].i64[1];
    }

    else
    {
      v13 = v3[17].u64[0];
      v14 = &v11[v13 / 0x14];
      v15 = v11[(v3[17].i64[1] + v13) / 0x14] + 200 * ((v3[17].i64[1] + v13) % 0x14);
      if (*v14 + 200 * (v13 % 0x14) != v15)
      {
        v16 = (*v14 + 200 * (v13 % 0x14));
        do
        {
          v17 = *v16;
          v16 += 25;
          (*v17)();
          if (v16 - *v14 == 4000)
          {
            v18 = v14[1];
            ++v14;
            v16 = v18;
          }
        }

        while (v16 != v15);
        v11 = v3[15].i64[1];
        v12 = v3[16].i64[0];
      }
    }

    v3[17].i64[1] = 0;
    v19 = v12 - v11;
    if (v19 >= 3)
    {
      do
      {
        operator delete(*v11);
        v20 = v3[16].i64[0];
        v11 = (v3[15].i64[1] + 8);
        v3[15].i64[1] = v11;
        v19 = (v20 - v11) >> 3;
      }

      while (v19 > 2);
    }

    if (v19 == 1)
    {
      v21 = 10;
      goto LABEL_19;
    }

    if (v19 == 2)
    {
      v21 = 20;
LABEL_19:
      v3[17].i64[0] = v21;
    }
  }

  if (!v3[17].i64[1])
  {
    goto LABEL_31;
  }

  v22 = (*(v41[0] + 16))(v41);
  v24 = v23;
  v25 = v23;
  v26 = v3[17].i64[1] + v3[17].i64[0] - 1;
  v27 = *(v3[15].i64[1] + 8 * (v26 / 0x14)) + 200 * (v26 % 0x14);
  v28 = (*(*v27 + 16))(v27);
  if (!v22 && (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (!v28 ? (v30 = (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v30 = 1), !v30 || (v31 = v22 <= v28, v22 == v28)))
  {
    v31 = v25 <= v29;
  }

  if (!v31)
  {
    goto LABEL_31;
  }

LABEL_32:
  v32 = v3[17].u64[1];
  if (v32 >= 2)
  {
    v33 = *(v3[15].i64[1] + 8 * ((v32 + v3[17].i64[0] - 1) / 0x14)) + 200 * ((v32 + v3[17].i64[0] - 1) % 0x14);
    v44[0] = (*(*v33 + 16))(v33);
    v44[1] = v34;
    v35 = *(v3[15].i64[1] + 8 * (v3[17].i64[0] / 0x14uLL)) + 200 * (v3[17].i64[0] % 0x14uLL);
    v43[0] = (*(*v35 + 16))(v35);
    v43[1] = v36;
    v39 = CNTimeSpan::operator-(v44, v43, v37, v38);
    if (v40 + v39 > 0.55)
    {
      sub_1D0B8DF84(v3 + 15);
    }
  }
}

void sub_1D0B8F224(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B88E94(v8, a3);
  if (*(v3 + 224))
  {
    if (*(v3 + 497) == 1 && *(v3 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent((v3 + 280), v8);
    }
  }

  else
  {
    v13 = 12;
    v12 = 2;
    v11[0] = (*(v8[0] + 16))(v8, v4);
    v11[1] = v5;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 232, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 255) >= 0)
    {
      v7 = (v3 + 232);
    }

    else
    {
      v7 = *(v3 + 232);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0B8F364(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(raven::RavenMovingStateEstimator *this, const raven::AccelerometerEvent *a2)
{
  v4 = -288;
  do
  {
    sub_1D0B8954C(this + v4 + 520, a2 + 13, 1.0);
    sub_1D0B8954C(this + v4 + 568, a2 + 14, 1.0);
    sub_1D0B8954C(this + v4 + 616, a2 + 15, 1.0);
    v4 += 144;
  }

  while (v4);
  v5 = (*(*a2 + 16))(a2);
  v7 = v6;
  v8 = v6;
  v115 = 0.0;
  v116 = 0x3FD0000000000000;
  v11 = CNTimeSpan::operator+(this + 128, &v115, v9, v10);
  if (v5)
  {
    v13 = 1;
  }

  else
  {
    v13 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v13 || !v11 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v5 == v11)
  {
    if (v8 > v12)
    {
      goto LABEL_12;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_25;
  }

  if (v5 <= v11)
  {
    goto LABEL_17;
  }

LABEL_12:
  v14 = this + 232;
  v15 = (this + 144 * *(this + 65) + 232);
  v16 = sqrt(v15[5] + v15[11] + v15[17]);
  v17 = v15[3];
  v18 = v15[9];
  v19 = v15[15];
  v20 = (*(*a2 + 16))(a2);
  v22 = *(this + 1016);
  if (v22 == 1)
  {
    v23 = *(this + 120);
    v24 = v17 - v23;
    v25 = *(this + 121);
    v26 = v18 - v25;
    v27 = *(this + 122);
    v28 = fmax(vabdd_f64(v17, v23), fmax(vabdd_f64(v18, v25), vabdd_f64(v19, v27)));
    if (v28 <= 1.34078079e154)
    {
      v31 = 1.0;
      if (v28 >= 7.45834073e-155)
      {
LABEL_21:
        v30 = sqrt(v26 * v31 * (v26 * v31) + v24 * v31 * (v24 * v31) + (v19 - v27) * v31 * ((v19 - v27) * v31)) / v31;
        goto LABEL_22;
      }

      *&v29 = 1.40591056e160;
    }

    else
    {
      *&v29 = 7.112828e-161;
    }

    v31 = *&v29;
    goto LABEL_21;
  }

  v30 = NAN;
LABEL_22:
  *(this + 120) = v17;
  *(this + 121) = v18;
  *(this + 122) = v19;
  *(this + 123) = v30;
  *(this + 124) = v16;
  *(this + 125) = v20;
  *(this + 126) = v21;
  if ((v22 & 1) == 0)
  {
    *(this + 1016) = 1;
  }

  v32 = &v14[144 * *(this + 65)];
  *v32 = 0;
  *(v32 + 2) = 0u;
  *(v32 + 20) = 0u;
  *(v32 + 4) = 0u;
  v33 = ~*(this + 130);
  v34 = &v14[144 * *(this + 65)];
  v34[48] = 0;
  *(v34 + 100) = 0u;
  *(v34 + 116) = 0u;
  *(v34 + 8) = 0u;
  *(v34 + 52) = 0u;
  *(v34 + 68) = 0u;
  *(v34 + 81) = 0u;
  *(this + 65) = v33 & 1;
  *(this + 128) = (*(*a2 + 16))(a2);
  *(this + 129) = v35;
LABEL_25:
  sub_1D0B8954C(this + 736, a2 + 13, 1.0);
  sub_1D0B8954C(this + 784, a2 + 14, 1.0);
  sub_1D0B8954C(this + 832, a2 + 15, 1.0);
  v36 = (*(*a2 + 16))(a2);
  v38 = v37;
  v39 = v37;
  v115 = 0.0;
  v116 = 0x3FB999999999999ALL;
  result = CNTimeSpan::operator+(this + 118, &v115, v40, v41);
  if (!v36 && (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !result && (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v36 == result)
  {
    if (v39 > v43)
    {
      goto LABEL_31;
    }

LABEL_36:
    v50 = 0;
    goto LABEL_44;
  }

  if (v36 <= result)
  {
    goto LABEL_36;
  }

LABEL_31:
  v44 = sqrt(*(this + 97) + *(this + 103) + *(this + 109));
  v45 = *(this + 95);
  v46 = *(this + 101);
  v47 = *(this + 107);
  v48 = (*(*a2 + 16))(a2);
  v50 = *(this + 936);
  if (v50 == 1)
  {
    v51 = *(this + 110);
    v52 = v45 - v51;
    v53 = *(this + 111);
    v54 = v46 - v53;
    v55 = *(this + 112);
    v56 = fmax(vabdd_f64(v45, v51), fmax(vabdd_f64(v46, v53), vabdd_f64(v47, v55)));
    if (v56 <= 1.34078079e154)
    {
      v59 = 1.0;
      if (v56 >= 7.45834073e-155)
      {
LABEL_40:
        v58 = sqrt(v54 * v59 * (v54 * v59) + v52 * v59 * (v52 * v59) + (v47 - v55) * v59 * ((v47 - v55) * v59)) / v59;
        goto LABEL_41;
      }

      *&v57 = 1.40591056e160;
    }

    else
    {
      *&v57 = 7.112828e-161;
    }

    v59 = *&v57;
    goto LABEL_40;
  }

  v58 = NAN;
LABEL_41:
  *(this + 110) = v45;
  *(this + 111) = v46;
  *(this + 112) = v47;
  *(this + 113) = v58;
  *(this + 114) = v44;
  *(this + 115) = v48;
  *(this + 116) = v49;
  if ((v50 & 1) == 0)
  {
    *(this + 936) = 1;
  }

  *(this + 736) = 0;
  *(this + 54) = 0u;
  *(this + 836) = 0u;
  *(this + 852) = 0u;
  *(this + 740) = 0u;
  *(this + 756) = 0u;
  *(this + 769) = 0u;
  *(this + 788) = 0u;
  *(this + 804) = 0u;
  *(this + 817) = 0u;
  result = (*(*a2 + 16))(a2);
  *(this + 118) = result;
  *(this + 119) = v60;
LABEL_44:
  if ((v22 | v50) == 1 && *(this + 1016) == 1)
  {
    v61 = (this + 992);
    if (v22 && *(this + 4208) == 1 && *(this + 363) < sqrt(*(this + 367)) && *v61 < 1.0)
    {
      sub_1D0B9FFD4(this + 672, *v61);
    }

    v62 = *(this + 1544) == 1 && *(this + 1504) - 1 < 2;
    if (*(this + 176))
    {
      v63 = *(this + 89);
      v64 = *(this + 90);
      if (v63 == v64)
      {
        v66 = *(this + 89);
      }

      else
      {
        v65 = v63 + 1;
        v66 = *(this + 89);
        if (v63 + 1 != v64)
        {
          v67 = *v63;
          v66 = *(this + 89);
          v68 = v63 + 1;
          do
          {
            v70 = *v68++;
            v69 = v70;
            v71 = v67 >= v70;
            if (v67 <= v70)
            {
              v67 = v69;
            }

            if (!v71)
            {
              v66 = v65;
            }

            v65 = v68;
          }

          while (v68 != v64);
        }
      }

      v72 = *(this + 124);
      v73 = *(this + 85) + *(this + 87) * ((v66 - v63) + 1.0);
      v74 = v73 + v73;
      if (v74 > 0.5)
      {
        v74 = 0.5;
      }

      if (v72 < v74)
      {
        v62 = 1;
      }
    }

    else
    {
      v72 = *v61;
    }

    if (v72 >= 1.0)
    {
      v62 = 0;
    }

    if (*(this + 4208) == 1)
    {
      if (*(this + 363) >= sqrt(*(this + 367)))
      {
        LOBYTE(v62) = 0;
      }

      if (!v62)
      {
        goto LABEL_83;
      }
    }

    else if (!v62)
    {
      goto LABEL_83;
    }

    if (v50)
    {
      if ((*(this + 936) & 1) == 0)
      {
        goto LABEL_135;
      }

      v115 = v72 * *(this + 113);
      sub_1D0B8954C(this + 528, &v115, 1.0);
    }

    if (v22)
    {
      sub_1D0B8954C(this + 624, this + 124, 1.0);
      sub_1D0B8954C(this + 576, this + 123, 1.0);
    }

LABEL_83:
    result = (*(*a2 + 16))(a2);
    v75 = result;
    v77 = v76;
    if (!v50 || *(this + 1041) != 1)
    {
      if (!v22)
      {
        return result;
      }

      if (*(this + 1040) == 1)
      {
        v90 = *(this + 1544) == 1 && *(this + 1504) - 1 < 2;
        v100 = *(this + 123);
        v101 = 0.0;
        if (*(this + 576) == 1 && (*(this + 75) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v102 = sqrt(*(this + 77));
          v103 = *(this + 75) + v102 * 3.0;
          v82 = (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
          v101 = 0.0;
          if (v82)
          {
            v101 = v103;
          }
        }

        v104 = v101 < v100;
        if (*(this + 4208) == 1)
        {
          v104 = v101 < v100;
          if (*(this + 363) > sqrt(*(this + 367)))
          {
            v104 = 1;
          }
        }

        v99 = 0.01;
        v97 = 0.99;
        if (!v104)
        {
          v97 = 0.01;
        }

        v98 = 4.0;
        if (!v90 || !v104)
        {
          v98 = 0.1;
        }

        v96 = 1.0 - v97;
        goto LABEL_132;
      }

      v91 = *(this + 124);
      v92 = 0.0;
      if (*(this + 624) == 1 && (*(this + 81) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v93 = sqrt(*(this + 83));
        v94 = *(this + 81) + v93 * 3.0;
        v82 = (*&v93 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        v92 = 0.0;
        if (v82)
        {
          v92 = v94;
        }
      }

      v95 = v92 < v91;
      if (*(this + 4208) == 1)
      {
        v95 = v92 < v91;
        if (*(this + 363) > sqrt(*(this + 367)))
        {
          v95 = 1;
        }
      }

      v89 = !v95;
LABEL_113:
      v96 = 0.01;
      v97 = 0.99;
      if (v89)
      {
        v97 = 0.01;
      }

      v98 = 4.0;
      if (!v89)
      {
        v98 = 0.1;
      }

      v99 = fmin(fmax(1.0 - v97, 0.0), 1.0);
LABEL_132:
      v105 = v98 + -0.1;
      v106 = v105 * v96 + 0.1;
      v107 = v105 * v97 + 0.1;
      v108 = v105 * v99 + 0.1;
      v109 = v108 + v106 + v107;
      v110 = v106 / v109;
      v111 = v107 / v109;
      v112 = v108 / v109;
      result = (*(*a2 + 16))(a2);
      v113 = *(this + 64);
      *this = sub_1D0BBABC4;
      *(this + 1) = v75;
      *(this + 2) = v77;
      *(this + 3) = v110;
      *(this + 4) = v112;
      *(this + 5) = v111;
      *(this + 6) = result;
      *(this + 7) = v114;
      if ((v113 & 1) == 0)
      {
        *(this + 64) = 1;
      }

      return result;
    }

    if (*(this + 936))
    {
      v78 = *(this + 124);
      v79 = 0.0;
      if (*(this + 624) == 1 && (*(this + 81) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v80 = sqrt(*(this + 83));
        v81 = *(this + 81) + v80 * 3.0;
        v82 = (*&v80 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        v79 = 0.0;
        if (v82)
        {
          v79 = v81;
        }
      }

      v83 = v79 < v78;
      if (*(this + 4208) == 1)
      {
        v83 = v79 < v78;
        if (*(this + 363) > sqrt(*(this + 367)))
        {
          v83 = 1;
        }
      }

      v84 = *(this + 113) * v78;
      v85 = 0.0;
      if (*(this + 528) == 1 && (*(this + 69) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v86 = sqrt(*(this + 71));
        v87 = *(this + 69) + v86 * 3.0;
        v82 = (*&v86 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        v85 = 0.0;
        if (v82)
        {
          v85 = v87;
        }
      }

      v88 = v85 < v84;
      if (*(this + 4208) && *(this + 363) > sqrt(*(this + 367)))
      {
        v88 = 1;
      }

      v89 = !v83 && !v88;
      goto LABEL_113;
    }

LABEL_135:
    sub_1D0C42F28();
  }

  return result;
}

void sub_1D0B8FDBC(uint64_t a1, _BYTE **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B88E94(v4, a3);
  if (v3[224] == 1)
  {
    if (cnestimation::PeriodicityTracker::AddSignalSample((v3 + 240), sqrt(v7 * v7 + v6 * v6 + v8 * v8)))
    {
      (*(*v3 + 80))(v3);
    }

    else
    {
      (*(*v3 + 88))(v3, &v5);
    }
  }
}

uint64_t cnestimation::PeriodicityTracker::AddSignalSample(cnestimation::PeriodicityTracker *this, double a2)
{
  v16[0] = a2;
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_3:
    cnestimation::PeriodicityTracker::Reset(this);
    return 0xFFFFFFFFLL;
  }

  sub_1D0B90B68(this + 12, v16);
  v5 = *(this + 17);
  if (v5 > *(this + 23))
  {
    ++*(this + 16);
    *(this + 17) = v5 - 1;
    sub_1D0B90D48(this + 96, 1);
  }

  v6 = *(this + 19);
  if (*(this + 20) == v6)
  {
    v7 = (this + 184);
  }

  else
  {
    v7 = (this + 184);
    v8 = *(this + 22);
    v9 = (v6 + 8 * (v8 / 0x1A));
    v10 = *v9 + 152 * (v8 % 0x1A);
    v11 = *(v6 + 8 * ((*(this + 23) + v8) / 0x1A)) + 152 * ((*(this + 23) + v8) % 0x1A);
    if (v10 != v11)
    {
      LOBYTE(v12) = 1;
      while (!cndft::SlidingDFT::AddSample(v10, v16[0]))
      {
        v13 = *(v10 + 144);
        if (*(this + 17) != v13)
        {
          break;
        }

        if (*v10 == 1)
        {
          v12 = (v13 >= *(v10 + 16)) & v12;
        }

        else
        {
          v12 = 0;
        }

        v10 += 152;
        if (v10 - *v9 == 3952)
        {
          v14 = v9[1];
          ++v9;
          v10 = v14;
        }

        if (v10 == v11)
        {
          if (v12)
          {
            goto LABEL_22;
          }

          return 0;
        }
      }

      goto LABEL_3;
    }
  }

LABEL_22:
  v15 = *v7;
  if (*v7 >= 3)
  {
    if (v15 <= 0x666666666666666)
    {
      sub_1D0B90EF0(v15);
    }

    sub_1D0C5663C();
  }

  return 0;
}

void sub_1D0B90B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1D0C56D94(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1D0B90B68(unint64_t *a1, double *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_1D0C1245C(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

uint64_t cndft::SlidingDFT::AddSample(cndft::SlidingDFT *this, double a2)
{
  v13 = a2;
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 18);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3)
  {
    v7 = (*(*(this + 14) + (((v3 + *(this + 17) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v3 + *(this + 136) - 1));
    v5 = *v7;
    v6 = v7[1] + 0.0;
  }

  if (*(this + 12) >= *(this + 4))
  {
    v4 = *(*(*(this + 8) + ((*(this + 11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 11) & 0x1FFLL));
  }

  sub_1D0B90B68(this + 7, &v13);
  v11[0] = v5 - v4 + v13;
  v11[1] = v6;
  v12.n128_u64[0] = sub_1D0B90DA8(v11, this + 5);
  v12.n128_u64[1] = v8;
  sub_1D0B90E04(this + 13, &v12);
  v9 = *(this + 12);
  if (v9 != *(this + 18))
  {
    cndft::SlidingDFT::ResetDFT(this);
    return 0xFFFFFFFFLL;
  }

  if (v9 > *(this + 4))
  {
    ++*(this + 11);
    *(this + 12) = v9 - 1;
    sub_1D0B90D48(this + 56, 1);
    *(this + 136) = vaddq_s64(*(this + 136), xmmword_1D0E76280);
    sub_1D0B90E90(this + 104, 1);
  }

  return 0;
}

uint64_t sub_1D0B90D48(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

__n128 sub_1D0B90E04(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1D0C128C0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t sub_1D0B90E90(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void sub_1D0B90EF0(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

__n128 sub_1D0B90F48(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = a2 - 5;
  v11 = &a2[-8].n128_i8[8];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = a2[-1].n128_u64[1];
        if (result.n128_f64[0] < v12[2].n128_f64[0])
        {
          v286 = v12[2].n128_u64[0];
          v218 = *v12;
          v254 = v12[1];
          v118 = *(a2 - 40);
          v119 = *(a2 - 24);
          v12[2].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v118;
          v12[1] = v119;
          result = v218;
          a2[-1].n128_u64[1] = v286;
          *(a2 - 24) = v254;
          *(a2 - 40) = v218;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v125 = v12[4].n128_f64[1];
      v126 = v12[7].n128_f64[0];
      if (v125 >= v12[2].n128_f64[0])
      {
        if (v126 < v125)
        {
          v173 = v12[4].n128_i64[1];
          result = *(v12 + 40);
          v174 = v12[6];
          *(v12 + 40) = v12[5];
          v175 = *(v12 + 56);
          *(v12 + 56) = v174;
          v12[4].n128_u64[1] = v12[7].n128_u64[0];
          v12[5] = result;
          v12[6] = v175;
          v12[7].n128_u64[0] = v173;
          if (v12[4].n128_f64[1] < v12[2].n128_f64[0])
          {
            v291 = v12[2].n128_i64[0];
            v225 = *v12;
            v261 = v12[1];
            v176 = *(v12 + 56);
            *v12 = *(v12 + 40);
            v12[1] = v176;
            v12[2].n128_u64[0] = v12[4].n128_u64[1];
            *(v12 + 40) = v225;
            *(v12 + 56) = v261;
            v12[4].n128_u64[1] = v291;
          }
        }
      }

      else
      {
        if (v126 < v125)
        {
          v288 = v12[2].n128_i64[0];
          v220 = *v12;
          v256 = v12[1];
          v127 = v12[6];
          *v12 = v12[5];
          v12[1] = v127;
          v12[2].n128_u64[0] = v12[7].n128_u64[0];
          v12[5] = v220;
          v12[6] = v256;
          v128 = v288;
          goto LABEL_183;
        }

        v293 = v12[2].n128_i64[0];
        v228 = *v12;
        v264 = v12[1];
        v184 = *(v12 + 56);
        *v12 = *(v12 + 40);
        v12[1] = v184;
        v12[2].n128_u64[0] = v12[4].n128_u64[1];
        *(v12 + 40) = v228;
        *(v12 + 56) = v264;
        v12[4].n128_u64[1] = v293;
        if (v126 < v12[4].n128_f64[1])
        {
          v128 = v12[4].n128_i64[1];
          result = *(v12 + 56);
          v185 = *(v12 + 40);
          v186 = v12[6];
          *(v12 + 40) = v12[5];
          *(v12 + 56) = v186;
          v12[4].n128_u64[1] = v12[7].n128_u64[0];
          v12[5] = v185;
          v12[6] = result;
LABEL_183:
          v12[7].n128_u64[0] = v128;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] >= v12[7].n128_f64[0])
      {
        return result;
      }

      v229 = v12[5];
      v265 = v12[6];
      v294 = v12[7].n128_u64[0];
      v188 = *v9;
      v187 = *(a2 - 24);
      v12[7].n128_u64[0] = a2[-1].n128_u64[1];
      v12[5] = v188;
      v12[6] = v187;
      a2[-1].n128_u64[1] = v294;
      *v9 = v229;
      *(a2 - 24) = v265;
      result.n128_u64[0] = v12[7].n128_u64[0];
      if (result.n128_f64[0] >= v12[4].n128_f64[1])
      {
        return result;
      }

      v189 = v12[4].n128_i64[1];
      result = *(v12 + 40);
      v190 = v12[6];
      *(v12 + 40) = v12[5];
      v191 = *(v12 + 56);
      *(v12 + 56) = v190;
      v12[4].n128_u64[1] = v12[7].n128_u64[0];
      v12[5] = result;
      v12[6] = v191;
      v12[7].n128_u64[0] = v189;
LABEL_187:
      result.n128_u64[0] = v12[4].n128_u64[1];
      if (result.n128_f64[0] < v12[2].n128_f64[0])
      {
        v295 = v12[2].n128_i64[0];
        v230 = *v12;
        v266 = v12[1];
        v192 = *(v12 + 56);
        *v12 = *(v12 + 40);
        v12[1] = v192;
        v12[2].n128_u64[0] = v12[4].n128_u64[1];
        result = v230;
        *(v12 + 40) = v230;
        *(v12 + 56) = v266;
        v12[4].n128_u64[1] = v295;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_1D0C56654(v12, &v12[2].n128_i64[1], &v12[5], &v12[7].n128_i64[1], &a2[-3].n128_i64[1], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v129 = (v12 + 40);
      v131 = v12 == a2 || v129 == a2;
      if (a4)
      {
        if (!v131)
        {
          v132 = 0;
          v133 = v12;
          do
          {
            result.n128_u64[0] = v133[4].n128_u64[1];
            v134 = v133[2].n128_f64[0];
            v133 = v129;
            if (result.n128_f64[0] < v134)
            {
              v221 = *v129;
              v257 = v129[1];
              v135 = v132;
              while (1)
              {
                v136 = v12 + v135;
                v137 = *(&v12[1] + v135);
                *(v136 + 40) = *(v12 + v135);
                *(v136 + 56) = v137;
                *(v136 + 9) = *(v12[2].n128_u64 + v135);
                if (!v135)
                {
                  break;
                }

                v135 -= 40;
                if (result.n128_f64[0] >= *(v136 - 1))
                {
                  v138 = &v12[2].n128_i64[1] + v135;
                  goto LABEL_129;
                }
              }

              v138 = v12;
LABEL_129:
              *v138 = v221;
              *(v138 + 16) = v257;
              *(v138 + 32) = result.n128_u64[0];
            }

            v129 = (v133 + 40);
            v132 += 40;
          }

          while (&v133[2].n128_i8[8] != a2);
        }
      }

      else if (!v131)
      {
        do
        {
          result.n128_u64[0] = a1[4].n128_u64[1];
          v177 = a1[2].n128_f64[0];
          a1 = v129;
          if (result.n128_f64[0] < v177)
          {
            v226 = *v129;
            v262 = v129[1];
            v178 = v129;
            do
            {
              v179 = *(v178 - 24);
              *v178 = *(v178 - 40);
              v178[1] = v179;
              v178[2].n128_u64[0] = v178[-1].n128_u64[1];
              v180 = v178[-3].n128_f64[0];
              v178 = (v178 - 40);
            }

            while (result.n128_f64[0] < v180);
            *v178 = v226;
            v178[1] = v262;
            v178[2].n128_u64[0] = result.n128_u64[0];
          }

          v129 = (v129 + 40);
        }

        while (&a1[2].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v139 = (v14 - 2) >> 1;
        v140 = v139;
        do
        {
          v141 = v140;
          if (v139 >= v140)
          {
            v142 = (2 * v140) | 1;
            v143 = &v12->n128_f64[5 * v142];
            if (2 * v141 + 2 < v14 && v143[4] < v143[9])
            {
              v143 += 5;
              v142 = 2 * v141 + 2;
            }

            v144 = &v12->n128_f64[5 * v141];
            v145 = v144[4];
            if (v143[4] >= v145)
            {
              v222 = *v144;
              v258 = *(v144 + 1);
              do
              {
                v146 = v144;
                v144 = v143;
                v147 = *v143;
                v148 = *(v143 + 1);
                v146[4] = v143[4];
                *v146 = v147;
                *(v146 + 1) = v148;
                if (v139 < v142)
                {
                  break;
                }

                v149 = 2 * v142;
                v142 = (2 * v142) | 1;
                v143 = &v12->n128_f64[5 * v142];
                v150 = v149 + 2;
                if (v150 < v14 && v143[4] < v143[9])
                {
                  v143 += 5;
                  v142 = v150;
                }
              }

              while (v143[4] >= v145);
              *v144 = v222;
              *(v144 + 1) = v258;
              v144[4] = v145;
            }
          }

          v140 = v141 - 1;
        }

        while (v141);
        v151 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v152 = 0;
          v289 = v12[2].n128_u64[0];
          v223 = *v12;
          v259 = v12[1];
          v153 = v12;
          do
          {
            v154 = v153 + 40 * v152;
            v155 = v154 + 40;
            v156 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v151)
            {
              v152 = v156;
            }

            else
            {
              v157 = *(v154 + 9);
              v158 = *(v154 + 14);
              v159 = v154 + 80;
              if (v157 >= v158)
              {
                v152 = v156;
              }

              else
              {
                v155 = v159;
              }
            }

            v160 = *v155;
            v161 = *(v155 + 1);
            v153[2].n128_u64[0] = *(v155 + 4);
            *v153 = v160;
            v153[1] = v161;
            v153 = v155;
          }

          while (v152 <= ((v151 - 2) >> 1));
          a2 = (a2 - 40);
          if (v155 == a2)
          {
            result = v223;
            *(v155 + 4) = v289;
            *v155 = v223;
            *(v155 + 1) = v259;
          }

          else
          {
            v162 = *a2;
            v163 = a2[1];
            *(v155 + 4) = a2[2].n128_u64[0];
            *v155 = v162;
            *(v155 + 1) = v163;
            result = v223;
            a2[2].n128_u64[0] = v289;
            *a2 = v223;
            a2[1] = v259;
            v164 = v155 - v12 + 40;
            if (v164 >= 41)
            {
              v165 = (-2 - 0x3333333333333333 * (v164 >> 3)) >> 1;
              v166 = v12 + 40 * v165;
              result.n128_u64[0] = *(v155 + 4);
              if (*(v166 + 4) < result.n128_f64[0])
              {
                v195 = *v155;
                v198 = *(v155 + 1);
                do
                {
                  v167 = v155;
                  v155 = v166;
                  v168 = *v166;
                  v169 = *(v166 + 1);
                  *(v167 + 4) = *(v166 + 4);
                  *v167 = v168;
                  *(v167 + 1) = v169;
                  if (!v165)
                  {
                    break;
                  }

                  v165 = (v165 - 1) >> 1;
                  v166 = v12 + 40 * v165;
                }

                while (*(v166 + 4) < result.n128_f64[0]);
                *v155 = v195;
                *(v155 + 1) = v198;
                *(v155 + 4) = result.n128_u64[0];
              }
            }
          }
        }

        while (v151-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12->n128_f64[5 * (v14 >> 1)];
    v17 = a2[-1].n128_f64[1];
    if (v13 >= 0x1401)
    {
      v18 = v16[4];
      if (v18 >= v12[2].n128_f64[0])
      {
        if (v17 < v18)
        {
          v269 = *(v16 + 4);
          v201 = *v16;
          v233 = *(v16 + 2);
          v24 = *v9;
          v25 = *(&a2[-2] + 8);
          v16[4] = a2[-1].n128_f64[1];
          *v16 = v24;
          *(v16 + 1) = v25;
          a2[-1].n128_u64[1] = v269;
          *v9 = v201;
          *(a2 - 24) = v233;
          if (v16[4] < v12[2].n128_f64[0])
          {
            v270 = v12[2].n128_i64[0];
            v202 = *v12;
            v234 = v12[1];
            v26 = *v16;
            v27 = *(v16 + 2);
            v12[2].n128_f64[0] = v16[4];
            *v12 = v26;
            v12[1] = v27;
            *(v16 + 4) = v270;
            *v16 = v202;
            *(v16 + 1) = v234;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v267 = v12[2].n128_u64[0];
          v199 = *v12;
          v231 = v12[1];
          v19 = *v9;
          v20 = *(a2 - 24);
          v12[2].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          v12[1] = v20;
          goto LABEL_26;
        }

        v273 = v12[2].n128_i64[0];
        v205 = *v12;
        v237 = v12[1];
        v30 = *v16;
        v31 = *(v16 + 2);
        v12[2].n128_f64[0] = v16[4];
        *v12 = v30;
        v12[1] = v31;
        *(v16 + 4) = v273;
        *v16 = v205;
        *(v16 + 1) = v237;
        if (a2[-1].n128_f64[1] < v16[4])
        {
          v267 = *(v16 + 4);
          v199 = *v16;
          v231 = *(v16 + 2);
          v32 = *v9;
          v33 = *(&a2[-2] + 8);
          v16[4] = a2[-1].n128_f64[1];
          *v16 = v32;
          *(v16 + 1) = v33;
LABEL_26:
          a2[-1].n128_u64[1] = v267;
          *v9 = v199;
          *(a2 - 24) = v231;
        }
      }

      v34 = &v12->n128_f64[5 * v15];
      v35 = (v34 - 5);
      v36 = *(v34 - 1);
      v37 = a2[-3].n128_f64[0];
      if (v36 >= v12[4].n128_f64[1])
      {
        if (v37 < v36)
        {
          v274 = *(v34 - 1);
          v206 = *v35;
          v238 = *(v34 - 3);
          v43 = *v10;
          v44 = a2[-4];
          *(v34 - 1) = a2[-3].n128_f64[0];
          *v35 = v43;
          *(v34 - 3) = v44;
          a2[-3].n128_u64[0] = v274;
          *v10 = v206;
          a2[-4] = v238;
          if (*(v34 - 1) < v12[4].n128_f64[1])
          {
            v45 = *(&v12[2] + 8);
            v239 = *(&v12[3] + 8);
            v46 = v12[4].n128_i64[1];
            v48 = *v35;
            v47 = *(v35 + 1);
            v12[4].n128_u64[1] = *(v35 + 4);
            *(v12 + 40) = v48;
            *(v12 + 56) = v47;
            *(v35 + 4) = v46;
            *v35 = v45;
            *(v35 + 1) = v239;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v38 = *(v12 + 40);
          v39 = *(v12 + 56);
          v40 = v12[4].n128_u64[1];
          v42 = *v10;
          v41 = a2[-4];
          v12[4].n128_u64[1] = a2[-3].n128_u64[0];
          *(v12 + 40) = v42;
          *(v12 + 56) = v41;
          goto LABEL_38;
        }

        v52 = *(&v12[2] + 8);
        v241 = *(&v12[3] + 8);
        v53 = v12[4].n128_i64[1];
        v55 = *v35;
        v54 = *(v35 + 1);
        v12[4].n128_u64[1] = *(v35 + 4);
        *(v12 + 40) = v55;
        *(v12 + 56) = v54;
        *(v35 + 4) = v53;
        *v35 = v52;
        *(v35 + 1) = v241;
        if (a2[-3].n128_f64[0] < *(v35 + 4))
        {
          v276 = *(v35 + 4);
          v208 = *v35;
          v242 = *(v35 + 1);
          v56 = *v10;
          v57 = a2[-4];
          *(v35 + 4) = a2[-3].n128_u64[0];
          *v35 = v56;
          *(v35 + 1) = v57;
          v38 = v208;
          v39 = v242;
          v40 = v276;
LABEL_38:
          a2[-3].n128_u64[0] = v40;
          *v10 = v38;
          a2[-4] = v39;
        }
      }

      v58 = v12 + 40 * v15;
      v59 = *(v58 + 9);
      v60 = a2[-6].n128_f64[1];
      if (v59 >= v12[7].n128_f64[0])
      {
        if (v60 < v59)
        {
          v277 = *(v58 + 9);
          v209 = *(v58 + 40);
          v243 = *(v58 + 56);
          v66 = *v11;
          v67 = *(&a2[-7] + 8);
          *(v58 + 9) = a2[-6].n128_u64[1];
          *(v58 + 56) = v67;
          *(v58 + 40) = v66;
          a2[-6].n128_u64[1] = v277;
          *v11 = v209;
          *(a2 - 104) = v243;
          if (*(v58 + 9) < v12[7].n128_f64[0])
          {
            v68 = v12[5];
            v244 = v12[6];
            v69 = v12[7].n128_i64[0];
            v70 = *(v58 + 56);
            v71 = *(v58 + 40);
            v12[7].n128_u64[0] = *(v58 + 9);
            v12[5] = v71;
            v12[6] = v70;
            *(v58 + 56) = v244;
            *(v58 + 9) = v69;
            *(v58 + 40) = v68;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v61 = v12[5];
          v62 = v12[6];
          v63 = v12[7].n128_u64[0];
          v65 = *v11;
          v64 = *(a2 - 104);
          v12[7].n128_u64[0] = a2[-6].n128_u64[1];
          v12[5] = v65;
          v12[6] = v64;
          goto LABEL_47;
        }

        v72 = v12[5];
        v245 = v12[6];
        v73 = v12[7].n128_i64[0];
        v74 = *(v58 + 56);
        v75 = *(v58 + 40);
        v12[7].n128_u64[0] = *(v58 + 9);
        v12[5] = v75;
        v12[6] = v74;
        *(v58 + 56) = v245;
        *(v58 + 9) = v73;
        *(v58 + 40) = v72;
        if (a2[-6].n128_f64[1] < *(v58 + 9))
        {
          v278 = *(v58 + 9);
          v210 = *(v58 + 40);
          v246 = *(v58 + 56);
          v76 = *v11;
          v77 = *(&a2[-7] + 8);
          *(v58 + 9) = a2[-6].n128_u64[1];
          *(v58 + 56) = v77;
          *(v58 + 40) = v76;
          v61 = v210;
          v62 = v246;
          v63 = v278;
LABEL_47:
          a2[-6].n128_u64[1] = v63;
          *v11 = v61;
          *(a2 - 104) = v62;
        }
      }

      v78 = v16[4];
      v79 = *(v58 + 9);
      if (v78 >= *(v35 + 4))
      {
        if (v79 < v78)
        {
          v280 = *(v16 + 4);
          v212 = *v16;
          v248 = *(v16 + 1);
          v81 = *(v58 + 56);
          *v16 = *(v58 + 40);
          *(v16 + 1) = v81;
          v16[4] = *(v58 + 9);
          *(v58 + 56) = v248;
          *(v58 + 9) = v280;
          *(v58 + 40) = v212;
          if (v16[4] < *(v35 + 4))
          {
            v281 = *(v35 + 4);
            v213 = *v35;
            v249 = *(v35 + 1);
            v82 = *(v16 + 1);
            *v35 = *v16;
            *(v35 + 1) = v82;
            *(v35 + 4) = v16[4];
            *(v16 + 4) = v281;
            *v16 = v213;
            *(v16 + 1) = v249;
          }
        }
      }

      else
      {
        if (v79 < v78)
        {
          v279 = *(v35 + 4);
          v211 = *v35;
          v247 = *(v35 + 1);
          v80 = *(v58 + 56);
          *v35 = *(v58 + 40);
          *(v35 + 1) = v80;
          *(v35 + 4) = *(v58 + 9);
          goto LABEL_56;
        }

        v282 = *(v35 + 4);
        v214 = *v35;
        v250 = *(v35 + 1);
        v83 = *(v16 + 1);
        *v35 = *v16;
        *(v35 + 1) = v83;
        *(v35 + 4) = v16[4];
        *(v16 + 4) = v282;
        *v16 = v214;
        *(v16 + 1) = v250;
        if (*(v58 + 9) < v16[4])
        {
          v279 = *(v16 + 4);
          v211 = *v16;
          v247 = *(v16 + 1);
          v84 = *(v58 + 56);
          *v16 = *(v58 + 40);
          *(v16 + 1) = v84;
          v16[4] = *(v58 + 9);
LABEL_56:
          *(v58 + 56) = v247;
          *(v58 + 9) = v279;
          *(v58 + 40) = v211;
        }
      }

      v283 = v12[2].n128_i64[0];
      v215 = *v12;
      v251 = v12[1];
      result = *v16;
      v85 = *(v16 + 2);
      v12[2].n128_f64[0] = v16[4];
      *v12 = result;
      v12[1] = v85;
      result.n128_u64[1] = v215.n128_u64[1];
      *(v16 + 4) = v283;
      *v16 = v215;
      *(v16 + 1) = v251;
      goto LABEL_58;
    }

    v21 = v12[2].n128_f64[0];
    if (v21 >= v16[4])
    {
      if (v17 < v21)
      {
        v271 = v12[2].n128_u64[0];
        v203 = *v12;
        v235 = v12[1];
        result = *v9;
        v28 = *(a2 - 24);
        v12[2].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = result;
        v12[1] = v28;
        result.n128_u64[1] = v203.n128_u64[1];
        a2[-1].n128_u64[1] = v271;
        *v9 = v203;
        *(a2 - 24) = v235;
        if (v12[2].n128_f64[0] < v16[4])
        {
          v272 = *(v16 + 4);
          v204 = *v16;
          v236 = *(v16 + 2);
          result = *v12;
          v29 = v12[1];
          v16[4] = v12[2].n128_f64[0];
          *v16 = result;
          *(v16 + 1) = v29;
          result.n128_u64[1] = v204.n128_u64[1];
          v12[2].n128_u64[0] = v272;
          *v12 = v204;
          v12[1] = v236;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v21)
    {
      v268 = *(v16 + 4);
      v200 = *v16;
      v232 = *(v16 + 2);
      v22 = *v9;
      v23 = *(&a2[-2] + 8);
      v16[4] = a2[-1].n128_f64[1];
      *v16 = v22;
      *(v16 + 1) = v23;
LABEL_35:
      result.n128_u64[1] = v200.n128_u64[1];
      a2[-1].n128_u64[1] = v268;
      *v9 = v200;
      *(a2 - 24) = v232;
      goto LABEL_58;
    }

    v275 = *(v16 + 4);
    v207 = *v16;
    v240 = *(v16 + 2);
    result = *v12;
    v49 = v12[1];
    v16[4] = v12[2].n128_f64[0];
    *v16 = result;
    *(v16 + 1) = v49;
    result.n128_u64[1] = v207.n128_u64[1];
    v12[2].n128_u64[0] = v275;
    *v12 = v207;
    v12[1] = v240;
    if (a2[-1].n128_f64[1] < v12[2].n128_f64[0])
    {
      v268 = v12[2].n128_u64[0];
      v200 = *v12;
      v232 = v12[1];
      v50 = *v9;
      v51 = *(a2 - 24);
      v12[2].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v50;
      v12[1] = v51;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u64[0] = v12[2].n128_u64[0];
LABEL_61:
      v86 = 0;
      v193 = *v12;
      v196 = v12[1];
      do
      {
        v87 = v12[4].n128_f64[v86 + 1];
        v86 += 5;
      }

      while (v87 < result.n128_f64[0]);
      v88 = (v12 + v86 * 8);
      v89 = a2;
      if (v86 == 5)
      {
        v92 = a2;
        while (v88 < v92)
        {
          v90 = v92 - 40;
          v93 = *(v92 - 8);
          v92 -= 40;
          if (v93 < result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v90 = v92;
      }

      else
      {
        do
        {
          v90 = v89 - 40;
          v91 = *(v89 - 8);
          v89 -= 40;
        }

        while (v91 >= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v88;
      if (v88 < v90)
      {
        v94 = v90;
        do
        {
          v284 = v12[2].n128_i64[0];
          v216 = *v12;
          v252 = v12[1];
          v95 = *v94;
          v96 = *(v94 + 16);
          v12[2].n128_u64[0] = *(v94 + 32);
          *v12 = v95;
          v12[1] = v96;
          *(v94 + 32) = v284;
          *v94 = v216;
          *(v94 + 16) = v252;
          do
          {
            v97 = v12[4].n128_f64[1];
            v12 = (v12 + 40);
          }

          while (v97 < result.n128_f64[0]);
          do
          {
            v98 = *(v94 - 8);
            v94 -= 40;
          }

          while (v98 >= result.n128_f64[0]);
        }

        while (v12 < v94);
      }

      v99 = &v12[-3].n128_i8[8];
      if (&v12[-3].n128_i8[8] != a1)
      {
        v100 = *v99;
        v101 = *(v12 - 24);
        a1[2].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v100;
        a1[1] = v101;
      }

      *v99 = v193;
      *(v12 - 24) = v196;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v88 < v90)
      {
        goto LABEL_82;
      }

      v102 = sub_1D0C5689C(a1, &v12[-3].n128_i8[8], result);
      if (sub_1D0C5689C(v12, a2, v103))
      {
        a2 = (v12 - 40);
        if (!v102)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v102)
      {
LABEL_82:
        result = sub_1D0B90F48(a1, &v12[-3].n128_u64[1], a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u64[0] = v12[2].n128_u64[0];
      if (v12[-1].n128_f64[1] < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      v194 = *v12;
      v197 = v12[1];
      if (result.n128_f64[0] >= a2[-1].n128_f64[1])
      {
        v106 = &v12[2].n128_u64[1];
        do
        {
          v12 = v106;
          if (v106 >= a2)
          {
            break;
          }

          v107 = *(v106 + 32);
          v106 += 40;
        }

        while (result.n128_f64[0] >= v107);
      }

      else
      {
        v104 = v12;
        do
        {
          v12 = (v104 + 40);
          v105 = v104[4].n128_f64[1];
          v104 = (v104 + 40);
        }

        while (result.n128_f64[0] >= v105);
      }

      v108 = a2;
      if (v12 < a2)
      {
        v109 = a2;
        do
        {
          v108 = v109 - 40;
          v110 = *(v109 - 8);
          v109 -= 40;
        }

        while (result.n128_f64[0] < v110);
      }

      while (v12 < v108)
      {
        v285 = v12[2].n128_i64[0];
        v217 = *v12;
        v253 = v12[1];
        v111 = *v108;
        v112 = *(v108 + 16);
        v12[2].n128_u64[0] = *(v108 + 32);
        *v12 = v111;
        v12[1] = v112;
        *(v108 + 32) = v285;
        *v108 = v217;
        *(v108 + 16) = v253;
        do
        {
          v113 = v12[4].n128_f64[1];
          v12 = (v12 + 40);
        }

        while (result.n128_f64[0] >= v113);
        do
        {
          v114 = *(v108 - 8);
          v108 -= 40;
        }

        while (result.n128_f64[0] < v114);
      }

      v115 = &v12[-3].n128_i8[8];
      if (&v12[-3].n128_i8[8] != a1)
      {
        v116 = *v115;
        v117 = *(v12 - 24);
        a1[2].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v116;
        a1[1] = v117;
      }

      a4 = 0;
      *v115 = v194;
      *(v12 - 24) = v197;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  result.n128_u64[0] = v12[4].n128_u64[1];
  v120 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] >= v12[2].n128_f64[0])
  {
    if (v120 >= result.n128_f64[0])
    {
      return result;
    }

    v224 = *(v12 + 40);
    v260 = *(v12 + 56);
    v290 = v12[4].n128_u64[1];
    v172 = *v9;
    v171 = *(a2 - 24);
    v12[4].n128_u64[1] = a2[-1].n128_u64[1];
    *(v12 + 40) = v172;
    *(v12 + 56) = v171;
    a2[-1].n128_u64[1] = v290;
    *v9 = v224;
    *(a2 - 24) = v260;
    goto LABEL_187;
  }

  if (v120 >= result.n128_f64[0])
  {
    v292 = v12[2].n128_i64[0];
    v227 = *v12;
    v263 = v12[1];
    v181 = *(v12 + 56);
    *v12 = *(v12 + 40);
    v12[1] = v181;
    v12[2].n128_u64[0] = v12[4].n128_u64[1];
    *(v12 + 40) = v227;
    *(v12 + 56) = v263;
    v12[4].n128_u64[1] = v292;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] >= v12[4].n128_f64[1])
    {
      return result;
    }

    result = *(v12 + 40);
    v123 = *(v12 + 56);
    v124 = v12[4].n128_u64[1];
    v183 = *v9;
    v182 = *(a2 - 24);
    v12[4].n128_u64[1] = a2[-1].n128_u64[1];
    *(v12 + 40) = v183;
    *(v12 + 56) = v182;
  }

  else
  {
    v287 = v12[2].n128_u64[0];
    v219 = *v12;
    v255 = v12[1];
    v121 = *v9;
    v122 = *(a2 - 24);
    v12[2].n128_u64[0] = a2[-1].n128_u64[1];
    *v12 = v121;
    v12[1] = v122;
    result = v219;
    v123 = v255;
    v124 = v287;
  }

  a2[-1].n128_u64[1] = v124;
  *v9 = result;
  *(a2 - 24) = v123;
  return result;
}

void raven::RavenUserGaitTrackerActiveObject::OnNewSampleInPeriodicityTracker(uint64_t a1, __int128 *a2)
{
  sub_1D0B9217C(a1, a2);
  v5 = 0uLL;
  memset(&v32, 0, 80);
  v33 = 0;
  v34 = 0x7FF8000000000000;
  v6 = (a1 + 240);
  v7 = *(a1 + 240);
  if (v7 == 1 && ((v4.i64[0] = *(a1 + 248), *v5.i64 = *(a1 + 256) / *v4.i64, LODWORD(v8) = vcvtpd_u64_f64(*v5.i64), v8 <= 1) ? (v8 = 1) : (v8 = v8), *(a1 + 376) >= v8 && *(a1 + 313) == 1 && *(a1 + 312) == 1))
  {
    v9 = a2[1];
    *(a1 + 768) = *a2;
    *(a1 + 784) = v9;
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[5];
    *(a1 + 832) = a2[4];
    *(a1 + 848) = v12;
    *(a1 + 800) = v10;
    *(a1 + 816) = v11;
    *&v10 = *(a1 + 320);
    *&v11 = fabs(*&v10);
    v13 = 0.25 / *&v10;
    v31 = NAN;
    if (*&v11 < 2.22044605e-16)
    {
      v13 = NAN;
    }

    if (cnestimation::PeriodicityTracker::IsFeatureObservedInRecentTimeHistory(v6, v13, &v31))
    {
      *v14.i64 = v31;
      v29 = 0;
      v30 = 0;
      *v16.i64 = CNTimeSpan::SetTimeSpan(&v29, 0, v14, v15);
      v18 = CNTimeSpan::operator+((a1 + 768), &v29, v16, v17);
LABEL_26:
      v32.n128_u64[0] = v18;
      v32.n128_u64[1] = v19;
      *(a1 + 864) = 0;
      raven::RavenUserGaitTrackerActiveObject::PerformGaitTracking(a1, &v32, v20);
      return;
    }

    *(a1 + 864) = 1;
  }

  else
  {
    if (*(a1 + 864) != 1)
    {
      return;
    }

    if ((*(a1 + 313) & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v7)
    {
      if ((cnestimation::PeriodicityTracker::NumberOfSamplesToLastObservedFeatureInRecentSamples(v6, 3u) & 0x100000000) != 0)
      {
        v5.i64[0] = *(a1 + 248);
        v29 = 0;
        v30 = 0;
        *v27.i64 = CNTimeSpan::SetTimeSpan(&v29, 0, v5, v4);
        v18 = CNTimeSpan::operator-(a2, &v29, v27, v28);
        goto LABEL_26;
      }

      v21 = *(a1 + 313);
    }

    else
    {
      v21 = 1;
    }

    v22 = CNTimeSpan::operator-(a2, (a1 + 768), v5, v4);
    if (v21)
    {
      v24 = *(a1 + 320);
    }

    else
    {
      v24 = NAN;
    }

    v25 = fabs(v24);
    v26 = 0.25 / v24;
    if (v25 < 2.22044605e-16)
    {
      v26 = NAN;
    }

    if (v23 + v22 > v26)
    {
LABEL_24:
      *(a1 + 864) = 0;
    }
  }
}

uint64_t sub_1D0B9217C(uint64_t result, __int128 *a2)
{
  if (*(result + 240) == 1)
  {
    LODWORD(v2) = vcvtpd_u64_f64(*(result + 256) / *(result + 248));
    if (v2 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    if (*(result + 376) >= v2 && *(result + 313) == 1 && *(result + 312) == 1)
    {
      sub_1D0DEBC48(result);
    }
  }

  return result;
}

void sub_1D0B92270(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B92680(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    v5 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0B92414(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::MovingStateEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v51 = v2;
  v52 = v3;
  if (*(this + 58) != 1)
  {
    return 0;
  }

  raven::RavenEstimator::HandleMovingStateEvent(this, a2);
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = raven::RavenEstimator::IsZUPTAppropriate(this, a2);
  if (result)
  {
    v16[1] = 0;
    v16[2] = 0;
    v16[0] = &unk_1F4CEF6E8;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0x7FF8000000000000;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0x7FF8000000000000;
    v39 = 0;
    v40 = vdupq_n_s64(0x7FF8000000000000uLL);
    v41 = v40;
    v42 = v40;
    v43 = v40;
    v44 = 0x7FF8000000000000;
    v45 = 0;
    v46 = v40;
    v47 = v40;
    v48 = v40;
    v49 = v40;
    v50 = 0x7FF8000000000000;
    if (!(*(*this + 184))(this, a2, v16))
    {
      (*(*this + 320))(this, v16);
      v8 = (*(*a2 + 16))(a2);
      v9 = *(this + 232);
      *(this + 30) = v8;
      *(this + 31) = v10;
      if ((v9 & 1) == 0)
      {
        *(this + 232) = 1;
      }

      if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
      {
        v15 = 12;
        v14 = 1;
        v13[0] = (*(*a2 + 16))(a2);
        v13[1] = v11;
        cnprint::CNLogFormatter::FormatGeneral(this + 2712, v13, "Raising ZUPT velocity event");
        if (*(this + 2735) >= 0)
        {
          v12 = this + 2712;
        }

        else
        {
          v12 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v15, &v14, "%s", v12);
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1D0B92680(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v19.__vftable) = 3;
    LOBYTE(v17) = 5;
    cnprint::CNPrinter::Print(&v19, &v17, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEB20 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEB20 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19.__vftable = 0;
        std::bad_cast::bad_cast(&v19);
        v19.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v19);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF778;
    *(a1 + 8) = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    *(a1 + 24) = *(v10 + 32);
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 40) = v13;
    v14 = *(v10 + 112);
    result = *(v10 + 128);
    v15 = *(v10 + 144);
    *(a1 + 88) = *(v10 + 96);
    *(a1 + 136) = v15;
    *(a1 + 120) = result;
    *(a1 + 104) = v14;
  }

  else
  {
    v17 = 3;
    v16 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v19.__vftable) = 3;
      v18 = 5;
      cnprint::CNPrinter::Print(&v19, &v18, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEB20 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF778;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0x3FF0000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

__n128 raven::RavenEstimator::HandleMovingStateEvent(raven::RavenEstimator *this, const raven::MovingStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2000) == 1)
    {
      *(this + 126) = *(a2 + 8);
      v4 = *(a2 + 24);
      v5 = *(a2 + 40);
      v6 = *(a2 + 56);
      *(this + 130) = *(a2 + 72);
      *(this + 129) = v6;
      *(this + 128) = v5;
      *(this + 127) = v4;
      result = *(a2 + 88);
      v8 = *(a2 + 104);
      v9 = *(a2 + 120);
      *(this + 268) = *(a2 + 17);
      *(this + 133) = v9;
      *(this + 132) = v8;
      *(this + 131) = result;
    }

    else
    {
      *(this + 251) = &unk_1F4CEF778;
      *(this + 126) = *(a2 + 8);
      v12 = *(a2 + 24);
      v13 = *(a2 + 40);
      v14 = *(a2 + 56);
      *(this + 130) = *(a2 + 72);
      *(this + 129) = v14;
      *(this + 128) = v13;
      *(this + 127) = v12;
      result = *(a2 + 88);
      v15 = *(a2 + 104);
      v16 = *(a2 + 120);
      *(this + 268) = *(a2 + 17);
      *(this + 133) = v16;
      *(this + 132) = v15;
      *(this + 131) = result;
      *(this + 2000) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v19 = 12;
    v18 = 1;
    v17[0] = (*(*a2 + 16))(a2);
    v17[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v17, "Estimator not configured, failed to handle MovingStateEvent.");
    if (*(this + 2735) >= 0)
    {
      v11 = this + 2712;
    }

    else
    {
      v11 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v19, &v18, "%s", v11);
  }

  return result;
}

BOOL raven::RavenEstimator::IsZUPTAppropriate(raven::RavenEstimator *this, const raven::MovingStateEvent *a2)
{
  v2 = *(this + 146);
  if (v2 && (*(v2 + 33) & 1) != 0)
  {
    if (*(a2 + 104) - 1 <= 1 && *(a2 + 15) + *(a2 + 16) >= *(v2 + 248))
    {
      v8[0] = (*(*a2 + 16))(a2);
      v8[1] = v4;
      return raven::RavenEstimator::IsTimeForZUPT(this, v8);
    }
  }

  else
  {
    LOWORD(v8[0]) = 12;
    v9 = 4;
    v6 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v8, &v9, "t,%.3lf, Raven parameters not configured.", v7 + v6);
  }

  return 0;
}

BOOL raven::RavenEstimator::IsTimeForZUPT(uint64_t a1, void *a2)
{
  v4 = *(a1 + 232);
  v3 = (a1 + 232);
  if (v4 != 1)
  {
    return 1;
  }

  v6 = sub_1D0B92BD8(v3);
  v9 = CNTimeSpan::operator-(a2, v6, v7, v8);
  return v10 + v9 >= *(*(a1 + 1168) + 272);
}

_BYTE *sub_1D0B92BD8(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &unk_1F4CE0128;
    sub_1D0D4D114(&v2);
  }

  return a1 + 8;
}

void sub_1D0B92C80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9356C(v8, a3);
  raven::RavenEstimator::HandleMountStateEvent((v3 + 288), v8);
  if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    v13 = 12;
    v12 = 1;
    v11[0] = (*(v8[0] + 16))(v8);
    v11[1] = v5;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 263) >= 0)
    {
      v7 = (v3 + 240);
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0B92DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenEstimator::HandleMountStateEvent(raven::RavenEstimator *this, const raven::MountStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 1848) == 1)
    {
      *(this + 1864) = *(a2 + 8);
      v4 = *(a2 + 24);
      v5 = *(a2 + 40);
      v6 = *(a2 + 72);
      *(this + 1912) = *(a2 + 56);
      *(this + 1928) = v6;
      *(this + 1880) = v4;
      *(this + 1896) = v5;
      result = *(a2 + 88);
      v8 = *(a2 + 104);
      v9 = *(a2 + 120);
      *(this + 249) = *(a2 + 17);
      *(this + 1960) = v8;
      *(this + 1976) = v9;
      *(this + 1944) = result;
    }

    else
    {
      *(this + 232) = &unk_1F4CEF538;
      *(this + 1864) = *(a2 + 8);
      v12 = *(a2 + 24);
      v13 = *(a2 + 40);
      v14 = *(a2 + 72);
      *(this + 1912) = *(a2 + 56);
      *(this + 1928) = v14;
      *(this + 1880) = v12;
      *(this + 1896) = v13;
      result = *(a2 + 88);
      v15 = *(a2 + 104);
      v16 = *(a2 + 120);
      *(this + 249) = *(a2 + 17);
      *(this + 1960) = v15;
      *(this + 1976) = v16;
      *(this + 1944) = result;
      *(this + 1848) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v19 = 12;
    v18 = 1;
    v17[0] = (*(*a2 + 16))(a2);
    v17[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v17, "Estimator not configured, failed to handle MountStateEvent.");
    if (*(this + 2735) >= 0)
    {
      v11 = this + 2712;
    }

    else
    {
      v11 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v19, &v18, "%s", v11);
  }

  return result;
}

void sub_1D0B92F80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B88E94(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0B930A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AccelerometerEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v2;
  v19 = v3;
  v14 = 0;
  v15 = 0;
  v13 = &unk_1F4CEF628;
  v14 = (*(*a2 + 16))(a2);
  v15 = v6;
  v16 = *(a2 + 104);
  v17 = *(a2 + 15);
  result = sub_1D0B931F4(this + 28040, &v13);
  if (result)
  {
    v12 = 12;
    v11 = 4;
    v10[0] = (*(*a2 + 16))(a2);
    v10[1] = v8;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, v10, "Could not add measurement - accelerations");
    if (*(this + 2735) >= 0)
    {
      v9 = this + 2712;
    }

    else
    {
      v9 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v9);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1D0B931F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (v4 == 350 && sub_1D0B93510(a1))
    {
      return 0xFFFFFFFFLL;
    }

    v6 = (*(*a2 + 16))(a2);
    v8 = v7;
    v9 = *(a1 + 44);
    v10 = a1 + 48;
    v26 = v6;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v12 = !v11;
    while (1)
    {
      v13 = v10 + 48 * v9;
      v14 = (*(*v13 + 16))(v13);
      if (v12 || (!v14 ? (v16 = (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v16 = 1), !v16 || v26 == v14))
      {
        if (v8 >= v15)
        {
          goto LABEL_26;
        }
      }

      else if (v26 >= v14)
      {
LABEL_26:
        v20 = v10 + 48 * ((v9 + 1) % 0x15E) + 8;
        goto LABEL_29;
      }

      v17 = v10 + 48 * ((v9 + 1) % 0x15E);
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      *(v17 + 40) = *(v13 + 40);
      *(v17 + 24) = v19;
      *(v17 + 8) = v18;
      if (v9 == *(a1 + 40))
      {
        break;
      }

      if (v9)
      {
        --v9;
      }

      else
      {
        v9 = 349;
      }

      if (v9 == *(a1 + 44))
      {
        goto LABEL_30;
      }
    }

    v20 = v13 + 8;
LABEL_29:
    v23 = *(a2 + 8);
    v24 = *(a2 + 24);
    *(v20 + 32) = *(a2 + 40);
    *v20 = v23;
    *(v20 + 16) = v24;
    v9 = *(a1 + 44);
LABEL_30:
    ++*(a1 + 8);
    if (v9 == 349)
    {
      v25 = 0;
    }

    else
    {
      v25 = v9 + 1;
    }

    *(a1 + 44) = v25;
  }

  else
  {
    *(a1 + 8) = 1;
    *(a1 + 40) = 0;
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 40);
    *(a1 + 72) = v22;
    *(a1 + 56) = v21;
  }

  sub_1D0B93420(a1);
  return 0;
}

uint64_t sub_1D0B93420(uint64_t result)
{
  v1 = result;
  v2 = 0.0;
  if (*(result + 8) >= 2u)
  {
    v3 = result + 48 + 48 * *(result + 44);
    v12[0] = (*(*v3 + 16))(v3);
    v12[1] = v4;
    v5 = v1 + 48 + 48 * *(v1 + 40);
    v11[0] = (*(*v5 + 16))(v5);
    v11[1] = v6;
    result = CNTimeSpan::operator-(v12, v11, v7, v8);
    v10 = v9 + result;
    if (fabs(v10) >= 2.22044605e-16)
    {
      v2 = (*(v1 + 8) - 1) / v10;
    }
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1D0B93510(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v2 = *(a1 + 40);
  if (v2 == 349)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 1;
  }

  *(a1 + 40) = v3;
  sub_1D0B93420(a1);
  return 0;
}

__n128 sub_1D0B9356C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v19.__vftable) = 3;
    LOBYTE(v17) = 5;
    cnprint::CNPrinter::Print(&v19, &v17, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEB08 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEB08 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19.__vftable = 0;
        std::bad_cast::bad_cast(&v19);
        v19.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v19);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF538;
    *(a1 + 8) = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    *(a1 + 24) = *(v10 + 32);
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 40) = v13;
    v14 = *(v10 + 112);
    result = *(v10 + 128);
    v15 = *(v10 + 144);
    *(a1 + 88) = *(v10 + 96);
    *(a1 + 136) = v15;
    *(a1 + 120) = result;
    *(a1 + 104) = v14;
  }

  else
  {
    v17 = 3;
    v16 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v19.__vftable) = 3;
      v18 = 5;
      cnprint::CNPrinter::Print(&v19, &v18, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEB08 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF538;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0x3FF0000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

__n128 sub_1D0B937E8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 26 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  if (v7 == a1[5] + v8)
  {
    v9 = v8 >= 0x1A;
    v10 = v8 - 26;
    if (!v9)
    {
      v11 = a1[3];
      v12 = v11 - *a1;
      if (v6 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      __p[4] = a1;
      sub_1D0C54E78(a1, v13);
    }

    a1[4] = v10;
    __p[0] = *v4;
    a1[1] = (v4 + 1);
    sub_1D0B8BF18(a1, __p);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = v4[v14 / 0x1A] + 152 * (v14 % 0x1A);
  }

  *v15 = &unk_1F4CEF1E0;
  *(v15 + 8) = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 40);
  v18 = *(a2 + 56);
  *(v15 + 72) = *(a2 + 72);
  *(v15 + 56) = v18;
  *(v15 + 40) = v17;
  *(v15 + 24) = v16;
  result = *(a2 + 88);
  v20 = *(a2 + 104);
  v21 = *(a2 + 120);
  *(v15 + 130) = *(a2 + 130);
  *(v15 + 120) = v21;
  *(v15 + 104) = v20;
  *(v15 + 88) = result;
  ++a1[5];
  return result;
}

void sub_1D0B93B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int64x2_t sub_1D0B93B8C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1D0BBDB70(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  v7 = *v6 + 152 * (v4 % 0x1A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 3952;
  }

  *(v7 - 152) = &unk_1F4CEF1E0;
  *(v7 - 144) = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 72);
  *(v7 - 96) = *(a2 + 56);
  *(v7 - 80) = v10;
  *(v7 - 128) = v8;
  *(v7 - 112) = v9;
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  *(v7 - 22) = *(a2 + 130);
  *(v7 - 48) = v12;
  *(v7 - 32) = v13;
  *(v7 - 64) = v11;
  result = vaddq_s64(a1[2], xmmword_1D0E82EC0);
  a1[2] = result;
  return result;
}

void sub_1D0B93CA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v26.__vftable) = 3;
    LOBYTE(v32) = 5;
    cnprint::CNPrinter::Print(&v26, &v32, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEF328 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF328 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v26);
    }

    v10 = *(a3 + 16);
    v17 = v10[1];
    v18 = v10[2];
    v19 = v10[3];
    v20 = v10[4];
    v21 = v10[5];
    v22 = v10[6];
  }

  else
  {
    LOWORD(v32) = 3;
    LOBYTE(v24) = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v26.__vftable) = 3;
      LOBYTE(v25[0]) = 5;
      cnprint::CNPrinter::Print(&v26, v25, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v32, &v24, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF328 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = 0uLL;
    v17 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22.i64[0] = 0;
    v22.i64[1] = 0x7FF8000000000000;
  }

  if (*(v4 + 224) == 1)
  {
    v26.__vftable = &unk_1F4CEF4D8;
    *&v28[16] = v19;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v27 = v17;
    *v28 = v18;
    raven::PopulateAllTimeFields(&v27, v4 + 232, v18, v17);
    if (v28[0] == 1 && cnnavigation::GNSSUTCParameters::IsValid((v4 + 328)))
    {
      LODWORD(v25[0]) = 0;
      v25[1] = 0.0;
      v24 = *&v28[8];
      if (!cnnavigation::iOSTimeToJulianTime(&v24, &v32) && !cnnavigation::JulianTimeToGPSTime(&v32, *(v4 + 368), v25))
      {
        cnnavigation::TAITime::TAITime(&v23, v25, (v4 + 328));
        v11 = v23;
        v29 = v23;
        v28[24] = 1;
      }
    }

    if (*(v4 + 400) != 1 || (*&v33[0] = CNTimeSpan::operator-(&v27, (v4 + 424), v11, v12), v33[1] = v13, LOBYTE(v32) = 1, !sub_1D0B7C8AC(v33, (v4 + 408))))
    {
      v14 = *&v28[16] + *&v28[8];
      v15 = -1.0;
      if (!v28[0])
      {
        v14 = -1.0;
      }

      if (v28[24])
      {
        v15 = *&v29.i64[1] + v29.i64[0];
      }

      LOWORD(v32) = 12;
      LOBYTE(v25[0]) = 3;
      cnprint::CNPrinter::Print(&v32, v25, "Time scales: Raven, %.6f, iOS, %.6f, TAIuncorrected, %.6f", *&v27.i64[1] + v27.i64[0], v14, v15);
      v16 = *(v4 + 400);
      *(v4 + 408) = v27;
      if ((v16 & 1) == 0)
      {
        *(v4 + 400) = 1;
      }
    }

    operator new();
  }
}

uint64_t raven::PopulateAllTimeFields(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  result = CNTimeSpan::operator-(a1, a2, a3, a4);
  v13[0] = result;
  v13[1] = v9;
  if (*(a2 + 16) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 24), v13, v7, v8);
    *(a1 + 24) = result;
    *(a1 + 32) = v10;
    *(a1 + 16) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 72), v13, v7, v8);
    *(a1 + 72) = result;
    *(a1 + 80) = v11;
    *(a1 + 64) = 1;
  }

  if (*(a2 + 40) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 48), v13, v7, v8);
    *(a1 + 48) = result;
    *(a1 + 56) = v12;
    *(a1 + 40) = 1;
  }

  return result;
}

BOOL cnnavigation::GNSSUTCParameters::IsValid(cnnavigation::GNSSUTCParameters *this)
{
  if (*this != 1)
  {
    return 0;
  }

  if (fabs(*(this + 1)) >= 0.000001)
  {
    return 0;
  }

  if (fabs(*(this + 2)) >= 0.000001)
  {
    return 0;
  }

  v1 = *(this + 10);
  if ((v1 + 500) > 0x3E8)
  {
    return 0;
  }

  v2 = v1 - *(this + 16);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return v2 < 2;
}

void *cnnavigation::TAITime::TAITime(void *a1, double *a2, cnnavigation::GNSSUTCParameters *this)
{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 1)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC1212319A1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561548.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 - 1042), v7, v8);
  *a1 = v18;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 3)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC1212319A1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561548.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 - 18), v7, v8);
  *a1 = v18;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 4)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC12122FDA1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561534.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 + 314), v7, v8);
  *a1 = v18;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 6)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC1212319A1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561548.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 - 18), v7, v8);
  *a1 = v18;
  return a1;
}

uint64_t cnnavigation::iOSTimeToJulianTime(uint64_t a1, uint64_t a2)
{
  v2 = *a1 / 86400;
  if (v2 < -2451910)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (*(a1 + 8) + (*a1 % 86400)) / 86400.0 + 0.5;
  if (v3 + (v2 + 2451910) < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 >= 1.0)
  {
    result = 0;
    *a2 = v2 + 2451911;
    v5 = -1.0;
  }

  else
  {
    if (v3 >= 0.0)
    {
      result = 0;
      *a2 = v2 + 2451910;
      goto LABEL_11;
    }

    result = 0;
    if (v3 >= -1.0)
    {
      *a2 = v2 + 2451909;
      v5 = 1.0;
    }

    else
    {
      *a2 = v2 + 2451908;
      v5 = 2.0;
    }
  }

  v3 = v3 + v5;
LABEL_11:
  *(a2 + 8) = v3;
  return result;
}

uint64_t cnnavigation::JulianTimeToGPSTime(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8) + -0.5;
  v4 = *a1 - 2444244 + vcvtmd_s64_f64(v3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v4 / 7;
  v5 = (v3 - floor(v3)) * 86400.0 + (v4 % 7) * 86400.0 + a2;
  *(a3 + 8) = v5;
  result = 0;
  if (v5 >= 604800.0)
  {
    *a3 = v4 / 7 + 1;
    *(a3 + 8) = v5 + -604800.0;
  }

  return result;
}

__n128 sub_1D0B94708(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v17.__vftable) = 3;
    LOBYTE(v15) = 5;
    cnprint::CNPrinter::Print(&v17, &v15, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEE90 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEE90 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v17.__vftable = 0;
        std::bad_cast::bad_cast(&v17);
        v17.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v17);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF4D8;
    v11 = *(v10 + 32);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 24) = v11;
    result = *(v10 + 80);
    v12 = *(v10 + 96);
    v13 = *(v10 + 64);
    *(a1 + 40) = *(v10 + 48);
    *(a1 + 88) = v12;
    *(a1 + 72) = result;
    *(a1 + 56) = v13;
  }

  else
  {
    v15 = 3;
    v14 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v17.__vftable) = 3;
      v16 = 5;
      cnprint::CNPrinter::Print(&v17, &v16, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v15, &v14, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEE90 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF4D8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0B9493C(uint64_t a1, raven::RavenActivityStateEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenActivityStateEstimatorActiveObject::HandleEvent(v3, v4);
}

uint64_t *sub_1D0B94988(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0DC99A8(result, a4);
  }

  return result;
}

void sub_1D0B949E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0B94A04(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_1D0B94BA0(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v3;
    *(a3 + 16) = v3;
    *(a3 + 20) = 1;
    if (v3)
    {
      v4 = 0;
      v5 = *(result + 8);
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * (v5 * v4));
        v10 = v8;
        v11 = v5 - 1;
        if (v5 >= 2)
        {
          do
          {
            v9 = v9 + *(v6 + 8 * v10++);
            --v11;
          }

          while (v11);
        }

        *(v7 + 8 * v4++) = v9;
        v8 += v5;
      }

      while (v4 != v3);
    }
  }

  else
  {
    v12 = *(result + 8);
    *(a3 + 8) = v12;
    *(a3 + 12) = 1;
    *(a3 + 16) = v12;
    *(a3 + 20) = v12;
    if (v12)
    {
      v13 = *(result + 32);
      v14 = *(a3 + 32);
      v15 = v12;
      do
      {
        v16 = *v13++;
        *v14++ = v16;
        --v15;
      }

      while (v15);
    }

    v17 = *(result + 12);
    if (v17 >= 2)
    {
      v18 = *(result + 32);
      v19 = *(a3 + 32);
      v20 = 1;
      v21 = v12;
      do
      {
        v22 = v21;
        v23 = v19;
        v24 = v12;
        if (v12)
        {
          do
          {
            *v23 = *(v18 + 8 * v22) + *v23;
            ++v23;
            ++v22;
            --v24;
          }

          while (v24);
        }

        ++v20;
        v21 += v12;
      }

      while (v20 != v17);
    }
  }

  return result;
}

__n128 sub_1D0B94CA4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000000ALL;
  *(a1 + 24) = 0x10000000ALL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEAE48;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0xA)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0B94DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 816);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v2 > 0.0 ? (v3 = v2 < 1.0) : (v3 = 0), v3))
  {
    v5 = a1 + 16;
    v6 = 0.0;
    for (i = 16; i != 96; i += 8)
    {
      v8 = *(a1 + i);
      if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      if (v8 < 0.0 || v8 > 1.0)
      {
        goto LABEL_16;
      }

      v6 = v6 + v8;
    }

    if (fabs(v6 + -1.0) > v2)
    {
LABEL_16:
      v71 = 12;
      v70 = 4;
      cnprint::CNPrinter::Print(&v71, &v70, "time,%.3lf,t-function failure on line %d: %s() %s");
      return result;
    }

    v10 = a1 + 96;
    v11 = 0.0;
    for (j = 96; j != 176; j += 8)
    {
      v13 = *(a1 + j);
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      if (v13 < 0.0 || v13 > 1.0)
      {
        goto LABEL_26;
      }

      v11 = v11 + v13;
    }

    if (fabs(v11 + -1.0) > v2)
    {
LABEL_26:
      v73 = 12;
      v72 = 4;
      cnprint::CNPrinter::Print(&v73, &v72, "time,%.3lf,t-function failure on line %d: %s() %s");
      return result;
    }

    v15 = a1 + 176;
    v16 = 0.0;
    for (k = 176; k != 256; k += 8)
    {
      v18 = *(a1 + k);
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      if (v18 < 0.0 || v18 > 1.0)
      {
        goto LABEL_36;
      }

      v16 = v16 + v18;
    }

    if (fabs(v16 + -1.0) > v2)
    {
LABEL_36:
      v75 = 12;
      v74 = 4;
      cnprint::CNPrinter::Print(&v75, &v74, "time,%.3lf,t-function failure on line %d: %s() %s");
      return result;
    }

    v20 = a1 + 256;
    v21 = 0.0;
    for (m = 256; m != 336; m += 8)
    {
      v23 = *(a1 + m);
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_46;
      }

      if (v23 < 0.0 || v23 > 1.0)
      {
        goto LABEL_46;
      }

      v21 = v21 + v23;
    }

    if (fabs(v21 + -1.0) > v2)
    {
LABEL_46:
      v25 = "invalid transition probabilities from running state";
      v26 = 119;
LABEL_47:
      sub_1D0E32F8C(a1, v25, "t_ActivityState", v26);
      return result;
    }

    v27 = a1 + 336;
    v28 = 0.0;
    for (n = 336; n != 416; n += 8)
    {
      v30 = *(a1 + n);
      if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_57;
      }

      if (v30 < 0.0 || v30 > 1.0)
      {
        goto LABEL_57;
      }

      v28 = v28 + v30;
    }

    if (fabs(v28 + -1.0) > v2)
    {
LABEL_57:
      v25 = "invalid transition probabilities from cycling state";
      v26 = 124;
      goto LABEL_47;
    }

    v32 = a1 + 416;
    v33 = 0.0;
    for (ii = 416; ii != 496; ii += 8)
    {
      v35 = *(a1 + ii);
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      if (v35 < 0.0 || v35 > 1.0)
      {
        goto LABEL_67;
      }

      v33 = v33 + v35;
    }

    if (fabs(v33 + -1.0) > v2)
    {
LABEL_67:
      v25 = "invalid transition probabilities from driving state";
      v26 = 129;
      goto LABEL_47;
    }

    v37 = a1 + 496;
    v38 = 0.0;
    for (jj = 496; jj != 576; jj += 8)
    {
      v40 = *(a1 + jj);
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_77;
      }

      if (v40 < 0.0 || v40 > 1.0)
      {
        goto LABEL_77;
      }

      v38 = v38 + v40;
    }

    if (fabs(v38 + -1.0) > v2)
    {
LABEL_77:
      v25 = "invalid transition probabilities from swimming state";
      v26 = 134;
      goto LABEL_47;
    }

    v42 = a1 + 576;
    v43 = 0.0;
    for (kk = 576; kk != 656; kk += 8)
    {
      v45 = *(a1 + kk);
      if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_87;
      }

      if (v45 < 0.0 || v45 > 1.0)
      {
        goto LABEL_87;
      }

      v43 = v43 + v45;
    }

    if (fabs(v43 + -1.0) > v2)
    {
LABEL_87:
      v25 = "invalid transition probabilities from wheelschair state";
      v26 = 139;
      goto LABEL_47;
    }

    v47 = a1 + 656;
    v48 = 0.0;
    for (mm = 656; mm != 736; mm += 8)
    {
      v50 = *(a1 + mm);
      if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }

      if (v50 < 0.0 || v50 > 1.0)
      {
        goto LABEL_97;
      }

      v48 = v48 + v50;
    }

    if (fabs(v48 + -1.0) > v2)
    {
LABEL_97:
      v25 = "invalid transition probabilities from highspeed state";
      v26 = 144;
      goto LABEL_47;
    }

    v52 = a1 + 736;
    v53 = 0.0;
    for (nn = 736; nn != 816; nn += 8)
    {
      v55 = *(a1 + nn);
      if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_107;
      }

      if (v55 < 0.0 || v55 > 1.0)
      {
        goto LABEL_107;
      }

      v53 = v53 + v55;
    }

    if (fabs(v53 + -1.0) > v2)
    {
LABEL_107:
      v25 = "invalid transition probabilities from airborne state";
      v26 = 149;
      goto LABEL_47;
    }

    v57 = 0;
    *(a2 + 8) = xmmword_1D0E84630;
    v58 = *(a2 + 32);
    do
    {
      *(v58 + v57) = *(v5 + v57);
      v57 += 8;
    }

    while (v57 != 80);
    for (i1 = 0; i1 != 80; i1 += 8)
    {
      *(v58 + 80 + i1) = *(v10 + i1);
    }

    for (i2 = 0; i2 != 80; i2 += 8)
    {
      *(v58 + 160 + i2) = *(v15 + i2);
    }

    for (i3 = 0; i3 != 80; i3 += 8)
    {
      *(v58 + 240 + i3) = *(v20 + i3);
    }

    for (i4 = 0; i4 != 80; i4 += 8)
    {
      *(v58 + 320 + i4) = *(v27 + i4);
    }

    for (i5 = 0; i5 != 80; i5 += 8)
    {
      *(v58 + 400 + i5) = *(v32 + i5);
    }

    for (i6 = 0; i6 != 80; i6 += 8)
    {
      *(v58 + 480 + i6) = *(v37 + i6);
    }

    for (i7 = 0; i7 != 80; i7 += 8)
    {
      *(v58 + 560 + i7) = *(v42 + i7);
    }

    for (i8 = 0; i8 != 80; i8 += 8)
    {
      *(v58 + 640 + i8) = *(v47 + i8);
    }

    for (i9 = 0; i9 != 80; i9 += 8)
    {
      result = *(v52 + i9);
      *(v58 + 720 + i9) = result;
    }
  }

  else
  {
    v69 = 12;
    v68 = 4;
    cnprint::CNPrinter::Print(&v69, &v68, "time,%.3lf,t-function failure on line %d: %s() %s");
  }

  return result;
}

uint64_t sub_1D0B954B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248) == 1)
  {
    sub_1D0B894B0(a1 + 8, a1 + 128);
  }

  v56 = 0x100000001;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v55 = v4;
  v54[10] = &unk_1F4CEFE90;
  v57 = &v58;
  v58 = sub_1D0B95EBC;
  v52 = 0x10000000ALL;
  v50 = &unk_1F4CEFF18;
  v51 = v4;
  v53 = v54;
  v54[0] = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  sub_1D0B95DC8(v48, &v50);
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    _ZF = v5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(a1 + 256);
  if (!*(a1 + 16) || !*(a1 + 20))
  {
    if ((v9 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v67 = 0x10000000ALL;
    v65 = &unk_1F4CEAE48;
    v68 = v69;
    *&v66 = v9 | 0x100000000;
    v13 = 1.0 / v9;
    DWORD2(v66) = v9;
    HIDWORD(v66) = v9;
    if (v9 > 3)
    {
      memset_pattern16(v69, &unk_1D0E7F4B0, 16 * ((v9 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v67 + v9) = _Q0;
    }

    else if (v9)
    {
      memset_pattern16(v69, &unk_1D0E7F4B0, (8 * v9));
    }

    v72 = 0x10000000ALL;
    v14 = xmmword_1D0E87BE0;
    goto LABEL_27;
  }

  v72 = 0x10000000ALL;
  v71 = xmmword_1D0E87BE0;
  v70 = &unk_1F4CEAE48;
  v73 = v74;
  v11 = sub_1D0B94BA0(a1 + 8, 1, &v70);
  v12 = *v73;
  if (fabs(*v73 + -1.0) <= v10)
  {
    if ((v9 & 0x80000000) == 0)
    {
      sub_1D0B94CA4(&v70, a1 + 8);
      *&v71 = v9 | 0x100000000;
      DWORD2(v71) = v9;
      HIDWORD(v71) = v9;
      goto LABEL_28;
    }

LABEL_64:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    LOWORD(v70) = 2;
    LOBYTE(v65) = 1;
    cnprint::CNPrinter::Print(&v70, &v65, "WARNING: HMM update passed a non-normalized probability vector.");
  }

  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  v13 = 1.0 / v12;
  sub_1D0B94CA4(&v65, a1 + 8);
  *&v66 = v9 | 0x100000000;
  DWORD2(v66) = v9;
  HIDWORD(v66) = v9;
  v72 = 0x10000000ALL;
  v14 = xmmword_1D0E87BE0;
LABEL_27:
  v71 = v14;
  v70 = &unk_1F4CEAE48;
  v73 = v74;
  v14.f64[0] = v13;
  sub_1D0B8930C(&v65, &v70, v14);
LABEL_28:
  sub_1D0B894B0(a1 + 8, &v70);
  sub_1D0B94CA4(&v70, a1 + 8);
  v19 = *v57;
  v67 = 0x10000000ALL;
  v65 = &unk_1F4CEAE48;
  v66 = xmmword_1D0E87BE0;
  v68 = v69;
  v20 = v19(*v49, &v65);
  if (v20)
  {
    LOWORD(v59) = 2;
    v64 = 4;
    cnprint::CNPrinter::Print(&v59, &v64, "ERROR: HMM emission function failed.");
    return 29;
  }

  if (v9)
  {
    v23 = 0.0;
    v24 = v68;
    v25 = v68;
    v26 = v9;
    do
    {
      v27 = *v25;
      if (*v25 < 0.0 || v27 > 1.0)
      {
        LOWORD(v59) = 2;
        v64 = 4;
        cnprint::CNPrinter::Print(&v59, &v64, "ERROR: HMM emission probability matrix is invalid.");
        return 30;
      }

      v23 = v23 + v27;
      ++v25;
      --v26;
    }

    while (v26);
    if (fabs(v23) > v10)
    {
      v29 = v73;
      do
      {
        v30 = *v24++;
        v21.n128_f64[0] = v30 * *v29;
        *v29++ = v21.n128_f64[0];
        --v9;
      }

      while (v9);
      goto LABEL_43;
    }
  }

  else if (v10 < 0.0)
  {
LABEL_43:
    v31 = DWORD1(v71);
    if (DWORD1(v71))
    {
      v32 = 0;
      v33 = v71;
      v34 = v73;
      v35 = 1;
      v36 = xmmword_1D0E87BE0;
      do
      {
        v37 = v34[(v33 * v32)];
        v38 = v35;
        v39 = v33 - 1;
        if (v33 >= 2)
        {
          do
          {
            v37 = v37 + v34[v38++];
            --v39;
          }

          while (v39);
        }

        v63[v32++] = v37;
        v35 += v33;
      }

      while (v32 != v31);
      v21.n128_f64[0] = v63[0];
    }

    else
    {
      v36 = xmmword_1D0E87BE0;
    }

    if (fabs(v21.n128_f64[0]) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v59) = 2;
        v64 = 1;
        cnprint::CNPrinter::Print(&v59, &v64, "HMM state is null vector after update; revert to input state");
      }

      v21 = sub_1D0B894B0(&v70, a1 + 8);
      v40 = DWORD1(v71);
      if (DWORD1(v71))
      {
        v41 = 0;
        v42 = v71;
        v43 = v73;
        v44 = 1;
        v36 = xmmword_1D0E87BE0;
        do
        {
          v45 = v43[(v42 * v41)];
          v46 = v44;
          v47 = v42 - 1;
          if (v42 >= 2)
          {
            do
            {
              v45 = v45 + v43[v46++];
              --v47;
            }

            while (v47);
          }

          v63[v41++] = v45;
          v44 += v42;
        }

        while (v41 != v40);
        v21.n128_f64[0] = v63[0];
      }

      else
      {
        v36 = xmmword_1D0E87BE0;
      }
    }

    v61 = 0x10000000ALL;
    v60 = v36;
    v59 = &unk_1F4CEAE48;
    v62 = v63;
    v21.n128_f64[0] = 1.0 / v21.n128_f64[0];
    sub_1D0B8930C(&v70, &v59, v21);
    sub_1D0B894B0(&v70, &v59);
    sub_1D0B894B0(a1 + 128, &v70);
    result = 0;
    *(a1 + 248) = 1;
    return result;
  }

  LOWORD(v59) = 2;
  v64 = 4;
  cnprint::CNPrinter::Print(&v59, &v64, "ERROR: HMM emission probability matrix is null matrix");
  return 30;
}

BOOL raven::RavenActivityStateEstimator::Update(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v16[0]) = 12;
      LOBYTE(__b[0]) = 1;
      cnprint::CNPrinter::Print(v16, __b, "WARNING: ActivityStateEstimator,time,%.3lf,trying to update uninitialized estimator");
    }

    return 0;
  }

  v5 = *a3;
  v6 = xmmword_1D0EB3810;
  v7 = 0uLL;
  if (v5 > 4)
  {
    if (*a3 <= 6u)
    {
      if (v5 == 5)
      {
        v8 = xmmword_1D0EB3850;
        goto LABEL_24;
      }

      v10 = 0uLL;
      v8 = 0uLL;
      v11 = 0uLL;
      if (v5 != 6)
      {
        goto LABEL_31;
      }

      v11 = xmmword_1D0EB3840;
      goto LABEL_21;
    }

    if (v5 != 10)
    {
      if (v5 == 9)
      {
        v8 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
        v10 = xmmword_1D0EB3820;
        v7 = xmmword_1D0EB3830;
        goto LABEL_30;
      }

      v10 = 0uLL;
      v8 = 0uLL;
      v11 = 0uLL;
      if (v5 != 7)
      {
        goto LABEL_31;
      }

      v11 = xmmword_1D0EB3810;
LABEL_21:
      v6 = 0uLL;
      goto LABEL_31;
    }

    LOWORD(v16[0]) = 12;
    LOBYTE(__b[0]) = 4;
    cnprint::CNPrinter::Print(v16, __b, "ActivityStateEstimator,time,%.3lf,invalid activity input type,%d");
    return 0;
  }

  if (*a3 <= 1u)
  {
    if (!*a3)
    {
      memset_pattern16(__b, &unk_1D0EB38F0, 0x50uLL);
      v7 = __b[0];
      v10 = __b[1];
      v8 = __b[2];
      v11 = __b[3];
      v6 = __b[4];
      goto LABEL_31;
    }

    v11 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
    v8 = xmmword_1D0EB38B0;
    v10 = xmmword_1D0EB38C0;
    v7 = xmmword_1D0EB38D0;
    goto LABEL_26;
  }

  switch(v5)
  {
    case 2u:
      v11 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v8 = xmmword_1D0EB3880;
      v10 = xmmword_1D0EB3890;
      v7 = xmmword_1D0EB38A0;
LABEL_26:
      v6 = v11;
      goto LABEL_31;
    case 3u:
      v8 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v10 = xmmword_1D0EB3870;
LABEL_30:
      v11 = v8;
      v6 = v8;
      goto LABEL_31;
    case 4u:
      v8 = xmmword_1D0EB3860;
LABEL_24:
      v10 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v11 = v10;
      v6 = v10;
      goto LABEL_31;
  }

  v10 = 0uLL;
  v8 = 0uLL;
  v11 = 0uLL;
LABEL_31:
  v16[0] = *a2;
  v16[1] = v7;
  v16[2] = v10;
  v16[3] = v8;
  v16[4] = v11;
  v16[5] = v6;
  v12 = sub_1D0B954B8(a1 + 16, v16);
  v9 = v12 == 0;
  if (v12)
  {
    v15 = 12;
    v14 = 4;
    cnprint::CNPrinter::Print(&v15, &v14, "ActivityStateEstimator,time,%.3lf,failed RavenActivityInput update,code,%d", *(a1 + 288) + *(a1 + 280), v12);
  }

  return v9;
}

uint64_t sub_1D0B95DC8(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000001;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CDF3D0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v2 * v3;
  *(result + 20) = v3;
  *(result + 32) = result + 40;
  if (v3 > 1)
  {
    v7 = "this->max_num_rows_ >= A.NumRows()";
    v8 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v7 = "this->max_num_cols_ >= A.NumCols()";
    v8 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v8, v7);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(result + 32) + v5) = *(*(a2 + 32) + v5);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1D0B95EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((*&v2 <= -1 || ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v2 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v2 > 1.0)
  {
    v50 = 12;
    v49 = 4;
    cnprint::CNPrinter::Print(&v50, &v49, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 24);
  if ((v7 <= -1 || ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v7 - 1) >= 0xFFFFFFFFFFFFFLL && (v7 & 0x7FFFFFFFFFFFFFFFLL) != 0 || *(a1 + 24) > 1.0)
  {
    v52 = 12;
    v51 = 4;
    cnprint::CNPrinter::Print(&v52, &v51, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 32);
  v15 = v12 > -1 && ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v12 - 1) < 0xFFFFFFFFFFFFFLL || (v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v15 || *(a1 + 32) > 1.0)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v16 = *(a1 + 40);
  v19 = v16 > -1 && ((v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v16 - 1) < 0xFFFFFFFFFFFFFLL || (v16 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v19 || *(a1 + 40) > 1.0)
  {
    v56 = 12;
    v55 = 4;
    cnprint::CNPrinter::Print(&v56, &v55, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v20 = *(a1 + 48);
  v23 = v20 > -1 && ((v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v20 - 1) < 0xFFFFFFFFFFFFFLL || (v20 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v23 || *(a1 + 48) > 1.0)
  {
    v58 = 12;
    v57 = 4;
    cnprint::CNPrinter::Print(&v58, &v57, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v24 = *(a1 + 56);
  v27 = v24 > -1 && ((v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v24 - 1) < 0xFFFFFFFFFFFFFLL || (v24 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v27 || *(a1 + 56) > 1.0)
  {
    v47 = "invalid likelihood (driving state)";
    v48 = 115;
LABEL_138:
    sub_1D0C52038(a1, v47, "e_ActivityState", v48);
    return 0xFFFFFFFFLL;
  }

  v28 = *(a1 + 64);
  v31 = v28 > -1 && ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v28 - 1) < 0xFFFFFFFFFFFFFLL || (v28 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v31 || *(a1 + 64) > 1.0)
  {
    v47 = "invalid likelihood (swimming state)";
    v48 = 121;
    goto LABEL_138;
  }

  v32 = *(a1 + 72);
  v35 = v32 > -1 && ((v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v32 - 1) < 0xFFFFFFFFFFFFFLL || (v32 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v35 || *(a1 + 72) > 1.0)
  {
    v47 = "invalid likelihood (wheelchair state)";
    v48 = 127;
    goto LABEL_138;
  }

  v36 = *(a1 + 80);
  v39 = v36 > -1 && ((v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v36 - 1) < 0xFFFFFFFFFFFFFLL || (v36 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v39 || *(a1 + 80) > 1.0)
  {
    v47 = "invalid likelihood (highspeed state)";
    v48 = 133;
    goto LABEL_138;
  }

  v40 = *(a1 + 88);
  v43 = v40 > -1 && ((v40 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v40 - 1) < 0xFFFFFFFFFFFFFLL || (v40 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v43 || *(a1 + 88) > 1.0)
  {
    v47 = "invalid likelihood (airborne state)";
    v48 = 139;
    goto LABEL_138;
  }

  v44 = 0;
  *(a2 + 8) = xmmword_1D0E87BE0;
  v45 = *(a2 + 32);
  *v45 = v2;
  *(v45 + 8) = *(a1 + 24);
  *(v45 + 16) = *(a1 + 32);
  *(v45 + 24) = *(a1 + 40);
  *(v45 + 32) = *(a1 + 48);
  *(v45 + 40) = *(a1 + 56);
  *(v45 + 48) = *(a1 + 64);
  *(v45 + 56) = *(a1 + 72);
  *(v45 + 64) = *(a1 + 80);
  *(v45 + 72) = *(a1 + 88);
  return v44;
}

cnprint::CNPrinter *raven::RavenActivityStateEstimator::PopulateActivityStateEvent(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0;
  v24 = 0uLL;
  v26 = 0uLL;
  v23 = 0uLL;
  v22 = &unk_1F4CEF688;
  memset(v25, 0, sizeof(v25));
  *&v27 = 0;
  *(&v27 + 1) = 0x7FF8000000000000;
  *&v28 = 0;
  *(&v28 + 1) = 0x3FF0000000000000;
  v33 = 0;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  *(a3 + 56) = 0uLL;
  *(a3 + 40) = 0uLL;
  *(a3 + 24) = 0uLL;
  *(a3 + 8) = 0uLL;
  v4 = v26;
  v5 = v27;
  v6 = v28;
  *(a3 + 120) = v29;
  *(a3 + 104) = v6;
  *(a3 + 88) = v5;
  *(a3 + 72) = v4;
  v7 = v30;
  v8 = v31;
  v9 = v32;
  *(a3 + 184) = v33;
  *(a3 + 168) = v9;
  *(a3 + 152) = v8;
  *(a3 + 136) = v7;
  if (*a1 != 1)
  {
    return v3;
  }

  v12 = *a2;
  *(a3 + 24) = a2[1];
  *(a3 + 8) = v12;
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  *(a3 + 88) = a2[5];
  *(a3 + 72) = v15;
  *(a3 + 56) = v14;
  *(a3 + 40) = v13;
  v21 = 0;
  MostProbableState = raven::RavenActivityStateEstimator::GetMostProbableState(a1, &v21);
  v3 = MostProbableState;
  if (MostProbableState)
  {
    if (v21 <= 4)
    {
      if (v21 <= 1)
      {
        if (!v21)
        {
          *(a3 + 104) = 0;
          goto LABEL_15;
        }

        if (v21 != 1)
        {
LABEL_15:
          v17 = 128;
          if (!*(a1 + 264))
          {
            v17 = 8;
          }

          *&v24 = 0x10000000ALL;
          v22 = &unk_1F4CEAE48;
          v23 = xmmword_1D0E87BE0;
          *(&v24 + 1) = v25;
          sub_1D0B894B0(&v22, a1 + v17 + 16);
          v18 = *(&v24 + 1);
          *(a3 + 112) = **(&v24 + 1);
          *(a3 + 120) = v18[1];
          *(a3 + 128) = v18[2];
          *(a3 + 136) = v18[3];
          *(a3 + 144) = v18[4];
          *(a3 + 152) = v18[5];
          *(a3 + 160) = v18[6];
          *(a3 + 168) = v18[7];
          *(a3 + 176) = v18[8];
          *(a3 + 184) = v18[9];
          return v3;
        }
      }
    }

    else if (v21 > 9)
    {
      if (v21 == 10)
      {
        LOWORD(v22) = 12;
        v20 = 4;
        cnprint::CNPrinter::Print(&v22, &v20, "ActivityStateEstimator,time,%.3lf,invalid state", *(a1 + 288) + *(a1 + 280));
      }

      goto LABEL_15;
    }

    *(a3 + 104) = v21;
    goto LABEL_15;
  }

  if (cnprint::CNPrinter::GetLogLevel(MostProbableState) <= 1)
  {
    LOWORD(v22) = 12;
    v20 = 1;
    cnprint::CNPrinter::Print(&v22, &v20, "ActivityStateEstimator,time,%.3lf,could not find most probable state", *(a1 + 288) + *(a1 + 280));
  }

  return v3;
}

uint64_t raven::RavenActivityStateEstimator::GetMostProbableState(uint64_t a1, unsigned int *a2)
{
  v3 = 128;
  if (!*(a1 + 264))
  {
    v3 = 8;
  }

  v12 = 0x10000000ALL;
  v10 = &unk_1F4CEAE48;
  v11 = xmmword_1D0E87BE0;
  v13 = &v14;
  sub_1D0B894B0(&v10, a1 + v3 + 16);
  if (!DWORD2(v11))
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = -1;
  v6 = -INFINITY;
  do
  {
    if (*&v13[v4] > v6)
    {
      v6 = *&v13[v4];
      v5 = v4;
    }

    ++v4;
  }

  while (DWORD2(v11) != v4);
  v7 = v5 < 0xA && (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  if (v7 && (v6 >= 0.0 ? (v9 = v6 > 1.0) : (v9 = 1), !v9))
  {
    result = 1;
  }

  else
  {
LABEL_12:
    v5 = 0;
    result = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D0B9686C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B968FC(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0B96AEC(v4, a2);
}

void sub_1D0B96A38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B96A90(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0B968FC((a1 + 3), a2);
}

void sub_1D0B96C04(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v4);
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224))
  {
    v4 = (*(*a2 + 16))(a2);
    v6 = *&v5;
    __p[0] = v4;
    __p[1] = v5;
    v7 = *(this + 29);
    v8.i64[0] = v7[144];
    v70 = 0;
    v71 = 0;
    *v10.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v8, v9);
    v12 = CNTimeSpan::operator+(this + 930, &v70, v10, v11);
    v16 = v6;
    if (v4)
    {
      v17 = 1;
    }

    else
    {
      v17 = (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v18 = !v17;
    if (v18 == 1 || !v12 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v19 = v4 <= v12, v4 == v12))
    {
      v19 = v16 <= v13;
    }

    if (!v19)
    {
      *(this + 930) = v4;
      *(this + 931) = 0;
      raven::RavenDeviceAttitudeActiveObject::DetectStationaryStatus(this);
      v7 = *(this + 29);
    }

    v14.i64[0] = v7[143];
    v70 = 0;
    v71 = 0;
    *v20.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v14, v15);
    v22 = CNTimeSpan::operator+(this + 918, &v70, v20, v21);
    if (v18 || !v22 && (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v26 = v4 <= v22, v4 == v22))
    {
      v26 = v16 <= v23;
    }

    if (!v26)
    {
      *(this + 459) = *__p;
      raven::RavenDeviceAttitudeActiveObject::DownSamplingAccelGyroSamples(this);
      v7 = *(this + 29);
    }

    v24.i64[0] = v7[136];
    v70 = 0;
    v71 = 0;
    *v27.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v24, v25);
    v29 = CNTimeSpan::operator+(this + 920, &v70, v27, v28);
    if (v18 || !v29 && (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v33 = v4 <= v29, v4 == v29))
    {
      v33 = v16 <= v30;
    }

    if (!v33)
    {
      *(this + 920) = v4;
      *(this + 921) = 0;
      raven::RavenDeviceAttitudeActiveObject::RaiseExternalAttitudeEvent(this, a2);
      v7 = *(this + 29);
    }

    v31.i64[0] = v7[136];
    v70 = 0;
    v71 = 0;
    *v34.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v31, v32);
    v36 = CNTimeSpan::operator+(this + 924, &v70, v34, v35);
    *v39.i64 = v37;
    if (v18 || !v36 && (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v40 = v4 <= v36, v4 == v36))
    {
      v40 = v16 <= v37;
    }

    if (!v40)
    {
      *(this + 924) = v4;
      *(this + 925) = 0;
      raven::RavenDeviceAttitudeActiveObject::RaiseNonHolonomicEvent(this, a2);
    }

    v70 = 2;
    v71 = 0;
    v41 = CNTimeSpan::operator+(this + 928, &v70, v39, v38);
    *v44.i64 = v42;
    if (v18 || !v41 && (*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v45 = v4 <= v41, v4 == v41))
    {
      v45 = v16 <= v42;
    }

    if (!v45)
    {
      *(this + 928) = v4;
      *(this + 929) = 0;
      raven::RavenDeviceAttitudeActiveObject::RemoveStaleSolutions(this, __p, v44, v43);
    }

    v46 = *(this + 29);
    v44.i64[0] = *(v46 + 1040);
    v70 = 0;
    v71 = 0;
    *v47.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v44, v43);
    v49 = CNTimeSpan::operator+(this + 922, &v70, v47, v48);
    if (v18 || !v49 && (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v53 = v4 <= v49, v4 == v49))
    {
      v53 = v16 <= v50;
    }

    if (!v53)
    {
      *(this + 922) = v4;
      *(this + 923) = 0;
      raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByLinearAcceleration(this, a2);
      v46 = *(this + 29);
    }

    v51.i64[0] = *(v46 + 1088);
    v70 = 0;
    v71 = 0;
    *v54.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v51, v52);
    v56 = CNTimeSpan::operator+(this + 932, &v70, v54, v55);
    if (v18 || !v56 && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v60 = v4 <= v56, v4 == v56))
    {
      v60 = v16 <= v57;
    }

    if (!v60)
    {
      *(this + 932) = v4;
      *(this + 933) = 0;
      raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByWahbaSolution(this, a2);
      v46 = *(this + 29);
    }

    v58.i64[0] = *(v46 + 1136);
    v70 = 0;
    v71 = 0;
    *v61.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v58, v59);
    v63 = CNTimeSpan::operator+(this + 926, &v70, v61, v62);
    *v66.i64 = v64;
    if (v18 || !v63 && (*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v67 = v4 <= v63, v4 == v63))
    {
      v67 = v16 <= v64;
    }

    if (!v67)
    {
      *(this + 463) = *__p;
      raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitudeWithRotation(this);
      v46 = *(this + 29);
    }

    if (*(v46 + 3818) == 1 && *(this + 6920) == 1)
    {
      v68 = *(this + 6832);
      if (v68 <= 6 && ((1 << v68) & 0x4C) != 0 && *(this + 7240) == 1)
      {
        raven::RavenDeviceAttitudeActiveObject::ComputePCABasedHorizontalDirectionOfTravelInIMUFrame(this, a2, v66, v65);
      }
    }
  }

  else
  {
    LOWORD(v70) = 12;
    v74 = 3;
    (*(*this + 16))(__p, this, a2);
    if (v73 >= 0)
    {
      v69 = __p;
    }

    else
    {
      v69 = __p[0];
    }

    cnprint::CNPrinter::Print(&v70, &v74, "Warning: %s is not configured yet.", v69);
    if (v73 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0B970F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if ((*(this + 1376) & 1) == 0)
  {
    v22 = *(this + 29);
    v52.i64[0] = 0x7FF8000000000000;
    v51[0] = v22;
    v51[1] = (*(*a2 + 16))(a2);
    v52.i64[0] = v23;
    if (!raven::RavenActivityStateEstimator::Initialize(this + 1376, v51))
    {
      *v49 = 12;
      LOBYTE(v50) = 4;
      (*(*this + 16))(&v76, this);
      if (v78 >= 0)
      {
        v44 = &v76;
      }

      else
      {
        v44 = *&v76;
      }

      cnprint::CNPrinter::Print(v49, &v50, "%s: Could not initialize activity state estimator", v44);
      goto LABEL_47;
    }

LABEL_19:
    if (*(this + 352) == 1)
    {
      v51[0] = (*(*a2 + 16))(a2);
      v51[1] = v24;
      v25 = raven::RavenActivityStateEstimator::Update(this + 1376, v51, this + 344);
      if (!v25 && cnprint::CNPrinter::GetLogLevel(v25) <= 1)
      {
        LOWORD(v76) = 12;
        v49[0] = 1;
        v26 = (*(*a2 + 16))(a2);
        v28 = v27 + v26;
        (*(*this + 16))(v51, this);
        v29 = v52.i8[7] >= 0 ? v51 : v51[0];
        cnprint::CNPrinter::Print(&v76, v49, "t,%.3lf,%s: Could not update estimator with latest ActivityInputEvent", v28, v29);
        if (v52.i8[7] < 0)
        {
          operator delete(v51[0]);
        }
      }
    }

    if (*(this + 1368) == 1 && *(this + 1200) == 1)
    {
      v51[0] = (*(*a2 + 16))(a2);
      v51[1] = v30;
      v76 = COERCE_DOUBLE((*(*(this + 130) + 16))(this + 1040));
      v77 = v31;
      v34 = CNTimeSpan::operator-(v51, &v76, v32, v33);
      v35 = *(this + 299) - *(this + 341);
      v76 = v36 + v34;
      LODWORD(v77) = v35;
      v51[0] = (*(*a2 + 16))(a2);
      v51[1] = v37;
      v38 = raven::RavenActivityStateEstimator::Update(this + 1376, v51, &v76);
      if (!v38 && cnprint::CNPrinter::GetLogLevel(v38) <= 1)
      {
        *v49 = 12;
        LOBYTE(v50) = 1;
        v39 = (*(*a2 + 16))(a2);
        v41 = v40 + v39;
        (*(*this + 16))(v51, this);
        v42 = v52.i8[7] >= 0 ? v51 : v51[0];
        cnprint::CNPrinter::Print(v49, &v50, "t,%.3lf,%s: Could not update estimator with step count data", v41, v42);
        if (v52.i8[7] < 0)
        {
          operator delete(v51[0]);
        }
      }
    }

    v51[1] = 0;
    v52.i64[0] = 0;
    v51[0] = &unk_1F4CEF688;
    v52.i8[8] = 0;
    v53 = 0uLL;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = 0;
    *&v55 = 0;
    BYTE8(v55) = 0;
    v56 = 0uLL;
    v57 = 0x7FF8000000000000;
    LOBYTE(v58[0]) = 0;
    memset(&v58[2], 0, 72);
    v58[1] = 0x3FF0000000000000;
    v43 = raven::RavenActivityStateEstimator::PopulateActivityStateEvent(this + 1376, (a2 + 8), v51);
    if (v43)
    {
      sub_1D0B967D8(this);
    }

    if (cnprint::CNPrinter::GetLogLevel(v43) > 1)
    {
      return;
    }

    *v49 = 12;
    LOBYTE(v50) = 1;
    v45 = (*(*a2 + 16))(a2);
    v47 = v46;
    (*(*this + 16))(&v76, this);
    if (v78 >= 0)
    {
      v48 = &v76;
    }

    else
    {
      v48 = *&v76;
    }

    cnprint::CNPrinter::Print(v49, &v50, "t,%.3lf,%s: Could not populate ActivityStateEvent", v47 + v45, v48);
LABEL_47:
    if (v78 < 0)
    {
      operator delete(*&v76);
    }

    return;
  }

  LOBYTE(v57) = 0;
  v59 = 0;
  LOBYTE(v60) = 0;
  v75 = 0;
  v4 = *(a2 + 56);
  v53 = *(a2 + 40);
  v54 = v4;
  v5 = *(a2 + 88);
  v55 = *(a2 + 72);
  v56 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *v51 = v6;
  v52 = v7;
  if (*(this + 792))
  {
    v57 = &unk_1F4CEF508;
    memcpy(v58, this + 368, 0x1A1uLL);
    v59 = 1;
  }

  if (*(this + 1032))
  {
    v60 = &unk_1F4CEE060;
    v8 = *(this + 500);
    v9 = *(this + 984);
    v71 = *(this + 968);
    v72 = v9;
    v10 = *(this + 920);
    v67 = *(this + 904);
    v68 = v10;
    v11 = *(this + 952);
    v69 = *(this + 936);
    v70 = v11;
    v12 = *(this + 856);
    v63 = *(this + 840);
    v64 = v12;
    v13 = *(this + 888);
    v65 = *(this + 872);
    v66 = v13;
    v14 = *(this + 824);
    v61 = *(this + 808);
    v62 = v14;
    v15 = *(this + 126);
    v16 = *(this + 127);
    v73 = v8;
    memset(__p, 0, sizeof(__p));
    sub_1D0B94988(__p, v15, v16, 0xCCCCCCCCCCCCCCCDLL * ((v16 - v15) >> 3));
    v75 = 1;
  }

  v17 = raven::RavenActivityStateEstimator::Predict(this + 1376, v51, v6, v7);
  if (!v17)
  {
    *v49 = 12;
    LOBYTE(v50) = 4;
    v18 = (*(*a2 + 16))(a2);
    v20 = v19;
    (*(*this + 16))(&v76, this);
    v21 = v78 >= 0 ? &v76 : *&v76;
    cnprint::CNPrinter::Print(v49, &v50, "t,%.3lf,%s: Could not predict estimator", v20 + v18, v21);
    if (v78 < 0)
    {
      operator delete(*&v76);
    }
  }

  if (v75 == 1)
  {
    v60 = &unk_1F4CEE060;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v17)
  {
    goto LABEL_19;
  }
}