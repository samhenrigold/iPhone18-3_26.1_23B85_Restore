uint64_t RGBAf_sample_WF(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v86 = *(result + 80);
  v87 = *(result + 64);
  v88 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = (*(result + 152) - 16);
  v12 = *(result + 144) - 1;
  v13 = *(result + 260) - 1;
  v14 = *(result + 256) - 1;
  v15 = v5 + (v13 * v7) + 4 * v14;
  v85 = *(result + 188);
  v16 = v4 + (v13 * v6) + 4 * v14 - 4;
  v89 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v87;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v88;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_39;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v87;
        v26 = v24 | v85;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v89 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_39;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v87;
      v26 = v20 | v85;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v85;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_39:
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

  if (a2 <= v86)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v86;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_39;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v85;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v26 < 0x400000)
  {
    goto LABEL_39;
  }

  v37 = v27 >> 32;
  v38 = v4 + SHIDWORD(v27) * v6;
  v39 = (v32 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  if (v5)
  {
    v43 = v5 + v37 * v7 + v39;
    v44 = *(result + 40);
    if (v15 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v15;
    }

    if (v45 >= v44)
    {
      v44 = v45;
    }

    v46 = COERCE_FLOAT(bswap32(*v44));
  }

  else
  {
    v43 = 0;
    v46 = 1.0;
  }

  v47 = COERCE_FLOAT(bswap32(*v42));
  if (v8)
  {
    v48 = *(v8 + (v33 | v25));
LABEL_67:
    v62 = v48 & 0xF;
    v63 = HIBYTE(v48) & 3;
    if (v62 == 1)
    {
      v82 = (v40 + SBYTE1(v48) * v6);
      if (v16 < v82)
      {
        v82 = v16;
      }

      if (v82 < v41)
      {
        v82 = v41;
      }

      v78 = COERCE_FLOAT(bswap32(*v82));
      v79 = 1.0;
      if (v5)
      {
        v83 = (v43 + SBYTE1(v48) * v7);
        if (v15 < v83)
        {
          v83 = v15;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v79 = COERCE_FLOAT(bswap32(*v83));
      }

      v81 = &interpolate_waf[2 * v63];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v64 = v40 + 4 * SBYTE2(v48);
          if (v16 >= v64)
          {
            v65 = (v40 + 4 * SBYTE2(v48));
          }

          else
          {
            v65 = v16;
          }

          if (v65 < v41)
          {
            v65 = v41;
          }

          v66 = COERCE_FLOAT(bswap32(*v65));
          v67 = (v64 + SBYTE1(v48) * v6);
          if (v16 < v67)
          {
            v67 = v16;
          }

          if (v67 < v41)
          {
            v67 = v41;
          }

          v68 = COERCE_FLOAT(bswap32(*v67));
          v69 = 1.0;
          v70 = 1.0;
          if (v5)
          {
            v71 = v43 + 4 * SBYTE2(v48);
            v72 = *(result + 40);
            if (v15 >= v71)
            {
              v73 = (v43 + 4 * SBYTE2(v48));
            }

            else
            {
              v73 = v15;
            }

            if (v73 < v72)
            {
              v73 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v73));
            v74 = (v71 + SBYTE1(v48) * v7);
            if (v15 < v74)
            {
              v74 = v15;
            }

            if (v74 < v72)
            {
              v74 = *(result + 40);
            }

            v69 = COERCE_FLOAT(bswap32(*v74));
          }

          v75 = interpolate_waf[2 * v63 + 1];
          v76 = interpolate_waf[2 * ((v48 >> 28) & 3) + 1];
          v47 = (((v47 - (v47 * v75)) + (v66 * v75)) - (((v47 - (v47 * v75)) + (v66 * v75)) * v76)) + (((v66 - (v66 * v75)) + (v68 * v75)) * v76);
          v46 = (((v46 - (v46 * v75)) + (v70 * v75)) - (((v46 - (v46 * v75)) + (v70 * v75)) * v76)) + (((v70 - (v70 * v75)) + (v69 * v75)) * v76);
        }

        goto LABEL_44;
      }

      v77 = (v40 + 4 * SBYTE2(v48));
      if (v16 < v77)
      {
        v77 = v16;
      }

      if (v77 < v41)
      {
        v77 = v41;
      }

      v78 = COERCE_FLOAT(bswap32(*v77));
      v79 = 1.0;
      if (v5)
      {
        v80 = (v43 + 4 * SBYTE2(v48));
        if (v15 < v80)
        {
          v80 = v15;
        }

        if (v80 < *(result + 40))
        {
          v80 = *(result + 40);
        }

        v79 = COERCE_FLOAT(bswap32(*v80));
      }

      v81 = &interpolate_waf[2 * ((v48 >> 28) & 3)];
    }

    v84 = v81[1];
    v47 = (v47 - (v47 * v84)) + (v78 * v84);
    v46 = (v46 - (v46 * v84)) + (v79 * v84);
  }

LABEL_44:
  v11[4] = v47;
  v11[5] = v47;
  v11[6] = v47;
  v11[7] = v46;
  *(v12 + 1) = v26 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    v50 = v11 + 11;
    v51 = a4 - 1;
    a2 += v10;
    v52 = v86 - a2;
    a3 += v9;
    v53 = v88 - a3;
    --a4;
    while (1)
    {
      v54 = v12 + v49 + 1;
      v11 = v50 - 7;
      if ((((a2 - v87) | v52 | (a3 - v89) | v53) & 0x8000000000000000) != 0)
      {
        break;
      }

      v55 = v4 + SHIDWORD(a3) * v6;
      v56 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v55 + v56;
      v41 = *(result + 32);
      if (v16 >= v55 + v56)
      {
        v57 = (v55 + v56);
      }

      else
      {
        v57 = v16;
      }

      if (v57 < v41)
      {
        v57 = *(result + 32);
      }

      if (v5)
      {
        v43 = v5 + SHIDWORD(a3) * v7 + v56;
        v58 = *(result + 40);
        if (v15 >= v43)
        {
          v59 = v43;
        }

        else
        {
          v59 = v15;
        }

        if (v59 >= v58)
        {
          v58 = v59;
        }

        v46 = COERCE_FLOAT(bswap32(*v58));
      }

      else
      {
        v46 = 1.0;
      }

      v60 = bswap32(*v57);
      if (v8)
      {
        v48 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v48 & 0xF) != 0)
        {
          v47 = *&v60;
          v26 = -1;
          v12 = v54;
          goto LABEL_67;
        }
      }

      --a4;
      *(v50 - 2) = v60;
      *(v50 - 1) = v60;
      v61 = v12 + v49++;
      *(v50 - 3) = v60;
      *v50 = v46;
      v50 += 4;
      a2 += v10;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      *(v61 + 2) = -1;
      if (v51 == v49)
      {
        return result;
      }
    }

    v12 += v49 + 1;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_Wf(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v9 = *(result + 72);
  v84 = *(result + 80);
  v85 = *(result + 64);
  v86 = *(result + 88);
  v11 = *(result + 112);
  v10 = *(result + 120);
  v12 = (*(result + 152) - 16);
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256) - 1;
  v16 = v5 + (v14 * v7) + 4 * v15;
  v83 = *(result + 188);
  v17 = v4 + (v14 * v6) + 4 * v15 - 4;
  while (1)
  {
LABEL_2:
    if (a3 >= v9)
    {
      if (a3 <= v86)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v86;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_40;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v27 = v25 | v83;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v9 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v27 = v21 | v83;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v85)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v85 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v83;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v11;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v84)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v84;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_40;
  }

  if (v36 < v34)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v83;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_40;
  }

  v37 = v28 >> 32;
  v38 = v4 + SHIDWORD(v28) * v6;
  v39 = (v32 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v17 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v17;
  }

  if (v42 >= v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = *(result + 32);
  }

  if (v5)
  {
    v44 = v5 + v37 * v7 + v39;
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

    v47 = *v45;
  }

  else
  {
    v44 = 0;
    v47 = 1.0;
  }

  v48 = *v43;
  if (v8)
  {
    v49 = *(v8 + (v33 | v26));
LABEL_68:
    v60 = v49 & 0xF;
    v61 = HIBYTE(v49) & 3;
    if (v60 == 1)
    {
      v80 = (v40 + SBYTE1(v49) * v6);
      if (v17 < v80)
      {
        v80 = v17;
      }

      if (v80 < v41)
      {
        v80 = v41;
      }

      v76 = *v80;
      v77 = 1.0;
      if (v5)
      {
        v81 = (v44 + SBYTE1(v49) * v7);
        if (v16 < v81)
        {
          v81 = v16;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v77 = *v81;
      }

      v79 = &interpolate_waf[2 * v61];
    }

    else
    {
      if (v60 != 2)
      {
        if (v60 == 3)
        {
          v62 = v40 + 4 * SBYTE2(v49);
          if (v17 >= v62)
          {
            v63 = (v40 + 4 * SBYTE2(v49));
          }

          else
          {
            v63 = v17;
          }

          if (v63 < v41)
          {
            v63 = v41;
          }

          v64 = *v63;
          v65 = (v62 + SBYTE1(v49) * v6);
          if (v17 < v65)
          {
            v65 = v17;
          }

          if (v65 < v41)
          {
            v65 = v41;
          }

          v66 = *v65;
          v67 = 1.0;
          v68 = 1.0;
          if (v5)
          {
            v69 = v44 + 4 * SBYTE2(v49);
            v70 = *(result + 40);
            if (v16 >= v69)
            {
              v71 = (v44 + 4 * SBYTE2(v49));
            }

            else
            {
              v71 = v16;
            }

            if (v71 < v70)
            {
              v71 = *(result + 40);
            }

            v68 = *v71;
            v72 = (v69 + SBYTE1(v49) * v7);
            if (v16 < v72)
            {
              v72 = v16;
            }

            if (v72 < v70)
            {
              v72 = *(result + 40);
            }

            v67 = *v72;
          }

          v73 = interpolate_waf[2 * v61 + 1];
          v74 = interpolate_waf[2 * ((v49 >> 28) & 3) + 1];
          v48 = (((v48 - (v48 * v73)) + (v64 * v73)) - (((v48 - (v48 * v73)) + (v64 * v73)) * v74)) + (((v64 - (v64 * v73)) + (v66 * v73)) * v74);
          v47 = (((v47 - (v47 * v73)) + (v68 * v73)) - (((v47 - (v47 * v73)) + (v68 * v73)) * v74)) + (((v68 - (v68 * v73)) + (v67 * v73)) * v74);
        }

        goto LABEL_45;
      }

      v75 = (v40 + 4 * SBYTE2(v49));
      if (v17 < v75)
      {
        v75 = v17;
      }

      if (v75 < v41)
      {
        v75 = v41;
      }

      v76 = *v75;
      v77 = 1.0;
      if (v5)
      {
        v78 = (v44 + 4 * SBYTE2(v49));
        if (v16 < v78)
        {
          v78 = v16;
        }

        if (v78 < *(result + 40))
        {
          v78 = *(result + 40);
        }

        v77 = *v78;
      }

      v79 = &interpolate_waf[2 * ((v49 >> 28) & 3)];
    }

    v82 = v79[1];
    v48 = (v48 - (v48 * v82)) + (v76 * v82);
    v47 = (v47 - (v47 * v82)) + (v77 * v82);
  }

LABEL_45:
  v12[4] = v48;
  v12[5] = v48;
  v12[6] = v48;
  v12[7] = v47;
  *(v13 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    v51 = v12 + 11;
    a3 += v10;
    v52 = v86 - a3;
    a2 += v11;
    v53 = v84 - a2;
    while ((((a2 - v85) | v53 | (a3 - v9) | v52) & 0x8000000000000000) == 0)
    {
      v54 = v4 + SHIDWORD(a3) * v6;
      v55 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v54 + v55;
      v41 = *(result + 32);
      if (v17 >= v54 + v55)
      {
        v56 = (v54 + v55);
      }

      else
      {
        v56 = v17;
      }

      if (v56 < v41)
      {
        v56 = *(result + 32);
      }

      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v55;
        v57 = *(result + 40);
        if (v16 >= v44)
        {
          v58 = v44;
        }

        else
        {
          v58 = v16;
        }

        if (v58 >= v57)
        {
          v57 = v58;
        }

        v47 = *v57;
      }

      else
      {
        v47 = 1.0;
      }

      v48 = *v56;
      if (v8)
      {
        v49 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 = v51 - 7;
          a4 += ~v50;
          v27 = -1;
          goto LABEL_68;
        }
      }

      *(v51 - 3) = v48;
      *(v51 - 2) = v48;
      v59 = v13 + v50++;
      *(v51 - 1) = v48;
      *v51 = v47;
      v51 += 4;
      v52 -= v10;
      a2 += v11;
      v53 -= v11;
      a3 += v10;
      *(v59 + 2) = -1;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 = v51 - 7;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBF(uint64_t result, unint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 72);
  v69 = *(result + 80);
  v70 = *(result + 64);
  v71 = *(result + 88);
  v15 = *(result + 112);
  v16 = *(result + 120);
  v17 = *(result + 152) - 16;
  v18 = *(result + 144) - 1;
  v19 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  v68 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v14)
    {
      if (a3 <= v71)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v71;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_34;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v68;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v14 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v68;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v70)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v70 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v68;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v15;
    a3 += v16;
    v17 += 16;
    *++v18 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v69)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v69;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_34;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v68;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_34;
  }

  v39 = v34 >> 32;
  v40 = v11 + SHIDWORD(v30) * v12;
  v41 = v40 + 12 * v39;
  v42 = *(result + 32);
  if (v19 >= v41)
  {
    v43 = (v40 + 12 * v39);
  }

  else
  {
    v43 = v19;
  }

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  v44 = vrev32_s8(*v43);
  v45 = COERCE_FLOAT(bswap32(v43[1].u32[0]));
  if (!v13)
  {
    goto LABEL_36;
  }

  v46 = *(v13 + (v35 | v28));
LABEL_52:
  v58 = v46 & 0xF;
  v59 = HIBYTE(v46) & 3;
  if (v58 == 1)
  {
    v66 = (v41 + SBYTE1(v46) * v12);
    if (v19 < v66)
    {
      v66 = v19;
    }

    if (v66 < v42)
    {
      v66 = v42;
    }

    v67 = COERCE_FLOAT(bswap32(v66[1].u32[0]));
    goto LABEL_75;
  }

  if (v58 == 2)
  {
    v66 = (v41 + 12 * SBYTE2(v46));
    if (v19 < v66)
    {
      v66 = v19;
    }

    if (v66 < v42)
    {
      v66 = v42;
    }

    v67 = COERCE_FLOAT(bswap32(v66[1].u32[0]));
    v59 = (v46 >> 28) & 3;
LABEL_75:
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v59 + 3];
    a10 = COERCE_DOUBLE(vrev32_s8(*v66));
    v44 = vmla_n_f32(vmls_lane_f32(v44, v44, *&a9, 0), *&a10, *&a9);
    v45 = (v45 - (v45 * *&a9)) + (v67 * *&a9);
    v47 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v58 != 3)
  {
LABEL_36:
    v47 = 1.0;
    goto LABEL_37;
  }

  v60 = v41 + 12 * SBYTE2(v46);
  if (v19 >= v60)
  {
    v61 = (v41 + 12 * SBYTE2(v46));
  }

  else
  {
    v61 = v19;
  }

  if (v61 < v42)
  {
    v61 = v42;
  }

  v62 = COERCE_FLOAT(bswap32(v61[1].u32[0]));
  v63 = (v60 + SBYTE1(v46) * v12);
  if (v19 < v63)
  {
    v63 = v19;
  }

  if (v63 < v42)
  {
    v63 = v42;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v59 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v46 >> 28) & 3) + 3];
  v45 = (((v45 - (v45 * *&a10)) + (v62 * *&a10)) - (((v45 - (v45 * *&a10)) + (v62 * *&a10)) * *&a11)) + (((v62 - (v62 * *&a10)) + (COERCE_FLOAT(bswap32(v63[1].u32[0])) * *&a10)) * *&a11);
  v64 = vrev32_s8(*v61);
  v65 = vmla_n_f32(vmls_lane_f32(v44, v44, *&a10, 0), v64, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v64, v64, *&a10, 0), vrev32_s8(*v63), *&a10));
  v44 = vmla_n_f32(vmls_lane_f32(v65, v65, *&a11, 0), *&a9, *&a11);
  v47 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  *(v17 + 16) = v44;
  *(v17 + 24) = v45;
  *(v17 + 28) = v47;
  *(v18 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    v49 = (v17 + 44);
    a2 += v15;
    v50 = v69 - a2;
    a3 += v16;
    v51 = v71 - a3;
    v52 = --a4;
    while (1)
    {
      v53 = v18 + v48 + 1;
      v17 = (v49 - 7);
      if ((((a2 - v70) | v50 | (a3 - v14) | v51) & 0x8000000000000000) != 0)
      {
        break;
      }

      v54 = v11 + SHIDWORD(a3) * v12;
      v41 = v54 + 12 * SHIDWORD(a2);
      v42 = *(result + 32);
      if (v19 >= v41)
      {
        v55 = (v54 + 12 * SHIDWORD(a2));
      }

      else
      {
        v55 = v19;
      }

      if (v55 < v42)
      {
        v55 = *(result + 32);
      }

      v44 = vrev32_s8(*v55);
      v56 = bswap32(v55[1].u32[0]);
      if (v13)
      {
        v46 = *(v13 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v46 & 0xF) != 0)
        {
          v45 = *&v56;
          v29 = -1;
          v18 = v53;
          goto LABEL_52;
        }
      }

      --a4;
      *(v49 - 3) = v44;
      v57 = v18 + v48++;
      *(v49 - 1) = v56;
      *v49 = 1065353216;
      v49 += 4;
      a2 += v15;
      *(v57 + 2) = -1;
      v50 -= v15;
      a3 += v16;
      v51 -= v16;
      if (v52 == v48)
      {
        return result;
      }
    }

    v18 += v48 + 1;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBf(uint64_t result, unint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 64);
  v15 = *(result + 72);
  v16 = *(result + 80);
  v17 = *(result + 88);
  v18 = *(result + 112);
  v19 = *(result + 120);
  v20 = *(result + 152) - 16;
  v21 = *(result + 144) - 1;
  v22 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  v66 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v15)
    {
      if (a3 <= v17)
      {
        v31 = (a3 >> 22) & 0x3C0;
        v32 = 0x3FFFFFFF;
        HIDWORD(v33) = HIDWORD(a3);
      }

      else
      {
        v27 = *(result + 216);
        v28 = *(result + 224) + v17;
        v29 = v28 - a3 + (v27 >> 1);
        if (v29 < 1)
        {
          goto LABEL_34;
        }

        if (v29 >= v27)
        {
          LODWORD(v30) = 0x3FFFFFFF;
        }

        else
        {
          v30 = (*(result + 232) * v29) >> 32;
        }

        v32 = v30 | v66;
        v33 = v28 - 0x1000000;
        v31 = 448;
      }
    }

    else
    {
      v23 = *(result + 216);
      v24 = v15 - *(result + 224);
      v25 = a3 - v24 + (v23 >> 1);
      if (v25 < 1)
      {
        goto LABEL_34;
      }

      if (v25 >= v23)
      {
        LODWORD(v26) = 0x3FFFFFFF;
      }

      else
      {
        v26 = (*(result + 232) * v25) >> 32;
      }

      v32 = v26 | v66;
      v33 = v24 + 0x1000000;
      v31 = 512;
    }

    if (a2 >= v14)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v14 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v32 = ((v32 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v66;
      }

      v37 = v35 + 0x1000000;
      v38 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v18;
    a3 += v19;
    v20 += 16;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v38 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_26;
  }

  v39 = *(result + 192);
  v40 = *(result + 200) + v16;
  v41 = v40 - a2 + (v39 >> 1);
  if (v41 < 1)
  {
    goto LABEL_34;
  }

  if (v41 < v39)
  {
    v32 = ((v32 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v66;
  }

  v37 = v40 - 0x1000000;
  v38 = 28;
LABEL_26:
  if (v32 < 0x400000)
  {
    goto LABEL_34;
  }

  v42 = v37 >> 32;
  v43 = v11 + SHIDWORD(v33) * v12;
  v44 = v43 + 12 * v42;
  v45 = *(result + 32);
  if (v22 >= v44)
  {
    v46 = (v43 + 12 * v42);
  }

  else
  {
    v46 = v22;
  }

  if (v46 < v45)
  {
    v46 = *(result + 32);
  }

  v47 = *v46;
  v48 = v46[1].f32[0];
  if (!v13)
  {
    goto LABEL_36;
  }

  v49 = *(v13 + (v38 | v31));
LABEL_52:
  v57 = v49 & 0xF;
  v58 = HIBYTE(v49) & 3;
  if (v57 == 1)
  {
    v65 = v44 + SBYTE1(v49) * v12;
    if (v22 < v65)
    {
      v65 = v22;
    }

    if (v65 < v45)
    {
      v65 = v45;
    }

    v64 = *(v65 + 8);
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v58 + 3];
    a10 = *v65;
    goto LABEL_75;
  }

  if (v57 == 2)
  {
    v63 = v44 + 12 * SBYTE2(v49);
    if (v22 < v63)
    {
      v63 = v22;
    }

    if (v63 < v45)
    {
      v63 = v45;
    }

    v64 = *(v63 + 8);
    LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v49 >> 28) & 3) + 3];
    a10 = *v63;
LABEL_75:
    v47 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a9, 0), *&a10, *&a9);
    v48 = (v48 - (v48 * *&a9)) + (v64 * *&a9);
    v50 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v57 != 3)
  {
LABEL_36:
    v50 = 1.0;
    goto LABEL_37;
  }

  v59 = v44 + 12 * SBYTE2(v49);
  if (v22 >= v59)
  {
    v60 = (v44 + 12 * SBYTE2(v49));
  }

  else
  {
    v60 = v22;
  }

  if (v60 < v45)
  {
    v60 = v45;
  }

  v61 = (v59 + SBYTE1(v49) * v12);
  if (v22 < v61)
  {
    v61 = v22;
  }

  if (v61 < v45)
  {
    v61 = v45;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v58 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v49 >> 28) & 3) + 3];
  v48 = (((v48 - (v48 * *&a10)) + (v60[1].f32[0] * *&a10)) - (((v48 - (v48 * *&a10)) + (v60[1].f32[0] * *&a10)) * *&a11)) + (((v60[1].f32[0] - (v60[1].f32[0] * *&a10)) + (v61[1].f32[0] * *&a10)) * *&a11);
  v62 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a10, 0), *v60, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(*v60, *v60, *&a10, 0), *v61, *&a10));
  v47 = vmla_n_f32(vmls_lane_f32(v62, v62, *&a11, 0), *&a9, *&a11);
  v50 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  *(v20 + 16) = v47;
  *(v20 + 24) = v48;
  *(v20 + 28) = v50;
  *(v21 + 1) = v32 >> 22;
  if (a4 != 1)
  {
    v51 = 0;
    v52 = (v20 + 44);
    a2 += v18;
    v53 = v16 - a2;
    a3 += v19;
    v54 = v17 - a3;
    while ((((a2 - v14) | v53 | (a3 - v15) | v54) & 0x8000000000000000) == 0)
    {
      v44 = v11 + SHIDWORD(a3) * v12 + 12 * SHIDWORD(a2);
      v45 = *(result + 32);
      if (v22 >= v44)
      {
        v55 = v11 + SHIDWORD(a3) * v12 + 12 * SHIDWORD(a2);
      }

      else
      {
        v55 = v22;
      }

      if (v55 < v45)
      {
        v55 = *(result + 32);
      }

      v47 = *v55;
      v48 = *(v55 + 8);
      if (v13)
      {
        v49 = *(v13 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v49 & 0xF) != 0)
        {
          v21 += v51 + 1;
          v20 = (v52 - 7);
          a4 += ~v51;
          v32 = -1;
          goto LABEL_52;
        }
      }

      *(v52 - 3) = v47;
      *(v52 - 1) = v48;
      v56 = v21 + v51++;
      *v52 = 1.0;
      v52 += 4;
      a2 += v18;
      *(v56 + 2) = -1;
      v53 -= v18;
      a3 += v19;
      v54 -= v19;
      if (a4 - 1 == v51)
      {
        return result;
      }
    }

    v21 += v51 + 1;
    v20 = (v52 - 7);
    a4 += ~v51;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBAF_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10)
{
  v10 = *(result + 24);
  v11 = *(result + 112);
  v12 = *(result + 48);
  v13 = *(result + 56);
  if (v12)
  {
    v120 = *(result + 112);
    if (v11 > v12)
    {
      v120 = v11 % v12;
    }
  }

  else
  {
    v120 = 0;
  }

  v14 = *(result + 176);
  v15 = *(result + 32);
  v16 = *(result + 120);
  if (v13)
  {
    v17 = v16 % v13;
    if (v16 <= v13)
    {
      v17 = *(result + 120);
    }

    v119 = v17;
  }

  else
  {
    v119 = 0;
  }

  v115 = *(result + 80);
  v116 = *(result + 64);
  v117 = *(result + 88);
  v118 = *(result + 72);
  v114 = *(result + 188);
  v18 = *(result + 152) - 16;
  v19 = *(result + 144) - 1;
  v20 = *(result + 40);
  v21 = v15 + ((*(result + 260) - 1) * v10) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_11:
    if (a3 >= v118)
    {
      if (a3 <= v117)
      {
        v30 = 0;
        v31 = (a3 >> 22) & 0x3C0;
        v32 = 0x3FFFFFFF;
        v33 = a3;
      }

      else
      {
        v26 = *(result + 216);
        v27 = *(result + 224) + v117;
        v28 = v27 - a3 + (v26 >> 1);
        if (v28 < 1)
        {
          goto LABEL_51;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(result + 232) * v28) >> 32;
        }

        v32 = v114 | v29;
        v33 = v27 - 0x1000000;
        v30 = a3 - (v27 - 0x1000000);
        v31 = 448;
      }
    }

    else
    {
      v22 = *(result + 216);
      v23 = v118 - *(result + 224);
      v24 = a3 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_51;
      }

      if (v24 >= v22)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(result + 232) * v24) >> 32;
      }

      v32 = v114 | v25;
      v33 = v23 + 0x1000000;
      v30 = a3 - (v23 + 0x1000000);
      v31 = 512;
    }

    if (a2 >= v116)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v116 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v32 = ((v32 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v114;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
      goto LABEL_35;
    }

LABEL_51:
    --a4;
    a2 += v11;
    a3 += v16;
    v18 += 16;
    *++v19 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v115)
  {
    v38 = 0;
    v39 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_35;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v115;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_51;
  }

  if (v42 < v40)
  {
    v32 = ((v32 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v114;
  }

  v37 = v41 - 0x1000000;
  v38 = a2 - (v41 - 0x1000000);
  v39 = 28;
LABEL_35:
  if (v32 < 0x400000)
  {
    goto LABEL_51;
  }

  if (v12)
  {
    v43 = (v13 & ((v33 % v13) >> 63)) + v33 % v13;
    v44 = (v12 & ((v37 % v12) >> 63)) + v37 % v12;
    if (v43 >= v13)
    {
      v45 = v13;
    }

    else
    {
      v45 = 0;
    }

    v33 = v43 - v45;
    if (v44 >= v12)
    {
      v46 = v12;
    }

    else
    {
      v46 = 0;
    }

    v37 = v44 - v46;
    v30 += v33;
    v38 += v37;
  }

  v47 = v15 + SHIDWORD(v33) * v10;
  v48 = v37 >> 32;
  v49 = v47 + 16 * v48;
  v50 = *(result + 32);
  if (v21 >= v49)
  {
    v51 = (v47 + 16 * v48);
  }

  else
  {
    v51 = v21;
  }

  if (v51 < v50)
  {
    v51 = *(result + 32);
  }

  if (v20)
  {
    v52 = bswap32(v51[1].u32[1]);
  }

  else
  {
    v52 = 1.0;
  }

  *v53.f32 = vrev32_s8(*v51);
  v54.i64[0] = v53.i64[0];
  v54.i64[1] = __PAIR64__(v52, bswap32(v51[1].u32[0]));
  if (!v14)
  {
    goto LABEL_56;
  }

  v55 = *(v14 + (v39 | v31));
LABEL_83:
  v74 = v55 & 0xF;
  v75 = v55 >> 8;
  v76 = HIBYTE(v55) & 3;
  v53.i64[1] = v54.i64[1];
  switch(v74)
  {
    case 1:
      LODWORD(v107) = SBYTE1(v55);
      if (v12)
      {
        v108 = v75 << 56;
        v109 = v30 + (SBYTE1(v55) << 32);
        v110 = v13 & (v109 >> 63);
        if (v110 + v109 >= v13)
        {
          v111 = v13;
        }

        else
        {
          v111 = 0;
        }

        v107 = (v110 + (v108 >> 24) - v111) >> 32;
      }

      v112 = (v49 + v107 * v10);
      if (v21 < v112)
      {
        v112 = v21;
      }

      if (v112 >= v50)
      {
        v113 = v112;
      }

      else
      {
        v113 = v50;
      }

      *v103.f32 = vrev32_s8(*v113);
      v104 = bswap32(v113[1].u32[0]);
      v105 = 1.0;
      if (v20)
      {
        v105 = bswap32(v113[1].u32[1]);
      }

      v106 = &interpolate_rgbaf_21860[4 * v76];
      goto LABEL_133;
    case 2:
      v97 = SBYTE2(v55);
      if (v12)
      {
        v98 = v38 + (SBYTE2(v55) << 32);
        v99 = v12 & (v98 >> 63);
        if (v99 + v98 >= v12)
        {
          v100 = v12;
        }

        else
        {
          v100 = 0;
        }

        v97 = (v99 + ((HIWORD(v55) << 56) >> 24) - v100) >> 32;
      }

      v101 = (v49 + 16 * v97);
      if (v21 < v101)
      {
        v101 = v21;
      }

      if (v101 >= v50)
      {
        v102 = v101;
      }

      else
      {
        v102 = v50;
      }

      *v103.f32 = vrev32_s8(*v102);
      v104 = bswap32(v102[1].u32[0]);
      v105 = 1.0;
      if (v20)
      {
        v105 = bswap32(v102[1].u32[1]);
      }

      v106 = &interpolate_rgbaf_21860[4 * ((v55 >> 28) & 3)];
LABEL_133:
      a8.i32[0] = v106[3];
      v103.i64[1] = __PAIR64__(v105, v104);
      v96 = vmlaq_n_f32(vmlsq_lane_f32(v53, v53, *a8.f32, 0), v103, a8.f32[0]);
      goto LABEL_134;
    case 3:
      LODWORD(v77) = SBYTE1(v55);
      v78 = SBYTE2(v55);
      if (v12)
      {
        v79 = v75 << 56;
        v80 = HIWORD(v55) << 56;
        v81 = v30 + (v79 >> 24);
        v82 = v38 + (v80 >> 24);
        v83 = v13 & (v81 >> 63);
        v84 = v12 & (v82 >> 63);
        v85 = v84 + v82;
        if (v83 + v81 >= v13)
        {
          v86 = v13;
        }

        else
        {
          v86 = 0;
        }

        if (v85 >= v12)
        {
          v87 = v12;
        }

        else
        {
          v87 = 0;
        }

        v77 = (v83 + (v79 >> 24) - v86) >> 32;
        v78 = (v84 + (v80 >> 24) - v87) >> 32;
      }

      v88 = v77 * v10;
      v89 = (v49 + 16 * v78);
      if (v21 < v89)
      {
        v89 = v21;
      }

      if (v89 < v50)
      {
        v89 = v50;
      }

      *v90.f32 = vrev32_s8(*v89);
      v91 = bswap32(v89[1].u32[0]);
      v92 = 1.0;
      LODWORD(a9) = 1.0;
      if (v20)
      {
        LODWORD(a9) = bswap32(v89[1].u32[1]);
      }

      v93 = (v49 + v88 + 16 * v78);
      if (v21 < v93)
      {
        v93 = v21;
      }

      if (v93 < v50)
      {
        v93 = v50;
      }

      *a8.f32 = vrev32_s8(*v93);
      v94 = bswap32(v93[1].u32[0]);
      if (v20)
      {
        v92 = bswap32(v93[1].u32[1]);
      }

      LODWORD(a10) = interpolate_rgbaf_21860[4 * v76 + 3];
      v90.i64[1] = __PAIR64__(LODWORD(a9), v91);
      LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v55 >> 28) & 3) + 3];
      v95 = vmlaq_n_f32(vmlsq_lane_f32(v53, v53, *&a10, 0), v90, *&a10);
      a8.i64[1] = __PAIR64__(v92, v94);
      v96 = vmlaq_n_f32(vmlsq_lane_f32(v95, v95, *&a9, 0), vmlaq_n_f32(vmlsq_lane_f32(v90, v90, *&a10, 0), a8, *&a10), *&a9);
LABEL_134:
      v54 = v96;
      break;
  }

LABEL_56:
  *(v18 + 16) = v54;
  *(v19 + 1) = v32 >> 22;
  if (a4 != 1)
  {
    v56 = 0;
    v57 = (v18 + 44);
    a2 += v11;
    v58 = v115 - a2;
    a3 += v16;
    v59 = v117 - a3;
    v60 = --a4;
    while (1)
    {
      v61 = v19 + v56 + 1;
      v18 = (v57 - 7);
      if (((v59 | v58 | (a3 - v118) | (a2 - v116)) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v12)
      {
        v62 = (v13 & ((v30 + v119) >> 63)) + v30 + v119;
        v63 = (v12 & ((v38 + v120) >> 63)) + v38 + v120;
        if (v62 >= v13)
        {
          v64 = v13;
        }

        else
        {
          v64 = 0;
        }

        v30 = v62 - v64;
        if (v63 >= v12)
        {
          v65 = v12;
        }

        else
        {
          v65 = 0;
        }

        v38 = v63 - v65;
        v66 = HIDWORD(v30);
        v67 = v38;
      }

      else
      {
        v66 = HIDWORD(a3);
        v67 = a2;
      }

      v68 = v15 + v66 * v10;
      v69 = v67 >> 32;
      v49 = v68 + 16 * v69;
      v50 = *(result + 32);
      if (v21 >= v49)
      {
        v70 = (v68 + 16 * v69);
      }

      else
      {
        v70 = v21;
      }

      if (v70 < v50)
      {
        v70 = *(result + 32);
      }

      if (v20)
      {
        v71 = bswap32(v70[1].u32[1]);
      }

      else
      {
        v71 = 1.0;
      }

      *v53.f32 = vrev32_s8(*v70);
      v72 = bswap32(v70[1].u32[0]);
      if (v14)
      {
        v55 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v55 & 0xF) != 0)
        {
          v54.i64[0] = v53.i64[0];
          v54.i64[1] = __PAIR64__(v71, v72);
          v32 = -1;
          v19 = v61;
          goto LABEL_83;
        }
      }

      --a4;
      *(v57 - 3) = v53.i64[0];
      *(v57 - 1) = v72;
      v73 = v19 + v56++;
      *v57 = v71;
      v57 += 4;
      a2 += v11;
      *(v73 + 2) = -1;
      v58 -= v11;
      a3 += v16;
      v59 -= v16;
      if (v60 == v56)
      {
        return result;
      }
    }

    v19 += v56 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBAf_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = *(result + 24);
  v14 = *(result + 112);
  v15 = *(result + 48);
  v16 = *(result + 56);
  if (v15)
  {
    v125 = *(result + 112);
    if (v14 > v15)
    {
      v125 = v14 % v15;
    }
  }

  else
  {
    v125 = 0;
  }

  v17 = *(result + 176);
  v18 = *(result + 32);
  v19 = *(result + 120);
  if (v16)
  {
    v20 = v19 % v16;
    if (v19 <= v16)
    {
      v20 = *(result + 120);
    }

    v124 = v20;
  }

  else
  {
    v124 = 0;
  }

  v120 = *(result + 80);
  v121 = *(result + 64);
  v122 = *(result + 88);
  v123 = *(result + 72);
  v119 = *(result + 188);
  v21 = *(result + 152) - 16;
  v22 = *(result + 144) - 1;
  v23 = *(result + 40);
  v24 = v18 + ((*(result + 260) - 1) * v13) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_11:
    if (a3 >= v123)
    {
      if (a3 <= v122)
      {
        v33 = 0;
        v34 = (a3 >> 22) & 0x3C0;
        v35 = 0x3FFFFFFF;
        v36 = a3;
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v122;
        v31 = v30 - a3 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_51;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v35 = v119 | v32;
        v36 = v30 - 0x1000000;
        v33 = a3 - (v30 - 0x1000000);
        v34 = 448;
      }
    }

    else
    {
      v25 = *(result + 216);
      v26 = v123 - *(result + 224);
      v27 = a3 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_51;
      }

      if (v27 >= v25)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v27) >> 32;
      }

      v35 = v119 | v28;
      v36 = v26 + 0x1000000;
      v33 = a3 - (v26 + 0x1000000);
      v34 = 512;
    }

    if (a2 >= v121)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v121 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v35 = ((v35 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v119;
      }

      v40 = v38 + 0x1000000;
      v41 = a2 - (v38 + 0x1000000);
      v42 = 32;
      goto LABEL_35;
    }

LABEL_51:
    --a4;
    a2 += v14;
    a3 += v19;
    v21 += 16;
    *++v22 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v120)
  {
    v41 = 0;
    v42 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_35;
  }

  v43 = *(result + 192);
  v44 = *(result + 200) + v120;
  v45 = v44 - a2 + (v43 >> 1);
  if (v45 < 1)
  {
    goto LABEL_51;
  }

  if (v45 < v43)
  {
    v35 = ((v35 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v119;
  }

  v40 = v44 - 0x1000000;
  v41 = a2 - (v44 - 0x1000000);
  v42 = 28;
LABEL_35:
  if (v35 < 0x400000)
  {
    goto LABEL_51;
  }

  if (v15)
  {
    v46 = (v16 & ((v36 % v16) >> 63)) + v36 % v16;
    v47 = (v15 & ((v40 % v15) >> 63)) + v40 % v15;
    if (v46 >= v16)
    {
      v48 = v16;
    }

    else
    {
      v48 = 0;
    }

    v36 = v46 - v48;
    if (v47 >= v15)
    {
      v49 = v15;
    }

    else
    {
      v49 = 0;
    }

    v40 = v47 - v49;
    v33 += v36;
    v41 += v40;
  }

  v50 = v18 + SHIDWORD(v36) * v13;
  v51 = v40 >> 32;
  v52 = v50 + 16 * v51;
  v53 = *(result + 32);
  if (v24 >= v52)
  {
    v54 = v50 + 16 * v51;
  }

  else
  {
    v54 = v24;
  }

  if (v54 < v53)
  {
    v54 = *(result + 32);
  }

  if (v23)
  {
    v55 = *(v54 + 12);
  }

  else
  {
    v55 = 1.0;
  }

  v56.i64[0] = *v54;
  v56.i32[2] = *(v54 + 8);
  v56.f32[3] = v55;
  if (v17)
  {
    v57 = *(v17 + (v42 | v34));
LABEL_84:
    v77 = v57 & 0xF;
    v78 = v57 >> 8;
    v79 = HIBYTE(v57) & 3;
    if (v77 == 1)
    {
      LODWORD(v110) = SBYTE1(v57);
      if (v15)
      {
        v111 = v78 << 56;
        v112 = v33 + (v78 << 32);
        v113 = v16 & (v112 >> 63);
        if (v113 + v112 >= v16)
        {
          v114 = v16;
        }

        else
        {
          v114 = 0;
        }

        v110 = (v113 + (v111 >> 24) - v114) >> 32;
      }

      v115 = v52 + v110 * v13;
      if (v24 < v115)
      {
        v115 = v24;
      }

      if (v115 >= v53)
      {
        v116 = v115;
      }

      else
      {
        v116 = v53;
      }

      v106.i64[0] = *v116;
      v107 = *(v116 + 8);
      v108 = 1.0;
      if (v23)
      {
        v108 = *(v116 + 12);
      }

      v109 = &interpolate_rgbaf_21860[4 * v79];
    }

    else
    {
      if (v77 != 2)
      {
        if (v77 == 3)
        {
          LODWORD(v80) = SBYTE1(v57);
          v81 = SBYTE2(v57);
          if (v15)
          {
            v82 = v78 << 56;
            v83 = v33 + (v82 >> 24);
            v84 = v41 + (SBYTE2(v57) << 32);
            v85 = v16 & (v83 >> 63);
            v86 = v15 & (v84 >> 63);
            v87 = v86 + v84;
            if (v85 + v83 >= v16)
            {
              v88 = v16;
            }

            else
            {
              v88 = 0;
            }

            if (v87 >= v15)
            {
              v89 = v15;
            }

            else
            {
              v89 = 0;
            }

            v80 = (v85 + (v82 >> 24) - v88) >> 32;
            v81 = (v86 + ((HIWORD(v57) << 56) >> 24) - v89) >> 32;
          }

          v90 = v80 * v13;
          v91 = 16 * v81;
          v92 = v52 + 16 * v81;
          if (v24 < v92)
          {
            v92 = v24;
          }

          if (v92 >= v53)
          {
            v93 = v92;
          }

          else
          {
            v93 = v53;
          }

          v94.i64[0] = *v93;
          if (v23)
          {
            v95 = *(v93 + 12);
            v96 = v52 + v90 + v91;
            if (v24 < v96)
            {
              v96 = v24;
            }

            if (v96 < v53)
            {
              v96 = v53;
            }

            v97.i64[0] = *v96;
            v98 = *(v96 + 8);
            v99 = *(v96 + 12);
          }

          else
          {
            v117 = v52 + v90 + v91;
            if (v24 < v117)
            {
              v117 = v24;
            }

            if (v117 < v53)
            {
              v117 = v53;
            }

            v97.i64[0] = *v117;
            v98 = *(v117 + 8);
            v95 = 1.0;
            v99 = 1.0;
          }

          LODWORD(a12) = interpolate_rgbaf_21860[4 * (HIBYTE(v57) & 3) + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v57 >> 28) & 3) + 3];
          v94.i64[1] = __PAIR64__(LODWORD(v95), *(v93 + 8));
          v118 = vmlaq_n_f32(vmlsq_lane_f32(v56, v56, *&a12, 0), v94, *&a12);
          v97.i64[1] = __PAIR64__(LODWORD(v99), v98);
          v56 = vmlaq_n_f32(vmlsq_lane_f32(v118, v118, v12, 0), vmlaq_n_f32(vmlsq_lane_f32(v94, v94, *&a12, 0), v97, *&a12), v12.f32[0]);
        }

        goto LABEL_56;
      }

      v100 = SBYTE2(v57);
      if (v15)
      {
        v101 = v41 + (SBYTE2(v57) << 32);
        v102 = v15 & (v101 >> 63);
        if (v102 + v101 >= v15)
        {
          v103 = v15;
        }

        else
        {
          v103 = 0;
        }

        v100 = (v102 + ((HIWORD(v57) << 56) >> 24) - v103) >> 32;
      }

      v104 = v52 + 16 * v100;
      if (v24 < v104)
      {
        v104 = v24;
      }

      if (v104 >= v53)
      {
        v105 = v104;
      }

      else
      {
        v105 = v53;
      }

      v106.i64[0] = *v105;
      v107 = *(v105 + 8);
      v108 = 1.0;
      if (v23)
      {
        v108 = *(v105 + 12);
      }

      v109 = &interpolate_rgbaf_21860[4 * ((v57 >> 28) & 3)];
    }

    LODWORD(a9) = v109[3];
    v106.i64[1] = __PAIR64__(LODWORD(v108), v107);
    v56 = vmlaq_n_f32(vmlsq_lane_f32(v56, v56, *&a9, 0), v106, *&a9);
  }

LABEL_56:
  *(v21 + 16) = v56;
  *(v22 + 1) = v35 >> 22;
  if (a4 != 1)
  {
    v58 = 0;
    v59 = (v21 + 44);
    v60 = a4 - 1;
    a2 += v14;
    v61 = v120 - a2;
    a3 += v19;
    v62 = v122 - a3;
    --a4;
    while (1)
    {
      v63 = v22 + v58 + 1;
      v21 = (v59 - 7);
      if (((v62 | v61 | (a3 - v123) | (a2 - v121)) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v15)
      {
        v64 = (v16 & ((v33 + v124) >> 63)) + v33 + v124;
        v65 = (v15 & ((v41 + v125) >> 63)) + v41 + v125;
        if (v64 >= v16)
        {
          v66 = v16;
        }

        else
        {
          v66 = 0;
        }

        v33 = v64 - v66;
        if (v65 >= v15)
        {
          v67 = v15;
        }

        else
        {
          v67 = 0;
        }

        v41 = v65 - v67;
        v68 = HIDWORD(v33);
        v69 = v65 - v67;
      }

      else
      {
        v68 = HIDWORD(a3);
        v69 = a2;
      }

      v70 = v18 + v68 * v13;
      v71 = v69 >> 32;
      v52 = v70 + 16 * v71;
      v53 = *(result + 32);
      if (v24 >= v52)
      {
        v72 = v70 + 16 * v71;
      }

      else
      {
        v72 = v24;
      }

      if (v72 >= v53)
      {
        v73 = v72;
      }

      else
      {
        v73 = *(result + 32);
      }

      if (v23)
      {
        v74 = *(v73 + 12);
      }

      else
      {
        v74 = 1.0;
      }

      v56.i64[0] = *v73;
      v75 = *(v73 + 8);
      if (v17)
      {
        v57 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v57 & 0xF) != 0)
        {
          v56.i64[1] = __PAIR64__(LODWORD(v74), v75);
          v35 = -1;
          v22 = v63;
          goto LABEL_84;
        }
      }

      --a4;
      *(v59 - 3) = v56.i64[0];
      v76 = v22 + v58++;
      *(v59 - 1) = v75;
      *v59 = LODWORD(v74);
      v59 += 4;
      a2 += v14;
      *(v76 + 2) = -1;
      v61 -= v14;
      a3 += v19;
      v62 -= v19;
      if (v60 == v58)
      {
        return result;
      }
    }

    v22 += v58 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t RGBAf_sample_CMYKF(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 32);
  v14 = *(result + 40);
  v15 = *(result + 24);
  v16 = *(result + 28);
  v17 = *(result + 176);
  v18 = *(result + 72);
  v96 = *(result + 80);
  v98 = *(result + 88);
  v20 = *(result + 112);
  v19 = *(result + 120);
  v21 = (*(result + 152) - 16);
  v22 = *(result + 144) - 1;
  v23 = *(result + 260) - 1;
  v24 = *(result + 256) - 1;
  v25 = v14 + (v23 * v16) + 4 * v24;
  v26 = v13 + (v23 * v15) + 16 * v24 - 16;
  v95 = *(result + 188);
  v97 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v98)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        v37 = a3;
        v38 = v97;
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v98;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_40;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v38 = v97;
        v36 = v34 | v95;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v18 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_40;
      }

      if (v29 >= v27)
      {
        LODWORD(v30) = 0x3FFFFFFF;
      }

      else
      {
        v30 = (*(result + 232) * v29) >> 32;
      }

      v38 = v97;
      v36 = v30 | v95;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v38)
    {
      break;
    }

    v39 = *(result + 192);
    v40 = v38 - *(result + 200);
    v41 = a2 - v40 + (v39 >> 1);
    if (v41 >= 1)
    {
      if (v41 < v39)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v95;
      }

      v42 = v40 + 0x1000000;
      v43 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v20;
    a3 += v19;
    v21 += 2;
    *++v22 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v96)
  {
    v43 = (a2 >> 26) & 0x3C;
    v42 = a2;
    goto LABEL_26;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v96;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_40;
  }

  if (v46 < v44)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v95;
  }

  v42 = v45 - 0x1000000;
  v43 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_40;
  }

  v47 = v37 >> 32;
  v48 = v13 + SHIDWORD(v37) * v15;
  v49 = (v42 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v48 + 4 * v49;
  v51 = *(result + 32);
  if (v26 >= v50)
  {
    v52 = (v48 + 4 * v49);
  }

  else
  {
    v52 = v26;
  }

  if (v52 >= v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = *(result + 32);
  }

  if (v14)
  {
    v54 = v14 + v47 * v16 + v49;
    v55 = *(result + 40);
    if (v25 >= v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = v25;
    }

    if (v56 >= v55)
    {
      v55 = v56;
    }

    LODWORD(a5) = bswap32(*v55);
  }

  else
  {
    v54 = 0;
    LODWORD(a5) = 1.0;
  }

  v57 = vrev32_s8(*v53);
  v58 = vrev32_s8(v53[1]);
  if (v17)
  {
    v59 = *(v17 + (v43 | v35));
LABEL_68:
    v69 = v59 & 0xF;
    v70 = HIBYTE(v59) & 3;
    if (v69 == 1)
    {
      v93 = (v50 + SBYTE1(v59) * v15);
      if (v26 < v93)
      {
        v93 = v26;
      }

      if (v93 < v51)
      {
        v93 = v51;
      }

      v88 = vrev32_s8(*v93);
      v89 = vrev32_s8(v93[1]);
      v90 = 1.0;
      if (v14)
      {
        v94 = (v54 + SBYTE1(v59) * v16);
        if (v25 < v94)
        {
          v94 = v25;
        }

        if (v94 < *(result + 40))
        {
          v94 = *(result + 40);
        }

        v90 = COERCE_FLOAT(bswap32(*v94));
      }

      v92 = &interpolate_cmykaf[5 * v70];
    }

    else
    {
      if (v69 != 2)
      {
        if (v69 == 3)
        {
          v71 = HIWORD(v59) << 56;
          v72 = v50 + (v71 >> 52);
          if (v26 >= v72)
          {
            v73 = (v50 + (v71 >> 52));
          }

          else
          {
            v73 = v26;
          }

          if (v73 < v51)
          {
            v73 = v51;
          }

          v74 = v72 + SBYTE1(v59) * v15;
          if (v26 < v74)
          {
            v74 = v26;
          }

          if (v74 < v51)
          {
            v74 = v51;
          }

          v75 = vrev32_s8(*v73);
          a11 = *(v74 + 8);
          v76 = vrev32_s8(*v74);
          v77 = vrev32_s8(v73[1]);
          v78 = vrev32_s8(*&a11);
          v79 = 1.0;
          LODWORD(a11) = 1.0;
          if (v14)
          {
            v80 = v54 + (v71 >> 54);
            v81 = *(result + 40);
            if (v25 >= v80)
            {
              v82 = (v54 + (v71 >> 54));
            }

            else
            {
              v82 = v25;
            }

            if (v82 < v81)
            {
              v82 = *(result + 40);
            }

            LODWORD(a11) = bswap32(*v82);
            v83 = (v80 + SBYTE1(v59) * v16);
            if (v25 < v83)
            {
              v83 = v25;
            }

            if (v83 < v81)
            {
              v83 = *(result + 40);
            }

            v79 = COERCE_FLOAT(bswap32(*v83));
          }

          v11.i32[0] = interpolate_cmykaf[5 * v70 + 4];
          v12.i32[0] = interpolate_cmykaf[5 * ((v59 >> 28) & 3) + 4];
          v84 = vmla_n_f32(vmls_lane_f32(v57, v57, v11, 0), v75, v11.f32[0]);
          v57 = vmla_n_f32(vmls_lane_f32(v84, v84, v12, 0), vmla_n_f32(vmls_lane_f32(v75, v75, v11, 0), v76, v11.f32[0]), v12.f32[0]);
          v85 = vmla_n_f32(vmls_lane_f32(v58, v58, v11, 0), v77, v11.f32[0]);
          v58 = vmla_n_f32(vmls_lane_f32(v85, v85, v12, 0), vmla_n_f32(vmls_lane_f32(v77, v77, v11, 0), v78, v11.f32[0]), v12.f32[0]);
          *&a5 = (((*&a5 - (*&a5 * v11.f32[0])) + (*&a11 * v11.f32[0])) - (((*&a5 - (*&a5 * v11.f32[0])) + (*&a11 * v11.f32[0])) * v12.f32[0])) + (((*&a11 - (*&a11 * v11.f32[0])) + (v79 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_45;
      }

      v86 = HIWORD(v59) << 56;
      v87 = (v50 + (v86 >> 52));
      if (v26 < v87)
      {
        v87 = v26;
      }

      if (v87 < v51)
      {
        v87 = v51;
      }

      v88 = vrev32_s8(*v87);
      v89 = vrev32_s8(v87[1]);
      v90 = 1.0;
      if (v14)
      {
        v91 = (v54 + (v86 >> 54));
        if (v25 < v91)
        {
          v91 = v25;
        }

        if (v91 < *(result + 40))
        {
          v91 = *(result + 40);
        }

        v90 = COERCE_FLOAT(bswap32(*v91));
      }

      v92 = &interpolate_cmykaf[5 * ((v59 >> 28) & 3)];
    }

    LODWORD(a11) = v92[4];
    v57 = vmla_n_f32(vmls_lane_f32(v57, v57, *&a11, 0), v88, *&a11);
    v58 = vmla_n_f32(vmls_lane_f32(v58, v58, *&a11, 0), v89, *&a11);
    *&a5 = (*&a5 - (*&a5 * *&a11)) + (v90 * *&a11);
  }

LABEL_45:
  v21[2] = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v57), vdup_lane_s32(v58, 1));
  v21[3].f32[0] = (*&a5 - v58.f32[0]) - v58.f32[1];
  v21[3].i32[1] = LODWORD(a5);
  *(v22 + 1) = v36 >> 22;
  if (a4 != 1)
  {
    v60 = 0;
    v61 = &v21[5] + 1;
    a2 += v20;
    v62 = v96 - a2;
    a3 += v19;
    v63 = v98 - a3;
    while (((v63 | v62 | (a3 - v18) | (a2 - v97)) & 0x8000000000000000) == 0)
    {
      v64 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v13 + SHIDWORD(a3) * v15 + 4 * v64;
      v51 = *(result + 32);
      if (v26 >= v50)
      {
        v65 = (v13 + SHIDWORD(a3) * v15 + 4 * v64);
      }

      else
      {
        v65 = v26;
      }

      if (v65 < v51)
      {
        v65 = *(result + 32);
      }

      if (v14)
      {
        v54 = v14 + SHIDWORD(a3) * v16 + v64;
        v66 = *(result + 40);
        if (v25 >= v54)
        {
          v67 = v54;
        }

        else
        {
          v67 = v25;
        }

        if (v67 >= v66)
        {
          v66 = v67;
        }

        LODWORD(a5) = bswap32(*v66);
      }

      else
      {
        LODWORD(a5) = 1.0;
      }

      v57 = vrev32_s8(*v65);
      v58 = vrev32_s8(v65[1]);
      if (v17)
      {
        v59 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v59 & 0xF) != 0)
        {
          v22 += v60 + 1;
          v21 = (v61 - 7);
          a4 += ~v60;
          v36 = -1;
          goto LABEL_68;
        }
      }

      *(v61 - 3) = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v57), vdup_lane_s32(v58, 1));
      *(v61 - 1) = (*&a5 - v58.f32[0]) - v58.f32[1];
      *v61 = *&a5;
      v68 = v22 + v60++;
      v61 += 4;
      a2 += v20;
      *(v68 + 2) = -1;
      v62 -= v20;
      a3 += v19;
      v63 -= v19;
      if (a4 - 1 == v60)
      {
        return result;
      }
    }

    v22 += v60 + 1;
    v21 = (v61 - 7);
    a4 += ~v60;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_CMYKf(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 32);
  v14 = *(result + 40);
  v15 = *(result + 24);
  v16 = *(result + 28);
  v17 = *(result + 176);
  v18 = *(result + 72);
  v97 = *(result + 80);
  v99 = *(result + 88);
  v20 = *(result + 112);
  v19 = *(result + 120);
  v21 = (*(result + 152) - 16);
  v22 = *(result + 144) - 1;
  v23 = *(result + 260) - 1;
  v24 = *(result + 256) - 1;
  v25 = v14 + (v23 * v16) + 4 * v24;
  v26 = v13 + (v23 * v15) + 16 * v24 - 16;
  v96 = *(result + 188);
  v98 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v99)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        v37 = a3;
        v38 = v98;
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v99;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_40;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v38 = v98;
        v36 = v34 | v96;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v18 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_40;
      }

      if (v29 >= v27)
      {
        LODWORD(v30) = 0x3FFFFFFF;
      }

      else
      {
        v30 = (*(result + 232) * v29) >> 32;
      }

      v38 = v98;
      v36 = v30 | v96;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v38)
    {
      break;
    }

    v39 = *(result + 192);
    v40 = v38 - *(result + 200);
    v41 = a2 - v40 + (v39 >> 1);
    if (v41 >= 1)
    {
      if (v41 < v39)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v96;
      }

      v42 = v40 + 0x1000000;
      v43 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v20;
    a3 += v19;
    v21 += 2;
    *++v22 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v43 = (a2 >> 26) & 0x3C;
    v42 = a2;
    goto LABEL_26;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v97;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_40;
  }

  if (v46 < v44)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v96;
  }

  v42 = v45 - 0x1000000;
  v43 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_40;
  }

  v47 = v37 >> 32;
  v48 = v13 + SHIDWORD(v37) * v15;
  v49 = (v42 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v48 + 4 * v49;
  v51 = *(result + 32);
  if (v26 >= v50)
  {
    v52 = (v48 + 4 * v49);
  }

  else
  {
    v52 = v26;
  }

  if (v52 >= v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = *(result + 32);
  }

  if (v14)
  {
    v54 = v14 + v47 * v16 + v49;
    v55 = *(result + 40);
    if (v25 >= v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = v25;
    }

    if (v56 >= v55)
    {
      v55 = v56;
    }

    LODWORD(a5) = *v55;
  }

  else
  {
    v54 = 0;
    LODWORD(a5) = 1.0;
  }

  v58 = *v53;
  v57 = v53[1];
  if (v17)
  {
    v59 = *(v17 + (v43 | v35));
LABEL_68:
    v69 = v59 & 0xF;
    v70 = HIBYTE(v59) & 3;
    if (v69 == 1)
    {
      v94 = (v50 + SBYTE1(v59) * v15);
      if (v26 < v94)
      {
        v94 = v26;
      }

      if (v94 < v51)
      {
        v94 = v51;
      }

      v90 = *v94;
      v89 = v94[1];
      v91 = 1.0;
      if (v14)
      {
        v95 = (v54 + SBYTE1(v59) * v16);
        if (v25 < v95)
        {
          v95 = v25;
        }

        if (v95 < *(result + 40))
        {
          v95 = *(result + 40);
        }

        v91 = *v95;
      }

      v93 = &interpolate_cmykaf[5 * v70];
    }

    else
    {
      if (v69 != 2)
      {
        if (v69 == 3)
        {
          v71 = HIWORD(v59) << 56;
          v72 = v50 + (v71 >> 52);
          if (v26 >= v72)
          {
            v73 = (v50 + (v71 >> 52));
          }

          else
          {
            v73 = v26;
          }

          if (v73 < v51)
          {
            v73 = v51;
          }

          v74 = (v72 + SBYTE1(v59) * v15);
          if (v26 < v74)
          {
            v74 = v26;
          }

          if (v74 < v51)
          {
            v74 = v51;
          }

          v76 = *v73;
          v75 = v73[1];
          v78 = *v74;
          v77 = v74[1];
          v79 = 1.0;
          v80 = 1.0;
          if (v14)
          {
            v81 = v54 + (v71 >> 54);
            v82 = *(result + 40);
            if (v25 >= v81)
            {
              v83 = (v54 + (v71 >> 54));
            }

            else
            {
              v83 = v25;
            }

            if (v83 < v82)
            {
              v83 = *(result + 40);
            }

            v80 = *v83;
            v84 = (v81 + SBYTE1(v59) * v16);
            if (v25 < v84)
            {
              v84 = v25;
            }

            if (v84 < v82)
            {
              v84 = *(result + 40);
            }

            v79 = *v84;
          }

          v11.i32[0] = interpolate_cmykaf[5 * v70 + 4];
          v12.i32[0] = interpolate_cmykaf[5 * ((v59 >> 28) & 3) + 4];
          v85 = vmla_n_f32(vmls_lane_f32(v58, v58, v11, 0), v76, v11.f32[0]);
          v58 = vmla_n_f32(vmls_lane_f32(v85, v85, v12, 0), vmla_n_f32(vmls_lane_f32(v76, v76, v11, 0), v78, v11.f32[0]), v12.f32[0]);
          v86 = vmla_n_f32(vmls_lane_f32(v57, v57, v11, 0), v75, v11.f32[0]);
          v57 = vmla_n_f32(vmls_lane_f32(v86, v86, v12, 0), vmla_n_f32(vmls_lane_f32(v75, v75, v11, 0), v77, v11.f32[0]), v12.f32[0]);
          *&a5 = (((*&a5 - (*&a5 * v11.f32[0])) + (v80 * v11.f32[0])) - (((*&a5 - (*&a5 * v11.f32[0])) + (v80 * v11.f32[0])) * v12.f32[0])) + (((v80 - (v80 * v11.f32[0])) + (v79 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_45;
      }

      v87 = HIWORD(v59) << 56;
      v88 = (v50 + (v87 >> 52));
      if (v26 < v88)
      {
        v88 = v26;
      }

      if (v88 < v51)
      {
        v88 = v51;
      }

      v90 = *v88;
      v89 = v88[1];
      v91 = 1.0;
      if (v14)
      {
        v92 = (v54 + (v87 >> 54));
        if (v25 < v92)
        {
          v92 = v25;
        }

        if (v92 < *(result + 40))
        {
          v92 = *(result + 40);
        }

        v91 = *v92;
      }

      v93 = &interpolate_cmykaf[5 * ((v59 >> 28) & 3)];
    }

    LODWORD(a11) = v93[4];
    v58 = vmla_n_f32(vmls_lane_f32(v58, v58, *&a11, 0), v90, *&a11);
    v57 = vmla_n_f32(vmls_lane_f32(v57, v57, *&a11, 0), v89, *&a11);
    *&a5 = (*&a5 - (*&a5 * *&a11)) + (v91 * *&a11);
  }

LABEL_45:
  v21[2] = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v58), vdup_lane_s32(v57, 1));
  v21[3].f32[0] = (*&a5 - v57.f32[0]) - v57.f32[1];
  v21[3].i32[1] = LODWORD(a5);
  *(v22 + 1) = v36 >> 22;
  if (a4 != 1)
  {
    v60 = 0;
    v61 = &v21[5] + 1;
    a2 += v20;
    v62 = v97 - a2;
    a3 += v19;
    v63 = v99 - a3;
    while (((v63 | v62 | (a3 - v18) | (a2 - v98)) & 0x8000000000000000) == 0)
    {
      v64 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v13 + SHIDWORD(a3) * v15 + 4 * v64;
      v51 = *(result + 32);
      if (v26 >= v50)
      {
        v65 = (v13 + SHIDWORD(a3) * v15 + 4 * v64);
      }

      else
      {
        v65 = v26;
      }

      if (v65 < v51)
      {
        v65 = *(result + 32);
      }

      if (v14)
      {
        v54 = v14 + SHIDWORD(a3) * v16 + v64;
        v66 = *(result + 40);
        if (v25 >= v54)
        {
          v67 = v54;
        }

        else
        {
          v67 = v25;
        }

        if (v67 >= v66)
        {
          v66 = v67;
        }

        LODWORD(a5) = *v66;
      }

      else
      {
        LODWORD(a5) = 1.0;
      }

      v58 = *v65;
      v57 = v65[1];
      if (v17)
      {
        v59 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v59 & 0xF) != 0)
        {
          v22 += v60 + 1;
          v21 = (v61 - 7);
          a4 += ~v60;
          v36 = -1;
          goto LABEL_68;
        }
      }

      *(v61 - 3) = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v58), vdup_lane_s32(v57, 1));
      *(v61 - 1) = (*&a5 - v57.f32[0]) - v57.f32[1];
      *v61 = *&a5;
      v68 = v22 + v60++;
      v61 += 4;
      a2 += v20;
      *(v68 + 2) = -1;
      v62 -= v20;
      a3 += v19;
      v63 -= v19;
      if (a4 - 1 == v60)
      {
        return result;
      }
    }

    v22 += v60 + 1;
    v21 = (v61 - 7);
    a4 += ~v60;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

float32x2_t *RGBAf_pattern(uint64_t a1, float32x2_t *a2, unsigned int a3, int a4, float32x2_t *a5, float a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v15 = *(*a1 + 64);
  LODWORD(a9) = *v15;
  LODWORD(a12) = v15[1];
  if (a2 && a3 > 0xF || (v22 = a9, v23 = a12, v16 = malloc_type_malloc(0x40uLL, 0x1080040E00A32E4uLL), a9 = v22, a12 = v23, (a2 = v16) != 0))
  {
    if (*&a9 <= a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = *&a9;
    }

    if (*&a12 < a6)
    {
      v17 = *&a12;
    }

    if (a5)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        *&a9 = v17 * a5->f32[0];
        break;
      case 4:
        LODWORD(a8) = a5[2].i32[0];
        v19 = vmul_n_f32(vsub_f32(vsub_f32(vdup_lane_s32(*&a12, 0), *a5), vdup_lane_s32(*&a8, 0)), v17);
        *&a8 = (*&a12 - a5[1].f32[0]) - *&a8;
        goto LABEL_17;
      case 3:
        v19 = vmul_n_f32(*a5, v17);
        LODWORD(a8) = a5[1].i32[0];
LABEL_17:
        *&a9 = v17 * *&a8;
LABEL_20:
        *a2->f32 = xmmword_18439CB10;
        a2[3].i32[0] = 0;
        a2[2] = 1;
        a2[6] = v19;
        if (v17 >= *&a12)
        {
          v20 = 0;
        }

        else
        {
          v20 = a2 + 6;
        }

        a2[4] = &a2[6];
        a2[5] = v20;
        a2[7].i32[0] = LODWORD(a9);
        a2[7].f32[1] = v17;
        return a2;
    }

    v19 = vdup_lane_s32(*&a9, 0);
    goto LABEL_20;
  }

  return a2;
}

uint64_t RGBAf_mark_inner(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v778 = *MEMORY[0x1E69E9840];
  v17 = *(v2 + 96);
  v18 = *(v2 + 48);
  v19 = *(*(v1 + 56) + 16 * *v2 + 8 * (v17 == 0) + 4 * (v18 == 0));
  if (v19 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v2;
  v761 = *(v2 + 4);
  v22 = v761 - 1;
  if (v761 < 1)
  {
    return 0;
  }

  v742 = *(*(v1 + 56) + 16 * *v2 + 8 * (v17 == 0) + 4 * (v18 == 0));
  v23 = *(v2 + 8);
  v24 = (v23 - 1);
  if (v23 < 1)
  {
    return 0;
  }

  v25 = v1;
  v26 = *(v2 + 136);
  if ((*v2 & 0xFF0000) == 0x50000 || !v26)
  {
    v28 = *v2 & 0xFF00;
    v741 = v2;
    if (v28 == 1024)
    {
      v29 = *(v2 + 4);
      v777[0] = v29;
      v767[0] = v23;
      v30 = *(v2 + 28);
      v31 = **(v2 + 88);
      v32 = v31.f32[3];
      *&v12 = 1.0 - v31.f32[3];
      v33 = *(v2 + 12);
      v34 = v30 >> 4;
      v35 = *(v2 + 40) + 16 * (v30 >> 4) * *(v2 + 16);
      v36 = v35 + 16 * v33;
      v762 = v12;
      v764 = v31;
      if (v26)
      {
        shape_enum_clip_alloc(v1, v2, v26, 1, 1, 1, *(v2 + 104), *(v2 + 108), v761, v23);
        v38 = v37;
        v39 = v742;
        if (!v37)
        {
          return 1;
        }

        goto LABEL_1211;
      }

      v38 = 0;
      v62 = (v35 + 16 * v33);
      v39 = v19;
LABEL_951:
      v562 = v34 - v29;
      switch(v39)
      {
        case 0:
          v563 = v767[0];
          v564 = 16 * v29;
          v565 = v30 & 0xFFFFFFF0;
          goto LABEL_1217;
        case 1:
          v639 = *(v741 + 88);
          if (v639)
          {
            CGSFillDRAM64(v62, v30 & 0xFFFFFFF0, 16 * v29, v767[0], v639, 16, 16, 1, 0, 0);
            if (!v38)
            {
              return 1;
            }

            goto LABEL_1210;
          }

          v563 = v767[0];
          v565 = v30 & 0xFFFFFFF0;
          v564 = 16 * v29;
LABEL_1217:
          CGBlt_fillBytes(v564, v563, 0, v62, v565);
          if (v38)
          {
            goto LABEL_1210;
          }

          return 1;
        case 2:
          v621 = v767[0];
          v622 = vdupq_lane_s32(*&v12, 0);
          do
          {
            if (v29 < 4)
            {
              v626 = v29;
            }

            else
            {
              v623 = (v29 >> 2) + 1;
              do
              {
                v624 = vmlaq_f32(v31, v622, v62[1]);
                *v62 = vmlaq_f32(v31, v622, *v62);
                v62[1] = v624;
                v625 = vmlaq_f32(v31, v622, v62[3]);
                v62[2] = vmlaq_f32(v31, v622, v62[2]);
                v62[3] = v625;
                v62 += 4;
                --v623;
              }

              while (v623 > 1);
              v626 = v29 & 3;
            }

            if (v626 >= 1)
            {
              v627 = v626 + 1;
              do
              {
                *v62 = vmlaq_f32(v31, v622, *v62);
                ++v62;
                --v627;
              }

              while (v627 > 1);
            }

            v62 += v562;
            --v621;
          }

          while (v621);
          goto LABEL_1196;
        case 3:
          v633 = v767[0];
          v634 = vextq_s8(v31, v31, 8uLL).u64[0];
          do
          {
            v635 = v29;
            do
            {
              v636 = v62->f32[3];
              if (v636 <= 0.0)
              {
                v62->i64[0] = 0;
                v62->i64[1] = 0;
              }

              else if (v636 >= 1.0)
              {
                v62->i64[0] = v31.i64[0];
                v62->i64[1] = v634;
              }

              else
              {
                *v62 = vmulq_n_f32(v31, v636);
              }

              ++v62;
              --v635;
            }

            while (v635);
            v62 += v562;
            --v633;
          }

          while (v633);
          goto LABEL_1196;
        case 4:
          v596 = v767[0];
          v597 = vextq_s8(v31, v31, 8uLL).u64[0];
          do
          {
            v598 = v29;
            do
            {
              v599 = 1.0 - v62->f32[3];
              if (v599 <= 0.0)
              {
                v62->i64[0] = 0;
                v62->i64[1] = 0;
              }

              else if (v599 >= 1.0)
              {
                v62->i64[0] = v31.i64[0];
                v62->i64[1] = v597;
              }

              else
              {
                *v62 = vmulq_n_f32(v31, v599);
              }

              ++v62;
              --v598;
            }

            while (v598);
            v62 += v562;
            --v596;
          }

          while (v596);
          goto LABEL_1196;
        case 5:
          v651 = v767[0];
          do
          {
            v652 = v29;
            do
            {
              *v62 = vmlaq_laneq_f32(vmulq_n_f32(*v62, *&v12), v31, *v62, 3);
              ++v62;
              --v652;
            }

            while (v652);
            v62 += v562;
            --v651;
          }

          while (v651);
          goto LABEL_1196;
        case 6:
          v663 = v767[0];
          while (1)
          {
            v664 = v29;
            do
            {
              v665 = v62->f32[3];
              v666 = 1.0 - v665;
              if ((1.0 - v665) >= 1.0)
              {
                v62->i64[0] = v31.i64[0];
                v62->i32[2] = v31.i32[2];
                v667 = v32;
              }

              else
              {
                if (v666 <= 0.0)
                {
                  goto LABEL_1138;
                }

                *v62->f32 = vmla_n_f32(*v62->f32, *v31.f32, v666);
                v62->f32[2] = v62->f32[2] + (v31.f32[2] * v666);
                v667 = v665 + (v32 * v666);
              }

              v62->f32[3] = v667;
LABEL_1138:
              ++v62;
              --v664;
            }

            while (v664);
            v62 += v562;
            if (!--v663)
            {
              goto LABEL_1196;
            }
          }

        case 7:
          v637 = v767[0];
          do
          {
            v638 = v29;
            do
            {
              *v62 = vmulq_laneq_f32(*v62, v31, 3);
              ++v62;
              --v638;
            }

            while (v638);
            v62 += v562;
            --v637;
          }

          while (v637);
          goto LABEL_1196;
        case 8:
          v675 = v767[0];
          do
          {
            v676 = v29;
            do
            {
              *v62 = vmulq_n_f32(*v62, *&v12);
              ++v62;
              --v676;
            }

            while (v676);
            v62 += v562;
            --v675;
          }

          while (v675);
          goto LABEL_1196;
        case 9:
          v603 = v767[0];
          do
          {
            v604 = v29;
            do
            {
              *v62 = vmlaq_n_f32(vmulq_laneq_f32(*v62, v31, 3), v31, 1.0 - COERCE_FLOAT(HIDWORD(*v62)));
              ++v62;
              --v604;
            }

            while (v604);
            v62 += v562;
            --v603;
          }

          while (v603);
          goto LABEL_1196;
        case 10:
          v673 = v767[0];
          do
          {
            v674 = v29;
            do
            {
              *v62 = vmlaq_n_f32(vmulq_n_f32(*v62, *&v12), v31, 1.0 - COERCE_FLOAT(HIDWORD(*v62)));
              ++v62;
              --v674;
            }

            while (v674);
            v62 += v562;
            --v673;
          }

          while (v673);
          goto LABEL_1196;
        case 11:
          v587 = v32 - v31.f32[0];
          v588 = v32 + 1.0;
          if ((v32 + 1.0) > 1.0)
          {
            v588 = 1.0;
          }

          v589 = v767[0];
          do
          {
            v590 = v29;
            do
            {
              if (v18)
              {
                v591 = v62->f32[3];
                v592 = v32 + v591;
                if ((v32 + v591) > 1.0)
                {
                  v592 = 1.0;
                }

                v593 = v591 - v62->f32[1];
                v594 = v592 - (v587 + (v591 - v62->f32[0]));
              }

              else
              {
                v591 = 1.0;
                v593 = 1.0 - v62->f32[1];
                v594 = v588 - (v587 + (1.0 - v62->f32[0]));
                v592 = v588;
              }

              v595 = v62->f32[2];
              v62->f32[0] = v594;
              v62->f32[1] = v592 - ((v32 - v31.f32[1]) + v593);
              v62->f32[2] = v592 - ((v32 - v31.f32[2]) + (v591 - v595));
              v62->f32[3] = v592;
              ++v62;
              --v590;
            }

            while (v590);
            v62 += v562;
            --v589;
          }

          while (v589);
          goto LABEL_1196;
        case 12:
          v600 = v767[0];
          do
          {
            v601 = v29;
            do
            {
              *v62->f32 = vadd_f32(*v31.f32, *v62->f32);
              v602 = v32 + v62->f32[3];
              if (v602 > 1.0)
              {
                v602 = 1.0;
              }

              v62->f32[2] = v31.f32[2] + v62->f32[2];
              v62->f32[3] = v602;
              ++v62;
              --v601;
            }

            while (v601);
            v62 += v562;
            --v600;
          }

          while (v600);
          goto LABEL_1196;
        case 13:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v658 = v31.i32[2];
          v659 = v767[0];
          while (1)
          {
            v660 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v661 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v658;
                  *&v12 = v32;
                  goto LABEL_1128;
                }
              }

              else
              {
                v661 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v662 = PDAmultiplyPDA(v62->f32[0], v10, v11, v12, v661, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v658)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v662;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_1128:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v660;
            }

            while (v660);
            v62 += v562;
            if (!--v659)
            {
              goto LABEL_1208;
            }
          }

        case 14:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v579 = v767[0];
          v580 = vextq_s8(v31, v31, 8uLL).u64[0];
          __asm { FMOV            V1.2S, #1.0 }

          while (1)
          {
            v582 = v29;
            do
            {
              if (v18)
              {
                v583 = v62->f32[3];
                if (v583 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i64[1] = v580;
                  goto LABEL_983;
                }
              }

              else
              {
                v583 = 1.0;
              }

              v584.i64[0] = v62->i64[0];
              *v585.f32 = vsub_f32(_D1, *v62->f32);
              v586 = v31;
              v586.f32[3] = -v583;
              v585.i32[3] = HIDWORD(v580);
              v585.f32[2] = 1.0 - v62->f32[2];
              v584.i32[2] = v62->i32[2];
              v584.f32[3] = v32 + v583;
              *v62 = vmlaq_f32(v584, v585, v586);
LABEL_983:
              ++v62;
              --v582;
            }

            while (v582);
            v62 += v562;
            if (!--v579)
            {
              goto LABEL_1196;
            }
          }

        case 15:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v628 = v31.i32[2];
          v629 = v767[0];
          while (1)
          {
            v630 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v631 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v628;
                  *&v12 = v32;
                  goto LABEL_1061;
                }
              }

              else
              {
                v631 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v632 = PDAoverlayPDA(v62->f32[0], v10, v11, v12, v631, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v628)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v632;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_1061:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v630;
            }

            while (v630);
            v62 += v562;
            if (!--v629)
            {
              goto LABEL_1208;
            }
          }

        case 16:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v574 = v31.i32[2];
          v575 = v767[0];
          while (1)
          {
            v576 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v577 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v574;
                  *&v12 = v32;
                  goto LABEL_972;
                }
              }

              else
              {
                v577 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v578 = PDAdarkenPDA(v62->f32[0], v10, v11, v12, v577, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v574)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v578;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_972:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v576;
            }

            while (v576);
            v62 += v562;
            if (!--v575)
            {
              goto LABEL_1208;
            }
          }

        case 17:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v640 = v31.i32[2];
          v641 = v767[0];
          while (1)
          {
            v642 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v643 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v640;
                  *&v12 = v32;
                  goto LABEL_1090;
                }
              }

              else
              {
                v643 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v644 = PDAlightenPDA(v62->f32[0], v10, v11, v12, v643, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v640)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v644;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_1090:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v642;
            }

            while (v642);
            v62 += v562;
            if (!--v641)
            {
              goto LABEL_1208;
            }
          }

        case 18:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v668 = v31.i32[2];
          v669 = v767[0];
          while (1)
          {
            v670 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v671 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v668;
                  *&v12 = v32;
                  goto LABEL_1149;
                }
              }

              else
              {
                v671 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v672 = PDAcolordodgePDA(v62->f32[0], v10, v11, v12, v671, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v668)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v672;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_1149:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v670;
            }

            while (v670);
            v62 += v562;
            if (!--v669)
            {
              goto LABEL_1208;
            }
          }

        case 19:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v690 = v31.i32[2];
          v691 = v767[0];
          while (1)
          {
            v692 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v693 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v690;
                  *&v12 = v32;
                  goto LABEL_1183;
                }
              }

              else
              {
                v693 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v694 = PDAcolorburnPDA(v62->f32[0], v10, v11, v12, v693, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v690)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v694;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_1183:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v692;
            }

            while (v692);
            v62 += v562;
            if (!--v691)
            {
              goto LABEL_1208;
            }
          }

        case 20:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v645 = v31.u32[1];
          v646 = v31.i32[2];
          v647 = v767[0];
          while (1)
          {
            v648 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                LODWORD(v13) = v62->i32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v646;
                  *&v12 = v32;
                  goto LABEL_1101;
                }
              }

              else
              {
                LODWORD(v13) = 1.0;
              }

              LODWORD(v11) = v62->i32[2];
              v649 = PDAsoftlightPDA(v62->f32[0], v62->f32[1], v11, *&v12, v13, v14, v15, v16, v1, v2, v3, v4, v5, v6, v7, v8, v31.u32[0], v645, __SPAIR64__(LODWORD(v32), v646), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v649;
              v62->i32[1] = v650;
              v62->i32[2] = LODWORD(v11);
LABEL_1101:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v648;
            }

            while (v648);
            v62 += v562;
            if (!--v647)
            {
              goto LABEL_1208;
            }
          }

        case 21:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v653 = v31.i32[2];
          v654 = v767[0];
          while (1)
          {
            v655 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v656 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v653;
                  *&v12 = v32;
                  goto LABEL_1117;
                }
              }

              else
              {
                v656 = 1.0;
              }

              LODWORD(v10) = v62->i32[1];
              LODWORD(v11) = v62->i32[2];
              v657 = PDAhardlightPDA(v62->f32[0], v10, v11, v12, v656, v14, v15, v16, v31.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v32), v653)), v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v657;
              v62->i32[1] = LODWORD(v10);
              v62->i32[2] = LODWORD(v11);
LABEL_1117:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v655;
            }

            while (v655);
            v62 += v562;
            if (!--v654)
            {
              goto LABEL_1208;
            }
          }

        case 22:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v677 = v767[0];
          while (1)
          {
            v678 = v29;
            do
            {
              if (v18)
              {
                v679 = v62->f32[3];
                if (v679 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v31.i32[2];
                  v680 = v32;
                  goto LABEL_1172;
                }
              }

              else
              {
                v679 = 1.0;
              }

              v681 = v62->f32[2];
              v682 = vmul_laneq_f32(*v62->f32, v31, 3);
              v683 = vmul_n_f32(*v31.f32, v679);
              v684 = vsub_f32(vadd_f32(*v62->f32, *v31.f32), v682);
              v685 = vsub_f32(v682, v683);
              v686 = vadd_f32(vsub_f32(v684, v683), vbsl_s8(vcltz_f32(v685), vneg_f32(v685), v685));
              v684.f32[0] = v681 + v31.f32[2];
              v687 = v681 * v32;
              v684.f32[0] = v684.f32[0] - v687;
              v688 = v687 - (v31.f32[2] * v679);
              v689 = v684.f32[0] - (v31.f32[2] * v679);
              if (v688 < 0.0)
              {
                v688 = -v688;
              }

              v680 = (v679 + v32) - (v679 * v32);
              *v62->f32 = v686;
              v62->f32[2] = v689 + v688;
LABEL_1172:
              v62->f32[3] = v680;
              ++v62;
              --v678;
            }

            while (v678);
            v62 += v562;
            if (!--v677)
            {
LABEL_1196:
              v767[0] = 0;
              if (!v38)
              {
                return 1;
              }

LABEL_1210:
              v766 = 0;
LABEL_1211:
              v1 = shape_enum_clip_next(v38, &v766 + 1, &v766, v777, v767);
              if (v1)
              {
                v62 = (v36 + 16 * v34 * v766 + 16 * SHIDWORD(v766));
                v29 = v777[0];
                v12 = v762;
                v31 = v764;
                goto LABEL_951;
              }

              v81 = v38;
LABEL_1214:
              free(v81);
              return 1;
            }
          }

        case 23:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v695 = v767[0];
          v696.i64[0] = 0x4000000040000000;
          v696.i32[2] = 0x40000000;
          v696.i32[3] = v31.i32[3];
          while (1)
          {
            v697 = v29;
            do
            {
              if (v18)
              {
                v698 = v62->f32[3];
                if (v698 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->i32[2] = v31.i32[2];
                  v62->f32[3] = v32;
                  goto LABEL_1194;
                }
              }

              else
              {
                v698 = 1.0;
              }

              v699.i64[0] = v62->i64[0];
              *v700.f32 = vmul_f32(*v31.f32, vneg_f32(*v62->f32));
              v699.i32[2] = v62->i32[2];
              v699.f32[3] = v698;
              v700.f32[2] = -(v699.f32[2] * v31.f32[2]);
              v700.f32[3] = -v698;
              *v62 = vmlaq_f32(vaddq_f32(v31, v699), v696, v700);
LABEL_1194:
              ++v62;
              --v697;
            }

            while (v697);
            v62 += v562;
            if (!--v695)
            {
              goto LABEL_1196;
            }
          }

        case 24:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v613 = v31.f32[1];
          v614 = v31.f32[2];
          v615 = v767[0];
          while (1)
          {
            v616 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v617 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->f32[2] = v614;
                  *&v12 = v32;
                  goto LABEL_1039;
                }
              }

              else
              {
                v617 = 1.0;
              }

              v618 = PDAhuePDA(v62->f32[0], v62->f32[1], v62->f32[2], v12, v617, v14, v15, v16, v31.f32[0], v613, v614, v32, v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v618;
              v62->i32[1] = v619;
              v62->i32[2] = v620;
LABEL_1039:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v616;
            }

            while (v616);
            v62 += v562;
            if (!--v615)
            {
              goto LABEL_1208;
            }
          }

        case 25:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v605 = v31.f32[1];
          v606 = v31.f32[2];
          v607 = v767[0];
          while (1)
          {
            v608 = v29;
            do
            {
              LODWORD(v12) = v62->i32[3];
              if (v18)
              {
                v609 = v62->f32[3];
                if (*&v12 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->f32[2] = v606;
                  *&v12 = v32;
                  goto LABEL_1028;
                }
              }

              else
              {
                v609 = 1.0;
              }

              v610 = PDAsaturationPDA(v62->f32[0], v62->f32[1], v62->f32[2], v12, v609, v14, v15, v16, v31.f32[0], v605, v606, v32, v32);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v610;
              v62->i32[1] = v611;
              v62->i32[2] = v612;
LABEL_1028:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v608;
            }

            while (v608);
            v62 += v562;
            if (!--v607)
            {
              goto LABEL_1208;
            }
          }

        case 26:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v701 = v31.f32[1];
          v702 = v31.f32[2];
          v703 = v767[0];
          while (1)
          {
            v704 = v29;
            do
            {
              if (v18)
              {
                v705 = v62->f32[3];
                if (v705 <= 0.0)
                {
                  v62->i64[0] = v31.i64[0];
                  v62->f32[2] = v702;
                  *&v12 = v32;
                  goto LABEL_1206;
                }
              }

              else
              {
                v705 = 1.0;
              }

              *&v12 = v32;
              v706 = PDAluminosityPDA(v31.f32[0], v701, v702, v12, v32, v14, v15, v16, COERCE_FLOAT(v62->i64[0]), COERCE_FLOAT(HIDWORD(v62->i64[0])), v62->f32[2], v62->f32[3], v705);
              v31.i64[0] = v764.i64[0];
              v62->f32[0] = v706;
              v62->i32[1] = v707;
              v62->i32[2] = v708;
LABEL_1206:
              v62->i32[3] = LODWORD(v12);
              ++v62;
              --v704;
            }

            while (v704);
            v62 += v562;
            if (!--v703)
            {
              goto LABEL_1208;
            }
          }

        case 27:
          if (v32 <= 0.0)
          {
            goto LABEL_1209;
          }

          v566 = v31.f32[1];
          v567 = v31.f32[2];
          v568 = v767[0];
          break;
        default:
          goto LABEL_1209;
      }

LABEL_955:
      v569 = v29;
      while (1)
      {
        LODWORD(v12) = v62->i32[3];
        if (!v18)
        {
          break;
        }

        v570 = v62->f32[3];
        if (*&v12 > 0.0)
        {
          goto LABEL_960;
        }

        v62->i64[0] = v31.i64[0];
        v62->f32[2] = v567;
        *&v12 = v32;
LABEL_961:
        v62->i32[3] = LODWORD(v12);
        ++v62;
        if (!--v569)
        {
          v62 += v562;
          if (!--v568)
          {
LABEL_1208:
            v767[0] = 0;
            v39 = v742;
LABEL_1209:
            if (v38)
            {
              goto LABEL_1210;
            }

            return 1;
          }

          goto LABEL_955;
        }
      }

      v570 = 1.0;
LABEL_960:
      v571 = PDAluminosityPDA(v62->f32[0], v62->f32[1], v62->f32[2], v12, v570, v14, v15, v16, v31.f32[0], v566, v567, v32, v32);
      v31.i64[0] = v764.i64[0];
      v62->f32[0] = v571;
      v62->i32[1] = v572;
      v62->i32[2] = v573;
      goto LABEL_961;
    }

    v777[0] = *(v2 + 4);
    v767[0] = v23;
    v40 = *(v2 + 28);
    v41 = *(v2 + 40);
    v733 = *(v2 + 88);
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken, &__block_literal_global_9_13911);
    }

    v736 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result;
    v42 = v40 >> 4;
    v43 = v741;
    v727 = v18 != 0;
    v44 = v41 + 16 * (v40 >> 4) * *(v741 + 16) + 16 * *(v741 + 12);
    v45 = *(v741 + 104);
    v46 = *(v741 + 108);
    v47 = *(v741 + 76) >> 4;
    v728 = v25;
    v731 = *(v741 + 56);
    v732 = *(v741 + 60);
    if (v28 != 256)
    {
      LODWORD(v747) = *(v741 + 64);
      v57 = *(v741 + 76) >> 4;
      v744 = *(v741 + 68);
      v48 = v733;
      v58 = &v733[v47 * v744];
      v59 = v17 != 0;
      if (v26)
      {
        LODWORD(v4) = 1;
        v765 = v733;
        v60 = v733;
        v61 = v733;
LABEL_45:
        v743 = v4;
        v746 = v42;
        shape_enum_clip_alloc(v1, v2, v26, v4, v42, 1, v45, v46, v761, v23);
        v91 = v90;
        v88 = v742;
        v84 = v44;
        v85 = v57;
        if (!v90)
        {
          return 1;
        }

        while (2)
        {
          v1 = shape_enum_clip_next(v91, &v766 + 1, &v766, v777, v767);
          if (!v1)
          {
            v81 = v91;
            goto LABEL_1214;
          }

          v745 = v91;
          if (v58)
          {
            v43 = v741;
            v42 = v746;
            v86 = &v84[v746 * v766 + SHIDWORD(v766)];
            v48 = v60;
            v87 = v60 + 16 * v85 * ((v766 + *(v741 + 60)) % v744);
            v83 = v87 + 16 * ((HIDWORD(v766) + *(v741 + 56)) % v747);
            v61 = v87 + 16 * v747;
            v765 = v83;
            LODWORD(v761) = v777[0];
            LODWORD(v87) = v777[0];
            v731 = (HIDWORD(v766) + *(v741 + 56)) % v747;
            v732 = (v766 + *(v741 + 60)) % v744;
          }

          else
          {
            LODWORD(v761) = v777[0];
            LODWORD(v87) = v777[0] * v743;
            v42 = v746;
            v86 = &v84[v746 * v766 + HIDWORD(v766) * v743];
            v48 = v60;
            v83 = v60 + 16 * v766 * v747 + 16 * HIDWORD(v766) * v743;
            v85 = v747 - v777[0] * v743;
            v43 = v741;
          }

          v87 = v87;
LABEL_49:
          v746 = v42;
          v763 = v42 - v87;
          v760 = v85;
          switch(v88)
          {
            case 0:
              v60 = v48;
              v92 = &v86[-v761 + 1];
              v93 = v763 + v761;
              if (v743 < 0)
              {
                v93 = v763 - v761;
              }

              else
              {
                v92 = v86;
              }

              v94 = (v92 + 16 * ((v93 * (v767[0] - 1)) & (v93 >> 63)));
              if (v93 < 0)
              {
                v93 = -v93;
              }

              CGBlt_fillBytes(16 * v761, v767[0], 0, v94, 16 * v93);
              goto LABEL_847;
            case 1:
              v194 = *(v43 + 1);
              if (v194 == 2)
              {
                if (v761 >= 2 && (16 * v747) <= 0x40)
                {
                  LODWORD(v9) = 16 * v747;
                  v399 = vcnt_s8(*&v9);
                  v399.i16[0] = vaddlv_u8(v399);
                  if (v399.i32[0] <= 1u)
                  {
                    v60 = v48;
                    CGSFillDRAM64(v86, 16 * (v761 + v763), 16 * v761, v767[0], v48, 16 * v85, 16 * v747, v744, 16 * v731, v732);
                    goto LABEL_847;
                  }
                }

LABEL_624:
                v60 = v48;
                v400 = v767[0];
                if (v18 == 0 || v59)
                {
                  do
                  {
                    v401 = v761;
                    do
                    {
                      *v86 = *v83;
                      v402 = v83 + 16 * v743;
                      if (v402 >= v61)
                      {
                        v403 = -v747;
                      }

                      else
                      {
                        v403 = 0;
                      }

                      v83 = v402 + 16 * v403;
                      v86 += v743;
                      --v401;
                    }

                    while (v401);
                    v86 += v763;
                    v404 = v765;
                    v405 = &v765[v85];
                    if (v405 >= v58)
                    {
                      v406 = -(v85 * v744);
                    }

                    else
                    {
                      v406 = 0;
                    }

                    i64 = v405[v406].i64;
                    v408 = v61 + 16 * v406 + 16 * v85;
                    if (v58)
                    {
                      v61 = v408;
                      v404 = i64;
                    }

                    v765 = v404;
                    if (v58)
                    {
                      v83 = i64;
                    }

                    else
                    {
                      v83 += 16 * v85;
                    }

                    --v400;
                  }

                  while (v400);
                }

                else
                {
                  do
                  {
                    v409 = v761;
                    do
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                      v86->i32[3] = 1065353216;
                      v410 = v83 + 16 * v743;
                      if (v410 >= v61)
                      {
                        v411 = -v747;
                      }

                      else
                      {
                        v411 = 0;
                      }

                      v83 = v410 + 16 * v411;
                      v86 += v743;
                      --v409;
                    }

                    while (v409);
                    v86 += v763;
                    v412 = v765;
                    v413 = &v765[v85];
                    if (v413 >= v58)
                    {
                      v414 = -(v85 * v744);
                    }

                    else
                    {
                      v414 = 0;
                    }

                    v415 = v413[v414].i64;
                    v416 = v61 + 16 * v414 + 16 * v85;
                    if (v58)
                    {
                      v61 = v416;
                      v412 = v415;
                    }

                    v765 = v412;
                    if (v58)
                    {
                      v83 = v415;
                    }

                    else
                    {
                      v83 += 16 * v85;
                    }

                    --v400;
                  }

                  while (v400);
                }

                goto LABEL_846;
              }

              if (v194 != 1)
              {
                goto LABEL_624;
              }

              if (v18 != 0 && !v59)
              {
                v60 = v48;
                v489 = v767[0];
                do
                {
                  v490 = v761;
                  do
                  {
                    v86->i64[0] = *v83;
                    v86->i32[2] = *(v83 + 8);
                    v86->i32[3] = 1065353216;
                    v491 = v83 + 16 * v743;
                    if (v491 >= v61)
                    {
                      v492 = -v747;
                    }

                    else
                    {
                      v492 = 0;
                    }

                    v83 = v491 + 16 * v492;
                    v86 += v743;
                    --v490;
                  }

                  while (v490);
                  v86 += v763;
                  v493 = v765;
                  v494 = &v765[v85];
                  if (v494 >= v58)
                  {
                    v495 = -(v85 * v744);
                  }

                  else
                  {
                    v495 = 0;
                  }

                  v496 = v494[v495].i64;
                  v497 = v61 + 16 * v495 + 16 * v85;
                  if (v58)
                  {
                    v61 = v497;
                    v493 = v496;
                  }

                  v765 = v493;
                  if (v58)
                  {
                    v83 = v496;
                  }

                  else
                  {
                    v83 += 16 * v85;
                  }

                  --v489;
                }

                while (v489);
                goto LABEL_846;
              }

              v60 = v48;
              if (v743 < 0)
              {
                v195 = v85 - v761;
                v558 = 16 * v761 - 16;
                v83 -= v558;
                v196 = v763 - v761;
                v86 = (v86 - v558);
              }

              else
              {
                v195 = v85 + v761;
                v196 = v763 + v761;
              }

              v559 = v767[0] - 1;
              v560 = (v83 + 16 * ((v195 * v559) & (v195 >> 63)));
              if (v195 >= 0)
              {
                v85 = v195;
              }

              else
              {
                v85 = -v195;
              }

              if (v196 >= 0)
              {
                LODWORD(v561) = v196;
              }

              else
              {
                v561 = -v196;
              }

              CGBlt_copyBytes(16 * v761, v767[0], v560, &v86[(v196 * v559) & (v196 >> 63)], 16 * v85, 16 * v561);
LABEL_847:
              v91 = v745;
              if (!v745)
              {
                return 1;
              }

              v766 = 0;
              continue;
            case 2:
              if (v736)
              {
                v154 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  v155 = 32 * v743;
                  if ((*v728 & 0x30) != 0)
                  {
                    __asm { FMOV            V0.4S, #1.0 }

                    v160 = v61;
                    v161 = v765;
                    do
                    {
                      v162 = (v160 - v83) >> 4;
                      if (v162 >= v761)
                      {
                        v162 = v761;
                      }

                      v163 = v162;
                      if (v162 >= 2)
                      {
                        do
                        {
                          v164 = *(v83 + 16);
                          v165 = vdupq_laneq_s32(v164, 3);
                          v166 = vdupq_laneq_s32(*v83, 3);
                          v167 = vbslq_s8(vcgtzq_f32(v165), vaddq_f32(v164, vmlsq_f32(v86[1], vmaxnmq_f32(vminnmq_f32(v165, _Q0), 0), v86[1])), v86[1]);
                          *v86 = vbslq_s8(vcgtzq_f32(v166), vaddq_f32(*v83, vmlsq_f32(*v86, vmaxnmq_f32(vminnmq_f32(v166, _Q0), 0), *v86)), *v86);
                          v86[1] = v167;
                          v163 -= 2;
                          v83 += v155;
                          v86 = (v86 + v155);
                        }

                        while (v163 > 1);
                      }

                      for (i = v163 + v761 - v162; i; --i)
                      {
                        v169 = vdupq_laneq_s32(*v83, 3);
                        *v86 = vbslq_s8(vcgtzq_f32(v169), vaddq_f32(*v83, vmlsq_f32(*v86, vmaxnmq_f32(vminnmq_f32(v169, _Q0), 0), *v86)), *v86);
                        v170 = v83 + 16 * v743;
                        if (v170 >= v160)
                        {
                          v171 = -v747;
                        }

                        else
                        {
                          v171 = 0;
                        }

                        v83 = v170 + 16 * v171;
                        v86 += v743;
                      }

                      v86 += v763;
                      v172 = &v161[v85];
                      if (v172 >= v58)
                      {
                        v173 = -(v85 * v744);
                      }

                      else
                      {
                        v173 = 0;
                      }

                      v174 = v172 + 16 * v173;
                      v175 = v160 + 16 * v173 + 16 * v85;
                      if (v58)
                      {
                        v83 = v174;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v160 = v175;
                        v161 = v174;
                      }

                      _VF = __OFSUB__(v154--, 1);
                    }

                    while (!((v154 < 0) ^ _VF | (v154 == 0)));
                  }

                  else
                  {
                    __asm { FMOV            V0.4S, #1.0 }

                    v511 = v61;
                    v512 = v765;
                    do
                    {
                      v513 = (v511 - v83) >> 4;
                      if (v513 >= v761)
                      {
                        v513 = v761;
                      }

                      v514 = v513;
                      if (v513 >= 2)
                      {
                        do
                        {
                          v515 = vrev32q_s8(*(v83 + 16));
                          v516 = vrev32q_s8(*v83);
                          v517 = vrev32q_s8(v86[1]);
                          v518 = vrev32q_s8(*v86);
                          v519 = vdupq_laneq_s32(v516, 3);
                          v520 = vdupq_laneq_s32(v515, 3);
                          *v86 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v519), vaddq_f32(vmlsq_f32(v518, vmaxnmq_f32(vminnmq_f32(v519, _Q0), 0), v518), v516), v518));
                          v86[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v520), vaddq_f32(vmlsq_f32(v517, vmaxnmq_f32(vminnmq_f32(v520, _Q0), 0), v517), v515), v517));
                          v514 -= 2;
                          v83 += v155;
                          v86 = (v86 + v155);
                        }

                        while (v514 > 1);
                      }

                      for (j = v514 + v761 - v513; j; --j)
                      {
                        v522 = vrev32q_s8(*v83);
                        v523 = vrev32q_s8(*v86);
                        v524 = vdupq_laneq_s32(v522, 3);
                        *v86 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v524), vaddq_f32(vmlsq_f32(v523, vmaxnmq_f32(vminnmq_f32(v524, _Q0), 0), v523), v522), v523));
                        v525 = v83 + 16 * v743;
                        if (v525 >= v511)
                        {
                          v526 = -v747;
                        }

                        else
                        {
                          v526 = 0;
                        }

                        v83 = v525 + 16 * v526;
                        v86 += v743;
                      }

                      v86 += v763;
                      v527 = &v512[v85];
                      if (v527 >= v58)
                      {
                        v528 = -(v85 * v744);
                      }

                      else
                      {
                        v528 = 0;
                      }

                      v529 = v527 + 16 * v528;
                      v530 = v511 + 16 * v528 + 16 * v85;
                      if (v58)
                      {
                        v83 = v529;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v511 = v530;
                        v512 = v529;
                      }

                      _VF = __OFSUB__(v154--, 1);
                    }

                    while (!((v154 < 0) ^ _VF | (v154 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v154 = v767[0];
              }

              do
              {
                v300 = v761;
                do
                {
                  v301 = *(v83 + 12);
                  if (v301 >= 1.0)
                  {
                    v86->i64[0] = *v83;
                    v86->i32[2] = *(v83 + 8);
                    v86->f32[3] = v301;
                  }

                  else if (v301 > 0.0)
                  {
                    *v86 = vmlaq_n_f32(*v83, *v86, 1.0 - v301);
                  }

                  v302 = v83 + 16 * v743;
                  if (v302 >= v61)
                  {
                    v303 = -v747;
                  }

                  else
                  {
                    v303 = 0;
                  }

                  v83 = v302 + 16 * v303;
                  v86 += v743;
                  --v300;
                }

                while (v300);
                v86 += v763;
                v304 = v765;
                v305 = &v765[v85];
                if (v305 >= v58)
                {
                  v306 = -(v85 * v744);
                }

                else
                {
                  v306 = 0;
                }

                v307 = v305[v306].i64;
                v308 = v61 + 16 * v306 + 16 * v85;
                if (v58)
                {
                  v61 = v308;
                  v304 = v307;
                }

                v765 = v304;
                if (v58)
                {
                  v83 = v307;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v154;
              }

              while (v154);
              goto LABEL_846;
            case 3:
              if (v736)
              {
                v177 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  if ((*v728 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)3,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v59);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)3,_RGBAf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v59);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v177 = v767[0];
              }

              do
              {
                v309 = v761;
                do
                {
                  v310 = v86->f32[3];
                  if (v310 <= 0.0)
                  {
                    v86->i64[0] = 0;
                    v86->i64[1] = 0;
                  }

                  else
                  {
                    v311 = *v83;
                    if (v310 >= 1.0)
                    {
                      v86->f32[0] = v311;
                      *(v86->i64 + 4) = *(v83 + 4);
                      v313 = 1.0;
                      if (v59)
                      {
                        v313 = *(v83 + 12);
                      }
                    }

                    else
                    {
                      v86->f32[0] = v310 * v311;
                      *&v86->i32[1] = vmul_n_f32(*(v83 + 4), v310);
                      v312 = 1.0;
                      if (v59)
                      {
                        v312 = *(v83 + 12);
                      }

                      v313 = v310 * v312;
                    }

                    v86->f32[3] = v313;
                  }

                  v314 = v83 + 16 * v743;
                  if (v314 >= v61)
                  {
                    v315 = -v747;
                  }

                  else
                  {
                    v315 = 0;
                  }

                  v83 = v314 + 16 * v315;
                  v86 += v743;
                  --v309;
                }

                while (v309);
                v86 += v763;
                v316 = v765;
                v317 = &v765[v85];
                if (v317 >= v58)
                {
                  v318 = -(v85 * v744);
                }

                else
                {
                  v318 = 0;
                }

                v319 = v317[v318].i64;
                v320 = v61 + 16 * v318 + 16 * v85;
                if (v58)
                {
                  v61 = v320;
                  v316 = v319;
                }

                v765 = v316;
                if (v58)
                {
                  v83 = v319;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v177;
              }

              while (v177);
              goto LABEL_846;
            case 4:
              if (v736)
              {
                v110 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  if ((*v728 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)4,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v59);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)4,_RGBAf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v59);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v110 = v767[0];
              }

              do
              {
                v270 = v761;
                do
                {
                  v271 = 1.0 - v86->f32[3];
                  if (v271 <= 0.0)
                  {
                    v86->i64[0] = 0;
                    v86->i64[1] = 0;
                  }

                  else
                  {
                    v272 = *v83;
                    if (v271 >= 1.0)
                    {
                      v86->f32[0] = v272;
                      *(v86->i64 + 4) = *(v83 + 4);
                      v274 = 1.0;
                      if (v59)
                      {
                        v274 = *(v83 + 12);
                      }
                    }

                    else
                    {
                      v86->f32[0] = v271 * v272;
                      *&v86->i32[1] = vmul_n_f32(*(v83 + 4), v271);
                      v273 = 1.0;
                      if (v59)
                      {
                        v273 = *(v83 + 12);
                      }

                      v274 = v271 * v273;
                    }

                    v86->f32[3] = v274;
                  }

                  v275 = v83 + 16 * v743;
                  if (v275 >= v61)
                  {
                    v276 = -v747;
                  }

                  else
                  {
                    v276 = 0;
                  }

                  v83 = v275 + 16 * v276;
                  v86 += v743;
                  --v270;
                }

                while (v270);
                v86 += v763;
                v277 = v765;
                v278 = &v765[v85];
                if (v278 >= v58)
                {
                  v279 = -(v85 * v744);
                }

                else
                {
                  v279 = 0;
                }

                v280 = v278[v279].i64;
                v281 = v61 + 16 * v279 + 16 * v85;
                if (v58)
                {
                  v61 = v281;
                  v277 = v280;
                }

                v765 = v277;
                if (v58)
                {
                  v83 = v280;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v110;
              }

              while (v110);
              goto LABEL_846;
            case 5:
              if (v736)
              {
                v199 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)5,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, *v728);
                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v199 = v767[0];
              }

              do
              {
                v330 = v761;
                do
                {
                  *v86 = vmlaq_laneq_f32(vmulq_n_f32(*v86, 1.0 - COERCE_FLOAT(HIDWORD(*v83))), *v83, *v86, 3);
                  v331 = v83 + 16 * v743;
                  if (v331 >= v61)
                  {
                    v332 = -v747;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v83 = v331 + 16 * v332;
                  v86 += v743;
                  --v330;
                }

                while (v330);
                v86 += v763;
                v333 = v765;
                v334 = &v765[v85];
                if (v334 >= v58)
                {
                  v335 = -(v85 * v744);
                }

                else
                {
                  v335 = 0;
                }

                v336 = v334[v335].i64;
                v337 = v61 + 16 * v335 + 16 * v85;
                if (v58)
                {
                  v61 = v337;
                  v333 = v336;
                }

                v765 = v333;
                if (v58)
                {
                  v83 = v336;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v199;
              }

              while (v199);
              goto LABEL_846;
            case 6:
              if (v736)
              {
                v202 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  if ((*v728 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)6,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v59);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)6,_RGBAf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v59);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v202 = v767[0];
              }

              break;
            case 7:
              if (v736)
              {
                v178 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  v179 = 32 * v743;
                  v180 = 16 * v743;
                  __asm { FMOV            V0.4S, #1.0 }

                  if ((*v728 & 0x30) != 0)
                  {
                    v182 = v61;
                    v183 = v765;
                    do
                    {
                      v184 = (v182 - v83) >> 4;
                      if (v184 >= v761)
                      {
                        v184 = v761;
                      }

                      v185 = v184;
                      if (v184 >= 2)
                      {
                        do
                        {
                          v186 = vmulq_f32(v86[1], vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*(v83 + 16), 3), _Q0), 0));
                          *v86 = vmulq_f32(*v86, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v83, 3), _Q0), 0));
                          v86[1] = v186;
                          v185 -= 2;
                          v83 += v179;
                          v86 = (v86 + v179);
                        }

                        while (v185 > 1);
                      }

                      for (k = v185 + v761 - v184; k; --k)
                      {
                        *v86 = vmulq_f32(*v86, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v83, 3), _Q0), 0));
                        v188 = v83 + 16 * v743;
                        if (v188 >= v182)
                        {
                          v189 = -v747;
                        }

                        else
                        {
                          v189 = 0;
                        }

                        v83 = v188 + 16 * v189;
                        v86 = (v86 + v180);
                      }

                      v86 += v763;
                      v190 = &v183[v85];
                      if (v190 >= v58)
                      {
                        v191 = -(v85 * v744);
                      }

                      else
                      {
                        v191 = 0;
                      }

                      v192 = v190 + 16 * v191;
                      v193 = v182 + 16 * v191 + 16 * v85;
                      if (v58)
                      {
                        v83 = v192;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v182 = v193;
                        v183 = v192;
                      }

                      _VF = __OFSUB__(v178--, 1);
                    }

                    while (!((v178 < 0) ^ _VF | (v178 == 0)));
                  }

                  else
                  {
                    v531 = v61;
                    v532 = v765;
                    do
                    {
                      v533 = (v531 - v83) >> 4;
                      if (v533 >= v761)
                      {
                        v533 = v761;
                      }

                      v534 = v533;
                      if (v533 >= 2)
                      {
                        do
                        {
                          v535 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*(v83 + 16)), 3), _Q0), 0), vrev32q_s8(v86[1])));
                          *v86 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v83), 3), _Q0), 0), vrev32q_s8(*v86)));
                          v86[1] = v535;
                          v534 -= 2;
                          v83 += v179;
                          v86 = (v86 + v179);
                        }

                        while (v534 > 1);
                      }

                      for (m = v534 + v761 - v533; m; --m)
                      {
                        *v86 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v83), 3), _Q0), 0), vrev32q_s8(*v86)));
                        v537 = v83 + 16 * v743;
                        if (v537 >= v531)
                        {
                          v538 = -v747;
                        }

                        else
                        {
                          v538 = 0;
                        }

                        v83 = v537 + 16 * v538;
                        v86 = (v86 + v180);
                      }

                      v86 += v763;
                      v539 = &v532[v85];
                      if (v539 >= v58)
                      {
                        v540 = -(v85 * v744);
                      }

                      else
                      {
                        v540 = 0;
                      }

                      v541 = v539 + 16 * v540;
                      v542 = v531 + 16 * v540 + 16 * v85;
                      if (v58)
                      {
                        v83 = v541;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v531 = v542;
                        v532 = v541;
                      }

                      _VF = __OFSUB__(v178--, 1);
                    }

                    while (!((v178 < 0) ^ _VF | (v178 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v178 = v767[0];
              }

              do
              {
                v321 = v761;
                do
                {
                  v322 = *(v83 + 12);
                  if (v322 <= 0.0)
                  {
                    v86->i64[0] = 0;
                    v86->i64[1] = 0;
                  }

                  else if (v322 < 1.0)
                  {
                    *v86 = vmulq_n_f32(*v86, v322);
                  }

                  v323 = v83 + 16 * v743;
                  if (v323 >= v61)
                  {
                    v324 = -v747;
                  }

                  else
                  {
                    v324 = 0;
                  }

                  v83 = v323 + 16 * v324;
                  v86 += v743;
                  --v321;
                }

                while (v321);
                v86 += v763;
                v325 = v765;
                v326 = &v765[v85];
                if (v326 >= v58)
                {
                  v327 = -(v85 * v744);
                }

                else
                {
                  v327 = 0;
                }

                v328 = v326[v327].i64;
                v329 = v61 + 16 * v327 + 16 * v85;
                if (v58)
                {
                  v61 = v329;
                  v325 = v328;
                }

                v765 = v325;
                if (v58)
                {
                  v83 = v328;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v178;
              }

              while (v178);
              goto LABEL_846;
            case 8:
              if (v736)
              {
                v205 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  v206 = 32 * v743;
                  v207 = 16 * v743;
                  __asm { FMOV            V0.4S, #1.0 }

                  if ((*v728 & 0x30) != 0)
                  {
                    v209 = v61;
                    v210 = v765;
                    do
                    {
                      v211 = (v209 - v83) >> 4;
                      if (v211 >= v761)
                      {
                        v211 = v761;
                      }

                      v212 = v211;
                      if (v211 >= 2)
                      {
                        do
                        {
                          v213 = vmlsq_f32(v86[1], v86[1], vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*(v83 + 16), 3), _Q0), 0));
                          *v86 = vmlsq_f32(*v86, *v86, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v83, 3), _Q0), 0));
                          v86[1] = v213;
                          v212 -= 2;
                          v83 += v206;
                          v86 = (v86 + v206);
                        }

                        while (v212 > 1);
                      }

                      for (n = v212 + v761 - v211; n; --n)
                      {
                        *v86 = vmlsq_f32(*v86, *v86, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v83, 3), _Q0), 0));
                        v215 = v83 + 16 * v743;
                        if (v215 >= v209)
                        {
                          v216 = -v747;
                        }

                        else
                        {
                          v216 = 0;
                        }

                        v83 = v215 + 16 * v216;
                        v86 = (v86 + v207);
                      }

                      v86 += v763;
                      v217 = &v210[v85];
                      if (v217 >= v58)
                      {
                        v218 = -(v85 * v744);
                      }

                      else
                      {
                        v218 = 0;
                      }

                      v219 = v217 + 16 * v218;
                      v220 = v209 + 16 * v218 + 16 * v85;
                      if (v58)
                      {
                        v83 = v219;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v209 = v220;
                        v210 = v219;
                      }

                      _VF = __OFSUB__(v205--, 1);
                    }

                    while (!((v205 < 0) ^ _VF | (v205 == 0)));
                  }

                  else
                  {
                    v543 = v61;
                    v544 = v765;
                    do
                    {
                      v545 = (v543 - v83) >> 4;
                      if (v545 >= v761)
                      {
                        v545 = v761;
                      }

                      v546 = v545;
                      if (v545 >= 2)
                      {
                        do
                        {
                          v547 = vrev32q_s8(v86[1]);
                          v548 = vrev32q_s8(*v86);
                          v549 = vrev32q_s8(vmlsq_f32(v547, v547, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*(v83 + 16)), 3), _Q0), 0)));
                          *v86 = vrev32q_s8(vmlsq_f32(v548, v548, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v83), 3), _Q0), 0)));
                          v86[1] = v549;
                          v546 -= 2;
                          v83 += v206;
                          v86 = (v86 + v206);
                        }

                        while (v546 > 1);
                      }

                      for (ii = v546 + v761 - v545; ii; --ii)
                      {
                        v551 = vrev32q_s8(*v86);
                        *v86 = vrev32q_s8(vmlsq_f32(v551, v551, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v83), 3), _Q0), 0)));
                        v552 = v83 + 16 * v743;
                        if (v552 >= v543)
                        {
                          v553 = -v747;
                        }

                        else
                        {
                          v553 = 0;
                        }

                        v83 = v552 + 16 * v553;
                        v86 = (v86 + v207);
                      }

                      v86 += v763;
                      v554 = &v544[v85];
                      if (v554 >= v58)
                      {
                        v555 = -(v85 * v744);
                      }

                      else
                      {
                        v555 = 0;
                      }

                      v556 = v554 + 16 * v555;
                      v557 = v543 + 16 * v555 + 16 * v85;
                      if (v58)
                      {
                        v83 = v556;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v543 = v557;
                        v544 = v556;
                      }

                      _VF = __OFSUB__(v205--, 1);
                    }

                    while (!((v205 < 0) ^ _VF | (v205 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v205 = v767[0];
              }

              do
              {
                v358 = v761;
                do
                {
                  v359 = 1.0 - *(v83 + 12);
                  if (v359 <= 0.0)
                  {
                    v86->i64[0] = 0;
                    v86->i64[1] = 0;
                  }

                  else if (v359 < 1.0)
                  {
                    *v86 = vmulq_n_f32(*v86, v359);
                  }

                  v360 = v83 + 16 * v743;
                  if (v360 >= v61)
                  {
                    v361 = -v747;
                  }

                  else
                  {
                    v361 = 0;
                  }

                  v83 = v360 + 16 * v361;
                  v86 += v743;
                  --v358;
                }

                while (v358);
                v86 += v763;
                v362 = v765;
                v363 = &v765[v85];
                if (v363 >= v58)
                {
                  v364 = -(v85 * v744);
                }

                else
                {
                  v364 = 0;
                }

                v365 = v363[v364].i64;
                v366 = v61 + 16 * v364 + 16 * v85;
                if (v58)
                {
                  v61 = v366;
                  v362 = v365;
                }

                v765 = v362;
                if (v58)
                {
                  v83 = v365;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v205;
              }

              while (v205);
              goto LABEL_846;
            case 9:
              if (v736)
              {
                v129 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)9,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, *v728);
                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v129 = v767[0];
              }

              do
              {
                v292 = v761;
                do
                {
                  *v86 = vmlaq_n_f32(vmulq_laneq_f32(*v86, *v83, 3), *v83, 1.0 - COERCE_FLOAT(HIDWORD(*v86)));
                  v293 = v83 + 16 * v743;
                  if (v293 >= v61)
                  {
                    v294 = -v747;
                  }

                  else
                  {
                    v294 = 0;
                  }

                  v83 = v293 + 16 * v294;
                  v86 += v743;
                  --v292;
                }

                while (v292);
                v86 += v763;
                v295 = v765;
                v296 = &v765[v85];
                if (v296 >= v58)
                {
                  v297 = -(v85 * v744);
                }

                else
                {
                  v297 = 0;
                }

                v298 = v296[v297].i64;
                v299 = v61 + 16 * v297 + 16 * v85;
                if (v58)
                {
                  v61 = v299;
                  v295 = v298;
                }

                v765 = v295;
                if (v58)
                {
                  v83 = v298;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v129;
              }

              while (v129);
              goto LABEL_846;
            case 10:
              if (v736)
              {
                v204 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)10,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, *v728);
                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v204 = v767[0];
              }

              do
              {
                v350 = v761;
                do
                {
                  *v86 = vmlaq_n_f32(vmulq_n_f32(*v86, 1.0 - COERCE_FLOAT(HIDWORD(*v83))), *v83, 1.0 - COERCE_FLOAT(HIDWORD(*v86)));
                  v351 = v83 + 16 * v743;
                  if (v351 >= v61)
                  {
                    v352 = -v747;
                  }

                  else
                  {
                    v352 = 0;
                  }

                  v83 = v351 + 16 * v352;
                  v86 += v743;
                  --v350;
                }

                while (v350);
                v86 += v763;
                v353 = v765;
                v354 = &v765[v85];
                if (v354 >= v58)
                {
                  v355 = -(v85 * v744);
                }

                else
                {
                  v355 = 0;
                }

                v356 = v354[v355].i64;
                v357 = v61 + 16 * v355 + 16 * v85;
                if (v58)
                {
                  v61 = v357;
                  v353 = v356;
                }

                v765 = v353;
                if (v58)
                {
                  v83 = v356;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v204;
              }

              while (v204);
              goto LABEL_846;
            case 11:
              if (v736)
              {
                v109 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  if ((*v728 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)11,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)11,_RGBAf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v109 = v767[0];
              }

              do
              {
                v249 = v761;
                do
                {
                  v250 = 1.0;
                  v251 = 1.0;
                  if (v18)
                  {
                    v251 = v86->f32[3];
                  }

                  if (v59)
                  {
                    v250 = *(v83 + 12);
                  }

                  v252 = 1.0;
                  v253 = 1.0;
                  if (v18)
                  {
                    v253 = v86->f32[3];
                  }

                  if (v59)
                  {
                    v252 = *(v83 + 12);
                  }

                  v254 = v251 + v250;
                  v255 = 1.0;
                  if (v254 > 1.0)
                  {
                    v254 = 1.0;
                  }

                  v256 = 1.0;
                  if (v18)
                  {
                    v256 = v86->f32[3];
                  }

                  if (v59)
                  {
                    v255 = *(v83 + 12);
                  }

                  v257 = v86->f32[1];
                  v258 = v253 - v86->f32[0];
                  v259 = *(v83 + 4);
                  v86->f32[0] = v254 - (v258 + (v252 - *v83));
                  v260 = 1.0;
                  v261 = 1.0;
                  if (v18)
                  {
                    v261 = v86->f32[3];
                  }

                  if (v59)
                  {
                    v260 = *(v83 + 12);
                  }

                  v262 = (v261 - v86->f32[2]) + (v260 - *(v83 + 8));
                  v86->f32[3] = v254;
                  v86->f32[1] = v254 - ((v256 - v257) + (v255 - v259));
                  v86->f32[2] = v254 - v262;
                  v263 = v83 + 16 * v743;
                  if (v263 >= v61)
                  {
                    v264 = -v747;
                  }

                  else
                  {
                    v264 = 0;
                  }

                  v83 = v263 + 16 * v264;
                  v86 += v743;
                  --v249;
                }

                while (v249);
                v86 += v763;
                v265 = v765;
                v266 = &v765[v85];
                if (v266 >= v58)
                {
                  v267 = -(v85 * v744);
                }

                else
                {
                  v267 = 0;
                }

                v268 = v266[v267].i64;
                v269 = v61 + 16 * v267 + 16 * v85;
                if (v58)
                {
                  v61 = v269;
                  v265 = v268;
                }

                v765 = v265;
                if (v58)
                {
                  v83 = v268;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v109;
              }

              while (v109);
              goto LABEL_846;
            case 12:
              if (v736)
              {
                v111 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  v112.i64[0] = 0;
                  v112.i32[2] = 0;
                  v112.i32[3] = v59 - 1;
                  v113 = vmvnq_s8(v112);
                  v114 = vandq_s8(vdupq_n_s32(v59 - 1), xmmword_18439CB00);
                  v115 = 32 * v743;
                  if ((*v728 & 0x30) != 0)
                  {
                    v116 = v61;
                    v117 = v765;
                    do
                    {
                      v118 = (v116 - v83) >> 4;
                      if (v118 >= v761)
                      {
                        v118 = v761;
                      }

                      v119 = v118;
                      if (v118 >= 2)
                      {
                        do
                        {
                          v120 = vminnmq_f32(vaddq_f32(v86[1], vorrq_s8(vandq_s8(*(v83 + 16), v113), v114)), xmmword_18439C4B0);
                          *v86 = vminnmq_f32(vaddq_f32(*v86, vorrq_s8(vandq_s8(*v83, v113), v114)), xmmword_18439C4B0);
                          v86[1] = v120;
                          v119 -= 2;
                          v83 += v115;
                          v86 = (v86 + v115);
                        }

                        while (v119 > 1);
                      }

                      for (jj = v119 + v761 - v118; jj; --jj)
                      {
                        *v86 = vminnmq_f32(vaddq_f32(*v86, vorrq_s8(vandq_s8(*v83, v113), v114)), xmmword_18439C4B0);
                        v122 = v83 + 16 * v743;
                        if (v122 >= v116)
                        {
                          v123 = -v747;
                        }

                        else
                        {
                          v123 = 0;
                        }

                        v83 = v122 + 16 * v123;
                        v86 += v743;
                      }

                      v86 += v763;
                      v124 = &v117[v85];
                      if (v124 >= v58)
                      {
                        v125 = -(v85 * v744);
                      }

                      else
                      {
                        v125 = 0;
                      }

                      v126 = v124 + 16 * v125;
                      v127 = v116 + 16 * v125 + 16 * v85;
                      if (v58)
                      {
                        v83 = v126;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v116 = v127;
                        v117 = v126;
                      }

                      _VF = __OFSUB__(v111--, 1);
                    }

                    while (!((v111 < 0) ^ _VF | (v111 == 0)));
                  }

                  else
                  {
                    v498 = v61;
                    v499 = v765;
                    do
                    {
                      v500 = (v498 - v83) >> 4;
                      if (v500 >= v761)
                      {
                        v500 = v761;
                      }

                      v501 = v500;
                      if (v500 >= 2)
                      {
                        do
                        {
                          v502 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(v86[1]), vorrq_s8(vandq_s8(vrev32q_s8(*(v83 + 16)), v113), v114)), xmmword_18439C4B0));
                          *v86 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(*v86), vorrq_s8(vandq_s8(vrev32q_s8(*v83), v113), v114)), xmmword_18439C4B0));
                          v86[1] = v502;
                          v501 -= 2;
                          v83 += v115;
                          v86 = (v86 + v115);
                        }

                        while (v501 > 1);
                      }

                      for (kk = v501 + v761 - v500; kk; --kk)
                      {
                        *v86 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(*v86), vorrq_s8(vandq_s8(vrev32q_s8(*v83), v113), v114)), xmmword_18439C4B0));
                        v504 = v83 + 16 * v743;
                        if (v504 >= v498)
                        {
                          v505 = -v747;
                        }

                        else
                        {
                          v505 = 0;
                        }

                        v83 = v504 + 16 * v505;
                        v86 += v743;
                      }

                      v86 += v763;
                      v506 = &v499[v85];
                      if (v506 >= v58)
                      {
                        v507 = -(v85 * v744);
                      }

                      else
                      {
                        v507 = 0;
                      }

                      v508 = v506 + 16 * v507;
                      v509 = v498 + 16 * v507 + 16 * v85;
                      if (v58)
                      {
                        v83 = v508;
                      }

                      else
                      {
                        v83 += 16 * v85;
                      }

                      if (v58)
                      {
                        v498 = v509;
                        v499 = v508;
                      }

                      _VF = __OFSUB__(v111--, 1);
                    }

                    while (!((v111 < 0) ^ _VF | (v111 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v111 = v767[0];
              }

              do
              {
                v282 = v761;
                do
                {
                  *v86->f32 = vadd_f32(*v86->f32, *v83);
                  v283 = 1.0;
                  if (v59)
                  {
                    v283 = *(v83 + 12);
                  }

                  v284 = v86->f32[3] + v283;
                  if (v284 > 1.0)
                  {
                    v284 = 1.0;
                  }

                  v86->f32[2] = v86->f32[2] + *(v83 + 8);
                  v86->f32[3] = v284;
                  v285 = v83 + 16 * v743;
                  if (v285 >= v61)
                  {
                    v286 = -v747;
                  }

                  else
                  {
                    v286 = 0;
                  }

                  v83 = v285 + 16 * v286;
                  v86 += v743;
                  --v282;
                }

                while (v282);
                v86 += v763;
                v287 = v765;
                v288 = &v765[v85];
                if (v288 >= v58)
                {
                  v289 = -(v85 * v744);
                }

                else
                {
                  v289 = 0;
                }

                v290 = v288[v289].i64;
                v291 = v61 + 16 * v289 + 16 * v85;
                if (v58)
                {
                  v61 = v291;
                  v287 = v290;
                }

                v765 = v287;
                if (v58)
                {
                  v83 = v290;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v111;
              }

              while (v111);
              goto LABEL_846;
            case 13:
              if (v736)
              {
                v201 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)13,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v201 = v767[0];
              }

              do
              {
                v757 = v201;
                v462 = v761;
                do
                {
                  v463 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v463 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v714) = LODWORD(v16);
                      v724 = *&v12;
                      LODWORD(v714) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAmultiplyPDA(v86->f32[0], v10, v11, v12, v463, v14, v15, v16, *v83, v714, v724);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v464 = v83 + 16 * v743;
                  if (v464 >= v61)
                  {
                    v465 = -v747;
                  }

                  else
                  {
                    v465 = 0;
                  }

                  v83 = v464 + 16 * v465;
                  v86 += v743;
                  --v462;
                }

                while (v462);
                v86 += v763;
                v466 = v765;
                v467 = &v765[v85];
                v468 = -(v85 * v744);
                if (v467 < v58)
                {
                  v468 = 0;
                }

                v469 = v467[v468].i64;
                v470 = v61 + 16 * v468 + 16 * v85;
                if (v58)
                {
                  v61 = v470;
                  v466 = v469;
                }

                v765 = v466;
                if (v58)
                {
                  v83 = v469;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v201 = v757 - 1;
              }

              while (v757 != 1);
              goto LABEL_830;
            case 14:
              if (v736)
              {
                v108 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)14,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v108 = v767[0];
              }

              __asm { FMOV            V1.2S, #1.0 }

              do
              {
                v238 = v761;
                do
                {
                  v239 = 1.0;
                  v240 = 1.0;
                  if (!v59 || (v240 = *(v83 + 12), v240 > 0.0))
                  {
                    if (v18 && (v239 = v86->f32[3], v239 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      v241 = v86->f32[2] + (*(v83 + 8) * (1.0 - v86->f32[2]));
                      v240 = (v240 + v239) - (v239 * v240);
                      *v86->f32 = vmla_f32(*v86->f32, vsub_f32(_D1, *v86->f32), *v83);
                      v86->f32[2] = v241;
                    }

                    v86->f32[3] = v240;
                  }

                  v242 = v83 + 16 * v743;
                  if (v242 >= v61)
                  {
                    v243 = -v747;
                  }

                  else
                  {
                    v243 = 0;
                  }

                  v83 = v242 + 16 * v243;
                  v86 += v743;
                  --v238;
                }

                while (v238);
                v86 += v763;
                v244 = v765;
                v245 = &v765[v85];
                if (v245 >= v58)
                {
                  v246 = -(v85 * v744);
                }

                else
                {
                  v246 = 0;
                }

                v247 = v245[v246].i64;
                v248 = v61 + 16 * v246 + 16 * v85;
                if (v58)
                {
                  v61 = v248;
                  v244 = v247;
                }

                v765 = v244;
                if (v58)
                {
                  v83 = v247;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v108;
              }

              while (v108);
              goto LABEL_846;
            case 15:
              if (v736)
              {
                v176 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)15,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v176 = v767[0];
              }

              do
              {
                v753 = v176;
                v426 = v761;
                do
                {
                  v427 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v427 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v711) = LODWORD(v16);
                      v721 = *&v12;
                      LODWORD(v711) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAoverlayPDA(v86->f32[0], v10, v11, v12, v427, v14, v15, v16, *v83, v711, v721);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v428 = v83 + 16 * v743;
                  if (v428 >= v61)
                  {
                    v429 = -v747;
                  }

                  else
                  {
                    v429 = 0;
                  }

                  v83 = v428 + 16 * v429;
                  v86 += v743;
                  --v426;
                }

                while (v426);
                v86 += v763;
                v430 = v765;
                v431 = &v765[v85];
                v432 = -(v85 * v744);
                if (v431 < v58)
                {
                  v432 = 0;
                }

                v433 = v431[v432].i64;
                v434 = v61 + 16 * v432 + 16 * v85;
                if (v58)
                {
                  v61 = v434;
                  v430 = v433;
                }

                v765 = v430;
                if (v58)
                {
                  v83 = v433;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v176 = v753 - 1;
              }

              while (v753 != 1);
              goto LABEL_830;
            case 16:
              if (v736)
              {
                v107 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)16,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v107 = v767[0];
              }

              do
              {
                v752 = v107;
                v417 = v761;
                do
                {
                  v418 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v418 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v710) = LODWORD(v16);
                      v720 = *&v12;
                      LODWORD(v710) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAdarkenPDA(v86->f32[0], v10, v11, v12, v418, v14, v15, v16, *v83, v710, v720);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v419 = v83 + 16 * v743;
                  if (v419 >= v61)
                  {
                    v420 = -v747;
                  }

                  else
                  {
                    v420 = 0;
                  }

                  v83 = v419 + 16 * v420;
                  v86 += v743;
                  --v417;
                }

                while (v417);
                v86 += v763;
                v421 = v765;
                v422 = &v765[v85];
                v423 = -(v85 * v744);
                if (v422 < v58)
                {
                  v423 = 0;
                }

                v424 = v422[v423].i64;
                v425 = v61 + 16 * v423 + 16 * v85;
                if (v58)
                {
                  v61 = v425;
                  v421 = v424;
                }

                v765 = v421;
                if (v58)
                {
                  v83 = v424;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v107 = v752 - 1;
              }

              while (v752 != 1);
              goto LABEL_830;
            case 17:
              if (v736)
              {
                v197 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)17,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v197 = v767[0];
              }

              do
              {
                v754 = v197;
                v435 = v761;
                do
                {
                  v436 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v436 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v712) = LODWORD(v16);
                      v722 = *&v12;
                      LODWORD(v712) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAlightenPDA(v86->f32[0], v10, v11, v12, v436, v14, v15, v16, *v83, v712, v722);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v437 = v83 + 16 * v743;
                  if (v437 >= v61)
                  {
                    v438 = -v747;
                  }

                  else
                  {
                    v438 = 0;
                  }

                  v83 = v437 + 16 * v438;
                  v86 += v743;
                  --v435;
                }

                while (v435);
                v86 += v763;
                v439 = v765;
                v440 = &v765[v85];
                v441 = -(v85 * v744);
                if (v440 < v58)
                {
                  v441 = 0;
                }

                v442 = v440[v441].i64;
                v443 = v61 + 16 * v441 + 16 * v85;
                if (v58)
                {
                  v61 = v443;
                  v439 = v442;
                }

                v765 = v439;
                if (v58)
                {
                  v83 = v442;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v197 = v754 - 1;
              }

              while (v754 != 1);
              goto LABEL_830;
            case 18:
              if (v736)
              {
                v203 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)18,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v203 = v767[0];
              }

              do
              {
                v758 = v203;
                v471 = v761;
                do
                {
                  v472 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v472 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v715) = LODWORD(v16);
                      v725 = *&v12;
                      LODWORD(v715) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAcolordodgePDA(v86->f32[0], v10, v11, v12, v472, v14, v15, v16, *v83, v715, v725);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v473 = v83 + 16 * v743;
                  if (v473 >= v61)
                  {
                    v474 = -v747;
                  }

                  else
                  {
                    v474 = 0;
                  }

                  v83 = v473 + 16 * v474;
                  v86 += v743;
                  --v471;
                }

                while (v471);
                v86 += v763;
                v475 = v765;
                v476 = &v765[v85];
                v477 = -(v85 * v744);
                if (v476 < v58)
                {
                  v477 = 0;
                }

                v478 = v476[v477].i64;
                v479 = v61 + 16 * v477 + 16 * v85;
                if (v58)
                {
                  v61 = v479;
                  v475 = v478;
                }

                v765 = v475;
                if (v58)
                {
                  v83 = v478;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v203 = v758 - 1;
              }

              while (v758 != 1);
              goto LABEL_830;
            case 19:
              if (v736)
              {
                v222 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)19,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v222 = v767[0];
              }

              do
              {
                v759 = v222;
                v480 = v761;
                do
                {
                  v481 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v481 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v716) = LODWORD(v16);
                      v726 = *&v12;
                      LODWORD(v716) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAcolorburnPDA(v86->f32[0], v10, v11, v12, v481, v14, v15, v16, *v83, v716, v726);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v482 = v83 + 16 * v743;
                  if (v482 >= v61)
                  {
                    v483 = -v747;
                  }

                  else
                  {
                    v483 = 0;
                  }

                  v83 = v482 + 16 * v483;
                  v86 += v743;
                  --v480;
                }

                while (v480);
                v86 += v763;
                v484 = v765;
                v485 = &v765[v85];
                v486 = -(v85 * v744);
                if (v485 < v58)
                {
                  v486 = 0;
                }

                v487 = v485[v486].i64;
                v488 = v61 + 16 * v486 + 16 * v85;
                if (v58)
                {
                  v61 = v488;
                  v484 = v487;
                }

                v765 = v484;
                if (v58)
                {
                  v83 = v487;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v222 = v759 - 1;
              }

              while (v759 != 1);
              goto LABEL_830;
            case 20:
              if (v736)
              {
                v198 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)20,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v198 = v767[0];
              }

              do
              {
                v755 = v198;
                v444 = v761;
                do
                {
                  LODWORD(v13) = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (LODWORD(v13) = v86->i32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      *&v709[8] = __PAIR64__(LODWORD(v12), LODWORD(v16));
                      *v709 = *(v83 + 4);
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAsoftlightPDA(v86->f32[0], v86->f32[1], v11, *&v12, v13, v14, v15, v16, v1, v2, v3, v4, v42, v6, v45, v46, *v83, *v709, *&v709[4], *&v709[12]);
                      v86->i32[1] = v445;
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v446 = v83 + 16 * v743;
                  if (v446 >= v61)
                  {
                    v447 = -v747;
                  }

                  else
                  {
                    v447 = 0;
                  }

                  v83 = v446 + 16 * v447;
                  v86 += v743;
                  --v444;
                }

                while (v444);
                v86 += v763;
                v448 = v765;
                v449 = &v765[v85];
                v450 = -(v85 * v744);
                if (v449 < v58)
                {
                  v450 = 0;
                }

                v451 = v449[v450].i64;
                v452 = v61 + 16 * v450 + 16 * v85;
                if (v58)
                {
                  v61 = v452;
                  v448 = v451;
                }

                v765 = v448;
                if (v58)
                {
                  v83 = v451;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v198 = v755 - 1;
              }

              while (v755 != 1);
              goto LABEL_830;
            case 21:
              if (v736)
              {
                v200 = v767[0];
                if (*(v43 + 132))
                {
                  v60 = v48;
                  composite_pixelshape<(CGCompositeOperation)21,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }

                v730 = v84;
                v735 = v48;
              }

              else
              {
                v730 = v84;
                v735 = v48;
                v200 = v767[0];
              }

              do
              {
                v756 = v200;
                v453 = v761;
                do
                {
                  v454 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v454 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v10) = v86->i32[1];
                      LODWORD(v11) = v86->i32[2];
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      HIDWORD(v713) = LODWORD(v16);
                      v723 = *&v12;
                      LODWORD(v713) = HIDWORD(*(v83 + 4));
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAhardlightPDA(v86->f32[0], v10, v11, v12, v454, v14, v15, v16, *v83, v713, v723);
                      v86->i32[1] = LODWORD(v10);
                      v86->i32[2] = LODWORD(v11);
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v455 = v83 + 16 * v743;
                  if (v455 >= v61)
                  {
                    v456 = -v747;
                  }

                  else
                  {
                    v456 = 0;
                  }

                  v83 = v455 + 16 * v456;
                  v86 += v743;
                  --v453;
                }

                while (v453);
                v86 += v763;
                v457 = v765;
                v458 = &v765[v85];
                v459 = -(v85 * v744);
                if (v458 < v58)
                {
                  v459 = 0;
                }

                v460 = v458[v459].i64;
                v461 = v61 + 16 * v459 + 16 * v85;
                if (v58)
                {
                  v61 = v461;
                  v457 = v460;
                }

                v765 = v457;
                if (v58)
                {
                  v83 = v460;
                }

                else
                {
                  v83 += 16 * v85;
                }

                v200 = v756 - 1;
              }

              while (v756 != 1);
LABEL_830:
              v767[0] = 0;
              v88 = v742;
              v60 = v735;
              v84 = v730;
              goto LABEL_847;
            case 22:
              if (v736)
              {
                v221 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)22,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v221 = v767[0];
              }

              do
              {
                v367 = v761;
                do
                {
                  v368 = 1.0;
                  v369 = 1.0;
                  if (!v59 || (v369 = *(v83 + 12), v369 > 0.0))
                  {
                    if (v18 && (v368 = v86->f32[3], v368 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      v370 = v86->f32[2];
                      v371 = *(v83 + 8);
                      v372 = vmul_n_f32(*v86->f32, v369);
                      v373 = vmul_n_f32(*v83, v368);
                      v374 = vsub_f32(vadd_f32(*v86->f32, *v83), v372);
                      v375 = vsub_f32(v372, v373);
                      v376 = vadd_f32(vsub_f32(v374, v373), vbsl_s8(vcltz_f32(v375), vneg_f32(v375), v375));
                      v373.f32[0] = v370 + v371;
                      v377 = v370 * v369;
                      v378 = v371 * v368;
                      v373.f32[0] = v373.f32[0] - v377;
                      v379 = v377 - v378;
                      v380 = v373.f32[0] - v378;
                      if (v379 < 0.0)
                      {
                        v379 = -v379;
                      }

                      v369 = (v368 + v369) - (v368 * v369);
                      *v86->f32 = v376;
                      v86->f32[2] = v380 + v379;
                    }

                    v86->f32[3] = v369;
                  }

                  v381 = v83 + 16 * v743;
                  if (v381 >= v61)
                  {
                    v382 = -v747;
                  }

                  else
                  {
                    v382 = 0;
                  }

                  v83 = v381 + 16 * v382;
                  v86 += v743;
                  --v367;
                }

                while (v367);
                v86 += v763;
                v383 = v765;
                v384 = &v765[v85];
                if (v384 >= v58)
                {
                  v385 = -(v85 * v744);
                }

                else
                {
                  v385 = 0;
                }

                v386 = v384[v385].i64;
                v387 = v61 + 16 * v385 + 16 * v85;
                if (v58)
                {
                  v61 = v387;
                  v383 = v386;
                }

                v765 = v383;
                if (v58)
                {
                  v83 = v386;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v221;
              }

              while (v221);
              goto LABEL_846;
            case 23:
              if (v736)
              {
                v223 = v767[0];
                v60 = v48;
                if (*(v43 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)23,_rgbaf_t>(v86, v763, v83, v85, v765, v744, v747, v61, v58, v761, v767[0], v743, v727, v59, *v728);
                  goto LABEL_847;
                }
              }

              else
              {
                v60 = v48;
                v223 = v767[0];
              }

              do
              {
                v388 = v761;
                do
                {
                  v389 = 1.0;
                  v390 = 1.0;
                  if (!v59 || (v390 = *(v83 + 12), v390 > 0.0))
                  {
                    if (v18 && (v389 = v86->f32[3], v389 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      v391 = (v86->f32[2] + *(v83 + 8)) + ((*(v83 + 8) * v86->f32[2]) * -2.0);
                      v390 = (v390 + v389) - (v389 * v390);
                      *v86->f32 = vmla_f32(vadd_f32(*v86->f32, *v83), 0xC0000000C0000000, vmul_f32(*v83, *v86->f32));
                      v86->f32[2] = v391;
                    }

                    v86->f32[3] = v390;
                  }

                  v392 = v83 + 16 * v743;
                  if (v392 >= v61)
                  {
                    v393 = -v747;
                  }

                  else
                  {
                    v393 = 0;
                  }

                  v83 = v392 + 16 * v393;
                  v86 += v743;
                  --v388;
                }

                while (v388);
                v86 += v763;
                v394 = v765;
                v395 = &v765[v85];
                if (v395 >= v58)
                {
                  v396 = -(v85 * v744);
                }

                else
                {
                  v396 = 0;
                }

                v397 = v395[v396].i64;
                v398 = v61 + 16 * v396 + 16 * v85;
                if (v58)
                {
                  v61 = v398;
                  v394 = v397;
                }

                v765 = v394;
                if (v58)
                {
                  v83 = v397;
                }

                else
                {
                  v83 += 16 * v85;
                }

                --v223;
              }

              while (v223);
              goto LABEL_846;
            case 24:
              v729 = v84;
              v734 = v48;
              v142 = v767[0];
              v739 = -(v85 * v744);
              do
              {
                v750 = v142;
                v143 = v761;
                do
                {
                  v144 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v144 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      v719 = *&v12;
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAhuePDA(v86->f32[0], v86->f32[1], v86->f32[2], v12, v144, v14, v15, v16, *v83, COERCE_FLOAT(*(v83 + 4)), COERCE_FLOAT(HIDWORD(*(v83 + 4))), *&v16, v719);
                      v86->i32[1] = v145;
                      v86->i32[2] = v146;
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v147 = v83 + 16 * v743;
                  if (v147 >= v61)
                  {
                    v148 = -v747;
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v83 = v147 + 16 * v148;
                  v86 += v743;
                  --v143;
                }

                while (v143);
                v86 += v763;
                v85 = v760;
                v149 = v765;
                v150 = &v765[v760];
                v151 = v739;
                if (v150 < v58)
                {
                  v151 = 0;
                }

                v152 = v150[v151].i64;
                v153 = v61 + 16 * v151 + 16 * v760;
                if (v58)
                {
                  v61 = v153;
                  v149 = v152;
                }

                v765 = v149;
                if (v58)
                {
                  v83 = v152;
                }

                else
                {
                  v83 += 16 * v760;
                }

                v142 = v750 - 1;
              }

              while (v750 != 1);
              goto LABEL_303;
            case 25:
              v729 = v84;
              v734 = v48;
              v130 = v767[0];
              v738 = -(v85 * v744);
              do
              {
                v749 = v130;
                v131 = v761;
                do
                {
                  v132 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v132 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      v718 = *&v12;
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAsaturationPDA(v86->f32[0], v86->f32[1], v86->f32[2], v12, v132, v14, v15, v16, *v83, COERCE_FLOAT(*(v83 + 4)), COERCE_FLOAT(HIDWORD(*(v83 + 4))), *&v16, v718);
                      v86->i32[1] = v133;
                      v86->i32[2] = v134;
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v135 = v83 + 16 * v743;
                  if (v135 >= v61)
                  {
                    v136 = -v747;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v83 = v135 + 16 * v136;
                  v86 += v743;
                  --v131;
                }

                while (v131);
                v86 += v763;
                v85 = v760;
                v137 = v765;
                v138 = &v765[v760];
                v139 = v738;
                if (v138 < v58)
                {
                  v139 = 0;
                }

                v140 = v138[v139].i64;
                v141 = v61 + 16 * v139 + 16 * v760;
                if (v58)
                {
                  v61 = v141;
                  v137 = v140;
                }

                v765 = v137;
                if (v58)
                {
                  v83 = v140;
                }

                else
                {
                  v83 += 16 * v760;
                }

                v130 = v749 - 1;
              }

              while (v749 != 1);
              goto LABEL_303;
            case 26:
              v729 = v84;
              v734 = v48;
              v224 = v767[0];
              v740 = -(v85 * v744);
              do
              {
                v751 = v224;
                v225 = v761;
                do
                {
                  LODWORD(v14) = 1.0;
                  v226 = 1.0;
                  if (!v59 || (v226 = *(v83 + 12), v226 > 0.0))
                  {
                    LODWORD(v15) = v86->i32[3];
                    if (v18 && (LODWORD(v14) = v86->i32[3], *&v15 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v12) = *(v83 + 12);
                      LODWORD(v16) = v86->i32[2];
                      v227 = PDAluminosityPDA(*v83, *(v83 + 4), *(v83 + 8), v12, v226, v14, v15, v16, COERCE_FLOAT(v86->i64[0]), COERCE_FLOAT(HIDWORD(v86->i64[0])), *&v16, v86->f32[3], *&v14);
                      v226 = *&v12;
                      v86->f32[0] = v227;
                      v86->i32[1] = v228;
                      v86->i32[2] = v229;
                    }

                    v86->f32[3] = v226;
                  }

                  v230 = v83 + 16 * v743;
                  if (v230 >= v61)
                  {
                    v231 = -v747;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  v83 = v230 + 16 * v231;
                  v86 += v743;
                  --v225;
                }

                while (v225);
                v86 += v763;
                v85 = v760;
                v232 = v765;
                v233 = &v765[v760];
                v234 = v740;
                if (v233 < v58)
                {
                  v234 = 0;
                }

                v235 = v233[v234].i64;
                v236 = v61 + 16 * v234 + 16 * v760;
                if (v58)
                {
                  v61 = v236;
                  v232 = v235;
                }

                v765 = v232;
                if (v58)
                {
                  v83 = v235;
                }

                else
                {
                  v83 += 16 * v760;
                }

                v224 = v751 - 1;
              }

              while (v751 != 1);
              goto LABEL_303;
            case 27:
              v729 = v84;
              v734 = v48;
              v95 = v767[0];
              v737 = -(v85 * v744);
              do
              {
                v748 = v95;
                v96 = v761;
                do
                {
                  v97 = 1.0;
                  LODWORD(v12) = 1.0;
                  if (!v59 || (LODWORD(v12) = *(v83 + 12), *&v12 > 0.0))
                  {
                    LODWORD(v14) = v86->i32[3];
                    if (v18 && (v97 = v86->f32[3], *&v14 <= 0.0))
                    {
                      v86->i64[0] = *v83;
                      v86->i32[2] = *(v83 + 8);
                    }

                    else
                    {
                      LODWORD(v15) = *v83;
                      LODWORD(v16) = *(v83 + 12);
                      v717 = *&v12;
                      LODWORD(v12) = v86->i32[3];
                      v86->f32[0] = PDAluminosityPDA(v86->f32[0], v86->f32[1], v86->f32[2], v12, v97, v14, v15, v16, *v83, COERCE_FLOAT(*(v83 + 4)), COERCE_FLOAT(HIDWORD(*(v83 + 4))), *&v16, v717);
                      v86->i32[1] = v98;
                      v86->i32[2] = v99;
                    }

                    v86->i32[3] = LODWORD(v12);
                  }

                  v100 = v83 + 16 * v743;
                  if (v100 >= v61)
                  {
                    v101 = -v747;
                  }

                  else
                  {
                    v101 = 0;
                  }

                  v83 = v100 + 16 * v101;
                  v86 += v743;
                  --v96;
                }

                while (v96);
                v86 += v763;
                v85 = v760;
                v102 = v765;
                v103 = &v765[v760];
                v104 = v737;
                if (v103 < v58)
                {
                  v104 = 0;
                }

                v105 = v103[v104].i64;
                v106 = v61 + 16 * v104 + 16 * v760;
                if (v58)
                {
                  v61 = v106;
                  v102 = v105;
                }

                v765 = v102;
                if (v58)
                {
                  v83 = v105;
                }

                else
                {
                  v83 += 16 * v760;
                }

                v95 = v748 - 1;
              }

              while (v748 != 1);
LABEL_303:
              v767[0] = 0;
              v88 = v742;
              v60 = v734;
              v84 = v729;
              goto LABEL_847;
            default:
              v60 = v48;
              goto LABEL_847;
          }

          break;
        }

LABEL_511:
        v338 = v761;
        while (1)
        {
          v339 = v86->f32[3];
          v340 = 1.0 - v339;
          if ((1.0 - v339) >= 1.0)
          {
            break;
          }

          if (v340 > 0.0)
          {
            *v86->f32 = vmla_n_f32(*v86->f32, *v83, v340);
            v86->f32[2] = v86->f32[2] + (*(v83 + 8) * v340);
            v341 = 1.0;
            if (v59)
            {
              v341 = *(v83 + 12);
            }

            v342 = v339 + (v341 * v340);
LABEL_519:
            v86->f32[3] = v342;
          }

          v343 = v83 + 16 * v743;
          if (v343 >= v61)
          {
            v344 = -v747;
          }

          else
          {
            v344 = 0;
          }

          v83 = v343 + 16 * v344;
          v86 += v743;
          if (!--v338)
          {
            v86 += v763;
            v345 = v765;
            v346 = &v765[v85];
            if (v346 >= v58)
            {
              v347 = -(v85 * v744);
            }

            else
            {
              v347 = 0;
            }

            v348 = v346[v347].i64;
            v349 = v61 + 16 * v347 + 16 * v85;
            if (v58)
            {
              v61 = v349;
              v345 = v348;
            }

            v765 = v345;
            if (v58)
            {
              v83 = v348;
            }

            else
            {
              v83 += 16 * v85;
            }

            if (!--v202)
            {
LABEL_846:
              v767[0] = 0;
              goto LABEL_847;
            }

            goto LABEL_511;
          }
        }

        v86->i64[0] = *v83;
        v86->i32[2] = *(v83 + 8);
        v342 = 1.0;
        if (v59)
        {
          v342 = *(v83 + 12);
        }

        goto LABEL_519;
      }

      if (v733)
      {
        v745 = 0;
        v82 = &v733[v47 * (v732 % v744)];
        v83 = v82[v731 % v747].i64;
        v61 = &v82[v747];
        v743 = 1;
        v765 = v83;
        v84 = v44;
        v85 = *(v741 + 76) >> 4;
        v86 = v84;
        v87 = v761;
        v731 %= v747;
        v732 %= v744;
        v88 = v742;
        goto LABEL_49;
      }

      v61 = 0;
      v743 = 1;
      v87 = v761;
      v88 = v742;
      v84 = v44;
      v89 = *(v741 + 76) >> 4;
LABEL_48:
      v58 = 0;
      v745 = 0;
      v765 = 0;
      v85 = v89 - v87;
      v83 = v48;
      v86 = v84;
      goto LABEL_49;
    }

    v48 = v733[v47 * *(v741 + 60) + *(v741 + 56)].i64;
    if (v47 == v42)
    {
      v49 = (v44 - v48) >> 4;
      if (v49 < 1)
      {
        goto LABEL_22;
      }

      if (v49 > v761)
      {
        v50 = v48 + 16 * v42 * v24;
        if (v44 <= v50 + 16 * v761 - 16)
        {
          v44 += 16 * v42 * v24;
          v42 = -v42;
          v4 = 1;
          v48 = v50;
          goto LABEL_42;
        }

LABEL_22:
        v4 = 1;
LABEL_42:
        v747 = v42;
        goto LABEL_43;
      }

      v44 += 16 * v22;
      v747 = v42;
      v48 += 16 * v22;
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
      v747 = *(v741 + 76) >> 4;
    }

LABEL_43:
    v59 = v17 != 0;
    if (v26)
    {
      v60 = v48;
      v744 = 0;
      v765 = 0;
      v58 = 0;
      v61 = -1;
      v57 = v747;
      goto LABEL_45;
    }

    v743 = v4;
    v744 = 0;
    v87 = v4 * v761;
    v61 = -1;
    v89 = v747;
    v88 = v742;
    v84 = v44;
    goto LABEL_48;
  }

  v27 = *(v2 + 128);
  if ((v27 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      RGBAf_mark_constmask(v2, v19, v3, v4, v5, v6, v27, v8, v9, v10, v11, v12, v13, v14, v15, v16);
    }

    else
    {
      RGBAf_mark_pixelmask(v1, v2, v19, v9, v10, v11, v12, v13, v14, v15, v16, v4, v5, v6, v27, v8);
    }
  }

  else
  {
    v51 = *(v2 + 112);
    v52 = *(v2 + 116);
    v53 = (v51 + 15) & 0xFFFFFFF0;
    v54 = v53 * v52;
    if (v54 <= 4096)
    {
      v56 = v777;
    }

    else
    {
      v55 = malloc_type_malloc(v54, 0x100004077774924uLL);
      if (!v55)
      {
        return 1;
      }

      v56 = v55;
      v26 = *(v21 + 136);
      LODWORD(v27) = *(v21 + 128);
    }

    CGSConvertBitsToMask(v26, *(v21 + 124), v56, v53, v51, v52, v27);
    v75 = *(v21 + 112);
    v773 = *(v21 + 96);
    v774 = v75;
    v76 = *(v21 + 144);
    v775 = *(v21 + 128);
    v776 = v76;
    v77 = *(v21 + 48);
    v769 = *(v21 + 32);
    v770 = v77;
    v78 = *(v21 + 80);
    v771 = *(v21 + 64);
    v772 = v78;
    v79 = *v21;
    v80 = *(v21 + 16);
    *v767 = *v21;
    v768 = v80;
    HIDWORD(v774) = (v51 + 15) & 0xFFFFFFF0;
    *(&v775 + 1) = v56;
    if (BYTE1(v767[0]) << 8 == 1024)
    {
      RGBAf_mark_constmask(v767, v742, v63, v64, v65, v66, v67, v68, *&v79, *&v80, v69, v70, v71, v72, v73, v74);
    }

    else
    {
      RGBAf_mark_pixelmask(v25, v767, v742, *&v79, *&v80, v69, v70, v71, v72, v73, v74, v64, v65, v66, v67, v68);
    }

    if (v56 != v777)
    {
      v81 = v56;
      goto LABEL_1214;
    }
  }

  return 1;
}

float PDAmultiplyPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v11 = a1 * a9;
  result = (a1 * a9) + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v11;
  }

  if (a5 != 1.0)
  {
    return result + (a9 * (1.0 - a5));
  }

  return result;
}

float PDAoverlayPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v11 = (a1 * a9) + (a1 * a9);
  v12 = a1 < (a5 * 0.5);
  v13 = ((((a5 + 1.0) * a9) + (a1 * (a11 + 1.0))) - v11) - (a5 * a11);
  result = (((1.0 - a5) * a9) + (a1 * (1.0 - a11))) + v11;
  if (!v12)
  {
    return v13;
  }

  return result;
}

float PDAlightenPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v11 = a1 * a11;
  if ((a9 * a5) > (a1 * a11))
  {
    v11 = a9 * a5;
  }

  result = v11 + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v11;
  }

  if (a5 != 1.0)
  {
    return result + (a9 * (1.0 - a5));
  }

  return result;
}

float PDAdarkenPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v11 = a1 * a11;
  if ((a9 * a5) < (a1 * a11))
  {
    v11 = a9 * a5;
  }

  result = v11 + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v11;
  }

  if (a5 != 1.0)
  {
    return result + (a9 * (1.0 - a5));
  }

  return result;
}

float PDAcolordodgePDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v11 = 0.0;
  if (a1 != 0.0)
  {
    v11 = 1.0;
    if (a9 != a11)
    {
      v11 = (a1 * (a11 * a11)) / (a11 - a9);
    }
  }

  result = v11 + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v11;
  }

  if (a5 != 1.0)
  {
    result = result + (a9 * (1.0 - a5));
  }

  if (result > ((a5 + a11) - (a5 * a11)))
  {
    return (a5 + a11) - (a5 * a11);
  }

  return result;
}

float PDAcolorburnPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v12 = (a5 * a11) + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    v12 = a5 * a11;
  }

  if (a5 == 1.0)
  {
    result = v12;
  }

  else
  {
    result = v12 + (a9 * (1.0 - a5));
  }

  v14 = a5 - a1;
  if (v14 != 0.0)
  {
    if (a9 == 0.0)
    {
      return 0.0;
    }

    result = result - ((v14 * (a11 * a11)) / a9);
    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

float PDAhardlightPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v11 = (a1 * a9) + (a1 * a9);
  v12 = (((1.0 - a5) * a9) + (a1 * (1.0 - a11))) + v11;
  result = ((((a5 + 1.0) * a9) + (a1 * (a11 + 1.0))) - v11) - (a5 * a11);
  if (a9 <= (a11 * 0.5))
  {
    return v12;
  }

  return result;
}

float PDAsoftlightPDA(float a1, float a2, double a3, int32x2_t a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19, float a20)
{
  *a4.i32 = a20;
  if (*&a5 == 0.0)
  {
    v22.i32[1] = 0;
  }

  else
  {
    v20 = vmul_f32(__PAIR64__(LODWORD(a1), LODWORD(a2)), __PAIR64__(a17, a18));
    v21 = vsub_f32(vadd_f32(v20, v20), vdiv_f32(vmul_f32(vmul_f32(__PAIR64__(LODWORD(a1), LODWORD(a2)), __PAIR64__(LODWORD(a1), LODWORD(a2))), vsub_f32(vadd_f32(__PAIR64__(a17, a18), __PAIR64__(a17, a18)), vdup_lane_s32(a4, 0))), vdup_lane_s32(*&a5, 0)));
    v22 = vbic_s8(v21, vcltz_f32(v21));
  }

  result = *&v22.i32[1] + (a1 * (1.0 - a20));
  if (a20 == 1.0)
  {
    result = *&v22.i32[1];
  }

  if (*&a5 != 1.0)
  {
    return result + (*&a17 * (1.0 - *&a5));
  }

  return result;
}

float PDAhuePDA(float a1, float a2, float a3, double a4, float a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v13 = a10;
  v14 = a11;
  v37 = *MEMORY[0x1E69E9840];
  v15 = a1 * a13;
  v16 = a1 - (a1 * a13);
  if (a13 == 1.0)
  {
    v16 = 0.0;
  }

  else
  {
    a3 = a3 * a13;
  }

  if (a13 == 1.0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2 * a13;
  }

  if (a13 == 1.0)
  {
    v15 = a1;
  }

  v18 = (a9 + v16) - (a9 * a5);
  if (a5 == 1.0)
  {
    v19 = a9;
  }

  else
  {
    v19 = a9 * a5;
  }

  if (a5 == 1.0)
  {
    v18 = v16;
  }

  else
  {
    v13 = a10 * a5;
    v14 = a11 * a5;
  }

  v34 = v19;
  v35 = v13;
  v36 = v14;
  v20 = v19 < v13;
  v21 = v19 >= v13;
  if (v19 < v13)
  {
    v22 = v19;
  }

  else
  {
    v22 = v13;
  }

  if (v19 >= v13)
  {
    v13 = v19;
  }

  if (v14 <= v13)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  v24 = 2;
  if (v14 <= v13)
  {
    v25 = v20;
  }

  else
  {
    v25 = 2;
  }

  if (v14 < v22)
  {
    v26 = v20;
  }

  else
  {
    v24 = v21;
    v21 = v23;
    v26 = v25;
  }

  v27 = *(&v34 + v26);
  v28 = *(&v34 + v24);
  if (v27 <= v28)
  {
    *(&v34 + v26) = 0.0;
    *(&v34 + v21) = 0.0;
  }

  else
  {
    if (v15 >= v17)
    {
      v29 = v17;
    }

    else
    {
      v29 = v15;
    }

    if (v15 >= v17)
    {
      v30 = v15;
    }

    else
    {
      v30 = v17;
    }

    if (a3 > v30)
    {
      v31 = a3;
    }

    else
    {
      v31 = v30;
    }

    if (a3 >= v29)
    {
      v30 = v31;
    }

    else
    {
      v29 = a3;
    }

    v32 = v30 - v29;
    *(&v34 + v26) = v32;
    *(&v34 + v21) = (v32 / (v27 - v28)) * (*(&v34 + v21) - v28);
  }

  *(&v34 + v24) = 0.0;
  return v18 + (v34 + ((((v17 - v35) * 0.59) + ((v15 - v34) * 0.3)) + ((a3 - v36) * 0.11)));
}

float PDAsaturationPDA(float a1, float a2, float a3, double a4, float a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a13 == 1.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = a1 - (a1 * a13);
    a3 = a3 * a13;
    a2 = a2 * a13;
    a1 = a1 * a13;
  }

  v14 = a9 * a5;
  v15 = a10 * a5;
  if (a5 == 1.0)
  {
    v14 = a9;
    v15 = a10;
    v16 = a11;
  }

  else
  {
    v16 = a11 * a5;
  }

  if (a5 == 1.0)
  {
    v17 = v13;
  }

  else
  {
    v17 = (a9 + v13) - (a9 * a5);
  }

  v31 = a1;
  v32 = a2;
  v33 = a3;
  v18 = a1 >= a2;
  if (a1 < a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = a2;
  }

  if (a1 < a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = a1;
  }

  if (a3 <= v20)
  {
    v21 = a1 >= a2;
  }

  else
  {
    v21 = a1 < a2;
  }

  v22 = 2;
  if (a3 <= v20)
  {
    v23 = a1 < a2;
  }

  else
  {
    v23 = 2;
  }

  if (a3 < v19)
  {
    v24 = a1 < a2;
  }

  else
  {
    v22 = a1 >= a2;
    v18 = v21;
    v24 = v23;
  }

  v25 = *(&v31 + v24);
  v26 = *(&v31 + v22);
  if (v25 <= v26)
  {
    *(&v31 + v24) = 0.0;
    *(&v31 + v18) = 0.0;
  }

  else
  {
    if (v14 >= v15)
    {
      v27 = v15;
    }

    else
    {
      v27 = v14;
    }

    if (v14 < v15)
    {
      v14 = v15;
    }

    if (v16 > v14)
    {
      v28 = v16;
    }

    else
    {
      v28 = v14;
    }

    if (v16 >= v27)
    {
      v16 = v27;
      v14 = v28;
    }

    v29 = v14 - v16;
    *(&v31 + v24) = v29;
    *(&v31 + v18) = (v29 / (v25 - v26)) * (*(&v31 + v18) - v26);
  }

  *(&v31 + v22) = 0.0;
  return v17 + (v31 + ((((a2 - v32) * 0.59) + ((a1 - v31) * 0.3)) + ((a3 - v33) * 0.11)));
}

float PDAluminosityPDA(float a1, float a2, float a3, double a4, float a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v13 = a9;
  v14 = a10;
  v15 = a11;
  v16 = a1 - (a1 * a13);
  if (a13 == 1.0)
  {
    v16 = 0.0;
  }

  else
  {
    a3 = a3 * a13;
  }

  if (a13 != 1.0)
  {
    a2 = a2 * a13;
    a1 = a1 * a13;
  }

  v17 = (a9 + v16) - (a9 * a5);
  if (a5 == 1.0)
  {
    v17 = v16;
  }

  else
  {
    v13 = a9 * a5;
    v14 = a10 * a5;
    v15 = a11 * a5;
  }

  return v17 + (a1 + ((((v14 - a2) * 0.59) + ((v13 - a1) * 0.3)) + ((v15 - a3) * 0.11)));
}

float32x4_t *composite_pixelshape<(CGCompositeOperation)5,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, char a13)
{
  v14 = 32 * a12;
  if ((a13 & 0x30) != 0)
  {
    do
    {
      v15 = (a8 - a3) >> 4;
      if (v15 >= a10)
      {
        v15 = a10;
      }

      v16 = v15;
      if (v15 >= 2)
      {
        do
        {
          v17 = vmlaq_laneq_f32(vmlsq_laneq_f32(result[1], result[1], a3[1], 3), a3[1], result[1], 3);
          *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), *a3, *result, 3);
          result[1] = v17;
          v16 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v16 > 1);
      }

      for (i = v16 + a10 - v15; i; --i)
      {
        *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), *a3, *result, 3);
        v19 = &a3[a12];
        if (v19 >= a8)
        {
          v20 = -a7;
        }

        else
        {
          v20 = 0;
        }

        a3 = &v19[v20];
        result += a12;
      }

      result += a2;
      v21 = &a5[a4];
      if (v21 >= a9)
      {
        v22 = -(a6 * a4);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21[v22];
      v24 = a8 + 16 * v22 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v23;
        a8 = v24;
        a5 = v23;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  else
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vrev32q_s8(a3[1]);
          v29 = vrev32q_s8(*a3);
          v30 = vrev32q_s8(result[1]);
          v31 = vrev32q_s8(*result);
          *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v31, v31, v29, 3), v29, v31, 3));
          result[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v30, v30, v28, 3), v28, v30, 3));
          v27 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v27 > 1);
      }

      for (j = v27 + a10 - v26; j; --j)
      {
        v33 = vrev32q_s8(*a3);
        v34 = vrev32q_s8(*result);
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v34, v34, v33, 3), v33, v34, 3));
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  return result;
}

float32x4_t *composite_pixelshape<(CGCompositeOperation)9,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, char a13)
{
  v14 = 32 * a12;
  if ((a13 & 0x30) != 0)
  {
    do
    {
      v15 = (a8 - a3) >> 4;
      if (v15 >= a10)
      {
        v15 = a10;
      }

      v16 = v15;
      if (v15 >= 2)
      {
        do
        {
          v17 = vmlaq_laneq_f32(vmlsq_laneq_f32(a3[1], a3[1], result[1], 3), result[1], a3[1], 3);
          *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), *result, *a3, 3);
          result[1] = v17;
          v16 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v16 > 1);
      }

      for (i = v16 + a10 - v15; i; --i)
      {
        *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), *result, *a3, 3);
        v19 = &a3[a12];
        if (v19 >= a8)
        {
          v20 = -a7;
        }

        else
        {
          v20 = 0;
        }

        a3 = &v19[v20];
        result += a12;
      }

      result += a2;
      v21 = &a5[a4];
      if (v21 >= a9)
      {
        v22 = -(a6 * a4);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21[v22];
      v24 = a8 + 16 * v22 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v23;
        a8 = v24;
        a5 = v23;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  else
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vrev32q_s8(a3[1]);
          v29 = vrev32q_s8(*a3);
          v30 = vrev32q_s8(result[1]);
          v31 = vrev32q_s8(*result);
          *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v29, v29, v31, 3), v31, v29, 3));
          result[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v28, v28, v30, 3), v30, v28, 3));
          v27 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v27 > 1);
      }

      for (j = v27 + a10 - v26; j; --j)
      {
        v33 = vrev32q_s8(*a3);
        v34 = vrev32q_s8(*result);
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v33, v33, v34, 3), v34, v33, 3));
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  return result;
}

float32x4_t *composite_pixelshape<(CGCompositeOperation)10,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, char a13)
{
  v14 = 32 * a12;
  if ((a13 & 0x30) != 0)
  {
    do
    {
      v15 = (a8 - a3) >> 4;
      if (v15 >= a10)
      {
        v15 = a10;
      }

      v16 = v15;
      if (v15 >= 2)
      {
        do
        {
          v17 = a3[1];
          v18 = result[1];
          *result = vaddq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), vmlsq_laneq_f32(*a3, *a3, *result, 3));
          result[1] = vaddq_f32(vmlsq_laneq_f32(v18, v18, v17, 3), vmlsq_laneq_f32(v17, v17, v18, 3));
          v16 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v16 > 1);
      }

      for (i = v16 + a10 - v15; i; --i)
      {
        *result = vaddq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), vmlsq_laneq_f32(*a3, *a3, *result, 3));
        v20 = &a3[a12];
        if (v20 >= a8)
        {
          v21 = -a7;
        }

        else
        {
          v21 = 0;
        }

        a3 = &v20[v21];
        result += a12;
      }

      result += a2;
      v22 = &a5[a4];
      if (v22 >= a9)
      {
        v23 = -(a6 * a4);
      }

      else
      {
        v23 = 0;
      }

      v24 = &v22[v23];
      v25 = a8 + 16 * v23 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v24;
        a8 = v25;
        a5 = v24;
      }

      v26 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v26 | (a11 == 0)));
  }

  else
  {
    do
    {
      v27 = (a8 - a3) >> 4;
      if (v27 >= a10)
      {
        v27 = a10;
      }

      v28 = v27;
      if (v27 >= 2)
      {
        do
        {
          v29 = vrev32q_s8(a3[1]);
          v30 = vrev32q_s8(*a3);
          v31 = vrev32q_s8(result[1]);
          v32 = vrev32q_s8(*result);
          *result = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(v32, v32, v30, 3), vmlsq_laneq_f32(v30, v30, v32, 3)));
          result[1] = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(v31, v31, v29, 3), vmlsq_laneq_f32(v29, v29, v31, 3)));
          v28 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v28 > 1);
      }

      for (j = v28 + a10 - v27; j; --j)
      {
        v34 = vrev32q_s8(*a3);
        v35 = vrev32q_s8(*result);
        *result = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(v35, v35, v34, 3), vmlsq_laneq_f32(v34, v34, v35, 3)));
        v36 = &a3[a12];
        if (v36 >= a8)
        {
          v37 = -a7;
        }

        else
        {
          v37 = 0;
        }

        a3 = &v36[v37];
        result += a12;
      }

      result += a2;
      v38 = &a5[a4];
      if (v38 >= a9)
      {
        v39 = -(a6 * a4);
      }

      else
      {
        v39 = 0;
      }

      v40 = &v38[v39];
      v41 = a8 + 16 * v39 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v40;
        a8 = v41;
        a5 = v40;
      }

      v26 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v26 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)13,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v29 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          v30 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v31 = vorrq_s8(vandq_s8(*result, v23), v24);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v28, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v31, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v31, v31, v28, 3), vmlsq_laneq_f32(v28, v28, v31, 3)), v28, v31), v28), v31);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v29, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v30, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v30, v30, v29, 3), vmlsq_laneq_f32(v29, v29, v30, 3)), v29, v30), v29), v30);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v33 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v34 = vorrq_s8(vandq_s8(*result, v23), v24);
        *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v33, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v34, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v34, v34, v33, 3), vmlsq_laneq_f32(v33, v33, v34, 3)), v33, v34), v33), v34);
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  else
  {
    do
    {
      v42 = (a8 - a3) >> 4;
      if (v42 >= a10)
      {
        v42 = a10;
      }

      v43 = v42;
      if (v42 >= 2)
      {
        do
        {
          v44 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v45 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          v46 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v47 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v45, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v46, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v46, v46, v45, 3), vmlsq_laneq_f32(v45, v45, v46, 3)), v45, v46), v45), v46));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v44, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v47, v47, v44, 3), vmlsq_laneq_f32(v44, v44, v47, 3)), v44, v47), v44), v47));
          v43 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v43 > 1);
      }

      for (j = v43 + a10 - v42; j; --j)
      {
        v49 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v50 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v50, v50, v49, 3), vmlsq_laneq_f32(v49, v49, v50, 3)), v49, v50), v49), v50));
        v51 = &a3[a12];
        if (v51 >= a8)
        {
          v52 = -a7;
        }

        else
        {
          v52 = 0;
        }

        a3 = &v51[v52];
        result += a12;
      }

      result += a2;
      v53 = &a5[a4];
      if (v53 >= a9)
      {
        v54 = -(a6 * a4);
      }

      else
      {
        v54 = 0;
      }

      v55 = &v53[v54];
      v56 = a8 + 16 * v54 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v55;
        a8 = v56;
        a5 = v55;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  return result;
}