uint64_t w16_sample_cmyk64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v104 = *(result + 80);
  v107 = *(result + 88);
  v117 = *(result + 120);
  v118 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v108 = *(result + 144) - 1;
  v9 = *(result + 260) - 1;
  v115 = *(result + 24);
  v113 = *(result + 32);
  v10 = *(result + 256);
  v103 = *(result + 188);
  v110 = *(result + 28);
  v111 = v6 + (v9 * v110) + 2 * (v10 - 1);
  v116 = v113 + (v9 * v115) + 8 * v10 - 16;
  v105 = *(result + 72);
  v106 = *(result + 64);
  v112 = v6;
  v114 = result;
  while (1)
  {
    if (a3 >= v105)
    {
      if (a3 <= v107)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        v23 = a3;
        v14 = a4;
        v15 = v106;
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v107;
        v19 = v18 - a3 + (v17 >> 1);
        v14 = a4;
        v15 = v106;
        if (v19 < 1)
        {
          goto LABEL_37;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v22 = v103 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v11 = *(result + 216);
      v12 = v105 - *(result + 224);
      v13 = a3 - v12 + (v11 >> 1);
      v14 = a4;
      v15 = v106;
      if (v13 < 1)
      {
        goto LABEL_37;
      }

      if (v13 >= v11)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v13) >> 32;
      }

      v22 = v103 | v16;
      v23 = v12 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v15)
    {
      if (a2 <= v104)
      {
        v28 = (a2 >> 26) & 0x3C;
        v27 = a2;
      }

      else
      {
        v29 = *(result + 192);
        v30 = *(result + 200) + v104;
        v31 = v30 - a2 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_37;
        }

        if (v31 < v29)
        {
          v22 = ((v22 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v103;
        }

        v27 = v30 - 0x1000000;
        v28 = 28;
      }
    }

    else
    {
      v24 = *(result + 192);
      v25 = v15 - *(result + 200);
      v26 = a2 - v25 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_37;
      }

      if (v26 < v24)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v26) >> 32) >> 15)) | v103;
      }

      v27 = v25 + 0x1000000;
      v28 = 32;
    }

    if (v22 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v41 = v14 - 1;
    a2 += v118;
    a3 += v117;
    ++v8;
    *++v108 = 0;
LABEL_38:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v32 = v23 >> 32;
  v33 = v27 >> 32;
  v34 = v113 + SHIDWORD(v23) * v115 + 8 * (v27 >> 32);
  v35 = *(result + 32);
  v36 = v116;
  if (v116 >= v34)
  {
    v36 = v34;
  }

  if (v36 < v35)
  {
    v36 = *(result + 32);
  }

  if (v6)
  {
    v37 = v6 + v32 * v110 + 2 * v33;
    v38 = *(result + 40);
    v39 = v111;
    v109 = v37;
    if (v111 >= v37)
    {
      v39 = v37;
    }

    if (v39 >= v38)
    {
      v38 = v39;
    }

    v40 = *v38;
  }

  else
  {
    v109 = 0;
    v40 = 0xFFFF;
  }

  v42 = *v36;
  if (!v7)
  {
    goto LABEL_43;
  }

  v43 = *(v7 + (v28 | v21));
LABEL_62:
  v52 = v43 & 0xF;
  v53 = v43 >> 8;
  v54 = HIBYTE(v43) & 3;
  switch(v52)
  {
    case 1:
      v96 = (v34 + SBYTE1(v43) * v115);
      if (v116 < v96)
      {
        v96 = v116;
      }

      if (v96 < v35)
      {
        v96 = v35;
      }

      v97 = *v96;
      v98 = -1;
      if (v6)
      {
        v99 = (v109 + v53 * v110);
        if (v111 < v99)
        {
          v99 = v111;
        }

        if (v99 < *(result + 40))
        {
          v99 = *(result + 40);
        }

        v98 = *v99;
      }

      v100 = &interpolate_cmyk64 + 16 * v54;
      v101 = v54 + 1;
      v42 = v42 - ((*v100 & v42) >> v101) + ((*v100 & v97) >> v101);
      v85 = v40 - ((*(v100 + 4) & v40) >> v101) + ((v98 & *(v100 + 4)) >> v101);
LABEL_117:
      v40 = v85;
      break;
    case 2:
      v86 = HIWORD(v43) << 56;
      v87 = (v34 + (v86 >> 53));
      if (v116 < v87)
      {
        v87 = v116;
      }

      if (v87 >= v35)
      {
        v35 = v87;
      }

      v88 = *v35;
      v89 = 0xFFFF;
      if (v6)
      {
        v90 = (v109 + (v86 >> 55));
        if (v111 < v90)
        {
          v90 = v111;
        }

        if (v90 < *(result + 40))
        {
          v90 = *(result + 40);
        }

        v89 = *v90;
      }

      v91 = (v43 >> 28) & 3;
      v92 = &interpolate_cmyk64 + 16 * v91;
      v93 = *v92;
      LOBYTE(v91) = v91 + 1;
      v94 = v42 - ((*v92 & v42) >> v91);
      LODWORD(v92) = *(v92 + 4);
      v83 = v40 - ((v92 & v40) >> v91);
      v95 = (v93 & v88) >> v91;
      v85 = (v89 & v92) >> v91;
      v42 = v94 + v95;
LABEL_105:
      LOWORD(v85) = v83 + v85;
      goto LABEL_117;
    case 3:
      v55 = HIWORD(v43) << 56;
      v56 = (v34 + (v55 >> 53));
      if (v116 < v56)
      {
        v56 = v116;
      }

      if (v56 < v35)
      {
        v56 = v35;
      }

      v57 = *v56;
      v58 = v34 + SBYTE1(v43) * v115;
      if (v116 >= v58)
      {
        v59 = (v34 + SBYTE1(v43) * v115);
      }

      else
      {
        v59 = v116;
      }

      if (v59 < v35)
      {
        v59 = v35;
      }

      v60 = *v59;
      v61 = (v58 + (v55 >> 53));
      if (v116 < v61)
      {
        v61 = v116;
      }

      if (v61 >= v35)
      {
        v35 = v61;
      }

      v62 = *v35;
      v63 = 0xFFFF;
      v64 = 0xFFFF;
      v65 = 0xFFFF;
      if (v6)
      {
        v66 = (v109 + (v55 >> 55));
        v67 = *(result + 40);
        if (v111 < v66)
        {
          v66 = v111;
        }

        if (v66 < v67)
        {
          v66 = v67;
        }

        v63 = *v66;
        v68 = v109 + SBYTE1(v43) * v110;
        if (v111 >= v68)
        {
          v69 = (v109 + SBYTE1(v43) * v110);
        }

        else
        {
          v69 = v111;
        }

        if (v69 < v67)
        {
          v69 = v67;
        }

        v64 = *v69;
        v70 = (v68 + (v55 >> 55));
        if (v111 < v70)
        {
          v70 = v111;
        }

        if (v70 < v67)
        {
          v70 = v67;
        }

        v65 = *v70;
      }

      v71 = &interpolate_cmyk64 + 16 * v54;
      v72 = *v71;
      v73 = v54 + 1;
      v74 = v42 - ((*v71 & v42) >> v73);
      LODWORD(v71) = *(v71 + 4);
      v75 = v74 + ((v72 & v60) >> v73);
      v76 = v40 - ((v71 & v40) >> v73) + ((v64 & v71) >> v73);
      v77 = v57 - ((v72 & v57) >> v73) + ((v72 & v62) >> v73);
      v78 = v63 - ((v63 & v71) >> v73) + ((v65 & v71) >> v73);
      v79 = (v43 >> 28) & 3;
      v80 = &interpolate_cmyk64 + 16 * v79;
      v81 = *v80;
      LOBYTE(v79) = v79 + 1;
      v82 = v75 - ((v75 & *v80) >> v79);
      LODWORD(v80) = *(v80 + 4);
      v83 = v76 - ((v76 & v80) >> v79);
      v84 = (v77 & v81) >> v79;
      v85 = (v78 & v80) >> v79;
      v42 = v82 + v84;
      goto LABEL_105;
  }

LABEL_43:
  v44 = 0;
  v45 = v22 >> 22;
  ++v8;
  v102 = v14;
  v46 = v14 - 1;
  a3 += v117;
  v47 = v107 - a3;
  a2 += v118;
  v48 = v104 - a2;
  while (1)
  {
    CMYK64(v8, v42, v40);
    *(v108 + 1 + v44) = v45;
    result = v114;
    v6 = v112;
    if (v46 == v44)
    {
      return result;
    }

    if (((v47 | v48 | (a3 - v105) | (a2 - v106)) & 0x8000000000000000) != 0)
    {
      v108 += v44 + 1;
      v41 = ~v44 + v102;
      goto LABEL_38;
    }

    v34 = v113 + SHIDWORD(a3) * v115 + 8 * (a2 >> 32);
    v35 = *(v114 + 32);
    v49 = v116;
    if (v116 >= v34)
    {
      v49 = (v113 + SHIDWORD(a3) * v115 + 8 * (a2 >> 32));
    }

    if (v49 < v35)
    {
      v49 = *(v114 + 32);
    }

    if (v112)
    {
      v50 = *(v114 + 40);
      v51 = v111;
      v109 = v112 + SHIDWORD(a3) * v110 + 2 * (a2 >> 32);
      if (v111 >= v109)
      {
        v51 = v112 + SHIDWORD(a3) * v110 + 2 * (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v40 = *v50;
    }

    else
    {
      v40 = 0xFFFF;
    }

    v42 = *v49;
    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v108 += v44 + 1;
        v14 = ~v44 + v102;
        v22 = -1;
        goto LABEL_62;
      }
    }

    ++v44;
    ++v8;
    a3 += v117;
    v47 -= v117;
    a2 += v118;
    v48 -= v118;
    LOBYTE(v45) = -1;
  }
}

unsigned int *CMYK64(unsigned int *result, unint64_t a2, int a3)
{
  v3 = a3 - (HIWORD(a2) + a2);
  v4 = a3 - (HIWORD(a2) + WORD1(a2));
  v5 = a3 - (HIWORD(a2) + WORD2(a2));
  *result = (((v5 & ~(v5 >> 31)) + (v4 & ~(v4 >> 31)) + 2 * (v3 & ~(v3 >> 31)) + 4 * (v4 & ~(v4 >> 31))) >> 3) | (a3 << 16);
  return result;
}

unsigned int *w16_sample_CMYK64(unsigned int *result, uint64_t a2, unint64_t a3, int a4)
{
  v6 = result;
  v7 = *(result + 5);
  v8 = *(result + 22);
  v105 = *(result + 10);
  v106 = *(result + 11);
  v118 = *(result + 15);
  v119 = *(result + 14);
  v9 = (*(result + 19) - 4);
  v109 = *(result + 18) - 1;
  v10 = result[65] - 1;
  v115 = *(result + 4);
  v116 = result[6];
  v11 = result[64];
  v104 = result[47];
  v111 = result[7];
  v112 = v7 + v10 * v111 + 2 * (v11 - 1);
  v117 = v115 + v10 * v116 + 8 * v11 - 16;
  v107 = *(result + 9);
  v108 = *(result + 8);
  v113 = result;
  v114 = v7;
  while (1)
  {
    if (a3 >= v107)
    {
      if (a3 <= v106)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v108;
      }

      else
      {
        v18 = *(v6 + 27);
        v19 = *(v6 + 28) + v106;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v108;
        if (v20 < 1)
        {
          goto LABEL_37;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(v6 + 29) * v20) >> 32;
        }

        v23 = v104 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(v6 + 27);
      v13 = v107 - *(v6 + 28);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v108;
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(v6 + 29) * v14) >> 32;
      }

      v23 = v104 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v105)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(v6 + 24);
        v31 = *(v6 + 25) + v105;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_37;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(v6 + 26) * v32) >> 32) >> 15)) | v104;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(v6 + 24);
      v26 = v16 - *(v6 + 25);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_37;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(v6 + 26) * v27) >> 32) >> 15)) | v104;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v42 = v15 - 1;
    a2 += v119;
    a3 += v118;
    ++v9;
    *++v109 = 0;
LABEL_38:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v115 + SHIDWORD(v24) * v116 + 8 * (v28 >> 32);
  v36 = *(v6 + 4);
  v37 = v117;
  if (v117 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(v6 + 4);
  }

  if (v7)
  {
    v38 = v7 + v33 * v111 + 2 * v34;
    v39 = *(v6 + 5);
    v40 = v112;
    v110 = v38;
    if (v112 >= v38)
    {
      v40 = v38;
    }

    if (v40 >= v39)
    {
      v39 = v40;
    }

    v41 = bswap32(*v39) >> 16;
  }

  else
  {
    v110 = 0;
    v41 = 0xFFFF;
  }

  v43 = ((bswap32(v37[2]) >> 16) << 32) | ((bswap32(v37[3]) >> 16) << 48) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16);
  if (!v8)
  {
    goto LABEL_43;
  }

  v44 = *(v8 + (v29 | v22));
LABEL_62:
  v53 = v44 & 0xF;
  v54 = HIBYTE(v44) & 3;
  switch(v53)
  {
    case 1:
      v96 = (v35 + SBYTE1(v44) * v116);
      if (v117 < v96)
      {
        v96 = v117;
      }

      if (v96 >= v36)
      {
        v36 = v96;
      }

      v97 = ((bswap32(v36[2]) >> 16) << 32) | ((bswap32(v36[3]) >> 16) << 48) | bswap32(v36[1]) & 0xFFFF0000 | (bswap32(*v36) >> 16);
      v98 = 0xFFFF;
      if (v7)
      {
        v99 = (v110 + SBYTE1(v44) * v111);
        if (v112 < v99)
        {
          v99 = v112;
        }

        if (v99 < *(v6 + 5))
        {
          v99 = *(v6 + 5);
        }

        v98 = bswap32(*v99) >> 16;
      }

      v100 = &interpolate_cmyk64 + 16 * v54;
      v101 = *v100;
      v102 = v54 + 1;
      v94 = v43 - ((*v100 & v43) >> v102);
      LODWORD(v100) = *(v100 + 4);
      v83 = v41 - ((v100 & v41) >> v102);
      v95 = (v101 & v97) >> v102;
      v85 = (v98 & v100) >> v102;
      goto LABEL_116;
    case 2:
      v86 = HIWORD(v44) << 56;
      v87 = (v35 + (v86 >> 53));
      if (v117 < v87)
      {
        v87 = v117;
      }

      if (v87 >= v36)
      {
        v36 = v87;
      }

      v88 = ((bswap32(v36[2]) >> 16) << 32) | ((bswap32(v36[3]) >> 16) << 48) | bswap32(v36[1]) & 0xFFFF0000 | (bswap32(*v36) >> 16);
      v89 = 0xFFFF;
      if (v7)
      {
        v90 = (v110 + (v86 >> 55));
        if (v112 < v90)
        {
          v90 = v112;
        }

        if (v90 < *(v6 + 5))
        {
          v90 = *(v6 + 5);
        }

        v89 = bswap32(*v90) >> 16;
      }

      v91 = (v44 >> 28) & 3;
      v92 = &interpolate_cmyk64 + 16 * v91;
      v93 = *v92;
      LOBYTE(v91) = v91 + 1;
      v94 = v43 - ((*v92 & v43) >> v91);
      LODWORD(v92) = *(v92 + 4);
      v83 = v41 - ((v92 & v41) >> v91);
      v95 = (v93 & v88) >> v91;
      v85 = (v89 & v92) >> v91;
LABEL_116:
      v43 = v94 + v95;
      goto LABEL_117;
    case 3:
      v55 = HIWORD(v44) << 56;
      v56 = (v35 + (v55 >> 53));
      if (v117 < v56)
      {
        v56 = v117;
      }

      if (v56 < v36)
      {
        v56 = v36;
      }

      v57 = ((bswap32(v56[2]) >> 16) << 32) | ((bswap32(v56[3]) >> 16) << 48) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16);
      v58 = v35 + SBYTE1(v44) * v116;
      if (v117 >= v58)
      {
        v59 = (v35 + SBYTE1(v44) * v116);
      }

      else
      {
        v59 = v117;
      }

      if (v59 < v36)
      {
        v59 = v36;
      }

      v60 = ((bswap32(v59[2]) >> 16) << 32) | ((bswap32(v59[3]) >> 16) << 48) | bswap32(v59[1]) & 0xFFFF0000 | (bswap32(*v59) >> 16);
      v61 = (v58 + (v55 >> 53));
      if (v117 < v61)
      {
        v61 = v117;
      }

      if (v61 >= v36)
      {
        v36 = v61;
      }

      v62 = ((bswap32(v36[2]) >> 16) << 32) | ((bswap32(v36[3]) >> 16) << 48) | bswap32(v36[1]) & 0xFFFF0000 | (bswap32(*v36) >> 16);
      v63 = 0xFFFF;
      v64 = 0xFFFF;
      v65 = 0xFFFF;
      if (v7)
      {
        v66 = (v110 + (v55 >> 55));
        v67 = *(v6 + 5);
        if (v112 < v66)
        {
          v66 = v112;
        }

        if (v66 < v67)
        {
          v66 = *(v6 + 5);
        }

        v65 = bswap32(*v66) >> 16;
        v68 = v110 + SBYTE1(v44) * v111;
        if (v112 >= v68)
        {
          v69 = (v110 + SBYTE1(v44) * v111);
        }

        else
        {
          v69 = v112;
        }

        if (v69 < v67)
        {
          v69 = *(v6 + 5);
        }

        v64 = bswap32(*v69) >> 16;
        v70 = (v68 + (v55 >> 55));
        if (v112 < v70)
        {
          v70 = v112;
        }

        if (v70 < v67)
        {
          v70 = *(v6 + 5);
        }

        v63 = bswap32(*v70) >> 16;
      }

      v71 = &interpolate_cmyk64 + 16 * v54;
      v72 = *v71;
      v73 = v54 + 1;
      v74 = v43 - ((*v71 & v43) >> v73);
      LODWORD(v71) = *(v71 + 4);
      v75 = v74 + ((v72 & v60) >> v73);
      v76 = v41 - ((v71 & v41) >> v73) + ((v64 & v71) >> v73);
      v77 = v57 - ((v72 & v57) >> v73) + ((v72 & v62) >> v73);
      v78 = v65 - ((v65 & v71) >> v73) + ((v63 & v71) >> v73);
      v79 = (v44 >> 28) & 3;
      v80 = &interpolate_cmyk64 + 16 * v79;
      v81 = *v80;
      LOBYTE(v79) = v79 + 1;
      v82 = v75 - ((v75 & *v80) >> v79);
      LODWORD(v80) = *(v80 + 4);
      v83 = v76 - ((v76 & v80) >> v79);
      v84 = (v77 & v81) >> v79;
      v85 = (v78 & v80) >> v79;
      v43 = v82 + v84;
LABEL_117:
      v41 = (v83 + v85);
      break;
  }

LABEL_43:
  v45 = 0;
  v46 = v23 >> 22;
  ++v9;
  v103 = v15;
  v47 = v15 - 1;
  a3 += v118;
  v48 = v106 - a3;
  a2 += v119;
  v49 = v105 - a2;
  while (1)
  {
    result = CMYK64(v9, v43, v41);
    *(v109 + 1 + v45) = v46;
    v6 = v113;
    v7 = v114;
    if (v47 == v45)
    {
      return result;
    }

    if (((v48 | v49 | (a3 - v107) | (a2 - v108)) & 0x8000000000000000) != 0)
    {
      v109 += v45 + 1;
      v42 = ~v45 + v103;
      goto LABEL_38;
    }

    v35 = v115 + SHIDWORD(a3) * v116 + 8 * (a2 >> 32);
    v36 = *(v113 + 4);
    v50 = v117;
    if (v117 >= v35)
    {
      v50 = (v115 + SHIDWORD(a3) * v116 + 8 * (a2 >> 32));
    }

    if (v50 < v36)
    {
      v50 = *(v113 + 4);
    }

    if (v114)
    {
      v51 = *(v113 + 5);
      v52 = v112;
      v110 = v114 + SHIDWORD(a3) * v111 + 2 * (a2 >> 32);
      if (v112 >= v110)
      {
        v52 = v114 + SHIDWORD(a3) * v111 + 2 * (a2 >> 32);
      }

      if (v52 >= v51)
      {
        v51 = v52;
      }

      v41 = bswap32(*v51) >> 16;
    }

    else
    {
      v41 = 0xFFFF;
    }

    v43 = ((bswap32(v50[2]) >> 16) << 32) | ((bswap32(v50[3]) >> 16) << 48) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
    if (v8)
    {
      v44 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v44 & 0xF) != 0)
      {
        v109 += v45 + 1;
        v15 = ~v45 + v103;
        v23 = -1;
        goto LABEL_62;
      }
    }

    ++v45;
    ++v9;
    a3 += v118;
    v48 -= v118;
    a2 += v119;
    v49 -= v119;
    LOBYTE(v46) = -1;
  }
}

uint64_t w16_sample_rgba64(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v73 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0xFFFF000000000000;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v74 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v73 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v73 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v74 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v73;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v75;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v73;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v70)
      {
        v70 = v14;
      }

      if (v70 < v37)
      {
        v70 = v37;
      }

      v71 = interpolate_16161616_21862[v49];
      v72 = v49 + 1;
      v64 = v39 - ((v71 & v39) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v39 = v64 + v69;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 53));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v67 = (v40 >> 28) & 3;
      v68 = interpolate_16161616_21862[v67];
      v63 = v67 + 1;
      v64 = v39 - ((v68 & v39) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 53));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = *v51;
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 53));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_16161616_21862[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v75 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = ((v39 | v13) >> 32) & 0xFFFF0000 | ((2 * v39 + WORD1(v39) + 4 * WORD1(v39) + ((v39 | v13) >> 32)) >> 3);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v44 | v45 | (a3 - v6) | (a2 - v74)) < 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = *v47;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t w16_sample_RGBA64(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v71 = *(result + 80);
  v72 = *(result + 88);
  v7 = *(result + 112);
  v8 = *(result + 120);
  v69 = *(result + 188);
  v9 = *(result + 152) - 4;
  v10 = *(result + 144) - 1;
  v11 = *(result + 32);
  if (*(result + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFF000000000000;
  }

  v13 = v11 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v70 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v72)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v70;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v72;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_37;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v70;
        v23 = v69 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v6 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_37;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v70;
      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v25 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v69;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v7;
    a3 += v8;
    v9 += 4;
    *++v10 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v71)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v71;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v69;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v23 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v11 + SHIDWORD(v24) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v13 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v13;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
  if (v5)
  {
    v40 = *(v5 + (v30 | v22));
LABEL_53:
    v48 = v40 & 0xF;
    v49 = HIBYTE(v40) & 3;
    switch(v48)
    {
      case 1:
        v67 = (v36 + SBYTE1(v40) * v4);
        if (v13 < v67)
        {
          v67 = v13;
        }

        if (v67 < v37)
        {
          v67 = v37;
        }

        v68 = interpolate_16161616_21862[v49];
        v63 = v39 - ((v68 & v39) >> (v49 + 1));
        v64 = ((((bswap32(v67[2]) >> 16) << 32) | ((bswap32(v67[3]) >> 16) << 48) | bswap32(v67[1]) & 0xFFFF0000 | (bswap32(*v67) >> 16)) & v68) >> (v49 + 1);
LABEL_80:
        v39 = v63 + v64;
        break;
      case 2:
        v65 = (v36 + ((HIWORD(v40) << 56) >> 53));
        if (v13 < v65)
        {
          v65 = v13;
        }

        if (v65 < v37)
        {
          v65 = v37;
        }

        v66 = (v40 >> 28) & 3;
        v39 = v39 - ((interpolate_16161616_21862[v66] & v39) >> (v66 + 1)) + (((((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & interpolate_16161616_21862[v66]) >> (v66 + 1));
        break;
      case 3:
        v50 = HIWORD(v40) << 56;
        v51 = (v36 + (v50 >> 53));
        if (v13 < v51)
        {
          v51 = v13;
        }

        if (v51 < v37)
        {
          v51 = v37;
        }

        v52 = ((bswap32(v51[2]) >> 16) << 32) | ((bswap32(v51[3]) >> 16) << 48) | bswap32(v51[1]) & 0xFFFF0000 | (bswap32(*v51) >> 16);
        v53 = v36 + SBYTE1(v40) * v4;
        if (v13 >= v53)
        {
          v54 = (v36 + SBYTE1(v40) * v4);
        }

        else
        {
          v54 = v13;
        }

        if (v54 < v37)
        {
          v54 = v37;
        }

        v55 = ((bswap32(v54[2]) >> 16) << 32) | ((bswap32(v54[3]) >> 16) << 48) | bswap32(v54[1]) & 0xFFFF0000 | (bswap32(*v54) >> 16);
        v56 = (v53 + (v50 >> 53));
        if (v13 < v56)
        {
          v56 = v13;
        }

        if (v56 < v37)
        {
          v56 = v37;
        }

        v57 = interpolate_16161616_21862[v49];
        v58 = v49 + 1;
        v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
        v60 = v52 - ((v57 & v52) >> v58) + (((((bswap32(v56[2]) >> 16) << 32) | ((bswap32(v56[3]) >> 16) << 48) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16)) & v57) >> v58);
        v61 = (v40 >> 28) & 3;
        v62 = interpolate_16161616_21862[v61];
        LOBYTE(v61) = v61 + 1;
        v63 = v59 - ((v59 & v62) >> v61);
        v64 = (v60 & v62) >> v61;
        goto LABEL_80;
    }
  }

  v41 = 0;
  v42 = 0;
  v43 = v23 >> 22;
  a3 += v8;
  v44 = v72 - a3;
  a2 += v7;
  v45 = v71 - a2;
  while (1)
  {
    *(v9 + 4 + 4 * v42) = ((v39 | v12) >> 32) & 0xFFFF0000 | ((2 * v39 + WORD1(v39) + 4 * WORD1(v39) + ((v39 | v12) >> 32)) >> 3);
    *(v10 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v44 | v45 | (a3 - v6) | (a2 - v70)) < 0)
    {
      v10 += v42 + 1;
      v9 = v9 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v11 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v13 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v13;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v10 += v42 + 1;
        v9 = v9 - v41 + 4;
        a4 += ~v42;
        v23 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v8;
    v44 -= v8;
    a2 += v7;
    v45 -= v7;
    LOBYTE(v43) = -1;
  }
}

uint64_t w16_sample_rgb48(uint64_t result, unint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v70 = *(result + 64);
  v71 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v69 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v69 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v70)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v70 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v69;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v71)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v71;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v69;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v28 >> 32;
  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = v34 + 6 * v33;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v34 + 6 * v33);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37 | (*(v37 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v39 = *(v6 + (v29 | v22));
LABEL_50:
  v47 = v39 & 0xF;
  v48 = HIBYTE(v39) & 3;
  switch(v47)
  {
    case 1:
      v66 = (v35 + SBYTE1(v39) * v5);
      if (v13 < v66)
      {
        v66 = v13;
      }

      if (v66 < v36)
      {
        v66 = v36;
      }

      v67 = interpolate_16161616_21862[v48];
      v68 = v48 + 1;
      v62 = v38 - ((v67 & v38) >> v68);
      v65 = ((*v66 | (*(v66 + 2) << 32) | 0xFFFF000000000000) & v67) >> v68;
LABEL_78:
      v38 = v62 + v65;
      break;
    case 2:
      v63 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v63)
      {
        v63 = v13;
      }

      if (v63 < v36)
      {
        v63 = v36;
      }

      v58 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v64 = (v39 >> 28) & 3;
      v60 = interpolate_16161616_21862[v64];
      v61 = v64 + 1;
      v62 = v38 - ((v60 & v38) >> v61);
LABEL_72:
      v65 = (v58 & v60) >> v61;
      goto LABEL_78;
    case 3:
      v49 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v49)
      {
        v49 = v13;
      }

      if (v49 < v36)
      {
        v49 = v36;
      }

      v50 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
      v51 = v35 + SBYTE1(v39) * v5;
      if (v13 >= v51)
      {
        v52 = (v35 + SBYTE1(v39) * v5);
      }

      else
      {
        v52 = v13;
      }

      if (v52 < v36)
      {
        v52 = v36;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = (v51 + 6 * SBYTE2(v39));
      if (v13 < v54)
      {
        v54 = v13;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = interpolate_16161616_21862[v48];
      v56 = v48 + 1;
      v57 = v38 - ((v55 & v38) >> v56) + ((v53 & v55) >> v56);
      v58 = v50 - ((v55 & v50) >> v56) + (((*v54 | (*(v54 + 2) << 32) | 0xFFFF000000000000) & v55) >> v56);
      v59 = (v39 >> 28) & 3;
      v60 = interpolate_16161616_21862[v59];
      v61 = v59 + 1;
      v62 = v57 - ((v57 & v60) >> v61);
      goto LABEL_72;
  }

LABEL_36:
  v40 = 0;
  v41 = 0;
  v42 = v23 >> 22;
  a3 += v10;
  v43 = v8 - a3;
  a2 += v9;
  v44 = v71 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v41) = HIDWORD(v38) & 0xFFFF0000 | ((2 * v38 + WORD1(v38) + 4 * WORD1(v38) + WORD2(v38)) >> 3);
    *(v12 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v7) | (a2 - v70)) & 0x8000000000000000) != 0)
    {
      v12 += v41 + 1;
      v11 = v11 - v40 + 4;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v45 = v4 + SHIDWORD(a3) * v5;
    v35 = v45 + 6 * SHIDWORD(a2);
    v36 = *(result + 32);
    if (v13 >= v35)
    {
      v46 = (v45 + 6 * SHIDWORD(a2));
    }

    else
    {
      v46 = v13;
    }

    if (v46 < v36)
    {
      v46 = *(result + 32);
    }

    v38 = *v46 | (*(v46 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v39 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v12 += v41 + 1;
        v11 = v11 - v40 + 4;
        a4 += ~v41;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v41;
    v40 -= 4;
    a3 += v10;
    v43 -= v10;
    a2 += v9;
    v44 -= v9;
    LOBYTE(v42) = -1;
  }
}

uint64_t w16_sample_RGB48(uint64_t result, unint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 64);
  v73 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v71 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v72;
        v26 = v73;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v72;
        v26 = v73;
        v23 = v71 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v72;
      v26 = v73;
      v23 = v71 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v25 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v26)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v26;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_34;
  }

  if (v34 < v32)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v35 = v30 >> 32;
  v36 = v4 + SHIDWORD(v24) * v5;
  v37 = v36 + 6 * v35;
  v38 = *(result + 32);
  if (v13 >= v37)
  {
    v39 = (v36 + 6 * v35);
  }

  else
  {
    v39 = v13;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = (bswap32(*v39) >> 16) | ((bswap32(v39[1]) >> 16) << 16) | ((bswap32(v39[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v41 = *(v6 + (v31 | v22));
LABEL_50:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v5);
      if (v13 < v68)
      {
        v68 = v13;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_16161616_21862[v50];
      v70 = v50 + 1;
      v64 = v40 - ((v69 & v40) >> v70);
      v67 = (((bswap32(*v68) >> 16) | ((bswap32(v68[1]) >> 16) << 16) | ((bswap32(v68[2]) >> 16) << 32) | 0xFFFF000000000000) & v69) >> v70;
LABEL_78:
      v40 = v64 + v67;
      break;
    case 2:
      v65 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v60 = (bswap32(*v65) >> 16) | ((bswap32(v65[1]) >> 16) << 16) | ((bswap32(v65[2]) >> 16) << 32) | 0xFFFF000000000000;
      v66 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v66];
      v63 = v66 + 1;
      v64 = v40 - ((v62 & v40) >> v63);
LABEL_72:
      v67 = (v60 & v62) >> v63;
      goto LABEL_78;
    case 3:
      v51 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v51)
      {
        v51 = v13;
      }

      if (v51 < v38)
      {
        v51 = v38;
      }

      v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
      v53 = v37 + SBYTE1(v41) * v5;
      if (v13 >= v53)
      {
        v54 = (v37 + SBYTE1(v41) * v5);
      }

      else
      {
        v54 = v13;
      }

      if (v54 < v38)
      {
        v54 = v38;
      }

      v55 = (bswap32(*v54) >> 16) | ((bswap32(v54[1]) >> 16) << 16) | ((bswap32(v54[2]) >> 16) << 32) | 0xFFFF000000000000;
      v56 = (v53 + 6 * SBYTE2(v41));
      if (v13 < v56)
      {
        v56 = v13;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = interpolate_16161616_21862[v50];
      v58 = v50 + 1;
      v59 = v40 - ((v57 & v40) >> v58) + ((v55 & v57) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((((bswap32(*v56) >> 16) | ((bswap32(v56[1]) >> 16) << 16) | ((bswap32(v56[2]) >> 16) << 32) | 0xFFFF000000000000) & v57) >> v58);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_72;
  }

LABEL_36:
  v42 = 0;
  v43 = 0;
  v44 = v23 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v73 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = HIDWORD(v40) & 0xFFFF0000 | ((2 * v40 + WORD1(v40) + 4 * WORD1(v40) + WORD2(v40)) >> 3);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v37 = v47 + 6 * SHIDWORD(a2);
    v38 = *(result + 32);
    if (v13 >= v37)
    {
      v48 = (v47 + 6 * SHIDWORD(a2));
    }

    else
    {
      v48 = v13;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v41 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t w16_sample_w16(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v133 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v132 = *(result + 112);
    if (v5 > v6)
    {
      v132 = v5 % v6;
    }
  }

  else
  {
    v132 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v134 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v131 = v11;
  }

  else
  {
    v131 = 0;
  }

  v127 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -65536;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v126 = *(result + 188);
  v17 = v9 + (v15 * v133) + 2 * (v16 - 1);
  v18 = v134 + (v15 * v4) + 2 * v16 - 2;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 >= v130)
    {
      v22 = a4;
      if (a3 <= v129)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v129;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_60;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v126 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_60;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v126 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v128)
    {
      if (a2 <= v127)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v127;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_60;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v126;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v128 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_60;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v126;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v41 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v42 = (v6 & ((v35 % v6) >> 63)) + v35 % v6;
        if (v41 >= v7)
        {
          v43 = v7;
        }

        else
        {
          v43 = 0;
        }

        v31 = v41 - v43;
        if (v42 >= v6)
        {
          v44 = v6;
        }

        else
        {
          v44 = 0;
        }

        v35 = v42 - v44;
        v28 += v31;
        v36 += v35;
      }

      v45 = v31 >> 32;
      v46 = v134 + SHIDWORD(v31) * v4;
      v47 = (v35 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v48 = (v46 + v47);
      v49 = *(result + 32);
      if (v18 >= v46 + v47)
      {
        v50 = (v46 + v47);
      }

      else
      {
        v50 = v18;
      }

      if (v50 < v49)
      {
        v50 = *(result + 32);
      }

      v51 = *v50;
      if (v9)
      {
        v52 = v9 + v45 * v133 + v47;
        v53 = *(result + 40);
        if (v17 >= v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = v17;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v51 |= *v53 << 16;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_65:
              *(v12 + 4) = v51 | v14;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v57 = v22;
              v58 = 0;
              a2 += v5;
              v59 = v127 - a2;
              a3 += v10;
              v60 = v129 - a3;
              v61 = -4;
              while (1)
              {
                if (((v60 | v59 | (a3 - v130) | (a2 - v128)) & 0x8000000000000000) != 0)
                {
                  v13 += v58 + 1;
                  v12 -= v61;
                  v55 = ~v58 + v57;
                  goto LABEL_61;
                }

                if (v6)
                {
                  v62 = (v7 & ((v28 + v131) >> 63)) + v28 + v131;
                  v63 = (v6 & ((v36 + v132) >> 63)) + v36 + v132;
                  if (v62 >= v7)
                  {
                    v64 = v7;
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v28 = v62 - v64;
                  if (v63 >= v6)
                  {
                    v65 = v6;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v36 = v63 - v65;
                  v66 = v28;
                  v67 = v36;
                }

                else
                {
                  v66 = a3;
                  v67 = a2;
                }

                v68 = v66 >> 32;
                v69 = (v67 >> 31) & 0xFFFFFFFFFFFFFFFELL;
                v48 = (v134 + SHIDWORD(v66) * v4 + v69);
                v49 = *(result + 32);
                if (v18 >= v48)
                {
                  v70 = v48;
                }

                else
                {
                  v70 = v18;
                }

                if (v70 < v49)
                {
                  v70 = *(result + 32);
                }

                v51 = *v70;
                if (v9)
                {
                  v52 = v9 + v68 * v133 + v69;
                  v71 = *(result + 40);
                  if (v17 >= v52)
                  {
                    v72 = v52;
                  }

                  else
                  {
                    v72 = v17;
                  }

                  if (v72 >= v71)
                  {
                    v71 = v72;
                  }

                  v51 |= *v71 << 16;
                }

                if (v8)
                {
                  v56 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v56 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v58 + 8) = v51 | v14;
                *(v13 + v58++ + 2) = -1;
                v61 -= 4;
                a2 += v5;
                v59 -= v5;
                a3 += v10;
                v60 -= v10;
                if (v57 - 1 == v58)
                {
                  return result;
                }
              }

              v13 += v58 + 1;
              v12 -= v61;
              v22 = ~v58 + v57;
              v30 = -1;
LABEL_95:
              v73 = v56 & 0xF;
              v74 = v56 >> 8;
              v75 = HIBYTE(v56) & 3;
              if (v73 != 1)
              {
                break;
              }

              LODWORD(v115) = SBYTE1(v56);
              if (v6)
              {
                v116 = v74 << 56;
                v117 = v28 + (v116 >> 24);
                v118 = v7 & (v117 >> 63);
                if (v118 + v117 >= v7)
                {
                  v119 = v7;
                }

                else
                {
                  v119 = 0;
                }

                v115 = (v118 + (v116 >> 24) - v119) >> 32;
              }

              v120 = (v48 + v115 * v4);
              if (v18 < v120)
              {
                v120 = v18;
              }

              if (v120 < v49)
              {
                v120 = v49;
              }

              v121 = *v120;
              if (v9)
              {
                v122 = (v52 + v115 * v133);
                if (v17 < v122)
                {
                  v122 = v17;
                }

                if (v122 < *(result + 40))
                {
                  v122 = *(result + 40);
                }

                v121 |= *v122 << 16;
              }

              v123 = interpolate_1616[v75];
              v113 = v51 - ((v123 & v51) >> (v75 + 1));
              v114 = (v123 & v121) >> (v75 + 1);
LABEL_167:
              v51 = v113 + v114;
            }

            if (v73 == 2)
            {
              v103 = SBYTE2(v56);
              if (v6)
              {
                v104 = HIWORD(v56) << 56;
                v105 = v36 + (v104 >> 24);
                v106 = v6 & (v105 >> 63);
                if (v106 + v105 >= v6)
                {
                  v107 = v6;
                }

                else
                {
                  v107 = 0;
                }

                v103 = (v106 + (v104 >> 24) - v107) >> 32;
              }

              v108 = &v48[v103];
              if (v18 < v108)
              {
                v108 = v18;
              }

              if (v108 < v49)
              {
                v108 = v49;
              }

              v109 = *v108;
              if (v9)
              {
                v110 = (v52 + 2 * v103);
                if (v17 < v110)
                {
                  v110 = v17;
                }

                if (v110 < *(result + 40))
                {
                  v110 = *(result + 40);
                }

                v109 |= *v110 << 16;
              }

              v111 = (v56 >> 28) & 3;
              v112 = interpolate_1616[v111];
              LOBYTE(v111) = v111 + 1;
              v113 = v51 - ((v112 & v51) >> v111);
              v114 = (v112 & v109) >> v111;
              goto LABEL_167;
            }

            if (v73 == 3)
            {
              v76 = HIBYTE(v56) & 3;
              v125 = v30;
              v124 = v22;
              LODWORD(v77) = SBYTE1(v56);
              v78 = SBYTE2(v56);
              if (v6)
              {
                v79 = v74 << 56;
                v80 = HIWORD(v56) << 56;
                v81 = v28 + (v79 >> 24);
                v82 = v36 + (v80 >> 24);
                v83 = v7 & (v81 >> 63);
                v84 = v6 & (v82 >> 63);
                v85 = v84 + v82;
                if (v83 + v81 >= v7)
                {
                  v86 = v7;
                }

                else
                {
                  v86 = 0;
                }

                if (v85 >= v6)
                {
                  v87 = v6;
                }

                else
                {
                  v87 = 0;
                }

                v77 = (v83 + (v79 >> 24) - v86) >> 32;
                v78 = (v84 + (v80 >> 24) - v87) >> 32;
              }

              v88 = &v48[v78];
              if (v18 < v88)
              {
                v88 = v18;
              }

              if (v88 < v49)
              {
                v88 = v49;
              }

              v89 = *v88;
              v90 = v48 + v77 * v4;
              if (v18 >= v90)
              {
                v91 = (v48 + v77 * v4);
              }

              else
              {
                v91 = v18;
              }

              if (v91 < v49)
              {
                v91 = v49;
              }

              v92 = *v91;
              v93 = (v90 + 2 * v78);
              if (v18 < v93)
              {
                v93 = v18;
              }

              if (v93 >= v49)
              {
                v49 = v93;
              }

              v94 = *v49;
              if (v9)
              {
                v95 = v78;
                v96 = (v52 + 2 * v78);
                v97 = *(result + 40);
                if (v17 < v96)
                {
                  v96 = v17;
                }

                if (v96 < v97)
                {
                  v96 = *(result + 40);
                }

                v89 |= *v96 << 16;
                v98 = (v52 + v77 * v133);
                if (v17 >= v98)
                {
                  v99 = v98;
                }

                else
                {
                  v99 = v17;
                }

                if (v99 < v97)
                {
                  v99 = *(result + 40);
                }

                v92 |= *v99 << 16;
                v100 = &v98[v95];
                if (v17 < v100)
                {
                  v100 = v17;
                }

                if (v100 < v97)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 16;
              }

              v101 = interpolate_1616[v76];
              v102 = v51 - ((v101 & v51) >> (v76 + 1)) + ((v101 & v92) >> (v76 + 1));
              v51 = v102 - ((v102 & interpolate_1616[(v56 >> 28) & 3]) >> (((v56 >> 28) & 3) + 1)) + (((v89 - ((v101 & v89) >> (v76 + 1)) + ((v101 & v94) >> (v76 + 1))) & interpolate_1616[(v56 >> 28) & 3]) >> (((v56 >> 28) & 3) + 1));
              v22 = v124;
              v30 = v125;
            }
          }
        }
      }

      else
      {
        v52 = 0;
        if (!v8)
        {
          goto LABEL_65;
        }
      }

      v56 = *(v8 + (v37 | v29));
      goto LABEL_95;
    }

LABEL_60:
    v55 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_61:
    a4 = v55;
  }

  while (v55);
  return result;
}

uint64_t w16_sample_W16(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v135 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v134 = *(result + 112);
    if (v5 > v6)
    {
      v134 = v5 % v6;
    }
  }

  else
  {
    v134 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v136 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v133 = v11;
  }

  else
  {
    v133 = 0;
  }

  v132 = *(result + 80);
  v130 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -65536;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v128 = *(result + 188);
  v17 = v9 + (v15 * v135) + 2 * (v16 - 1);
  v18 = v136 + (v15 * v4) + 2 * v16 - 2;
  v129 = *(result + 64);
  v131 = *(result + 72);
  do
  {
    if (a3 < v131)
    {
      v19 = *(result + 216);
      v20 = v131 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v132;
      v30 = v128 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v130)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v130;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v132;
      v30 = v128 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v129;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v129;
    v33 = v132;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v128;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v128;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 31;
      v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
      v50 = v136 + v47 * v4 + (v48 & 0xFFFFFFFFFFFFFFFELL);
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v136 + v47 * v4 + (v48 & 0xFFFFFFFFFFFFFFFELL));
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = bswap32(*v52) >> 16;
      if (v9)
      {
        v54 = v9 + v47 * v135 + v49;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= bswap32(*v55) & 0xFFFF0000;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 4) = v53 | v14;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v132 - a2;
              a3 += v10;
              v62 = v130 - a3;
              v63 = -4;
              while (1)
              {
                if (((v62 | v61 | (a3 - v131) | (a2 - v129)) & 0x8000000000000000) != 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v133) >> 63)) + v28 + v133;
                  v65 = (v6 & ((v38 + v134) >> 63)) + v38 + v134;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v68 >> 32;
                v71 = (v69 >> 31) & 0xFFFFFFFFFFFFFFFELL;
                v50 = v136 + SHIDWORD(v68) * v4 + v71;
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = bswap32(*v72) >> 16;
                if (v9)
                {
                  v54 = v9 + v70 * v135 + v71;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= bswap32(*v73) & 0xFFFF0000;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v60 + 8) = v53 | v14;
                *(v13 + v60++ + 2) = -1;
                v63 -= 4;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v75 = v58 & 0xF;
              v76 = v58 >> 8;
              v77 = HIBYTE(v58) & 3;
              if (v75 != 1)
              {
                break;
              }

              LODWORD(v117) = SBYTE1(v58);
              if (v6)
              {
                v118 = v76 << 56;
                v119 = v28 + (v118 >> 24);
                v120 = v7 & (v119 >> 63);
                if (v120 + v119 >= v7)
                {
                  v121 = v7;
                }

                else
                {
                  v121 = 0;
                }

                v117 = (v120 + (v118 >> 24) - v121) >> 32;
              }

              v122 = (v50 + v117 * v4);
              if (v18 < v122)
              {
                v122 = v18;
              }

              if (v122 < v51)
              {
                v122 = v51;
              }

              v123 = bswap32(*v122) >> 16;
              if (v9)
              {
                v124 = (v54 + v117 * v135);
                if (v17 < v124)
                {
                  v124 = v17;
                }

                if (v124 < *(result + 40))
                {
                  v124 = *(result + 40);
                }

                v123 |= bswap32(*v124) & 0xFFFF0000;
              }

              v125 = interpolate_1616[v77];
              v115 = v53 - ((v125 & v53) >> (v77 + 1));
              v116 = (v125 & v123) >> (v77 + 1);
LABEL_168:
              v53 = v115 + v116;
            }

            if (v75 == 2)
            {
              v105 = SBYTE2(v58);
              if (v6)
              {
                v106 = HIWORD(v58) << 56;
                v107 = v38 + (v106 >> 24);
                v108 = v6 & (v107 >> 63);
                if (v108 + v107 >= v6)
                {
                  v109 = v6;
                }

                else
                {
                  v109 = 0;
                }

                v105 = (v108 + (v106 >> 24) - v109) >> 32;
              }

              v110 = (v50 + 2 * v105);
              if (v18 < v110)
              {
                v110 = v18;
              }

              if (v110 < v51)
              {
                v110 = v51;
              }

              v111 = bswap32(*v110) >> 16;
              if (v9)
              {
                v112 = (v54 + 2 * v105);
                if (v17 < v112)
                {
                  v112 = v17;
                }

                if (v112 < *(result + 40))
                {
                  v112 = *(result + 40);
                }

                v111 |= bswap32(*v112) & 0xFFFF0000;
              }

              v113 = (v58 >> 28) & 3;
              v114 = interpolate_1616[v113];
              LOBYTE(v113) = v113 + 1;
              v115 = v53 - ((v114 & v53) >> v113);
              v116 = (v114 & v111) >> v113;
              goto LABEL_168;
            }

            if (v75 == 3)
            {
              v78 = HIBYTE(v58) & 3;
              v127 = v30;
              v126 = v22;
              LODWORD(v79) = SBYTE1(v58);
              v80 = SBYTE2(v58);
              if (v6)
              {
                v81 = v76 << 56;
                v82 = HIWORD(v58) << 56;
                v83 = v28 + (v81 >> 24);
                v84 = v38 + (v82 >> 24);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v79 = (v85 + (v81 >> 24) - v88) >> 32;
                v80 = (v86 + (v82 >> 24) - v89) >> 32;
              }

              v90 = (v50 + 2 * v80);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = bswap32(*v90) >> 16;
              v92 = v50 + v79 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v79 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = bswap32(*v93) >> 16;
              v95 = (v92 + 2 * v80);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = bswap32(*v51) >> 16;
              if (v9)
              {
                v97 = v80;
                v98 = (v54 + 2 * v80);
                v99 = *(result + 40);
                if (v17 < v98)
                {
                  v98 = v17;
                }

                if (v98 < v99)
                {
                  v98 = *(result + 40);
                }

                v91 |= bswap32(*v98) & 0xFFFF0000;
                v100 = (v54 + v79 * v135);
                if (v17 >= v100)
                {
                  v101 = v100;
                }

                else
                {
                  v101 = v17;
                }

                if (v101 < v99)
                {
                  v101 = *(result + 40);
                }

                v94 |= bswap32(*v101) & 0xFFFF0000;
                v102 = &v100[v97];
                if (v17 < v102)
                {
                  v102 = v17;
                }

                if (v102 < v99)
                {
                  v102 = *(result + 40);
                }

                v96 |= bswap32(*v102) & 0xFFFF0000;
              }

              v103 = interpolate_1616[v78];
              v104 = v53 - ((v103 & v53) >> (v78 + 1)) + ((v103 & v94) >> (v78 + 1));
              v53 = v104 - ((v104 & interpolate_1616[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v103 & v91) >> (v78 + 1)) + ((v103 & v96) >> (v78 + 1))) & interpolate_1616[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v126;
              v30 = v127;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

uint64_t w16_sample_W8(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v87 = *(result + 80);
  v89 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -16777216;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = (v5 + (v15 - 1) + (v14 * v7));
  v86 = *(result + 188);
  v17 = v4 + v15 + (v14 * v6) - 1;
  v88 = *(result + 64);
  v90 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v88;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v89;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v88;
        v27 = v86 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v90 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_43;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v88;
      v27 = v86 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v29 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v86;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v87)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v87;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v86;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = v4 + v38 * v6;
  v40 = v39 + (v33 >> 32);
  v41 = *(result + 32);
  if (v17 >= v40)
  {
    v42 = (v39 + (v33 >> 32));
  }

  else
  {
    v42 = v17;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v34 | v26));
LABEL_69:
    v56 = v47 & 0xF;
    v57 = HIBYTE(v47) & 3;
    switch(v56)
    {
      case 1:
        v80 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v80)
        {
          v80 = v17;
        }

        if (v80 < v41)
        {
          v80 = v41;
        }

        v81 = *v80;
        if (v5)
        {
          v82 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v82)
          {
            v82 = v16;
          }

          if (v82 < *(result + 40))
          {
            v82 = *(result + 40);
          }

          v81 |= *v82 << 24;
        }

        v83 = interpolate_8888_21865[v57];
        v84 = v57 + 1;
        v75 = v43 - ((v83 & v43) >> v84);
        v76 = (v83 & v81) >> v84;
        break;
      case 2:
        v77 = (v40 + SBYTE2(v47));
        if (v17 < v77)
        {
          v77 = v17;
        }

        if (v77 < v41)
        {
          v77 = v41;
        }

        v78 = *v77;
        if (v5)
        {
          v79 = (v44 + SBYTE2(v47));
          if (v16 < v79)
          {
            v79 = v16;
          }

          if (v79 < *(result + 40))
          {
            v79 = *(result + 40);
          }

          v78 |= *v79 << 24;
        }

        v43 = v43 - ((interpolate_8888_21865[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v47 >> 28) & 3] & v78) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v85 = HIBYTE(v47) & 3;
        v58 = (v40 + SBYTE2(v47));
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v58 < v41)
        {
          v58 = v41;
        }

        v59 = *v58;
        v60 = v40 + SBYTE1(v47) * v6;
        if (v17 >= v60)
        {
          v61 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v61 = v17;
        }

        if (v61 < v41)
        {
          v61 = v41;
        }

        v62 = *v61;
        v63 = (v60 + SBYTE2(v47));
        if (v17 < v63)
        {
          v63 = v17;
        }

        if (v63 < v41)
        {
          v63 = v41;
        }

        v64 = *v63;
        if (v5)
        {
          v65 = (v44 + SBYTE2(v47));
          v66 = *(result + 40);
          if (v16 < v65)
          {
            v65 = v16;
          }

          if (v65 < v66)
          {
            v65 = *(result + 40);
          }

          v59 |= *v65 << 24;
          v67 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v67)
          {
            v68 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v68 = v16;
          }

          if (v68 < v66)
          {
            v68 = *(result + 40);
          }

          v62 |= *v68 << 24;
          v69 = (v67 + SBYTE2(v47));
          if (v16 < v69)
          {
            v69 = v16;
          }

          if (v69 < v66)
          {
            v69 = *(result + 40);
          }

          v64 |= *v69 << 24;
        }

        v70 = interpolate_8888_21865[v85];
        v71 = v43 - ((v70 & v43) >> (v85 + 1)) + ((v70 & v62) >> (v85 + 1));
        v72 = v59 - ((v70 & v59) >> (v85 + 1)) + ((v70 & v64) >> (v85 + 1));
        v73 = (v47 >> 28) & 3;
        v74 = interpolate_8888_21865[v73];
        LOBYTE(v73) = v73 + 1;
        v75 = v71 - ((v71 & v74) >> v73);
        v76 = (v72 & v74) >> v73;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v75 + v76;
    goto LABEL_47;
  }

  v44 = v5 + v38 * v7 + (v33 >> 32);
  v45 = *(result + 40);
  if (v16 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v16;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= *v45 << 24;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  *(v11 + 4) = (v43 | v13) & 0xFF000000 | ((v43 | v13) >> 8) & 0xFFFF0000 | (v43 << 8) | v43;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v87 - a2;
    a3 += v9;
    v50 = v89 - a3;
    v51 = -4;
    while (((v50 | v49 | (a3 - v90) | (a2 - v88)) & 0x8000000000000000) == 0)
    {
      v40 = v4 + SHIDWORD(a3) * v6 + (a2 >> 32);
      v41 = *(result + 32);
      if (v17 >= v40)
      {
        v52 = (v4 + SHIDWORD(a3) * v6 + (a2 >> 32));
      }

      else
      {
        v52 = v17;
      }

      if (v52 < v41)
      {
        v52 = *(result + 32);
      }

      v43 = *v52;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v53 = *(result + 40);
        if (v16 >= v44)
        {
          v54 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v54 = v16;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v43 |= *v53 << 24;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          v11 -= v51;
          a4 += ~v48;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v11 + 4 * v48 + 8) = (v43 | v13) & 0xFF000000 | ((v43 | v13) >> 8) & 0xFFFF0000 | (v43 << 8) | v43;
      v55 = v12 + v48++;
      v51 -= 4;
      *(v55 + 2) = -1;
      a2 += v10;
      v49 -= v10;
      a3 += v9;
      v50 -= v9;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    v11 -= v51;
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t w16_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v7 = *(v6 + 56);
  v8 = *v2;
  v9 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v10 = *(v7 + 16 * v8 + 8 * v9 + 4 * (*(v2 + 6) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, v15, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) == 0x1000000)
  {
    if (*(v4 + 16))
    {
      v12 = w16_shade_radial_W;
    }

    else if (*(v4 + 24))
    {
      v12 = w16_shade_conic_W;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = w16_shade_axial_W;
    }

    else
    {
      v12 = w16_shade_custom_W;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 3, 1, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 960)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 3, 1, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(4 * v13 + 32, 0x8C254358uLL);
    if (v14)
    {
      v36[1] = v14;
      v13 = *(&v17 + 1) * v17;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v15[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v15[0]) = *v6;
  HIDWORD(v15[0]) = DWORD2(v15[0]);
  w16_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void w16_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v473 = *MEMORY[0x1E69E9840];
  v460 = *(a1 + 4);
  v459 = v460;
  v3 = (v460 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a2 + 184);
    v471 = *(a1 + 136);
    v472 = v6;
    v9 = *(a2 + 104);
    v468 = *(a2 + 96);
    v469 = v9;
    v10 = *(a1 + 24);
    v11 = *(a1 + 28);
    v12 = *(a1 + 16);
    v470 = *(a1 + 20);
    v13 = *(a1 + 12);
    v467 = *(a1 + 8);
    v461 = a2;
    v14 = *(a2 + 16);
    v15 = (v14 + 6) * v3;
    if (v15 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v19;
      v20 = v461;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v17 = &v450 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v19 = 0;
      v20 = v461;
    }

    v458 = a1;
    v464 = a3;
    v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v22 = v21 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[20] = v22;
    if (v14)
    {
      v23 = 4 * v3;
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 + v23;
    v25 = v7 + (v10 - 1) * v11;
    v26 = v11 >> 1;
    v20[18] = v21;
    v20[19] = v24;
    if (v472)
    {
      v27 = v458;
      v28 = *(v458 + 32) >> 1;
      v29 = (v472 + 2 * v28 * v12 + 2 * v13);
      v465 = v28 - v459;
      v30 = v459;
      v31 = 1;
    }

    else
    {
      v29 = 0;
      v465 = 0;
      v31 = 0;
      v27 = v458;
      v30 = v459;
    }

    v466 = (v8 * 65535.9);
    v32 = v25 + 2 * v470;
    v33 = (v7 + 2 * v26 * v12 + 2 * v13);
    v463 = v26 - v30;
    v34 = *(v27 + 104);
    v35 = *(v27 + 108);
    v36 = *(v27 + 2);
    if (v36 == 6 || v36 == 1)
    {
      v38 = v460;
      v37 = v461;
      v39 = v468;
      v40 = v469;
      if (v471)
      {
        v451 = v26;
        v454 = v19;
        v41 = 0;
        v42 = 0;
        v43 = *(v458 + 124);
        v44 = v471 + v43 * v35 + v34;
        v30 = v459;
        v462 = v43 - v459;
        goto LABEL_32;
      }

LABEL_596:
      if (v19)
      {
        free(v19);
      }

      return;
    }

    v454 = v19;
    v38 = v460;
    v37 = v461;
    v40 = v469;
    if (v471)
    {
      v452 = v32;
      v453 = v31;
      shape_enum_clip_alloc(v19, v18, v471, 1, 1, 1, v34, v35, v460, v467);
      if (v45)
      {
        v471 = v45;
        v451 = v26;
        v46 = 0;
        v47 = ((v14 * v3 + 15) & 0xFFFFFFF0);
        if (!v14)
        {
          v47 = 4 * v3;
        }

        v48 = v459;
        v462 = -v459;
        v44 = (v24 + v47 + 16);
        v49 = v472;
        v39 = v468;
        goto LABEL_21;
      }

LABEL_595:
      v19 = v454;
      goto LABEL_596;
    }

    v451 = v26;
    v44 = 0;
    v41 = 0;
    v462 = 0;
    v42 = 0;
    v39 = v468;
LABEL_32:
    v56 = v466 ^ 0xFFFF;
    v455 = -v30;
    v456 = (v38 - 1);
    v450 = v456 + 1;
    v452 = v32;
    v457 = (v32 - 2);
    v453 = v31;
    v57 = 2 * v31;
    v58 = v41;
LABEL_33:
    LODWORD(v470) = v42;
    v471 = v58;
    v59 = *v37;
    v468 = v39;
    v469 = v40;
    v59(v37, v39, v40, v38);
    v60 = *(v37 + 160);
    v61 = *(v37 + 144);
    v62 = *(v37 + 8);
    if (v62 == *(v37 + 12))
    {
      if (v466 == 0xFFFF)
      {
        v49 = v472;
        v65 = v470;
      }

      else
      {
        v63 = v38;
        v64 = *(v37 + 144);
        v49 = v472;
        v65 = v470;
        do
        {
          if (*v64)
          {
            *v60 = (*v60 - ((*v60 * v56 + ((*v60 * v56) >> 16) + 1) >> 16)) | ((HIWORD(*v60) - ((HIWORD(*v60) * v56 + ((HIWORD(*v60) * v56) >> 16) + 1) >> 16)) << 16);
          }

          ++v64;
          v60 += 2;
          --v63;
        }

        while (v63);
        v60 += 2 * v455;
        v61 += v456 + v455 + 1;
      }
    }

    else
    {
      v66 = *(v37 + 152);
      v67 = HIWORD(v62) & 0x3F;
      if (v67 == 16)
      {
        v49 = v472;
        v65 = v470;
        v75 = 0;
        if (v466 == 0xFFFF)
        {
          do
          {
            if (v61[v75])
            {
              *&v60[2 * v75] = *(v66 + 4 * v75);
            }

            ++v75;
          }

          while (v38 != v75);
        }

        else
        {
          do
          {
            if (v61[v75])
            {
              v76 = *(v66 + 4 * v75);
              *&v60[2 * v75] = (v76 - ((v76 * v56 + ((v76 * v56) >> 16) + 1) >> 16)) | ((HIWORD(*(v66 + 4 * v75)) - ((HIWORD(*(v66 + 4 * v75)) * v56 + ((HIWORD(*(v66 + 4 * v75)) * v56) >> 16) + 1) >> 16)) << 16);
            }

            ++v75;
          }

          while (v38 != v75);
        }
      }

      else
      {
        v49 = v472;
        v65 = v470;
        if (v67 == 32)
        {
          if (v466 == 0xFFFF)
          {
            v80 = 0;
            v81 = (v66 + 4);
            do
            {
              if (v61[v80])
              {
                v82 = *v81;
                if (*v81 <= 0.0)
                {
                  v86 = 0;
                }

                else
                {
                  v83 = ((v82 * 65535.0) + 0.5);
                  v84 = *(v81 - 1);
                  if (v82 > 1.0)
                  {
                    v83 = 0xFFFF;
                    v82 = 1.0;
                  }

                  v85 = v83;
                  if (v84 <= v82)
                  {
                    if (v84 >= 0.0)
                    {
                      v85 = ((v84 * 65535.0) + 0.5);
                    }

                    else
                    {
                      v85 = 0;
                    }
                  }

                  v86 = v85 | (v83 << 16);
                }

                *&v60[2 * v80] = v86;
              }

              v81 += 2;
              ++v80;
            }

            while (v38 != v80);
          }

          else
          {
            v68 = 0;
            v69 = (v66 + 4);
            do
            {
              if (v61[v68])
              {
                v70 = *v69;
                if (*v69 <= 0.0)
                {
                  v74 = 0;
                }

                else
                {
                  v71 = ((v70 * 65535.0) + 0.5);
                  v72 = *(v69 - 1);
                  if (v70 > 1.0)
                  {
                    v71 = 0xFFFF;
                    v70 = 1.0;
                  }

                  v73 = v71;
                  if (v72 <= v70)
                  {
                    if (v72 >= 0.0)
                    {
                      v73 = ((v72 * 65535.0) + 0.5);
                    }

                    else
                    {
                      v73 = 0;
                    }
                  }

                  v74 = (v73 - ((v73 * v56 + ((v73 * v56) >> 16) + 1) >> 16)) | ((v71 - ((v71 * v56 + ((v71 * v56) >> 16) + 1) >> 16)) << 16);
                }

                *&v60[2 * v68] = v74;
              }

              v69 += 2;
              ++v68;
            }

            while (v38 != v68);
          }
        }

        else if (v466 == 0xFFFF)
        {
          v87 = 0;
          do
          {
            if (v61[v87])
            {
              *&v60[2 * v87] = *(v66 + 4 * v87) & 0xFF000000 | (*(v66 + 4 * v87) >> 8) & 0xFFFF0000 | (*(v66 + 4 * v87) << 8) | *(v66 + 4 * v87);
            }

            ++v87;
          }

          while (v38 != v87);
        }

        else
        {
          v77 = 0;
          do
          {
            if (v61[v77])
            {
              v78 = *(v66 + 4 * v77);
              v79 = HIBYTE(*(v66 + 4 * v77)) | (HIBYTE(*(v66 + 4 * v77)) << 8);
              *&v60[2 * v77] = ((v78 | (v78 << 8)) - (((v78 | (v78 << 8)) * v56 + (((v78 | (v78 << 8)) * v56) >> 16) + 1) >> 16)) | ((v79 - ((v79 * v56 + ((v79 * v56) >> 16) + 1) >> 16)) << 16);
            }

            ++v77;
          }

          while (v38 != v77);
        }
      }
    }

    switch(v464)
    {
      case 0:
        v88 = v44 != 0;
        v89 = v38;
        v90 = v44;
        if (v49)
        {
          v91 = v468;
          do
          {
            v92 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v92 = ((*v90 * v92 + ((*v90 * v92) >> 8) + 1) >> 8);
              }

              if (v92)
              {
                if (v92 == 255)
                {
                  LOWORD(v93) = 0;
                  *v33 = 0;
                }

                else
                {
                  v94 = *v29;
                  v95 = v92 | (v92 << 8);
                  *v33 -= (v95 * *v33 + ((v95 * *v33) >> 16) + 1) >> 16;
                  v93 = v94 - ((v95 * v94 + ((v95 * v94) >> 16) + 1) >> 16);
                }

                *v29 = v93;
              }
            }

            ++v61;
            v90 += v88;
            ++v33;
            ++v29;
            --v89;
          }

          while (v89);
        }

        else
        {
          v91 = v468;
          do
          {
            v406 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v406 = ((*v90 * v406 + ((*v90 * v406) >> 8) + 1) >> 8);
              }

              if (v406)
              {
                if (v406 == 255)
                {
                  LOWORD(v407) = 0;
                }

                else
                {
                  v407 = *v33 - ((257 * v406 * *v33 + ((257 * v406 * *v33) >> 16) + 1) >> 16);
                }

                *v33 = v407;
              }
            }

            ++v61;
            v90 += v88;
            ++v33;
            --v89;
          }

          while (v89);
        }

        v392 = v462;
        goto LABEL_528;
      case 1:
        v243 = *v61;
        if (v49)
        {
          v244 = v61 + 1;
          v245 = v29 - 1;
          v246 = v33 - 1;
          v247 = v38;
          if (v44)
          {
            v196 = v469;
            do
            {
              if (v243)
              {
                v248 = *v44 * v243 + ((*v44 * v243) >> 8) + 1;
                if (BYTE1(v248))
                {
                  if (BYTE1(v248) == 255)
                  {
                    v249 = *v60;
                    v250 = *v60;
                  }

                  else
                  {
                    v251 = 257 * (v248 >> 8);
                    v252 = v251;
                    v253 = ~v251;
                    v254 = *v60 * v252 + v246[1] * v253;
                    v255 = v254 + HIWORD(v254) + 1;
                    v250 = HIWORD(*v60) * (v253 | v252) + ((HIWORD(*v60) * (v253 | v252)) >> 16) + 1;
                    v249 = HIWORD(v255);
                  }

                  v246[1] = v249;
                  v245[1] = HIWORD(v250);
                }
              }

              v256 = *v244++;
              v243 = v256;
              v60 += 2;
              ++v44;
              ++v245;
              ++v246;
              --v247;
            }

            while (v247);
            v44 += v462;
          }

          else
          {
            v196 = v469;
            do
            {
              if (v243)
              {
                if (v243 == 255)
                {
                  v431 = *v60;
                  v432 = *v60;
                }

                else
                {
                  v433 = v243 | (v243 << 8);
                  v432 = 0xFFFF * HIWORD(*v60) + ((0xFFFF * HIWORD(*v60)) >> 16) + 1;
                  v431 = (*v60 * v433 + v246[1] * (v433 ^ 0xFFFF) + ((*v60 * v433 + v246[1] * (v433 ^ 0xFFFFu)) >> 16) + 1) >> 16;
                }

                v246[1] = v431;
                v245[1] = HIWORD(v432);
              }

              v434 = *v244++;
              v243 = v434;
              v60 += 2;
              ++v245;
              ++v246;
              --v247;
            }

            while (v247);
            v44 = 0;
          }

          v429 = &v245[v465];
          v430 = &v246[v463];
          goto LABEL_566;
        }

        if (v44)
        {
          v408 = v61 + 1;
          v409 = v38;
          v196 = v469;
          do
          {
            if (v243)
            {
              v410 = *v44 * v243 + ((*v44 * v243) >> 8) + 1;
              v411 = v457;
              v394 = *(v458 + 40);
              if (v457 >= v33)
              {
                v411 = v33;
              }

              if (v411 >= v394)
              {
                v394 = v411;
              }

              if (BYTE1(v410))
              {
                if (BYTE1(v410) == 255)
                {
                  v412 = *v60;
                }

                else
                {
                  v413 = 257 * (v410 >> 8);
                  v412 = (*v60 * v413 + *v394 * ~v413 + ((*v60 * v413 + *v394 * ~v413) >> 16) + 1) >> 16;
                }

                *v394 = v412;
              }
            }

            else
            {
              v394 = v33;
            }

            v414 = *v408++;
            v243 = v414;
            v60 += 2;
            ++v44;
            v33 = v394 + 1;
            --v409;
          }

          while (v409);
          goto LABEL_543;
        }

        v444 = *(v458 + 40);
        v445 = v61 + 1;
        v446 = v38;
        v196 = v469;
        do
        {
          v394 = v457;
          if (v457 >= v33)
          {
            v394 = v33;
          }

          if (v394 < v444)
          {
            v394 = v444;
          }

          if (v243)
          {
            if (v243 == 255)
            {
              v447 = *v60;
            }

            else
            {
              v448 = v243 | (v243 << 8);
              v447 = (*v60 * v448 + *v394 * (v448 ^ 0xFFFF) + ((*v60 * v448 + *v394 * (v448 ^ 0xFFFFu)) >> 16) + 1) >> 16;
            }

            *v394 = v447;
          }

          v449 = *v445++;
          v243 = v449;
          v60 += 2;
          v33 = v394 + 1;
          --v446;
        }

        while (v446);
        goto LABEL_590;
      case 2:
        v191 = *v61;
        if (v49)
        {
          v192 = v61 + 1;
          v193 = v29 - 1;
          v194 = v33 - 1;
          v195 = v38;
          if (v44)
          {
            v196 = v469;
            while (1)
            {
              if (!v191)
              {
                goto LABEL_247;
              }

              v197 = *v44 * v191 + ((*v44 * v191) >> 8) + 1;
              if (!BYTE1(v197))
              {
                goto LABEL_247;
              }

              if (BYTE1(v197) == 255)
              {
                v198 = *v60;
                v199 = HIWORD(*v60);
                if (v199)
                {
                  if (v199 == 0xFFFF)
                  {
                    v194[1] = v198;
                    LOWORD(v198) = -1;
                  }

                  else
                  {
                    v208 = v199 ^ 0xFFFF;
                    v209 = v208 * v194[1];
                    v210 = (v208 * v193[1] + ((v208 * v193[1]) >> 16) + 1) >> 16;
                    v194[1] = v198 + ((v209 + HIWORD(v209) + 1) >> 16);
                    v198 = v210 + HIWORD(v198);
                  }

                  goto LABEL_246;
                }
              }

              else
              {
                v200 = HIWORD(*v60);
                v201 = (257 * (v197 >> 8)) ^ 0xFFFF;
                v202 = v200 * v201 + ((v200 * v201) >> 16) + 1;
                v203 = *v60 - ((*v60 * v201 + ((*v60 * v201) >> 16) + 1) >> 16);
                v204 = v203 | ((v200 - HIWORD(v202)) << 16);
                if (v204 >= 0x10000)
                {
                  v205 = HIWORD(v204) ^ 0xFFFF;
                  v206 = v205 * v194[1] + ((v205 * v194[1]) >> 16) + 1;
                  v207 = (v205 * v193[1] + ((v205 * v193[1]) >> 16) + 1) >> 16;
                  v194[1] = v203 + HIWORD(v206);
                  v198 = v207 + HIWORD(v204);
LABEL_246:
                  v193[1] = v198;
                }
              }

LABEL_247:
              v211 = *v192++;
              v191 = v211;
              v60 += 2;
              ++v44;
              ++v193;
              ++v194;
              if (!--v195)
              {
                v44 += v462;
                goto LABEL_556;
              }
            }
          }

          v196 = v469;
          while (1)
          {
            if (v191)
            {
              if (v191 == 255)
              {
                v415 = *v60;
                v416 = HIWORD(*v60);
                if (v416)
                {
                  if (v416 == 0xFFFF)
                  {
                    v194[1] = v415;
                    LOWORD(v415) = -1;
                  }

                  else
                  {
                    v425 = v416 ^ 0xFFFF;
                    v426 = v425 * v194[1];
                    v427 = (v425 * v193[1] + ((v425 * v193[1]) >> 16) + 1) >> 16;
                    v194[1] = v415 + ((v426 + HIWORD(v426) + 1) >> 16);
                    v415 = v427 + HIWORD(v415);
                  }

                  goto LABEL_553;
                }
              }

              else
              {
                v417 = HIWORD(*v60);
                v418 = (257 * v191) ^ 0xFFFF;
                v419 = v417 * v418 + ((v417 * v418) >> 16) + 1;
                v420 = *v60 - ((*v60 * v418 + ((*v60 * v418) >> 16) + 1) >> 16);
                v421 = v420 | ((v417 - HIWORD(v419)) << 16);
                if (v421 >= 0x10000)
                {
                  v422 = HIWORD(v421) ^ 0xFFFF;
                  v423 = v422 * v194[1] + ((v422 * v194[1]) >> 16) + 1;
                  v424 = (v422 * v193[1] + ((v422 * v193[1]) >> 16) + 1) >> 16;
                  v194[1] = v420 + HIWORD(v423);
                  v415 = v424 + HIWORD(v421);
LABEL_553:
                  v193[1] = v415;
                }
              }
            }

            v428 = *v192++;
            v191 = v428;
            v60 += 2;
            ++v193;
            ++v194;
            if (!--v195)
            {
              v44 = 0;
LABEL_556:
              v429 = &v193[v465];
              v430 = &v194[v463];
LABEL_566:
              v33 = v430 + 1;
              v29 = v429 + 1;
LABEL_592:
              v91 = v468;
LABEL_491:
              if (!--v467)
              {
                v55 = v471;
                if (v471)
                {
LABEL_594:
                  free(v55);
                }

                goto LABEL_595;
              }

              v58 = 0;
              v42 = v65 + 1;
              v39 = *(v37 + 128) + v91;
              v40 = *(v37 + 136) + v196;
              if (v471)
              {
                v46 = v42;
                v48 = v459;
LABEL_21:
                v50 = v465 + v48;
                while (1)
                {
                  while (1)
                  {
                    v51 = *(v44 - 4);
                    v52 = v51 - v46;
                    if (v51 <= v46)
                    {
                      break;
                    }

                    v467 -= v52;
                    if (v467 < 1)
                    {
LABEL_30:
                      v55 = v471;
                      goto LABEL_594;
                    }

                    v39 += *(v37 + 128) * v52;
                    v40 += *(v37 + 136) * v52;
                    v33 += v451 * v52;
                    v54 = v50 * v52;
                    if (!v49)
                    {
                      v54 = 0;
                    }

                    v29 += v54;
                    v46 = v51;
                  }

                  v42 = v46;
                  if (v46 < *(v44 - 3) + v51)
                  {
                    break;
                  }

                  v53 = shape_enum_clip_scan(v471, v44 - 4);
                  v49 = v472;
                  if (!v53)
                  {
                    goto LABEL_30;
                  }
                }

                v30 = v459;
                v31 = v453;
                v32 = v452;
                v41 = v471;
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }
        }

        v393 = v61 + 1;
        v394 = v33 - 1;
        v395 = v38;
        if (v44)
        {
          v196 = v469;
          while (1)
          {
            if (!v191)
            {
              goto LABEL_515;
            }

            v396 = *v44 * v191 + ((*v44 * v191) >> 8) + 1;
            if (!BYTE1(v396))
            {
              goto LABEL_515;
            }

            if (BYTE1(v396) == 255)
            {
              v397 = *v60;
              v398 = HIWORD(*v60);
              if (v398)
              {
                if (v398 != 0xFFFF)
                {
                  v399 = v394[1];
                  v400 = v398 ^ 0xFFFF;
                  goto LABEL_513;
                }

                goto LABEL_514;
              }
            }

            else
            {
              v401 = HIWORD(*v60);
              v402 = (257 * (v396 >> 8)) ^ 0xFFFF;
              v403 = v401 * v402 + ((v401 * v402) >> 16) + 1;
              v397 = *v60 - ((*v60 * v402 + ((*v60 * v402) >> 16) + 1) >> 16);
              v404 = v397 | ((v401 - HIWORD(v403)) << 16);
              if (v404 >= 0x10000)
              {
                v399 = v394[1];
                v400 = ~v404 >> 16;
LABEL_513:
                v397 += (v400 * v399 + ((v400 * v399) >> 16) + 1) >> 16;
LABEL_514:
                v394[1] = v397;
              }
            }

LABEL_515:
            v405 = *v393++;
            v191 = v405;
            v60 += 2;
            ++v44;
            ++v394;
            if (!--v395)
            {
LABEL_543:
              v44 += v462;
LABEL_591:
              v33 = &v394[v463 + 1];
              v29 += v465;
              goto LABEL_592;
            }
          }
        }

        v196 = v469;
        while (1)
        {
          if (v191)
          {
            if (v191 == 255)
            {
              v435 = *v60;
              v436 = HIWORD(*v60);
              if (v436)
              {
                if (v436 != 0xFFFF)
                {
                  v437 = v394[1];
                  v438 = v436 ^ 0xFFFF;
                  goto LABEL_575;
                }

                goto LABEL_576;
              }
            }

            else
            {
              v439 = HIWORD(*v60);
              v440 = (257 * v191) ^ 0xFFFF;
              v441 = v439 * v440 + ((v439 * v440) >> 16) + 1;
              v435 = *v60 - ((*v60 * v440 + ((*v60 * v440) >> 16) + 1) >> 16);
              v442 = v435 | ((v439 - HIWORD(v441)) << 16);
              if (v442 >= 0x10000)
              {
                v437 = v394[1];
                v438 = ~v442 >> 16;
LABEL_575:
                v435 += (v438 * v437 + ((v438 * v437) >> 16) + 1) >> 16;
LABEL_576:
                v394[1] = v435;
              }
            }
          }

          v443 = *v393++;
          v191 = v443;
          v60 += 2;
          ++v394;
          if (!--v395)
          {
LABEL_590:
            v44 = 0;
            goto LABEL_591;
          }
        }

      case 3:
        v222 = v38;
        v119 = v44;
        do
        {
          v223 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v223 = ((*v119 * v223 + ((*v119 * v223) >> 8) + 1) >> 8);
            }

            if (v223)
            {
              if (v223 == 255)
              {
                v224 = HIWORD(*v60);
                v225 = *v29 ^ 0xFFFF;
                *v33 = *v60 - ((*v60 * v225 + ((*v60 * v225) >> 16) + 1) >> 16);
                v226 = v224 - ((v224 * v225 + ((v224 * v225) >> 16) + 1) >> 16);
              }

              else
              {
                v227 = v223 | (v223 << 8);
                v228 = *v29 * v227 + ((*v29 * v227) >> 16) + 1;
                v227 ^= 0xFFFFu;
                v229 = *v33 * v227 + HIWORD(v228) * *v60;
                v230 = (v227 + HIWORD(v228)) * HIWORD(*v60);
                v226 = (v230 + HIWORD(v230) + 1) >> 16;
                *v33 = (v229 + HIWORD(v229) + 1) >> 16;
              }

              *v29 = v226;
            }
          }

          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          --v222;
        }

        while (v222);
        goto LABEL_475;
      case 4:
        v146 = v38;
        v119 = v44;
        do
        {
          v147 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v147 = ((*v119 * v147 + ((*v119 * v147) >> 8) + 1) >> 8);
            }

            if (v147)
            {
              if (v147 == 255)
              {
                v148 = HIWORD(*v60);
                v149 = *v29;
                *v33 = *v60 - ((*v60 * v149 + ((*v60 * v149) >> 16) + 1) >> 16);
                v150 = v148 - ((v148 * v149 + ((v148 * v149) >> 16) + 1) >> 16);
              }

              else
              {
                v151 = v147 | (v147 << 8);
                v152 = (*v29 ^ 0xFFFF) * v151 + (((*v29 ^ 0xFFFFu) * v151) >> 16) + 1;
                v151 ^= 0xFFFFu;
                v153 = *v33 * v151 + HIWORD(v152) * *v60;
                v154 = (v151 + HIWORD(v152)) * HIWORD(*v60);
                v150 = (v154 + HIWORD(v154) + 1) >> 16;
                *v33 = (v153 + HIWORD(v153) + 1) >> 16;
              }

              *v29 = v150;
            }
          }

          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          --v146;
        }

        while (v146);
        goto LABEL_475;
      case 5:
        v277 = v38;
        v119 = v44;
        while (1)
        {
          v278 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_336;
            }

            v279 = *v119 * v278 + ((*v119 * v278) >> 8) + 1;
            if (v279 >= 0x100)
            {
              break;
            }
          }

LABEL_337:
          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v277)
          {
            goto LABEL_475;
          }
        }

        v278 = v279 >> 8;
LABEL_336:
        v280 = *v29;
        v281 = (v278 | (v278 << 8)) ^ 0xFFFF;
        v282 = *v60 - ((*v60 * v281 + ((*v60 * v281) >> 16) + 1) >> 16);
        v283 = (v282 | ((HIWORD(*v60) - ((HIWORD(*v60) * v281 + ((HIWORD(*v60) * v281) >> 16) + 1) >> 16)) << 16)) >> 16;
        v284 = v282 * v280 + (v283 ^ 0xFFFF) * *v33;
        *v33 = (v284 + HIWORD(v284) + 1) >> 16;
        *v29 = (((v283 ^ 0xFFFF) + v280) * v283 + ((((v283 ^ 0xFFFF) + v280) * v283) >> 16) + 1) >> 16;
        goto LABEL_337;
      case 6:
        v306 = v38;
        v119 = v44;
        while (1)
        {
          v307 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_373;
            }

            v308 = *v119 * v307 + ((*v119 * v307) >> 8) + 1;
            if (v308 >= 0x100)
            {
              break;
            }
          }

LABEL_378:
          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v306)
          {
            goto LABEL_475;
          }
        }

        v307 = v308 >> 8;
LABEL_373:
        v309 = *v29;
        if (v309 != 0xFFFF)
        {
          if (~v309 == 0xFFFF)
          {
            v310 = HIWORD(*v60);
            v311 = (v307 | (v307 << 8)) ^ 0xFFFF;
            *v33 = *v60 - ((*v60 * v311 + ((*v60 * v311) >> 16) + 1) >> 16);
            v312 = v310 - ((v310 * v311 + ((v310 * v311) >> 16) + 1) >> 16);
          }

          else
          {
            v313 = HIWORD(*v60);
            v314 = 257 * v307 * ~v309;
            v315 = (v314 + HIWORD(v314) + 1) >> 16;
            *v33 += (*v60 * v315 + ((*v60 * v315) >> 16) + 1) >> 16;
            v312 = v309 + ((v313 * v315 + ((v313 * v315) >> 16) + 1) >> 16);
          }

          *v29 = v312;
        }

        goto LABEL_378;
      case 7:
        v231 = v44 != 0;
        v232 = v38;
        v119 = v44;
        if (v49)
        {
          do
          {
            v233 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v233 = ((*v119 * v233 + ((*v119 * v233) >> 8) + 1) >> 8);
              }

              if (v233)
              {
                if (v233 == 255)
                {
                  v234 = *v29;
                  v235 = ~*v60 >> 16;
                  *v33 -= (v235 * *v33 + ((v235 * *v33) >> 16) + 1) >> 16;
                  v236 = v234 - ((v235 * v234 + ((v235 * v234) >> 16) + 1) >> 16);
                }

                else
                {
                  v237 = ((v233 | (v233 << 8)) ^ 0xFFFF) + ((v60[1] * (v233 | (v233 << 8)) + ((v60[1] * (v233 | (v233 << 8))) >> 16) + 1) >> 16);
                  v238 = v237 * *v33;
                  v236 = (v237 * *v29 + ((v237 * *v29) >> 16) + 1) >> 16;
                  *v33 = (v238 + HIWORD(v238) + 1) >> 16;
                }

                *v29 = v236;
              }
            }

            ++v61;
            v60 += 2;
            v119 += v231;
            ++v33;
            ++v29;
            --v232;
          }

          while (v232);
        }

        else
        {
          do
          {
            v239 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v239 = ((*v119 * v239 + ((*v119 * v239) >> 8) + 1) >> 8);
              }

              if (v239)
              {
                if (v239 == 255)
                {
                  v240 = *v33 - (((~*v60 >> 16) * *v33 + (((~*v60 >> 16) * *v33) >> 16) + 1) >> 16);
                }

                else
                {
                  v241 = v239 | (v239 << 8);
                  v242 = v60[1] * v241 + ((v60[1] * v241) >> 16) + 1;
                  v240 = (((v241 ^ 0xFFFF) + HIWORD(v242)) * *v33 + ((((v241 ^ 0xFFFF) + HIWORD(v242)) * *v33) >> 16) + 1) >> 16;
                }

                *v33 = v240;
              }
            }

            ++v61;
            v60 += 2;
            v119 += v231;
            ++v33;
            --v232;
          }

          while (v232);
        }

        goto LABEL_475;
      case 8:
        v334 = v44 != 0;
        v335 = v38;
        v119 = v44;
        if (v49)
        {
          do
          {
            v336 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v336 = ((*v119 * v336 + ((*v119 * v336) >> 8) + 1) >> 8);
              }

              if (v336)
              {
                if (v336 == 255)
                {
                  v337 = *v29;
                  v338 = HIWORD(*v60);
                  *v33 -= (v338 * *v33 + ((v338 * *v33) >> 16) + 1) >> 16;
                  v339 = v337 - ((v338 * v337 + ((v338 * v337) >> 16) + 1) >> 16);
                }

                else
                {
                  v340 = ((v336 | (v336 << 8)) ^ 0xFFFF) + (((~*v60 >> 16) * (v336 | (v336 << 8)) + (((~*v60 >> 16) * (v336 | (v336 << 8))) >> 16) + 1) >> 16);
                  v341 = v340 * *v33;
                  v339 = (v340 * *v29 + ((v340 * *v29) >> 16) + 1) >> 16;
                  *v33 = (v341 + HIWORD(v341) + 1) >> 16;
                }

                *v29 = v339;
              }
            }

            ++v61;
            v60 += 2;
            v119 += v334;
            ++v33;
            ++v29;
            --v335;
          }

          while (v335);
        }

        else
        {
          do
          {
            v342 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v342 = ((*v119 * v342 + ((*v119 * v342) >> 8) + 1) >> 8);
              }

              if (v342)
              {
                if (v342 == 255)
                {
                  v343 = *v33 - ((v60[1] * *v33 + ((v60[1] * *v33) >> 16) + 1) >> 16);
                }

                else
                {
                  v344 = v342 | (v342 << 8);
                  v345 = (~*v60 >> 16) * v344 + (((~*v60 >> 16) * v344) >> 16) + 1;
                  v343 = (((v344 ^ 0xFFFF) + HIWORD(v345)) * *v33 + ((((v344 ^ 0xFFFF) + HIWORD(v345)) * *v33) >> 16) + 1) >> 16;
                }

                *v33 = v343;
              }
            }

            ++v61;
            v60 += 2;
            v119 += v334;
            ++v33;
            --v335;
          }

          while (v335);
        }

        goto LABEL_475;
      case 9:
        v163 = v38;
        v119 = v44;
        while (1)
        {
          v164 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_205;
            }

            v165 = *v119 * v164 + ((*v119 * v164) >> 8) + 1;
            if (v165 >= 0x100)
            {
              break;
            }
          }

LABEL_206:
          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v163)
          {
            goto LABEL_475;
          }
        }

        v164 = v165 >> 8;
LABEL_205:
        v166 = ~(v164 | (v164 << 8));
        v167 = (*v60 - ((*v60 * v166 + ((*v60 * v166) >> 16) + 1) >> 16)) | ((HIWORD(*v60) - ((HIWORD(*v60) * v166 + ((HIWORD(*v60) * v166) >> 16) + 1) >> 16)) << 16);
        v168 = *v29 ^ 0xFFFF;
        v169 = (*v60 - ((*v60 * v166 + ((*v60 * v166) >> 16) + 1) >> 16)) * v168 + (v166 + HIWORD(v167)) * *v33;
        v170 = (v168 + (v166 + HIWORD(v167))) * HIWORD(v167);
        *v33 = (v169 + HIWORD(v169) + 1) >> 16;
        *v29 = (v170 + HIWORD(v170) + 1) >> 16;
        goto LABEL_206;
      case 10:
        v326 = v38;
        v119 = v44;
        while (1)
        {
          v327 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_398;
            }

            v328 = *v119 * v327 + ((*v119 * v327) >> 8) + 1;
            if (v328 >= 0x100)
            {
              break;
            }
          }

LABEL_399:
          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v326)
          {
            goto LABEL_475;
          }
        }

        v327 = v328 >> 8;
LABEL_398:
        v329 = (v327 | (v327 << 8)) ^ 0xFFFF;
        v330 = *v60 - ((*v60 * v329 + ((*v60 * v329) >> 16) + 1) >> 16);
        v331 = (v330 | ((HIWORD(*v60) - ((HIWORD(*v60) * v329 + ((HIWORD(*v60) * v329) >> 16) + 1) >> 16)) << 16)) >> 16;
        v332 = *v29 ^ 0xFFFF;
        v333 = v330 * v332 + (v331 ^ 0xFFFF) * *v33;
        *v33 = (v333 + HIWORD(v333) + 1) >> 16;
        *v29 = (((v331 ^ 0xFFFF) + v332) * v331 + ((((v331 ^ 0xFFFF) + v332) * v331) >> 16) + 1) >> 16;
        goto LABEL_399;
      case 11:
        v131 = v44 != 0;
        v132 = v38;
        v119 = v44;
        if (v49)
        {
          while (1)
          {
            v133 = *v61;
            if (*v61)
            {
              if (!v44)
              {
                goto LABEL_161;
              }

              v134 = *v119 * v133 + ((*v119 * v133) >> 8) + 1;
              if (v134 >= 0x100)
              {
                break;
              }
            }

LABEL_166:
            ++v61;
            v60 += 2;
            v119 += v131;
            ++v33;
            ++v29;
            if (!--v132)
            {
              goto LABEL_475;
            }
          }

          v133 = v134 >> 8;
LABEL_161:
          v135 = (v133 | (v133 << 8)) ^ 0xFFFF;
          v136 = *v60 - ((v135 * *v60 + ((v135 * *v60) >> 16) + 1) >> 16);
          v137 = v136 | ((HIWORD(*v60) - ((v135 * HIWORD(*v60) + ((v135 * HIWORD(*v60)) >> 16) + 1) >> 16)) << 16);
          v138 = *v29;
          v139 = v138 - (*v33 + v136) + HIWORD(v137);
          v140 = v138 + HIWORD(v137);
          if (v139 >= 0xFFFF)
          {
            LOWORD(v139) = -1;
          }

          if (v140 >= 0xFFFF)
          {
            LOWORD(v140) = -1;
          }

          *v33 = v140 - v139;
          *v29 = v140;
          goto LABEL_166;
        }

        while (1)
        {
          v141 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_172;
            }

            v142 = *v119 * v141 + ((*v119 * v141) >> 8) + 1;
            if (v142 >= 0x100)
            {
              break;
            }
          }

LABEL_175:
          ++v61;
          v60 += 2;
          v119 += v131;
          ++v33;
          if (!--v132)
          {
            goto LABEL_475;
          }
        }

        v141 = v142 >> 8;
LABEL_172:
        v143 = (v141 | (v141 << 8)) ^ 0xFFFF;
        v144 = *v60 - ((v143 * *v60 + ((v143 * *v60) >> 16) + 1) >> 16);
        v145 = (*v33 ^ 0xFFFF) - v144 + ((v144 | ((HIWORD(*v60) - ((v143 * HIWORD(*v60) + ((v143 * HIWORD(*v60)) >> 16) + 1) >> 16)) << 16)) >> 16);
        if (v145 >= 0xFFFF)
        {
          LOWORD(v145) = -1;
        }

        *v33 = ~v145;
        goto LABEL_175;
      case 12:
        v155 = v44 != 0;
        v156 = v38;
        v119 = v44;
        if (!v49)
        {
          v91 = v468;
          do
          {
            if (*v61 && (!v44 || *v119 * *v61 + ((*v119 * *v61) >> 8) + 1 >= 0x100))
            {
              *v33 = (2 * *v33) | (*v33 >> 15);
            }

            ++v61;
            v119 += v155;
            ++v33;
            --v156;
          }

          while (v156);
          v392 = v450;
          if (!v44)
          {
            v392 = 0;
          }

          v90 = &v44[v462];
LABEL_528:
          v44 = &v90[v392];
          v33 += v463;
          v29 += v465;
          v196 = v469;
          goto LABEL_491;
        }

        while (1)
        {
          v157 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_193;
            }

            v158 = *v119 * v157 + ((*v119 * v157) >> 8) + 1;
            if (v158 >= 0x100)
            {
              break;
            }
          }

LABEL_198:
          ++v61;
          v60 += 2;
          v119 += v155;
          ++v33;
          ++v29;
          if (!--v156)
          {
            goto LABEL_475;
          }
        }

        v157 = v158 >> 8;
LABEL_193:
        v159 = (v157 | (v157 << 8)) ^ 0xFFFF;
        v160 = *v60 - ((v159 * *v60 + ((v159 * *v60) >> 16) + 1) >> 16);
        v161 = *v33 + v160;
        v162 = *v29 + ((v160 | ((HIWORD(*v60) - ((v159 * HIWORD(*v60) + ((v159 * HIWORD(*v60)) >> 16) + 1) >> 16)) << 16)) >> 16);
        if (v161 >= 0xFFFF)
        {
          LOWORD(v161) = -1;
        }

        if (v162 >= 0xFFFF)
        {
          LOWORD(v162) = -1;
        }

        *v33 = v161;
        *v29 = v162;
        goto LABEL_198;
      case 13:
        v295 = v44;
        while (1)
        {
          v296 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_357;
            }

            v297 = *v295 * v296 + ((*v295 * v296) >> 8) + 1;
            if (v297 >= 0x100)
            {
              break;
            }
          }

LABEL_366:
          ++v61;
          v60 += 2;
          v295 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          LODWORD(v38) = v38 - 1;
          if (!v38)
          {
            v44 = &v295[v462];
LABEL_490:
            v33 += v463;
            v29 += v465;
            v38 = v460;
            v37 = v461;
            v91 = v468;
            v196 = v469;
            v65 = v470;
            goto LABEL_491;
          }
        }

        v296 = v297 >> 8;
LABEL_357:
        v298 = HIWORD(*v60);
        v299 = (v296 | (v296 << 8)) ^ 0xFFFF;
        v300 = v299 * v298 + ((v299 * v298) >> 16) + 1;
        v301 = *v60 - ((v299 * *v60 + ((v299 * *v60) >> 16) + 1) >> 16);
        v302 = v301 | ((v298 - HIWORD(v300)) << 16);
        if (v302 >= 0x10000)
        {
          v303 = HIWORD(v302);
          if (v49)
          {
            if (*v29)
            {
              v302 = PDAmultiplyPDA_8993(*v33, *v29, v301, v303);
              v49 = v472;
              v303 = HIWORD(v302);
            }

            *v33 = v302;
            *v29 = v303;
          }

          else
          {
            v304 = *v33 * ((v303 ^ 0xFFFF) + v301);
            if (v304 <= 0xFFFE8000)
            {
              v305 = v304 + 0x8000;
            }

            else
            {
              v305 = 4294868992;
            }

            *v33 = ((v305 >> 16) + v305) >> 16;
          }
        }

        goto LABEL_366;
      case 14:
        v118 = v38;
        v119 = v44;
        while (1)
        {
          v120 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v121 = *v119 * v120 + ((*v119 * v120) >> 8) + 1;
              if (v121 < 0x100)
              {
                goto LABEL_154;
              }

              v120 = v121 >> 8;
            }

            v122 = (v120 | (v120 << 8)) ^ 0xFFFF;
            v123 = *v60 - ((v122 * *v60 + ((v122 * *v60) >> 16) + 1) >> 16);
            v124 = v123 | ((HIWORD(*v60) - ((v122 * HIWORD(*v60) + ((v122 * HIWORD(*v60)) >> 16) + 1) >> 16)) << 16);
            if (v124 >= 0x10000)
            {
              v125 = HIWORD(v124);
              if (v49)
              {
                v126 = *v29;
                if (!*v29)
                {
LABEL_152:
                  *v33 = v124;
                  *v29 = v125;
                  goto LABEL_154;
                }
              }

              else
              {
                v126 = 0xFFFF;
              }

              v127 = (*v33 ^ 0xFFFFu) * v123 - *v33 + (*v33 << 16);
              if (v127 <= 0xFFFE8000)
              {
                v128 = v127 + 0x8000;
              }

              else
              {
                v128 = 4294868992;
              }

              v129 = (v128 + (v128 >> 16)) >> 16;
              if (!v49)
              {
                *v33 = v129;
                goto LABEL_154;
              }

              v130 = 0xFFFF * (v125 + v126) - v125 * v126;
              if (v130 <= 4294868992)
              {
                v125 = v130 + 0x8000;
              }

              else
              {
                v125 = 4294868992;
              }

              v124 = ((v125 >> 16) + v125) & 0xFFFF0000 | v129;
              LODWORD(v125) = HIWORD(v124);
              goto LABEL_152;
            }
          }

LABEL_154:
          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v118)
          {
            goto LABEL_475;
          }
        }

      case 15:
        v212 = v38;
        v97 = v44;
        while (1)
        {
          v213 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_254;
            }

            v214 = *v97 * v213 + ((*v97 * v213) >> 8) + 1;
            if (v214 >= 0x100)
            {
              break;
            }
          }

LABEL_260:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v212)
          {
            goto LABEL_489;
          }
        }

        v213 = v214 >> 8;
LABEL_254:
        v215 = HIWORD(*v60);
        v216 = (v213 | (v213 << 8)) ^ 0xFFFF;
        v217 = v216 * v215 + ((v216 * v215) >> 16) + 1;
        v218 = *v60 - ((v216 * *v60 + ((v216 * *v60) >> 16) + 1) >> 16);
        v219 = v218 | ((v215 - HIWORD(v217)) << 16);
        if (v219 >= 0x10000)
        {
          v220 = HIWORD(v219);
          if (v49)
          {
            if (*v29)
            {
              v219 = PDAoverlayPDA_8994(*v33, *v29, v218, v220);
              v49 = v472;
              v220 = HIWORD(v219);
            }

            *v33 = v219;
            *v29 = v220;
          }

          else
          {
            v221 = PDAoverlayPDA_8994(*v33, 0xFFFFu, v218, v220);
            v49 = v472;
            *v33 = v221;
          }
        }

        goto LABEL_260;
      case 16:
        v108 = v38;
        v97 = v44;
        while (1)
        {
          v109 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_126;
            }

            v110 = *v97 * v109 + ((*v97 * v109) >> 8) + 1;
            if (v110 >= 0x100)
            {
              break;
            }
          }

LABEL_132:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v108)
          {
            goto LABEL_489;
          }
        }

        v109 = v110 >> 8;
LABEL_126:
        v111 = HIWORD(*v60);
        v112 = (v109 | (v109 << 8)) ^ 0xFFFF;
        v113 = v112 * v111 + ((v112 * v111) >> 16) + 1;
        v114 = *v60 - ((v112 * *v60 + ((v112 * *v60) >> 16) + 1) >> 16);
        v115 = v114 | ((v111 - HIWORD(v113)) << 16);
        if (v115 >= 0x10000)
        {
          v116 = HIWORD(v115);
          if (v49)
          {
            if (*v29)
            {
              v115 = PDAdarkenPDA_8996(*v33, *v29, v114, v116);
              v49 = v472;
              v116 = HIWORD(v115);
            }

            *v33 = v115;
            *v29 = v116;
          }

          else
          {
            v117 = PDAdarkenPDA_8996(*v33, 0xFFFFu, v114, v116);
            v49 = v472;
            *v33 = v117;
          }
        }

        goto LABEL_132;
      case 17:
        v257 = v38;
        v97 = v44;
        while (1)
        {
          v258 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_310;
            }

            v259 = *v97 * v258 + ((*v97 * v258) >> 8) + 1;
            if (v259 >= 0x100)
            {
              break;
            }
          }

LABEL_316:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v257)
          {
            goto LABEL_489;
          }
        }

        v258 = v259 >> 8;
LABEL_310:
        v260 = HIWORD(*v60);
        v261 = (v258 | (v258 << 8)) ^ 0xFFFF;
        v262 = v261 * v260 + ((v261 * v260) >> 16) + 1;
        v263 = *v60 - ((v261 * *v60 + ((v261 * *v60) >> 16) + 1) >> 16);
        v264 = v263 | ((v260 - HIWORD(v262)) << 16);
        if (v264 >= 0x10000)
        {
          v265 = HIWORD(v264);
          if (v49)
          {
            if (*v29)
            {
              v264 = PDAlightenPDA_8995(*v33, *v29, v263, v265);
              v49 = v472;
              v265 = HIWORD(v264);
            }

            *v33 = v264;
            *v29 = v265;
          }

          else
          {
            v266 = PDAlightenPDA_8995(*v33, 0xFFFFu, v263, v265);
            v49 = v472;
            *v33 = v266;
          }
        }

        goto LABEL_316;
      case 18:
        v316 = v38;
        v97 = v44;
        while (1)
        {
          v317 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_385;
            }

            v318 = *v97 * v317 + ((*v97 * v317) >> 8) + 1;
            if (v318 >= 0x100)
            {
              break;
            }
          }

LABEL_391:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v316)
          {
            goto LABEL_489;
          }
        }

        v317 = v318 >> 8;
LABEL_385:
        v319 = HIWORD(*v60);
        v320 = (v317 | (v317 << 8)) ^ 0xFFFF;
        v321 = v320 * v319 + ((v320 * v319) >> 16) + 1;
        v322 = *v60 - ((v320 * *v60 + ((v320 * *v60) >> 16) + 1) >> 16);
        v323 = v322 | ((v319 - HIWORD(v321)) << 16);
        if (v323 >= 0x10000)
        {
          if (v49)
          {
            v324 = HIWORD(v323);
            if (*v29)
            {
              v323 = PDAcolordodgePDA_8997(*v33, *v29, v322, v324);
              v49 = v472;
              v324 = HIWORD(v323);
            }

            *v33 = v323;
            *v29 = v324;
          }

          else
          {
            v325 = PDAcolordodgePDA_8997(*v33, 0xFFFFu, v322, HIWORD(v323));
            v49 = v472;
            *v33 = v325;
          }
        }

        goto LABEL_391;
      case 19:
        v356 = v38;
        v97 = v44;
        while (1)
        {
          v357 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_440;
            }

            v358 = *v97 * v357 + ((*v97 * v357) >> 8) + 1;
            if (v358 >= 0x100)
            {
              break;
            }
          }

LABEL_446:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v356)
          {
            goto LABEL_489;
          }
        }

        v357 = v358 >> 8;
LABEL_440:
        v359 = HIWORD(*v60);
        v360 = (v357 | (v357 << 8)) ^ 0xFFFF;
        v361 = v360 * v359 + ((v360 * v359) >> 16) + 1;
        v362 = *v60 - ((v360 * *v60 + ((v360 * *v60) >> 16) + 1) >> 16);
        v363 = v362 | ((v359 - HIWORD(v361)) << 16);
        if (v363 >= 0x10000)
        {
          if (v49)
          {
            v364 = HIWORD(v363);
            if (*v29)
            {
              v363 = PDAcolorburnPDA_8998(*v33, *v29, v362, v364);
              v49 = v472;
              v364 = HIWORD(v363);
            }

            *v33 = v363;
            *v29 = v364;
          }

          else
          {
            v365 = PDAcolorburnPDA_8998(*v33, 0xFFFFu, v362, HIWORD(v363));
            v49 = v472;
            *v33 = v365;
          }
        }

        goto LABEL_446;
      case 20:
        v267 = v38;
        v97 = v44;
        while (1)
        {
          v268 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_323;
            }

            v269 = *v97 * v268 + ((*v97 * v268) >> 8) + 1;
            if (v269 >= 0x100)
            {
              break;
            }
          }

LABEL_329:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v267)
          {
            goto LABEL_489;
          }
        }

        v268 = v269 >> 8;
LABEL_323:
        v270 = HIWORD(*v60);
        v271 = (v268 | (v268 << 8)) ^ 0xFFFF;
        v272 = v271 * v270 + ((v271 * v270) >> 16) + 1;
        v273 = *v60 - ((v271 * *v60 + ((v271 * *v60) >> 16) + 1) >> 16);
        v274 = v273 | ((v270 - HIWORD(v272)) << 16);
        if (v274 >= 0x10000)
        {
          v275 = HIWORD(v274);
          if (v49)
          {
            if (*v29)
            {
              v274 = PDAsoftlightPDA_9000(*v33, *v29, v273, v275);
              v49 = v472;
              v275 = HIWORD(v274);
            }

            *v33 = v274;
            *v29 = v275;
          }

          else
          {
            v276 = PDAsoftlightPDA_9000(*v33, 0xFFFFu, v273, v275);
            v49 = v472;
            *v33 = v276;
          }
        }

        goto LABEL_329;
      case 21:
        v285 = v38;
        v97 = v44;
        while (1)
        {
          v286 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_344;
            }

            v287 = *v97 * v286 + ((*v97 * v286) >> 8) + 1;
            if (v287 >= 0x100)
            {
              break;
            }
          }

LABEL_350:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v285)
          {
            goto LABEL_489;
          }
        }

        v286 = v287 >> 8;
LABEL_344:
        v288 = HIWORD(*v60);
        v289 = (v286 | (v286 << 8)) ^ 0xFFFF;
        v290 = v289 * v288 + ((v289 * v288) >> 16) + 1;
        v291 = *v60 - ((v289 * *v60 + ((v289 * *v60) >> 16) + 1) >> 16);
        v292 = v291 | ((v288 - HIWORD(v290)) << 16);
        if (v292 >= 0x10000)
        {
          if (v49)
          {
            v293 = HIWORD(v292);
            if (*v29)
            {
              v292 = PDAhardlightPDA_8999(*v33, *v29, v291, v293);
              v49 = v472;
              v293 = HIWORD(v292);
            }

            *v33 = v292;
            *v29 = v293;
          }

          else
          {
            v294 = PDAhardlightPDA_8999(*v33, 0xFFFFu, v291, HIWORD(v292));
            v49 = v472;
            *v33 = v294;
          }
        }

        goto LABEL_350;
      case 22:
        v346 = v38;
        v97 = v44;
        while (1)
        {
          v347 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_427;
            }

            v348 = *v97 * v347 + ((*v97 * v347) >> 8) + 1;
            if (v348 >= 0x100)
            {
              break;
            }
          }

LABEL_433:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v346)
          {
            goto LABEL_489;
          }
        }

        v347 = v348 >> 8;
LABEL_427:
        v349 = HIWORD(*v60);
        v350 = (v347 | (v347 << 8)) ^ 0xFFFF;
        v351 = v350 * v349 + ((v350 * v349) >> 16) + 1;
        v352 = *v60 - ((v350 * *v60 + ((v350 * *v60) >> 16) + 1) >> 16);
        v353 = v352 | ((v349 - HIWORD(v351)) << 16);
        if (v353 >= 0x10000)
        {
          v354 = HIWORD(v353);
          if (v49)
          {
            if (*v29)
            {
              v353 = PDAdifferencePDA_9001(*v33, *v29, v352, v354);
              v49 = v472;
              v354 = HIWORD(v353);
            }

            *v33 = v353;
            *v29 = v354;
          }

          else
          {
            v355 = PDAdifferencePDA_9001(*v33, 0xFFFFu, v352, v354);
            v49 = v472;
            *v33 = v355;
          }
        }

        goto LABEL_433;
      case 23:
        v366 = v38;
        v119 = v44;
        while (1)
        {
          v367 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v368 = *v119 * v367 + ((*v119 * v367) >> 8) + 1;
              if (v368 < 0x100)
              {
                goto LABEL_474;
              }

              v367 = v368 >> 8;
            }

            v369 = (v367 | (v367 << 8)) ^ 0xFFFF;
            v370 = *v60 - ((v369 * *v60 + ((v369 * *v60) >> 16) + 1) >> 16);
            v371 = v370 | ((HIWORD(*v60) - ((v369 * HIWORD(*v60) + ((v369 * HIWORD(*v60)) >> 16) + 1) >> 16)) << 16);
            if (v371 >= 0x10000)
            {
              v372 = HIWORD(v371);
              if (v49)
              {
                v373 = *v29;
                if (!*v29)
                {
LABEL_472:
                  *v33 = v371;
                  *v29 = v372;
                  goto LABEL_474;
                }
              }

              else
              {
                v373 = 0xFFFF;
              }

              if (v370 >= HIWORD(v371))
              {
                v374 = v372;
              }

              else
              {
                v374 = v370;
              }

              if (*v33 >= v373)
              {
                v375 = v373;
              }

              else
              {
                v375 = *v33;
              }

              v376 = 0xFFFF * (v375 + v374) - 2 * v374 * v375;
              if (v376 <= 4294868992)
              {
                v377 = v376 + 0x8000;
              }

              else
              {
                v377 = 4294868992;
              }

              v378 = v377 + (v377 >> 16);
              if (!v49)
              {
                *v33 = WORD1(v378);
                goto LABEL_474;
              }

              v379 = v378 >> 16;
              v380 = 0xFFFF * (v373 + v372) - v373 * v372;
              if (v380 <= 4294868992)
              {
                v381 = v380 + 0x8000;
              }

              else
              {
                v381 = 4294868992;
              }

              v371 = ((v381 >> 16) + v381) & 0xFFFF0000 | v379;
              v372 = HIWORD(v371);
              goto LABEL_472;
            }
          }

LABEL_474:
          ++v61;
          v60 += 2;
          v119 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v366)
          {
LABEL_475:
            v44 = &v119[v462];
            v33 += v463;
            v29 += v465;
LABEL_476:
            v91 = v468;
            v196 = v469;
            goto LABEL_491;
          }
        }

      case 24:
        v181 = v38;
        v97 = v44;
        while (1)
        {
          v182 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_226;
            }

            v183 = *v97 * v182 + ((*v97 * v182) >> 8) + 1;
            if (v183 >= 0x100)
            {
              break;
            }
          }

LABEL_232:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v181)
          {
            goto LABEL_489;
          }
        }

        v182 = v183 >> 8;
LABEL_226:
        v184 = HIWORD(*v60);
        v185 = (v182 | (v182 << 8)) ^ 0xFFFF;
        v186 = v185 * v184 + ((v185 * v184) >> 16) + 1;
        v187 = *v60 - ((v185 * *v60 + ((v185 * *v60) >> 16) + 1) >> 16);
        v188 = v187 | ((v184 - HIWORD(v186)) << 16);
        if (v188 >= 0x10000)
        {
          v189 = HIWORD(v188);
          if (v49)
          {
            if (*v29)
            {
              v188 = PDAhuePDA_9002(*v33, *v29, v187, v189);
              v49 = v472;
              v189 = HIWORD(v188);
            }

            *v33 = v188;
            *v29 = v189;
          }

          else
          {
            v190 = PDAhuePDA_9002(*v33, 0xFFFFu, v187, v189);
            v49 = v472;
            *v33 = v190;
          }
        }

        goto LABEL_232;
      case 25:
        v171 = v38;
        v97 = v44;
        while (1)
        {
          v172 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_213;
            }

            v173 = *v97 * v172 + ((*v97 * v172) >> 8) + 1;
            if (v173 >= 0x100)
            {
              break;
            }
          }

LABEL_219:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v171)
          {
            goto LABEL_489;
          }
        }

        v172 = v173 >> 8;
LABEL_213:
        v174 = HIWORD(*v60);
        v175 = (v172 | (v172 << 8)) ^ 0xFFFF;
        v176 = v175 * v174 + ((v175 * v174) >> 16) + 1;
        v177 = *v60 - ((v175 * *v60 + ((v175 * *v60) >> 16) + 1) >> 16);
        v178 = v177 | ((v174 - HIWORD(v176)) << 16);
        if (v178 >= 0x10000)
        {
          v179 = HIWORD(v178);
          if (v49)
          {
            if (*v29)
            {
              v178 = PDAhuePDA_9002(*v33, *v29, v177, v179);
              v49 = v472;
              v179 = HIWORD(v178);
            }

            *v33 = v178;
            *v29 = v179;
          }

          else
          {
            v180 = PDAhuePDA_9002(*v33, 0xFFFFu, v177, v179);
            v49 = v472;
            *v33 = v180;
          }
        }

        goto LABEL_219;
      case 26:
        v382 = v38;
        v97 = v44;
        while (1)
        {
          v383 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_482;
            }

            v384 = *v97 * v383 + ((*v97 * v383) >> 8) + 1;
            if (v384 >= 0x100)
            {
              break;
            }
          }

LABEL_488:
          ++v61;
          v60 += 2;
          v97 += v44 != 0;
          ++v33;
          v29 = (v29 + v57);
          if (!--v382)
          {
            goto LABEL_489;
          }
        }

        v383 = v384 >> 8;
LABEL_482:
        v385 = HIWORD(*v60);
        v386 = (v383 | (v383 << 8)) ^ 0xFFFF;
        v387 = v386 * v385 + ((v386 * v385) >> 16) + 1;
        v388 = *v60 - ((v386 * *v60 + ((v386 * *v60) >> 16) + 1) >> 16);
        v389 = v388 | ((v385 - HIWORD(v387)) << 16);
        if (v389 >= 0x10000)
        {
          if (v49)
          {
            v390 = HIWORD(v389);
            if (*v29)
            {
              v389 = PDAluminosityPDA_9004(v388, v390, *v33, *v29);
              v49 = v472;
              v390 = HIWORD(v389);
            }

            *v33 = v389;
            *v29 = v390;
          }

          else
          {
            v391 = PDAluminosityPDA_9004(v388, HIWORD(v389), *v33, 0xFFFFu);
            v49 = v472;
            *v33 = v391;
          }
        }

        goto LABEL_488;
      case 27:
        v96 = v38;
        v97 = v44;
        v98 = v96;
        break;
      default:
        goto LABEL_476;
    }

    while (1)
    {
      v99 = *v61;
      if (*v61)
      {
        if (!v44)
        {
          goto LABEL_109;
        }

        v100 = *v97 * v99 + ((*v97 * v99) >> 8) + 1;
        if (v100 >= 0x100)
        {
          break;
        }
      }

LABEL_119:
      ++v61;
      v60 += 2;
      v97 += v44 != 0;
      ++v33;
      v29 = (v29 + v57);
      if (!--v98)
      {
LABEL_489:
        v44 = &v97[v462];
        goto LABEL_490;
      }
    }

    v99 = v100 >> 8;
LABEL_109:
    v101 = HIWORD(*v60);
    v102 = (v99 | (v99 << 8)) ^ 0xFFFF;
    v103 = v102 * v101 + ((v102 * v101) >> 16) + 1;
    v104 = *v60 - ((v102 * *v60 + ((v102 * *v60) >> 16) + 1) >> 16);
    v105 = v104 | ((v101 - HIWORD(v103)) << 16);
    if (v105 >= 0x10000)
    {
      v106 = HIWORD(v105);
      if (v49)
      {
        if (*v29)
        {
          v105 = PDAluminosityPDA_9004(*v33, *v29, v104, v106);
          v49 = v472;
          v106 = HIWORD(v105);
        }

        *v33 = v105;
        *v29 = v106;
      }

      else
      {
        if (v104 >= HIWORD(v105))
        {
          LOWORD(v104) = (v104 | ((v101 - HIWORD(v103)) << 16)) >> 16;
        }

        v107 = *v33 * (v106 ^ 0xFFFF) + 0x8000;
        if (v106 == 0xFFFF)
        {
          v107 = 0x8000;
        }

        *v33 = v104 + (((v107 >> 16) + v107) >> 16);
      }
    }

    goto LABEL_119;
  }
}

uint64_t PDAmultiplyPDA_8993(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a2 ^ 0xFFFF) * a3;
  if (a2 == 0xFFFF)
  {
    v4 = 0;
  }

  v5 = v4 + ((a4 ^ 0xFFFF) + a3) * a1;
  v6 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v5 <= 0xFFFE8000)
  {
    v7 = v5 + 0x8000;
  }

  else
  {
    v7 = 4294868992;
  }

  v8 = (v7 + (v7 >> 16)) >> 16;
  if (v6 <= 4294868992)
  {
    v9 = v6 + 0x8000;
  }

  else
  {
    v9 = 4294868992;
  }

  return ((v9 >> 16) + v9) & 0xFFFF0000 | v8;
}

uint64_t PDAoverlayPDA_8994(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = 2 * v5 * v4;
  v7 = a4 * a2;
  v8 = (a4 + 0xFFFF) * v5 + (a2 + 0xFFFF) * v4 - (v7 + v6);
  v9 = (a2 ^ 0xFFFF) * v4 + (a4 ^ 0xFFFF) * v5 + v6;
  if (v5 >= (a2 + 1) >> 1)
  {
    v9 = v8;
  }

  v10 = 0xFFFF * (a4 + a2) - v7;
  v11 = v9 + 0x8000;
  if (v9 > 4294868992)
  {
    v11 = 4294868992;
  }

  v12 = (v11 + (v11 >> 16)) >> 16;
  if (v10 <= 4294868992)
  {
    v13 = v10 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  return ((v13 >> 16) + v13) & 0xFFFF0000 | v12;
}

uint64_t PDAlightenPDA_8995(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = a4 * v5;
  if (v4 * a2 > v6)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = v6 + v7;
  v9 = (a2 ^ 0xFFFF) * v4;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  v11 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v10 <= 0xFFFE8000)
  {
    v12 = v10 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAdarkenPDA_8996(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = a4 * v5;
  if (v4 * a2 < v6)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = v6 + v7;
  v9 = (a2 ^ 0xFFFF) * v4;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  v11 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v10 <= 0xFFFE8000)
  {
    v12 = v10 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAcolordodgePDA_8997(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (v4)
  {
    if (a3 >= a4)
    {
      v6 = 4294836225;
    }

    else
    {
      v6 = (a4 * v4 * a4) / (a4 - v5);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 ^ 0xFFFF) * v4;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFFFF) * v5;
  if (a2 == 0xFFFF)
  {
    v8 = 0;
  }

  v9 = v8 + v7 + v6;
  v10 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v9 >= v10)
  {
    v9 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v9 <= 4294868992)
  {
    v11 = v9 + 0x8000;
  }

  else
  {
    v11 = 4294868992;
  }

  v12 = (v11 + (v11 >> 16)) >> 16;
  if (v10 <= 4294868992)
  {
    v13 = v10 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  return ((v13 >> 16) + v13) & 0xFFFF0000 | v12;
}

uint64_t PDAcolorburnPDA_8998(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = 4294868992;
  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (a1 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = (a4 ^ 0xFFFF) * v6;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = v7 + a4 * a2;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = (a2 ^ 0xFFFF) * v5;
  }

  v10 = v8 + v9;
  if (a2 > a1)
  {
    if (!v5)
    {
      v12 = 0x8000;
      goto LABEL_17;
    }

    v11 = v10 - (a4 * a4 * (a2 - v6)) / v5;
    v10 = v11 & ~(v11 >> 63);
  }

  v12 = v10 + 0x8000;
  if (v10 > 0xFFFE8000)
  {
    v12 = 4294868992;
  }

LABEL_17:
  v13 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v13 <= 4294868992)
  {
    v4 = v13 + 0x8000;
  }

  return ((v4 >> 16) + v4) & 0xFFFF0000 | ((v12 + (v12 >> 16)) >> 16);
}

uint64_t PDAhardlightPDA_8999(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = 2 * v5 * v4;
  v7 = a4 * a2;
  v8 = (a2 ^ 0xFFFF) * v4 + (a4 ^ 0xFFFF) * v5 + v6;
  v9 = (a4 + 0xFFFF) * v5 + (a2 + 0xFFFF) * v4 - (v7 + v6);
  if (v4 > (a4 + 1) >> 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = 0xFFFF * (a4 + a2) - v7;
  v12 = v10 + 0x8000;
  if (v10 > 4294868992)
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAsoftlightPDA_9000(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if (a2)
  {
    v6 = 2 * v5 * v4 - (v5 * v5 * (2 * v4 - a4)) / a2;
    v7 = v6 & ~(v6 >> 63);
  }

  else
  {
    v7 = 0;
  }

  v8 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v8 = 0;
  }

  v9 = (a2 ^ 0xFFFF) * v4;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  v10 = v9 + v8 + v7;
  v11 = 0xFFFF * (a4 + a2) - a4 * a2;
  v12 = v10 + 0x8000;
  if (v10 > 0xFFFE8000)
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAdifferencePDA_9001(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = a4 * v5 - v4 * a2;
  v7 = 0xFFFF * (v4 + v5) - v4 * a2 - a4 * v5;
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = -v6;
  }

  v9 = v7 + v8;
  v10 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v9 <= 4294868992)
  {
    v11 = v9 + 0x8000;
  }

  else
  {
    v11 = 4294868992;
  }

  v12 = (v11 + (v11 >> 16)) >> 16;
  if (v10 <= 4294868992)
  {
    v13 = v10 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  return ((v13 >> 16) + v13) & 0xFFFF0000 | v12;
}

uint64_t PDAhuePDA_9002(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a2)
  {
    LODWORD(v4) = a2;
  }

  else
  {
    LODWORD(v4) = a1;
  }

  v5 = (a4 ^ 0xFFFF) * v4;
  if (a4 == 0xFFFF)
  {
    v5 = 0;
  }

  else
  {
    v4 = (a4 * v4 + 0x8000 + ((a4 * v4 + 0x8000) >> 16)) >> 16;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (a2 ^ 0xFFFF) * v6;
  if (a2 == 0xFFFF)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v5 + v8;
  if (v9 <= 0xFFFE8000)
  {
    v10 = v9 + 0x8000;
  }

  else
  {
    v10 = 4294868992;
  }

  return (((v10 + (v10 >> 16)) >> 16) + v4) | ((a4 + a2 - ((((a4 * a2 + 0x8000) >> 16) + a4 * a2 + 0x8000) >> 16)) << 16);
}

uint64_t PDAluminosityPDA_9004(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    LODWORD(v4) = a4;
  }

  else
  {
    LODWORD(v4) = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v6 = 0;
  }

  if (a2 != 0xFFFF)
  {
    v6 += (a2 ^ 0xFFFF) * v4;
    v4 = (v4 * a2 + 0x8000 + ((v4 * a2 + 0x8000) >> 16)) >> 16;
  }

  v7 = v6 + 0x8000;
  if (v6 > 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  return (((v7 + (v7 >> 16)) >> 16) + v4) | ((a4 + a2 - ((((a4 * a2 + 0x8000) >> 16) + a4 * a2 + 0x8000) >> 16)) << 16);
}

void w16_shade_axial_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v4 * (*(*(a1 + 272) + 4) * a2)));
  v7 = *(a1 + 336);
  v8 = *(a1 + 344);
  v9 = *(a1 + 304);
  v10 = *(a1 + 308);
  v11 = *(a1 + 320);
  v12 = *(a1 + 324);
  v15 = a1 + 144;
  v13 = *(a1 + 144);
  v14 = *(v15 + 8);
  v16 = *(a1 + 376);
  v17 = *(a1 + 360);
  if (v4 != 0.0)
  {
    while (1)
    {
      v19 = v11;
      if (v5 >= v9)
      {
        v19 = v12;
        if (v5 <= v10)
        {
          v19 = (v8 * (v5 - v7));
        }
      }

      if ((v19 & 0x80000000) == 0)
      {
        break;
      }

      v20 = v16;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v5 = v4 + v5;
      ++v14;
      *v13 = v20;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v20 = (v17 + 2 * (2 * v19));
LABEL_17:
    *v14 = *v20;
    LOBYTE(v20) = -1;
    goto LABEL_18;
  }

  if (v5 >= v9)
  {
    v11 = v12;
    if (v5 <= v10)
    {
      v11 = (v8 * (v5 - v7));
    }
  }

  if ((v11 & 0x80000000) == 0 || v16)
  {
    v21 = (v17 + 2 * (2 * v11));
    if (v11 < 0)
    {
      v21 = v16;
    }

    v22 = *v21;
    v23 = a4 + 4;
    do
    {
      *v14 = v22;
      v14[1] = v22;
      v14[2] = v22;
      v14[3] = v22;
      v14 += 4;
      v23 -= 4;
      *v13++ = -1;
    }

    while (v23 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = a4;
    }

    bzero(v13, ((a4 - v18 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t w16_shade_custom_W(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * (v6 * a3)) + (_D0.f32[0] * _S2));
  __asm { FMLA            S3, S2, V0.S[1] }

  *&v14 = *(result + 300) + _S3;
  v15 = *(result + 304);
  v16 = *(result + 336);
  v17 = *(result + 348);
  v18 = *(result + 344);
  v19 = *(result + 356);
  v20 = *(result + 376);
  v21 = *(result + 360);
  v22 = 2 * *(result + 48);
  v24 = *(result + 144);
  v23 = *(result + 152);
  a6.i32[1] = v14;
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v15, v25))), vmovn_s32(vcgtq_f32(v25, v15)))) & 1) == 0)
    {
      v26 = (v21 + 2 * v22 * (v19 * (*&a6.i32[1] - v17)) + 4 * (v18 * (*a6.i32 - v16)));
LABEL_6:
      *v23 = *v26;
      LOBYTE(v26) = -1;
      goto LABEL_7;
    }

    v26 = v20;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_7:
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v23;
    *v24++ = v26;
    --a4;
  }

  while (a4);
  return result;
}

void w16_shade_conic_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 284);
  v10 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v9 * v6));
  v27 = *(a1 + 336);
  v28 = *(a1 + 304);
  v12 = *(a1 + 344);
  v13 = *(a1 + 360);
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  v26 = *(a1 + 308) - v28;
  do
  {
    v16 = v12 * ((v28 + (((atan2f(v10, v8) * 0.15915) + 0.5) * v26)) - v27);
    v17 = vcvtms_s32_f32(v16);
    v18 = vcvtms_s32_f32(v12 + v16);
    v19 = ceilf(v16);
    v20 = v16 - floorf(v16);
    if (v16 < 0.0)
    {
      v17 = v18;
    }

    v21 = v16 <= v12;
    v22 = (v20 * 255.0) + 0.5;
    v23 = ceilf(v16 - v12);
    if (v21)
    {
      v23 = v19;
    }

    v24 = v22;
    v25 = (v13 + 4 * v23);
    *v14++ = ((v24 * v25[1] + (255 - v24) * *(v13 + 2 * (2 * v17) + 2)) << 8) & 0xFFFF0000 | ((v24 * *v25 + (255 - v24) * *(v13 + 2 * (2 * v17))) >> 8);
    v8 = v4 + v8;
    v10 = v9 + v10;
    *v15++ = -1;
    --a4;
  }

  while (a4);
}

void w16_shade_radial_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 284);
  v6 = *(*(a1 + 272) + 4);
  v7 = v6 * a2;
  v8 = v6 * a3;
  v9 = *(a1 + 296) + ((*(a1 + 288) * v8) + (v4 * v7));
  v10 = *(a1 + 300) + ((v8 * *(a1 + 292)) + (v5 * v7));
  v12 = *(a1 + 400);
  v13 = *(a1 + 336);
  v14 = *(a1 + 344);
  v15 = *(a1 + 304);
  v16 = *(a1 + 308);
  v17 = *(a1 + 324);
  v18 = v12[2];
  v19 = v12[4];
  v20 = v12[5];
  v21 = v12[7];
  v24 = a1 + 144;
  v22 = *(a1 + 144);
  v23 = *(v24 + 8);
  v25 = *(a1 + 376);
  v26 = *(a1 + 360);
  if (v18 != 0.0 || v21 != 0.0 || v5 != 0.0)
  {
    v30 = *(a1 + 320);
    v31 = v12[3];
    v32 = v12[8];
    v33 = -v12[6];
    v34 = v16 - v15;
    while (1)
    {
      v35 = v33 + ((v9 + v9) * v18);
      v36 = ((v10 * v10) + (v9 * v9)) - v21;
      if (v20 == 0.0)
      {
        v43 = v36 / v35;
      }

      else
      {
        v37 = ((v20 * -4.0) * v36) + (v35 * v35);
        if (v37 < 0.0)
        {
          goto LABEL_39;
        }

        v38 = sqrtf(v37);
        v39 = v32 * (v35 - v38);
        v40 = v35 + v38;
        v41 = v32 * v40;
        v42 = (v32 * v40) <= v39;
        if ((v32 * v40) <= v39)
        {
          v43 = v32 * v40;
        }

        else
        {
          v43 = v39;
        }

        if (v42)
        {
          v41 = v39;
        }

        if (v41 < 0.0)
        {
          v44 = v41 < v31;
LABEL_25:
          v45 = v30;
          if (v44)
          {
            goto LABEL_39;
          }

LABEL_26:
          if ((v45 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v41 <= 1.0)
        {
          v46 = v15 + (v41 * v34);
          goto LABEL_37;
        }

        if ((v17 & 0x80000000) == 0)
        {
          v45 = v17;
          if (v41 <= v19)
          {
LABEL_38:
            v47 = (v26 + 2 * (2 * v45));
LABEL_40:
            *v23 = *v47;
            LOBYTE(v47) = -1;
            goto LABEL_41;
          }
        }
      }

      if (v43 < 0.0)
      {
        v44 = v43 < v31;
        goto LABEL_25;
      }

      if (v43 > 1.0)
      {
        v45 = v17;
        if (v43 > v19)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v46 = v15 + (v43 * v34);
LABEL_37:
      v45 = (v14 * (v46 - v13));
      if ((v45 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      v47 = v25;
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_41:
      v9 = v4 + v9;
      v10 = v5 + v10;
      ++v23;
      *v22++ = v47;
      if (!--a4)
      {
        return;
      }
    }
  }

  v27 = v10 * v10;
  v28 = -v20;
  if (v27 <= -v20)
  {
    v48 = fabsf(v12[8]);
    v49 = v20 * -4.0;
    v50 = v16 - v15;
    v51 = a4 + 2;
    while (1)
    {
      v52 = v27 + (v9 * v9);
      v53 = v4 + v9;
      v54 = v27 + (v53 * v53);
      if (v52 > v28 && v54 > v28)
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (!v25)
          {
            v65 = 0;
            LOBYTE(v64) = 0;
            goto LABEL_65;
          }

          v63 = *v25;
        }

        else
        {
          v63 = *(v26 + 4 * v17);
        }

        *v23 = v63;
        goto LABEL_63;
      }

      v56 = sqrtf(v49 * v54);
      v57 = v48 * sqrtf(v49 * v52);
      v58 = v48 * v56;
      v59 = (v14 * ((v15 + (v57 * v50)) - v13));
      v60 = (v14 * ((v15 + ((v48 * v56) * v50)) - v13));
      if (v57 <= 1.0 && v58 <= 1.0)
      {
        v63 = *(v26 + 4 * v60);
        *v23 = *(v26 + 4 * v59);
LABEL_63:
        LOBYTE(v64) = -1;
        goto LABEL_64;
      }

      if (v57 <= 1.0)
      {
        if ((v59 & 0x80000000) == 0)
        {
          v62 = (2 * v59);
LABEL_69:
          v64 = (v26 + 2 * v62);
LABEL_71:
          *v23 = *v64;
          LOBYTE(v64) = -1;
          goto LABEL_72;
        }
      }

      else if (v57 <= v19)
      {
        v62 = 2 * v17;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }

      v64 = v25;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v58 <= 1.0)
      {
        if (v60 < 0)
        {
          goto LABEL_79;
        }

        v66 = (2 * v60);
      }

      else if (v58 > v19 || (v66 = 2 * v17, (v17 & 0x80000000) != 0))
      {
LABEL_79:
        if (!v25)
        {
          v65 = 0;
          goto LABEL_65;
        }

        v63 = *v25;
        goto LABEL_64;
      }

      v63 = *(v26 + 2 * v66);
LABEL_64:
      v23[1] = v63;
      v65 = -1;
LABEL_65:
      v9 = v4 + v53;
      v23 += 2;
      *v22 = v64;
      v22[1] = v65;
      v22 += 2;
      v51 -= 2;
      if (v51 <= 2)
      {
        return;
      }
    }
  }

  if (v25 || (v17 & 0x80000000) == 0)
  {
    v67 = (v26 + 4 * v17);
    if (v17 < 0)
    {
      v67 = v25;
    }

    v68 = *v67;
    v69 = a4 + 4;
    do
    {
      *v23 = v68;
      v23[1] = v68;
      v23[2] = v68;
      v23[3] = v68;
      v23 += 4;
      v69 -= 4;
      *v22 = -1;
      v22 += 4;
    }

    while (v69 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = a4;
    }

    bzero(v22, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t w16_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v40, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3[2] >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v23, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 68161828;
  v11 = *a3;
  *(&v23 + 1) = __PAIR64__(*v6, *a3);
  if (v11 == 68161828)
  {
    if (!v34 && (~DWORD1(v24) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v24) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      w16_mark(a1);
      return 1;
    }

    *&v23 = w16_sample_w16;
    goto LABEL_36;
  }

  v12 = SAMPLEINDEX(v11);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v12 > 0xB)
  {
    goto LABEL_28;
  }

  if (v12 > 6)
  {
    switch(v12)
    {
      case 7:
        v13 = 0;
        v14 = 32;
        break;
      case 9:
        v13 = 0;
        v14 = 40;
        break;
      case 8:
        v13 = 0;
        v14 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v12 == 2)
  {
    if (!*(a2 + 12))
    {
      v13 = 0;
      v14 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v14 = 255;
    v13 = 1;
    goto LABEL_29;
  }

  if (v12 != 5)
  {
    if (v12 == 6)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v13 = 0;
  v14 = 24;
LABEL_29:
  *&v23 = *&W16_image_sample[2 * v12 + 2];
  if (v23)
  {
    goto LABEL_35;
  }

  if ((HIWORD(*a3) & 0x3Fu) <= 8)
  {
    *&v23 = *&W8_image_sample[2 * v12 + 2];
    if (v23)
    {
      v10 = 34083076;
      goto LABEL_35;
    }
  }

  *&v23 = *&WF_image_sample[2 * v12 + 2];
  if (!v23)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v24) = 8;
  v10 = 136319269;
LABEL_35:
  DWORD2(v23) = v10;
  if ((v13 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v24) & 7) != 3 || a2[2] != 5 && a2[2] || v12 > 0xB)
  {
    goto LABEL_36;
  }

  HIDWORD(v16) = v14;
  LODWORD(v16) = v14;
  v15 = v16 >> 3;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      *(&v23 + 2) = *a3;
      v17 = w16_image_mark_RGB24;
      goto LABEL_65;
    }

    if (v15 == 4)
    {
      *(&v23 + 2) = *a3;
      v17 = w16_image_mark_rgb32;
      goto LABEL_65;
    }

    if (v15 != 5)
    {
      goto LABEL_36;
    }

    *(&v23 + 2) = *a3;
    v18 = w16_image_mark_rgb32;
LABEL_63:
    v19 = v18;
    v20 = a2;
    v21 = v8;
    v22 = 8;
LABEL_66:
    w16_image_mark_image(v20, &v23, v21, v22, v19);
    return 1;
  }

  switch(v15)
  {
    case 0:
      *(&v23 + 2) = *a3;
      v17 = w16_image_mark_RGB32;
      goto LABEL_65;
    case 1:
      *(&v23 + 2) = *a3;
      v18 = w16_image_mark_RGB32;
      goto LABEL_63;
    case 2:
      *(&v23 + 2) = *a3;
      v17 = w16_image_mark_W8;
LABEL_65:
      v19 = v17;
      v20 = a2;
      v21 = v8;
      v22 = 0;
      goto LABEL_66;
  }

LABEL_36:
  w16_image_mark(a2, &v23, v8);
  return 1;
}

uint64_t w16_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v735 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 96);
  v5 = *(v2 + 48);
  v6 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v4 == 0) + 4 * (v5 == 0));
  if (v6 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v2;
  v9 = *(v2 + 4);
  v10 = v9 - 1;
  if (v9 < 1)
  {
    return 0;
  }

  v11 = *(v2 + 8);
  v12 = (v11 - 1);
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v2 + 136);
  v688 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v4 == 0) + 4 * (v5 == 0));
  if ((*v2 & 0xFF0000) == 0x50000 || !v13)
  {
    v15 = *v2 & 0xFF00;
    if (v15 == 1024)
    {
      v734[0] = *(v2 + 4);
      v724[0] = v11;
      v16 = **(v2 + 88);
      if (v4)
      {
        v17 = *v4;
      }

      else
      {
        v17 = 0xFFFF;
      }

      v30 = *(v2 + 28) >> 1;
      v31 = *(v2 + 12);
      v32 = *(v2 + 16);
      if (v5)
      {
        v33 = *(v2 + 32) >> 1;
        v711 = v5 + 2 * v33 * v32 + 2 * v31;
        v707 = 1;
      }

      else
      {
        v711 = 0;
        v33 = 0;
        v707 = 0;
      }

      v703 = ~v17;
      v706 = v33;
      v37 = (*(v2 + 40) + 2 * v32 * v30 + 2 * v31);
      v709 = v37;
      v699 = *(v2 + 28) >> 1;
      if (v13)
      {
        shape_enum_clip_alloc(v1, v2, v13, 1, 1, 1, *(v2 + 104), *(v2 + 108), v9, v11);
        v39 = v38;
        v40 = v711;
        v721 = v33;
        if (v38)
        {
          goto LABEL_388;
        }

        return 1;
      }

      v717 = 0;
      if (v5)
      {
        v41 = v9;
      }

      else
      {
        v41 = 0;
      }

      v721 = v33 - v41;
      v40 = v711;
      v42 = v9;
LABEL_66:
      v720 = v30 - v42;
      v700 = v9;
      switch(v6)
      {
        case 0:
          v65 = v720 + v9;
          v66 = v9;
          v67 = v724[0];
          v68 = v724[0] - 1;
          v69 = v37 + 2 * ((v65 * v68) & (v65 >> 63));
          if (v65 < 0)
          {
            v65 = -v65;
          }

          CGBlt_fillBytes(2 * v66, v724[0], 0, v69, 2 * v65);
          if (v5)
          {
            v70 = v721 + v66;
            v40 += 2 * ((v70 * v68) & (v70 >> 63));
            if (v70 < 0)
            {
              v70 = -v70;
            }

            v721 = v70;
            CGBlt_fillBytes(2 * v66, v67, 0, v40, 2 * v70);
          }

          goto LABEL_272;
        case 1:
          v714 = v9;
          v129 = v720 + v9;
          if (v129 < 0)
          {
            v37 = (v37 + 2 * v129 * (v724[0] - 1));
            v129 = -v129;
          }

          v130 = v30;
          v131 = 0;
          v132 = *(v8 + 88);
          if (v132)
          {
            v131 = *v132;
          }

          v133 = 2 * v9;
          v134 = v724[0];
          CGBlt_fillBytes(v133, v724[0], v131, v37, 2 * v129);
          if (v5)
          {
            v135 = *(v8 + 96);
            if (!v135)
            {
              v135 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v136 = v721 + v714;
            v40 += 2 * (((v721 + v714) * (v134 - 1)) & ((v721 + v714) >> 63));
            if ((v721 + v714) < 0)
            {
              v136 = -v136;
            }

            v721 = v136;
            CGBlt_fillBytes(v133, v134, *v135, v40, 2 * v136);
          }

          v30 = v130;
          goto LABEL_362;
        case 2:
          v105 = v724[0];
          v106 = v9 >> 2;
          v107 = 8 * v707;
          v108 = 2 * v707;
          if (v5)
          {
            v109 = v106 + 1;
            do
            {
              if (v9 < 4)
              {
                v115 = v9;
              }

              else
              {
                v110 = v109;
                do
                {
                  v111 = *v40 * v703 + ((*v40 * v703) >> 16) + 1;
                  v37->i16[0] = v16 + ((v37->u16[0] * v703 + ((v37->u16[0] * v703) >> 16) + 1) >> 16);
                  *v40 = v17 + HIWORD(v111);
                  v112 = *(v40 + 1) * v703 + ((*(v40 + 1) * v703) >> 16) + 1;
                  v37->i16[1] = v16 + ((v37->u16[1] * v703 + ((v37->u16[1] * v703) >> 16) + 1) >> 16);
                  *(v40 + 1) = v17 + HIWORD(v112);
                  v113 = *(v40 + 2) * v703 + ((*(v40 + 2) * v703) >> 16) + 1;
                  v37->i16[2] = v16 + ((v37->u16[2] * v703 + ((v37->u16[2] * v703) >> 16) + 1) >> 16);
                  *(v40 + 2) = v17 + HIWORD(v113);
                  v114 = *(v40 + 3) * v703 + ((*(v40 + 3) * v703) >> 16) + 1;
                  v37->i16[3] = v16 + ((v37->u16[3] * v703 + ((v37->u16[3] * v703) >> 16) + 1) >> 16);
                  *(v40 + 3) = v17 + HIWORD(v114);
                  ++v37;
                  --v110;
                  v40 += v107;
                }

                while (v110 > 1);
                v115 = v9 & 3;
              }

              if (v115 >= 1)
              {
                v116 = v115 + 1;
                do
                {
                  v117 = *v40 * v703 + ((*v40 * v703) >> 16);
                  v37->i16[0] = v16 + ((v37->u16[0] * v703 + ((v37->u16[0] * v703) >> 16) + 1) >> 16);
                  v37 = (v37 + 2);
                  *v40 = v17 + ((v117 + 1) >> 16);
                  v40 += v108;
                  --v116;
                }

                while (v116 > 1);
              }

              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v105;
            }

            while (v105);
          }

          else
          {
            v186 = vdup_n_s16(v16);
            v187 = v106 + 1;
            v188 = vdup_n_s16(v703);
            v189.i64[0] = 0x100000001;
            v189.i64[1] = 0x100000001;
            do
            {
              if (v9 < 4)
              {
                v192 = v9;
              }

              else
              {
                v190 = v187;
                do
                {
                  v191 = vmull_u16(v188, *v37);
                  *v37++ = vadd_s16(v186, vaddhn_s32(vsraq_n_u32(v191, v191, 0x10uLL), v189));
                  --v190;
                  v40 += v107;
                }

                while (v190 > 1);
                v192 = v9 & 3;
              }

              if (v192 >= 1)
              {
                v193 = v192 + 1;
                do
                {
                  v37->i16[0] = v16 + ((v37->u16[0] * v703 + ((v37->u16[0] * v703) >> 16) + 1) >> 16);
                  v37 = (v37 + 2);
                  v40 += v108;
                  --v193;
                }

                while (v193 > 1);
              }

              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v105;
            }

            while (v105);
          }

          goto LABEL_385;
        case 3:
          v120 = v724[0];
          do
          {
            v121 = v9;
            do
            {
              v122 = *v40;
              if (v122 == 0xFFFF)
              {
                v37->i16[0] = v16;
                LOWORD(v122) = v17;
              }

              else if (*v40)
              {
                v123 = v122 ^ 0xFFFF;
                v37->i16[0] = v16 - ((v123 * v16 + ((v123 * v16) >> 16) + 1) >> 16);
                v122 = v17 - ((v123 * v17 + ((v123 * v17) >> 16) + 1) >> 16);
              }

              else
              {
                v37->i16[0] = 0;
              }

              *v40 = v122;
              v37 = (v37 + 2);
              v40 += 2 * v707;
              --v121;
            }

            while (v121);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            --v120;
          }

          while (v120);
          goto LABEL_385;
        case 4:
          v90 = v724[0];
          do
          {
            v91 = v9;
            do
            {
              v92 = *v40;
              if (*v40)
              {
                if (v92 != 0xFFFF)
                {
                  v37->i16[0] = v16 - ((v92 * v16 + ((v92 * v16) >> 16) + 1) >> 16);
                  v93 = v17 - ((v92 * v17 + ((v92 * v17) >> 16) + 1) >> 16);
                }

                else
                {
                  LOWORD(v93) = 0;
                  v37->i16[0] = 0;
                }
              }

              else
              {
                v37->i16[0] = v16;
                LOWORD(v93) = v17;
              }

              *v40 = v93;
              v37 = (v37 + 2);
              v40 += 2 * v707;
              --v91;
            }

            while (v91);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            --v90;
          }

          while (v90);
          goto LABEL_385;
        case 5:
          v141 = v724[0];
          do
          {
            v142 = v9;
            do
            {
              v143 = *v40;
              v37->i16[0] = (v143 * v16 + v37->u16[0] * v703 + ((v143 * v16 + v37->u16[0] * v703) >> 16) + 1) >> 16;
              v37 = (v37 + 2);
              *v40 = ((v143 + v703) * v17 + (((v143 + v703) * v17) >> 16) + 1) >> 16;
              v40 += 2 * v707;
              --v142;
            }

            while (v142);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            --v141;
          }

          while (v141);
          goto LABEL_385;
        case 6:
          v150 = v724[0];
          do
          {
            v151 = v9;
            do
            {
              v152 = *v40;
              if (v152 != 0xFFFF)
              {
                if (~v152 == 0xFFFF)
                {
                  v37->i16[0] = v16;
                  LOWORD(v153) = v17;
                }

                else
                {
                  v154 = ~v152;
                  v37->i16[0] += (v154 * v16 + ((v154 * v16) >> 16) + 1) >> 16;
                  v153 = v152 + ((v154 * v17 + ((v154 * v17) >> 16) + 1) >> 16);
                }

                *v40 = v153;
              }

              v37 = (v37 + 2);
              v40 += 2 * v707;
              --v151;
            }

            while (v151);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            --v150;
          }

          while (v150);
          goto LABEL_385;
        case 7:
          v124 = v724[0];
          v125 = 2 * v707;
          if (v5)
          {
            do
            {
              v126 = v9;
              do
              {
                v127 = *v40;
                v37->i16[0] -= (v37->u16[0] * v703 + ((v37->u16[0] * v703) >> 16) + 1) >> 16;
                v37 = (v37 + 2);
                *v40 = v127 - ((v127 * v703 + ((v127 * v703) >> 16) + 1) >> 16);
                v40 += v125;
                --v126;
              }

              while (v126);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v124;
            }

            while (v124);
          }

          else
          {
            do
            {
              v128 = v9;
              do
              {
                v37->i16[0] -= (v37->u16[0] * v703 + ((v37->u16[0] * v703) >> 16) + 1) >> 16;
                v37 = (v37 + 2);
                v40 += v125;
                --v128;
              }

              while (v128);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v124;
            }

            while (v124);
          }

          goto LABEL_385;
        case 8:
          v160 = v724[0];
          v161 = 2 * v707;
          if (v5)
          {
            do
            {
              v162 = v9;
              do
              {
                v163 = *v40;
                v37->i16[0] -= (v37->u16[0] * v17 + ((v37->u16[0] * v17) >> 16) + 1) >> 16;
                v37 = (v37 + 2);
                *v40 = v163 - ((v163 * v17 + ((v163 * v17) >> 16) + 1) >> 16);
                v40 += v161;
                --v162;
              }

              while (v162);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v160;
            }

            while (v160);
          }

          else
          {
            do
            {
              v164 = v9;
              do
              {
                v37->i16[0] -= (v37->u16[0] * v17 + ((v37->u16[0] * v17) >> 16) + 1) >> 16;
                v37 = (v37 + 2);
                v40 += v161;
                --v164;
              }

              while (v164);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v160;
            }

            while (v160);
          }

          goto LABEL_385;
        case 9:
          v98 = v724[0];
          do
          {
            v99 = v9;
            do
            {
              v100 = *v40 ^ 0xFFFF;
              v37->i16[0] = (v100 * v16 + v37->u16[0] * v17 + ((v100 * v16 + v37->u16[0] * v17) >> 16) + 1) >> 16;
              v37 = (v37 + 2);
              *v40 = ((v100 + v17) * v17 + (((v100 + v17) * v17) >> 16) + 1) >> 16;
              v40 += 2 * v707;
              --v99;
            }

            while (v99);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            --v98;
          }

          while (v98);
          goto LABEL_385;
        case 10:
          v157 = v724[0];
          do
          {
            v158 = v9;
            do
            {
              v159 = *v40 ^ 0xFFFF;
              v37->i16[0] = (v159 * v16 + v37->u16[0] * v703 + ((v159 * v16 + v37->u16[0] * v703) >> 16) + 1) >> 16;
              v37 = (v37 + 2);
              *v40 = ((v159 + v703) * v17 + (((v159 + v703) * v17) >> 16) + 1) >> 16;
              v40 += 2 * v707;
              --v158;
            }

            while (v158);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            --v157;
          }

          while (v157);
          goto LABEL_385;
        case 11:
          if (v5)
          {
            v85 = v724[0];
            do
            {
              v86 = v9;
              do
              {
                v87 = *v40;
                v88 = v17 - v16 - v37->u16[0] + v87;
                v89 = v87 + v17;
                if (v88 >= 0xFFFF)
                {
                  LOWORD(v88) = -1;
                }

                if (v89 >= 0xFFFF)
                {
                  LOWORD(v89) = -1;
                }

                v37->i16[0] = v89 - v88;
                v37 = (v37 + 2);
                *v40 = v89;
                v40 += 2 * v707;
                --v86;
              }

              while (v86);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v85;
            }

            while (v85);
          }

          else
          {
            v181 = v724[0];
            do
            {
              v182 = v9;
              do
              {
                v183 = v17 - v16 + (v37->u16[0] ^ 0xFFFF);
                if (v183 >= 0xFFFF)
                {
                  LOWORD(v183) = -1;
                }

                v37->i16[0] = ~v183;
                v37 = (v37 + 2);
                v40 += 2 * v707;
                --v182;
              }

              while (v182);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v181;
            }

            while (v181);
          }

          goto LABEL_385;
        case 12:
          if (v5)
          {
            v94 = v724[0];
            do
            {
              v95 = v9;
              do
              {
                v96 = v37->u16[0] + v16;
                v97 = *v40 + v17;
                if (v96 >= 0xFFFF)
                {
                  LOWORD(v96) = -1;
                }

                if (v97 >= 0xFFFF)
                {
                  LOWORD(v97) = -1;
                }

                v37->i16[0] = v96;
                v37 = (v37 + 2);
                *v40 = v97;
                v40 += 2 * v707;
                --v95;
              }

              while (v95);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v94;
            }

            while (v94);
          }

          else
          {
            v184 = v724[0];
            do
            {
              v185 = v9;
              do
              {
                v37->i16[0] = (2 * v37->i16[0]) | (v37->i16[0] >> 15);
                v37 = (v37 + 2);
                v40 += 2 * v707;
                --v185;
              }

              while (v185);
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v184;
            }

            while (v184);
          }

          goto LABEL_385;
        case 13:
          if (!v17)
          {
            goto LABEL_386;
          }

          v684 = v8;
          v146 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v147 = PDAmultiplyPDA_8993(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v147;
                *v40 = HIWORD(v147);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v148 = (v16 + v703) * v37->u16[0];
              if (v148 <= 0xFFFE8000)
              {
                v149 = v148 + 0x8000;
              }

              else
              {
                v149 = 4294868992;
              }

              v37->i16[0] = ((v149 >> 16) + v149) >> 16;
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v146;
              LODWORD(v9) = v700;
              if (!v146)
              {
                break;
              }
            }
          }

          goto LABEL_271;
        case 14:
          if (!v17)
          {
            goto LABEL_386;
          }

          v77 = v724[0];
          while (1)
          {
            v78 = v9;
            do
            {
              if (v5)
              {
                v79 = *v40;
                if (!*v40)
                {
                  v37->i16[0] = v16;
                  *v40 = v17;
                  goto LABEL_114;
                }
              }

              else
              {
                v79 = 0xFFFF;
              }

              v80 = (v37->u16[0] ^ 0xFFFFu) * v16 - v37->u16[0] + (v37->u16[0] << 16);
              if (v80 <= 0xFFFE8000)
              {
                v81 = v80 + 0x8000;
              }

              else
              {
                v81 = 4294868992;
              }

              v82 = (v81 + (v81 >> 16)) >> 16;
              if (v5)
              {
                v83 = 0xFFFF * (v17 + v79) - v17 * v79;
                if (v83 <= 4294868992)
                {
                  v84 = v83 + 0x8000;
                }

                else
                {
                  v84 = 4294868992;
                }

                v37->i16[0] = v82;
                *v40 = (v82 | ((v84 >> 16) + v84)) >> 16;
              }

              else
              {
                v37->i16[0] = v82;
              }

LABEL_114:
              v37 = (v37 + 2);
              v40 += 2 * v707;
              --v78;
            }

            while (v78);
            v37 = (v37 + 2 * v720);
            v40 += 2 * v721;
            if (!--v77)
            {
LABEL_385:
              v724[0] = 0;
LABEL_386:
              v37 = v709;
              v39 = v717;
              if (!v717)
              {
                return 1;
              }

              v723 = 0;
LABEL_388:
              if (!shape_enum_clip_next(v39, &v723 + 1, &v723, v734, v724))
              {
                goto LABEL_1250;
              }

              v717 = v39;
              v37 = (v37 + 2 * v30 * v723 + 2 * SHIDWORD(v723));
              v42 = v734[0];
              if (v5)
              {
                v40 = (v711 + 2 * v33 * v723 + 2 * SHIDWORD(v723));
              }

              v194 = v721;
              if (v5)
              {
                v194 = v33 - v734[0];
              }

              v721 = v194;
              LODWORD(v9) = v734[0];
              goto LABEL_66;
            }
          }

        case 15:
          if (!v17)
          {
            goto LABEL_386;
          }

          v118 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v119 = PDAoverlayPDA_8994(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v119;
                *v40 = HIWORD(v119);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAoverlayPDA_8994(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v118;
              LODWORD(v9) = v700;
              if (!v118)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 16:
          if (!v17)
          {
            goto LABEL_386;
          }

          v75 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v76 = PDAdarkenPDA_8996(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v76;
                *v40 = HIWORD(v76);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAdarkenPDA_8996(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v75;
              LODWORD(v9) = v700;
              if (!v75)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 17:
          if (!v17)
          {
            goto LABEL_386;
          }

          v137 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v138 = PDAlightenPDA_8995(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v138;
                *v40 = HIWORD(v138);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAlightenPDA_8995(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v137;
              LODWORD(v9) = v700;
              if (!v137)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 18:
          if (!v17)
          {
            goto LABEL_386;
          }

          v155 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v156 = PDAcolordodgePDA_8997(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v156;
                *v40 = HIWORD(v156);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAcolordodgePDA_8997(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v155;
              LODWORD(v9) = v700;
              if (!v155)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 19:
          if (!v17)
          {
            goto LABEL_386;
          }

          v167 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v168 = PDAcolorburnPDA_8998(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v168;
                *v40 = HIWORD(v168);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAcolorburnPDA_8998(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v167;
              LODWORD(v9) = v700;
              if (!v167)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 20:
          if (!v17)
          {
            goto LABEL_386;
          }

          v139 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v140 = PDAsoftlightPDA_9000(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v140;
                *v40 = HIWORD(v140);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAsoftlightPDA_9000(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v139;
              LODWORD(v9) = v700;
              if (!v139)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 21:
          if (!v17)
          {
            goto LABEL_386;
          }

          v144 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v145 = PDAhardlightPDA_8999(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v145;
                *v40 = HIWORD(v145);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAhardlightPDA_8999(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v144;
              LODWORD(v9) = v700;
              if (!v144)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 22:
          if (!v17)
          {
            goto LABEL_386;
          }

          v165 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v166 = PDAdifferencePDA_9001(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v166;
                *v40 = HIWORD(v166);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAdifferencePDA_9001(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v165;
              LODWORD(v9) = v700;
              if (!v165)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 23:
          if (!v17)
          {
            goto LABEL_386;
          }

          if (v16 >= v17)
          {
            v169 = v17;
          }

          else
          {
            v169 = v16;
          }

          v170 = v724[0];
          break;
        case 24:
          if (!v17)
          {
            goto LABEL_386;
          }

          v103 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v104 = PDAhuePDA_9002(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v104;
                *v40 = HIWORD(v104);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAhuePDA_9002(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v103;
              LODWORD(v9) = v700;
              if (!v103)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 25:
          if (!v17)
          {
            goto LABEL_386;
          }

          v101 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v102 = PDAhuePDA_9002(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v102;
                *v40 = HIWORD(v102);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAhuePDA_9002(v37->u16[0], 0xFFFFu, v16, v17);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v101;
              LODWORD(v9) = v700;
              if (!v101)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 26:
          if (!v17)
          {
            goto LABEL_386;
          }

          v179 = v724[0];
          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v180 = PDAluminosityPDA_9004(v16, v17, v37->u16[0], *v40);
                v37->i16[0] = v180;
                *v40 = HIWORD(v180);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v37->i16[0] = PDAluminosityPDA_9004(v16, v17, v37->u16[0], 0xFFFFu);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              --v179;
              LODWORD(v9) = v700;
              if (!v179)
              {
                break;
              }
            }
          }

LABEL_361:
          v724[0] = 0;
          v6 = v688;
          goto LABEL_362;
        case 27:
          if (!v17)
          {
            goto LABEL_386;
          }

          v684 = v8;
          v713 = v724[0];
          if (v16 >= v17)
          {
            v71 = v17;
          }

          else
          {
            v71 = v16;
          }

          while (1)
          {
            if (v5)
            {
              if (*v40)
              {
                v72 = PDAluminosityPDA_9004(v37->u16[0], *v40, v16, v17);
                v37->i16[0] = v72;
                *v40 = HIWORD(v72);
              }

              else
              {
                v37->i16[0] = v16;
                *v40 = v17;
              }
            }

            else
            {
              v73 = v37->u16[0] * v703 + 0x8000;
              if (v17 == 0xFFFF)
              {
                v73 = 0x8000;
              }

              v37->i16[0] = v71 + (((v73 >> 16) + v73) >> 16);
            }

            v37 = (v37 + 2);
            v40 += 2 * v707;
            LODWORD(v9) = v9 - 1;
            if (!v9)
            {
              v37 = (v37 + 2 * v720);
              v40 += 2 * v721;
              v74 = v713-- == 1;
              LODWORD(v9) = v700;
              if (v74)
              {
                break;
              }
            }
          }

LABEL_271:
          v724[0] = 0;
          v6 = v688;
          v8 = v684;
LABEL_272:
          v30 = v699;
LABEL_362:
          v33 = v706;
          goto LABEL_386;
        default:
          goto LABEL_386;
      }

LABEL_332:
      v171 = v9;
      while (v5)
      {
        v172 = *v40;
        if (*v40)
        {
          goto LABEL_337;
        }

        v37->i16[0] = v16;
        *v40 = v17;
LABEL_349:
        v37 = (v37 + 2);
        v40 += 2 * v707;
        if (!--v171)
        {
          v37 = (v37 + 2 * v720);
          v40 += 2 * v721;
          if (!--v170)
          {
            goto LABEL_385;
          }

          goto LABEL_332;
        }
      }

      v172 = 0xFFFF;
LABEL_337:
      if (v37->u16[0] >= v172)
      {
        v173 = v172;
      }

      else
      {
        v173 = v37->u16[0];
      }

      v174 = 0xFFFF * (v173 + v169) - (2 * v169) * v173;
      if (v174 <= 4294868992)
      {
        v175 = v174 + 0x8000;
      }

      else
      {
        v175 = 4294868992;
      }

      v176 = (v175 + (v175 >> 16)) >> 16;
      if (v5)
      {
        v177 = 0xFFFF * (v17 + v172) - v17 * v172;
        if (v177 <= 4294868992)
        {
          v178 = v177 + 0x8000;
        }

        else
        {
          v178 = 4294868992;
        }

        v37->i16[0] = v176;
        *v40 = (v176 | ((v178 >> 16) + v178)) >> 16;
      }

      else
      {
        v37->i16[0] = v176;
      }

      goto LABEL_349;
    }

    v734[0] = *(v2 + 4);
    v724[0] = v11;
    v18 = *(v2 + 88);
    v19 = *(v2 + 12);
    v20 = *(v2 + 16);
    v21 = *(v2 + 28) >> 1;
    if (v5)
    {
      v22 = *(v2 + 32) >> 1;
      v690 = v5 + 2 * v22 * v20 + 2 * v19;
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v690 = 0;
      v22 = 0;
      v23 = 0;
    }

    v689 = *(v2 + 40) + 2 * v20 * v21 + 2 * v19;
    v34 = *(v2 + 56);
    v35 = *(v2 + 60);
    v698 = *(v2 + 76) >> 1;
    v683 = v2;
    if (v15 == 256)
    {
      if (v4)
      {
        v705 = *(v2 + 80) >> 1;
        v4 += 2 * v705 * v35 + 2 * v34;
        v36 = 0xFFFFFFFFLL;
      }

      else
      {
        v705 = 0;
        v36 = 0;
      }

      v18 += v35 * v698 + v34;
      if (v698 == v21)
      {
        v49 = (v689 - v18) >> 1;
        if (v49 >= 1)
        {
          if (v49 <= v9)
          {
            v689 += 2 * v10;
            v18 += v10;
            v690 += 2 * (v23 & v10);
            v52 = -1;
            v698 = *(v2 + 28) >> 1;
            v4 += 2 * (v36 & v10);
            goto LABEL_49;
          }

          v50 = v21 * v12;
          v51 = &v18[v21 * v12];
          if (v689 <= &v51[v9 - 1])
          {
            v21 = -v21;
            v689 += 2 * v50;
            v690 += 2 * v22 * v12;
            v22 = -v22;
            v4 += 2 * v705 * v12;
            v23 &= 1u;
            v705 = -v705;
            v36 &= 1u;
            v52 = 1;
            v18 = v51;
            v698 = v21;
            goto LABEL_49;
          }
        }
      }

      v23 &= 1u;
      v36 &= 1u;
      v52 = 1;
LABEL_49:
      v681 = *(v2 + 56);
      v682 = *(v2 + 60);
      if (v13)
      {
        v718 = v36;
        v719 = v23;
        v712 = 0;
        v697 = 0;
        v53 = -1;
        v693 = v698;
        v692 = v705;
        goto LABEL_54;
      }

      v57 = v52 * v9;
      v710 = v22 - v23 * v9;
      v58 = -1;
      v59 = v705;
      v691 = v52;
      v692 = v705;
      v60 = v698;
      v693 = v698;
LABEL_62:
      v694 = 0;
      v695 = v18;
      v712 = 0;
      v697 = 0;
      v698 = v60 - v57;
      v704 = v4;
      v705 = v59 - v36 * v9;
      v722 = v4;
      v64 = v689;
      v56 = v690;
      goto LABEL_394;
    }

    v693 = *(v2 + 64);
    v692 = *(v2 + 68);
    if (v4)
    {
      v705 = *(v2 + 80) >> 1;
      v36 = 1;
    }

    else
    {
      v705 = 0;
      v36 = 0;
    }

    v697 = &v18[v698 * v692];
    v23 &= 1u;
    if (v13)
    {
      v681 = *(v2 + 56);
      v682 = *(v2 + 60);
      v718 = v36;
      v719 = v23;
      v52 = 1;
      v712 = *(v2 + 88);
      v53 = v712;
LABEL_54:
      v691 = v52;
      v696 = v21;
      shape_enum_clip_alloc(v1, v2, v13, v52, v21, 1, *(v2 + 104), *(v2 + 108), v9, v11);
      v39 = v54;
      v55 = v4;
      v722 = v4;
      v56 = v690;
      v710 = v22;
      if (!v54)
      {
        return 1;
      }

      goto LABEL_1227;
    }

    v710 = v22 - (v23 * v9);
    if (!v18)
    {
      v681 = *(v2 + 56);
      v682 = *(v2 + 60);
      v58 = 0;
      v691 = 1;
      v57 = v9;
      v59 = v705;
      v60 = *(v2 + 76) >> 1;
      goto LABEL_62;
    }

    v61 = v35 % v692;
    v682 = v35 % v692;
    v695 = *(v2 + 88);
    v62 = &v18[v698 * v61];
    v63 = v34 % v693;
    v18 = &v62[v63];
    v58 = &v62[v693];
    v681 = v63;
    v712 = v18;
    v694 = 0;
    if (v4)
    {
      v691 = 1;
      v36 = 1;
      v704 = &v4[2 * v705 * v61 + 2 * v63];
      v722 = v704;
    }

    else
    {
      v704 = 0;
      v722 = 0;
      v691 = 1;
    }

    v64 = v689;
    v56 = v690;
    v57 = v9;
LABEL_394:
    v718 = v36;
    v719 = v23;
    v696 = v21;
    v708 = v21 - v57;
    switch(v6)
    {
      case 0:
        v680 = v58;
        v195 = v708 - v9;
        v196 = &v64[-v9 + 1];
        if (v691 >= 0)
        {
          v196 = v64;
          v195 = v708 + v9;
        }

        v197 = v724[0];
        v198 = v724[0] - 1;
        v199 = (v196 + 2 * ((v195 * v198) & (v195 >> 63)));
        if (v195 < 0)
        {
          v195 = -v195;
        }

        v200 = 2 * v9;
        CGBlt_fillBytes(2 * v9, v724[0], 0, v199, 2 * v195);
        if (!v719)
        {
          goto LABEL_1272;
        }

        if (v691 < 0)
        {
          v201 = v710 - v9;
          v56 = &v56[-2 * v9 + 2];
        }

        else
        {
          v201 = v710 + v9;
        }

        v39 = v694;
        v56 += 2 * ((v201 * v198) & (v201 >> 63));
        if (v201 < 0)
        {
          v201 = -v201;
        }

        v710 = v201;
        CGBlt_fillBytes(v200, v197, 0, v56, 2 * v201);
        v18 = v695;
        goto LABEL_1280;
      case 1:
        v381 = *(v683 + 1);
        if (v381 == 2)
        {
          if (v9 >= 16 && (2 * v693) <= 0x40)
          {
            v3.i32[0] = 2 * v693;
            v623 = vcnt_s8(v3);
            v623.i16[0] = vaddlv_u8(v623);
            if (v623.i32[0] <= 1u)
            {
              v680 = v58;
              v624 = v64;
              v625 = v724[0];
              CGSFillDRAM64(v624, 2 * (v9 + v708), 2 * v9, v724[0], v695, 2 * v698, 2 * v693, v692, 2 * v681, v682);
              if (v719)
              {
                if (v36)
                {
                  CGSFillDRAM64(v56, 2 * (v9 + v710), 2 * v9, v625, v4, 2 * v705, 2 * v693, v692, 2 * v681, v682);
                }

                else
                {
                  CGBlt_fillBytes(2 * v9, v625, -1, v56, 2 * (v9 + v710));
                }
              }

              v18 = v695;
              goto LABEL_1279;
            }
          }
        }

        else if (v381 == 1)
        {
          v680 = v58;
          v382 = v22;
          if (v691 < 0)
          {
            v383 = v698 - v9;
            v663 = 2 * v9 - 2;
            v18 = (v18 - v663);
            v384 = v708 - v9;
            v64 = (v64 - v663);
          }

          else
          {
            v383 = v698 + v9;
            v384 = v708 + v9;
          }

          v664 = v724[0];
          v665 = v724[0] - 1;
          v666 = &v18[(v383 * v665) & (v383 >> 63)];
          if (v383 >= 0)
          {
            v667 = v383;
          }

          else
          {
            v667 = -v383;
          }

          if (v384 >= 0)
          {
            LODWORD(v668) = v384;
          }

          else
          {
            v668 = -v384;
          }

          v698 = v667;
          CGBlt_copyBytes(2 * v9, v724[0], v666, &v64[(v384 * v665) & (v384 >> 63)], 2 * v667, 2 * v668);
          if (v719)
          {
            v18 = v695;
            if (v36)
            {
              v669 = v705 - v9;
              v670 = 2 * v9 - 2;
              v671 = &v722[-v670];
              v672 = v710 - v9;
              v673 = &v56[-v670];
              if (v691 >= 0)
              {
                v671 = v722;
                v673 = v56;
                v669 = v705 + v9;
                v672 = v710 + v9;
              }

              v674 = &v671[2 * ((v669 * v665) & (v669 >> 63))];
              if (v669 >= 0)
              {
                v675 = v669;
              }

              else
              {
                v675 = -v669;
              }

              v56 = &v673[2 * ((v672 * v665) & (v672 >> 63))];
              if (v672 >= 0)
              {
                v676 = v672;
              }

              else
              {
                v676 = -v672;
              }

              v705 = v675;
              v710 = v676;
              v722 = v674;
              CGBlt_copyBytes(2 * v9, v664, v674, v56, 2 * v675, 2 * v676);
            }

            else
            {
              v677 = v710 - v9;
              v678 = &v56[-2 * v9 + 2];
              if (v691 >= 0)
              {
                v678 = v56;
                v677 = v710 + v9;
              }

              v679 = (v677 * v665) & (v677 >> 63);
              v56 = (v678 + 2 * v679);
              if (v677 < 0)
              {
                v677 = -v677;
              }

              v710 = v677;
              CGBlt_fillBytes(2 * v9, v664, -1, (v678 + 2 * v679), 2 * v677);
            }

            v22 = v382;
          }

          else
          {
            v22 = v382;
LABEL_1272:
            v18 = v695;
          }

LABEL_1279:
          v39 = v694;
LABEL_1280:
          v58 = v680;
          goto LABEL_1056;
        }

        if (v23)
        {
          v626 = v23;
          if (v36)
          {
            v627 = v36;
            v628 = v724[0];
            v55 = v704;
            do
            {
              v629 = v9;
              do
              {
                *v64 = *v18;
                *v56 = *v722;
                v630 = &v18[v691];
                if (v630 >= v58)
                {
                  v631 = -v693;
                }

                else
                {
                  v631 = 0;
                }

                v722 += 2 * v627 + 2 * v631;
                v18 = &v630[v631];
                v56 += 2 * v23;
                v64 += v691;
                --v629;
              }

              while (v629);
              if (v697)
              {
                v632 = &v712[v698];
                if (v632 >= v697)
                {
                  v633 = -(v705 * v692);
                }

                else
                {
                  v633 = 0;
                }

                v55 += 2 * v705 + 2 * v633;
                if (v632 >= v697)
                {
                  v634 = -(v698 * v692);
                }

                else
                {
                  v634 = 0;
                }

                v18 = &v632[v634];
                v58 += 2 * v634 + 2 * v698;
                v722 = v55;
                v712 = v18;
              }

              else
              {
                v18 += v698;
                v722 += 2 * v705;
              }

              v64 += v708;
              v56 += 2 * v710;
              --v628;
            }

            while (v628);
            goto LABEL_1225;
          }

          v643 = v724[0];
          v55 = v704;
          v582 = v712;
          do
          {
            v644 = v9;
            do
            {
              *v64 = *v18;
              *v56 = -1;
              v645 = &v18[v691];
              if (v645 >= v58)
              {
                v646 = -v693;
              }

              else
              {
                v646 = 0;
              }

              v722 += 2 * v646;
              v18 = &v645[v646];
              v56 += 2 * v626;
              v64 += v691;
              --v644;
            }

            while (v644);
            if (v697)
            {
              v647 = &v582[v698];
              if (v647 >= v697)
              {
                v648 = -(v705 * v692);
              }

              else
              {
                v648 = 0;
              }

              v55 += 2 * v705 + 2 * v648;
              if (v647 >= v697)
              {
                v649 = -(v698 * v692);
              }

              else
              {
                v649 = 0;
              }

              v582 = &v647[v649];
              v58 += 2 * v649 + 2 * v698;
              v722 = v55;
              v18 = v582;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v643;
          }

          while (v643);
        }

        else
        {
          v635 = v36;
          v636 = v724[0];
          v55 = v704;
          v582 = v712;
          do
          {
            v637 = v9;
            do
            {
              *v64 = *v18;
              v638 = &v18[v691];
              if (v638 >= v58)
              {
                v639 = -v693;
              }

              else
              {
                v639 = 0;
              }

              v722 += 2 * v635 + 2 * v639;
              v18 = &v638[v639];
              v64 += v691;
              --v637;
            }

            while (v637);
            if (v697)
            {
              v640 = &v582[v698];
              if (v640 >= v697)
              {
                v641 = -(v705 * v692);
              }

              else
              {
                v641 = 0;
              }

              v55 += 2 * v705 + 2 * v641;
              if (v640 >= v697)
              {
                v642 = -(v698 * v692);
              }

              else
              {
                v642 = 0;
              }

              v582 = &v640[v642];
              v58 += 2 * v642 + 2 * v698;
              v722 = v55;
              v18 = v582;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v636;
          }

          while (v636);
        }

LABEL_1224:
        v712 = v582;
        goto LABEL_1225;
      case 2:
        v327 = 2 * v691;
        v328 = v36;
        if (v23)
        {
          v329 = v724[0];
          v55 = v704;
          v330 = v23;
          v331 = v705;
          v332 = 2 * v330;
          do
          {
            v333 = v9;
            do
            {
              v334 = *v722;
              if (*v722)
              {
                if (v334 == 0xFFFF)
                {
                  *v64 = *v18;
                  LOWORD(v335) = *v722;
                }

                else
                {
                  v331 = v705;
                  v336 = *v56 * (v334 ^ 0xFFFF) + ((*v56 * (v334 ^ 0xFFFFu)) >> 16) + 1;
                  *v64 = *v18 + ((*v64 * (v334 ^ 0xFFFF) + ((*v64 * (v334 ^ 0xFFFFu)) >> 16) + 1) >> 16);
                  v335 = v334 + HIWORD(v336);
                }

                *v56 = v335;
              }

              v337 = &v18[v691];
              if (v337 >= v58)
              {
                v338 = -v693;
              }

              else
              {
                v338 = 0;
              }

              v722 += 2 * v328 + 2 * v338;
              v18 = &v337[v338];
              v56 += v332;
              v64 = (v64 + v327);
              --v333;
            }

            while (v333);
            if (v697)
            {
              v339 = &v712[v698];
              if (v339 >= v697)
              {
                v340 = -(v705 * v692);
              }

              else
              {
                v340 = 0;
              }

              v55 += 2 * v331 + 2 * v340;
              if (v339 >= v697)
              {
                v341 = -(v698 * v692);
              }

              else
              {
                v341 = 0;
              }

              v18 = &v339[v341];
              v58 += 2 * v341 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v331;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v329;
          }

          while (v329);
        }

        else
        {
          v589 = v724[0];
          v55 = v704;
          do
          {
            v590 = v9;
            do
            {
              v591 = *v722;
              if (*v722)
              {
                if (v591 == 0xFFFF)
                {
                  LOWORD(v592) = *v18;
                }

                else
                {
                  v592 = *v18 + ((*v64 * (v591 ^ 0xFFFF) + ((*v64 * (v591 ^ 0xFFFFu)) >> 16) + 1) >> 16);
                }

                *v64 = v592;
              }

              v593 = &v18[v691];
              if (v593 >= v58)
              {
                v594 = -v693;
              }

              else
              {
                v594 = 0;
              }

              v722 += 2 * v328 + 2 * v594;
              v18 = &v593[v594];
              v64 = (v64 + v327);
              --v590;
            }

            while (v590);
            if (v697)
            {
              v595 = &v712[v698];
              if (v595 >= v697)
              {
                v596 = -(v705 * v692);
              }

              else
              {
                v596 = 0;
              }

              v55 += 2 * v705 + 2 * v596;
              if (v595 >= v697)
              {
                v597 = -(v698 * v692);
              }

              else
              {
                v597 = 0;
              }

              v18 = &v595[v597];
              v58 += 2 * v597 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v589;
          }

          while (v589);
        }

        goto LABEL_1225;
      case 3:
        v357 = 2 * v23;
        v358 = 2 * v691;
        if (v36)
        {
          v359 = v36;
          v360 = v724[0];
          v55 = v704;
          do
          {
            v361 = v9;
            do
            {
              v362 = *v56;
              if (v362 == 0xFFFF)
              {
                *v64 = *v18;
                LOWORD(v362) = *v722;
              }

              else if (*v56)
              {
                v363 = *v722;
                v364 = v362 ^ 0xFFFF;
                *v64 = *v18 - ((*v18 * v364 + ((*v18 * v364) >> 16) + 1) >> 16);
                v362 = v363 - ((v363 * v364 + ((v363 * v364) >> 16) + 1) >> 16);
              }

              else
              {
                *v64 = 0;
              }

              *v56 = v362;
              v365 = &v18[v691];
              if (v365 >= v58)
              {
                v366 = -v693;
              }

              else
              {
                v366 = 0;
              }

              v722 += 2 * v359 + 2 * v366;
              v18 = &v365[v366];
              v56 += v357;
              v64 = (v64 + v358);
              --v361;
            }

            while (v361);
            if (v697)
            {
              v367 = &v712[v698];
              if (v367 >= v697)
              {
                v368 = -(v705 * v692);
              }

              else
              {
                v368 = 0;
              }

              v55 += 2 * v705 + 2 * v368;
              if (v367 >= v697)
              {
                v369 = -(v698 * v692);
              }

              else
              {
                v369 = 0;
              }

              v18 = &v367[v369];
              v58 += 2 * v369 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v360;
          }

          while (v360);
          goto LABEL_1225;
        }

        v598 = v724[0];
        v55 = v704;
        v582 = v712;
        do
        {
          v599 = v9;
          do
          {
            v600 = *v56;
            if (*v56)
            {
              if (v600 == 0xFFFF)
              {
                LOWORD(v600) = *v18;
              }

              else
              {
                v600 = *v18 - ((*v18 * (v600 ^ 0xFFFF) + ((*v18 * (v600 ^ 0xFFFF)) >> 16) + 1) >> 16);
              }
            }

            *v64 = v600;
            v601 = &v18[v691];
            if (v601 >= v58)
            {
              v602 = -v693;
            }

            else
            {
              v602 = 0;
            }

            v722 += 2 * v602;
            v18 = &v601[v602];
            v56 += v357;
            v64 = (v64 + v358);
            --v599;
          }

          while (v599);
          if (v697)
          {
            v603 = &v582[v698];
            if (v603 >= v697)
            {
              v604 = -(v705 * v692);
            }

            else
            {
              v604 = 0;
            }

            v55 += 2 * v705 + 2 * v604;
            if (v603 >= v697)
            {
              v605 = -(v698 * v692);
            }

            else
            {
              v605 = 0;
            }

            v582 = &v603[v605];
            v58 += 2 * v605 + 2 * v698;
            v722 = v55;
            v18 = v582;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v598;
        }

        while (v598);
        goto LABEL_1224;
      case 4:
        v262 = v724[0];
        v263 = 2 * v23;
        v264 = v712;
        do
        {
          v265 = v9;
          do
          {
            v266 = *v56;
            if (*v56)
            {
              if (v266 != 0xFFFF)
              {
                if (v36)
                {
                  v268 = *v722;
                }

                else
                {
                  v268 = 0xFFFF;
                }

                *v64 = *v18 - ((*v18 * v266 + ((*v18 * v266) >> 16) + 1) >> 16);
                v267 = v268 - ((v268 * v266 + ((v268 * v266) >> 16) + 1) >> 16);
              }

              else
              {
                LOWORD(v267) = 0;
                *v64 = 0;
              }
            }

            else if (v36)
            {
              LOWORD(v267) = *v722;
            }

            else
            {
              LOWORD(v267) = -1;
            }

            *v56 = v267;
            v269 = &v18[v691];
            if (v269 >= v58)
            {
              v270 = -v693;
            }

            else
            {
              v270 = 0;
            }

            v722 += 2 * v36 + 2 * v270;
            v18 = &v269[v270];
            v56 += v263;
            v64 += v691;
            --v265;
          }

          while (v265);
          if (v697)
          {
            v271 = &v264[v698];
            if (v271 >= v697)
            {
              v272 = -(v705 * v692);
            }

            else
            {
              v272 = 0;
            }

            v273 = v704 + 2 * v705 + 2 * v272;
            if (v271 >= v697)
            {
              v274 = -(v698 * v692);
            }

            else
            {
              v274 = 0;
            }

            v264 = &v271[v274];
            v58 += 2 * v274 + 2 * v698;
            v704 += 2 * v705 + 2 * v272;
            v722 = v273;
            v18 = v264;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v262;
        }

        while (v262);
        goto LABEL_1052;
      case 5:
        v415 = v36;
        v416 = v724[0];
        v55 = v704;
        do
        {
          v417 = v9;
          do
          {
            v418 = *v56;
            v419 = *v722;
            v420 = *v18 * v418 + *v64 * (v419 ^ 0xFFFF);
            *v64 = (v420 + HIWORD(v420) + 1) >> 16;
            *v56 = (((v419 ^ 0xFFFF) + v418) * v419 + ((((v419 ^ 0xFFFFu) + v418) * v419) >> 16) + 1) >> 16;
            v421 = &v18[v691];
            if (v421 >= v58)
            {
              v422 = -v693;
            }

            else
            {
              v422 = 0;
            }

            v722 += 2 * v415 + 2 * v422;
            v18 = &v421[v422];
            v56 += 2 * v23;
            v64 += v691;
            --v417;
          }

          while (v417);
          if (v697)
          {
            v423 = &v712[v698];
            if (v423 >= v697)
            {
              v424 = -(v705 * v692);
            }

            else
            {
              v424 = 0;
            }

            v55 += 2 * v705 + 2 * v424;
            if (v423 >= v697)
            {
              v425 = -(v698 * v692);
            }

            else
            {
              v425 = 0;
            }

            v18 = &v423[v425];
            v58 += 2 * v425 + 2 * v698;
            v722 = v55;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v416;
        }

        while (v416);
        goto LABEL_1225;
      case 6:
        v458 = v724[0];
        do
        {
          v459 = v9;
          do
          {
            v460 = *v56;
            if (v460 != 0xFFFF)
            {
              if (~v460 == 0xFFFF)
              {
                *v64 = *v18;
                if (v36)
                {
                  LOWORD(v461) = *v722;
                }

                else
                {
                  LOWORD(v461) = -1;
                }
              }

              else
              {
                if (v36)
                {
                  v462 = *v722;
                }

                else
                {
                  v462 = 0xFFFF;
                }

                v463 = ~v460;
                *v64 += (*v18 * v463 + ((*v18 * v463) >> 16) + 1) >> 16;
                v461 = v460 + ((v462 * v463 + ((v462 * v463) >> 16) + 1) >> 16);
              }

              *v56 = v461;
            }

            v464 = &v18[v691];
            if (v464 >= v58)
            {
              v465 = -v693;
            }

            else
            {
              v465 = 0;
            }

            v722 += 2 * v36 + 2 * v465;
            v18 = &v464[v465];
            v56 += 2 * v23;
            v64 += v691;
            --v459;
          }

          while (v459);
          if (v697)
          {
            v466 = &v712[v698];
            if (v466 >= v697)
            {
              v467 = -(v705 * v692);
            }

            else
            {
              v467 = 0;
            }

            v468 = v704 + 2 * v705 + 2 * v467;
            if (v466 >= v697)
            {
              v469 = -(v698 * v692);
            }

            else
            {
              v469 = 0;
            }

            v18 = &v466[v469];
            v58 += 2 * v469 + 2 * v698;
            v704 += 2 * v705 + 2 * v467;
            v722 = v468;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v458;
        }

        while (v458);
        goto LABEL_1053;
      case 7:
        v370 = v36;
        if (v23)
        {
          v371 = v724[0];
          v55 = v704;
          do
          {
            v372 = v9;
            do
            {
              v373 = *v722;
              if (v373 != 0xFFFF)
              {
                if (*v722)
                {
                  v374 = *v56;
                  v375 = v373 ^ 0xFFFF;
                  *v64 -= (*v64 * v375 + ((*v64 * v375) >> 16) + 1) >> 16;
                  v373 = v374 - ((v374 * v375 + ((v374 * v375) >> 16) + 1) >> 16);
                }

                else
                {
                  *v64 = 0;
                }

                *v56 = v373;
              }

              v376 = &v18[v691];
              if (v376 >= v58)
              {
                v377 = -v693;
              }

              else
              {
                v377 = 0;
              }

              v722 += 2 * v370 + 2 * v377;
              v18 = &v376[v377];
              v56 += 2 * v23;
              v64 += v691;
              --v372;
            }

            while (v372);
            if (v697)
            {
              v378 = &v712[v698];
              if (v378 >= v697)
              {
                v379 = -(v705 * v692);
              }

              else
              {
                v379 = 0;
              }

              v55 += 2 * v705 + 2 * v379;
              if (v378 >= v697)
              {
                v380 = -(v698 * v692);
              }

              else
              {
                v380 = 0;
              }

              v18 = &v378[v380];
              v58 += 2 * v380 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v371;
          }

          while (v371);
          goto LABEL_1225;
        }

        v606 = v724[0];
        v55 = v704;
LABEL_1119:
        v607 = v9;
        while (1)
        {
          v608 = *v722;
          if (!*v722)
          {
            goto LABEL_1123;
          }

          if (v608 != 0xFFFF)
          {
            break;
          }

LABEL_1124:
          v609 = &v18[v691];
          if (v609 >= v58)
          {
            v610 = -v693;
          }

          else
          {
            v610 = 0;
          }

          v722 += 2 * v370 + 2 * v610;
          v18 = &v609[v610];
          v64 += v691;
          if (!--v607)
          {
            if (v697)
            {
              v611 = &v712[v698];
              if (v611 >= v697)
              {
                v612 = -(v705 * v692);
              }

              else
              {
                v612 = 0;
              }

              v55 += 2 * v705 + 2 * v612;
              if (v611 >= v697)
              {
                v613 = -(v698 * v692);
              }

              else
              {
                v613 = 0;
              }

              v18 = &v611[v613];
              v58 += 2 * v613 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            if (!--v606)
            {
              goto LABEL_1225;
            }

            goto LABEL_1119;
          }
        }

        v608 = *v64 - ((*v64 * (v608 ^ 0xFFFF) + ((*v64 * (v608 ^ 0xFFFF)) >> 16) + 1) >> 16);
LABEL_1123:
        *v64 = v608;
        goto LABEL_1124;
      case 8:
        v496 = v36;
        if (v23)
        {
          v497 = v724[0];
          v55 = v704;
          do
          {
            v498 = v9;
            do
            {
              v499 = *v722;
              if (*v722)
              {
                if (v499 != 0xFFFF)
                {
                  v501 = *v56;
                  *v64 -= (*v64 * v499 + ((*v64 * v499) >> 16) + 1) >> 16;
                  v500 = v501 - ((v501 * v499 + ((v501 * v499) >> 16) + 1) >> 16);
                }

                else
                {
                  LOWORD(v500) = 0;
                  *v64 = 0;
                }

                *v56 = v500;
              }

              v502 = &v18[v691];
              if (v502 >= v58)
              {
                v503 = -v693;
              }

              else
              {
                v503 = 0;
              }

              v722 += 2 * v496 + 2 * v503;
              v18 = &v502[v503];
              v56 += 2 * v23;
              v64 += v691;
              --v498;
            }

            while (v498);
            if (v697)
            {
              v504 = &v712[v698];
              if (v504 >= v697)
              {
                v505 = -(v705 * v692);
              }

              else
              {
                v505 = 0;
              }

              v55 += 2 * v705 + 2 * v505;
              if (v504 >= v697)
              {
                v506 = -(v698 * v692);
              }

              else
              {
                v506 = 0;
              }

              v18 = &v504[v506];
              v58 += 2 * v506 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v497;
          }

          while (v497);
LABEL_1225:
          v724[0] = 0;
          v39 = v694;
          v18 = v695;
          if (!v694)
          {
            return 1;
          }

          goto LABEL_1226;
        }

        v614 = v724[0];
        v55 = v704;
LABEL_1141:
        v615 = v9;
        while (1)
        {
          v616 = *v722;
          if (v616 == 0xFFFF)
          {
            break;
          }

          if (~v616 != 0xFFFF)
          {
            v617 = *v64 - ((*v64 * v616 + ((*v64 * v616) >> 16) + 1) >> 16);
LABEL_1146:
            *v64 = v617;
          }

          v618 = &v18[v691];
          if (v618 >= v58)
          {
            v619 = -v693;
          }

          else
          {
            v619 = 0;
          }

          v722 += 2 * v496 + 2 * v619;
          v18 = &v618[v619];
          v64 += v691;
          if (!--v615)
          {
            if (v697)
            {
              v620 = &v712[v698];
              if (v620 >= v697)
              {
                v621 = -(v705 * v692);
              }

              else
              {
                v621 = 0;
              }

              v55 += 2 * v705 + 2 * v621;
              if (v620 >= v697)
              {
                v622 = -(v698 * v692);
              }

              else
              {
                v622 = 0;
              }

              v18 = &v620[v622];
              v58 += 2 * v622 + 2 * v698;
              v722 = v55;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            if (!--v614)
            {
              goto LABEL_1225;
            }

            goto LABEL_1141;
          }
        }

        LOWORD(v617) = 0;
        goto LABEL_1146;
      case 9:
        v286 = v36;
        v287 = v724[0];
        v55 = v704;
        do
        {
          v288 = v9;
          do
          {
            v289 = *v722;
            v290 = *v56 ^ 0xFFFF;
            v291 = *v18 * v290 + *v64 * v289;
            *v64 = (v291 + HIWORD(v291) + 1) >> 16;
            *v56 = ((v289 + v290) * v289 + (((v289 + v290) * v289) >> 16) + 1) >> 16;
            v292 = &v18[v691];
            if (v292 >= v58)
            {
              v293 = -v693;
            }

            else
            {
              v293 = 0;
            }

            v722 += 2 * v286 + 2 * v293;
            v18 = &v292[v293];
            v56 += 2 * v23;
            v64 += v691;
            --v288;
          }

          while (v288);
          if (v697)
          {
            v294 = &v712[v698];
            if (v294 >= v697)
            {
              v295 = -(v705 * v692);
            }

            else
            {
              v295 = 0;
            }

            v55 += 2 * v705 + 2 * v295;
            if (v294 >= v697)
            {
              v296 = -(v698 * v692);
            }

            else
            {
              v296 = 0;
            }

            v18 = &v294[v296];
            v58 += 2 * v296 + 2 * v698;
            v722 = v55;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v287;
        }

        while (v287);
        goto LABEL_1225;
      case 10:
        v485 = v36;
        v486 = v724[0];
        v55 = v704;
        do
        {
          v487 = v9;
          do
          {
            v488 = *v722;
            v489 = *v56 ^ 0xFFFF;
            v490 = *v18 * v489 + *v64 * (v488 ^ 0xFFFF);
            *v64 = (v490 + HIWORD(v490) + 1) >> 16;
            *v56 = (((v488 ^ 0xFFFF) + v489) * v488 + ((((v488 ^ 0xFFFFu) + v489) * v488) >> 16) + 1) >> 16;
            v491 = &v18[v691];
            if (v491 >= v58)
            {
              v492 = -v693;
            }

            else
            {
              v492 = 0;
            }

            v722 += 2 * v485 + 2 * v492;
            v18 = &v491[v492];
            v56 += 2 * v23;
            v64 += v691;
            --v487;
          }

          while (v487);
          if (v697)
          {
            v493 = &v712[v698];
            if (v493 >= v697)
            {
              v494 = -(v705 * v692);
            }

            else
            {
              v494 = 0;
            }

            v55 += 2 * v705 + 2 * v494;
            if (v493 >= v697)
            {
              v495 = -(v698 * v692);
            }

            else
            {
              v495 = 0;
            }

            v18 = &v493[v495];
            v58 += 2 * v495 + 2 * v698;
            v722 = v55;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v486;
        }

        while (v486);
        goto LABEL_1225;
      case 11:
        v249 = 2 * v691;
        if (v23)
        {
          v250 = v724[0];
          do
          {
            v251 = v9;
            do
            {
              if (v36)
              {
                v252 = *v722;
              }

              else
              {
                v252 = 0xFFFF;
              }

              v253 = *v56;
              v254 = v253 - (*v64 + *v18) + v252;
              v255 = v252 + v253;
              if (v254 >= 0xFFFF)
              {
                LOWORD(v254) = -1;
              }

              if (v255 >= 0xFFFF)
              {
                LOWORD(v255) = -1;
              }

              *v64 = v255 - v254;
              *v56 = v255;
              v256 = &v18[v691];
              if (v256 >= v58)
              {
                v257 = -v693;
              }

              else
              {
                v257 = 0;
              }

              v722 += 2 * v36 + 2 * v257;
              v18 = &v256[v257];
              v56 += 2 * v23;
              v64 = (v64 + v249);
              --v251;
            }

            while (v251);
            if (v697)
            {
              v258 = &v712[v698];
              if (v258 >= v697)
              {
                v259 = -(v705 * v692);
              }

              else
              {
                v259 = 0;
              }

              v260 = v704 + 2 * v705 + 2 * v259;
              if (v258 >= v697)
              {
                v261 = -(v698 * v692);
              }

              else
              {
                v261 = 0;
              }

              v18 = &v258[v261];
              v58 += 2 * v261 + 2 * v698;
              v704 += 2 * v705 + 2 * v259;
              v722 = v260;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v250;
          }

          while (v250);
        }

        else
        {
          v570 = v724[0];
          v264 = v712;
          do
          {
            v571 = v9;
            do
            {
              if (v36)
              {
                v572 = *v722;
              }

              else
              {
                v572 = 0xFFFF;
              }

              v573 = v572 - *v18 + (*v64 ^ 0xFFFF);
              if (v573 >= 0xFFFF)
              {
                LOWORD(v573) = -1;
              }

              *v64 = ~v573;
              v574 = &v18[v691];
              if (v574 >= v58)
              {
                v575 = -v693;
              }

              else
              {
                v575 = 0;
              }

              v722 += 2 * v36 + 2 * v575;
              v18 = &v574[v575];
              v64 = (v64 + v249);
              --v571;
            }

            while (v571);
            if (v697)
            {
              v576 = &v264[v698];
              if (v576 >= v697)
              {
                v577 = -(v705 * v692);
              }

              else
              {
                v577 = 0;
              }

              v578 = v704 + 2 * v705 + 2 * v577;
              if (v576 >= v697)
              {
                v579 = -(v698 * v692);
              }

              else
              {
                v579 = 0;
              }

              v264 = &v576[v579];
              v58 += 2 * v579 + 2 * v698;
              v704 += 2 * v705 + 2 * v577;
              v722 = v578;
              v18 = v264;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v570;
          }

          while (v570);
LABEL_1052:
          v712 = v264;
        }

        goto LABEL_1053;
      case 12:
        if (v23)
        {
          v275 = v724[0];
          do
          {
            v276 = v9;
            do
            {
              if (v36)
              {
                v277 = *v722;
              }

              else
              {
                v277 = 0xFFFF;
              }

              v278 = *v18 + *v64;
              v279 = v277 + *v56;
              if (v278 >= 0xFFFF)
              {
                LOWORD(v278) = -1;
              }

              if (v279 >= 0xFFFF)
              {
                LOWORD(v279) = -1;
              }

              *v64 = v278;
              *v56 = v279;
              v280 = &v18[v691];
              if (v280 >= v58)
              {
                v281 = -v693;
              }

              else
              {
                v281 = 0;
              }

              v722 += 2 * v36 + 2 * v281;
              v18 = &v280[v281];
              v56 += 2 * v23;
              v64 += v691;
              --v276;
            }

            while (v276);
            if (v697)
            {
              v282 = &v712[v698];
              if (v282 >= v697)
              {
                v283 = -(v705 * v692);
              }

              else
              {
                v283 = 0;
              }

              v284 = v704 + 2 * v705 + 2 * v283;
              if (v282 >= v697)
              {
                v285 = -(v698 * v692);
              }

              else
              {
                v285 = 0;
              }

              v18 = &v282[v285];
              v58 += 2 * v285 + 2 * v698;
              v704 += 2 * v705 + 2 * v283;
              v722 = v284;
              v712 = v18;
            }

            else
            {
              v18 += v698;
              v722 += 2 * v705;
            }

            v64 += v708;
            v56 += 2 * v710;
            --v275;
          }

          while (v275);
          goto LABEL_1053;
        }

        v580 = v36;
        v581 = v724[0];
        v55 = v704;
        v582 = v712;
        do
        {
          v583 = v9;
          do
          {
            *v64 = (2 * *v64) | (*v64 >> 15);
            v584 = &v18[v691];
            if (v584 >= v58)
            {
              v585 = -v693;
            }

            else
            {
              v585 = 0;
            }

            v722 += 2 * v580 + 2 * v585;
            v18 = &v584[v585];
            v64 += v691;
            --v583;
          }

          while (v583);
          if (v697)
          {
            v586 = &v582[v698];
            if (v586 >= v697)
            {
              v587 = -(v705 * v692);
            }

            else
            {
              v587 = 0;
            }

            v55 += 2 * v705 + 2 * v587;
            if (v586 >= v697)
            {
              v588 = -(v698 * v692);
            }

            else
            {
              v588 = 0;
            }

            v582 = &v586[v588];
            v58 += 2 * v588 + 2 * v698;
            v722 = v55;
            v18 = v582;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          --v581;
        }

        while (v581);
        goto LABEL_1224;
      case 13:
        v685 = v22;
        v687 = v4;
        v702 = v9;
        v441 = v36;
        v442 = v724[0];
        v443 = 2 * v23;
        v444 = -v693;
        while (1)
        {
          v716 = v442;
          v445 = v702;
          do
          {
            if (v36)
            {
              v446 = *v722;
              if (!*v722)
              {
                goto LABEL_820;
              }

              if (v23)
              {
                goto LABEL_812;
              }
            }

            else
            {
              v446 = 0xFFFF;
              if (v23)
              {
LABEL_812:
                if (*v56)
                {
                  v447 = v58;
                  v448 = v444;
                  v449 = PDAmultiplyPDA_8993(*v64, *v56, *v18, v446);
                  v444 = v448;
                  v58 = v447;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v449;
                  *v56 = HIWORD(v449);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v446;
                }

                goto LABEL_820;
              }
            }

            v450 = (*v18 + ~v446) * *v64;
            if (v450 <= 0xFFFE8000)
            {
              v451 = v450 + 0x8000;
            }

            else
            {
              v451 = 4294868992;
            }

            *v64 = ((v451 >> 16) + v451) >> 16;
LABEL_820:
            v452 = &v18[v691];
            if (v452 >= v58)
            {
              v453 = v444;
            }

            else
            {
              v453 = 0;
            }

            v722 += 2 * v441 + 2 * v453;
            v18 = &v452[v453];
            v56 += v443;
            v64 += v691;
            --v445;
          }

          while (v445);
          if (v697)
          {
            v454 = &v712[v698];
            v455 = -(v705 * v692);
            if (v454 < v697)
            {
              v455 = 0;
            }

            v456 = v704 + 2 * v705 + 2 * v455;
            v457 = -(v698 * v692);
            if (v454 < v697)
            {
              v457 = 0;
            }

            v18 = &v454[v457];
            v58 += 2 * v457 + 2 * v698;
            v704 += 2 * v705 + 2 * v455;
            v722 = v456;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          v442 = v716 - 1;
          if (v716 == 1)
          {
            goto LABEL_1030;
          }
        }

      case 14:
        v234 = v724[0];
        while (1)
        {
          v235 = v9;
          do
          {
            if (v36)
            {
              v236 = *v722;
              if (!*v722)
              {
                goto LABEL_470;
              }

              if (!v23)
              {
LABEL_460:
                v237 = 0xFFFF;
                goto LABEL_461;
              }
            }

            else
            {
              v236 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_460;
              }
            }

            v237 = *v56;
            if (!*v56)
            {
              *v64 = *v18;
              *v56 = v236;
              goto LABEL_470;
            }

LABEL_461:
            v238 = (*v64 ^ 0xFFFFu) * *v18 - *v64 + (*v64 << 16);
            if (v238 <= 0xFFFE8000)
            {
              v239 = v238 + 0x8000;
            }

            else
            {
              v239 = 4294868992;
            }

            v240 = (v239 + (v239 >> 16)) >> 16;
            if (v23)
            {
              v241 = 0xFFFF * (v237 + v236) - v237 * v236;
              if (v241 <= 4294868992)
              {
                v242 = v241 + 0x8000;
              }

              else
              {
                v242 = 4294868992;
              }

              *v64 = v240;
              *v56 = (v240 | ((v242 >> 16) + v242)) >> 16;
            }

            else
            {
              *v64 = v240;
            }

LABEL_470:
            v243 = &v18[v691];
            if (v243 >= v58)
            {
              v244 = -v693;
            }

            else
            {
              v244 = 0;
            }

            v722 += 2 * v36 + 2 * v244;
            v18 = &v243[v244];
            v56 += 2 * v23;
            v64 += v691;
            --v235;
          }

          while (v235);
          if (v697)
          {
            v245 = &v712[v698];
            if (v245 >= v697)
            {
              v246 = -(v705 * v692);
            }

            else
            {
              v246 = 0;
            }

            v247 = v704 + 2 * v705 + 2 * v246;
            if (v245 >= v697)
            {
              v248 = -(v698 * v692);
            }

            else
            {
              v248 = 0;
            }

            v18 = &v245[v248];
            v58 += 2 * v248 + 2 * v698;
            v704 += 2 * v705 + 2 * v246;
            v722 = v247;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v234)
          {
            goto LABEL_1053;
          }
        }

      case 15:
        v685 = v22;
        v687 = v4;
        v342 = v36;
        v343 = v724[0];
        v344 = 2 * v23;
        while (1)
        {
          v345 = v9;
          v346 = v58;
          do
          {
            if (v36)
            {
              v347 = *v722;
              if (!*v722)
              {
                goto LABEL_658;
              }

              if (v23)
              {
                goto LABEL_653;
              }
            }

            else
            {
              v347 = 0xFFFF;
              if (v23)
              {
LABEL_653:
                if (*v56)
                {
                  v348 = PDAoverlayPDA_8994(*v64, *v56, *v18, v347);
                  v58 = v346;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v348;
                  *v56 = HIWORD(v348);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v347;
                }

                goto LABEL_658;
              }
            }

            v349 = PDAoverlayPDA_8994(*v64, 0xFFFFu, *v18, v347);
            v58 = v346;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v349;
LABEL_658:
            v350 = &v18[v691];
            if (v350 >= v58)
            {
              v351 = -v693;
            }

            else
            {
              v351 = 0;
            }

            v722 += 2 * v342 + 2 * v351;
            v18 = &v350[v351];
            v56 += v344;
            v64 += v691;
            --v345;
          }

          while (v345);
          if (v697)
          {
            v352 = &v712[v698];
            v353 = -(v705 * v692);
            if (v352 < v697)
            {
              v353 = 0;
            }

            v354 = v343;
            v355 = v704 + 2 * v705 + 2 * v353;
            v356 = -(v698 * v692);
            if (v352 < v697)
            {
              v356 = 0;
            }

            v18 = &v352[v356];
            v58 += 2 * v356 + 2 * v698;
            v704 += 2 * v705 + 2 * v353;
            v722 = v355;
            v343 = v354;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v343)
          {
            goto LABEL_1030;
          }
        }

      case 16:
        v685 = v22;
        v687 = v4;
        v219 = v36;
        v220 = v724[0];
        v221 = 2 * v23;
        while (1)
        {
          v222 = v9;
          v223 = v58;
          do
          {
            if (v36)
            {
              v224 = *v722;
              if (!*v722)
              {
                goto LABEL_439;
              }

              if (v23)
              {
                goto LABEL_434;
              }
            }

            else
            {
              v224 = 0xFFFF;
              if (v23)
              {
LABEL_434:
                if (*v56)
                {
                  v225 = PDAdarkenPDA_8996(*v64, *v56, *v18, v224);
                  v58 = v223;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v225;
                  *v56 = HIWORD(v225);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v224;
                }

                goto LABEL_439;
              }
            }

            v226 = PDAdarkenPDA_8996(*v64, 0xFFFFu, *v18, v224);
            v58 = v223;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v226;
LABEL_439:
            v227 = &v18[v691];
            if (v227 >= v58)
            {
              v228 = -v693;
            }

            else
            {
              v228 = 0;
            }

            v722 += 2 * v219 + 2 * v228;
            v18 = &v227[v228];
            v56 += v221;
            v64 += v691;
            --v222;
          }

          while (v222);
          if (v697)
          {
            v229 = &v712[v698];
            v230 = -(v705 * v692);
            if (v229 < v697)
            {
              v230 = 0;
            }

            v231 = v220;
            v232 = v704 + 2 * v705 + 2 * v230;
            v233 = -(v698 * v692);
            if (v229 < v697)
            {
              v233 = 0;
            }

            v18 = &v229[v233];
            v58 += 2 * v233 + 2 * v698;
            v704 += 2 * v705 + 2 * v230;
            v722 = v232;
            v220 = v231;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v220)
          {
            goto LABEL_1030;
          }
        }

      case 17:
        v685 = v22;
        v687 = v4;
        v385 = v36;
        v386 = v724[0];
        v387 = 2 * v23;
        while (1)
        {
          v388 = v9;
          v389 = v58;
          do
          {
            if (v36)
            {
              v390 = *v722;
              if (!*v722)
              {
                goto LABEL_731;
              }

              if (v23)
              {
                goto LABEL_726;
              }
            }

            else
            {
              v390 = 0xFFFF;
              if (v23)
              {
LABEL_726:
                if (*v56)
                {
                  v391 = PDAlightenPDA_8995(*v64, *v56, *v18, v390);
                  v58 = v389;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v391;
                  *v56 = HIWORD(v391);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v390;
                }

                goto LABEL_731;
              }
            }

            v392 = PDAlightenPDA_8995(*v64, 0xFFFFu, *v18, v390);
            v58 = v389;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v392;
LABEL_731:
            v393 = &v18[v691];
            if (v393 >= v58)
            {
              v394 = -v693;
            }

            else
            {
              v394 = 0;
            }

            v722 += 2 * v385 + 2 * v394;
            v18 = &v393[v394];
            v56 += v387;
            v64 += v691;
            --v388;
          }

          while (v388);
          if (v697)
          {
            v395 = &v712[v698];
            v396 = -(v705 * v692);
            if (v395 < v697)
            {
              v396 = 0;
            }

            v397 = v386;
            v398 = v704 + 2 * v705 + 2 * v396;
            v399 = -(v698 * v692);
            if (v395 < v697)
            {
              v399 = 0;
            }

            v18 = &v395[v399];
            v58 += 2 * v399 + 2 * v698;
            v704 += 2 * v705 + 2 * v396;
            v722 = v398;
            v386 = v397;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v386)
          {
            goto LABEL_1030;
          }
        }

      case 18:
        v685 = v22;
        v687 = v4;
        v470 = v36;
        v471 = v724[0];
        v472 = 2 * v23;
        while (1)
        {
          v473 = v9;
          v474 = v58;
          do
          {
            if (v36)
            {
              v475 = *v722;
              if (!*v722)
              {
                goto LABEL_870;
              }

              if (v23)
              {
                goto LABEL_865;
              }
            }

            else
            {
              v475 = 0xFFFF;
              if (v23)
              {
LABEL_865:
                if (*v56)
                {
                  v476 = PDAcolordodgePDA_8997(*v64, *v56, *v18, v475);
                  v58 = v474;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v476;
                  *v56 = HIWORD(v476);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v475;
                }

                goto LABEL_870;
              }
            }

            v477 = PDAcolordodgePDA_8997(*v64, 0xFFFFu, *v18, v475);
            v58 = v474;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v477;
LABEL_870:
            v478 = &v18[v691];
            if (v478 >= v58)
            {
              v479 = -v693;
            }

            else
            {
              v479 = 0;
            }

            v722 += 2 * v470 + 2 * v479;
            v18 = &v478[v479];
            v56 += v472;
            v64 += v691;
            --v473;
          }

          while (v473);
          if (v697)
          {
            v480 = &v712[v698];
            v481 = -(v705 * v692);
            if (v480 < v697)
            {
              v481 = 0;
            }

            v482 = v471;
            v483 = v704 + 2 * v705 + 2 * v481;
            v484 = -(v698 * v692);
            if (v480 < v697)
            {
              v484 = 0;
            }

            v18 = &v480[v484];
            v58 += 2 * v484 + 2 * v698;
            v704 += 2 * v705 + 2 * v481;
            v722 = v483;
            v471 = v482;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v471)
          {
            goto LABEL_1030;
          }
        }

      case 19:
        v686 = v22;
        v522 = v36;
        v523 = v724[0];
        v524 = 2 * v23;
        while (1)
        {
          v525 = v9;
          v526 = v58;
          do
          {
            if (v36)
            {
              v527 = *v722;
              if (!*v722)
              {
                goto LABEL_956;
              }

              if (v23)
              {
                goto LABEL_951;
              }
            }

            else
            {
              v527 = 0xFFFF;
              if (v23)
              {
LABEL_951:
                if (*v56)
                {
                  v528 = PDAcolorburnPDA_8998(*v64, *v56, *v18, v527);
                  v58 = v526;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v528;
                  *v56 = HIWORD(v528);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v527;
                }

                goto LABEL_956;
              }
            }

            v529 = PDAcolorburnPDA_8998(*v64, 0xFFFFu, *v18, v527);
            v58 = v526;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v529;
LABEL_956:
            v530 = &v18[v691];
            if (v530 >= v58)
            {
              v531 = -v693;
            }

            else
            {
              v531 = 0;
            }

            v722 += 2 * v522 + 2 * v531;
            v18 = &v530[v531];
            v56 += v524;
            v64 += v691;
            --v525;
          }

          while (v525);
          if (v697)
          {
            v532 = &v712[v698];
            v533 = -(v705 * v692);
            if (v532 < v697)
            {
              v533 = 0;
            }

            v534 = v523;
            v535 = v704 + 2 * v705 + 2 * v533;
            v536 = -(v698 * v692);
            if (v532 < v697)
            {
              v536 = 0;
            }

            v18 = &v532[v536];
            v58 += 2 * v536 + 2 * v698;
            v704 += 2 * v705 + 2 * v533;
            v722 = v535;
            v523 = v534;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v523)
          {
            v724[0] = 0;
            v6 = v688;
            v22 = v686;
            goto LABEL_1054;
          }
        }

      case 20:
        v685 = v22;
        v687 = v4;
        v400 = v36;
        v401 = v724[0];
        v402 = 2 * v23;
        while (1)
        {
          v403 = v9;
          v404 = v58;
          do
          {
            if (v36)
            {
              v405 = *v722;
              if (!*v722)
              {
                goto LABEL_754;
              }

              if (v23)
              {
                goto LABEL_749;
              }
            }

            else
            {
              v405 = 0xFFFF;
              if (v23)
              {
LABEL_749:
                if (*v56)
                {
                  v406 = PDAsoftlightPDA_9000(*v64, *v56, *v18, v405);
                  v58 = v404;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v406;
                  *v56 = HIWORD(v406);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v405;
                }

                goto LABEL_754;
              }
            }

            v407 = PDAsoftlightPDA_9000(*v64, 0xFFFFu, *v18, v405);
            v58 = v404;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v407;
LABEL_754:
            v408 = &v18[v691];
            if (v408 >= v58)
            {
              v409 = -v693;
            }

            else
            {
              v409 = 0;
            }

            v722 += 2 * v400 + 2 * v409;
            v18 = &v408[v409];
            v56 += v402;
            v64 += v691;
            --v403;
          }

          while (v403);
          if (v697)
          {
            v410 = &v712[v698];
            v411 = -(v705 * v692);
            if (v410 < v697)
            {
              v411 = 0;
            }

            v412 = v401;
            v413 = v704 + 2 * v705 + 2 * v411;
            v414 = -(v698 * v692);
            if (v410 < v697)
            {
              v414 = 0;
            }

            v18 = &v410[v414];
            v58 += 2 * v414 + 2 * v698;
            v704 += 2 * v705 + 2 * v411;
            v722 = v413;
            v401 = v412;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v401)
          {
            goto LABEL_1030;
          }
        }

      case 21:
        v685 = v22;
        v687 = v4;
        v426 = v36;
        v427 = v724[0];
        v428 = 2 * v23;
        while (1)
        {
          v429 = v9;
          v430 = v58;
          do
          {
            if (v36)
            {
              v431 = *v722;
              if (!*v722)
              {
                goto LABEL_794;
              }

              if (v23)
              {
                goto LABEL_789;
              }
            }

            else
            {
              v431 = 0xFFFF;
              if (v23)
              {
LABEL_789:
                if (*v56)
                {
                  v432 = PDAhardlightPDA_8999(*v64, *v56, *v18, v431);
                  v58 = v430;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v432;
                  *v56 = HIWORD(v432);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v431;
                }

                goto LABEL_794;
              }
            }

            v433 = PDAhardlightPDA_8999(*v64, 0xFFFFu, *v18, v431);
            v58 = v430;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v433;
LABEL_794:
            v434 = &v18[v691];
            if (v434 >= v58)
            {
              v435 = -v693;
            }

            else
            {
              v435 = 0;
            }

            v722 += 2 * v426 + 2 * v435;
            v18 = &v434[v435];
            v56 += v428;
            v64 += v691;
            --v429;
          }

          while (v429);
          if (v697)
          {
            v436 = &v712[v698];
            v437 = -(v705 * v692);
            if (v436 < v697)
            {
              v437 = 0;
            }

            v438 = v427;
            v439 = v704 + 2 * v705 + 2 * v437;
            v440 = -(v698 * v692);
            if (v436 < v697)
            {
              v440 = 0;
            }

            v18 = &v436[v440];
            v58 += 2 * v440 + 2 * v698;
            v704 += 2 * v705 + 2 * v437;
            v722 = v439;
            v427 = v438;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v427)
          {
            goto LABEL_1030;
          }
        }

      case 22:
        v685 = v22;
        v687 = v4;
        v507 = v36;
        v508 = v724[0];
        v509 = 2 * v23;
        while (1)
        {
          v510 = v9;
          v511 = v58;
          do
          {
            if (v36)
            {
              v512 = *v722;
              if (!*v722)
              {
                goto LABEL_933;
              }

              if (v23)
              {
                goto LABEL_928;
              }
            }

            else
            {
              v512 = 0xFFFF;
              if (v23)
              {
LABEL_928:
                if (*v56)
                {
                  v513 = PDAdifferencePDA_9001(*v64, *v56, *v18, v512);
                  v58 = v511;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v513;
                  *v56 = HIWORD(v513);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v512;
                }

                goto LABEL_933;
              }
            }

            v514 = PDAdifferencePDA_9001(*v64, 0xFFFFu, *v18, v512);
            v58 = v511;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v514;
LABEL_933:
            v515 = &v18[v691];
            if (v515 >= v58)
            {
              v516 = -v693;
            }

            else
            {
              v516 = 0;
            }

            v722 += 2 * v507 + 2 * v516;
            v18 = &v515[v516];
            v56 += v509;
            v64 += v691;
            --v510;
          }

          while (v510);
          if (v697)
          {
            v517 = &v712[v698];
            v518 = -(v705 * v692);
            if (v517 < v697)
            {
              v518 = 0;
            }

            v519 = v508;
            v520 = v704 + 2 * v705 + 2 * v518;
            v521 = -(v698 * v692);
            if (v517 < v697)
            {
              v521 = 0;
            }

            v18 = &v517[v521];
            v58 += 2 * v521 + 2 * v698;
            v704 += 2 * v705 + 2 * v518;
            v722 = v520;
            v508 = v519;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v508)
          {
            goto LABEL_1030;
          }
        }

      case 23:
        v537 = v724[0];
        while (1)
        {
          v538 = v9;
          do
          {
            if (v36)
            {
              v539 = *v722;
              if (!*v722)
              {
                goto LABEL_993;
              }

              if (!v23)
              {
LABEL_977:
                v540 = 0xFFFF;
                goto LABEL_978;
              }
            }

            else
            {
              v539 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_977;
              }
            }

            v540 = *v56;
            if (!*v56)
            {
              *v64 = *v18;
              *v56 = v539;
              goto LABEL_993;
            }

LABEL_978:
            if (*v18 >= v539)
            {
              v541 = v539;
            }

            else
            {
              v541 = *v18;
            }

            if (*v64 >= v540)
            {
              v542 = v540;
            }

            else
            {
              v542 = *v64;
            }

            v543 = 0xFFFF * (v541 + v542) - 2 * v542 * v541;
            if (v543 <= 4294868992)
            {
              v544 = v543 + 0x8000;
            }

            else
            {
              v544 = 4294868992;
            }

            v545 = (v544 + (v544 >> 16)) >> 16;
            if (v23)
            {
              v546 = 0xFFFF * (v540 + v539) - v540 * v539;
              if (v546 <= 4294868992)
              {
                v547 = v546 + 0x8000;
              }

              else
              {
                v547 = 4294868992;
              }

              *v64 = v545;
              *v56 = (v545 | ((v547 >> 16) + v547)) >> 16;
            }

            else
            {
              *v64 = v545;
            }

LABEL_993:
            v548 = &v18[v691];
            if (v548 >= v58)
            {
              v549 = -v693;
            }

            else
            {
              v549 = 0;
            }

            v722 += 2 * v36 + 2 * v549;
            v18 = &v548[v549];
            v56 += 2 * v23;
            v64 += v691;
            --v538;
          }

          while (v538);
          if (v697)
          {
            v550 = &v712[v698];
            if (v550 >= v697)
            {
              v551 = -(v705 * v692);
            }

            else
            {
              v551 = 0;
            }

            v552 = v704 + 2 * v705 + 2 * v551;
            if (v550 >= v697)
            {
              v553 = -(v698 * v692);
            }

            else
            {
              v553 = 0;
            }

            v18 = &v550[v553];
            v58 += 2 * v553 + 2 * v698;
            v704 += 2 * v705 + 2 * v551;
            v722 = v552;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v537)
          {
LABEL_1053:
            v724[0] = 0;
LABEL_1054:
            v18 = v695;
LABEL_1055:
            v39 = v694;
LABEL_1056:
            v55 = v704;
            if (!v39)
            {
              return 1;
            }

LABEL_1226:
            v53 = v58;
            v723 = 0;
LABEL_1227:
            v704 = v55;
            if (!shape_enum_clip_next(v39, &v723 + 1, &v723, v734, v724))
            {
LABEL_1250:
              v48 = v39;
              goto LABEL_1251;
            }

            v694 = v39;
            v695 = v18;
            if (v697)
            {
              v21 = v696;
              v64 = (v689 + 2 * v696 * v723 + 2 * SHIDWORD(v723));
              v650 = (v723 + *(v683 + 60)) % v692;
              v57 = v734[0];
              v651 = (HIDWORD(v723) + *(v683 + 56)) % v693;
              v652 = &v18[v698 * v650];
              v18 = &v652[v651];
              v58 = &v652[v693];
              v23 = v719;
              if (v719)
              {
                v56 = (v690 + 2 * v22 * v723 + 2 * SHIDWORD(v723));
              }

              v653 = v710;
              if (v719)
              {
                v653 = v22 - v734[0];
              }

              v710 = v653;
              v712 = &v652[v651];
              if (v718)
              {
                v36 = v718;
              }

              else
              {
                v36 = 0;
              }

              v654 = v704;
              if (v718)
              {
                v654 = &v4[2 * v705 * v650 + 2 * v651];
              }

              v704 = v654;
              v655 = v722;
              if (v718)
              {
                v655 = &v4[2 * v705 * v650 + 2 * v651];
              }

              v722 = v655;
              LODWORD(v9) = v734[0];
              v681 = (HIDWORD(v723) + *(v683 + 56)) % v693;
              v682 = (v723 + *(v683 + 60)) % v692;
            }

            else
            {
              v656 = HIDWORD(v723) * v691;
              LODWORD(v9) = v734[0];
              v657 = v734[0] * v691;
              v21 = v696;
              v64 = (v689 + 2 * v696 * v723 + 2 * HIDWORD(v723) * v691);
              v57 = v734[0] * v691;
              v18 += v723 * v693 + HIDWORD(v723) * v691;
              v697 = 0;
              v698 = v693 - v734[0] * v691;
              v36 = v718;
              v23 = v719;
              if (v719)
              {
                v56 = (v690 + 2 * v22 * v723 + 2 * v656);
              }

              v658 = v710;
              if (v719)
              {
                v658 = v22 - v657;
              }

              v710 = v658;
              v659 = &v4[2 * v723 * v692 + 2 * v656];
              v660 = v692 - v657;
              v661 = v722;
              if (v718)
              {
                v661 = v659;
              }

              v722 = v661;
              v662 = v705;
              if (v718)
              {
                v662 = v660;
              }

              v705 = v662;
              v58 = v53;
            }

            goto LABEL_394;
          }
        }

      case 24:
        v685 = v22;
        v687 = v4;
        v312 = v36;
        v313 = v724[0];
        v314 = 2 * v23;
        while (1)
        {
          v315 = v9;
          v316 = v58;
          do
          {
            if (v36)
            {
              v317 = *v722;
              if (!*v722)
              {
                goto LABEL_612;
              }

              if (v23)
              {
                goto LABEL_607;
              }
            }

            else
            {
              v317 = 0xFFFF;
              if (v23)
              {
LABEL_607:
                if (*v56)
                {
                  v318 = PDAhuePDA_9002(*v64, *v56, *v18, v317);
                  v58 = v316;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v318;
                  *v56 = HIWORD(v318);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v317;
                }

                goto LABEL_612;
              }
            }

            v319 = PDAhuePDA_9002(*v64, 0xFFFFu, *v18, v317);
            v58 = v316;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v319;
LABEL_612:
            v320 = &v18[v691];
            if (v320 >= v58)
            {
              v321 = -v693;
            }

            else
            {
              v321 = 0;
            }

            v722 += 2 * v312 + 2 * v321;
            v18 = &v320[v321];
            v56 += v314;
            v64 += v691;
            --v315;
          }

          while (v315);
          if (v697)
          {
            v322 = &v712[v698];
            v323 = -(v705 * v692);
            if (v322 < v697)
            {
              v323 = 0;
            }

            v324 = v313;
            v325 = v704 + 2 * v705 + 2 * v323;
            v326 = -(v698 * v692);
            if (v322 < v697)
            {
              v326 = 0;
            }

            v18 = &v322[v326];
            v58 += 2 * v326 + 2 * v698;
            v704 += 2 * v705 + 2 * v323;
            v722 = v325;
            v313 = v324;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v313)
          {
LABEL_1030:
            v724[0] = 0;
            v4 = v687;
            v6 = v688;
            v22 = v685;
            v18 = v695;
            goto LABEL_1055;
          }
        }

      case 25:
        v685 = v22;
        v687 = v4;
        v297 = v36;
        v298 = v724[0];
        v299 = 2 * v23;
        while (1)
        {
          v300 = v9;
          v301 = v58;
          do
          {
            if (v36)
            {
              v302 = *v722;
              if (!*v722)
              {
                goto LABEL_589;
              }

              if (v23)
              {
                goto LABEL_584;
              }
            }

            else
            {
              v302 = 0xFFFF;
              if (v23)
              {
LABEL_584:
                if (*v56)
                {
                  v303 = PDAhuePDA_9002(*v64, *v56, *v18, v302);
                  v58 = v301;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v303;
                  *v56 = HIWORD(v303);
                }

                else
                {
                  *v64 = *v18;
                  *v56 = v302;
                }

                goto LABEL_589;
              }
            }

            v304 = PDAhuePDA_9002(*v64, 0xFFFFu, *v18, v302);
            v58 = v301;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v304;
LABEL_589:
            v305 = &v18[v691];
            if (v305 >= v58)
            {
              v306 = -v693;
            }

            else
            {
              v306 = 0;
            }

            v722 += 2 * v297 + 2 * v306;
            v18 = &v305[v306];
            v56 += v299;
            v64 += v691;
            --v300;
          }

          while (v300);
          if (v697)
          {
            v307 = &v712[v698];
            v308 = -(v705 * v692);
            if (v307 < v697)
            {
              v308 = 0;
            }

            v309 = v298;
            v310 = v704 + 2 * v705 + 2 * v308;
            v311 = -(v698 * v692);
            if (v307 < v697)
            {
              v311 = 0;
            }

            v18 = &v307[v311];
            v58 += 2 * v311 + 2 * v698;
            v704 += 2 * v705 + 2 * v308;
            v722 = v310;
            v298 = v309;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v298)
          {
            goto LABEL_1030;
          }
        }

      case 26:
        v685 = v22;
        v687 = v4;
        v554 = v36;
        v555 = v724[0];
        v556 = 2 * v23;
        while (1)
        {
          v557 = v9;
          v558 = v58;
          do
          {
            if (v36)
            {
              v559 = *v722;
              if (!*v722)
              {
                goto LABEL_1018;
              }

              if (v23)
              {
                goto LABEL_1013;
              }
            }

            else
            {
              v559 = 0xFFFF;
              if (v23)
              {
LABEL_1013:
                v560 = *v18;
                if (*v56)
                {
                  v561 = PDAluminosityPDA_9004(v560, v559, *v64, *v56);
                  v58 = v558;
                  LODWORD(v36) = v718;
                  LODWORD(v23) = v719;
                  *v64 = v561;
                  *v56 = HIWORD(v561);
                }

                else
                {
                  *v64 = v560;
                  *v56 = v559;
                }

                goto LABEL_1018;
              }
            }

            v562 = PDAluminosityPDA_9004(*v18, v559, *v64, 0xFFFFu);
            v58 = v558;
            LODWORD(v36) = v718;
            LODWORD(v23) = v719;
            *v64 = v562;
LABEL_1018:
            v563 = &v18[v691];
            if (v563 >= v58)
            {
              v564 = -v693;
            }

            else
            {
              v564 = 0;
            }

            v722 += 2 * v554 + 2 * v564;
            v18 = &v563[v564];
            v56 += v556;
            v64 += v691;
            --v557;
          }

          while (v557);
          if (v697)
          {
            v565 = &v712[v698];
            v566 = -(v705 * v692);
            if (v565 < v697)
            {
              v566 = 0;
            }

            v567 = v555;
            v568 = v704 + 2 * v705 + 2 * v566;
            v569 = -(v698 * v692);
            if (v565 < v697)
            {
              v569 = 0;
            }

            v18 = &v565[v569];
            v58 += 2 * v569 + 2 * v698;
            v704 += 2 * v705 + 2 * v566;
            v722 = v568;
            v555 = v567;
            v712 = v18;
          }

          else
          {
            v18 += v698;
            v722 += 2 * v705;
          }

          v64 += v708;
          v56 += 2 * v710;
          if (!--v555)
          {
            goto LABEL_1030;
          }
        }

      case 27:
        v685 = v22;
        v687 = v4;
        v701 = v9;
        v202 = v36;
        v203 = v724[0];
        v204 = 2 * v23;
        v205 = -v693;
        break;
      default:
        goto LABEL_1054;
    }

LABEL_403:
    v715 = v203;
    v206 = v701;
    while (1)
    {
      if (v36)
      {
        v207 = *v722;
        if (!*v722)
        {
          goto LABEL_416;
        }

        if (!v23)
        {
          goto LABEL_410;
        }
      }

      else
      {
        v207 = 0xFFFF;
        if (!v23)
        {
LABEL_410:
          v211 = *v18;
          if (v211 >= v207)
          {
            LOWORD(v211) = v207;
          }

          v212 = *v64 * ~v207 + 0x8000;
          if (v207 == 0xFFFF)
          {
            v212 = 0x8000;
          }

          *v64 = v211 + (((v212 >> 16) + v212) >> 16);
          goto LABEL_416;
        }
      }

      if (*v56)
      {
        v208 = v58;
        v209 = v205;
        v210 = PDAluminosityPDA_9004(*v64, *v56, *v18, v207);
        v205 = v209;
        v58 = v208;
        LODWORD(v36) = v718;
        LODWORD(v23) = v719;
        *v64 = v210;
        *v56 = HIWORD(v210);
      }

      else
      {
        *v64 = *v18;
        *v56 = v207;
      }

LABEL_416:
      v213 = &v18[v691];
      if (v213 >= v58)
      {
        v214 = v205;
      }

      else
      {
        v214 = 0;
      }

      v722 += 2 * v202 + 2 * v214;
      v18 = &v213[v214];
      v56 += v204;
      v64 += v691;
      if (!--v206)
      {
        if (v697)
        {
          v215 = &v712[v698];
          v216 = -(v705 * v692);
          if (v215 < v697)
          {
            v216 = 0;
          }

          v217 = v704 + 2 * v705 + 2 * v216;
          v218 = -(v698 * v692);
          if (v215 < v697)
          {
            v218 = 0;
          }

          v18 = &v215[v218];
          v58 += 2 * v218 + 2 * v698;
          v704 += 2 * v705 + 2 * v216;
          v722 = v217;
          v712 = v18;
        }

        else
        {
          v18 += v698;
          v722 += 2 * v705;
        }

        v64 += v708;
        v56 += 2 * v710;
        v203 = v715 - 1;
        if (v715 == 1)
        {
          goto LABEL_1030;
        }

        goto LABEL_403;
      }
    }
  }

  v14 = *(v2 + 128);
  if ((v14 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      w16_mark_constmask(v2, v6);
    }

    else
    {
      w16_mark_pixelmask(v2, v6);
    }

    return 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  v26 = (v24 + 15) & 0xFFFFFFF0;
  v27 = v26 * v25;
  if (v27 <= 4096)
  {
    v29 = v734;
  }

  else
  {
    v28 = malloc_type_malloc(v27, 0x97CEE3C3uLL);
    if (!v28)
    {
      return 1;
    }

    v29 = v28;
    v13 = *(v8 + 136);
    v14 = *(v8 + 128);
  }

  CGSConvertBitsToMask(v13, *(v8 + 124), v29, v26, v24, v25, v14);
  v43 = *(v8 + 112);
  v730 = *(v8 + 96);
  v731 = v43;
  v44 = *(v8 + 144);
  v732 = *(v8 + 128);
  v733 = v44;
  v45 = *(v8 + 48);
  v726 = *(v8 + 32);
  v727 = v45;
  v46 = *(v8 + 80);
  v728 = *(v8 + 64);
  v729 = v46;
  v47 = *(v8 + 16);
  *v724 = *v8;
  v725 = v47;
  HIDWORD(v731) = (v24 + 15) & 0xFFFFFFF0;
  *(&v732 + 1) = v29;
  if (BYTE1(v724[0]) << 8 == 1024)
  {
    w16_mark_constmask(v724, v688);
  }

  else
  {
    w16_mark_pixelmask(v724, v688);
  }

  if (v29 != v734)
  {
    v48 = v29;
LABEL_1251:
    free(v48);
  }

  return 1;
}