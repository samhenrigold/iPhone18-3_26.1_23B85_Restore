uint64_t CMYKf_sample_WF(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v9 = *(result + 72);
  v86 = *(result + 80);
  v87 = *(result + 64);
  v88 = *(result + 88);
  v11 = *(result + 112);
  v10 = *(result + 120);
  v12 = *(result + 152) - 20;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256) - 1;
  v16 = v5 + (v14 * v7) + 4 * v15;
  v85 = *(result + 188);
  v17 = v4 + (v14 * v6) + 4 * v15 - 4;
  while (1)
  {
LABEL_2:
    if (a3 >= v9)
    {
      if (a3 <= v88)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v87;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v88;
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

        v29 = v87;
        v27 = v25 | v85;
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

      v29 = v87;
      v27 = v21 | v85;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v85;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v11;
    a3 += v10;
    v12 += 20;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v86)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_26;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v86;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_40;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v85;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_40;
  }

  v38 = v28 >> 32;
  v39 = v4 + SHIDWORD(v28) * v6;
  v40 = (v33 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v41 = v39 + v40;
  v42 = *(result + 32);
  if (v17 >= v39 + v40)
  {
    v43 = (v39 + v40);
  }

  else
  {
    v43 = v17;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v5)
  {
    v45 = v5 + v38 * v7 + v40;
    v46 = *(result + 40);
    if (v16 >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v16;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = COERCE_FLOAT(bswap32(*v46));
  }

  else
  {
    v45 = 0;
    v48 = 1.0;
  }

  v49 = COERCE_FLOAT(bswap32(*v44));
  if (v8)
  {
    v50 = *(v8 + (v34 | v26));
LABEL_68:
    v62 = v50 & 0xF;
    v63 = HIBYTE(v50) & 3;
    if (v62 == 1)
    {
      v82 = (v41 + SBYTE1(v50) * v6);
      if (v17 < v82)
      {
        v82 = v17;
      }

      if (v82 < v42)
      {
        v82 = v42;
      }

      v78 = COERCE_FLOAT(bswap32(*v82));
      v79 = 1.0;
      if (v5)
      {
        v83 = (v45 + SBYTE1(v50) * v7);
        if (v16 < v83)
        {
          v83 = v16;
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
          v64 = v41 + 4 * SBYTE2(v50);
          if (v17 >= v64)
          {
            v65 = (v41 + 4 * SBYTE2(v50));
          }

          else
          {
            v65 = v17;
          }

          if (v65 < v42)
          {
            v65 = v42;
          }

          v66 = COERCE_FLOAT(bswap32(*v65));
          v67 = (v64 + SBYTE1(v50) * v6);
          if (v17 < v67)
          {
            v67 = v17;
          }

          if (v67 < v42)
          {
            v67 = v42;
          }

          v68 = COERCE_FLOAT(bswap32(*v67));
          v69 = 1.0;
          v70 = 1.0;
          if (v5)
          {
            v71 = v45 + 4 * SBYTE2(v50);
            v72 = *(result + 40);
            if (v16 >= v71)
            {
              v73 = (v45 + 4 * SBYTE2(v50));
            }

            else
            {
              v73 = v16;
            }

            if (v73 < v72)
            {
              v73 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v73));
            v74 = (v71 + SBYTE1(v50) * v7);
            if (v16 < v74)
            {
              v74 = v16;
            }

            if (v74 < v72)
            {
              v74 = *(result + 40);
            }

            v69 = COERCE_FLOAT(bswap32(*v74));
          }

          v75 = interpolate_waf[2 * v63 + 1];
          v76 = interpolate_waf[2 * ((v50 >> 28) & 3) + 1];
          v49 = (((v49 - (v49 * v75)) + (v66 * v75)) - (((v49 - (v49 * v75)) + (v66 * v75)) * v76)) + (((v66 - (v66 * v75)) + (v68 * v75)) * v76);
          v48 = (((v48 - (v48 * v75)) + (v70 * v75)) - (((v48 - (v48 * v75)) + (v70 * v75)) * v76)) + (((v70 - (v70 * v75)) + (v69 * v75)) * v76);
        }

        goto LABEL_45;
      }

      v77 = (v41 + 4 * SBYTE2(v50));
      if (v17 < v77)
      {
        v77 = v17;
      }

      if (v77 < v42)
      {
        v77 = v42;
      }

      v78 = COERCE_FLOAT(bswap32(*v77));
      v79 = 1.0;
      if (v5)
      {
        v80 = (v45 + 4 * SBYTE2(v50));
        if (v16 < v80)
        {
          v80 = v16;
        }

        if (v80 < *(result + 40))
        {
          v80 = *(result + 40);
        }

        v79 = COERCE_FLOAT(bswap32(*v80));
      }

      v81 = &interpolate_waf[2 * ((v50 >> 28) & 3)];
    }

    v84 = v81[1];
    v49 = (v49 - (v49 * v84)) + (v78 * v84);
    v48 = (v48 - (v48 * v84)) + (v79 * v84);
  }

LABEL_45:
  *(v12 + 24) = 0;
  *(v12 + 20) = 0;
  *(v12 + 32) = v48 - v49;
  *(v12 + 36) = v48;
  *(v13 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v51 = 0;
    v52 = (v12 + 56);
    a2 += v11;
    v53 = v86 - a2;
    a3 += v10;
    v54 = v88 - a3;
    while ((((a2 - v87) | v53 | (a3 - v9) | v54) & 0x8000000000000000) == 0)
    {
      v55 = v4 + SHIDWORD(a3) * v6;
      v56 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v55 + v56;
      v42 = *(result + 32);
      if (v17 >= v55 + v56)
      {
        v57 = (v55 + v56);
      }

      else
      {
        v57 = v17;
      }

      if (v57 < v42)
      {
        v57 = *(result + 32);
      }

      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v56;
        v58 = *(result + 40);
        if (v16 >= v45)
        {
          v59 = v45;
        }

        else
        {
          v59 = v16;
        }

        if (v59 >= v58)
        {
          v58 = v59;
        }

        v48 = COERCE_FLOAT(bswap32(*v58));
      }

      else
      {
        v48 = 1.0;
      }

      v60 = COERCE_FLOAT(bswap32(*v57));
      v49 = v60;
      if (v8)
      {
        v50 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v50 & 0xF) != 0)
        {
          v13 += v51 + 1;
          v12 = (v52 - 9);
          a4 += ~v51;
          v27 = -1;
          goto LABEL_68;
        }
      }

      *(v52 - 3) = 0;
      *(v52 - 4) = 0.0;
      *(v52 - 1) = v48 - v60;
      *v52 = v48;
      v61 = v13 + v51++;
      v52 += 5;
      a2 += v11;
      *(v61 + 2) = -1;
      v53 -= v11;
      a3 += v10;
      v54 -= v10;
      if (a4 - 1 == v51)
      {
        return result;
      }
    }

    v13 += v51 + 1;
    v12 = (v52 - 9);
    a4 += ~v51;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t CMYKf_sample_Wf(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v9 = *(result + 72);
  v85 = *(result + 80);
  v86 = *(result + 64);
  v87 = *(result + 88);
  v11 = *(result + 112);
  v10 = *(result + 120);
  v12 = *(result + 152) - 20;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256) - 1;
  v16 = v5 + (v14 * v7) + 4 * v15;
  v84 = *(result + 188);
  v17 = v4 + (v14 * v6) + 4 * v15 - 4;
  while (1)
  {
LABEL_2:
    if (a3 >= v9)
    {
      if (a3 <= v87)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v86;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v87;
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

        v29 = v86;
        v27 = v25 | v84;
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

      v29 = v86;
      v27 = v21 | v84;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v84;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v11;
    a3 += v10;
    v12 += 20;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v85)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_26;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v85;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_40;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v84;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_40;
  }

  v38 = v28 >> 32;
  v39 = v4 + SHIDWORD(v28) * v6;
  v40 = (v33 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v41 = v39 + v40;
  v42 = *(result + 32);
  if (v17 >= v39 + v40)
  {
    v43 = (v39 + v40);
  }

  else
  {
    v43 = v17;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v5)
  {
    v45 = v5 + v38 * v7 + v40;
    v46 = *(result + 40);
    if (v16 >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v16;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = *v46;
  }

  else
  {
    v45 = 0;
    v48 = 1.0;
  }

  v49 = *v44;
  if (v8)
  {
    v50 = *(v8 + (v34 | v26));
LABEL_68:
    v61 = v50 & 0xF;
    v62 = HIBYTE(v50) & 3;
    if (v61 == 1)
    {
      v81 = (v41 + SBYTE1(v50) * v6);
      if (v17 < v81)
      {
        v81 = v17;
      }

      if (v81 < v42)
      {
        v81 = v42;
      }

      v77 = *v81;
      v78 = 1.0;
      if (v5)
      {
        v82 = (v45 + SBYTE1(v50) * v7);
        if (v16 < v82)
        {
          v82 = v16;
        }

        if (v82 < *(result + 40))
        {
          v82 = *(result + 40);
        }

        v78 = *v82;
      }

      v80 = &interpolate_waf[2 * v62];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = v41 + 4 * SBYTE2(v50);
          if (v17 >= v63)
          {
            v64 = (v41 + 4 * SBYTE2(v50));
          }

          else
          {
            v64 = v17;
          }

          if (v64 < v42)
          {
            v64 = v42;
          }

          v65 = *v64;
          v66 = (v63 + SBYTE1(v50) * v6);
          if (v17 < v66)
          {
            v66 = v17;
          }

          if (v66 < v42)
          {
            v66 = v42;
          }

          v67 = *v66;
          v68 = 1.0;
          v69 = 1.0;
          if (v5)
          {
            v70 = v45 + 4 * SBYTE2(v50);
            v71 = *(result + 40);
            if (v16 >= v70)
            {
              v72 = (v45 + 4 * SBYTE2(v50));
            }

            else
            {
              v72 = v16;
            }

            if (v72 < v71)
            {
              v72 = *(result + 40);
            }

            v69 = *v72;
            v73 = (v70 + SBYTE1(v50) * v7);
            if (v16 < v73)
            {
              v73 = v16;
            }

            if (v73 < v71)
            {
              v73 = *(result + 40);
            }

            v68 = *v73;
          }

          v74 = interpolate_waf[2 * v62 + 1];
          v75 = interpolate_waf[2 * ((v50 >> 28) & 3) + 1];
          v49 = (((v49 - (v49 * v74)) + (v65 * v74)) - (((v49 - (v49 * v74)) + (v65 * v74)) * v75)) + (((v65 - (v65 * v74)) + (v67 * v74)) * v75);
          v48 = (((v48 - (v48 * v74)) + (v69 * v74)) - (((v48 - (v48 * v74)) + (v69 * v74)) * v75)) + (((v69 - (v69 * v74)) + (v68 * v74)) * v75);
        }

        goto LABEL_45;
      }

      v76 = (v41 + 4 * SBYTE2(v50));
      if (v17 < v76)
      {
        v76 = v17;
      }

      if (v76 < v42)
      {
        v76 = v42;
      }

      v77 = *v76;
      v78 = 1.0;
      if (v5)
      {
        v79 = (v45 + 4 * SBYTE2(v50));
        if (v16 < v79)
        {
          v79 = v16;
        }

        if (v79 < *(result + 40))
        {
          v79 = *(result + 40);
        }

        v78 = *v79;
      }

      v80 = &interpolate_waf[2 * ((v50 >> 28) & 3)];
    }

    v83 = v80[1];
    v49 = (v49 - (v49 * v83)) + (v77 * v83);
    v48 = (v48 - (v48 * v83)) + (v78 * v83);
  }

LABEL_45:
  *(v12 + 24) = 0;
  *(v12 + 20) = 0;
  *(v12 + 32) = v48 - v49;
  *(v12 + 36) = v48;
  *(v13 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v51 = 0;
    v52 = (v12 + 56);
    a2 += v11;
    v53 = v85 - a2;
    a3 += v10;
    v54 = v87 - a3;
    while ((((a2 - v86) | v53 | (a3 - v9) | v54) & 0x8000000000000000) == 0)
    {
      v55 = v4 + SHIDWORD(a3) * v6;
      v56 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v55 + v56;
      v42 = *(result + 32);
      if (v17 >= v55 + v56)
      {
        v57 = (v55 + v56);
      }

      else
      {
        v57 = v17;
      }

      if (v57 < v42)
      {
        v57 = *(result + 32);
      }

      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v56;
        v58 = *(result + 40);
        if (v16 >= v45)
        {
          v59 = v45;
        }

        else
        {
          v59 = v16;
        }

        if (v59 >= v58)
        {
          v58 = v59;
        }

        v48 = *v58;
      }

      else
      {
        v48 = 1.0;
      }

      v49 = *v57;
      if (v8)
      {
        v50 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v50 & 0xF) != 0)
        {
          v13 += v51 + 1;
          v12 = (v52 - 9);
          a4 += ~v51;
          v27 = -1;
          goto LABEL_68;
        }
      }

      *(v52 - 3) = 0;
      *(v52 - 4) = 0.0;
      *(v52 - 1) = v48 - v49;
      *v52 = v48;
      v60 = v13 + v51++;
      v52 += 5;
      a2 += v11;
      *(v60 + 2) = -1;
      v53 -= v11;
      a3 += v10;
      v54 -= v10;
      if (a4 - 1 == v51)
      {
        return result;
      }
    }

    v13 += v51 + 1;
    v12 = (v52 - 9);
    a4 += ~v51;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t CMYKf_sample_RGBF(uint64_t result, int64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
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
  v20 = *(result + 152) - 20;
  v21 = *(result + 144) - 1;
  v22 = *(result + 188);
  v23 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v15)
    {
      if (a3 <= v17)
      {
        v32 = (a3 >> 22) & 0x3C0;
        v33 = 0x3FFFFFFF;
        HIDWORD(v34) = HIDWORD(a3);
      }

      else
      {
        v28 = *(result + 216);
        v29 = *(result + 224) + v17;
        v30 = v29 - a3 + (v28 >> 1);
        if (v30 < 1)
        {
          goto LABEL_34;
        }

        if (v30 >= v28)
        {
          LODWORD(v31) = 0x3FFFFFFF;
        }

        else
        {
          v31 = (*(result + 232) * v30) >> 32;
        }

        v33 = v31 | v22;
        v34 = v29 - 0x1000000;
        v32 = 448;
      }
    }

    else
    {
      v24 = *(result + 216);
      v25 = v15 - *(result + 224);
      v26 = a3 - v25 + (v24 >> 1);
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

      v33 = v27 | v22;
      v34 = v25 + 0x1000000;
      v32 = 512;
    }

    if (a2 >= v14)
    {
      break;
    }

    v35 = *(result + 192);
    v36 = v14 - *(result + 200);
    v37 = a2 - v36 + (v35 >> 1);
    if (v37 >= 1)
    {
      if (v37 < v35)
      {
        v33 = ((v33 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v22;
      }

      v38 = v36 + 0x1000000;
      v39 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v18;
    a3 += v19;
    v20 += 20;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v39 = (a2 >> 26) & 0x3C;
    HIDWORD(v38) = HIDWORD(a2);
    goto LABEL_26;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v16;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_34;
  }

  if (v42 < v40)
  {
    v33 = ((v33 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v22;
  }

  v38 = v41 - 0x1000000;
  v39 = 28;
LABEL_26:
  if (v33 < 0x400000)
  {
    goto LABEL_34;
  }

  v43 = v11 + SHIDWORD(v34) * v12 + 12 * SHIDWORD(v38);
  v44 = *(result + 32);
  if (v23 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v23;
  }

  if (v45 < v44)
  {
    v45 = *(result + 32);
  }

  v46 = vrev32_s8(*v45);
  v47 = COERCE_FLOAT(bswap32(v45[1].u32[0]));
  if (!v13)
  {
    goto LABEL_36;
  }

  v48 = *(v13 + (v39 | v32));
LABEL_55:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  if (v57 == 1)
  {
    v68 = (v43 + SBYTE1(v48) * v12);
    if (v23 < v68)
    {
      v68 = v23;
    }

    if (v68 < v44)
    {
      v68 = v44;
    }

    v66 = COERCE_FLOAT(bswap32(v68[1].u32[0]));
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v58 + 3];
    v67 = *v68;
    goto LABEL_78;
  }

  if (v57 == 2)
  {
    v65 = (v43 + 12 * SBYTE2(v48));
    if (v23 < v65)
    {
      v65 = v23;
    }

    if (v65 < v44)
    {
      v65 = v44;
    }

    v66 = COERCE_FLOAT(bswap32(v65[1].u32[0]));
    LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
    v67 = *v65;
LABEL_78:
    v46 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a9, 0), vrev32_s8(v67), *&a9);
    v47 = (v47 - (v47 * *&a9)) + (v66 * *&a9);
    v49 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v57 != 3)
  {
LABEL_36:
    v49 = 1.0;
    goto LABEL_37;
  }

  v59 = (v43 + 12 * SBYTE2(v48));
  if (v23 >= v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = v23;
  }

  if (v60 < v44)
  {
    v60 = v44;
  }

  v61 = COERCE_FLOAT(bswap32(v60[1].u32[0]));
  v62 = (v59 + SBYTE1(v48) * v12);
  if (v23 < v62)
  {
    v62 = v23;
  }

  if (v62 < v44)
  {
    v62 = v44;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v58 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
  v47 = (((v47 - (v47 * *&a10)) + (v61 * *&a10)) - (((v47 - (v47 * *&a10)) + (v61 * *&a10)) * *&a11)) + (((v61 - (v61 * *&a10)) + (COERCE_FLOAT(bswap32(v62[1].u32[0])) * *&a10)) * *&a11);
  v63 = vrev32_s8(*v60);
  v64 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a10, 0), v63, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v63, v63, *&a10, 0), vrev32_s8(*v62), *&a10));
  v46 = vmla_n_f32(vmls_lane_f32(v64, v64, *&a11, 0), *&a9, *&a11);
  v49 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  v50 = 0;
  v51 = v33 >> 22;
  v52 = (v20 + 36);
  a2 += v18;
  v53 = v16 - a2;
  a3 += v19;
  v54 = v17 - a3;
  while (1)
  {
    LODWORD(a9) = v46.i32[1];
    if (v46.f32[0] > v46.f32[1])
    {
      *&a9 = v46.f32[0];
    }

    if (v47 > *&a9)
    {
      *&a9 = v47;
    }

    a10 = COERCE_DOUBLE(vdup_lane_s32(*&a9, 0));
    *(v52 - 2) = vsub_f32(*&a10, v46);
    *(v52 - 2) = *&a9 - v47;
    *(v52 - 1) = v49 - *&a9;
    *v52 = v49;
    *(v21 + 1 + v50) = v51;
    if (a4 - 1 == v50)
    {
      return result;
    }

    if ((v54 | v53 | (a3 - v15) | (a2 - v14)) < 0)
    {
      v21 += v50 + 1;
      v20 = (v52 - 4);
      a4 += ~v50;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v55 = v11 + SHIDWORD(a3) * v12;
    v43 = v55 + 12 * SHIDWORD(a2);
    v44 = *(result + 32);
    if (v23 >= v43)
    {
      v56 = (v55 + 12 * SHIDWORD(a2));
    }

    else
    {
      v56 = v23;
    }

    if (v56 < v44)
    {
      v56 = *(result + 32);
    }

    v46 = vrev32_s8(*v56);
    v47 = COERCE_FLOAT(bswap32(v56[1].u32[0]));
    if (v13)
    {
      v48 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v21 += v50 + 1;
        v20 = (v52 - 4);
        a4 += ~v50;
        v33 = -1;
        goto LABEL_55;
      }
    }

    ++v50;
    v52 += 5;
    v53 -= v18;
    a2 += v18;
    a3 += v19;
    v54 -= v19;
    v49 = 1.0;
    LOBYTE(v51) = -1;
  }
}

uint64_t CMYKf_sample_RGBf(uint64_t result, int64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
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
  v20 = *(result + 152) - 20;
  v21 = *(result + 144) - 1;
  v22 = *(result + 188);
  v23 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v15)
    {
      if (a3 <= v17)
      {
        v32 = (a3 >> 22) & 0x3C0;
        v33 = 0x3FFFFFFF;
        HIDWORD(v34) = HIDWORD(a3);
      }

      else
      {
        v28 = *(result + 216);
        v29 = *(result + 224) + v17;
        v30 = v29 - a3 + (v28 >> 1);
        if (v30 < 1)
        {
          goto LABEL_34;
        }

        if (v30 >= v28)
        {
          LODWORD(v31) = 0x3FFFFFFF;
        }

        else
        {
          v31 = (*(result + 232) * v30) >> 32;
        }

        v33 = v31 | v22;
        v34 = v29 - 0x1000000;
        v32 = 448;
      }
    }

    else
    {
      v24 = *(result + 216);
      v25 = v15 - *(result + 224);
      v26 = a3 - v25 + (v24 >> 1);
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

      v33 = v27 | v22;
      v34 = v25 + 0x1000000;
      v32 = 512;
    }

    if (a2 >= v14)
    {
      break;
    }

    v35 = *(result + 192);
    v36 = v14 - *(result + 200);
    v37 = a2 - v36 + (v35 >> 1);
    if (v37 >= 1)
    {
      if (v37 < v35)
      {
        v33 = ((v33 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v22;
      }

      v38 = v36 + 0x1000000;
      v39 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v18;
    a3 += v19;
    v20 += 20;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v39 = (a2 >> 26) & 0x3C;
    HIDWORD(v38) = HIDWORD(a2);
    goto LABEL_26;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v16;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_34;
  }

  if (v42 < v40)
  {
    v33 = ((v33 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v22;
  }

  v38 = v41 - 0x1000000;
  v39 = 28;
LABEL_26:
  if (v33 < 0x400000)
  {
    goto LABEL_34;
  }

  v43 = v11 + SHIDWORD(v34) * v12 + 12 * SHIDWORD(v38);
  v44 = *(result + 32);
  if (v23 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v23;
  }

  if (v45 < v44)
  {
    v45 = *(result + 32);
  }

  v46 = *v45;
  v47 = v45[1].f32[0];
  if (!v13)
  {
    goto LABEL_36;
  }

  v48 = *(v13 + (v39 | v32));
LABEL_55:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  if (v57 == 1)
  {
    v66 = (v43 + SBYTE1(v48) * v12);
    if (v23 < v66)
    {
      v66 = v23;
    }

    if (v66 < v44)
    {
      v66 = v44;
    }

    v64 = v66[1].f32[0];
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v58 + 3];
    v65 = *v66;
    goto LABEL_78;
  }

  if (v57 == 2)
  {
    v63 = (v43 + 12 * SBYTE2(v48));
    if (v23 < v63)
    {
      v63 = v23;
    }

    if (v63 < v44)
    {
      v63 = v44;
    }

    v64 = v63[1].f32[0];
    LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
    v65 = *v63;
LABEL_78:
    v46 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a9, 0), v65, *&a9);
    v47 = (v47 - (v47 * *&a9)) + (v64 * *&a9);
    v49 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v57 != 3)
  {
LABEL_36:
    v49 = 1.0;
    goto LABEL_37;
  }

  v59 = v43 + 12 * SBYTE2(v48);
  if (v23 >= v59)
  {
    v60 = (v43 + 12 * SBYTE2(v48));
  }

  else
  {
    v60 = v23;
  }

  if (v60 < v44)
  {
    v60 = v44;
  }

  v61 = (v59 + SBYTE1(v48) * v12);
  if (v23 < v61)
  {
    v61 = v23;
  }

  if (v61 < v44)
  {
    v61 = v44;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v58 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
  v47 = (((v47 - (v47 * *&a10)) + (v60[1].f32[0] * *&a10)) - (((v47 - (v47 * *&a10)) + (v60[1].f32[0] * *&a10)) * *&a11)) + (((v60[1].f32[0] - (v60[1].f32[0] * *&a10)) + (v61[1].f32[0] * *&a10)) * *&a11);
  v62 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a10, 0), *v60, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(*v60, *v60, *&a10, 0), *v61, *&a10));
  v46 = vmla_n_f32(vmls_lane_f32(v62, v62, *&a11, 0), *&a9, *&a11);
  v49 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  v50 = 0;
  v51 = v33 >> 22;
  v52 = (v20 + 36);
  a2 += v18;
  v53 = v16 - a2;
  a3 += v19;
  v54 = v17 - a3;
  while (1)
  {
    LODWORD(a9) = v46.i32[1];
    if (v46.f32[0] > v46.f32[1])
    {
      *&a9 = v46.f32[0];
    }

    if (v47 > *&a9)
    {
      *&a9 = v47;
    }

    a10 = COERCE_DOUBLE(vdup_lane_s32(*&a9, 0));
    *(v52 - 2) = vsub_f32(*&a10, v46);
    *(v52 - 2) = *&a9 - v47;
    *(v52 - 1) = v49 - *&a9;
    *v52 = v49;
    *(v21 + 1 + v50) = v51;
    if (a4 - 1 == v50)
    {
      return result;
    }

    if ((v54 | v53 | (a3 - v15) | (a2 - v14)) < 0)
    {
      v21 += v50 + 1;
      v20 = (v52 - 4);
      a4 += ~v50;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v55 = v11 + SHIDWORD(a3) * v12;
    v43 = v55 + 12 * SHIDWORD(a2);
    v44 = *(result + 32);
    if (v23 >= v43)
    {
      v56 = (v55 + 12 * SHIDWORD(a2));
    }

    else
    {
      v56 = v23;
    }

    if (v56 < v44)
    {
      v56 = *(result + 32);
    }

    v46 = *v56;
    v47 = v56[1].f32[0];
    if (v13)
    {
      v48 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v21 += v50 + 1;
        v20 = (v52 - 4);
        a4 += ~v50;
        v33 = -1;
        goto LABEL_55;
      }
    }

    ++v50;
    v52 += 5;
    v53 -= v18;
    a2 += v18;
    a3 += v19;
    v54 -= v19;
    v49 = 1.0;
    LOBYTE(v51) = -1;
  }
}

uint64_t CMYKf_sample_RGBAF(uint64_t result, uint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 24);
  v14 = *(result + 176);
  v15 = *(result + 64);
  v16 = *(result + 72);
  v17 = *(result + 80);
  v18 = *(result + 88);
  v19 = *(result + 112);
  v20 = *(result + 120);
  v21 = *(result + 188);
  v22 = *(result + 152) - 20;
  v23 = *(result + 144) - 1;
  v25 = *(result + 32);
  v24 = *(result + 40);
  v26 = v25 + ((*(result + 260) - 1) * v13) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v16)
    {
      if (a3 <= v18)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        HIDWORD(v37) = HIDWORD(a3);
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v18;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_34;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v36 = v34 | v21;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v16 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
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

      v36 = v30 | v21;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v15)
    {
      break;
    }

    v38 = *(result + 192);
    v39 = v15 - *(result + 200);
    v40 = a2 - v39 + (v38 >> 1);
    if (v40 >= 1)
    {
      if (v40 < v38)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v21;
      }

      v41 = v39 + 0x1000000;
      v42 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v19;
    a3 += v20;
    v22 += 20;
    *++v23 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v42 = (a2 >> 26) & 0x3C;
    v41 = a2;
    goto LABEL_26;
  }

  v43 = *(result + 192);
  v44 = *(result + 200) + v17;
  v45 = v44 - a2 + (v43 >> 1);
  if (v45 < 1)
  {
    goto LABEL_34;
  }

  if (v45 < v43)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v21;
  }

  v41 = v44 - 0x1000000;
  v42 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_34;
  }

  v46 = v25 + SHIDWORD(v37) * v13 + 16 * (v41 >> 32);
  v47 = *(result + 32);
  if (v26 >= v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v26;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v24)
  {
    v49 = COERCE_FLOAT(bswap32(v48[1].u32[1]));
  }

  else
  {
    v49 = 1.0;
  }

  v50 = vrev32_s8(*v48);
  v51 = COERCE_FLOAT(bswap32(v48[1].u32[0]));
  if (v14)
  {
    v52 = *(v14 + (v42 | v35));
LABEL_61:
    v61 = v52 & 0xF;
    v62 = HIBYTE(v52) & 3;
    if (v61 == 1)
    {
      v78 = (v46 + SBYTE1(v52) * v13);
      if (v26 < v78)
      {
        v78 = v26;
      }

      if (v78 >= v47)
      {
        v79 = v78;
      }

      else
      {
        v79 = v47;
      }

      a8 = COERCE_DOUBLE(vrev32_s8(*v79));
      v75 = COERCE_FLOAT(bswap32(v79[1].u32[0]));
      v76 = 1.0;
      if (v24)
      {
        v76 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
      }

      v77 = &interpolate_rgbaf_21860[4 * v62];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = (v46 + ((HIWORD(v52) << 56) >> 52));
          if (v26 < v63)
          {
            v63 = v26;
          }

          if (v63 < v47)
          {
            v63 = v47;
          }

          v64 = vrev32_s8(*v63);
          v65 = COERCE_FLOAT(bswap32(v63[1].u32[0]));
          v66 = 1.0;
          v67 = 1.0;
          if (v24)
          {
            v67 = COERCE_FLOAT(bswap32(v63[1].u32[1]));
          }

          v68 = v46 + SBYTE1(v52) * v13 + 16 * SBYTE2(v52);
          if (v26 < v68)
          {
            v68 = v26;
          }

          if (v68 >= v47)
          {
            v69 = v68;
          }

          else
          {
            v69 = v47;
          }

          v70 = vrev32_s8(*v69);
          v71 = COERCE_FLOAT(bswap32(v69[1].u32[0]));
          if (v24)
          {
            v66 = COERCE_FLOAT(bswap32(v69[1].u32[1]));
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v62 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
          v51 = (((v51 - (v51 * v11.f32[0])) + (v65 * v11.f32[0])) - (((v51 - (v51 * v11.f32[0])) + (v65 * v11.f32[0])) * v12.f32[0])) + (((v65 - (v65 * v11.f32[0])) + (v71 * v11.f32[0])) * v12.f32[0]);
          v72 = vmla_n_f32(vmls_lane_f32(v50, v50, v11, 0), v64, v11.f32[0]);
          a8 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v64, v64, v11, 0), v70, v11.f32[0]));
          v50 = vmla_n_f32(vmls_lane_f32(v72, v72, v12, 0), *&a8, v12.f32[0]);
          v49 = (((v49 - (v49 * v11.f32[0])) + (v67 * v11.f32[0])) - (((v49 - (v49 * v11.f32[0])) + (v67 * v11.f32[0])) * v12.f32[0])) + (((v67 - (v67 * v11.f32[0])) + (v66 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v73 = (v46 + ((HIWORD(v52) << 56) >> 52));
      if (v26 < v73)
      {
        v73 = v26;
      }

      if (v73 >= v47)
      {
        v74 = v73;
      }

      else
      {
        v74 = v47;
      }

      a8 = COERCE_DOUBLE(vrev32_s8(*v74));
      v75 = COERCE_FLOAT(bswap32(v74[1].u32[0]));
      v76 = 1.0;
      if (v24)
      {
        v76 = COERCE_FLOAT(bswap32(v74[1].u32[1]));
      }

      v77 = &interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3)];
    }

    LODWORD(a11) = v77[3];
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a11, 0), *&a8, *&a11);
    v51 = (v51 - (v51 * *&a11)) + (v75 * *&a11);
    v49 = (v49 - (v49 * *&a11)) + (v76 * *&a11);
  }

LABEL_39:
  v53 = 0;
  v54 = v36 >> 22;
  v55 = (v22 + 36);
  a2 += v19;
  v56 = v17 - a2;
  a3 += v20;
  v57 = v18 - a3;
  while (1)
  {
    LODWORD(a8) = v50.i32[1];
    if (v50.f32[0] > v50.f32[1])
    {
      *&a8 = v50.f32[0];
    }

    if (v51 > *&a8)
    {
      *&a8 = v51;
    }

    *(v55 - 2) = vsub_f32(vdup_lane_s32(*&a8, 0), v50);
    *(v55 - 2) = *&a8 - v51;
    *(v55 - 1) = v49 - *&a8;
    *v55 = v49;
    *(v23 + 1 + v53) = v54;
    if (a4 - 1 == v53)
    {
      return result;
    }

    if ((v57 | v56 | (a3 - v16) | (a2 - v15)) < 0)
    {
      v23 += v53 + 1;
      v22 = (v55 - 4);
      a4 += ~v53;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v58 = v25 + SHIDWORD(a3) * v13;
    v46 = v58 + 16 * (a2 >> 32);
    v47 = *(result + 32);
    if (v26 >= v46)
    {
      v59 = (v58 + 16 * (a2 >> 32));
    }

    else
    {
      v59 = v26;
    }

    if (v59 >= v47)
    {
      v60 = v59;
    }

    else
    {
      v60 = *(result + 32);
    }

    if (v24)
    {
      v49 = COERCE_FLOAT(bswap32(v60[1].u32[1]));
    }

    else
    {
      v49 = 1.0;
    }

    v50 = vrev32_s8(*v60);
    v51 = COERCE_FLOAT(bswap32(v60[1].u32[0]));
    if (v14)
    {
      v52 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v52 & 0xF) != 0)
      {
        v23 += v53 + 1;
        v22 = (v55 - 4);
        a4 += ~v53;
        v36 = -1;
        goto LABEL_61;
      }
    }

    ++v53;
    v55 += 5;
    v56 -= v19;
    a2 += v19;
    a3 += v20;
    v57 -= v20;
    LOBYTE(v54) = -1;
  }
}

uint64_t CMYKf_sample_RGBAf(uint64_t result, uint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 24);
  v14 = *(result + 176);
  v15 = *(result + 64);
  v16 = *(result + 72);
  v17 = *(result + 80);
  v18 = *(result + 88);
  v19 = *(result + 112);
  v20 = *(result + 120);
  v21 = *(result + 188);
  v22 = *(result + 152) - 20;
  v23 = *(result + 144) - 1;
  v25 = *(result + 32);
  v24 = *(result + 40);
  v26 = v25 + ((*(result + 260) - 1) * v13) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v16)
    {
      if (a3 <= v18)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        HIDWORD(v37) = HIDWORD(a3);
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v18;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_34;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v36 = v34 | v21;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v16 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
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

      v36 = v30 | v21;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v15)
    {
      break;
    }

    v38 = *(result + 192);
    v39 = v15 - *(result + 200);
    v40 = a2 - v39 + (v38 >> 1);
    if (v40 >= 1)
    {
      if (v40 < v38)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v21;
      }

      v41 = v39 + 0x1000000;
      v42 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v19;
    a3 += v20;
    v22 += 20;
    *++v23 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v42 = (a2 >> 26) & 0x3C;
    v41 = a2;
    goto LABEL_26;
  }

  v43 = *(result + 192);
  v44 = *(result + 200) + v17;
  v45 = v44 - a2 + (v43 >> 1);
  if (v45 < 1)
  {
    goto LABEL_34;
  }

  if (v45 < v43)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v21;
  }

  v41 = v44 - 0x1000000;
  v42 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_34;
  }

  v46 = v25 + SHIDWORD(v37) * v13 + 16 * (v41 >> 32);
  v47 = *(result + 32);
  if (v26 >= v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v26;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v24)
  {
    v49 = v48[1].f32[1];
  }

  else
  {
    v49 = 1.0;
  }

  v50 = *v48;
  v51 = v48[1].f32[0];
  if (v14)
  {
    v52 = *(v14 + (v42 | v35));
LABEL_61:
    v61 = v52 & 0xF;
    v62 = HIBYTE(v52) & 3;
    if (v61 == 1)
    {
      v78 = v46 + SBYTE1(v52) * v13;
      if (v26 < v78)
      {
        v78 = v26;
      }

      if (v78 >= v47)
      {
        v79 = v78;
      }

      else
      {
        v79 = v47;
      }

      v74 = *v79;
      v75 = v79[1].f32[0];
      v76 = 1.0;
      if (v24)
      {
        v76 = v79[1].f32[1];
      }

      v77 = &interpolate_rgbaf_21860[4 * v62];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = SBYTE1(v52) * v13;
          v64 = 16 * SBYTE2(v52);
          v65 = v46 + v64;
          if (v26 < v46 + v64)
          {
            v65 = v26;
          }

          if (v65 >= v47)
          {
            v66 = v65;
          }

          else
          {
            v66 = v47;
          }

          v67 = *v66;
          if (v24)
          {
            v68 = v66[1].f32[1];
            v69 = (v46 + v63 + v64);
            if (v26 < v69)
            {
              v69 = v26;
            }

            if (v69 >= v47)
            {
              v70 = v69;
            }

            else
            {
              v70 = v47;
            }

            v71 = v70[1].f32[1];
          }

          else
          {
            v80 = (v46 + v63 + v64);
            if (v26 < v80)
            {
              v80 = v26;
            }

            if (v80 >= v47)
            {
              v70 = v80;
            }

            else
            {
              v70 = v47;
            }

            v68 = 1.0;
            v71 = 1.0;
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v62 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
          v51 = (((v51 - (v51 * v11.f32[0])) + (v66[1].f32[0] * v11.f32[0])) - (((v51 - (v51 * v11.f32[0])) + (v66[1].f32[0] * v11.f32[0])) * v12.f32[0])) + (((v66[1].f32[0] - (v66[1].f32[0] * v11.f32[0])) + (v70[1].f32[0] * v11.f32[0])) * v12.f32[0]);
          v81 = vmla_n_f32(vmls_lane_f32(v50, v50, v11, 0), v67, v11.f32[0]);
          a8 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v67, v67, v11, 0), *v70, v11.f32[0]));
          v50 = vmla_n_f32(vmls_lane_f32(v81, v81, v12, 0), *&a8, v12.f32[0]);
          v49 = (((v49 - (v49 * v11.f32[0])) + (v68 * v11.f32[0])) - (((v49 - (v49 * v11.f32[0])) + (v68 * v11.f32[0])) * v12.f32[0])) + (((v68 - (v68 * v11.f32[0])) + (v71 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v72 = v46 + ((HIWORD(v52) << 56) >> 52);
      if (v26 < v72)
      {
        v72 = v26;
      }

      if (v72 >= v47)
      {
        v73 = v72;
      }

      else
      {
        v73 = v47;
      }

      v74 = *v73;
      v75 = v73[1].f32[0];
      v76 = 1.0;
      if (v24)
      {
        v76 = v73[1].f32[1];
      }

      v77 = &interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3)];
    }

    LODWORD(a11) = v77[3];
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a11, 0), v74, *&a11);
    v51 = (v51 - (v51 * *&a11)) + (v75 * *&a11);
    v49 = (v49 - (v49 * *&a11)) + (v76 * *&a11);
  }

LABEL_39:
  v53 = 0;
  v54 = v36 >> 22;
  v55 = (v22 + 36);
  a2 += v19;
  v56 = v17 - a2;
  a3 += v20;
  v57 = v18 - a3;
  while (1)
  {
    LODWORD(a8) = v50.i32[1];
    if (v50.f32[0] > v50.f32[1])
    {
      *&a8 = v50.f32[0];
    }

    if (v51 > *&a8)
    {
      *&a8 = v51;
    }

    *(v55 - 2) = vsub_f32(vdup_lane_s32(*&a8, 0), v50);
    *(v55 - 2) = *&a8 - v51;
    *(v55 - 1) = v49 - *&a8;
    *v55 = v49;
    *(v23 + 1 + v53) = v54;
    if (a4 - 1 == v53)
    {
      return result;
    }

    if ((v57 | v56 | (a3 - v16) | (a2 - v15)) < 0)
    {
      v23 += v53 + 1;
      v22 = (v55 - 4);
      a4 += ~v53;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v58 = v25 + SHIDWORD(a3) * v13;
    v46 = v58 + 16 * (a2 >> 32);
    v47 = *(result + 32);
    if (v26 >= v46)
    {
      v59 = v58 + 16 * (a2 >> 32);
    }

    else
    {
      v59 = v26;
    }

    if (v59 >= v47)
    {
      v60 = v59;
    }

    else
    {
      v60 = *(result + 32);
    }

    if (v24)
    {
      v49 = v60[1].f32[1];
    }

    else
    {
      v49 = 1.0;
    }

    v50 = *v60;
    v51 = v60[1].f32[0];
    if (v14)
    {
      v52 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v52 & 0xF) != 0)
      {
        v23 += v53 + 1;
        v22 = (v55 - 4);
        a4 += ~v53;
        v36 = -1;
        goto LABEL_61;
      }
    }

    ++v53;
    v55 += 5;
    v56 -= v19;
    a2 += v19;
    a3 += v20;
    v57 -= v20;
    LOBYTE(v54) = -1;
  }
}

uint64_t CMYKf_sample_CMYKF_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(result + 24);
  v128 = *(result + 28);
  v13 = *(result + 112);
  v14 = *(result + 48);
  v15 = *(result + 56);
  if (v14)
  {
    v127 = *(result + 112);
    if (v13 > v14)
    {
      v127 = v13 % v14;
    }
  }

  else
  {
    v127 = 0;
  }

  v16 = *(result + 176);
  v17 = *(result + 40);
  v129 = *(result + 32);
  v18 = *(result + 120);
  if (v15)
  {
    v19 = v18 % v15;
    if (v18 <= v15)
    {
      v19 = *(result + 120);
    }

    v126 = v19;
  }

  else
  {
    v126 = 0;
  }

  v122 = *(result + 80);
  v124 = *(result + 88);
  v20 = *(result + 152) - 20;
  v21 = *(result + 144) - 1;
  v22 = *(result + 260) - 1;
  v23 = *(result + 256) - 1;
  v24 = v17 + (v22 * v128) + 4 * v23;
  v121 = *(result + 188);
  v25 = v129 + (v22 * v12) + 16 * v23 - 16;
  v123 = *(result + 64);
  v125 = *(result + 72);
  while (1)
  {
LABEL_11:
    if (a3 >= v125)
    {
      if (a3 <= v124)
      {
        v34 = 0;
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        v37 = a3;
      }

      else
      {
        v30 = *(result + 216);
        v31 = *(result + 224) + v124;
        v32 = v31 - a3 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_56;
        }

        if (v32 >= v30)
        {
          LODWORD(v33) = 0x3FFFFFFF;
        }

        else
        {
          v33 = (*(result + 232) * v32) >> 32;
        }

        v36 = v121 | v33;
        v37 = v31 - 0x1000000;
        v34 = a3 - (v31 - 0x1000000);
        v35 = 448;
      }
    }

    else
    {
      v26 = *(result + 216);
      v27 = v125 - *(result + 224);
      v28 = a3 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_56;
      }

      if (v28 >= v26)
      {
        LODWORD(v29) = 0x3FFFFFFF;
      }

      else
      {
        v29 = (*(result + 232) * v28) >> 32;
      }

      v36 = v121 | v29;
      v37 = v27 + 0x1000000;
      v34 = a3 - (v27 + 0x1000000);
      v35 = 512;
    }

    if (a2 >= v123)
    {
      break;
    }

    v38 = *(result + 192);
    v39 = v123 - *(result + 200);
    v40 = a2 - v39 + (v38 >> 1);
    if (v40 >= 1)
    {
      if (v40 < v38)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v121;
      }

      v41 = v39 + 0x1000000;
      v42 = a2 - (v39 + 0x1000000);
      v43 = 32;
      goto LABEL_35;
    }

LABEL_56:
    --a4;
    a2 += v13;
    a3 += v18;
    v20 += 20;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v122)
  {
    v42 = 0;
    v43 = (a2 >> 26) & 0x3C;
    v41 = a2;
    goto LABEL_35;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v122;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_56;
  }

  if (v46 < v44)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v121;
  }

  v41 = v45 - 0x1000000;
  v42 = a2 - (v45 - 0x1000000);
  v43 = 28;
LABEL_35:
  if (v36 < 0x400000)
  {
    goto LABEL_56;
  }

  if (v14)
  {
    v47 = (v15 & ((v37 % v15) >> 63)) + v37 % v15;
    v48 = (v14 & ((v41 % v14) >> 63)) + v41 % v14;
    if (v47 >= v15)
    {
      v49 = v15;
    }

    else
    {
      v49 = 0;
    }

    v37 = v47 - v49;
    if (v48 >= v14)
    {
      v50 = v14;
    }

    else
    {
      v50 = 0;
    }

    v41 = v48 - v50;
    v34 += v37;
    v42 += v41;
  }

  v51 = v37 >> 32;
  v52 = v129 + SHIDWORD(v37) * v12;
  v53 = (v41 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v54 = v52 + 4 * v53;
  v55 = *(result + 32);
  if (v25 >= v54)
  {
    v56 = (v52 + 4 * v53);
  }

  else
  {
    v56 = v25;
  }

  if (v56 < v55)
  {
    v56 = *(result + 32);
  }

  if (v17)
  {
    v57 = v17 + v51 * v128 + v53;
    v58 = *(result + 40);
    if (v24 >= v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = v24;
    }

    if (v59 >= v58)
    {
      v58 = v59;
    }

    v60 = COERCE_FLOAT(bswap32(*v58));
  }

  else
  {
    v57 = 0;
    v60 = 1.0;
  }

  v61 = vrev32q_s8(*v56);
  if (v16)
  {
    v62 = *(v16 + (v43 | v35));
LABEL_93:
    v81 = v62 & 0xF;
    v82 = v62 >> 8;
    v83 = HIBYTE(v62) & 3;
    if (v81 == 1)
    {
      LODWORD(v115) = SBYTE1(v62);
      if (v14)
      {
        v116 = v34 + (SBYTE1(v62) << 32);
        v117 = v15 & (v116 >> 63);
        if (v117 + v116 >= v15)
        {
          v118 = v15;
        }

        else
        {
          v118 = 0;
        }

        v115 = (v117 + (v82 << 32) - v118) >> 32;
      }

      v119 = (v54 + v115 * v12);
      if (v25 < v119)
      {
        v119 = v25;
      }

      if (v119 < v55)
      {
        v119 = v55;
      }

      v112 = vrev32q_s8(*v119);
      v113 = 1.0;
      if (v17)
      {
        v120 = (v57 + v115 * v128);
        if (v24 < v120)
        {
          v120 = v24;
        }

        if (v120 < *(result + 40))
        {
          v120 = *(result + 40);
        }

        v113 = COERCE_FLOAT(bswap32(*v120));
      }
    }

    else
    {
      if (v81 != 2)
      {
        if (v81 == 3)
        {
          LODWORD(v84) = SBYTE1(v62);
          v85 = SBYTE2(v62);
          if (v14)
          {
            v86 = v82 << 56;
            v87 = HIWORD(v62) << 56;
            v88 = v34 + (SBYTE1(v62) << 32);
            v89 = v42 + (v87 >> 24);
            v90 = v15 & (v88 >> 63);
            v91 = v14 & (v89 >> 63);
            v92 = v91 + v89;
            if (v90 + v88 >= v15)
            {
              v93 = v15;
            }

            else
            {
              v93 = 0;
            }

            if (v92 >= v14)
            {
              v94 = v14;
            }

            else
            {
              v94 = 0;
            }

            v84 = (v90 + (v86 >> 24) - v93) >> 32;
            v85 = (v91 + (v87 >> 24) - v94) >> 32;
          }

          v95 = v54 + 16 * v85;
          if (v25 >= v95)
          {
            v96 = (v54 + 16 * v85);
          }

          else
          {
            v96 = v25;
          }

          if (v96 < v55)
          {
            v96 = v55;
          }

          v97 = (v95 + v84 * v12);
          if (v25 < v97)
          {
            v97 = v25;
          }

          if (v97 < v55)
          {
            v97 = v55;
          }

          v98 = vrev32q_s8(*v96);
          v99 = vrev32q_s8(*v97);
          v100 = 1.0;
          v101 = 1.0;
          if (v17)
          {
            v102 = v57 + 4 * v85;
            v103 = *(result + 40);
            if (v24 >= v102)
            {
              v104 = (v57 + 4 * v85);
            }

            else
            {
              v104 = v24;
            }

            if (v104 < v103)
            {
              v104 = *(result + 40);
            }

            v101 = COERCE_FLOAT(bswap32(*v104));
            v105 = (v102 + v84 * v128);
            if (v24 < v105)
            {
              v105 = v24;
            }

            if (v105 < v103)
            {
              v105 = *(result + 40);
            }

            v100 = COERCE_FLOAT(bswap32(*v105));
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v83 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v62 >> 28) & 3) + 4];
          v106 = vmlaq_n_f32(vmlsq_lane_f32(v61, v61, *&a11, 0), v98, *&a11);
          v61 = vmlaq_n_f32(vmlsq_lane_f32(v106, v106, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v98, v98, *&a11, 0), v99, *&a11), *&a12);
          v60 = (((v60 - (v60 * *&a11)) + (v101 * *&a11)) - (((v60 - (v60 * *&a11)) + (v101 * *&a11)) * *&a12)) + (((v101 - (v101 * *&a11)) + (v100 * *&a11)) * *&a12);
        }

        goto LABEL_61;
      }

      v107 = SBYTE2(v62);
      if (v14)
      {
        v108 = v42 + (SBYTE2(v62) << 32);
        v109 = v14 & (v108 >> 63);
        if (v109 + v108 >= v14)
        {
          v110 = v14;
        }

        else
        {
          v110 = 0;
        }

        v107 = (v109 + ((HIWORD(v62) << 56) >> 24) - v110) >> 32;
      }

      v111 = (v54 + 16 * v107);
      if (v25 < v111)
      {
        v111 = v25;
      }

      if (v111 < v55)
      {
        v111 = v55;
      }

      v112 = vrev32q_s8(*v111);
      v113 = 1.0;
      if (v17)
      {
        v114 = (v57 + 4 * v107);
        if (v24 < v114)
        {
          v114 = v24;
        }

        if (v114 < *(result + 40))
        {
          v114 = *(result + 40);
        }

        v113 = COERCE_FLOAT(bswap32(*v114));
      }

      v83 = (v62 >> 28) & 3;
    }

    LODWORD(a9) = interpolate_cmykaf[5 * v83 + 4];
    v61 = vmlaq_n_f32(vmlsq_lane_f32(v61, v61, *&a9, 0), v112, *&a9);
    v60 = (v60 - (v60 * *&a9)) + (v113 * *&a9);
  }

LABEL_61:
  *(v20 + 20) = v61;
  *(v20 + 36) = v60;
  *(v21 + 1) = v36 >> 22;
  if (a4 != 1)
  {
    v63 = 0;
    v64 = (v20 + 56);
    a2 += v13;
    v65 = v122 - a2;
    a3 += v18;
    v66 = v124 - a3;
    v67 = --a4;
    while (1)
    {
      v68 = v21 + v63 + 1;
      v20 = (v64 - 9);
      if (((v66 | v65 | (a3 - v125) | (a2 - v123)) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14)
      {
        v69 = (v15 & ((v34 + v126) >> 63)) + v34 + v126;
        v70 = (v14 & ((v42 + v127) >> 63)) + v42 + v127;
        if (v69 >= v15)
        {
          v71 = v15;
        }

        else
        {
          v71 = 0;
        }

        v34 = v69 - v71;
        if (v70 >= v14)
        {
          v72 = v14;
        }

        else
        {
          v72 = 0;
        }

        v42 = v70 - v72;
        v73 = v34;
        v74 = v42;
      }

      else
      {
        v73 = a3;
        v74 = a2;
      }

      v75 = v73 >> 32;
      v76 = (v74 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v54 = v129 + SHIDWORD(v73) * v12 + 4 * v76;
      v55 = *(result + 32);
      if (v25 >= v54)
      {
        v77 = v54;
      }

      else
      {
        v77 = v25;
      }

      if (v77 < v55)
      {
        v77 = *(result + 32);
      }

      if (v17)
      {
        v57 = v17 + v75 * v128 + v76;
        v78 = *(result + 40);
        if (v24 >= v57)
        {
          v79 = v57;
        }

        else
        {
          v79 = v24;
        }

        if (v79 >= v78)
        {
          v78 = v79;
        }

        v60 = COERCE_FLOAT(bswap32(*v78));
      }

      else
      {
        v60 = 1.0;
      }

      v61 = vrev32q_s8(*v77);
      if (v16)
      {
        v62 = *(v16 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v62 & 0xF) != 0)
        {
          v36 = -1;
          v21 = v68;
          goto LABEL_93;
        }
      }

      --a4;
      *(v64 - 1) = v61;
      *v64 = v60;
      v64 += 5;
      v80 = v21 + v63++;
      a2 += v13;
      *(v80 + 2) = -1;
      v65 -= v13;
      a3 += v18;
      v66 -= v18;
      if (v67 == v63)
      {
        return result;
      }
    }

    v21 += v63 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t CMYKf_sample_CMYKf_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(result + 24);
  v137 = *(result + 28);
  v13 = *(result + 112);
  v14 = *(result + 48);
  v15 = *(result + 56);
  if (v14)
  {
    v136 = *(result + 112);
    if (v13 > v14)
    {
      v136 = v13 % v14;
    }
  }

  else
  {
    v136 = 0;
  }

  v16 = *(result + 176);
  v18 = *(result + 32);
  v17 = *(result + 40);
  v19 = *(result + 120);
  if (v15)
  {
    v21 = v19 % v15;
    if (v19 <= v15)
    {
      v21 = *(result + 120);
    }

    v135 = v21;
  }

  else
  {
    v135 = 0;
  }

  v131 = *(result + 80);
  v132 = *(result + 64);
  v133 = *(result + 88);
  v22 = *(result + 152) - 20;
  v23 = *(result + 144) - 1;
  v24 = *(result + 260) - 1;
  v25 = *(result + 256) - 1;
  v26 = v17 + (v24 * v137) + 4 * v25;
  v130 = *(result + 188);
  v27 = v18 + (v24 * v12) + 16 * v25 - 16;
  v134 = *(result + 72);
  do
  {
    if (a3 >= v134)
    {
      v31 = a4;
      if (a3 <= v133)
      {
        v37 = 0;
        v38 = (a3 >> 22) & 0x3C0;
        v39 = 0x3FFFFFFF;
        v40 = a3;
      }

      else
      {
        v33 = *(result + 216);
        v34 = *(result + 224) + v133;
        v35 = v34 - a3 + (v33 >> 1);
        if (v35 < 1)
        {
          goto LABEL_56;
        }

        if (v35 >= v33)
        {
          LODWORD(v36) = 0x3FFFFFFF;
        }

        else
        {
          v36 = (*(result + 232) * v35) >> 32;
        }

        v39 = v130 | v36;
        v40 = v34 - 0x1000000;
        v37 = a3 - (v34 - 0x1000000);
        v38 = 448;
      }
    }

    else
    {
      v28 = *(result + 216);
      v29 = v134 - *(result + 224);
      v30 = a3 - v29 + (v28 >> 1);
      v31 = a4;
      if (v30 < 1)
      {
        goto LABEL_56;
      }

      if (v30 >= v28)
      {
        LODWORD(v32) = 0x3FFFFFFF;
      }

      else
      {
        v32 = (*(result + 232) * v30) >> 32;
      }

      v39 = v130 | v32;
      v40 = v29 + 0x1000000;
      v37 = a3 - (v29 + 0x1000000);
      v38 = 512;
    }

    if (a2 >= v132)
    {
      if (a2 <= v131)
      {
        v45 = 0;
        v46 = (a2 >> 26) & 0x3C;
        v44 = a2;
      }

      else
      {
        v47 = *(result + 192);
        v48 = *(result + 200) + v131;
        v49 = v48 - a2 + (v47 >> 1);
        if (v49 < 1)
        {
          goto LABEL_56;
        }

        if (v49 < v47)
        {
          v39 = ((v39 >> 15) * (((*(result + 208) * v49) >> 32) >> 15)) | v130;
        }

        v44 = v48 - 0x1000000;
        v45 = a2 - (v48 - 0x1000000);
        v46 = 28;
      }
    }

    else
    {
      v41 = *(result + 192);
      v42 = v132 - *(result + 200);
      v43 = a2 - v42 + (v41 >> 1);
      if (v43 < 1)
      {
        goto LABEL_56;
      }

      if (v43 < v41)
      {
        v39 = ((v39 >> 15) * (((*(result + 208) * v43) >> 32) >> 15)) | v130;
      }

      v44 = v42 + 0x1000000;
      v45 = a2 - (v42 + 0x1000000);
      v46 = 32;
    }

    if (v39 >= 0x400000)
    {
      if (v14)
      {
        v50 = (v15 & ((v40 % v15) >> 63)) + v40 % v15;
        v51 = (v14 & ((v44 % v14) >> 63)) + v44 % v14;
        if (v50 >= v15)
        {
          v52 = v15;
        }

        else
        {
          v52 = 0;
        }

        v40 = v50 - v52;
        if (v51 >= v14)
        {
          v53 = v14;
        }

        else
        {
          v53 = 0;
        }

        v44 = v51 - v53;
        v37 += v40;
        v45 += v44;
      }

      v54 = v40 >> 32;
      v55 = (v44 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v56 = v18 + SHIDWORD(v40) * v12 + 4 * v55;
      v57 = *(result + 32);
      if (v27 >= v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = v27;
      }

      if (v58 < v57)
      {
        v58 = *(result + 32);
      }

      if (v17)
      {
        v59 = v17 + v54 * v137 + v55;
        v60 = *(result + 40);
        if (v26 >= v59)
        {
          v61 = v59;
        }

        else
        {
          v61 = v26;
        }

        if (v61 >= v60)
        {
          v60 = v61;
        }

        v62 = *v60;
      }

      else
      {
        v59 = 0;
        v62 = 1.0;
      }

      v64 = *v58;
      if (!v16)
      {
        goto LABEL_62;
      }

      v65 = *(v16 + (v46 | v38));
      while (1)
      {
        v84 = v65 & 0xF;
        v85 = v65 >> 8;
        v86 = HIBYTE(v65) & 3;
        if (v84 == 1)
        {
          break;
        }

        if (v84 == 2)
        {
          v113 = SBYTE2(v65);
          if (v14)
          {
            v114 = HIWORD(v65) << 56;
            v115 = v45 + (v114 >> 24);
            v116 = v14 & (v115 >> 63);
            if (v116 + v115 >= v14)
            {
              v117 = v14;
            }

            else
            {
              v117 = 0;
            }

            v113 = (v116 + (v114 >> 24) - v117) >> 32;
          }

          v118 = (v56 + 16 * v113);
          if (v27 < v118)
          {
            v118 = v27;
          }

          if (v118 < v57)
          {
            v118 = v57;
          }

          v119 = *v118;
          v120 = 1.0;
          if (v17)
          {
            v121 = (v59 + 4 * v113);
            if (v26 < v121)
            {
              v121 = v26;
            }

            if (v121 < *(result + 40))
            {
              v121 = *(result + 40);
            }

            v120 = *v121;
          }

          v122 = &interpolate_cmykaf[5 * ((v65 >> 28) & 3)];
LABEL_157:
          LODWORD(a9) = v122[4];
          v64 = vmlaq_n_f32(vmlsq_lane_f32(v64, v64, *&a9, 0), v119, *&a9);
          v62 = (v62 - (v62 * *&a9)) + (v120 * *&a9);
          goto LABEL_62;
        }

        if (v84 == 3)
        {
          LODWORD(v87) = SBYTE1(v65);
          v88 = SBYTE2(v65);
          if (v14)
          {
            v89 = v85 << 56;
            v90 = HIWORD(v65) << 56;
            v91 = v37 + (SBYTE1(v65) << 32);
            v129 = v39;
            v92 = v45 + (v90 >> 24);
            v93 = v15 & (v91 >> 63);
            v94 = v31;
            v95 = v14 & (v92 >> 63);
            v96 = v95 + v92;
            if (v93 + v91 >= v15)
            {
              v97 = v15;
            }

            else
            {
              v97 = 0;
            }

            if (v96 >= v14)
            {
              v98 = v14;
            }

            else
            {
              v98 = 0;
            }

            v87 = (v93 + (v89 >> 24) - v97) >> 32;
            v99 = v95 + (v90 >> 24);
            v31 = v94;
            v100 = v99 - v98;
            v86 = HIBYTE(v65) & 3;
            v39 = v129;
            v88 = v100 >> 32;
          }

          v101 = v56 + 16 * v88;
          if (v27 >= v101)
          {
            v102 = (v56 + 16 * v88);
          }

          else
          {
            v102 = v27;
          }

          if (v102 < v57)
          {
            v102 = v57;
          }

          v103 = (v101 + v87 * v12);
          if (v27 < v103)
          {
            v103 = v27;
          }

          if (v103 < v57)
          {
            v103 = v57;
          }

          v104 = *v102;
          v105 = *v103;
          v106 = 1.0;
          v107 = 1.0;
          if (v17)
          {
            v108 = (v59 + 4 * v88);
            v109 = *(result + 40);
            if (v26 >= v108)
            {
              v110 = v108;
            }

            else
            {
              v110 = v26;
            }

            if (v110 < v109)
            {
              v110 = *(result + 40);
            }

            v107 = *v110;
            v111 = (v108 + v87 * v137);
            if (v26 < v111)
            {
              v111 = v26;
            }

            if (v111 < v109)
            {
              v111 = *(result + 40);
            }

            v106 = *v111;
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v86 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v65 >> 28) & 3) + 4];
          v112 = vmlaq_n_f32(vmlsq_lane_f32(v64, v64, *&a11, 0), v104, *&a11);
          v64 = vmlaq_n_f32(vmlsq_lane_f32(v112, v112, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v104, v104, *&a11, 0), v105, *&a11), *&a12);
          v62 = (((v62 - (v62 * *&a11)) + (v107 * *&a11)) - (((v62 - (v62 * *&a11)) + (v107 * *&a11)) * *&a12)) + (((v107 - (v107 * *&a11)) + (v106 * *&a11)) * *&a12);
        }

LABEL_62:
        *(v22 + 20) = v64;
        *(v22 + 36) = v62;
        *(v23 + 1) = v39 >> 22;
        if (v31 == 1)
        {
          return result;
        }

        v66 = v31;
        v67 = 0;
        v68 = (v22 + 56);
        a2 += v13;
        v69 = v131 - a2;
        a3 += v19;
        v70 = v133 - a3;
        while (1)
        {
          if (((v70 | v69 | (a3 - v134) | (a2 - v132)) & 0x8000000000000000) != 0)
          {
            v23 += v67 + 1;
            v22 = (v68 - 9);
            v63 = ~v67 + v66;
            goto LABEL_57;
          }

          if (v14)
          {
            v71 = (v15 & ((v37 + v135) >> 63)) + v37 + v135;
            v72 = (v14 & ((v45 + v136) >> 63)) + v45 + v136;
            if (v71 >= v15)
            {
              v73 = v15;
            }

            else
            {
              v73 = 0;
            }

            v37 = v71 - v73;
            if (v72 >= v14)
            {
              v74 = v14;
            }

            else
            {
              v74 = 0;
            }

            v45 = v72 - v74;
            v75 = v37;
            v76 = v45;
          }

          else
          {
            v75 = a3;
            v76 = a2;
          }

          v77 = v75 >> 32;
          v78 = v18 + v77 * v12;
          v79 = (v76 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
          v56 = v78 + 4 * v79;
          v57 = *(result + 32);
          if (v27 >= v56)
          {
            v80 = (v78 + 4 * v79);
          }

          else
          {
            v80 = v27;
          }

          if (v80 < v57)
          {
            v80 = *(result + 32);
          }

          if (v17)
          {
            v59 = v17 + v77 * v137 + v79;
            v81 = *(result + 40);
            v82 = (v26 >= v59 ? v59 : v26);
            if (v82 >= v81)
            {
              v81 = v82;
            }

            v62 = *v81;
          }

          else
          {
            v62 = 1.0;
          }

          v64 = *v80;
          if (v16)
          {
            v65 = *(v16 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v65 & 0xF) != 0)
            {
              break;
            }
          }

          *(v68 - 1) = v64;
          *v68 = v62;
          v68 += 5;
          v83 = v23 + v67++;
          a2 += v13;
          *(v83 + 2) = -1;
          v69 -= v13;
          a3 += v19;
          v70 -= v19;
          if (v66 - 1 == v67)
          {
            return result;
          }
        }

        v23 += v67 + 1;
        v22 = (v68 - 9);
        v31 = ~v67 + v66;
        v39 = -1;
      }

      LODWORD(v123) = SBYTE1(v65);
      if (v14)
      {
        v124 = v37 + (SBYTE1(v65) << 32);
        v125 = v15 & (v124 >> 63);
        if (v125 + v124 >= v15)
        {
          v126 = v15;
        }

        else
        {
          v126 = 0;
        }

        v123 = (v125 + (v85 << 32) - v126) >> 32;
      }

      v127 = (v56 + v123 * v12);
      if (v27 < v127)
      {
        v127 = v27;
      }

      if (v127 < v57)
      {
        v127 = v57;
      }

      v119 = *v127;
      v120 = 1.0;
      if (v17)
      {
        v128 = (v59 + v123 * v137);
        if (v26 < v128)
        {
          v128 = v26;
        }

        if (v128 < *(result + 40))
        {
          v128 = *(result + 40);
        }

        v120 = *v128;
      }

      v122 = &interpolate_cmykaf[5 * v86];
      goto LABEL_157;
    }

LABEL_56:
    v63 = v31 - 1;
    a2 += v13;
    a3 += v19;
    v22 += 20;
    *++v23 = 0;
LABEL_57:
    a4 = v63;
  }

  while (v63);
  return result;
}

float32x4_t *CMYKf_pattern(uint64_t a1, float32x4_t *a2, unsigned int a3, int a4, float32x4_t *a5, float a6, double a7, double a8, int32x4_t a9, double a10, double a11)
{
  v14 = *(*a1 + 64);
  a9.i32[0] = *v14;
  LODWORD(a11) = v14[1];
  if (a2 && a3 > 0x13 || (v25 = a9, v26 = a11, v15 = malloc_type_malloc(0x44uLL, 0x1080040E00A32E4uLL), a9 = v25, a11 = v26, (a2 = v15) != 0))
  {
    if (*a9.i32 <= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a9.i32;
    }

    if (*&a11 < a6)
    {
      v16 = *&a11;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v22 = a9;
        *&v22.i32[1] = v16 * (*&a11 - a5->f32[0]);
        v21 = vzip1q_s32(v22, v22);
        v21.i32[2] = a9.i32[0];
        break;
      case 4:
        v21 = vmulq_n_f32(*a5, v16);
        break;
      case 3:
        v18 = v16 * (*&a11 - a5->f32[2]);
        v20 = vdup_lane_s32(*&a11, 0);
        v19 = vmul_n_f32(vsub_f32(v20, *a5->f32), v16);
        v20.i32[0] = v19.i32[1];
        if (v19.f32[0] < v19.f32[1])
        {
          v20.f32[0] = v19.f32[0];
        }

        if (v18 < v20.f32[0])
        {
          v20.f32[0] = v16 * (*&a11 - a5->f32[2]);
        }

        *v21.f32 = vsub_f32(v19, vdup_lane_s32(v20, 0));
        v21.f32[2] = v18 - v20.f32[0];
        v21.i32[3] = v20.i32[0];
        break;
      default:
        v21 = vdupq_lane_s32(*a9.i8, 0);
        break;
    }

    *a2 = xmmword_18439CB10;
    a2[1].i32[2] = 0;
    a2[1].i64[0] = 1;
    a2[3] = v21;
    a2[4].f32[0] = v16;
    v23 = a2 + 4;
    if (v16 >= *&a11)
    {
      v23 = 0;
    }

    a2[2].i64[0] = &a2[3];
    a2[2].i64[1] = v23;
  }

  return a2;
}

uint64_t CMYKf_mark_inner(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v772 = *MEMORY[0x1E69E9840];
  v17 = *(v2 + 96);
  v18 = *(v2 + 48);
  v19 = *(v1 + 16 * *v2 + 8 * (v17 == 0) + 4 * (v18 == 0));
  if (v19 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v2;
  v22 = *(v2 + 4);
  v23 = v22 - 1;
  if (v22 < 1)
  {
    return 0;
  }

  v24 = *(v2 + 8);
  v25 = (v24 - 1);
  if (v24 < 1)
  {
    return 0;
  }

  v26 = *(v2 + 136);
  v706 = v2;
  if ((*v2 & 0xFF0000) == 0x50000 || !v26)
  {
    v28 = *v2 & 0xFF00;
    v700 = *(v1 + 16 * *v2 + 8 * (v17 == 0) + 4 * (v18 == 0));
    if (v28 == 1024)
    {
      LODWORD(v766[0]) = *(v2 + 4);
      v765 = v24;
      v16.i32[0] = 1.0;
      if (v17)
      {
        v16.i32[0] = *v17;
      }

      v29 = *(v2 + 88);
      v30 = *(v2 + 28) >> 4;
      v31 = *(v2 + 12);
      v32 = *(v2 + 16);
      if (v18)
      {
        v33 = *(v2 + 32) >> 2;
        v755 = v18 + 4 * v33 * v32 + 4 * v31;
        v748 = 1;
      }

      else
      {
        v755 = 0;
        v33 = 0;
        v748 = 0;
      }

      v44 = *v29;
      v12.f32[0] = 1.0 - v16.f32[0];
      v45 = *(v2 + 40) + 16 * v32 * v30 + 16 * v31;
      v759 = *v29;
      v761 = v16;
      v753 = v12;
      v744 = v33;
      v746 = *(v2 + 28) >> 4;
      v751 = v45;
      if (v26)
      {
        shape_enum_clip_alloc(v1, v2, v26, 1, 1, 1, *(v2 + 104), *(v2 + 108), v22, v24);
        v47 = v46;
        v48 = v755;
        v49 = v33;
        if (v46)
        {
          goto LABEL_1236;
        }

        return 1;
      }

      v757 = 0;
      if (v18)
      {
        v58 = v22;
      }

      else
      {
        v58 = 0;
      }

      v59 = v22;
      v49 = v33 - v58;
      v48 = v755;
      v60 = v45;
      v61 = v59;
      v62 = v59;
LABEL_926:
      v45 = v30 - v62;
      switch(v19)
      {
        case 0:
          v532 = v33;
          v533 = v45 + v61;
          v534 = v765;
          v535 = v765 - 1;
          v536 = &v60[(v533 * v535) & (v533 >> 63)];
          if (v533 < 0)
          {
            v533 = -v533;
          }

          CGBlt_fillBytes(16 * v61, v765, 0, v536, 16 * v533);
          if (v18)
          {
            v537 = v49 + v61;
            v48 += 4 * ((v537 * v535) & (v537 >> 63));
            if (v537 >= 0)
            {
              v49 += v61;
            }

            else
            {
              v49 = -v537;
            }

            CGBlt_fillBytes(4 * v61, v534, 0, v48, 4 * v49);
          }

          v33 = v532;
          goto LABEL_1233;
        case 1:
          v618 = v45 + v61;
          if (v618 < 0)
          {
            v60 += v618 * (v765 - 1);
            v618 = -v618;
          }

          v619 = *(v706 + 88);
          v620 = v765;
          if (v619)
          {
            CGSFillDRAM64(v60, 16 * v618, 16 * v61, v765, v619, 16, 16, 1, 0, 0);
          }

          else
          {
            CGBlt_fillBytes(16 * v61, v765, 0, v60, 16 * v618);
          }

          v47 = v757;
          if (v18)
          {
            v697 = *(v706 + 96);
            if (!v697)
            {
              v697 = &_CMYK_float_alpha;
            }

            v48 += 4 * (((v49 + v61) * (v620 - 1)) & ((v49 + v61) >> 63));
            if ((v49 + v61) >= 0)
            {
              v49 += v61;
            }

            else
            {
              v49 = -(v49 + v61);
            }

            CGBlt_fillBytes(4 * v61, v620, *v697, v48, 4 * v49);
          }

          v45 = v751;
          if (!v757)
          {
            return 1;
          }

          goto LABEL_1235;
        case 2:
          v593 = v765;
          v594 = 4 * v748;
          v595 = vdupq_lane_s32(*v12.f32, 0);
          v596 = 16 * v748;
          if (v18)
          {
            do
            {
              v597 = v61;
              if (v61 >= 4)
              {
                v598 = (v61 >> 2) + 1;
                do
                {
                  *v60 = vmlaq_f32(v44, v595, *v60);
                  *v48 = v16.f32[0] + (*v48 * v12.f32[0]);
                  v60[1] = vmlaq_f32(v44, v595, v60[1]);
                  *(v48 + 4) = v16.f32[0] + (*(v48 + 4) * v12.f32[0]);
                  v60[2] = vmlaq_f32(v44, v595, v60[2]);
                  *(v48 + 8) = v16.f32[0] + (*(v48 + 8) * v12.f32[0]);
                  v60[3] = vmlaq_f32(v44, v595, v60[3]);
                  *(v48 + 12) = v16.f32[0] + (*(v48 + 12) * v12.f32[0]);
                  v60 += 4;
                  --v598;
                  v48 += v596;
                }

                while (v598 > 1);
                v597 = v61 & 3;
              }

              if (v597 >= 1)
              {
                v599 = v597 + 1;
                do
                {
                  *v60 = vmlaq_f32(v44, v595, *v60);
                  ++v60;
                  *v48 = v16.f32[0] + (*v48 * v12.f32[0]);
                  v48 += v594;
                  --v599;
                }

                while (v599 > 1);
              }

              v60 += v45;
              v48 += 4 * v49;
              --v593;
            }

            while (v593);
          }

          else
          {
            do
            {
              v600 = v61;
              if (v61 >= 4)
              {
                v601 = (v61 >> 2) + 1;
                do
                {
                  v602 = vmlaq_f32(v44, v595, v60[1]);
                  *v60 = vmlaq_f32(v44, v595, *v60);
                  v60[1] = v602;
                  v603 = vmlaq_f32(v44, v595, v60[3]);
                  v60[2] = vmlaq_f32(v44, v595, v60[2]);
                  v60[3] = v603;
                  v60 += 4;
                  --v601;
                  v48 += v596;
                }

                while (v601 > 1);
                v600 = v61 & 3;
              }

              if (v600 >= 1)
              {
                v604 = v600 + 1;
                do
                {
                  *v60 = vmlaq_f32(v44, v595, *v60);
                  ++v60;
                  v48 += v594;
                  --v604;
                }

                while (v604 > 1);
              }

              v60 += v45;
              v48 += 4 * v49;
              --v593;
            }

            while (v593);
          }

          goto LABEL_1232;
        case 3:
          v610 = v765;
          do
          {
            v611 = v61;
            do
            {
              v612 = *v48;
              if (*v48 <= 0.0)
              {
                v60->i64[0] = 0;
                v60->i64[1] = 0;
                v613 = 0.0;
              }

              else if (v612 >= 1.0)
              {
                *v60 = v44;
                v613 = v16.f32[0];
              }

              else
              {
                *v60 = vmulq_n_f32(v44, v612);
                v613 = v16.f32[0] * v612;
              }

              *v48 = v613;
              ++v60;
              v48 += 4 * v748;
              --v611;
            }

            while (v611);
            v60 += v45;
            v48 += 4 * v49;
            --v610;
          }

          while (v610);
          goto LABEL_1232;
        case 4:
          v569 = v765;
          do
          {
            v570 = v61;
            do
            {
              v571 = 1.0 - *v48;
              if (v571 <= 0.0)
              {
                v60->i64[0] = 0;
                v60->i64[1] = 0;
                v572 = 0.0;
              }

              else if (v571 >= 1.0)
              {
                *v60 = v44;
                v572 = v16.f32[0];
              }

              else
              {
                *v60 = vmulq_n_f32(v44, v571);
                v572 = v16.f32[0] * v571;
              }

              *v48 = v572;
              ++v60;
              v48 += 4 * v748;
              --v570;
            }

            while (v570);
            v60 += v45;
            v48 += 4 * v49;
            --v569;
          }

          while (v569);
          goto LABEL_1232;
        case 5:
          v636 = v765;
          do
          {
            v637 = v61;
            do
            {
              v638 = *v48;
              *v60 = vmlaq_n_f32(vmulq_n_f32(*v60, v12.f32[0]), v44, *v48);
              ++v60;
              *v48 = (v12.f32[0] * v638) + (v16.f32[0] * v638);
              v48 += 4 * v748;
              --v637;
            }

            while (v637);
            v60 += v45;
            v48 += 4 * v49;
            --v636;
          }

          while (v636);
          goto LABEL_1232;
        case 6:
          v653 = v765;
          while (1)
          {
            v654 = v61;
            do
            {
              v655 = *v48;
              v656 = 1.0 - *v48;
              if (v656 >= 1.0)
              {
                *v60 = v44;
                v657 = v16.f32[0];
              }

              else
              {
                if (v656 <= 0.0)
                {
                  goto LABEL_1148;
                }

                *v60 = vmlaq_n_f32(*v60, v44, v656);
                v657 = v655 + (v16.f32[0] * v656);
              }

              *v48 = v657;
LABEL_1148:
              ++v60;
              v48 += 4 * v748;
              --v654;
            }

            while (v654);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v653)
            {
              goto LABEL_1232;
            }
          }

        case 7:
          v614 = v765;
          v615 = 4 * v748;
          if (v18)
          {
            do
            {
              v616 = v61;
              do
              {
                *v60 = vmulq_n_f32(*v60, v16.f32[0]);
                ++v60;
                *v48 = v16.f32[0] * *v48;
                v48 += v615;
                --v616;
              }

              while (v616);
              v60 += v45;
              v48 += 4 * v49;
              --v614;
            }

            while (v614);
          }

          else
          {
            do
            {
              v617 = v61;
              do
              {
                *v60 = vmulq_n_f32(*v60, v16.f32[0]);
                ++v60;
                v48 += v615;
                --v617;
              }

              while (v617);
              v60 += v45;
              v48 += 4 * v49;
              --v614;
            }

            while (v614);
          }

          goto LABEL_1232;
        case 8:
          v667 = v765;
          v668 = 4 * v748;
          if (v18)
          {
            do
            {
              v669 = v61;
              do
              {
                *v60 = vmulq_n_f32(*v60, v12.f32[0]);
                ++v60;
                *v48 = v12.f32[0] * *v48;
                v48 += v668;
                --v669;
              }

              while (v669);
              v60 += v45;
              v48 += 4 * v49;
              --v667;
            }

            while (v667);
          }

          else
          {
            do
            {
              v670 = v61;
              do
              {
                *v60 = vmulq_n_f32(*v60, v12.f32[0]);
                ++v60;
                v48 += v668;
                --v670;
              }

              while (v670);
              v60 += v45;
              v48 += 4 * v49;
              --v667;
            }

            while (v667);
          }

          goto LABEL_1232;
        case 9:
          v579 = v765;
          do
          {
            v580 = v61;
            do
            {
              v581 = *v48;
              v582 = 1.0 - *v48;
              *v60 = vmlaq_n_f32(vmulq_n_f32(*v60, v16.f32[0]), v44, v582);
              ++v60;
              *v48 = (v16.f32[0] * v581) + (v16.f32[0] * v582);
              v48 += 4 * v748;
              --v580;
            }

            while (v580);
            v60 += v45;
            v48 += 4 * v49;
            --v579;
          }

          while (v579);
          goto LABEL_1232;
        case 10:
          v663 = v765;
          do
          {
            v664 = v61;
            do
            {
              v665 = *v48;
              v666 = 1.0 - *v48;
              *v60 = vmlaq_n_f32(vmulq_n_f32(*v60, v12.f32[0]), v44, v666);
              ++v60;
              *v48 = (v12.f32[0] * v665) + (v16.f32[0] * v666);
              v48 += 4 * v748;
              --v664;
            }

            while (v664);
            v60 += v45;
            v48 += 4 * v49;
            --v663;
          }

          while (v663);
          goto LABEL_1232;
        case 11:
          v559 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          v560 = v765;
          v561 = 4 * v748;
          if (v18)
          {
            do
            {
              v562 = v61;
              do
              {
                v563 = *v48;
                v564 = v16.f32[0] + *v48;
                v565 = v60->f32[1];
                if (v564 > 1.0)
                {
                  v564 = 1.0;
                }

                v60->f32[0] = v564 - (v559.f32[0] + (*v48 - v60->f32[0]));
                v566 = v60->f32[3];
                v567 = v559.f32[2] + (*v48 - v60->f32[2]);
                v60->f32[1] = v564 - (v559.f32[1] + (v563 - v565));
                v568 = v559.f32[3] + (*v48 - v566);
                v60->f32[2] = v564 - v567;
                *v48 = v564;
                v60->f32[3] = v564 - v568;
                ++v60;
                v48 += v561;
                --v562;
              }

              while (v562);
              v60 += v45;
              v48 += 4 * v49;
              --v560;
            }

            while (v560);
          }

          else
          {
            __asm { FMOV            V1.4S, #1.0 }

            do
            {
              v696 = v61;
              do
              {
                *v60 = vsubq_f32(_Q1, vaddq_f32(v559, vsubq_f32(_Q1, *v60)));
                ++v60;
                v48 += v561;
                --v696;
              }

              while (v696);
              v60 += v45;
              v48 += 4 * v49;
              --v560;
            }

            while (v560);
          }

          goto LABEL_1232;
        case 12:
          v573 = v765;
          v574 = 4 * v748;
          if (v18)
          {
            do
            {
              v575 = v61;
              do
              {
                v576 = v16.f32[0] + *v48;
                if (v576 > 1.0)
                {
                  v576 = 1.0;
                }

                v577.i64[0] = v60->i64[0];
                *v48 = v576;
                v577.i64[1] = v60->i64[1];
                *v60++ = vaddq_f32(v44, v577);
                v48 += v574;
                --v575;
              }

              while (v575);
              v60 += v45;
              v48 += 4 * v49;
              --v573;
            }

            while (v573);
          }

          else
          {
            do
            {
              v578 = v61;
              do
              {
                *v60 = vaddq_f32(v44, *v60);
                ++v60;
                v48 += v574;
                --v578;
              }

              while (v578);
              v60 += v45;
              v48 += 4 * v49;
              --v573;
            }

            while (v573);
          }

          goto LABEL_1232;
        case 13:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v644 = v765;
          v645 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          v646 = vdupq_lane_s32(*v12.f32, 0);
          v10.i32[0] = 1.0;
          v647 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v16, v10)), 0);
          while (1)
          {
            v648 = v61;
            do
            {
              if (!v18)
              {
                v12.i32[0] = 1.0;
LABEL_1136:
                v649 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), *v60);
                v650 = vmulq_f32(v649, v645);
                v651 = vbslq_s8(v647, vmlaq_f32(v650, v646, v649), v650);
                v652 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v12, v10)), 0), vmlaq_n_f32(v651, v645, 1.0 - v12.f32[0]), v651);
                v12.f32[0] = (v12.f32[0] + v16.f32[0]) - (v12.f32[0] * v16.f32[0]);
                *v60 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), v652);
                if (!v18)
                {
                  goto LABEL_1138;
                }

                goto LABEL_1137;
              }

              v12.i32[0] = *v48;
              if (*v48 > 0.0)
              {
                goto LABEL_1136;
              }

              *v60 = v44;
              v12.i32[0] = v16.i32[0];
LABEL_1137:
              *v48 = v12.i32[0];
LABEL_1138:
              ++v60;
              v48 += 4 * v748;
              --v648;
            }

            while (v648);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v644)
            {
              goto LABEL_1232;
            }
          }

        case 14:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v554 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          v555 = v765;
          __asm { FMOV            V1.4S, #1.0 }

          while (1)
          {
            v557 = v61;
            do
            {
              if (!v18)
              {
                v11.i32[0] = 1.0;
LABEL_967:
                v10.f32[0] = (v16.f32[0] + v11.f32[0]) - (v11.f32[0] * v16.f32[0]);
                v558 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v60);
                v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmlaq_f32(v558, vsubq_f32(_Q1, v558), v554));
                *v60 = v11;
                if (!v18)
                {
                  goto LABEL_969;
                }

                goto LABEL_968;
              }

              v11.i32[0] = *v48;
              if (*v48 > 0.0)
              {
                goto LABEL_967;
              }

              *v60 = v44;
              v10.i32[0] = v16.i32[0];
LABEL_968:
              *v48 = v10.i32[0];
LABEL_969:
              ++v60;
              v48 += 4 * v748;
              --v557;
            }

            while (v557);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v555)
            {
              goto LABEL_1232;
            }
          }

        case 15:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v605 = v44.f32[1];
          v606 = v44.i64[1];
          v607 = v765;
          while (1)
          {
            v608 = v61;
            do
            {
              if (v18)
              {
                v609 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1060;
                }
              }

              else
              {
                v609 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAoverlayPDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v609, *v13.i64, v14, v15, v44.f32[0], v605, *&v606, *(&v606 + 1), v16.f32[0]);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1060:
              ++v60;
              v48 += 4 * v748;
              --v608;
            }

            while (v608);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v607)
            {
              goto LABEL_1227;
            }
          }

        case 16:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v543 = v765;
          v544 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          v545 = vdupq_lane_s32(*v12.f32, 0);
          v10.i32[0] = 1.0;
          v546 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v16, v10)), 0);
          while (1)
          {
            v547 = v61;
            do
            {
              if (!v18)
              {
                v12.i32[0] = 1.0;
LABEL_955:
                v548 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), *v60);
                v549 = vmulq_n_f32(v548, v16.f32[0]);
                v550 = vmulq_n_f32(v544, v12.f32[0]);
                v551 = vbslq_s8(vcgtq_f32(v549, v550), v550, v549);
                v552 = vbslq_s8(v546, vmlaq_f32(v551, v545, v548), v551);
                v553 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v12, v10)), 0), vmlaq_n_f32(v552, v544, 1.0 - v12.f32[0]), v552);
                v12.f32[0] = (v12.f32[0] + v16.f32[0]) - (v12.f32[0] * v16.f32[0]);
                *v60 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), v553);
                if (!v18)
                {
                  goto LABEL_957;
                }

                goto LABEL_956;
              }

              v12.i32[0] = *v48;
              if (*v48 > 0.0)
              {
                goto LABEL_955;
              }

              *v60 = v44;
              v12.i32[0] = v16.i32[0];
LABEL_956:
              *v48 = v12.i32[0];
LABEL_957:
              ++v60;
              v48 += 4 * v748;
              --v547;
            }

            while (v547);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v543)
            {
              goto LABEL_1232;
            }
          }

        case 17:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v621 = v765;
          v622 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          v623 = vdupq_lane_s32(*v12.f32, 0);
          v10.i32[0] = 1.0;
          v624 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v16, v10)), 0);
          while (1)
          {
            v625 = v61;
            do
            {
              if (!v18)
              {
                v12.i32[0] = 1.0;
LABEL_1093:
                v626 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), *v60);
                v627 = vmulq_n_f32(v626, v16.f32[0]);
                v628 = vmulq_n_f32(v622, v12.f32[0]);
                v629 = vbslq_s8(vcgtq_f32(v628, v627), v628, v627);
                v630 = vbslq_s8(v624, vmlaq_f32(v629, v623, v626), v629);
                v631 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v12, v10)), 0), vmlaq_n_f32(v630, v622, 1.0 - v12.f32[0]), v630);
                v12.f32[0] = (v12.f32[0] + v16.f32[0]) - (v12.f32[0] * v16.f32[0]);
                *v60 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), v631);
                if (!v18)
                {
                  goto LABEL_1095;
                }

                goto LABEL_1094;
              }

              v12.i32[0] = *v48;
              if (*v48 > 0.0)
              {
                goto LABEL_1093;
              }

              *v60 = v44;
              v12.i32[0] = v16.i32[0];
LABEL_1094:
              *v48 = v12.i32[0];
LABEL_1095:
              ++v60;
              v48 += 4 * v748;
              --v625;
            }

            while (v625);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v621)
            {
              goto LABEL_1232;
            }
          }

        case 18:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v658 = v44.f32[1];
          v659 = v44.i64[1];
          v660 = v765;
          while (1)
          {
            v661 = v61;
            do
            {
              if (v18)
              {
                v662 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1161;
                }
              }

              else
              {
                v662 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAcolordodgePDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v662, *v13.i64, v14, v15, v44.f32[0], v658, *&v659, *(&v659 + 1), v16.f32[0]);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1161:
              ++v60;
              v48 += 4 * v748;
              --v661;
            }

            while (v661);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v660)
            {
              goto LABEL_1227;
            }
          }

        case 19:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v680 = v44.f32[1];
          v681 = v44.i64[1];
          v682 = v765;
          while (1)
          {
            v683 = v61;
            do
            {
              if (v18)
              {
                v684 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1200;
                }
              }

              else
              {
                v684 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAcolorburnPDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v684, *v13.i64, v14, v15, v44.f32[0], v680, *&v681, *(&v681 + 1), v16.f32[0]);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1200:
              ++v60;
              v48 += 4 * v748;
              --v683;
            }

            while (v683);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v682)
            {
LABEL_1227:
              v765 = 0;
              LODWORD(v19) = v700;
              v33 = v744;
              v30 = v746;
LABEL_1233:
              v45 = v751;
LABEL_1234:
              v47 = v757;
              if (!v757)
              {
                return 1;
              }

LABEL_1235:
              v764 = 0;
              v763 = 0;
LABEL_1236:
              if (!shape_enum_clip_next(v47, &v764, &v763, v766, &v765))
              {
                goto LABEL_1240;
              }

              v757 = v47;
              v60 = (v45 + 16 * v30 * v763 + 16 * v764);
              v62 = SLODWORD(v766[0]);
              if (v18)
              {
                v48 = v755 + 4 * v33 * v763 + 4 * v764;
                v49 = v33 - SLODWORD(v766[0]);
              }

              v61 = v766[0];
              v44 = v759;
              v16 = v761;
              v12 = v753;
              goto LABEL_926;
            }
          }

        case 20:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v632 = v44.i32[1];
          v633 = v44.i64[1];
          v634 = v765;
          while (1)
          {
            v635 = v61;
            do
            {
              if (v18)
              {
                v12.i32[0] = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1108;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              v8.i32[0] = v60->i32[0];
              PDAsoftlightPDA(&v770, *v8.f32, v60->f32[1], v60->f32[2], v60->f32[3], *v12.i64, *v13.f32, v14, v15, v2, v26, v3, v4, v5, v6, v7, __PAIR64__(v632, v44.u32[0]), *&v633, *(&v633 + 1), v16.f32[0]);
              v8.i32[1] = v770.i32[1];
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1108:
              ++v60;
              v48 += 4 * v748;
              --v635;
            }

            while (v635);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v634)
            {
              goto LABEL_1227;
            }
          }

        case 21:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v639 = v44.f32[1];
          v640 = v44.i64[1];
          v641 = v765;
          while (1)
          {
            v642 = v61;
            do
            {
              if (v18)
              {
                v643 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1126;
                }
              }

              else
              {
                v643 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAhardlightPDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v643, *v13.i64, v14, v15, v44.f32[0], v639, *&v640, *(&v640 + 1), v16.f32[0]);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1126:
              ++v60;
              v48 += 4 * v748;
              --v642;
            }

            while (v642);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v641)
            {
              goto LABEL_1227;
            }
          }

        case 22:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v671 = v765;
          v672 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          while (1)
          {
            v673 = v61;
            do
            {
              if (!v18)
              {
                v10.i32[0] = 1.0;
LABEL_1185:
                v9.f32[0] = (v10.f32[0] + v16.f32[0]) - (v10.f32[0] * v16.f32[0]);
                v674 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v60);
                v675 = vaddq_f32(v674, v672);
                v676 = vmulq_n_f32(v674, v16.f32[0]);
                v677 = vmulq_n_f32(v672, v10.f32[0]);
                v678 = vsubq_f32(v675, v676);
                v679 = vsubq_f32(v676, v677);
                v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vaddq_f32(vsubq_f32(v678, v677), vbslq_s8(vcltzq_f32(v679), vnegq_f32(v679), v679)));
                *v60 = v10;
                if (!v18)
                {
                  goto LABEL_1187;
                }

                goto LABEL_1186;
              }

              v10.i32[0] = *v48;
              if (*v48 > 0.0)
              {
                goto LABEL_1185;
              }

              *v60 = v44;
              v9.i32[0] = v16.i32[0];
LABEL_1186:
              *v48 = v9.i32[0];
LABEL_1187:
              ++v60;
              v48 += 4 * v748;
              --v673;
            }

            while (v673);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v671)
            {
LABEL_1232:
              v765 = 0;
              goto LABEL_1233;
            }
          }

        case 23:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v685 = v765;
          v686 = vsubq_f32(vdupq_lane_s32(*v16.f32, 0), v44);
          v687.i64[0] = 0xC0000000C0000000;
          v687.i64[1] = 0xC0000000C0000000;
          while (1)
          {
            v688 = v61;
            do
            {
              if (!v18)
              {
                v11.i32[0] = 1.0;
LABEL_1210:
                v10.f32[0] = (v11.f32[0] + v16.f32[0]) - (v11.f32[0] * v16.f32[0]);
                v689 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v60);
                v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmlaq_f32(vaddq_f32(v689, v686), v687, vmulq_f32(v686, v689)));
                *v60 = v11;
                if (!v18)
                {
                  goto LABEL_1212;
                }

                goto LABEL_1211;
              }

              v11.i32[0] = *v48;
              if (*v48 > 0.0)
              {
                goto LABEL_1210;
              }

              *v60 = v44;
              v10.i32[0] = v16.i32[0];
LABEL_1211:
              *v48 = v10.i32[0];
LABEL_1212:
              ++v60;
              v48 += 4 * v748;
              --v688;
            }

            while (v688);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v685)
            {
              goto LABEL_1232;
            }
          }

        case 24:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v588 = v44.f32[1];
          v589 = v44.i64[1];
          v590 = v765;
          while (1)
          {
            v591 = v61;
            do
            {
              if (v18)
              {
                v592 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1028;
                }
              }

              else
              {
                v592 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAhuePDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v592, *v13.i64, v14, v15, v44.f32[0], v588, *&v589, *(&v589 + 1), v16.f32[0]);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1028:
              ++v60;
              v48 += 4 * v748;
              --v591;
            }

            while (v591);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v590)
            {
              goto LABEL_1227;
            }
          }

        case 25:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v583 = v44.f32[1];
          v584 = v44.i64[1];
          v585 = v765;
          while (1)
          {
            v586 = v61;
            do
            {
              if (v18)
              {
                v587 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1015;
                }
              }

              else
              {
                v587 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAsaturationPDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v587, *v13.i64, v14, v15, v44.f32[0], v583, *&v584, *(&v584 + 1), v16.f32[0]);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1015:
              ++v60;
              v48 += 4 * v748;
              --v586;
            }

            while (v586);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v585)
            {
              goto LABEL_1227;
            }
          }

        case 26:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v690 = v44.f32[1];
          v691 = v44.i64[1];
          v692 = v765;
          while (1)
          {
            v693 = v61;
            do
            {
              if (v18)
              {
                v694 = *v48;
                if (*v48 <= 0.0)
                {
                  *v60 = v44;
                  *v48 = v16.i32[0];
                  goto LABEL_1225;
                }
              }

              else
              {
                v694 = 1.0;
              }

              v770 = 0uLL;
              v771 = 0;
              PDAluminosityPDA(v770.f32, v44.f32[0], v690, *&v691, *(&v691 + 1), v16.f32[0], *v13.i64, v14, v15, v60->f32[0], COERCE_FLOAT(*(v60->i64 + 4)), COERCE_FLOAT(HIDWORD(*(v60->i64 + 4))), v60->f32[3], v694);
              *v60 = v770;
              if (v18)
              {
                *v48 = v771;
              }

              v44 = v759;
              v16.i32[0] = v761.i32[0];
LABEL_1225:
              ++v60;
              v48 += 4 * v748;
              --v693;
            }

            while (v693);
            v60 += v45;
            v48 += 4 * v49;
            if (!--v692)
            {
              goto LABEL_1227;
            }
          }

        case 27:
          if (v16.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v538 = v44.f32[1];
          v539 = v44.i64[1];
          v540 = v765;
          break;
        default:
          goto LABEL_1234;
      }

LABEL_937:
      v541 = v61;
      while (v18)
      {
        v542 = *v48;
        if (*v48 > 0.0)
        {
          goto LABEL_942;
        }

        *v60 = v44;
        *v48 = v16.i32[0];
LABEL_945:
        ++v60;
        v48 += 4 * v748;
        if (!--v541)
        {
          v60 += v45;
          v48 += 4 * v49;
          if (!--v540)
          {
            goto LABEL_1227;
          }

          goto LABEL_937;
        }
      }

      v542 = 1.0;
LABEL_942:
      v770 = 0uLL;
      v771 = 0;
      PDAluminosityPDA(v770.f32, v60->f32[0], v60->f32[1], v60->f32[2], v60->f32[3], v542, *v13.i64, v14, v15, v44.f32[0], v538, *&v539, *(&v539 + 1), v16.f32[0]);
      *v60 = v770;
      if (v18)
      {
        *v48 = v771;
      }

      v44 = v759;
      v16.i32[0] = v761.i32[0];
      goto LABEL_945;
    }

    LODWORD(v766[0]) = *(v2 + 4);
    v765 = v24;
    v34 = *(v2 + 12);
    v35 = *(v2 + 16);
    v36 = *(v2 + 28) >> 4;
    if (v18)
    {
      v708 = *(v2 + 32) >> 2;
      v709 = v18 + 4 * v708 * v35 + 4 * v34;
      v18 = 0xFFFFFFFFLL;
    }

    else
    {
      v708 = 0;
      v709 = 0;
    }

    v50 = *(v2 + 88);
    v707 = *(v2 + 40) + 16 * v35 * v36 + 16 * v34;
    v51 = *(v2 + 104);
    v52 = *(v2 + 108);
    v53 = *(v2 + 56);
    v54 = *(v2 + 60);
    v747 = *(v2 + 76) >> 4;
    if (v28 == 256)
    {
      if (v17)
      {
        v55 = *(v2 + 80) >> 2;
        v17 += 4 * v55 * v54 + 4 * v53;
        v56 = 0xFFFFFFFFLL;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      v50 += 16 * v54 * v747 + 16 * v53;
      if (v747 == v36)
      {
        v82 = (v707 - v50) >> 4;
        if (v82 >= 1)
        {
          if (v82 <= v22)
          {
            v707 += 16 * v23;
            v50 += 16 * v23;
            v709 += 4 * (v18 & v23);
            v3 = 0xFFFFFFFFLL;
            v747 = *(v2 + 28) >> 4;
            v17 += 4 * (v56 & v23);
            goto LABEL_48;
          }

          if (v707 <= v50 + 16 * v36 * v25 + 16 * v22 - 16)
          {
            v707 += 16 * v36 * v25;
            v94 = v709 + 4 * v708 * v25;
            v708 = -v708;
            v709 = v94;
            v17 += 4 * v55 * v25;
            v18 &= 1u;
            v55 = -v55;
            v56 &= 1u;
            v3 = 1;
            v50 += 16 * v36 * v25;
            v747 = -v36;
            v36 = -v36;
            goto LABEL_48;
          }
        }
      }

      v18 &= 1u;
      v56 &= 1u;
      v3 = 1;
LABEL_48:
      v702 = *(v2 + 60);
      v703 = *(v2 + 56);
      if (v26)
      {
        v762 = v56;
        v758 = 0;
        v734 = -1;
        v745 = 0;
        v57 = v747;
        v754 = v55;
        v711 = v55;
        goto LABEL_53;
      }

      v87 = v3 * v22;
      v752 = v708 - v18 * v22;
      v88 = -1;
      v710 = v3;
      v711 = v55;
      v89 = v747;
      v57 = v747;
LABEL_61:
      v712 = 0;
      v713 = v50;
      v756 = v17;
      v758 = 0;
      v745 = 0;
      v747 = v89 - v87;
      v754 = v55 - v56 * v22;
      v85 = v17;
      v86 = v709;
      v93 = v707;
      goto LABEL_65;
    }

    v57 = *(v2 + 64);
    v711 = *(v2 + 68);
    if (v17)
    {
      v55 = *(v2 + 80) >> 2;
      v56 = 1;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    v745 = v50 + 16 * v747 * v711;
    v18 &= 1u;
    if (v26)
    {
      v702 = *(v2 + 60);
      v703 = *(v2 + 56);
      v762 = v56;
      v754 = v55;
      LODWORD(v3) = 1;
      v758 = *(v2 + 88);
      v734 = v758;
LABEL_53:
      v710 = v3;
      v714 = v36;
      shape_enum_clip_alloc(v1, v2, v26, v3, v36, 1, v51, v52, v22, v24);
      v47 = v83;
      v84 = v17;
      v85 = v17;
      v86 = v709;
      v752 = v708;
      if (v83)
      {
        goto LABEL_836;
      }

      return 1;
    }

    v752 = v708 - (v18 * v22);
    if (!v50)
    {
      v702 = *(v2 + 60);
      v703 = *(v2 + 56);
      v88 = 0;
      v710 = 1;
      v87 = v22;
      v89 = *(v2 + 76) >> 4;
      goto LABEL_61;
    }

    v90 = v54 % v711;
    v702 = v54 % v711;
    v713 = *(v2 + 88);
    v91 = v50 + 16 * v747 * v90;
    v92 = v53 % v57;
    v50 = v91 + 16 * v92;
    v88 = v91 + 16 * v57;
    v754 = v55;
    v703 = v92;
    v758 = v50;
    v712 = 0;
    if (v17)
    {
      v85 = &v17[4 * v55 * v90 + 4 * v92];
      v710 = 1;
      v56 = 1;
      v756 = v85;
    }

    else
    {
      v756 = 0;
      v85 = 0;
      v710 = 1;
    }

    v86 = v709;
    v93 = v707;
    v87 = v22;
LABEL_65:
    v762 = v56;
    v714 = v36;
    v749 = v36 - v87;
    v715 = v22;
    v760 = v18;
    switch(v19)
    {
      case 0:
        v704 = v17;
        v734 = v88;
        v95 = v749 - v22;
        v96 = &v93[-v22 + 1];
        if (v710 >= 0)
        {
          v96 = v93;
          v95 = v749 + v22;
        }

        v97 = v765;
        v98 = v765 - 1;
        v99 = (v96 + 16 * ((v95 * v98) & (v95 >> 63)));
        if (v95 < 0)
        {
          v95 = -v95;
        }

        CGBlt_fillBytes(16 * v22, v765, 0, v99, 16 * v95);
        if (v18)
        {
          if (v710 < 0)
          {
            v100 = v752 - v22;
            v86 = &v86[-4 * v22 + 4];
          }

          else
          {
            v100 = v752 + v22;
          }

          v86 += 4 * ((v100 * v98) & (v100 >> 63));
          if (v100 < 0)
          {
            v100 = -v100;
          }

          v752 = v100;
          CGBlt_fillBytes(4 * v22, v97, 0, v86, 4 * v100);
        }

        v50 = v713;
        goto LABEL_864;
      case 1:
        v268 = *(v21 + 1);
        if (v268 == 2)
        {
          if (v22 >= 2 && (16 * v57) <= 0x40)
          {
            v8.i32[0] = 16 * v57;
            v482 = vcnt_s8(*v8.f32);
            v482.i16[0] = vaddlv_u8(v482);
            if (v482.i32[0] <= 1u)
            {
              v704 = v17;
              v734 = v88;
              v483 = v765;
              v50 = v713;
              CGSFillDRAM64(v93, 16 * (v22 + v749), 16 * v22, v765, v713, 16 * v747, 16 * v57, v711, 16 * v703, v702);
              if (v18)
              {
                v47 = v712;
                if (v56)
                {
                  CGSFillDRAM64(v86, 4 * (v22 + v752), 4 * v22, v483, v704, 4 * v754, 4 * v57, v711, 4 * v703, v702);
                }

                else
                {
                  CGBlt_fillBytes(4 * v22, v483, 1065353216, v86, 4 * (v22 + v752));
                }

                v17 = v704;
                goto LABEL_833;
              }

              goto LABEL_864;
            }
          }
        }

        else if (v268 == 1)
        {
          v704 = v17;
          v734 = v88;
          if (v710 < 0)
          {
            v269 = v747 - v22;
            v516 = 16 * v22 - 16;
            v50 -= v516;
            v270 = v749 - v22;
            v93 = (v93 - v516);
          }

          else
          {
            v269 = v747 + v22;
            v270 = v749 + v22;
          }

          v517 = v765 - 1;
          v518 = (v50 + 16 * ((v269 * v517) & (v269 >> 63)));
          if (v269 >= 0)
          {
            v519 = v269;
          }

          else
          {
            v519 = -v269;
          }

          if (v270 >= 0)
          {
            LODWORD(v520) = v270;
          }

          else
          {
            v520 = -v270;
          }

          v747 = v519;
          v750 = v765;
          CGBlt_copyBytes(16 * v22, v765, v518, &v93[(v270 * v517) & (v270 >> 63)], 16 * v519, 16 * v520);
          if (v18)
          {
            v521 = 4 * v22;
            v47 = v712;
            v50 = v713;
            if (v56)
            {
              v522 = v754 - v22;
              v523 = 4 * v22 - 4;
              v524 = &v85[-v523];
              v525 = v752 - v22;
              v526 = &v86[-v523];
              if (v710 >= 0)
              {
                v524 = v85;
                v526 = v86;
                v522 = v754 + v22;
                v525 = v752 + v22;
              }

              v85 = &v524[4 * ((v522 * v517) & (v522 >> 63))];
              if (v522 >= 0)
              {
                v527 = v522;
              }

              else
              {
                v527 = -v522;
              }

              v86 = &v526[4 * ((v525 * v517) & (v525 >> 63))];
              if (v525 >= 0)
              {
                v528 = v525;
              }

              else
              {
                v528 = -v525;
              }

              v752 = v528;
              v754 = v527;
              CGBlt_copyBytes(v521, v750, v85, v86, 4 * v527, 4 * v528);
            }

            else
            {
              v529 = v752 - v22;
              v530 = &v86[-4 * v22 + 4];
              if (v710 >= 0)
              {
                v530 = v86;
                v529 = v752 + v22;
              }

              v531 = (v529 * v517) & (v529 >> 63);
              v86 = (v530 + 4 * v531);
              if (v529 < 0)
              {
                v529 = -v529;
              }

              v752 = v529;
              CGBlt_fillBytes(v521, v750, 1065353216, (v530 + 4 * v531), 4 * v529);
            }

            goto LABEL_865;
          }

          v50 = v713;
LABEL_864:
          v47 = v712;
LABEL_865:
          v84 = v756;
          v17 = v704;
          goto LABEL_834;
        }

        if (v18)
        {
          if (v56)
          {
            v484 = v765;
            do
            {
              v485 = v22;
              do
              {
                *v93 = *v50;
                *v86 = *v85;
                v486 = v50 + 16 * v710;
                if (v486 >= v88)
                {
                  v487 = -v57;
                }

                else
                {
                  v487 = 0;
                }

                v85 += 4 * v56 + 4 * v487;
                v50 = v486 + 16 * v487;
                v86 += 4 * v18;
                v93 += v710;
                --v485;
              }

              while (v485);
              if (v745)
              {
                v488 = v758 + 16 * v747;
                if (v488 >= v745)
                {
                  v489 = -(v754 * v711);
                }

                else
                {
                  v489 = 0;
                }

                v85 = &v756[4 * v754 + 4 * v489];
                if (v488 >= v745)
                {
                  v490 = -(v747 * v711);
                }

                else
                {
                  v490 = 0;
                }

                v50 = v488 + 16 * v490;
                v88 += 16 * v490 + 16 * v747;
                v756 += 4 * v754 + 4 * v489;
                v758 = v50;
              }

              else
              {
                v50 += 16 * v747;
                v85 += 4 * v754;
              }

              v93 += v749;
              v86 += 4 * v752;
              --v484;
            }

            while (v484);
            goto LABEL_831;
          }

          v509 = v765;
          v84 = v756;
          do
          {
            v510 = v22;
            do
            {
              *v93 = *v50;
              *v86 = 1065353216;
              v511 = v50 + 16 * v710;
              if (v511 >= v88)
              {
                v512 = -v57;
              }

              else
              {
                v512 = 0;
              }

              v85 += 4 * v512;
              v50 = v511 + 16 * v512;
              v86 += 4 * v18;
              v93 += v710;
              --v510;
            }

            while (v510);
            if (v745)
            {
              v513 = v758 + 16 * v747;
              if (v513 >= v745)
              {
                v514 = -(v754 * v711);
              }

              else
              {
                v514 = 0;
              }

              v84 += 4 * v754 + 4 * v514;
              if (v513 >= v745)
              {
                v515 = -(v747 * v711);
              }

              else
              {
                v515 = 0;
              }

              v50 = v513 + 16 * v515;
              v88 += 16 * v515 + 16 * v747;
              v85 = v84;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v509;
          }

          while (v509);
        }

        else
        {
          v502 = v765;
          v84 = v756;
          do
          {
            v503 = v22;
            do
            {
              *v93 = *v50;
              v504 = v50 + 16 * v710;
              if (v504 >= v88)
              {
                v505 = -v57;
              }

              else
              {
                v505 = 0;
              }

              v85 += 4 * v56 + 4 * v505;
              v50 = v504 + 16 * v505;
              v93 += v710;
              --v503;
            }

            while (v503);
            if (v745)
            {
              v506 = v758 + 16 * v747;
              if (v506 >= v745)
              {
                v507 = -(v754 * v711);
              }

              else
              {
                v507 = 0;
              }

              v84 += 4 * v754 + 4 * v507;
              if (v506 >= v745)
              {
                v508 = -(v747 * v711);
              }

              else
              {
                v508 = 0;
              }

              v50 = v506 + 16 * v508;
              v88 += 16 * v508 + 16 * v747;
              v85 = v84;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v502;
          }

          while (v502);
        }

        goto LABEL_899;
      case 2:
        v223 = 16 * v710;
        if (v18)
        {
          v224 = v765;
          while (1)
          {
            v225 = v22;
            do
            {
              v226 = *v85;
              if (*v85 >= 1.0)
              {
                *v93 = *v50;
                v227 = *v85;
              }

              else
              {
                if (v226 <= 0.0)
                {
                  goto LABEL_295;
                }

                *v93 = vmlaq_n_f32(*v50, *v93, 1.0 - v226);
                v227 = v226 + (*v86 * (1.0 - v226));
              }

              *v86 = v227;
LABEL_295:
              v228 = v50 + 16 * v710;
              if (v228 >= v88)
              {
                v229 = -v57;
              }

              else
              {
                v229 = 0;
              }

              v85 += 4 * v56 + 4 * v229;
              v50 = v228 + 16 * v229;
              v86 += 4 * v18;
              v93 = (v93 + v223);
              --v225;
            }

            while (v225);
            if (v745)
            {
              v230 = v758 + 16 * v747;
              if (v230 >= v745)
              {
                v231 = -(v754 * v711);
              }

              else
              {
                v231 = 0;
              }

              v85 = &v756[4 * v754 + 4 * v231];
              if (v230 >= v745)
              {
                v232 = -(v747 * v711);
              }

              else
              {
                v232 = 0;
              }

              v50 = v230 + 16 * v232;
              v88 += 16 * v232 + 16 * v747;
              v756 += 4 * v754 + 4 * v231;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            if (!--v224)
            {
              goto LABEL_831;
            }
          }
        }

        v448 = v765;
        v84 = v756;
LABEL_722:
        v449 = v22;
        while (1)
        {
          v450 = *v85;
          if (*v85 >= 1.0)
          {
            break;
          }

          if (v450 > 0.0)
          {
            v451 = vmlaq_n_f32(*v50, *v93, 1.0 - v450);
LABEL_727:
            *v93 = v451;
          }

          v452 = v50 + 16 * v710;
          if (v452 >= v88)
          {
            v453 = -v57;
          }

          else
          {
            v453 = 0;
          }

          v85 += 4 * v56 + 4 * v453;
          v50 = v452 + 16 * v453;
          v93 = (v93 + v223);
          if (!--v449)
          {
            if (v745)
            {
              v454 = v758 + 16 * v747;
              if (v454 >= v745)
              {
                v455 = -(v754 * v711);
              }

              else
              {
                v455 = 0;
              }

              v84 += 4 * v754 + 4 * v455;
              if (v454 >= v745)
              {
                v456 = -(v747 * v711);
              }

              else
              {
                v456 = 0;
              }

              v50 = v454 + 16 * v456;
              v88 += 16 * v456 + 16 * v747;
              v85 = v84;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            if (!--v448)
            {
              goto LABEL_899;
            }

            goto LABEL_722;
          }
        }

        v451 = *v50;
        goto LABEL_727;
      case 3:
        v247 = 4 * v18;
        v248 = 16 * v710;
        if (v56)
        {
          v249 = v765;
          do
          {
            v250 = v22;
            do
            {
              v251 = *v86;
              if (*v86 <= 0.0)
              {
                v93->i64[0] = 0;
                v93->i64[1] = 0;
                v253 = 0.0;
              }

              else
              {
                v252.i32[0] = *v50;
                if (v251 >= 1.0)
                {
                  v93->i32[0] = v252.i32[0];
                  *(v93->i64 + 4) = *(v50 + 4);
                  v93->i32[3] = *(v50 + 12);
                  v253 = *v85;
                }

                else
                {
                  v252.i32[1] = *(v50 + 4);
                  v252.i64[1] = *(v50 + 8);
                  *v93 = vmulq_n_f32(v252, v251);
                  v253 = v251 * *v85;
                }
              }

              *v86 = v253;
              v254 = v50 + 16 * v710;
              if (v254 >= v88)
              {
                v255 = -v57;
              }

              else
              {
                v255 = 0;
              }

              v85 += 4 * v56 + 4 * v255;
              v50 = v254 + 16 * v255;
              v86 += v247;
              v93 = (v93 + v248);
              --v250;
            }

            while (v250);
            if (v745)
            {
              v256 = v758 + 16 * v747;
              if (v256 >= v745)
              {
                v257 = -(v754 * v711);
              }

              else
              {
                v257 = 0;
              }

              v85 = &v756[4 * v754 + 4 * v257];
              if (v256 >= v745)
              {
                v258 = -(v747 * v711);
              }

              else
              {
                v258 = 0;
              }

              v50 = v256 + 16 * v258;
              v88 += 16 * v258 + 16 * v747;
              v756 += 4 * v754 + 4 * v257;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v249;
          }

          while (v249);
          goto LABEL_831;
        }

        v457 = v765;
        v84 = v756;
        do
        {
          v458 = v22;
          do
          {
            v459 = *v86;
            if (*v86 <= 0.0)
            {
              v93->i64[0] = 0;
              v93->i64[1] = 0;
            }

            else
            {
              v460.i32[0] = *v50;
              if (v459 >= 1.0)
              {
                v93->i32[0] = v460.i32[0];
                *(v93->i64 + 4) = *(v50 + 4);
                v93->i32[3] = *(v50 + 12);
              }

              else
              {
                v460.i32[1] = *(v50 + 4);
                v460.i64[1] = *(v50 + 8);
                *v93 = vmulq_n_f32(v460, v459);
              }
            }

            v461 = v50 + 16 * v710;
            if (v461 >= v88)
            {
              v462 = -v57;
            }

            else
            {
              v462 = 0;
            }

            v85 += 4 * v462;
            v50 = v461 + 16 * v462;
            v86 += v247;
            v93 = (v93 + v248);
            --v458;
          }

          while (v458);
          if (v745)
          {
            v463 = v758 + 16 * v747;
            if (v463 >= v745)
            {
              v464 = -(v754 * v711);
            }

            else
            {
              v464 = 0;
            }

            v84 += 4 * v754 + 4 * v464;
            if (v463 >= v745)
            {
              v465 = -(v747 * v711);
            }

            else
            {
              v465 = 0;
            }

            v50 = v463 + 16 * v465;
            v88 += 16 * v465 + 16 * v747;
            v85 = v84;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v457;
        }

        while (v457);
        goto LABEL_899;
      case 4:
        v164 = v765;
        do
        {
          v165 = v22;
          do
          {
            v166 = 1.0 - *v86;
            if (v166 <= 0.0)
            {
              v93->i64[0] = 0;
              v93->i64[1] = 0;
              v168 = 0.0;
            }

            else if (v166 >= 1.0)
            {
              if (v56)
              {
                v168 = *v85;
              }

              else
              {
                v168 = 1.0;
              }
            }

            else
            {
              *v93 = vmulq_n_f32(*v50, v166);
              if (v56)
              {
                v167 = *v85;
              }

              else
              {
                v167 = 1.0;
              }

              v168 = v166 * v167;
            }

            *v86 = v168;
            v169 = v50 + 16 * v710;
            if (v169 >= v88)
            {
              v170 = -v57;
            }

            else
            {
              v170 = 0;
            }

            v85 += 4 * v56 + 4 * v170;
            v50 = v169 + 16 * v170;
            v86 += 4 * v18;
            v93 += v710;
            --v165;
          }

          while (v165);
          if (v745)
          {
            v171 = v758 + 16 * v747;
            if (v171 >= v745)
            {
              v172 = -(v754 * v711);
            }

            else
            {
              v172 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v172];
            if (v171 >= v745)
            {
              v173 = -(v747 * v711);
            }

            else
            {
              v173 = 0;
            }

            v50 = v171 + 16 * v173;
            v88 += 16 * v173 + 16 * v747;
            v756 += 4 * v754 + 4 * v172;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v164;
        }

        while (v164);
        goto LABEL_831;
      case 5:
        v297 = v765;
        do
        {
          v298 = v22;
          do
          {
            v299 = *v86;
            v300 = *v85;
            v301 = 1.0 - *v85;
            *v93 = vmlaq_n_f32(vmulq_n_f32(*v93, v301), *v50, *v86);
            *v86 = (v299 * v301) + (v300 * v299);
            v302 = v50 + 16 * v710;
            if (v302 >= v88)
            {
              v303 = -v57;
            }

            else
            {
              v303 = 0;
            }

            v85 += 4 * v56 + 4 * v303;
            v50 = v302 + 16 * v303;
            v86 += 4 * v18;
            v93 += v710;
            --v298;
          }

          while (v298);
          if (v745)
          {
            v304 = v758 + 16 * v747;
            if (v304 >= v745)
            {
              v305 = -(v754 * v711);
            }

            else
            {
              v305 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v305];
            if (v304 >= v745)
            {
              v306 = -(v747 * v711);
            }

            else
            {
              v306 = 0;
            }

            v50 = v304 + 16 * v306;
            v88 += 16 * v306 + 16 * v747;
            v756 += 4 * v754 + 4 * v305;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v297;
        }

        while (v297);
        goto LABEL_831;
      case 6:
        v332 = v765;
        while (1)
        {
          v333 = v22;
          do
          {
            v334 = *v86;
            v335 = 1.0 - *v86;
            if (v335 >= 1.0)
            {
              *v93 = *v50;
              if (v56)
              {
                v337 = *v85;
              }

              else
              {
                v337 = 1.0;
              }
            }

            else
            {
              if (v335 <= 0.0)
              {
                goto LABEL_508;
              }

              *v93 = vmlaq_n_f32(*v93, *v50, v335);
              if (v56)
              {
                v336 = *v85;
              }

              else
              {
                v336 = 1.0;
              }

              v337 = v334 + (v336 * v335);
            }

            *v86 = v337;
LABEL_508:
            v338 = v50 + 16 * v710;
            if (v338 >= v88)
            {
              v339 = -v57;
            }

            else
            {
              v339 = 0;
            }

            v85 += 4 * v56 + 4 * v339;
            v50 = v338 + 16 * v339;
            v86 += 4 * v18;
            v93 += v710;
            --v333;
          }

          while (v333);
          if (v745)
          {
            v340 = v758 + 16 * v747;
            if (v340 >= v745)
            {
              v341 = -(v754 * v711);
            }

            else
            {
              v341 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v341];
            if (v340 >= v745)
            {
              v342 = -(v747 * v711);
            }

            else
            {
              v342 = 0;
            }

            v50 = v340 + 16 * v342;
            v88 += 16 * v342 + 16 * v747;
            v756 += 4 * v754 + 4 * v341;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          if (!--v332)
          {
LABEL_831:
            v734 = v88;
            v765 = 0;
LABEL_832:
            v50 = v713;
            v47 = v712;
LABEL_833:
            v84 = v756;
LABEL_834:
            if (!v47)
            {
              return 1;
            }

            v764 = 0;
            v763 = 0;
LABEL_836:
            v756 = v84;
            if (!shape_enum_clip_next(v47, &v764, &v763, v766, &v765))
            {
LABEL_1240:
              v81 = v47;
LABEL_1241:
              free(v81);
              return 1;
            }

            v712 = v47;
            v713 = v50;
            if (v745)
            {
              v36 = v714;
              v93 = (v707 + 16 * v714 * v763 + 16 * v764);
              v491 = (v763 + *(v21 + 60)) % v711;
              v87 = SLODWORD(v766[0]);
              v492 = (v764 + *(v21 + 56)) % v57;
              v493 = v50 + 16 * v747 * v491;
              v50 = v493 + 16 * v492;
              v88 = v493 + 16 * v57;
              if (v18)
              {
                v86 = (v709 + 4 * v708 * v763 + 4 * v764);
              }

              v494 = v752;
              if (v18)
              {
                v494 = v708 - SLODWORD(v766[0]);
              }

              v752 = v494;
              if (v762)
              {
                v56 = v762;
              }

              else
              {
                v56 = 0;
              }

              v495 = v756;
              if (v762)
              {
                v495 = &v17[4 * v754 * v491 + 4 * v492];
              }

              v756 = v495;
              v758 = v493 + 16 * v492;
              if (v762)
              {
                v85 = &v17[4 * v754 * v491 + 4 * v492];
              }

              LODWORD(v22) = v766[0];
              v702 = (v763 + *(v21 + 60)) % v711;
              v703 = (v764 + *(v21 + 56)) % v57;
            }

            else
            {
              v496 = v764 * v710;
              LODWORD(v22) = v766[0];
              v497 = LODWORD(v766[0]) * v710;
              v36 = v714;
              v93 = (v707 + 16 * v714 * v763 + 16 * v764 * v710);
              v87 = LODWORD(v766[0]) * v710;
              v50 += 16 * v763 * v57 + 16 * v764 * v710;
              v745 = 0;
              v747 = v57 - LODWORD(v766[0]) * v710;
              if (v18)
              {
                v86 = (v709 + 4 * v708 * v763 + 4 * v496);
              }

              v498 = v752;
              if (v18)
              {
                v498 = v708 - v497;
              }

              v499 = &v17[4 * v763 * v711 + 4 * v496];
              v500 = v711 - v497;
              v56 = v762;
              if (v762)
              {
                v85 = v499;
              }

              v501 = v754;
              if (v762)
              {
                v501 = v500;
              }

              v752 = v498;
              v754 = v501;
              v88 = v734;
            }

            goto LABEL_65;
          }
        }

      case 7:
        if (v18)
        {
          v259 = v765;
          while (1)
          {
            v260 = v22;
            do
            {
              v261 = *v85;
              if (*v85 <= 0.0)
              {
                v93->i64[0] = 0;
                v93->i64[1] = 0;
                v262 = 0.0;
              }

              else
              {
                if (v261 >= 1.0)
                {
                  goto LABEL_364;
                }

                *v93 = vmulq_n_f32(*v93, v261);
                v262 = v261 * *v86;
              }

              *v86 = v262;
LABEL_364:
              v263 = v50 + 16 * v710;
              if (v263 >= v88)
              {
                v264 = -v57;
              }

              else
              {
                v264 = 0;
              }

              v85 += 4 * v56 + 4 * v264;
              v50 = v263 + 16 * v264;
              v86 += 4 * v18;
              v93 += v710;
              --v260;
            }

            while (v260);
            if (v745)
            {
              v265 = v758 + 16 * v747;
              if (v265 >= v745)
              {
                v266 = -(v754 * v711);
              }

              else
              {
                v266 = 0;
              }

              v85 = &v756[4 * v754 + 4 * v266];
              if (v265 >= v745)
              {
                v267 = -(v747 * v711);
              }

              else
              {
                v267 = 0;
              }

              v50 = v265 + 16 * v267;
              v88 += 16 * v267 + 16 * v747;
              v756 += 4 * v754 + 4 * v266;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            if (!--v259)
            {
              goto LABEL_831;
            }
          }
        }

        v466 = v765;
        v84 = v756;
        do
        {
          v467 = v22;
          do
          {
            v468 = *v85;
            if (*v85 <= 0.0)
            {
              v93->i64[0] = 0;
              v93->i64[1] = 0;
            }

            else if (v468 < 1.0)
            {
              *v93 = vmulq_n_f32(*v93, v468);
            }

            v469 = v50 + 16 * v710;
            if (v469 >= v88)
            {
              v470 = -v57;
            }

            else
            {
              v470 = 0;
            }

            v85 += 4 * v56 + 4 * v470;
            v50 = v469 + 16 * v470;
            v93 += v710;
            --v467;
          }

          while (v467);
          if (v745)
          {
            v471 = v758 + 16 * v747;
            if (v471 >= v745)
            {
              v472 = -(v754 * v711);
            }

            else
            {
              v472 = 0;
            }

            v84 += 4 * v754 + 4 * v472;
            if (v471 >= v745)
            {
              v473 = -(v747 * v711);
            }

            else
            {
              v473 = 0;
            }

            v50 = v471 + 16 * v473;
            v88 += 16 * v473 + 16 * v747;
            v85 = v84;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v466;
        }

        while (v466);
        goto LABEL_899;
      case 8:
        if (!v18)
        {
          v474 = v765;
          v84 = v756;
          do
          {
            v475 = v22;
            do
            {
              v476 = 1.0 - *v85;
              if (v476 <= 0.0)
              {
                v93->i64[0] = 0;
                v93->i64[1] = 0;
              }

              else if (v476 < 1.0)
              {
                *v93 = vmulq_n_f32(*v93, v476);
              }

              v477 = v50 + 16 * v710;
              if (v477 >= v88)
              {
                v478 = -v57;
              }

              else
              {
                v478 = 0;
              }

              v85 += 4 * v56 + 4 * v478;
              v50 = v477 + 16 * v478;
              v93 += v710;
              --v475;
            }

            while (v475);
            if (v745)
            {
              v479 = v758 + 16 * v747;
              if (v479 >= v745)
              {
                v480 = -(v754 * v711);
              }

              else
              {
                v480 = 0;
              }

              v84 += 4 * v754 + 4 * v480;
              if (v479 >= v745)
              {
                v481 = -(v747 * v711);
              }

              else
              {
                v481 = 0;
              }

              v50 = v479 + 16 * v481;
              v88 += 16 * v481 + 16 * v747;
              v85 = v84;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v474;
          }

          while (v474);
LABEL_899:
          v734 = v88;
          v765 = 0;
          v47 = v712;
          v50 = v713;
          goto LABEL_834;
        }

        v368 = v765;
LABEL_565:
        v369 = v22;
        while (1)
        {
          v370 = 1.0 - *v85;
          if (v370 <= 0.0)
          {
            break;
          }

          if (v370 < 1.0)
          {
            *v93 = vmulq_n_f32(*v93, v370);
            v371 = v370 * *v86;
LABEL_570:
            *v86 = v371;
          }

          v372 = v50 + 16 * v710;
          if (v372 >= v88)
          {
            v373 = -v57;
          }

          else
          {
            v373 = 0;
          }

          v85 += 4 * v56 + 4 * v373;
          v50 = v372 + 16 * v373;
          v86 += 4 * v18;
          v93 += v710;
          if (!--v369)
          {
            if (v745)
            {
              v374 = v758 + 16 * v747;
              if (v374 >= v745)
              {
                v375 = -(v754 * v711);
              }

              else
              {
                v375 = 0;
              }

              v85 = &v756[4 * v754 + 4 * v375];
              if (v374 >= v745)
              {
                v376 = -(v747 * v711);
              }

              else
              {
                v376 = 0;
              }

              v50 = v374 + 16 * v376;
              v88 += 16 * v376 + 16 * v747;
              v756 += 4 * v754 + 4 * v375;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            if (!--v368)
            {
              goto LABEL_831;
            }

            goto LABEL_565;
          }
        }

        v93->i64[0] = 0;
        v93->i64[1] = 0;
        v371 = 0.0;
        goto LABEL_570;
      case 9:
        v185 = v765;
        do
        {
          v186 = v22;
          do
          {
            v187 = *v86;
            v188 = *v85;
            v189 = 1.0 - *v86;
            *v93 = vmlaq_n_f32(vmulq_n_f32(*v93, *v85), *v50, v189);
            *v86 = (v187 * v188) + (v188 * v189);
            v190 = v50 + 16 * v710;
            if (v190 >= v88)
            {
              v191 = -v57;
            }

            else
            {
              v191 = 0;
            }

            v85 += 4 * v56 + 4 * v191;
            v50 = v190 + 16 * v191;
            v86 += 4 * v18;
            v93 += v710;
            --v186;
          }

          while (v186);
          if (v745)
          {
            v192 = v758 + 16 * v747;
            if (v192 >= v745)
            {
              v193 = -(v754 * v711);
            }

            else
            {
              v193 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v193];
            if (v192 >= v745)
            {
              v194 = -(v747 * v711);
            }

            else
            {
              v194 = 0;
            }

            v50 = v192 + 16 * v194;
            v88 += 16 * v194 + 16 * v747;
            v756 += 4 * v754 + 4 * v193;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v185;
        }

        while (v185);
        goto LABEL_831;
      case 10:
        v357 = v765;
        do
        {
          v358 = v22;
          do
          {
            v359 = *v86;
            v360 = *v85;
            v361 = 1.0 - *v86;
            v362 = 1.0 - *v85;
            *v93 = vmlaq_n_f32(vmulq_n_f32(*v93, v362), *v50, v361);
            *v86 = (v359 * v362) + (v360 * v361);
            v363 = v50 + 16 * v710;
            if (v363 >= v88)
            {
              v364 = -v57;
            }

            else
            {
              v364 = 0;
            }

            v85 += 4 * v56 + 4 * v364;
            v50 = v363 + 16 * v364;
            v86 += 4 * v18;
            v93 += v710;
            --v358;
          }

          while (v358);
          if (v745)
          {
            v365 = v758 + 16 * v747;
            if (v365 >= v745)
            {
              v366 = -(v754 * v711);
            }

            else
            {
              v366 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v366];
            if (v365 >= v745)
            {
              v367 = -(v747 * v711);
            }

            else
            {
              v367 = 0;
            }

            v50 = v365 + 16 * v367;
            v88 += 16 * v367 + 16 * v747;
            v756 += 4 * v754 + 4 * v366;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v357;
        }

        while (v357);
        goto LABEL_831;
      case 11:
        v142 = 16 * v710;
        if (v18)
        {
          v143 = v765;
          do
          {
            v144 = v22;
            do
            {
              v145 = 1.0;
              v146 = 1.0;
              if (v56)
              {
                v146 = *v85;
              }

              v147 = *v86;
              v148 = *v86 + v146;
              if (v148 > 1.0)
              {
                v148 = 1.0;
              }

              if (v56)
              {
                v145 = *v85;
              }

              v149 = v93->f32[1];
              v150 = *(v50 + 4);
              v93->f32[0] = v148 - ((v147 - v93->f32[0]) + (v146 - *v50));
              v151 = 1.0;
              v152 = 1.0;
              if (v56)
              {
                v152 = *v85;
              }

              v153 = (v147 - v149) + (v145 - v150);
              v154 = *v86;
              v155 = v93->f32[2];
              v156 = *(v50 + 8);
              v93->f32[1] = v148 - v153;
              if (v56)
              {
                v151 = *v85;
              }

              v157 = (v154 - v155) + (v152 - v156);
              v158 = (*v86 - v93->f32[3]) + (v151 - *(v50 + 12));
              v93->f32[2] = v148 - v157;
              *v86 = v148;
              v93->f32[3] = v148 - v158;
              v159 = v50 + 16 * v710;
              if (v159 >= v88)
              {
                v160 = -v57;
              }

              else
              {
                v160 = 0;
              }

              v85 += 4 * v56 + 4 * v160;
              v50 = v159 + 16 * v160;
              v86 += 4 * v18;
              v93 = (v93 + v142);
              --v144;
            }

            while (v144);
            if (v745)
            {
              v161 = v758 + 16 * v747;
              if (v161 >= v745)
              {
                v162 = -(v754 * v711);
              }

              else
              {
                v162 = 0;
              }

              v85 = &v756[4 * v754 + 4 * v162];
              if (v161 >= v745)
              {
                v163 = -(v747 * v711);
              }

              else
              {
                v163 = 0;
              }

              v50 = v161 + 16 * v163;
              v88 += 16 * v163 + 16 * v747;
              v756 += 4 * v754 + 4 * v162;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v143;
          }

          while (v143);
        }

        else
        {
          v430 = v765;
          __asm { FMOV            V0.2S, #1.0 }

          do
          {
            v432 = v22;
            do
            {
              v11.i32[0] = 1.0;
              if (v56)
              {
                v11.i32[0] = *v85;
              }

              v433.f32[0] = 1.0 - v93->f32[0];
              v433.f32[1] = 1.0 - v93->f32[1];
              v434 = vsub_f32(_D0, vadd_f32(v433, vsub_f32(vdup_lane_s32(*v11.f32, 0), *v50)));
              *v93->f32 = v434;
              v434.i32[0] = 1.0;
              if (v56)
              {
                v434.i32[0] = *v85;
              }

              v435.f32[0] = 1.0 - v93->f32[2];
              v435.f32[1] = 1.0 - v93->f32[3];
              *v11.f32 = vsub_f32(vdup_lane_s32(v434, 0), *(v50 + 8));
              *&v93->u32[2] = vsub_f32(_D0, vadd_f32(v435, *v11.f32));
              v436 = v50 + 16 * v710;
              if (v436 >= v88)
              {
                v437 = -v57;
              }

              else
              {
                v437 = 0;
              }

              v85 += 4 * v56 + 4 * v437;
              v50 = v436 + 16 * v437;
              v93 = (v93 + v142);
              --v432;
            }

            while (v432);
            if (v745)
            {
              v438 = v758 + 16 * v747;
              if (v438 >= v745)
              {
                v439 = -(v754 * v711);
              }

              else
              {
                v439 = 0;
              }

              v85 = &v756[4 * v754 + 4 * v439];
              if (v438 >= v745)
              {
                v440 = -(v747 * v711);
              }

              else
              {
                v440 = 0;
              }

              v50 = v438 + 16 * v440;
              v88 += 16 * v440 + 16 * v747;
              v756 += 4 * v754 + 4 * v439;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v430;
          }

          while (v430);
        }

        goto LABEL_831;
      case 12:
        if (!v18)
        {
          v441 = v765;
          v84 = v756;
          do
          {
            v442 = v22;
            do
            {
              *v93 = vaddq_f32(*v93, *v50);
              v443 = v50 + 16 * v710;
              if (v443 >= v88)
              {
                v444 = -v57;
              }

              else
              {
                v444 = 0;
              }

              v85 += 4 * v56 + 4 * v444;
              v50 = v443 + 16 * v444;
              v93 += v710;
              --v442;
            }

            while (v442);
            if (v745)
            {
              v445 = v758 + 16 * v747;
              if (v445 >= v745)
              {
                v446 = -(v754 * v711);
              }

              else
              {
                v446 = 0;
              }

              v84 += 4 * v754 + 4 * v446;
              if (v445 >= v745)
              {
                v447 = -(v747 * v711);
              }

              else
              {
                v447 = 0;
              }

              v50 = v445 + 16 * v447;
              v88 += 16 * v447 + 16 * v747;
              v85 = v84;
              v758 = v50;
            }

            else
            {
              v50 += 16 * v747;
              v85 += 4 * v754;
            }

            v93 += v749;
            v86 += 4 * v752;
            --v441;
          }

          while (v441);
          goto LABEL_899;
        }

        v174 = v765;
        do
        {
          v175 = v22;
          do
          {
            if (v56)
            {
              v176 = *v85;
            }

            else
            {
              v176 = 1.0;
            }

            v177 = *v86 + v176;
            if (v177 > 1.0)
            {
              v177 = 1.0;
            }

            v178.i64[0] = v93->i64[0];
            v179.i64[0] = *v50;
            *v86 = v177;
            v179.i64[1] = *(v50 + 8);
            v178.i64[1] = v93->i64[1];
            *v93 = vaddq_f32(v178, v179);
            v180 = v50 + 16 * v710;
            if (v180 >= v88)
            {
              v181 = -v57;
            }

            else
            {
              v181 = 0;
            }

            v85 += 4 * v56 + 4 * v181;
            v50 = v180 + 16 * v181;
            v86 += 4 * v18;
            v93 += v710;
            --v175;
          }

          while (v175);
          if (v745)
          {
            v182 = v758 + 16 * v747;
            if (v182 >= v745)
            {
              v183 = -(v754 * v711);
            }

            else
            {
              v183 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v183];
            if (v182 >= v745)
            {
              v184 = -(v747 * v711);
            }

            else
            {
              v184 = 0;
            }

            v50 = v182 + 16 * v184;
            v88 += 16 * v184 + 16 * v747;
            v756 += 4 * v754 + 4 * v183;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          --v174;
        }

        while (v174);
        goto LABEL_831;
      case 13:
        v321 = v765;
        v8.i32[0] = 1.0;
        while (1)
        {
          v322 = v22;
          do
          {
            v10.i32[0] = 1.0;
            v9.i32[0] = 1.0;
            if (v56)
            {
              v9.i32[0] = *v85;
              if (*v85 <= 0.0)
              {
                goto LABEL_481;
              }
            }

            if (v18)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                v10 = *v50;
                *v93 = *v50;
LABEL_480:
                *v86 = v9.i32[0];
                goto LABEL_481;
              }
            }

            v323 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v93);
            v324 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), *v50);
            v325 = vmulq_f32(v323, v324);
            v326 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v9, v8)), 0), vmlaq_n_f32(v325, v323, 1.0 - v9.f32[0]), v325);
            v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
            v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v8)), 0), vmlaq_n_f32(v326, v324, 1.0 - v10.f32[0]), v326));
            *v93 = v10;
            if (v18)
            {
              goto LABEL_480;
            }

LABEL_481:
            v327 = v50 + 16 * v710;
            if (v327 >= v88)
            {
              v328 = -v57;
            }

            else
            {
              v328 = 0;
            }

            v85 += 4 * v56 + 4 * v328;
            v50 = v327 + 16 * v328;
            v86 += 4 * v18;
            v93 += v710;
            --v322;
          }

          while (v322);
          if (v745)
          {
            v329 = v758 + 16 * v747;
            if (v329 >= v745)
            {
              v330 = -(v754 * v711);
            }

            else
            {
              v330 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v330];
            if (v329 >= v745)
            {
              v331 = -(v747 * v711);
            }

            else
            {
              v331 = 0;
            }

            v50 = v329 + 16 * v331;
            v88 += 16 * v331 + 16 * v747;
            v756 += 4 * v754 + 4 * v330;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          if (!--v321)
          {
            goto LABEL_831;
          }
        }

      case 14:
        v128 = v765;
        __asm { FMOV            V0.4S, #1.0 }

        while (1)
        {
          v134 = v22;
          do
          {
            v10.i32[0] = 1.0;
            v9.i32[0] = 1.0;
            if (v56)
            {
              v9.i32[0] = *v85;
              if (*v85 <= 0.0)
              {
                goto LABEL_131;
              }
            }

            if (v18)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                v10 = *v50;
                *v93 = *v50;
LABEL_130:
                *v86 = v9.i32[0];
                goto LABEL_131;
              }
            }

            v135 = vdupq_lane_s32(*v9.f32, 0);
            v9.f32[0] = (v9.f32[0] + v10.f32[0]) - (v10.f32[0] * v9.f32[0]);
            v136 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v93);
            v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vmlaq_f32(v136, vsubq_f32(_Q0, v136), vsubq_f32(v135, *v50)));
            *v93 = v10;
            if (v18)
            {
              goto LABEL_130;
            }

LABEL_131:
            v137 = v50 + 16 * v710;
            if (v137 >= v88)
            {
              v138 = -v57;
            }

            else
            {
              v138 = 0;
            }

            v85 += 4 * v56 + 4 * v138;
            v50 = v137 + 16 * v138;
            v86 += 4 * v18;
            v93 += v710;
            --v134;
          }

          while (v134);
          if (v745)
          {
            v139 = v758 + 16 * v747;
            if (v139 >= v745)
            {
              v140 = -(v754 * v711);
            }

            else
            {
              v140 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v140];
            if (v139 >= v745)
            {
              v141 = -(v747 * v711);
            }

            else
            {
              v141 = 0;
            }

            v50 = v139 + 16 * v141;
            v88 += 16 * v141 + 16 * v747;
            v756 += 4 * v754 + 4 * v140;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          if (!--v128)
          {
            goto LABEL_831;
          }
        }

      case 15:
        v705 = v17;
        v233 = 0;
        v234 = v56;
        v235 = v765;
        v236 = 4 * v18;
        v237 = 16 * v710;
        v701 = v57;
        v238 = -v57;
        v728 = v236;
        v719 = v238;
        do
        {
          v738 = v235;
          do
          {
            v239 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v239 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v240 = v233;
                v241 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAoverlayPDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v239, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v241;
                v233 = v240;
                v235 = v738;
                v237 = 16 * v710;
                v236 = v728;
                v238 = v719;
              }
            }

            v242 = v50 + 16 * v710;
            if (v242 >= v88)
            {
              v243 = v238;
            }

            else
            {
              v243 = v233;
            }

            v85 += 4 * v234 + 4 * v243;
            v50 = v242 + 16 * v243;
            v86 += v236;
            v93 = (v93 + v237);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v244 = v758 + 16 * v747;
            v245 = -(v754 * v711);
            if (v244 < v745)
            {
              v245 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v245];
            v246 = -(v747 * v711);
            if (v244 < v745)
            {
              v246 = 0;
            }

            v50 = v244 + 16 * v246;
            v88 += 16 * v246 + 16 * v747;
            v756 += 4 * v754 + 4 * v245;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v235;
        }

        while (v235);
        goto LABEL_682;
      case 16:
        v115 = v765;
        v8.i32[0] = 1.0;
        while (1)
        {
          v116 = v22;
          do
          {
            v10.i32[0] = 1.0;
            v9.i32[0] = 1.0;
            if (v56)
            {
              v9.i32[0] = *v85;
              if (*v85 <= 0.0)
              {
                goto LABEL_106;
              }
            }

            if (v18)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                v10 = *v50;
                *v93 = *v50;
LABEL_105:
                *v86 = v9.i32[0];
                goto LABEL_106;
              }
            }

            v117 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v93);
            v118 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), *v50);
            v119 = vmulq_n_f32(v117, v9.f32[0]);
            v120 = vmulq_n_f32(v118, v10.f32[0]);
            v121 = vbslq_s8(vcgtq_f32(v119, v120), v120, v119);
            v122 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v9, v8)), 0), vmlaq_n_f32(v121, v117, 1.0 - v9.f32[0]), v121);
            v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
            v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v8)), 0), vmlaq_n_f32(v122, v118, 1.0 - v10.f32[0]), v122));
            *v93 = v10;
            if (v18)
            {
              goto LABEL_105;
            }

LABEL_106:
            v123 = v50 + 16 * v710;
            if (v123 >= v88)
            {
              v124 = -v57;
            }

            else
            {
              v124 = 0;
            }

            v85 += 4 * v56 + 4 * v124;
            v50 = v123 + 16 * v124;
            v86 += 4 * v18;
            v93 += v710;
            --v116;
          }

          while (v116);
          if (v745)
          {
            v125 = v758 + 16 * v747;
            if (v125 >= v745)
            {
              v126 = -(v754 * v711);
            }

            else
            {
              v126 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v126];
            if (v125 >= v745)
            {
              v127 = -(v747 * v711);
            }

            else
            {
              v127 = 0;
            }

            v50 = v125 + 16 * v127;
            v88 += 16 * v127 + 16 * v747;
            v756 += 4 * v754 + 4 * v126;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          if (!--v115)
          {
            goto LABEL_831;
          }
        }

      case 17:
        v271 = v765;
        v8.i32[0] = 1.0;
        while (1)
        {
          v272 = v22;
          do
          {
            v10.i32[0] = 1.0;
            v9.i32[0] = 1.0;
            if (v56)
            {
              v9.i32[0] = *v85;
              if (*v85 <= 0.0)
              {
                goto LABEL_393;
              }
            }

            if (v18)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                v10 = *v50;
                *v93 = *v50;
LABEL_392:
                *v86 = v9.i32[0];
                goto LABEL_393;
              }
            }

            v273 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v93);
            v274 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), *v50);
            v275 = vmulq_n_f32(v273, v9.f32[0]);
            v276 = vmulq_n_f32(v274, v10.f32[0]);
            v277 = vbslq_s8(vcgtq_f32(v276, v275), v276, v275);
            v278 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v9, v8)), 0), vmlaq_n_f32(v277, v273, 1.0 - v9.f32[0]), v277);
            v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
            v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v8)), 0), vmlaq_n_f32(v278, v274, 1.0 - v10.f32[0]), v278));
            *v93 = v10;
            if (v18)
            {
              goto LABEL_392;
            }

LABEL_393:
            v279 = v50 + 16 * v710;
            if (v279 >= v88)
            {
              v280 = -v57;
            }

            else
            {
              v280 = 0;
            }

            v85 += 4 * v56 + 4 * v280;
            v50 = v279 + 16 * v280;
            v86 += 4 * v18;
            v93 += v710;
            --v272;
          }

          while (v272);
          if (v745)
          {
            v281 = v758 + 16 * v747;
            if (v281 >= v745)
            {
              v282 = -(v754 * v711);
            }

            else
            {
              v282 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v282];
            if (v281 >= v745)
            {
              v283 = -(v747 * v711);
            }

            else
            {
              v283 = 0;
            }

            v50 = v281 + 16 * v283;
            v88 += 16 * v283 + 16 * v747;
            v756 += 4 * v754 + 4 * v282;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          if (!--v271)
          {
            goto LABEL_831;
          }
        }

      case 18:
        v705 = v17;
        v343 = 0;
        v344 = v56;
        v345 = v765;
        v346 = 4 * v18;
        v347 = 16 * v710;
        v701 = v57;
        v348 = -v57;
        v731 = v346;
        v722 = v348;
        do
        {
          v741 = v345;
          do
          {
            v349 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v349 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v350 = v343;
                v351 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAcolordodgePDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v349, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v351;
                v343 = v350;
                v345 = v741;
                v347 = 16 * v710;
                v346 = v731;
                v348 = v722;
              }
            }

            v352 = v50 + 16 * v710;
            if (v352 >= v88)
            {
              v353 = v348;
            }

            else
            {
              v353 = v343;
            }

            v85 += 4 * v344 + 4 * v353;
            v50 = v352 + 16 * v353;
            v86 += v346;
            v93 = (v93 + v347);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v354 = v758 + 16 * v747;
            v355 = -(v754 * v711);
            if (v354 < v745)
            {
              v355 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v355];
            v356 = -(v747 * v711);
            if (v354 < v745)
            {
              v356 = 0;
            }

            v50 = v354 + 16 * v356;
            v88 += 16 * v356 + 16 * v747;
            v756 += 4 * v754 + 4 * v355;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v345;
        }

        while (v345);
        goto LABEL_682;
      case 19:
        v705 = v17;
        v391 = 0;
        v392 = v56;
        v393 = v765;
        v394 = 4 * v18;
        v395 = 16 * v710;
        v701 = v57;
        v396 = -v57;
        v732 = v394;
        v723 = v396;
        do
        {
          v742 = v393;
          do
          {
            v397 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v397 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v398 = v391;
                v399 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAcolorburnPDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v397, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v399;
                v391 = v398;
                v393 = v742;
                v395 = 16 * v710;
                v394 = v732;
                v396 = v723;
              }
            }

            v400 = v50 + 16 * v710;
            if (v400 >= v88)
            {
              v401 = v396;
            }

            else
            {
              v401 = v391;
            }

            v85 += 4 * v392 + 4 * v401;
            v50 = v400 + 16 * v401;
            v86 += v394;
            v93 = (v93 + v395);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v402 = v758 + 16 * v747;
            v403 = -(v754 * v711);
            if (v402 < v745)
            {
              v403 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v403];
            v404 = -(v747 * v711);
            if (v402 < v745)
            {
              v404 = 0;
            }

            v50 = v402 + 16 * v404;
            v88 += 16 * v404 + 16 * v747;
            v756 += 4 * v754 + 4 * v403;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v393;
        }

        while (v393);
        goto LABEL_682;
      case 20:
        v705 = v17;
        v284 = 0;
        v285 = v56;
        v286 = v765;
        v287 = 4 * v18;
        v288 = 16 * v710;
        v701 = v57;
        v289 = -v57;
        v729 = v287;
        v720 = v289;
        do
        {
          v739 = v286;
          do
          {
            v12.i32[0] = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v12.i32[0] = *v86, *v86 <= 0.0))
              {
                v8 = *v50;
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v290 = v284;
                v291 = v88;
                v770 = 0uLL;
                v771 = 0;
                v8.i32[0] = v93->i32[0];
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                v699 = *(v50 + 4);
                v698 = *v50;
                PDAsoftlightPDA(&v770, *v8.f32, v93->f32[1], v93->f32[2], v93->f32[3], *v12.i64, *v13.f32, v14, v15, v289, v26, v3, v36, v88, v51, v52, *(&v699 - 4), *(&v699 + 1), *&v15, v13.f32[0]);
                v8.i32[1] = v770.i32[1];
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v291;
                v284 = v290;
                v286 = v739;
                v288 = 16 * v710;
                v287 = v729;
                v289 = v720;
              }
            }

            v292 = v50 + 16 * v710;
            if (v292 >= v88)
            {
              v293 = v289;
            }

            else
            {
              v293 = v284;
            }

            v85 += 4 * v285 + 4 * v293;
            v50 = v292 + 16 * v293;
            v86 += v287;
            v93 = (v93 + v288);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v294 = v758 + 16 * v747;
            v295 = -(v754 * v711);
            if (v294 < v745)
            {
              v295 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v295];
            v296 = -(v747 * v711);
            if (v294 < v745)
            {
              v296 = 0;
            }

            v50 = v294 + 16 * v296;
            v88 += 16 * v296 + 16 * v747;
            v756 += 4 * v754 + 4 * v295;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v286;
        }

        while (v286);
        goto LABEL_682;
      case 21:
        v705 = v17;
        v307 = 0;
        v308 = v56;
        v309 = v765;
        v310 = 4 * v18;
        v311 = 16 * v710;
        v701 = v57;
        v312 = -v57;
        v730 = v310;
        v721 = v312;
        do
        {
          v740 = v309;
          do
          {
            v313 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v313 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v314 = v307;
                v315 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAhardlightPDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v313, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v315;
                v307 = v314;
                v309 = v740;
                v311 = 16 * v710;
                v310 = v730;
                v312 = v721;
              }
            }

            v316 = v50 + 16 * v710;
            if (v316 >= v88)
            {
              v317 = v312;
            }

            else
            {
              v317 = v307;
            }

            v85 += 4 * v308 + 4 * v317;
            v50 = v316 + 16 * v317;
            v86 += v310;
            v93 = (v93 + v311);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v318 = v758 + 16 * v747;
            v319 = -(v754 * v711);
            if (v318 < v745)
            {
              v319 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v319];
            v320 = -(v747 * v711);
            if (v318 < v745)
            {
              v320 = 0;
            }

            v50 = v318 + 16 * v320;
            v88 += 16 * v320 + 16 * v747;
            v756 += 4 * v754 + 4 * v319;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v309;
        }

        while (v309);
        goto LABEL_682;
      case 22:
        v377 = v765;
        while (1)
        {
          v378 = v22;
          do
          {
            v9.i32[0] = 1.0;
            v8.i32[0] = 1.0;
            if (v56)
            {
              v8.i32[0] = *v85;
              if (*v85 <= 0.0)
              {
                goto LABEL_596;
              }
            }

            if (v18)
            {
              v9.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                v9 = *v50;
                *v93 = *v50;
LABEL_595:
                *v86 = v8.i32[0];
                goto LABEL_596;
              }
            }

            v379 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), *v93);
            v380 = vdupq_lane_s32(*v8.f32, 0);
            v381 = vmulq_n_f32(v379, v8.f32[0]);
            v8.f32[0] = (v9.f32[0] + v8.f32[0]) - (v9.f32[0] * v8.f32[0]);
            v382 = vsubq_f32(v380, *v50);
            v383 = vmulq_n_f32(v382, v9.f32[0]);
            v384 = vsubq_f32(vaddq_f32(v379, v382), v381);
            v385 = vsubq_f32(v381, v383);
            v9 = vsubq_f32(vdupq_lane_s32(*v8.f32, 0), vaddq_f32(vsubq_f32(v384, v383), vbslq_s8(vcltzq_f32(v385), vnegq_f32(v385), v385)));
            *v93 = v9;
            if (v18)
            {
              goto LABEL_595;
            }

LABEL_596:
            v386 = v50 + 16 * v710;
            if (v386 >= v88)
            {
              v387 = -v57;
            }

            else
            {
              v387 = 0;
            }

            v85 += 4 * v56 + 4 * v387;
            v50 = v386 + 16 * v387;
            v86 += 4 * v18;
            v93 += v710;
            --v378;
          }

          while (v378);
          if (v745)
          {
            v388 = v758 + 16 * v747;
            if (v388 >= v745)
            {
              v389 = -(v754 * v711);
            }

            else
            {
              v389 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v389];
            if (v388 >= v745)
            {
              v390 = -(v747 * v711);
            }

            else
            {
              v390 = 0;
            }

            v50 = v388 + 16 * v390;
            v88 += 16 * v390 + 16 * v747;
            v756 += 4 * v754 + 4 * v389;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          v93 += v749;
          v86 += 4 * v752;
          if (!--v377)
          {
            goto LABEL_831;
          }
        }

      case 23:
        v405 = v765;
        v406.i64[0] = 0xC0000000C0000000;
        v406.i64[1] = 0xC0000000C0000000;
        break;
      case 24:
        v705 = v17;
        v209 = 0;
        v210 = v56;
        v211 = v765;
        v212 = 4 * v18;
        v213 = 16 * v710;
        v701 = v57;
        v214 = -v57;
        v727 = v212;
        v718 = v214;
        do
        {
          v737 = v211;
          do
          {
            v215 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v215 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v216 = v209;
                v217 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAhuePDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v215, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v217;
                v209 = v216;
                v211 = v737;
                v213 = 16 * v710;
                v212 = v727;
                v214 = v718;
              }
            }

            v218 = v50 + 16 * v710;
            if (v218 >= v88)
            {
              v219 = v214;
            }

            else
            {
              v219 = v209;
            }

            v85 += 4 * v210 + 4 * v219;
            v50 = v218 + 16 * v219;
            v86 += v212;
            v93 = (v93 + v213);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v220 = v758 + 16 * v747;
            v221 = -(v754 * v711);
            if (v220 < v745)
            {
              v221 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v221];
            v222 = -(v747 * v711);
            if (v220 < v745)
            {
              v222 = 0;
            }

            v50 = v220 + 16 * v222;
            v88 += 16 * v222 + 16 * v747;
            v756 += 4 * v754 + 4 * v221;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v211;
        }

        while (v211);
        goto LABEL_682;
      case 25:
        v705 = v17;
        v195 = 0;
        v196 = v56;
        v197 = v765;
        v198 = 4 * v18;
        v199 = 16 * v710;
        v701 = v57;
        v200 = -v57;
        v726 = v198;
        v717 = v200;
        do
        {
          v736 = v197;
          do
          {
            v201 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v201 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v202 = v195;
                v203 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAsaturationPDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v201, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v203;
                v195 = v202;
                v197 = v736;
                v199 = 16 * v710;
                v198 = v726;
                v200 = v717;
              }
            }

            v204 = v50 + 16 * v710;
            if (v204 >= v88)
            {
              v205 = v200;
            }

            else
            {
              v205 = v195;
            }

            v85 += 4 * v196 + 4 * v205;
            v50 = v204 + 16 * v205;
            v86 += v198;
            v93 = (v93 + v199);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v206 = v758 + 16 * v747;
            v207 = -(v754 * v711);
            if (v206 < v745)
            {
              v207 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v207];
            v208 = -(v747 * v711);
            if (v206 < v745)
            {
              v208 = 0;
            }

            v50 = v206 + 16 * v208;
            v88 += 16 * v208 + 16 * v747;
            v756 += 4 * v754 + 4 * v207;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v197;
        }

        while (v197);
        goto LABEL_682;
      case 26:
        v705 = v17;
        v416 = 0;
        v417 = v56;
        v418 = v765;
        v419 = 4 * v18;
        v420 = 16 * v710;
        v701 = v57;
        v421 = -v57;
        v733 = v419;
        v724 = v421;
        do
        {
          v743 = v418;
          do
          {
            v13.i32[0] = 1.0;
            v422 = 1.0;
            if (!v56 || (v422 = *v85, *v85 > 0.0))
            {
              if (v18 && (v13.i32[0] = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v422;
              }

              else
              {
                v423 = v416;
                v424 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = v93->i32[0];
                LODWORD(v15) = v93->i32[3];
                PDAluminosityPDA(v770.f32, *v50, *(v50 + 4), *(v50 + 8), *(v50 + 12), v422, *v13.i64, v14, v15, v93->f32[0], COERCE_FLOAT(*(v93->i64 + 4)), COERCE_FLOAT(HIDWORD(*(v93->i64 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v424;
                v416 = v423;
                v418 = v743;
                v420 = 16 * v710;
                v419 = v733;
                v421 = v724;
              }
            }

            v425 = v50 + 16 * v710;
            if (v425 >= v88)
            {
              v426 = v421;
            }

            else
            {
              v426 = v416;
            }

            v85 += 4 * v417 + 4 * v426;
            v50 = v425 + 16 * v426;
            v86 += v419;
            v93 = (v93 + v420);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v427 = v758 + 16 * v747;
            v428 = -(v754 * v711);
            if (v427 < v745)
            {
              v428 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v428];
            v429 = -(v747 * v711);
            if (v427 < v745)
            {
              v429 = 0;
            }

            v50 = v427 + 16 * v429;
            v88 += 16 * v429 + 16 * v747;
            v756 += 4 * v754 + 4 * v428;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v418;
        }

        while (v418);
        goto LABEL_682;
      case 27:
        v705 = v17;
        v101 = 0;
        v102 = v56;
        v103 = v765;
        v104 = 4 * v18;
        v105 = 16 * v710;
        v701 = v57;
        v106 = -v57;
        v725 = v104;
        v716 = v106;
        do
        {
          v735 = v103;
          do
          {
            v107 = 1.0;
            v13.i32[0] = 1.0;
            if (!v56 || (v13.i32[0] = *v85, *v85 > 0.0))
            {
              if (v18 && (v107 = *v86, *v86 <= 0.0))
              {
                *v93 = *v50;
                *v86 = v13.i32[0];
              }

              else
              {
                v108 = v101;
                v109 = v88;
                v770 = 0uLL;
                v771 = 0;
                LODWORD(v14) = *v50;
                LODWORD(v15) = *(v50 + 12);
                PDAluminosityPDA(v770.f32, v93->f32[0], v93->f32[1], v93->f32[2], v93->f32[3], v107, *v13.i64, v14, v15, *v50, COERCE_FLOAT(*(v50 + 4)), COERCE_FLOAT(HIDWORD(*(v50 + 4))), *&v15, v13.f32[0]);
                v18 = v760;
                *v93 = v770;
                if (v760)
                {
                  *v86 = v771;
                }

                LODWORD(v56) = v762;
                v88 = v109;
                v101 = v108;
                v103 = v735;
                v105 = 16 * v710;
                v104 = v725;
                v106 = v716;
              }
            }

            v110 = v50 + 16 * v710;
            if (v110 >= v88)
            {
              v111 = v106;
            }

            else
            {
              v111 = v101;
            }

            v85 += 4 * v102 + 4 * v111;
            v50 = v110 + 16 * v111;
            v86 += v104;
            v93 = (v93 + v105);
            LODWORD(v22) = v22 - 1;
          }

          while (v22);
          if (v745)
          {
            v112 = v758 + 16 * v747;
            v113 = -(v754 * v711);
            if (v112 < v745)
            {
              v113 = 0;
            }

            v85 = &v756[4 * v754 + 4 * v113];
            v114 = -(v747 * v711);
            if (v112 < v745)
            {
              v114 = 0;
            }

            v50 = v112 + 16 * v114;
            v88 += 16 * v114 + 16 * v747;
            v756 += 4 * v754 + 4 * v113;
            v758 = v50;
          }

          else
          {
            v50 += 16 * v747;
            v85 += 4 * v754;
          }

          LODWORD(v22) = v715;
          v93 += v749;
          v86 += 4 * v752;
          --v103;
        }

        while (v103);
LABEL_682:
        v734 = v88;
        v765 = 0;
        LODWORD(v19) = v700;
        v57 = v701;
        v21 = v706;
        v17 = v705;
        goto LABEL_832;
      default:
        v734 = v88;
        goto LABEL_832;
    }

LABEL_635:
    v407 = v22;
    while (1)
    {
      v10.i32[0] = 1.0;
      v9.i32[0] = 1.0;
      if (!v56 || (v9.i32[0] = *v85, *v85 > 0.0))
      {
        if (v18 && (v10.i32[0] = *v86, *v86 <= 0.0))
        {
          v10 = *v50;
          *v93 = *v50;
        }

        else
        {
          v408 = vdupq_lane_s32(*v9.f32, 0);
          v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
          v409 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v93);
          v410 = vsubq_f32(v408, *v50);
          v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vmlaq_f32(vaddq_f32(v409, v410), v406, vmulq_f32(v410, v409)));
          *v93 = v10;
          if (!v18)
          {
            goto LABEL_644;
          }
        }

        *v86 = v9.i32[0];
      }

LABEL_644:
      v411 = v50 + 16 * v710;
      if (v411 >= v88)
      {
        v412 = -v57;
      }

      else
      {
        v412 = 0;
      }

      v85 += 4 * v56 + 4 * v412;
      v50 = v411 + 16 * v412;
      v86 += 4 * v18;
      v93 += v710;
      if (!--v407)
      {
        if (v745)
        {
          v413 = v758 + 16 * v747;
          if (v413 >= v745)
          {
            v414 = -(v754 * v711);
          }

          else
          {
            v414 = 0;
          }

          v85 = &v756[4 * v754 + 4 * v414];
          if (v413 >= v745)
          {
            v415 = -(v747 * v711);
          }

          else
          {
            v415 = 0;
          }

          v50 = v413 + 16 * v415;
          v88 += 16 * v415 + 16 * v747;
          v756 += 4 * v754 + 4 * v414;
          v758 = v50;
        }

        else
        {
          v50 += 16 * v747;
          v85 += 4 * v754;
        }

        v93 += v749;
        v86 += 4 * v752;
        if (!--v405)
        {
          goto LABEL_831;
        }

        goto LABEL_635;
      }
    }
  }

  v27 = *(v2 + 128);
  if ((v27 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      CMYKf_mark_constmask(v2, v19, *v8.i64, v9, v10, v11, *v12.i64, v13, v14, v15, v26, v3, v4, v5, v27, v7);
    }

    else
    {
      CMYKf_mark_pixelmask(v2, v19, *v8.i64, v9, v10, v11, *v12.i64, v13, v14, v15, v26, v3, v4, v5, v27, v7);
    }
  }

  else
  {
    v37 = *(v2 + 112);
    v38 = *(v2 + 116);
    v39 = (v37 + 15) & 0xFFFFFFF0;
    v40 = v39 * v38;
    if (v40 <= 4096)
    {
      v42 = &v770;
      v43 = v2;
    }

    else
    {
      v41 = malloc_type_malloc(v40, 0x100004077774924uLL);
      if (!v41)
      {
        return 1;
      }

      v42 = v41;
      v43 = v706;
      v26 = *(v706 + 136);
      LODWORD(v27) = *(v706 + 128);
    }

    CGSConvertBitsToMask(v26, *(v43 + 124), v42, v39, v37, v38, v27);
    v75 = *(v43 + 112);
    v766[6] = *(v43 + 96);
    v767 = v75;
    v76 = *(v43 + 144);
    v768 = *(v43 + 128);
    v769 = v76;
    v77 = *(v43 + 48);
    v766[2] = *(v43 + 32);
    v766[3] = v77;
    v78 = *(v43 + 80);
    v766[4] = *(v43 + 64);
    v766[5] = v78;
    v79 = *v43;
    v80 = *(v43 + 16);
    v766[0] = *v43;
    v766[1] = v80;
    HIDWORD(v767) = (v37 + 15) & 0xFFFFFFF0;
    *(&v768 + 1) = v42;
    if (BYTE1(v766[0]) << 8 == 1024)
    {
      CMYKf_mark_constmask(v766, v19, *&v79, v80, v69, v70, v71, v72, v73, v74, v63, v64, v65, v66, v67, v68);
    }

    else
    {
      CMYKf_mark_pixelmask(v766, v19, *&v79, v80, v69, v70, v71, v72, v73, v74, v63, v64, v65, v66, v67, v68);
    }

    if (v42 != &v770)
    {
      v81 = v42;
      goto LABEL_1241;
    }
  }

  return 1;
}

float PDAoverlayPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v14 = a6 - a2;
  v15 = a6 - a3;
  v16 = a6 - a4;
  v17 = a6 - a5;
  v18 = a14 - a11;
  v19 = a14 - a12;
  v20 = a14 - a13;
  v21 = (v14 * (a14 - a10)) + (v14 * (a14 - a10));
  v22 = (v15 * (a14 - a11)) + (v15 * (a14 - a11));
  v23 = (v16 * (a14 - a12)) + (v16 * (a14 - a12));
  v24 = (v17 * (a14 - a13)) + (v17 * (a14 - a13));
  v25 = a6 * a14;
  v26 = a6 * 0.5;
  v27 = v14 < (a6 * 0.5);
  v28 = a14 + 1.0;
  v29 = a6 + 1.0;
  v30 = ((((a6 + 1.0) * (a14 - a10)) + (v14 * (a14 + 1.0))) - v21) - (a6 * a14);
  v31 = 1.0 - a14;
  v32 = 1.0 - a6;
  v33 = (((1.0 - a6) * (a14 - a10)) + (v14 * (1.0 - a14))) + v21;
  if (!v27)
  {
    v33 = v30;
  }

  v27 = v15 < v26;
  v34 = (((v29 * v18) + (v15 * v28)) - v22) - v25;
  v35 = ((v32 * v18) + (v15 * v31)) + v22;
  if (!v27)
  {
    v35 = v34;
  }

  v27 = v16 < v26;
  v36 = (((v29 * v19) + (v16 * v28)) - v23) - v25;
  v37 = ((v32 * v19) + (v16 * v31)) + v23;
  if (!v27)
  {
    v37 = v36;
  }

  v27 = v17 < v26;
  v38 = (((v29 * v20) + (v17 * v28)) - v24) - v25;
  v39 = ((v32 * v20) + (v17 * v31)) + v24;
  if (!v27)
  {
    v39 = v38;
  }

  v40 = (a6 + a14) - v25;
  *a1 = v40 - v33;
  a1[1] = v40 - v35;
  result = v40 - v37;
  a1[2] = v40 - v37;
  a1[3] = v40 - v39;
  a1[4] = v40;
  return result;
}

float PDAcolordodgePDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v14 = a6 - a2;
  v15 = a6 - a3;
  v16 = a14 - a10;
  v17 = a14 * a14;
  v18 = 0.0;
  v19 = 0.0;
  if (v14 != 0.0)
  {
    if (v16 == a14)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = (v14 * v17) / (a14 - v16);
    }
  }

  v20 = a6 - a4;
  v21 = a14 - a11;
  if (v15 != 0.0)
  {
    if (v21 == a14)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = (v15 * v17) / (a14 - v21);
    }
  }

  v22 = a6 - a5;
  v23 = a14 - a12;
  v24 = 0.0;
  v25 = 0.0;
  if (v20 != 0.0)
  {
    if (v23 == a14)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = (v20 * v17) / (a14 - v23);
    }
  }

  v26 = a14 - a13;
  if (v22 != 0.0)
  {
    if (v26 == a14)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = (v22 * v17) / (a14 - v26);
    }
  }

  if (a14 != 1.0)
  {
    v19 = v19 + (v14 * (1.0 - a14));
    v18 = v18 + (v15 * (1.0 - a14));
    v25 = v25 + (v20 * (1.0 - a14));
    v24 = v24 + (v22 * (1.0 - a14));
  }

  v27 = v19 + (v16 * (1.0 - a6));
  v28 = v18 + (v21 * (1.0 - a6));
  v29 = v25 + (v23 * (1.0 - a6));
  if (a6 == 1.0)
  {
    v27 = v19;
  }

  else
  {
    v18 = v28;
  }

  if (a6 == 1.0)
  {
    v30 = v25;
  }

  else
  {
    v30 = v29;
  }

  if (a6 == 1.0)
  {
    v31 = v24;
  }

  else
  {
    v31 = v24 + (v26 * (1.0 - a6));
  }

  v32 = (a6 + a14) - (a6 * a14);
  if (v27 > v32)
  {
    v27 = v32;
  }

  if (v18 > v32)
  {
    v18 = v32;
  }

  if (v30 > v32)
  {
    v30 = v32;
  }

  if (v31 > v32)
  {
    v31 = v32;
  }

  *a1 = v32 - v27;
  a1[1] = v32 - v18;
  result = v32 - v30;
  a1[2] = v32 - v30;
  a1[3] = v32 - v31;
  a1[4] = v32;
  return result;
}

float PDAcolorburnPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v14 = a6 - a2;
  v15 = a6 - a3;
  v16 = a6 - a4;
  v17 = a6 - a5;
  v18 = a6 * a14;
  v19 = a6 * a14;
  v20 = a6 * a14;
  v21 = a6 * a14;
  v22 = a6 * a14;
  if (a14 != 1.0)
  {
    v19 = v18 + (v14 * (1.0 - a14));
    v20 = v18 + (v15 * (1.0 - a14));
    v21 = v18 + (v16 * (1.0 - a14));
    v22 = v18 + (v17 * (1.0 - a14));
  }

  v23 = a14 - a10;
  v24 = a14 - a11;
  v25 = a14 - a12;
  v26 = a14 - a13;
  if (a6 != 1.0)
  {
    v19 = v19 + (v23 * (1.0 - a6));
    v20 = v20 + (v24 * (1.0 - a6));
    v21 = v21 + (v25 * (1.0 - a6));
    v22 = v22 + (v26 * (1.0 - a6));
  }

  v27 = a6 - v14;
  if (v27 != 0.0)
  {
    if (v23 == 0.0 || (v19 = v19 - ((v27 * (a14 * a14)) / v23), v19 < 0.0))
    {
      v19 = 0.0;
    }
  }

  v28 = a6 - v15;
  if (v28 != 0.0)
  {
    if (v24 == 0.0 || (v20 = v20 - ((v28 * (a14 * a14)) / v24), v20 < 0.0))
    {
      v20 = 0.0;
    }
  }

  v29 = a6 - v16;
  if (v29 != 0.0)
  {
    if (v25 == 0.0 || (v21 = v21 - ((v29 * (a14 * a14)) / v25), v21 < 0.0))
    {
      v21 = 0.0;
    }
  }

  v30 = a6 - v17;
  if (v30 != 0.0)
  {
    if (v26 == 0.0 || (v22 = v22 - ((v30 * (a14 * a14)) / v26), v22 < 0.0))
    {
      v22 = 0.0;
    }
  }

  result = (a6 + a14) - v18;
  *a1 = result - v19;
  a1[1] = result - v20;
  a1[2] = result - v21;
  a1[3] = result - v22;
  a1[4] = result;
  return result;
}

float PDAhardlightPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v14 = a6 - a2;
  v15 = a6 - a3;
  v16 = a6 - a4;
  v17 = a6 - a5;
  v18 = a14 - a11;
  v19 = a14 - a12;
  v20 = a14 - a13;
  v21 = (v14 * (a14 - a10)) + (v14 * (a14 - a10));
  v22 = (v15 * (a14 - a11)) + (v15 * (a14 - a11));
  v23 = (v16 * (a14 - a12)) + (v16 * (a14 - a12));
  v24 = (v17 * (a14 - a13)) + (v17 * (a14 - a13));
  v25 = a6 * a14;
  v26 = a14 * 0.5;
  v27 = 1.0 - a14;
  v28 = 1.0 - a6;
  v29 = (((1.0 - a6) * (a14 - a10)) + (v14 * (1.0 - a14))) + v21;
  v30 = a14 + 1.0;
  v31 = a6 + 1.0;
  v32 = ((((a6 + 1.0) * (a14 - a10)) + (v14 * (a14 + 1.0))) - v21) - (a6 * a14);
  if ((a14 - a10) <= (a14 * 0.5))
  {
    v32 = v29;
  }

  v33 = ((v28 * v18) + (v15 * v27)) + v22;
  v34 = (((v31 * v18) + (v15 * v30)) - v22) - v25;
  if (v18 <= v26)
  {
    v34 = v33;
  }

  v35 = ((v28 * v19) + (v16 * v27)) + v23;
  v36 = (((v31 * v19) + (v16 * v30)) - v23) - v25;
  if (v19 <= v26)
  {
    v36 = v35;
  }

  v37 = ((v28 * v20) + (v17 * v27)) + v24;
  v38 = (((v31 * v20) + (v17 * v30)) - v24) - v25;
  if (v20 <= v26)
  {
    v38 = v37;
  }

  v39 = (a6 + a14) - v25;
  *a1 = v39 - v32;
  a1[1] = v39 - v34;
  result = v39 - v36;
  a1[2] = v39 - v36;
  a1[3] = v39 - v38;
  a1[4] = v39;
  return result;
}

float32x4_t PDAsoftlightPDA(float32x4_t *a1, float32x2_t a2, float32_t a3, float a4, float a5, double a6, int32x2_t a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x2_t a17, float a18, float a19, float a20)
{
  *a7.i32 = a20;
  v20 = vdup_lane_s32(*&a6, 0);
  a2.f32[1] = a3;
  v21 = vsub_f32(v20, a2);
  v22 = *&a6 - a4;
  v23 = *&a6 - a5;
  v24 = vdup_lane_s32(a7, 0);
  v25 = vsub_f32(v24, a17);
  v26 = a20 - a18;
  v27 = a20 - a19;
  if (*&a6 == 0.0)
  {
    v30.i64[0] = 0;
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v28 = vmul_f32(v21, v25);
    v29 = vsub_f32(vadd_f32(v28, v28), vdiv_f32(vmul_f32(vmul_f32(v21, v21), vsub_f32(vadd_f32(v25, v25), v24)), v20));
    *v30.f32 = vbic_s8(v29, vcltz_f32(v29));
    v31 = ((v22 * v26) + (v22 * v26)) - (((v22 * v22) * ((v26 + v26) - a20)) / *&a6);
    v32 = 0.0;
    if (v31 < 0.0)
    {
      v31 = 0.0;
    }

    if ((((v23 * v27) + (v23 * v27)) - (((v23 * v23) * ((v27 + v27) - a20)) / *&a6)) >= 0.0)
    {
      v32 = ((v23 * v27) + (v23 * v27)) - (((v23 * v23) * ((v27 + v27) - a20)) / *&a6);
    }
  }

  if (a20 != 1.0)
  {
    *v30.f32 = vmla_n_f32(*v30.f32, v21, 1.0 - a20);
    v31 = v31 + (v22 * (1.0 - a20));
    v32 = v32 + (v23 * (1.0 - a20));
  }

  if (*&a6 != 1.0)
  {
    *v30.f32 = vmla_n_f32(*v30.f32, v25, 1.0 - *&a6);
    v31 = v31 + (v26 * (1.0 - *&a6));
    v32 = v32 + (v27 * (1.0 - *&a6));
  }

  v25.f32[0] = (*&a6 + a20) - (*&a6 * a20);
  v30.i64[1] = __PAIR64__(LODWORD(v32), LODWORD(v31));
  result = vsubq_f32(vdupq_lane_s32(v25, 0), v30);
  *a1 = result;
  a1[1].i32[0] = v25.i32[0];
  return result;
}

float PDAhuePDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v58 = *MEMORY[0x1E69E9840];
  v14 = a6 - a2;
  v15 = a6 - a3;
  v16 = a6 - a4;
  v17 = a6 - a5;
  v18 = a14 - a10;
  v19 = a14 - a11;
  v20 = a14 - a12;
  v21 = v14 * a14;
  v22 = v14 - (v14 * a14);
  v23 = v15 - (v15 * a14);
  v24 = v16 - (v16 * a14);
  v25 = v17 - (v17 * a14);
  if (a14 == 1.0)
  {
    v22 = 0.0;
  }

  else
  {
    v17 = v17 * a14;
  }

  if (a14 == 1.0)
  {
    v23 = 0.0;
    v24 = 0.0;
    v26 = 0.0;
  }

  else
  {
    v26 = v25;
  }

  if (a14 == 1.0)
  {
    v27 = v15;
  }

  else
  {
    v16 = v16 * a14;
    v27 = v15 * a14;
  }

  if (a14 == 1.0)
  {
    v21 = v14;
  }

  v28 = v18 * a6;
  v29 = v19 * a6;
  v30 = v20 * a6;
  v31 = (v20 + v24) - (v20 * a6);
  if (a6 == 1.0)
  {
    v28 = a14 - a10;
    v29 = a14 - a11;
    v30 = a14 - a12;
    v32 = v22;
  }

  else
  {
    v32 = (v18 + v22) - (v18 * a6);
  }

  if (a6 == 1.0)
  {
    v33 = v23;
  }

  else
  {
    v33 = (v19 + v23) - (v19 * a6);
  }

  if (a6 == 1.0)
  {
    v34 = v24;
  }

  else
  {
    v34 = v31;
  }

  if (a6 == 1.0)
  {
    v35 = v26;
  }

  else
  {
    v35 = ((a14 - a13) + v26) - ((a14 - a13) * a6);
  }

  v55 = v28;
  v56 = v29;
  v57 = v30;
  v36 = v28 < v29;
  v37 = v28 >= v29;
  if (v28 < v29)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v28 < v29)
  {
    v28 = v29;
  }

  if (v30 <= v28)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = 2;
  if (v30 <= v28)
  {
    v41 = v36;
  }

  else
  {
    v41 = 2;
  }

  if (v30 < v38)
  {
    v42 = v36;
  }

  else
  {
    v40 = v37;
    v37 = v39;
    v42 = v41;
  }

  v43 = *(&v55 + v42);
  v44 = *(&v55 + v40);
  if (v43 <= v44)
  {
    *(&v55 + v42) = 0.0;
    *(&v55 + v37) = 0.0;
  }

  else
  {
    if (v21 >= v27)
    {
      v45 = v27;
    }

    else
    {
      v45 = v21;
    }

    if (v21 >= v27)
    {
      v46 = v21;
    }

    else
    {
      v46 = v27;
    }

    if (v16 > v46)
    {
      v47 = v16;
    }

    else
    {
      v47 = v46;
    }

    if (v16 >= v45)
    {
      v46 = v47;
    }

    else
    {
      v45 = v16;
    }

    v48 = v46 - v45;
    *(&v55 + v42) = v48;
    *(&v55 + v37) = (v48 / (v43 - v44)) * (*(&v55 + v37) - v44);
  }

  *(&v55 + v40) = 0.0;
  v49 = (((v27 - v56) * 0.59) + ((v21 - v55) * 0.3)) + ((v16 - v57) * 0.11);
  v50 = v55 + v49;
  v51 = v56 + v49;
  v52 = (a6 + a14) - (a6 * a14);
  v53 = v34 + (v57 + v49);
  *a1 = v52 - (v32 + v50);
  a1[1] = v52 - (v33 + v51);
  result = v52 - (v17 + v35);
  a1[2] = v52 - v53;
  a1[3] = result;
  a1[4] = v52;
  return result;
}