void sub_239A2FB6C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t EncodeTopKMultiDestinationBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v14 = v10;
  if (*(v7 + 128) != 1)
  {
    EncodeTopKMultiDestination(v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  v15 = v8;
  v204 = v7;
  v16 = *(v7 + 120);
  v17 = [*(v10 + 16) objectAtIndexedSubscript:1];
  v18 = [*(v14 + 40) objectAtIndexedSubscript:0];
  v19 = [*(v14 + 16) objectAtIndexedSubscript:0];
  if ([*(v14 + 16) count] == 3)
  {
    [*(v14 + 16) objectAtIndexedSubscript:2];
  }

  v20 = *MEMORY[0x277CD7410];
  v21 = *(v18 + v20);
  v22 = *(v18 + v20 + 16);
  v23 = MEMORY[0x277CD73D8];
  v24 = *(v18 + v20 + 32);
  v25 = *MEMORY[0x277CD73D8];
  v26 = *(v18 + v25);
  v249 = *(v18 + v20 + 48);
  v248[2] = v24;
  v248[1] = v22;
  v248[0] = v21;
  v202 = *(v248 + (v26 & 0xF));
  v247[3] = v249;
  v247[2] = v24;
  v247[1] = v22;
  v247[0] = v21;
  v201 = *(v247 + (BYTE1(v26) & 0xF));
  v27 = &v17[v20];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = *(v27 + 2);
  v195 = *&v17[v25];
  v196 = *(v27 + 3);
  v250[3] = v196;
  v197 = v30;
  v250[2] = v30;
  v199 = v29;
  v200 = v28;
  v250[1] = v29;
  v250[0] = v28;
  v31 = *(v250 + (v195 & 0xF));
  v32 = v15;
  if (v16 > v31)
  {
    v32 = v15;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v32 = v15;
    }
  }

  v33 = *MEMORY[0x277CD73C8];
  v34 = *&v19[v33];
  v35 = v23;
  if (v34 > 285212703)
  {
    if (v34 <= 536870915)
    {
      if (v34 > 301989895)
      {
        if (v34 == 301989896)
        {
          v36 = 16;
          v37 = *&v17[v33];
          if (v37 <= 285212703)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v34 != 335544328)
          {
            goto LABEL_87;
          }

          v36 = 17;
          v37 = *&v17[v33];
          if (v37 <= 285212703)
          {
            goto LABEL_66;
          }
        }
      }

      else if (v34 == 285212704)
      {
        v36 = 13;
        v37 = *&v17[v33];
        if (v37 <= 285212703)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v34 != 285212736)
        {
          goto LABEL_87;
        }

        v36 = 14;
        v37 = *&v17[v33];
        if (v37 <= 285212703)
        {
          goto LABEL_66;
        }
      }
    }

    else if (v34 <= 536870927)
    {
      if (v34 == 536870916)
      {
        v36 = 0;
        v37 = *&v17[v33];
        if (v37 > 285212703)
        {
          goto LABEL_88;
        }

        goto LABEL_66;
      }

      if (v34 != 536870920)
      {
        goto LABEL_87;
      }

      v36 = 1;
      v37 = *&v17[v33];
      if (v37 <= 285212703)
      {
        goto LABEL_66;
      }
    }

    else
    {
      switch(v34)
      {
        case 536870928:
          v36 = 2;
          v37 = *&v17[v33];
          if (v37 <= 285212703)
          {
            goto LABEL_66;
          }

          break;
        case 536870944:
          v36 = 3;
          v37 = *&v17[v33];
          if (v37 <= 285212703)
          {
            goto LABEL_66;
          }

          break;
        case 536870976:
          v36 = 4;
          v37 = *&v17[v33];
          if (v37 <= 285212703)
          {
            goto LABEL_66;
          }

          break;
        default:
          goto LABEL_87;
      }
    }
  }

  else if (v34 <= 31)
  {
    if (v34 > 7)
    {
      if (v34 == 8)
      {
        v36 = 6;
        v37 = *&v17[v33];
        if (v37 <= 285212703)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v34 != 16)
        {
          goto LABEL_87;
        }

        v36 = 7;
        v37 = *&v17[v33];
        if (v37 <= 285212703)
        {
          goto LABEL_66;
        }
      }
    }

    else if (v34 == -1879048176)
    {
      v36 = 12;
      v37 = *&v17[v33];
      if (v37 <= 285212703)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v34 != 4)
      {
        goto LABEL_87;
      }

      v36 = 5;
      v37 = *&v17[v33];
      if (v37 <= 285212703)
      {
        goto LABEL_66;
      }
    }
  }

  else if (v34 <= 268435463)
  {
    if (v34 == 32)
    {
      v36 = 8;
      v37 = *&v17[v33];
      if (v37 <= 285212703)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v34 != 64)
      {
        goto LABEL_87;
      }

      v36 = 9;
      v37 = *&v17[v33];
      if (v37 <= 285212703)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    switch(v34)
    {
      case 268435464:
        v36 = 15;
        v37 = *&v17[v33];
        if (v37 <= 285212703)
        {
          goto LABEL_66;
        }

        break;
      case 268435472:
        v36 = 10;
        v37 = *&v17[v33];
        if (v37 <= 285212703)
        {
          goto LABEL_66;
        }

        break;
      case 268435488:
        v36 = 11;
        v37 = *&v17[v33];
        if (v37 > 285212703)
        {
          break;
        }

LABEL_66:
        if (v37 <= 31)
        {
          if (v37 > 7)
          {
            if (v37 == 8)
            {
              v38 = 192;
              goto LABEL_110;
            }

            if (v37 == 16)
            {
              v38 = 224;
              goto LABEL_110;
            }
          }

          else
          {
            if (v37 == -1879048176)
            {
              v38 = 384;
              goto LABEL_110;
            }

            if (v37 == 4)
            {
              v38 = 160;
              goto LABEL_110;
            }
          }
        }

        else if (v37 <= 268435463)
        {
          if (v37 == 32)
          {
            v38 = 256;
            goto LABEL_110;
          }

          if (v37 == 64)
          {
            v38 = 288;
            goto LABEL_110;
          }
        }

        else
        {
          switch(v37)
          {
            case 268435464:
              v38 = 480;
              goto LABEL_110;
            case 268435472:
              v38 = 320;
              goto LABEL_110;
            case 268435488:
              v38 = 352;
              goto LABEL_110;
          }
        }

        goto LABEL_109;
      default:
LABEL_87:
        v36 = 18;
        v37 = *&v17[v33];
        if (v37 > 285212703)
        {
          break;
        }

        goto LABEL_66;
    }
  }

LABEL_88:
  if (v37 <= 536870915)
  {
    if (v37 > 301989895)
    {
      if (v37 == 301989896)
      {
        v38 = 512;
        goto LABEL_110;
      }

      if (v37 == 335544328)
      {
        v38 = 544;
        goto LABEL_110;
      }
    }

    else
    {
      if (v37 == 285212704)
      {
        v38 = 416;
        goto LABEL_110;
      }

      if (v37 == 285212736)
      {
        v38 = 448;
        goto LABEL_110;
      }
    }
  }

  else if (v37 <= 536870927)
  {
    if (v37 == 536870916)
    {
      v38 = 0;
      goto LABEL_110;
    }

    if (v37 == 536870920)
    {
      v38 = 32;
      goto LABEL_110;
    }
  }

  else
  {
    switch(v37)
    {
      case 536870928:
        v38 = 64;
        goto LABEL_110;
      case 536870944:
        v38 = 96;
        goto LABEL_110;
      case 536870976:
        v38 = 128;
        goto LABEL_110;
    }
  }

LABEL_109:
  v38 = 576;
LABEL_110:
  v39 = *(v18 + v33);
  v203 = v16;
  v198 = v31;
  v194 = v32;
  v193 = *&v19[*v23];
  if (v39 <= 285212703)
  {
    if (v39 <= 31)
    {
      if (v39 > 7)
      {
        if (v39 == 8)
        {
          v40 = 6;
          goto LABEL_154;
        }

        if (v39 == 16)
        {
          v40 = 7;
          goto LABEL_154;
        }
      }

      else
      {
        if (v39 == -1879048176)
        {
          v40 = 12;
          goto LABEL_154;
        }

        if (v39 == 4)
        {
          v40 = 5;
          goto LABEL_154;
        }
      }
    }

    else if (v39 <= 268435463)
    {
      if (v39 == 32)
      {
        v40 = 8;
        goto LABEL_154;
      }

      if (v39 == 64)
      {
        v40 = 9;
        goto LABEL_154;
      }
    }

    else
    {
      switch(v39)
      {
        case 268435464:
          v40 = 15;
          goto LABEL_154;
        case 268435472:
          v40 = 10;
          goto LABEL_154;
        case 268435488:
          v40 = 11;
LABEL_154:
          v192 = v40;
          goto LABEL_155;
      }
    }

    goto LABEL_153;
  }

  if (v39 <= 536870915)
  {
    if (v39 > 301989895)
    {
      if (v39 == 301989896)
      {
        v40 = 16;
        goto LABEL_154;
      }

      if (v39 == 335544328)
      {
        v40 = 17;
        goto LABEL_154;
      }
    }

    else
    {
      if (v39 == 285212704)
      {
        v40 = 13;
        goto LABEL_154;
      }

      if (v39 == 285212736)
      {
        v40 = 14;
        goto LABEL_154;
      }
    }

    goto LABEL_153;
  }

  if (v39 > 536870927)
  {
    switch(v39)
    {
      case 536870928:
        v40 = 2;
        goto LABEL_154;
      case 536870944:
        v40 = 3;
        goto LABEL_154;
      case 536870976:
        v40 = 4;
        goto LABEL_154;
    }

LABEL_153:
    v40 = 18;
    goto LABEL_154;
  }

  if (v39 != 536870916)
  {
    if (v39 == 536870920)
    {
      v40 = 1;
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v192 = 0;
LABEL_155:
  v41 = v36 | v38;
  v42 = *(*(v14 + 32) + 72);
  v43 = *(v14 + 48);
  makeStrideBytes();
  v44 = MEMORY[0x277CD73D0];
  v45 = &v19[*MEMORY[0x277CD73D0]];
  v46.i64[0] = 0x100000001;
  v46.i64[1] = 0x100000001;
  v47 = vceqq_s32(*v45, v46);
  v48.i64[0] = v47.i32[0];
  v48.i64[1] = v47.i32[1];
  v49 = v48;
  v50 = vceqq_s32(v45[1], v46);
  v48.i64[0] = v50.i32[0];
  v48.i64[1] = v50.i32[1];
  v51 = v48;
  v52 = vceqq_s32(v45[2], v46);
  v48.i64[0] = v52.i32[0];
  v48.i64[1] = v52.i32[1];
  v53 = v48;
  v54 = vceqq_s32(v45[3], v46);
  v48.i64[0] = v54.i32[0];
  v48.i64[1] = v54.i32[1];
  v55 = v48;
  v48.i64[0] = v47.i32[2];
  v48.i64[1] = v47.i32[3];
  v56 = v48;
  v48.i64[0] = v50.i32[2];
  v48.i64[1] = v50.i32[3];
  v57 = v48;
  v48.i64[0] = v52.i32[2];
  v48.i64[1] = v52.i32[3];
  v58 = v48;
  v48.i64[0] = v54.i32[2];
  v48.i64[1] = v54.i32[3];
  v59 = vbicq_s8(v266, v48);
  v60 = vbicq_s8(v264, v58);
  v61 = vbicq_s8(v262, v57);
  v62 = vbicq_s8(v260, v56);
  v63 = vbicq_s8(v265, v55);
  v64 = vbicq_s8(v263, v53);
  v65 = vbicq_s8(v261, v51);
  v66 = *&v19[*MEMORY[0x277CD73C8]];
  v67 = *&v19[*v35];
  v68 = BYTE1(*&v19[*v35]);
  v69 = vbicq_s8(v259, v49);
  v70 = BYTE2(*&v19[*v35]);
  v71 = BYTE3(*&v19[*v35]);
  v205 = v18;
  if ((v66 & 0xFFF8) != 0)
  {
    v72 = v66 >> 3;
    v246[0] = v69;
    v246[1] = v62;
    v246[2] = v65;
    v246[3] = v61;
    v246[4] = v64;
    v246[5] = v60;
    v246[6] = v63;
    v246[7] = v59;
    v73 = *(v246 + (v67 & 0xF)) / v72;
    v245[0] = v69;
    v245[1] = v62;
    v245[2] = v65;
    v245[3] = v61;
    v245[4] = v64;
    v245[5] = v60;
    v245[6] = v63;
    v245[7] = v59;
    v74 = *(v245 + (v68 & 0xF));
    v244[0] = v69;
    v244[1] = v62;
    v244[2] = v65;
    v244[3] = v61;
    v244[4] = v64;
    v244[5] = v60;
    v244[6] = v63;
    v244[7] = v59;
    v75 = *(v244 + (v70 & 0xF)) / v72;
    v243[0] = v69;
    v243[1] = v62;
    v243[2] = v65;
    v243[3] = v61;
    v243[4] = v64;
    v243[5] = v60;
    v243[6] = v63;
    v243[7] = v59;
    v76 = v75;
    v77 = *(v243 + (v71 & 0xF)) / v72;
    v78 = v73;
    v79 = v74 / v72;
  }

  else
  {
    v242[0] = v69;
    v242[1] = v62;
    v242[2] = v65;
    v242[3] = v61;
    v242[4] = v64;
    v242[5] = v60;
    v242[6] = v63;
    v242[7] = v59;
    v241[0] = v69;
    v241[1] = v62;
    v241[2] = v65;
    v241[3] = v61;
    v241[4] = v64;
    v241[5] = v60;
    v241[6] = v63;
    v241[7] = v59;
    v240[0] = v69;
    v240[1] = v62;
    v240[2] = v65;
    v240[3] = v61;
    v240[4] = v64;
    v240[5] = v60;
    v240[6] = v63;
    v240[7] = v59;
    v239[0] = v69;
    v239[1] = v62;
    v239[2] = v65;
    v239[3] = v61;
    v239[4] = v64;
    v239[5] = v60;
    v239[6] = v63;
    v239[7] = v59;
    v76 = *(v240 + (v70 & 0xF));
    v77 = *(v239 + (v71 & 0xF));
    v78 = *(v242 + (v67 & 0xF));
    v79 = *(v241 + (v68 & 0xF));
  }

  v80 = v41 | (v42 << 20);
  v81 = &v19[*MEMORY[0x277CD7410]];
  v82 = *v81;
  v83 = *(v81 + 1);
  v84 = *(v81 + 2);
  v238 = *(v81 + 3);
  v237[2] = v84;
  v237[1] = v83;
  v237[0] = v82;
  v85 = v78 * (*(v237 + (v67 & 0xF)) - 1);
  v236[3] = v238;
  v236[2] = v84;
  v236[1] = v83;
  v236[0] = v82;
  v86 = v85 + v79 * (*(v236 + (v68 & 0xF)) - 1);
  v235[3] = v238;
  v235[2] = v84;
  v235[1] = v83;
  v235[0] = v82;
  v87 = v86 + v76 * (*(v235 + (v70 & 0xF)) - 1);
  v234[3] = v238;
  v234[2] = v84;
  v234[1] = v83;
  v234[0] = v82;
  v88 = (HIDWORD(v78) != 0) | (2 * (HIDWORD(v79) != 0)) | (4 * (HIDWORD(v76) != 0)) | (8 * (HIDWORD(v77) != 0)) | (16 * ((v87 + v77 * (*(v234 + (v71 & 0xF)) - 1)) >> 32 != 0));
  makeStrideBytes();
  v89 = &v17[*v44];
  v90.i64[0] = 0x100000001;
  v90.i64[1] = 0x100000001;
  v91 = vceqq_s32(*v89, v90);
  v92.i64[0] = v91.i32[0];
  v92.i64[1] = v91.i32[1];
  v93 = v92;
  v94 = vceqq_s32(v89[1], v90);
  v92.i64[0] = v94.i32[0];
  v92.i64[1] = v94.i32[1];
  v95 = v92;
  v96 = vceqq_s32(v89[2], v90);
  v92.i64[0] = v96.i32[0];
  v92.i64[1] = v96.i32[1];
  v97 = v92;
  v98 = vceqq_s32(v89[3], v90);
  v92.i64[0] = v98.i32[0];
  v92.i64[1] = v98.i32[1];
  v99 = v92;
  v92.i64[0] = v91.i32[2];
  v92.i64[1] = v91.i32[3];
  v100 = v92;
  v92.i64[0] = v94.i32[2];
  v92.i64[1] = v94.i32[3];
  v101 = v92;
  v92.i64[0] = v96.i32[2];
  v92.i64[1] = v96.i32[3];
  v102 = v92;
  v92.i64[0] = v98.i32[2];
  v92.i64[1] = v98.i32[3];
  v103 = vbicq_s8(v266, v92);
  v104 = vbicq_s8(v264, v102);
  v105 = vbicq_s8(v262, v101);
  v106 = vbicq_s8(v260, v100);
  v107 = vbicq_s8(v265, v99);
  v108 = vbicq_s8(v263, v97);
  v109 = vbicq_s8(v261, v95);
  v110 = *&v17[*MEMORY[0x277CD73C8]];
  v111 = *&v17[*v35];
  v112 = BYTE1(*&v17[*v35]);
  v113 = vbicq_s8(v259, v93);
  v114 = BYTE2(*&v17[*v35]);
  v115 = BYTE3(*&v17[*v35]);
  if ((v110 & 0xFFF8) != 0)
  {
    v116 = v110 >> 3;
    v233[0] = v113;
    v233[1] = v106;
    v233[2] = v109;
    v233[3] = v105;
    v233[4] = v108;
    v233[5] = v104;
    v233[6] = v107;
    v233[7] = v103;
    v117 = *(v233 + (v111 & 0xF)) / v116;
    v232[0] = v113;
    v232[1] = v106;
    v232[2] = v109;
    v232[3] = v105;
    v232[4] = v108;
    v232[5] = v104;
    v232[6] = v107;
    v232[7] = v103;
    v118 = *(v232 + (v112 & 0xF));
    v231[0] = v113;
    v231[1] = v106;
    v231[2] = v109;
    v231[3] = v105;
    v231[4] = v108;
    v231[5] = v104;
    v231[6] = v107;
    v231[7] = v103;
    v119 = *(v231 + (v114 & 0xF)) / v116;
    v230[0] = v113;
    v230[1] = v106;
    v230[2] = v109;
    v230[3] = v105;
    v230[4] = v108;
    v230[5] = v104;
    v230[6] = v107;
    v230[7] = v103;
    v120 = v119;
    v121 = *(v230 + (v115 & 0xF)) / v116;
    v122 = v117;
    v123 = v118 / v116;
  }

  else
  {
    v229[0] = v113;
    v229[1] = v106;
    v229[2] = v109;
    v229[3] = v105;
    v229[4] = v108;
    v229[5] = v104;
    v229[6] = v107;
    v229[7] = v103;
    v228[0] = v113;
    v228[1] = v106;
    v228[2] = v109;
    v228[3] = v105;
    v228[4] = v108;
    v228[5] = v104;
    v228[6] = v107;
    v228[7] = v103;
    v227[0] = v113;
    v227[1] = v106;
    v227[2] = v109;
    v227[3] = v105;
    v227[4] = v108;
    v227[5] = v104;
    v227[6] = v107;
    v227[7] = v103;
    v226[0] = v113;
    v226[1] = v106;
    v226[2] = v109;
    v226[3] = v105;
    v226[4] = v108;
    v226[5] = v104;
    v226[6] = v107;
    v226[7] = v103;
    v120 = *(v227 + (v114 & 0xF));
    v121 = *(v226 + (v115 & 0xF));
    v122 = *(v229 + (v111 & 0xF));
    v123 = *(v228 + (v112 & 0xF));
  }

  v124 = v80 & 0xFFFFFFFFF0FFFFFFLL | ((v43 & 0xF) << 24);
  v125 = &v17[*MEMORY[0x277CD7410]];
  v126 = *v125;
  v127 = *(v125 + 1);
  v128 = *(v125 + 2);
  v225 = *(v125 + 3);
  v224[2] = v128;
  v224[1] = v127;
  v224[0] = v126;
  v129 = v122 * (*(v224 + (v111 & 0xF)) - 1);
  v223[3] = v225;
  v223[2] = v128;
  v223[1] = v127;
  v223[0] = v126;
  v130 = v129 + v123 * (*(v223 + (v112 & 0xF)) - 1);
  v222[3] = v225;
  v222[2] = v128;
  v222[1] = v127;
  v222[0] = v126;
  v131 = v130 + v120 * (*(v222 + (v114 & 0xF)) - 1);
  v221[3] = v225;
  v221[2] = v128;
  v221[1] = v127;
  v221[0] = v126;
  v132 = (32 * (HIDWORD(v122) != 0)) | ((HIDWORD(v123) != 0) << 6) | ((HIDWORD(v120) != 0) << 7) | ((HIDWORD(v121) != 0) << 8) | (((v131 + v121 * (*(v221 + (v115 & 0xF)) - 1)) >> 32 != 0) << 9) | v88;
  makeStrideBytes();
  v133 = &v205[*v44];
  v134.i64[0] = 0x100000001;
  v134.i64[1] = 0x100000001;
  v135 = vceqq_s32(*v133, v134);
  v136.i64[0] = v135.i32[0];
  v136.i64[1] = v135.i32[1];
  v137 = v136;
  v138 = vceqq_s32(v133[1], v134);
  v136.i64[0] = v138.i32[0];
  v136.i64[1] = v138.i32[1];
  v139 = v136;
  v140 = vceqq_s32(v133[2], v134);
  v136.i64[0] = v140.i32[0];
  v136.i64[1] = v140.i32[1];
  v141 = v136;
  v142 = vceqq_s32(v133[3], v134);
  v136.i64[0] = v142.i32[0];
  v136.i64[1] = v142.i32[1];
  v143 = v136;
  v136.i64[0] = v135.i32[2];
  v136.i64[1] = v135.i32[3];
  v144 = v136;
  v136.i64[0] = v138.i32[2];
  v136.i64[1] = v138.i32[3];
  v145 = v136;
  v136.i64[0] = v140.i32[2];
  v136.i64[1] = v140.i32[3];
  v146 = v136;
  v136.i64[0] = v142.i32[2];
  v136.i64[1] = v142.i32[3];
  v147 = vbicq_s8(v266, v136);
  v148 = vbicq_s8(v264, v146);
  v149 = vbicq_s8(v262, v145);
  v150 = vbicq_s8(v260, v144);
  v151 = vbicq_s8(v265, v143);
  v152 = vbicq_s8(v263, v141);
  v153 = vbicq_s8(v261, v139);
  v154 = *&v205[*MEMORY[0x277CD73C8]];
  v155 = *&v205[*v35];
  v156 = BYTE1(*&v205[*v35]);
  v157 = vbicq_s8(v259, v137);
  v158 = BYTE2(*&v205[*v35]);
  v159 = BYTE3(*&v205[*v35]);
  if ((v154 & 0xFFF8) != 0)
  {
    v160 = v154 >> 3;
    v220[0] = v157;
    v220[1] = v150;
    v220[2] = v153;
    v220[3] = v149;
    v220[4] = v152;
    v220[5] = v148;
    v220[6] = v151;
    v220[7] = v147;
    v161 = *(v220 + (v155 & 0xF)) / v160;
    v219[0] = v157;
    v219[1] = v150;
    v219[2] = v153;
    v219[3] = v149;
    v219[4] = v152;
    v219[5] = v148;
    v219[6] = v151;
    v219[7] = v147;
    v162 = *(v219 + (v156 & 0xF));
    v218[0] = v157;
    v218[1] = v150;
    v218[2] = v153;
    v218[3] = v149;
    v218[4] = v152;
    v218[5] = v148;
    v218[6] = v151;
    v218[7] = v147;
    v163 = *(v218 + (v158 & 0xF)) / v160;
    v217[0] = v157;
    v217[1] = v150;
    v217[2] = v153;
    v217[3] = v149;
    v217[4] = v152;
    v217[5] = v148;
    v217[6] = v151;
    v217[7] = v147;
    v164 = v163;
    v165 = *(v217 + (v159 & 0xF)) / v160;
    v166 = v161;
    v167 = v162 / v160;
  }

  else
  {
    v216[0] = v157;
    v216[1] = v150;
    v216[2] = v153;
    v216[3] = v149;
    v216[4] = v152;
    v216[5] = v148;
    v216[6] = v151;
    v216[7] = v147;
    v215[0] = v157;
    v215[1] = v150;
    v215[2] = v153;
    v215[3] = v149;
    v215[4] = v152;
    v215[5] = v148;
    v215[6] = v151;
    v215[7] = v147;
    v214[0] = v157;
    v214[1] = v150;
    v214[2] = v153;
    v214[3] = v149;
    v214[4] = v152;
    v214[5] = v148;
    v214[6] = v151;
    v214[7] = v147;
    v213[0] = v157;
    v213[1] = v150;
    v213[2] = v153;
    v213[3] = v149;
    v213[4] = v152;
    v213[5] = v148;
    v213[6] = v151;
    v213[7] = v147;
    v164 = *(v214 + (v158 & 0xF));
    v165 = *(v213 + (v159 & 0xF));
    v166 = *(v216 + (v155 & 0xF));
    v167 = *(v215 + (v156 & 0xF));
  }

  v168 = &v205[*MEMORY[0x277CD7410]];
  v169 = *v168;
  v170 = *(v168 + 1);
  v171 = *(v168 + 3);
  v211 = *(v168 + 2);
  v212 = v171;
  v210[0] = v169;
  v210[1] = v170;
  v172 = v166 * (*(v210 + (v155 & 0xF)) - 1);
  v209[2] = v211;
  v209[3] = v171;
  v209[0] = v169;
  v209[1] = v170;
  v173 = v172 + v167 * (*(v209 + (v156 & 0xF)) - 1);
  v208[2] = v211;
  v208[3] = v171;
  v208[0] = v169;
  v208[1] = v170;
  v174 = v173 + v164 * (*(v208 + (v158 & 0xF)) - 1);
  v175 = (HIDWORD(v166) != 0) | (2 * (HIDWORD(v167) != 0)) | (4 * (HIDWORD(v164) != 0)) | (8 * (HIDWORD(v165) != 0));
  v207[2] = v211;
  v207[3] = v171;
  v207[0] = v169;
  v207[1] = v170;
  v176 = (v174 + v165 * (*(v207 + (v159 & 0xF)) - 1)) >> 32 != 0;
  v177.i64[0] = -1;
  v177.i64[1] = -1;
  v263.i64[1] = -1;
  v259 = v177;
  v261.i64[0] = v124;
  v261.i64[1] = v192;
  v262.i64[0] = v132;
  v262.i64[1] = v175 | (16 * v176);
  v263.i64[0] = 65538;
  v260.i64[0] = ((v16 + 3) >> 1) & 0x7FFFFFFE;
  v260.i64[1] = 0;
  v190 = *(v204 + *MEMORY[0x277CD7360]);
  v191 = *(v204 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v179 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v180 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v180 <= 1)
  {
    v181 = 1;
  }

  else
  {
    v181 = v180;
  }

  if (v193)
  {
    v182 = v201;
    v183 = 4;
    v184 = (v201 + v181 - 1) / v181;
    v185 = v202;
  }

  else
  {
    v185 = v202;
    v182 = v201;
    if (v202 >> 15 <= 2)
    {
      if (v202 >> 14 <= 2)
      {
        if (v202 >> 14)
        {
          v181 = 64;
        }
      }

      else
      {
        v181 = 128;
      }
    }

    else
    {
      v181 = 256;
    }

    v183 = 1;
    v184 = v201;
  }

  if (v179 < v181)
  {
    v181 = v179;
  }

  v206[0] = v200;
  v206[1] = v199;
  v206[2] = v197;
  v206[3] = v196;
  v186 = *(v206 + (BYTE1(v195) & 0xF));
  if (v181 >= 0x100)
  {
    v187 = 256;
  }

  else
  {
    v187 = v181;
  }

  v254 = v203;
  v255 = v185;
  v256 = v182;
  v257 = v198;
  v258 = v186;
  [v194 setComputePipelineState:PipelineStateForMPSKey];
  v188 = malloc_type_calloc(0x3CuLL, 4uLL, 0x100004052888210uLL);
  [v194 setBuffer:objc_msgSend(v19 offset:"buffer") atIndex:{*(*(v14 + 8) + 64) + MPSGetLinearOffsetBytes(v19, 0, 2, v188, 0), 0}];
  [v194 setBuffer:objc_msgSend(v17 offset:"buffer") atIndex:{*(*(v14 + 8) + 144) + MPSGetLinearOffsetBytes(v17, 0, 2, v188 + 80, 0), 1}];
  [v194 setBuffer:objc_msgSend(v205 offset:"buffer") atIndex:{*(*(v14 + 32) + 64) + MPSGetLinearOffsetBytes(v205, 0, 2, v188 + 160, 0), 2}];
  objc_msgSend_setBytes_length_atIndex_(v194);
  free(v188);
  objc_msgSend_setBytes_length_atIndex_(v194);
  [v194 setThreadgroupMemoryLength:16 * v183 * v187 atIndex:0];
  v252 = v184;
  v253 = vdupq_n_s64(1uLL);
  v251[0] = v187;
  v251[1] = v183;
  v251[2] = 1;
  [v194 dispatchThreadgroups:&v252 threadsPerThreadgroup:v251];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeTopKMultiDestination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v204 = v10;
  v197 = v7;
  v11 = *(v7 + 120);
  v12 = [*(v8 + 16) objectAtIndexedSubscript:0];
  v13 = [*(v9 + 40) objectAtIndexedSubscript:0];
  v14 = [*(v9 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  v17 = MEMORY[0x277CD7410];
  v18 = *MEMORY[0x277CD7410];
  v19 = *(v12 + v18);
  v20 = *(v12 + v18 + 16);
  v21 = *(v12 + v18 + 32);
  v22 = MEMORY[0x277CD73D8];
  v23 = *MEMORY[0x277CD73D8];
  v24 = *(v12 + v23);
  v250 = *(v12 + v18 + 48);
  v249[2] = v21;
  v249[1] = v20;
  v249[0] = v19;
  v200 = *(v249 + (v24 & 0xF));
  v251[3] = v250;
  v251[2] = v21;
  v251[1] = v20;
  v251[0] = v19;
  v199 = *(v251 + (BYTE1(v24) & 0xF));
  v205 = v14;
  if (isKindOfClass)
  {
    v25 = v14;
  }

  else
  {
    v25 = v13;
  }

  v26 = (v25 + v18);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = *(v25 + v23);
  v247 = v26[3];
  v246[2] = v29;
  v246[1] = v28;
  v246[0] = v27;
  v31 = *(v246 + (v30 & 0xF));
  v248[3] = v247;
  v248[2] = v29;
  v248[1] = v28;
  v248[0] = v27;
  v196 = *(v248 + (BYTE1(v30) & 0xF));
  v198 = v31;
  if (v11 > v31 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((isKindOfClass | v16) & 1) == 0)
  {
    if (*(v14 + *v17 + 4 * (*(v14 + *v22) & 0xF)) != *(v13 + *v17 + 4 * (*(v13 + *v22) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v14 + *v17 + 4 * (*(v14 + *v22 + 1) & 0xF)) != *(v13 + *v17 + 4 * (*(v13 + *v22 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v193 = *(v12 + *v22);
  v32 = MEMORY[0x277CD73C8];
  v33 = *MEMORY[0x277CD73C8];
  v34 = *(v12 + v33);
  if (v34 > 285212703)
  {
    if (v34 <= 536870915)
    {
      if (v34 > 301989895)
      {
        if (v34 == 301989896)
        {
          v35 = 16;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
        }

        if (v34 == 335544328)
        {
          v35 = 17;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
        }
      }

      else
      {
        if (v34 == 285212704)
        {
          v35 = 13;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
        }

        if (v34 == 285212736)
        {
          v35 = 14;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
        }
      }
    }

    else if (v34 <= 536870927)
    {
      if (v34 == 536870916)
      {
        v35 = 0;
        if (isKindOfClass)
        {
          goto LABEL_103;
        }

        goto LABEL_70;
      }

      if (v34 == 536870920)
      {
        v35 = 1;
        if (isKindOfClass)
        {
          goto LABEL_103;
        }

        goto LABEL_70;
      }
    }

    else
    {
      switch(v34)
      {
        case 536870928:
          v35 = 2;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
        case 536870944:
          v35 = 3;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
        case 536870976:
          v35 = 4;
          if (isKindOfClass)
          {
            goto LABEL_103;
          }

          goto LABEL_70;
      }
    }

LABEL_69:
    v35 = 18;
    if (isKindOfClass)
    {
      goto LABEL_103;
    }

    goto LABEL_70;
  }

  if (v34 <= 31)
  {
    if (v34 > 7)
    {
      if (v34 == 8)
      {
        v35 = 6;
        if (isKindOfClass)
        {
          goto LABEL_103;
        }

        goto LABEL_70;
      }

      if (v34 == 16)
      {
        v35 = 7;
        if (isKindOfClass)
        {
          goto LABEL_103;
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v34 == -1879048176)
      {
        v35 = 12;
        if (isKindOfClass)
        {
          goto LABEL_103;
        }

        goto LABEL_70;
      }

      if (v34 == 4)
      {
        v35 = 5;
        if (isKindOfClass)
        {
          goto LABEL_103;
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  if (v34 <= 268435463)
  {
    if (v34 == 32)
    {
      v35 = 8;
      if (isKindOfClass)
      {
        goto LABEL_103;
      }

      goto LABEL_70;
    }

    if (v34 == 64)
    {
      v35 = 9;
      if (isKindOfClass)
      {
        goto LABEL_103;
      }

      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (v34 == 268435464)
  {
    v35 = 15;
    if (isKindOfClass)
    {
      goto LABEL_103;
    }

    goto LABEL_70;
  }

  if (v34 == 268435472)
  {
    v35 = 10;
    if (isKindOfClass)
    {
      goto LABEL_103;
    }

    goto LABEL_70;
  }

  if (v34 != 268435488)
  {
    goto LABEL_69;
  }

  v35 = 11;
  if (isKindOfClass)
  {
    goto LABEL_103;
  }

LABEL_70:
  v36 = *(v13 + v33);
  if (v36 > 285212703)
  {
    if (v36 <= 536870915)
    {
      if (v36 > 301989895)
      {
        if (v36 == 301989896)
        {
          v37 = 16;
          goto LABEL_104;
        }

        if (v36 == 335544328)
        {
          v37 = 17;
          goto LABEL_104;
        }
      }

      else
      {
        if (v36 == 285212704)
        {
          v37 = 13;
          goto LABEL_104;
        }

        if (v36 == 285212736)
        {
          v37 = 14;
          goto LABEL_104;
        }
      }

      goto LABEL_157;
    }

    if (v36 > 536870927)
    {
      switch(v36)
      {
        case 536870928:
          v37 = 2;
          goto LABEL_104;
        case 536870944:
          v37 = 3;
          goto LABEL_104;
        case 536870976:
          v37 = 4;
          goto LABEL_104;
      }

      goto LABEL_157;
    }

    if (v36 != 536870916)
    {
      if (v36 == 536870920)
      {
        v37 = 1;
        goto LABEL_104;
      }

      goto LABEL_157;
    }

LABEL_103:
    v37 = 0;
    goto LABEL_104;
  }

  if (v36 <= 31)
  {
    if (v36 > 7)
    {
      if (v36 == 8)
      {
        v37 = 6;
        goto LABEL_104;
      }

      if (v36 == 16)
      {
        v37 = 7;
        goto LABEL_104;
      }
    }

    else
    {
      if (v36 == -1879048176)
      {
        v37 = 12;
        goto LABEL_104;
      }

      if (v36 == 4)
      {
        v37 = 5;
        goto LABEL_104;
      }
    }
  }

  else if (v36 <= 268435463)
  {
    if (v36 == 32)
    {
      v37 = 8;
      goto LABEL_104;
    }

    if (v36 == 64)
    {
      v37 = 9;
      goto LABEL_104;
    }
  }

  else
  {
    switch(v36)
    {
      case 268435464:
        v37 = 15;
        goto LABEL_104;
      case 268435472:
        v37 = 10;
        goto LABEL_104;
      case 268435488:
        v37 = 11;
        goto LABEL_104;
    }
  }

LABEL_157:
  v37 = 18;
LABEL_104:
  if (v16)
  {
    goto LABEL_160;
  }

  v38 = *&v205[v33];
  if (v38 > 285212703)
  {
    if (v38 <= 536870915)
    {
      if (v38 > 301989895)
      {
        if (v38 == 301989896)
        {
          v39 = 512;
          goto LABEL_159;
        }

        if (v38 == 335544328)
        {
          v39 = 544;
          goto LABEL_159;
        }
      }

      else
      {
        if (v38 == 285212704)
        {
          v39 = 416;
          goto LABEL_159;
        }

        if (v38 == 285212736)
        {
          v39 = 448;
          goto LABEL_159;
        }
      }
    }

    else if (v38 <= 536870927)
    {
      if (v38 == 536870916)
      {
        v39 = 0;
        goto LABEL_159;
      }

      if (v38 == 536870920)
      {
        v39 = 32;
        goto LABEL_159;
      }
    }

    else
    {
      switch(v38)
      {
        case 536870928:
          v39 = 64;
          goto LABEL_159;
        case 536870944:
          v39 = 96;
          goto LABEL_159;
        case 536870976:
          v39 = 128;
          goto LABEL_159;
      }
    }

LABEL_158:
    v39 = 576;
    goto LABEL_159;
  }

  if (v38 <= 31)
  {
    if (v38 > 7)
    {
      if (v38 == 8)
      {
        v39 = 192;
        goto LABEL_159;
      }

      if (v38 == 16)
      {
        v39 = 224;
        goto LABEL_159;
      }
    }

    else
    {
      if (v38 == -1879048176)
      {
        v39 = 384;
        goto LABEL_159;
      }

      if (v38 == 4)
      {
        v39 = 160;
        goto LABEL_159;
      }
    }

    goto LABEL_158;
  }

  if (v38 <= 268435463)
  {
    if (v38 == 32)
    {
      v39 = 256;
      goto LABEL_159;
    }

    if (v38 == 64)
    {
      v39 = 288;
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  if (v38 == 268435464)
  {
    v39 = 480;
    goto LABEL_159;
  }

  if (v38 == 268435472)
  {
    v39 = 320;
    goto LABEL_159;
  }

  if (v38 != 268435488)
  {
    goto LABEL_158;
  }

  v39 = 352;
LABEL_159:
  v37 |= v39;
LABEL_160:
  v192 = v37;
  v40 = v35 & 0xF0FFFFFF | ((*(v9 + 48) & 0xF) << 24);
  makeStrideBytes();
  v41 = (v12 + *MEMORY[0x277CD73D0]);
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  v43 = vceqq_s32(*v41, v42);
  v44.i64[0] = v43.i32[0];
  v44.i64[1] = v43.i32[1];
  v45 = v44;
  v46 = vceqq_s32(v41[1], v42);
  v44.i64[0] = v46.i32[0];
  v44.i64[1] = v46.i32[1];
  v47 = v44;
  v48 = vceqq_s32(v41[2], v42);
  v44.i64[0] = v48.i32[0];
  v44.i64[1] = v48.i32[1];
  v49 = v44;
  v50 = vceqq_s32(v41[3], v42);
  v44.i64[0] = v50.i32[0];
  v44.i64[1] = v50.i32[1];
  v51 = v44;
  v44.i64[0] = v43.i32[2];
  v44.i64[1] = v43.i32[3];
  v52 = v44;
  v44.i64[0] = v46.i32[2];
  v44.i64[1] = v46.i32[3];
  v53 = v44;
  v44.i64[0] = v48.i32[2];
  v44.i64[1] = v48.i32[3];
  v54 = v44;
  v44.i64[0] = v50.i32[2];
  v44.i64[1] = v50.i32[3];
  v55 = vbicq_s8(v267, v44);
  v56 = vbicq_s8(v265, v54);
  v57 = vbicq_s8(v263, v53);
  v58 = vbicq_s8(v261, v52);
  v59 = vbicq_s8(v266, v51);
  v60 = vbicq_s8(v264, v49);
  v61 = vbicq_s8(v262, v47);
  v62 = *(v12 + *v32);
  v63 = *(v12 + *v22);
  v64 = BYTE1(*(v12 + *v22));
  v65 = vbicq_s8(v260, v45);
  v66 = BYTE2(*(v12 + *v22));
  v67 = BYTE3(*(v12 + *v22));
  v194 = v11;
  v68 = v32;
  if ((v62 & 0xFFF8) != 0)
  {
    v69 = v62 >> 3;
    v245[0] = v65;
    v245[1] = v58;
    v245[2] = v61;
    v245[3] = v57;
    v245[4] = v60;
    v245[5] = v56;
    v245[6] = v59;
    v245[7] = v55;
    v70 = *(v245 + (v63 & 0xF)) / v69;
    v244[0] = v65;
    v244[1] = v58;
    v244[2] = v61;
    v244[3] = v57;
    v244[4] = v60;
    v244[5] = v56;
    v244[6] = v59;
    v244[7] = v55;
    v71 = *(v244 + (v64 & 0xF));
    v243[0] = v65;
    v243[1] = v58;
    v243[2] = v61;
    v243[3] = v57;
    v243[4] = v60;
    v243[5] = v56;
    v243[6] = v59;
    v243[7] = v55;
    v72 = *(v243 + (v66 & 0xF)) / v69;
    v242[0] = v65;
    v242[1] = v58;
    v242[2] = v61;
    v242[3] = v57;
    v242[4] = v60;
    v242[5] = v56;
    v242[6] = v59;
    v242[7] = v55;
    v73 = v72;
    v74 = *(v242 + (v67 & 0xF)) / v69;
    v75 = v70;
    v76 = v71 / v69;
  }

  else
  {
    v241[0] = v65;
    v241[1] = v58;
    v241[2] = v61;
    v241[3] = v57;
    v241[4] = v60;
    v241[5] = v56;
    v241[6] = v59;
    v241[7] = v55;
    v240[0] = v65;
    v240[1] = v58;
    v240[2] = v61;
    v240[3] = v57;
    v240[4] = v60;
    v240[5] = v56;
    v240[6] = v59;
    v240[7] = v55;
    v239[0] = v65;
    v239[1] = v58;
    v239[2] = v61;
    v239[3] = v57;
    v239[4] = v60;
    v239[5] = v56;
    v239[6] = v59;
    v239[7] = v55;
    v238[0] = v65;
    v238[1] = v58;
    v238[2] = v61;
    v238[3] = v57;
    v238[4] = v60;
    v238[5] = v56;
    v238[6] = v59;
    v238[7] = v55;
    v73 = *(v239 + (v66 & 0xF));
    v74 = *(v238 + (v67 & 0xF));
    v75 = *(v241 + (v63 & 0xF));
    v76 = *(v240 + (v64 & 0xF));
  }

  v77 = (v12 + *v17);
  v78 = *v77;
  v79 = v77[1];
  v80 = v77[2];
  v237 = v77[3];
  v236[2] = v80;
  v236[1] = v79;
  v236[0] = v78;
  v81 = v75 * (*(v236 + (v63 & 0xF)) - 1);
  v235[3] = v237;
  v235[2] = v80;
  v235[1] = v79;
  v235[0] = v78;
  v82 = v81 + v76 * (*(v235 + (v64 & 0xF)) - 1);
  v234[3] = v237;
  v234[2] = v80;
  v234[1] = v79;
  v234[0] = v78;
  v83 = v82 + v73 * (*(v234 + (v66 & 0xF)) - 1);
  v233[3] = v237;
  v233[2] = v80;
  v233[1] = v79;
  v233[0] = v78;
  v84 = (HIDWORD(v75) != 0) | (2 * (HIDWORD(v76) != 0)) | (4 * (HIDWORD(v73) != 0)) | (8 * (HIDWORD(v74) != 0));
  v85 = (v83 + v74 * (*(v233 + (v67 & 0xF)) - 1)) >> 32 != 0;
  v202 = isKindOfClass;
  v195 = v9;
  if ((isKindOfClass & 1) == 0)
  {
    makeStrideBytes();
    v126 = (v13 + *MEMORY[0x277CD73D0]);
    v127.i64[0] = 0x100000001;
    v127.i64[1] = 0x100000001;
    v128 = vceqq_s32(*v126, v127);
    v129.i64[0] = v128.i32[0];
    v129.i64[1] = v128.i32[1];
    v130 = v129;
    v131 = vceqq_s32(v126[1], v127);
    v129.i64[0] = v131.i32[0];
    v129.i64[1] = v131.i32[1];
    v132 = v129;
    v133 = vceqq_s32(v126[2], v127);
    v129.i64[0] = v133.i32[0];
    v129.i64[1] = v133.i32[1];
    v134 = v129;
    v135 = vceqq_s32(v126[3], v127);
    v129.i64[0] = v135.i32[0];
    v129.i64[1] = v135.i32[1];
    v136 = v129;
    v129.i64[0] = v128.i32[2];
    v129.i64[1] = v128.i32[3];
    v137 = v129;
    v129.i64[0] = v131.i32[2];
    v129.i64[1] = v131.i32[3];
    v138 = v129;
    v129.i64[0] = v133.i32[2];
    v129.i64[1] = v133.i32[3];
    v139 = v129;
    v129.i64[0] = v135.i32[2];
    v129.i64[1] = v135.i32[3];
    v140 = vbicq_s8(v267, v129);
    v141 = vbicq_s8(v265, v139);
    v142 = vbicq_s8(v263, v138);
    v143 = vbicq_s8(v261, v137);
    v144 = vbicq_s8(v266, v136);
    v145 = vbicq_s8(v264, v134);
    v146 = vbicq_s8(v262, v132);
    v147 = *(v13 + *v68);
    v148 = *(v13 + *MEMORY[0x277CD73D8]);
    v149 = BYTE1(*(v13 + *MEMORY[0x277CD73D8]));
    v150 = vbicq_s8(v260, v130);
    v151 = BYTE2(*(v13 + *MEMORY[0x277CD73D8]));
    v152 = BYTE3(*(v13 + *MEMORY[0x277CD73D8]));
    if ((v147 & 0xFFF8) != 0)
    {
      v153 = v147 >> 3;
      v232[0] = v150;
      v232[1] = v143;
      v232[2] = v146;
      v232[3] = v142;
      v232[4] = v145;
      v232[5] = v141;
      v232[6] = v144;
      v232[7] = v140;
      v154 = *(v232 + (v148 & 0xF)) / v153;
      v231[0] = v150;
      v231[1] = v143;
      v231[2] = v146;
      v231[3] = v142;
      v231[4] = v145;
      v231[5] = v141;
      v231[6] = v144;
      v231[7] = v140;
      v155 = *(v231 + (v149 & 0xF));
      v230[0] = v150;
      v230[1] = v143;
      v230[2] = v146;
      v230[3] = v142;
      v230[4] = v145;
      v230[5] = v141;
      v230[6] = v144;
      v230[7] = v140;
      v156 = *(v230 + (v151 & 0xF)) / v153;
      v229[0] = v150;
      v229[1] = v143;
      v229[2] = v146;
      v229[3] = v142;
      v229[4] = v145;
      v229[5] = v141;
      v229[6] = v144;
      v229[7] = v140;
      v157 = v156;
      v158 = *(v229 + (v152 & 0xF)) / v153;
      v159 = v154;
      v160 = v155 / v153;
    }

    else
    {
      v228[0] = v150;
      v228[1] = v143;
      v228[2] = v146;
      v228[3] = v142;
      v228[4] = v145;
      v228[5] = v141;
      v228[6] = v144;
      v228[7] = v140;
      v227[0] = v150;
      v227[1] = v143;
      v227[2] = v146;
      v227[3] = v142;
      v227[4] = v145;
      v227[5] = v141;
      v227[6] = v144;
      v227[7] = v140;
      v226[0] = v150;
      v226[1] = v143;
      v226[2] = v146;
      v226[3] = v142;
      v226[4] = v145;
      v226[5] = v141;
      v226[6] = v144;
      v226[7] = v140;
      v225[0] = v150;
      v225[1] = v143;
      v225[2] = v146;
      v225[3] = v142;
      v225[4] = v145;
      v225[5] = v141;
      v225[6] = v144;
      v225[7] = v140;
      v157 = *(v226 + (v151 & 0xF));
      v158 = *(v225 + (v152 & 0xF));
      v159 = *(v228 + (v148 & 0xF));
      v160 = *(v227 + (v149 & 0xF));
    }

    v86 = v17;
    v169 = (v13 + *v17);
    v170 = *v169;
    v171 = v169[1];
    v172 = v169[2];
    v224 = v169[3];
    v223[2] = v172;
    v223[1] = v171;
    v223[0] = v170;
    v173 = v159 * (*(v223 + (v148 & 0xF)) - 1);
    v222[3] = v224;
    v222[2] = v172;
    v222[1] = v171;
    v222[0] = v170;
    v174 = v173 + v160 * (*(v222 + (v149 & 0xF)) - 1);
    v221[3] = v224;
    v221[2] = v172;
    v221[1] = v171;
    v221[0] = v170;
    v175 = v174 + v157 * (*(v221 + (v151 & 0xF)) - 1);
    v220[3] = v224;
    v220[2] = v172;
    v220[1] = v171;
    v220[0] = v170;
    v87 = (HIDWORD(v159) != 0) | (2 * (HIDWORD(v160) != 0)) | (4 * (HIDWORD(v157) != 0)) | (8 * (HIDWORD(v158) != 0)) | (16 * ((v175 + v158 * (*(v220 + (v152 & 0xF)) - 1)) >> 32 != 0));
    v88 = v193;
    v89 = v84 | (16 * v85);
    v203 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_165;
    }

LABEL_173:
    v161 = v13;
    v117 = v194;
    goto LABEL_174;
  }

  v86 = v17;
  v87 = 0;
  v88 = v193;
  v89 = v84 | (16 * v85);
  v203 = v16;
  if (v16)
  {
    goto LABEL_173;
  }

LABEL_165:
  makeStrideBytes();
  v90 = &v205[*MEMORY[0x277CD73D0]];
  v91.i64[0] = 0x100000001;
  v91.i64[1] = 0x100000001;
  v92 = vceqq_s32(*v90, v91);
  v93.i64[0] = v92.i32[0];
  v93.i64[1] = v92.i32[1];
  v94 = v93;
  v95 = vceqq_s32(v90[1], v91);
  v93.i64[0] = v95.i32[0];
  v93.i64[1] = v95.i32[1];
  v96 = v93;
  v97 = vceqq_s32(v90[2], v91);
  v93.i64[0] = v97.i32[0];
  v93.i64[1] = v97.i32[1];
  v98 = v93;
  v99 = vceqq_s32(v90[3], v91);
  v93.i64[0] = v99.i32[0];
  v93.i64[1] = v99.i32[1];
  v100 = v93;
  v93.i64[0] = v92.i32[2];
  v93.i64[1] = v92.i32[3];
  v101 = v93;
  v93.i64[0] = v95.i32[2];
  v93.i64[1] = v95.i32[3];
  v102 = v93;
  v93.i64[0] = v97.i32[2];
  v93.i64[1] = v97.i32[3];
  v103 = v93;
  v93.i64[0] = v99.i32[2];
  v93.i64[1] = v99.i32[3];
  v104 = vbicq_s8(v267, v93);
  v105 = vbicq_s8(v265, v103);
  v106 = vbicq_s8(v263, v102);
  v107 = vbicq_s8(v261, v101);
  v108 = vbicq_s8(v266, v100);
  v109 = vbicq_s8(v264, v98);
  v110 = vbicq_s8(v262, v96);
  v111 = *&v205[*v68];
  v112 = *&v205[*MEMORY[0x277CD73D8]];
  v113 = BYTE1(*&v205[*MEMORY[0x277CD73D8]]);
  v114 = vbicq_s8(v260, v94);
  v115 = BYTE2(*&v205[*MEMORY[0x277CD73D8]]);
  v116 = BYTE3(*&v205[*MEMORY[0x277CD73D8]]);
  v117 = v194;
  if ((v111 & 0xFFF8) != 0)
  {
    v118 = v111 >> 3;
    v219[0] = v114;
    v219[1] = v107;
    v219[2] = v110;
    v219[3] = v106;
    v219[4] = v109;
    v219[5] = v105;
    v219[6] = v108;
    v219[7] = v104;
    v119 = *(v219 + (v112 & 0xF)) / v118;
    v218[0] = v114;
    v218[1] = v107;
    v218[2] = v110;
    v218[3] = v106;
    v218[4] = v109;
    v218[5] = v105;
    v218[6] = v108;
    v218[7] = v104;
    v120 = *(v218 + (v113 & 0xF));
    v217[0] = v114;
    v217[1] = v107;
    v217[2] = v110;
    v217[3] = v106;
    v217[4] = v109;
    v217[5] = v105;
    v217[6] = v108;
    v217[7] = v104;
    v121 = *(v217 + (v115 & 0xF)) / v118;
    v216[0] = v114;
    v216[1] = v107;
    v216[2] = v110;
    v216[3] = v106;
    v216[4] = v109;
    v216[5] = v105;
    v216[6] = v108;
    v216[7] = v104;
    v122 = v121;
    v123 = *(v216 + (v116 & 0xF)) / v118;
    v124 = v119;
    v125 = v120 / v118;
  }

  else
  {
    v215[0] = v114;
    v215[1] = v107;
    v215[2] = v110;
    v215[3] = v106;
    v215[4] = v109;
    v215[5] = v105;
    v215[6] = v108;
    v215[7] = v104;
    v214[0] = v114;
    v214[1] = v107;
    v214[2] = v110;
    v214[3] = v106;
    v214[4] = v109;
    v214[5] = v105;
    v214[6] = v108;
    v214[7] = v104;
    v213[0] = v114;
    v213[1] = v107;
    v213[2] = v110;
    v213[3] = v106;
    v213[4] = v109;
    v213[5] = v105;
    v213[6] = v108;
    v213[7] = v104;
    v212[0] = v114;
    v212[1] = v107;
    v212[2] = v110;
    v212[3] = v106;
    v212[4] = v109;
    v212[5] = v105;
    v212[6] = v108;
    v212[7] = v104;
    v122 = *(v213 + (v115 & 0xF));
    v123 = *(v212 + (v116 & 0xF));
    v124 = *(v215 + (v112 & 0xF));
    v125 = *(v214 + (v113 & 0xF));
  }

  v161 = v13;
  v162 = &v205[*v86];
  v163 = *v162;
  v164 = *(v162 + 1);
  v165 = *(v162 + 3);
  v210 = *(v162 + 2);
  v211 = v165;
  v209[0] = v163;
  v209[1] = v164;
  v166 = v124 * (*(v209 + (v112 & 0xF)) - 1);
  v208[2] = v210;
  v208[3] = v165;
  v208[0] = v163;
  v208[1] = v164;
  v167 = v166 + v125 * (*(v208 + (v113 & 0xF)) - 1);
  v207[2] = v210;
  v207[3] = v165;
  v207[0] = v163;
  v207[1] = v164;
  v168 = v167 + v122 * (*(v207 + (v115 & 0xF)) - 1);
  v206[2] = v210;
  v206[3] = v165;
  v206[0] = v163;
  v206[1] = v164;
  v87 |= (32 * (HIDWORD(v124) != 0)) | ((HIDWORD(v125) != 0) << 6) | ((HIDWORD(v122) != 0) << 7) | ((HIDWORD(v123) != 0) << 8) | (((v168 + v123 * (*(v206 + (v116 & 0xF)) - 1)) >> 32 != 0) << 9);
LABEL_174:
  v176.i64[0] = -1;
  v176.i64[1] = -1;
  v264 = v176;
  v260 = v176;
  v261 = v176;
  v262.i64[0] = v40;
  v262.i64[1] = v192;
  v263.i64[0] = v89;
  v263.i64[1] = v87;
  *v176.i8 = vcnt_s8(*(v195 + 48));
  v176.i16[0] = vaddlv_u8(*v176.i8);
  v264.i64[0] = (v176.i32[0] << 16) | 1u;
  v261.i64[0] = ((v117 + 3) >> 1) & 0x7FFFFFFE;
  v261.i64[1] = 0;
  v177 = v88;
  v190 = *(v197 + *MEMORY[0x277CD7360]);
  v191 = *(v197 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v179 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v180 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v180 <= 1)
  {
    v181 = 1;
  }

  else
  {
    v181 = v180;
  }

  if (v177)
  {
    v182 = v12;
    v183 = v199;
    v184 = 4;
    v201 = (v199 + v181 - 1) / v181;
    v185 = v200;
  }

  else
  {
    v185 = v200;
    v183 = v199;
    v182 = v12;
    if (v200 >> 15 <= 2)
    {
      if (v200 >> 14 <= 2)
      {
        if (v200 >> 14)
        {
          v181 = 64;
        }

        v184 = 1;
      }

      else
      {
        v184 = 1;
        v181 = 128;
      }
    }

    else
    {
      v184 = 1;
      v181 = 256;
    }

    v201 = v199;
  }

  v255 = v117;
  v256 = v185;
  v257 = v183;
  v258 = v198;
  v259 = v196;
  [v204 setComputePipelineState:PipelineStateForMPSKey];
  v186 = malloc_type_calloc(0x3CuLL, 4uLL, 0x100004052888210uLL);
  [v204 setBuffer:objc_msgSend(v182 offset:"buffer") atIndex:{*(*(v195 + 8) + 64) + MPSGetLinearOffsetBytes(v182, 0, 2, v186, 0), 0}];
  if ((v202 & 1) == 0)
  {
    [v204 setBuffer:objc_msgSend(v161 offset:"buffer") atIndex:{*(*(v195 + 32) + 64) + MPSGetLinearOffsetBytes(v161, 0, 2, v186 + 80, 0), 1}];
  }

  if ((v203 & 1) == 0)
  {
    [v204 setBuffer:objc_msgSend(v205 offset:"buffer") atIndex:{*(*(v195 + 32) + 144) + MPSGetLinearOffsetBytes(v205, 0, 2, v186 + 80 * (*(v195 + 48) & 1u) + 80, 0), (*(v195 + 48) & 1) + 1}];
  }

  if (v179 >= v181)
  {
    v187 = v181;
  }

  else
  {
    v187 = v179;
  }

  if (v187 >= 0x100)
  {
    v188 = 256;
  }

  else
  {
    v188 = v187;
  }

  objc_msgSend_setBytes_length_atIndex_(v204);
  free(v186);
  objc_msgSend_setBytes_length_atIndex_(v204);
  [v204 setThreadgroupMemoryLength:16 * v184 * v188 atIndex:0];
  v253 = v201;
  v254 = vdupq_n_s64(1uLL);
  v252[0] = v188;
  v252[1] = v184;
  v252[2] = 1;
  [v204 dispatchThreadgroups:&v253 threadsPerThreadgroup:v252];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeTopKCommon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, int a8)
{
  v12 = [*(a4 + 232) inputTensorAtIndex:0];
  v13 = [*(a4 + 232) outputTensorAtIndex:0];
  v14 = 0;
  if (a8)
  {
    v14 = [*(a4 + 232) inputTensorAtIndex:0];
  }

  DimensionSize = BaseTensor::GetDimensionSize(v12);
  v50 = BaseTensor::GetDimensionSize(v12);
  v16 = BaseTensor::GetDimensionSize(v13);
  v49 = BaseTensor::GetDimensionSize(v13);
  if (v16 < a6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = [*(a4 + 232) graph];
  v18 = **(v17 + 56);
  if (*(*(v17 + 56) + 8) == v18)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(*(*v18 + 8) + 8) == **(*v18 + 8))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  BaseTensor::GetAccessPattern();
  v20 = *(v12 + 2);
  if (v20 > 285212703)
  {
    if (v20 <= 536870915)
    {
      if (v20 > 301989895)
      {
        if (v20 == 301989896)
        {
          v21 = 512;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
        }

        if (v20 == 335544328)
        {
          v21 = 544;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
        }
      }

      else
      {
        if (v20 == 285212704)
        {
          v21 = 416;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
        }

        if (v20 == 285212736)
        {
          v21 = 448;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
        }
      }
    }

    else
    {
      if (v20 <= 536870927)
      {
        if (v20 == 536870916)
        {
          v21 = 0;
          if (!a8)
          {
            goto LABEL_100;
          }

          goto LABEL_66;
        }

        if (v20 != 536870920)
        {
          goto LABEL_99;
        }

        v21 = 32;
        if (a8)
        {
          goto LABEL_66;
        }

        goto LABEL_100;
      }

      switch(v20)
      {
        case 536870928:
          v21 = 64;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
        case 536870944:
          v21 = 96;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
        case 536870976:
          v21 = 128;
          if (a8)
          {
            goto LABEL_66;
          }

          goto LABEL_100;
      }
    }

LABEL_99:
    v21 = 576;
    if (!a8)
    {
      goto LABEL_100;
    }

    goto LABEL_66;
  }

  if (v20 <= 31)
  {
    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v21 = 192;
        if (a8)
        {
          goto LABEL_66;
        }

        goto LABEL_100;
      }

      if (v20 == 16)
      {
        v21 = 224;
        if (a8)
        {
          goto LABEL_66;
        }

        goto LABEL_100;
      }
    }

    else
    {
      if (v20 == -1879048176)
      {
        v21 = 384;
        if (a8)
        {
          goto LABEL_66;
        }

        goto LABEL_100;
      }

      if (v20 == 4)
      {
        v21 = 160;
        if (a8)
        {
          goto LABEL_66;
        }

        goto LABEL_100;
      }
    }

    goto LABEL_99;
  }

  if (v20 <= 268435463)
  {
    if (v20 != 32)
    {
      if (v20 == 64)
      {
        v21 = 288;
        if (a8)
        {
          goto LABEL_66;
        }

        goto LABEL_100;
      }

      goto LABEL_99;
    }

    v21 = 256;
    if (a8)
    {
      goto LABEL_66;
    }

LABEL_100:
    v24 = v19;
    v25 = *(v13 + 2);
    if (v25 > 285212703)
    {
      goto LABEL_101;
    }

    goto LABEL_134;
  }

  if (v20 == 268435464)
  {
    v21 = 480;
    if (a8)
    {
      goto LABEL_66;
    }

    goto LABEL_100;
  }

  if (v20 == 268435472)
  {
    v21 = 320;
    if (a8)
    {
      goto LABEL_66;
    }

    goto LABEL_100;
  }

  if (v20 != 268435488)
  {
    goto LABEL_99;
  }

  v21 = 352;
  if (!a8)
  {
    goto LABEL_100;
  }

LABEL_66:
  v22 = *(v14 + 8);
  if (v22 > 285212703)
  {
    if (v22 <= 536870915)
    {
      if (v22 > 301989895)
      {
        if (v22 == 301989896)
        {
          v23 = 0x4000;
          goto LABEL_133;
        }

        if (v22 == 335544328)
        {
          v23 = 17408;
          goto LABEL_133;
        }
      }

      else
      {
        if (v22 == 285212704)
        {
          v23 = 13312;
          goto LABEL_133;
        }

        if (v22 == 285212736)
        {
          v23 = 14336;
          goto LABEL_133;
        }
      }
    }

    else if (v22 <= 536870927)
    {
      if (v22 == 536870916)
      {
        v23 = 0;
        goto LABEL_133;
      }

      if (v22 == 536870920)
      {
        v23 = 1024;
        goto LABEL_133;
      }
    }

    else
    {
      switch(v22)
      {
        case 536870928:
          v23 = 2048;
          goto LABEL_133;
        case 536870944:
          v23 = 3072;
          goto LABEL_133;
        case 536870976:
          v23 = 4096;
          goto LABEL_133;
      }
    }
  }

  else if (v22 <= 31)
  {
    if (v22 > 7)
    {
      if (v22 == 8)
      {
        v23 = 6144;
        goto LABEL_133;
      }

      if (v22 == 16)
      {
        v23 = 7168;
        goto LABEL_133;
      }
    }

    else
    {
      if (v22 == -1879048176)
      {
        v23 = 12288;
        goto LABEL_133;
      }

      if (v22 == 4)
      {
        v23 = 5120;
        goto LABEL_133;
      }
    }
  }

  else if (v22 <= 268435463)
  {
    if (v22 == 32)
    {
      v23 = 0x2000;
      goto LABEL_133;
    }

    if (v22 == 64)
    {
      v23 = 9216;
      goto LABEL_133;
    }
  }

  else
  {
    switch(v22)
    {
      case 268435464:
        v23 = 15360;
        goto LABEL_133;
      case 268435472:
        v23 = 10240;
        goto LABEL_133;
      case 268435488:
        v23 = 11264;
        goto LABEL_133;
    }
  }

  v23 = 18432;
LABEL_133:
  v21 |= v23;
  v24 = v19;
  v25 = *(v13 + 2);
  if (v25 > 285212703)
  {
LABEL_101:
    if (v25 <= 536870915)
    {
      if (v25 > 301989895)
      {
        if (v25 == 301989896)
        {
          v26 = 16;
          goto LABEL_156;
        }

        if (v25 == 335544328)
        {
          v26 = 17;
          goto LABEL_156;
        }
      }

      else
      {
        if (v25 == 285212704)
        {
          v26 = 13;
          goto LABEL_156;
        }

        if (v25 == 285212736)
        {
          v26 = 14;
          goto LABEL_156;
        }
      }
    }

    else if (v25 <= 536870927)
    {
      if (v25 == 536870916)
      {
        v26 = 0;
        goto LABEL_156;
      }

      if (v25 == 536870920)
      {
        v26 = 1;
        goto LABEL_156;
      }
    }

    else
    {
      switch(v25)
      {
        case 536870928:
          v26 = 2;
          goto LABEL_156;
        case 536870944:
          v26 = 3;
          goto LABEL_156;
        case 536870976:
          v26 = 4;
          goto LABEL_156;
      }
    }

    goto LABEL_155;
  }

LABEL_134:
  if (v25 <= 31)
  {
    if (v25 > 7)
    {
      if (v25 == 8)
      {
        v26 = 6;
        goto LABEL_156;
      }

      if (v25 == 16)
      {
        v26 = 7;
        goto LABEL_156;
      }
    }

    else
    {
      if (v25 == -1879048176)
      {
        v26 = 12;
        goto LABEL_156;
      }

      if (v25 == 4)
      {
        v26 = 5;
        goto LABEL_156;
      }
    }
  }

  else if (v25 <= 268435463)
  {
    if (v25 == 32)
    {
      v26 = 8;
      goto LABEL_156;
    }

    if (v25 == 64)
    {
      v26 = 9;
      goto LABEL_156;
    }
  }

  else
  {
    switch(v25)
    {
      case 268435464:
        v26 = 15;
        goto LABEL_156;
      case 268435472:
        v26 = 10;
        goto LABEL_156;
      case 268435488:
        v26 = 11;
        goto LABEL_156;
    }
  }

LABEL_155:
  v26 = 18;
LABEL_156:
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v63 = v27;
  v64 = v27;
  v60 = -1;
  v62 = v27;
  v59 = v27;
  v61 = v26 | v21;
  v28 = [*(a4 + 16) count];
  v29 = 0x10000;
  if (a8)
  {
    v29 = 65792;
  }

  v30 = v24;
  *&v64 = v29 & 0xFFFFFFFFFFFFFF00 | v28;
  v60 = ((a6 + 3) >> 1) & 0x7FFFFFFE | a7;
  v45 = *(a1 + *MEMORY[0x277CD7360]);
  v46 = *(a1 + *MEMORY[0x277CD7368]);
  v44 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v32 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v33 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = 256;
  v36 = 128;
  v37 = 64;
  if (!(DimensionSize >> 14))
  {
    v37 = v34;
  }

  if (DimensionSize >> 14 <= 2)
  {
    v36 = v37;
  }

  if (DimensionSize >> 15 <= 2)
  {
    v35 = v36;
  }

  v38 = (v50 + v34 - 1) / v34;
  v39 = v30 == 0;
  if (v30)
  {
    v40 = 4;
  }

  else
  {
    v34 = v35;
    v40 = 1;
  }

  if (v39)
  {
    v41 = v50;
  }

  else
  {
    v41 = v38;
  }

  if (v32 < v34)
  {
    v34 = v32;
  }

  v54 = a6;
  v55 = DimensionSize;
  if (v34 >= 0x100)
  {
    v42 = 256;
  }

  else
  {
    v42 = v34;
  }

  v56 = v50;
  v57 = v16;
  v58 = v49;
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 2, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setThreadgroupMemoryLength:16 * v40 * v42 atIndex:0];
  v53 = vdupq_n_s64(1uLL);
  v51[0] = v42;
  v51[1] = v40;
  v51[2] = 1;
  v52 = v41;
  [a2 dispatchThreadgroups:&v52 threadsPerThreadgroup:v51];
  return MPSLibrary::ReleaseComputeState();
}

uint64_t EncodeArrayMathUnary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = v8;
  v10 = *(a4 + 208);
  v11 = MEMORY[0x277CD7410];
  v12 = *MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  if (*&v8[v13] == 1)
  {
    v52 = 0;
    if (*&v8[v12 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v51 = 0;
    if (*&v10[v13] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v50 = 0;
    if (*&v10[v12 + 4] != 1)
    {
      goto LABEL_25;
    }

LABEL_23:
    v4 = 0;
    goto LABEL_29;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v52 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v12 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v52 = [v8 dataType] >> 3;
    v12 = *v11;
    v13 = *v11;
  }

  if (*&v9[v13 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v9[*v14 + 1])
  {
    v51 = [v9 dataType] >> 3;
    v12 = *v11;
    if (*&v10[*v11] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v9[*v14 + 1] != 1)
  {
    if (*&v10[v13] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v51 = *&v9[*MEMORY[0x277CD7400]];
  if (*&v10[v13] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v10[*v14] == 1)
  {
    v50 = *&v10[*MEMORY[0x277CD7400]];
    if (*&v10[v12 + 4] != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!*&v10[*v14])
  {
    v50 = [v10 dataType] >> 3;
    v12 = *v11;
  }

  if (*&v10[v12 + 4] == 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v10[*v14 + 1])
  {
    if (v10[*v14 + 1] == 1)
    {
      v4 = *&v10[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v4 = [v10 dataType] >> 3;
  }

LABEL_29:
  v15 = *(*(a4 + 8) + 64);
  v16 = *(a4 + 192);
  v17 = MPSGetLinearOffsetBytes(v9, 0, 2, 0, 0);
  v18 = MPSGetLinearOffsetBytes(v10, 0, 2, 0, 0);
  v19 = *MEMORY[0x277CD73C8];
  v20 = *&v9[v19];
  if (v20 > 285212703)
  {
    if (v20 <= 536870915)
    {
      if (v20 > 301989895)
      {
        if (v20 == 301989896)
        {
          v21 = 512;
          goto LABEL_72;
        }

        if (v20 == 335544328)
        {
          v21 = 544;
          goto LABEL_72;
        }
      }

      else
      {
        if (v20 == 285212704)
        {
          v21 = 416;
          goto LABEL_72;
        }

        if (v20 == 285212736)
        {
          v21 = 448;
          goto LABEL_72;
        }
      }
    }

    else if (v20 <= 536870927)
    {
      v21 = 0;
      if (v20 == 536870916)
      {
        goto LABEL_72;
      }

      if (v20 == 536870920)
      {
        v21 = 32;
        goto LABEL_72;
      }
    }

    else
    {
      switch(v20)
      {
        case 536870928:
          v21 = 64;
          goto LABEL_72;
        case 536870944:
          v21 = 96;
          goto LABEL_72;
        case 536870976:
          v21 = 128;
          goto LABEL_72;
      }
    }
  }

  else if (v20 <= 31)
  {
    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v21 = 192;
        goto LABEL_72;
      }

      if (v20 == 16)
      {
        v21 = 224;
        goto LABEL_72;
      }
    }

    else
    {
      if (v20 == -1879048176)
      {
        v21 = 384;
        goto LABEL_72;
      }

      if (v20 == 4)
      {
        v21 = 160;
        goto LABEL_72;
      }
    }
  }

  else if (v20 <= 268435463)
  {
    if (v20 == 32)
    {
      v21 = 256;
      goto LABEL_72;
    }

    if (v20 == 64)
    {
      v21 = 288;
      goto LABEL_72;
    }
  }

  else
  {
    switch(v20)
    {
      case 268435464:
        v21 = 480;
        goto LABEL_72;
      case 268435472:
        v21 = 320;
        goto LABEL_72;
      case 268435488:
        v21 = 352;
        goto LABEL_72;
    }
  }

  v21 = 576;
LABEL_72:
  v22 = *&v10[v19];
  v54 = a2;
  v55 = v15;
  v53 = v18;
  if (v22 > 285212703)
  {
    if (v22 <= 536870915)
    {
      if (v22 > 301989895)
      {
        if (v22 == 301989896)
        {
          v23 = v16;
          v24 = 16;
          goto LABEL_116;
        }

        if (v22 == 335544328)
        {
          v23 = v16;
          v24 = 17;
          goto LABEL_116;
        }
      }

      else
      {
        if (v22 == 285212704)
        {
          v23 = v16;
          v24 = 13;
          goto LABEL_116;
        }

        if (v22 == 285212736)
        {
          v23 = v16;
          v24 = 14;
          goto LABEL_116;
        }
      }
    }

    else if (v22 <= 536870927)
    {
      if (v22 == 536870916)
      {
        v23 = v16;
        v24 = 0;
        goto LABEL_116;
      }

      if (v22 == 536870920)
      {
        v23 = v16;
        v24 = 1;
        goto LABEL_116;
      }
    }

    else
    {
      switch(v22)
      {
        case 536870928:
          v23 = v16;
          v24 = 2;
          goto LABEL_116;
        case 536870944:
          v23 = v16;
          v24 = 3;
          goto LABEL_116;
        case 536870976:
          v23 = v16;
          v24 = 4;
          goto LABEL_116;
      }
    }
  }

  else if (v22 <= 31)
  {
    if (v22 > 7)
    {
      if (v22 == 8)
      {
        v23 = v16;
        v24 = 6;
        goto LABEL_116;
      }

      if (v22 == 16)
      {
        v23 = v16;
        v24 = 7;
        goto LABEL_116;
      }
    }

    else
    {
      if (v22 == -1879048176)
      {
        v23 = v16;
        v24 = 12;
        goto LABEL_116;
      }

      if (v22 == 4)
      {
        v23 = v16;
        v24 = 5;
        goto LABEL_116;
      }
    }
  }

  else if (v22 <= 268435463)
  {
    if (v22 == 32)
    {
      v23 = v16;
      v24 = 8;
      goto LABEL_116;
    }

    if (v22 == 64)
    {
      v23 = v16;
      v24 = 9;
      goto LABEL_116;
    }
  }

  else
  {
    switch(v22)
    {
      case 268435464:
        v23 = v16;
        v24 = 15;
        goto LABEL_116;
      case 268435472:
        v23 = v16;
        v24 = 10;
        goto LABEL_116;
      case 268435488:
        v23 = v16;
        v24 = 11;
        goto LABEL_116;
    }
  }

  v23 = v16;
  v24 = 18;
LABEL_116:
  v25 = v21 | v24;
  v26 = *(a1 + 664);
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v71 = v27;
  v72 = v27;
  v68 = -1;
  v70 = v27;
  v67 = v27;
  v69 = v25 | (v26 << 16);
  v28 = &v10[*v11];
  v29 = *v28;
  v30 = *(v28 + 1);
  v58 = *v28;
  v59 = v30;
  v60 = v51;
  v61 = v4;
  v62 = 0;
  v63 = v52;
  v64 = v50;
  v65 = 0;
  v66 = v26;
  v31 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v33 = [ComputeState threadExecutionWidth];
  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = [ComputeState maxTotalThreadsPerThreadgroup];
  v36 = 256;
  if (v35 < 0x100)
  {
    v36 = v35;
  }

  if (v36 > 2 * v34)
  {
    v31 = v36 / v34;
  }

  v37 = v30 - 1;
  if (v29 == 1 && v30 >= 2)
  {
    v38 = v31 * v34;
    v39 = v31 * v34 + v37;
    v40 = 1;
    v41 = 1;
    v42 = v39 / v38;
  }

  else
  {
    v43 = (v31 + v37) / v31;
    v44 = v31 * v34;
    v45 = (v31 * v34 + v29 - 1) / (v31 * v34);
    v46 = 1;
    if (v30 == 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v43;
    }

    if (v30 != 1)
    {
      v45 = (v34 + v29 - 1) / v34;
      v46 = v31;
      v44 = v34;
    }

    v48 = v29 >= 2;
    if (v29 >= 2)
    {
      v42 = v47;
    }

    else
    {
      v42 = v43;
    }

    if (v29 >= 2)
    {
      v40 = v45;
    }

    else
    {
      v40 = (v34 + v29 - 1) / v34;
    }

    if (v29 >= 2)
    {
      v38 = v46;
    }

    else
    {
      v38 = v31;
    }

    if (v48)
    {
      v41 = v44;
    }

    else
    {
      v41 = v34;
    }
  }

  [v54 setComputePipelineState:ComputeState];
  [v54 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{v17 + v55, 0}];
  [v54 setBuffer:objc_msgSend(v10 offset:"buffer") atIndex:{v53 + v23, 1}];
  objc_msgSend_setBytes_length_atIndex_(v54);
  v57[0] = v40;
  v57[1] = v42;
  v57[2] = 1;
  v56[0] = v41;
  v56[1] = v38;
  v56[2] = 1;
  [v54 dispatchThreadgroups:v57 threadsPerThreadgroup:v56];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayMathUnaryGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v71 = *(a4 + 112);
  v72 = *(a4 + 208);
  v12 = MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v70 = v8;
  v15 = MEMORY[0x277CD73D8];
  if (*&v8[v14] == 1)
  {
    v11 = 0;
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = 0;
    if (*&v72[v14] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v9 = 0;
    v21 = v13;
    if (*&v72[v13 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v11 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v16 = MEMORY[0x277CD7410];
    v17 = [v8 dataType];
    v12 = v16;
    v11 = v17 >> 3;
    v13 = *v16;
    v14 = *v16;
  }

  if (*&v70[v14 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v70[*v15 + 1])
  {
    v18 = v12;
    v19 = v11;
    v20 = [v70 dataType];
    v11 = v19;
    v12 = v18;
    v5 = v20 >> 3;
    v13 = *v18;
    if (*&v72[*v18] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v70[*v15 + 1] != 1)
  {
    if (*&v72[v14] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v5 = *&v70[*MEMORY[0x277CD7400]];
  if (*&v72[v14] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v72[*v15] == 1)
  {
    v9 = *&v72[*MEMORY[0x277CD7400]];
    v21 = v13;
    if (*&v72[v13 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v72[*v15])
    {
      v22 = v12;
      v23 = v11;
      v24 = [v72 dataType];
      v11 = v23;
      v12 = v22;
      v9 = v24 >> 3;
      v13 = *v22;
    }

    v21 = v13;
    if (*&v72[v13 + 4] == 1)
    {
LABEL_23:
      v10 = 0;
      if (*&v71[v21] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v6 = 0;
      if (*&v71[v13 + 4] != 1)
      {
        goto LABEL_40;
      }

LABEL_38:
      LODWORD(v34) = 0;
      goto LABEL_44;
    }
  }

LABEL_26:
  if (!v72[*v15 + 1])
  {
    v25 = v12;
    v26 = v11;
    v27 = v9;
    v28 = [v72 dataType];
    v9 = v27;
    v11 = v26;
    v12 = v25;
    v10 = v28 >> 3;
    v13 = *v25;
    if (*&v71[*v25] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v72[*v15 + 1] != 1)
  {
    if (*&v71[v21] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v10 = *&v72[*MEMORY[0x277CD7400]];
  if (*&v71[v21] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v71[*v15] == 1)
  {
    v6 = *&v71[*MEMORY[0x277CD7400]];
    if (*&v71[v13 + 4] != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!*&v71[*v15])
  {
    v29 = v12;
    v30 = v11;
    v31 = v9;
    v32 = v10;
    v33 = [v71 dataType];
    v10 = v32;
    v9 = v31;
    v11 = v30;
    v12 = v29;
    v6 = v33 >> 3;
    v13 = *v29;
  }

  if (*&v71[v13 + 4] == 1)
  {
    goto LABEL_38;
  }

LABEL_40:
  v34 = &v71[*v15];
  if (v34[1])
  {
    if (v34[1] == 1)
    {
      LODWORD(v34) = *&v71[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v35 = v5;
    v36 = v12;
    v37 = v11;
    v38 = v9;
    v39 = v10;
    v40 = [v71 dataType];
    v10 = v39;
    v9 = v38;
    v11 = v37;
    v12 = v36;
    LODWORD(v34) = v40 >> 3;
    v5 = v35;
  }

LABEL_44:
  v41 = *(*(a4 + 8) + 64);
  v42 = *(a4 + 96);
  v43 = *MEMORY[0x277CD73C8];
  v44 = *&v70[v43];
  if (v44 > 285212703)
  {
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 512;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v44 != 335544328)
          {
            goto LABEL_125;
          }

          v45 = 544;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }
        }
      }

      else if (v44 == 285212704)
      {
        v45 = 416;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v44 != 285212736)
        {
          goto LABEL_125;
        }

        v45 = 448;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v45 = 0;
        v46 = *&v71[v43];
        if (v46 > 285212703)
        {
          goto LABEL_126;
        }

        goto LABEL_104;
      }

      if (v44 != 536870920)
      {
        goto LABEL_125;
      }

      v45 = 32;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 64;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        case 536870944:
          v45 = 96;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        case 536870976:
          v45 = 128;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        default:
          goto LABEL_125;
      }
    }
  }

  else if (v44 <= 31)
  {
    if (v44 > 7)
    {
      if (v44 == 8)
      {
        v45 = 192;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v44 != 16)
        {
          goto LABEL_125;
        }

        v45 = 224;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }
    }

    else if (v44 == -1879048176)
    {
      v45 = 384;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v44 != 4)
      {
        goto LABEL_125;
      }

      v45 = 160;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }
  }

  else if (v44 <= 268435463)
  {
    if (v44 == 32)
    {
      v45 = 256;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v44 != 64)
      {
        goto LABEL_125;
      }

      v45 = 288;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }
  }

  else
  {
    switch(v44)
    {
      case 268435464:
        v45 = 480;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }

        break;
      case 268435472:
        v45 = 320;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }

        break;
      case 268435488:
        v45 = 352;
        v46 = *&v71[v43];
        if (v46 > 285212703)
        {
          break;
        }

LABEL_104:
        if (v46 <= 31)
        {
          if (v46 > 7)
          {
            if (v46 == 8)
            {
              v47 = 6144;
              goto LABEL_148;
            }

            if (v46 == 16)
            {
              v47 = 7168;
              goto LABEL_148;
            }
          }

          else
          {
            if (v46 == -1879048176)
            {
              v47 = 12288;
              goto LABEL_148;
            }

            if (v46 == 4)
            {
              v47 = 5120;
              goto LABEL_148;
            }
          }
        }

        else if (v46 <= 268435463)
        {
          if (v46 == 32)
          {
            v47 = 0x2000;
            goto LABEL_148;
          }

          if (v46 == 64)
          {
            v47 = 9216;
            goto LABEL_148;
          }
        }

        else
        {
          switch(v46)
          {
            case 268435464:
              v47 = 15360;
              goto LABEL_148;
            case 268435472:
              v47 = 10240;
              goto LABEL_148;
            case 268435488:
              v47 = 11264;
              goto LABEL_148;
          }
        }

        goto LABEL_147;
      default:
LABEL_125:
        v45 = 576;
        v46 = *&v71[v43];
        if (v46 > 285212703)
        {
          break;
        }

        goto LABEL_104;
    }
  }

LABEL_126:
  if (v46 <= 536870915)
  {
    if (v46 > 301989895)
    {
      if (v46 == 301989896)
      {
        v47 = 0x4000;
        goto LABEL_148;
      }

      if (v46 == 335544328)
      {
        v47 = 17408;
        goto LABEL_148;
      }
    }

    else
    {
      if (v46 == 285212704)
      {
        v47 = 13312;
        goto LABEL_148;
      }

      if (v46 == 285212736)
      {
        v47 = 14336;
        goto LABEL_148;
      }
    }
  }

  else if (v46 <= 536870927)
  {
    if (v46 == 536870916)
    {
      v47 = 0;
      goto LABEL_148;
    }

    if (v46 == 536870920)
    {
      v47 = 1024;
      goto LABEL_148;
    }
  }

  else
  {
    switch(v46)
    {
      case 536870928:
        v47 = 2048;
        goto LABEL_148;
      case 536870944:
        v47 = 3072;
        goto LABEL_148;
      case 536870976:
        v47 = 4096;
        goto LABEL_148;
    }
  }

LABEL_147:
  v47 = 18432;
LABEL_148:
  v48 = *&v72[v43];
  v66 = *(a4 + 192);
  if (v48 > 285212703)
  {
    if (v48 <= 536870915)
    {
      if (v48 > 301989895)
      {
        if (v48 == 301989896)
        {
          v50 = 16;
          v49 = a5;
          goto LABEL_192;
        }

        v49 = a5;
        if (v48 == 335544328)
        {
          v50 = 17;
          goto LABEL_192;
        }
      }

      else
      {
        if (v48 == 285212704)
        {
          v50 = 13;
          v49 = a5;
          goto LABEL_192;
        }

        v49 = a5;
        if (v48 == 285212736)
        {
          v50 = 14;
          goto LABEL_192;
        }
      }
    }

    else if (v48 <= 536870927)
    {
      if (v48 == 536870916)
      {
        v50 = 0;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 536870920)
      {
        v50 = 1;
        goto LABEL_192;
      }
    }

    else
    {
      if (v48 == 536870928)
      {
        v50 = 2;
        v49 = a5;
        goto LABEL_192;
      }

      if (v48 == 536870944)
      {
        v50 = 3;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 536870976)
      {
        v50 = 4;
        goto LABEL_192;
      }
    }
  }

  else if (v48 <= 31)
  {
    if (v48 > 7)
    {
      v49 = a5;
      if (v48 == 8)
      {
        v50 = 6;
        goto LABEL_192;
      }

      if (v48 == 16)
      {
        v50 = 7;
        goto LABEL_192;
      }
    }

    else
    {
      if (v48 == -1879048176)
      {
        v50 = 12;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 4)
      {
        v50 = 5;
        goto LABEL_192;
      }
    }
  }

  else if (v48 <= 268435463)
  {
    v49 = a5;
    if (v48 == 32)
    {
      v50 = 8;
      goto LABEL_192;
    }

    if (v48 == 64)
    {
      v50 = 9;
      goto LABEL_192;
    }
  }

  else
  {
    if (v48 == 268435464)
    {
      v50 = 15;
      v49 = a5;
      goto LABEL_192;
    }

    if (v48 == 268435472)
    {
      v50 = 10;
      v49 = a5;
      goto LABEL_192;
    }

    v49 = a5;
    if (v48 == 268435488)
    {
      v50 = 11;
      goto LABEL_192;
    }
  }

  v50 = 18;
LABEL_192:
  v51 = 0x2000000;
  if (!v49)
  {
    v51 = 0;
  }

  v52 = *(a1 + 144);
  *&v53 = -1;
  *(&v53 + 1) = -1;
  v88 = v53;
  v89 = v53;
  v85 = -1;
  v87 = v53;
  v84 = v53;
  v86 = v45 | v47 | v50 | v51 | (v52 << 16);
  v54 = &v72[*v12];
  v55 = *v54;
  v56 = *(v54 + 1);
  v75 = *v54;
  v76 = v56;
  v77 = v5;
  v78 = v10;
  v79 = v34;
  v80 = v11;
  v81 = v9;
  v82 = v6;
  v83 = v52;
  v57 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v59 = [ComputeState threadExecutionWidth];
  if (v59 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  v61 = [ComputeState maxTotalThreadsPerThreadgroup];
  v62 = 256;
  if (v61 < 0x100)
  {
    v62 = v61;
  }

  v63 = v62 > 2 * v60;
  v64 = v62 / v60;
  if (v63)
  {
    v57 = v64;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v70 offset:"buffer") atIndex:{v41, 0}];
  [a2 setBuffer:objc_msgSend(v71 offset:"buffer") atIndex:{v42, 1}];
  [a2 setBuffer:objc_msgSend(v72 offset:"buffer") atIndex:{v66, 2}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v74[0] = (v55 + v60 - 1) / v60;
  v74[1] = (v56 + v57 - 1) / v57;
  v74[2] = 1;
  v73[0] = v60;
  v73[1] = v57;
  v73[2] = 1;
  [a2 dispatchThreadgroups:v74 threadsPerThreadgroup:v73];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodePad(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 688);
  v8 = *(a1 + 696);
  v76 = *(a1 + 704);
  v62 = *(a1 + 712);
  v60 = *(a1 + 720);
  v9 = *(a1 + 736);
  v59 = *(a1 + 728);
  v55 = *(a1 + 744);
  v10 = *(a1 + 664);
  v11 = *(a1 + 672);
  v12 = *(a1 + 680);
  v13 = [*(a4 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    goto LABEL_141;
  }

  v54 = v9;
  v16 = *(*v14 + 8);
  v15 = *v16;
  if (*(v16 + 8) == *v16)
  {
    goto LABEL_142;
  }

  v17 = *v15;
  v18 = [*(a4 + 232) graph];
  v19 = **(v18 + 56);
  if (*(*(v18 + 56) + 8) == v19)
  {
LABEL_141:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v61 = v11;
  v21 = *(*v19 + 24);
  v20 = *v21;
  if (*(v21 + 8) == *v21)
  {
LABEL_142:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = *v20;
  v23 = *(v17 + 2);
  if (v23 > 285212703)
  {
    if (v23 <= 536870915)
    {
      if (v23 > 301989895)
      {
        if (v23 == 301989896)
        {
          v24 = 512;
          v25 = *(v22 + 8);
          if (v25 <= 285212703)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v23 != 335544328)
          {
            goto LABEL_86;
          }

          v24 = 544;
          v25 = *(v22 + 8);
          if (v25 <= 285212703)
          {
            goto LABEL_65;
          }
        }
      }

      else if (v23 == 285212704)
      {
        v24 = 416;
        v25 = *(v22 + 8);
        if (v25 <= 285212703)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v23 != 285212736)
        {
          goto LABEL_86;
        }

        v24 = 448;
        v25 = *(v22 + 8);
        if (v25 <= 285212703)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v23 <= 536870927)
    {
      if (v23 == 536870916)
      {
        v24 = 0;
        v25 = *(v22 + 8);
        if (v25 > 285212703)
        {
          goto LABEL_87;
        }

        goto LABEL_65;
      }

      if (v23 != 536870920)
      {
        goto LABEL_86;
      }

      v24 = 32;
      v25 = *(v22 + 8);
      if (v25 <= 285212703)
      {
        goto LABEL_65;
      }
    }

    else
    {
      switch(v23)
      {
        case 536870928:
          v24 = 64;
          v25 = *(v22 + 8);
          if (v25 <= 285212703)
          {
            goto LABEL_65;
          }

          break;
        case 536870944:
          v24 = 96;
          v25 = *(v22 + 8);
          if (v25 <= 285212703)
          {
            goto LABEL_65;
          }

          break;
        case 536870976:
          v24 = 128;
          v25 = *(v22 + 8);
          if (v25 <= 285212703)
          {
            goto LABEL_65;
          }

          break;
        default:
          goto LABEL_86;
      }
    }
  }

  else if (v23 <= 31)
  {
    if (v23 > 7)
    {
      if (v23 == 8)
      {
        v24 = 192;
        v25 = *(v22 + 8);
        if (v25 <= 285212703)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v23 != 16)
        {
          goto LABEL_86;
        }

        v24 = 224;
        v25 = *(v22 + 8);
        if (v25 <= 285212703)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v23 == -1879048176)
    {
      v24 = 384;
      v25 = *(v22 + 8);
      if (v25 <= 285212703)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v23 != 4)
      {
        goto LABEL_86;
      }

      v24 = 160;
      v25 = *(v22 + 8);
      if (v25 <= 285212703)
      {
        goto LABEL_65;
      }
    }
  }

  else if (v23 <= 268435463)
  {
    if (v23 == 32)
    {
      v24 = 256;
      v25 = *(v22 + 8);
      if (v25 <= 285212703)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v23 != 64)
      {
        goto LABEL_86;
      }

      v24 = 288;
      v25 = *(v22 + 8);
      if (v25 <= 285212703)
      {
        goto LABEL_65;
      }
    }
  }

  else
  {
    switch(v23)
    {
      case 268435464:
        v24 = 480;
        v25 = *(v22 + 8);
        if (v25 <= 285212703)
        {
          goto LABEL_65;
        }

        break;
      case 268435472:
        v24 = 320;
        v25 = *(v22 + 8);
        if (v25 <= 285212703)
        {
          goto LABEL_65;
        }

        break;
      case 268435488:
        v24 = 352;
        v25 = *(v22 + 8);
        if (v25 > 285212703)
        {
          break;
        }

LABEL_65:
        if (v25 <= 31)
        {
          if (v25 > 7)
          {
            if (v25 == 8)
            {
              v26 = 6;
              goto LABEL_109;
            }

            if (v25 == 16)
            {
              v26 = 7;
              goto LABEL_109;
            }
          }

          else
          {
            if (v25 == -1879048176)
            {
              v26 = 12;
              goto LABEL_109;
            }

            if (v25 == 4)
            {
              v26 = 5;
              goto LABEL_109;
            }
          }
        }

        else if (v25 <= 268435463)
        {
          if (v25 == 32)
          {
            v26 = 8;
            goto LABEL_109;
          }

          if (v25 == 64)
          {
            v26 = 9;
            goto LABEL_109;
          }
        }

        else
        {
          switch(v25)
          {
            case 268435464:
              v26 = 15;
              goto LABEL_109;
            case 268435472:
              v26 = 10;
              goto LABEL_109;
            case 268435488:
              v26 = 11;
              goto LABEL_109;
          }
        }

        goto LABEL_108;
      default:
LABEL_86:
        v24 = 576;
        v25 = *(v22 + 8);
        if (v25 > 285212703)
        {
          break;
        }

        goto LABEL_65;
    }
  }

LABEL_87:
  if (v25 <= 536870915)
  {
    if (v25 > 301989895)
    {
      if (v25 == 301989896)
      {
        v26 = 16;
        goto LABEL_109;
      }

      if (v25 == 335544328)
      {
        v26 = 17;
        goto LABEL_109;
      }
    }

    else
    {
      if (v25 == 285212704)
      {
        v26 = 13;
        goto LABEL_109;
      }

      if (v25 == 285212736)
      {
        v26 = 14;
        goto LABEL_109;
      }
    }
  }

  else if (v25 <= 536870927)
  {
    if (v25 == 536870916)
    {
      v26 = 0;
      goto LABEL_109;
    }

    if (v25 == 536870920)
    {
      v26 = 1;
      goto LABEL_109;
    }
  }

  else
  {
    switch(v25)
    {
      case 536870928:
        v26 = 2;
        goto LABEL_109;
      case 536870944:
        v26 = 3;
        goto LABEL_109;
      case 536870976:
        v26 = 4;
        goto LABEL_109;
    }
  }

LABEL_108:
  v26 = 18;
LABEL_109:
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v92 = v27;
  v93 = v27;
  v89 = -1;
  v91 = v27;
  v88 = v27;
  v90 = v26 | v24;
  *&v93 = [*(a4 + 16) count] | 0x10000;
  v52 = *(a1 + *MEMORY[0x277CD7360]);
  v53 = *(a1 + *MEMORY[0x277CD7368]);
  v51 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!*v17)
  {
    LODWORD(v30) = 1;
    v31 = 0uLL;
    v32 = 0uLL;
    v33.i32[0] = 1;
    goto LABEL_115;
  }

  DimensionSize = BaseTensor::GetDimensionSize(v17);
  v30 = DimensionSize;
  v31 = v7;
  v32 = v8;
  v33 = (v8 + v7 + DimensionSize);
  if (*v17 <= 1uLL)
  {
LABEL_115:
    DWORD1(v30) = 1;
    v33.i32[1] = 1;
    goto LABEL_116;
  }

  v71 = DimensionSize;
  v56 = (v8 + v7 + DimensionSize);
  v34 = BaseTensor::GetDimensionSize(v17);
  v33 = v56;
  v32 = v8;
  v31 = v7;
  v30 = v71;
  DWORD1(v30) = v34;
  DWORD1(v31) = v76;
  DWORD1(v32) = v62;
  v33.i32[1] = v62 + v76 + v34;
  if (*v17 <= 2uLL)
  {
LABEL_116:
    DWORD2(v30) = 1;
    v33.i32[2] = 1;
    goto LABEL_117;
  }

  v67 = v31;
  v72 = v30;
  v63 = v32;
  v57 = v33;
  v35 = BaseTensor::GetDimensionSize(v17);
  v33 = v57;
  v32 = v63;
  v31 = v67;
  v30 = v72;
  DWORD2(v30) = v35;
  DWORD2(v31) = v60;
  DWORD2(v32) = v59;
  v33.i32[2] = v59 + v60 + v35;
  if (*v17 > 3uLL)
  {
    v68 = v31;
    v73 = v30;
    v64 = v32;
    v58 = v33;
    v36 = BaseTensor::GetDimensionSize(v17);
    v33 = v58;
    v32 = v64;
    v31 = v68;
    v30 = v73;
    HIDWORD(v30) = v36;
    HIDWORD(v31) = v54;
    HIDWORD(v32) = v55;
    v37 = v55 + v54 + v36;
    goto LABEL_118;
  }

LABEL_117:
  v37 = 1;
  HIDWORD(v30) = 1;
LABEL_118:
  v33.i32[3] = v37;
  v38 = v33.i32[0];
  v39 = v33.i32[2];
  v40 = vextq_s8(v33, v33, 4uLL).u64[0];
  v33.i32[1] = vextq_s8(v33, v33, 8uLL).i32[1];
  v41 = vmul_s32(v40, *v33.i8);
  v42 = 0.0;
  v77 = v41;
  if (v10 <= 1)
  {
    if (!v10)
    {
      v44 = 0;
      v43 = 0;
      goto LABEL_132;
    }

    if (v10 == 1)
    {
      v44 = 1;
      v43 = 0;
      goto LABEL_132;
    }
  }

  else
  {
    switch(v10)
    {
      case 2:
        v44 = 3;
        v43 = 0;
        goto LABEL_132;
      case 3:
        v44 = 4;
        v43 = 0;
        goto LABEL_132;
      case 4:
        v66 = v32;
        v70 = v31;
        v75 = v30;
        [v61 floatValue];
        v30 = v75;
        v41 = v77;
        v32 = v66;
        v31 = v70;
        v42 = v12;
        v44 = 2;
        goto LABEL_132;
    }
  }

  v65 = v32;
  v69 = v31;
  v74 = v30;
  if (MTLReportFailureTypeEnabled())
  {
    v51 = v10;
    MTLReportFailure();
  }

  v44 = 0;
  v43 = 0;
  v31 = v69;
  v30 = v74;
  v32 = v65;
  v41 = v77;
LABEL_132:
  v79[3] = v41;
  v80 = v30;
  v81 = v31;
  v82 = v32;
  v83 = v38;
  v84 = v39;
  v85 = v44;
  v86 = v43;
  v87 = v42;
  v45 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v45 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v45;
  }

  v47 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v48 = 256;
  if (v47 < 0x100)
  {
    v48 = v47;
  }

  if (v48 <= 2 * v46)
  {
    v49 = 1;
  }

  else
  {
    v49 = v48 / v46;
  }

  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v79[0] = (v77.u32[0] + v46 - 1) / v46;
  v79[1] = (v77.u32[1] + v49 - 1) / v49;
  v79[2] = 1;
  v78[0] = v46;
  v78[1] = v49;
  v78[2] = 1;
  [a2 dispatchThreadgroups:v79 threadsPerThreadgroup:v78];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

uint64_t EncodePadGradient(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v76 = a1[19];
  v71 = a1[20];
  v65 = a1[21];
  v66 = a1[22];
  v9 = a1[24];
  v64 = a1[23];
  v11 = a1[25];
  v10 = a1[26];
  v12 = a1[18];
  v13 = [*(a4 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v15 = *v14;
  v17 = *(*v14 + 8);
  v16 = *v17;
  if (*(v17 + 8) - *v17 <= 8uLL || (v63 = v9, v62 = v11, v19 = *(v15 + 24), v18 = *v19, *(v19 + 8) == *v19))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *v16;
  v20 = v16[1];
  v22 = *v18;
  v23 = *(*v16 + 8);
  if (v23 > 285212703)
  {
    if (v23 <= 536870915)
    {
      if (v23 > 301989895)
      {
        if (v23 == 301989896)
        {
          v24 = 512;
          v25 = *(v20 + 2);
          if (v25 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v23 != 335544328)
          {
            goto LABEL_94;
          }

          v24 = 544;
          v25 = *(v20 + 2);
          if (v25 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v23 == 285212704)
      {
        v24 = 416;
        v25 = *(v20 + 2);
        if (v25 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v23 != 285212736)
        {
          goto LABEL_94;
        }

        v24 = 448;
        v25 = *(v20 + 2);
        if (v25 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v23 <= 536870927)
    {
      if (v23 == 536870916)
      {
        v24 = 0;
        v25 = *(v20 + 2);
        if (v25 > 285212703)
        {
          goto LABEL_95;
        }

        goto LABEL_64;
      }

      if (v23 != 536870920)
      {
        goto LABEL_94;
      }

      v24 = 32;
      v25 = *(v20 + 2);
      if (v25 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v23)
      {
        case 536870928:
          v24 = 64;
          v25 = *(v20 + 2);
          if (v25 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v24 = 96;
          v25 = *(v20 + 2);
          if (v25 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v24 = 128;
          v25 = *(v20 + 2);
          if (v25 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_94;
      }
    }
  }

  else if (v23 <= 31)
  {
    if (v23 > 7)
    {
      if (v23 == 8)
      {
        v24 = 192;
        v25 = *(v20 + 2);
        if (v25 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v23 != 16)
        {
          goto LABEL_94;
        }

        v24 = 224;
        v25 = *(v20 + 2);
        if (v25 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v23 == -1879048176)
    {
      v24 = 384;
      v25 = *(v20 + 2);
      if (v25 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v23 != 4)
      {
        goto LABEL_94;
      }

      v24 = 160;
      v25 = *(v20 + 2);
      if (v25 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v23 <= 268435463)
  {
    if (v23 == 32)
    {
      v24 = 256;
      v25 = *(v20 + 2);
      if (v25 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v23 != 64)
      {
        goto LABEL_94;
      }

      v24 = 288;
      v25 = *(v20 + 2);
      if (v25 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v23)
    {
      case 268435464:
        v24 = 480;
        v25 = *(v20 + 2);
        if (v25 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v24 = 320;
        v25 = *(v20 + 2);
        if (v25 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v24 = 352;
        v25 = *(v20 + 2);
        if (v25 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v25 <= 31)
        {
          if (v25 > 7)
          {
            if (v25 == 8)
            {
              v26 = 6144;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }

            if (v25 == 16)
            {
              v26 = 7168;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }
          }

          else
          {
            if (v25 == -1879048176)
            {
              v26 = 12288;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }

            if (v25 == 4)
            {
              v26 = 5120;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }
          }
        }

        else if (v25 <= 268435463)
        {
          if (v25 == 32)
          {
            v26 = 0x2000;
            v27 = *(v22 + 2);
            if (v27 > 285212703)
            {
              goto LABEL_146;
            }

            goto LABEL_124;
          }

          if (v25 == 64)
          {
            v26 = 9216;
            v27 = *(v22 + 2);
            if (v27 > 285212703)
            {
              goto LABEL_146;
            }

            goto LABEL_124;
          }
        }

        else
        {
          switch(v25)
          {
            case 268435464:
              v26 = 15360;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            case 268435472:
              v26 = 10240;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            case 268435488:
              v26 = 11264;
              v27 = *(v22 + 2);
              if (v27 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
          }
        }

LABEL_145:
        v26 = 18432;
        v27 = *(v22 + 2);
        if (v27 > 285212703)
        {
          goto LABEL_146;
        }

        goto LABEL_124;
      default:
LABEL_94:
        v24 = 576;
        v25 = *(v20 + 2);
        if (v25 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_95:
  if (v25 <= 536870915)
  {
    if (v25 > 301989895)
    {
      if (v25 == 301989896)
      {
        v26 = 0x4000;
        v27 = *(v22 + 2);
        if (v27 <= 285212703)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v25 != 335544328)
        {
          goto LABEL_145;
        }

        v26 = 17408;
        v27 = *(v22 + 2);
        if (v27 <= 285212703)
        {
          goto LABEL_124;
        }
      }
    }

    else if (v25 == 285212704)
    {
      v26 = 13312;
      v27 = *(v22 + 2);
      if (v27 <= 285212703)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v25 != 285212736)
      {
        goto LABEL_145;
      }

      v26 = 14336;
      v27 = *(v22 + 2);
      if (v27 <= 285212703)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v25 <= 536870927)
  {
    if (v25 == 536870916)
    {
      v26 = 0;
      v27 = *(v22 + 2);
      if (v27 > 285212703)
      {
        goto LABEL_146;
      }

      goto LABEL_124;
    }

    if (v25 != 536870920)
    {
      goto LABEL_145;
    }

    v26 = 1024;
    v27 = *(v22 + 2);
    if (v27 <= 285212703)
    {
      goto LABEL_124;
    }
  }

  else
  {
    switch(v25)
    {
      case 536870928:
        v26 = 2048;
        v27 = *(v22 + 2);
        if (v27 <= 285212703)
        {
          goto LABEL_124;
        }

        break;
      case 536870944:
        v26 = 3072;
        v27 = *(v22 + 2);
        if (v27 <= 285212703)
        {
          goto LABEL_124;
        }

        break;
      case 536870976:
        v26 = 4096;
        v27 = *(v22 + 2);
        if (v27 > 285212703)
        {
          break;
        }

LABEL_124:
        if (v27 <= 31)
        {
          if (v27 > 7)
          {
            if (v27 == 8)
            {
              v28 = 6;
              goto LABEL_168;
            }

            if (v27 == 16)
            {
              v28 = 7;
              goto LABEL_168;
            }
          }

          else
          {
            if (v27 == -1879048176)
            {
              v28 = 12;
              goto LABEL_168;
            }

            if (v27 == 4)
            {
              v28 = 5;
              goto LABEL_168;
            }
          }
        }

        else if (v27 <= 268435463)
        {
          if (v27 == 32)
          {
            v28 = 8;
            goto LABEL_168;
          }

          if (v27 == 64)
          {
            v28 = 9;
            goto LABEL_168;
          }
        }

        else
        {
          switch(v27)
          {
            case 268435464:
              v28 = 15;
              goto LABEL_168;
            case 268435472:
              v28 = 10;
              goto LABEL_168;
            case 268435488:
              v28 = 11;
              goto LABEL_168;
          }
        }

        goto LABEL_167;
      default:
        goto LABEL_145;
    }
  }

LABEL_146:
  if (v27 <= 536870915)
  {
    if (v27 > 301989895)
    {
      if (v27 == 301989896)
      {
        v28 = 16;
        goto LABEL_168;
      }

      if (v27 == 335544328)
      {
        v28 = 17;
        goto LABEL_168;
      }
    }

    else
    {
      if (v27 == 285212704)
      {
        v28 = 13;
        goto LABEL_168;
      }

      if (v27 == 285212736)
      {
        v28 = 14;
        goto LABEL_168;
      }
    }
  }

  else if (v27 <= 536870927)
  {
    if (v27 == 536870916)
    {
      v28 = 0;
      goto LABEL_168;
    }

    if (v27 == 536870920)
    {
      v28 = 1;
      goto LABEL_168;
    }
  }

  else
  {
    switch(v27)
    {
      case 536870928:
        v28 = 2;
        goto LABEL_168;
      case 536870944:
        v28 = 3;
        goto LABEL_168;
      case 536870976:
        v28 = 4;
        goto LABEL_168;
    }
  }

LABEL_167:
  v28 = 18;
LABEL_168:
  v29 = 0x2000000;
  if (!a5)
  {
    v29 = 0;
  }

  *&v30 = -1;
  *(&v30 + 1) = -1;
  v101 = v30;
  v102 = v30;
  v98 = -1;
  v100 = v30;
  v97 = v30;
  v99 = v24 | v26 | v28 | v29;
  *&v102 = [*(a4 + 16) count] | 0x10100;
  if (!*v21)
  {
    LODWORD(v48) = 1;
    v49 = 0uLL;
    v47 = 0uLL;
    v31.i32[0] = 1;
LABEL_180:
    DWORD1(v48) = 1;
    v31.i32[1] = 1;
    goto LABEL_181;
  }

  DimensionSize = BaseTensor::GetDimensionSize(v20);
  v31 = BaseTensor::GetDimensionSize(v22);
  if (*v21 <= 1uLL)
  {
    v49 = v76;
    LODWORD(v48) = DimensionSize;
    v47 = v71;
    goto LABEL_180;
  }

  v67 = v31;
  v32 = BaseTensor::GetDimensionSize(v20);
  v33 = DimensionSize;
  DWORD1(v33) = v32;
  v82 = v33;
  v34 = v76;
  DWORD1(v34) = v65;
  v77 = v34;
  v35 = v71;
  DWORD1(v35) = v66;
  v72 = v35;
  v36 = BaseTensor::GetDimensionSize(v22);
  v31 = v67;
  v31.i32[1] = v36;
  if (*v21 <= 2uLL)
  {
    v49 = v77;
    *&v48 = v82;
    v47 = v72;
LABEL_181:
    *(&v48 + 1) = 0x100000001;
    v31.i64[1] = 0x100000001;
    if (v12 >= 5)
    {
      goto LABEL_175;
    }

LABEL_182:
    v50 = dword_239B0A0E0[v12];
    goto LABEL_183;
  }

  v68 = v31;
  v37 = BaseTensor::GetDimensionSize(v20);
  v38 = v82;
  DWORD2(v38) = v37;
  v83 = v38;
  v39 = v77;
  DWORD2(v39) = v64;
  v78 = v39;
  v40 = v72;
  DWORD2(v40) = v63;
  v73 = v40;
  v41 = BaseTensor::GetDimensionSize(v22);
  v31 = v68;
  v31.i32[2] = v41;
  if (*v21 <= 3uLL)
  {
    v49 = v78;
    v48 = v83;
    v47 = v73;
    HIDWORD(v48) = 1;
    v31.i32[3] = 1;
    if (v12 >= 5)
    {
      goto LABEL_175;
    }

    goto LABEL_182;
  }

  v69 = v31;
  v42 = BaseTensor::GetDimensionSize(v20);
  v43 = v83;
  HIDWORD(v43) = v42;
  v84 = v43;
  v44 = v78;
  HIDWORD(v44) = v62;
  v79 = v44;
  v45 = v73;
  HIDWORD(v45) = v10;
  v74 = v45;
  v46 = BaseTensor::GetDimensionSize(v22);
  v31 = v69;
  v47 = v74;
  v31.i32[3] = v46;
  v49 = v79;
  v48 = v84;
  if (v12 < 5)
  {
    goto LABEL_182;
  }

LABEL_175:
  v75 = v47;
  v80 = v49;
  v70 = v31;
  v85 = v48;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v50 = 0;
  v49 = v80;
  v48 = v85;
  v31 = v70;
  v47 = v75;
LABEL_183:
  v51 = vextq_s8(v31, v31, 8uLL).u64[0];
  v90 = v31;
  v86 = vmul_s32(*&vextq_s8(v31, v31, 4uLL), __PAIR64__(v51.u32[1], v31.u32[0]));
  v89 = v86;
  v91 = v49;
  v92 = v47;
  v94 = v48;
  v93 = vzip1_s32(*v31.i8, v51);
  v95 = v31;
  v96 = 0u;
  LODWORD(v96) = v50;
  v60 = *(a1 + *MEMORY[0x277CD7360]);
  v61 = *(a1 + *MEMORY[0x277CD7368]);
  v59 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v53 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v53 <= 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = v53;
  }

  v55 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v56 = 256;
  if (v55 < 0x100)
  {
    v56 = v55;
  }

  if (v56 <= 2 * v54)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56 / v54;
  }

  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v88[0] = (v86.u32[0] + v54 - 1) / v54;
  v88[1] = (v86.u32[1] + v57 - 1) / v57;
  v88[2] = 1;
  v87[0] = v54;
  v87[1] = v57;
  v87[2] = 1;
  [a2 dispatchThreadgroups:v88 threadsPerThreadgroup:v87];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

uint64_t EncodeLocalConvolution(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 144);
  v63 = *(a1 + 152);
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = [*(a4 + 232) graph];
  v11 = **(v10 + 56);
  if (*(*(v10 + 56) + 8) == v11)
  {
    goto LABEL_189;
  }

  v13 = *(*v11 + 8);
  v12 = *v13;
  if ((v13[1] - *v13) <= 8)
  {
    goto LABEL_188;
  }

  v14 = *v12;
  v15 = v12[1];
  v16 = [*(a4 + 232) graph];
  v17 = **(v16 + 56);
  if (*(*(v16 + 56) + 8) == v17)
  {
LABEL_189:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v51 = v8;
  v19 = *(*v17 + 24);
  v18 = *v19;
  if (*(v19 + 8) == *v19)
  {
LABEL_188:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *v18;
  v50 = a2;
  v49 = v9;
  if (!v7)
  {
    v21 = 0x200000000;
    v22 = 1;
    v23 = 3;
    if (*(a1 + *MEMORY[0x277CD7378]))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v21 = 0;
    v22 = 0x100000002;
    v23 = 3;
    if (*(a1 + *MEMORY[0x277CD7378]))
    {
      goto LABEL_11;
    }

LABEL_10:
    checkInputAndWeight(v14, v15, &v63, v21 | v23, v22);
    goto LABEL_11;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v22 = -1;
  v21 = 0xFFFFFFFF00000000;
  v23 = 0xFFFFFFFFLL;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v24 = *(v14 + 2);
  if (v24 > 285212703)
  {
    if (v24 <= 536870915)
    {
      if (v24 > 301989895)
      {
        if (v24 == 301989896)
        {
          v25 = 512;
          v26 = *(v15 + 2);
          if (v26 <= 285212703)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v24 != 335544328)
          {
            goto LABEL_105;
          }

          v25 = 544;
          v26 = *(v15 + 2);
          if (v26 <= 285212703)
          {
            goto LABEL_75;
          }
        }
      }

      else if (v24 == 285212704)
      {
        v25 = 416;
        v26 = *(v15 + 2);
        if (v26 <= 285212703)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v24 != 285212736)
        {
          goto LABEL_105;
        }

        v25 = 448;
        v26 = *(v15 + 2);
        if (v26 <= 285212703)
        {
          goto LABEL_75;
        }
      }
    }

    else if (v24 <= 536870927)
    {
      if (v24 == 536870916)
      {
        v25 = 0;
        v26 = *(v15 + 2);
        if (v26 > 285212703)
        {
          goto LABEL_106;
        }

        goto LABEL_75;
      }

      if (v24 != 536870920)
      {
        goto LABEL_105;
      }

      v25 = 32;
      v26 = *(v15 + 2);
      if (v26 <= 285212703)
      {
        goto LABEL_75;
      }
    }

    else
    {
      switch(v24)
      {
        case 536870928:
          v25 = 64;
          v26 = *(v15 + 2);
          if (v26 <= 285212703)
          {
            goto LABEL_75;
          }

          break;
        case 536870944:
          v25 = 96;
          v26 = *(v15 + 2);
          if (v26 <= 285212703)
          {
            goto LABEL_75;
          }

          break;
        case 536870976:
          v25 = 128;
          v26 = *(v15 + 2);
          if (v26 <= 285212703)
          {
            goto LABEL_75;
          }

          break;
        default:
          goto LABEL_105;
      }
    }
  }

  else if (v24 <= 31)
  {
    if (v24 > 7)
    {
      if (v24 == 8)
      {
        v25 = 192;
        v26 = *(v15 + 2);
        if (v26 <= 285212703)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v24 != 16)
        {
          goto LABEL_105;
        }

        v25 = 224;
        v26 = *(v15 + 2);
        if (v26 <= 285212703)
        {
          goto LABEL_75;
        }
      }
    }

    else if (v24 == -1879048176)
    {
      v25 = 384;
      v26 = *(v15 + 2);
      if (v26 <= 285212703)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v24 != 4)
      {
        goto LABEL_105;
      }

      v25 = 160;
      v26 = *(v15 + 2);
      if (v26 <= 285212703)
      {
        goto LABEL_75;
      }
    }
  }

  else if (v24 <= 268435463)
  {
    if (v24 == 32)
    {
      v25 = 256;
      v26 = *(v15 + 2);
      if (v26 <= 285212703)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v24 != 64)
      {
        goto LABEL_105;
      }

      v25 = 288;
      v26 = *(v15 + 2);
      if (v26 <= 285212703)
      {
        goto LABEL_75;
      }
    }
  }

  else
  {
    switch(v24)
    {
      case 268435464:
        v25 = 480;
        v26 = *(v15 + 2);
        if (v26 <= 285212703)
        {
          goto LABEL_75;
        }

        break;
      case 268435472:
        v25 = 320;
        v26 = *(v15 + 2);
        if (v26 <= 285212703)
        {
          goto LABEL_75;
        }

        break;
      case 268435488:
        v25 = 352;
        v26 = *(v15 + 2);
        if (v26 > 285212703)
        {
          break;
        }

LABEL_75:
        if (v26 <= 31)
        {
          if (v26 > 7)
          {
            if (v26 == 8)
            {
              v25 |= 0xC0uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }

            if (v26 == 16)
            {
              v25 |= 0xE0uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }
          }

          else
          {
            if (v26 == -1879048176)
            {
              v25 |= 0x180uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }

            if (v26 == 4)
            {
              v25 |= 0xA0uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }
          }
        }

        else if (v26 <= 268435463)
        {
          if (v26 == 32)
          {
            v25 |= 0x100uLL;
            v27 = *(v20 + 8);
            if (v27 > 285212703)
            {
              goto LABEL_157;
            }

            goto LABEL_135;
          }

          if (v26 == 64)
          {
            v25 |= 0x120uLL;
            v27 = *(v20 + 8);
            if (v27 > 285212703)
            {
              goto LABEL_157;
            }

            goto LABEL_135;
          }
        }

        else
        {
          switch(v26)
          {
            case 268435464:
              v25 |= 0x1E0uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            case 268435472:
              v25 |= 0x140uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            case 268435488:
              v25 |= 0x160uLL;
              v27 = *(v20 + 8);
              if (v27 > 285212703)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
          }
        }

LABEL_156:
        v25 |= 0x240uLL;
        v27 = *(v20 + 8);
        if (v27 > 285212703)
        {
          goto LABEL_157;
        }

        goto LABEL_135;
      default:
LABEL_105:
        v25 = 576;
        v26 = *(v15 + 2);
        if (v26 > 285212703)
        {
          break;
        }

        goto LABEL_75;
    }
  }

LABEL_106:
  if (v26 <= 536870915)
  {
    if (v26 > 301989895)
    {
      if (v26 == 301989896)
      {
        v25 |= 0x200uLL;
        v27 = *(v20 + 8);
        if (v27 <= 285212703)
        {
          goto LABEL_135;
        }
      }

      else
      {
        if (v26 != 335544328)
        {
          goto LABEL_156;
        }

        v25 |= 0x220uLL;
        v27 = *(v20 + 8);
        if (v27 <= 285212703)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v26 == 285212704)
    {
      v25 |= 0x1A0uLL;
      v27 = *(v20 + 8);
      if (v27 <= 285212703)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if (v26 != 285212736)
      {
        goto LABEL_156;
      }

      v25 |= 0x1C0uLL;
      v27 = *(v20 + 8);
      if (v27 <= 285212703)
      {
        goto LABEL_135;
      }
    }
  }

  else if (v26 <= 536870927)
  {
    if (v26 == 536870916)
    {
      v27 = *(v20 + 8);
      if (v27 > 285212703)
      {
        goto LABEL_157;
      }

      goto LABEL_135;
    }

    if (v26 != 536870920)
    {
      goto LABEL_156;
    }

    v25 |= 0x20uLL;
    v27 = *(v20 + 8);
    if (v27 <= 285212703)
    {
      goto LABEL_135;
    }
  }

  else
  {
    switch(v26)
    {
      case 536870928:
        v25 |= 0x40uLL;
        v27 = *(v20 + 8);
        if (v27 <= 285212703)
        {
          goto LABEL_135;
        }

        break;
      case 536870944:
        v25 |= 0x60uLL;
        v27 = *(v20 + 8);
        if (v27 <= 285212703)
        {
          goto LABEL_135;
        }

        break;
      case 536870976:
        v25 |= 0x80uLL;
        v27 = *(v20 + 8);
        if (v27 > 285212703)
        {
          break;
        }

LABEL_135:
        v28 = v51;
        if (v27 <= 31)
        {
          if (v27 > 7)
          {
            if (v27 == 8)
            {
              v29 = 6;
              goto LABEL_179;
            }

            if (v27 == 16)
            {
              v29 = 7;
              goto LABEL_179;
            }
          }

          else
          {
            if (v27 == -1879048176)
            {
              v29 = 12;
              goto LABEL_179;
            }

            if (v27 == 4)
            {
              v29 = 5;
              goto LABEL_179;
            }
          }
        }

        else if (v27 <= 268435463)
        {
          if (v27 == 32)
          {
            v29 = 8;
            goto LABEL_179;
          }

          if (v27 == 64)
          {
            v29 = 9;
            goto LABEL_179;
          }
        }

        else
        {
          switch(v27)
          {
            case 268435464:
              v29 = 15;
              goto LABEL_179;
            case 268435472:
              v29 = 10;
              goto LABEL_179;
            case 268435488:
              v29 = 11;
              goto LABEL_179;
          }
        }

        goto LABEL_178;
      default:
        goto LABEL_156;
    }
  }

LABEL_157:
  v28 = v51;
  if (v27 <= 536870915)
  {
    if (v27 > 301989895)
    {
      if (v27 == 301989896)
      {
        v29 = 16;
        goto LABEL_179;
      }

      if (v27 == 335544328)
      {
        v29 = 17;
        goto LABEL_179;
      }
    }

    else
    {
      if (v27 == 285212704)
      {
        v29 = 13;
        goto LABEL_179;
      }

      if (v27 == 285212736)
      {
        v29 = 14;
        goto LABEL_179;
      }
    }
  }

  else if (v27 <= 536870927)
  {
    if (v27 == 536870916)
    {
      v29 = 0;
      goto LABEL_179;
    }

    if (v27 == 536870920)
    {
      v29 = 1;
      goto LABEL_179;
    }
  }

  else
  {
    switch(v27)
    {
      case 536870928:
        v29 = 2;
        goto LABEL_179;
      case 536870944:
        v29 = 3;
        goto LABEL_179;
      case 536870976:
        v29 = 4;
        goto LABEL_179;
    }
  }

LABEL_178:
  v29 = 18;
LABEL_179:
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v61 = v30;
  v62 = v30;
  v58 = -1;
  v60 = v30;
  v57 = v30;
  v59 = v25 | v29;
  *&v62 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v14);
  v32 = BaseTensor::GetDimensionSize(v14);
  v33 = BaseTensor::GetDimensionSize(v14);
  v34 = BaseTensor::GetDimensionSize(v14);
  v35 = v34;
  *&v36 = __PAIR64__(v32, DimensionSize);
  *(&v36 + 1) = __PAIR64__(v34, v33);
  v56 = 0;
  v54 = v36;
  v55 = __PAIR64__(v49, v28);
  v47 = *(a1 + *MEMORY[0x277CD7360]);
  v48 = *(a1 + *MEMORY[0x277CD7368]);
  v46 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v38 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v38 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v41 = 256;
  if (v40 < 0x100)
  {
    v41 = v40;
  }

  v42 = v41 > 2 * v39;
  v43 = v41 / v39;
  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 1;
  }

  MPSSetNDArraysOnComputeEncoder(v50, a4, 4, 0, 0);
  [v50 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v50);
  v53[0] = (v32 * DimensionSize + v39 - 1) / v39;
  v53[1] = (v44 + v33 - 1) / v44;
  v53[2] = v35;
  v52[0] = v39;
  v52[1] = v44;
  v52[2] = 1;
  [v50 dispatchThreadgroups:v53 threadsPerThreadgroup:v52];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeLocalConvolutionGradient(uint64_t a1, void *a2, uint64_t a3, id *a4)
{
  [a4[28] objectAtIndexedSubscript:0];
  objc_opt_class();
  v118 = a2;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_257;
  }

  v7 = *(a1 + 144);
  v134[0] = *(a1 + 152);
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = [a4[29] graph];
  v11 = **(v10 + 56);
  if (*(*(v10 + 56) + 8) == v11)
  {
    goto LABEL_517;
  }

  v13 = *(*v11 + 8);
  v12 = *v13;
  v14 = v13[1] - *v13;
  if (v14 <= 8)
  {
    goto LABEL_516;
  }

  v116 = v8;
  if (v14 == 16)
  {
    goto LABEL_516;
  }

  v15 = *v12;
  v16 = v12[1];
  v17 = v12[2];
  v18 = [a4[29] graph];
  v19 = **(v18 + 56);
  if (*(*(v18 + 56) + 8) == v19)
  {
    goto LABEL_517;
  }

  v21 = *(*v19 + 24);
  v20 = *v21;
  if (*(v21 + 8) == *v21)
  {
    goto LABEL_516;
  }

  v22 = *v20;
  v114 = v9;
  if (v7)
  {
    if (v7 == 1)
    {
      v23 = 0;
      v24 = 0x100000002;
      v25 = 3;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v24 = -1;
      v23 = 0xFFFFFFFF00000000;
      v25 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v23 = 0x200000000;
    v24 = 1;
    v25 = 3;
  }

  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    checkInputAndWeight(v15, v16, v134, v23 | v25, v24);
    if (*v15 != *v17 && MTLReportFailureTypeEnabled())
    {
      v106 = *v17;
      v109 = *v15;
      MTLReportFailure();
    }

    DimensionSize = BaseTensor::GetDimensionSize(v17);
    if (DimensionSize == BaseTensor::GetDimensionSize(v15))
    {
      v27 = BaseTensor::GetDimensionSize(v17);
      if (v27 == BaseTensor::GetDimensionSize(v15))
      {
        v28 = BaseTensor::GetDimensionSize(v17);
        if (v28 == BaseTensor::GetDimensionSize(v15))
        {
          BaseTensor::GetDimensionSize(v17);
          BaseTensor::GetDimensionSize(v15);
        }
      }
    }

    v29 = BaseTensor::GetDimensionSize(v17);
    if (v29 != BaseTensor::GetDimensionSize(v15) || (v30 = BaseTensor::GetDimensionSize(v17), v30 != BaseTensor::GetDimensionSize(v15)) || (v31 = BaseTensor::GetDimensionSize(v17), v31 != BaseTensor::GetDimensionSize(v15)) || (v32 = BaseTensor::GetDimensionSize(v17), v32 != BaseTensor::GetDimensionSize(v15)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v33 = *(v15 + 2);
  if (v33 > 285212703)
  {
    if (v33 <= 536870915)
    {
      if (v33 > 301989895)
      {
        if (v33 == 301989896)
        {
          v34 = 512;
          v35 = *(v16 + 2);
          if (v35 > 285212703)
          {
            goto LABEL_68;
          }

          goto LABEL_91;
        }

        if (v33 == 335544328)
        {
          v34 = 544;
          v35 = *(v16 + 2);
          if (v35 <= 285212703)
          {
            goto LABEL_91;
          }

          goto LABEL_68;
        }
      }

      else
      {
        if (v33 == 285212704)
        {
          v34 = 416;
          v35 = *(v16 + 2);
          if (v35 > 285212703)
          {
            goto LABEL_68;
          }

          goto LABEL_91;
        }

        if (v33 == 285212736)
        {
          v34 = 448;
          v35 = *(v16 + 2);
          if (v35 <= 285212703)
          {
            goto LABEL_91;
          }

          goto LABEL_68;
        }
      }
    }

    else if (v33 <= 536870927)
    {
      if (v33 == 536870916)
      {
        v34 = 0;
        v35 = *(v16 + 2);
        if (v35 > 285212703)
        {
          goto LABEL_68;
        }

        goto LABEL_91;
      }

      if (v33 == 536870920)
      {
        v34 = 32;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }
    }

    else
    {
      switch(v33)
      {
        case 536870928:
          v34 = 64;
          v35 = *(v16 + 2);
          if (v35 <= 285212703)
          {
            goto LABEL_91;
          }

          goto LABEL_68;
        case 536870944:
          v34 = 96;
          v35 = *(v16 + 2);
          if (v35 <= 285212703)
          {
            goto LABEL_91;
          }

          goto LABEL_68;
        case 536870976:
          v34 = 128;
          v35 = *(v16 + 2);
          if (v35 <= 285212703)
          {
            goto LABEL_91;
          }

          goto LABEL_68;
      }
    }
  }

  else if (v33 <= 31)
  {
    if (v33 > 7)
    {
      if (v33 == 8)
      {
        v34 = 192;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }

      if (v33 == 16)
      {
        v34 = 224;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }
    }

    else
    {
      if (v33 == -1879048176)
      {
        v34 = 384;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }

      if (v33 == 4)
      {
        v34 = 160;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }
    }
  }

  else if (v33 <= 268435463)
  {
    if (v33 == 32)
    {
      v34 = 256;
      v35 = *(v16 + 2);
      if (v35 <= 285212703)
      {
        goto LABEL_91;
      }

      goto LABEL_68;
    }

    if (v33 == 64)
    {
      v34 = 288;
      v35 = *(v16 + 2);
      if (v35 <= 285212703)
      {
        goto LABEL_91;
      }

      goto LABEL_68;
    }
  }

  else
  {
    switch(v33)
    {
      case 268435464:
        v34 = 480;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      case 268435472:
        v34 = 320;
        v35 = *(v16 + 2);
        if (v35 <= 285212703)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      case 268435488:
        v34 = 352;
        v35 = *(v16 + 2);
        if (v35 > 285212703)
        {
          goto LABEL_68;
        }

LABEL_91:
        if (v35 <= 31)
        {
          if (v35 > 7)
          {
            if (v35 == 8)
            {
              v34 |= 0xC0uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
            }

            if (v35 == 16)
            {
              v34 |= 0xE0uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
            }
          }

          else
          {
            if (v35 == -1879048176)
            {
              v34 |= 0x180uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
            }

            if (v35 == 4)
            {
              v34 |= 0xA0uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
            }
          }
        }

        else if (v35 <= 268435463)
        {
          if (v35 == 32)
          {
            v34 |= 0x100uLL;
            v36 = *(v17 + 2);
            if (v36 <= 285212703)
            {
              goto LABEL_133;
            }

            goto LABEL_112;
          }

          if (v35 == 64)
          {
            v34 |= 0x120uLL;
            v36 = *(v17 + 2);
            if (v36 <= 285212703)
            {
              goto LABEL_133;
            }

            goto LABEL_112;
          }
        }

        else
        {
          switch(v35)
          {
            case 268435464:
              v34 |= 0x1E0uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
            case 268435472:
              v34 |= 0x140uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
            case 268435488:
              v34 |= 0x160uLL;
              v36 = *(v17 + 2);
              if (v36 <= 285212703)
              {
                goto LABEL_133;
              }

              goto LABEL_112;
          }
        }

LABEL_243:
        v34 |= 0x240uLL;
        v36 = *(v17 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_133;
        }

LABEL_112:
        if (v36 <= 536870915)
        {
          if (v36 > 301989895)
          {
            if (v36 == 301989896)
            {
              v34 |= 0x200uLL;
              v37 = *(v22 + 8);
              if (v37 > 285212703)
              {
                goto LABEL_158;
              }

              goto LABEL_175;
            }

            if (v36 == 335544328)
            {
              v34 |= 0x220uLL;
              v37 = *(v22 + 8);
              if (v37 <= 285212703)
              {
                goto LABEL_175;
              }

              goto LABEL_158;
            }
          }

          else
          {
            if (v36 == 285212704)
            {
              v34 |= 0x1A0uLL;
              v37 = *(v22 + 8);
              if (v37 > 285212703)
              {
                goto LABEL_158;
              }

              goto LABEL_175;
            }

            if (v36 == 285212736)
            {
              v34 |= 0x1C0uLL;
              v37 = *(v22 + 8);
              if (v37 <= 285212703)
              {
                goto LABEL_175;
              }

              goto LABEL_158;
            }
          }
        }

        else if (v36 <= 536870927)
        {
          if (v36 == 536870916)
          {
            v37 = *(v22 + 8);
            if (v37 > 285212703)
            {
              goto LABEL_158;
            }

            goto LABEL_175;
          }

          if (v36 == 536870920)
          {
            v34 |= 0x20uLL;
            v37 = *(v22 + 8);
            if (v37 <= 285212703)
            {
              goto LABEL_175;
            }

            goto LABEL_158;
          }
        }

        else
        {
          switch(v36)
          {
            case 536870928:
              v34 |= 0x40uLL;
              v37 = *(v22 + 8);
              if (v37 <= 285212703)
              {
                goto LABEL_175;
              }

              goto LABEL_158;
            case 536870944:
              v34 |= 0x60uLL;
              v37 = *(v22 + 8);
              if (v37 <= 285212703)
              {
                goto LABEL_175;
              }

              goto LABEL_158;
            case 536870976:
              v34 |= 0x80uLL;
              v37 = *(v22 + 8);
              if (v37 > 285212703)
              {
                goto LABEL_158;
              }

LABEL_175:
              if (v37 <= 31)
              {
                if (v37 > 7)
                {
                  if (v37 == 8)
                  {
                    v38 = 6;
                    goto LABEL_248;
                  }

                  if (v37 == 16)
                  {
                    v38 = 7;
                    goto LABEL_248;
                  }
                }

                else
                {
                  if (v37 == -1879048176)
                  {
                    v38 = 12;
                    goto LABEL_248;
                  }

                  if (v37 == 4)
                  {
                    v38 = 5;
                    goto LABEL_248;
                  }
                }
              }

              else if (v37 <= 268435463)
              {
                if (v37 == 32)
                {
                  v38 = 8;
                  goto LABEL_248;
                }

                if (v37 == 64)
                {
                  v38 = 9;
                  goto LABEL_248;
                }
              }

              else
              {
                switch(v37)
                {
                  case 268435464:
                    v38 = 15;
                    goto LABEL_248;
                  case 268435472:
                    v38 = 10;
                    goto LABEL_248;
                  case 268435488:
                    v38 = 11;
                    goto LABEL_248;
                }
              }

              goto LABEL_247;
          }
        }

        goto LABEL_245;
    }
  }

  v34 = 576;
  v35 = *(v16 + 2);
  if (v35 <= 285212703)
  {
    goto LABEL_91;
  }

LABEL_68:
  if (v35 <= 536870915)
  {
    if (v35 > 301989895)
    {
      if (v35 == 301989896)
      {
        v34 |= 0x200uLL;
        v36 = *(v17 + 2);
        if (v36 > 285212703)
        {
          goto LABEL_112;
        }

        goto LABEL_133;
      }

      if (v35 == 335544328)
      {
        v34 |= 0x220uLL;
        v36 = *(v17 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_133;
        }

        goto LABEL_112;
      }
    }

    else
    {
      if (v35 == 285212704)
      {
        v34 |= 0x1A0uLL;
        v36 = *(v17 + 2);
        if (v36 > 285212703)
        {
          goto LABEL_112;
        }

        goto LABEL_133;
      }

      if (v35 == 285212736)
      {
        v34 |= 0x1C0uLL;
        v36 = *(v17 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_133;
        }

        goto LABEL_112;
      }
    }

    goto LABEL_243;
  }

  if (v35 <= 536870927)
  {
    if (v35 == 536870916)
    {
      v36 = *(v17 + 2);
      if (v36 > 285212703)
      {
        goto LABEL_112;
      }

      goto LABEL_133;
    }

    if (v35 == 536870920)
    {
      v34 |= 0x20uLL;
      v36 = *(v17 + 2);
      if (v36 <= 285212703)
      {
        goto LABEL_133;
      }

      goto LABEL_112;
    }

    goto LABEL_243;
  }

  if (v35 == 536870928)
  {
    v34 |= 0x40uLL;
    v36 = *(v17 + 2);
    if (v36 <= 285212703)
    {
      goto LABEL_133;
    }

    goto LABEL_112;
  }

  if (v35 == 536870944)
  {
    v34 |= 0x60uLL;
    v36 = *(v17 + 2);
    if (v36 <= 285212703)
    {
      goto LABEL_133;
    }

    goto LABEL_112;
  }

  if (v35 != 536870976)
  {
    goto LABEL_243;
  }

  v34 |= 0x80uLL;
  v36 = *(v17 + 2);
  if (v36 > 285212703)
  {
    goto LABEL_112;
  }

LABEL_133:
  if (v36 <= 31)
  {
    if (v36 > 7)
    {
      if (v36 == 8)
      {
        v34 |= 0xC0uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
      }

      if (v36 == 16)
      {
        v34 |= 0xE0uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
      }
    }

    else
    {
      if (v36 == -1879048176)
      {
        v34 |= 0x180uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
      }

      if (v36 == 4)
      {
        v34 |= 0xA0uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
      }
    }
  }

  else if (v36 <= 268435463)
  {
    if (v36 == 32)
    {
      v34 |= 0x100uLL;
      v37 = *(v22 + 8);
      if (v37 <= 285212703)
      {
        goto LABEL_175;
      }

      goto LABEL_158;
    }

    if (v36 == 64)
    {
      v34 |= 0x120uLL;
      v37 = *(v22 + 8);
      if (v37 <= 285212703)
      {
        goto LABEL_175;
      }

      goto LABEL_158;
    }
  }

  else
  {
    switch(v36)
    {
      case 268435464:
        v34 |= 0x1E0uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
      case 268435472:
        v34 |= 0x140uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
      case 268435488:
        v34 |= 0x160uLL;
        v37 = *(v22 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_175;
        }

        goto LABEL_158;
    }
  }

LABEL_245:
  v34 |= 0x240uLL;
  v37 = *(v22 + 8);
  if (v37 <= 285212703)
  {
    goto LABEL_175;
  }

LABEL_158:
  if (v37 <= 536870915)
  {
    if (v37 > 301989895)
    {
      if (v37 == 301989896)
      {
        v38 = 16;
        goto LABEL_248;
      }

      if (v37 == 335544328)
      {
        v38 = 17;
        goto LABEL_248;
      }
    }

    else
    {
      if (v37 == 285212704)
      {
        v38 = 13;
        goto LABEL_248;
      }

      if (v37 == 285212736)
      {
        v38 = 14;
        goto LABEL_248;
      }
    }

LABEL_247:
    v38 = 18;
    goto LABEL_248;
  }

  if (v37 <= 536870927)
  {
    if (v37 == 536870916)
    {
      v38 = 0;
      goto LABEL_248;
    }

    if (v37 == 536870920)
    {
      v38 = 1;
      goto LABEL_248;
    }

    goto LABEL_247;
  }

  if (v37 == 536870928)
  {
    v38 = 2;
    goto LABEL_248;
  }

  if (v37 == 536870944)
  {
    v38 = 3;
    goto LABEL_248;
  }

  if (v37 != 536870976)
  {
    goto LABEL_247;
  }

  v38 = 4;
LABEL_248:
  *&v39 = -1;
  *(&v39 + 1) = -1;
  v132 = v39;
  v133 = v39;
  v129 = -1;
  v131 = v39;
  v128 = v39;
  v130 = v34 | v38;
  *&v133 = [a4[2] count] | 0x10100;
  v40 = BaseTensor::GetDimensionSize(v15);
  v41 = BaseTensor::GetDimensionSize(v15);
  v42 = BaseTensor::GetDimensionSize(v15);
  v43 = BaseTensor::GetDimensionSize(v15);
  v44 = v43;
  *&v45 = __PAIR64__(v41, v40);
  *(&v45 + 1) = __PAIR64__(v43, v42);
  v127 = 0;
  v125 = v45;
  v126 = __PAIR64__(v114, v116);
  v110 = *(a1 + *MEMORY[0x277CD7360]);
  v112 = *(a1 + *MEMORY[0x277CD7368]);
  v107 = a4[29];
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v47 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v47 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v47;
  }

  v49 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v50 = 256;
  if (v49 < 0x100)
  {
    v50 = v49;
  }

  v51 = v50 > 2 * v48;
  v52 = v50 / v48;
  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = 1;
  }

  MPSSetNDArraysOnComputeEncoder(v118, a4, 4, 0, 0);
  [v118 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v118);
  v122 = (v41 * v40 + v48 - 1) / v48;
  v123 = (v53 + v42 - 1) / v53;
  v124 = v44;
  v119 = v48;
  v120 = v53;
  v121 = 1;
  [v118 dispatchThreadgroups:&v122 threadsPerThreadgroup:&v119];
  MPSLibrary::ReleaseComputeState();
LABEL_257:
  [a4[28] objectAtIndexedSubscript:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v54 = *(a1 + 144);
  v134[0] = *(a1 + 152);
  v56 = *(a1 + 168);
  v55 = *(a1 + 176);
  v57 = [a4[29] graph];
  v58 = **(v57 + 56);
  if (*(*(v57 + 56) + 8) == v58)
  {
LABEL_517:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v60 = *(*v58 + 8);
  v59 = *v60;
  v61 = v60[1] - *v60;
  if (v61 <= 8 || v61 == 16)
  {
LABEL_516:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v63 = *v59;
  v62 = v59[1];
  v64 = v59[2];
  v65 = [a4[29] graph];
  v66 = **(v65 + 56);
  if (*(*(v65 + 56) + 8) == v66)
  {
    goto LABEL_517;
  }

  v68 = *(*v66 + 24);
  v67 = *v68;
  if (*(v68 + 8) == *v68)
  {
    goto LABEL_516;
  }

  v115 = v55;
  v117 = *v67;
  if (v54)
  {
    if (v54 == 1)
    {
      v69 = 0;
      v70 = 0x100000002;
      v71 = 3;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v70 = -1;
      v69 = 0xFFFFFFFF00000000;
      v71 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v69 = 0x200000000;
    v70 = 1;
    v71 = 3;
  }

  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    checkInputAndWeight(v63, v62, v134, v69 | v71, v70);
    if (*v62 != *v64 && MTLReportFailureTypeEnabled())
    {
      v106 = *v64;
      v109 = *v63;
      MTLReportFailure();
    }

    v72 = BaseTensor::GetDimensionSize(v64);
    if (v72 == BaseTensor::GetDimensionSize(v63))
    {
      v73 = BaseTensor::GetDimensionSize(v64);
      if (v73 == BaseTensor::GetDimensionSize(v63))
      {
        v74 = BaseTensor::GetDimensionSize(v64);
        if (v74 == BaseTensor::GetDimensionSize(v63))
        {
          BaseTensor::GetDimensionSize(v64);
          BaseTensor::GetDimensionSize(v63);
        }
      }
    }

    v75 = BaseTensor::GetDimensionSize(v64);
    if (v75 != BaseTensor::GetDimensionSize(v63) || (v76 = BaseTensor::GetDimensionSize(v64), v76 != BaseTensor::GetDimensionSize(v63)) || (v77 = BaseTensor::GetDimensionSize(v64), v77 != BaseTensor::GetDimensionSize(v63)) || (v78 = BaseTensor::GetDimensionSize(v64), v78 != BaseTensor::GetDimensionSize(v63)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v79 = *(v63 + 2);
  if (v79 > 285212703)
  {
    if (v79 <= 536870915)
    {
      if (v79 > 301989895)
      {
        if (v79 == 301989896)
        {
          v80 = 512;
          v81 = *(v62 + 2);
          if (v81 > 285212703)
          {
            goto LABEL_324;
          }

          goto LABEL_347;
        }

        if (v79 == 335544328)
        {
          v80 = 544;
          v81 = *(v62 + 2);
          if (v81 <= 285212703)
          {
            goto LABEL_347;
          }

          goto LABEL_324;
        }
      }

      else
      {
        if (v79 == 285212704)
        {
          v80 = 416;
          v81 = *(v62 + 2);
          if (v81 > 285212703)
          {
            goto LABEL_324;
          }

          goto LABEL_347;
        }

        if (v79 == 285212736)
        {
          v80 = 448;
          v81 = *(v62 + 2);
          if (v81 <= 285212703)
          {
            goto LABEL_347;
          }

          goto LABEL_324;
        }
      }
    }

    else if (v79 <= 536870927)
    {
      if (v79 == 536870916)
      {
        v80 = 0;
        v81 = *(v62 + 2);
        if (v81 > 285212703)
        {
          goto LABEL_324;
        }

        goto LABEL_347;
      }

      if (v79 == 536870920)
      {
        v80 = 32;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      }
    }

    else
    {
      switch(v79)
      {
        case 536870928:
          v80 = 64;
          v81 = *(v62 + 2);
          if (v81 <= 285212703)
          {
            goto LABEL_347;
          }

          goto LABEL_324;
        case 536870944:
          v80 = 96;
          v81 = *(v62 + 2);
          if (v81 <= 285212703)
          {
            goto LABEL_347;
          }

          goto LABEL_324;
        case 536870976:
          v80 = 128;
          v81 = *(v62 + 2);
          if (v81 <= 285212703)
          {
            goto LABEL_347;
          }

          goto LABEL_324;
      }
    }
  }

  else if (v79 <= 31)
  {
    if (v79 > 7)
    {
      if (v79 == 8)
      {
        v80 = 192;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      }

      if (v79 == 16)
      {
        v80 = 224;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      }
    }

    else
    {
      if (v79 == -1879048176)
      {
        v80 = 384;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      }

      if (v79 == 4)
      {
        v80 = 160;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      }
    }
  }

  else if (v79 <= 268435463)
  {
    if (v79 == 32)
    {
      v80 = 256;
      v81 = *(v62 + 2);
      if (v81 <= 285212703)
      {
        goto LABEL_347;
      }

      goto LABEL_324;
    }

    if (v79 == 64)
    {
      v80 = 288;
      v81 = *(v62 + 2);
      if (v81 <= 285212703)
      {
        goto LABEL_347;
      }

      goto LABEL_324;
    }
  }

  else
  {
    switch(v79)
    {
      case 268435464:
        v80 = 480;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      case 268435472:
        v80 = 320;
        v81 = *(v62 + 2);
        if (v81 <= 285212703)
        {
          goto LABEL_347;
        }

        goto LABEL_324;
      case 268435488:
        v80 = 352;
        v81 = *(v62 + 2);
        if (v81 > 285212703)
        {
          goto LABEL_324;
        }

LABEL_347:
        if (v81 <= 31)
        {
          if (v81 > 7)
          {
            if (v81 == 8)
            {
              v80 |= 0xC0uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
            }

            if (v81 == 16)
            {
              v80 |= 0xE0uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
            }
          }

          else
          {
            if (v81 == -1879048176)
            {
              v80 |= 0x180uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
            }

            if (v81 == 4)
            {
              v80 |= 0xA0uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
            }
          }
        }

        else if (v81 <= 268435463)
        {
          if (v81 == 32)
          {
            v80 |= 0x100uLL;
            v82 = *(v64 + 2);
            if (v82 <= 285212703)
            {
              goto LABEL_389;
            }

            goto LABEL_368;
          }

          if (v81 == 64)
          {
            v80 |= 0x120uLL;
            v82 = *(v64 + 2);
            if (v82 <= 285212703)
            {
              goto LABEL_389;
            }

            goto LABEL_368;
          }
        }

        else
        {
          switch(v81)
          {
            case 268435464:
              v80 |= 0x1E0uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
            case 268435472:
              v80 |= 0x140uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
            case 268435488:
              v80 |= 0x160uLL;
              v82 = *(v64 + 2);
              if (v82 <= 285212703)
              {
                goto LABEL_389;
              }

              goto LABEL_368;
          }
        }

LABEL_493:
        v80 |= 0x240uLL;
        v82 = *(v64 + 2);
        if (v82 <= 285212703)
        {
          goto LABEL_389;
        }

LABEL_368:
        if (v82 <= 536870915)
        {
          if (v82 > 301989895)
          {
            if (v82 != 301989896)
            {
              v83 = v117;
              if (v82 == 335544328)
              {
                v84 = v80 | 0x220;
                v85 = *(v117 + 8);
                if (v85 <= 285212703)
                {
                  goto LABEL_467;
                }

                goto LABEL_417;
              }

              goto LABEL_495;
            }

            v86 = 512;
          }

          else
          {
            if (v82 != 285212704)
            {
              v83 = v117;
              if (v82 == 285212736)
              {
                v84 = v80 | 0x1C0;
                v85 = *(v117 + 8);
                if (v85 <= 285212703)
                {
                  goto LABEL_467;
                }

                goto LABEL_417;
              }

              goto LABEL_495;
            }

            v86 = 416;
          }
        }

        else if (v82 <= 536870927)
        {
          if (v82 != 536870916)
          {
            v83 = v117;
            if (v82 == 536870920)
            {
              v84 = v80 | 0x20;
              v85 = *(v117 + 8);
              if (v85 <= 285212703)
              {
                goto LABEL_467;
              }

              goto LABEL_417;
            }

            goto LABEL_495;
          }

          v86 = 0;
        }

        else if (v82 == 536870928)
        {
          v86 = 64;
        }

        else
        {
          if (v82 != 536870944)
          {
            v83 = v117;
            if (v82 == 536870976)
            {
              v84 = v80 | 0x80;
              v85 = *(v117 + 8);
              if (v85 > 285212703)
              {
                goto LABEL_417;
              }

LABEL_467:
              if (v85 <= 31)
              {
                if (v85 > 7)
                {
                  if (v85 == 8)
                  {
                    v87 = 6;
                    goto LABEL_498;
                  }

                  if (v85 == 16)
                  {
                    v87 = 7;
                    goto LABEL_498;
                  }
                }

                else
                {
                  if (v85 == -1879048176)
                  {
                    v87 = 12;
                    goto LABEL_498;
                  }

                  if (v85 == 4)
                  {
                    v87 = 5;
                    goto LABEL_498;
                  }
                }
              }

              else if (v85 <= 268435463)
              {
                if (v85 == 32)
                {
                  v87 = 8;
                  goto LABEL_498;
                }

                if (v85 == 64)
                {
                  v87 = 9;
                  goto LABEL_498;
                }
              }

              else
              {
                switch(v85)
                {
                  case 268435464:
                    v87 = 15;
                    goto LABEL_498;
                  case 268435472:
                    v87 = 10;
                    goto LABEL_498;
                  case 268435488:
                    v87 = 11;
                    goto LABEL_498;
                }
              }

              goto LABEL_497;
            }

            goto LABEL_495;
          }

          v86 = 96;
        }

LABEL_466:
        v84 = v80 | v86;
        v85 = *(v117 + 8);
        if (v85 > 285212703)
        {
          goto LABEL_417;
        }

        goto LABEL_467;
    }
  }

  v80 = 576;
  v81 = *(v62 + 2);
  if (v81 <= 285212703)
  {
    goto LABEL_347;
  }

LABEL_324:
  if (v81 <= 536870915)
  {
    if (v81 > 301989895)
    {
      if (v81 == 301989896)
      {
        v80 |= 0x200uLL;
        v82 = *(v64 + 2);
        if (v82 > 285212703)
        {
          goto LABEL_368;
        }

        goto LABEL_389;
      }

      if (v81 == 335544328)
      {
        v80 |= 0x220uLL;
        v82 = *(v64 + 2);
        if (v82 <= 285212703)
        {
          goto LABEL_389;
        }

        goto LABEL_368;
      }
    }

    else
    {
      if (v81 == 285212704)
      {
        v80 |= 0x1A0uLL;
        v82 = *(v64 + 2);
        if (v82 > 285212703)
        {
          goto LABEL_368;
        }

        goto LABEL_389;
      }

      if (v81 == 285212736)
      {
        v80 |= 0x1C0uLL;
        v82 = *(v64 + 2);
        if (v82 <= 285212703)
        {
          goto LABEL_389;
        }

        goto LABEL_368;
      }
    }

    goto LABEL_493;
  }

  if (v81 <= 536870927)
  {
    if (v81 == 536870916)
    {
      v82 = *(v64 + 2);
      if (v82 > 285212703)
      {
        goto LABEL_368;
      }

      goto LABEL_389;
    }

    if (v81 == 536870920)
    {
      v80 |= 0x20uLL;
      v82 = *(v64 + 2);
      if (v82 <= 285212703)
      {
        goto LABEL_389;
      }

      goto LABEL_368;
    }

    goto LABEL_493;
  }

  if (v81 == 536870928)
  {
    v80 |= 0x40uLL;
    v82 = *(v64 + 2);
    if (v82 <= 285212703)
    {
      goto LABEL_389;
    }

    goto LABEL_368;
  }

  if (v81 == 536870944)
  {
    v80 |= 0x60uLL;
    v82 = *(v64 + 2);
    if (v82 <= 285212703)
    {
      goto LABEL_389;
    }

    goto LABEL_368;
  }

  if (v81 != 536870976)
  {
    goto LABEL_493;
  }

  v80 |= 0x80uLL;
  v82 = *(v64 + 2);
  if (v82 > 285212703)
  {
    goto LABEL_368;
  }

LABEL_389:
  if (v82 <= 31)
  {
    if (v82 > 7)
    {
      v83 = v117;
      if (v82 == 8)
      {
        v84 = v80 | 0xC0;
        v85 = *(v117 + 8);
        if (v85 > 285212703)
        {
          goto LABEL_417;
        }

        goto LABEL_467;
      }

      if (v82 == 16)
      {
        v84 = v80 | 0xE0;
        v85 = *(v117 + 8);
        if (v85 <= 285212703)
        {
          goto LABEL_467;
        }

        goto LABEL_417;
      }

      goto LABEL_495;
    }

    if (v82 != -1879048176)
    {
      v83 = v117;
      if (v82 == 4)
      {
        v84 = v80 | 0xA0;
        v85 = *(v117 + 8);
        if (v85 <= 285212703)
        {
          goto LABEL_467;
        }

        goto LABEL_417;
      }

      goto LABEL_495;
    }

    v86 = 384;
    goto LABEL_466;
  }

  if (v82 > 268435463)
  {
    if (v82 == 268435464)
    {
      v86 = 480;
    }

    else
    {
      if (v82 != 268435472)
      {
        v83 = v117;
        if (v82 == 268435488)
        {
          v84 = v80 | 0x160;
          v85 = *(v117 + 8);
          if (v85 <= 285212703)
          {
            goto LABEL_467;
          }

          goto LABEL_417;
        }

        goto LABEL_495;
      }

      v86 = 320;
    }

    goto LABEL_466;
  }

  v83 = v117;
  if (v82 == 32)
  {
    v84 = v80 | 0x100;
    v85 = *(v117 + 8);
    if (v85 <= 285212703)
    {
      goto LABEL_467;
    }

    goto LABEL_417;
  }

  if (v82 == 64)
  {
    v84 = v80 | 0x120;
    v85 = *(v117 + 8);
    if (v85 <= 285212703)
    {
      goto LABEL_467;
    }

    goto LABEL_417;
  }

LABEL_495:
  v84 = v80 | 0x240;
  v85 = *(v83 + 8);
  if (v85 <= 285212703)
  {
    goto LABEL_467;
  }

LABEL_417:
  if (v85 <= 536870915)
  {
    if (v85 > 301989895)
    {
      if (v85 == 301989896)
      {
        v87 = 16;
        goto LABEL_498;
      }

      if (v85 == 335544328)
      {
        v87 = 17;
        goto LABEL_498;
      }
    }

    else
    {
      if (v85 == 285212704)
      {
        v87 = 13;
        goto LABEL_498;
      }

      if (v85 == 285212736)
      {
        v87 = 14;
        goto LABEL_498;
      }
    }

LABEL_497:
    v87 = 18;
    goto LABEL_498;
  }

  if (v85 <= 536870927)
  {
    if (v85 == 536870916)
    {
      v87 = 0;
      goto LABEL_498;
    }

    if (v85 == 536870920)
    {
      v87 = 1;
      goto LABEL_498;
    }

    goto LABEL_497;
  }

  if (v85 == 536870928)
  {
    v87 = 2;
    goto LABEL_498;
  }

  if (v85 == 536870944)
  {
    v87 = 3;
    goto LABEL_498;
  }

  if (v85 != 536870976)
  {
    goto LABEL_497;
  }

  v87 = 4;
LABEL_498:
  *&v88 = -1;
  *(&v88 + 1) = -1;
  v132 = v88;
  v133 = v88;
  v129 = -1;
  v131 = v88;
  v128 = v88;
  v130 = v84 | v87;
  *&v133 = [a4[2] count] | 0x10100;
  v89 = BaseTensor::GetDimensionSize(v63);
  v90 = BaseTensor::GetDimensionSize(v63);
  v91 = BaseTensor::GetDimensionSize(v63);
  v92 = BaseTensor::GetDimensionSize(v63);
  v93 = v92;
  *&v94 = __PAIR64__(v90, v89);
  *(&v94 + 1) = __PAIR64__(v92, v91);
  v127 = 0;
  v125 = v94;
  v126 = __PAIR64__(v115, v56);
  v111 = *(a1 + *MEMORY[0x277CD7360]);
  v113 = *(a1 + *MEMORY[0x277CD7368]);
  v108 = a4[29];
  MPSLibrary::CreateUberShaderKey();
  v95 = MPSLibrary::GetPipelineStateForMPSKey();
  v96 = [v95 threadExecutionWidth];
  if (v96 <= 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = v96;
  }

  v98 = [v95 maxTotalThreadsPerThreadgroup];
  v99 = 256;
  if (v98 < 0x100)
  {
    v99 = v98;
  }

  v51 = v99 > 2 * v97;
  v100 = v99 / v97;
  if (v51)
  {
    v101 = v100;
  }

  else
  {
    v101 = 1;
  }

  v102 = v101 + v91 - 1;
  v103 = v93;
  v104 = v102 / v101;
  MPSSetNDArraysOnComputeEncoder(v118, a4, 4, 0, 0);
  [v118 setComputePipelineState:v95];
  objc_msgSend_setBytes_length_atIndex_(v118);
  v122 = (v97 + v90 - 1) / v97;
  v123 = v104;
  v124 = v103;
  v119 = v97;
  v120 = v101;
  v121 = 1;
  [v118 dispatchThreadgroups:&v122 threadsPerThreadgroup:&v119];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t checkInputAndWeight(BaseTensor *a1, BaseTensor *this, _DWORD *a3, unint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = a3[2];
  v10 = *a1;
  if (*a1 >= 5uLL)
  {
    v17 = MTLReportFailureTypeEnabled();
    v10 = *a1;
    if (v17)
    {
      MTLReportFailure();
      v10 = *a1;
    }
  }

  if (v10 != *this && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(this);
  BaseTensor::GetDimensionSize(a1);
  DimensionSize = BaseTensor::GetDimensionSize(this);
  if (DimensionSize != BaseTensor::GetDimensionSize(a1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((*a3 > 0xFFuLL || *(a3 + 1) >= 0x100uLL) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = BaseTensor::GetDimensionSize(this);
  if (v12 == BaseTensor::GetDimensionSize(a1))
  {
    BaseTensor::GetDimensionSize(this);
    BaseTensor::GetDimensionSize(a1);
  }

  v13 = v9 * v8;
  v14 = BaseTensor::GetDimensionSize(this);
  if (v14 != BaseTensor::GetDimensionSize(a1) || (v15 = BaseTensor::GetDimensionSize(this), v15 != BaseTensor::GetDimensionSize(a1)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      BaseTensor::GetDimensionSize(this);
      BaseTensor::GetDimensionSize(this);
      BaseTensor::GetDimensionSize(a1);
      BaseTensor::GetDimensionSize(a1);
      MTLReportFailure();
    }
  }

  BaseTensor::GetDimensionSize(this);
  result = BaseTensor::GetDimensionSize(this);
  if (result != v13)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      return MTLReportFailure();
    }
  }

  return result;
}

uint64_t MPSNDArrayLocalConvolutionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v8 = v7;
  v9 = *a3;
  v10 = *(a3 + 1);
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  v12 = vceqq_s64(v10, v11);
  v13 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v11), vceqq_s64(*(a3 + 4), v11))));
  v14 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v12, vceqq_s64(*(a3 + 3), v11)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v14 != 0 || (v13 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v12), *v10.i8).u8[0] & 1) == 0)
    {
      v22 = *(a3 + 1);
      [v7 setConstantValue:&v22 type:33 atIndex:126];
      v9 = *a3;
    }

    if (v9 != -1)
    {
      v22 = v9;
      [v8 setConstantValue:&v22 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v22 = a3[2];
      [v8 setConstantValue:&v22 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v22 = a3[3];
      [v8 setConstantValue:&v22 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v22 = a3[4];
      [v8 setConstantValue:&v22 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v22 = a3[5];
      [v8 setConstantValue:&v22 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v22 = a3[8];
      [v8 setConstantValue:&v22 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v22 = a3[9];
      [v8 setConstantValue:&v22 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v22 = a3[6];
      [v8 setConstantValue:&v22 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v22 = a3[7];
      [v8 setConstantValue:&v22 type:33 atIndex:116];
    }
  }

  v22 = BYTE6(v6);
  [v8 setConstantValue:&v22 type:33 atIndex:0];
  v21 = HIBYTE(v6);
  [v8 setConstantValue:&v21 type:33 atIndex:1];
  v20 = (v6 >> 46) & 3;
  [v8 setConstantValue:&v20 type:33 atIndex:2];
  v18 = _MPSNewSpecializedFunction();

  return v18;
}

uint64_t EncodeStitchedReduction(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v102[20] = *MEMORY[0x277D85DE8];
  v68 = a1[83];
  v69 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = [*(a4 + 232) inputTensorAtIndex:0];
  v71 = a4;
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  if (*(v6 + 2) != *(v7 + 2) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *v102 = 0;
  if ([objc_msgSend(a1 "axes")])
  {
    v8 = 0;
    do
    {
      v9 = [objc_msgSend(objc_msgSend(a1 "axes")];
      if (v9 >= 4 && MTLReportFailureTypeEnabled())
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v55 = [a1 label];
        v56 = v9;
        v52 = v11;
        v54 = a1;
        MTLReportFailure();
      }

      v102[v9] = 1;
      ++v8;
    }

    while (v8 < [objc_msgSend(a1 axes]);
  }

  DimensionSize = BaseTensor::GetDimensionSize(v6);
  v13 = BaseTensor::GetDimensionSize(v6);
  v14 = BaseTensor::GetDimensionSize(v6);
  v15 = BaseTensor::GetDimensionSize(v6);
  v16 = BaseTensor::GetDimensionSize(v7);
  v17 = BaseTensor::GetDimensionSize(v7);
  v18 = BaseTensor::GetDimensionSize(v7);
  v19 = BaseTensor::GetDimensionSize(v7);
  v20 = 0;
  v59 = v16;
  v65 = v17;
  if (DimensionSize == v16 && v13 == v17)
  {
    if (v18)
    {
      v20 = 16 * (v15 == v19);
      v14 = v18;
    }

    else
    {
      v14 = 0;
      v20 = 0;
    }
  }

  v67 = v20;
  v60 = v19;
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    *(&v97.__r_.__value_.__s + 23) = 7;
    strcpy(&v97, " -axis ");
    v21 = [a1 axis] - 1;
    if (v21 > 2)
    {
      v22 = "\\[0\\]";
    }

    else
    {
      v22 = off_278B04E58[v21];
    }

    v23 = std::string::append(&v97, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *&v74[16] = *(&v23->__r_.__value_.__l + 2);
    *v74 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(v74, " ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&v86[16] = *(&v25->__r_.__value_.__l + 2);
    *v86 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if ((v74[23] & 0x80000000) != 0)
    {
      operator delete(*v74);
      if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v97.__r_.__value_.__l.__data_);
LABEL_19:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = "-functionName rmsnorm ";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_24;
      }

      v27 = "-functionName softmax ";
    }

    std::string::append(v86, v27);
LABEL_24:
    operator new();
  }

  v61 = v18;
  v62 = v14;
  v58 = DimensionSize;
  *&v102[4] = DimensionSize;
  *&v102[8] = v13;
  v63 = v13;
  v64 = v15;
  *&v102[12] = v14;
  *&v102[16] = v15;
  v66 = *(v69 + 1472);
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v100 = v28;
  v101 = v28;
  v97.__r_.__value_.__r.__words[2] = -1;
  v99 = v28;
  *&v97.__r_.__value_.__l.__data_ = v28;
  v98 = 0;
  v29 = 0;
  *&v101 = [*(v71 + 16) count] | ((*(v71 + 112) != 0) << 8) | 0x10000;
  if ((*(v6 + 2) & 0x7FFFFFFF) == 0x10000010)
  {
    v30 = 268435488;
  }

  else
  {
    v30 = *(v6 + 2);
  }

  if (v30 == 285212704)
  {
    v31 = 285212736;
  }

  else
  {
    v31 = v30;
  }

  if (v31 > 285212703)
  {
    if (v31 <= 536870927)
    {
      if (v31 == 285212736)
      {
        v29 = 96;
        v32 = *v6;
        if (*v6 >= 1)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }

      if (v31 != 536870920)
      {
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    if (v31 == 536870928)
    {
      goto LABEL_54;
    }

    if (v31 != 536870944)
    {
      if (v31 != 536870976)
      {
        goto LABEL_59;
      }

LABEL_52:
      v29 = 128;
      v32 = *v6;
      if (*v6 >= 1)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_58:
    v29 = 160;
    goto LABEL_59;
  }

  if (v31 > 31)
  {
    if (v31 != 32)
    {
      if (v31 != 64)
      {
        if (v31 == 268435472)
        {
          v29 = 32;
          v32 = *v6;
          if (*v6 >= 1)
          {
            goto LABEL_60;
          }

          goto LABEL_63;
        }

        goto LABEL_59;
      }

      goto LABEL_52;
    }

    goto LABEL_58;
  }

  if (v31 != -1879048176)
  {
    if (v31 != 8)
    {
      if (v31 != 16)
      {
LABEL_59:
        v32 = *v6;
        if (*v6 >= 1)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }

LABEL_54:
      v29 = 192;
      v32 = *v6;
      if (*v6 >= 1)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_42:
    v29 = 224;
    v32 = *v6;
    if (*v6 >= 1)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v29 = 64;
  v32 = *v6;
  if (*v6 >= 1)
  {
LABEL_60:
    while (1)
    {
      v33 = v32 - 1;
      if (BaseTensor::GetDimensionSize(v6) != 1)
      {
        break;
      }

      --v32;
      if (v33 + 1 <= 1)
      {
        v32 = 0;
        break;
      }
    }
  }

LABEL_63:
  v34 = *v7;
  if (*v7 >= 1)
  {
    while (1)
    {
      v35 = v34 - 1;
      if (BaseTensor::GetDimensionSize(v7) != 1)
      {
        break;
      }

      --v34;
      if (v35 + 1 <= 1)
      {
        v34 = 0;
        break;
      }
    }
  }

  if (v32 <= v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v32;
  }

  if (v36 >= 4)
  {
    LOWORD(v36) = 4;
  }

  v37 = v102[0];
  v38 = v102[1];
  v39 = v102[2];
  v40 = v102[3];
  v97.__r_.__value_.__r.__words[2] = v67 | v29 | ((v68 << 8) + 1792) & 0x700 | ((v36 << 11) + 6144) & 0x1800 | (4 * v102[2]) | (2 * v102[1]) | (8 * v102[3]) | v102[0];
  v57 = [a1 getUserDAGInfo];
  v53 = *(v71 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  [a2 setComputePipelineState:{PipelineStateForMPSKey, v53, 0, 0, v57, 0}];
  MPSLibrary::ReleaseMPSKey();
  v42 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v43 = *(v69 + 1480);
  if (v42 >= 0x200)
  {
    v44 = 512;
  }

  else
  {
    v44 = v42;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  memset(v86, 0, sizeof(v86));
  getDispatchParams(v86, &v102[4], v102, v44, v43, v66 > 23, 0x1000uLL);
  if (v96 == 1)
  {
    getDispatchParams(v74, &v102[4], v102, v44, v43, v66 > 23, 0xFFFFFFFFFFFFFFFFLL);
    v94 = v83;
    v95 = v84;
    v96 = v85;
    v91 = v79;
    v92 = v80;
    v93[0] = v81;
    v93[1] = v82;
    v87 = v75;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    *v86 = *v74;
    *&v86[16] = *&v74[16];
  }

  if (!v37)
  {
    v45 = 1;
    v47 = v62;
    v46 = v63;
    v48 = v61;
    v49 = v65;
    v50 = v64;
    if (!v38)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v45 = v58;
  DWORD1(v91) = v59;
  v47 = v62;
  v46 = v63;
  v48 = v61;
  v49 = v65;
  v50 = v64;
  if (v38)
  {
LABEL_83:
    DWORD2(v91) = v49;
    v45 *= v46;
  }

LABEL_84:
  if (v39)
  {
    HIDWORD(v91) = v48;
    v45 *= v47;
    if (!v40)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v40)
  {
LABEL_86:
    LODWORD(v92) = v60;
    v45 *= v50;
  }

LABEL_87:
  *v86 = v45;
  MPSSetNDArraysOnComputeEncoder(a2, v71, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setThreadgroupMemoryLength:(DWORD2(v95) * v68 + 15) & 0xFFFFFFF0 atIndex:0];
  *v74 = v94;
  *&v74[16] = v95;
  v72 = *(v93 + 8);
  v73 = *(&v93[1] + 1);
  [a2 dispatchThreadgroups:v74 threadsPerThreadgroup:&v72];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void sub_239A40180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (*(v62 - 129) < 0)
  {
    operator delete(*(v62 - 152));
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a62 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_239A40D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t getDispatchParams(unsigned int *a1, BOOL *a2, MTLSize *a3, unint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 34) = xmmword_239B0A130;
  *(a1 + 19) = 1;
  *(a1 + 10) = vdupq_n_s64(1uLL);
  *(a1 + 11) = 0u;
  *(a1 + 22) = 1;
  v12 = a1 + 1;
  v13 = a1 + 9;
  memset_pattern16(a1 + 1, &unk_239B0A120, 0x10uLL);
  memset_pattern16(a1 + 5, &unk_239B0A120, 0x10uLL);
  memset_pattern16(v13, &unk_239B0A120, 0x10uLL);
  memset_pattern16(a1 + 13, &unk_239B0A120, 0x10uLL);
  v14 = *a2;
  *(a1 + 17) = *a2;
  *(a1 + 21) = v14;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  *(a1 + 25) = v14;
  *(a1 + 29) = v14;
  width_low = LOBYTE(a3->width);
  if (width_low == 1)
  {
    v16 = *a2;
    v17 = 1 << (32 - __clz(v16 - 1));
    if (BYTE1(a3->width) == 1)
    {
      v17 <<= 32 - __clz(*(a2 + 1) - 1);
      if (BYTE2(a3->width) == 1)
      {
        v17 <<= 32 - __clz(*(a2 + 2) - 1);
        if (BYTE3(a3->width) == 1)
        {
          v17 <<= 32 - __clz(*(a2 + 3) - 1);
        }
      }
    }

    if (v17 >> 5 <= 0x20)
    {
      v18 = 32;
    }

    else
    {
      v18 = v17 >> 5;
    }

    if (v17 >> 5 >= a7)
    {
      v19 = a7;
    }

    else
    {
      v19 = v18;
    }

    if (v17 <= 32 * v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = 32;
    }

    if (v16 < 0x10)
    {
      v26 = 2 * ((*a2 & 3) == 0);
      v23 = 32;
      for (i = 1; ; *(a1 + 18) = i)
      {
        if (v23 << v26 > v16)
        {
          if (v23 < 2)
          {
            goto LABEL_45;
          }
        }

        else if (v23 < 2 || (v16 & ((v23 << v26) - 1)) - 1 >= v23 << v26 >> 1)
        {
          goto LABEL_45;
        }

        v23 >>= 1;
        i *= 2;
        *(a1 + 17) = v23;
      }
    }

    if (v16 > 0x7F)
    {
      v23 = 32;
      i = 1;
    }

    else
    {
      v21 = 4;
      if (v16 >= 0x20)
      {
        v22 = 8;
      }

      else
      {
        v22 = 4;
      }

      if (v16 < 0x20)
      {
        v21 = 8;
      }

      v23 = 16;
      if (v16 >= 0x40)
      {
        i = 2;
      }

      else
      {
        v23 = v22;
        i = v21;
      }

      *(a1 + 17) = v23;
      *(a1 + 18) = i;
    }

LABEL_45:
    *v13 = v23;
    if ((v16 - 1 + v23) / v23 >= v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = (v16 - 1 + v23) / v23;
    }

    *v12 = v27;
    a1[5] = v27 * v23;
  }

  else
  {
    v23 = 4;
    a1[1] = 4;
    *(a1 + 17) = 4;
    LODWORD(v16) = *a2;
    if ((*a2 & 0xFuLL) - 1 > 7)
    {
      i = 8;
      v25 = 4;
    }

    else
    {
      if ((v16 & 7) - 1 < 4)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if ((v16 & 7) - 1 >= 4)
      {
        i = 16;
      }

      else
      {
        i = 32;
      }

      *(a1 + 17) = v23;
      *(a1 + 18) = i;
      v25 = v23;
    }

    *v13 = v25;
    v27 = 4;
    v20 = a7;
    a1[5] = 4 * v25;
    if (!width_low)
    {
      goto LABEL_51;
    }
  }

  v20 /= v27;
  if ((v20 & (v20 - 1)) != 0)
  {
    v20 = (1 << -__clz(v20 - 1)) >> 1;
  }

LABEL_51:
  v28 = i;
  if (v20 == 1)
  {
    goto LABEL_52;
  }

  if (BYTE1(a3->width) != 1)
  {
    v28 = i;
LABEL_156:
    if (BYTE2(a3->width) == 1)
    {
      a1[3] = v20;
      a1[11] = v28;
      v98 = v20 * v28;
      v99 = *(a2 + 2);
      v100 = v28;
      for (j = v20; v99 <= (j * v100) >> 1; v98 = j * v100)
      {
        while (j <= 1)
        {
          v100 >>= 1;
          a1[11] = v100;
          v98 = j * v100;
          if (v99 > (j * v100) >> 1)
          {
            goto LABEL_162;
          }
        }

        j >>= 1;
        a1[3] = j;
      }

LABEL_162:
      a1[7] = v98;
      v20 /= j;
      v28 /= v100;
    }

    if (v20 != 1 && BYTE3(a3->width) == 1)
    {
      a1[4] = v20;
      a1[12] = v28;
      v102 = v20 * v28;
      v103 = *(a2 + 3);
      for (k = v28; v103 <= (v20 * k) >> 1; v102 = v20 * k)
      {
        while (v20 <= 1)
        {
          k >>= 1;
          a1[12] = k;
          v102 = v20 * k;
          if (v103 > (v20 * k) >> 1)
          {
            goto LABEL_170;
          }
        }

        LODWORD(v20) = v20 >> 1;
        a1[4] = v20;
      }

LABEL_170:
      a1[8] = v102;
      v28 /= k;
    }

    goto LABEL_52;
  }

  a1[2] = v20;
  a1[10] = i;
  v36 = v20 * i;
  v37 = *(a2 + 1);
  v38 = i;
  for (m = v20; v37 <= (m * v38) >> 1; v36 = m * v38)
  {
    while (m >= 2)
    {
      m >>= 1;
      a1[2] = m;
      v36 = m * v38;
      if (v37 > (m * v38) >> 1)
      {
        goto LABEL_66;
      }
    }

    v38 >>= 1;
    a1[10] = v38;
  }

LABEL_66:
  a1[6] = v36;
  v20 /= m;
  v28 = i / v38;
  if (v20 != 1)
  {
    goto LABEL_156;
  }

LABEL_52:
  v29 = a1[2];
  v30 = a1[3];
  v31 = a1[4];
  v32 = v29 * v27 * v30 * v31;
  if (v32 >= 4)
  {
    goto LABEL_96;
  }

  if (width_low && (v33 = *v13, *v13 >= 2))
  {
    do
    {
      v27 *= 2;
      v34 = v33;
      v33 >>= 1;
      v23 >>= 1;
      i *= 2;
      v28 *= 2;
      v35 = 2 * v32;
      if (v34 < 4)
      {
        break;
      }

      v109 = v32 >= 2;
      v32 *= 2;
    }

    while (!v109);
    *(a1 + 17) = v23;
    *v12 = v27;
    *v13 = v33;
    if (BYTE1(a3->width) != 1)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v35 = v29 * v27 * v30 * v31;
    if (BYTE1(a3->width) != 1)
    {
      goto LABEL_74;
    }
  }

  v40 = a1[10];
  if (v40 >= 2 && v35 <= 3)
  {
    do
    {
      v29 *= 2;
      v43 = v40;
      v40 >>= 1;
      v28 *= 2;
      v42 = 2 * v35;
      if (v43 < 4)
      {
        break;
      }

      v109 = v35 >= 2;
      v35 *= 2;
    }

    while (!v109);
    a1[2] = v29;
    a1[10] = v40;
    if (BYTE2(a3->width) != 1)
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

LABEL_74:
  v42 = v35;
  if (BYTE2(a3->width) != 1)
  {
    goto LABEL_85;
  }

LABEL_80:
  v44 = a1[11];
  if (v44 >= 2 && v42 <= 3)
  {
    do
    {
      v30 *= 2;
      v47 = v44;
      v44 >>= 1;
      v28 *= 2;
      v46 = 2 * v42;
      if (v47 < 4)
      {
        break;
      }

      v109 = v42 >= 2;
      v42 *= 2;
    }

    while (!v109);
    a1[3] = v30;
    a1[11] = v44;
    if (BYTE3(a3->width) != 1)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_85:
  v46 = v42;
  if (BYTE3(a3->width) != 1)
  {
    goto LABEL_96;
  }

LABEL_91:
  v48 = a1[12];
  if (v48 >= 2 && v46 <= 3)
  {
    do
    {
      v31 *= 2;
      v75 = v48;
      v48 >>= 1;
      v28 *= 2;
      if (v75 < 4)
      {
        break;
      }

      v109 = v46 >= 2;
      v46 *= 2;
    }

    while (!v109);
    a1[4] = v31;
    a1[12] = v48;
    v50 = i / v28;
    *(a1 + 18) = v50;
    *(a1 + 19) = v28;
    v51 = v28;
    if ((a3->width & 0x100) != 0)
    {
      goto LABEL_102;
    }

LABEL_98:
    a1[10] = v28;
    v52 = a1[2];
    v53 = v52 * v28;
    v54 = *(a2 + 1);
    v55 = v28;
    if (v54 < v52 * v28)
    {
      do
      {
        v55 >>= 1;
        v53 = v55 * v52;
      }

      while (v54 < v55 * v52);
      a1[10] = v55;
    }

    a1[6] = v53;
    v51 = v28 / v55;
    goto LABEL_102;
  }

LABEL_96:
  v50 = i / v28;
  *(a1 + 18) = v50;
  *(a1 + 19) = v28;
  if (v28 == 1)
  {
    goto LABEL_114;
  }

  v51 = v28;
  if ((a3->width & 0x100) == 0)
  {
    goto LABEL_98;
  }

LABEL_102:
  if (v51 != 1)
  {
    if ((a3->width & 0x10000) == 0)
    {
      a1[11] = v51;
      v56 = a1[3];
      v57 = v56 * v51;
      v58 = *(a2 + 2);
      v59 = v51;
      if (v58 < v56 * v51)
      {
        do
        {
          v59 >>= 1;
          v57 = v59 * v56;
        }

        while (v58 < v59 * v56);
        a1[11] = v59;
      }

      a1[7] = v57;
      v51 /= v59;
    }

    if (v51 != 1 && (a3->width & 0x1000000) == 0)
    {
      a1[12] = v51;
      v60 = a1[4];
      v61 = v60 * v51;
      v62 = *(a2 + 3);
      if (v62 < v60 * v51)
      {
        do
        {
          LODWORD(v51) = v51 >> 1;
          v61 = v51 * v60;
        }

        while (v62 < v51 * v60);
        a1[12] = v51;
      }

      a1[8] = v61;
    }
  }

LABEL_114:
  v129 = v12;
  v130 = v16;
  v63 = a1[6];
  v128 = v16 - 1;
  v64 = (a1[5] + v16 - 1) / a1[5];
  *(a1 + 20) = v64;
  v65 = *(a2 + 2);
  v127 = *(a2 + 1);
  v124 = v127 - 1;
  v66 = (v127 - 1 + v63) / v63;
  v126 = v64;
  a1[13] = v64;
  a1[14] = v66;
  v67 = BYTE1(a3->width);
  v68 = 44;
  if (BYTE1(a3->width))
  {
    v68 = 42;
    v69 = (v127 - 1 + v63) / v63;
  }

  else
  {
    v69 = 1;
  }

  if (BYTE1(a3->width))
  {
    v70 = 1;
  }

  else
  {
    v70 = (v127 - 1 + v63) / v63;
  }

  *&a1[v68] = v66;
  v71 = a1[7];
  v72 = v65;
  v123 = v65 - 1;
  v73 = (v65 - 1 + v71) / v71;
  a1[15] = v73;
  v134 = BYTE2(a3->width);
  v74 = a7;
  if (v134)
  {
    v69 = v69 * v73;
    *(a1 + 21) = v69;
  }

  else
  {
    v70 = v70 * v73;
    *(a1 + 22) = v70;
  }

  v76 = a1[8];
  v77 = *(a2 + 3);
  v122 = v77 - 1;
  v78 = (v77 - 1 + v76) / v76;
  a1[16] = v78;
  v133 = BYTE3(a3->width);
  if (v133)
  {
    v125 = v70;
    v79 = a3;
    v69 *= v78;
    *(a1 + 21) = v69;
    v80 = v31;
  }

  else
  {
    v79 = a3;
    v125 = v70 * v78;
    *(a1 + 22) = v70 * v78;
    v80 = 1;
  }

  v81 = width_low;
  if (width_low)
  {
    v82 = v27;
  }

  else
  {
    v82 = 1;
  }

  if (v67)
  {
    v83 = v29;
  }

  else
  {
    v83 = 1;
  }

  if (v134)
  {
    v84 = v30;
  }

  else
  {
    v84 = 1;
  }

  v85 = v28 * v50 * v23;
  if ((a4 & (a4 - 1)) != 0)
  {
    a4 = (1 << -__clz(a4 - 1)) >> 1;
  }

  if (v69 == 1 || (v86 = v74 >> (32 - __clz(v83 * v82 * v84 * v80 - 1)), v87 = a4 / v85, v88 = a4 / v85 * v86, v69 >= v88))
  {
    v92 = v81;
    v93 = v79;
    v89 = v129;
    v90 = v67;
    v94 = v127;
    result = v128;
    v97 = v134;
    v95 = v77;
    goto LABEL_192;
  }

  v69 = 1;
  *(a1 + 21) = 1;
  v89 = v129;
  v90 = v67;
  if (v67)
  {
    v109 = v88 >= 2;
    result = v128;
    v92 = v81;
    v93 = v79;
    if (v109)
    {
      v94 = v127;
      v95 = v77;
      while (v63 < v127)
      {
        if (v86 < 2)
        {
          a1[10] *= 2;
          v50 *= 2;
          *(a1 + 18) = v50;
          v87 >>= 1;
          v63 *= 2;
          a1[6] = v63;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }

        else
        {
          v29 *= 2;
          a1[2] = v29;
          v86 >>= 1;
          v63 *= 2;
          a1[6] = v63;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }
      }

      v96 = (v63 + v124) / v63;
      a1[14] = v96;
      *(a1 + 21) = v96;
      v69 = v96;
      v97 = v134;
      if (!v134)
      {
        goto LABEL_182;
      }

      goto LABEL_174;
    }

    v94 = v127;
    v95 = v77;
    a1[14] = v66;
    *(a1 + 21) = v66;
    v69 = (v127 - 1 + v63) / v63;
    v97 = v134;
    if (v134)
    {
LABEL_174:
      if (v87 * v86 >= 2)
      {
        while (v71 < v72)
        {
          if (v86 > 1)
          {
            v30 *= 2;
            a1[3] = v30;
            v86 >>= 1;
            v71 *= 2;
            a1[7] = v71;
            if (v87 * v86 <= 1)
            {
              break;
            }
          }

          else
          {
            a1[11] *= 2;
            v50 *= 2;
            *(a1 + 18) = v50;
            v87 >>= 1;
            v71 *= 2;
            a1[7] = v71;
            if (v87 * v86 <= 1)
            {
              break;
            }
          }
        }

        v73 = (v71 + v123) / v71;
      }

      a1[15] = v73;
      v69 = v69 * v73;
      *(a1 + 21) = v69;
    }
  }

  else
  {
    v92 = v81;
    v93 = v79;
    v94 = v127;
    result = v128;
    v95 = v77;
    v97 = v134;
    if (v134)
    {
      goto LABEL_174;
    }
  }

LABEL_182:
  if (v133)
  {
    if (v87 * v86 >= 2)
    {
      while (v76 < v95)
      {
        if (v86 > 1)
        {
          v31 *= 2;
          a1[4] = v31;
          v86 >>= 1;
          v76 *= 2;
          a1[8] = v76;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }

        else
        {
          a1[12] *= 2;
          v50 *= 2;
          *(a1 + 18) = v50;
          v87 >>= 1;
          v76 *= 2;
          a1[8] = v76;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }
      }

      v78 = (v76 + v122) / v76;
    }

    a1[16] = v78;
    v69 *= v78;
    *(a1 + 21) = v69;
  }

  v85 = v23 * v28 * v50;
LABEL_192:
  v105 = v125 * v126 * v69;
  v106 = 4;
  if (a6)
  {
    v106 = 6;
  }

  v107 = a5 << v106;
  if (v105 < 8 * a5)
  {
    v107 = 16;
    v105 = 1;
  }

  v108 = v105 * (v85 >> 5);
  if (v90)
  {
    v109 = v108 >= v107 || v85 >= a4;
    v110 = v130;
    v111 = v133;
    if (!v109)
    {
      do
      {
        if (v29 < 2)
        {
          break;
        }

        v29 >>= 1;
        a1[2] = v29;
        a1[10] *= 2;
        v50 *= 2;
        *(a1 + 18) = v50;
        v85 *= 2;
        v108 *= 2;
        if (v108 >= v107)
        {
          break;
        }
      }

      while (v85 < a4);
    }
  }

  else
  {
    v110 = v130;
    v111 = v133;
  }

  if (v97 && v108 < v107)
  {
    do
    {
      if (v85 >= a4)
      {
        break;
      }

      if (v30 < 2)
      {
        break;
      }

      v30 >>= 1;
      a1[3] = v30;
      a1[11] *= 2;
      v50 *= 2;
      *(a1 + 18) = v50;
      v85 *= 2;
      v108 *= 2;
    }

    while (v108 < v107);
  }

  if (v111 && v108 < v107)
  {
    do
    {
      if (v85 >= a4)
      {
        break;
      }

      if (v31 < 2)
      {
        break;
      }

      v31 >>= 1;
      a1[4] = v31;
      a1[12] *= 2;
      v50 *= 2;
      *(a1 + 18) = v50;
      v85 *= 2;
      v108 *= 2;
    }

    while (v108 < v107);
  }

  if (v92 && v108 < v107)
  {
    do
    {
      if (v85 >= a4)
      {
        break;
      }

      if (v27 < 2)
      {
        break;
      }

      v112 = 2 * *v13;
      *v13 = v112;
      v27 = (result + v112) / v112;
      *v89 = v27;
      v23 *= 2;
      *(a1 + 17) = v23;
      v85 *= 2;
      v108 *= 2;
    }

    while (v108 < v107);
  }

  v113 = v50 / a1[10];
  if (v90 && v29 != 1 && v113 != 1)
  {
    v114 = 2;
    do
    {
      v115 = v13[v114];
      if (v115 == 1 || *(&v93->width + v114) != 1)
      {
        ++v114;
      }

      else
      {
        v13[v114] = v115 >> 1;
        v113 >>= 1;
        a1[10] *= 2;
        v89[v114] *= 2;
        v29 = a1[2] >> 1;
        a1[2] = v29;
      }
    }

    while (v29 != 1 && v113 != 1 && v114 < 4);
  }

  if (v97)
  {
    v116 = a1[3];
    if (v116 != 1 && v113 != 1 && v111 != 0)
    {
      v120 = a1[12];
      do
      {
        if (v120 == 1)
        {
          break;
        }

        v120 >>= 1;
        a1[11] *= 2;
        a1[12] = v120;
        v121 = 2 * a1[4];
        v116 >>= 1;
        a1[3] = v116;
        a1[4] = v121;
        if (v116 == 1)
        {
          break;
        }

        v113 >>= 1;
      }

      while (v113 != 1);
    }
  }

  if (v92)
  {
    a1[21] = (a1[5] + result) / a1[5];
    if (!v90)
    {
      goto LABEL_241;
    }
  }

  else
  {
    a1[21] = v110;
    if (!v90)
    {
LABEL_241:
      a1[22] = v94;
      if (v97)
      {
        goto LABEL_242;
      }

      goto LABEL_249;
    }
  }

  a1[22] = (a1[6] + v124) / a1[6];
  if (v97)
  {
LABEL_242:
    a1[23] = (a1[7] + v123) / a1[7];
    if (!v111)
    {
      goto LABEL_243;
    }

    goto LABEL_250;
  }

LABEL_249:
  a1[23] = v72;
  if (!v111)
  {
LABEL_243:
    a1[24] = v95;
    if (v69 == 1)
    {
      goto LABEL_244;
    }

LABEL_251:
    v118 = 1;
    goto LABEL_252;
  }

LABEL_250:
  a1[24] = (a1[8] + v122) / a1[8];
  if (v69 != 1)
  {
    goto LABEL_251;
  }

LABEL_244:
  if (*(a1 + 20) == 1)
  {
    v118 = 0;
  }

  else
  {
    v118 = v92;
  }

LABEL_252:
  *(a1 + 192) = v118;
  v119 = v50 * v28 * v23;
  if (!v92)
  {
    v119 *= 4;
  }

  *(a1 + 23) = v119;
  return result;
}