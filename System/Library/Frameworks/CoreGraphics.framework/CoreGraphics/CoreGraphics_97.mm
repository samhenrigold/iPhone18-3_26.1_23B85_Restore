uint64_t rgba32_sample_RGB24(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v72 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  v71 = *(result + 188);
  v14 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v71 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v8 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v71 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v7 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v71;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v72;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v71;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v4 + SHIDWORD(v25) * v5;
  v35 = 3 * (v29 >> 32);
  v36 = v34 + v35;
  v37 = *(result + 32);
  if (v14 >= v34 + v35)
  {
    v38 = (v34 + v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (v38[1] << 16) | (*v38 << 24) | (v38[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_51:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v68 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v68)
      {
        v68 = v14;
      }

      if (v68 < v37)
      {
        v68 = v37;
      }

      v69 = interpolate_8888_21865[v49];
      v70 = v49 + 1;
      v64 = v39 - ((v69 & v39) >> v70);
      v67 = (((v68[1] << 16) | (*v68 << 24) | (v68[2] << 8) | 0xFF) & v69) >> v70;
LABEL_79:
      v39 = v64 + v67;
      break;
    case 2:
      v65 = (v36 + 3 * SBYTE2(v40));
      if (v14 < v65)
      {
        v65 = v14;
      }

      if (v65 < v37)
      {
        v65 = v37;
      }

      v60 = (v65[1] << 16) | (*v65 << 24) | (v65[2] << 8) | 0xFF;
      v66 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v66];
      v63 = v66 + 1;
      v64 = v39 - ((v62 & v39) >> v63);
LABEL_73:
      v67 = (v60 & v62) >> v63;
      goto LABEL_79;
    case 3:
      v50 = 3 * SBYTE2(v40);
      v51 = (v36 + v50);
      if (v14 < v36 + v50)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v53 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = (v54[1] << 16) | (*v54 << 24) | (v54[2] << 8) | 0xFF;
      v56 = (v53 + v50);
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
      v52 = (v51[1] << 16) | (*v51 << 24) | (v51[2] << 8) | 0xFF;
      v60 = v52 - ((v57 & v52) >> v58) + ((((v56[1] << 16) | (*v56 << 24) | (v56[2] << 8) | 0xFF) & v57) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_73;
  }

LABEL_36:
  *(v12 + 4) = v39;
  *(v13 + 1) = v24 >> 22;
  if (a4 != 1)
  {
    v41 = 0;
    a2 += v10;
    v42 = v72 - a2;
    a3 += v11;
    v43 = v9 - a3;
    v44 = -4;
    while (((v43 | v42 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) == 0)
    {
      v45 = v4 + SHIDWORD(a3) * v5;
      v46 = 3 * (a2 >> 32);
      v36 = v45 + v46;
      v37 = *(result + 32);
      if (v14 >= v45 + v46)
      {
        v47 = (v45 + v46);
      }

      else
      {
        v47 = v14;
      }

      if (v47 < v37)
      {
        v47 = *(result + 32);
      }

      v39 = (v47[1] << 16) | (*v47 << 24) | (v47[2] << 8) | 0xFF;
      if (v6)
      {
        v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v40 & 0xF) != 0)
        {
          v13 += v41 + 1;
          v12 -= v44;
          a4 += ~v41;
          v24 = -1;
          goto LABEL_51;
        }
      }

      *(v12 + 4 * v41 + 8) = v39;
      *(v13 + v41++ + 2) = -1;
      v44 -= 4;
      a2 += v10;
      v42 -= v10;
      a3 += v11;
      v43 -= v11;
      if (a4 - 1 == v41)
      {
        return result;
      }
    }

    v13 += v41 + 1;
    v12 -= v44;
    a4 += ~v41;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t rgba32_sample_rgb555(uint64_t result, uint64_t a2, unint64_t a3, int a4)
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

  v42 = *v41;
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

      v82 = *v81;
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

          v60 = *v59;
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

          v63 = *v62;
          v64 = (v61 + (v58 >> 55));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v40)
          {
            v64 = v40;
          }

          v65 = *v64;
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

      v75 = *v74;
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
    v52 = (v42 << 14) & 0xF80000 | ((v42 >> 10) << 27) | ((v42 & 0x1F) << 11);
    *(v92 + 4 + 4 * v48) = (v52 >> 5) & 0x3F3F3F3F | ((v11 | (v42 >> 5) | v42) >> 24) | v52;
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

    v42 = *v53;
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

uint64_t rgba32_sample_RGB555(uint64_t result, uint64_t a2, unint64_t a3, int a4)
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
    v52 = (v42 << 14) & 0xF80000 | ((v42 >> 10) << 27) | ((v42 & 0x1F) << 11);
    *(v92 + 4 + 4 * v48) = (v52 >> 5) & 0x3F3F3F3F | ((v11 | (v42 >> 5) | v42) >> 24) | v52;
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

uint64_t rgba32_sample_W8(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v86 = *(result + 80);
  v88 = *(result + 88);
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
  v85 = *(result + 188);
  v17 = v4 + v15 + (v14 * v6) - 1;
  v87 = *(result + 64);
  v89 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
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

        v29 = v87;
        v27 = v85 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v89 - *(result + 224);
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

      v29 = v87;
      v27 = v85 | v21;
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

  if (a2 <= v86)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v86;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v85;
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
    v55 = v47 & 0xF;
    v56 = HIBYTE(v47) & 3;
    switch(v55)
    {
      case 1:
        v79 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v79)
        {
          v79 = v17;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = *v79;
        if (v5)
        {
          v81 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v81)
          {
            v81 = v16;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= *v81 << 24;
        }

        v82 = interpolate_8888_21865[v56];
        v83 = v56 + 1;
        v74 = v43 - ((v82 & v43) >> v83);
        v75 = (v82 & v80) >> v83;
        break;
      case 2:
        v76 = (v40 + SBYTE2(v47));
        if (v17 < v76)
        {
          v76 = v17;
        }

        if (v76 < v41)
        {
          v76 = v41;
        }

        v77 = *v76;
        if (v5)
        {
          v78 = (v44 + SBYTE2(v47));
          if (v16 < v78)
          {
            v78 = v16;
          }

          if (v78 < *(result + 40))
          {
            v78 = *(result + 40);
          }

          v77 |= *v78 << 24;
        }

        v43 = v43 - ((interpolate_8888_21865[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v47 >> 28) & 3] & v77) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v84 = HIBYTE(v47) & 3;
        v57 = (v40 + SBYTE2(v47));
        if (v17 < v57)
        {
          v57 = v17;
        }

        if (v57 < v41)
        {
          v57 = v41;
        }

        v58 = *v57;
        v59 = v40 + SBYTE1(v47) * v6;
        if (v17 >= v59)
        {
          v60 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v60 = v17;
        }

        if (v60 < v41)
        {
          v60 = v41;
        }

        v61 = *v60;
        v62 = (v59 + SBYTE2(v47));
        if (v17 < v62)
        {
          v62 = v17;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = *v62;
        if (v5)
        {
          v64 = (v44 + SBYTE2(v47));
          v65 = *(result + 40);
          if (v16 < v64)
          {
            v64 = v16;
          }

          if (v64 < v65)
          {
            v64 = *(result + 40);
          }

          v58 |= *v64 << 24;
          v66 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v66)
          {
            v67 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v67 = v16;
          }

          if (v67 < v65)
          {
            v67 = *(result + 40);
          }

          v61 |= *v67 << 24;
          v68 = (v66 + SBYTE2(v47));
          if (v16 < v68)
          {
            v68 = v16;
          }

          if (v68 < v65)
          {
            v68 = *(result + 40);
          }

          v63 |= *v68 << 24;
        }

        v69 = interpolate_8888_21865[v84];
        v70 = v43 - ((v69 & v43) >> (v84 + 1)) + ((v69 & v61) >> (v84 + 1));
        v71 = v58 - ((v69 & v58) >> (v84 + 1)) + ((v69 & v63) >> (v84 + 1));
        v72 = (v47 >> 28) & 3;
        v73 = interpolate_8888_21865[v72];
        LOBYTE(v72) = v72 + 1;
        v74 = v70 - ((v70 & v73) >> v72);
        v75 = (v71 & v73) >> v72;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v74 + v75;
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
  *(v11 + 4) = bswap32(v43 & 0xFF0000FF | v13) | (v43 << 16) | (v43 << 8);
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v86 - a2;
    a3 += v9;
    v50 = v88 - a3;
    v51 = -4;
    while (((v50 | v49 | (a3 - v89) | (a2 - v87)) & 0x8000000000000000) == 0)
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

      *(v11 + 4 * v48 + 8) = bswap32(v43 & 0xFF0000FF | v13) | (v43 << 16) | (v43 << 8);
      *(v12 + v48++ + 2) = -1;
      v51 -= 4;
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

uint64_t rgba32_shade(uint64_t a1)
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

  if ((*v4 & 0xF000000) == 0x3000000)
  {
    if (*(v4 + 16))
    {
      v12 = rgba32_shade_radial_RGB;
    }

    else if (*(v4 + 24))
    {
      v12 = rgba32_shade_conic_RGB;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = rgba32_shade_axial_RGB;
    }

    else
    {
      v12 = rgba32_shade_custom_RGB;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 2, 3, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 480)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 2, 3, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(8 * v13 + 32, 0x8C254358uLL);
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
  rgba32_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void rgba32_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v298 = a3;
  v304 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 > 0x1FFFFFF)
  {
    return;
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a2 + 184);
  v8 = *(a1 + 136);
  v9 = *(a2 + 104);
  v301 = *(a2 + 96);
  v290 = v9;
  v11 = *(a1 + 24);
  v10 = *(a1 + 28);
  v12 = *(a1 + 20);
  v302 = *(a1 + 16);
  v303 = v5;
  v13 = *(a1 + 12);
  v300 = *(a1 + 8);
  v293 = a1;
  v299 = v13;
  v297 = a2;
  v14 = *(a2 + 16);
  v15 = (v14 + 6) * v4;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
    v17 = v18;
    v21 = v18;
    v22 = v297;
    v23 = v293;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v17 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v21 = 0;
    v22 = v297;
    v23 = v293;
  }

  v288 = v21;
  v20.n128_f32[0] = (v7 * 255.0) + 0.5;
  v24 = v20.n128_f32[0];
  v287 = v6 + (v11 - 1) * v10 + 4 * v12;
  v25 = v10 >> 2;
  v26 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v26 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v28 = 4 * v4;
  }

  else
  {
    v28 = 0;
  }

  v29 = v27 + v28;
  v22[18] = v26;
  v22[19] = v27 + v28;
  v22[20] = v27;
  v30 = (v6 + 4 * v25 * v302 + 4 * v299);
  v289 = v3;
  v286 = v25;
  v296 = v25 - v3;
  v31 = *(v23 + 104);
  v32 = *(v23 + 108);
  v33 = *(v23 + 2);
  if (v33 == 6 || v33 == 1)
  {
    v34 = v301;
    if (!v8)
    {
      goto LABEL_609;
    }

    v35 = 0;
    v36 = 0;
    v37 = *(v23 + 124);
    v38 = v8 + v37 * v32 + v31;
    v39 = v289;
    v295 = v37 - v289;
    v40 = v297;
    goto LABEL_25;
  }

  if (!v8)
  {
    v38 = 0;
    v35 = 0;
    v295 = 0;
    v36 = 0;
    v40 = v297;
    v39 = v289;
    v34 = v301;
LABEL_25:
    v43 = v290;
    goto LABEL_26;
  }

  v20.n128_u64[0] = shape_enum_clip_alloc(v18, v19, v8, 1, 1, 1, v31, v32, v3, v300);
  if (!*&v41)
  {
    goto LABEL_609;
  }

  v36 = 0;
  v42 = ((v14 * v4 + 15) & 0xFFFFFFF0);
  if (!v14)
  {
    v42 = 4 * v4;
  }

  v43 = v290;
  v295 = -v289;
  v38 = (v29 + v42 + 16);
  v40 = v297;
  v34 = v301;
  v35 = v41;
  while (1)
  {
LABEL_17:
    while (1)
    {
      v44 = *(v38 - 4);
      v45 = v44 - v36;
      if (v44 <= v36)
      {
        break;
      }

      v300 -= v45;
      if (v300 < 1)
      {
        goto LABEL_608;
      }

      v34 += *(v40 + 128) * v45;
      v43 += *(v40 + 136) * v45;
      v30 += v286 * v45;
      v36 = v44;
    }

    if (v36 < *(v38 - 3) + v44)
    {
      break;
    }

    if (!shape_enum_clip_scan(v35, v38 - 4))
    {
LABEL_608:
      free(v35);
      goto LABEL_609;
    }
  }

  v39 = v289;
LABEL_26:
  v292 = (v3 - 1);
  v291 = -v39;
  v294 = v287 - 4;
  v46 = v35;
  while (2)
  {
    v299 = v46;
    v47 = *v40;
    v301 = v34;
    v47(v40, v34, v43, v3, v20);
    v48 = *(v40 + 160);
    v49 = *(v40 + 144);
    v51 = *(v40 + 8);
    v50 = *(v40 + 12);
    LODWORD(v302) = v36;
    if (v51 == v50)
    {
      if (v24 != 255)
      {
        v52 = v3;
        v53 = v49;
        do
        {
          if (*v53)
          {
            *v48 = PDM_21869(*v48, v24);
          }

          ++v53;
          ++v48;
          --v52;
        }

        while (v52);
        v48 += v291;
        v49 += v292 + v291 + 1;
        goto LABEL_34;
      }

      v54 = v298;
    }

    else
    {
      v60 = *(v40 + 152);
      v61 = HIWORD(v51) & 0x3F;
      if (v61 == 16)
      {
        if (v50 == 134755144)
        {
          if (v24 == 255)
          {
            v106 = 0;
            v54 = v298;
            do
            {
              if (v49[v106])
              {
                v48[v106] = *(v60 + 8 * v106) & 0xFF00 | HIBYTE(*(v60 + 8 * v106)) | (*(v60 + 8 * v106) >> 16) & 0xFF000000 | (BYTE3(*(v60 + 8 * v106)) << 16);
              }

              ++v106;
            }

            while (v3 != v106);
            goto LABEL_35;
          }

          v72 = 0;
          do
          {
            if (v49[v72])
            {
              v48[v72] = PDM_21869(*(v60 + 8 * v72) & 0xFF00 | HIBYTE(*(v60 + 8 * v72)) | (*(v60 + 8 * v72) >> 16) & 0xFF000000 | (BYTE3(*(v60 + 8 * v72)) << 16), v24);
            }

            ++v72;
          }

          while (v3 != v72);
        }

        else
        {
          if (v24 == 255)
          {
            v107 = 0;
            v54 = v298;
            do
            {
              if (v49[v107])
              {
                v48[v107] = HIBYTE(*(v60 + 8 * v107)) | (BYTE1(*(v60 + 8 * v107)) << 24) | (BYTE3(*(v60 + 8 * v107)) << 16) | HIDWORD(*(v60 + 8 * v107)) & 0xFF00;
              }

              ++v107;
            }

            while (v3 != v107);
            goto LABEL_35;
          }

          v84 = 0;
          do
          {
            if (v49[v84])
            {
              v48[v84] = PDM_21869(HIBYTE(*(v60 + 8 * v84)) | (BYTE1(*(v60 + 8 * v84)) << 24) | (BYTE3(*(v60 + 8 * v84)) << 16) | HIDWORD(*(v60 + 8 * v84)) & 0xFF00, v24);
            }

            ++v84;
          }

          while (v3 != v84);
        }

        goto LABEL_34;
      }

      if (v61 != 32)
      {
        if (v50 == 134755144)
        {
          if (v24 == 255)
          {
            v108 = 0;
            v54 = v298;
            do
            {
              if (v49[v108])
              {
                v48[v108] = *(v60 + 4 * v108) & 0xFF00FF | (HIBYTE(*(v60 + 4 * v108)) << 8) & 0xFFFFFF | (BYTE1(*(v60 + 4 * v108)) << 24);
              }

              ++v108;
            }

            while (v3 != v108);
            goto LABEL_35;
          }

          v73 = 0;
          do
          {
            if (v49[v73])
            {
              v48[v73] = PDM_21869(*(v60 + 4 * v73) & 0xFF00FF | (HIBYTE(*(v60 + 4 * v73)) << 8) & 0xFFFFFF | (BYTE1(*(v60 + 4 * v73)) << 24), v24);
            }

            ++v73;
          }

          while (v3 != v73);
        }

        else
        {
          if (v24 == 255)
          {
            v109 = 0;
            v54 = v298;
            do
            {
              if (v49[v109])
              {
                v48[v109] = *(v60 + 4 * v109);
              }

              ++v109;
            }

            while (v3 != v109);
            goto LABEL_35;
          }

          v85 = 0;
          do
          {
            if (v49[v85])
            {
              v48[v85] = PDM_21869(*(v60 + 4 * v85), v24);
            }

            ++v85;
          }

          while (v3 != v85);
        }

LABEL_34:
        v54 = v298;
LABEL_35:
        v36 = v302;
        goto LABEL_36;
      }

      if (v50 == 134755144)
      {
        if (v24 != 255)
        {
          v62 = 0;
          v63 = v60 + 8;
          do
          {
            if (v49[v62])
            {
              v20.n128_u32[0] = *(v63 + 4);
              if (v20.n128_f32[0] <= 0.0)
              {
                v71 = 0;
              }

              else
              {
                v64 = *(v63 - 8);
                v65 = *(v63 - 4);
                v66 = *v63;
                v67 = ((v20.n128_f32[0] * 255.0) + 0.5);
                if (v20.n128_f32[0] > 1.0)
                {
                  v67 = 255;
                  v20.n128_f32[0] = 1.0;
                }

                v68 = ((v64 * 255.0) + 0.5);
                if (v64 < 0.0)
                {
                  v68 = 0;
                }

                if (v64 > v20.n128_f32[0])
                {
                  v68 = v67;
                }

                v69 = ((v65 * 255.0) + 0.5);
                if (v65 < 0.0)
                {
                  v69 = 0;
                }

                if (v65 > v20.n128_f32[0])
                {
                  v69 = v67;
                }

                v70 = ((v66 * 255.0) + 0.5);
                if (v66 < 0.0)
                {
                  v70 = 0;
                }

                if (v66 > v20.n128_f32[0])
                {
                  v70 = v67;
                }

                v71 = PDM_21869((v68 << 8) | (v69 << 16) | (v70 << 24) | v67, v24);
              }

              v48[v62] = v71;
            }

            ++v62;
            v63 += 16;
          }

          while (v3 != v62);
          goto LABEL_34;
        }

        v86 = 0;
        v87 = v60 + 8;
        v54 = v298;
        v36 = v302;
        do
        {
          if (v49[v86])
          {
            v20.n128_u32[0] = *(v87 + 4);
            if (v20.n128_f32[0] <= 0.0)
            {
              v95 = 0;
            }

            else
            {
              v88 = *(v87 - 8);
              v89 = *(v87 - 4);
              v90 = *v87;
              v91 = ((v20.n128_f32[0] * 255.0) + 0.5);
              if (v20.n128_f32[0] > 1.0)
              {
                v91 = 255;
                v20.n128_f32[0] = 1.0;
              }

              v92 = ((v88 * 255.0) + 0.5);
              if (v88 < 0.0)
              {
                v92 = 0;
              }

              if (v88 > v20.n128_f32[0])
              {
                v92 = v91;
              }

              v93 = ((v89 * 255.0) + 0.5);
              if (v89 < 0.0)
              {
                v93 = 0;
              }

              if (v89 > v20.n128_f32[0])
              {
                v93 = v91;
              }

              v94 = ((v90 * 255.0) + 0.5);
              if (v90 < 0.0)
              {
                v94 = 0;
              }

              if (v90 > v20.n128_f32[0])
              {
                v94 = v91;
              }

              v95 = (v92 << 8) | (v93 << 16) | (v94 << 24) | v91;
            }

            v48[v86] = v95;
          }

          ++v86;
          v87 += 16;
        }

        while (v3 != v86);
      }

      else
      {
        if (v24 != 255)
        {
          v74 = 0;
          v75 = v60 + 8;
          do
          {
            if (v49[v74])
            {
              v20.n128_u32[0] = *(v75 + 4);
              if (v20.n128_f32[0] <= 0.0)
              {
                v83 = 0;
              }

              else
              {
                v76 = *(v75 - 8);
                v77 = *(v75 - 4);
                v78 = *v75;
                v79 = ((v20.n128_f32[0] * 255.0) + 0.5);
                if (v20.n128_f32[0] > 1.0)
                {
                  v79 = 255;
                  v20.n128_f32[0] = 1.0;
                }

                v80 = ((v76 * 255.0) + 0.5);
                if (v76 < 0.0)
                {
                  v80 = 0;
                }

                if (v76 > v20.n128_f32[0])
                {
                  v80 = v79;
                }

                v81 = ((v77 * 255.0) + 0.5);
                if (v77 < 0.0)
                {
                  v81 = 0;
                }

                if (v77 > v20.n128_f32[0])
                {
                  v81 = v79;
                }

                v82 = ((v78 * 255.0) + 0.5);
                if (v78 < 0.0)
                {
                  v82 = 0;
                }

                if (v78 > v20.n128_f32[0])
                {
                  v82 = v79;
                }

                v83 = PDM_21869((v80 << 24) | (v81 << 16) | (v82 << 8) | v79, v24);
              }

              v48[v74] = v83;
            }

            ++v74;
            v75 += 16;
          }

          while (v3 != v74);
          goto LABEL_34;
        }

        v96 = 0;
        v97 = v60 + 8;
        v54 = v298;
        v36 = v302;
        do
        {
          if (v49[v96])
          {
            v20.n128_u32[0] = *(v97 + 4);
            if (v20.n128_f32[0] <= 0.0)
            {
              v105 = 0;
            }

            else
            {
              v98 = *(v97 - 8);
              v99 = *(v97 - 4);
              v100 = *v97;
              v101 = ((v20.n128_f32[0] * 255.0) + 0.5);
              if (v20.n128_f32[0] > 1.0)
              {
                v101 = 255;
                v20.n128_f32[0] = 1.0;
              }

              v102 = ((v98 * 255.0) + 0.5);
              if (v98 < 0.0)
              {
                v102 = 0;
              }

              if (v98 > v20.n128_f32[0])
              {
                v102 = v101;
              }

              v103 = ((v99 * 255.0) + 0.5);
              if (v99 < 0.0)
              {
                v103 = 0;
              }

              if (v99 > v20.n128_f32[0])
              {
                v103 = v101;
              }

              v104 = ((v100 * 255.0) + 0.5);
              if (v100 < 0.0)
              {
                v104 = 0;
              }

              if (v100 > v20.n128_f32[0])
              {
                v104 = v101;
              }

              v105 = (v102 << 24) | (v103 << 16) | (v104 << 8) | v101;
            }

            v48[v96] = v105;
          }

          ++v96;
          v97 += 16;
        }

        while (v3 != v96);
      }
    }

LABEL_36:
    switch(v54)
    {
      case 0:
        v55 = v3;
        v56 = v38;
        do
        {
          v57 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v57 = (*v56 * v57 + ((*v56 * v57) >> 8) + 1) >> 8;
            }

            if (v57)
            {
              if (v57 == 255)
              {
                v58 = 0;
              }

              else
              {
                v58 = PDM_21869(*v30, ~v57);
              }

              *v30 = v58;
            }
          }

          ++v49;
          v56 += v38 != 0;
          ++v30;
          --v55;
        }

        while (v55);
        v59 = v296;
        v38 = &v56[v295];
        goto LABEL_577;
      case 1:
        v182 = *v49;
        v183 = v49 + 1;
        v184 = v3;
        if (v38)
        {
          do
          {
            if (v182)
            {
              v185 = *v38 * v182 + ((*v38 * v182) >> 8) + 1;
              v186 = v294;
              if (v294 >= v30)
              {
                v186 = v30;
              }

              if (v186 >= *(v293 + 40))
              {
                v165 = v186;
              }

              else
              {
                v165 = *(v293 + 40);
              }

              if (BYTE1(v185))
              {
                if (BYTE1(v185) == 255)
                {
                  *v165 = *v48;
                }

                else
                {
                  DMplusDM_21870(v165, *v48, BYTE1(v185), *v165, ~(v185 >> 8));
                }
              }
            }

            else
            {
              v165 = v30;
            }

            v187 = *v183++;
            v182 = v187;
            ++v48;
            ++v38;
            v30 = v165 + 1;
            --v184;
          }

          while (v184);
          v38 += v295;
        }

        else
        {
          v283 = v293;
          do
          {
            v284 = v294;
            if (v294 >= v30)
            {
              v284 = v30;
            }

            if (v284 >= *(v283 + 40))
            {
              v165 = v284;
            }

            else
            {
              v165 = *(v283 + 40);
            }

            if (v182)
            {
              if (v182 == 255)
              {
                *v165 = *v48;
              }

              else
              {
                DMplusDM_21870(v165, *v48, v182, *v165, ~v182);
              }
            }

            v285 = *v183++;
            v182 = v285;
            ++v48;
            v30 = v165 + 1;
            --v184;
          }

          while (v184);
          v38 = 0;
        }

        goto LABEL_606;
      case 2:
        v162 = *v49;
        if (v38)
        {
          v163 = v49 + 1;
          v164 = v3;
          while (1)
          {
            v165 = v30;
            if (!v162)
            {
              goto LABEL_306;
            }

            v166 = *v38 * v162 + ((*v38 * v162) >> 8) + 1;
            if (!BYTE1(v166))
            {
              goto LABEL_306;
            }

            if (BYTE1(v166) == 255)
            {
              v167 = *v48;
              if (*v48)
              {
                if (*v48 != 255)
                {
                  goto LABEL_305;
                }

                *v30 = v167;
              }
            }

            else
            {
              v168 = PDM_21869(*v48, BYTE1(v166));
              if (v168)
              {
                v167 = v168;
LABEL_305:
                DplusDM_21871(v30, v167, *v30, ~v167);
              }
            }

LABEL_306:
            v169 = *v163++;
            v162 = v169;
            ++v48;
            ++v38;
            ++v30;
            if (!--v164)
            {
              v38 += v295;
              v40 = v297;
              goto LABEL_606;
            }
          }
        }

        v278 = v49 + 1;
        v279 = v3;
        do
        {
          if (!v162)
          {
            goto LABEL_592;
          }

          if (v162 == 255)
          {
            v280 = *v48;
            if (!*v48)
            {
              goto LABEL_592;
            }

            if (*v48 == 255)
            {
              *v30 = v280;
              goto LABEL_592;
            }
          }

          else
          {
            v281 = PDM_21869(*v48, v162);
            if (!v281)
            {
              goto LABEL_592;
            }

            v280 = v281;
          }

          DplusDM_21871(v30, v280, *v30, ~v280);
LABEL_592:
          v282 = *v278++;
          v162 = v282;
          ++v48;
          ++v30;
          --v279;
        }

        while (v279);
        v38 = 0;
        v165 = v30 - 1;
LABEL_606:
        v30 = &v165[v296 + 1];
LABEL_578:
        v149 = v301;
LABEL_579:
        v35 = v299;
        v36 = v302;
LABEL_580:
        if (v300 != 1)
        {
          --v300;
          v46 = 0;
          ++v36;
          v34 = *(v40 + 128) + v149;
          v43 += *(v40 + 136);
          if (v35)
          {
            goto LABEL_17;
          }

          continue;
        }

        if (v35)
        {
          goto LABEL_608;
        }

LABEL_609:
        if (v288)
        {
          free(v288);
        }

        return;
      case 3:
        v176 = v3;
        v130 = v38;
        do
        {
          v177 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v177 = (*v130 * v177 + ((*v130 * v177) >> 8) + 1) >> 8;
            }

            if (v177)
            {
              if (v177 == 255)
              {
                *v30 = PDM_21869(*v48, *v30);
              }

              else
              {
                v178 = *v30 * v177 + 128;
                DMplusDM_21870(v30, *v48, (v178 + (v178 >> 8)) >> 8, *v30, ~v177);
              }
            }
          }

          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          --v176;
        }

        while (v176);
        goto LABEL_561;
      case 4:
        v136 = v3;
        v130 = v38;
        do
        {
          v137 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v137 = (*v130 * v137 + ((*v130 * v137) >> 8) + 1) >> 8;
            }

            if (v137)
            {
              if (v137 == 255)
              {
                *v30 = PDM_21869(*v48, *v30 ^ 0xFFu);
              }

              else
              {
                v138 = ~*v30 * v137 + 128;
                DMplusDM_21870(v30, *v48, (v138 + (v138 >> 8)) >> 8, *v30, ~v137);
              }
            }
          }

          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          --v136;
        }

        while (v136);
        goto LABEL_561;
      case 5:
        v206 = v3;
        v130 = v38;
        while (1)
        {
          v207 = *v49;
          if (*v49)
          {
            if (!v38)
            {
              goto LABEL_403;
            }

            v208 = *v130 * v207 + ((*v130 * v207) >> 8) + 1;
            if (v208 >= 0x100)
            {
              break;
            }
          }

LABEL_404:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v206)
          {
            goto LABEL_561;
          }
        }

        v207 = v208 >> 8;
LABEL_403:
        v209 = PDM_21869(*v48, v207);
        DMplusDM_21870(v30, v209, *v30, *v30, ~v209);
        goto LABEL_404;
      case 6:
        v222 = v3;
        v130 = v38;
        while (1)
        {
          v223 = *v49;
          if (*v49)
          {
            if (!v38)
            {
              goto LABEL_439;
            }

            v224 = *v130 * v223 + ((*v130 * v223) >> 8) + 1;
            if (v224 >= 0x100)
            {
              break;
            }
          }

LABEL_443:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v222)
          {
            goto LABEL_561;
          }
        }

        v223 = v224 >> 8;
LABEL_439:
        if (*v30 != 0xFF)
        {
          if (~*v30 == 255)
          {
            *v30 = PDM_21869(*v48, v223);
          }

          else
          {
            DplusDM_21871(v30, *v30, *v48, (~*v30 * v223 + 128 + ((~*v30 * v223 + 128) >> 8)) >> 8);
          }
        }

        goto LABEL_443;
      case 7:
        v179 = v3;
        v130 = v38;
        do
        {
          v180 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v180 = (*v130 * v180 + ((*v130 * v180) >> 8) + 1) >> 8;
            }

            if (v180)
            {
              if (v180 == 255)
              {
                *v30 = PDM_21869(*v30, *v48);
              }

              else
              {
                v181 = *v48 * v180 + 128;
                DMplusDM_21870(v30, *v30, (v181 + (v181 >> 8)) >> 8, *v30, ~v180);
              }
            }
          }

          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          --v179;
        }

        while (v179);
        goto LABEL_561;
      case 8:
        v235 = v3;
        v130 = v38;
        do
        {
          v236 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v236 = (*v130 * v236 + ((*v130 * v236) >> 8) + 1) >> 8;
            }

            if (v236)
            {
              if (v236 == 255)
              {
                *v30 = PDM_21869(*v30, *v48 ^ 0xFFu);
              }

              else
              {
                v237 = (*v48 ^ 0xFF) * v236 + 128;
                DMplusDM_21870(v30, *v30, (v237 + (v237 >> 8)) >> 8, *v30, ~v236);
              }
            }
          }

          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          --v235;
        }

        while (v235);
        goto LABEL_561;
      case 9:
        v290 = v43;
        v144 = v3;
        v145 = v38;
        while (1)
        {
          v146 = *v49;
          if (*v49)
          {
            if (!v38)
            {
              goto LABEL_264;
            }

            v147 = *v145 * v146 + ((*v145 * v146) >> 8) + 1;
            if (v147 >= 0x100)
            {
              break;
            }
          }

LABEL_265:
          ++v49;
          ++v48;
          v145 += v38 != 0;
          ++v30;
          if (!--v144)
          {
            v38 = &v145[v295];
            v30 += v296;
            v40 = v297;
            v149 = v301;
            v43 = v290;
            goto LABEL_579;
          }
        }

        v146 = v147 >> 8;
LABEL_264:
        v148 = PDM_21869(*v48, v146);
        DMplusDM_21870(v30, v148, ~*v30, *v30, (v148 + ~v146));
        goto LABEL_265;
      case 10:
        v231 = v3;
        v130 = v38;
        while (1)
        {
          v232 = *v49;
          if (*v49)
          {
            if (!v38)
            {
              goto LABEL_464;
            }

            v233 = *v130 * v232 + ((*v130 * v232) >> 8) + 1;
            if (v233 >= 0x100)
            {
              break;
            }
          }

LABEL_465:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v231)
          {
            goto LABEL_561;
          }
        }

        v232 = v233 >> 8;
LABEL_464:
        v234 = PDM_21869(*v48, v232);
        DMplusDM_21870(v30, v234, ~*v30, *v30, ~v234);
        goto LABEL_465;
      case 11:
        v129 = v3;
        v130 = v38;
        while (1)
        {
          v131 = *v49;
          if (*v49)
          {
            if (!v38)
            {
              goto LABEL_235;
            }

            v132 = *v130 * v131 + ((*v130 * v131) >> 8) + 1;
            if (v132 >= 0x100)
            {
              break;
            }
          }

LABEL_239:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v129)
          {
            goto LABEL_561;
          }
        }

        v131 = v132 >> 8;
LABEL_235:
        v133 = PDM_21869(*v48, v131);
        if (v303)
        {
          v135 = *v30;
        }

        else
        {
          v135 = -1;
        }

        v20.n128_u64[0] = DAplusdDA_21872(v30, *v30, v135, v133, v133, v134);
        goto LABEL_239;
      case 12:
        v139 = v3;
        v130 = v38;
        while (1)
        {
          v140 = *v49;
          if (*v49)
          {
            if (!v38)
            {
              goto LABEL_256;
            }

            v141 = *v130 * v140 + ((*v130 * v140) >> 8) + 1;
            if (v141 >= 0x100)
            {
              break;
            }
          }

LABEL_257:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v139)
          {
            goto LABEL_561;
          }
        }

        v140 = v141 >> 8;
LABEL_256:
        v142 = PDM_21869(*v48, v140);
        v143 = ((*v30 >> 8) & 0xFF00FF) + ((v142 >> 8) & 0xFF00FF);
        *v30 = (v143 << 8) & 0xFF00FF00 | ((*v30 & 0xFF00FF) + (v142 & 0xFF00FF)) & 0xFF00FF | (15 * (v143 & 0x1000100 | (((*v30 & 0xFF00FF) + (v142 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v143 & 0x1000100 | (((*v30 & 0xFF00FF) + (v142 & 0xFF00FF)) >> 8) & 0x10001));
        goto LABEL_257;
      case 13:
        v216 = v3;
        v111 = v38;
        while (1)
        {
          v217 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v218 = *v111 * v217 + ((*v111 * v217) >> 8) + 1;
              if (v218 < 0x100)
              {
                goto LABEL_432;
              }

              v217 = v218 >> 8;
            }

            v219 = PDM_21869(*v48, v217);
            if (v219)
            {
              v220 = v219;
              if (v303)
              {
                v221 = *v30;
                if (!*v30)
                {
                  goto LABEL_431;
                }
              }

              else
              {
                LOBYTE(v221) = -1;
              }

              v220 = PDAmultiplyPDA_21873(*v30, v221, v219, v219);
LABEL_431:
              *v30 = v220;
            }
          }

LABEL_432:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v216)
          {
            goto LABEL_575;
          }
        }

      case 14:
        v123 = v3;
        v111 = v38;
        while (1)
        {
          v124 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v125 = *v111 * v124 + ((*v111 * v124) >> 8) + 1;
              if (v125 < 0x100)
              {
                goto LABEL_228;
              }

              v124 = v125 >> 8;
            }

            v126 = PDM_21869(*v48, v124);
            if (v126)
            {
              v127 = v126;
              if (v303)
              {
                v128 = *v30;
                if (!*v30)
                {
                  goto LABEL_227;
                }
              }

              else
              {
                LOBYTE(v128) = -1;
              }

              v127 = PDAscreenPDA_21874(*v30, v128, v126, v126);
LABEL_227:
              *v30 = v127;
            }
          }

LABEL_228:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v123)
          {
            goto LABEL_575;
          }
        }

      case 15:
        v170 = v3;
        v111 = v38;
        while (1)
        {
          v171 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v172 = *v111 * v171 + ((*v111 * v171) >> 8) + 1;
              if (v172 < 0x100)
              {
                goto LABEL_320;
              }

              v171 = v172 >> 8;
            }

            v173 = PDM_21869(*v48, v171);
            if (v173)
            {
              v174 = v173;
              if (v303)
              {
                v175 = *v30;
                if (!*v30)
                {
                  goto LABEL_319;
                }
              }

              else
              {
                LOBYTE(v175) = -1;
              }

              v174 = PDAoverlayPDA_21875(*v30, v175, v173, v173);
LABEL_319:
              *v30 = v174;
            }
          }

LABEL_320:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v170)
          {
            goto LABEL_575;
          }
        }

      case 16:
        v117 = v3;
        v111 = v38;
        while (1)
        {
          v118 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v119 = *v111 * v118 + ((*v111 * v118) >> 8) + 1;
              if (v119 < 0x100)
              {
                goto LABEL_214;
              }

              v118 = v119 >> 8;
            }

            v120 = PDM_21869(*v48, v118);
            if (v120)
            {
              v121 = v120;
              if (v303)
              {
                v122 = *v30;
                if (!*v30)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                LOBYTE(v122) = -1;
              }

              v121 = PDAdarkenPDA_21877(*v30, v122, v120, v120);
LABEL_213:
              *v30 = v121;
            }
          }

LABEL_214:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v117)
          {
            goto LABEL_575;
          }
        }

      case 17:
        v194 = v3;
        v111 = v38;
        while (1)
        {
          v195 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v196 = *v111 * v195 + ((*v111 * v195) >> 8) + 1;
              if (v196 < 0x100)
              {
                goto LABEL_382;
              }

              v195 = v196 >> 8;
            }

            v197 = PDM_21869(*v48, v195);
            if (v197)
            {
              v198 = v197;
              if (v303)
              {
                v199 = *v30;
                if (!*v30)
                {
                  goto LABEL_381;
                }
              }

              else
              {
                LOBYTE(v199) = -1;
              }

              v198 = PDAlightenPDA_21876(*v30, v199, v197, v197);
LABEL_381:
              *v30 = v198;
            }
          }

LABEL_382:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v194)
          {
            goto LABEL_575;
          }
        }

      case 18:
        v225 = v3;
        v111 = v38;
        while (1)
        {
          v226 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v227 = *v111 * v226 + ((*v111 * v226) >> 8) + 1;
              if (v227 < 0x100)
              {
                goto LABEL_457;
              }

              v226 = v227 >> 8;
            }

            v228 = PDM_21869(*v48, v226);
            if (v228)
            {
              v229 = v228;
              if (v303)
              {
                v230 = *v30;
                if (!*v30)
                {
                  goto LABEL_456;
                }
              }

              else
              {
                LOBYTE(v230) = -1;
              }

              v229 = PDAcolordodgePDA_21878(*v30, v230, v228, v228);
LABEL_456:
              *v30 = v229;
            }
          }

LABEL_457:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v225)
          {
            goto LABEL_575;
          }
        }

      case 19:
        v249 = v3;
        v111 = v38;
        while (1)
        {
          v250 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v251 = *v111 * v250 + ((*v111 * v250) >> 8) + 1;
              if (v251 < 0x100)
              {
                goto LABEL_518;
              }

              v250 = v251 >> 8;
            }

            v252 = PDM_21869(*v48, v250);
            if (v252)
            {
              v253 = v252;
              if (v303)
              {
                v254 = *v30;
                if (!*v30)
                {
                  goto LABEL_517;
                }
              }

              else
              {
                LOBYTE(v254) = -1;
              }

              v253 = PDAcolorburnPDA_21879(*v30, v254, v252, v252);
LABEL_517:
              *v30 = v253;
            }
          }

LABEL_518:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v249)
          {
            goto LABEL_575;
          }
        }

      case 20:
        v200 = v3;
        v111 = v38;
        while (1)
        {
          v201 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v202 = *v111 * v201 + ((*v111 * v201) >> 8) + 1;
              if (v202 < 0x100)
              {
                goto LABEL_396;
              }

              v201 = v202 >> 8;
            }

            v203 = PDM_21869(*v48, v201);
            if (v203)
            {
              v204 = v203;
              if (v303)
              {
                v205 = *v30;
                if (!*v30)
                {
                  goto LABEL_395;
                }
              }

              else
              {
                LOBYTE(v205) = -1;
              }

              v204 = PDAsoftlightPDA_21881(*v30, v205, v203, v203);
LABEL_395:
              *v30 = v204;
            }
          }

LABEL_396:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v200)
          {
            goto LABEL_575;
          }
        }

      case 21:
        v210 = v3;
        v111 = v38;
        while (1)
        {
          v211 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v212 = *v111 * v211 + ((*v111 * v211) >> 8) + 1;
              if (v212 < 0x100)
              {
                goto LABEL_418;
              }

              v211 = v212 >> 8;
            }

            v213 = PDM_21869(*v48, v211);
            if (v213)
            {
              v214 = v213;
              if (v303)
              {
                v215 = *v30;
                if (!*v30)
                {
                  goto LABEL_417;
                }
              }

              else
              {
                LOBYTE(v215) = -1;
              }

              v214 = PDAhardlightPDA_21880(*v30, v215, v213, v213);
LABEL_417:
              *v30 = v214;
            }
          }

LABEL_418:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v210)
          {
            goto LABEL_575;
          }
        }

      case 22:
        v243 = v3;
        v111 = v38;
        while (1)
        {
          v244 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v245 = *v111 * v244 + ((*v111 * v244) >> 8) + 1;
              if (v245 < 0x100)
              {
                goto LABEL_504;
              }

              v244 = v245 >> 8;
            }

            v246 = PDM_21869(*v48, v244);
            if (v246)
            {
              v247 = v246;
              if (v303)
              {
                v248 = *v30;
                if (!*v30)
                {
                  goto LABEL_503;
                }
              }

              else
              {
                LOBYTE(v248) = -1;
              }

              v247 = PDAdifferencePDA_21882(*v30, v248, v246, v246);
LABEL_503:
              *v30 = v247;
            }
          }

LABEL_504:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v243)
          {
            goto LABEL_575;
          }
        }

      case 23:
        v255 = v3;
        v111 = v38;
        while (1)
        {
          v256 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v257 = *v111 * v256 + ((*v111 * v256) >> 8) + 1;
              if (v257 < 0x100)
              {
                goto LABEL_532;
              }

              v256 = v257 >> 8;
            }

            v258 = PDM_21869(*v48, v256);
            if (v258)
            {
              v259 = v258;
              if (v303)
              {
                v260 = *v30;
                if (!*v30)
                {
                  goto LABEL_531;
                }
              }

              else
              {
                LOBYTE(v260) = -1;
              }

              v259 = PDAexclusionPDA_21883(*v30, v260, v258, v258);
LABEL_531:
              *v30 = v259;
            }
          }

LABEL_532:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v255)
          {
            goto LABEL_575;
          }
        }

      case 24:
        v156 = v3;
        v111 = v38;
        while (1)
        {
          v157 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v158 = *v111 * v157 + ((*v111 * v157) >> 8) + 1;
              if (v158 < 0x100)
              {
                goto LABEL_293;
              }

              v157 = v158 >> 8;
            }

            v159 = PDM_21869(*v48, v157);
            if (v159)
            {
              v160 = v159;
              if (v303)
              {
                v161 = *v30;
                if (!*v30)
                {
                  goto LABEL_292;
                }
              }

              else
              {
                LOBYTE(v161) = -1;
              }

              v160 = PDAhuePDA_21884(*v30, v161, v159, v159);
LABEL_292:
              *v30 = v160;
            }
          }

LABEL_293:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v156)
          {
            goto LABEL_575;
          }
        }

      case 25:
        v150 = v3;
        v111 = v38;
        while (1)
        {
          v151 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v152 = *v111 * v151 + ((*v111 * v151) >> 8) + 1;
              if (v152 < 0x100)
              {
                goto LABEL_279;
              }

              v151 = v152 >> 8;
            }

            v153 = PDM_21869(*v48, v151);
            if (v153)
            {
              v154 = v153;
              if (v303)
              {
                v155 = *v30;
                if (!*v30)
                {
                  goto LABEL_278;
                }
              }

              else
              {
                LOBYTE(v155) = -1;
              }

              v154 = PDAsaturationPDA_21885(*v30, v155, v153, v153);
LABEL_278:
              *v30 = v154;
            }
          }

LABEL_279:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v150)
          {
            goto LABEL_575;
          }
        }

      case 26:
        v273 = v3;
        v111 = v38;
        while (1)
        {
          v274 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v275 = *v111 * v274 + ((*v111 * v274) >> 8) + 1;
              if (v275 < 0x100)
              {
                goto LABEL_574;
              }

              v274 = v275 >> 8;
            }

            v276 = PDM_21869(*v48, v274);
            if (v276)
            {
              if (v303)
              {
                v277 = *v30;
                if (!*v30)
                {
                  goto LABEL_573;
                }
              }

              else
              {
                LOBYTE(v277) = -1;
              }

              v276 = PDAluminosityPDA_21886(v276, v276, *v30, v277);
LABEL_573:
              *v30 = v276;
            }
          }

LABEL_574:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v273)
          {
            goto LABEL_575;
          }
        }

      case 27:
        v110 = v3;
        v111 = v38;
        while (1)
        {
          v112 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v113 = *v111 * v112 + ((*v111 * v112) >> 8) + 1;
              if (v113 < 0x100)
              {
                goto LABEL_200;
              }

              v112 = v113 >> 8;
            }

            v114 = PDM_21869(*v48, v112);
            if (v114)
            {
              v115 = v114;
              if (v303)
              {
                v116 = *v30;
                if (!*v30)
                {
                  goto LABEL_199;
                }
              }

              else
              {
                LOBYTE(v116) = -1;
              }

              v115 = PDAluminosityPDA_21886(*v30, v116, v114, v114);
LABEL_199:
              *v30 = v115;
            }
          }

LABEL_200:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v110)
          {
            goto LABEL_575;
          }
        }

      case 28:
        v261 = v3;
        v111 = v38;
        while (1)
        {
          v262 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v263 = *v111 * v262 + ((*v111 * v262) >> 8) + 1;
              if (v263 < 0x100)
              {
                goto LABEL_546;
              }

              v262 = v263 >> 8;
            }

            v264 = PDM_21869(*v48, v262);
            if (v264)
            {
              v265 = v264;
              if (v303)
              {
                v266 = *v30;
                if (!*v30)
                {
                  goto LABEL_545;
                }
              }

              else
              {
                LOBYTE(v266) = -1;
              }

              v265 = PDAtranspose_huePDA_21887(*v30, v266, v264, v264);
LABEL_545:
              *v30 = v265;
            }
          }

LABEL_546:
          ++v49;
          ++v48;
          v111 += v38 != 0;
          ++v30;
          if (!--v261)
          {
LABEL_575:
            v38 = &v111[v295];
LABEL_576:
            v59 = v296;
            v40 = v297;
LABEL_577:
            v30 += v59;
            goto LABEL_578;
          }
        }

      case 29:
        v130 = v38;
        v267 = v3;
        while (1)
        {
          v268 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v269 = *v130 * v268 + ((*v130 * v268) >> 8) + 1;
              if (v269 < 0x100)
              {
                goto LABEL_560;
              }

              v268 = v269 >> 8;
            }

            v270 = PDM_21869(*v48, v268);
            if (v270)
            {
              v271 = v270;
              if (v303)
              {
                v272 = *v30;
                if (!*v30)
                {
                  goto LABEL_559;
                }
              }

              else
              {
                LOBYTE(v272) = -1;
              }

              v271 = PDAtranspose_saturationPDA_21888(*v30, v272, v270, v270);
LABEL_559:
              *v30 = v271;
            }
          }

LABEL_560:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v267)
          {
            goto LABEL_561;
          }
        }

      case 30:
        v130 = v38;
        v238 = v3;
        while (1)
        {
          v239 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v240 = *v130 * v239 + ((*v130 * v239) >> 8) + 1;
              if (v240 < 0x100)
              {
                goto LABEL_489;
              }

              v239 = v240 >> 8;
            }

            v241 = PDM_21869(*v48, v239);
            if (v241)
            {
              if (v303)
              {
                v242 = *v30;
                if (!*v30)
                {
                  goto LABEL_488;
                }
              }

              else
              {
                LOBYTE(v242) = -1;
              }

              v241 = PDAtranspose_luminosityPDA_21889(v241, v241, *v30, v242);
LABEL_488:
              *v30 = v241;
            }
          }

LABEL_489:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v238)
          {
            goto LABEL_561;
          }
        }

      case 31:
        v130 = v38;
        v188 = v3;
        while (1)
        {
          v189 = *v49;
          if (*v49)
          {
            if (v38)
            {
              v190 = *v130 * v189 + ((*v130 * v189) >> 8) + 1;
              if (v190 < 0x100)
              {
                goto LABEL_368;
              }

              v189 = v190 >> 8;
            }

            v191 = PDM_21869(*v48, v189);
            if (v191)
            {
              v192 = v191;
              if (v303)
              {
                v193 = *v30;
                if (!*v30)
                {
                  goto LABEL_367;
                }
              }

              else
              {
                LOBYTE(v193) = -1;
              }

              v192 = PDAtranspose_luminosityPDA_21889(*v30, v193, v191, v191);
LABEL_367:
              *v30 = v192;
            }
          }

LABEL_368:
          ++v49;
          ++v48;
          v130 += v38 != 0;
          ++v30;
          if (!--v188)
          {
LABEL_561:
            v38 = &v130[v295];
            goto LABEL_576;
          }
        }

      default:
        v149 = v301;
        v35 = v299;
        goto LABEL_580;
    }
  }
}

unint64_t PDM_21869(unsigned int a1, int a2)
{
  v2 = ((a1 >> 8) & 0xFF00FF) * (a2 ^ 0xFF) + 8388736;
  v3 = ((((((a1 & 0xFF00FF) * (a2 ^ 0xFF) + 8388736) >> 8) & 0xFF00FF) + (a1 & 0xFF00FF) * (a2 ^ 0xFF) + 8388736) >> 8) & 0xFF00FF | (((v2 >> 8) & 0xFF00FF) + v2) & 0xFF00FF00;
  v4 = (((a1 | (a1 << 40)) >> 8) & 0xFF00FF00FF00FFLL | 0x100010001000100) - (((v3 | (v3 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  return (((v4 & 0x100010001000100) - ((v4 & 0x100010001000100) >> 8)) & v4 | ((((v4 & 0x100010001000100) - ((v4 & 0x100010001000100) >> 8)) & v4) << 40)) >> 32;
}

unsigned int *DMplusDM_21870(unsigned int *result, unsigned int a2, int a3, unsigned int a4, int a5)
{
  v5 = (BYTE1(a4) * a5) + (BYTE1(a2) * a3);
  v6 = ((((a4 >> 8) & 0xFF00FF) * a5) >> 16) + ((((a2 >> 8) & 0xFF00FF) * a3) >> 16);
  if (v5 >= 0xFE79)
  {
    v5 = 65145;
  }

  if (v6 >= 0xFE79)
  {
    v6 = 65145;
  }

  v7 = (a2 & 0xFF00FF) * a3;
  v8 = (a4 * a5) + v7;
  v9 = (((a4 & 0xFF00FF) * a5) >> 16) + HIWORD(v7);
  if (v8 >= 0xFE79)
  {
    v10 = 65145;
  }

  else
  {
    v10 = v8;
  }

  if (v9 >= 0xFE79)
  {
    v11 = 65145;
  }

  else
  {
    v11 = v9;
  }

  *result = ((((((v10 | (v11 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v10 | (v11 << 16)) + 8388736) >> 8) & 0xFF00FF | (((((v5 | (v6 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v5 | (v6 << 16)) + 8388736) & 0xFF00FF00;
  return result;
}

_DWORD *DplusDM_21871(_DWORD *result, unsigned int a2, unsigned int a3, int a4)
{
  v4 = ((((((a3 & 0xFF00FF) * a4 + 8388736) >> 8) & 0xFF00FF) + (a3 & 0xFF00FF) * a4 + 8388736) >> 8) & 0xFF00FF | ((((((a3 >> 8) & 0xFF00FF) * a4 + 8388736) >> 8) & 0xFF00FF) + ((a3 >> 8) & 0xFF00FF) * a4 + 8388736) & 0xFF00FF00;
  v5 = (((v4 | (v4 << 40)) >> 8) & 0xFF00FF00FF00FFLL) + (((a2 | (a2 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  *result = ((((v5 & 0x100010001000100) - ((v5 & 0x100010001000100) >> 8)) | v5) & 0xFF00FF00FF00FFLL | (((((v5 & 0x100010001000100) - ((v5 & 0x100010001000100) >> 8)) | v5) & 0xFF00FF00FF00FFLL) << 40)) >> 32;
  return result;
}

int32x2_t DAplusdDA_21872(_DWORD *a1, int a2, int a3, int a4, int a5, uint64x2_t a6)
{
  a6.i32[0] = a4 & 0xFFFFFF00;
  a6.i16[3] = (a4 & 0xFFFFFF00) >> 8;
  a6.i32[2] = a2 & 0xFFFFFF00;
  a6.i16[7] = (a2 & 0xFFFFFF00) >> 8;
  v6.i64[0] = ((16843008 * a5) | ((257 * a5) << 48)) >> 8;
  v6.i64[1] = ((16843008 * a3) | ((257 * a3) << 48)) >> 8;
  v7.i64[0] = 0xFF00FF00FF00FFLL;
  v7.i64[1] = 0xFF00FF00FF00FFLL;
  v8 = vsubq_s64((*&vandq_s8(v6, v7) | __PAIR128__(0x100010001000100, 0x100010001000100)), vandq_s8(vshrq_n_u64(a6, 8uLL), v7));
  v9 = vandq_s8(vsubq_s64((*&v8 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vshrq_n_u64((*&v8 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), 8uLL)), v8);
  v10 = vorrq_s8(vshlq_n_s64(v9, 0x28uLL), v9);
  *v6.i8 = vshrn_n_s64(v10, 0x20uLL);
  v10.i64[0] = *&vmovn_s64(vshrq_n_u64(v10, 0x28uLL)) & 0xFFFF00FFFFFF00FFLL;
  result = vadd_s32(*v10.i8, vdup_lane_s32(*v10.i8, 1));
  v12 = (v6.i32[0] & 0xFF00FF | a5) + (v6.i32[1] & 0xFF00FF | a3);
  v13 = (result.i32[0] << 8) & 0xFF00FF00 | v12 & 0xFF00FF | (15 * ((v12 >> 8) & 0x10001 | result.i32[0] & 0x1000100)) | (240 * ((v12 >> 8) & 0x10001 | result.i32[0] & 0x1000100));
  v14 = (v13 << 8) | (v13 << 16) & 0xFFFFFF | (v13 << 24);
  v15 = (((v14 & 0xFFFFFFFFFFFFLL | ((v14 >> 8) << 48)) >> 8) & 0xFF00FF00FF00FFLL | 0x100010001000100) - (((v13 & 0xFFFFFF00 | (((v13 & 0xFFFFFF00) >> 8) << 48)) >> 8) & 0xFFFF00FFFFFF00FFLL);
  *a1 = (v12 | (15 * (BYTE1(v12) & 1)) | (-16 * (BYTE1(v12) & 1))) | ((((v15 & 0x100010001000100) - ((v15 & 0x100010001000100) >> 8)) & v15 | ((((v15 & 0x100010001000100) - ((v15 & 0x100010001000100) >> 8)) & v15) << 40)) >> 32);
  return result;
}

uint64_t PDAmultiplyPDA_21873(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = COERCE_DOUBLE(vmul_s32(vadd_s32(vdup_n_s32(a4 ^ 0xFFu), v4), vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)));
  v6 = ((a4 ^ 0xFF) + HIBYTE(a3)) * HIBYTE(a1);
  v7 = COERCE_DOUBLE(vmla_s32(*&v5, v4, vdup_n_s32(a2 ^ 0xFFu)));
  if (a2 != 255)
  {
    v6 += HIBYTE(a3) * (a2 ^ 0xFF);
    v5 = v7;
  }

  v8 = 255 * (a4 + a2) - a4 * a2;
  v9 = v6 + 128;
  if (v6 >> 7 >= 0x1FD)
  {
    v9 = 65152;
  }

  v10 = (v9 + (v9 >> 8)) >> 8;
  if (HIDWORD(v5) >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  else
  {
    v11 = HIDWORD(v5) + 128;
  }

  v12 = v11 + (v11 >> 8);
  if (v8 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v8 + 128;
  }

  v14 = v13 + (v13 >> 8);
  v15 = (257 * LODWORD(v5) + 32896) & 0xFF0000;
  if (LODWORD(v5) >> 7 >= 0x1FD)
  {
    v15 = 16711680;
  }

  return v15 & 0xFFFF00 | BYTE1(v14) | (v10 << 24) | v12 & 0xFF00;
}

uint64_t PDAscreenPDA_21874(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8);
  v5 = vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8);
  v6 = HIBYTE(a3) * (HIBYTE(a1) ^ 0xFF) - HIBYTE(a1) + (HIBYTE(a1) << 8);
  v7 = 255 * (a4 + a2) - a4 * a2;
  v8 = v6 + 128;
  if (v6 >> 7 >= 0x1FD)
  {
    v8 = 65152;
  }

  v9 = (v8 + (v8 >> 8)) >> 8;
  v10 = vand_s8(v4, 0xFF000000FFLL);
  v11 = vmla_s32(vmul_s32(v10, 0xFF000000FFLL), vand_s8(v5, 0xFF000000FFLL), veor_s8(v10, 0xFF000000FFLL));
  v12 = vcgt_u32(vdup_n_s32(0xFE80u), v11);
  v13 = v11.i32[0] + 128;
  if ((v12.i8[0] & 1) == 0)
  {
    v13 = 65152;
  }

  v14 = v13 + (v13 >> 8);
  v15 = v7 < 65152;
  v16 = v7 + 128;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 65152;
  }

  v18 = v17 + (v17 >> 8);
  if (v12.i8[4])
  {
    v19 = (257 * v11.i32[1] + 32896) & 0xFF0000;
  }

  else
  {
    v19 = 16711680;
  }

  return v19 & 0xFF0000 | (v9 << 24) | v14 & 0xFF00 | BYTE1(v18);
}

uint64_t PDAoverlayPDA_21875(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = BYTE2(a1);
  v6 = BYTE1(a1);
  v7 = HIBYTE(a3);
  v8 = BYTE2(a3);
  v9 = BYTE1(a3);
  if (HIBYTE(a3) >= a4)
  {
    v7 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v10 = 2 * v4 * v7;
  if (BYTE2(a3) >= a4)
  {
    v8 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = 2 * v5 * v8;
  if (BYTE1(a3) >= a4)
  {
    v9 = a4;
  }

  if (BYTE1(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = 2 * v6 * v9;
  v13 = a4 * a2;
  v14 = (a2 + 1) >> 1;
  v15 = a4 + 255;
  v16 = a2 + 255;
  v17 = (a4 + 255) * v4 + v7 * (a2 + 255) - (a4 * a2 + v10);
  v18 = a4 ^ 0xFF;
  v19 = a2 ^ 0xFF;
  v20 = v7 * (a2 ^ 0xFF) + (a4 ^ 0xFF) * v4 + v10;
  if (v4 < v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  v22 = v15 * v5 + v8 * v16 - (v13 + v11);
  v23 = v8 * v19 + v18 * v5 + v11;
  if (v5 < v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v6 < v14)
  {
    v25 = v9 * v19 + v18 * v6 + v12;
  }

  else
  {
    v25 = v15 * v6 + v9 * v16 - (v13 + v12);
  }

  v26 = 255 * (a4 + a2) - v13;
  if (v21 >= 65152)
  {
    v27 = 65152;
  }

  else
  {
    v27 = v21 + 128;
  }

  v28 = v27 + (v27 >> 8);
  if (v25 >= 65152)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v25 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v26 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v26 + 128;
  }

  v32 = (v28 << 16) | ((v31 + (v31 >> 8)) >> 8);
  if (v24 >= 65152)
  {
    v33 = 16711680;
  }

  else
  {
    v33 = (257 * v24 + 32896) & 0xFF0000;
  }

  return v32 & 0xFF0000FF | v33 | v30 & 0xFF00;
}

uint64_t PDAlightenPDA_21876(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = HIBYTE(a3);
  v6 = vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), __PAIR64__(a2, a4));
  v7 = vrev64_s32(vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), __PAIR64__(a2, a4)));
  v8 = vmul_s32(v7, __PAIR64__(a2, a4));
  v9 = vrev64_s32(__PAIR64__(a2, a4));
  if (HIBYTE(a3) >= a4)
  {
    v5 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v10 = v4 * a4;
  if (v5 * a2 > v4 * a4)
  {
    v10 = v5 * a2;
  }

  v11 = COERCE_DOUBLE(vmax_u32(vmul_s32(v6, v9), v8));
  v12 = v10 + (a4 ^ 0xFF) * v4;
  v13 = COERCE_DOUBLE(vmla_s32(*&v11, vdup_n_s32(a4 ^ 0xFF), __PAIR64__(v6.u32[1], v7.u32[0])));
  if (a4 == 255)
  {
    v12 = v10;
  }

  else
  {
    v11 = v13;
  }

  v6.i32[1] = v7.i32[1];
  v14 = v12 + v5 * (a2 ^ 0xFF);
  v15 = COERCE_DOUBLE(vmla_s32(*&v11, v6, vdup_n_s32(a2 ^ 0xFF)));
  if (a2 == 255)
  {
    v16 = v11;
  }

  else
  {
    v12 = v14;
    v16 = v15;
  }

  v17 = 255 * (a4 + a2) - a4 * a2;
  v18 = v12 + 128;
  if (v12 >> 7 >= 0x1FD)
  {
    v18 = 65152;
  }

  v19 = (v18 + (v18 >> 8)) >> 8;
  if (LODWORD(v16) >> 7 >= 0x1FD)
  {
    v20 = 65152;
  }

  else
  {
    v20 = LODWORD(v16) + 128;
  }

  v21 = v20 + (v20 >> 8);
  if (v17 >= 65152)
  {
    v22 = 65152;
  }

  else
  {
    v22 = v17 + 128;
  }

  v23 = v22 + (v22 >> 8);
  v24 = (257 * HIDWORD(v16) + 32896) & 0xFF0000;
  if (HIDWORD(v16) >> 7 >= 0x1FD)
  {
    v24 = 16711680;
  }

  return v24 & 0xFFFF00 | BYTE1(v23) | (v19 << 24) | v21 & 0xFF00;
}

uint64_t PDAdarkenPDA_21877(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = HIBYTE(a3);
  v6 = vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), __PAIR64__(a2, a4));
  v7 = vrev64_s32(vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), __PAIR64__(a2, a4)));
  v8 = vmul_s32(v7, __PAIR64__(a2, a4));
  v9 = vrev64_s32(__PAIR64__(a2, a4));
  if (HIBYTE(a3) >= a4)
  {
    v5 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v10 = v4 * a4;
  if (v5 * a2 < v4 * a4)
  {
    v10 = v5 * a2;
  }

  v11 = COERCE_DOUBLE(vmin_u32(vmul_s32(v6, v9), v8));
  v12 = v10 + (a4 ^ 0xFF) * v4;
  v13 = COERCE_DOUBLE(vmla_s32(*&v11, vdup_n_s32(a4 ^ 0xFF), __PAIR64__(v6.u32[1], v7.u32[0])));
  if (a4 == 255)
  {
    v12 = v10;
  }

  else
  {
    v11 = v13;
  }

  v6.i32[1] = v7.i32[1];
  v14 = v12 + v5 * (a2 ^ 0xFF);
  v15 = COERCE_DOUBLE(vmla_s32(*&v11, v6, vdup_n_s32(a2 ^ 0xFF)));
  if (a2 == 255)
  {
    v16 = v11;
  }

  else
  {
    v12 = v14;
    v16 = v15;
  }

  v17 = 255 * (a4 + a2) - a4 * a2;
  v18 = v12 + 128;
  if (v12 >> 7 >= 0x1FD)
  {
    v18 = 65152;
  }

  v19 = (v18 + (v18 >> 8)) >> 8;
  if (LODWORD(v16) >> 7 >= 0x1FD)
  {
    v20 = 65152;
  }

  else
  {
    v20 = LODWORD(v16) + 128;
  }

  v21 = v20 + (v20 >> 8);
  if (v17 >= 65152)
  {
    v22 = 65152;
  }

  else
  {
    v22 = v17 + 128;
  }

  v23 = v22 + (v22 >> 8);
  v24 = (257 * HIDWORD(v16) + 32896) & 0xFF0000;
  if (HIDWORD(v16) >> 7 >= 0x1FD)
  {
    v24 = 16711680;
  }

  return v24 & 0xFFFF00 | BYTE1(v23) | (v19 << 24) | v21 & 0xFF00;
}

uint64_t PDAcolordodgePDA_21878(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a3);
  v5 = a4 * a4;
  if (HIBYTE(a1) >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = HIBYTE(a1);
  }

  if (v4 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = HIBYTE(a3);
  }

  if (v6)
  {
    if (v4 >= a4)
    {
      v8 = 65025;
    }

    else
    {
      v8 = (v5 * v6) / (a4 - v7);
    }
  }

  else
  {
    v8 = 0;
  }

  if (BYTE2(a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = BYTE2(a1);
  }

  if (BYTE2(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = BYTE2(a3);
  }

  if (v9)
  {
    if (BYTE2(a3) >= a4)
    {
      v11 = 65025;
    }

    else
    {
      v11 = (v5 * v9) / (a4 - v10);
    }
  }

  else
  {
    v11 = 0;
  }

  if (BYTE1(a1) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = BYTE1(a1);
  }

  if (BYTE1(a3) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = BYTE1(a3);
  }

  if (v12)
  {
    if (BYTE1(a3) >= a4)
    {
      v14 = 65025;
    }

    else
    {
      v14 = (v5 * v12) / (a4 - v13);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 + (a4 ^ 0xFF) * v6;
  v16 = v11 + (a4 ^ 0xFF) * v9;
  if (a4 == 255)
  {
    v15 = v8;
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  if (a4 != 255)
  {
    v14 += (a4 ^ 0xFF) * v12;
  }

  v18 = v15 + v7 * (a2 ^ 0xFF);
  v19 = v17 + v10 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v18 = v15;
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  if (a2 == 255)
  {
    v21 = v14;
  }

  else
  {
    v21 = v14 + v13 * (a2 ^ 0xFF);
  }

  v22 = 255 * (a4 + a2) - a4 * a2;
  if (v18 >= v22)
  {
    v18 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v20 >= v22)
  {
    v20 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v21 >= v22)
  {
    v21 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v18 >= 65152)
  {
    v23 = 65152;
  }

  else
  {
    v23 = v18 + 128;
  }

  v24 = (v23 + (v23 >> 8)) >> 8;
  if (v21 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v21 + 128;
  }

  v26 = v25 + (v25 >> 8);
  if (v22 >= 65152)
  {
    v27 = 65152;
  }

  else
  {
    v27 = v22 + 128;
  }

  v28 = v27 + (v27 >> 8);
  if (v20 >= 65152)
  {
    v29 = 16711680;
  }

  else
  {
    v29 = (257 * v20 + 32896) & 0xFF0000;
  }

  return v29 & 0xFFFF00 | BYTE1(v28) | (v24 << 24) | v26 & 0xFF00;
}

uint64_t PDAcolorburnPDA_21879(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = BYTE2(a1);
  v6 = BYTE1(a1);
  v7 = BYTE2(a3);
  v8 = BYTE1(a3);
  v9 = a4 * a2;
  if (HIBYTE(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = HIBYTE(a3);
  }

  if (v4 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v4;
  }

  if (v7 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v7;
  }

  if (v5 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v5;
  }

  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v6 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v6;
  }

  v15 = v9 + (a4 ^ 0xFF) * v11;
  if (a4 == 255)
  {
    v15 = a4 * a2;
    v16 = 255 * a2;
  }

  else
  {
    v16 = v9 + (a4 ^ 0xFF) * v13;
  }

  if (a4 == 255)
  {
    v17 = 255 * a2;
  }

  else
  {
    v17 = v9 + (a4 ^ 0xFF) * v14;
  }

  v18 = v15 + v10 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v18 = v15;
    v19 = v16;
  }

  else
  {
    v19 = v16 + v12 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + v8 * (a2 ^ 0xFF);
  }

  if (v4 < a2)
  {
    if (v10)
    {
      v18 = (v18 - (a4 * a4 * (a2 - v11)) / v10) & ~((v18 - (a4 * a4 * (a2 - v11)) / v10) >> 31);
    }

    else
    {
      v18 = 0;
    }
  }

  if (v5 < a2)
  {
    if (v12)
    {
      v19 = (v19 - (a4 * a4 * (a2 - v13)) / v12) & ~((v19 - (a4 * a4 * (a2 - v13)) / v12) >> 31);
    }

    else
    {
      v19 = 0;
    }
  }

  if (v6 < a2)
  {
    if (v8)
    {
      v20 = (v20 - (a4 * a4 * (a2 - v14)) / v8) & ~((v20 - (a4 * a4 * (a2 - v14)) / v8) >> 31);
    }

    else
    {
      v20 = 0;
    }
  }

  v21 = 255 * (a4 + a2) - v9;
  v22 = v18 + 128;
  if (v18 >> 7 >= 0x1FD)
  {
    v22 = 65152;
  }

  v23 = v22 + (v22 >> 8);
  if (v20 >> 7 >= 0x1FD)
  {
    v24 = 65152;
  }

  else
  {
    v24 = v20 + 128;
  }

  v25 = v24 + (v24 >> 8);
  if (v21 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v21 + 128;
  }

  v27 = (v23 << 16) | ((v26 + (v26 >> 8)) >> 8);
  if (v19 >> 7 >= 0x1FD)
  {
    v28 = 16711680;
  }

  else
  {
    v28 = (257 * v19 + 32896) & 0xFF0000;
  }

  return v27 & 0xFF0000FF | v28 | v25 & 0xFF00;
}

uint64_t PDAhardlightPDA_21880(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = BYTE2(a1);
  v6 = BYTE1(a1);
  v7 = HIBYTE(a3);
  v8 = BYTE2(a3);
  v9 = BYTE1(a3);
  if (HIBYTE(a3) >= a4)
  {
    v7 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v10 = 2 * v4 * v7;
  if (BYTE2(a3) >= a4)
  {
    v8 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = 2 * v5 * v8;
  if (BYTE1(a3) >= a4)
  {
    v9 = a4;
  }

  if (BYTE1(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = 2 * v6 * v9;
  v13 = a4 * a2;
  v14 = (a4 + 1) >> 1;
  v15 = a4 ^ 0xFF;
  v16 = a2 ^ 0xFF;
  v17 = v7 * (a2 ^ 0xFF) + (a4 ^ 0xFF) * v4 + v10;
  v18 = a4 + 255;
  v19 = a2 + 255;
  v20 = (a4 + 255) * v4 + v7 * (a2 + 255) - (a4 * a2 + v10);
  if (v7 <= v14)
  {
    v20 = v17;
  }

  v21 = v8 * v16 + v15 * v5 + v11;
  v22 = v18 * v5 + v8 * v19 - (v13 + v11);
  if (v8 <= v14)
  {
    v22 = v21;
  }

  v23 = v9 * v16 + v15 * v6 + v12;
  v24 = v18 * v6 + v9 * v19 - (v13 + v12);
  if (v9 <= v14)
  {
    v24 = v23;
  }

  v25 = 255 * (a4 + a2) - v13;
  if (v20 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v20 + 128;
  }

  v27 = v26 + (v26 >> 8);
  if (v24 >= 65152)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v24 + 128;
  }

  v29 = v28 + (v28 >> 8);
  if (v25 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v25 + 128;
  }

  v31 = (v27 << 16) | ((v30 + (v30 >> 8)) >> 8);
  if (v22 >= 65152)
  {
    v32 = 16711680;
  }

  else
  {
    v32 = (257 * v22 + 32896) & 0xFF0000;
  }

  return v31 & 0xFF0000FF | v32 | v29 & 0xFF00;
}

uint64_t PDAsoftlightPDA_21881(unsigned int a1, int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) >= a4)
  {
    v5 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v6 = BYTE1(a3);
  v7 = BYTE2(a3);
  v8 = BYTE1(a1);
  v9 = BYTE2(a1);
  v10 = (v4 * v4 * (2 * v5 - a4)) / a2;
  v11 = (2 * v4 * v5 - v10) & ~((2 * v4 * v5 - v10) >> 31);
  if (BYTE2(a3) >= a4)
  {
    v7 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v9 = a2;
  }

  v12 = (v9 * v9 * (2 * v7 - a4)) / a2;
  v13 = (2 * v9 * v7 - v12) & ~((2 * v9 * v7 - v12) >> 31);
  if (BYTE1(a3) >= a4)
  {
    v6 = a4;
  }

  if (BYTE1(a1) >= a2)
  {
    v8 = a2;
  }

  v14 = 2 * v8 * v6 - (v8 * v8 * (2 * v6 - a4)) / a2;
  v15 = v14 & ~(v14 >> 31);
  v16 = v11 + (a4 ^ 0xFF) * v4;
  v17 = v13 + v9 * (a4 ^ 0xFF);
  v18 = v15 + v8 * (a4 ^ 0xFF);
  if (a4 == 255)
  {
    v16 = v11;
    v17 = v13;
    v18 = v15;
  }

  v19 = v16 + v5 * (a2 ^ 0xFF);
  v20 = v17 + v7 * (a2 ^ 0xFF);
  v21 = v18 + v6 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v22 = v17;
  }

  else
  {
    v16 = v19;
    v22 = v20;
  }

  if (a2 == 255)
  {
    v21 = v18;
  }

  v23 = 255 * (a4 + a2) - a4 * a2;
  v24 = v16 + 128;
  if (v16 >> 7 >= 0x1FD)
  {
    v24 = 65152;
  }

  v25 = (v24 + (v24 >> 8)) >> 8;
  if (v21 >> 7 >= 0x1FD)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v21 + 128;
  }

  v27 = v26 + (v26 >> 8);
  if (v23 >= 65152)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v23 + 128;
  }

  v29 = v28 + (v28 >> 8);
  if (v22 >> 7 >= 0x1FD)
  {
    v30 = 16711680;
  }

  else
  {
    v30 = (257 * v22 + 32896) & 0xFF0000;
  }

  return v30 & 0xFFFF00 | BYTE1(v29) | (v25 << 24) | v27 & 0xFF00;
}

uint64_t PDAdifferencePDA_21882(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = vdup_n_s32(a2);
  v6 = vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0);
  v7 = HIBYTE(a3);
  v8 = vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0);
  if (HIBYTE(a3) >= a4)
  {
    v7 = a4;
  }

  v9 = vmin_u32(vand_s8(v8, 0xFF000000FFLL), vdup_n_s32(a4));
  v10 = vmin_u32(vand_s8(v6, 0xFF000000FFLL), v5);
  v11 = vmul_s32(__PAIR64__(v10.u32[1], v9.u32[0]), __PAIR64__(a4, a2));
  v12 = vrev64_s32(__PAIR64__(a4, a2));
  if (v4 >= a2)
  {
    v4 = a2;
  }

  v13 = v7 + v4;
  v14 = v4 * a4;
  v15 = v7 * a2;
  v17 = v14 - v15;
  v16 = (v14 - v15) < 0;
  v18 = 255 * v13 - v15 - v14;
  if (v16)
  {
    v19 = -v17;
  }

  else
  {
    v19 = v17;
  }

  v20 = v18 + v19;
  v21 = 255 * (a4 + a2) - a4 * a2;
  if (v20 >= 65152)
  {
    v22 = 65152;
  }

  else
  {
    v22 = v20 + 128;
  }

  v23 = (v22 + (v22 >> 8)) >> 8;
  v24 = vmul_s32(vadd_s32(v9, v10), 0xFF000000FFLL);
  v10.i32[1] = v9.i32[1];
  v25 = vmul_s32(v10, v12);
  v26 = vaba_u32(vsub_s32(vsub_s32(v24, v11), v25), v11, v25);
  v27 = vcgt_s32(vdup_n_s32(0xFE80u), v26);
  v28 = v26.i32[1] + 128;
  if ((v27.i8[4] & 1) == 0)
  {
    v28 = 65152;
  }

  v29 = v28 + (v28 >> 8);
  if (v21 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v21 + 128;
  }

  v31 = v30 + (v30 >> 8);
  v32 = (257 * v26.i32[0] + 32896) & 0xFF0000;
  if ((v27.i8[0] & 1) == 0)
  {
    v32 = 16711680;
  }

  return v32 & 0xFFFF00 | BYTE1(v31) | v29 & 0xFF00 | (v23 << 24);
}

uint64_t PDAexclusionPDA_21883(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = HIBYTE(a1);
  v5 = BYTE2(a1);
  v6 = BYTE1(a1);
  v7 = HIBYTE(a3);
  if (HIBYTE(a3) >= a4)
  {
    v7 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v8 = 255 * (v7 + v4) - 2 * v4 * v7;
  if (BYTE2(a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = BYTE2(a3);
  }

  if (BYTE2(a1) >= a2)
  {
    v5 = a2;
  }

  v10 = 255 * (v9 + v5) - 2 * v5 * v9;
  if (BYTE1(a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = BYTE1(a3);
  }

  if (BYTE1(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = 255 * (v11 + v6) - 2 * v6 * v11;
  v13 = 255 * (a4 + a2) - a4 * a2;
  if (v8 >= 65152)
  {
    v14 = 65152;
  }

  else
  {
    v14 = v8 + 128;
  }

  v15 = (v14 + (v14 >> 8)) >> 8;
  if (v12 >= 65152)
  {
    v16 = 65152;
  }

  else
  {
    v16 = v12 + 128;
  }

  v17 = v16 + (v16 >> 8);
  if (v13 >= 65152)
  {
    v18 = 65152;
  }

  else
  {
    v18 = v13 + 128;
  }

  v19 = v18 + (v18 >> 8);
  if (v10 >= 65152)
  {
    v20 = 16711680;
  }

  else
  {
    v20 = (257 * v10 + 32896) & 0xFF0000;
  }

  return v20 & 0xFF0000 | v17 & 0xFF00 | BYTE1(v19) | (v15 << 24);
}

uint64_t PDAhuePDA_21884(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  if (HIBYTE(a1) >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = HIBYTE(a1);
  }

  v6 = vdup_n_s32(a4);
  if (BYTE1(a3) >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = BYTE1(a3);
  }

  v8 = vdup_n_s32(a2);
  v9 = vmin_u32(v4, v8);
  if (a4 == 255)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = vdup_lane_s32(v9, 0);
    v10.i32[0] = v5;
    v5 = (v5 * a4 + 128 + ((v5 * a4 + 128) >> 8)) >> 8;
    v11 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v10);
    v12 = (a4 ^ 0xFF) * v9.i32[1];
    v13 = vmla_s32(0x8000000080, v9, v6);
    v9 = vshr_n_u32(vsra_n_u32(v13, v13, 8uLL), 8uLL);
  }

  v14 = vmin_u32(__PAIR64__(BYTE2(a3), HIBYTE(a3)), v6);
  if (a2 != 255)
  {
    v11 = vmla_s32(v11, v14, vdup_n_s32(a2 ^ 0xFF));
    v15 = vmla_s32(0x8000000080, v14, v8);
    v14 = vshr_n_u32(vsra_n_u32(v15, v15, 8uLL), 8uLL);
    v12 += v7 * (a2 ^ 0xFF);
    v7 = (v7 * a2 + 128 + ((v7 * a2 + 128) >> 8)) >> 8;
  }

  *v52 = v14;
  *&v52[8] = v7;
  v16 = v14.i32[0];
  v17 = v14.i32[0] < v14.i32[1];
  if (v14.i32[0] >= v14.i32[1])
  {
    v18 = v14.u32[1];
  }

  else
  {
    v18 = v14.i32[0];
  }

  if (v14.i32[0] <= v14.i32[1])
  {
    v16 = v14.u32[1];
  }

  if (v7 <= v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = v14.i32[0] < v14.i32[1];
  }

  if (v7 <= v16)
  {
    v20 = v14.i32[0] < v14.i32[1];
  }

  else
  {
    v20 = 2;
  }

  v21 = v7 >= v18;
  if (v7 >= v18)
  {
    v22 = v14.i32[0] >= v14.i32[1];
  }

  else
  {
    v22 = 2;
  }

  if (v21)
  {
    v23 = v19;
  }

  else
  {
    v23 = v14.i32[0] >= v14.i32[1];
  }

  if (v21)
  {
    v17 = v20;
  }

  v24 = *&v52[4 * v17];
  v25 = *&v52[4 * v22];
  v26 = __OFSUB__(v24, v25);
  v27 = v24 - v25;
  if ((v27 < 0) ^ v26 | (v27 == 0))
  {
    *&v52[4 * v17] = 0;
    *&v52[4 * v23] = 0;
  }

  else
  {
    v28 = v9.i32[0];
    if (v5 >= v9.i32[0])
    {
      v29 = v9.i32[0];
    }

    else
    {
      v29 = v5;
    }

    if (v5 > v9.i32[0])
    {
      v28 = v5;
    }

    if (v9.i32[1] <= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v9.i32[1];
    }

    if (v9.i32[1] >= v29)
    {
      v28 = v30;
    }

    else
    {
      v29 = v9.u32[1];
    }

    v31 = v28 - v29;
    *&v52[4 * v17] = v31;
    *&v52[4 * v23] = ((*&v52[4 * v23] - *&v52[4 * v22]) * ((v31 << 16) / v27) + 0x8000) >> 16;
  }

  *&v52[4 * v22] = 0;
  v32 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v33 = vmul_s32(vsub_s32(v9, *&v52[4]), 0x1C00000097);
  v34 = v33.i32[0] + 77 * (v5 - *v52) + v33.i32[1];
  v35 = (v34 + 128) >> 8;
  v36 = vadd_s32(vdup_n_s32(v35), *v52);
  v37 = *&v52[8] + v35;
  if (v34 != v34)
  {
    if (*v52 >= *&v52[4])
    {
      v38 = v36.i32[1];
    }

    else
    {
      v38 = v36.i32[0];
    }

    if (*v52 >= *&v52[4])
    {
      v39 = v36.i32[0];
    }

    else
    {
      v39 = v36.i32[1];
    }

    if (v37 <= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = *&v52[8] + ((v34 + 128) >> 8);
    }

    if (v37 >= v38)
    {
      v41 = v38;
    }

    else
    {
      v41 = *&v52[8] + ((v34 + 128) >> 8);
    }

    if (v37 >= v38)
    {
      v39 = v40;
    }

    if (v39 > v32 || v41 < 0)
    {
      v42 = (77 * v36.i32[0] + 151 * v36.i32[1] + 28 * v37 + 128) >> 8;
      if ((v35 & 0x80000000) != 0)
      {
        v43 = v42 - v41;
        if (v42 == v41)
        {
          goto LABEL_69;
        }

        v44 = (77 * v36.i32[0] + 151 * v36.i32[1] + 28 * v37 + 128) >> 8;
      }

      else
      {
        v43 = v39 - v42;
        if (v39 == v42)
        {
          goto LABEL_69;
        }

        v44 = v32 - v42;
      }

      v45 = vdup_n_s32(v42);
      v46 = (v44 << 16) / v43;
      v37 = v42 + ((v46 * (v37 - v42) + 0x8000) >> 16);
      v36 = vsra_n_s32(v45, vmla_s32(0x800000008000, vdup_n_s32(v46), vsub_s32(v36, v45)), 0x10uLL);
    }
  }

LABEL_69:
  v47 = v12 + 128;
  if (v12 >> 7 >= 0x1FD)
  {
    v47 = 65152;
  }

  v48 = vdup_n_s32(0xFE80u);
  v49 = vbsl_s8(vcgt_u32(v48, v11), vadd_s32(v11, 0x8000000080), v48);
  v50 = vshl_u32(vsra_n_u32(v36, vsra_n_u32(v49, v49, 8uLL), 8uLL), 0x1000000018);
  return v50.i32[0] | (v47 + (v47 >> 8) + (v37 << 8)) & 0xFF00 | (a4 + a2 - v32) | v50.i32[1] & 0xFF0000u;
}

uint64_t PDAsaturationPDA_21885(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  if (HIBYTE(a1) >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = HIBYTE(a1);
  }

  v6 = vdup_n_s32(a4);
  if (BYTE1(a3) >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = BYTE1(a3);
  }

  v8 = vdup_n_s32(a2);
  v9 = vmin_u32(v4, v8);
  if (a4 == 255)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = vdup_lane_s32(v9, 0);
    v10.i32[0] = v5;
    v5 = (v5 * a4 + 128 + ((v5 * a4 + 128) >> 8)) >> 8;
    v11 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v10);
    v12 = (a4 ^ 0xFF) * v9.i32[1];
    v13 = vmla_s32(0x8000000080, v9, v6);
    v9 = vshr_n_u32(vsra_n_u32(v13, v13, 8uLL), 8uLL);
  }

  v14 = vmin_u32(__PAIR64__(BYTE2(a3), HIBYTE(a3)), v6);
  if (a2 != 255)
  {
    v11 = vmla_s32(v11, v14, vdup_n_s32(a2 ^ 0xFF));
    v15 = vmla_s32(0x8000000080, v14, v8);
    v14 = vshr_n_u32(vsra_n_u32(v15, v15, 8uLL), 8uLL);
    v12 += v7 * (a2 ^ 0xFF);
    v7 = (v7 * a2 + 128 + ((v7 * a2 + 128) >> 8)) >> 8;
  }

  *v51 = v5;
  *&v51[4] = v9;
  v16 = v9.i32[0];
  v17 = v5 >= v9.i32[0];
  if (v5 >= v9.i32[0])
  {
    v18 = v9.i32[0];
  }

  else
  {
    v18 = v5;
  }

  if (v5 > v9.i32[0])
  {
    v16 = v5;
  }

  if (v9.i32[1] <= v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = v5 < v9.i32[0];
  }

  if (v9.i32[1] <= v16)
  {
    v20 = v5 < v9.i32[0];
  }

  else
  {
    v20 = 2;
  }

  if (v9.i32[1] >= v18)
  {
    v21 = v5 >= v9.i32[0];
  }

  else
  {
    v21 = 2;
  }

  if (v9.i32[1] < v18)
  {
    v22 = v5 < v9.i32[0];
  }

  else
  {
    v17 = v19;
    v22 = v20;
  }

  v23 = *&v51[4 * v22];
  v24 = *&v51[4 * v21];
  v25 = __OFSUB__(v23, v24);
  v26 = v23 - v24;
  if ((v26 < 0) ^ v25 | (v26 == 0))
  {
    *&v51[4 * v22] = 0;
    *&v51[4 * v17] = 0;
  }

  else
  {
    v27 = v14.u32[1];
    if (v14.i32[0] >= v14.i32[1])
    {
      v28 = v14.u32[1];
    }

    else
    {
      v28 = v14.i32[0];
    }

    if (v14.i32[0] > v14.i32[1])
    {
      v27 = v14.i32[0];
    }

    if (v7 <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v7;
    }

    if (v7 >= v28)
    {
      v7 = v28;
      v27 = v29;
    }

    v30 = v27 - v7;
    *&v51[4 * v22] = v30;
    *&v51[4 * v17] = ((*&v51[4 * v17] - *&v51[4 * v21]) * ((v30 << 16) / v26) + 0x8000) >> 16;
  }

  *&v51[4 * v21] = 0;
  v31 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v32 = vmul_s32(vsub_s32(v9, *&v51[4]), 0x1C00000097);
  v33 = v32.i32[0] + 77 * (v5 - *v51) + v32.i32[1];
  v34 = (v33 + 128) >> 8;
  v35 = vadd_s32(vdup_n_s32(v34), *v51);
  v36 = *&v51[8] + v34;
  if (v33 != v33)
  {
    if (*v51 >= *&v51[4])
    {
      v37 = v35.i32[1];
    }

    else
    {
      v37 = v35.i32[0];
    }

    if (*v51 >= *&v51[4])
    {
      v38 = v35.i32[0];
    }

    else
    {
      v38 = v35.i32[1];
    }

    if (v36 <= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = *&v51[8] + ((v33 + 128) >> 8);
    }

    if (v36 >= v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = *&v51[8] + ((v33 + 128) >> 8);
    }

    if (v36 >= v37)
    {
      v38 = v39;
    }

    if (v38 > v31 || v40 < 0)
    {
      v41 = (77 * v35.i32[0] + 151 * v35.i32[1] + 28 * v36 + 128) >> 8;
      if ((v34 & 0x80000000) != 0)
      {
        v42 = v41 - v40;
        if (v41 == v40)
        {
          goto LABEL_65;
        }

        v43 = (77 * v35.i32[0] + 151 * v35.i32[1] + 28 * v36 + 128) >> 8;
      }

      else
      {
        v42 = v38 - v41;
        if (v38 == v41)
        {
          goto LABEL_65;
        }

        v43 = v31 - v41;
      }

      v44 = vdup_n_s32(v41);
      v45 = (v43 << 16) / v42;
      v36 = v41 + ((v45 * (v36 - v41) + 0x8000) >> 16);
      v35 = vsra_n_s32(v44, vmla_s32(0x800000008000, vdup_n_s32(v45), vsub_s32(v35, v44)), 0x10uLL);
    }
  }

LABEL_65:
  v46 = v12 + 128;
  if (v12 >> 7 >= 0x1FD)
  {
    v46 = 65152;
  }

  v47 = vdup_n_s32(0xFE80u);
  v48 = vbsl_s8(vcgt_u32(v47, v11), vadd_s32(v11, 0x8000000080), v47);
  v49 = vshl_u32(vsra_n_u32(v35, vsra_n_u32(v48, v48, 8uLL), 8uLL), 0x1000000018);
  return v49.i32[0] | (v46 + (v46 >> 8) + (v36 << 8)) & 0xFF00 | (a4 + a2 - v31) | v49.i32[1] & 0xFF0000u;
}

uint64_t PDAluminosityPDA_21886(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  v5 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  if (HIBYTE(a3) >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = HIBYTE(a3);
  }

  v7 = vdup_n_s32(a4);
  if (HIBYTE(a1) >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = HIBYTE(a1);
  }

  v9 = vdup_n_s32(a2);
  v10 = vmin_u32(v4, v9);
  if (a4 == 255)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v11 = v10.i32[0];
    v12 = vmla_s32(0x8000000080, v10, v7);
    v10.i32[0] = v8;
    v8 = (v8 * a4 + 128 + ((v8 * a4 + 128) >> 8)) >> 8;
    v13 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v10);
    v14 = (a4 ^ 0xFF) * v11;
    v10 = vshr_n_u32(vsra_n_u32(v12, v12, 8uLL), 8uLL);
  }

  v15 = vmin_u32(v5, v7);
  if (a2 != 255)
  {
    v16 = v15.i32[0];
    v17 = vmla_s32(0x8000000080, v15, v9);
    v15.i32[0] = v6;
    v6 = (v6 * a2 + 128 + ((v6 * a2 + 128) >> 8)) >> 8;
    v13 = vmla_s32(v13, v15, vdup_n_s32(a2 ^ 0xFF));
    v14 += v16 * (a2 ^ 0xFF);
    v15 = vshr_n_u32(vsra_n_u32(v17, v17, 8uLL), 8uLL);
  }

  v18 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v19 = vmul_s32(vsub_s32(v15, v10), 0x970000001CLL);
  v20 = v19.i32[0] + v19.i32[1] + 77 * (v6 - v8);
  v21 = (v20 + 128) >> 8;
  v22 = v8 + v21;
  v23 = vadd_s32(vdup_n_s32(v21), v10);
  if (v20 != v20)
  {
    v24 = v8 >= v10.i32[1] ? v23.i32[1] : v8 + ((v20 + 128) >> 8);
    v25 = v8 >= v10.i32[1] ? v8 + ((v20 + 128) >> 8) : v23.i32[1];
    v26 = v23.i32[0] <= v25 ? v25 : v23.i32[0];
    if (v23.i32[0] >= v24)
    {
      v25 = v26;
    }

    else
    {
      v24 = v23.i32[0];
    }

    if (v25 > v18 || v24 < 0)
    {
      v27 = (77 * v22 + 151 * v23.i32[1] + 28 * v23.i32[0] + 128) >> 8;
      if ((v21 & 0x80000000) != 0)
      {
        v28 = v27 - v24;
        if (v27 == v24)
        {
          goto LABEL_33;
        }

        v29 = (77 * v22 + 151 * v23.i32[1] + 28 * v23.i32[0] + 128) >> 8;
      }

      else
      {
        v28 = v25 - v27;
        if (v25 == v27)
        {
          goto LABEL_33;
        }

        v29 = v18 - v27;
      }

      v30 = (v29 << 16) / v28;
      v22 = v27 + ((v30 * (v22 - v27) + 0x8000) >> 16);
      v31 = vdup_n_s32(v27);
      v23 = vsra_n_s32(v31, vmla_s32(0x800000008000, vdup_n_s32(v30), vsub_s32(v23, v31)), 0x10uLL);
    }
  }

LABEL_33:
  v32 = a4 + a2 - v18;
  v33 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v33 = 65152;
  }

  v34 = vdup_n_s32(0xFE80u);
  v35 = vbsl_s8(vcgt_u32(v34, v13), vadd_s32(v13, 0x8000000080), v34);
  v36 = vshl_u32(vsra_n_u32(__PAIR64__(v23.u32[1], v22), vsra_n_u32(v35, v35, 8uLL), 8uLL), 0x1000000018);
  return v36.i32[0] | (v33 + (v33 >> 8) + (v23.i16[0] << 8)) & 0xFF00 | v32 | v36.i32[1] & 0xFF0000u;
}

uint64_t PDAtranspose_huePDA_21887(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  v5 = vdup_n_s32(a4);
  v6 = vdup_n_s32(a2);
  v7 = vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), v6);
  if (HIBYTE(a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = HIBYTE(a3);
  }

  if (HIBYTE(a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v10 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v7);
    v11 = vmla_s32(0x8000000080, v7, v5);
    v7 = vshr_n_u32(vsra_n_u32(v11, v11, 8uLL), 8uLL);
    v12 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
  }

  v13 = vmin_u32(v4, v5);
  if (a2 != 255)
  {
    v10 = vmla_s32(v10, v13, vdup_n_s32(a2 ^ 0xFF));
    v14 = vmla_s32(0x8000000080, v13, v6);
    v13 = vshr_n_u32(vsra_n_u32(v14, v14, 8uLL), 8uLL);
    v12 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
  }

  v50 = v13;
  v51 = v8;
  v15 = v13.i32[0];
  v16 = v13.i32[0] < v13.i32[1];
  if (v13.i32[0] >= v13.i32[1])
  {
    v17 = v13.u32[1];
  }

  else
  {
    v17 = v13.i32[0];
  }

  if (v13.i32[0] <= v13.i32[1])
  {
    v15 = v13.u32[1];
  }

  if (v8 <= v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = v13.i32[0] < v13.i32[1];
  }

  if (v8 <= v15)
  {
    v19 = v13.i32[0] < v13.i32[1];
  }

  else
  {
    v19 = 2;
  }

  v20 = v8 >= v17;
  if (v8 >= v17)
  {
    v21 = v13.i32[0] >= v13.i32[1];
  }

  else
  {
    v21 = 2;
  }

  if (v20)
  {
    v22 = v18;
  }

  else
  {
    v22 = v13.i32[0] >= v13.i32[1];
  }

  if (v20)
  {
    v16 = v19;
  }

  v23 = v50.i32[v16];
  v24 = v50.i32[v21];
  v25 = __OFSUB__(v23, v24);
  v26 = v23 - v24;
  if ((v26 < 0) ^ v25 | (v26 == 0))
  {
    v50.i32[v16] = 0;
    v50.i32[v22] = 0;
  }

  else
  {
    v27 = v7.u32[1];
    if (v7.i32[0] >= v7.i32[1])
    {
      v28 = v7.u32[1];
    }

    else
    {
      v28 = v7.i32[0];
    }

    if (v7.i32[0] > v7.i32[1])
    {
      v27 = v7.i32[0];
    }

    if (v9 <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v9;
    }

    if (v9 >= v28)
    {
      v27 = v29;
    }

    else
    {
      v28 = v9;
    }

    v30 = v27 - v28;
    v50.i32[v16] = v30;
    v50.i32[v22] = ((v50.i32[v22] - v50.i32[v21]) * ((v30 << 16) / v26) + 0x8000) >> 16;
  }

  v50.i32[v21] = 0;
  v31 = vmul_s32(vsub_s32(v7, v50), 0x970000004DLL);
  v32 = v31.i32[0] + v31.i32[1] + 28 * (v9 - v51);
  v33 = v32 + 128;
  v34 = v50.i32[0] + ((v32 + 128) >> 8);
  v35 = v50.i32[1] + ((v32 + 128) >> 8);
  v36 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v37 = v51 + ((v32 + 128) >> 8);
  if (v32 != v32)
  {
    v38 = v50.i32[0] >= v50.i32[1] ? v50.i32[1] + ((v32 + 128) >> 8) : v50.i32[0] + ((v32 + 128) >> 8);
    v39 = v50.i32[0] >= v50.i32[1] ? v50.i32[0] + ((v32 + 128) >> 8) : v50.i32[1] + ((v32 + 128) >> 8);
    v40 = v37 <= v39 ? v39 : v51 + ((v32 + 128) >> 8);
    if (v37 >= v38)
    {
      v39 = v40;
    }

    else
    {
      v38 = v37;
    }

    if (v39 > v36 || v38 < 0)
    {
      v41 = v33 >> 8;
      v42 = (77 * v34 + 151 * v35 + 28 * v37 + 128) >> 8;
      if (v41 < 0)
      {
        v43 = v42 - v38;
        if (!v43)
        {
          goto LABEL_67;
        }

        v44 = (77 * v34 + 151 * v35 + 28 * v37 + 128) >> 8;
      }

      else
      {
        v43 = v39 - v42;
        if (v39 == v42)
        {
          goto LABEL_67;
        }

        v44 = v36 - v42;
      }

      v45 = (v44 << 16) / v43;
      v34 = v42 + ((v45 * (v34 - v42) + 0x8000) >> 16);
      v35 = v42 + ((v45 * (v35 - v42) + 0x8000) >> 16);
      v37 = v42 + ((v45 * (v37 - v42) + 0x8000) >> 16);
    }
  }

LABEL_67:
  if (v12 >> 7 >= 0x1FD)
  {
    v46 = 65152;
  }

  else
  {
    v46 = v12 + 128;
  }

  if (v10.i32[1] >> 7 >= 0x1FD)
  {
    v47 = 65152;
  }

  else
  {
    v47 = v10.i32[1] + 128;
  }

  if (v10.i32[0] >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v10.i32[0] + 128;
  }

  return (v48 + (v48 >> 8) + (v34 << 8)) & 0xFF00 | ((v35 + ((v47 + (v47 >> 8)) >> 8)) << 16) | ((v37 + ((v46 + (v46 >> 8)) >> 8)) << 24) | (a4 + a2 - v36);
}

uint64_t PDAtranspose_saturationPDA_21888(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a4);
  v5 = COERCE_DOUBLE(vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), v4));
  v6 = vdup_n_s32(a2);
  v7 = vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), v6);
  if (HIBYTE(a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = HIBYTE(a3);
  }

  if (HIBYTE(a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v10 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v7);
    v11 = vmla_s32(0x8000000080, v7, v4);
    v7 = vshr_n_u32(vsra_n_u32(v11, v11, 8uLL), 8uLL);
    v12 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
  }

  v13 = COERCE_DOUBLE(vrev64_s32(v10));
  v14 = COERCE_DOUBLE(vmla_s32(*&v13, *&v5, vdup_n_s32(a2 ^ 0xFF)));
  v15 = vmla_s32(0x8000000080, *&v5, v6);
  v16 = COERCE_DOUBLE(vshr_n_u32(vsra_n_u32(v15, v15, 8uLL), 8uLL));
  if (a2 == 255)
  {
    v16 = v5;
    v17 = v13;
  }

  else
  {
    v12 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v17 = v14;
  }

  v51 = v7;
  v52 = v9;
  v18 = v7.i32[0];
  if (v7.i32[0] >= v7.i32[1])
  {
    v19 = v7.u32[1];
  }

  else
  {
    v19 = v7.i32[0];
  }

  if (v7.i32[0] <= v7.i32[1])
  {
    v18 = v7.u32[1];
  }

  if (v9 <= v18)
  {
    v20 = 2;
  }

  else
  {
    v20 = v7.i32[0] < v7.i32[1];
  }

  if (v9 <= v18)
  {
    v21 = v7.i32[0] < v7.i32[1];
  }

  else
  {
    v21 = 2;
  }

  if (v9 >= v19)
  {
    v22 = v7.i32[0] >= v7.i32[1];
  }

  else
  {
    v22 = 2;
  }

  if (v9 >= v19)
  {
    v23 = v21;
  }

  else
  {
    v20 = v7.i32[0] >= v7.i32[1];
    v23 = v7.i32[0] < v7.i32[1];
  }

  v24 = v51.i32[v23];
  v25 = v51.i32[v22];
  v26 = __OFSUB__(v24, v25);
  v27 = v24 - v25;
  if ((v27 < 0) ^ v26 | (v27 == 0))
  {
    v51.i32[v23] = 0;
    v51.i32[v20] = 0;
  }

  else
  {
    v28 = HIDWORD(v16);
    if (HIDWORD(v16) >= LODWORD(v16))
    {
      v29 = LODWORD(v16);
    }

    else
    {
      v29 = HIDWORD(v16);
    }

    if (HIDWORD(v16) <= LODWORD(v16))
    {
      v28 = LODWORD(v16);
    }

    if (v8 <= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v8;
    }

    if (v8 >= v29)
    {
      v8 = v29;
      v28 = v30;
    }

    v31 = v28 - v8;
    v51.i32[v23] = v31;
    v51.i32[v20] = ((v51.i32[v20] - v51.i32[v22]) * ((v31 << 16) / v27) + 0x8000) >> 16;
  }

  v51.i32[v22] = 0;
  v32 = vmul_s32(vsub_s32(v7, v51), 0x970000004DLL);
  v33 = v32.i32[0] + v32.i32[1] + 28 * (v9 - v52);
  v34 = v33 + 128;
  v35 = v51.i32[0] + ((v33 + 128) >> 8);
  v36 = v51.i32[1] + ((v33 + 128) >> 8);
  v37 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v38 = v52 + ((v33 + 128) >> 8);
  if (v33 != v33)
  {
    v39 = v51.i32[0] >= v51.i32[1] ? v51.i32[1] + ((v33 + 128) >> 8) : v51.i32[0] + ((v33 + 128) >> 8);
    v40 = v51.i32[0] >= v51.i32[1] ? v51.i32[0] + ((v33 + 128) >> 8) : v51.i32[1] + ((v33 + 128) >> 8);
    v41 = v38 <= v40 ? v40 : v52 + ((v33 + 128) >> 8);
    if (v38 >= v39)
    {
      v40 = v41;
    }

    else
    {
      v39 = v38;
    }

    if (v40 > v37 || v39 < 0)
    {
      v42 = v34 >> 8;
      v43 = (77 * v35 + 151 * v36 + 28 * v38 + 128) >> 8;
      if (v42 < 0)
      {
        v44 = v43 - v39;
        if (!v44)
        {
          goto LABEL_64;
        }

        v45 = (77 * v35 + 151 * v36 + 28 * v38 + 128) >> 8;
      }

      else
      {
        v44 = v40 - v43;
        if (v40 == v43)
        {
          goto LABEL_64;
        }

        v45 = v37 - v43;
      }

      v46 = (v45 << 16) / v44;
      v35 = v43 + ((v46 * (v35 - v43) + 0x8000) >> 16);
      v36 = v43 + ((v46 * (v36 - v43) + 0x8000) >> 16);
      v38 = v43 + ((v46 * (v38 - v43) + 0x8000) >> 16);
    }
  }

LABEL_64:
  if (v12 >> 7 >= 0x1FD)
  {
    v47 = 65152;
  }

  else
  {
    v47 = v12 + 128;
  }

  if (LODWORD(v17) >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  else
  {
    v48 = LODWORD(v17) + 128;
  }

  if (HIDWORD(v17) >> 7 >= 0x1FD)
  {
    v49 = 65152;
  }

  else
  {
    v49 = HIDWORD(v17) + 128;
  }

  return (v49 + (v49 >> 8) + (v35 << 8)) & 0xFF00 | ((v36 + ((v48 + (v48 >> 8)) >> 8)) << 16) | ((v38 + ((v47 + (v47 >> 8)) >> 8)) << 24) | (a4 + a2 - v37);
}

uint64_t PDAtranspose_luminosityPDA_21889(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = vdup_n_s32(a4);
  v6 = vdup_n_s32(a2);
  v7 = vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), v6);
  if (HIBYTE(a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = HIBYTE(a3);
  }

  if (HIBYTE(a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v10 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v7);
    v11 = vmla_s32(0x8000000080, v7, v5);
    v7 = vshr_n_u32(vsra_n_u32(v11, v11, 8uLL), 8uLL);
    v12 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
  }

  v13 = vmin_u32(v4, v5);
  if (a2 != 255)
  {
    v10 = vmla_s32(v10, v13, vdup_n_s32(a2 ^ 0xFF));
    v14 = vmla_s32(0x8000000080, v13, v6);
    v13 = vshr_n_u32(vsra_n_u32(v14, v14, 8uLL), 8uLL);
    v12 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
  }

  v15 = vmul_s32(vsub_s32(v13, v7), 0x4D00000097);
  v16 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v17 = v15.i32[0] + 28 * (v8 - v9) + v15.i32[1];
  v18 = (v17 + 128) >> 8;
  v19 = vadd_s32(vdup_n_s32(v18), v7);
  v20 = v9 + v18;
  if (v17 != v17)
  {
    v21 = vcgt_u32(v7, vdup_lane_s32(v7, 1)).u8[0];
    v22 = (v21 & 1) != 0 ? v19.i32[1] : v19.i32[0];
    v23 = (v21 & 1) != 0 ? v19.i32[0] : v19.i32[1];
    v24 = v20 <= v23 ? v23 : v20;
    if (v20 >= v22)
    {
      v23 = v24;
    }

    else
    {
      v22 = v20;
    }

    if (v23 > v16 || v22 < 0)
    {
      v25 = (77 * v19.i32[1] + 151 * v19.i32[0] + 28 * v20 + 128) >> 8;
      if ((v18 & 0x80000000) != 0)
      {
        v26 = v25 - v22;
        if (v25 == v22)
        {
          goto LABEL_33;
        }

        v27 = (77 * v19.i32[1] + 151 * v19.i32[0] + 28 * v20 + 128) >> 8;
      }

      else
      {
        v26 = v23 - v25;
        if (v23 == v25)
        {
          goto LABEL_33;
        }

        v27 = v16 - v25;
      }

      v28 = vdup_n_s32(v25);
      v29 = (v27 << 16) / v26;
      v20 = v25 + ((v29 * (v20 - v25) + 0x8000) >> 16);
      v19 = vsra_n_s32(v28, vmla_s32(0x800000008000, vdup_n_s32(v29), vsub_s32(v19, v28)), 0x10uLL);
    }
  }

LABEL_33:
  v30 = a4 + a2 - v16;
  v31 = v12 + 128;
  if (v12 >> 7 >= 0x1FD)
  {
    v31 = 65152;
  }

  v32 = v20 + ((v31 + (v31 >> 8)) >> 8);
  v33 = vcgt_u32(vdup_n_s32(0xFE80u), v10);
  v34 = v10.i32[0] + 128;
  if ((v33.i8[0] & 1) == 0)
  {
    v34 = 65152;
  }

  v35 = v19.i32[0] + ((v34 + (v34 >> 8)) >> 8);
  if (v33.i8[4])
  {
    v36 = v10.i32[1] + 128;
  }

  else
  {
    v36 = 65152;
  }

  return (v36 + (v36 >> 8) + (v19.i16[2] << 8)) & 0xFF00 | (v35 << 16) | (v32 << 24) | v30;
}

void rgba32_shade_axial_RGB(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v12 * (*(*(a1 + 272) + 4) * a2)));
  v14 = a1 + 368;
  v15 = *(a1 + 368);
  v16 = (a3 >> 4) & 0xF0;
  v17 = v15 + v16;
  if (v15)
  {
    v18 = v15 + v16;
  }

  else
  {
    v18 = a1 + 368;
  }

  if (v15)
  {
    v19 = 15;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 320);
  v26 = *(a1 + 324);
  v29 = a1 + 144;
  v27 = *(a1 + 144);
  v28 = *(v29 + 8);
  v30 = *(a1 + 376);
  v31 = *(a1 + 360);
  if (v12 != 0.0)
  {
    if (v15)
    {
      v37 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    while (1)
    {
      v38 = v25;
      if (v13 >= v23)
      {
        v38 = v26;
        if (v13 <= v24)
        {
          v38 = (v22 * (v13 - v21));
        }
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

      v39 = v30;
      if (v30)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v37) = (v37 + 1) & v19;
      v13 = v12 + v13;
      v28 = (v28 + 4);
      *v27 = v39;
      v27 = (v27 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v39 = (v31 + 2 * (4 * v38));
LABEL_38:
    v40 = *(v18 + v37);
    v28->i32[0] = (v40 + v39[2]) & 0xFF00 | (((v40 + *v39) >> 8) << 24) | (((v40 + v39[1]) >> 8) << 16) | ((v40 + v39[3]) >> 8);
    LOBYTE(v39) = -1;
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (v15)
  {
    LODWORD(v33) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v15)
  {
    LODWORD(v34) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v15)
  {
    v35 = 15;
  }

  else
  {
    v35 = 0;
  }

  if (v13 >= v23)
  {
    v25 = v26;
    if (v13 <= v24)
    {
      v25 = (v22 * (v13 - v21));
    }
  }

  if ((v25 & 0x80000000) == 0 || v30)
  {
    v41 = (v31 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v30 = v41;
    }

    v42 = *v30;
    v43 = v30[1];
    v44 = v30[2];
    v45 = v30[3];
    if (v15)
    {
      v46 = vdup_n_s32(v42);
      v47 = vdup_n_s32(v43);
      v48 = a4 + 4;
      v49 = vdup_n_s32(v44);
      v50 = vdup_n_s32(v45);
      do
      {
        v51 = (v32 + v34);
        v34 = (v34 + 1) & v35;
        a12.i8[0] = *v51;
        a12.i8[4] = *(v32 + v33);
        v52 = vand_s8(a12, 0xFF000000FFLL);
        v53 = vorr_s8(vorr_s8((*&vshl_n_s32(vadd_s32(v46, v52), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), vand_s8(vadd_s32(v49, v52), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v47, v52), 8uLL), 0xFF000000FF0000), (*&vshr_n_u32(vadd_s32(v50, v52), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
        *v28 = v53;
        v33 = (v33 + 1) & v35;
        v53.i8[0] = *(v32 + v34);
        v53.i8[4] = *(v32 + v33);
        v54 = vand_s8(v53, 0xFF000000FFLL);
        a12 = vorr_s8(vorr_s8((*&vshl_n_s32(vadd_s32(v46, v54), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), vand_s8(vadd_s32(v49, v54), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v47, v54), 8uLL), 0xFF000000FF0000), (*&vshr_n_u32(vadd_s32(v50, v54), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
        v28[1] = a12;
        *v27++ = -1;
        v28 += 2;
        v48 -= 4;
      }

      while (v48 > 4);
    }

    else
    {
      v55 = vdupq_n_s32((v42 << 16) & 0xFF000000 | (BYTE1(v43) << 16) | v44 & 0xFF00 | (v45 >> 8));
      v56 = a4 + 4;
      do
      {
        *v28->i8 = v55;
        v28 += 2;
        *v27++ = -1;
        v56 -= 4;
      }

      while (v56 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = a4;
    }

    bzero(v27, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t rgba32_shade_custom_RGB(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, int32x4_t a6)
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
  v26 = 4 * *(result + 48);
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
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 8 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      v32 = *(v10 + v29);
      result = (v32 + v31[1]) >> 8;
      *v27 = (v32 + v31[2]) & 0xFF00 | (((v32 + *v31) >> 8) << 24) | (((v32 + v31[1]) >> 8) << 16) | ((v32 + v31[3]) >> 8);
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

void rgba32_shade_conic_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
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
  v32 = *(a1 + 336);
  v33 = *(a1 + 304);
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

  v31 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v33 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v31)) - v32);
    v21 = vcvtms_s32_f32(v20);
    v22 = vcvtms_s32_f32(v15 + v20);
    v23 = ceilf(v20);
    v24 = ((v20 - floorf(v20)) * 255.0) + 0.5;
    if (v20 < 0.0)
    {
      v21 = v22;
    }

    v25 = v20 <= v15;
    v26 = ceilf(v20 - v15);
    if (v25)
    {
      v26 = v23;
    }

    v27 = (v16 + 2 * (4 * v21));
    v28 = 255 - v24;
    v29 = (v16 + 8 * v26);
    v30 = *(v10 + v19);
    *v17++ = (v24 * v29[1] + (v30 << 8) + v28 * v27[1]) & 0xFF0000 | (v30 + ((v24 * v29[2] + v28 * v27[2]) >> 8)) & 0xFF00 | (((v30 + ((v24 * *v29 + v28 * *v27) >> 8)) >> 8) << 24) | ((v30 + ((v24 * v29[3] + v28 * v27[3]) >> 8)) >> 8);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void rgba32_shade_radial_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 284);
  v14 = *(*(a1 + 272) + 4);
  v15 = v14 * a2;
  v16 = v14 * a3;
  v17 = *(a1 + 296) + ((*(a1 + 288) * v16) + (v12 * v15));
  v18 = *(a1 + 300) + ((v16 * *(a1 + 292)) + (v13 * v15));
  v20 = *(a1 + 400);
  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 324);
  LODWORD(a12) = *(v20 + 8);
  v26 = *(v20 + 16);
  v27 = *(v20 + 20);
  v28 = *(v20 + 28);
  v31 = a1 + 144;
  v29 = *(a1 + 144);
  v30 = *(v31 + 8);
  v32 = *(a1 + 376);
  v33 = *(a1 + 360);
  v34 = (a2 >> 8) & 0xF;
  if (*&a12 != 0.0 || v28 != 0.0 || v13 != 0.0)
  {
    v44 = *(a1 + 320);
    v45 = *(v20 + 12);
    v46 = *(v20 + 24);
    v47 = *(v20 + 32);
    v48 = a1 + 368;
    v49 = *(a1 + 368);
    v50 = v49 + ((a3 >> 4) & 0xF0);
    v38 = v49 == 0;
    v51 = 15;
    if (v38)
    {
      v51 = 0;
      v34 = 0;
    }

    else
    {
      v48 = v50;
    }

    v52 = -v46;
    v53 = v24 - v23;
    while (1)
    {
      v54 = v52 + ((v17 + v17) * *&a12);
      v55 = ((v18 * v18) + (v17 * v17)) - v28;
      if (v27 == 0.0)
      {
        v62 = v55 / v54;
      }

      else
      {
        v56 = ((v27 * -4.0) * v55) + (v54 * v54);
        if (v56 < 0.0)
        {
          goto LABEL_51;
        }

        v57 = sqrtf(v56);
        v58 = v47 * (v54 - v57);
        v59 = v54 + v57;
        v60 = v47 * v59;
        v61 = (v47 * v59) <= v58;
        if ((v47 * v59) <= v58)
        {
          v62 = v47 * v59;
        }

        else
        {
          v62 = v58;
        }

        if (v61)
        {
          v60 = v58;
        }

        if (v60 < 0.0)
        {
          v63 = v60 < v45;
LABEL_37:
          v64 = v44;
          if (v63)
          {
            goto LABEL_51;
          }

LABEL_38:
          if ((v64 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v60 <= 1.0)
        {
          v65 = v23 + (v60 * v53);
          goto LABEL_49;
        }

        if ((v25 & 0x80000000) == 0)
        {
          v64 = v25;
          if (v60 <= v26)
          {
LABEL_50:
            v66 = (v33 + 2 * (4 * v64));
LABEL_52:
            v67 = *(v48 + v34);
            *v30 = (v67 + v66->i16[2]) & 0xFF00 | (((v67 + v66->i16[0]) >> 8) << 24) | (((v67 + v66->i16[1]) >> 8) << 16) | ((v67 + v66->i16[3]) >> 8);
            LOBYTE(v66) = -1;
            goto LABEL_53;
          }
        }
      }

      if (v62 < 0.0)
      {
        v63 = v62 < v45;
        goto LABEL_37;
      }

      if (v62 > 1.0)
      {
        v64 = v25;
        if (v62 > v26)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v65 = v23 + (v62 * v53);
LABEL_49:
      v64 = (v22 * (v65 - v21));
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v66 = v32;
      if (v32)
      {
        goto LABEL_52;
      }

LABEL_53:
      v34 = (v34 + 1) & v51;
      v17 = v12 + v17;
      v18 = v13 + v18;
      v30 += 4;
      *v29++ = v66;
      if (!--a4)
      {
        return;
      }
    }
  }

  v35 = a1 + 368;
  v36 = *(a1 + 368);
  LODWORD(v37) = (BYTE1(a2) + 1) & 0xF;
  v38 = v36 == 0;
  if (v36)
  {
    v39 = v36 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v39 = v35;
  }

  if (v38)
  {
    LODWORD(v37) = 0;
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = (a2 >> 8) & 0xF;
  }

  if (v38)
  {
    v40 = 0;
  }

  else
  {
    v40 = 15;
  }

  v41 = v18 * v18;
  v42 = -v27;
  if (v41 <= -v27)
  {
    v68 = fabsf(*(v20 + 32));
    v69 = v27 * -4.0;
    v70 = v24 - v23;
    v71 = a4 + 2;
    while (1)
    {
      v72 = v41 + (v17 * v17);
      v73 = v12 + v17;
      v74 = v41 + (v73 * v73);
      if (v72 <= v42 || v74 <= v42)
      {
        v76 = sqrtf(v69 * v74);
        v77 = v68 * sqrtf(v69 * v72);
        v78 = v68 * v76;
        v79 = (v22 * ((v23 + (v77 * v70)) - v21));
        v80 = (v22 * ((v23 + ((v68 * v76) * v70)) - v21));
        if (v77 > 1.0 || v78 > 1.0)
        {
          if (v77 <= 1.0)
          {
            if (v79 < 0)
            {
              goto LABEL_79;
            }

            v82 = (4 * v79);
          }

          else if (v77 > v26 || (v82 = (4 * v25), v25 < 0))
          {
LABEL_79:
            v92 = v32;
            if (v32)
            {
LABEL_80:
              v93 = *(v39 + a2);
              *v30 = (v93 + v92->i16[2]) & 0xFF00 | (((v93 + v92->i16[0]) >> 8) << 24) | (((v93 + v92->i16[1]) >> 8) << 16) | ((v93 + v92->i16[3]) >> 8);
              LOBYTE(v92) = -1;
            }

            if (v78 <= 1.0)
            {
              if (v80 < 0)
              {
                goto LABEL_88;
              }

              v94 = (4 * v80);
            }

            else if (v78 > v26 || (v94 = (4 * v25), v25 < 0))
            {
LABEL_88:
              if (!v32)
              {
                v99 = 0;
                goto LABEL_92;
              }

              v95 = *v32;
              v96 = v37;
              goto LABEL_90;
            }

            v95 = *(v33 + 2 * v94);
            v96 = v37;
LABEL_90:
            v87 = vaddw_u16(vdupq_n_s32(*(v39 + v96)), v95);
            goto LABEL_91;
          }

          v92 = (v33 + 2 * v82);
          goto LABEL_80;
        }

        v84 = (v33 + 8 * v79);
        v85 = *(v33 + 8 * v80);
        v86 = *(v39 + a2);
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v85);
        *v30 = (v86 + v84[2]) & 0xFF00 | (((v86 + *v84) >> 8) << 24) | (((v86 + v84[1]) >> 8) << 16) | ((v86 + v84[3]) >> 8);
      }

      else
      {
        if (v25 < 0)
        {
          if (!v32)
          {
            v99 = 0;
            LOBYTE(v92) = 0;
            goto LABEL_92;
          }

          v83 = *v32;
        }

        else
        {
          v83 = *(v33 + 2 * (4 * v25));
        }

        v88 = vmovl_u16(v83);
        v89 = *(v39 + a2);
        v90 = v88.i32[0] + v89;
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v83);
        *v88.i8 = vadd_s32(vdup_n_s32(v89), vzip2_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL)));
        v91.i32[0] = vshl_n_s32(*v88.i8, 8uLL).u32[0];
        v91.i32[1] = vshr_n_u32(*&v88, 8uLL).i32[1];
        *v88.i8 = vand_s8(v91, 0xFF00FF0000);
        *v30 = ((v88.i32[2] + v89) | (v90 << 16)) & 0xFF00FF00 | v88.i32[0] | v88.i32[1];
      }

      LOBYTE(v92) = -1;
LABEL_91:
      v97 = v87.i32[0] >> 8;
      *v87.i8 = vzip2_s32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
      v98.i32[0] = vshl_n_s32(*v87.i8, 8uLL).u32[0];
      v98.i32[1] = vshr_n_u32(*&v87, 8uLL).i32[1];
      *v87.i8 = vand_s8(v98, 0xFF00FF0000);
      *(v30 + 4) = v87.i16[4] & 0xFF00 | (v97 << 24) | v87.i32[0] | v87.i32[1];
      v99 = -1;
LABEL_92:
      v17 = v12 + v73;
      LOBYTE(a2) = (a2 + 1) & v40;
      LOBYTE(v37) = (v37 + 1) & v40;
      v30 += 8;
      *v29 = v92;
      v29[1] = v99;
      v29 += 2;
      v71 -= 2;
      if (v71 <= 2)
      {
        return;
      }
    }
  }

  if (v32 || (v25 & 0x80000000) == 0)
  {
    v100 = (v33 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v101 = v100;
    }

    else
    {
      v101 = v32;
    }

    v102 = vdup_n_s32(*v101);
    v103 = vdup_n_s32(v101[2]);
    v104 = vdup_n_s32(v101[1]);
    v105 = vdup_n_s32(v101[3]);
    v106 = a4 + 4;
    do
    {
      v107 = (v39 + a2);
      a2 = (a2 + 1) & v40;
      LOBYTE(a12) = *v107;
      BYTE4(a12) = *(v39 + v37);
      v108 = vand_s8(*&a12, 0xFF000000FFLL);
      v109 = vorr_s8(vorr_s8((*&vshl_n_s32(vadd_s32(v102, v108), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), vand_s8(vadd_s32(v103, v108), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v104, v108), 8uLL), 0xFF000000FF0000), (*&vshr_n_u32(vadd_s32(v105, v108), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
      *v30 = v109;
      v37 = (v37 + 1) & v40;
      v109.i8[0] = *(v39 + a2);
      v109.i8[4] = *(v39 + v37);
      v110 = vand_s8(v109, 0xFF000000FFLL);
      a12 = COERCE_DOUBLE(vorr_s8(vorr_s8((*&vshl_n_s32(vadd_s32(v102, v110), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), vand_s8(vadd_s32(v103, v110), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v104, v110), 8uLL), 0xFF000000FF0000), (*&vshr_n_u32(vadd_s32(v105, v110), 8uLL) & 0xFFFFFEFFFFFFFEFFLL))));
      *(v30 + 8) = a12;
      *v29 = -1;
      v29 += 4;
      v30 += 16;
      v106 -= 4;
    }

    while (v106 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v43 = 4;
    }

    else
    {
      v43 = a4;
    }

    bzero(v29, ((a4 - v43 + 3) & 0xFFFFFFFC) + 4);
  }
}

void rgba32_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  if (a2 != 2 && !*(a1 + 96))
  {
    if (*(a1 + 48))
    {
      v8 = 0;
    }

    else
    {
      v8 = a2;
    }
  }

  v10 = *(a1 + 28);
  v12 = *(a1 + 4);
  v11 = *(a1 + 8);
  v23 = v11;
  v24 = v12;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(v25) = *(a1 + 108);
    HIDWORD(v25) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, v25, v12, v11);
    v16 = v15;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v25 = 0;
  while (1)
  {
    v19 = *(a1 + 76);
    v20 = (*(a1 + 88) + v19 * (a4 + v18 * a5) + 4 * (v17 + a3));
    v21 = *(a1 + 12) + v17;
    v22 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * v21);
    if (v8 == 1)
    {
      CGBlt_copyBytes(4 * v12, v23, v20, v22, v19 * a5, v10);
      if (!v16)
      {
        return;
      }
    }

    else if (v8)
    {
      CGSBlend8888toARGB8888(v20, v19 * a5, v22, v10, v12, v23, 0x1Bu, *(a1 + 48) != 0);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      CGSConvertXRGB8888toARGB8888(v20, v19 * a5, (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * v21), v10, v12, v23);
      if (!v16)
      {
        return;
      }
    }

LABEL_14:
    if (!shape_enum_clip_next(v16, &v25 + 1, &v25, &v24, &v23))
    {
      break;
    }

    v18 = v25;
    v17 = HIDWORD(v25);
    v12 = v24;
  }

  free(v16);
}

void rgba32_mark_image_W8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v8 = *(a1 + 28);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v17 = *(a1 + 8);
  v18 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 104);
    LODWORD(v19) = *(a1 + 108);
    HIDWORD(v19) = v12;
    shape_enum_clip_alloc(a1, a2, v11, 1, 1, 1, v12, v19, v9, v10);
    v14 = v13;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v19 = 0;
  while (1)
  {
    CGSConvertW8toARGB8888((*(a1 + 88) + *(a1 + 76) * (a3 + v16 * a4) + v15 + v6), *(a1 + 76) * a4, (*(a1 + 40) + (*(a1 + 16) + v16) * v8 + 4 * (*(a1 + 12) + v15)), v8, v9, v10);
    if (!v14)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v14, &v19 + 1, &v19, &v18, &v17))
    {

      free(v14);
      return;
    }

    v16 = v19;
    v15 = HIDWORD(v19);
    v10 = v17;
    v9 = v18;
  }
}

void rgba32_mark_image_RGB24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a4;
  v36 = a2;
  v6 = *(a1 + 28);
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v38 = v8;
  v39 = v7;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = *(a1 + 104);
    v40 = *(a1 + 108);
    v41 = v10;
    shape_enum_clip_alloc(a1, a2, v9, 1, 1, 1, v10, v40, v7, v8);
    v12 = v11;
    if (v11)
    {
      goto LABEL_28;
    }
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  v40 = 0;
  v41 = 0;
  if ((v7 & 0x80000000) != 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertBGR888toARGB8888", 142, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative");
  }

  while (1)
  {
    if ((v8 & 0x80000000) != 0)
    {
      _CGHandleAssert("CGSConvertBGR888toARGB8888", 142, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative");
    }

    v15 = *(a1 + 76);
    v16 = *(a1 + 88) + v15 * (a3 + v14 * v4) + 3 * (v13 + v36);
    v17 = *(a1 + 40) + (*(a1 + 16) + v14) * v6 + 4 * (*(a1 + 12) + v13);
    v18 = v15 * v4;
    v19 = v8 - 1;
    v20 = v16 + v19 * v18;
    v21 = v17 + v19 * v6;
    v22 = v6 >= 0 ? v6 : -v6;
    v23 = (v6 < 0 ? v21 : v17);
    v24 = v6 >= 0 ? v18 : -v18;
    v25 = (v6 < 0 ? v20 : v16);
    if ((v24 & 0x80000000) != 0)
    {
      v26 = malloc_type_malloc((v22 * v8), 0x205CA250uLL);
      v27 = v26;
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          if (v7)
          {
            v29 = &v26[i * v22];
            v30 = v7;
            v31 = &v25[i * v24];
            do
            {
              v32 = *v31;
              v33 = v31[1];
              v34 = v31[2];
              *v29 = -1;
              v29[1] = v34;
              v29[2] = v33;
              v29[3] = v32;
              v31 += 3;
              v29 += 4;
              --v30;
            }

            while (v30);
          }
        }
      }

      CGBlt_copyBytes(4 * v7, v8, v26, v23, v22, v22);
      free(v27);
      v4 = a4;
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v44.data = v25;
      v44.height = v8;
      v44.width = v7;
      v44.rowBytes = v24;
      dest.data = v23;
      dest.height = v8;
      dest.width = v7;
      dest.rowBytes = v22;
      *permuteMap = 16909056;
      vImageConvert_RGB888toARGB8888(&v44, 0, 0xFFu, &dest, 0, 0);
      vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0);
      if (!v12)
      {
        return;
      }
    }

LABEL_28:
    if (!shape_enum_clip_next(v12, &v41, &v40, &v39, &v38))
    {
      break;
    }

    v14 = v40;
    v13 = v41;
    v8 = v38;
    v7 = v39;
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_4;
    }
  }

  free(v12);
}

void rgba32_mark_image_RGBX32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v23 = v12;
  v24 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, i, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  for (i = 0; ; v17 = HIDWORD(i))
  {
    v19 = *(a1 + 76);
    v20 = (*(a1 + 88) + v19 * (a4 + v18 * a5) + 4 * (v17 + a3));
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    v22 = v19 * a5;
    if (v8 == 2)
    {
      CGSBlend8888toARGB8888(v20, v22, v21, v10, v24, v23, 0xE4u, *(a1 + 48) != 0);
      if (!v16)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGSConvertBGRA8888toARGB8888(v20, v22, v21, v10, v24, v23);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      CGSConvertBGRX8888toARGB8888(v20, v22, v21, v10, v24, v23);
      if (!v16)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v16, &i + 1, &i, &v24, &v23))
    {
      break;
    }

    v18 = i;
  }

  free(v16);
}

void rgba32_mark_image_rgbx32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v22 = v12;
  v23 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, i, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  for (i = 0; ; v17 = HIDWORD(i))
  {
    v19 = *(a1 + 76);
    v20 = (*(a1 + 88) + v19 * (a4 + v18 * a5) + 4 * (v17 + a3));
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    if (v8 == 2)
    {
      CGSBlend8888toARGB8888(v20, v19 * a5, v21, v10, v23, v22, 0x1Bu, *(a1 + 48) != 0);
      if (!v16)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGBlt_copyBytes(4 * v23, v22, v20, v21, v19 * a5, v10);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      CGSConvertXRGB8888toARGB8888(v20, v19 * a5, v21, v10, v23, v22);
      if (!v16)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v16, &i + 1, &i, &v23, &v22))
    {
      break;
    }

    v18 = i;
  }

  free(v16);
}

void rgba32_mark_image_XRGB32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v23 = v12;
  v24 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, i, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  for (i = 0; ; v17 = HIDWORD(i))
  {
    v19 = *(a1 + 76);
    v20 = (*(a1 + 88) + v19 * (a4 + v18 * a5) + 4 * (v17 + a3));
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    v22 = v19 * a5;
    if (v8 == 2)
    {
      CGSBlend8888toARGB8888(v20, v22, v21, v10, v24, v23, 0x39u, *(a1 + 48) != 0);
      if (!v16)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGSConvertABGR8888toARGB8888(v20, v22, v21, v10, v24, v23);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      CGSConvertXBGR8888toARGB8888(v20, v22, v21, v10, v24, v23);
      if (!v16)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v16, &i + 1, &i, &v24, &v23))
    {
      break;
    }

    v18 = i;
  }

  free(v16);
}

void rgba32_mark_image_xrgb32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v23 = v12;
  v24 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, i, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  for (i = 0; ; v17 = HIDWORD(i))
  {
    v19 = *(a1 + 76);
    v20 = (*(a1 + 88) + v19 * (a4 + v18 * a5) + 4 * (v17 + a3));
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    v22 = v19 * a5;
    if (v8 == 2)
    {
      CGSBlend8888toARGB8888(v20, v22, v21, v10, v24, v23, 0xC6u, *(a1 + 48) != 0);
      if (!v16)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGSConvertRGBA8888toARGB8888(v20, v22, v21, v10, v24, v23);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      CGSConvertRGBX8888toARGB8888(v20, v22, v21, v10, v24, v23);
      if (!v16)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v16, &i + 1, &i, &v24, &v23))
    {
      break;
    }

    v18 = i;
  }

  free(v16);
}

void rgba32_mark_image_W16(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v8 = *(a1 + 28);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v17 = *(a1 + 8);
  v18 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 104);
    LODWORD(v19) = *(a1 + 108);
    HIDWORD(v19) = v12;
    shape_enum_clip_alloc(a1, a2, v11, 1, 1, 1, v12, v19, v9, v10);
    v14 = v13;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v19 = 0;
  while (1)
  {
    CGSConvertW16toARGB8888(*(a1 + 88) + *(a1 + 76) * (a3 + v16 * a4) + 2 * (v15 + v6), *(a1 + 76) * a4, (*(a1 + 40) + (*(a1 + 16) + v16) * v8 + 4 * (*(a1 + 12) + v15)), v8, v9, v10);
    if (!v14)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v14, &v19 + 1, &v19, &v18, &v17))
    {

      free(v14);
      return;
    }

    v16 = v19;
    v15 = HIDWORD(v19);
    v10 = v17;
    v9 = v18;
  }
}

void rgba32_mark_image_w16(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v8 = *(a1 + 28);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v17 = *(a1 + 8);
  v18 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 104);
    LODWORD(v19) = *(a1 + 108);
    HIDWORD(v19) = v12;
    shape_enum_clip_alloc(a1, a2, v11, 1, 1, 1, v12, v19, v9, v10);
    v14 = v13;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v19 = 0;
  while (1)
  {
    CGSConvertw16toARGB8888(*(a1 + 88) + *(a1 + 76) * (a3 + v16 * a4) + 2 * (v15 + v6), *(a1 + 76) * a4, (*(a1 + 40) + (*(a1 + 16) + v16) * v8 + 4 * (*(a1 + 12) + v15)), v8, v9, v10);
    if (!v14)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v14, &v19 + 1, &v19, &v18, &v17))
    {

      free(v14);
      return;
    }

    v16 = v19;
    v15 = HIDWORD(v19);
    v10 = v17;
    v9 = v18;
  }
}

void rgba32_mark_image_RGB48(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v33 = a2;
  v5 = *(a1 + 28);
  v6 = v5;
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v37 = v8;
  v38 = v7;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = *(a1 + 104);
    LODWORD(v39) = *(a1 + 108);
    HIDWORD(v39) = v10;
    shape_enum_clip_alloc(a1, a2, v9, 1, 1, 1, v10, v39, v7, v8);
    v12 = v11;
    if (v11)
    {
      goto LABEL_24;
    }
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  v39 = 0;
  if (v7 < 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertBGR16toARGB8888", 422, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative");
  }

  while (1)
  {
    if (v8 < 0)
    {
      _CGHandleAssert("CGSConvertBGR16toARGB8888", 422, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative");
    }

    v36 = v12;
    v15 = *(a1 + 76);
    v16 = *(a1 + 88) + v15 * (a3 + v14 * a4) + 6 * (v13 + v33);
    v17 = (*(a1 + 40) + (*(a1 + 16) + v14) * v6 + 4 * (*(a1 + 12) + v13));
    v18 = v15 * a4;
    v19 = v8 - 1;
    if ((v5 & 0x80000000) != 0)
    {
      v16 += v19 * v18;
      LODWORD(v18) = -v18;
      v20 = v6;
      v17 += v19 * v6;
      v21 = v5;
      v22 = -v5;
    }

    else
    {
      v20 = v6;
      v21 = v5;
      v22 = v5;
    }

    v23 = v16 + ((v18 * v19) & (v18 >> 31));
    v24 = v17;
    if (v23 <= &v17[v8 * v22])
    {
      v25 = v18 >= 0 ? v18 : -v18;
      v24 = v17;
      if (v23 + (v25 * v8) >= v17)
      {
        v24 = malloc_type_malloc(v8 * v22, 0x9A1EF6CEuLL);
      }
    }

    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        if (v7)
        {
          v27 = &v24[i * v22];
          v28 = v7;
          v29 = (v16 + i * v18);
          do
          {
            v30 = *v29;
            v31 = v29[2];
            v32 = v29[4];
            *v27 = -1;
            v27[1] = v32;
            v27[2] = v31;
            v27[3] = v30;
            v29 += 6;
            v27 += 4;
            --v28;
          }

          while (v28);
        }
      }
    }

    if (v24 != v17)
    {
      CGBlt_copyBytes(4 * v7, v8, v24, v17, v22, v22);
      free(v24);
    }

    v6 = v20;
    v5 = v21;
    v12 = v36;
    if (!v36)
    {
      break;
    }

LABEL_24:
    if (!shape_enum_clip_next(v12, &v39 + 1, &v39, &v38, &v37))
    {

      free(v12);
      return;
    }

    v14 = v39;
    v13 = HIDWORD(v39);
    v8 = v37;
    v7 = v38;
    if (v38 < 0)
    {
      goto LABEL_4;
    }
  }
}

void rgba32_mark_image_rgb48(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v34 = a2;
  v5 = *(a1 + 28);
  v6 = v5;
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v38 = v8;
  v39 = v7;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = *(a1 + 104);
    LODWORD(v40) = *(a1 + 108);
    HIDWORD(v40) = v10;
    shape_enum_clip_alloc(a1, a2, v9, 1, 1, 1, v10, v40, v7, v8);
    v12 = v11;
    if (v11)
    {
      goto LABEL_24;
    }
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  v40 = 0;
  if (v7 < 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertbgr16toARGB8888", 584, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative");
  }

  while (1)
  {
    if (v8 < 0)
    {
      _CGHandleAssert("CGSConvertbgr16toARGB8888", 584, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative");
    }

    v37 = v12;
    v15 = *(a1 + 76);
    v16 = *(a1 + 88) + v15 * (a3 + v14 * a4) + 6 * (v13 + v34);
    v17 = (*(a1 + 40) + (*(a1 + 16) + v14) * v6 + 4 * (*(a1 + 12) + v13));
    v18 = v15 * a4;
    v19 = v8 - 1;
    if ((v5 & 0x80000000) != 0)
    {
      v16 += v19 * v18;
      LODWORD(v18) = -v18;
      v20 = v6;
      v17 += v19 * v6;
      v21 = v5;
      v22 = -v5;
    }

    else
    {
      v20 = v6;
      v21 = v5;
      v22 = v5;
    }

    v23 = v16 + ((v18 * v19) & (v18 >> 31));
    v24 = v17;
    if (v23 <= &v17[v8 * v22])
    {
      v25 = v18 >= 0 ? v18 : -v18;
      v24 = v17;
      if (v23 + (v25 * v8) >= v17)
      {
        v24 = malloc_type_malloc(v8 * v22, 0x238FF620uLL);
      }
    }

    if (v8)
    {
      v26 = 0;
      v27 = (v16 + 5);
      do
      {
        if (v7)
        {
          v28 = &v24[v26 * v22];
          v29 = v7;
          v30 = v27;
          do
          {
            v31 = *(v30 - 4);
            v32 = *(v30 - 2);
            v33 = *v30;
            v30 += 6;
            *v28 = -1;
            v28[1] = v33;
            v28[2] = v32;
            v28[3] = v31;
            v28 += 4;
            --v29;
          }

          while (v29);
        }

        ++v26;
        v27 += v18;
      }

      while (v26 != v8);
    }

    if (v24 != v17)
    {
      CGBlt_copyBytes(4 * v7, v8, v24, v17, v22, v22);
      free(v24);
    }

    v6 = v20;
    v5 = v21;
    v12 = v37;
    if (!v37)
    {
      break;
    }

LABEL_24:
    if (!shape_enum_clip_next(v12, &v40 + 1, &v40, &v39, &v38))
    {

      free(v12);
      return;
    }

    v14 = v40;
    v13 = HIDWORD(v40);
    v8 = v38;
    v7 = v39;
    if (v39 < 0)
    {
      goto LABEL_4;
    }
  }
}

void rgba32_mark_image_RGBA64(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a5;
  v60 = a2;
  v59 = *(a1 + 28);
  v6 = *(a1 + 4);
  v7 = *(a1 + 8);
  v65 = v7;
  v66 = v6;
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = *(a1 + 104);
    LODWORD(v67) = *(a1 + 108);
    HIDWORD(v67) = v9;
    shape_enum_clip_alloc(a1, a2, v8, 1, 1, 1, v9, v67, v6, v7);
    v11 = v10;
    if (v10)
    {
      goto LABEL_50;
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v67 = 0;
  while (1)
  {
    v14 = *(a1 + 76);
    v15 = *(a1 + 88) + v14 * (a4 + v13 * v5) + 8 * (v12 + a3);
    v16 = *(a1 + 16) + v13;
    v17 = *(a1 + 48);
    v18 = (*(a1 + 40) + v16 * v59 + 4 * (*(a1 + 12) + v12));
    v19 = v14 * v5;
    v64 = v11;
    if (v60 == 2)
    {
      if (v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = 255;
      }

      if (v7 >= 1)
      {
        v21 = vdupq_n_s32(v20);
        v22.i64[0] = 0xFF000000FF0000;
        v22.i64[1] = 0xFF000000FF0000;
        v23.i64[0] = 0xFF000000FF00;
        v23.i64[1] = 0xFF000000FF00;
        v24.i64[0] = 0xFF000000FFLL;
        v24.i64[1] = 0xFF000000FFLL;
        v25.i64[0] = 0x1000100010001;
        v25.i64[1] = 0x1000100010001;
        do
        {
          v26 = v6;
          v27 = v18;
          v28 = v15;
          if (v6 >= 4)
          {
            do
            {
              v29.i32[0] = v28[1];
              v29.i32[1] = v28[3];
              v29.i32[2] = v28[5];
              v29.i32[3] = v28[7];
              v30 = *&vshrq_n_u32(v29, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
              v31 = vaddvq_s32(v30);
              if (v31)
              {
                v32.i32[0] = *v28;
                v32.i32[1] = v28[2];
                v32.i32[2] = v28[4];
                v32.i32[3] = v28[6];
                v33 = vorrq_s8(vorrq_s8(vandq_s8(vshlq_n_s32(v29, 8uLL), v23), vorrq_s8(vshlq_n_s32(v32, 0x18uLL), vandq_s8(v32, v22))), v30);
                if (v31 != 1020)
                {
                  v34 = veorq_s8(v30, v24);
                  v35.i16[0] = v27->u8[0];
                  v35.i16[1] = BYTE2(v27->u32[0]);
                  v35.i16[2] = BYTE4(v27->i64[0]);
                  v35.i16[3] = BYTE6(v27->i64[0]);
                  v35.i16[4] = v27->i64[1];
                  v35.i16[5] = BYTE2(v27->i64[1]);
                  v35.i16[6] = BYTE12(*v27);
                  v35.i16[7] = BYTE14(*v27);
                  v36 = vmulq_s32((*&vshrq_n_u32(*v27, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v34);
                  v37 = vmulq_s32(v35, v34);
                  v33 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v37, v25), (*&vshrq_n_u32(v37, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v33, (*&vaddq_s32(vaddq_s32(v36, v25), (*&vshrq_n_u32(v36, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v27 = vorrq_s8(v33, v21);
              }

              v28 += 8;
              ++v27;
              v38 = v26 > 7;
              v26 -= 4;
            }

            while (v38);
          }

          if (v26 >= 1)
          {
            v39 = v26 + 1;
            do
            {
              v40 = v28[1];
              if (BYTE2(v40))
              {
                v41 = *v28 & 0xFF0000 | (*v28 << 24) | (v28[1] << 8) | BYTE2(v28[1]);
                if (BYTE2(v40) != 255)
                {
                  v41 += ((((v27->i32[0] & 0xFF00FF) * (BYTE2(v40) ^ 0xFF) + 65537 + ((((v27->i32[0] & 0xFF00FF) * (BYTE2(v40) ^ 0xFFu)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v27->i32[0] >> 8) & 0xFF00FF) * (BYTE2(v40) ^ 0xFF) + 65537 + (((((v27->i32[0] >> 8) & 0xFF00FF) * (BYTE2(v40) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v27->i32[0] = v41 | v20;
              }

              v28 += 2;
              v27 = (v27 + 4);
              --v39;
            }

            while (v39 > 1);
          }

          v15 += v19;
          v18 += v59;
          v38 = v7-- <= 1;
        }

        while (!v38);
      }
    }

    else
    {
      v42 = 0;
      if (v17)
      {
        v42 = *(a1 + 96) != 0;
      }

      if (v6 < 0)
      {
        _CGHandleAssert("CGSConvertBGRA16toARGB8888", 454, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative");
      }

      if (v7 < 0)
      {
        _CGHandleAssert("CGSConvertBGRA16toARGB8888", 454, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative");
      }

      v43 = v7 - 1;
      if (v59 < 0)
      {
        v15 += v43 * v19;
        LODWORD(v19) = -v19;
        v44 = -v59;
        v18 += v43 * v59;
      }

      else
      {
        v44 = v59;
      }

      v45 = v15 + ((v19 * v43) & (v19 >> 31));
      v46 = v18;
      if (v45 <= &v18[v7 * v44])
      {
        v47 = v19 >= 0 ? v19 : -v19;
        v46 = v18;
        if (v45 + (v47 * v7) >= v18)
        {
          v48 = v44;
          v49 = malloc_type_malloc(v7 * v44, 0x4882D40uLL);
          v44 = v48;
          v46 = v49;
        }
      }

      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          if (v6)
          {
            v51 = &v46[i * v44];
            v52 = v6;
            v53 = (v15 + i * v19);
            do
            {
              v54 = *v53;
              v55 = v53[2];
              v56 = v53[4];
              v57 = v53[6];
              if (!v42)
              {
                v57 = -1;
              }

              *v51 = v57;
              v51[1] = v56;
              v51[2] = v55;
              v51[3] = v54;
              v53 += 8;
              v51 += 4;
              --v52;
            }

            while (v52);
          }
        }
      }

      v5 = a5;
      if (v46 != v18)
      {
        CGBlt_copyBytes(4 * v6, v7, v46, v18, v44, v44);
        free(v46);
      }
    }

    v11 = v64;
    if (!v64)
    {
      break;
    }

LABEL_50:
    if (!shape_enum_clip_next(v11, &v67 + 1, &v67, &v66, &v65))
    {

      free(v11);
      return;
    }

    v13 = v67;
    v12 = HIDWORD(v67);
    v7 = v65;
    v6 = v66;
  }
}

void rgba32_mark_image_rgba64(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a5;
  v61 = a2;
  v60 = *(a1 + 28);
  v6 = *(a1 + 4);
  v7 = *(a1 + 8);
  v66 = v7;
  v67 = v6;
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = *(a1 + 104);
    LODWORD(v68) = *(a1 + 108);
    HIDWORD(v68) = v9;
    shape_enum_clip_alloc(a1, a2, v8, 1, 1, 1, v9, v68, v6, v7);
    v11 = v10;
    if (v10)
    {
      goto LABEL_50;
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v68 = 0;
  while (1)
  {
    v14 = *(a1 + 76);
    v15 = *(a1 + 88) + v14 * (a4 + v13 * v5) + 8 * (v12 + a3);
    v16 = *(a1 + 16) + v13;
    v17 = *(a1 + 48);
    v18 = (*(a1 + 40) + v16 * v60 + 4 * (*(a1 + 12) + v12));
    v19 = v14 * v5;
    v65 = v11;
    if (v61 == 2)
    {
      if (v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = 255;
      }

      if (v7 >= 1)
      {
        v21 = vdupq_n_s32(v20);
        v22.i64[0] = 0xFF000000FF0000;
        v22.i64[1] = 0xFF000000FF0000;
        v23.i64[0] = 0xFF000000FF00;
        v23.i64[1] = 0xFF000000FF00;
        v24.i64[0] = 0xFF000000FFLL;
        v24.i64[1] = 0xFF000000FFLL;
        v25.i64[0] = 0x1000100010001;
        v25.i64[1] = 0x1000100010001;
        do
        {
          v26 = v6;
          v27 = v18;
          v28 = v15;
          if (v6 >= 4)
          {
            do
            {
              v29.i32[0] = v28[1];
              v29.i32[1] = v28[3];
              v29.i32[2] = v28[5];
              v29.i32[3] = v28[7];
              v30 = vshrq_n_u32(v29, 0x18uLL);
              v31 = vaddvq_s32(v30);
              if (v31)
              {
                v32.i32[0] = *v28;
                v32.i32[1] = v28[2];
                v32.i32[2] = v28[4];
                v32.i32[3] = v28[6];
                v33 = vsraq_n_u32(vorrq_s8(vorrq_s8((*&vshlq_n_s32(v32, 0x10uLL) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vandq_s8(vshrq_n_u32(v32, 8uLL), v22)), vandq_s8(v29, v23)), v29, 0x18uLL);
                if (v31 != 1020)
                {
                  v34 = veorq_s8(v30, v24);
                  v35.i16[0] = v27->u8[0];
                  v35.i16[1] = BYTE2(v27->u32[0]);
                  v35.i16[2] = BYTE4(v27->i64[0]);
                  v35.i16[3] = BYTE6(v27->i64[0]);
                  v35.i16[4] = v27->i64[1];
                  v35.i16[5] = BYTE2(v27->i64[1]);
                  v35.i16[6] = BYTE12(*v27);
                  v35.i16[7] = BYTE14(*v27);
                  v36 = vmulq_s32((*&vshrq_n_u32(*v27, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v34);
                  v37 = vmulq_s32(v35, v34);
                  v33 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v37, v25), (*&vshrq_n_u32(v37, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v33, (*&vaddq_s32(vaddq_s32(v36, v25), (*&vshrq_n_u32(v36, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v27 = vorrq_s8(v33, v21);
              }

              v28 += 8;
              ++v27;
              v38 = v26 > 7;
              v26 -= 4;
            }

            while (v38);
          }

          if (v26 >= 1)
          {
            v39 = v26 + 1;
            do
            {
              v40 = HIBYTE(v28[1]);
              if (v40)
              {
                v41 = (*v28 << 16) & 0xFF000000 | (*v28 >> 8) & 0xFFFF0000 | v28[1] & 0xFF00 | HIBYTE(v28[1]);
                if (v40 != 255)
                {
                  v41 += ((((v27->i32[0] & 0xFF00FF) * (v40 ^ 0xFF) + 65537 + ((((v27->i32[0] & 0xFF00FF) * (v40 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v27->i32[0] >> 8) & 0xFF00FF) * (v40 ^ 0xFF) + 65537 + (((((v27->i32[0] >> 8) & 0xFF00FF) * (v40 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v27->i32[0] = v41 | v20;
              }

              v28 += 2;
              v27 = (v27 + 4);
              --v39;
            }

            while (v39 > 1);
          }

          v15 += v19;
          v18 += v60;
          v38 = v7-- <= 1;
        }

        while (!v38);
      }
    }

    else
    {
      v42 = 0;
      if (v17)
      {
        v42 = *(a1 + 96) != 0;
      }

      if (v6 < 0)
      {
        _CGHandleAssert("CGSConvertbgra16toARGB8888", 616, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative");
      }

      if (v7 < 0)
      {
        _CGHandleAssert("CGSConvertbgra16toARGB8888", 616, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative");
      }

      v43 = v7 - 1;
      if (v60 < 0)
      {
        v15 += v43 * v19;
        LODWORD(v19) = -v19;
        v44 = -v60;
        v18 += v43 * v60;
      }

      else
      {
        v44 = v60;
      }

      v45 = v15 + ((v19 * v43) & (v19 >> 31));
      v46 = v18;
      if (v45 <= &v18[v7 * v44])
      {
        v47 = v19 >= 0 ? v19 : -v19;
        v46 = v18;
        if (v45 + (v47 * v7) >= v18)
        {
          v48 = v44;
          v49 = malloc_type_malloc(v7 * v44, 0x3DAFE0A3uLL);
          v44 = v48;
          v46 = v49;
        }
      }

      if (v7)
      {
        v50 = 0;
        v51 = (v15 + 3);
        do
        {
          if (v6)
          {
            v52 = &v46[v50 * v44];
            v53 = v51;
            v54 = v6;
            do
            {
              v55 = *(v53 - 2);
              v56 = *v53;
              v57 = v53[2];
              v58 = v53[4];
              if (!v42)
              {
                v58 = -1;
              }

              *v52 = v58;
              v52[1] = v57;
              v52[2] = v56;
              v52[3] = v55;
              v52 += 4;
              v53 += 8;
              --v54;
            }

            while (v54);
          }

          ++v50;
          v51 += v19;
        }

        while (v50 != v7);
      }

      v5 = a5;
      if (v46 != v18)
      {
        CGBlt_copyBytes(4 * v6, v7, v46, v18, v44, v44);
        free(v46);
      }
    }

    v11 = v65;
    if (!v65)
    {
      break;
    }

LABEL_50:
    if (!shape_enum_clip_next(v11, &v68 + 1, &v68, &v67, &v66))
    {

      free(v11);
      return;
    }

    v13 = v68;
    v12 = HIDWORD(v68);
    v7 = v66;
    v6 = v67;
  }
}

unint64_t rgba32_image_mark_rgba64(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v87 = *a2;
  v7 = *(result + 32);
  if (*(result + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v86 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v83 = *(a2 + 9);
  v13 = *(a2 + 5) + v83 * a4;
  v14 = &v7[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v92 = result;
  v88 = a5;
  v84 = v12;
  v85 = v11;
  if (*(result + 176))
  {
    v80 = ~(-1 << v12);
    v81 = *(a2 + 13);
    v82 = *(a2 + 11);
    v79 = v12 - 4;
    v15 = v14 - 8;
    v16 = v8 << 48;
    v77 = a5;
    v78 = -v11;
    v76 = v10 + 16 * a3 + 8;
    while (1)
    {
      if (((v81 - v13) | (v13 - v82)) < 0)
      {
        v21 = 0;
        v93 = 0;
      }

      else
      {
        v17 = ((v13 & v80) >> v79) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v78;
        if (!v19)
        {
          v20 = v11;
        }

        v93 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v92 + 32) + (v13 >> v12) * v11;
      v90 = a6;
      v89 = v13;
      if (v87 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v76;
        v24 = v77;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v7)
          {
            v28 = v7;
          }

          v29 = *v28;
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v39 = (v27 + v93);
            if (v15 < v27 + v93)
            {
              v39 = v15;
            }

            if (v39 < v7)
            {
              v39 = v7;
            }

            v33 = *v39;
            v30 = v21;
            goto LABEL_41;
          }

LABEL_42:
          result = ((v29 | v16) >> 56) | (BYTE1(v29) << 24) | (BYTE3(v29) << 16) | WORD2(v29) & 0xFF00;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          v23 += 2;
          *v9++ = result;
          if (!--v24)
          {
            goto LABEL_83;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v7)
        {
          v32 = v7;
        }

        v33 = *v32;
        if (v21)
        {
          v34 = (v27 + v93);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v7)
          {
            v35 = v7;
          }

          v36 = *v35;
          v37 = &v34[v31];
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v7)
          {
            v37 = v7;
          }

          v38 = BLEND16_21891[v21];
          v29 = v29 - ((v38 & v29) >> v21) + ((v38 & v36) >> v21);
          v33 = v33 - ((v38 & v33) >> v21) + ((v38 & *v37) >> v21);
        }

LABEL_41:
        v29 = v29 - ((BLEND16_21891[v30] & v29) >> v30) + ((BLEND16_21891[v30] & v33) >> v30);
        goto LABEL_42;
      }

LABEL_83:
      v11 = v85;
      v9 += v86;
      LOBYTE(v12) = v84;
      v13 = v89 + v83;
      a6 = v90 - 1;
      a5 = v88;
      if (v90 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v40 = v76;
    v41 = v77;
    while (1)
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v22 + v42;
      if (v15 >= v22 + v42)
      {
        v45 = (v22 + v42);
      }

      else
      {
        v45 = v15;
      }

      if (v45 < v7)
      {
        v45 = v7;
      }

      v46 = *v45;
      v47 = *v40 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v56 = (v44 + v93);
        if (v15 < v44 + v93)
        {
          v56 = v15;
        }

        if (v56 < v7)
        {
          v56 = v7;
        }

        v50 = *v56;
        v47 = v21;
        goto LABEL_75;
      }

LABEL_76:
      v57 = ((v46 | v16) >> 56) | (BYTE1(v46) << 24) | (BYTE3(v46) << 16);
      v58 = v57 | WORD2(v46) & 0xFF00;
      if (v6 != 255)
      {
        result = PDM_21869(v57 | WORD2(v46) & 0xFF00, v6);
        v58 = result;
      }

      if (v58)
      {
        if (v58 == 255)
        {
          *v9 = v58;
        }

        else
        {
          result = DplusDM_21871(v9, v58, *v9, ~v58);
        }
      }

      v40 += 2;
      ++v9;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v48 = v43 >> 4;
    v49 = (v44 + (v43 >> 4));
    if (v15 < v49)
    {
      v49 = v15;
    }

    if (v49 < v7)
    {
      v49 = v7;
    }

    v50 = *v49;
    if (v21)
    {
      v51 = (v44 + v93);
      if (v15 >= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = v15;
      }

      if (v52 < v7)
      {
        v52 = v7;
      }

      v53 = *v52;
      v54 = &v51[v48];
      if (v15 < v54)
      {
        v54 = v15;
      }

      if (v54 < v7)
      {
        v54 = v7;
      }

      v55 = BLEND16_21891[v21];
      v46 = v46 - ((v55 & v46) >> v21) + ((v55 & v53) >> v21);
      v50 = v50 - ((v55 & v50) >> v21) + ((v55 & *v54) >> v21);
    }

LABEL_75:
    v46 = v46 - ((BLEND16_21891[v47] & v46) >> v47) + ((BLEND16_21891[v47] & v50) >> v47);
    goto LABEL_76;
  }

  v94 = (v10 + 16 * a3);
  v59 = v14 - 8;
  v60 = v8 << 48;
  v91 = a5;
  do
  {
    v61 = *(v92 + 32);
    v62 = &v61[(v13 >> v12) * v11];
    v63 = v13;
    v64 = a6;
    if (v87 == 1)
    {
      if (a5 >= 1)
      {
        v65 = v94;
        v66 = v91;
        do
        {
          v67 = *v65;
          v65 += 2;
          v68 = &v62[v67];
          if (v59 < &v62[v67])
          {
            v68 = v59;
          }

          if (v68 < v61)
          {
            v68 = v61;
          }

          result = ((*v68 | v60) >> 56) | (BYTE1(*v68) << 24) | (BYTE3(*v68) << 16) | HIDWORD(*v68) & 0xFF00;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v9++ = result;
          --v66;
        }

        while (v66);
      }
    }

    else
    {
      v69 = v94;
      v70 = v91;
      if (a5 >= 1)
      {
        do
        {
          v71 = *v69;
          v69 += 2;
          v72 = &v62[v71];
          if (v59 < &v62[v71])
          {
            v72 = v59;
          }

          if (v72 < *(v92 + 32))
          {
            v72 = *(v92 + 32);
          }

          v73 = *v72;
          v74 = ((v73 | v60) >> 56) | (BYTE1(v73) << 24) | (BYTE3(v73) << 16);
          v75 = v74 | WORD2(v73) & 0xFF00;
          if (v6 != 255)
          {
            result = PDM_21869(v74 | WORD2(v73) & 0xFF00, v6);
            v75 = result;
          }

          if (v75)
          {
            if (v75 == 255)
            {
              *v9 = v75;
            }

            else
            {
              result = DplusDM_21871(v9, v75, *v9, ~v75);
            }
          }

          ++v9;
          --v70;
        }

        while (v70);
      }
    }

    v11 = v85;
    v9 += v86;
    LOBYTE(v12) = v84;
    v13 = v63 + v83;
    a6 = v64 - 1;
    a5 = v88;
  }

  while (v64 != 1);
  return result;
}

unint64_t rgba32_image_mark_RGBA64(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v97 = *a2;
  v7 = *(result + 32);
  if (*(result + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v96 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v93 = *(a2 + 9);
  v13 = *(a2 + 5) + v93 * a4;
  v14 = v7 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v102 = result;
  v94 = v12;
  v95 = v11;
  if (*(result + 176))
  {
    v90 = ~(-1 << v12);
    v91 = *(a2 + 13);
    v92 = *(a2 + 11);
    v89 = v12 - 4;
    v15 = (v14 - 8);
    v16 = v8 << 48;
    v87 = a5;
    v88 = -v11;
    v86 = v10 + 16 * a3 + 8;
    while (1)
    {
      if (((v91 - v13) | (v13 - v92)) < 0)
      {
        v21 = 0;
        v103 = 0;
      }

      else
      {
        v17 = ((v13 & v90) >> v89) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v88;
        if (!v19)
        {
          v20 = v11;
        }

        v103 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v102 + 32) + (v13 >> v12) * v11;
      v100 = a6;
      v99 = v13;
      if (v97 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v86;
        v24 = v87;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v7)
          {
            v28 = v7;
          }

          v29 = ((bswap32(v28[3]) >> 16) << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v103);
            if (v15 < v27 + v103)
            {
              v42 = v15;
            }

            if (v42 < v7)
            {
              v42 = v7;
            }

            v43 = BLEND16_21891[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = ((((bswap32(v42[3]) >> 16) << 48) | ((bswap32(v42[2]) >> 16) << 32) | bswap32(v42[1]) & 0xFFFF0000 | (bswap32(*v42) >> 16)) & v43) >> v21;
            goto LABEL_42;
          }

LABEL_43:
          result = ((v29 | v16) >> 56) | (BYTE1(v29) << 24) | (BYTE3(v29) << 16) | WORD2(v29) & 0xFF00;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          v23 += 2;
          *v9++ = result;
          if (!--v24)
          {
            goto LABEL_85;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v7)
        {
          v32 = v7;
        }

        v33 = ((bswap32(v32[3]) >> 16) << 48) | ((bswap32(v32[2]) >> 16) << 32) | bswap32(v32[1]) & 0xFFFF0000 | (bswap32(*v32) >> 16);
        if (v21)
        {
          v34 = (v27 + v103);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v7)
          {
            v35 = v7;
          }

          v36 = ((bswap32(v35[3]) >> 16) << 48) | ((bswap32(v35[2]) >> 16) << 32) | bswap32(v35[1]) & 0xFFFF0000 | (bswap32(*v35) >> 16);
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v7)
          {
            v37 = v7;
          }

          v38 = BLEND16_21891[v21];
          v29 = v29 - ((v38 & v29) >> v21) + ((v36 & v38) >> v21);
          v33 = v33 - ((v38 & v33) >> v21) + (((((bswap32(v37[3]) >> 16) << 48) | ((bswap32(v37[2]) >> 16) << 32) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16)) & v38) >> v21);
        }

        v39 = BLEND16_21891[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_42:
        v29 = v40 + v41;
        goto LABEL_43;
      }

LABEL_85:
      v11 = v95;
      v9 += v96;
      LOBYTE(v12) = v94;
      v13 = v99 + v93;
      a6 = v100 - 1;
      if (v100 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v45 = v86;
    v44 = v87;
    while (1)
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      v48 = v22 + v46;
      if (v15 >= v22 + v46)
      {
        v49 = (v22 + v46);
      }

      else
      {
        v49 = v15;
      }

      if (v49 < v7)
      {
        v49 = v7;
      }

      v50 = ((bswap32(v49[3]) >> 16) << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
      v51 = *v45 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v63 = (v48 + v103);
        if (v15 < v48 + v103)
        {
          v63 = v15;
        }

        if (v63 < v7)
        {
          v63 = v7;
        }

        v64 = BLEND16_21891[v21];
        v61 = v50 - ((v64 & v50) >> v21);
        v62 = ((((bswap32(v63[3]) >> 16) << 48) | ((bswap32(v63[2]) >> 16) << 32) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16)) & v64) >> v21;
        goto LABEL_77;
      }

LABEL_78:
      v65 = ((v50 | v16) >> 56) | (BYTE1(v50) << 24) | (BYTE3(v50) << 16);
      v66 = v65 | WORD2(v50) & 0xFF00;
      if (v6 != 255)
      {
        result = PDM_21869(v65 | WORD2(v50) & 0xFF00, v6);
        v66 = result;
      }

      if (v66)
      {
        if (v66 == 255)
        {
          *v9 = v66;
        }

        else
        {
          result = DplusDM_21871(v9, v66, *v9, ~v66);
        }
      }

      v45 += 2;
      ++v9;
      if (!--v44)
      {
        goto LABEL_85;
      }
    }

    v52 = v47 >> 4;
    v53 = (v48 + (v47 >> 4));
    if (v15 < v53)
    {
      v53 = v15;
    }

    if (v53 < v7)
    {
      v53 = v7;
    }

    v54 = ((bswap32(v53[3]) >> 16) << 48) | ((bswap32(v53[2]) >> 16) << 32) | bswap32(v53[1]) & 0xFFFF0000 | (bswap32(*v53) >> 16);
    if (v21)
    {
      v55 = (v48 + v103);
      if (v15 >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v7)
      {
        v56 = v7;
      }

      v57 = ((bswap32(v56[3]) >> 16) << 48) | ((bswap32(v56[2]) >> 16) << 32) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16);
      v58 = (v55 + v52);
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v7)
      {
        v58 = v7;
      }

      v59 = BLEND16_21891[v21];
      v50 = v50 - ((v59 & v50) >> v21) + ((v57 & v59) >> v21);
      v54 = v54 - ((v59 & v54) >> v21) + (((((bswap32(v58[3]) >> 16) << 48) | ((bswap32(v58[2]) >> 16) << 32) | bswap32(v58[1]) & 0xFFFF0000 | (bswap32(*v58) >> 16)) & v59) >> v21);
    }

    v60 = BLEND16_21891[v51];
    v61 = v50 - ((v60 & v50) >> v51);
    v62 = (v60 & v54) >> v51;
LABEL_77:
    v50 = v61 + v62;
    goto LABEL_78;
  }

  v104 = (v10 + 16 * a3);
  v67 = v14 - 8;
  v101 = a5;
  do
  {
    v68 = a6;
    v69 = v13;
    v70 = *(v102 + 32);
    v71 = &v70[(v13 >> v12) * v11];
    if (v97 == 1)
    {
      if (a5 >= 1)
      {
        v72 = v104;
        v73 = v101;
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = &v71[v74];
          if (v67 < &v71[v74])
          {
            v75 = v67;
          }

          if (v75 < v70)
          {
            v75 = v70;
          }

          HIDWORD(v76) = *v75;
          LODWORD(v76) = v8 | (*(v75 + 3) << 8);
          result = (v76 >> 8) & 0xFFFF00FF | (v75[2] << 16) | (*(v75 + 2) << 8);
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v9++ = result;
          --v73;
        }

        while (v73);
      }
    }

    else
    {
      v77 = v104;
      v78 = v101;
      if (a5 >= 1)
      {
        do
        {
          v79 = *v77;
          v77 += 2;
          v80 = &v71[v79];
          if (v67 < &v71[v79])
          {
            v80 = v67;
          }

          if (v80 < *(v102 + 32))
          {
            v80 = *(v102 + 32);
          }

          v81 = v80[2];
          v82 = *(v80 + 2);
          HIDWORD(v84) = *v80;
          LODWORD(v84) = v8 | (*(v80 + 3) << 8);
          v83 = v84 >> 8;
          v85 = v83 & 0xFFFF00FF | (v81 << 16) | (v82 << 8);
          if (v6 != 255)
          {
            result = PDM_21869(v83 & 0xFFFF00FF | (v81 << 16) | (v82 << 8), v6);
            v85 = result;
          }

          if (v85)
          {
            if (v85 == 255)
            {
              *v9 = v85;
            }

            else
            {
              result = DplusDM_21871(v9, v85, *v9, ~v85);
            }
          }

          ++v9;
          --v78;
        }

        while (v78);
      }
    }

    v11 = v95;
    v9 += v96;
    LOBYTE(v12) = v94;
    v13 = v69 + v93;
    a6 = v68 - 1;
  }

  while (v68 != 1);
  return result;
}