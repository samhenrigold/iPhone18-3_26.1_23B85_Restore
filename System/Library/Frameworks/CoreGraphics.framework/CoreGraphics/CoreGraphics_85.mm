uint64_t W8_sample_RGB555(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v92 = *(result + 152) - 4;
  v90 = *(result + 88);
  v91 = *(result + 144) - 1;
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = -16777216;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v86 = *(result + 188);
  v14 = (v5 + (v13 - 1) + (v12 * v7));
  v15 = v4 + (v12 * v6) + 2 * v13 - 4;
  v89 = *(result + 72);
  v87 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
    {
      if (a3 <= v90)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v87;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v90;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_43;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v87;
        v25 = v86 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v89 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_43;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v87;
      v25 = v86 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v86;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    *++v91 = 0;
    v92 += 4;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_29;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v88;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_43;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v86;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_43;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + v36 * v6;
  v39 = v38 + 2 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 2 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = bswap32(*v41) >> 16;
  if (!v5)
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v46 = *(v8 + (v32 | v24));
LABEL_68:
    v56 = v46 & 0xF;
    v57 = HIBYTE(v46) & 3;
    if (v56 == 1)
    {
      v81 = (v39 + SBYTE1(v46) * v6);
      if (v15 < v81)
      {
        v81 = v15;
      }

      if (v81 < v40)
      {
        v81 = v40;
      }

      v82 = bswap32(*v81) >> 16;
      if (v5)
      {
        v83 = (v43 + SBYTE1(v46) * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 24;
      }

      v84 = interpolate_8555_21866[v57];
      v85 = v57 + 1;
      v79 = v42 - ((v84 & v42) >> v85);
      v80 = (v84 & v82) >> v85;
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = HIWORD(v46) << 56;
          v59 = (v39 + (v58 >> 55));
          if (v15 < v59)
          {
            v59 = v15;
          }

          if (v59 < v40)
          {
            v59 = v40;
          }

          v60 = bswap32(*v59) >> 16;
          v61 = v39 + SBYTE1(v46) * v6;
          if (v15 >= v61)
          {
            v62 = (v39 + SBYTE1(v46) * v6);
          }

          else
          {
            v62 = v15;
          }

          if (v62 < v40)
          {
            v62 = v40;
          }

          v63 = bswap32(*v62) >> 16;
          v64 = (v61 + (v58 >> 55));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v40)
          {
            v64 = v40;
          }

          v65 = bswap32(*v64) >> 16;
          if (v5)
          {
            v66 = (v43 + SBYTE2(v46));
            v67 = *(result + 40);
            if (v14 < v66)
            {
              v66 = v14;
            }

            if (v66 < v67)
            {
              v66 = *(result + 40);
            }

            v60 |= *v66 << 24;
            v68 = v43 + SBYTE1(v46) * v7;
            if (v14 >= v68)
            {
              v69 = (v43 + SBYTE1(v46) * v7);
            }

            else
            {
              v69 = v14;
            }

            if (v69 < v67)
            {
              v69 = *(result + 40);
            }

            v63 |= *v69 << 24;
            v70 = (v68 + SBYTE2(v46));
            if (v14 < v70)
            {
              v70 = v14;
            }

            if (v70 < v67)
            {
              v70 = *(result + 40);
            }

            v65 |= *v70 << 24;
          }

          v71 = interpolate_8555_21866[v57];
          v72 = v57 + 1;
          v73 = v42 - ((v71 & v42) >> v72) + ((v71 & v63) >> v72);
          v42 = v73 - ((v73 & interpolate_8555_21866[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1)) + (((v60 - ((v71 & v60) >> v72) + ((v71 & v65) >> v72)) & interpolate_8555_21866[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v74 = (v39 + ((HIWORD(v46) << 56) >> 55));
      if (v15 < v74)
      {
        v74 = v15;
      }

      if (v74 < v40)
      {
        v74 = v40;
      }

      v75 = bswap32(*v74) >> 16;
      if (v5)
      {
        v76 = (v43 + SBYTE2(v46));
        if (v14 < v76)
        {
          v76 = v14;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 24;
      }

      v77 = (v46 >> 28) & 3;
      v78 = interpolate_8555_21866[v77];
      LOBYTE(v77) = v77 + 1;
      v79 = v42 - ((v78 & v42) >> v77);
      v80 = (v78 & v75) >> v77;
    }

    v42 = v79 + v80;
    goto LABEL_47;
  }

  v43 = v5 + v36 * v7 + v37;
  v44 = *(result + 40);
  if (v14 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v14;
  }

  if (v45 >= v44)
  {
    v44 = v45;
  }

  v42 |= *v44 << 24;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v47 = 0;
  v48 = 0;
  v49 = v25 >> 22;
  a3 += v9;
  v50 = v90 - a3;
  a2 += v10;
  v51 = v88 - a2;
  while (1)
  {
    v52 = (v42 & 0x1F) + ((v42 & 0x3E0) >> 3) + ((v42 >> 9) & 0x3E) + ((v42 & 0x3E0) >> 5);
    *(v92 + 4 + 4 * v48) = v52 & 0xF8 | (v11 | (v42 >> 5) | v42) & 0xFF000000 | (v52 >> 5);
    *(v91 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if (((v50 | v51 | (a3 - v89) | (a2 - v87)) & 0x8000000000000000) != 0)
    {
      v91 += v48 + 1;
      v92 = v92 - v47 + 4;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 2 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v53 = (v4 + SHIDWORD(a3) * v6 + 2 * (a2 >> 32));
    }

    else
    {
      v53 = v15;
    }

    if (v53 < v40)
    {
      v53 = *(result + 32);
    }

    v42 = bswap32(*v53) >> 16;
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      v54 = *(result + 40);
      if (v14 >= v43)
      {
        v55 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      }

      else
      {
        v55 = v14;
      }

      if (v55 >= v54)
      {
        v54 = v55;
      }

      v42 |= *v54 << 24;
    }

    if (v8)
    {
      v46 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v91 += v48 + 1;
        v92 = v92 - v47 + 4;
        a4 += ~v48;
        v25 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v47 -= 4;
    a3 += v9;
    v50 -= v9;
    a2 += v10;
    v51 -= v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t W8_sample_W8(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v125 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v124 = *(result + 112);
    if (v5 > v6)
    {
      v124 = v5 % v6;
    }
  }

  else
  {
    v124 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 120);
  v10 = *(result + 40);
  v126 = *(result + 32);
  if (v7)
  {
    v123 = *(result + 120);
    if (v9 > v7)
    {
      v123 = v9 % v7;
    }
  }

  else
  {
    v123 = 0;
  }

  v119 = *(result + 80);
  v121 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = (v10 + (v16 - 1) + (v15 * v125));
  v118 = *(result + 188);
  v18 = v126 + v16 + (v15 * v4) - 1;
  v120 = *(result + 64);
  v122 = *(result + 72);
  while (1)
  {
    if (a3 >= v122)
    {
      v22 = a4;
      if (a3 <= v121)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v121;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_59;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v118 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v122 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_59;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v118 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v120)
    {
      if (a2 <= v119)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v119;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_59;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v118;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v120 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_59;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v118;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_59:
    v54 = v22 - 1;
    a2 += v5;
    a3 += v9;
    v12 += 4;
    *++v13 = 0;
LABEL_60:
    a4 = v54;
    if (!v54)
    {
      return result;
    }
  }

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
  v46 = v126 + SHIDWORD(v31) * v4;
  v47 = v46 + (v35 >> 32);
  v48 = *(result + 32);
  if (v18 >= v47)
  {
    v49 = (v46 + (v35 >> 32));
  }

  else
  {
    v49 = v18;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  v50 = *v49;
  if (!v10)
  {
    v51 = 0;
    if (!v8)
    {
      goto LABEL_64;
    }

LABEL_63:
    v55 = *(v8 + (v37 | v29));
    goto LABEL_94;
  }

  v51 = v10 + v45 * v125 + (v35 >> 32);
  v52 = *(result + 40);
  if (v17 >= v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = v17;
  }

  if (v53 >= v52)
  {
    v52 = v53;
  }

  v50 |= *v52 << 24;
  if (v8)
  {
    goto LABEL_63;
  }

LABEL_64:
  while (1)
  {
    *(v12 + 4) = v50 | v14;
    *(v13 + 1) = v30 >> 22;
    if (v22 == 1)
    {
      return result;
    }

    v56 = v22;
    v57 = 0;
    a2 += v5;
    v58 = v119 - a2;
    a3 += v9;
    v59 = v121 - a3;
    v60 = -4;
    while (1)
    {
      if (((v59 | v58 | (a3 - v122) | (a2 - v120)) & 0x8000000000000000) != 0)
      {
        v13 += v57 + 1;
        v12 -= v60;
        v54 = ~v57 + v56;
        goto LABEL_60;
      }

      if (v6)
      {
        v61 = (v7 & ((v28 + v123) >> 63)) + v28 + v123;
        v62 = (v6 & ((v36 + v124) >> 63)) + v36 + v124;
        if (v61 >= v7)
        {
          v63 = v7;
        }

        else
        {
          v63 = 0;
        }

        v28 = v61 - v63;
        if (v62 >= v6)
        {
          v64 = v6;
        }

        else
        {
          v64 = 0;
        }

        v36 = v62 - v64;
        v65 = v28;
        v66 = v36;
      }

      else
      {
        v65 = a3;
        v66 = a2;
      }

      v67 = v65 >> 32;
      v68 = v126 + SHIDWORD(v65) * v4;
      v47 = v68 + (v66 >> 32);
      v48 = *(result + 32);
      if (v18 >= v47)
      {
        v69 = (v68 + (v66 >> 32));
      }

      else
      {
        v69 = v18;
      }

      if (v69 < v48)
      {
        v69 = *(result + 32);
      }

      v50 = *v69;
      if (v10)
      {
        v51 = v10 + v67 * v125 + (v66 >> 32);
        v70 = *(result + 40);
        if (v17 >= v51)
        {
          v71 = v51;
        }

        else
        {
          v71 = v17;
        }

        if (v71 >= v70)
        {
          v70 = v71;
        }

        v50 |= *v70 << 24;
      }

      if (v8)
      {
        v55 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v55 & 0xF) != 0)
        {
          break;
        }
      }

      *(v12 + 4 * v57 + 8) = v50 | v14;
      *(v13 + v57++ + 2) = -1;
      v60 -= 4;
      a2 += v5;
      v58 -= v5;
      a3 += v9;
      v59 -= v9;
      if (v56 - 1 == v57)
      {
        return result;
      }
    }

    v13 += v57 + 1;
    v12 -= v60;
    v22 = ~v57 + v56;
    v30 = -1;
LABEL_94:
    v72 = v55 & 0xF;
    v73 = v55 >> 8;
    v74 = HIBYTE(v55) & 3;
    switch(v72)
    {
      case 1:
        LODWORD(v108) = SBYTE1(v55);
        if (v6)
        {
          v109 = v73 << 56;
          v110 = v28 + (v109 >> 24);
          v111 = v7 & (v110 >> 63);
          if (v111 + v110 >= v7)
          {
            v112 = v7;
          }

          else
          {
            v112 = 0;
          }

          v108 = (v111 + (v109 >> 24) - v112) >> 32;
        }

        v113 = (v47 + v108 * v4);
        if (v18 < v113)
        {
          v113 = v18;
        }

        if (v113 < v48)
        {
          v113 = v48;
        }

        v114 = *v113;
        if (v10)
        {
          v115 = (v51 + v108 * v125);
          if (v17 < v115)
          {
            v115 = v17;
          }

          if (v115 < *(result + 40))
          {
            v115 = *(result + 40);
          }

          v114 |= *v115 << 24;
        }

        v50 = v50 - ((interpolate_8888_21865[v74] & v50) >> (v74 + 1)) + ((interpolate_8888_21865[v74] & v114) >> (v74 + 1));
        break;
      case 2:
        v100 = SBYTE2(v55);
        if (v6)
        {
          v101 = HIWORD(v55) << 56;
          v102 = v36 + (v101 >> 24);
          v103 = v6 & (v102 >> 63);
          if (v103 + v102 >= v6)
          {
            v104 = v6;
          }

          else
          {
            v104 = 0;
          }

          v100 = (v103 + (v101 >> 24) - v104) >> 32;
        }

        v105 = (v47 + v100);
        if (v18 < v47 + v100)
        {
          v105 = v18;
        }

        if (v105 < v48)
        {
          v105 = v48;
        }

        v106 = *v105;
        if (v10)
        {
          v107 = (v51 + v100);
          if (v17 < v107)
          {
            v107 = v17;
          }

          if (v107 < *(result + 40))
          {
            v107 = *(result + 40);
          }

          v106 |= *v107 << 24;
        }

        v50 = v50 - ((interpolate_8888_21865[(v55 >> 28) & 3] & v50) >> (((v55 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v55 >> 28) & 3] & v106) >> (((v55 >> 28) & 3) + 1));
        break;
      case 3:
        v75 = HIBYTE(v55) & 3;
        v117 = v30;
        v116 = v22;
        LODWORD(v76) = SBYTE1(v55);
        v77 = SBYTE2(v55);
        if (v6)
        {
          v78 = v73 << 56;
          v79 = v28 + (v78 >> 24);
          v80 = v36 + (SBYTE2(v55) << 32);
          v81 = v7 & (v79 >> 63);
          v82 = v6 & (v80 >> 63);
          v83 = v82 + v80;
          if (v81 + v79 >= v7)
          {
            v84 = v7;
          }

          else
          {
            v84 = 0;
          }

          if (v83 >= v6)
          {
            v85 = v6;
          }

          else
          {
            v85 = 0;
          }

          v76 = (v81 + (v78 >> 24) - v84) >> 32;
          v77 = (v82 + ((HIWORD(v55) << 56) >> 24) - v85) >> 32;
        }

        v86 = (v47 + v77);
        if (v18 < v47 + v77)
        {
          v86 = v18;
        }

        if (v86 < v48)
        {
          v86 = v48;
        }

        v87 = *v86;
        v88 = v47 + v76 * v4;
        if (v18 >= v88)
        {
          v89 = (v47 + v76 * v4);
        }

        else
        {
          v89 = v18;
        }

        if (v89 < v48)
        {
          v89 = v48;
        }

        v90 = *v89;
        v91 = (v88 + v77);
        if (v18 < v91)
        {
          v91 = v18;
        }

        if (v91 >= v48)
        {
          v48 = v91;
        }

        v92 = *v48;
        if (v10)
        {
          v93 = (v51 + v77);
          v94 = *(result + 40);
          if (v17 < v51 + v77)
          {
            v93 = v17;
          }

          if (v93 < v94)
          {
            v93 = *(result + 40);
          }

          v87 |= *v93 << 24;
          v95 = (v51 + v76 * v125);
          if (v17 >= v95)
          {
            v96 = v95;
          }

          else
          {
            v96 = v17;
          }

          if (v96 < v94)
          {
            v96 = *(result + 40);
          }

          v90 |= *v96 << 24;
          v97 = &v95[v77];
          if (v17 < v97)
          {
            v97 = v17;
          }

          if (v97 < v94)
          {
            v97 = *(result + 40);
          }

          v92 |= *v97 << 24;
        }

        v98 = interpolate_8888_21865[v75];
        v99 = v50 - ((v98 & v50) >> (v75 + 1)) + ((v98 & v90) >> (v75 + 1));
        v50 = v99 - ((v99 & interpolate_8888_21865[(v55 >> 28) & 3]) >> (((v55 >> 28) & 3) + 1)) + (((v87 - ((v98 & v87) >> (v75 + 1)) + ((v98 & v92) >> (v75 + 1))) & interpolate_8888_21865[(v55 >> 28) & 3]) >> (((v55 >> 28) & 3) + 1));
        v22 = v116;
        v30 = v117;
        break;
    }
  }
}

uint64_t W8_shade(uint64_t a1)
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
      v12 = W8_shade_radial_W;
    }

    else if (*(v4 + 24))
    {
      v12 = W8_shade_conic_W;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = W8_shade_axial_W;
    }

    else
    {
      v12 = W8_shade_custom_W;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 2, 1, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 960)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 2, 1, v16, *(&v16 + 1), v13);
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
  W8_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void W8_image_mark(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v372 = *MEMORY[0x1E69E9840];
  v360 = *(a1 + 4);
  v356 = v360;
  v357 = a1;
  v3 = (v360 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 <= 0x1FFFFFF)
  {
    v7 = *(v357 + 40);
    v6 = *(v357 + 48);
    v8 = *(a2 + 184);
    v367 = *(v357 + 136);
    v9 = *(a2 + 104);
    v369 = *(a2 + 96);
    v370 = v9;
    v371 = v6;
    v10 = *(v357 + 24);
    v352 = *(v357 + 28);
    v11 = *(v357 + 16);
    v12 = *(v357 + 20);
    v13 = *(v357 + 12);
    v368 = *(v357 + 8);
    v14 = *(a2 + 16);
    v15 = (v14 + 6) * v3;
    if (v15 > 65439)
    {
      v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v18;
      v20 = v18;
      if (!v18)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v17 = &v350 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v20 = 0;
    }

    v351 = v20;
    v359 = a3;
    v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v22 = v21 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    *(a2 + 160) = v22;
    if (v14)
    {
      v23 = 4 * v3;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2;
    v25 = v22 + v23;
    v26 = v7 + (v10 - 1) * v352;
    *(v24 + 144) = v21;
    *(v24 + 152) = v25;
    v358 = v24;
    if (v371)
    {
      v27 = v357;
      v28 = *(v357 + 32);
      v29 = (v371 + v28 * v11 + v13);
      v365 = v28 - v356;
      v30 = v356;
      v31 = 1;
    }

    else
    {
      v29 = 0;
      v365 = 0;
      v31 = 0;
      v30 = v356;
      v27 = v357;
    }

    v366 = ((v8 * 255.0) + 0.5);
    v32 = v26 + v12;
    v33 = (v7 + v11 * v352 + v13);
    v364 = v352 - v30;
    v34 = *(v27 + 104);
    v35 = *(v27 + 108);
    v36 = *(v27 + 2);
    if (v36 == 6 || v36 == 1)
    {
      v37 = v359;
      v38 = v358;
      v39 = v369;
      if (v367)
      {
        v40 = 0;
        LODWORD(v41) = 0;
        v42 = *(v357 + 124);
        v43 = v367 + v42 * v35 + v34;
        v30 = v356;
        v362 = v42 - v356;
        v44 = v360;
        goto LABEL_31;
      }

      goto LABEL_561;
    }

    if (v367)
    {
      v350 = v32;
      shape_enum_clip_alloc(v18, v19, v367, 1, 1, 1, v34, v35, v360, v368);
      if (v45)
      {
        v40 = v45;
        v41 = 0;
        v46 = ((v14 * v3 + 15) & 0xFFFFFFF0);
        if (!v14)
        {
          v46 = 4 * v3;
        }

        v47 = v356;
        v362 = -v356;
        v43 = (v25 + v46 + 16);
        v38 = v358;
        v44 = v360;
        v39 = v369;
        goto LABEL_21;
      }

LABEL_561:
      if (v351)
      {
        free(v351);
      }

      return;
    }

    v43 = 0;
    v40 = 0;
    v362 = 0;
    LODWORD(v41) = 0;
    v37 = v359;
    v38 = v358;
    v44 = v360;
    v39 = v369;
LABEL_31:
    v354 = (v44 - 1);
    v353 = -v30;
    v350 = v32;
    v355 = v32 - 1;
    v54 = v40;
    v55 = v370;
    v361 = v366 ^ 0xFF;
LABEL_32:
    v56 = v37;
    v367 = v54;
    v57 = *v38;
    v369 = v39;
    v370 = v55;
    v57(v38, v39);
    v58 = *(v38 + 160);
    v59 = *(v38 + 144);
    v60 = *(v38 + 8);
    if (v60 == *(v38 + 12))
    {
      v37 = v56;
      if (v366 != 255)
      {
        v61 = v44;
        v62 = *(v38 + 144);
        v63 = v361;
        do
        {
          if (*v62)
          {
            v64 = (*v58 | (HIBYTE(*v58) << 16)) * v63;
            *v58 = (*v58 & 0xFF0000FF) - ((v64 + 65537 + ((v64 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v64 + 1 + BYTE1(v64)) >> 8));
          }

          ++v62;
          v58 += 4;
          --v61;
        }

        while (v61);
        v58 += 4 * v353;
        v59 += v354 + v353 + 1;
      }
    }

    else
    {
      v65 = *(v38 + 152);
      v66 = HIWORD(v60) & 0x3F;
      v37 = v56;
      if (v66 == 16)
      {
        v77 = v361;
        v78 = 0;
        if (v366 == 255)
        {
          do
          {
            if (v59[v78])
            {
              *&v58[4 * v78] = *(v65 + 4 * v78) & 0xFF000000 | BYTE1(*(v65 + 4 * v78));
            }

            ++v78;
          }

          while (v44 != v78);
        }

        else
        {
          do
          {
            if (v59[v78])
            {
              v79 = *(v65 + 4 * v78);
              v80 = ((v79 >> 8) & 0xFF00FF) * v77 + 65537 + (((((v79 >> 8) & 0xFF00FF) * v77) >> 8) & 0xFF00FF);
              *&v58[4 * v78] = (v79 & 0xFF000000 | BYTE1(v79)) - (v80 & 0xFF000000 | BYTE1(v80));
            }

            ++v78;
          }

          while (v44 != v78);
        }
      }

      else
      {
        v67 = v361;
        if (v66 == 32)
        {
          if (v366 == 255)
          {
            v84 = 0;
            v85 = (v65 + 4);
            do
            {
              if (v59[v84])
              {
                v86 = *v85;
                if (*v85 <= 0.0)
                {
                  v90 = 0;
                }

                else
                {
                  v87 = ((v86 * 255.0) + 0.5);
                  v88 = *(v85 - 1);
                  if (v86 > 1.0)
                  {
                    v86 = 1.0;
                    v87 = 255;
                  }

                  v89 = ((v88 * 255.0) + 0.5);
                  if (v88 < 0.0)
                  {
                    v89 = 0;
                  }

                  if (v88 > v86)
                  {
                    v89 = v87;
                  }

                  v90 = v89 | (v87 << 24);
                }

                *&v58[4 * v84] = v90;
              }

              v85 += 2;
              ++v84;
            }

            while (v44 != v84);
          }

          else
          {
            v68 = 0;
            v69 = (v65 + 4);
            do
            {
              if (v59[v68])
              {
                v70 = *v69;
                if (*v69 <= 0.0)
                {
                  v76 = 0;
                }

                else
                {
                  v71 = *(v69 - 1);
                  v72 = ((v70 * 255.0) + 0.5);
                  if (v70 > 1.0)
                  {
                    v72 = 255;
                    v70 = 1.0;
                  }

                  v73 = ((v71 * 255.0) + 0.5);
                  if (v71 < 0.0)
                  {
                    LOBYTE(v73) = 0;
                  }

                  if (v71 > v70)
                  {
                    LOBYTE(v73) = v72;
                  }

                  v74 = v73 | (v72 << 24);
                  v75 = (v73 | (v72 << 16)) * v67;
                  v76 = v74 - ((v75 + 65537 + ((v75 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v75 + 1 + BYTE1(v75)) >> 8));
                }

                *&v58[4 * v68] = v76;
              }

              v69 += 2;
              ++v68;
            }

            while (v44 != v68);
          }
        }

        else if (v366 == 255)
        {
          v91 = 0;
          do
          {
            if (v59[v91])
            {
              *&v58[4 * v91] = *(v65 + 4 * v91);
            }

            ++v91;
          }

          while (v44 != v91);
        }

        else
        {
          v81 = 0;
          do
          {
            if (v59[v81])
            {
              v82 = *(v65 + 4 * v81);
              v83 = (v82 | (HIBYTE(v82) << 16)) * v67;
              *&v58[4 * v81] = (v82 & 0xFF0000FF) - ((v83 + 65537 + ((v83 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v83 + 1 + BYTE1(v83)) >> 8));
            }

            ++v81;
          }

          while (v44 != v81);
        }
      }
    }

    switch(v37)
    {
      case 0:
        v92 = v43 != 0;
        if (v371)
        {
          v93 = v44;
          v94 = v43;
          v95 = v368;
          do
          {
            v96 = *v59;
            if (*v59)
            {
              if (v43)
              {
                v96 = ((*v94 * v96 + ((*v94 * v96) >> 8) + 1) >> 8);
              }

              if (v96)
              {
                if (v96 == 255)
                {
                  LOBYTE(v97) = 0;
                  *v33 = 0;
                }

                else
                {
                  v98 = *v33;
                  v99 = *v29;
                  v100 = (v98 | (v99 << 16)) * v96 + 65537 + ((((v98 | (v99 << 16)) * v96) >> 8) & 0xFF00FF);
                  v101 = v98 | (v99 << 24);
                  *v33 = v101 - BYTE1(v100);
                  v97 = (v101 - (v100 & 0xFF000000 | BYTE1(v100))) >> 24;
                }

                *v29 = v97;
              }
            }

            ++v59;
            v94 += v92;
            ++v33;
            ++v29;
            --v93;
          }

          while (v93);
        }

        else
        {
          v311 = v44;
          v94 = v43;
          v95 = v368;
          do
          {
            v312 = *v59;
            if (*v59)
            {
              if (v43)
              {
                v312 = ((*v94 * v312 + ((*v94 * v312) >> 8) + 1) >> 8);
              }

              if (v312)
              {
                if (v312 == 255)
                {
                  LOBYTE(v313) = 0;
                }

                else
                {
                  v313 = *v33 - ((*v33 * v312 + ((*v33 * v312) >> 8) + 1) >> 8);
                }

                *v33 = v313;
              }
            }

            ++v59;
            v94 += v92;
            ++v33;
            --v311;
          }

          while (v311);
        }

        v43 = &v94[v362];
        v33 += v364;
        v29 += v365;
        v167 = v369;
        goto LABEL_506;
      case 1:
        v196 = *v59;
        if (v371)
        {
          if (v43)
          {
            v197 = 0;
            v198 = v59 + 1;
            v167 = v369;
            do
            {
              if (v196)
              {
                v199 = v43[v197] * v196 + ((v43[v197] * v196) >> 8) + 1;
                if (BYTE1(v199))
                {
                  if (BYTE1(v199) == 255)
                  {
                    v200 = *&v58[4 * v197];
                    HIBYTE(v201) = HIBYTE(v200);
                  }

                  else
                  {
                    v202 = (*&v58[4 * v197] | (HIBYTE(*&v58[4 * v197]) << 16)) * (v199 >> 8) + (v33[v197] | (v29[v197] << 16)) * ((v199 >> 8) ^ 0xFF);
                    v201 = v202 + 65537 + ((v202 >> 8) & 0xFF00FF);
                    v200 = v201 >> 8;
                  }

                  v33[v197] = v200;
                  v29[v197] = HIBYTE(v201);
                }
              }

              v196 = v198[v197++];
            }

            while (v44 != v197);
            v203 = &v33[v197 - 1];
            v204 = &v29[v197 - 1];
            v43 += v197 + v362;
          }

          else
          {
            v334 = v59 + 1;
            v204 = (v29 - 1);
            v203 = (v33 - 1);
            v335 = v44;
            v167 = v369;
            do
            {
              if (v196)
              {
                if (v196 == 255)
                {
                  v336 = *v58;
                  v337 = *v58;
                }

                else
                {
                  v338 = (*v58 | (HIBYTE(*v58) << 16)) * v196 + (*(v203 + 1) | (*(v204 + 1) << 16)) * (v196 ^ 0xFF);
                  v337 = v338 + 65537 + ((v338 >> 8) & 0xFF00FF);
                  v336 = v337 >> 8;
                }

                *(v203 + 1) = v336;
                *(v204 + 1) = HIBYTE(v337);
              }

              v339 = *v334++;
              v196 = v339;
              v58 += 4;
              ++v204;
              ++v203;
              --v335;
            }

            while (v335);
            v43 = 0;
          }

          v33 = (v203 + v364 + 1);
          v29 = (v204 + v365 + 1);
          goto LABEL_505;
        }

        v314 = v59 + 1;
        v315 = v44;
        if (v43)
        {
          v167 = v369;
          do
          {
            if (v196)
            {
              v316 = *v43 * v196 + ((*v43 * v196) >> 8) + 1;
              v317 = *(v357 + 40);
              v318 = v355;
              if (v355 >= v33)
              {
                v318 = v33;
              }

              if (v318 >= v317)
              {
                v317 = v318;
              }

              if (BYTE1(v316))
              {
                if (BYTE1(v316) == 255)
                {
                  v319 = *v58;
                }

                else
                {
                  v319 = (*v58 * (v316 >> 8) + ((v316 >> 8) ^ 0xFF) * *v317 + ((*v58 * (v316 >> 8) + ((v316 >> 8) ^ 0xFF) * *v317) >> 8) + 1) >> 8;
                }

                *v317 = v319;
              }
            }

            else
            {
              v317 = v33;
            }

            v320 = *v314++;
            v196 = v320;
            v58 += 4;
            ++v43;
            v33 = v317 + 1;
            --v315;
          }

          while (v315);
          v43 += v362;
        }

        else
        {
          v346 = v357;
          v167 = v369;
          do
          {
            v317 = *(v346 + 40);
            v347 = v355;
            if (v355 >= v33)
            {
              v347 = v33;
            }

            if (v347 >= v317)
            {
              v317 = v347;
            }

            if (v196)
            {
              if (v196 == 255)
              {
                v348 = *v58;
              }

              else
              {
                v348 = (*v58 * v196 + *v317 * (v196 ^ 0xFF) + ((*v58 * v196 + *v317 * (v196 ^ 0xFFu)) >> 8) + 1) >> 8;
              }

              *v317 = v348;
            }

            v349 = *v314++;
            v196 = v349;
            v58 += 4;
            v33 = v317 + 1;
            --v315;
          }

          while (v315);
          v43 = 0;
        }

        v345 = &v317[v364];
        goto LABEL_558;
      case 2:
        v164 = *v59;
        if (v371)
        {
          if (v43)
          {
            v165 = 0;
            v166 = v59 + 1;
            v167 = v369;
            while (1)
            {
              if (!v164)
              {
                goto LABEL_219;
              }

              v168 = v43[v165] * v164 + ((v43[v165] * v164) >> 8) + 1;
              if (!BYTE1(v168))
              {
                goto LABEL_219;
              }

              if (BYTE1(v168) == 255)
              {
                v169 = *&v58[4 * v165];
                v170 = HIBYTE(v169);
                if (HIBYTE(v169))
                {
                  if (v170 == 255)
                  {
                    v33[v165] = v169;
                    LOBYTE(v169) = -1;
                  }

                  else
                  {
                    v173 = (v33[v165] | (v29[v165] << 16)) * (v170 ^ 0xFF);
LABEL_217:
                    v174 = ((v173 + 65537 + ((v173 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v173 + 1 + BYTE1(v173)) >> 8)) + (v169 & 0xFF0000FF);
                    v33[v165] = v174;
                    v169 = HIBYTE(v174);
                  }

                  v29[v165] = v169;
                }
              }

              else
              {
                v171 = *&v58[4 * v165];
                v172 = (v171 | (HIBYTE(v171) << 16)) * ((v168 >> 8) ^ 0xFF);
                v169 = (v171 & 0xFF0000FF) - ((v172 + 65537 + ((v172 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v172 + 1 + BYTE1(v172)) >> 8));
                if (HIBYTE(v169))
                {
                  v173 = (v33[v165] | (v29[v165] << 16)) * (~v169 >> 24);
                  goto LABEL_217;
                }
              }

LABEL_219:
              v164 = v166[v165++];
              if (v44 == v165)
              {
                v175 = &v33[v165 - 1];
                v176 = &v29[v165 - 1];
                v43 += v165 + v362;
LABEL_522:
                v33 = (v175 + v364 + 1);
                v29 = (v176 + v365 + 1);
                goto LABEL_505;
              }
            }
          }

          v326 = v59 + 1;
          v176 = (v29 - 1);
          v175 = (v33 - 1);
          v327 = v44;
          v167 = v369;
          while (1)
          {
            if (v164)
            {
              if (v164 == 255)
              {
                v328 = *v58;
                v329 = HIBYTE(*v58);
                if (v329)
                {
                  if (v329 == 255)
                  {
                    *(v175 + 1) = v328;
                    LOBYTE(v328) = -1;
                  }

                  else
                  {
                    v331 = (*(v175 + 1) | (*(v176 + 1) << 16)) * (v329 ^ 0xFF);
LABEL_518:
                    v332 = ((v331 + 65537 + ((v331 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v331 + 1 + BYTE1(v331)) >> 8)) + (v328 & 0xFF0000FF);
                    *(v175 + 1) = v332;
                    v328 = HIBYTE(v332);
                  }

                  *(v176 + 1) = v328;
                }
              }

              else
              {
                v330 = (*v58 | (HIBYTE(*v58) << 16)) * (v164 ^ 0xFF);
                v328 = (*v58 & 0xFF0000FF) - ((v330 + 65537 + ((v330 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v330 + 1 + BYTE1(v330)) >> 8));
                if (HIBYTE(v328))
                {
                  v331 = (*(v175 + 1) | (*(v176 + 1) << 16)) * (~v328 >> 24);
                  goto LABEL_518;
                }
              }
            }

            v333 = *v326++;
            v164 = v333;
            v58 += 4;
            ++v176;
            ++v175;
            if (!--v327)
            {
              v43 = 0;
              goto LABEL_522;
            }
          }
        }

        v298 = v59 + 1;
        v299 = v33 - 1;
        v300 = v44;
        if (v43)
        {
          v167 = v369;
          while (1)
          {
            if (!v164)
            {
              goto LABEL_454;
            }

            v301 = *v43 * v164 + ((*v43 * v164) >> 8) + 1;
            if (!BYTE1(v301))
            {
              goto LABEL_454;
            }

            if (BYTE1(v301) == 255)
            {
              v302 = *v58;
              v303 = HIBYTE(*v58);
              if (v303)
              {
                if (v303 != 255)
                {
                  v304 = (v303 ^ 0xFF) * v299[1];
                  goto LABEL_452;
                }

                goto LABEL_453;
              }
            }

            else
            {
              v305 = (*v58 | (HIBYTE(*v58) << 16)) * ((v301 >> 8) ^ 0xFF);
              v302 = (*v58 & 0xFF0000FF) - ((v305 + 65537 + ((v305 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v305 + 1 + BYTE1(v305)) >> 8));
              if (HIBYTE(v302))
              {
                v304 = (~v302 >> 24) * v299[1];
LABEL_452:
                v302 += (v304 + (v304 >> 8) + 1) >> 8;
LABEL_453:
                v299[1] = v302;
              }
            }

LABEL_454:
            v306 = *v298++;
            v164 = v306;
            v58 += 4;
            ++v43;
            ++v299;
            if (!--v300)
            {
              v43 += v362;
LABEL_544:
              v345 = &v299[v364];
LABEL_558:
              v33 = v345 + 1;
              v29 += v365;
LABEL_505:
              v95 = v368;
LABEL_506:
              v325 = v95 - 1;
              if (!v325)
              {
                v40 = v367;
                if (v367)
                {
LABEL_560:
                  free(v40);
                }

                goto LABEL_561;
              }

              v368 = v325;
              v54 = 0;
              v41 = (v41 + 1);
              v39 = *(v38 + 128) + v167;
              v55 = *(v38 + 136) + v370;
              v40 = v367;
              if (v367)
              {
                v370 += *(v38 + 136);
                v47 = v356;
LABEL_21:
                v369 = v365 + v47;
                while (1)
                {
                  while (1)
                  {
                    v48 = *(v43 - 4);
                    v49 = v48 - v41;
                    if (v48 <= v41)
                    {
                      break;
                    }

                    v368 -= v49;
                    if (v368 < 1)
                    {
                      goto LABEL_560;
                    }

                    v39 += *(v38 + 128) * v49;
                    v370 += *(v38 + 136) * v49;
                    v33 += v352 * v49;
                    v53 = v369 * v49;
                    if (!v371)
                    {
                      v53 = 0;
                    }

                    v29 += v53;
                    v41 = v48;
                  }

                  if (v41 < *(v43 - 3) + v48)
                  {
                    break;
                  }

                  v50 = v41;
                  v51 = v40;
                  v52 = shape_enum_clip_scan(v40, v43 - 4);
                  v40 = v51;
                  v41 = v50;
                  if (!v52)
                  {
                    goto LABEL_560;
                  }
                }

                v30 = v356;
                v32 = v350;
                v37 = v359;
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }
        }

        v167 = v369;
        while (1)
        {
          if (v164)
          {
            if (v164 == 255)
            {
              v340 = *v58;
              v341 = HIBYTE(*v58);
              if (v341)
              {
                if (v341 != 255)
                {
                  v342 = (v341 ^ 0xFF) * v299[1];
                  goto LABEL_540;
                }

                goto LABEL_541;
              }
            }

            else
            {
              v343 = (*v58 | (HIBYTE(*v58) << 16)) * (v164 ^ 0xFF);
              v340 = (*v58 & 0xFF0000FF) - ((v343 + 65537 + ((v343 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v343 + 1 + BYTE1(v343)) >> 8));
              if (HIBYTE(v340))
              {
                v342 = (~v340 >> 24) * v299[1];
LABEL_540:
                v340 += (v342 + (v342 >> 8) + 1) >> 8;
LABEL_541:
                v299[1] = v340;
              }
            }
          }

          v344 = *v298++;
          v164 = v344;
          v58 += 4;
          ++v299;
          if (!--v300)
          {
            v43 = 0;
            goto LABEL_544;
          }
        }

      case 3:
        v183 = v44;
        v124 = v43;
        do
        {
          v184 = *v59;
          if (*v59)
          {
            if (v43)
            {
              v184 = ((*v124 * v184 + ((*v124 * v184) >> 8) + 1) >> 8);
            }

            if (v184)
            {
              if (v184 == 255)
              {
                v186 = (*v58 | (HIBYTE(*v58) << 16)) * (*v29 ^ 0xFF);
                v185 = (*v58 & 0xFF0000FF) - ((v186 + 65537 + ((v186 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v186 + 1 + BYTE1(v186)) >> 8));
                HIBYTE(v186) = HIBYTE(v185);
              }

              else
              {
                v187 = (*v33 | (*v29 << 16)) * (v184 ^ 0xFF) + ((*v29 * v184 + ((*v29 * v184) >> 8) + 1) >> 8) * (*v58 | (HIBYTE(*v58) << 16));
                v186 = v187 + 65537 + ((v187 >> 8) & 0xFF00FF);
                v185 = v186 >> 8;
              }

              *v33 = v185;
              *v29 = HIBYTE(v186);
            }
          }

          ++v59;
          v58 += 4;
          v124 += v43 != 0;
          ++v33;
          v29 += v31;
          --v183;
        }

        while (v183);
        goto LABEL_503;
      case 4:
        v131 = v44;
        v124 = v43;
        do
        {
          v132 = *v59;
          if (*v59)
          {
            if (v43)
            {
              v132 = ((*v124 * v132 + ((*v124 * v132) >> 8) + 1) >> 8);
            }

            if (v132)
            {
              if (v132 == 255)
              {
                v134 = (*v58 | (HIBYTE(*v58) << 16)) * *v29;
                v133 = (*v58 & 0xFF0000FF) - ((v134 + 65537 + ((v134 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v134 + 1 + BYTE1(v134)) >> 8));
                HIBYTE(v134) = HIBYTE(v133);
              }

              else
              {
                v135 = (*v33 | (*v29 << 16)) * (v132 ^ 0xFF) + (((*v29 ^ 0xFF) * v132 + (((*v29 ^ 0xFFu) * v132) >> 8) + 1) >> 8) * (*v58 | (HIBYTE(*v58) << 16));
                v134 = v135 + 65537 + ((v135 >> 8) & 0xFF00FF);
                v133 = v134 >> 8;
              }

              *v33 = v133;
              *v29 = HIBYTE(v134);
            }
          }

          ++v59;
          v58 += 4;
          v124 += v43 != 0;
          ++v33;
          v29 += v31;
          --v131;
        }

        while (v131);
        goto LABEL_503;
      case 5:
        v217 = v44;
        v124 = v43;
        while (1)
        {
          v218 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_299;
            }

            v219 = *v124 * v218 + ((*v124 * v218) >> 8) + 1;
            if (v219 >= 0x100)
            {
              break;
            }
          }

LABEL_300:
          ++v59;
          v58 += 4;
          v124 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v217)
          {
            goto LABEL_503;
          }
        }

        v218 = BYTE1(v219);
LABEL_299:
        v220 = (*v58 | (HIBYTE(*v58) << 16)) * (v218 ^ 0xFF);
        v221 = (*v58 & 0xFF0000FF) - ((v220 + 65537 + ((v220 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v220 + 1 + BYTE1(v220)) >> 8));
        v222 = (HIBYTE(v221) ^ 0xFF) * (*v33 | (*v29 << 16)) + (v221 | (HIBYTE(v221) << 16)) * *v29;
        v223 = v222 + 65537 + ((v222 >> 8) & 0xFF00FF);
        *v33 = BYTE1(v223);
        *v29 = HIBYTE(v223);
        goto LABEL_300;
      case 6:
        v236 = v44;
        v124 = v43;
        while (1)
        {
          v237 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_333;
            }

            v238 = *v124 * v237 + ((*v124 * v237) >> 8) + 1;
            if (v238 >= 0x100)
            {
              break;
            }
          }

LABEL_338:
          ++v59;
          v58 += 4;
          v124 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v236)
          {
            goto LABEL_503;
          }
        }

        v237 = BYTE1(v238);
LABEL_333:
        v239 = *v29;
        if (v239 != 0xFF)
        {
          if (~v239 == 255)
          {
            v240 = (*v58 | (HIBYTE(*v58) << 16)) * (v237 ^ 0xFF);
            v241 = (*v58 & 0xFF0000FF) - ((v240 + 65537 + ((v240 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v240 + 1 + BYTE1(v240)) >> 8));
          }

          else
          {
            v242 = (*v58 | (HIBYTE(*v58) << 16)) * ((~v239 * v237 + ((~v239 * v237) >> 8) + 1) >> 8);
            v241 = ((v242 + 65537 + ((v242 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v242 + 1 + BYTE1(v242)) >> 8)) + (*v33 | (v239 << 24));
          }

          *v33 = v241;
          *v29 = HIBYTE(v241);
        }

        goto LABEL_338;
      case 7:
        v188 = v43 != 0;
        if (v371)
        {
          v189 = v44;
          v124 = v43;
          do
          {
            v190 = *v59;
            if (*v59)
            {
              if (v43)
              {
                v190 = ((*v124 * v190 + ((*v124 * v190) >> 8) + 1) >> 8);
              }

              if (v190)
              {
                if (v190 == 255)
                {
                  v191 = *v33;
                  v194 = *v29;
                  v192 = (v191 | (v194 << 16)) * (~*v58 >> 24);
                  v193 = (v191 | (v194 << 24)) - ((v192 + 65537 + ((v192 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v192 + 1 + BYTE1(v192)) >> 8));
                  HIBYTE(v194) = HIBYTE(v193);
                }

                else
                {
                  v195 = ((v190 ^ 0xFF) + ((v58[3] * v190 + ((v58[3] * v190) >> 8) + 1) >> 8)) * (*v33 | (*v29 << 16));
                  v194 = v195 + 65537 + ((v195 >> 8) & 0xFF00FF);
                  v193 = v194 >> 8;
                }

                *v33 = v193;
                *v29 = HIBYTE(v194);
              }
            }

            ++v59;
            v58 += 4;
            v124 += v188;
            ++v33;
            ++v29;
            --v189;
          }

          while (v189);
        }

        else
        {
          v307 = v44;
          v124 = v43;
          do
          {
            v308 = *v59;
            if (*v59)
            {
              if (v43)
              {
                v308 = ((*v124 * v308 + ((*v124 * v308) >> 8) + 1) >> 8);
              }

              if (v308)
              {
                if (v308 == 255)
                {
                  v309 = *v33 - (((~*v58 >> 24) * *v33 + (((~*v58 >> 24) * *v33) >> 8) + 1) >> 8);
                }

                else
                {
                  v310 = v58[3] * v308 + ((v58[3] * v308) >> 8) + 1;
                  v309 = (((v308 ^ 0xFF) + (v310 >> 8)) * *v33 + ((((v308 ^ 0xFF) + (v310 >> 8)) * *v33) >> 8) + 1) >> 8;
                }

                *v33 = v309;
              }
            }

            ++v59;
            v58 += 4;
            v124 += v188;
            ++v33;
            --v307;
          }

          while (v307);
        }

        goto LABEL_503;
      case 8:
        v256 = v43 != 0;
        if (v371)
        {
          v257 = v44;
          v124 = v43;
          do
          {
            v258 = *v59;
            if (*v59)
            {
              if (v43)
              {
                v258 = ((*v124 * v258 + ((*v124 * v258) >> 8) + 1) >> 8);
              }

              if (v258)
              {
                if (v258 == 255)
                {
                  v259 = *v33;
                  v262 = *v29;
                  v260 = (v259 | (v262 << 16)) * v58[3];
                  v261 = (v259 | (v262 << 24)) - ((v260 + 65537 + ((v260 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v260 + 1 + BYTE1(v260)) >> 8));
                  HIBYTE(v262) = HIBYTE(v261);
                }

                else
                {
                  v263 = ((v258 ^ 0xFF) + (((~*v58 >> 24) * v258 + (((~*v58 >> 24) * v258) >> 8) + 1) >> 8)) * (*v33 | (*v29 << 16));
                  v262 = v263 + 65537 + ((v263 >> 8) & 0xFF00FF);
                  v261 = v262 >> 8;
                }

                *v33 = v261;
                *v29 = HIBYTE(v262);
              }
            }

            ++v59;
            v58 += 4;
            v124 += v256;
            ++v33;
            ++v29;
            --v257;
          }

          while (v257);
        }

        else
        {
          v321 = v44;
          v124 = v43;
          do
          {
            v322 = *v59;
            if (*v59)
            {
              if (v43)
              {
                v322 = ((*v124 * v322 + ((*v124 * v322) >> 8) + 1) >> 8);
              }

              if (v322)
              {
                if (v322 == 255)
                {
                  v323 = *v33 - ((v58[3] * *v33 + ((v58[3] * *v33) >> 8) + 1) >> 8);
                }

                else
                {
                  v324 = (~*v58 >> 24) * v322 + (((~*v58 >> 24) * v322) >> 8) + 1;
                  v323 = (((v322 ^ 0xFF) + (v324 >> 8)) * *v33 + ((((v322 ^ 0xFF) + (v324 >> 8)) * *v33) >> 8) + 1) >> 8;
                }

                *v33 = v323;
              }
            }

            ++v59;
            v58 += 4;
            v124 += v256;
            ++v33;
            --v321;
          }

          while (v321);
        }

        goto LABEL_503;
      case 9:
        v144 = v44;
        v124 = v43;
        while (1)
        {
          v145 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_176;
            }

            v146 = *v124 * v145 + ((*v124 * v145) >> 8) + 1;
            if (v146 >= 0x100)
            {
              break;
            }
          }

LABEL_177:
          ++v59;
          v58 += 4;
          v124 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v144)
          {
            goto LABEL_503;
          }
        }

        v145 = v146 >> 8;
LABEL_176:
        v147 = ~v145;
        v148 = (*v58 | (HIBYTE(*v58) << 16)) * ~v145;
        v149 = (*v58 & 0xFF0000FF) - ((v148 + 65537 + ((v148 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v148 + 1 + BYTE1(v148)) >> 8));
        v150 = (v149 | (HIBYTE(v149) << 16)) * (*v29 ^ 0xFF) + (*v33 | (*v29 << 16)) * (v147 + HIBYTE(v149));
        v151 = v150 + 65537 + ((v150 >> 8) & 0xFF00FF);
        *v33 = BYTE1(v151);
        *v29 = HIBYTE(v151);
        goto LABEL_177;
      case 10:
        v249 = v44;
        v124 = v43;
        while (1)
        {
          v250 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_358;
            }

            v251 = *v124 * v250 + ((*v124 * v250) >> 8) + 1;
            if (v251 >= 0x100)
            {
              break;
            }
          }

LABEL_359:
          ++v59;
          v58 += 4;
          v124 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v249)
          {
            goto LABEL_503;
          }
        }

        v250 = BYTE1(v251);
LABEL_358:
        v252 = (*v58 | (HIBYTE(*v58) << 16)) * (v250 ^ 0xFF);
        v253 = (*v58 & 0xFF0000FF) - ((v252 + 65537 + ((v252 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v252 + 1 + BYTE1(v252)) >> 8));
        v254 = (HIBYTE(v253) ^ 0xFF) * (*v33 | (*v29 << 16)) + (v253 | (HIBYTE(v253) << 16)) * (*v29 ^ 0xFF);
        v255 = v254 + 65537 + ((v254 >> 8) & 0xFF00FF);
        *v33 = BYTE1(v255);
        *v29 = HIBYTE(v255);
        goto LABEL_359;
      case 11:
        v122 = v43 != 0;
        if (v371)
        {
          v123 = v44;
          v124 = v43;
          while (1)
          {
            v125 = *v59;
            if (*v59)
            {
              if (!v43)
              {
                goto LABEL_148;
              }

              v126 = *v124 * v125 + ((*v124 * v125) >> 8) + 1;
              if (v126 >= 0x100)
              {
                break;
              }
            }

LABEL_149:
            ++v59;
            v58 += 4;
            v124 += v122;
            ++v33;
            ++v29;
            if (!--v123)
            {
              goto LABEL_503;
            }
          }

          v125 = BYTE1(v126);
LABEL_148:
          v127 = (*v58 | (HIBYTE(*v58) << 16)) * (v125 ^ 0xFF);
          v128 = (*v58 & 0xFF0000FF) - ((v127 + 65537 + ((v127 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v127 + 1 + BYTE1(v127)) >> 8));
          v129 = ((*v29 - *v33) | (*v29 << 16)) + (HIBYTE(v128) << 16) + (HIBYTE(v128) - v128);
          v130 = (255 * ((v129 >> 8) & 0x10001)) | v129;
          *v33 = BYTE2(v130) - v130;
          *v29 = BYTE2(v130);
          goto LABEL_149;
        }

        v287 = v44;
        v124 = v43;
        while (1)
        {
          v288 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_431;
            }

            v289 = *v124 * v288 + ((*v124 * v288) >> 8) + 1;
            if (v289 >= 0x100)
            {
              break;
            }
          }

LABEL_432:
          ++v59;
          v58 += 4;
          v124 += v122;
          ++v33;
          if (!--v287)
          {
            goto LABEL_503;
          }
        }

        v288 = BYTE1(v289);
LABEL_431:
        v290 = (*v58 | (HIBYTE(*v58) << 16)) * (v288 ^ 0xFF);
        v291 = (v290 + 65537 + ((v290 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v290 + 1 + BYTE1(v290)) >> 8);
        v292 = (*v33 ^ 0xFF) - (*v58 - v291) + (((*v58 & 0xFF0000FF) - v291) >> 24);
        v293 = BYTE1(v292) | (2 * BYTE1(v292)) | (4 * (BYTE1(v292) | (2 * BYTE1(v292))));
        *v33 = ~((~*v33 - (*v58 - v291) + (((*v58 & 0xFF0000FF) - v291) >> 24)) | (16 * v293) | v293);
        goto LABEL_432;
      case 12:
        v136 = v43 != 0;
        if (v371)
        {
          v137 = v44;
          v124 = v43;
          while (1)
          {
            v138 = *v59;
            if (*v59)
            {
              if (!v43)
              {
                goto LABEL_168;
              }

              v139 = *v124 * v138 + ((*v124 * v138) >> 8) + 1;
              if (v139 >= 0x100)
              {
                break;
              }
            }

LABEL_169:
            ++v59;
            v58 += 4;
            v124 += v136;
            ++v33;
            ++v29;
            if (!--v137)
            {
              goto LABEL_503;
            }
          }

          v138 = BYTE1(v139);
LABEL_168:
          v140 = (*v58 | (HIBYTE(*v58) << 16)) * (v138 ^ 0xFF);
          v141 = (*v58 & 0xFF0000FF) - ((v140 + 65537 + ((v140 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v140 + 1 + BYTE1(v140)) >> 8));
          v142 = (*v33 | (*v29 << 16)) + v141 + (HIBYTE(v141) << 16);
          v143 = (255 * ((v142 >> 8) & 0x10001)) | v142;
          *v33 = v143;
          *v29 = BYTE2(v143);
          goto LABEL_169;
        }

        v294 = v44;
        v124 = v43;
        while (1)
        {
          v295 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_439;
            }

            v296 = *v124 * v295 + ((*v124 * v295) >> 8) + 1;
            if (v296 >= 0x100)
            {
              break;
            }
          }

LABEL_440:
          ++v59;
          v58 += 4;
          v124 += v136;
          ++v33;
          if (!--v294)
          {
LABEL_503:
            v43 = &v124[v362];
            v33 += v364;
            v29 += v365;
LABEL_504:
            v167 = v369;
            goto LABEL_505;
          }
        }

        v295 = BYTE1(v296);
LABEL_439:
        v297 = *v33 + (*v58 - ((*v58 * (v295 ^ 0xFF) + ((*v58 * (v295 ^ 0xFFu)) >> 8) + 1) >> 8));
        *v33 = -(v297 >> 8) | v297;
        goto LABEL_440;
      case 13:
        v363 = v41;
        v230 = v44;
        v110 = v43;
        while (1)
        {
          v231 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_320;
            }

            v232 = *v110 * v231 + ((*v110 * v231) >> 8) + 1;
            if (v232 >= 0x100)
            {
              break;
            }
          }

LABEL_326:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v230)
          {
            goto LABEL_424;
          }
        }

        v231 = BYTE1(v232);
LABEL_320:
        v233 = (*v58 | (HIBYTE(*v58) << 16)) * (v231 ^ 0xFF);
        v234 = (*v58 & 0xFF0000FF) - ((v233 + 65537 + ((v233 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v233 + 1 + BYTE1(v233)) >> 8));
        v235 = HIBYTE(v234);
        if (HIBYTE(v234))
        {
          if (v371)
          {
            if (*v29)
            {
              v234 = PDAmultiplyPDA_18018(*v33, *v29, (*v58 - ((v233 + 1 + BYTE1(v233)) >> 8)), v235);
              v235 = HIBYTE(v234);
            }

            *v33 = v234;
            *v29 = v235;
          }

          else
          {
            *v33 = PDAmultiplyPDA_18018(*v33, 255, (*v58 - ((v233 + 1 + BYTE1(v233)) >> 8)), v235);
          }
        }

        goto LABEL_326;
      case 14:
        v363 = v41;
        v116 = v44;
        v110 = v43;
        while (1)
        {
          v117 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_134;
            }

            v118 = *v110 * v117 + ((*v110 * v117) >> 8) + 1;
            if (v118 >= 0x100)
            {
              break;
            }
          }

LABEL_140:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v116)
          {
            goto LABEL_424;
          }
        }

        v117 = BYTE1(v118);
LABEL_134:
        v119 = (*v58 | (HIBYTE(*v58) << 16)) * (v117 ^ 0xFF);
        v120 = (*v58 & 0xFF0000FF) - ((v119 + 65537 + ((v119 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v119 + 1 + BYTE1(v119)) >> 8));
        v121 = HIBYTE(v120);
        if (HIBYTE(v120))
        {
          if (v371)
          {
            if (*v29)
            {
              v120 = PDAscreenPDA_18019(*v33, *v29, (*v58 - ((v119 + 1 + BYTE1(v119)) >> 8)), v121);
              v121 = HIBYTE(v120);
            }

            *v33 = v120;
            *v29 = v121;
          }

          else
          {
            *v33 = PDAscreenPDA_18019(*v33, 255, (*v58 - ((v119 + 1 + BYTE1(v119)) >> 8)), v121);
          }
        }

        goto LABEL_140;
      case 15:
        v363 = v41;
        v177 = v44;
        v110 = v43;
        while (1)
        {
          v178 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_226;
            }

            v179 = *v110 * v178 + ((*v110 * v178) >> 8) + 1;
            if (v179 >= 0x100)
            {
              break;
            }
          }

LABEL_232:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v177)
          {
            goto LABEL_424;
          }
        }

        v178 = BYTE1(v179);
LABEL_226:
        v180 = (*v58 | (HIBYTE(*v58) << 16)) * (v178 ^ 0xFF);
        v181 = (*v58 & 0xFF0000FF) - ((v180 + 65537 + ((v180 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v180 + 1 + BYTE1(v180)) >> 8));
        v182 = HIBYTE(v181);
        if (HIBYTE(v181))
        {
          if (v371)
          {
            if (*v29)
            {
              v181 = PDAoverlayPDA_18020(*v33, *v29, (*v58 - ((v180 + 1 + BYTE1(v180)) >> 8)), v182);
              v182 = HIBYTE(v181);
            }

            *v33 = v181;
            *v29 = v182;
          }

          else
          {
            *v33 = PDAoverlayPDA_18020(*v33, 0xFFu, (*v58 - ((v180 + 1 + BYTE1(v180)) >> 8)), v182);
          }
        }

        goto LABEL_232;
      case 16:
        v363 = v41;
        v109 = v44;
        v110 = v43;
        while (1)
        {
          v111 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_121;
            }

            v112 = *v110 * v111 + ((*v110 * v111) >> 8) + 1;
            if (v112 >= 0x100)
            {
              break;
            }
          }

LABEL_127:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v109)
          {
            goto LABEL_424;
          }
        }

        v111 = BYTE1(v112);
LABEL_121:
        v113 = (*v58 | (HIBYTE(*v58) << 16)) * (v111 ^ 0xFF);
        v114 = (*v58 & 0xFF0000FF) - ((v113 + 65537 + ((v113 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v113 + 1 + BYTE1(v113)) >> 8));
        v115 = HIBYTE(v114);
        if (HIBYTE(v114))
        {
          if (v371)
          {
            if (*v29)
            {
              v114 = PDAdarkenPDA_18022(*v33, *v29, (*v58 - ((v113 + 1 + BYTE1(v113)) >> 8)), v115);
              v115 = HIBYTE(v114);
            }

            *v33 = v114;
            *v29 = v115;
          }

          else
          {
            *v33 = PDAdarkenPDA_18022(*v33, 0xFFu, (*v58 - ((v113 + 1 + BYTE1(v113)) >> 8)), v115);
          }
        }

        goto LABEL_127;
      case 17:
        v363 = v41;
        v205 = v44;
        v110 = v43;
        while (1)
        {
          v206 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_273;
            }

            v207 = *v110 * v206 + ((*v110 * v206) >> 8) + 1;
            if (v207 >= 0x100)
            {
              break;
            }
          }

LABEL_279:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v205)
          {
            goto LABEL_424;
          }
        }

        v206 = BYTE1(v207);
LABEL_273:
        v208 = (*v58 | (HIBYTE(*v58) << 16)) * (v206 ^ 0xFF);
        v209 = (*v58 & 0xFF0000FF) - ((v208 + 65537 + ((v208 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v208 + 1 + BYTE1(v208)) >> 8));
        v210 = HIBYTE(v209);
        if (HIBYTE(v209))
        {
          if (v371)
          {
            if (*v29)
            {
              v209 = PDAlightenPDA_18021(*v33, *v29, (*v58 - ((v208 + 1 + BYTE1(v208)) >> 8)), v210);
              v210 = HIBYTE(v209);
            }

            *v33 = v209;
            *v29 = v210;
          }

          else
          {
            *v33 = PDAlightenPDA_18021(*v33, 0xFFu, (*v58 - ((v208 + 1 + BYTE1(v208)) >> 8)), v210);
          }
        }

        goto LABEL_279;
      case 18:
        v363 = v41;
        v243 = v44;
        v110 = v43;
        while (1)
        {
          v244 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_345;
            }

            v245 = *v110 * v244 + ((*v110 * v244) >> 8) + 1;
            if (v245 >= 0x100)
            {
              break;
            }
          }

LABEL_351:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v243)
          {
            goto LABEL_424;
          }
        }

        v244 = BYTE1(v245);
LABEL_345:
        v246 = (*v58 | (HIBYTE(*v58) << 16)) * (v244 ^ 0xFF);
        v247 = (*v58 & 0xFF0000FF) - ((v246 + 65537 + ((v246 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v246 + 1 + BYTE1(v246)) >> 8));
        v248 = HIBYTE(v247);
        if (HIBYTE(v247))
        {
          if (v371)
          {
            if (*v29)
            {
              v247 = PDAcolordodgePDA_18023(*v33, *v29, (*v58 - ((v246 + 1 + BYTE1(v246)) >> 8)), v248);
              v248 = HIBYTE(v247);
            }

            *v33 = v247;
            *v29 = v248;
          }

          else
          {
            *v33 = PDAcolordodgePDA_18023(*v33, 0xFFu, (*v58 - ((v246 + 1 + BYTE1(v246)) >> 8)), v248);
          }
        }

        goto LABEL_351;
      case 19:
        v363 = v41;
        v270 = v44;
        v110 = v43;
        while (1)
        {
          v271 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_391;
            }

            v272 = *v110 * v271 + ((*v110 * v271) >> 8) + 1;
            if (v272 >= 0x100)
            {
              break;
            }
          }

LABEL_397:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v270)
          {
            goto LABEL_424;
          }
        }

        v271 = BYTE1(v272);
LABEL_391:
        v273 = (*v58 | (HIBYTE(*v58) << 16)) * (v271 ^ 0xFF);
        v274 = (*v58 & 0xFF0000FF) - ((v273 + 65537 + ((v273 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v273 + 1 + BYTE1(v273)) >> 8));
        v275 = HIBYTE(v274);
        if (HIBYTE(v274))
        {
          if (v371)
          {
            if (*v29)
            {
              v274 = PDAcolorburnPDA_18024(*v33, *v29, (*v58 - ((v273 + 1 + BYTE1(v273)) >> 8)), v275);
              v275 = HIBYTE(v274);
            }

            *v33 = v274;
            *v29 = v275;
          }

          else
          {
            *v33 = PDAcolorburnPDA_18024(*v33, 0xFFu, (*v58 - ((v273 + 1 + BYTE1(v273)) >> 8)), v275);
          }
        }

        goto LABEL_397;
      case 20:
        v363 = v41;
        v211 = v44;
        v110 = v43;
        while (1)
        {
          v212 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_286;
            }

            v213 = *v110 * v212 + ((*v110 * v212) >> 8) + 1;
            if (v213 >= 0x100)
            {
              break;
            }
          }

LABEL_292:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v211)
          {
            goto LABEL_424;
          }
        }

        v212 = BYTE1(v213);
LABEL_286:
        v214 = (*v58 | (HIBYTE(*v58) << 16)) * (v212 ^ 0xFF);
        v215 = (*v58 & 0xFF0000FF) - ((v214 + 65537 + ((v214 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v214 + 1 + BYTE1(v214)) >> 8));
        v216 = HIBYTE(v215);
        if (HIBYTE(v215))
        {
          if (v371)
          {
            if (*v29)
            {
              v215 = PDAsoftlightPDA_18026(*v33, *v29, (*v58 - ((v214 + 1 + BYTE1(v214)) >> 8)), v216);
              v216 = HIBYTE(v215);
            }

            *v33 = v215;
            *v29 = v216;
          }

          else
          {
            *v33 = PDAsoftlightPDA_18026(*v33, 255, (*v58 - ((v214 + 1 + BYTE1(v214)) >> 8)), v216);
          }
        }

        goto LABEL_292;
      case 21:
        v363 = v41;
        v224 = v44;
        v110 = v43;
        while (1)
        {
          v225 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_307;
            }

            v226 = *v110 * v225 + ((*v110 * v225) >> 8) + 1;
            if (v226 >= 0x100)
            {
              break;
            }
          }

LABEL_313:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v224)
          {
            goto LABEL_424;
          }
        }

        v225 = BYTE1(v226);
LABEL_307:
        v227 = (*v58 | (HIBYTE(*v58) << 16)) * (v225 ^ 0xFF);
        v228 = (*v58 & 0xFF0000FF) - ((v227 + 65537 + ((v227 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v227 + 1 + BYTE1(v227)) >> 8));
        v229 = HIBYTE(v228);
        if (HIBYTE(v228))
        {
          if (v371)
          {
            if (*v29)
            {
              v228 = PDAhardlightPDA_18025(*v33, *v29, (*v58 - ((v227 + 1 + BYTE1(v227)) >> 8)), v229);
              v229 = HIBYTE(v228);
            }

            *v33 = v228;
            *v29 = v229;
          }

          else
          {
            *v33 = PDAhardlightPDA_18025(*v33, 0xFFu, (*v58 - ((v227 + 1 + BYTE1(v227)) >> 8)), v229);
          }
        }

        goto LABEL_313;
      case 22:
        v363 = v41;
        v264 = v44;
        v102 = v43;
        while (1)
        {
          v265 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_378;
            }

            v266 = *v102 * v265 + ((*v102 * v265) >> 8) + 1;
            if (v266 >= 0x100)
            {
              break;
            }
          }

LABEL_384:
          ++v59;
          v58 += 4;
          v102 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v264)
          {
            goto LABEL_411;
          }
        }

        v265 = BYTE1(v266);
LABEL_378:
        v267 = (*v58 | (HIBYTE(*v58) << 16)) * (v265 ^ 0xFF);
        v268 = (*v58 & 0xFF0000FF) - ((v267 + 65537 + ((v267 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v267 + 1 + BYTE1(v267)) >> 8));
        v269 = HIBYTE(v268);
        if (HIBYTE(v268))
        {
          if (v371)
          {
            if (*v29)
            {
              v268 = PDAdifferencePDA_18027(*v33, *v29, (*v58 - ((v267 + 1 + BYTE1(v267)) >> 8)), v269);
              v269 = HIBYTE(v268);
            }

            *v33 = v268;
            *v29 = v269;
          }

          else
          {
            *v33 = PDAdifferencePDA_18027(*v33, 0xFFu, (*v58 - ((v267 + 1 + BYTE1(v267)) >> 8)), v269);
          }
        }

        goto LABEL_384;
      case 23:
        v363 = v41;
        v102 = v43;
        v276 = v44;
        while (1)
        {
          v277 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_404;
            }

            v278 = *v102 * v277 + ((*v102 * v277) >> 8) + 1;
            if (v278 >= 0x100)
            {
              break;
            }
          }

LABEL_410:
          ++v59;
          v58 += 4;
          v102 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v276)
          {
            goto LABEL_411;
          }
        }

        v277 = BYTE1(v278);
LABEL_404:
        v279 = (*v58 | (HIBYTE(*v58) << 16)) * (v277 ^ 0xFF);
        v280 = (*v58 & 0xFF0000FF) - ((v279 + 65537 + ((v279 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v279 + 1 + BYTE1(v279)) >> 8));
        v281 = HIBYTE(v280);
        if (HIBYTE(v280))
        {
          if (v371)
          {
            if (*v29)
            {
              v280 = PDAexclusionPDA_18028(*v33, *v29, (*v58 - ((v279 + 1 + BYTE1(v279)) >> 8)), v281);
              v281 = HIBYTE(v280);
            }

            *v33 = v280;
            *v29 = v281;
          }

          else
          {
            *v33 = PDAexclusionPDA_18028(*v33, 0xFFu, (*v58 - ((v279 + 1 + BYTE1(v279)) >> 8)), v281);
          }
        }

        goto LABEL_410;
      case 24:
        v363 = v41;
        v102 = v43;
        v158 = v44;
        while (1)
        {
          v159 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_197;
            }

            v160 = *v102 * v159 + ((*v102 * v159) >> 8) + 1;
            if (v160 >= 0x100)
            {
              break;
            }
          }

LABEL_203:
          ++v59;
          v58 += 4;
          v102 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v158)
          {
            goto LABEL_411;
          }
        }

        v159 = BYTE1(v160);
LABEL_197:
        v161 = (*v58 | (HIBYTE(*v58) << 16)) * (v159 ^ 0xFF);
        v162 = (*v58 & 0xFF0000FF) - ((v161 + 65537 + ((v161 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v161 + 1 + BYTE1(v161)) >> 8));
        v163 = HIBYTE(v162);
        if (HIBYTE(v162))
        {
          if (v371)
          {
            if (*v29)
            {
              v162 = PDAhuePDA_18029(*v33, *v29, (*v58 - ((v161 + 1 + BYTE1(v161)) >> 8)), v163);
              v163 = HIBYTE(v162);
            }

            *v33 = v162;
            *v29 = v163;
          }

          else
          {
            *v33 = PDAhuePDA_18029(*v33, 0xFFu, (*v58 - ((v161 + 1 + BYTE1(v161)) >> 8)), v163);
          }
        }

        goto LABEL_203;
      case 25:
        v363 = v41;
        v102 = v43;
        v152 = v44;
        while (1)
        {
          v153 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_184;
            }

            v154 = *v102 * v153 + ((*v102 * v153) >> 8) + 1;
            if (v154 >= 0x100)
            {
              break;
            }
          }

LABEL_190:
          ++v59;
          v58 += 4;
          v102 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v152)
          {
            goto LABEL_411;
          }
        }

        v153 = BYTE1(v154);
LABEL_184:
        v155 = (*v58 | (HIBYTE(*v58) << 16)) * (v153 ^ 0xFF);
        v156 = (*v58 & 0xFF0000FF) - ((v155 + 65537 + ((v155 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v155 + 1 + BYTE1(v155)) >> 8));
        v157 = HIBYTE(v156);
        if (HIBYTE(v156))
        {
          if (v371)
          {
            if (*v29)
            {
              v156 = PDAhuePDA_18029(*v33, *v29, (*v58 - ((v155 + 1 + BYTE1(v155)) >> 8)), v157);
              v157 = HIBYTE(v156);
            }

            *v33 = v156;
            *v29 = v157;
          }

          else
          {
            *v33 = PDAhuePDA_18029(*v33, 0xFFu, (*v58 - ((v155 + 1 + BYTE1(v155)) >> 8)), v157);
          }
        }

        goto LABEL_190;
      case 26:
        v363 = v41;
        v110 = v43;
        while (1)
        {
          v282 = *v59;
          if (*v59)
          {
            if (!v43)
            {
              goto LABEL_417;
            }

            v283 = *v110 * v282 + ((*v110 * v282) >> 8) + 1;
            if (v283 >= 0x100)
            {
              break;
            }
          }

LABEL_423:
          ++v59;
          v58 += 4;
          v110 += v43 != 0;
          ++v33;
          v29 += v31;
          if (!--v44)
          {
LABEL_424:
            v43 = &v110[v362];
            goto LABEL_425;
          }
        }

        v282 = BYTE1(v283);
LABEL_417:
        v284 = (*v58 | (HIBYTE(*v58) << 16)) * (v282 ^ 0xFF);
        v285 = (*v58 & 0xFF0000FF) - ((v284 + 65537 + ((v284 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v284 + 1 + BYTE1(v284)) >> 8));
        v286 = HIBYTE(v285);
        if (HIBYTE(v285))
        {
          if (v371)
          {
            if (*v29)
            {
              v285 = PDAluminosityPDA_18031((*v58 - ((v284 + 1 + BYTE1(v284)) >> 8)), v286, *v33, *v29);
              v286 = HIBYTE(v285);
            }

            *v33 = v285;
            *v29 = v286;
          }

          else
          {
            *v33 = PDAluminosityPDA_18031((*v58 - ((v284 + 1 + BYTE1(v284)) >> 8)), v286, *v33, 0xFFu);
          }
        }

        goto LABEL_423;
      case 27:
        v363 = v41;
        v102 = v43;
        v103 = v44;
        break;
      default:
        goto LABEL_504;
    }

    while (1)
    {
      v104 = *v59;
      if (*v59)
      {
        if (!v43)
        {
          goto LABEL_108;
        }

        v105 = *v102 * v104 + ((*v102 * v104) >> 8) + 1;
        if (v105 >= 0x100)
        {
          break;
        }
      }

LABEL_114:
      ++v59;
      v58 += 4;
      v102 += v43 != 0;
      ++v33;
      v29 += v31;
      if (!--v103)
      {
LABEL_411:
        v43 = &v102[v362];
LABEL_425:
        v33 += v364;
        v29 += v365;
        v37 = v359;
        v38 = v358;
        v44 = v360;
        v167 = v369;
        v95 = v368;
        LODWORD(v41) = v363;
        goto LABEL_506;
      }
    }

    v104 = BYTE1(v105);
LABEL_108:
    v106 = (*v58 | (HIBYTE(*v58) << 16)) * (v104 ^ 0xFF);
    v107 = (*v58 & 0xFF0000FF) - ((v106 + 65537 + ((v106 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v106 + 1 + BYTE1(v106)) >> 8));
    v108 = HIBYTE(v107);
    if (HIBYTE(v107))
    {
      if (v371)
      {
        if (*v29)
        {
          v107 = PDAluminosityPDA_18031(*v33, *v29, (*v58 - ((v106 + 1 + BYTE1(v106)) >> 8)), v108);
          v108 = HIBYTE(v107);
        }

        *v33 = v107;
        *v29 = v108;
      }

      else
      {
        *v33 = PDAluminosityPDA_18031(*v33, 0xFFu, (*v58 - ((v106 + 1 + BYTE1(v106)) >> 8)), v108);
      }
    }

    goto LABEL_114;
  }
}

uint64_t PDAmultiplyPDA_18018(int a1, int a2, int a3, int a4)
{
  v4 = (a2 ^ 0xFF) * a3;
  if (a2 == 255)
  {
    v4 = 0;
  }

  v5 = v4 + ((a4 ^ 0xFF) + a3) * a1;
  v6 = 255 * (a4 + a2) - a4 * a2;
  v7 = v5 + 128;
  if (v5 >> 7 >= 0x1FD)
  {
    v7 = 65152;
  }

  v8 = (v7 + (v7 >> 8)) >> 8;
  if (v6 >= 65152)
  {
    v9 = 65152;
  }

  else
  {
    v9 = v6 + 128;
  }

  return (v8 | ((v9 + (v9 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAscreenPDA_18019(int a1, int a2, int a3, int a4)
{
  v4 = (a1 ^ 0xFF) * a3 - a1 + (a1 << 8);
  v5 = 255 * (a4 + a2) - a4 * a2;
  v6 = v4 + 128;
  if (v4 >> 7 >= 0x1FD)
  {
    v6 = 65152;
  }

  if (v5 >= 65152)
  {
    v7 = 65152;
  }

  else
  {
    v7 = v5 + 128;
  }

  return ((v6 + (v6 >> 8)) >> 8) & 0xFFFFFF | (((v7 + (v7 >> 8)) >> 8) << 24);
}

uint64_t PDAoverlayPDA_18020(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  v7 = (a4 + 255) * v5 + (a2 + 255) * v4 - (a4 * a2 + v6);
  v8 = (a2 ^ 0xFF) * v4 + (a4 ^ 0xFF) * v5 + v6;
  if (v5 >= (a2 + 1) >> 1)
  {
    v8 = v7;
  }

  v9 = 255 * (a4 + a2) - a4 * a2;
  if (v8 >= 65152)
  {
    v10 = 65152;
  }

  else
  {
    v10 = v8 + 128;
  }

  v11 = (v10 + (v10 >> 8)) >> 8;
  if (v9 >= 65152)
  {
    v12 = 65152;
  }

  else
  {
    v12 = v9 + 128;
  }

  return (v11 | ((v12 + (v12 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAlightenPDA_18021(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  if (v4 * a2 > a4 * v5)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFF) * v4;
  if (a2 == 255)
  {
    v8 = 0;
  }

  v9 = v6 + v7 + v8;
  v10 = 255 * (a4 + a2) - a4 * a2;
  v11 = v9 + 128;
  if (v9 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAdarkenPDA_18022(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  if (v4 * a2 < a4 * v5)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFF) * v4;
  if (a2 == 255)
  {
    v8 = 0;
  }

  v9 = v6 + v7 + v8;
  v10 = 255 * (a4 + a2) - a4 * a2;
  v11 = v9 + 128;
  if (v9 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAcolordodgePDA_18023(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
      v6 = 65025;
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

  v7 = (a4 ^ 0xFF) * v4;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFF) * v5;
  if (a2 == 255)
  {
    v8 = 0;
  }

  v9 = v8 + v7 + v6;
  v10 = 255 * (a4 + a2) - a4 * a2;
  if (v9 >= v10)
  {
    v9 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v9 >= 65152)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v9 + 128;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAcolorburnPDA_18024(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a4 * a2;
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

  v7 = (a4 ^ 0xFF) * v6;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = v7 + v4;
  v9 = (a2 ^ 0xFF) * v5;
  if (a2 == 255)
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  if (a2 <= a1)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v10 = (v10 - (a4 * a4 * (a2 - v6)) / v5) & ~((v10 - (a4 * a4 * (a2 - v6)) / v5) >> 31);
LABEL_14:
    v11 = 255 * (a4 + a2) - v4;
    if (v10 >> 7 > 0x1FC)
    {
      v12 = 65152;
    }

    else
    {
      v12 = v10 + 128;
    }

    goto LABEL_18;
  }

  v11 = 255 * (a4 + a2) - v4;
  v12 = 128;
LABEL_18:
  if (v11 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v11 + 128;
  }

  return ((v12 + (v12 >> 8)) >> 8) & 0xFFFFFF | (((v13 + (v13 >> 8)) >> 8) << 24);
}

uint64_t PDAhardlightPDA_18025(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  v7 = (a2 ^ 0xFF) * v4 + (a4 ^ 0xFF) * v5 + v6;
  v8 = (a4 + 255) * v5 + (a2 + 255) * v4 - (a4 * a2 + v6);
  if (v4 > (a4 + 1) >> 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = 255 * (a4 + a2) - a4 * a2;
  if (v9 >= 65152)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v9 + 128;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAsoftlightPDA_18026(unsigned int a1, int a2, unsigned int a3, unsigned int a4)
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

  v6 = 2 * v4 * v5 - (v4 * v4 * (2 * v5 - a4)) / a2;
  v7 = v6 & ~(v6 >> 31);
  v8 = (a4 ^ 0xFF) * v4;
  if (a4 == 255)
  {
    v8 = 0;
  }

  v9 = (a2 ^ 0xFF) * v5;
  if (a2 == 255)
  {
    v9 = 0;
  }

  v10 = v9 + v8 + v7;
  v11 = 255 * (a4 + a2) - a4 * a2;
  v12 = v10 + 128;
  if (v10 >> 7 >= 0x1FD)
  {
    v12 = 65152;
  }

  v13 = (v12 + (v12 >> 8)) >> 8;
  if (v11 >= 65152)
  {
    v14 = 65152;
  }

  else
  {
    v14 = v11 + 128;
  }

  return (v13 | ((v14 + (v14 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAdifferencePDA_18027(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = v4 + v5;
  v7 = a4 * v5;
  v8 = v4 * a2;
  v10 = v7 - v8;
  v9 = (v7 - v8) < 0;
  v11 = 255 * v6 - v8 - v7;
  if (v9)
  {
    v12 = -v10;
  }

  else
  {
    v12 = v10;
  }

  v13 = v11 + v12;
  v14 = 255 * (a4 + a2) - a4 * a2;
  if (v13 >= 65152)
  {
    v15 = 65152;
  }

  else
  {
    v15 = v13 + 128;
  }

  v16 = (v15 + (v15 >> 8)) >> 8;
  if (v14 >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v14 + 128;
  }

  return (v16 | ((v17 + (v17 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAexclusionPDA_18028(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = 255 * (v4 + v5) - 2 * v5 * v4;
  v7 = 255 * (a4 + a2) - a4 * a2;
  if (v6 >= 65152)
  {
    v8 = 65152;
  }

  else
  {
    v8 = v6 + 128;
  }

  v9 = (v8 + (v8 >> 8)) >> 8;
  if (v7 >= 65152)
  {
    v10 = 65152;
  }

  else
  {
    v10 = v7 + 128;
  }

  return (v9 | ((v10 + (v10 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAhuePDA_18029(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  v5 = (a4 ^ 0xFF) * v4;
  if (a4 == 255)
  {
    v5 = 0;
  }

  else
  {
    LOBYTE(v4) = (a4 * v4 + 128 + ((a4 * v4 + 128) >> 8)) >> 8;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (a2 ^ 0xFF) * v6;
  if (a2 == 255)
  {
    v7 = 0;
  }

  v8 = v5 + v7;
  if (v8 >> 7 >= 0x1FD)
  {
    v9 = 65152;
  }

  else
  {
    v9 = v8 + 128;
  }

  return (v4 + ((v9 + (v9 >> 8)) >> 8)) | ((a4 + a2 - ((a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8)) << 24);
}

uint64_t PDAluminosityPDA_18031(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v6 = 0;
  }

  if (a2 != 255)
  {
    v6 += (a2 ^ 0xFF) * v4;
    LOBYTE(v4) = (v4 * a2 + 128 + ((v4 * a2 + 128) >> 8)) >> 8;
  }

  if (v6 >> 7 >= 0x1FD)
  {
    v7 = 65152;
  }

  else
  {
    v7 = v6 + 128;
  }

  return (v4 + ((v7 + (v7 >> 8)) >> 8)) | ((a4 + a2 - ((a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8)) << 24);
}

void W8_shade_axial_W(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 280);
  v9 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v8 * (*(*(a1 + 272) + 4) * a2)));
  v10 = a1 + 368;
  v11 = *(a1 + 368);
  v12 = (a3 >> 4) & 0xF0;
  v13 = v11 + v12;
  if (v11)
  {
    v14 = v11 + v12;
  }

  else
  {
    v14 = a1 + 368;
  }

  if (v11)
  {
    v15 = 15;
  }

  else
  {
    v15 = 0;
  }

  v17 = *(a1 + 336);
  LODWORD(a8) = *(a1 + 344);
  v18 = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 320);
  v21 = *(a1 + 324);
  v24 = a1 + 144;
  v22 = *(a1 + 144);
  v23 = *(v24 + 8);
  v25 = *(a1 + 376);
  v26 = *(a1 + 360);
  if (v8 != 0.0)
  {
    if (v11)
    {
      v32 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v32) = 0;
    }

    while (1)
    {
      v33 = v20;
      if (v9 >= v18)
      {
        v33 = v21;
        if (v9 <= v19)
        {
          v33 = (*&a8 * (v9 - v17));
        }
      }

      if ((v33 & 0x80000000) == 0)
      {
        break;
      }

      v34 = v25;
      if (v25)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v32) = (v32 + 1) & v15;
      v9 = v8 + v9;
      v23 += 4;
      *v22 = v34;
      v22 = (v22 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v34 = (v26 + 2 * (2 * v33));
LABEL_38:
    *v23 = (((*(v14 + v32) + v34[1]) << 16) | ((*(v14 + v32) + *v34) >> 8)) & 0xFF0000FF;
    LOBYTE(v34) = -1;
    goto LABEL_39;
  }

  if (v11)
  {
    v27 = v13;
  }

  else
  {
    v27 = v10;
  }

  if (v11)
  {
    LODWORD(v28) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v28) = 0;
  }

  if (v11)
  {
    LODWORD(v29) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v11)
  {
    v30 = 15;
  }

  else
  {
    v30 = 0;
  }

  if (v9 >= v18)
  {
    v20 = v21;
    if (v9 <= v19)
    {
      v20 = (*&a8 * (v9 - v17));
    }
  }

  if ((v20 & 0x80000000) == 0 || v25)
  {
    v35 = (v26 + 2 * (2 * v20));
    if (v20 < 0)
    {
      v36 = v25;
    }

    else
    {
      v36 = v35;
    }

    v37 = *v36;
    v38 = v36[1];
    if (v11)
    {
      v39 = vdup_n_s32(v37);
      v40 = vdup_n_s32(v38);
      v41 = a4 + 4;
      do
      {
        LOBYTE(a8) = *(v27 + v29);
        BYTE4(a8) = *(v27 + v28);
        v29 = (v29 + 1) & v30;
        v42 = vand_s8(*&a8, 0xFF000000FFLL);
        v43 = vorr_s8((*&vshl_n_s32(vadd_s32(v40, v42), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v39, v42), 8uLL) & 0xFFFFFEFFFFFFFEFFLL));
        *v23 = v43;
        v28 = (v28 + 1) & v30;
        v43.i8[0] = *(v27 + v29);
        v43.i8[4] = *(v27 + v28);
        v44 = vand_s8(v43, 0xFF000000FFLL);
        a8 = COERCE_DOUBLE(vorr_s8((*&vshl_n_s32(vadd_s32(v40, v44), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v39, v44), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
        *(v23 + 8) = a8;
        *v22++ = -1;
        v23 += 16;
        v41 -= 4;
      }

      while (v41 > 4);
    }

    else
    {
      v45 = vdupq_n_s32((v37 >> 8) | (BYTE1(v38) << 24));
      v46 = a4 + 4;
      do
      {
        *v23 = v45;
        v23 += 16;
        *v22++ = -1;
        v46 -= 4;
      }

      while (v46 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = a4;
    }

    bzero(v22, ((a4 - v31 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t W8_shade_custom_W(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  v8 = v6 * a3;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * v8) + (_D0.f32[0] * _S2));
  v10 = result + 368;
  v11 = *(result + 368);
  if (v11)
  {
    v10 = v11 + ((a3 >> 4) & 0xF0);
  }

  v12 = 15;
  if (!v11)
  {
    v12 = 0;
  }

  __asm { FMLA            S3, S2, V0.S[1] }

  v18 = *(result + 300) + _S3;
  v19 = *(result + 304);
  v20 = *(result + 336);
  v21 = *(result + 348);
  v22 = *(result + 344);
  v23 = *(result + 356);
  v24 = *(result + 376);
  v25 = *(result + 360);
  v26 = 2 * *(result + 48);
  v28 = *(result + 144);
  v27 = *(result + 152);
  if (v11)
  {
    v29 = (a2 >> 8) & 0xF;
  }

  else
  {
    v29 = 0;
  }

  *&a6.i32[1] = v18;
  do
  {
    v30 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v19, v30))), vmovn_s32(vcgtq_f32(v30, v19)))) & 1) == 0)
    {
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 4 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      result = *(v10 + v29);
      *v27 = (((result + v31[1]) << 16) | ((result + *v31) >> 8)) & 0xFF0000FF;
      LOBYTE(v31) = -1;
      goto LABEL_14;
    }

    v31 = v24;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_14:
    v29 = (v29 + 1) & v12;
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v27;
    *v28++ = v31;
    --a4;
  }

  while (a4);
  return result;
}

void W8_shade_conic_W(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 368);
  if (v9)
  {
    v10 = v9 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v10 = a1 + 368;
  }

  if (v9)
  {
    v11 = 15;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 284);
  v13 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v12 * v6));
  v30 = *(a1 + 336);
  v31 = *(a1 + 304);
  v15 = *(a1 + 344);
  v16 = *(a1 + 360);
  v18 = *(a1 + 144);
  v17 = *(a1 + 152);
  if (v9)
  {
    v19 = (a2 >> 8) & 0xF;
  }

  else
  {
    v19 = 0;
  }

  v29 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v31 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v29)) - v30);
    v21 = vcvtms_s32_f32(v20);
    v22 = vcvtms_s32_f32(v15 + v20);
    v23 = ceilf(v20);
    v24 = v20 - floorf(v20);
    if (v20 < 0.0)
    {
      v21 = v22;
    }

    v25 = v20 <= v15;
    v26 = (v24 * 255.0) + 0.5;
    v27 = ceilf(v20 - v15);
    if (v25)
    {
      v27 = v23;
    }

    v28 = (v16 + 4 * v27);
    *v17++ = (((*(v10 + v19) + ((v26 * v28[1] + (255 - v26) * *(v16 + 2 * (2 * v21) + 2)) >> 8)) << 16) | ((*(v10 + v19) + ((v26 * *v28 + (255 - v26) * *(v16 + 2 * (2 * v21))) >> 8)) >> 8)) & 0xFF0000FF;
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void W8_shade_radial_W(uint64_t a1, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 280);
  v9 = *(a1 + 284);
  v10 = *(*(a1 + 272) + 4);
  v11 = v10 * a2;
  v12 = v10 * a3;
  v13 = *(a1 + 296) + ((*(a1 + 288) * v12) + (v8 * v11));
  v14 = *(a1 + 300) + ((v12 * *(a1 + 292)) + (v9 * v11));
  v16 = *(a1 + 400);
  v17 = *(a1 + 336);
  v18 = *(a1 + 344);
  LODWORD(a8) = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 324);
  v21 = v16[2];
  v22 = v16[4];
  v23 = v16[5];
  v24 = v16[7];
  v27 = a1 + 144;
  v25 = *(a1 + 144);
  v26 = *(v27 + 8);
  v28 = *(a1 + 376);
  v29 = *(a1 + 360);
  v30 = (a2 >> 8) & 0xF;
  if (v21 != 0.0 || v24 != 0.0 || v9 != 0.0)
  {
    v40 = *(a1 + 320);
    v41 = v16[3];
    v42 = v16[6];
    v43 = v16[8];
    v44 = a1 + 368;
    v45 = *(a1 + 368);
    v46 = v45 + ((a3 >> 4) & 0xF0);
    v34 = v45 == 0;
    v47 = 15;
    if (v34)
    {
      v47 = 0;
      v30 = 0;
    }

    else
    {
      v44 = v46;
    }

    v48 = -v42;
    v49 = v19 - *&a8;
    while (1)
    {
      v50 = v48 + ((v13 + v13) * v21);
      v51 = ((v14 * v14) + (v13 * v13)) - v24;
      if (v23 == 0.0)
      {
        v58 = v51 / v50;
      }

      else
      {
        v52 = ((v23 * -4.0) * v51) + (v50 * v50);
        if (v52 < 0.0)
        {
          goto LABEL_51;
        }

        v53 = sqrtf(v52);
        v54 = v43 * (v50 - v53);
        v55 = v50 + v53;
        v56 = v43 * v55;
        v57 = (v43 * v55) <= v54;
        if ((v43 * v55) <= v54)
        {
          v58 = v43 * v55;
        }

        else
        {
          v58 = v54;
        }

        if (v57)
        {
          v56 = v54;
        }

        if (v56 < 0.0)
        {
          v59 = v56 < v41;
LABEL_37:
          v60 = v40;
          if (v59)
          {
            goto LABEL_51;
          }

LABEL_38:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v56 <= 1.0)
        {
          v61 = *&a8 + (v56 * v49);
          goto LABEL_49;
        }

        if ((v20 & 0x80000000) == 0)
        {
          v60 = v20;
          if (v56 <= v22)
          {
LABEL_50:
            v62 = (v29 + 2 * (2 * v60));
LABEL_52:
            *v26 = (((*(v44 + v30) + v62[1]) << 16) | ((*(v44 + v30) + *v62) >> 8)) & 0xFF0000FF;
            LOBYTE(v62) = -1;
            goto LABEL_53;
          }
        }
      }

      if (v58 < 0.0)
      {
        v59 = v58 < v41;
        goto LABEL_37;
      }

      if (v58 > 1.0)
      {
        v60 = v20;
        if (v58 > v22)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v61 = *&a8 + (v58 * v49);
LABEL_49:
      v60 = (v18 * (v61 - v17));
      if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v62 = v28;
      if (v28)
      {
        goto LABEL_52;
      }

LABEL_53:
      v30 = (v30 + 1) & v47;
      v13 = v8 + v13;
      v14 = v9 + v14;
      v26 += 4;
      *v25++ = v62;
      if (!--a4)
      {
        return;
      }
    }
  }

  v31 = a1 + 368;
  v32 = *(a1 + 368);
  LODWORD(v33) = (BYTE1(a2) + 1) & 0xF;
  v34 = v32 == 0;
  if (v32)
  {
    v35 = v32 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v35 = v31;
  }

  if (v34)
  {
    LODWORD(v33) = 0;
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = (a2 >> 8) & 0xF;
  }

  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = 15;
  }

  v37 = v14 * v14;
  v38 = -v23;
  if (v37 <= -v23)
  {
    v63 = fabsf(v16[8]);
    v64 = v23 * -4.0;
    v65 = v19 - *&a8;
    v66 = (v29 + 4 * v20);
    v67 = a4 + 2;
    while (1)
    {
      v68 = v37 + (v13 * v13);
      v69 = v8 + v13;
      v70 = v37 + (v69 * v69);
      if (v68 > v38 && v70 > v38)
      {
        if ((v20 & 0x80000000) != 0)
        {
          if (!v28)
          {
            v93 = 0;
            LOBYTE(v88) = 0;
            goto LABEL_77;
          }

          v79 = *v28;
          v80 = v28[1];
        }

        else
        {
          v79 = *v66;
          v80 = v66[1];
        }

        v89 = *(v35 + a2);
        v90 = v89 + v79;
        v91 = v89 + v80;
        v92 = *(v35 + v33);
        v86 = v92 + v79;
        v87 = v92 + v80;
        LODWORD(v88) = (v90 >> 8) | (v91 << 16);
        goto LABEL_75;
      }

      v72 = sqrtf(v64 * v70);
      v73 = v63 * sqrtf(v64 * v68);
      v74 = v63 * v72;
      v75 = (v18 * ((*&a8 + (v73 * v65)) - v17));
      v76 = (v18 * ((*&a8 + ((v63 * v72) * v65)) - v17));
      if (v73 <= 1.0 && v74 <= 1.0)
      {
        v88 = (v29 + 4 * v75);
        v81 = (v29 + 4 * v76);
        v82 = *v81;
        v83 = v81[1];
        LODWORD(v81) = *(v35 + a2);
        v84 = v81 + *v88;
        LODWORD(v88) = v81 + v88[1];
        v85 = *(v35 + v33);
        v86 = v85 + v82;
        v87 = v85 + v83;
        LODWORD(v88) = (v88 << 16) | (v84 >> 8);
LABEL_75:
        *v26 = v88 & 0xFF0000FF;
        LOBYTE(v88) = -1;
        goto LABEL_76;
      }

      if (v73 <= 1.0)
      {
        if ((v75 & 0x80000000) == 0)
        {
          v78 = (2 * v75);
LABEL_81:
          v88 = (v29 + 2 * v78);
LABEL_83:
          *v26 = (((*(v35 + a2) + v88[1]) << 16) | ((*(v35 + a2) + *v88) >> 8)) & 0xFF0000FF;
          LOBYTE(v88) = -1;
          goto LABEL_84;
        }
      }

      else if (v73 <= v22)
      {
        v78 = 2 * v20;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      v88 = v28;
      if (v28)
      {
        goto LABEL_83;
      }

LABEL_84:
      if (v74 <= 1.0)
      {
        if (v76 < 0)
        {
          goto LABEL_91;
        }

        v94 = (2 * v76);
      }

      else if (v74 > v22 || (v94 = 2 * v20, (v20 & 0x80000000) != 0))
      {
LABEL_91:
        if (!v28)
        {
          v93 = 0;
          goto LABEL_77;
        }

        v98 = *(v35 + v33);
        v86 = v98 + *v28;
        v87 = v98 + v28[1];
        goto LABEL_76;
      }

      v95 = (v29 + 2 * v94);
      v96 = v95[1];
      v97 = *(v35 + v33);
      v86 = v97 + *v95;
      v87 = v97 + v96;
LABEL_76:
      *(v26 + 4) = ((v86 >> 8) | (v87 << 16)) & 0xFF0000FF;
      v93 = -1;
LABEL_77:
      v13 = v8 + v69;
      LOBYTE(a2) = (a2 + 1) & v36;
      LOBYTE(v33) = (v33 + 1) & v36;
      v26 += 8;
      *v25 = v88;
      v25[1] = v93;
      v25 += 2;
      v67 -= 2;
      if (v67 <= 2)
      {
        return;
      }
    }
  }

  if (v28 || (v20 & 0x80000000) == 0)
  {
    v99 = (v29 + 4 * v20);
    if (v20 >= 0)
    {
      v100 = v99;
    }

    else
    {
      v100 = v28;
    }

    v101 = vdup_n_s32(v100[1]);
    v102 = vdup_n_s32(*v100);
    v103 = a4 + 4;
    do
    {
      LOBYTE(a8) = *(v35 + a2);
      BYTE4(a8) = *(v35 + v33);
      a2 = (a2 + 1) & v36;
      v104 = vand_s8(*&a8, 0xFF000000FFLL);
      v105 = vorr_s8((*&vshl_n_s32(vadd_s32(v101, v104), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v102, v104), 8uLL) & 0xFFFFFEFFFFFFFEFFLL));
      *v26 = v105;
      v33 = (v33 + 1) & v36;
      v105.i8[0] = *(v35 + a2);
      v105.i8[4] = *(v35 + v33);
      v106 = vand_s8(v105, 0xFF000000FFLL);
      a8 = COERCE_DOUBLE(vorr_s8((*&vshl_n_s32(vadd_s32(v101, v106), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v102, v106), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
      *(v26 + 8) = a8;
      *v25 = -1;
      v25 += 4;
      v26 += 16;
      v103 -= 4;
    }

    while (v103 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v39 = 4;
    }

    else
    {
      v39 = a4;
    }

    bzero(v25, ((a4 - v39 + 3) & 0xFFFFFFFC) + 4);
  }
}

void W8_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v77[1] = *MEMORY[0x1E69E9840];
  v66 = 0u;
  v67 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v65[0] = a3;
  v65[1] = a4;
  LOBYTE(v66) = ((*(a2 + 184) * 255.0) + 0.5);
  v8 = *(a1 + 28);
  *&v67 = v8;
  if (*(a1 + 48))
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  *&v68 = v9;
  v10 = *(a2 + 120);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v11);
  v13 = BYTE2(v11);
  if (v10)
  {
    v14 = *(a2 + 24);
    v15 = (a2 + 104);
    v16 = (a2 + 72);
    v17 = (a2 + 88);
    v18 = v12;
  }

  else
  {
    v14 = *(a2 + 8) >> 25;
    v15 = (a2 + 96);
    v16 = (a2 + 64);
    v17 = (a2 + 80);
    v10 = *(a2 + 112);
    v18 = v13;
  }

  v19 = *v17;
  v20 = *v16;
  v21 = *v15;
  v22 = v18;
  *(&v69 + 1) = v18;
  *(&v68 + 1) = v21;
  *(&v73 + 1) = v14;
  *(&v72 + 1) = v19;
  *(&v71 + 1) = v20;
  *(&v70 + 1) = v10;
  v23 = *(a2 + 128);
  if (v23)
  {
    v24 = *(a2 + 8) >> 25;
    v25 = (a2 + 96);
    v26 = (a2 + 64);
    v27 = (a2 + 80);
    v12 = v13;
  }

  else
  {
    v24 = *(a2 + 24);
    v25 = (a2 + 104);
    v26 = (a2 + 72);
    v27 = (a2 + 88);
    v23 = *(a2 + 136);
  }

  v64 = &v60;
  v28 = *v27;
  v29 = *v26;
  v30 = *v25;
  *&v70 = v12;
  *&v69 = v30;
  *&v74 = v24;
  *&v73 = v28;
  *&v72 = v29;
  *&v71 = v23;
  v31 = *(a1 + 4);
  v32 = MEMORY[0x1EEE9AC00](16 * v31);
  v63 = &v60 - v34 - 15;
  if (v35 <= 0xFFFFFFFFFFFFFFELL)
  {
    v37 = &v60 - v34 - 15;
  }

  else
  {
    v37 = 0;
  }

  if (v35 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v61 = v33;
    v62 = a5;
    v38 = v36;
    v32 = malloc_type_malloc(v32, 0xC166A778uLL);
    v33 = v61;
    v36 = v38;
    a5 = v62;
    v37 = v32;
  }

  *(&v74 + 1) = v37;
  if (v37)
  {
    if (*(a2 + 176))
    {
      if (v31 >= 1)
      {
        v39 = (v37 + 8);
        v40 = v36 - v21;
        do
        {
          if (((v21 - v33) | v40) < 0)
          {
            v44 = 0;
          }

          else
          {
            v41 = ((v21 & ~(-1 << v22)) >> (v22 - 4)) & 0xF;
            v42 = weights_21890[v41];
            if (v41 - 7 >= 9)
            {
              v43 = -v14;
            }

            else
            {
              v43 = v14;
            }

            v44 = v42 & 0xF | (16 * v43);
          }

          *(v39 - 1) = v14 * (v21 >> v22);
          *v39 = v44;
          v39 += 2;
          v21 += v10;
          v40 -= v10;
          --v31;
        }

        while (v31);
      }
    }

    else if (v31 >= 1)
    {
      v45 = v37 + 8;
      do
      {
        *(v45 - 1) = v14 * (v21 >> v22);
        *v45 = 0;
        v45 += 2;
        v21 += v10;
        --v31;
      }

      while (v31);
    }

    v46 = v37;
    v47 = *(a1 + 4);
    v48 = *(a1 + 8);
    v75 = v48;
    v76 = v47;
    v49 = *(a1 + 136);
    if (v49)
    {
      v50 = *(a1 + 104);
      LODWORD(v77[0]) = *(a1 + 108);
      HIDWORD(v77[0]) = v50;
      shape_enum_clip_alloc(v32, v33, v49, 1, 1, 1, v50, v77[0], v47, v48);
      v52 = v51;
      if (v51)
      {
        goto LABEL_36;
      }
    }

    v53 = 0;
    v54 = 0;
    v52 = 0;
    v77[0] = 0;
    while (1)
    {
      v55 = *(a1 + 16) + v54;
      v56 = *(a1 + 48);
      v57 = *(a1 + 12) + v53;
      v58 = *(a1 + 40) + v8 * v55 + v57;
      v59 = v56 + v9 * v55 + v57;
      if (!v56)
      {
        v59 = 0;
      }

      *(&v66 + 1) = v58;
      *(&v67 + 1) = v59;
      a5(a2, v65);
      if (!v52)
      {
        break;
      }

LABEL_36:
      if (!shape_enum_clip_next(v52, v77 + 1, v77, &v76, &v75))
      {
        free(v52);
        break;
      }

      v54 = v77[0];
      v53 = HIDWORD(v77[0]);
      v8 = v67;
      v9 = v68;
    }

    if (v46 != v63)
    {
      free(v46);
    }
  }
}

uint64_t W8_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v121 = *(a2 + 5) - a5;
  }

  else
  {
    v121 = 0;
  }

  v9 = *(a2 + 8);
  v10 = a2[1];
  v120 = *a2;
  v119 = *(a2 + 3) - a5;
  v11 = v8 != 0;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v117 = *(a2 + 11);
  v118 = v14;
  v15 = *(a2 + 7) + v117 * a4;
  v16 = *(result + 32);
  v17 = v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  if (*(result + 176))
  {
    v113 = *(a2 + 15);
    v114 = *(a2 + 13);
    v111 = v14 - 4;
    v112 = ~(-1 << v14);
    v18 = (v17 - 4);
    v19 = v9 ^ 0xFF;
    v115 = *(a2 + 17);
    v109 = a5;
    v110 = -v13;
    v108 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v113 - v15) | (v15 - v114)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v15 & v112) >> v111) & 0xF;
        v21 = (v20 - 7) >= 9 ? v110 : v13;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(result + 32) + (v15 >> v118) * v13;
      if (v120 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v108;
        v24 = v109;
        while (1)
        {
          v27 = *(v25 - 1);
          v26 = *v25;
          v28 = v23 + v27;
          if (v18 >= v23 + v27)
          {
            v29 = (v23 + v27);
          }

          else
          {
            v29 = v18;
          }

          if (v29 < v16)
          {
            v29 = v16;
          }

          v30 = *v29;
          v31 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v42 = (v28 + v21);
            if (v18 < v28 + v21)
            {
              v42 = v18;
            }

            if (v42 < v16)
            {
              v42 = v16;
            }

            v43 = BLEND8_21892[v22];
            v40 = v30 - ((v43 & v30) >> v22);
            v41 = (v43 & *v42) >> v22;
            goto LABEL_46;
          }

LABEL_47:
          v44 = __ROL4__(v30, v10);
          v45 = v44 | v6;
          v46 = (((v44 >> 23) & 0x1FE) + BYTE1(v44) + (((v44 >> 8) & 0xFF00) >> 6) + (((v44 >> 8) & 0xFF00) >> 8)) >> 3;
          v47 = v46 | (v45 << 24);
          v48 = (v46 & 0xFF00FFFF | (v45 << 16)) * v19;
          v49 = v47 - ((v48 + 65537 + ((v48 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v48 + 1 + BYTE1(v48)) >> 8));
          if (v9 == 255)
          {
            v49 = v47;
          }

          *v7 = v49;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v25 += 2;
          ++v7;
          v8 += v11;
          if (!--v24)
          {
            goto LABEL_97;
          }
        }

        v32 = (v28 + (v26 >> 4));
        if (v18 < v32)
        {
          v32 = v18;
        }

        if (v32 < v16)
        {
          v32 = v16;
        }

        v33 = *v32;
        if (v22)
        {
          v34 = (v28 + v21);
          if (v18 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v18;
          }

          if (v35 < v16)
          {
            v35 = v16;
          }

          v36 = *v35;
          v37 = (v34 + (v26 >> 4));
          if (v18 < v37)
          {
            v37 = v18;
          }

          if (v37 < v16)
          {
            v37 = v16;
          }

          v38 = BLEND8_21892[v22];
          v30 = v30 - ((v38 & v30) >> v22) + ((v38 & v36) >> v22);
          v33 = v33 - ((v38 & v33) >> v22) + ((v38 & *v37) >> v22);
        }

        v39 = BLEND8_21892[*v25 & 0xF];
        v40 = v30 - ((v39 & v30) >> v31);
        v41 = (v39 & v33) >> v31;
LABEL_46:
        v30 = v40 + v41;
        goto LABEL_47;
      }

LABEL_97:
      v7 += v119;
      v8 += v121;
      v15 += v117;
      --a6;
      v13 = v115;
      if (!a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_97;
    }

    v51 = v108;
    v50 = v109;
    while (1)
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = v23 + v53;
      if (v18 >= v23 + v53)
      {
        v55 = (v23 + v53);
      }

      else
      {
        v55 = v18;
      }

      if (v55 < v16)
      {
        v55 = v16;
      }

      v56 = *v55;
      v57 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v68 = (v54 + v21);
        if (v18 < v54 + v21)
        {
          v68 = v18;
        }

        if (v68 < v16)
        {
          v68 = v16;
        }

        v69 = BLEND8_21892[v22];
        v66 = v56 - ((v69 & v56) >> v22);
        v67 = (v69 & *v68) >> v22;
        goto LABEL_83;
      }

LABEL_84:
      v70 = __ROL4__(v56, v10);
      v71 = v70 | v6;
      v72 = (((v70 >> 23) & 0x1FE) + BYTE1(v70) + (((v70 >> 8) & 0xFF00) >> 6) + (((v70 >> 8) & 0xFF00) >> 8)) >> 3;
      v73 = v72 | (v71 << 24);
      v74 = (v72 & 0xFF00FFFF | (v71 << 16)) * v19;
      v75 = v73 - ((v74 + 65537 + ((v74 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v74 + 1 + BYTE1(v74)) >> 8));
      if (v9 == 255)
      {
        v75 = v73;
      }

      v76 = HIBYTE(v75);
      if (v8)
      {
        if (v76)
        {
          if (v76 == 255)
          {
            *v7 = v75;
            LOBYTE(v75) = -1;
          }

          else
          {
            v77 = (*v7 | (*v8 << 16)) * (v76 ^ 0xFF);
            v78 = ((v77 + 65537 + ((v77 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v77 + 1 + BYTE1(v77)) >> 8)) + (v75 & 0xFF0000FF);
            *v7 = v78;
            v75 = HIBYTE(v78);
          }

          *v8 = v75;
        }
      }

      else if (v76)
      {
        if (v76 != 255)
        {
          v75 += ((v76 ^ 0xFF) * *v7 + (((v76 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
        }

        *v7 = v75;
      }

      v51 += 2;
      ++v7;
      v8 += v11;
      if (!--v50)
      {
        goto LABEL_97;
      }
    }

    v58 = (v54 + (v52 >> 4));
    if (v18 < v58)
    {
      v58 = v18;
    }

    if (v58 < v16)
    {
      v58 = v16;
    }

    v59 = *v58;
    if (v22)
    {
      v60 = v54 + v21;
      if (v18 >= v54 + v21)
      {
        v61 = (v54 + v21);
      }

      else
      {
        v61 = v18;
      }

      if (v61 < v16)
      {
        v61 = v16;
      }

      v62 = *v61;
      v63 = (v60 + (v52 >> 4));
      if (v18 < v63)
      {
        v63 = v18;
      }

      if (v63 < v16)
      {
        v63 = v16;
      }

      v64 = BLEND8_21892[v22];
      v56 = v56 - ((v64 & v56) >> v22) + ((v64 & v62) >> v22);
      v59 = v59 - ((v64 & v59) >> v22) + ((v64 & *v63) >> v22);
    }

    v65 = BLEND8_21892[*v51 & 0xF];
    v66 = v56 - ((v65 & v56) >> v57);
    v67 = (v65 & v59) >> v57;
LABEL_83:
    v56 = v66 + v67;
    goto LABEL_84;
  }

  v79 = (v12 + 16 * a3);
  v80 = v17 - 4;
  v81 = v9 ^ 0xFF;
  v83 = a5;
  do
  {
    v84 = *(result + 32) + (v15 >> v14) * v13;
    if (v120 == 1)
    {
      if (a5 >= 1)
      {
        v85 = v79;
        v86 = v83;
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = (v84 + v87);
          if (v80 < v84 + v87)
          {
            v88 = v80;
          }

          if (v88 < *(result + 32))
          {
            v88 = *(result + 32);
          }

          v89 = __ROL4__(*v88, v10);
          v90 = v89 | v6;
          v91 = (((v89 >> 23) & 0x1FE) + BYTE1(v89) + (((v89 >> 8) & 0xFF00) >> 6) + (((v89 >> 8) & 0xFF00) >> 8)) >> 3;
          v92 = v91 | (v90 << 24);
          v93 = (v91 & 0xFF00FFFF | (v90 << 16)) * v81;
          v94 = v92 - ((v93 + 65537 + ((v93 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v93 + 1 + BYTE1(v93)) >> 8));
          if (v9 == 255)
          {
            v94 = v92;
          }

          *v7 = v94;
          if (v8)
          {
            *v8 = HIBYTE(v94);
          }

          ++v7;
          v8 += v11;
          --v86;
        }

        while (v86);
      }
    }

    else
    {
      v95 = v79;
      v96 = v83;
      if (a5 >= 1)
      {
        do
        {
          v97 = *v95;
          v95 += 2;
          v98 = (v84 + v97);
          if (v80 < v84 + v97)
          {
            v98 = v80;
          }

          if (v98 < *(result + 32))
          {
            v98 = *(result + 32);
          }

          v99 = __ROL4__(*v98, v10);
          v100 = v99 | v6;
          v101 = (((v99 >> 23) & 0x1FE) + BYTE1(v99) + (((v99 >> 8) & 0xFF00) >> 6) + (((v99 >> 8) & 0xFF00) >> 8)) >> 3;
          v102 = v101 | (v100 << 24);
          v103 = (v101 & 0xFF00FFFF | (v100 << 16)) * v81;
          v104 = v102 - ((v103 + 65537 + ((v103 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v103 + 1 + BYTE1(v103)) >> 8));
          if (v9 == 255)
          {
            v104 = v102;
          }

          v105 = HIBYTE(v104);
          if (v8)
          {
            if (v105)
            {
              if (v105 == 255)
              {
                *v7 = v104;
                *v8 = -1;
              }

              else
              {
                v106 = (*v7 | (*v8 << 16)) * (v105 ^ 0xFF);
                v107 = ((v106 + 65537 + ((v106 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v106 + 1 + BYTE1(v106)) >> 8)) + (v104 & 0xFF0000FF);
                *v7 = v107;
                *v8 = HIBYTE(v107);
              }
            }
          }

          else if (v105)
          {
            if (v105 != 255)
            {
              v104 += ((v105 ^ 0xFF) * *v7 + (((v105 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
            }

            *v7 = v104;
          }

          ++v7;
          v8 += v11;
          --v96;
        }

        while (v96);
      }
    }

    v7 += v119;
    v8 += v121;
    v15 += v117;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W8_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v120 = *(a2 + 5) - a5;
  }

  else
  {
    v120 = 0;
  }

  v9 = *(a2 + 8);
  v10 = a2[1];
  v119 = *a2;
  v118 = *(a2 + 3) - a5;
  v11 = v8 != 0;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v117 = *(a2 + 11);
  v15 = *(a2 + 7) + v117 * a4;
  v16 = *(result + 32);
  v17 = v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  if (*(result + 176))
  {
    v112 = *(a2 + 15);
    v113 = *(a2 + 13);
    v110 = v14 - 4;
    v111 = ~(-1 << v14);
    v18 = (v17 - 4);
    v19 = v9 ^ 0xFF;
    v115 = *(a2 + 17);
    v108 = a5;
    v109 = -v13;
    v107 = v12 + 16 * a3 + 8;
    v114 = *(a2 + 9);
    while (1)
    {
      if (((v112 - v15) | (v15 - v113)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v15 & v111) >> v110) & 0xF;
        v21 = (v20 - 7) >= 9 ? v109 : v13;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(result + 32) + (v15 >> v14) * v13;
      if (v119 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v107;
        v24 = v108;
        while (1)
        {
          v27 = *(v25 - 1);
          v26 = *v25;
          v28 = v23 + v27;
          if (v18 >= v23 + v27)
          {
            v29 = (v23 + v27);
          }

          else
          {
            v29 = v18;
          }

          if (v29 < v16)
          {
            v29 = v16;
          }

          v30 = bswap32(*v29);
          v31 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v42 = (v28 + v21);
            if (v18 < v28 + v21)
            {
              v42 = v18;
            }

            if (v42 < v16)
            {
              v42 = v16;
            }

            v43 = BLEND8_21892[v22];
            v40 = v30 - ((v43 & v30) >> v22);
            v41 = (bswap32(*v42) & v43) >> v22;
            goto LABEL_46;
          }

LABEL_47:
          v44 = __ROL4__(v30, v10);
          v45 = v44 | v6;
          v46 = (((v44 >> 23) & 0x1FE) + BYTE1(v44) + (((v44 >> 8) & 0xFF00) >> 6) + (((v44 >> 8) & 0xFF00) >> 8)) >> 3;
          v47 = v46 | (v45 << 24);
          v48 = (v46 & 0xFF00FFFF | (v45 << 16)) * v19;
          v49 = v47 - ((v48 + 65537 + ((v48 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v48 + 1 + BYTE1(v48)) >> 8));
          if (v9 == 255)
          {
            v49 = v47;
          }

          *v7 = v49;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v25 += 2;
          ++v7;
          v8 += v11;
          if (!--v24)
          {
            goto LABEL_97;
          }
        }

        v32 = (v28 + (v26 >> 4));
        if (v18 < v32)
        {
          v32 = v18;
        }

        if (v32 < v16)
        {
          v32 = v16;
        }

        v33 = bswap32(*v32);
        if (v22)
        {
          v34 = (v28 + v21);
          if (v18 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v18;
          }

          if (v35 < v16)
          {
            v35 = v16;
          }

          v36 = bswap32(*v35);
          v37 = (v34 + (v26 >> 4));
          if (v18 < v37)
          {
            v37 = v18;
          }

          if (v37 < v16)
          {
            v37 = v16;
          }

          v38 = BLEND8_21892[v22];
          v30 = v30 - ((v38 & v30) >> v22) + ((v38 & v36) >> v22);
          v33 = v33 - ((v38 & v33) >> v22) + ((bswap32(*v37) & v38) >> v22);
        }

        v39 = BLEND8_21892[*v25 & 0xF];
        v40 = v30 - ((v39 & v30) >> v31);
        v41 = (v39 & v33) >> v31;
LABEL_46:
        v30 = v40 + v41;
        goto LABEL_47;
      }

LABEL_97:
      v7 += v118;
      v8 += v120;
      v15 += v117;
      --a6;
      LOBYTE(v14) = v114;
      v13 = v115;
      if (!a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_97;
    }

    v51 = v107;
    v50 = v108;
    while (1)
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = v23 + v53;
      if (v18 >= v23 + v53)
      {
        v55 = (v23 + v53);
      }

      else
      {
        v55 = v18;
      }

      if (v55 < v16)
      {
        v55 = v16;
      }

      v56 = bswap32(*v55);
      v57 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v67 = (v54 + v21);
        if (v18 < v54 + v21)
        {
          v67 = v18;
        }

        if (v67 < v16)
        {
          v67 = v16;
        }

        v68 = BLEND8_21892[v22];
        v65 = v56 - ((v68 & v56) >> v22);
        v66 = (bswap32(*v67) & v68) >> v22;
        goto LABEL_83;
      }

LABEL_84:
      v69 = __ROL4__(v56, v10);
      v70 = v69 | v6;
      v71 = (((v69 >> 23) & 0x1FE) + BYTE1(v69) + (((v69 >> 8) & 0xFF00) >> 6) + (((v69 >> 8) & 0xFF00) >> 8)) >> 3;
      v72 = v71 | (v70 << 24);
      v73 = (v71 & 0xFF00FFFF | (v70 << 16)) * v19;
      v74 = v72 - ((v73 + 65537 + ((v73 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v73 + 1 + BYTE1(v73)) >> 8));
      if (v9 == 255)
      {
        v74 = v72;
      }

      v75 = HIBYTE(v74);
      if (v8)
      {
        if (v75)
        {
          if (v75 == 255)
          {
            *v7 = v74;
            LOBYTE(v74) = -1;
          }

          else
          {
            v76 = (*v7 | (*v8 << 16)) * (v75 ^ 0xFF);
            v77 = ((v76 + 65537 + ((v76 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v76 + 1 + BYTE1(v76)) >> 8)) + (v74 & 0xFF0000FF);
            *v7 = v77;
            v74 = HIBYTE(v77);
          }

          *v8 = v74;
        }
      }

      else if (v75)
      {
        if (v75 != 255)
        {
          v74 += ((v75 ^ 0xFF) * *v7 + (((v75 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
        }

        *v7 = v74;
      }

      v51 += 2;
      ++v7;
      v8 += v11;
      if (!--v50)
      {
        goto LABEL_97;
      }
    }

    v58 = (v54 + (v52 >> 4));
    if (v18 < v58)
    {
      v58 = v18;
    }

    if (v58 < v16)
    {
      v58 = v16;
    }

    v59 = bswap32(*v58);
    if (v22)
    {
      if (v18 >= v54 + v21)
      {
        v60 = (v54 + v21);
      }

      else
      {
        v60 = v18;
      }

      if (v60 < v16)
      {
        v60 = v16;
      }

      v61 = bswap32(*v60);
      v62 = (v54 + v21 + (v52 >> 4));
      if (v18 < v62)
      {
        v62 = v18;
      }

      if (v62 < v16)
      {
        v62 = v16;
      }

      v63 = BLEND8_21892[v22];
      v56 = v56 - ((v63 & v56) >> v22) + ((v63 & v61) >> v22);
      v59 = v59 - ((v63 & v59) >> v22) + ((bswap32(*v62) & v63) >> v22);
    }

    v64 = BLEND8_21892[*v51 & 0xF];
    v65 = v56 - ((v64 & v56) >> v57);
    v66 = (v64 & v59) >> v57;
LABEL_83:
    v56 = v65 + v66;
    goto LABEL_84;
  }

  v78 = (v12 + 16 * a3);
  v79 = (v17 - 4);
  v80 = v9 ^ 0xFF;
  v82 = a5;
  do
  {
    v83 = *(result + 32) + (v15 >> v14) * v13;
    if (v119 == 1)
    {
      if (a5 >= 1)
      {
        v84 = v78;
        v85 = v82;
        do
        {
          v86 = *v84;
          v84 += 2;
          v87 = (v83 + v86);
          if (v79 < v83 + v86)
          {
            v87 = v79;
          }

          if (v87 < *(result + 32))
          {
            v87 = *(result + 32);
          }

          v88 = __ROL4__(bswap32(*v87), v10);
          v89 = v88 | v6;
          v90 = (((v88 >> 23) & 0x1FE) + BYTE1(v88) + (((v88 >> 8) & 0xFF00) >> 6) + (((v88 >> 8) & 0xFF00) >> 8)) >> 3;
          v91 = v90 | (v89 << 24);
          v92 = (v90 & 0xFF00FFFF | (v89 << 16)) * v80;
          v93 = v91 - ((v92 + 65537 + ((v92 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v92 + 1 + BYTE1(v92)) >> 8));
          if (v9 == 255)
          {
            v93 = v91;
          }

          *v7 = v93;
          if (v8)
          {
            *v8 = HIBYTE(v93);
          }

          ++v7;
          v8 += v11;
          --v85;
        }

        while (v85);
      }
    }

    else
    {
      v94 = v78;
      v95 = v82;
      if (a5 >= 1)
      {
        do
        {
          v96 = *v94;
          v94 += 2;
          v97 = (v83 + v96);
          if (v79 < v83 + v96)
          {
            v97 = v79;
          }

          if (v97 < *(result + 32))
          {
            v97 = *(result + 32);
          }

          v98 = __ROL4__(bswap32(*v97), v10);
          v99 = v98 | v6;
          v100 = (((v98 >> 23) & 0x1FE) + BYTE1(v98) + (((v98 >> 8) & 0xFF00) >> 6) + (((v98 >> 8) & 0xFF00) >> 8)) >> 3;
          v101 = v100 | (v99 << 24);
          v102 = (v100 & 0xFF00FFFF | (v99 << 16)) * v80;
          v103 = v101 - ((v102 + 65537 + ((v102 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v102 + 1 + BYTE1(v102)) >> 8));
          if (v9 == 255)
          {
            v103 = v101;
          }

          v104 = HIBYTE(v103);
          if (v8)
          {
            if (v104)
            {
              if (v104 == 255)
              {
                *v7 = v103;
                *v8 = -1;
              }

              else
              {
                v105 = (*v7 | (*v8 << 16)) * (v104 ^ 0xFF);
                v106 = ((v105 + 65537 + ((v105 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v105 + 1 + BYTE1(v105)) >> 8)) + (v103 & 0xFF0000FF);
                *v7 = v106;
                *v8 = HIBYTE(v106);
              }
            }
          }

          else if (v104)
          {
            if (v104 != 255)
            {
              v103 += ((v104 ^ 0xFF) * *v7 + (((v104 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
            }

            *v7 = v103;
          }

          ++v7;
          v8 += v11;
          --v95;
        }

        while (v95);
      }
    }

    v7 += v118;
    v8 += v120;
    v15 += v117;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W8_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v105 = *(a2 + 5) - a5;
  }

  else
  {
    v105 = 0;
  }

  v8 = *(a2 + 8);
  v104 = *a2;
  v103 = *(a2 + 3) - a5;
  v9 = v7 != 0;
  v10 = *(a2 + 17);
  v11 = *(a2 + 18);
  v12 = *(a2 + 9);
  v102 = *(a2 + 11);
  v13 = *(a2 + 7) + v102 * a4;
  v14 = *(result + 32);
  v15 = &v14[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  if (*(result + 176))
  {
    v100 = *(a2 + 13);
    v101 = *(a2 + 9);
    v98 = ~(-1 << v12);
    v99 = *(a2 + 15);
    v97 = v12 - 4;
    v16 = v15 - 3;
    v17 = v8 ^ 0xFF;
    v96 = v11 + 16 * a3 + 8;
    while (1)
    {
      if (((v99 - v13) | (v13 - v100)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v13 & v98) >> v97) & 0xF;
        v19 = (v18 - 7) >= 9 ? -v10 : v10;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(result + 32) + (v13 >> v12) * v10;
      if (v104 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v96;
        v23 = a5;
        while (1)
        {
          v25 = *(v22 - 1);
          v24 = *v22;
          v26 = v21 + v25;
          if (v16 >= v21 + v25)
          {
            v27 = (v21 + v25);
          }

          else
          {
            v27 = v16;
          }

          if (v27 < v14)
          {
            v27 = v14;
          }

          v28 = (*v27 << 24) | (v27[1] << 16) | (v27[2] << 8);
          v29 = v24 & 0xF;
          if ((v24 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v40 = (v26 + v19);
            if (v16 < v26 + v19)
            {
              v40 = v16;
            }

            if (v40 < v14)
            {
              v40 = v14;
            }

            v41 = BLEND8_21892[v20];
            v38 = v28 - ((v41 & v28) >> v20);
            v39 = (((*v40 << 24) | (v40[1] << 16) | (v40[2] << 8)) & v41) >> v20;
            goto LABEL_43;
          }

LABEL_44:
          v42 = (((v28 >> 23) & 0x1FE) + BYTE1(v28) + (((v28 >> 8) & 0xFF00) >> 6) + (((v28 >> 8) & 0xFF00) >> 8)) >> 3;
          v43 = v42 | 0xFF000000;
          v44 = (v42 | 0xFF0000) * v17 + 65537 + ((((v42 | 0xFF0000) * v17) >> 8) & 0xFF00FF);
          v45 = v43 - (v44 & 0xFF000000 | BYTE1(v44));
          if (v8 == 255)
          {
            v45 = v43;
          }

          *v6 = v45;
          if (v7)
          {
            *v7 = HIBYTE(v45);
          }

          v22 += 2;
          ++v6;
          v7 += v9;
          if (!--v23)
          {
            goto LABEL_94;
          }
        }

        v30 = (v26 + (v24 >> 4));
        if (v16 < v30)
        {
          v30 = v16;
        }

        if (v30 < v14)
        {
          v30 = v14;
        }

        v31 = (*v30 << 24) | (v30[1] << 16) | (v30[2] << 8);
        if (v20)
        {
          v32 = (v26 + v19);
          if (v16 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v16;
          }

          if (v33 < v14)
          {
            v33 = v14;
          }

          v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
          v35 = &v32[v24 >> 4];
          if (v16 < v35)
          {
            v35 = v16;
          }

          if (v35 < v14)
          {
            v35 = v14;
          }

          v36 = BLEND8_21892[v20];
          v28 = v28 - ((v36 & v28) >> v20) + ((v36 & v34) >> v20);
          v31 = v31 - ((v36 & v31) >> v20) + ((((*v35 << 24) | (v35[1] << 16) | (v35[2] << 8)) & v36) >> v20);
        }

        v37 = BLEND8_21892[*v22 & 0xF];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_43:
        v28 = v38 + v39;
        goto LABEL_44;
      }

LABEL_94:
      v6 += v103;
      v7 += v105;
      LOBYTE(v12) = v101;
      v13 += v102;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_94;
    }

    v47 = v96;
    v46 = a5;
    while (1)
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v50 = v21 + v49;
      if (v16 >= v21 + v49)
      {
        v51 = (v21 + v49);
      }

      else
      {
        v51 = v16;
      }

      if (v51 < v14)
      {
        v51 = v14;
      }

      v52 = (*v51 << 24) | (v51[1] << 16) | (v51[2] << 8);
      v53 = v48 & 0xF;
      if ((v48 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v64 = (v50 + v19);
        if (v16 < v50 + v19)
        {
          v64 = v16;
        }

        if (v64 < v14)
        {
          v64 = v14;
        }

        v65 = BLEND8_21892[v20];
        v62 = v52 - ((v65 & v52) >> v20);
        v63 = (((*v64 << 24) | (v64[1] << 16) | (v64[2] << 8)) & v65) >> v20;
        goto LABEL_80;
      }

LABEL_81:
      v66 = (((v52 >> 23) & 0x1FE) + BYTE1(v52) + (((v52 >> 8) & 0xFF00) >> 6) + (((v52 >> 8) & 0xFF00) >> 8)) >> 3;
      v67 = v66 | 0xFF000000;
      v68 = (v66 | 0xFF0000) * v17 + 65537 + ((((v66 | 0xFF0000) * v17) >> 8) & 0xFF00FF);
      v69 = v67 - (v68 & 0xFF000000 | BYTE1(v68));
      if (v8 == 255)
      {
        v69 = v67;
      }

      v70 = HIBYTE(v69);
      if (v7)
      {
        if (v70)
        {
          if (v70 == 255)
          {
            *v6 = v69;
            LOBYTE(v69) = -1;
          }

          else
          {
            v71 = (*v6 | (*v7 << 16)) * (v70 ^ 0xFF);
            v72 = ((v71 + 65537 + ((v71 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v71 + 1 + BYTE1(v71)) >> 8)) + (v69 & 0xFF0000FF);
            *v6 = v72;
            v69 = HIBYTE(v72);
          }

          *v7 = v69;
        }
      }

      else if (v70)
      {
        if (v70 != 255)
        {
          v69 += ((v70 ^ 0xFF) * *v6 + (((v70 ^ 0xFF) * *v6) >> 8) + 1) >> 8;
        }

        *v6 = v69;
      }

      v47 += 2;
      ++v6;
      v7 += v9;
      if (!--v46)
      {
        goto LABEL_94;
      }
    }

    v54 = (v50 + (v48 >> 4));
    if (v16 < v54)
    {
      v54 = v16;
    }

    if (v54 < v14)
    {
      v54 = v14;
    }

    v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
    if (v20)
    {
      v56 = (v50 + v19);
      if (v16 >= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v16;
      }

      if (v57 < v14)
      {
        v57 = v14;
      }

      v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
      v59 = &v56[v48 >> 4];
      if (v16 < v59)
      {
        v59 = v16;
      }

      if (v59 < v14)
      {
        v59 = v14;
      }

      v60 = BLEND8_21892[v20];
      v52 = v52 - ((v60 & v52) >> v20) + ((v60 & v58) >> v20);
      v55 = v55 - ((v60 & v55) >> v20) + ((((*v59 << 24) | (v59[1] << 16) | (v59[2] << 8)) & v60) >> v20);
    }

    v61 = BLEND8_21892[*v47 & 0xF];
    v62 = v52 - ((v61 & v52) >> v53);
    v63 = (v61 & v55) >> v53;
LABEL_80:
    v52 = v62 + v63;
    goto LABEL_81;
  }

  v73 = v15 - 3;
  v74 = v8 ^ 0xFF;
  v75 = (v11 + 16 * a3);
  do
  {
    v76 = *(result + 32) + (v13 >> v12) * v10;
    if (v104 == 1)
    {
      if (a5 >= 1)
      {
        v77 = v75;
        v78 = a5;
        do
        {
          v79 = *v77;
          v77 += 2;
          v80 = (v76 + v79);
          if (v73 < v76 + v79)
          {
            v80 = v73;
          }

          if (v80 < *(result + 32))
          {
            v80 = *(result + 32);
          }

          v81 = (v80[2] + 2 * *v80 + 4 * v80[1] + v80[1]) >> 3;
          v82 = v81 | 0xFF000000;
          v83 = (v81 | 0xFF0000) * v74 + 65537 + ((((v81 | 0xFF0000) * v74) >> 8) & 0xFF00FF);
          v84 = v82 - (v83 & 0xFF000000 | BYTE1(v83));
          if (v8 == 255)
          {
            v84 = v82;
          }

          *v6 = v84;
          if (v7)
          {
            *v7 = HIBYTE(v84);
          }

          ++v6;
          v7 += v9;
          --v78;
        }

        while (v78);
      }
    }

    else
    {
      v85 = v75;
      v86 = a5;
      if (a5 >= 1)
      {
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = (v76 + v87);
          if (v73 < v76 + v87)
          {
            v88 = v73;
          }

          if (v88 < *(result + 32))
          {
            v88 = *(result + 32);
          }

          v89 = (v88[2] + 2 * *v88 + 4 * v88[1] + v88[1]) >> 3;
          v90 = v89 | 0xFF000000;
          v91 = (v89 | 0xFF0000) * v74 + 65537 + ((((v89 | 0xFF0000) * v74) >> 8) & 0xFF00FF);
          v92 = v90 - (v91 & 0xFF000000 | BYTE1(v91));
          if (v8 == 255)
          {
            v92 = v90;
          }

          v93 = HIBYTE(v92);
          if (v7)
          {
            if (v93)
            {
              if (v93 == 255)
              {
                *v6 = v92;
                *v7 = -1;
              }

              else
              {
                v94 = (*v6 | (*v7 << 16)) * (v93 ^ 0xFF);
                v95 = ((v94 + 65537 + ((v94 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v94 + 1 + BYTE1(v94)) >> 8)) + (v92 & 0xFF0000FF);
                *v6 = v95;
                *v7 = HIBYTE(v95);
              }
            }
          }

          else if (v93)
          {
            if (v93 != 255)
            {
              v92 += ((v93 ^ 0xFF) * *v6 + (((v93 ^ 0xFF) * *v6) >> 8) + 1) >> 8;
            }

            *v6 = v92;
          }

          ++v6;
          v7 += v9;
          --v86;
        }

        while (v86);
      }
    }

    v6 += v103;
    v7 += v105;
    v13 += v102;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W8_image_mark_W8(uint64_t result, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v99 = *(a2 + 5) - a5;
  }

  else
  {
    v99 = 0;
  }

  v8 = *(a2 + 8);
  v98 = *a2;
  v97 = *(a2 + 3) - a5;
  v9 = v7 != 0;
  v10 = *(a2 + 17);
  v11 = *(a2 + 18);
  v12 = *(a2 + 9);
  v96 = *(a2 + 11);
  v13 = *(a2 + 7) + v96 * a4;
  v14 = *(result + 32);
  v15 = &v14[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  if (*(result + 176))
  {
    v94 = *(a2 + 15);
    v95 = *(a2 + 13);
    v16 = v15 - 4;
    v17 = v8 ^ 0xFF;
    v93 = v11 + 16 * a3 + 8;
    while (1)
    {
      if (((v94 - v13) | (v13 - v95)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v13 & ~(-1 << v12)) >> (v12 - 4)) & 0xF;
        v19 = v18 - 7 >= 9 ? -v10 : v10;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(result + 32) + (v13 >> v12) * v10;
      if (v98 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v93;
        v23 = a5;
        while (1)
        {
          v25 = *(v22 - 1);
          v24 = *v22;
          v26 = v21 + v25;
          if (v16 >= v21 + v25)
          {
            v27 = (v21 + v25);
          }

          else
          {
            v27 = v16;
          }

          if (v27 < v14)
          {
            v27 = v14;
          }

          v28 = *v27;
          v29 = v24 & 0xF;
          if ((v24 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v40 = (v26 + v19);
            if (v16 < v26 + v19)
            {
              v40 = v16;
            }

            if (v40 < v14)
            {
              v40 = v14;
            }

            v41 = BLEND8_21892[v20];
            v38 = v28 - ((v41 & v28) >> v20);
            v39 = (v41 & *v40) >> v20;
            goto LABEL_43;
          }

LABEL_44:
          v42 = v28 | 0xFF000000;
          v43 = (v28 | 0xFF0000) * v17 + 65537 + ((((v28 | 0xFF0000u) * v17) >> 8) & 0xFF00FF);
          v44 = (v28 | 0xFF000000) - (v43 & 0xFF000000 | BYTE1(v43));
          if (v8 != 255)
          {
            v42 = v44;
          }

          *v6 = v42;
          if (v7)
          {
            *v7 = HIBYTE(v42);
          }

          v22 += 2;
          ++v6;
          v7 += v9;
          if (!--v23)
          {
            goto LABEL_95;
          }
        }

        v30 = (v26 + (v24 >> 4));
        if (v16 < v30)
        {
          v30 = v16;
        }

        if (v30 < v14)
        {
          v30 = v14;
        }

        v31 = *v30;
        if (v20)
        {
          v32 = (v26 + v19);
          if (v16 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v16;
          }

          if (v33 < v14)
          {
            v33 = v14;
          }

          v34 = *v33;
          v35 = &v32[v24 >> 4];
          if (v16 < v35)
          {
            v35 = v16;
          }

          if (v35 < v14)
          {
            v35 = v14;
          }

          v36 = BLEND8_21892[v20];
          v28 = v28 - ((v36 & v28) >> v20) + ((v36 & v34) >> v20);
          v31 = v31 - ((v36 & v31) >> v20) + ((v36 & *v35) >> v20);
        }

        v37 = BLEND8_21892[*v22 & 0xF];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_43:
        v28 = v38 + v39;
        goto LABEL_44;
      }

LABEL_95:
      v6 += v97;
      v7 += v99;
      v13 += v96;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_95;
    }

    v46 = v93;
    v45 = a5;
    while (1)
    {
      v48 = *(v46 - 1);
      v47 = *v46;
      v49 = v21 + v48;
      if (v16 >= v21 + v48)
      {
        v50 = (v21 + v48);
      }

      else
      {
        v50 = v16;
      }

      if (v50 < v14)
      {
        v50 = v14;
      }

      v51 = *v50;
      v52 = v47 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v63 = (v49 + v19);
        if (v16 < v49 + v19)
        {
          v63 = v16;
        }

        if (v63 < v14)
        {
          v63 = v14;
        }

        v64 = BLEND8_21892[v20];
        v61 = v51 - ((v64 & v51) >> v20);
        v62 = (v64 & *v63) >> v20;
        goto LABEL_80;
      }

LABEL_81:
      v65 = (v51 | 0xFF0000) * v17 + 65537 + ((((v51 | 0xFF0000u) * v17) >> 8) & 0xFF00FF);
      v66 = (v51 | 0xFF000000) - (v65 & 0xFF000000 | BYTE1(v65));
      if (v8 == 255)
      {
        v67 = v51 | 0xFF000000;
      }

      else
      {
        v67 = v66;
      }

      v68 = HIBYTE(v67);
      if (v7)
      {
        if (v68)
        {
          if (v68 == 255)
          {
            *v6 = v67;
          }

          else
          {
            v69 = (*v6 | (*v7 << 16)) * (v68 ^ 0xFF);
            *v6 = ((v69 + 1 + BYTE1(v69)) >> 8) + v67;
            v68 = (((v69 + 65537 + ((v69 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v69 + 1 + BYTE1(v69)) >> 8)) + (v67 & 0xFF0000FF)) >> 24;
          }

          *v7 = v68;
        }
      }

      else if (v68)
      {
        if (v68 == 255)
        {
          *v6 = v67;
        }

        else
        {
          *v6 = v67 + (((v68 ^ 0xFF) * *v6 + (((v68 ^ 0xFF) * *v6) >> 8) + 1) >> 8);
        }
      }

      v46 += 2;
      ++v6;
      v7 += v9;
      if (!--v45)
      {
        goto LABEL_95;
      }
    }

    v53 = (v49 + (v47 >> 4));
    if (v16 < v53)
    {
      v53 = v16;
    }

    if (v53 < v14)
    {
      v53 = v14;
    }

    v54 = *v53;
    if (v20)
    {
      v55 = (v49 + v19);
      if (v16 >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = v16;
      }

      if (v56 < v14)
      {
        v56 = v14;
      }

      v57 = *v56;
      v58 = &v55[v47 >> 4];
      if (v16 < v58)
      {
        v58 = v16;
      }

      if (v58 < v14)
      {
        v58 = v14;
      }

      v59 = BLEND8_21892[v20];
      v51 = v51 - ((v59 & v51) >> v20) + ((v59 & v57) >> v20);
      v54 = v54 - ((v59 & v54) >> v20) + ((v59 & *v58) >> v20);
    }

    v60 = BLEND8_21892[*v46 & 0xF];
    v61 = v51 - ((v60 & v51) >> v52);
    v62 = (v60 & v54) >> v52;
LABEL_80:
    v51 = v61 + v62;
    goto LABEL_81;
  }

  v70 = v15 - 4;
  v71 = v8 ^ 0xFF;
  v72 = (v11 + 16 * a3);
  do
  {
    v73 = *(result + 32) + (v13 >> v12) * v10;
    if (v98 == 1)
    {
      if (a5 >= 1)
      {
        v74 = v72;
        v75 = a5;
        do
        {
          v76 = *v74;
          v74 += 2;
          v77 = (v73 + v76);
          if (v70 < v73 + v76)
          {
            v77 = v70;
          }

          if (v77 < *(result + 32))
          {
            v77 = *(result + 32);
          }

          v78 = *v77;
          v79 = v78 | 0xFF000000;
          v80 = (v78 | 0xFF0000) * v71 + 65537 + ((((v78 | 0xFF0000u) * v71) >> 8) & 0xFF00FF);
          v81 = v79 - (v80 & 0xFF000000 | BYTE1(v80));
          if (v8 == 255)
          {
            v81 = v79;
          }

          *v6 = v81;
          if (v7)
          {
            *v7 = HIBYTE(v81);
          }

          ++v6;
          v7 += v9;
          --v75;
        }

        while (v75);
      }
    }

    else
    {
      v82 = v72;
      v83 = a5;
      if (a5 >= 1)
      {
        do
        {
          v84 = *v82;
          v82 += 2;
          v85 = (v73 + v84);
          if (v70 < v73 + v84)
          {
            v85 = v70;
          }

          if (v85 < *(result + 32))
          {
            v85 = *(result + 32);
          }

          v86 = *v85;
          v87 = v86 | 0xFF000000;
          v88 = (v86 | 0xFF0000) * v71 + 65537 + ((((v86 | 0xFF0000u) * v71) >> 8) & 0xFF00FF);
          v89 = v87 - (v88 & 0xFF000000 | BYTE1(v88));
          if (v8 == 255)
          {
            v90 = v87;
          }

          else
          {
            v90 = v89;
          }

          v91 = HIBYTE(v90);
          if (v7)
          {
            if (v91)
            {
              if (v91 == 255)
              {
                *v6 = v90;
                *v7 = -1;
              }

              else
              {
                v92 = (*v6 | (*v7 << 16)) * (v91 ^ 0xFF);
                *v6 = ((v92 + 1 + BYTE1(v92)) >> 8) + v90;
                *v7 = (((v92 + 65537 + ((v92 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v92 + 1 + BYTE1(v92)) >> 8)) + (v90 & 0xFF0000FF)) >> 24;
              }
            }
          }

          else if (v91)
          {
            if (v91 == 255)
            {
              *v6 = v90;
            }

            else
            {
              *v6 = v90 + (((v91 ^ 0xFF) * *v6 + (((v91 ^ 0xFF) * *v6) >> 8) + 1) >> 8);
            }
          }

          ++v6;
          v7 += v9;
          --v83;
        }

        while (v83);
      }
    }

    v6 += v97;
    v7 += v99;
    v13 += v96;
    --a6;
  }

  while (a6);
  return result;
}

_DWORD *CGFontIndexSetCreate()
{
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
  *result = 1;
  return result;
}

_DWORD *CGFontIndexSetCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
  *v2 = 1;
  for (i = 2; i != 18; i += 2)
  {
    if (*(a1 + i * 4))
    {
      v4 = malloc_type_calloc(1uLL, 0x400uLL, 0x52F5CFB6uLL);
      *&v2[i] = v4;
      memmove(v4, *(a1 + i * 4), 0x400uLL);
    }
  }

  return v2;
}

atomic_uint *CGFontIndexSetRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGFontIndexSetRelease(void **a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    for (i = 1; i != 9; ++i)
    {
      free(a1[i]);
    }

    free(a1[9]);

    free(a1);
  }
}

char *CGFontIndexSetAddIndex(char *result, unint64_t a2)
{
  if (result && a2 != 0xFFFF)
  {
    v3 = a2 >> 13;
    v4 = result + 8;
    result = *&result[8 * v3 + 8];
    if (!result)
    {
      result = malloc_type_calloc(1uLL, 0x400uLL, 0x96486F4CuLL);
      v5 = 0;
      atomic_compare_exchange_strong_explicit(&v4[8 * v3], &v5, result, memory_order_relaxed, memory_order_relaxed);
      if (v5)
      {
        free(result);
        result = *&v4[8 * v3];
      }
    }

    result[(a2 >> 3) & 0x3FF] |= 1 << (a2 & 7);
  }

  return result;
}

char *CGFontIndexSetAddIndexes(char *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a3;
      if (a3)
      {
        v5 = result;
        do
        {
          v6 = *v3++;
          result = CGFontIndexSetAddIndex(v5, v6);
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

char *CGFontIndexSetAddIndexRange(char *result, __int16 a2, unsigned int a3)
{
  if (result && a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      result = CGFontIndexSetAddIndex(v4, (v5++ + a2));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t CGFontIndexSetContainsIndex(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8 * (a2 >> 13) + 8);
  if (v2)
  {
    return (*(v2 + ((a2 >> 3) & 0x3FF)) >> (a2 & 7)) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t CGFontIndexSetGetIndexRange(uint64_t a1, unint64_t a2, _WORD *a3)
{
  result = 0;
  if (a1 && a2 != 0xFFFF)
  {
    v5 = a1 + 8;
    while (1)
    {
      v6 = *(v5 + 8 * (a2 >> 13));
      if (v6)
      {
        if ((*(v6 + ((a2 >> 3) & 0x3FF)) >> (a2 & 7)))
        {
          break;
        }
      }

      a2 = (a2 + 1);
      if (a2 == 0xFFFF)
      {
        return 0;
      }
    }

    if (a3)
    {
      *a3 = a2;
    }

    v7 = a2;
    v8 = *(v5 + 8 * (a2 >> 13));
    if (v8)
    {
      v9 = a2;
      do
      {
        if (((*(v8 + ((v9 >> 3) & 0x3FF)) >> (v9 & 7)) & 1) == 0)
        {
          break;
        }

        LOWORD(a2) = a2 + 1;
        v9 = a2;
        v8 = *(v5 + 8 * (a2 >> 13));
      }

      while (v8);
    }

    return a2 - v7;
  }

  return result;
}

uint64_t CGFontIndexSetGetCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = 0;
    v3 = v1 + 8;
    v4.i64[0] = 0x5555555555555555;
    v4.i64[1] = 0x5555555555555555;
    v5.i64[0] = 0x3333333333333333;
    v5.i64[1] = 0x3333333333333333;
    v6.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v6.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v7.i64[0] = 0x3F0000003FLL;
    v7.i64[1] = 0x3F0000003FLL;
    do
    {
      v8 = *(v3 + 8 * v2);
      if (v8)
      {
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
        do
        {
          v12 = vsubq_s32(*(v8 + v9), vandq_s8(vshrq_n_u32(*(v8 + v9), 1uLL), v4));
          v13 = vaddq_s32(vandq_s8(vshrq_n_u32(v12, 2uLL), v5), vandq_s8(v12, v5));
          v14 = vandq_s8(vsraq_n_u32(v13, v13, 4uLL), v6);
          v15 = vsraq_n_u32(v14, v14, 8uLL);
          v16 = vandq_s8(vsraq_n_u32(v15, v15, 0x10uLL), v7);
          v11 = vaddw_high_u32(v11, v16);
          v10 = vaddw_u32(v10, *v16.i8);
          v9 += 16;
        }

        while (v9 != 1024);
        v8 = vaddvq_s64(vaddq_s64(v10, v11));
      }

      result += v8;
      ++v2;
    }

    while (v2 != 8);
  }

  return result;
}

uint64_t CGFontIndexSetGetIndexes(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    for (i = 0; i != 0xFFFF; ++i)
    {
      v3 = *(result + 8 + ((i >> 10) & 0x3FFFFFFFFFFFF8));
      if (v3)
      {
        if ((*(v3 + ((i >> 3) & 0x3FF)) >> (i & 7)))
        {
          *a2++ = i;
        }
      }
    }
  }

  return result;
}

unint64_t CGFontIndexSetGetIndexVectorSize(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = v1 ^ 7;
    v3 = *(a1 + 8 + 8 * (v1 ^ 7));
    if (v3)
    {
      break;
    }

    if (++v1 == 8)
    {
      return 0;
    }
  }

  v4 = 0;
  while (((*(v3 + ((v4 ^ 0x1FFFuLL) >> 3)) >> (~v4 & 7)) & 1) == 0)
  {
    if (++v4 == 0x2000)
    {
      return 0;
    }
  }

  return ((((v4 ^ 0x1FFF) + (v2 << 13)) & 0xFFE0) + 32) >> 3;
}

void CGFontIndexSetGetIndexVector(uint64_t a1, void *a2)
{
  IndexVectorSize = CGFontIndexSetGetIndexVectorSize(a1);
  bzero(a2, IndexVectorSize);
  for (i = 0; i != 0xFFFF; ++i)
  {
    v6 = *(a1 + 8 + ((i >> 10) & 0x3FFFFFFFFFFFF8));
    if (v6 && ((*(v6 + ((i >> 3) & 0x3FF)) >> (i & 7)) & 1) != 0)
    {
      if (i >> 5 >= IndexVectorSize >> 2)
      {
        _CGHandleAssert("CGFontIndexSetGetIndexVector", 284, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontIndexSet.c", "k / 32 < size / 4", "k: %zu  size: %zu", i, IndexVectorSize);
      }

      *(a2 + (i >> 5)) |= 1 << ~i;
    }
  }
}

uint64_t CGFontIndexSetGetName(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 72))
  {
    v2 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    CC_MD5_Init(v2);
    v9 = time(0);
    if (v2)
    {
      CC_MD5_Update(v2, &v9, 8u);
    }

    for (i = 0; i != 8; ++i)
    {
      while (1)
      {
        v4 = *(a1 + 8 + 8 * i);
        if (!v4)
        {
          break;
        }

        if (v2)
        {
          CC_MD5_Update(v2, v4, 0x400u);
          if (++i == 8)
          {
            goto LABEL_14;
          }
        }

        else if (++i == 8)
        {
          goto LABEL_15;
        }
      }
    }

    if (!v2)
    {
      goto LABEL_15;
    }

LABEL_14:
    CC_MD5_Final(md, v2);
LABEL_15:
    free(v2);
    v5 = malloc_type_malloc(7uLL, 0x5040A8E1uLL);
    for (j = 0; j != 6; ++j)
    {
      v5[j] = md[j] % 0x1Au + 65;
    }

    v7 = 0;
    v5[6] = 0;
    atomic_compare_exchange_strong_explicit((a1 + 72), &v7, v5, memory_order_relaxed, memory_order_relaxed);
    if (v7)
    {
      free(v5);
    }
  }

  return *(a1 + 72);
}

_BYTE *CGPDFCryptFilterCreateStandard(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409B6930F5uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    *v2 = a1;
    v2[12] = 0;
    *(v2 + 2) = 1;
    *(v2 + 2) = 0;
  }

  return v2;
}

uint64_t get_object_key(uint64_t a1, int a2, unint64_t a3, unsigned __int8 *a4, size_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  __n = 0;
  result = CGPDFSecurityManagerGetDecryptionKey(*a1, __src, &__n);
  if (result)
  {
    v11 = *(a1 + 16);
    v12 = __n;
    if (v11)
    {
      v13 = v11 == __n;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = *(a1 + 8);
      if (v14 == 3)
      {
        memcpy(a4, __src, __n);
      }

      else
      {
        v15 = &__src[__n];
        *v15 = a2;
        v15[2] = BYTE2(a2);
        v15[3] = a3;
        v16 = a3 >> 8;
        v17 = v12 + 5;
        v15[4] = v16;
        if (v14 == 2)
        {
          *&__src[v17] = 1416380787;
          v17 = v12 + 9;
        }

        CGGetMD5DigestOfBytes(a4, __src, v17);
        if (v17 >= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = v17;
        }
      }

      *a5 = v12;
      if (pdf_is_verbose_onceToken != -1)
      {
        dispatch_once(&pdf_is_verbose_onceToken, &__block_literal_global_5_6709);
      }

      if (pdf_is_verbose_isVerbose == 1)
      {
        printf("Object key: %u <", a2);
        for (; v12; --v12)
        {
          v18 = *a4++;
          printf("%02x", v18);
        }

        puts(">");
      }

      return 1;
    }

    else
    {
      pdf_error("unsupported crypt filter key length.");
      return 0;
    }
  }

  return result;
}

void *CGPDFCryptFilterCreateDecryptor(void *result, int a2, unint64_t a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (*(result + 12) == 1)
    {

      return CGPDFDecryptorCreate(a4, 0, 0, 0);
    }

    else
    {
      v6 = 0;
      if (get_object_key(result, a2, a3, v7, &v6))
      {
        return CGPDFDecryptorCreate(a4, *(v5 + 2), v7, v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFArrayRef CGFontCopyVariationAxes(CGFontRef font)
{
  if (!font)
  {
    return 0;
  }

  v15 = 0;
  v1 = (*(*(font + 2) + 416))(*(font + 14), &v15);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    v4 = 0;
    v5 = MEMORY[0x1E695E9D8];
    v6 = (v2 + 16);
    v7 = MEMORY[0x1E695E9E8];
    alloc = *MEMORY[0x1E695E480];
    do
    {
      v8 = CFDictionaryCreateMutable(0, 0, v5, v7);
      v9 = v8;
      v10 = *(v6 - 2);
      if (v10)
      {
        CFDictionarySetValue(v8, @"kCGFontVariationAxisName", v10);
      }

      else
      {
        *cStr = bswap32(*(v6 - 2));
        v17 = 0;
        v11 = CFStringCreateWithCString(alloc, cStr, 0);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(v9, @"kCGFontVariationAxisName", v11);
          CFRelease(v12);
        }
      }

      CGCFDictionarySetFloat(v9, @"kCGFontVariationAxisMinValue", *v6);
      CGCFDictionarySetFloat(v9, @"kCGFontVariationAxisMaxValue", v6[1]);
      CGCFDictionarySetFloat(v9, @"kCGFontVariationAxisDefaultValue", v6[2]);
      if (v9)
      {
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
      }

      ++v4;
      v6 += 5;
    }

    while (v4 < v15);
  }

  return Mutable;
}

void *pdf_source_create_predictor2_filter(const void *a1, CGPDFDictionary *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300406BFC95CEuLL);
  v4[3] = 8;
  *(v4 + 1) = vdupq_n_s64(1uLL);
  if (a2)
  {
    value = 0;
    if (CGPDFDictionaryGetInteger(a2, "Colors", &value))
    {
      if (value < 1)
      {
        pdf_error("/%s is outside the range of allowed values.", "Colors");
      }

      else
      {
        v4[1] = value;
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "BitsPerComponent", &value))
    {
      if (value <= 0x10 && ((1 << value) & 0x10116) != 0)
      {
        v4[3] = value;
      }

      else
      {
        pdf_error("/%s is outside the range of allowed values.", "BitsPerComponent");
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "Columns", &value))
    {
      if ((value - 1) > 0x3FFFFFFE)
      {
        pdf_error("/%s is outside the range of allowed values.", "Columns");
        if (!a1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v4[2] = value;
    }
  }

  if (a1)
  {
LABEL_14:
    CFRetain(a1);
  }

LABEL_15:
  *v4 = a1;
  v5 = v4[1];
  v6 = v4[3];
  if (v5 <= 0xFFFFFFFFFFFFFFF8 / v6 && (v7 = v6 * v5, v8 = v4[2], v8 <= 0xFFFFFFFFFFFFFFF8 / v7) && (v9 = (v8 * v7 + 7) >> 3, v4[4] = malloc_type_malloc(v5, 0xE3D5D5BuLL), (result = CGPDFSourceCreateInternal(v9)) != 0))
  {
    *(result + 209) = 1;
    v11 = *&off_1EF240C80;
    *(result + 3) = pdf_source_create_predictor2_filter_callbacks;
    *(result + 4) = v11;
    result[10] = v4;
  }

  else
  {
    predictor2_filter_finalize(v4);
    return 0;
  }

  return result;
}

void predictor2_filter_finalize(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1[4]);

    free(a1);
  }
}

uint64_t predictor2_filter_refill(uint64_t a1, char *a2, size_t a3)
{
  v3 = a2;
  v5 = CGPDFSourceRead(*a1, a2, a3);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = v6 - 1;
    if (v6 - 1 <= 7 && ((0x8Bu >> v7) & 1) != 0)
    {
      bzero(*(a1 + 32), *(a1 + 8));
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = &v3[v5];
        v16 = 0xFFFFFFFF >> -v6;
        v17 = v3;
        do
        {
          if (*(a1 + 8))
          {
            v18 = 0;
            do
            {
              if (v6)
              {
                while (v13 < v6)
                {
                  v14 <<= 8;
                  if (v17 < v15)
                  {
                    v19 = *v17++;
                    v14 |= v19;
                  }

                  v13 += 8;
                }

                v13 -= v6;
                v20 = (v14 >> v13) & v16;
              }

              else
              {
                LOBYTE(v20) = 0;
              }

              *(*(a1 + 32) + v18) += v20;
              v21 = *(a1 + 32);
              v22 = *(v21 + v18);
              if (v9 < 8)
              {
                v23 = *(v21 + v18);
              }

              else
              {
                do
                {
                  v9 -= 8;
                  *v3++ = v12 >> v9;
                }

                while (v9 > 7);
                v21 = *(a1 + 32);
                v23 = *(v21 + v18);
              }

              v12 = v16 & v22 | (v12 << v6);
              v9 += v6;
              *(v21 + v18) = v23 & (0xFF01010107010301 >> (8 * v7));
              v10 += v6;
              if (v5 == v10 >> 3)
              {
                break;
              }

              ++v18;
            }

            while (v18 < *(a1 + 8));
            v8 = *(a1 + 16);
          }

          ++v11;
        }

        while (v11 < v8);
        if (v13 <= 0x18)
        {
          v24 = v14 & (0xFFFFFFFF >> -v13);
          if (!v13)
          {
            v24 = 0;
          }

          goto LABEL_34;
        }

        v24 = v14 & (0xFFFFFFFF >> (24 - v13)) | (((v14 >> (v13 - 24)) & 0xFFFFFF) << (v13 - 24));
        if (v9 >= 8)
        {
          do
          {
            v9 -= 8;
            *v3++ = v12 >> v9;
          }

          while (v9 > 7);
        }

        v9 |= 0x18uLL;
        v12 = (v24 >> (v13 - 24)) & 0xFFFFFF | (v12 << 24);
        v13 -= 24;
        do
        {
          v9 -= 8;
          *v3++ = v12 >> v9;
LABEL_34:
          ;
        }

        while (v9 > 7);
      }

      else
      {
        v24 = 0;
        v12 = 0;
        v13 = 0;
        v9 = 0;
      }

      v26 = v9 + v13;
      if (v26)
      {
        v27 = (0xFFFFFFFF >> -v13) & v24 | (v12 << v13);
        do
        {
          v28 = v26;
          if (v26 >= 8)
          {
            do
            {
              v28 -= 8;
              *v3++ = v27 >> v28;
            }

            while (v28 > 7);
          }

          v29 = -v26 & 7;
          v27 <<= v29;
          v26 = v28 + v29;
        }

        while (v26);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

__CFString *path_debug_description(const CGPath *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"Path %p:\n", a1);
  CGPathApply(a1, Mutable, path_debug_desc_applier);
  return Mutable;
}

void path_debug_desc_applier(__CFString *a1, const CGPathElement *a2)
{
  points = a2->points;
  type = a2->type;
  if (a2->type <= kCGPathElementAddLineToPoint)
  {
    if (type)
    {
      if (type == kCGPathElementAddLineToPoint)
      {
        CFStringAppendFormat(a1, 0, @"    lineto (%g, %g)\n", *&points->x, *&points->y);
      }
    }

    else
    {
      CFStringAppendFormat(a1, 0, @"  moveto (%g, %g)\n", *&points->x, *&points->y);
    }
  }

  else
  {
    switch(type)
    {
      case kCGPathElementAddQuadCurveToPoint:
        CFStringAppendFormat(a1, 0, @"    quadto (%g, %g) (%g, %g)\n", *&points->x, *&points->y, *&points[1].x, *&points[1].y);
        break;
      case kCGPathElementAddCurveToPoint:
        CFStringAppendFormat(a1, 0, @"    curveto (%g, %g) (%g, %g) (%g, %g)\n", *&points->x, *&points->y, *&points[1].x, *&points[1].y, *&points[2].x, *&points[2].y);
        break;
      case kCGPathElementCloseSubpath:

        CFStringAppend(a1, @"    closepath\n");
        break;
    }
  }
}

CGPathRef CGPathCreateCopyByDashingPath(CGPathRef path, const CGAffineTransform *transform, CGFloat phase, const CGFloat *lengths, size_t count)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v10 = CFGetTypeID(path);
    if (v10 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128);
  v13 = Instance;
  if (Instance)
  {
    CG::Path::Path((Instance + 16), (path + 16), phase, lengths, count, 0);
    if (transform)
    {
      CG::Path::apply_transform((v13 + 16), transform);
    }
  }

  return v13;
}

uint64_t CGPathCreateWithLineSegment(_anonymous_namespace_ *a1, const CGAffineTransform *a2, CGFloat a3, CGFloat a4, float64_t a5, float64_t a6)
{
  v12.x = a3;
  v12.y = a4;
  v11.f64[0] = a5;
  v11.f64[1] = a6;
  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 88);
  v9 = Instance;
  if (Instance)
  {
    CG::Path::append_line_segment((Instance + 16), &v12, &v11, a1);
  }

  return v9;
}

CGPathRef CGPathCreateWithUnevenCornersRoundedRect(const CGRect *a1, _anonymous_namespace_ *this, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (a1 && is_valid)
  {
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    v36 = CGRectStandardize(v35);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v26 = v36;
    v19 = v27.width == v28 && v27.height == v29;
    if (v19 && (v27.width == v30 ? (v20 = v27.height == v31) : (v20 = 0), v20 && (v27.width == v32 ? (v21 = v27.height == v33) : (v21 = 0), v21)))
    {
      if (v27.width == 0.0 || v27.height == 0.0)
      {
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        return CGPathCreateWithRect(v38, this);
      }

      else
      {
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        return CGPathCreateWithRoundedRect(v37, v27.width, v27.height, this);
      }
    }

    else
    {
      TypeID = CGPathGetTypeID();
      Instance = CGTypeCreateInstance(TypeID, 120);
      v13 = Instance;
      if (Instance)
      {
        CG::Path::append_uneven_rounded_rect((Instance + 16), &v26, &v27, this);
      }
    }
  }

  return v13;
}

CGFloat anonymous namespace::standardize_uneven_corners(float64x2_t *this, const CGRect *a2, const CGSize *a3, CGSize *a4)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = vbslq_s8(vcgtq_f64(this[1], *(&a2->origin + i * 16)), *(&a2->origin + i * 16), this[1]);
    a3[i] = vbicq_s8(v5, vcltzq_f64(v5));
  }

  v6 = this[1].f64[0];
  if (a3->width + a3[1].width > v6)
  {
    a3[1].width = v6 - a3->width;
    v6 = this[1].f64[0];
  }

  width = a3[2].width;
  if (width + a3[3].width > v6)
  {
    a3[3].width = v6 - width;
  }

  height = a3[1].height;
  result = this[1].f64[1];
  if (height + a3[2].height > result)
  {
    a3[2].height = result - height;
    result = this[1].f64[1];
  }

  v10 = a3->height;
  if (v10 + a3[3].height > result)
  {
    result = result - v10;
    a3[3].height = result;
  }

  return result;
}

void CGPathAddContinuousRoundedRect(char *cf, float64x2_t *this, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v16 = CFGetTypeID(cf), v16 == CGPathGetTypeID()))
    {
      {
        v29.origin.x = a3;
        v29.origin.y = a4;
        v29.size.width = a5;
        v29.size.height = a6;
        v30 = CGRectStandardize(v29);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        v28 = v30;
        if (a7 >= 0.0)
        {
          v21 = a7;
        }

        else
        {
          v21 = 0.0;
        }

        if (a8 >= 0.0)
        {
          v22 = a8;
        }

        else
        {
          v22 = 0.0;
        }

        if (v30.size.width < 0.0 || v30.size.height < 0.0)
        {
          v31 = CGRectStandardize(v30);
          v23 = v31.size.width * 0.5;
          if (v21 <= v31.size.width * 0.5)
          {
            v24 = v21;
          }

          else
          {
            v24 = v31.size.width * 0.5;
          }

          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectStandardize(v32);
          height = v33.size.height;
        }

        else
        {
          v23 = v30.size.width * 0.5;
          if (v21 <= v30.size.width * 0.5)
          {
            v24 = v21;
          }

          else
          {
            v24 = v30.size.width * 0.5;
          }
        }

        if (v22 <= height * 0.5)
        {
          v25 = v22;
        }

        else
        {
          v25 = height * 0.5;
        }

        if (v24 == 0.0 || v25 == 0.0)
        {
          CG::Path::append_rect((cf + 16), &v28, this);
        }

        else if (v24 == v23 && v25 == height * 0.5)
        {
          CG::Path::append_ellipse((cf + 16), &v28, 1, 0, this);
        }

        else
        {
          v27 = v24;
          CG::Path::append_continuous_rounded_rect((cf + 16), &v28, *(&v25 - 1), this);
        }
      }
    }
  }
}

void CGPathAddRelativeArc(CGMutablePathRef path, const CGAffineTransform *matrix, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat delta)
{
  if (path)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v14 = CFGetTypeID(path), v14 == CGPathGetTypeID()))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError();
      }

      {
        if (fabs(startAngle) > 6283.18531 || fabs(delta) > 6283.18531)
        {
          CGPostError("%s: invalid value for start or delta angle.", "CGPathAddRelativeArc");
        }

        else
        {
          v15.x = x;
          v15.y = y;
          CG::Path::add_arc_relative((path + 16), &v15, radius, startAngle, delta, matrix, 0);
        }
      }
    }
  }
}

void CGPathAddLines(CGMutablePathRef path, const CGAffineTransform *m, const CGPoint *points, size_t count)
{
  if (path)
  {
    if (CGPathDisableTypeValidation)
    {
      v8 = 0;
      if (!count)
      {
        return;
      }
    }

    else
    {
      v9 = CFGetTypeID(path);
      v8 = v9 != CGPathGetTypeID();
      if (!count)
      {
        return;
      }
    }

    {
      p_y = &points->y;
      v11 = count;
      while ((*(p_y - 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*p_y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        p_y += 2;
        if (!--v11)
        {
          if (count == 2)
          {

            CG::Path::append_line_segment((path + 16), points, &points[1], m);
          }

          else
          {
            CG::Path::reserve_space((path + 16), count + 1, count + 1);
            CG::Path::move_to_point(path + 4, m, v12, *points);
            if (count >= 2)
            {
              v14 = count - 1;
              v15 = points + 1;
              do
              {
                v16 = *v15++;
                CG::Path::add_line_to_point((path + 16), m, v13, v16);
                --v14;
              }

              while (v14);
            }
          }

          return;
        }
      }

      CGFloatPostError();
    }
  }
}

void CGPathAddRects(CGMutablePathRef path, const CGAffineTransform *m, const CGRect *rects, size_t count)
{
  if (path)
  {
    v4 = count;
    if (CGPathDisableTypeValidation)
    {
      v8 = 0;
      if (!count)
      {
        return;
      }
    }

    else
    {
      v9 = CFGetTypeID(path);
      v8 = v9 != CGPathGetTypeID();
      if (!v4)
      {
        return;
      }
    }

    {
      if (v4 >= 2)
      {
        CG::Path::reserve_space((path + 16), 5 * v4, 5 * v4);
      }

      p_size = &rects->size;
      do
      {
        v12 = *&p_size[-1].width;
        p_size += 2;
        v11 = CGRectStandardize(v12);
        CG::Path::append_rect((path + 16), &v11, m);
        --v4;
      }

      while (v4);
    }
  }
}

void CGPathAddRoundedRect(CGMutablePathRef path, const CGAffineTransform *transform, CGRect rect, CGFloat cornerWidth, CGFloat cornerHeight)
{
  if (path)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v13 = CFGetTypeID(path), v13 == CGPathGetTypeID()))
    {
      {
        if (width < 0.0 || height < 0.0)
        {
          v19.origin.x = x;
          v19.origin.y = y;
          v19.size.width = width;
          v19.size.height = height;
          v20 = CGRectStandardize(v19);
          v14 = fmax(fmin(cornerWidth, v20.size.width * 0.5), 0.0);
          v20.origin.x = x;
          v20.origin.y = y;
          v20.size.width = width;
          v20.size.height = height;
          v21 = CGRectStandardize(v20);
          v15 = v21.size.height;
        }

        else
        {
          v14 = fmax(fmin(cornerWidth, width * 0.5), 0.0);
          v15 = height;
        }

        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23 = CGRectStandardize(v22);
        if (v14 == 0.0 || (v16 = fmax(fmin(cornerHeight, v15 * 0.5), 0.0), v16 == 0.0))
        {
          v17 = v23;
          CG::Path::append_rect((path + 16), &v17, transform);
        }

        else
        {
          v17 = v23;
          v18.width = v14;
          v18.height = v16;
          CG::Path::append_rounded_rect((path + 16), &v17, v18, transform);
        }
      }
    }
  }
}

void CGPathAddUnevenCornersRoundedRect(char *cf, _anonymous_namespace_ *this, const CGRect *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v14 = CFGetTypeID(cf), v14 == CGPathGetTypeID()))
    {
      if (a3)
      {
        if (is_valid)
        {
          v29.origin.x = a4;
          v29.origin.y = a5;
          v29.size.width = a6;
          v29.size.height = a7;
          v20 = CGRectStandardize(v29);
          width = v21.width;
          height = v21.height;
          v19 = v21.width == v22 && v21.height == v23;
          if (v19 && v21.width == v24 && v21.height == v25 && v21.width == v26 && v21.height == v27)
          {
            if (v21.width == 0.0 || v21.height == 0.0)
            {
              CG::Path::append_rect((cf + 16), &v20, this);
            }

            else
            {
              CG::Path::append_rounded_rect((cf + 16), &v20, *&width, this);
            }
          }

          else
          {
            CG::Path::append_uneven_rounded_rect((cf + 16), &v20, &v21, this);
          }
        }
      }
    }
  }
}

char *CGPathAddRegion(char *cf, _anonymous_namespace_ *this, void *a3)
{
  if (cf)
  {
    v5 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v6 = CFGetTypeID(cf), cf = CGPathGetTypeID(), v6 == cf))
    {
      if (cf)
      {

        return CG::Path::append_region((v5 + 16), a3, this);
      }
    }
  }

  return cf;
}

uint64_t CGPathIsLine(uint64_t cf, _OWORD *a2)
{
  if (cf)
  {
    v3 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v4 = CFGetTypeID(cf), v4 == CGPathGetTypeID()))
    {
      v5 = *(v3 + 16);
      switch(v5)
      {
        case 9:
          if (*(v3 + 24) == 2 && *(v3 + 32) == 2)
          {
            v7 = *(v3 + 48);
            v8 = v7 + *(v3 + 40);
            if (!*(v8 - 1) && *(v8 - 2) == 1)
            {
              if (a2)
              {
                *a2 = *v7;
                v7 = *(v3 + 48);
              }

              v6 = v7 + 1;
              goto LABEL_10;
            }
          }

          break;
        case 8:
          if (*(v3 + 24) == 2 && *(v3 + 26) == 2 && (*(v3 + 28) & 0x3F) == 8)
          {
            if (a2)
            {
              *a2 = *(v3 + 32);
            }

            v6 = (v3 + 48);
            goto LABEL_10;
          }

          break;
        case 5:
          if (a2)
          {
            *a2 = *(v3 + 24);
          }

          v6 = (v3 + 40);
LABEL_10:
          a2[1] = *v6;
          return 1;
      }
    }

    return 0;
  }

  return cf;
}

uint64_t CGPathIsEllipseWithTransform(char *cf, CGRect *a2, BOOL *a3, uint64_t a4, CGAffineTransform *a5)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_ellipse((cf + 16), a2, 0, a3, a5);
}

uint64_t CGPathIsEllipse2(char *cf, CGRect *a2, BOOL *a3, uint64_t a4, CGAffineTransform *a5)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_ellipse((cf + 16), a2, a3, 0, a5);
}

char *CGPathIsRoundedRectWithTransform(char *cf, CGRect *a2, float64_t *a3, float64_t *a4, CGAffineTransform *a5)
{
  if (cf)
  {
    v9 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v10 = CFGetTypeID(cf), v10 == CGPathGetTypeID()))
    {
      cf = CG::Path::is_rounded_rect((v9 + 16), a2, &v11, a5);
      if (cf)
      {
        if (a3)
        {
          *a3 = v11.f64[0];
        }

        if (a4)
        {
          *a4 = v11.f64[1];
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

uint64_t CGPathIsUnevenCornersRoundedRectWithTransform(uint64_t cf, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v7 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v8 = CFGetTypeID(cf), v8 == CGPathGetTypeID()))
    {
      v9 = *(v7 + 16);
      if (v9 == 2)
      {
        if (a4)
        {
          if (a2)
          {
            *a2 = unit_rect;
          }

          if (a3)
          {
            a3[3] = *(v7 + 72);
            v11 = *(v7 + 72);
            a3[1] = v11;
            a3[2] = v11;
            *a3 = v11;
          }

          goto LABEL_18;
        }

        if (*(v7 + 32) == 0.0 && *(v7 + 40) == 0.0 || *(v7 + 24) == 0.0 && *(v7 + 48) == 0.0)
        {
          if (a2)
          {
            v30 = *(v7 + 40);
            *&v36.a = *(v7 + 24);
            *&v36.c = v30;
            *&v36.tx = *(v7 + 56);
            *a2 = transform_unit_rect(&v36);
            *(a2 + 8) = v31;
            *(a2 + 16) = v32;
            *(a2 + 24) = v33;
          }

          if (a3)
          {
            a3[3] = vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*(v7 + 40), *(v7 + 80)), *(v7 + 24), *(v7 + 72)));
            v34 = a3[3];
            a3[1] = v34;
            a3[2] = v34;
            *a3 = v34;
          }

          return 1;
        }
      }

      else if (v9 == 3)
      {
        if (a4)
        {
          if (a2)
          {
            *a2 = unit_rect;
          }

          if (a3)
          {
            for (i = 0; i != 4; ++i)
            {
              a3[i] = *(v7 + 72 + i * 16);
            }
          }

LABEL_18:
          v12 = *(v7 + 24);
          v13 = *(v7 + 56);
          a4[1] = *(v7 + 40);
          a4[2] = v13;
          *a4 = v12;
          return 1;
        }

        if (*(v7 + 32) == 0.0 && *(v7 + 40) == 0.0 || *(v7 + 24) == 0.0 && *(v7 + 48) == 0.0)
        {
          if (a2)
          {
            v14 = *(v7 + 40);
            *&v36.a = *(v7 + 24);
            *&v36.c = v14;
            *&v36.tx = *(v7 + 56);
            *a2 = transform_unit_rect(&v36);
            *(a2 + 8) = v15;
            *(a2 + 16) = v16;
            *(a2 + 24) = v17;
          }

          if (a3)
          {
            v18 = 0;
            v19 = *(v7 + 24);
            v20 = *(v7 + 32);
            v21 = *(v7 + 40);
            v22 = *(v7 + 48);
            v23 = vdupq_lane_s64(v19, 0);
            v24 = vdupq_lane_s64(v20, 0);
            do
            {
              v25 = (v7 + 72 + v18);
              v38 = vld2q_f64(v25);
              v26 = vmlaq_f64(vmulq_n_f64(v38.val[1], v21), v38.val[0], v23);
              v27 = vmlaq_f64(vmulq_n_f64(v38.val[1], v22), v38.val[0], v24);
              v28 = (&v36 + v18);
              *v28 = vabsq_f64(vzip1q_s64(v26, v27));
              v28[1] = vabsq_f64(vzip2q_s64(v26, v27));
              v18 += 32;
            }

            while (v18 != 64);
            if (*&v19 == 0.0 && v22 == 0.0)
            {
              for (j = 0; j != 4; ++j)
              {
                *a3++ = *(&v36.a + CG::Path::is_uneven_rounded_rect(CGRect *,CGSize *,CGAffineTransform *)const::permute[((4 * (v21 >= 0.0)) | (8 * (*&v20 >= 0.0))) + j]);
              }
            }

            else
            {
              for (k = 0; k != 4; ++k)
              {
                *a3++ = *(&v36.a + CG::Path::is_uneven_rounded_rect(CGRect *,CGSize *,CGAffineTransform *)const::permute[((4 * (v22 >= 0.0)) | (8 * (*&v19 >= 0.0))) + k]);
              }
            }
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return cf;
}

uint64_t CGPathIsArc(uint64_t cf, void *a2, void *a3, void *a4, void *a5, _OWORD *a6)
{
  if (cf)
  {
    v11 = cf;
    if (((CGPathDisableTypeValidation & 1) != 0 || (v12 = CFGetTypeID(cf), v12 == CGPathGetTypeID())) && *(v11 + 16) == 6)
    {
      if (a2)
      {
        *a2 = 0;
        a2[1] = 0;
      }

      if (a3)
      {
        *a3 = 0x3FF0000000000000;
      }

      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = *(v11 + 72);
      }

      if (a6)
      {
        v13 = *(v11 + 24);
        v14 = *(v11 + 56);
        a6[1] = *(v11 + 40);
        a6[2] = v14;
        *a6 = v13;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

BOOL CGPathIsRegion(_BOOL8 cf, void *a2)
{
  if (cf)
  {
    v3 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v4 = CFGetTypeID(cf), v4 == CGPathGetTypeID()))
    {
      v5 = *(v3 + 16);
      cf = v5 == 7;
      if (a2)
      {
        if (v5 == 7)
        {
          *a2 = *(v3 + 24);
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

BOOL CGPathContainsPoint(CGPathRef path, const CGAffineTransform *m, CGPoint point, BOOL eoFill)
{
  v11 = point;
  if (path)
  {
    v4 = eoFill;
    v6 = path;
    y = point.y;
    x = point.x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v7 = CFGetTypeID(path), v7 == CGPathGetTypeID()))
    {
      if (path)
      {
        if (m)
        {
          v11 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_n_f64(*&m->c, y), *&m->a, x));
        }

        LOBYTE(path) = CG::Path::contains_point((v6 + 16), &v11, v4);
      }
    }

    else
    {
      LOBYTE(path) = 0;
    }
  }

  return path;
}

uint64_t CGPathIsValidGlyphPath(CFTypeRef cf)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  info[0].f64[0] = 0.0;
  CGPathApply(cf, info, process_subpath_split);
  v3 = info[0].f64[0];
  if (!*&info[0].f64[0])
  {
    return 1;
  }

  v4 = 0.0;
  do
  {
    v5 = **&v3;
    v6 = *(*&v3 + 16);
    if (!v6)
    {
      goto LABEL_8;
    }

    if (*(v6 + 4))
    {
      goto LABEL_8;
    }

    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v8 = *v7;
      v9 = *(v7 + 4);
      if (!v8)
      {
        break;
      }

      v10 = v9 - 1;
      v7 = v8;
      if (v10 >= 3)
      {
        goto LABEL_8;
      }
    }

    if (v9 != 4)
    {
      goto LABEL_8;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *v6;
      if (*(v6 + 4) != 1 || *(v14 + 4) != 4 || (*(v6 + 3) == *(v14 + 3) ? (_ZF = *(v6 + 4) == *(v14 + 4)) : (_ZF = 0), !_ZF))
      {
        if (!v11 || !v14)
        {
          goto LABEL_30;
        }

        v16 = *(v6 + 1);
        if (v16)
        {
          v17 = &v11[16 * *(v11 + 1)];
          v18 = *(v17 + 1);
          v19 = *(v17 + 2);
          if (v18 != *(v6 + 3) || v19 != *(v6 + 4))
          {
LABEL_30:
            *v6 = v13;
            ++v12;
            v11 = v6;
            v13 = v6;
            goto LABEL_39;
          }

          v21 = 0;
          v22 = (v6 + 48);
          while (v16 - 1 != v21)
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v22 += 2;
            ++v21;
            if (v18 != v23 || v19 != v24)
            {
              if (v21 < v16)
              {
                goto LABEL_30;
              }

              break;
            }
          }
        }
      }

      free(v6);
      v11 = 0;
LABEL_39:
      v6 = v14;
    }

    while (v14);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v27 = *v13;
        if (*(*v13 + 16) == 1)
        {
          while (1)
          {
            v28 = v13;
            v13 = v27;
            free(v28);
            if (!v13)
            {
              break;
            }

            v27 = *v13;
          }

          goto LABEL_52;
        }
      }

      else if (!v13)
      {
        goto LABEL_52;
      }

      v29 = 0;
      do
      {
        v30 = v13;
        v13 = *v13;
        *v30 = v29;
        v29 = v30;
      }

      while (v13);
      *(*&v3 + 16) = v30;
      **&v3 = v4;
      v4 = v3;
    }

    else
    {
      if (v13)
      {
        do
        {
          v26 = *v13;
          free(v13);
          v13 = v26;
        }

        while (v26);
      }

LABEL_52:
      *(*&v3 + 16) = 0;
LABEL_8:
      subpath_release(*&v3);
    }

    v3 = v5;
  }

  while (v5 != 0.0);
  if (v4 == 0.0)
  {
    return 1;
  }

  v32 = v4;
  do
  {
    if (*(*&v32 + 8) == -1)
    {
      *(*&v32 + 8) = 0;
      v33 = v4;
      do
      {
        if (*&v33 != *&v32)
        {
          v34 = *(*&v32 + 16);
          if (*v34)
          {
            v35 = 0;
            v36 = 0;
            do
            {
              v37 = *&v34[2 * v34[1] + 1];
              v76 = 0;
              v38 = *(*&v33 + 16);
              v39 = *v38;
              if (*v38)
              {
                v40 = 0;
                v41 = vsubq_f64(*(v38 + 24), v37);
                v74 = v37;
                do
                {
                  info[0] = v41;
                  v42 = v39[1];
                  if (v42)
                  {
                    v43 = (v39 + 3);
                    v44 = &info[1];
                    v45 = v39[1];
                    do
                    {
                      v46 = *v43++;
                      *v44++ = vsubq_f64(v46, v37);
                      --v45;
                    }

                    while (v45);
                    v41 = info[v42];
                  }

                  v75 = v41;
                  v47 = crossing_count(info, v42, &v76, v41.f64[0], v37);
                  if (v76 == 1)
                  {
                    v48 = 0;
                    goto LABEL_74;
                  }

                  v40 += v47;
                  v39 = *v39;
                  v37 = v74;
                  v41 = v75;
                }

                while (v39);
                if (v40)
                {
                  ++v36;
                }

                else
                {
                  v35 += v76 ^ 1;
                }
              }

              else
              {
                v48 = 1;
LABEL_74:
                v35 += v48;
              }

              v34 = *v34;
            }

            while (*v34);
            if (v36 && (!v35 || v36 > v35 + 1))
            {
              ++*(*&v32 + 8);
            }
          }
        }

        v33 = **&v33;
      }

      while (v33 != 0.0);
    }

    v32 = **&v32;
  }

  while (v32 != 0.0);
  __asm
  {
    FMOV            V0.2D, #2.0
    FMOV            V1.2D, #0.25
    FMOV            V2.2D, #3.0
  }

  v55 = v4;
  __asm { FMOV            V3.2D, #0.125 }

  while (2)
  {
    if (*(*&v55 + 12) == -2)
    {
      v57 = *(*&v55 + 16);
      v58 = *v57;
      if (*v57)
      {
        _Q5 = *(v57 + 3);
        v60 = 0.0;
        while (1)
        {
          _Q6 = _Q5;
          _Q5 = *&v58[2 * v58[1] + 1];
          v62 = *(v58 + 4);
          if (v62 == 2)
          {
            break;
          }

          if (v62 == 3)
          {
            v63 = vmulq_f64(vaddq_f64(_Q5, vmlaq_f64(vmlaq_f64(_Q6, _Q2, *(v58 + 3)), _Q2, *(v58 + 5))), _Q3);
LABEL_90:
            v60 = v60 + vmuld_lane_f64(-v63.f64[0], _Q6, 1) + _Q6.f64[0] * v63.f64[1];
            _Q6.f64[0] = v63.f64[0];
          }

          __asm { FMLA            D7, D6, V5.D[1] }

          v60 = v60 + _D7;
          v58 = *v58;
          if (!v58)
          {
            goto LABEL_94;
          }
        }

        v63 = vmulq_f64(vaddq_f64(_Q5, vmlaq_f64(_Q6, _Q0, *(v58 + 3))), _Q1);
        goto LABEL_90;
      }

      v60 = 0.0;
LABEL_94:
      v65 = v60 > 0.0;
      if (v60 == 0.0)
      {
        v65 = -1;
      }

      *(*&v55 + 12) = v65;
    }

    v55 = **&v55;
    if (v55 != 0.0)
    {
      continue;
    }

    break;
  }

  v66 = 0;
  v67 = v4;
  do
  {
    if (!*(*&v67 + 8))
    {
      v68 = *(*&v67 + 12);
      if (v68 != -1)
      {
        if (v68 == 1)
        {
          ++LODWORD(v55);
        }

        else
        {
          if (v68)
          {
            abort();
          }

          ++v66;
        }
      }
    }

    v67 = **&v67;
  }

  while (v67 != 0.0);
  v69 = v66 < SLODWORD(v55);
  v70 = v4;
  while (2)
  {
    v71 = *(*&v70 + 12);
    if ((*(*&v70 + 8) & 1) == 0)
    {
      if (v71 != v69)
      {
        break;
      }

      goto LABEL_112;
    }

    if (v71 != v69)
    {
LABEL_112:
      v70 = **&v70;
      if (v70 == 0.0)
      {
        v31 = 1;
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  v31 = 0;
  do
  {
LABEL_115:
    v72 = **&v4;
    subpath_release(*&v4);
    v4 = *&v72;
  }

  while (*&v72 != 0.0);
  return v31;
}