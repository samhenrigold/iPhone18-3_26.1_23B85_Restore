uint64_t cmyk32_sample_rgb555(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 8);
  v92 = *(result + 144) - 1;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = -16777216;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 2 * v11 - 4;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_41;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_41;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_41;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_41;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_41:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_42:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 2 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 24;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_64:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = *v36;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 24;
    }

    v84 = interpolate_8555_21866[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 55));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = *v36;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 24;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_8555_21866[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_46;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 55));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = *v55;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = *v58;
      v60 = (v57 + (v54 >> 55));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = *v36;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 24;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 24;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 24;
      }

      v67 = interpolate_8555_21866[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_8555_21866[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_46:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    RGB555(v8, v96 | (v38 >> 29 << 24) | v38);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if (((v47 | v48 | (a3 - v90) | (a2 - v91)) & 0x8000000000000000) != 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_42;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = *v49;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 24;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_64;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

unint64_t *RGB555(unint64_t *result, unsigned int a2)
{
  v2 = (a2 << 14) & 0xF80000 | ((a2 >> 10) << 27) | ((a2 & 0x1F) << 11);
  v3 = (v2 >> 5) & 0x3F3F3F3F | HIBYTE(a2) | v2;
  v4 = HIBYTE(v3);
  if (HIBYTE(v3) <= BYTE2(v3))
  {
    v4 = BYTE2(v3);
  }

  if (v4 <= BYTE1(v3))
  {
    v4 = BYTE1(v3);
  }

  *result = ((HIBYTE(a2) - v4) | ((v4 - BYTE2(v3)) << 16) | ((v4 - HIBYTE(v3)) << 24) | ((v4 - BYTE1(v3)) << 8)) | (HIBYTE(a2) << 32);
  return result;
}

uint64_t cmyk32_sample_RGB555(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 8);
  v92 = *(result + 144) - 1;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = -16777216;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 2 * v11 - 4;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_41;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_41;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_41;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_41;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_41:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_42:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 2 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37) >> 16;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 24;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_64:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = bswap32(*v36) >> 16;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 24;
    }

    v84 = interpolate_8555_21866[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 55));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = bswap32(*v36) >> 16;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 24;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_8555_21866[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_46;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 55));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55) >> 16;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = bswap32(*v58) >> 16;
      v60 = (v57 + (v54 >> 55));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = bswap32(*v36) >> 16;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 24;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 24;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 24;
      }

      v67 = interpolate_8555_21866[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_8555_21866[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_46:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    RGB555(v8, v96 | (v38 >> 29 << 24) | v38);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if (((v47 | v48 | (a3 - v90) | (a2 - v91)) & 0x8000000000000000) != 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_42;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = bswap32(*v49) >> 16;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 24;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_64;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

uint64_t cmyk32_sample_W8(uint64_t result, uint64_t a2, unint64_t a3, int a4)
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
  v11 = *(result + 152) - 8;
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
    v11 += 8;
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
  *(v11 + 8) = (((v43 | v13) >> 24) - ((v43 | v13) != 0)) | (((v43 | v13) >> 24) << 32);
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v86 - a2;
    a3 += v9;
    v50 = v88 - a3;
    v51 = -8;
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

      *(v11 + 8 * v48 + 16) = (((v43 | v13) >> 24) - ((v43 | v13) != 0)) | (((v43 | v13) >> 24) << 32);
      *(v12 + v48++ + 2) = -1;
      v51 -= 8;
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

uint64_t cmyk32_shade(uint64_t a1)
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

  if ((*v4 & 0xF000000) == 0x4000000)
  {
    if (*(v4 + 16))
    {
      v12 = cmyk32_shade_radial_CMYK;
    }

    else if (*(v4 + 24))
    {
      v12 = cmyk32_shade_conic_CMYK;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = cmyk32_shade_axial_CMYK;
    }

    else
    {
      v12 = cmyk32_shade_custom_CMYK;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 2, 4, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 384)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 2, 4, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(10 * v13 + 32, 0x8C254358uLL);
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
  cmyk32_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void cmyk32_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v422 = *MEMORY[0x1E69E9840];
  v416 = *(a1 + 4);
  v403 = v416;
  v3 = (v416 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a2 + 184);
    v418 = *(a1 + 136);
    v419 = v6;
    v9 = *(a2 + 104);
    v414 = *(a2 + 96);
    v415 = v9;
    v11 = *(a1 + 24);
    v10 = *(a1 + 28);
    v12 = *(a1 + 16);
    v417 = *(a1 + 20);
    v13 = *(a1 + 12);
    v413 = *(a1 + 8);
    v404 = a2;
    v14 = *(a2 + 16);
    v15 = (v14 + 10) * v3;
    if (v15 > 65439)
    {
      v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v18;
      v20 = v18;
      v21 = v404;
      if (!v18)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v17 = &v395 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v20 = 0;
      v21 = v404;
    }

    v398 = v20;
    v411 = a3;
    v420 = ((v8 * 255.0) + 0.5);
    v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[20] = v23;
    if (v14)
    {
      v24 = 8 * v3;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + v24;
    v26 = v7 + (v11 - 1) * v10;
    v27 = v10 >> 2;
    v21[18] = v22;
    v21[19] = v25;
    v28 = v21;
    if (v419)
    {
      v29 = *(a1 + 32);
      v30 = a1;
      v31 = (v419 + v29 * v12 + v13);
      v412 = v29 - v403;
      v32 = v403;
      v421 = 1;
    }

    else
    {
      v30 = a1;
      v31 = 0;
      v412 = 0;
      v421 = 0;
      v32 = v403;
    }

    v33 = v26 + 4 * v417;
    v34 = (v7 + 4 * v27 * v12 + 4 * v13);
    v410 = v27 - v32;
    v35 = *(v30 + 104);
    v36 = *(v30 + 108);
    v402 = v30;
    v37 = *(v30 + 2);
    if (v37 == 6 || v37 == 1)
    {
      v38 = v414;
      v39 = v415;
      if (v418)
      {
        v396 = v27;
        v40 = 0;
        v41 = 0;
        v42 = *(v402 + 124);
        v43 = v418 + v42 * v36 + v35;
        v32 = v403;
        v409 = v42 - v403;
        v44 = v416;
        goto LABEL_32;
      }

      goto LABEL_716;
    }

    v39 = v415;
    if (v418)
    {
      v397 = v33;
      shape_enum_clip_alloc(v18, v19, v418, 1, 1, 1, v35, v36, v416, v413);
      if (v45)
      {
        v418 = v45;
        v396 = v27;
        v41 = 0;
        v46 = ((v14 * v3 + 15) & 0xFFFFFFF0);
        if (!v14)
        {
          v46 = 8 * v3;
        }

        v47 = v403;
        v409 = -v403;
        v43 = (v25 + v46 + 16);
        v44 = v416;
        v38 = v414;
        goto LABEL_21;
      }

LABEL_716:
      if (v398)
      {
        free(v398);
      }

      return;
    }

    v396 = v27;
    v43 = 0;
    v40 = 0;
    v409 = 0;
    v41 = 0;
    v44 = v416;
    v38 = v414;
LABEL_32:
    v401 = (v44 - 1);
    v400 = -v32;
    v397 = v33;
    v399 = v33 - 4;
    v408 = xmmword_18439CA90;
    v407 = xmmword_18439CAA0;
    v406 = xmmword_18439CAB0;
    v405 = xmmword_18439CAC0;
    v53 = v40;
LABEL_33:
    v418 = v53;
    v54 = *v28;
    v414 = v38;
    v415 = v39;
    v54(v28, v38, v39, v44);
    v55 = v28[20];
    v56 = v28[18];
    v58 = *(v28 + 2);
    v57 = *(v28 + 3);
    LODWORD(v417) = v41;
    if (v58 == v57)
    {
      if (v420 == 255)
      {
        goto LABEL_41;
      }

      v59 = v44;
      v60 = v56;
      do
      {
        if (*v60)
        {
          *v55 = PDAM_5790(*v55, *(v55 + 4), v420);
        }

        ++v60;
        ++v55;
        --v59;
      }

      while (v59);
      v55 += v400;
      v56 += v401 + v400 + 1;
      v28 = v404;
      goto LABEL_40;
    }

    v67 = v28[19];
    v68 = HIWORD(v58) & 0x3F;
    if (v68 == 16)
    {
      if (v57 == 134759428)
      {
        if (v420 != 255)
        {
          v82 = 0;
          v83 = v67 + 8;
          do
          {
            if (v56[v82])
            {
              v55[v82] = PDAM_5790(HIDWORD(*(v83 - 8)) & 0xFF000000 | (*(v83 - 8) >> 24) & 0xFF0000 | WORD1(*(v83 - 8)) & 0xFF00 | BYTE1(*(v83 - 8)), *(v83 + 1), v420);
            }

            v83 += 16;
            ++v82;
          }

          while (v44 != v82);
          goto LABEL_40;
        }

        v127 = 0;
        v128 = (v67 + 8);
        do
        {
          if (v56[v127])
          {
            v129 = (v128 - 4);
            v130 = vld1q_dup_f64(v129);
            v131 = vorrq_s8(vandq_s8(vshlq_u64(v130, v408), v405), vandq_s8(vshlq_u64(v130, v407), v406));
            v55[v127] = *&vorr_s8(*v131.i8, *&vextq_s8(v131, v131, 8uLL)) | (*v128 << 24) & 0xFF00000000;
          }

          v128 += 8;
          ++v127;
        }

        while (v44 != v127);
      }

      else
      {
        if (v420 != 255)
        {
          v98 = 0;
          v99 = v67 + 8;
          do
          {
            if (v56[v98])
            {
              v55[v98] = PDAM_5790((HIBYTE(*(v99 - 8)) | (BYTE3(*(v99 - 8)) << 16)) & 0xFFFFFF | (BYTE1(*(v99 - 8)) << 24) | HIDWORD(*(v99 - 8)) & 0xFF00, *(v99 + 1), v420);
            }

            v99 += 16;
            ++v98;
          }

          while (v44 != v98);
          goto LABEL_40;
        }

        v132 = 0;
        v133 = (v67 + 8);
        do
        {
          if (v56[v132])
          {
            v55[v132] = (*(v133 - 1) >> 8) & 0xFF0000 | HIBYTE(*(v133 - 1)) | (BYTE1(*(v133 - 1)) << 24) | HIDWORD(*(v133 - 1)) & 0xFF00 | (HIBYTE(*v133) << 32);
          }

          v133 += 8;
          ++v132;
        }

        while (v44 != v132);
      }
    }

    else
    {
      if (v68 != 32)
      {
        if (v57 == 134759428)
        {
          if (v420 == 255)
          {
            v134 = 0;
            do
            {
              if (v56[v134])
              {
                v55[v134] = *(v67 + 8 * v134) & 0xFF00000000 | bswap32(*(v67 + 8 * v134));
              }

              ++v134;
            }

            while (v44 != v134);
            goto LABEL_41;
          }

          v84 = 0;
          do
          {
            if (v56[v84])
            {
              v55[v84] = PDAM_5790(bswap32(*(v67 + 8 * v84)), *(v67 + 8 * v84 + 4), v420);
            }

            ++v84;
          }

          while (v44 != v84);
        }

        else
        {
          if (v420 == 255)
          {
            v135 = 0;
            do
            {
              if (v56[v135])
              {
                v55[v135] = *(v67 + 8 * v135);
              }

              ++v135;
            }

            while (v44 != v135);
            goto LABEL_41;
          }

          v100 = 0;
          do
          {
            if (v56[v100])
            {
              v55[v100] = PDAM_5790(*(v67 + 8 * v100), *(v67 + 8 * v100 + 4), v420);
            }

            ++v100;
          }

          while (v44 != v100);
        }

        v28 = v404;
        goto LABEL_41;
      }

      if (v57 == 134759428)
      {
        if (v420 != 255)
        {
          v69 = 0;
          v70 = (v67 + 8);
          do
          {
            if (v56[v69])
            {
              v71 = v70[2];
              if (v71 <= 0.0)
              {
                v81 = 0;
              }

              else
              {
                v72 = *(v70 - 2);
                v73 = *(v70 - 1);
                v74 = *v70;
                v75 = v70[1];
                v76 = ((v71 * 255.0) + 0.5);
                if (v71 > 1.0)
                {
                  v76 = 255;
                  v71 = 1.0;
                }

                v77 = ((v72 * 255.0) + 0.5);
                if (v72 < 0.0)
                {
                  v77 = 0;
                }

                if (v72 > v71)
                {
                  v77 = v76;
                }

                v78 = ((v73 * 255.0) + 0.5);
                if (v73 < 0.0)
                {
                  v78 = 0;
                }

                if (v73 > v71)
                {
                  v78 = v76;
                }

                v79 = ((v74 * 255.0) + 0.5);
                if (v74 < 0.0)
                {
                  v79 = 0;
                }

                if (v74 > v71)
                {
                  v79 = v76;
                }

                v80 = ((v75 * 255.0) + 0.5);
                if (v75 < 0.0)
                {
                  v80 = 0;
                }

                if (v75 > v71)
                {
                  v80 = v76;
                }

                v81 = PDAM_5790(v77 | (v78 << 8) | (v79 << 16) | (v80 << 24), v76, v420);
              }

              v55[v69] = v81;
            }

            ++v69;
            v70 += 5;
          }

          while (v44 != v69);
LABEL_40:
          v41 = v417;
          goto LABEL_41;
        }

        v101 = 0;
        v102 = (v67 + 8);
        do
        {
          if (v56[v101])
          {
            v103 = v102[2];
            if (v103 <= 0.0)
            {
              v113 = 0;
            }

            else
            {
              v104 = *(v102 - 2);
              v105 = *(v102 - 1);
              v106 = *v102;
              v107 = v102[1];
              LODWORD(v108) = ((v103 * 255.0) + 0.5);
              if (v103 <= 1.0)
              {
                v108 = v108;
              }

              else
              {
                v108 = 255;
              }

              if (v103 > 1.0)
              {
                v103 = 1.0;
              }

              v109 = ((v104 * 255.0) + 0.5);
              if (v104 < 0.0)
              {
                v109 = 0;
              }

              if (v104 > v103)
              {
                v109 = v108;
              }

              v110 = ((v105 * 255.0) + 0.5);
              if (v105 < 0.0)
              {
                v110 = 0;
              }

              if (v105 > v103)
              {
                v110 = v108;
              }

              v111 = ((v106 * 255.0) + 0.5);
              if (v106 < 0.0)
              {
                v111 = 0;
              }

              if (v106 > v103)
              {
                v111 = v108;
              }

              v112 = ((v107 * 255.0) + 0.5);
              if (v107 < 0.0)
              {
                v112 = 0;
              }

              if (v107 > v103)
              {
                v112 = v108;
              }

              v113 = v109 | (v110 << 8) | (v111 << 16) | (v112 << 24) | (v108 << 32);
            }

            v55[v101] = v113;
          }

          ++v101;
          v102 += 5;
        }

        while (v44 != v101);
      }

      else
      {
        if (v420 != 255)
        {
          v85 = 0;
          v86 = (v67 + 8);
          do
          {
            if (v56[v85])
            {
              v87 = v86[2];
              if (v87 <= 0.0)
              {
                v97 = 0;
              }

              else
              {
                v88 = *(v86 - 2);
                v89 = *(v86 - 1);
                v90 = *v86;
                v91 = v86[1];
                v92 = ((v87 * 255.0) + 0.5);
                if (v87 > 1.0)
                {
                  v92 = 255;
                  v87 = 1.0;
                }

                v93 = ((v88 * 255.0) + 0.5);
                if (v88 < 0.0)
                {
                  v93 = 0;
                }

                if (v88 > v87)
                {
                  v93 = v92;
                }

                v94 = ((v89 * 255.0) + 0.5);
                if (v89 < 0.0)
                {
                  v94 = 0;
                }

                if (v89 > v87)
                {
                  v94 = v92;
                }

                v95 = ((v90 * 255.0) + 0.5);
                if (v90 < 0.0)
                {
                  v95 = 0;
                }

                if (v90 > v87)
                {
                  v95 = v92;
                }

                v96 = ((v91 * 255.0) + 0.5);
                if (v91 < 0.0)
                {
                  v96 = 0;
                }

                if (v91 > v87)
                {
                  v96 = v92;
                }

                v97 = PDAM_5790((v94 << 16) | (v93 << 24) | (v95 << 8) | v96, v92, v420);
              }

              v55[v85] = v97;
            }

            ++v85;
            v86 += 5;
          }

          while (v44 != v85);
          goto LABEL_40;
        }

        v114 = 0;
        v115 = (v67 + 8);
        do
        {
          if (v56[v114])
          {
            v116 = v115[2];
            if (v116 <= 0.0)
            {
              v126 = 0;
            }

            else
            {
              v117 = *(v115 - 2);
              v118 = *(v115 - 1);
              v119 = *v115;
              v120 = v115[1];
              LODWORD(v121) = ((v116 * 255.0) + 0.5);
              if (v116 <= 1.0)
              {
                v121 = v121;
              }

              else
              {
                v121 = 255;
              }

              if (v116 > 1.0)
              {
                v116 = 1.0;
              }

              v122 = ((v117 * 255.0) + 0.5);
              if (v117 < 0.0)
              {
                v122 = 0;
              }

              if (v117 > v116)
              {
                v122 = v121;
              }

              v123 = ((v118 * 255.0) + 0.5);
              if (v118 < 0.0)
              {
                v123 = 0;
              }

              if (v118 > v116)
              {
                v123 = v121;
              }

              v124 = ((v119 * 255.0) + 0.5);
              if (v119 < 0.0)
              {
                v124 = 0;
              }

              if (v119 > v116)
              {
                v124 = v121;
              }

              v125 = ((v120 * 255.0) + 0.5);
              if (v120 < 0.0)
              {
                v125 = 0;
              }

              if (v120 > v116)
              {
                v125 = v121;
              }

              v126 = (v123 << 16) | (v122 << 24) | (v124 << 8) | v125 | (v121 << 32);
            }

            v55[v114] = v126;
          }

          ++v114;
          v115 += 5;
        }

        while (v44 != v114);
      }
    }

LABEL_41:
    switch(v411)
    {
      case 0:
        v61 = v43 != 0;
        if (v419)
        {
          v62 = v43;
          v63 = v414;
          do
          {
            v64 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v64 = (*v62 * v64 + ((*v62 * v64) >> 8) + 1) >> 8;
              }

              if (v64)
              {
                if (v64 == 255)
                {
                  LOBYTE(v65) = 0;
                  *v34 = 0;
                }

                else
                {
                  v66 = PDAM_5790(*v34, *v31, ~v64);
                  *v34 = v66;
                  v65 = HIDWORD(v66);
                }

                *v31 = v65;
              }
            }

            ++v56;
            v62 += v61;
            ++v34;
            ++v31;
            LODWORD(v44) = v44 - 1;
          }

          while (v44);
          v43 = &v62[v409];
          v34 += v410;
          v31 += v412;
          v44 = v416;
          goto LABEL_662;
        }

        v362 = v44;
        v363 = v43;
        v63 = v414;
        do
        {
          v364 = *v56;
          if (*v56)
          {
            if (v43)
            {
              v364 = ((*v363 * v364 + ((*v363 * v364) >> 8) + 1) >> 8);
            }

            if (v364)
            {
              if (v364 == 255)
              {
                v365 = 0;
              }

              else
              {
                v365 = (((*v34 & 0xFF00FF) * (v364 ^ 0xFF) + 65537 + ((((*v34 & 0xFF00FF) * (v364 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v34 >> 8) & 0xFF00FF) * (v364 ^ 0xFF) + 65537 + (((((*v34 >> 8) & 0xFF00FF) * (v364 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }

              *v34 = v365;
            }
          }

          ++v56;
          v363 += v61;
          ++v34;
          --v362;
        }

        while (v362);
        v43 = &v363[v409];
        v34 += v410;
        v31 += v412;
        v197 = v415;
        goto LABEL_664;
      case 1:
        v224 = *v56;
        if (v419)
        {
          v225 = 0;
          if (v43)
          {
            v226 = v56 + 1;
            v227 = v34;
            v197 = v415;
            do
            {
              v228 = v227;
              if (v224)
              {
                v229 = v43[v225] * v224 + ((v43[v225] * v224) >> 8) + 1;
                if (BYTE1(v229))
                {
                  if (BYTE1(v229) == 255)
                  {
                    v230 = v55[v225];
                    v34[v225] = v230;
                    v31[v225] = BYTE4(v230);
                  }

                  else
                  {
                    DAMplusDAM(v227, &v31[v225], v55[v225], BYTE4(v55[v225]), BYTE1(v229), v34[v225], v31[v225], ~(v229 >> 8));
                  }
                }
              }

              v224 = v226[v225];
              v227 = v228 + 1;
              ++v225;
            }

            while (v416 != v225);
            v231 = &v31[v225 - 1];
            v43 += v225 + v409;
            v44 = v416;
          }

          else
          {
            v383 = v56 + 1;
            v384 = v34;
            v197 = v415;
            do
            {
              if (v224)
              {
                if (v224 == 255)
                {
                  v385 = v55[v225];
                  v34[v225] = v385;
                  v31[v225] = BYTE4(v385);
                }

                else
                {
                  DAMplusDAM(v384, &v31[v225], v55[v225], BYTE4(v55[v225]), v224, v34[v225], v31[v225], ~v224);
                }
              }

              v224 = v383[v225];
              ++v384;
              ++v225;
            }

            while (v44 != v225);
            v43 = 0;
            v231 = &v31[v225 - 1];
            v228 = v384 - 1;
          }

          v34 = &v228[v410 + 1];
          v31 = (v231 + v412 + 1);
          goto LABEL_713;
        }

        v366 = v56 + 1;
        if (v43)
        {
          v197 = v415;
          do
          {
            if (v224)
            {
              v367 = *v43 * v224 + ((*v43 * v224) >> 8) + 1;
              v368 = v399;
              if (v399 >= v34)
              {
                v368 = v34;
              }

              if (v368 >= *(v402 + 40))
              {
                v350 = v368;
              }

              else
              {
                v350 = *(v402 + 40);
              }

              if (BYTE1(v367))
              {
                if (BYTE1(v367) == 255)
                {
                  *v350 = *v55;
                }

                else
                {
                  DMplusDM(v350, *v55, BYTE1(v367), *v350, ~(v367 >> 8));
                }
              }
            }

            else
            {
              v350 = v34;
            }

            v369 = *v366++;
            v224 = v369;
            ++v55;
            ++v43;
            v34 = v350 + 1;
            LODWORD(v44) = v44 - 1;
          }

          while (v44);
          v43 += v409;
          goto LABEL_699;
        }

        v392 = v44;
        v197 = v415;
        do
        {
          v393 = v399;
          if (v399 >= v34)
          {
            v393 = v34;
          }

          if (v393 >= *(v402 + 40))
          {
            v350 = v393;
          }

          else
          {
            v350 = *(v402 + 40);
          }

          if (v224)
          {
            if (v224 == 255)
            {
              *v350 = *v55;
            }

            else
            {
              DMplusDM(v350, *v55, v224, *v350, ~v224);
            }
          }

          v394 = *v366++;
          v224 = v394;
          ++v55;
          v34 = v350 + 1;
          --v392;
        }

        while (v392);
        v43 = 0;
        goto LABEL_712;
      case 2:
        v193 = *v56;
        if (v419)
        {
          v194 = 0;
          v195 = v56 + 1;
          if (v43)
          {
            v196 = v34;
            v197 = v415;
            while (1)
            {
              v198 = v196;
              if (!v193)
              {
                goto LABEL_331;
              }

              v199 = v43[v194] * v193 + ((v43[v194] * v193) >> 8) + 1;
              if (!BYTE1(v199))
              {
                goto LABEL_331;
              }

              if (BYTE1(v199) == 255)
              {
                v200 = v55[v194];
                if (BYTE4(v200))
                {
                  if (BYTE4(v200) != 255)
                  {
                    v202 = v34[v194];
                    v203 = v31[v194];
                    v205 = &v31[v194];
                    v204 = BYTE4(v55[v194]);
                    v206 = ~HIDWORD(v55[v194]);
                    v207 = v196;
                    goto LABEL_330;
                  }

                  v34[v194] = v200;
                  v31[v194] = -1;
                }
              }

              else
              {
                v201 = PDAM_5790(v55[v194], BYTE4(v55[v194]), BYTE1(v199));
                if (HIDWORD(v201))
                {
                  LODWORD(v200) = v201;
                  v202 = v34[v194];
                  v203 = v31[v194];
                  v204 = BYTE4(v201);
                  v205 = &v31[v194];
                  v206 = ~BYTE4(v201);
                  v207 = v198;
LABEL_330:
                  DAplusDAM(v207, v205, v200, v204, v202, v203, v206);
                }
              }

LABEL_331:
              v193 = v195[v194];
              v196 = v198 + 1;
              if (v416 == ++v194)
              {
                v208 = &v31[v194 - 1];
                v43 += v194 + v409;
LABEL_679:
                v34 = &v198[v410 + 1];
                v31 = (v208 + v412 + 1);
                v44 = v416;
                goto LABEL_713;
              }
            }
          }

          v374 = v34;
          v197 = v415;
          while (1)
          {
            if (v193)
            {
              if (v193 == 255)
              {
                v375 = v55[v194];
                if (BYTE4(v375))
                {
                  if (BYTE4(v375) != 255)
                  {
                    v377 = v34[v194];
                    v378 = v31[v194];
                    v380 = &v31[v194];
                    v379 = BYTE4(v55[v194]);
                    v381 = ~HIDWORD(v55[v194]);
                    v382 = v374;
                    goto LABEL_676;
                  }

                  v34[v194] = v375;
                  v31[v194] = -1;
                }
              }

              else
              {
                v376 = PDAM_5790(v55[v194], BYTE4(v55[v194]), v193);
                if (HIDWORD(v376))
                {
                  LODWORD(v375) = v376;
                  v377 = v34[v194];
                  v378 = v31[v194];
                  v379 = BYTE4(v376);
                  v380 = &v31[v194];
                  v381 = ~BYTE4(v376);
                  v382 = v374;
LABEL_676:
                  DAplusDAM(v382, v380, v375, v379, v377, v378, v381);
                }
              }
            }

            v193 = v195[v194];
            ++v374;
            if (v416 == ++v194)
            {
              v43 = 0;
              v208 = &v31[v194 - 1];
              v198 = v374 - 1;
              goto LABEL_679;
            }
          }
        }

        if (v43)
        {
          v349 = v56 + 1;
          v350 = v34 - 1;
          v351 = v44;
          while (1)
          {
            if (!v193)
            {
              goto LABEL_613;
            }

            v352 = *v43 * v193 + ((*v43 * v193) >> 8) + 1;
            if (!BYTE1(v352))
            {
              goto LABEL_613;
            }

            if (BYTE1(v352) == 255)
            {
              v353 = *v55;
              if (BYTE4(*v55))
              {
                if (BYTE4(*v55) != 255)
                {
                  v354 = v350[1];
                  LODWORD(v353) = ((((v354 >> 8) & 0xFF00FF) * ~BYTE4(v353) + 65537 + (((((v354 >> 8) & 0xFF00FF) * ~BYTE4(v353)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v353 + ((((v354 & 0xFF00FF) * ~BYTE4(v353) + 65537 + ((((v354 & 0xFF00FF) * ~BYTE4(v353)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                goto LABEL_612;
              }
            }

            else
            {
              v355 = PDAM_5790(*v55, *(v55 + 4), BYTE1(v352));
              if (HIDWORD(v355))
              {
                v356 = v350[1];
                LODWORD(v353) = ((((v356 >> 8) & 0xFF00FF) * (HIDWORD(v355) ^ 0xFF) + 65537 + (((((v356 >> 8) & 0xFF00FF) * (HIDWORD(v355) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v355 + ((((v356 & 0xFF00FF) * (HIDWORD(v355) ^ 0xFF) + 65537 + ((((v356 & 0xFF00FF) * (HIDWORD(v355) ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
LABEL_612:
                v350[1] = v353;
              }
            }

LABEL_613:
            v357 = *v349++;
            v193 = v357;
            ++v55;
            ++v43;
            ++v350;
            if (!--v351)
            {
              v43 += v409;
              v197 = v415;
LABEL_712:
              v34 = &v350[v410 + 1];
              v31 += v412;
LABEL_713:
              v63 = v414;
LABEL_663:
              v41 = v417;
LABEL_664:
              if (!--v413)
              {
                v52 = v418;
                if (v418)
                {
LABEL_715:
                  free(v52);
                }

                goto LABEL_716;
              }

              v53 = 0;
              ++v41;
              v38 = v28[16] + v63;
              v39 = v28[17] + v197;
              if (v418)
              {
                v47 = v403;
LABEL_21:
                v48 = v412 + v47;
                while (1)
                {
                  while (1)
                  {
                    v49 = *(v43 - 4);
                    v50 = v49 - v41;
                    if (v49 <= v41)
                    {
                      break;
                    }

                    v413 -= v50;
                    if (v413 < 1)
                    {
LABEL_30:
                      v52 = v418;
                      goto LABEL_715;
                    }

                    v38 += v28[16] * v50;
                    v39 += v28[17] * v50;
                    v34 += v396 * v50;
                    v51 = v48 * v50;
                    if (!v419)
                    {
                      v51 = 0;
                    }

                    v31 += v51;
                    v41 = v49;
                  }

                  if (v41 < *(v43 - 3) + v49)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v418, v43 - 4))
                  {
                    goto LABEL_30;
                  }
                }

                v32 = v403;
                v33 = v397;
                v40 = v418;
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }
        }

        v386 = v56 + 1;
        v350 = v34 - 1;
        v197 = v415;
        while (1)
        {
          if (v193)
          {
            if (v193 == 255)
            {
              v387 = *v55;
              if (BYTE4(*v55))
              {
                if (BYTE4(*v55) != 255)
                {
                  v388 = v350[1];
                  LODWORD(v387) = ((((v388 >> 8) & 0xFF00FF) * ~BYTE4(v387) + 65537 + (((((v388 >> 8) & 0xFF00FF) * ~BYTE4(v387)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v387 + ((((v388 & 0xFF00FF) * ~BYTE4(v387) + 65537 + ((((v388 & 0xFF00FF) * ~BYTE4(v387)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                goto LABEL_696;
              }
            }

            else
            {
              v389 = PDAM_5790(*v55, *(v55 + 4), v193);
              if (HIDWORD(v389))
              {
                v390 = v350[1];
                LODWORD(v387) = ((((v390 >> 8) & 0xFF00FF) * (HIDWORD(v389) ^ 0xFF) + 65537 + (((((v390 >> 8) & 0xFF00FF) * (HIDWORD(v389) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v389 + ((((v390 & 0xFF00FF) * (HIDWORD(v389) ^ 0xFF) + 65537 + ((((v390 & 0xFF00FF) * (HIDWORD(v389) ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
LABEL_696:
                v350[1] = v387;
              }
            }
          }

          v391 = *v386++;
          v193 = v391;
          ++v55;
          ++v350;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            v43 = 0;
LABEL_699:
            v44 = v416;
            goto LABEL_712;
          }
        }

      case 3:
        v216 = v44;
        v144 = v43;
        do
        {
          v217 = *v56;
          if (*v56)
          {
            if (v43)
            {
              v217 = (*v144 * v217 + ((*v144 * v217) >> 8) + 1) >> 8;
            }

            if (v217)
            {
              if (v217 == 255)
              {
                v218 = PDAM_5790(*v55, *(v55 + 4), *v31);
                *v34 = v218;
                *v31 = BYTE4(v218);
              }

              else
              {
                DAMplusDAM(v34, v31, *v55, *(v55 + 4), (*v31 * v217 + ((*v31 * v217) >> 8) + 1) >> 8, *v34, *v31, ~v217);
              }
            }
          }

          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          --v216;
        }

        while (v216);
        goto LABEL_660;
      case 4:
        v163 = v44;
        v144 = v43;
        do
        {
          v164 = *v56;
          if (*v56)
          {
            if (v43)
            {
              v164 = (*v144 * v164 + ((*v144 * v164) >> 8) + 1) >> 8;
            }

            if (v164)
            {
              if (v164 == 255)
              {
                v165 = PDAM_5790(*v55, *(v55 + 4), *v31 ^ 0xFFu);
                *v34 = v165;
                *v31 = BYTE4(v165);
              }

              else
              {
                DAMplusDAM(v34, v31, *v55, *(v55 + 4), ((*v31 ^ 0xFF) * v164 + (((*v31 ^ 0xFF) * v164) >> 8) + 1) >> 8, *v34, *v31, ~v164);
              }
            }
          }

          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          --v163;
        }

        while (v163);
        goto LABEL_660;
      case 5:
        v167 = v43;
        while (1)
        {
          v252 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_421;
            }

            v253 = *v167 * v252 + ((*v167 * v252) >> 8) + 1;
            if (v253 >= 0x100)
            {
              break;
            }
          }

LABEL_422:
          ++v56;
          ++v55;
          v167 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_481;
          }
        }

        v252 = v253 >> 8;
LABEL_421:
        v254 = *v31;
        v255 = PDAM_5790(*v55, *(v55 + 4), v252);
        DAMplusDAM(v34, v31, v255, BYTE4(v255), v254, *v34, v254, ~BYTE4(v255));
        goto LABEL_422;
      case 6:
        v270 = v44;
        v144 = v43;
        while (1)
        {
          v271 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_455;
            }

            v272 = *v144 * v271 + ((*v144 * v271) >> 8) + 1;
            if (v272 >= 0x100)
            {
              break;
            }
          }

LABEL_459:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v270)
          {
            goto LABEL_660;
          }
        }

        v271 = v272 >> 8;
LABEL_455:
        if (*v31 != -1)
        {
          if (~*v31 == 255)
          {
            v273 = PDAM_5790(*v55, *(v55 + 4), v271);
            *v34 = v273;
            *v31 = BYTE4(v273);
          }

          else
          {
            DAplusDAM(v34, v31, *v34, *v31, *v55, *(v55 + 4), (~*v31 * v271 + ((~*v31 * v271) >> 8) + 1) >> 8);
          }
        }

        goto LABEL_459;
      case 7:
        v219 = v43 != 0;
        if (v419)
        {
          v220 = v44;
          v144 = v43;
          do
          {
            v221 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v221 = (*v144 * v221 + ((*v144 * v221) >> 8) + 1) >> 8;
              }

              if (v221)
              {
                if (v221 == 255)
                {
                  v222 = PDAM_5790(*v34, *v31, *(v55 + 4));
                  *v34 = v222;
                  *v31 = BYTE4(v222);
                }

                else
                {
                  v223 = *(v55 + 4) * v221;
                  DAMplusDAM(v34, v31, *v34, *v31, (v223 + (v223 >> 8) + 1) >> 8, *v34, *v31, ~v221);
                }
              }
            }

            ++v56;
            ++v55;
            v144 += v219;
            ++v34;
            ++v31;
            --v220;
          }

          while (v220);
        }

        else
        {
          v358 = v44;
          v144 = v43;
          do
          {
            v359 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v359 = (*v144 * v359 + ((*v144 * v359) >> 8) + 1) >> 8;
              }

              if (v359)
              {
                if (v359 == 255)
                {
                  v360 = *(v55 + 4);
                  *v34 = ((v360 * (*v34 & 0xFF00FF) + 65537 + (((v360 * (*v34 & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v360 * ((*v34 >> 8) & 0xFF00FF) + 65537 + (((v360 * ((*v34 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                }

                else
                {
                  v361 = *(v55 + 4) * v359;
                  DMplusDM(v34, *v34, (v361 + (v361 >> 8) + 1) >> 8, *v34, ~v359);
                }
              }
            }

            ++v56;
            ++v55;
            v144 += v219;
            ++v34;
            --v358;
          }

          while (v358);
        }

        goto LABEL_660;
      case 8:
        v285 = v43 != 0;
        if (v419)
        {
          v286 = v44;
          v144 = v43;
          do
          {
            v287 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v287 = (*v144 * v287 + ((*v144 * v287) >> 8) + 1) >> 8;
              }

              if (v287)
              {
                if (v287 == 255)
                {
                  v288 = PDAM_5790(*v34, *v31, *(v55 + 4) ^ 0xFFu);
                  *v34 = v288;
                  *v31 = BYTE4(v288);
                }

                else
                {
                  v289 = (*(v55 + 4) ^ 0xFF) * v287;
                  DAMplusDAM(v34, v31, *v34, *v31, (v289 + (v289 >> 8) + 1) >> 8, *v34, *v31, ~v287);
                }
              }
            }

            ++v56;
            ++v55;
            v144 += v285;
            ++v34;
            ++v31;
            --v286;
          }

          while (v286);
        }

        else
        {
          v370 = v44;
          v144 = v43;
          do
          {
            v371 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v371 = (*v144 * v371 + ((*v144 * v371) >> 8) + 1) >> 8;
              }

              if (v371)
              {
                if (v371 == 255)
                {
                  v372 = *(v55 + 4) ^ 0xFF;
                  *v34 = ((v372 * (*v34 & 0xFF00FF) + 65537 + (((v372 * (*v34 & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v372 * ((*v34 >> 8) & 0xFF00FF) + 65537 + (((v372 * ((*v34 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                }

                else
                {
                  v373 = (*(v55 + 4) ^ 0xFF) * v371;
                  DMplusDM(v34, *v34, (v373 + (v373 >> 8) + 1) >> 8, *v34, ~v371);
                }
              }
            }

            ++v56;
            ++v55;
            v144 += v285;
            ++v34;
            --v370;
          }

          while (v370);
        }

        goto LABEL_660;
      case 9:
        v174 = v43;
        while (1)
        {
          v175 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_289;
            }

            v176 = *v174 * v175 + ((*v174 * v175) >> 8) + 1;
            if (v176 >= 0x100)
            {
              break;
            }
          }

LABEL_290:
          ++v56;
          ++v55;
          v174 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            v43 = &v174[v409];
            v34 += v410;
            v31 += v412;
            v28 = v404;
LABEL_482:
            v197 = v415;
            v44 = v416;
            v63 = v414;
            v41 = v417;
            goto LABEL_664;
          }
        }

        v175 = v176 >> 8;
LABEL_289:
        v177 = *v31;
        v178 = PDAM_5790(*v55, *(v55 + 4), v175);
        DAMplusDAM(v34, v31, v178, BYTE4(v178), v177 ^ 0xFF, *v34, v177, (BYTE4(v178) + ~v175));
        goto LABEL_290;
      case 10:
        v167 = v43;
        while (1)
        {
          v281 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_479;
            }

            v282 = *v167 * v281 + ((*v167 * v281) >> 8) + 1;
            if (v282 >= 0x100)
            {
              break;
            }
          }

LABEL_480:
          ++v56;
          ++v55;
          v167 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
LABEL_481:
            v43 = &v167[v409];
            v34 += v410;
            v31 += v412;
            goto LABEL_482;
          }
        }

        v281 = v282 >> 8;
LABEL_479:
        v283 = *v31;
        v284 = PDAM_5790(*v55, *(v55 + 4), v281);
        DAMplusDAM(v34, v31, v284, BYTE4(v284), v283 ^ 0xFF, *v34, v283, ~BYTE4(v284));
        goto LABEL_480;
      case 11:
        v158 = v43 != 0;
        if (v419)
        {
          v159 = v44;
          v144 = v43;
          while (1)
          {
            v160 = *v56;
            if (*v56)
            {
              if (!v43)
              {
                goto LABEL_260;
              }

              v161 = *v144 * v160 + ((*v144 * v160) >> 8) + 1;
              if (v161 >= 0x100)
              {
                break;
              }
            }

LABEL_261:
            ++v56;
            ++v55;
            v144 += v158;
            ++v34;
            ++v31;
            if (!--v159)
            {
              goto LABEL_660;
            }
          }

          v160 = v161 >> 8;
LABEL_260:
          v162 = PDAM_5790(*v55, *(v55 + 4), v160);
          DAplusdDA(v34, v31, *v34, *v31, v162, BYTE4(v162));
          goto LABEL_261;
        }

        v339 = v44;
        v144 = v43;
        while (1)
        {
          v340 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_590;
            }

            v341 = *v144 * v340 + ((*v144 * v340) >> 8) + 1;
            if (v341 >= 0x100)
            {
              break;
            }
          }

LABEL_591:
          ++v56;
          ++v55;
          v144 += v158;
          ++v34;
          if (!--v339)
          {
            goto LABEL_660;
          }
        }

        v340 = v341 >> 8;
LABEL_590:
        v342 = PDAM_5790(*v55, *(v55 + 4), v340);
        DplusdDA(v34, *v34, v342, BYTE4(v342));
        goto LABEL_591;
      case 12:
        v166 = v43 != 0;
        if (v419)
        {
          v167 = v43;
          while (1)
          {
            v168 = *v56;
            if (*v56)
            {
              if (!v43)
              {
                goto LABEL_279;
              }

              v169 = *v167 * v168 + ((*v167 * v168) >> 8) + 1;
              if (v169 >= 0x100)
              {
                break;
              }
            }

LABEL_282:
            ++v56;
            ++v55;
            v167 += v166;
            ++v34;
            ++v31;
            LODWORD(v44) = v44 - 1;
            if (!v44)
            {
              goto LABEL_481;
            }
          }

          v168 = v169 >> 8;
LABEL_279:
          v170 = PDAM_5790(*v55, *(v55 + 4), v168);
          v171 = ((v170 >> 8) & 0xFF00FF) + ((*v34 >> 8) & 0xFF00FF);
          v172 = *v31 + HIDWORD(v170);
          v173 = (v171 << 8) & 0xFF00FF00 | ((v170 & 0xFF00FF) + (*v34 & 0xFF00FF)) & 0xFF00FF | (15 * (v171 & 0x1000100 | (((v170 & 0xFF00FF) + (*v34 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v171 & 0x1000100 | (((v170 & 0xFF00FF) + (*v34 & 0xFF00FF)) >> 8) & 0x10001));
          if (v172 >= 0xFF)
          {
            LOBYTE(v172) = -1;
          }

          *v31 = v172;
          *v34 = v173;
          goto LABEL_282;
        }

        v343 = v44;
        v344 = v43;
        while (1)
        {
          v345 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_598;
            }

            v346 = *v344 * v345 + ((*v344 * v345) >> 8) + 1;
            if (v346 >= 0x100)
            {
              break;
            }
          }

LABEL_599:
          ++v56;
          ++v55;
          v344 += v166;
          ++v34;
          if (!--v343)
          {
            v43 = &v344[v409];
            v34 += v410;
            v31 += v412;
LABEL_601:
            v63 = v414;
            v197 = v415;
            goto LABEL_664;
          }
        }

        v345 = v346 >> 8;
LABEL_598:
        v345 = v345;
        v347 = (((((*v55 >> 8) & 0xFF00FF) * v345 + 65537 + (((((*v55 >> 8) & 0xFF00FF) * v345) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((*v34 >> 8) & 0xFF00FF);
        v348 = ((((*v55 & 0xFF00FF) * v345 + 65537 + ((((*v55 & 0xFF00FF) * v345) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + (*v34 & 0xFF00FF);
        *v34 = (v347 << 8) & 0xFF00FF00 | v348 & 0xFF00FF | (15 * (v347 & 0x1000100 | (v348 >> 8) & 0x10001)) | (240 * (v347 & 0x1000100 | (v348 >> 8) & 0x10001));
        goto LABEL_599;
      case 13:
        v263 = v44;
        v144 = v43;
        while (1)
        {
          v264 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_442;
            }

            v265 = *v144 * v264 + ((*v144 * v264) >> 8) + 1;
            if (v265 >= 0x100)
            {
              break;
            }
          }

LABEL_448:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v263)
          {
            goto LABEL_660;
          }
        }

        v264 = v265 >> 8;
LABEL_442:
        v266 = PDAM_5790(*v55, *(v55 + 4), v264);
        v267 = HIDWORD(v266);
        if (HIDWORD(v266))
        {
          v268 = v266;
          if (v419)
          {
            if (*v31)
            {
              v269 = PDAmultiplyPDA_5791(*v34, *v31, v266, BYTE4(v266));
              v268 = v269;
              v267 = HIDWORD(v269);
            }

            *v34 = v268;
            *v31 = v267;
          }

          else
          {
            *v34 = PDAmultiplyPDA_5791(*v34, 255, v266, BYTE4(v266));
          }
        }

        goto LABEL_448;
      case 14:
        v151 = v44;
        v144 = v43;
        while (1)
        {
          v152 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_246;
            }

            v153 = *v144 * v152 + ((*v144 * v152) >> 8) + 1;
            if (v153 >= 0x100)
            {
              break;
            }
          }

LABEL_252:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v151)
          {
            goto LABEL_660;
          }
        }

        v152 = v153 >> 8;
LABEL_246:
        v154 = PDAM_5790(*v55, *(v55 + 4), v152);
        v155 = HIDWORD(v154);
        if (HIDWORD(v154))
        {
          v156 = v154;
          if (v419)
          {
            if (*v31)
            {
              v157 = PDAscreenPDA_5792(*v34, *v31, v154, BYTE4(v154));
              v156 = v157;
              v155 = HIDWORD(v157);
            }

            *v34 = v156;
            *v31 = v155;
          }

          else
          {
            *v34 = PDAscreenPDA_5792(*v34, 0xFFu, v154, BYTE4(v154));
          }
        }

        goto LABEL_252;
      case 15:
        v209 = v44;
        v144 = v43;
        while (1)
        {
          v210 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_338;
            }

            v211 = *v144 * v210 + ((*v144 * v210) >> 8) + 1;
            if (v211 >= 0x100)
            {
              break;
            }
          }

LABEL_344:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v209)
          {
            goto LABEL_660;
          }
        }

        v210 = v211 >> 8;
LABEL_338:
        v212 = PDAM_5790(*v55, *(v55 + 4), v210);
        v213 = HIDWORD(v212);
        if (HIDWORD(v212))
        {
          v214 = v212;
          if (v419)
          {
            if (*v31)
            {
              v215 = PDAoverlayPDA_5793(*v34, *v31, v212, BYTE4(v212));
              v214 = v215;
              v213 = HIDWORD(v215);
            }

            *v34 = v214;
            *v31 = v213;
          }

          else
          {
            *v34 = PDAoverlayPDA_5793(*v34, 255, v212, BYTE4(v212));
          }
        }

        goto LABEL_344;
      case 16:
        v143 = v44;
        v144 = v43;
        while (1)
        {
          v145 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_233;
            }

            v146 = *v144 * v145 + ((*v144 * v145) >> 8) + 1;
            if (v146 >= 0x100)
            {
              break;
            }
          }

LABEL_239:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v143)
          {
            goto LABEL_660;
          }
        }

        v145 = v146 >> 8;
LABEL_233:
        v147 = PDAM_5790(*v55, *(v55 + 4), v145);
        v148 = HIDWORD(v147);
        if (HIDWORD(v147))
        {
          v149 = v147;
          if (v419)
          {
            if (*v31)
            {
              v150 = PDAdarkenPDA_5795(*v34, *v31, v147, BYTE4(v147));
              v149 = v150;
              v148 = HIDWORD(v150);
            }

            *v34 = v149;
            *v31 = v148;
          }

          else
          {
            *v34 = PDAdarkenPDA_5795(*v34, 0xFFu, v147, BYTE4(v147));
          }
        }

        goto LABEL_239;
      case 17:
        v238 = v44;
        v144 = v43;
        while (1)
        {
          v239 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_395;
            }

            v240 = *v144 * v239 + ((*v144 * v239) >> 8) + 1;
            if (v240 >= 0x100)
            {
              break;
            }
          }

LABEL_401:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v238)
          {
            goto LABEL_660;
          }
        }

        v239 = v240 >> 8;
LABEL_395:
        v241 = PDAM_5790(*v55, *(v55 + 4), v239);
        v242 = HIDWORD(v241);
        if (HIDWORD(v241))
        {
          v243 = v241;
          if (v419)
          {
            if (*v31)
            {
              v244 = PDAlightenPDA_5794(*v34, *v31, v241, BYTE4(v241));
              v243 = v244;
              v242 = HIDWORD(v244);
            }

            *v34 = v243;
            *v31 = v242;
          }

          else
          {
            *v34 = PDAlightenPDA_5794(*v34, 0xFFu, v241, BYTE4(v241));
          }
        }

        goto LABEL_401;
      case 18:
        v274 = v44;
        v144 = v43;
        while (1)
        {
          v275 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_466;
            }

            v276 = *v144 * v275 + ((*v144 * v275) >> 8) + 1;
            if (v276 >= 0x100)
            {
              break;
            }
          }

LABEL_472:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v274)
          {
            goto LABEL_660;
          }
        }

        v275 = v276 >> 8;
LABEL_466:
        v277 = PDAM_5790(*v55, *(v55 + 4), v275);
        v278 = HIDWORD(v277);
        if (HIDWORD(v277))
        {
          v279 = v277;
          if (v419)
          {
            if (*v31)
            {
              v280 = PDAcolordodgePDA_5796(*v34, *v31, v277, BYTE4(v277));
              v279 = v280;
              v278 = HIDWORD(v280);
            }

            *v34 = v279;
            *v31 = v278;
          }

          else
          {
            *v34 = PDAcolordodgePDA_5796(*v34, 255, v277, BYTE4(v277));
          }
        }

        goto LABEL_472;
      case 19:
        v309 = v44;
        v144 = v43;
        while (1)
        {
          v310 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_525;
            }

            v311 = *v144 * v310 + ((*v144 * v310) >> 8) + 1;
            if (v311 >= 0x100)
            {
              break;
            }
          }

LABEL_531:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v309)
          {
            goto LABEL_660;
          }
        }

        v310 = v311 >> 8;
LABEL_525:
        v312 = PDAM_5790(*v55, *(v55 + 4), v310);
        v313 = HIDWORD(v312);
        if (HIDWORD(v312))
        {
          v314 = v312;
          if (v419)
          {
            if (*v31)
            {
              v315 = PDAcolorburnPDA_5797(*v34, *v31, v312, BYTE4(v312));
              v314 = v315;
              v313 = HIDWORD(v315);
            }

            *v34 = v314;
            *v31 = v313;
          }

          else
          {
            *v34 = PDAcolorburnPDA_5797(*v34, 255, v312, BYTE4(v312));
          }
        }

        goto LABEL_531;
      case 20:
        v245 = v44;
        v144 = v43;
        while (1)
        {
          v246 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_408;
            }

            v247 = *v144 * v246 + ((*v144 * v246) >> 8) + 1;
            if (v247 >= 0x100)
            {
              break;
            }
          }

LABEL_414:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v245)
          {
            goto LABEL_660;
          }
        }

        v246 = v247 >> 8;
LABEL_408:
        v248 = PDAM_5790(*v55, *(v55 + 4), v246);
        v249 = HIDWORD(v248);
        if (HIDWORD(v248))
        {
          v250 = v248;
          if (v419)
          {
            if (*v31)
            {
              v251 = PDAsoftlightPDA_5799(*v34, *v31, v248, BYTE4(v248));
              v250 = v251;
              v249 = HIDWORD(v251);
            }

            *v34 = v250;
            *v31 = v249;
          }

          else
          {
            *v34 = PDAsoftlightPDA_5799(*v34, 255, v248, BYTE4(v248));
          }
        }

        goto LABEL_414;
      case 21:
        v256 = v44;
        v144 = v43;
        while (1)
        {
          v257 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_429;
            }

            v258 = *v144 * v257 + ((*v144 * v257) >> 8) + 1;
            if (v258 >= 0x100)
            {
              break;
            }
          }

LABEL_435:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v256)
          {
            goto LABEL_660;
          }
        }

        v257 = v258 >> 8;
LABEL_429:
        v259 = PDAM_5790(*v55, *(v55 + 4), v257);
        v260 = HIDWORD(v259);
        if (HIDWORD(v259))
        {
          v261 = v259;
          if (v419)
          {
            if (*v31)
            {
              v262 = PDAhardlightPDA_5798(*v34, *v31, v259, BYTE4(v259));
              v261 = v262;
              v260 = HIDWORD(v262);
            }

            *v34 = v261;
            *v31 = v260;
          }

          else
          {
            *v34 = PDAhardlightPDA_5798(*v34, 255, v259, BYTE4(v259));
          }
        }

        goto LABEL_435;
      case 22:
        v294 = v44;
        v144 = v43;
        while (1)
        {
          v295 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_512;
            }

            v296 = *v144 * v295 + ((*v144 * v295) >> 8) + 1;
            if (v296 >= 0x100)
            {
              break;
            }
          }

LABEL_518:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v294)
          {
            goto LABEL_660;
          }
        }

        v295 = v296 >> 8;
LABEL_512:
        v297 = PDAM_5790(*v55, *(v55 + 4), v295);
        v306 = HIDWORD(v297);
        if (HIDWORD(v297))
        {
          v307 = v297;
          if (v419)
          {
            if (*v31)
            {
              v308 = PDAdifferencePDA_5800(*v34, *v31, v297, BYTE4(v297), v298, v299, v300, v301, v302, v303, v304, v305);
              v307 = v308;
              v306 = HIDWORD(v308);
            }

            *v34 = v307;
            *v31 = v306;
          }

          else
          {
            *v34 = PDAdifferencePDA_5800(*v34, 0xFFu, v297, BYTE4(v297), v298, v299, v300, v301, v302, v303, v304, v305);
          }
        }

        goto LABEL_518;
      case 23:
        v316 = v44;
        v144 = v43;
        while (1)
        {
          v317 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_538;
            }

            v318 = *v144 * v317 + ((*v144 * v317) >> 8) + 1;
            if (v318 >= 0x100)
            {
              break;
            }
          }

LABEL_544:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v316)
          {
            goto LABEL_660;
          }
        }

        v317 = v318 >> 8;
LABEL_538:
        v319 = PDAM_5790(*v55, *(v55 + 4), v317);
        v320 = HIDWORD(v319);
        if (HIDWORD(v319))
        {
          v321 = v319;
          if (v419)
          {
            if (*v31)
            {
              v322 = PDAexclusionPDA_5801(*v34, *v31, v319, BYTE4(v319));
              v321 = v322;
              v320 = HIDWORD(v322);
            }

            *v34 = v321;
            *v31 = v320;
          }

          else
          {
            *v34 = PDAexclusionPDA_5801(*v34, 255, v319, BYTE4(v319));
          }
        }

        goto LABEL_544;
      case 24:
        v186 = v44;
        v144 = v43;
        while (1)
        {
          v187 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_310;
            }

            v188 = *v144 * v187 + ((*v144 * v187) >> 8) + 1;
            if (v188 >= 0x100)
            {
              break;
            }
          }

LABEL_316:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v186)
          {
            goto LABEL_660;
          }
        }

        v187 = v188 >> 8;
LABEL_310:
        v189 = PDAM_5790(*v55, *(v55 + 4), v187);
        v190 = HIDWORD(v189);
        if (HIDWORD(v189))
        {
          v191 = v189;
          if (v419)
          {
            if (*v31)
            {
              v192 = PDAhuePDA_5802(*v34, *v31, v189, BYTE4(v189));
              v191 = v192;
              v190 = HIDWORD(v192);
            }

            *v34 = v191;
            *v31 = v190;
          }

          else
          {
            *v34 = PDAhuePDA_5802(*v34, 255, v189, BYTE4(v189));
          }
        }

        goto LABEL_316;
      case 25:
        v179 = v44;
        v144 = v43;
        while (1)
        {
          v180 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_297;
            }

            v181 = *v144 * v180 + ((*v144 * v180) >> 8) + 1;
            if (v181 >= 0x100)
            {
              break;
            }
          }

LABEL_303:
          ++v56;
          ++v55;
          v144 += v43 != 0;
          ++v34;
          v31 += v421;
          if (!--v179)
          {
LABEL_660:
            v43 = &v144[v409];
LABEL_661:
            v34 += v410;
            v31 += v412;
            v44 = v416;
            v63 = v414;
LABEL_662:
            v197 = v415;
            goto LABEL_663;
          }
        }

        v180 = v181 >> 8;
LABEL_297:
        v182 = PDAM_5790(*v55, *(v55 + 4), v180);
        v183 = HIDWORD(v182);
        if (HIDWORD(v182))
        {
          v184 = v182;
          if (v419)
          {
            if (*v31)
            {
              v185 = PDAsaturationPDA_5803(*v34, *v31, v182, BYTE4(v182));
              v184 = v185;
              v183 = HIDWORD(v185);
            }

            *v34 = v184;
            *v31 = v183;
          }

          else
          {
            *v34 = PDAsaturationPDA_5803(*v34, 255, v182, BYTE4(v182));
          }
        }

        goto LABEL_303;
      case 26:
        v136 = v43;
        while (1)
        {
          v335 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_577;
            }

            v336 = *v136 * v335 + ((*v136 * v335) >> 8) + 1;
            if (v336 >= 0x100)
            {
              break;
            }
          }

LABEL_583:
          ++v56;
          ++v55;
          v136 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_584;
          }
        }

        v335 = v336 >> 8;
LABEL_577:
        v337 = PDAM_5790(*v55, *(v55 + 4), v335);
        v338 = HIDWORD(v337);
        if (HIDWORD(v337))
        {
          if (v419)
          {
            if (*v31)
            {
              v337 = PDAluminosityPDA_5804(v337, BYTE4(v337), *v34, *v31);
              v338 = HIDWORD(v337);
            }

            *v34 = v337;
            *v31 = v338;
          }

          else
          {
            *v34 = PDAluminosityPDA_5804(v337, BYTE4(v337), *v34, 255);
          }
        }

        goto LABEL_583;
      case 27:
        v136 = v43;
        while (1)
        {
          v137 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_220;
            }

            v138 = *v136 * v137 + ((*v136 * v137) >> 8) + 1;
            if (v138 >= 0x100)
            {
              break;
            }
          }

LABEL_226:
          ++v56;
          ++v55;
          v136 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_584;
          }
        }

        v137 = v138 >> 8;
LABEL_220:
        v139 = PDAM_5790(*v55, *(v55 + 4), v137);
        v140 = HIDWORD(v139);
        if (HIDWORD(v139))
        {
          v141 = v139;
          if (v419)
          {
            if (*v31)
            {
              v142 = PDAluminosityPDA_5804(*v34, *v31, v139, BYTE4(v139));
              v141 = v142;
              v140 = HIDWORD(v142);
            }

            *v34 = v141;
            *v31 = v140;
          }

          else
          {
            *v34 = PDAluminosityPDA_5804(*v34, 255, v139, BYTE4(v139));
          }
        }

        goto LABEL_226;
      case 28:
        v136 = v43;
        while (1)
        {
          v323 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_551;
            }

            v324 = *v136 * v323 + ((*v136 * v323) >> 8) + 1;
            if (v324 >= 0x100)
            {
              break;
            }
          }

LABEL_557:
          ++v56;
          ++v55;
          v136 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_584;
          }
        }

        v323 = v324 >> 8;
LABEL_551:
        v325 = PDAM_5790(*v55, *(v55 + 4), v323);
        v326 = HIDWORD(v325);
        if (HIDWORD(v325))
        {
          v327 = v325;
          if (v419)
          {
            if (*v31)
            {
              v328 = PDAtranspose_huePDA(*v34, *v31, v325, BYTE4(v325));
              v327 = v328;
              v326 = HIDWORD(v328);
            }

            *v34 = v327;
            *v31 = v326;
          }

          else
          {
            *v34 = PDAtranspose_huePDA(*v34, 255, v325, BYTE4(v325));
          }
        }

        goto LABEL_557;
      case 29:
        v136 = v43;
        while (1)
        {
          v329 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_564;
            }

            v330 = *v136 * v329 + ((*v136 * v329) >> 8) + 1;
            if (v330 >= 0x100)
            {
              break;
            }
          }

LABEL_570:
          ++v56;
          ++v55;
          v136 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_584;
          }
        }

        v329 = v330 >> 8;
LABEL_564:
        v331 = PDAM_5790(*v55, *(v55 + 4), v329);
        v332 = HIDWORD(v331);
        if (HIDWORD(v331))
        {
          v333 = v331;
          if (v419)
          {
            if (*v31)
            {
              v334 = PDAtranspose_saturationPDA(*v34, *v31, v331, BYTE4(v331));
              v333 = v334;
              v332 = HIDWORD(v334);
            }

            *v34 = v333;
            *v31 = v332;
          }

          else
          {
            *v34 = PDAtranspose_saturationPDA(*v34, 255, v331, BYTE4(v331));
          }
        }

        goto LABEL_570;
      case 30:
        v136 = v43;
        while (1)
        {
          v290 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_499;
            }

            v291 = *v136 * v290 + ((*v136 * v290) >> 8) + 1;
            if (v291 >= 0x100)
            {
              break;
            }
          }

LABEL_505:
          ++v56;
          ++v55;
          v136 += v43 != 0;
          ++v34;
          v31 += v421;
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_584;
          }
        }

        v290 = v291 >> 8;
LABEL_499:
        v292 = PDAM_5790(*v55, *(v55 + 4), v290);
        v293 = HIDWORD(v292);
        if (HIDWORD(v292))
        {
          if (v419)
          {
            if (*v31)
            {
              v292 = PDAtranspose_luminosityPDA(v292, BYTE4(v292), *v34, *v31);
              v293 = HIDWORD(v292);
            }

            *v34 = v292;
            *v31 = v293;
          }

          else
          {
            *v34 = PDAtranspose_luminosityPDA(v292, BYTE4(v292), *v34, 255);
          }
        }

        goto LABEL_505;
      case 31:
        v136 = v43;
        break;
      default:
        goto LABEL_601;
    }

    while (1)
    {
      v232 = *v56;
      if (*v56)
      {
        if (!v43)
        {
          goto LABEL_382;
        }

        v233 = *v136 * v232 + ((*v136 * v232) >> 8) + 1;
        if (v233 >= 0x100)
        {
          break;
        }
      }

LABEL_388:
      ++v56;
      ++v55;
      v136 += v43 != 0;
      ++v34;
      v31 += v421;
      LODWORD(v44) = v44 - 1;
      if (!v44)
      {
LABEL_584:
        v43 = &v136[v409];
        goto LABEL_661;
      }
    }

    v232 = v233 >> 8;
LABEL_382:
    v234 = PDAM_5790(*v55, *(v55 + 4), v232);
    v235 = HIDWORD(v234);
    if (HIDWORD(v234))
    {
      v236 = v234;
      if (v419)
      {
        if (*v31)
        {
          v237 = PDAtranspose_luminosityPDA(*v34, *v31, v234, BYTE4(v234));
          v236 = v237;
          v235 = HIDWORD(v237);
        }

        *v34 = v236;
        *v31 = v235;
      }

      else
      {
        *v34 = PDAtranspose_luminosityPDA(*v34, 255, v234, BYTE4(v234));
      }
    }

    goto LABEL_388;
  }
}

unsigned int *DAMplusDAM(unsigned int *result, _BYTE *a2, unsigned int a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v8 = ((a3 >> 8) & 0xFF00FF) * a5 + ((a6 >> 8) & 0xFF00FF) * a8;
  v9 = (a3 & 0xFF00FF) * a5 + (a6 & 0xFF00FF) * a8;
  *a2 = (a5 * a4 + a8 * a7 + ((a5 * a4 + a8 * a7) >> 8) + 1) >> 8;
  *result = ((v9 + 65537 + ((v9 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v8 + 65537 + ((v8 >> 8) & 0xFF00FF)) & 0xFF00FF00;
  return result;
}

unsigned int *DMplusDM(unsigned int *result, unsigned int a2, int a3, unsigned int a4, int a5)
{
  v5 = ((a2 >> 8) & 0xFF00FF) * a3 + ((a4 >> 8) & 0xFF00FF) * a5;
  v6 = (a2 & 0xFF00FF) * a3 + (a4 & 0xFF00FF) * a5;
  *result = ((v6 + 65537 + ((v6 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v5 + 65537 + ((v5 >> 8) & 0xFF00FF)) & 0xFF00FF00;
  return result;
}

_DWORD *DAplusDAM(_DWORD *result, _BYTE *a2, int a3, char a4, unsigned int a5, int a6, int a7)
{
  *a2 = a4 + ((a7 * a6 + ((a7 * a6) >> 8) + 1) >> 8);
  *result = ((((a5 >> 8) & 0xFF00FF) * a7 + 65537 + (((((a5 >> 8) & 0xFF00FF) * a7) >> 8) & 0xFF00FF)) & 0xFF00FF00) + a3 + ((((a5 & 0xFF00FF) * a7 + 65537 + ((((a5 & 0xFF00FF) * a7) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
  return result;
}

_DWORD *DAplusdDA(_DWORD *result, _BYTE *a2, int a3, int a4, int a5, int a6)
{
  v6 = ((a4 << 16) | (a4 << 24) | (((a4 << 16) | (a4 << 24)) >> 16)) - a3;
  v7 = ((a6 << 16) | (a6 << 24) | (((a6 << 16) | (a6 << 24)) >> 16)) - a5;
  v8 = ((v7 >> 8) & 0xFF00FF) + ((v6 >> 8) & 0xFF00FF);
  v9 = (v7 & 0xFF00FF) + (v6 & 0xFF00FF);
  v10 = v8 & 0x1000100 | (v9 >> 8) & 0x10001;
  v11 = a6 + a4;
  v12 = 15 * v10;
  v13 = 240 * v10;
  if ((a6 + a4) > 0xFF)
  {
    v11 = -1;
  }

  HIDWORD(v14) = v11;
  LODWORD(v14) = v11 << 24;
  *a2 = v11;
  *result = ((v14 >> 8) & 0xFFFF0000 | ((v14 >> 8) >> 16)) - ((v8 << 8) & 0xFF00FF00 | v9 & 0xFF00FF | v12 | v13);
  return result;
}

unsigned int *DplusdDA(unsigned int *result, int a2, int a3, int a4)
{
  v4 = ((a4 << 16) | (a4 << 24) | (((a4 << 16) | (a4 << 24)) >> 16)) - a3;
  v5 = ((v4 >> 8) & 0xFF00FF) + ((~a2 >> 8) & 0xFF00FF);
  *result = ~((v5 << 8) & 0xFF00FF00 | ((v4 & 0xFF00FF) + (~a2 & 0xFF00FF)) & 0xFF00FF | (15 * (v5 & 0x1000100 | (((v4 & 0xFF00FF) + (~a2 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v5 & 0x1000100 | (((v4 & 0xFF00FF) + (~a2 & 0xFF00FF)) >> 8) & 0x10001)));
  return result;
}

unint64_t PDAmultiplyPDA_5791(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = a2 - BYTE2(a1);
  v6 = a2 - BYTE1(a1);
  v7 = a2 - a1;
  v8 = a4 - HIBYTE(a3);
  v9 = a4 - BYTE2(a3);
  v10 = a4 - BYTE1(a3);
  v11 = a4 - a3;
  v12 = v8 + (a4 ^ 0xFF);
  v13 = v9 + (a4 ^ 0xFF);
  v14 = v10 + (a4 ^ 0xFF);
  v15 = v11 + (a4 ^ 0xFF);
  if (a4 == 255)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
  }

  v16 = v15 * v7;
  v17 = v14 * v6;
  v18 = v13 * v5;
  v19 = v12 * v4;
  v20 = v19 + v8 * (a2 ^ 0xFF);
  v21 = v18 + v9 * (a2 ^ 0xFF);
  v22 = v17 + v10 * (a2 ^ 0xFF);
  v23 = v16 + v11 * (a2 ^ 0xFF);
  if (a2 != 255)
  {
    v19 = v20;
    v18 = v21;
    v17 = v22;
    v16 = v23;
  }

  v24 = 255 * (a4 + a2) - a4 * a2;
  if (v19 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v19 + 128;
  }

  v26 = v25 + (v25 >> 8);
  if (v18 >= 65152)
  {
    v27 = 65152;
  }

  else
  {
    v27 = v18 + 128;
  }

  v28 = v27 + (v27 >> 8);
  if (v17 >= 65152)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v17 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v16 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v16 + 128;
  }

  v32 = v31 + (v31 >> 8);
  if (v24 >= 65152)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v24 + 128;
  }

  v34 = (v33 + (v33 >> 8)) >> 8;
  return ((v34 - (v26 >> 8)) << 24) | ((v34 - BYTE1(v28)) << 16) | ((v34 - BYTE1(v30)) << 8) | (v34 - BYTE1(v32)) | (v34 << 32);
}

unint64_t PDAscreenPDA_5792(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0);
  v6 = HIBYTE(a1) - a2 + (a4 - HIBYTE(a3)) * (255 - (a2 - HIBYTE(a1))) + ((a2 - HIBYTE(a1)) << 8);
  v7 = a1 - a2 + (a4 - a3) * (255 - (a2 - a1)) + ((a2 - a1) << 8);
  v8 = 255 * (a4 + a2) - a4 * a2;
  if (v6 >= 65152)
  {
    v9 = 65152;
  }

  else
  {
    v9 = v6 + 128;
  }

  v10 = v9 + (v9 >> 8);
  if (v7 >= 65152)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v7 + 128;
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

  v14 = (v13 + (v13 >> 8)) >> 8;
  v15 = vsub_s32(vdup_n_s32(a2), v4);
  v16 = vmla_s32(vmul_s32(v15, 0xFF000000FFLL), vsub_s32(vdup_n_s32(a4), vand_s8(v5, 0xFF000000FFLL)), vsub_s32(0xFF000000FFLL, v15));
  v17 = vdup_n_s32(0xFE80u);
  v18 = vbsl_s8(vcgt_s32(v17, v16), vadd_s32(v16, 0x8000000080), v17);
  v19 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v14), vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v19.i32[0] | ((v14 - (v10 >> 8)) << 24) | (v14 - BYTE1(v12)) | v19.i32[1] | (v14 << 32);
}

unint64_t PDAoverlayPDA_5793(unsigned int a1, signed int a2, unsigned int a3, int a4)
{
  v4 = a2 - BYTE1(a1);
  v5 = a2 - a1;
  v6 = a4 - BYTE2(a3);
  v7 = a4 - BYTE1(a3);
  v8 = a4 - a3;
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 - HIBYTE(a1);
  }

  v11 = 2 * v10 * v9;
  if (v6 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 - BYTE2(a1) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - BYTE2(a1);
  }

  v14 = 2 * v13 * v12;
  if (v7 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v7;
  }

  if (v4 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v4;
  }

  v17 = 2 * v16 * v15;
  if (v8 >= a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = v8;
  }

  if (v5 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = v5;
  }

  v20 = 2 * v19 * v18;
  v21 = a4 * a2;
  v22 = (a2 + 1) >> 1;
  if (v10 >= v22)
  {
    v23 = v9 * (a2 + 255) + (a4 + 255) * v10 - (v21 + v11);
  }

  else
  {
    v23 = (a4 ^ 0xFF) * v10 + v9 * (a2 ^ 0xFF) + v11;
  }

  v24 = a4 + 255;
  v25 = a2 + 255;
  v26 = v12 * (a2 + 255) + (a4 + 255) * v13 - (v21 + v14);
  v27 = a4 ^ 0xFF;
  v28 = a2 ^ 0xFF;
  v29 = (a4 ^ 0xFF) * v13 + v12 * (a2 ^ 0xFF) + v14;
  if (v13 >= v22)
  {
    v29 = v26;
  }

  v30 = v15 * v25 + v24 * v16 - (v21 + v17);
  v31 = v27 * v16 + v15 * v28 + v17;
  if (v16 >= v22)
  {
    v31 = v30;
  }

  v32 = v18 * v25 + v24 * v19 - (v21 + v20);
  v33 = v27 * v19 + v18 * v28 + v20;
  if (v19 >= v22)
  {
    v33 = v32;
  }

  v34 = 255 * (a4 + a2) - v21;
  v35 = v23 + 128;
  if (v23 >= 65152)
  {
    v35 = 65152;
  }

  v36 = v35 + (v35 >> 8);
  v37 = vadd_s32(__PAIR64__(v29, v31), 0x8000000080);
  v38 = vdup_n_s32(0xFE80u);
  v39 = vcgt_s32(v38, __PAIR64__(v29, v31));
  if (v33 >= 65152)
  {
    v40 = 65152;
  }

  else
  {
    v40 = v33 + 128;
  }

  v41 = v40 + (v40 >> 8);
  if (v34 >= 65152)
  {
    v42 = 65152;
  }

  else
  {
    v42 = v34 + 128;
  }

  v43 = (v42 + (v42 >> 8)) >> 8;
  v44 = vbsl_s8(v39, v37, v38);
  v45 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v43), vshr_n_u32(vsra_n_u32(v44, v44, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return (v43 - BYTE1(v41)) | v45.i32[0] | v45.i32[1] | ((v43 - (v36 >> 8)) << 24) | (v43 << 32);
}

unint64_t PDAlightenPDA_5794(unsigned __int32 a1, unsigned int a2, unsigned __int32 a3, unsigned int a4)
{
  v4.i64[0] = __PAIR64__(a4, a2);
  v5.i64[0] = __PAIR64__(a4, a2);
  v5.i64[1] = __PAIR64__(a4, a2);
  v6 = vrev64q_s32(v5);
  v5.i32[0] = a3 >> 8;
  v5.i32[1] = a1;
  v5.i32[2] = a3;
  v7 = vshlq_u32(v5, xmmword_18439CAD0);
  v8 = vuzp2q_s32(vuzp1q_s32(v5, v5), v5);
  v5.i32[3] = HIWORD(a1);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vandq_s8(v5, v9);
  v10.i32[2] = v7.i32[2];
  v11 = vshlq_u32(v8, xmmword_18439CAD0);
  v8.i32[0] = a1 >> 8;
  v8.i32[3] = HIWORD(a3);
  v12 = vandq_s8(v8, v9);
  v12.i32[2] = v11.i32[2];
  v13 = vsubq_s32(v6, v10);
  v4.i64[1] = __PAIR64__(a4, a2);
  v14 = vminq_s32(vsubq_s32(v4, v12), v4);
  v15 = vminq_s32(v13, v6);
  v16 = vmaxq_s32(vmulq_s32(v15, v4), vmulq_s32(v14, v6));
  if (a4 != 255)
  {
    v16 = vmlaq_s32(v16, vdupq_n_s32(a4 ^ 0xFF), vtrn2q_s32(vrev64q_s32(v14), v15));
  }

  if (a2 != 255)
  {
    v16 = vmlaq_s32(v16, vtrn2q_s32(vrev64q_s32(v15), v14), vdupq_n_s32(a2 ^ 0xFF));
  }

  if (v16.i32[2] >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v16.i32[2] + 128;
  }

  v18 = vdup_n_s32(0xFE80u);
  v19 = vbsl_s8(vcgt_s32(v18, __PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2)), vadd_s32(__PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2), 0x8000000080), v18);
  v20.i32[0] = vshr_n_s32(v19, 8uLL).u32[0];
  v20.i32[1] = vshr_n_u32(*&v19, 8uLL).i32[1];
  v21 = vadd_s32(v20, v19);
  v22 = vshr_n_s32(v21, 8uLL);
  v23 = vextq_s8(v16, v16, 0xCuLL).u64[0];
  v24 = vbsl_s8(vcgt_s32(v18, v23), vadd_s32(v23, 0x8000000080), v18);
  v25 = vand_s8(vshl_u32(vsub_s32(vdup_lane_s32(v22, 0), vshr_n_u32(vsra_n_u32(v24, v24, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v25.i32[0] | ((v22.i32[0] - ((v17 + (v17 >> 8)) >> 8)) << 24) | (v22.i8[0] - v21.i8[5]) | v25.i32[1] | (v22.u8[0] << 32);
}

unint64_t PDAdarkenPDA_5795(unsigned __int32 a1, unsigned int a2, unsigned __int32 a3, unsigned int a4)
{
  v4.i64[0] = __PAIR64__(a4, a2);
  v5.i64[0] = __PAIR64__(a4, a2);
  v5.i64[1] = __PAIR64__(a4, a2);
  v6 = vrev64q_s32(v5);
  v5.i32[0] = a3 >> 8;
  v5.i32[1] = a1;
  v5.i32[2] = a3;
  v7 = vshlq_u32(v5, xmmword_18439CAD0);
  v8 = vuzp2q_s32(vuzp1q_s32(v5, v5), v5);
  v5.i32[3] = HIWORD(a1);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vandq_s8(v5, v9);
  v10.i32[2] = v7.i32[2];
  v11 = vshlq_u32(v8, xmmword_18439CAD0);
  v8.i32[0] = a1 >> 8;
  v8.i32[3] = HIWORD(a3);
  v12 = vandq_s8(v8, v9);
  v12.i32[2] = v11.i32[2];
  v13 = vsubq_s32(v6, v10);
  v4.i64[1] = __PAIR64__(a4, a2);
  v14 = vminq_s32(vsubq_s32(v4, v12), v4);
  v15 = vminq_s32(v13, v6);
  v16 = vminq_s32(vmulq_s32(v15, v4), vmulq_s32(v14, v6));
  if (a4 != 255)
  {
    v16 = vmlaq_s32(v16, vdupq_n_s32(a4 ^ 0xFF), vtrn2q_s32(vrev64q_s32(v14), v15));
  }

  if (a2 != 255)
  {
    v16 = vmlaq_s32(v16, vtrn2q_s32(vrev64q_s32(v15), v14), vdupq_n_s32(a2 ^ 0xFF));
  }

  if (v16.i32[2] >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v16.i32[2] + 128;
  }

  v18 = vdup_n_s32(0xFE80u);
  v19 = vbsl_s8(vcgt_s32(v18, __PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2)), vadd_s32(__PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2), 0x8000000080), v18);
  v20.i32[0] = vshr_n_s32(v19, 8uLL).u32[0];
  v20.i32[1] = vshr_n_u32(*&v19, 8uLL).i32[1];
  v21 = vadd_s32(v20, v19);
  v22 = vshr_n_s32(v21, 8uLL);
  v23 = vextq_s8(v16, v16, 0xCuLL).u64[0];
  v24 = vbsl_s8(vcgt_s32(v18, v23), vadd_s32(v23, 0x8000000080), v18);
  v25 = vand_s8(vshl_u32(vsub_s32(vdup_lane_s32(v22, 0), vshr_n_u32(vsra_n_u32(v24, v24, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v25.i32[0] | ((v22.i32[0] - ((v17 + (v17 >> 8)) >> 8)) << 24) | (v22.i8[0] - v21.i8[5]) | v25.i32[1] | (v22.u8[0] << 32);
}

unint64_t PDAcolordodgePDA_5796(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = a2 - BYTE2(a1);
  v6 = a4 * a4;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if (v4)
  {
    if (HIBYTE(a3))
    {
      v7 = v6 * v4 / HIBYTE(a3);
    }

    else
    {
      v7 = 65025;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = a2 - BYTE1(a1);
  if (v5 >= a2)
  {
    v5 = a2;
  }

  if (v5)
  {
    if (BYTE2(a3))
    {
      v9 = v6 * v5 / BYTE2(a3);
    }

    else
    {
      v9 = 65025;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = a2 - a1;
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    if (BYTE1(a3))
    {
      v11 = v6 * v8 / BYTE1(a3);
    }

    else
    {
      v11 = 65025;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v10 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (a3)
    {
      v13 = v6 * v12 / a3;
    }

    else
    {
      v13 = 65025;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v7 + (a4 ^ 0xFF) * v4;
  v15 = v9 + (a4 ^ 0xFF) * v5;
  v16 = v11 + (a4 ^ 0xFF) * v8;
  if (a4 == 255)
  {
    v16 = v11;
  }

  else
  {
    v13 += (a4 ^ 0xFF) * v12;
  }

  if (a4 == 255)
  {
    v15 = v9;
    v14 = v7;
  }

  v17 = v13 + (a4 - a3) * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v17 = v13;
    v18 = v16;
  }

  else
  {
    v18 = v16 + (a4 - BYTE1(a3)) * (a2 ^ 0xFF);
  }

  if (a2 != 255)
  {
    v15 += (a4 - BYTE2(a3)) * (a2 ^ 0xFF);
    v14 += (a4 - HIBYTE(a3)) * (a2 ^ 0xFF);
  }

  v19 = 255 * (a4 + a2) - a4 * a2;
  if (v14 >= v19)
  {
    v14 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v15 >= v19)
  {
    v15 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v18 >= v19)
  {
    v18 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v17 >= v19)
  {
    v17 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v18 >= 65152)
  {
    v20 = 65152;
  }

  else
  {
    v20 = v18 + 128;
  }

  v21 = v20 + (v20 >> 8);
  if (v15 >= 65152)
  {
    v22 = 65152;
  }

  else
  {
    v22 = v15 + 128;
  }

  v23 = v22 + (v22 >> 8);
  if (v14 >= 65152)
  {
    v24 = 65152;
  }

  else
  {
    v24 = v14 + 128;
  }

  v25 = v24 + (v24 >> 8);
  if (v17 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v17 + 128;
  }

  v27 = v26 + (v26 >> 8);
  if (v19 >= 65152)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v19 + 128;
  }

  v29 = (v28 + (v28 >> 8)) >> 8;
  return ((v29 - BYTE1(v23)) << 16) | ((v29 - (v25 >> 8)) << 24) | ((v29 - BYTE1(v21)) << 8) | (v29 - BYTE1(v27)) | (v29 << 32);
}

unint64_t PDAcolorburnPDA_5797(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a4 - BYTE2(a3);
  v5 = a4 - BYTE1(a3);
  v6 = a4 - a3;
  v7 = a4 * a2;
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  if (v4 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v4;
  }

  if (a2 - BYTE2(a1) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - BYTE2(a1);
  }

  if (v5 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 - BYTE1(a1) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - BYTE1(a1);
  }

  if (v6 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v6;
  }

  if (a2 - a1 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 - a1;
  }

  v16 = v7 + (a4 ^ 0xFF) * v13;
  v17 = v7 + (a4 ^ 0xFF) * v15;
  if (a4 == 255)
  {
    v17 = a4 * a2;
    v16 = 255 * a2;
    v18 = 255 * a2;
  }

  else
  {
    v18 = v7 + (a4 ^ 0xFF) * v11;
  }

  if (a4 == 255)
  {
    v19 = 255 * a2;
  }

  else
  {
    v19 = v7 + (a4 ^ 0xFF) * v9;
  }

  if (a2 == 255)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + v14 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + v12 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + v10 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + v8 * (a2 ^ 0xFF);
  }

  v24 = a2 - v9;
  v25 = a4 * a4;
  v26 = (v23 - v25 * v24 / v8) & ~((v23 - v25 * v24 / v8) >> 31);
  if (v8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (HIBYTE(a1))
  {
    v23 = v27;
  }

  if (BYTE2(a1))
  {
    if (v10)
    {
      v22 = (v22 - v25 * (a2 - v11) / v10) & ~((v22 - v25 * (a2 - v11) / v10) >> 31);
    }

    else
    {
      v22 = 0;
    }
  }

  if (BYTE1(a1))
  {
    if (v12)
    {
      v21 = (v21 - v25 * (a2 - v13) / v12) & ~((v21 - v25 * (a2 - v13) / v12) >> 31);
    }

    else
    {
      v21 = 0;
    }
  }

  if (v14)
  {
    v28 = (v20 - v25 * (a2 - v15) / v14) & ~((v20 - v25 * (a2 - v15) / v14) >> 31);
  }

  else
  {
    v28 = 0;
  }

  if (!a1)
  {
    v28 = v20;
  }

  v29 = 255 * (a4 + a2) - v7;
  v30 = v23 + 128;
  if (v23 >= 65152)
  {
    v30 = 65152;
  }

  v31 = v30 + (v30 >> 8);
  v32 = vadd_s32(__PAIR64__(v22, v21), 0x8000000080);
  v33 = vdup_n_s32(0xFE80u);
  v34 = vcgt_s32(v33, __PAIR64__(v22, v21));
  if (v28 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v28 + 128;
  }

  v36 = v35 + (v35 >> 8);
  if (v29 >= 65152)
  {
    v37 = 65152;
  }

  else
  {
    v37 = v29 + 128;
  }

  v38 = (v37 + (v37 >> 8)) >> 8;
  v39 = vbsl_s8(v34, v32, v33);
  v40 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v38), vshr_n_u32(vsra_n_u32(v39, v39, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return (v38 - BYTE1(v36)) | v40.i32[0] | v40.i32[1] | ((v38 - (v31 >> 8)) << 24) | (v38 << 32);
}

unint64_t PDAhardlightPDA_5798(unsigned int a1, int a2, unsigned int a3, signed int a4)
{
  v4 = a2 - BYTE1(a1);
  v5 = a2 - a1;
  v6 = a4 - BYTE2(a3);
  v7 = a4 - BYTE1(a3);
  v8 = a4 - a3;
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 - HIBYTE(a1);
  }

  v11 = 2 * v10 * v9;
  if (v6 >= a4)
  {
    v6 = a4;
  }

  if (a2 - BYTE2(a1) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - BYTE2(a1);
  }

  v13 = 2 * v12 * v6;
  if (v7 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v7;
  }

  if (v4 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v4;
  }

  v16 = 2 * v15 * v14;
  if (v8 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v8;
  }

  if (v5 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v5;
  }

  v19 = 2 * v18 * v17;
  v20 = a4 * a2;
  v21 = (a4 + 1) >> 1;
  if (v9 <= v21)
  {
    v22 = (a4 ^ 0xFF) * v10 + v9 * (a2 ^ 0xFF) + v11;
  }

  else
  {
    v22 = v9 * (a2 + 255) + (a4 + 255) * v10 - (v20 + v11);
  }

  v23 = a4 ^ 0xFF;
  v24 = a2 ^ 0xFF;
  v25 = (a4 ^ 0xFF) * v12 + v6 * (a2 ^ 0xFF) + v13;
  v26 = a4 + 255;
  v27 = a2 + 255;
  v28 = v6 * (a2 + 255) + (a4 + 255) * v12 - (v20 + v13);
  if (v6 > v21)
  {
    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  v30 = v23 * v15 + v14 * v24 + v16;
  v31 = v14 * v27 + v26 * v15 - (v20 + v16);
  if (v14 > v21)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  v33 = v23 * v18 + v17 * v24 + v19;
  v34 = v17 * v27 + v26 * v18 - (v20 + v19);
  if (v17 > v21)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  v36 = 255 * (a4 + a2) - v20;
  v37 = v22 + 128;
  if (v22 >= 65152)
  {
    v37 = 65152;
  }

  v38 = v37 + (v37 >> 8);
  v39 = vadd_s32(__PAIR64__(v29, v32), 0x8000000080);
  v40 = vdup_n_s32(0xFE80u);
  v41 = vcgt_s32(v40, __PAIR64__(v29, v32));
  if (v35 >= 65152)
  {
    v42 = 65152;
  }

  else
  {
    v42 = v35 + 128;
  }

  v43 = v42 + (v42 >> 8);
  if (v36 >= 65152)
  {
    v44 = 65152;
  }

  else
  {
    v44 = v36 + 128;
  }

  v45 = (v44 + (v44 >> 8)) >> 8;
  v46 = vbsl_s8(v41, v39, v40);
  v47 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v45), vshr_n_u32(vsra_n_u32(v46, v46, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return (v45 - BYTE1(v43)) | v47.i32[0] | v47.i32[1] | ((v45 - (v38 >> 8)) << 24) | (v45 << 32);
}

unint64_t PDAsoftlightPDA_5799(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = a4 - HIBYTE(a3);
  if (v5 >= a4)
  {
    v5 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v6 = a4 - a3;
  v7 = a4 - BYTE1(a3);
  v8 = a4 - BYTE2(a3);
  v9 = a2 - a1;
  v10 = a2 - BYTE1(a1);
  v11 = a2 - BYTE2(a1);
  v12 = v4 * v4 * (2 * v5 - a4) / a2;
  v13 = (2 * v4 * v5 - v12) & ~((2 * v4 * v5 - v12) >> 31);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v11 >= a2)
  {
    v11 = a2;
  }

  v14 = v11 * v11 * (2 * v8 - a4) / a2;
  v15 = (2 * v11 * v8 - v14) & ~((2 * v11 * v8 - v14) >> 31);
  if (v7 >= a4)
  {
    v7 = a4;
  }

  if (v10 >= a2)
  {
    v10 = a2;
  }

  v16 = v10 * v10 * (2 * v7 - a4) / a2;
  v17 = (2 * v10 * v7 - v16) & ~((2 * v10 * v7 - v16) >> 31);
  if (v6 >= a4)
  {
    v6 = a4;
  }

  if (v9 >= a2)
  {
    v9 = a2;
  }

  v18 = 2 * v9 * v6 - v9 * v9 * (2 * v6 - a4) / a2;
  v19 = v18 & ~(v18 >> 31);
  v20 = v13 + (a4 ^ 0xFF) * v4;
  v21 = v15 + v11 * (a4 ^ 0xFF);
  v22 = v17 + v10 * (a4 ^ 0xFF);
  v23 = v19 + v9 * (a4 ^ 0xFF);
  if (a4 == 255)
  {
    v23 = v19;
    v22 = v17;
    v21 = v15;
    v20 = v13;
  }

  v24 = v20 + v5 * (a2 ^ 0xFF);
  v25 = v21 + v8 * (a2 ^ 0xFF);
  v26 = v22 + v7 * (a2 ^ 0xFF);
  v27 = v23 + v6 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v27 = v23;
    v26 = v22;
    v25 = v21;
    v24 = v20;
  }

  v28 = 255 * (a4 + a2) - a4 * a2;
  if (v24 >= 65152)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v24 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v25 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v25 + 128;
  }

  v32 = v31 + (v31 >> 8);
  if (v26 >= 65152)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v26 + 128;
  }

  v34 = v33 + (v33 >> 8);
  if (v27 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v27 + 128;
  }

  v36 = v35 + (v35 >> 8);
  if (v28 >= 65152)
  {
    v37 = 65152;
  }

  else
  {
    v37 = v28 + 128;
  }

  v38 = (v37 + (v37 >> 8)) >> 8;
  return ((v38 - BYTE1(v32)) << 16) | ((v38 - (v30 >> 8)) << 24) | ((v38 - BYTE1(v34)) << 8) | (v38 - BYTE1(v36)) | (v38 << 32);
}

unint64_t PDAdifferencePDA_5800(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, double a5, uint32x2_t a6, double a7, double a8, double a9, double a10, double a11, uint32x2_t a12)
{
  v12 = vdup_n_s32(a2);
  v13 = vdup_n_s32(a1);
  a6.i32[0] = a1;
  v14.i32[0] = vshl_u32(a6, 0xFFFFFF01FFFFFFE8).u32[0];
  v14.i32[1] = v13.u8[4];
  v15 = vdup_n_s32(a3);
  a12.i32[0] = a3;
  v16.i32[0] = vshl_u32(a12, 0xFFFFFF01FFFFFFE8).u32[0];
  v16.i32[1] = v15.u8[4];
  v17 = vdup_n_s32(a4);
  v18 = vmin_s32(vsub_s32(v17, v16), v17);
  v19 = vmin_s32(vsub_s32(v12, v14), v12);
  v20 = vmul_s32(__PAIR64__(v19.u32[1], v18.u32[0]), __PAIR64__(a4, a2));
  v21 = vrev64_s32(__PAIR64__(a4, a2));
  v22 = vmin_s32(vsub_s32(v17, vand_s8(vshl_u32(v15, 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), v17);
  v23 = vmin_s32(vsub_s32(v12, vand_s8(vshl_u32(v13, 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), v12);
  v24 = 255 * (a4 + a2) - a4 * a2;
  v25 = vmul_s32(vadd_s32(v18, v19), 0xFF000000FFLL);
  v19.i32[1] = v18.i32[1];
  v26 = vmul_s32(v19, v21);
  v27 = vaba_s32(vsub_s32(vsub_s32(v25, v20), v26), v26, v20);
  v28 = vdup_n_s32(0xFE80u);
  v29 = vcgt_s32(v28, v27);
  v30 = v27.i32[0] + 128;
  if ((v29.i8[0] & 1) == 0)
  {
    v30 = 65152;
  }

  v31 = v30 + (v30 >> 8);
  if (v29.i8[4])
  {
    v32 = v27.i32[1] + 128;
  }

  else
  {
    v32 = 65152;
  }

  v33 = v32 + (v32 >> 8);
  if (v24 >= 65152)
  {
    v34 = 65152;
  }

  else
  {
    v34 = v24 + 128;
  }

  v35 = (v34 + (v34 >> 8)) >> 8;
  v36 = vmul_s32(__PAIR64__(v22.u32[1], v23.u32[0]), v21);
  v37 = vmul_s32(vadd_s32(v22, v23), 0xFF000000FFLL);
  v22.i32[1] = v23.i32[1];
  v38 = vmul_s32(v22, vrev64_s32(v21));
  v39 = vaba_s32(vsub_s32(vsub_s32(v37, v38), v36), v36, v38);
  v40 = vbsl_s8(vcgt_s32(v28, v39), vadd_s32(v39, 0x8000000080), v28);
  v41 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v35), vshr_n_u32(vsra_n_u32(v40, v40, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v41.i32[1] | ((v35 - (v31 >> 8)) << 24) | v41.i32[0] | (v35 - BYTE1(v33)) | (v35 << 32);
}

unint64_t PDAexclusionPDA_5801(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = vdup_n_s32(a2);
  v6 = vsub_s32(v5, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v7 = a2 - a1;
  v8 = a4 - HIBYTE(a3);
  v9 = vdup_n_s32(a4);
  v10 = vsub_s32(v9, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v11 = 255 * (v8 + v4) - 2 * v4 * v8;
  if (a4 - a3 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - a3;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v13 = 255 * (v12 + v7) - 2 * v7 * v12;
  v14 = 255 * (a4 + a2) - a4 * a2;
  if (v11 >= 65152)
  {
    v15 = 65152;
  }

  else
  {
    v15 = v11 + 128;
  }

  v16 = v15 + (v15 >> 8);
  if (v13 >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v13 + 128;
  }

  v18 = v17 + (v17 >> 8);
  if (v14 >= 65152)
  {
    v19 = 65152;
  }

  else
  {
    v19 = v14 + 128;
  }

  v20 = (v19 + (v19 >> 8)) >> 8;
  v21 = vmin_s32(v10, v9);
  v22 = vmin_s32(v6, v5);
  v23 = vmul_s32(vadd_s32(v21, v22), 0xFF000000FFLL);
  v24 = vmul_s32(v22, v21);
  v25 = vsub_s32(v23, vadd_s32(v24, v24));
  v26 = vdup_n_s32(0xFE80u);
  v27 = vbsl_s8(vcgt_s32(v26, v25), vadd_s32(v25, 0x8000000080), v26);
  v28 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v20), vshr_n_u32(vsra_n_u32(v27, v27, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v28.i32[0] | ((v20 - (v16 >> 8)) << 24) | (v20 - BYTE1(v18)) | v28.i32[1] | (v20 << 32);
}

unint64_t PDAhuePDA_5802(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7.i32[0] = HIBYTE(a3);
  v7.i32[1] = BYTE2(a3);
  v8 = vsub_s32(v6, v7);
  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  if (a4 - BYTE1(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - BYTE1(a3);
  }

  v11 = vmin_s32(v5, v4);
  if (a4 - a3 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - a3;
  }

  if (a2 - a1 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - a1;
  }

  if (a4 == 255)
  {
    v17 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v15 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v11);
    v16 = vmla_s32(0x8000000080, v11, v6);
    v11 = vshr_n_s32(vsra_n_s32(v16, v16, 8uLL), 8uLL);
    v17 = (a4 ^ 0xFF) * v13;
    v13 = (v13 * a4 + 128 + ((v13 * a4 + 128) >> 8)) >> 8;
  }

  v18 = vmin_s32(v8, v6);
  if (a2 != 255)
  {
    v19 = vmla_s32(0x8000000080, v18, v4);
    v20.i32[0] = vdup_lane_s32(v18, 1).u32[0];
    v14 += v18.i32[0] * (a2 ^ 0xFF);
    v18 = vshr_n_s32(vsra_n_s32(v19, v19, 8uLL), 8uLL);
    v20.i32[1] = v10;
    v15 = vmla_s32(v15, v20, vdup_n_s32(a2 ^ 0xFFu));
    v10 = (v10 * a2 + 128 + ((v10 * a2 + 128) >> 8)) >> 8;
    v17 += (a2 ^ 0xFF) * v12;
  }

  *v58 = v18;
  *&v58[8] = v10;
  v21 = v18.i32[0];
  v22 = v18.i32[0] < v18.i32[1];
  if (v18.i32[0] >= v18.i32[1])
  {
    v23 = v18.i32[1];
  }

  else
  {
    v23 = v18.i32[0];
  }

  if (v18.i32[0] <= v18.i32[1])
  {
    v21 = v18.i32[1];
  }

  if (v10 <= v21)
  {
    v24 = 2;
  }

  else
  {
    v24 = v18.i32[0] < v18.i32[1];
  }

  if (v10 <= v21)
  {
    v25 = v18.i32[0] < v18.i32[1];
  }

  else
  {
    v25 = 2;
  }

  v26 = v10 < v23;
  if (v10 >= v23)
  {
    v27 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v27 = 2;
  }

  if (v26)
  {
    v28 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v28 = v24;
  }

  if (!v26)
  {
    v22 = v25;
  }

  v29 = *&v58[4 * v22];
  v30 = *&v58[4 * v27];
  v31 = __OFSUB__(v29, v30);
  v32 = v29 - v30;
  if ((v32 < 0) ^ v31 | (v32 == 0))
  {
    *&v58[4 * v22] = 0;
    *&v58[4 * v28] = 0;
  }

  else
  {
    v33 = v11.i32[0];
    if (v9 >= v11.i32[0])
    {
      v34 = v11.i32[0];
    }

    else
    {
      v34 = v9;
    }

    if (v9 > v11.i32[0])
    {
      v33 = v9;
    }

    if (v11.i32[1] <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v11.i32[1];
    }

    if (v11.i32[1] >= v34)
    {
      v33 = v35;
    }

    else
    {
      v34 = v11.i32[1];
    }

    v36 = v33 - v34;
    *&v58[4 * v22] = v36;
    *&v58[4 * v28] = ((*&v58[4 * v28] - *&v58[4 * v27]) * ((v36 << 16) / v32) + 0x8000) >> 16;
  }

  *&v58[4 * v27] = 0;
  v37 = vmul_s32(vsub_s32(v11, *&v58[4]), 0x1C00000097);
  v38 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v39 = v37.i32[0] + 77 * (v9 - *v58) + v37.i32[1];
  v40 = (v39 + 128) >> 8;
  v41 = *v58 + v40;
  v42 = vadd_s32(vdup_n_s32(v40), *&v58[4]);
  if (v39 != v39)
  {
    v43 = *v58 >= *&v58[4] ? v42.i32[0] : *v58 + ((v39 + 128) >> 8);
    v44 = *v58 >= *&v58[4] ? *v58 + ((v39 + 128) >> 8) : v42.i32[0];
    v45 = v42.i32[1] <= v44 ? v44 : v42.i32[1];
    if (v42.i32[1] >= v43)
    {
      v44 = v45;
    }

    else
    {
      v43 = v42.i32[1];
    }

    if (v44 > v38 || v43 < 0)
    {
      v46 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      if ((v40 & 0x80000000) != 0)
      {
        v47 = v46 - v43;
        if (v46 == v43)
        {
          goto LABEL_72;
        }

        v48 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      }

      else
      {
        v47 = v44 - v46;
        if (v44 == v46)
        {
          goto LABEL_72;
        }

        v48 = v38 - v46;
      }

      v49 = (v48 << 16) / v47;
      v41 = v46 + ((v49 * (v41 - v46) + 0x8000) >> 16);
      v50 = vdup_n_s32(v46);
      v42 = vsra_n_s32(v50, vmla_s32(0x800000008000, vdup_n_s32(v49), vsub_s32(v42, v50)), 0x10uLL);
    }
  }

LABEL_72:
  if (v17 >= 65152)
  {
    v51 = 65152;
  }

  else
  {
    v51 = v17 + 128;
  }

  if (v14 >= 65152)
  {
    v52 = 65152;
  }

  else
  {
    v52 = v14 + 128;
  }

  v53 = a4 + a2 - v38;
  v54 = vdup_n_s32(0xFE80u);
  v55 = vbsl_s8(vcgt_s32(v54, v15), vadd_s32(v15, 0x8000000080), v54);
  v56 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v53), vsra_n_u32(v42, vsra_n_u32(v55, v55, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v56.i32[0] | ((v53 - (v41 + ((v52 + (v52 >> 8)) >> 8))) << 24) | (v53 - (v13 + ((v51 + (v51 >> 8)) >> 8))) | v56.i32[1] | (v53 << 32);
}

unint64_t PDAsaturationPDA_5803(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  v10 = vmin_s32(v5, v4);
  if (a4 - a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - a3;
  }

  if (a2 - a1 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - a1;
  }

  if (a4 == 255)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v14 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v10);
    v15 = vmla_s32(0x8000000080, v10, v6);
    v10 = vshr_n_s32(vsra_n_s32(v15, v15, 8uLL), 8uLL);
    v16 = (a4 ^ 0xFF) * v12;
    v12 = (v12 * a4 + 128 + ((v12 * a4 + 128) >> 8)) >> 8;
  }

  v17 = vmin_s32(v7, v6);
  if (a2 != 255)
  {
    v13 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v14 = vmla_s32(v14, v17, vdup_n_s32(a2 ^ 0xFFu));
    v18 = vmla_s32(0x8000000080, v17, v4);
    v17 = vshr_n_s32(vsra_n_s32(v18, v18, 8uLL), 8uLL);
    v16 += (a2 ^ 0xFF) * v11;
  }

  v55 = v9;
  v56 = v10;
  v19 = v10.i32[0];
  v20 = v9 >= v10.i32[0];
  if (v9 >= v10.i32[0])
  {
    v21 = v10.i32[0];
  }

  else
  {
    v21 = v9;
  }

  if (v9 > v10.i32[0])
  {
    v19 = v9;
  }

  if (v10.i32[1] <= v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = v9 < v10.i32[0];
  }

  if (v10.i32[1] <= v19)
  {
    v23 = v9 < v10.i32[0];
  }

  else
  {
    v23 = 2;
  }

  if (v10.i32[1] >= v21)
  {
    v24 = v9 >= v10.i32[0];
  }

  else
  {
    v24 = 2;
  }

  if (v10.i32[1] < v21)
  {
    v25 = v9 < v10.i32[0];
  }

  else
  {
    v20 = v22;
    v25 = v23;
  }

  v26 = *(&v55 + v25);
  v27 = *(&v55 + v24);
  v28 = __OFSUB__(v26, v27);
  v29 = v26 - v27;
  if ((v29 < 0) ^ v28 | (v29 == 0))
  {
    *(&v55 + v25) = 0;
    *(&v55 + v20) = 0;
  }

  else
  {
    if (v8 >= v17.i32[0])
    {
      v30 = v17.i32[0];
    }

    else
    {
      v30 = v8;
    }

    if (v8 <= v17.i32[0])
    {
      v8 = v17.i32[0];
    }

    v31 = v17.i32[1];
    if (v17.i32[1] <= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v17.i32[1];
    }

    if (v17.i32[1] >= v30)
    {
      v31 = v30;
      v8 = v32;
    }

    v33 = v8 - v31;
    *(&v55 + v25) = v33;
    *(&v55 + v20) = ((*(&v55 + v20) - *(&v55 + v24)) * ((v33 << 16) / v29) + 0x8000) >> 16;
  }

  *(&v55 + v24) = 0;
  v34 = vmul_s32(vsub_s32(v10, v56), 0x1C00000097);
  v35 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v36 = v34.i32[0] + 77 * (v9 - v55) + v34.i32[1];
  v37 = (v36 + 128) >> 8;
  v38 = v55 + v37;
  v39 = vadd_s32(vdup_n_s32(v37), v56);
  if (v36 != v36)
  {
    v40 = v55 >= v56.i32[0] ? v39.i32[0] : v55 + ((v36 + 128) >> 8);
    v41 = v55 >= v56.i32[0] ? v55 + ((v36 + 128) >> 8) : v39.i32[0];
    v42 = v39.i32[1] <= v41 ? v41 : v39.i32[1];
    if (v39.i32[1] >= v40)
    {
      v41 = v42;
    }

    else
    {
      v40 = v39.i32[1];
    }

    if (v41 > v35 || v40 < 0)
    {
      v43 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      if ((v37 & 0x80000000) != 0)
      {
        v44 = v43 - v40;
        if (v43 == v40)
        {
          goto LABEL_69;
        }

        v45 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      }

      else
      {
        v44 = v41 - v43;
        if (v41 == v43)
        {
          goto LABEL_69;
        }

        v45 = v35 - v43;
      }

      v46 = (v45 << 16) / v44;
      v38 = v43 + ((v46 * (v38 - v43) + 0x8000) >> 16);
      v47 = vdup_n_s32(v43);
      v39 = vsra_n_s32(v47, vmla_s32(0x800000008000, vdup_n_s32(v46), vsub_s32(v39, v47)), 0x10uLL);
    }
  }

LABEL_69:
  if (v16 >= 65152)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v16 + 128;
  }

  if (v13 >= 65152)
  {
    v49 = 65152;
  }

  else
  {
    v49 = v13 + 128;
  }

  v50 = a4 + a2 - v35;
  v51 = vdup_n_s32(0xFE80u);
  v52 = vbsl_s8(vcgt_s32(v51, v14), vadd_s32(v14, 0x8000000080), v51);
  v53 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v50), vsra_n_u32(v39, vsra_n_u32(v52, v52, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v53.i32[0] | ((v50 - (v38 + ((v49 + (v49 >> 8)) >> 8))) << 24) | (v50 - (v12 + ((v48 + (v48 >> 8)) >> 8))) | v53.i32[1] | (v50 << 32);
}

unint64_t PDAluminosityPDA_5804(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  v10 = vmin_s32(v5, v4);
  if (a4 - a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - a3;
  }

  if (a4 == 255)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (a2 - a1 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2 - a1;
    }

    v13 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v14 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v10);
    v15 = vmla_s32(0x8000000080, v10, v6);
    v10 = vshr_n_s32(vsra_n_s32(v15, v15, 8uLL), 8uLL);
    v16 = (a4 ^ 0xFF) * v12;
  }

  v17 = vmin_s32(v7, v6);
  if (a2 != 255)
  {
    v13 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v14 = vmla_s32(v14, v17, vdup_n_s32(a2 ^ 0xFFu));
    v18 = vmla_s32(0x8000000080, v17, v4);
    v17 = vshr_n_s32(vsra_n_s32(v18, v18, 8uLL), 8uLL);
    v16 += v11 * (a2 ^ 0xFF);
    v11 = (v11 * a2 + 128 + ((v11 * a2 + 128) >> 8)) >> 8;
  }

  v19 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v20 = vmul_s32(vsub_s32(v17, v10), 0x970000001CLL);
  v21 = v20.i32[0] + v20.i32[1] + 77 * (v8 - v9);
  v22 = (v21 + 128) >> 8;
  v23 = v9 + v22;
  v24 = vadd_s32(vdup_n_s32(v22), v10);
  if (v21 != v21)
  {
    v25 = v9 >= v10.i32[1] ? v24.i32[1] : v9 + ((v21 + 128) >> 8);
    v26 = v9 >= v10.i32[1] ? v9 + ((v21 + 128) >> 8) : v24.i32[1];
    v27 = v24.i32[0] <= v26 ? v26 : v24.i32[0];
    if (v24.i32[0] >= v25)
    {
      v26 = v27;
    }

    else
    {
      v25 = v24.i32[0];
    }

    if (v26 > v19 || v25 < 0)
    {
      v28 = (77 * v23 + 151 * v24.i32[1] + 28 * v24.i32[0] + 128) >> 8;
      if ((v22 & 0x80000000) != 0)
      {
        v29 = v28 - v25;
        if (v28 == v25)
        {
          goto LABEL_39;
        }

        v30 = (77 * v23 + 151 * v24.i32[1] + 28 * v24.i32[0] + 128) >> 8;
      }

      else
      {
        v29 = v26 - v28;
        if (v26 == v28)
        {
          goto LABEL_39;
        }

        v30 = v19 - v28;
      }

      v31 = (v30 << 16) / v29;
      v23 = v28 + ((v31 * (v23 - v28) + 0x8000) >> 16);
      v32 = vdup_n_s32(v28);
      v24 = vsra_n_s32(v32, vmla_s32(0x800000008000, vdup_n_s32(v31), vsub_s32(v24, v32)), 0x10uLL);
    }
  }

LABEL_39:
  if (v16 >= 65152)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v16 + 128;
  }

  v34 = v33 + (v33 >> 8);
  v35 = vdup_n_s32(0xFE80u);
  v36 = vcgt_s32(v35, v14);
  v37 = vadd_s32(v14, 0x8000000080);
  if (v13 >= 65152)
  {
    v38 = 65152;
  }

  else
  {
    v38 = v13 + 128;
  }

  v39 = vbsl_s8(v36, v37, v35);
  v40 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(a4 + a2 - v19), vsra_n_u32(v24, vsra_n_u32(v39, v39, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v40.i32[1] | ((a4 + a2 - v19 - (v23 + ((v38 + (v38 >> 8)) >> 8))) << 24) | v40.i32[0] | (a4 + a2 - v19 - (v11 + BYTE1(v34))) | ((a4 + a2 - v19) << 32);
}

unint64_t PDAtranspose_huePDA(unsigned int a1, signed int a2, unsigned __int32 a3, signed int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v4.i32[0] = a3;
  v5 = a2 - a1;
  v6 = vdup_n_s32(a2);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  v4.i32[1] = a3 >> 8;
  v8 = vdup_n_s32(a4);
  v9 = vsub_s32(v8, vand_s8(v4, 0xFF000000FFLL));
  if (v5 >= a2)
  {
    v5 = a2;
  }

  if (a4 - BYTE2(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - BYTE2(a3);
  }

  v11 = vmin_s32(v7, v6);
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v17 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = (a4 ^ 0xFF) * v5;
    v5 = (v5 * a4 + 128 + ((v5 * a4 + 128) >> 8)) >> 8;
    v15 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v11);
    v16 = vmla_s32(0x8000000080, v11, v8);
    v11 = vshr_n_s32(vsra_n_s32(v16, v16, 8uLL), 8uLL);
    v17 = (a4 ^ 0xFF) * v13;
    v13 = (v13 * a4 + 128 + ((v13 * a4 + 128) >> 8)) >> 8;
  }

  v18 = vmin_s32(v9, v8);
  if (a2 != 255)
  {
    v19 = vmla_s32(0x8000000080, v18, v6);
    v20.i32[0] = vdup_lane_s32(v18, 1).u32[0];
    v14 += v18.i32[0] * (a2 ^ 0xFF);
    v18 = vshr_n_s32(vsra_n_s32(v19, v19, 8uLL), 8uLL);
    v20.i32[1] = v10;
    v15 = vmla_s32(v15, v20, vdup_n_s32(a2 ^ 0xFFu));
    v10 = (v10 * a2 + 128 + ((v10 * a2 + 128) >> 8)) >> 8;
    v17 += (a2 ^ 0xFF) * v12;
  }

  *v58 = v18;
  *&v58[8] = v10;
  v21 = v18.i32[0];
  v22 = v18.i32[0] < v18.i32[1];
  if (v18.i32[0] >= v18.i32[1])
  {
    v23 = v18.i32[1];
  }

  else
  {
    v23 = v18.i32[0];
  }

  if (v18.i32[0] <= v18.i32[1])
  {
    v21 = v18.i32[1];
  }

  if (v10 <= v21)
  {
    v24 = 2;
  }

  else
  {
    v24 = v18.i32[0] < v18.i32[1];
  }

  if (v10 <= v21)
  {
    v25 = v18.i32[0] < v18.i32[1];
  }

  else
  {
    v25 = 2;
  }

  v26 = v10 < v23;
  if (v10 >= v23)
  {
    v27 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v27 = 2;
  }

  if (v26)
  {
    v28 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v28 = v24;
  }

  if (!v26)
  {
    v22 = v25;
  }

  v29 = *&v58[4 * v22];
  v30 = *&v58[4 * v27];
  v31 = __OFSUB__(v29, v30);
  v32 = v29 - v30;
  if ((v32 < 0) ^ v31 | (v32 == 0))
  {
    *&v58[4 * v22] = 0;
    *&v58[4 * v28] = 0;
  }

  else
  {
    v33 = v11.i32[0];
    if (v5 >= v11.i32[0])
    {
      v34 = v11.i32[0];
    }

    else
    {
      v34 = v5;
    }

    if (v5 > v11.i32[0])
    {
      v33 = v5;
    }

    if (v11.i32[1] <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v11.i32[1];
    }

    if (v11.i32[1] >= v34)
    {
      v33 = v35;
    }

    else
    {
      v34 = v11.i32[1];
    }

    v36 = v33 - v34;
    *&v58[4 * v22] = v36;
    *&v58[4 * v28] = ((*&v58[4 * v28] - *&v58[4 * v27]) * ((v36 << 16) / v32) + 0x8000) >> 16;
  }

  *&v58[4 * v27] = 0;
  v37 = vmul_s32(vsub_s32(v11, *&v58[4]), 0x1C00000097);
  v38 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v39 = v37.i32[0] + 77 * (v5 - *v58) + v37.i32[1];
  v40 = (v39 + 128) >> 8;
  v41 = *v58 + v40;
  v42 = vadd_s32(vdup_n_s32(v40), *&v58[4]);
  if (v39 != v39)
  {
    v43 = *v58 >= *&v58[4] ? v42.i32[0] : *v58 + ((v39 + 128) >> 8);
    v44 = *v58 >= *&v58[4] ? *v58 + ((v39 + 128) >> 8) : v42.i32[0];
    v45 = v42.i32[1] <= v44 ? v44 : v42.i32[1];
    if (v42.i32[1] >= v43)
    {
      v44 = v45;
    }

    else
    {
      v43 = v42.i32[1];
    }

    if (v44 > v38 || v43 < 0)
    {
      v46 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      if ((v40 & 0x80000000) != 0)
      {
        v47 = v46 - v43;
        if (v46 == v43)
        {
          goto LABEL_71;
        }

        v48 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      }

      else
      {
        v47 = v44 - v46;
        if (v44 == v46)
        {
          goto LABEL_71;
        }

        v48 = v38 - v46;
      }

      v49 = (v48 << 16) / v47;
      v41 = v46 + ((v49 * (v41 - v46) + 0x8000) >> 16);
      v50 = vdup_n_s32(v46);
      v42 = vsra_n_s32(v50, vmla_s32(0x800000008000, vdup_n_s32(v49), vsub_s32(v42, v50)), 0x10uLL);
    }
  }

LABEL_71:
  if (v17 >= 65152)
  {
    v51 = 65152;
  }

  else
  {
    v51 = v17 + 128;
  }

  if (v14 >= 65152)
  {
    v52 = 65152;
  }

  else
  {
    v52 = v14 + 128;
  }

  v53 = a4 + a2 - v38;
  v54 = vdup_n_s32(0xFE80u);
  v55 = vbsl_s8(vcgt_s32(v54, v15), vadd_s32(v15, 0x8000000080), v54);
  v56 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v53), vsra_n_u32(v42, vsra_n_u32(v55, v55, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v56.i32[1] | ((v53 - (v13 + ((v51 + (v51 >> 8)) >> 8))) << 24) | v56.i32[0] | (v53 - (v41 + ((v52 + (v52 >> 8)) >> 8))) | (v53 << 32);
}

unint64_t PDAtranspose_saturationPDA(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  if (a4 - a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - a3;
  }

  if (a2 - a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  v10 = vmin_s32(v5, v4);
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v14 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v10);
    v15 = vmla_s32(0x8000000080, v10, v6);
    v10 = vshr_n_s32(vsra_n_s32(v15, v15, 8uLL), 8uLL);
    v16 = (a4 ^ 0xFF) * v12;
    v12 = (v12 * a4 + 128 + ((v12 * a4 + 128) >> 8)) >> 8;
  }

  v17 = vmin_s32(v7, v6);
  if (a2 != 255)
  {
    v13 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v14 = vmla_s32(v14, v17, vdup_n_s32(a2 ^ 0xFFu));
    v18 = vmla_s32(0x8000000080, v17, v4);
    v17 = vshr_n_s32(vsra_n_s32(v18, v18, 8uLL), 8uLL);
    v16 += (a2 ^ 0xFF) * v11;
  }

  v55 = v9;
  v56 = v10;
  v19 = v10.i32[0];
  v20 = v9 >= v10.i32[0];
  if (v9 >= v10.i32[0])
  {
    v21 = v10.i32[0];
  }

  else
  {
    v21 = v9;
  }

  if (v9 > v10.i32[0])
  {
    v19 = v9;
  }

  if (v10.i32[1] <= v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = v9 < v10.i32[0];
  }

  if (v10.i32[1] <= v19)
  {
    v23 = v9 < v10.i32[0];
  }

  else
  {
    v23 = 2;
  }

  if (v10.i32[1] >= v21)
  {
    v24 = v9 >= v10.i32[0];
  }

  else
  {
    v24 = 2;
  }

  if (v10.i32[1] < v21)
  {
    v25 = v9 < v10.i32[0];
  }

  else
  {
    v20 = v22;
    v25 = v23;
  }

  v26 = *(&v55 + v25);
  v27 = *(&v55 + v24);
  v28 = __OFSUB__(v26, v27);
  v29 = v26 - v27;
  if ((v29 < 0) ^ v28 | (v29 == 0))
  {
    *(&v55 + v25) = 0;
    *(&v55 + v20) = 0;
  }

  else
  {
    if (v8 >= v17.i32[0])
    {
      v30 = v17.i32[0];
    }

    else
    {
      v30 = v8;
    }

    if (v8 <= v17.i32[0])
    {
      v8 = v17.i32[0];
    }

    v31 = v17.i32[1];
    if (v17.i32[1] <= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v17.i32[1];
    }

    if (v17.i32[1] >= v30)
    {
      v31 = v30;
      v8 = v32;
    }

    v33 = v8 - v31;
    *(&v55 + v25) = v33;
    *(&v55 + v20) = ((*(&v55 + v20) - *(&v55 + v24)) * ((v33 << 16) / v29) + 0x8000) >> 16;
  }

  *(&v55 + v24) = 0;
  v34 = vmul_s32(vsub_s32(v10, v56), 0x1C00000097);
  v35 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v36 = v34.i32[0] + 77 * (v9 - v55) + v34.i32[1];
  v37 = (v36 + 128) >> 8;
  v38 = v55 + v37;
  v39 = vadd_s32(vdup_n_s32(v37), v56);
  if (v36 != v36)
  {
    v40 = v55 >= v56.i32[0] ? v39.i32[0] : v55 + ((v36 + 128) >> 8);
    v41 = v55 >= v56.i32[0] ? v55 + ((v36 + 128) >> 8) : v39.i32[0];
    v42 = v39.i32[1] <= v41 ? v41 : v39.i32[1];
    if (v39.i32[1] >= v40)
    {
      v41 = v42;
    }

    else
    {
      v40 = v39.i32[1];
    }

    if (v41 > v35 || v40 < 0)
    {
      v43 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      if ((v37 & 0x80000000) != 0)
      {
        v44 = v43 - v40;
        if (v43 == v40)
        {
          goto LABEL_69;
        }

        v45 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      }

      else
      {
        v44 = v41 - v43;
        if (v41 == v43)
        {
          goto LABEL_69;
        }

        v45 = v35 - v43;
      }

      v46 = (v45 << 16) / v44;
      v38 = v43 + ((v46 * (v38 - v43) + 0x8000) >> 16);
      v47 = vdup_n_s32(v43);
      v39 = vsra_n_s32(v47, vmla_s32(0x800000008000, vdup_n_s32(v46), vsub_s32(v39, v47)), 0x10uLL);
    }
  }

LABEL_69:
  if (v16 >= 65152)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v16 + 128;
  }

  if (v13 >= 65152)
  {
    v49 = 65152;
  }

  else
  {
    v49 = v13 + 128;
  }

  v50 = a4 + a2 - v35;
  v51 = vdup_n_s32(0xFE80u);
  v52 = vbsl_s8(vcgt_s32(v51, v14), vadd_s32(v14, 0x8000000080), v51);
  v53 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v50), vsra_n_u32(v39, vsra_n_u32(v52, v52, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v53.i32[1] | ((v50 - (v12 + ((v48 + (v48 >> 8)) >> 8))) << 24) | v53.i32[0] | (v50 - (v38 + ((v49 + (v49 >> 8)) >> 8))) | (v50 << 32);
}

unint64_t PDAtranspose_luminosityPDA(unsigned int a1, signed int a2, unsigned __int32 a3, signed int a4)
{
  v4 = vdup_n_s32(a2);
  v5.i32[0] = a3 >> 8;
  v5.i32[1] = a3;
  v6 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v7 = vdup_n_s32(a4);
  v8 = vsub_s32(v7, vand_s8(v5, 0xFF000000FFLL));
  if (a2 - a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  v10 = COERCE_DOUBLE(vmin_s32(v8, v7));
  if (a4 - BYTE2(a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - BYTE2(a3);
  }

  v12 = vmin_s32(v6, v4);
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 - HIBYTE(a3);
  }

  if (a4 == 255)
  {
    v18 = 0;
    v15 = 0;
    v16 = 0.0;
  }

  else
  {
    if ((a2 - HIBYTE(a1)) >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 - HIBYTE(a1);
    }

    v15 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v16 = COERCE_DOUBLE(vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v12));
    v17 = vmla_s32(0x8000000080, v12, v7);
    v12 = vshr_n_s32(vsra_n_s32(v17, v17, 8uLL), 8uLL);
    v18 = (a4 ^ 0xFF) * v14;
  }

  v19 = vmla_s32(0x8000000080, *&v10, v4);
  v20 = vdup_lane_s32(*&v10, 0);
  v20.i32[0] = v11;
  v21 = COERCE_DOUBLE(vshr_n_s32(vsra_n_s32(v19, v19, 8uLL), 8uLL));
  v22 = COERCE_DOUBLE(vmla_s32(*&v16, v20, vdup_n_s32(a2 ^ 0xFFu)));
  if (a2 == 255)
  {
    v23 = v11;
  }

  else
  {
    v18 += v13 * (a2 ^ 0xFF);
    v15 += HIDWORD(v10) * (a2 ^ 0xFF);
    v13 = (v13 * a2 + 128 + ((v13 * a2 + 128) >> 8)) >> 8;
    v23 = (v11 * a2 + 128 + ((v11 * a2 + 128) >> 8)) >> 8;
  }

  if (a2 == 255)
  {
    *&v24 = v10;
  }

  else
  {
    *&v24 = v21;
  }

  if (a2 == 255)
  {
    *&v25 = v16;
  }

  else
  {
    *&v25 = v22;
  }

  v26 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v27.i32[0] = vdup_lane_s32(v12, 1).u32[0];
  v27.i32[1] = v9;
  v28 = vmul_s32(vsub_s32(v24, v27), 0x4D00000097);
  v29 = v28.i32[0] + 28 * (v23 - v12.i32[0]) + v28.i32[1];
  v30 = (v29 + 128) >> 8;
  v31 = v9 + v30;
  v32 = vadd_s32(vdup_n_s32(v30), v12);
  if (v29 != v29)
  {
    v33 = v9 >= v12.i32[1] ? v32.i32[1] : v9 + ((v29 + 128) >> 8);
    v34 = v9 >= v12.i32[1] ? v9 + ((v29 + 128) >> 8) : v32.i32[1];
    v35 = v32.i32[0] <= v34 ? v34 : v32.i32[0];
    if (v32.i32[0] >= v33)
    {
      v34 = v35;
    }

    else
    {
      v33 = v32.i32[0];
    }

    if (v34 > v26 || v33 < 0)
    {
      v36 = (77 * v31 + 151 * v32.i32[1] + 28 * v32.i32[0] + 128) >> 8;
      if ((v30 & 0x80000000) != 0)
      {
        v37 = v36 - v33;
        if (v36 == v33)
        {
          goto LABEL_46;
        }

        v38 = (77 * v31 + 151 * v32.i32[1] + 28 * v32.i32[0] + 128) >> 8;
      }

      else
      {
        v37 = v34 - v36;
        if (v34 == v36)
        {
          goto LABEL_46;
        }

        v38 = v26 - v36;
      }

      v39 = (v38 << 16) / v37;
      v31 = v36 + ((v39 * (v31 - v36) + 0x8000) >> 16);
      v40 = vdup_n_s32(v36);
      v32 = vsra_n_s32(v40, vmla_s32(0x800000008000, vdup_n_s32(v39), vsub_s32(v32, v40)), 0x10uLL);
    }
  }

LABEL_46:
  if (v18 >= 65152)
  {
    v41 = 65152;
  }

  else
  {
    v41 = v18 + 128;
  }

  v42 = v41 + (v41 >> 8);
  v43 = vdup_n_s32(0xFE80u);
  v44 = vcgt_s32(v43, v25);
  v45 = vadd_s32(v25, 0x8000000080);
  if (v15 >= 65152)
  {
    v46 = 65152;
  }

  else
  {
    v46 = v15 + 128;
  }

  v47 = vbsl_s8(v44, v45, v43);
  v48 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(a4 + a2 - v26), vsra_n_u32(v32, vsra_n_u32(v47, v47, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v48.i32[0] | ((a4 + a2 - v26 - (v13 + (v42 >> 8))) << 24) | (a4 + a2 - v26 - (v31 + ((v46 + (v46 >> 8)) >> 8))) | v48.i32[1] | ((a4 + a2 - v26) << 32);
}

void cmyk32_shade_axial_CMYK(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = a1 + 368;
  v8 = *(a1 + 368);
  v9 = (a3 >> 4) & 0xF0;
  v10 = v8 + v9;
  if (v8)
  {
    v11 = v8 + v9;
  }

  else
  {
    v11 = a1 + 368;
  }

  if (v8)
  {
    v12 = 15;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 320);
  v19 = *(a1 + 324);
  v22 = a1 + 144;
  v20 = *(a1 + 144);
  v21 = *(v22 + 8);
  v23 = *(a1 + 376);
  v24 = *(a1 + 360);
  if (v5 != 0.0)
  {
    if (v8)
    {
      v30 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    while (1)
    {
      v31 = v18;
      if (v6 >= v16)
      {
        v31 = v19;
        if (v6 <= v17)
        {
          v31 = (v15 * (v6 - v14));
        }
      }

      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      v32 = v23;
      if (v23)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v30) = (v30 + 1) & v12;
      v6 = v5 + v6;
      v21 = (v21 + 8);
      *v20 = v32;
      v20 = (v20 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v32 = (v24 + 2 * (5 * v31));
LABEL_38:
    v33 = *(v11 + v30);
    v21->i64[0] = ((v33 + *v32) << 16) & 0xFF000000 | ((((v33 + v32[4]) & 0xFF00) >> 8) << 32) | ((v33 + v32[1]) << 8) & 0xFF0000 | ((v33 + v32[2]) & 0xFF00) | ((v33 + v32[3]) >> 8);
    LOBYTE(v32) = -1;
    goto LABEL_39;
  }

  if (v8)
  {
    v25 = v10;
  }

  else
  {
    v25 = v7;
  }

  if (v8)
  {
    LODWORD(v26) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v8)
  {
    v27 = (a2 >> 8) & 0xF;
  }

  else
  {
    v27 = 0;
  }

  if (v8)
  {
    v28 = 15;
  }

  else
  {
    v28 = 0;
  }

  if (v6 >= v16)
  {
    v18 = v19;
    if (v6 <= v17)
    {
      v18 = (v15 * (v6 - v14));
    }
  }

  if ((v18 & 0x80000000) == 0 || v23)
  {
    v34 = (v24 + 2 * (5 * v18));
    if (v18 < 0)
    {
      v35 = v23;
    }

    else
    {
      v35 = v34;
    }

    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    v39 = v35[3];
    v40 = v35[4];
    if (v8)
    {
      v41 = vdup_n_s32(v36);
      v42 = vdup_n_s32(v37);
      v43 = a4 + 4;
      v44 = vdup_n_s32(v38);
      v45 = vdup_n_s32(v39);
      v46 = vdup_n_s32(v40);
      do
      {
        v4.i8[0] = *(v25 + v27);
        v4.i8[4] = *(v25 + v26);
        v47 = vand_s8(*v4.i8, 0xFF000000FFLL);
        v48 = vadd_s32(v42, v47);
        v49 = vadd_s32(v44, v47);
        v50 = vadd_s32(v45, v47);
        v51 = vshl_n_s32(vadd_s32(v41, v47), 0x10uLL);
        v52.i64[0] = v51.i32[0] & 0xFF00FFFF;
        v52.i64[1] = v51.i32[1] & 0xFF00FFFF;
        v53 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v46, v47), 0xFF000000FF00), 0x18uLL), v52);
        v54 = vand_s8(vshl_n_s32(v48, 8uLL), 0xFF000000FF0000);
        v52.i64[0] = v54.u32[0];
        v52.i64[1] = v54.u32[1];
        v55 = v52;
        v56 = vand_s8(v49, 0xFF000000FF00);
        v52.i64[0] = v56.u32[0];
        v52.i64[1] = v56.u32[1];
        v57 = vorrq_s8(v53, vorrq_s8(v55, v52));
        *v55.i8 = vshr_n_u32(v50, 8uLL);
        v52.i64[0] = v55.i32[0] & 0xFFFFFEFF;
        v52.i64[1] = v55.i32[1] & 0xFFFFFEFF;
        v58 = vorrq_s8(v57, v52);
        *v21 = v58;
        v26 = (v26 + 1) & v28;
        v58.i8[0] = *(v25 + ((v27 + 1) & v28));
        v58.i8[4] = *(v25 + v26);
        *v58.i8 = vand_s8(*v58.i8, 0xFF000000FFLL);
        v59 = vadd_s32(v42, *v58.i8);
        v60 = vadd_s32(v44, *v58.i8);
        v61 = vadd_s32(v45, *v58.i8);
        *v55.i8 = vshl_n_s32(vadd_s32(v41, *v58.i8), 0x10uLL);
        v52.i64[0] = v55.i32[0] & 0xFF00FFFF;
        v52.i64[1] = v55.i32[1] & 0xFF00FFFF;
        v62 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v46, *v58.i8), 0xFF000000FF00), 0x18uLL), v52);
        *v55.i8 = vand_s8(vshl_n_s32(v59, 8uLL), 0xFF000000FF0000);
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v63 = v52;
        v64 = vand_s8(v60, 0xFF000000FF00);
        v52.i64[0] = v64.u32[0];
        v52.i64[1] = v64.u32[1];
        v65 = vorrq_s8(v62, vorrq_s8(v63, v52));
        *v63.i8 = vshr_n_u32(v61, 8uLL);
        v52.i64[0] = v63.i32[0] & 0xFFFFFEFF;
        v52.i64[1] = v63.i32[1] & 0xFFFFFEFF;
        v4 = vorrq_s8(v65, v52);
        *v20++ = -1;
        v21[1] = v4;
        v21 += 2;
        v43 -= 4;
        v27 = (v27 + 1) & v28;
      }

      while (v43 > 4);
    }

    else
    {
      v66 = (v36 << 16) & 0xFF000000 | (((v40 & 0xFF00) >> 8) << 32) | (BYTE1(v37) << 16) | v38 & 0xFF00 | (v39 >> 8);
      v67 = a4 + 4;
      do
      {
        v21->i64[0] = v66;
        v21->i64[1] = v66;
        v21[1].i64[0] = v66;
        v21[1].i64[1] = v66;
        v21 += 2;
        v67 -= 4;
        *v20++ = -1;
      }

      while (v67 > 4);
    }
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

    bzero(v20, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

unint64_t cmyk32_shade_custom_CMYK(unint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, int32x4_t a6)
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
  v26 = 5 * *(result + 48);
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
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 10 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      v32 = *(v10 + v29);
      result = (v32 + v31[2]) & 0xFF00;
      *v27 = ((v32 + *v31) << 16) & 0xFF000000 | ((((v32 + v31[4]) & 0xFF00) >> 8) << 32) | ((v32 + v31[1]) << 8) & 0xFF0000 | result | ((v32 + v31[3]) >> 8);
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

uint64_t cmyk32_shade_conic_CMYK(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
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
  v41 = *(a1 + 336);
  v42 = *(a1 + 304);
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

  v40 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v42 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v40)) - v41);
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

    v27 = (v16 + 2 * (5 * v21));
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = (v16 + 10 * v26);
    v33 = 255 - v24;
    v34 = v32[1];
    result = v32[2];
    v36 = v32[3];
    LODWORD(v27) = v32[4] * v24 + v33 * v27[4];
    LODWORD(v32) = v24 * *v32 + v33 * v28;
    v37 = v24 * v34 + v33 * v29;
    v38 = v24 * result + v33 * v30;
    v39 = *(v10 + v19);
    *v17++ = ((v39 + (v32 >> 8)) << 16) & 0xFF000000 | ((((v39 + (v27 >> 8)) & 0xFF00) >> 8) << 32) | (v37 + (v39 << 8)) & 0xFF0000 | ((v39 + (v38 >> 8)) & 0xFF00) | ((v39 + ((v36 * v24 + v33 * v31) >> 8)) >> 8);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
  return result;
}

void cmyk32_shade_radial_CMYK(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(*(a1 + 272) + 4);
  v9 = v8 * a2;
  v10 = v8 * a3;
  v11 = *(a1 + 296) + ((*(a1 + 288) * v10) + (v6 * v9));
  v12 = *(a1 + 300) + ((v10 * *(a1 + 292)) + (v7 * v9));
  v14 = *(a1 + 400);
  v15 = *(a1 + 336);
  v16 = *(a1 + 344);
  v17 = *(a1 + 304);
  v18 = *(a1 + 308);
  v19 = *(a1 + 324);
  v20 = *(v14 + 8);
  v21 = *(v14 + 16);
  v5.i32[0] = *(v14 + 20);
  v22 = *(v14 + 28);
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 376);
  v27 = *(a1 + 360);
  v28 = (a2 >> 8) & 0xF;
  if (v20 != 0.0 || v22 != 0.0 || v7 != 0.0)
  {
    v39 = *(a1 + 320);
    v40 = *(v14 + 12);
    v41 = *(v14 + 24);
    v42 = *(v14 + 32);
    v43 = a1 + 368;
    v44 = *(a1 + 368);
    v45 = v44 + ((a3 >> 4) & 0xF0);
    v32 = v44 == 0;
    v46 = 15;
    if (v32)
    {
      v46 = 0;
      v28 = 0;
    }

    else
    {
      v43 = v45;
    }

    v47 = -v41;
    v48 = v18 - v17;
    while (1)
    {
      v49 = v47 + ((v11 + v11) * v20);
      v50 = ((v12 * v12) + (v11 * v11)) - v22;
      if (*v5.i32 == 0.0)
      {
        v57 = v50 / v49;
      }

      else
      {
        v51 = ((*v5.i32 * -4.0) * v50) + (v49 * v49);
        if (v51 < 0.0)
        {
          goto LABEL_53;
        }

        v52 = sqrtf(v51);
        v53 = v42 * (v49 - v52);
        v54 = v49 + v52;
        v55 = v42 * v54;
        v56 = (v42 * v54) <= v53;
        if ((v42 * v54) <= v53)
        {
          v57 = v42 * v54;
        }

        else
        {
          v57 = v53;
        }

        if (v56)
        {
          v55 = v53;
        }

        if (v55 < 0.0)
        {
          v58 = v55 < v40;
LABEL_39:
          v59 = v39;
          if (v58)
          {
            goto LABEL_53;
          }

LABEL_40:
          if ((v59 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        if (v55 <= 1.0)
        {
          v60 = v17 + (v55 * v48);
          goto LABEL_51;
        }

        if ((v19 & 0x80000000) == 0)
        {
          v59 = v19;
          if (v55 <= v21)
          {
LABEL_52:
            v61 = (v27 + 2 * (5 * v59));
LABEL_54:
            v62 = *(v43 + v28);
            v24->i64[0] = ((v62 + *v61) << 16) & 0xFF000000 | ((((v62 + v61[4]) & 0xFF00) >> 8) << 32) | ((v62 + v61[1]) << 8) & 0xFF0000 | ((v62 + v61[2]) & 0xFF00) | ((v62 + v61[3]) >> 8);
            LOBYTE(v61) = -1;
            goto LABEL_55;
          }
        }
      }

      if (v57 < 0.0)
      {
        v58 = v57 < v40;
        goto LABEL_39;
      }

      if (v57 > 1.0)
      {
        v59 = v19;
        if (v57 > v21)
        {
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      v60 = v17 + (v57 * v48);
LABEL_51:
      v59 = (v16 * (v60 - v15));
      if ((v59 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_53:
      v61 = v26;
      if (v26)
      {
        goto LABEL_54;
      }

LABEL_55:
      v28 = (v28 + 1) & v46;
      v11 = v6 + v11;
      v12 = v7 + v12;
      v24 = (v24 + 8);
      *v23++ = v61;
      if (!--a4)
      {
        return;
      }
    }
  }

  v29 = a1 + 368;
  v30 = *(a1 + 368);
  LODWORD(v31) = (BYTE1(a2) + 1) & 0xF;
  v32 = v30 == 0;
  if (v30)
  {
    v33 = v30 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v33 = v29;
  }

  if (v32)
  {
    LODWORD(v31) = 0;
    v34 = 0;
  }

  else
  {
    v34 = (a2 >> 8) & 0xF;
  }

  if (v32)
  {
    v35 = 0;
  }

  else
  {
    v35 = 15;
  }

  v36 = v12 * v12;
  v37 = -*v5.i32;
  if (v36 <= -*v5.i32)
  {
    v63 = fabsf(*(v14 + 32));
    v64 = *v5.i32 * -4.0;
    v65 = v18 - v17;
    v66 = (v27 + 2 * (5 * v19));
    v67 = a4 + 2;
    while (1)
    {
      v68 = v36 + (v11 * v11);
      v69 = v6 + v11;
      v70 = v36 + (v69 * v69);
      if (v68 <= v37 || v70 <= v37)
      {
        v72 = sqrtf(v64 * v70);
        v73 = v63 * sqrtf(v64 * v68);
        v74 = v63 * v72;
        v75 = (v16 * ((v17 + (v73 * v65)) - v15));
        v76 = (v16 * ((v17 + ((v63 * v72) * v65)) - v15));
        if (v73 > 1.0 || v74 > 1.0)
        {
          if (v73 <= 1.0)
          {
            if (v75 < 0)
            {
              goto LABEL_81;
            }

            v78 = (5 * v75);
          }

          else if (v73 > v21 || (v78 = (5 * v19), v19 < 0))
          {
LABEL_81:
            v92 = v26;
            if (v26)
            {
LABEL_82:
              v101 = *(v33 + v34);
              v24->i64[0] = ((v101 + *v92) << 16) & 0xFF000000 | ((((v101 + *(v92 + 8)) & 0xFF00) >> 8) << 32) | ((v101 + *(v92 + 2)) << 8) & 0xFF0000 | ((v101 + *(v92 + 4)) & 0xFF00) | ((v101 + *(v92 + 6)) >> 8);
              LOBYTE(v92) = -1;
            }

            if (v74 <= 1.0)
            {
              if (v76 < 0)
              {
                goto LABEL_90;
              }

              v102 = (5 * v76);
            }

            else if (v74 > v21 || (v102 = (5 * v19), v19 < 0))
            {
LABEL_90:
              if (!v26)
              {
                v108 = 0;
                goto LABEL_94;
              }

              v104 = *v26;
              v105 = v26[1].i16[0];
              v106 = v31;
              goto LABEL_92;
            }

            v103 = (v27 + 2 * v102);
            v104 = *v103;
            v105 = v103[1].i16[0];
            v106 = v31;
LABEL_92:
            v107 = *(v33 + v106);
            v90 = vaddw_u16(vdupq_n_s32(v107), v104);
            v91 = v107 + v105;
            goto LABEL_93;
          }

          v92 = v27 + 2 * v78;
          goto LABEL_82;
        }

        v82 = (v27 + 10 * v75);
        v83 = (v27 + 10 * v76);
        v84 = *(v33 + v34);
        v85 = v84 + *v82;
        v86 = v84 + v82[1];
        v87 = v84 + v82[2];
        v88 = v84 + v82[3];
        LOWORD(v82) = v84 + v82[4];
        v89 = *(v33 + v31);
        v90 = vaddw_u16(vdupq_n_s32(v89), *v83);
        v91 = v89 + v83[1].i16[0];
        v92 = (v85 << 16) & 0xFF000000 | (((v82 & 0xFF00) >> 8) << 32) | (v86 << 8) & 0xFF0000 | (v87 & 0xFF00);
        v93 = HIBYTE(v88);
      }

      else
      {
        if (v19 < 0)
        {
          if (!v26)
          {
            v108 = 0;
            LOBYTE(v92) = 0;
            goto LABEL_94;
          }

          v79 = *v26;
          v80 = vmovl_u16(*v26);
          v81 = v26[1].i16[0];
        }

        else
        {
          v79 = *v66;
          v80 = vmovl_u16(*v66);
          v81 = v66[1].i16[0];
        }

        v94 = *(v33 + v34);
        v95 = v80.i32[0] + v94;
        v96 = v80.i32[1] + v94;
        v97 = v80.i16[4] + v94;
        v98 = v80.i16[6] + v94;
        v99 = v94 + v81;
        v100 = *(v33 + v31);
        v90 = vaddw_u16(vdupq_n_s32(v100), v79);
        v91 = v100 + v81;
        v92 = (v95 << 16) & 0xFF000000 | (((v99 & 0xFF00) >> 8) << 32) | v97 & 0xFF00 | (v96 << 8) & 0xFF0000;
        v93 = HIBYTE(v98);
      }

      v24->i64[0] = v92 | v93;
      LOBYTE(v92) = -1;
LABEL_93:
      v24->i64[1] = (v90.i32[0] << 16) & 0xFF000000 | (((v91 & 0xFF00) >> 8) << 32) | v90.i16[4] & 0xFF00 | (v90.i32[1] << 8) & 0xFF0000 | v90.u8[13];
      v108 = -1;
LABEL_94:
      v11 = v6 + v69;
      LOBYTE(v34) = (v34 + 1) & v35;
      LOBYTE(v31) = (v31 + 1) & v35;
      ++v24;
      *v23 = v92;
      v23[1] = v108;
      v23 += 2;
      v67 -= 2;
      if (v67 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v19 & 0x80000000) == 0)
  {
    v109 = (v27 + 10 * v19);
    if (v19 >= 0)
    {
      v110 = v109;
    }

    else
    {
      v110 = v26;
    }

    v111 = vdup_n_s32(v110[4]);
    v112 = vdup_n_s32(*v110);
    v113 = vdup_n_s32(v110[1]);
    v114 = vdup_n_s32(v110[2]);
    v115 = vdup_n_s32(v110[3]);
    v116 = a4 + 4;
    do
    {
      v5.i8[0] = *(v33 + v34);
      v5.i8[4] = *(v33 + v31);
      v117 = vand_s8(*v5.i8, 0xFF000000FFLL);
      v118 = vadd_s32(v113, v117);
      v119 = vadd_s32(v114, v117);
      v120 = vadd_s32(v115, v117);
      v121 = vshl_n_s32(vadd_s32(v112, v117), 0x10uLL);
      v122.i64[0] = v121.i32[0] & 0xFF00FFFF;
      v122.i64[1] = v121.i32[1] & 0xFF00FFFF;
      v123 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v111, v117), 0xFF000000FF00), 0x18uLL), v122);
      v124 = vand_s8(vshl_n_s32(v118, 8uLL), 0xFF000000FF0000);
      v122.i64[0] = v124.u32[0];
      v122.i64[1] = v124.u32[1];
      v125 = v122;
      v126 = vand_s8(v119, 0xFF000000FF00);
      v122.i64[0] = v126.u32[0];
      v122.i64[1] = v126.u32[1];
      v127 = vorrq_s8(v123, vorrq_s8(v125, v122));
      *v125.i8 = vshr_n_u32(v120, 8uLL);
      v122.i64[0] = v125.i32[0] & 0xFFFFFEFF;
      v122.i64[1] = v125.i32[1] & 0xFFFFFEFF;
      v128 = vorrq_s8(v127, v122);
      *v24 = v128;
      v31 = (v31 + 1) & v35;
      v128.i8[0] = *(v33 + ((v34 + 1) & v35));
      v128.i8[4] = *(v33 + v31);
      *v128.i8 = vand_s8(*v128.i8, 0xFF000000FFLL);
      v129 = vadd_s32(v113, *v128.i8);
      v130 = vadd_s32(v114, *v128.i8);
      v131 = vadd_s32(v115, *v128.i8);
      *v125.i8 = vshl_n_s32(vadd_s32(v112, *v128.i8), 0x10uLL);
      v122.i64[0] = v125.i32[0] & 0xFF00FFFF;
      v122.i64[1] = v125.i32[1] & 0xFF00FFFF;
      v132 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v111, *v128.i8), 0xFF000000FF00), 0x18uLL), v122);
      *v125.i8 = vand_s8(vshl_n_s32(v129, 8uLL), 0xFF000000FF0000);
      v122.i64[0] = v125.u32[0];
      v122.i64[1] = v125.u32[1];
      v133 = v122;
      v134 = vand_s8(v130, 0xFF000000FF00);
      v122.i64[0] = v134.u32[0];
      v122.i64[1] = v134.u32[1];
      v135 = vorrq_s8(v132, vorrq_s8(v133, v122));
      *v133.i8 = vshr_n_u32(v131, 8uLL);
      v122.i64[0] = v133.i32[0] & 0xFFFFFEFF;
      v122.i64[1] = v133.i32[1] & 0xFFFFFEFF;
      v5 = vorrq_s8(v135, v122);
      *v23 = -1;
      v23 += 4;
      v24[1] = v5;
      v24 += 2;
      v116 -= 4;
      v34 = (v34 + 1) & v35;
    }

    while (v116 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = a4;
    }

    bzero(v23, ((a4 - v38 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t cmyk32_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
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
  v24 = 0u;
  memset(v41, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v24, v41) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 134759444;
  v11 = *a3;
  *(&v24 + 1) = __PAIR64__(*v6, *a3);
  if (v11 == 134759444)
  {
    if (!v35 && (~DWORD1(v25) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v25) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      cmyk32_mark(a1);
      return 1;
    }

    *&v24 = cmyk32_sample_cmyk32;
    goto LABEL_37;
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
  *&v24 = *&CMYK8_image_sample[2 * v12 + 2];
  if (v24)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 0x10 || (*&v24 = *&CMYK16_image_sample[2 * v12 + 2], !v24))
  {
    *&v24 = *&CMYKF_image_sample[2 * v12 + 2];
    if (v24)
    {
      v10 = 538985509;
      v15 = 20;
      goto LABEL_35;
    }

    return 0xFFFFFFFFLL;
  }

  v10 = 269501476;
  v15 = 16;
LABEL_35:
  LODWORD(v25) = v15;
LABEL_36:
  DWORD2(v24) = v10;
  if ((v13 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v25) & 7) != 3 || a2[2] != 5 && a2[2] || v12 > 0xB)
  {
    goto LABEL_37;
  }

  HIDWORD(v17) = v14;
  LODWORD(v17) = v14;
  v16 = v17 >> 3;
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      *(&v24 + 2) = *a3;
      v18 = cmyk32_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v16 == 4)
    {
      *(&v24 + 2) = *a3;
      v18 = cmyk32_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v16 != 5)
    {
      goto LABEL_37;
    }

    *(&v24 + 2) = *a3;
    v19 = cmyk32_image_mark_rgb32;
LABEL_64:
    v20 = v19;
    v21 = a2;
    v22 = v8;
    v23 = 8;
LABEL_67:
    cmyk32_image_mark_image(v21, &v24, v22, v23, v20);
    return 1;
  }

  switch(v16)
  {
    case 0:
      *(&v24 + 2) = *a3;
      v18 = cmyk32_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      *(&v24 + 2) = *a3;
      v19 = cmyk32_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      *(&v24 + 2) = *a3;
      v18 = cmyk32_image_mark_W8;
LABEL_66:
      v20 = v18;
      v21 = a2;
      v22 = v8;
      v23 = 0;
      goto LABEL_67;
  }

LABEL_37:
  cmyk32_image_mark(a2, &v24, v8);
  return 1;
}

uint64_t cmyk32_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v768 = *MEMORY[0x1E69E9840];
  v11 = *(v2 + 96);
  v12 = *(v2 + 48);
  v13 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v11 == 0) + 4 * (v12 == 0));
  if (v13 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *(v2 + 4);
  v16 = v15 - 1;
  if (v15 < 1)
  {
    return 0;
  }

  v17 = *(v2 + 8);
  v18 = (v17 - 1);
  if (v17 < 1)
  {
    return 0;
  }

  if (v13 >= 24 && **v1 == 134759428)
  {
    v13 += 4;
  }

  v19 = *(v2 + 136);
  v682 = v2;
  if ((*v2 & 0xFF0000) == 0x50000 || !v19)
  {
    v21 = *v2 & 0xFF00;
    v686 = v13;
    if (v21 == 1024)
    {
      v767[0] = *(v2 + 4);
      v757[0] = v17;
      if (v11)
      {
        v22 = *v11;
      }

      else
      {
        v22 = 255;
      }

      v34 = **(v2 + 88);
      v35 = *(v2 + 12);
      v36 = *(v2 + 16);
      v37 = *(v2 + 28) >> 2;
      if (v12)
      {
        v747 = *(v2 + 32);
        v744 = (v12 + v747 * v36 + v35);
        v38 = 1;
      }

      else
      {
        v744 = 0;
        v747 = 0;
        v38 = 0;
      }

      v44 = ~v22;
      v45 = (*(v2 + 40) + 4 * v36 * v37 + 4 * v35);
      v736 = v45;
      v724 = *(v2 + 28) >> 2;
      v731 = v38;
      if (!v19)
      {
        v750 = 0;
        if (v12)
        {
          v48 = v15;
        }

        else
        {
          v48 = 0;
        }

        v47 = v744;
        __b = v747 - v48;
        v49 = v15;
        goto LABEL_970;
      }

      shape_enum_clip_alloc(v1, v2, v19, 1, 1, 1, *(v2 + 104), *(v2 + 108), v15, v17);
      v47 = v744;
      __b = v747;
      if (v46)
      {
        while (1)
        {
          v750 = v46;
          if (!shape_enum_clip_next(v46, &v756 + 1, &v756, v767, v757))
          {
            break;
          }

          v45 = (v45 + 4 * v37 * v756 + 4 * SHIDWORD(v756));
          v49 = v767[0];
          if (v12)
          {
            v47 = &v744[v747 * v756 + SHIDWORD(v756)];
          }

          v637 = __b;
          if (v12)
          {
            v637 = (v747 - v767[0]);
          }

          __b = v637;
          LODWORD(v15) = v767[0];
LABEL_970:
          v753 = v37 - v49;
          switch(v13)
          {
            case 0:
              v537 = v753 + v15;
              v538 = v757[0];
              v539 = v757[0] - 1;
              v540 = &v45->i8[4 * ((v537 * v539) & (v537 >> 63))];
              if (v537 < 0)
              {
                v537 = -v537;
              }

              CGBlt_fillBytes(4 * v15, v757[0], 0, v540, 4 * v537);
              if (!v12)
              {
                goto LABEL_1105;
              }

              v541 = __b + v15;
              v47 += (v541 * v539) & (v541 >> 63);
              if (v541 >= 0)
              {
                v542 = __b + v15;
              }

              else
              {
                v542 = -v541;
              }

              v543 = v15;
              v544 = v538;
              v545 = 0;
              goto LABEL_1104;
            case 1:
              v590 = v753 + v15;
              if (v590 < 0)
              {
                v45 = (v45 + 4 * v590 * (v757[0] - 1));
                v590 = -v590;
              }

              v591 = 0;
              v592 = *(v682 + 88);
              if (v592)
              {
                v591 = *v592;
              }

              v593 = v757[0];
              CGBlt_fillBytes(4 * v15, v757[0], v591, v45->i8, 4 * v590);
              if (v12)
              {
                v544 = v593;
                v594 = *(v682 + 96);
                if (!v594)
                {
                  v594 = &PIXELALPHAPLANARCONSTANT_18034;
                }

                v47 += ((__b + v15) * (v593 - 1)) & ((__b + v15) >> 63);
                if (__b + v15 >= 0)
                {
                  v542 = __b + v15;
                }

                else
                {
                  v542 = -(__b + v15);
                }

                v545 = *v594;
                v543 = v15;
LABEL_1104:
                __b = v542;
                CGBlt_fillBytes(v543, v544, v545, v47, v542);
              }

LABEL_1105:
              v13 = v686;
              goto LABEL_1265;
            case 2:
              v572 = 4 * v38;
              if (!v12)
              {
                v640 = vdupq_n_s32(~v22);
                v641 = vdupq_n_s32(v34);
                v642.i64[0] = 0x1000100010001;
                v642.i64[1] = 0x1000100010001;
                do
                {
                  v643 = v767[0];
                  if (v767[0] >= 4)
                  {
                    v644 = (v767[0] >> 2) + 1;
                    do
                    {
                      v645.i16[0] = v45->u8[0];
                      v645.i16[1] = BYTE2(v45->u32[0]);
                      v645.i16[2] = BYTE4(v45->i64[0]);
                      v645.i16[3] = BYTE6(v45->i64[0]);
                      v645.i16[4] = v45->i64[1];
                      v645.i16[5] = BYTE2(v45->i64[1]);
                      v645.i16[6] = BYTE12(*v45);
                      v645.i16[7] = BYTE14(*v45);
                      v646 = vmulq_s32((*&vshrq_n_u32(*v45, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v640);
                      v647 = vmulq_s32(v645, v640);
                      *v45++ = vaddq_s32(vaddq_s32((*&vaddq_s32(vaddq_s32(v646, v642), (*&vshrq_n_u32(v646, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), v641), (*&vshrq_n_u32(vaddq_s32(vaddq_s32(v647, v642), (*&vshrq_n_u32(v647, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
                      v47 += v572;
                      --v644;
                    }

                    while (v644 > 1);
                    v643 &= 3u;
                  }

                  if (v643 >= 1)
                  {
                    v648 = v643 + 1;
                    do
                    {
                      v45->i32[0] = ((((v45->i32[0] >> 8) & 0xFF00FF) * v44 + 65537 + (((((v45->i32[0] >> 8) & 0xFF00FF) * v44) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v34 + ((((v45->i32[0] & 0xFF00FF) * v44 + 65537 + ((((v45->i32[0] & 0xFF00FF) * v44) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                      v45 = (v45 + 4);
                      --v648;
                    }

                    while (v648 > 1);
                    v47 += v643 * v38;
                  }

                  v45 = (v45 + 4 * v753);
                  v47 += __b;
                  --v757[0];
                }

                while (v757[0]);
                v37 = v724;
                break;
              }

              v730 = v15 & 3;
              v573 = v757[0];
              v727 = (v15 >> 2) + 1;
              v697 = v15;
              do
              {
                v749 = v573;
                if (v15 < 4)
                {
                  v578 = v15;
                }

                else
                {
                  v574 = v47 + 3;
                  v575 = v727;
                  do
                  {
                    DAplusDAM(v45, v574 - 3, v34, v22, v45->i32[0], *(v574 - 3), ~v22);
                    DAplusDAM(&v45->i32[1], v574 - 2, v34, v22, v45->u32[1], *(v574 - 2), ~v22);
                    DAplusDAM(&v45->i32[2], v574 - 1, v34, v22, v45->u32[2], *(v574 - 1), ~v22);
                    v577 = v45->u32[3];
                    v576 = &v45->i32[3];
                    DAplusDAM(v576, v574, v34, v22, v577, *v574, ~v22);
                    v45 = (v576 + 1);
                    --v575;
                    v574 += v572;
                  }

                  while (v575 > 1);
                  v47 = v574 - 3;
                  v578 = v730;
                }

                if (v578 < 1)
                {
                  v580 = v45;
                }

                else
                {
                  v579 = v578 + 1;
                  v580 = v45;
                  do
                  {
                    v581 = *v580++;
                    DAplusDAM(v45, v47, v34, v22, v581, *v47, ~v22);
                    v47 += v38;
                    --v579;
                    v45 = v580;
                  }

                  while (v579 > 1);
                }

                v45 = &v580[v753];
                v47 += __b;
                v573 = v749 - 1;
                v757[0] = v749 - 1;
                v13 = v686;
                LODWORD(v15) = v697;
              }

              while (v749 != 1);
LABEL_1264:
              v37 = v724;
              goto LABEL_1265;
            case 3:
              do
              {
                v584 = v767[0];
                do
                {
                  v585 = *v47;
                  if (v585 == 255)
                  {
                    v45->i32[0] = v34;
                    LOBYTE(v586) = v22;
                  }

                  else if (*v47)
                  {
                    v587 = PDAM_5790(v34, v22, v585);
                    v45->i32[0] = v587;
                    v586 = HIDWORD(v587);
                  }

                  else
                  {
                    LOBYTE(v586) = 0;
                    v45->i32[0] = 0;
                  }

                  *v47 = v586;
                  v45 = (v45 + 4);
                  v47 += v38;
                  --v584;
                }

                while (v584);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 4:
              do
              {
                v556 = v767[0];
                do
                {
                  if (~*v47 == 255)
                  {
                    v45->i32[0] = v34;
                    LOBYTE(v557) = v22;
                  }

                  else if (*v47 == -1)
                  {
                    LOBYTE(v557) = 0;
                    v45->i32[0] = 0;
                  }

                  else
                  {
                    v558 = PDAM_5790(v34, v22, ~*v47);
                    v45->i32[0] = v558;
                    v557 = HIDWORD(v558);
                  }

                  *v47 = v557;
                  v45 = (v45 + 4);
                  v47 += v38;
                  --v556;
                }

                while (v556);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1264;
            case 5:
              v698 = v15;
              v601 = v757[0];
              do
              {
                v602 = v698;
                v603 = v45;
                do
                {
                  v604 = *v603++;
                  DAMplusDAM(v45, v47, v34, v22, *v47, v604, *v47, ~v22);
                  v47 += v38;
                  v45 = v603;
                  --v602;
                }

                while (v602);
                v45 = &v603[v753];
                v47 += __b;
                v757[0] = --v601;
              }

              while (v601);
              goto LABEL_1263;
            case 6:
              do
              {
                v609 = v767[0];
                do
                {
                  if (*v47 != -1)
                  {
                    if (~*v47 == 255)
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }

                    else
                    {
                      DAplusDAM(v45, v47, v45->i32[0], *v47, v34, v22, ~*v47);
                    }
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v609;
                }

                while (v609);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1264;
            case 7:
              if (v12)
              {
                do
                {
                  v588 = v767[0];
                  do
                  {
                    v589 = PDAM_5790(v45->i32[0], *v47, v22);
                    v45->i32[0] = v589;
                    v45 = (v45 + 4);
                    *v47 = BYTE4(v589);
                    v47 += v38;
                    --v588;
                  }

                  while (v588);
                  v45 = (v45 + 4 * v753);
                  v47 += __b;
                  --v757[0];
                }

                while (v757[0]);
                goto LABEL_1265;
              }

              do
              {
                v649 = v767[0];
                v650 = v767[0] - 1;
                do
                {
                  v45->i32[0] = (((v45->i32[0] & 0xFF00FF) * v22 + 65537 + ((((v45->i32[0] & 0xFF00FFu) * v22) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((v45->i32[0] >> 8) & 0xFF00FF) * v22 + 65537 + (((((v45->i32[0] >> 8) & 0xFF00FF) * v22) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                  v45 = (v45 + 4);
                  --v649;
                }

                while (v649);
                v45 = (v45 + 4 * v753);
                v47 += __b + v38 + v38 * v650;
                --v757[0];
              }

              while (v757[0]);
              break;
            case 8:
              if (v12)
              {
                do
                {
                  v616 = v767[0];
                  do
                  {
                    v617 = PDAM_5790(v45->i32[0], *v47, ~v22);
                    v45->i32[0] = v617;
                    v45 = (v45 + 4);
                    *v47 = BYTE4(v617);
                    v47 += v38;
                    --v616;
                  }

                  while (v616);
                  v45 = (v45 + 4 * v753);
                  v47 += __b;
                  --v757[0];
                }

                while (v757[0]);
LABEL_1265:
                v38 = v731;
              }

              else
              {
                do
                {
                  v651 = v767[0];
                  v652 = v767[0] - 1;
                  do
                  {
                    v45->i32[0] = (((v45->i32[0] & 0xFF00FF) * v44 + 65537 + ((((v45->i32[0] & 0xFF00FF) * v44) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((v45->i32[0] >> 8) & 0xFF00FF) * v44 + 65537 + (((((v45->i32[0] >> 8) & 0xFF00FF) * v44) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v45 = (v45 + 4);
                    --v651;
                  }

                  while (v651);
                  v45 = (v45 + 4 * v753);
                  v47 += __b + v38 + v38 * v652;
                  --v757[0];
                }

                while (v757[0]);
              }

              break;
            case 9:
              v696 = v15;
              v564 = v757[0];
              do
              {
                v565 = v696;
                v566 = v45;
                do
                {
                  v567 = *v566++;
                  DAMplusDAM(v45, v47, v34, v22, *v47 ^ 0xFF, v567, *v47, v22);
                  v47 += v38;
                  v45 = v566;
                  --v565;
                }

                while (v565);
                v45 = &v566[v753];
                v47 += __b;
                v757[0] = --v564;
              }

              while (v564);
              goto LABEL_1263;
            case 10:
              v699 = v15;
              v612 = v757[0];
              do
              {
                v613 = v699;
                v614 = v45;
                do
                {
                  v615 = *v614++;
                  DAMplusDAM(v45, v47, v34, v22, *v47 ^ 0xFF, v615, *v47, ~v22);
                  v47 += v38;
                  v45 = v614;
                  --v613;
                }

                while (v613);
                v45 = &v614[v753];
                v47 += __b;
                v757[0] = --v612;
              }

              while (v612);
              goto LABEL_1263;
            case 11:
              v695 = v15;
              if (v12)
              {
                v552 = v757[0];
                do
                {
                  v553 = v695;
                  v554 = v45;
                  do
                  {
                    v555 = *v554++;
                    DAplusdDA(v45, v47, v555, *v47, v34, v22);
                    v47 += v38;
                    v45 = v554;
                    --v553;
                  }

                  while (v553);
                  v45 = &v554[v753];
                  v47 += __b;
                  v757[0] = --v552;
                }

                while (v552);
              }

              else
              {
                v632 = v38 + v38 * (v15 - 1);
                v633 = v757[0];
                do
                {
                  v634 = v695;
                  v635 = v45;
                  do
                  {
                    v636 = *v635++;
                    DplusdDA(v45, v636, v34, v22);
                    v45 = v635;
                    --v634;
                  }

                  while (v634);
                  v45 = &v635[v753];
                  v47 += v632 + __b;
                  v757[0] = --v633;
                }

                while (v633);
              }

LABEL_1263:
              v13 = v686;
              goto LABEL_1264;
            case 12:
              v559 = (v34 >> 8) & 0xFF00FF;
              v560 = v34 & 0xFF00FF;
              if (v12)
              {
                do
                {
                  v561 = v767[0];
                  do
                  {
                    v562 = *v47 + v22;
                    v563 = ((((v45->i32[0] >> 8) & 0xFF00FF) + v559) << 8) & 0xFF00FF00 | ((v45->i32[0] & 0xFF00FF) + v560) & 0xFF00FF | (15 * ((((v45->i32[0] >> 8) & 0xFF00FF) + v559) & 0x1000100 | (((v45->i32[0] & 0xFF00FFu) + v560) >> 8) & 0x10001)) | (240 * ((((v45->i32[0] >> 8) & 0xFF00FF) + v559) & 0x1000100 | (((v45->i32[0] & 0xFF00FFu) + v560) >> 8) & 0x10001));
                    if (v562 >= 0xFF)
                    {
                      LOBYTE(v562) = -1;
                    }

                    *v47 = v562;
                    v45->i32[0] = v563;
                    v45 = (v45 + 4);
                    v47 += v38;
                    --v561;
                  }

                  while (v561);
                  v45 = (v45 + 4 * v753);
                  v47 += __b;
                  --v757[0];
                }

                while (v757[0]);
              }

              else
              {
                do
                {
                  v638 = v767[0];
                  v639 = v767[0] - 1;
                  do
                  {
                    v45->i32[0] = ((((v45->i32[0] >> 8) & 0xFF00FF) + v559) << 8) & 0xFF00FF00 | ((v45->i32[0] & 0xFF00FF) + v560) & 0xFF00FF | (15 * ((((v45->i32[0] >> 8) & 0xFF00FF) + v559) & 0x1000100 | (((v45->i32[0] & 0xFF00FFu) + v560) >> 8) & 0x10001)) | (240 * ((((v45->i32[0] >> 8) & 0xFF00FF) + v559) & 0x1000100 | (((v45->i32[0] & 0xFF00FFu) + v560) >> 8) & 0x10001));
                    v45 = (v45 + 4);
                    --v638;
                  }

                  while (v638);
                  v45 = (v45 + 4 * v753);
                  v47 += __b + v38 + v38 * v639;
                  --v757[0];
                }

                while (v757[0]);
              }

              break;
            case 13:
              if (!v22)
              {
                break;
              }

              do
              {
                v607 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v608 = PDAmultiplyPDA_5791(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v608;
                      *v47 = BYTE4(v608);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAmultiplyPDA_5791(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v607;
                }

                while (v607);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 14:
              if (!v22)
              {
                break;
              }

              do
              {
                v550 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v551 = PDAscreenPDA_5792(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v551;
                      *v47 = BYTE4(v551);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAscreenPDA_5792(v45->i32[0], 0xFFu, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v550;
                }

                while (v550);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 15:
              if (!v22)
              {
                break;
              }

              do
              {
                v582 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v583 = PDAoverlayPDA_5793(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v583;
                      *v47 = BYTE4(v583);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAoverlayPDA_5793(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v582;
                }

                while (v582);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 16:
              if (!v22)
              {
                break;
              }

              do
              {
                v548 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v549 = PDAdarkenPDA_5795(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v549;
                      *v47 = BYTE4(v549);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAdarkenPDA_5795(v45->i32[0], 0xFFu, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v548;
                }

                while (v548);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 17:
              if (!v22)
              {
                break;
              }

              do
              {
                v597 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v598 = PDAlightenPDA_5794(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v598;
                      *v47 = BYTE4(v598);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAlightenPDA_5794(v45->i32[0], 0xFFu, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v597;
                }

                while (v597);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 18:
              if (!v22)
              {
                break;
              }

              do
              {
                v610 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v611 = PDAcolordodgePDA_5796(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v611;
                      *v47 = BYTE4(v611);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAcolordodgePDA_5796(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v610;
                }

                while (v610);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 19:
              if (!v22)
              {
                break;
              }

              do
              {
                v622 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v623 = PDAcolorburnPDA_5797(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v623;
                      *v47 = BYTE4(v623);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAcolorburnPDA_5797(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v622;
                }

                while (v622);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 20:
              if (!v22)
              {
                break;
              }

              do
              {
                v599 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v600 = PDAsoftlightPDA_5799(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v600;
                      *v47 = BYTE4(v600);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAsoftlightPDA_5799(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v599;
                }

                while (v599);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 21:
              if (!v22)
              {
                break;
              }

              do
              {
                v605 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v606 = PDAhardlightPDA_5798(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v606;
                      *v47 = BYTE4(v606);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAhardlightPDA_5798(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v605;
                }

                while (v605);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 22:
              if (!v22)
              {
                break;
              }

              do
              {
                v620 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v621 = PDAdifferencePDA_5800(v45->i32[0], *v47, v34, v22, v3, v4, v5, v6, v7, v8, v9, v10);
                      v45->i32[0] = v621;
                      *v47 = BYTE4(v621);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAdifferencePDA_5800(v45->i32[0], 0xFFu, v34, v22, v3, v4, v5, v6, v7, v8, v9, v10);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v620;
                }

                while (v620);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 23:
              if (!v22)
              {
                break;
              }

              do
              {
                v624 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v625 = PDAexclusionPDA_5801(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v625;
                      *v47 = BYTE4(v625);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAexclusionPDA_5801(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v624;
                }

                while (v624);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 24:
              if (!v22)
              {
                break;
              }

              do
              {
                v570 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v571 = PDAhuePDA_5802(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v571;
                      *v47 = BYTE4(v571);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAhuePDA_5802(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v570;
                }

                while (v570);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 25:
              if (!v22)
              {
                break;
              }

              do
              {
                v568 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v569 = PDAsaturationPDA_5803(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v569;
                      *v47 = BYTE4(v569);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAsaturationPDA_5803(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v568;
                }

                while (v568);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 26:
              if (!v22)
              {
                break;
              }

              do
              {
                v630 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v631 = PDAluminosityPDA_5804(v34, v22, v45->i32[0], *v47);
                      v45->i32[0] = v631;
                      *v47 = BYTE4(v631);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAluminosityPDA_5804(v34, v22, v45->i32[0], 255);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v630;
                }

                while (v630);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 27:
              if (!v22)
              {
                break;
              }

              do
              {
                v546 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v547 = PDAluminosityPDA_5804(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v547;
                      *v47 = BYTE4(v547);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAluminosityPDA_5804(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v546;
                }

                while (v546);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 28:
              if (!v22)
              {
                break;
              }

              do
              {
                v626 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v627 = PDAtranspose_huePDA(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v627;
                      *v47 = BYTE4(v627);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAtranspose_huePDA(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v626;
                }

                while (v626);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 29:
              if (!v22)
              {
                break;
              }

              do
              {
                v628 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v629 = PDAtranspose_saturationPDA(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v629;
                      *v47 = BYTE4(v629);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAtranspose_saturationPDA(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v628;
                }

                while (v628);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 30:
              if (!v22)
              {
                break;
              }

              do
              {
                v618 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v619 = PDAtranspose_luminosityPDA(v34, v22, v45->i32[0], *v47);
                      v45->i32[0] = v619;
                      *v47 = BYTE4(v619);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAtranspose_luminosityPDA(v34, v22, v45->i32[0], 255);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v618;
                }

                while (v618);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            case 31:
              if (!v22)
              {
                break;
              }

              do
              {
                v595 = v767[0];
                do
                {
                  if (v12)
                  {
                    if (*v47)
                    {
                      v596 = PDAtranspose_luminosityPDA(v45->i32[0], *v47, v34, v22);
                      v45->i32[0] = v596;
                      *v47 = BYTE4(v596);
                    }

                    else
                    {
                      v45->i32[0] = v34;
                      *v47 = v22;
                    }
                  }

                  else
                  {
                    v45->i32[0] = PDAtranspose_luminosityPDA(v45->i32[0], 255, v34, v22);
                  }

                  v45 = (v45 + 4);
                  v47 += v38;
                  --v595;
                }

                while (v595);
                v45 = (v45 + 4 * v753);
                v47 += __b;
                --v757[0];
              }

              while (v757[0]);
              goto LABEL_1265;
            default:
              break;
          }

          v45 = v736;
          v46 = v750;
          if (!v750)
          {
            return 1;
          }

          v756 = 0;
        }

        v55 = v750;
LABEL_1275:
        free(v55);
      }

      return 1;
    }

    v767[0] = *(v2 + 4);
    v757[0] = v17;
    v23 = *(v2 + 88);
    v24 = *(v2 + 12);
    v25 = *(v2 + 16);
    v26 = *(v2 + 28) >> 2;
    if (v12)
    {
      v680 = *(v2 + 32);
      v681 = (v12 + v680 * v25 + v24);
      v746 = 0xFFFFFFFFLL;
    }

    else
    {
      v680 = 0;
      v681 = 0;
      v746 = 0;
    }

    v679 = *(v2 + 40) + 4 * v25 * v26 + 4 * v24;
    v39 = *(v2 + 56);
    v40 = *(v2 + 60);
    v41 = *(v2 + 76) >> 2;
    if (v21 == 256)
    {
      if (v11)
      {
        v42 = *(v2 + 80);
        v11 += v42 * v40 + v39;
        v43 = -1;
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      v23 += v40 * v41 + v39;
      if (v41 == v26)
      {
        v56 = (v679 - v23) >> 2;
        if (v56 >= 1)
        {
          if (v56 <= v15)
          {
            v679 += 4 * v16;
            v681 += v746 & v16;
            v11 += v43 & v16;
            v58 = -1;
            v41 = *(v2 + 28) >> 2;
            v23 += v16;
            goto LABEL_52;
          }

          v57 = v26 * v18;
          if (v679 <= &v23[v26 * v18 - 1 + v15])
          {
            v41 = -v26;
            v71 = &v681[v680 * v18];
            v680 = -v680;
            v681 = v71;
            v746 &= 1u;
            v11 += v42 * v18;
            v42 = -v42;
            v43 &= 1u;
            v58 = 1;
            v23 += v26 * v18;
            v26 = -v26;
            v679 += 4 * v57;
            goto LABEL_52;
          }
        }
      }

      v746 &= 1u;
      v43 &= 1u;
      v58 = 1;
LABEL_52:
      v677 = *(v2 + 60);
      v678 = *(v2 + 56);
      if (v19)
      {
        v748 = v43;
        v59 = 0;
        v723 = 0;
        v60 = -1;
        v726 = v41;
        v687 = v42;
        v688 = v41;
        goto LABEL_57;
      }

      v683 = v58;
      v66 = v58 * v15;
      v61 = v746;
      v725 = v680 - v746 * v15;
      v67 = -1;
      v687 = v42;
      v688 = v41;
LABEL_65:
      v723 = 0;
      v689 = 0;
      v690 = v23;
      v59 = 0;
      v726 = v41 - v66;
      v692[0] = v15;
      v42 -= v43 * v15;
      v64 = v11;
      v65 = v11;
      __ba = v681;
      v751 = v23;
      v752 = v679;
      goto LABEL_69;
    }

    v688 = *(v2 + 64);
    v687 = *(v2 + 68);
    if (v11)
    {
      v42 = *(v2 + 80);
      v43 = 1;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v723 = &v23[v41 * v687];
    v61 = v746 & 1;
    if (v19)
    {
      v726 = *(v2 + 76) >> 2;
      v677 = *(v2 + 60);
      v678 = *(v2 + 56);
      v746 &= 1u;
      v748 = v43;
      v58 = 1;
      v59 = *(v2 + 88);
      v60 = v59;
LABEL_57:
      v683 = v58;
      v691 = v26;
      shape_enum_clip_alloc(v1, v2, v19, v58, v26, 1, *(v2 + 104), *(v2 + 108), v15, v17);
      v63 = v62;
      v64 = v11;
      v65 = v11;
      __ba = v681;
      v725 = v680;
      if (v62)
      {
        goto LABEL_765;
      }

      return 1;
    }

    v725 = v680 - (v61 * v15);
    if (!v23)
    {
      v677 = *(v2 + 60);
      v678 = *(v2 + 56);
      v67 = 0;
      v683 = 1;
      v66 = v15;
      goto LABEL_65;
    }

    *v692 = v15;
    v68 = v40 % v687;
    v677 = v40 % v687;
    v726 = *(v2 + 76) >> 2;
    v690 = *(v2 + 88);
    v69 = &v23[v41 * v68];
    v70 = v39 % v688;
    v59 = &v69[v70];
    v67 = &v69[v688];
    v678 = v70;
    v689 = 0;
    if (v11)
    {
      v64 = &v11[v42 * v68 + v70];
      v683 = 1;
      v43 = 1;
      v65 = v64;
    }

    else
    {
      v64 = 0;
      v65 = 0;
      v683 = 1;
    }

    __ba = v681;
    v751 = &v69[v70];
    v752 = v679;
    v66 = *v692;
LABEL_69:
    v746 = v61;
    v748 = v43;
    v691 = v26;
    v700 = v42;
    v701 = v26 - v66;
    switch(v13)
    {
      case 0:
        v728 = v59;
        v72 = v64;
        v73 = v67;
        v74 = v701 - v692[0];
        v75 = &v752[-v692[0] + 1];
        if (v683 >= 0)
        {
          v75 = v752;
          v74 = v701 + v692[0];
        }

        v76 = v757[0];
        v77 = v757[0] - 1;
        v78 = (v75 + 4 * ((v74 * v77) & (v74 >> 63)));
        if (v74 < 0)
        {
          v74 = -v74;
        }

        CGBlt_fillBytes(4 * v692[0], v757[0], 0, v78, 4 * v74);
        if (v746)
        {
          v79 = v725 - v692[0];
          v80 = &__ba[-v692[0] + 1];
          if (v683 >= 0)
          {
            v80 = __ba;
            v79 = v725 + v692[0];
          }

          v81 = (v79 * v77) & (v79 >> 63);
          if (v79 >= 0)
          {
            v82 = v79;
          }

          else
          {
            v82 = -v79;
          }

          __ba = &v80[v81];
          v725 = v82;
          CGBlt_fillBytes(v692[0], v76, 0, &v80[v81], v82);
        }

        v42 = v700;
        v63 = v689;
        v67 = v73;
        v64 = v72;
        v59 = v728;
        goto LABEL_217;
      case 1:
        v238 = *(v682 + 1);
        if (v238 == 2)
        {
          if (v692[0] >= 8 && (4 * v688) <= 0x40)
          {
            LODWORD(v3) = 4 * v688;
            v497 = vcnt_s8(*&v3);
            v497.i16[0] = vaddlv_u8(v497);
            if (v497.i32[0] <= 1u)
            {
              v498 = v67;
              v499 = v757[0];
              v23 = v690;
              CGSFillDRAM64(v752, 4 * (v692[0] + v701), 4 * v692[0], v757[0], v690, 4 * v726, 4 * v688, v687, 4 * v678, v677);
              if (v746)
              {
                v63 = v689;
                if (v43)
                {
                  CGSFillDRAM64(__ba, v692[0] + v725, v692[0], v499, v11, v42, v688, v687, v678, v677);
                }

                else
                {
                  CGBlt_fillBytes(v692[0], v499, -1, __ba, v692[0] + v725);
                }
              }

              else
              {
                v63 = v689;
              }

              v67 = v498;
              goto LABEL_763;
            }
          }
        }

        else if (v238 == 1)
        {
          v740 = v67;
          if (v683 < 0)
          {
            v239 = v726 - v692[0];
            v518 = 4 * v692[0] - 4;
            v751 = (v751 - v518);
            v240 = v701 - v692[0];
            v752 = (v752 - v518);
          }

          else
          {
            v239 = v726 + v692[0];
            v240 = v701 + v692[0];
          }

          v519 = v757[0];
          v520 = v757[0] - 1;
          v521 = &v751[(v239 * v520) & (v239 >> 63)];
          if (v239 >= 0)
          {
            v522 = v239;
          }

          else
          {
            v522 = -v239;
          }

          if (v240 >= 0)
          {
            LODWORD(v523) = v240;
          }

          else
          {
            v523 = -v240;
          }

          v726 = v522;
          CGBlt_copyBytes(4 * v692[0], v757[0], v521, &v752[(v240 * v520) & (v240 >> 63)], 4 * v522, 4 * v523);
          if (v746)
          {
            v63 = v689;
            v23 = v690;
            if (v43)
            {
              v524 = v700 - v692[0];
              v525 = &v65[-v692[0] + 1];
              v526 = v725 - v692[0];
              v527 = &__ba[-v692[0] + 1];
              if (v683 >= 0)
              {
                v525 = v65;
                v527 = __ba;
                v524 = v700 + v692[0];
                v526 = v725 + v692[0];
              }

              v528 = &v525[(v524 * v520) & (v524 >> 63)];
              if (v524 >= 0)
              {
                v529 = v524;
              }

              else
              {
                v529 = -v524;
              }

              v530 = v526 * v520;
              v42 = v529;
              v531 = v530 & (v526 >> 63);
              if (v526 >= 0)
              {
                v532 = v526;
              }

              else
              {
                v532 = -v526;
              }

              v65 = v528;
              __ba = &v527[v531];
              v725 = v532;
              CGBlt_copyBytes(v692[0], v519, v528, &v527[v531], v529, v532);
            }

            else
            {
              v533 = v725 - v692[0];
              v534 = &__ba[-v692[0] + 1];
              if (v683 >= 0)
              {
                v534 = __ba;
                v533 = v725 + v692[0];
              }

              v535 = (v533 * v520) & (v533 >> 63);
              if (v533 >= 0)
              {
                v536 = v533;
              }

              else
              {
                v536 = -v533;
              }

              __ba = &v534[v535];
              v725 = v536;
              CGBlt_fillBytes(v692[0], v519, -1, &v534[v535], v536);
              v42 = v700;
            }
          }

          else
          {
            v42 = v700;
            v63 = v689;
            v23 = v690;
          }

          v67 = v740;
          goto LABEL_763;
        }

        if (v61)
        {
          if (v43)
          {
            do
            {
              v500 = v767[0];
              do
              {
                *v752 = *v751;
                *__ba = *v65;
                __ba += v61;
                v501 = &v751[v683];
                if (v501 >= v67)
                {
                  v502 = -v688;
                }

                else
                {
                  v502 = 0;
                }

                v65 += v43 + v502;
                v751 = &v501[v502];
                v752 += v683;
                --v500;
              }

              while (v500);
              if (v723)
              {
                v503 = &v59[v726];
                if (v503 >= v723)
                {
                  v504 = -(v42 * v687);
                }

                else
                {
                  v504 = 0;
                }

                v64 += v42 + v504;
                if (v503 >= v723)
                {
                  v505 = -(v726 * v687);
                }

                else
                {
                  v505 = 0;
                }

                v59 = &v503[v505];
                v67 += 4 * v505 + 4 * v726;
                v65 = v64;
                v751 = v59;
              }

              else
              {
                v751 += v726;
                v65 += v42;
              }

              v752 += v701;
              __ba += v725;
              --v757[0];
            }

            while (v757[0]);
          }

          else
          {
            do
            {
              v512 = v767[0];
              do
              {
                *v752 = *v751;
                *__ba = -1;
                __ba += v61;
                v513 = &v751[v683];
                if (v513 >= v67)
                {
                  v514 = -v688;
                }

                else
                {
                  v514 = 0;
                }

                v65 += v514;
                v751 = &v513[v514];
                v752 += v683;
                --v512;
              }

              while (v512);
              if (v723)
              {
                v515 = &v59[v726];
                if (v515 >= v723)
                {
                  v516 = -(v42 * v687);
                }

                else
                {
                  v516 = 0;
                }

                v64 += v42 + v516;
                if (v515 >= v723)
                {
                  v517 = -(v726 * v687);
                }

                else
                {
                  v517 = 0;
                }

                v59 = &v515[v517];
                v67 += 4 * v517 + 4 * v726;
                v65 = v64;
                v751 = v59;
              }

              else
              {
                v751 += v726;
                v65 += v42;
              }

              v752 += v701;
              __ba += v725;
              --v757[0];
            }

            while (v757[0]);
          }
        }

        else
        {
          do
          {
            v506 = v767[0];
            do
            {
              *v752 = *v751;
              v507 = &v751[v683];
              if (v507 >= v67)
              {
                v508 = -v688;
              }

              else
              {
                v508 = 0;
              }

              v65 += v43 + v508;
              v751 = &v507[v508];
              v752 += v683;
              --v506;
            }

            while (v506);
            if (v723)
            {
              v509 = &v59[v726];
              if (v509 >= v723)
              {
                v510 = -(v42 * v687);
              }

              else
              {
                v510 = 0;
              }

              v64 += v42 + v510;
              if (v509 >= v723)
              {
                v511 = -(v726 * v687);
              }

              else
              {
                v511 = 0;
              }

              v59 = &v509[v511];
              v67 += 4 * v511 + 4 * v726;
              v65 = v64;
              v751 = v59;
            }

            else
            {
              v751 += v726;
              v65 += v42;
            }

            v752 += v701;
            __ba += v725;
            --v757[0];
          }

          while (v757[0]);
        }

        goto LABEL_940;
      case 2:
        v187 = v683;
        v188 = 4 * v683;
        if (v61)
        {
          v729 = v59;
          v732 = v64;
          v684 = v11;
          v189 = v61;
          v662 = -(v42 * v687);
          do
          {
            v190 = v767[0];
            do
            {
              v191 = *v65;
              if (*v65)
              {
                if (v191 == 255)
                {
                  *v752 = *v751;
                  *__ba = *v65;
                }

                else
                {
                  v192 = v67;
                  DAplusDAM(v752, __ba, *v751, v191, *v752, *__ba, v191 ^ 0xFF);
                  v188 = 4 * v683;
                  v187 = v683;
                  v67 = v192;
                }
              }

              __ba += v189;
              v193 = &v751[v187];
              if (v193 >= v67)
              {
                v194 = -v688;
              }

              else
              {
                v194 = 0;
              }

              v65 += v43 + v194;
              v751 = &v193[v194];
              v752 = (v752 + v188);
              --v190;
            }

            while (v190);
            if (v723)
            {
              v195 = &v729[v726];
              v196 = v662;
              if (v195 < v723)
              {
                v196 = 0;
              }

              v65 = (v732 + v700 + v196);
              v197 = -(v726 * v687);
              if (v195 < v723)
              {
                v197 = 0;
              }

              v67 += 4 * v197 + 4 * v726;
              v729 = &v195[v197];
              v732 += v700 + v196;
              v751 = v729;
            }

            else
            {
              v751 += v726;
              v65 += v700;
            }

            v752 += v701;
            __ba += v725;
            --v757[0];
          }

          while (v757[0]);
          goto LABEL_761;
        }

        do
        {
          v468 = v767[0];
          do
          {
            v469 = *v65;
            if (*v65)
            {
              if (v469 == 255)
              {
                v470 = *v751;
              }

              else
              {
                v470 = ((((*v752 >> 8) & 0xFF00FF) * (v469 ^ 0xFF) + 65537 + (((((*v752 >> 8) & 0xFF00FF) * (v469 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + *v751 + ((((*v752 & 0xFF00FF) * (v469 ^ 0xFF) + 65537 + ((((*v752 & 0xFF00FF) * (v469 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
              }

              *v752 = v470;
            }

            v471 = &v751[v683];
            if (v471 >= v67)
            {
              v472 = -v688;
            }

            else
            {
              v472 = 0;
            }

            v65 += v43 + v472;
            v751 = &v471[v472];
            v752 = (v752 + v188);
            --v468;
          }

          while (v468);
          if (v723)
          {
            v473 = &v59[v726];
            if (v473 >= v723)
            {
              v474 = -(v42 * v687);
            }

            else
            {
              v474 = 0;
            }

            v64 += v42 + v474;
            if (v473 >= v723)
            {
              v475 = -(v726 * v687);
            }

            else
            {
              v475 = 0;
            }

            v59 = &v473[v475];
            v67 += 4 * v475 + 4 * v726;
            v65 = v64;
            v751 = v59;
          }

          else
          {
            v751 += v726;
            v65 += v42;
          }

          v752 += v701;
          __ba += v725;
          --v757[0];
        }

        while (v757[0]);
        goto LABEL_940;
      case 3:
        v209 = v683;
        v210 = v61;
        v211 = 4 * v683;
        if (v43)
        {
          v729 = v59;
          v732 = v64;
          v684 = v11;
          v212 = v43;
          do
          {
            v213 = v767[0];
            do
            {
              v214 = *__ba;
              if (v214 == 255)
              {
                *v752 = *v751;
                LOBYTE(v215) = *v65;
              }

              else if (*__ba)
              {
                v216 = v67;
                v217 = v210;
                v218 = v211;
                v219 = PDAM_5790(*v751, *v65, v214);
                v212 = v43;
                v211 = v218;
                v210 = v217;
                v209 = v683;
                v67 = v216;
                *v752 = v219;
                v215 = HIDWORD(v219);
              }

              else
              {
                LOBYTE(v215) = 0;
                *v752 = 0;
              }

              *__ba = v215;
              __ba += v210;
              v220 = &v751[v209];
              if (v220 >= v67)
              {
                v221 = -v688;
              }

              else
              {
                v221 = 0;
              }

              v65 += v212 + v221;
              v751 = &v220[v221];
              v752 = (v752 + v211);
              --v213;
            }

            while (v213);
            if (v723)
            {
              v222 = &v729[v726];
              v223 = -(v42 * v687);
              if (v222 < v723)
              {
                v223 = 0;
              }

              v65 = (v732 + v42 + v223);
              v224 = -(v726 * v687);
              if (v222 < v723)
              {
                v224 = 0;
              }

              v67 += 4 * v224 + 4 * v726;
              v729 = &v222[v224];
              v732 += v42 + v223;
              v751 = v729;
            }

            else
            {
              v751 += v726;
              v65 += v42;
            }

            v752 += v701;
            __ba += v725;
            --v757[0];
          }

          while (v757[0]);
          goto LABEL_761;
        }

        do
        {
          v476 = v767[0];
          do
          {
            v477 = *__ba;
            if (*__ba)
            {
              if (v477 == 255)
              {
                v477 = *v751;
              }

              else
              {
                v477 = (((*v751 & 0xFF00FF) * v477 + 65537 + ((((*v751 & 0xFF00FF) * v477) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v751 >> 8) & 0xFF00FF) * v477 + 65537 + (((((*v751 >> 8) & 0xFF00FF) * v477) >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }
            }

            *v752 = v477;
            __ba += v210;
            v478 = &v751[v683];
            if (v478 >= v67)
            {
              v479 = -v688;
            }

            else
            {
              v479 = 0;
            }

            v65 += v479;
            v751 = &v478[v479];
            v752 = (v752 + v211);
            --v476;
          }

          while (v476);
          if (v723)
          {
            v480 = &v59[v726];
            if (v480 >= v723)
            {
              v481 = -(v42 * v687);
            }

            else
            {
              v481 = 0;
            }

            v64 += v42 + v481;
            if (v480 >= v723)
            {
              v482 = -(v726 * v687);
            }

            else
            {
              v482 = 0;
            }

            v59 = &v480[v482];
            v67 += 4 * v482 + 4 * v726;
            v65 = v64;
            v751 = v59;
          }

          else
          {
            v751 += v726;
            v65 += v42;
          }

          v752 += v701;
          __ba += v725;
          --v757[0];
        }

        while (v757[0]);
        v13 = v686;
        goto LABEL_940;
      case 4:
        v729 = v59;
        v685 = v11;
        v128 = v42;
        v129 = v61;
        v130 = v43;
        v706 = -(v128 * v687);
        do
        {
          v733 = v64;
          v738 = v67;
          v131 = v767[0];
          do
          {
            if (~*__ba == 255)
            {
              if (v43)
              {
                LOBYTE(v132) = *v65;
              }

              else
              {
                LOBYTE(v132) = -1;
              }
            }

            else if (*__ba == -1)
            {
              LOBYTE(v132) = 0;
              *v752 = 0;
            }

            else
            {
              if (v43)
              {
                v133 = *v65;
              }

              else
              {
                v133 = 255;
              }

              v134 = PDAM_5790(*v751, v133, ~*__ba);
              *v752 = v134;
              v132 = HIDWORD(v134);
              v43 = v748;
              v67 = v738;
            }

            *__ba = v132;
            __ba += v129;
            v135 = &v751[v683];
            if (v135 >= v67)
            {
              v136 = -v688;
            }

            else
            {
              v136 = 0;
            }

            v65 += v130 + v136;
            v751 = &v135[v136];
            v752 += v683;
            --v131;
          }

          while (v131);
          if (v723)
          {
            v137 = &v729[v726];
            v138 = v706;
            if (v137 < v723)
            {
              v138 = 0;
            }

            v64 = v733 + v700 + v138;
            v139 = -(v726 * v687);
            if (v137 < v723)
            {
              v139 = 0;
            }

            v67 += 4 * v139 + 4 * v726;
            v65 = (v733 + v700 + v138);
            v729 = &v137[v139];
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
            v64 = v733;
          }

          v752 += v701;
          __ba += v725;
          --v757[0];
        }

        while (v757[0]);
        goto LABEL_742;
      case 5:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v274 = v61;
        v275 = v757[0];
        v276 = 4 * v683;
        do
        {
          v713 = v275;
          v277 = v692[0];
          v741 = v67;
          do
          {
            v278 = v65;
            v279 = *v65;
            v280 = v276;
            DAMplusDAM(v752, __ba, *v751, v279, *__ba, *v752, *__ba, v279 ^ 0xFF);
            v67 = v741;
            v276 = v280;
            v281 = &__ba[v274];
            v282 = &v751[v683];
            if (v282 >= v741)
            {
              v283 = -v688;
            }

            else
            {
              v283 = 0;
            }

            v65 = &v278[v43 + v283];
            v751 = &v282[v283];
            v752 = (v752 + v276);
            __ba += v274;
            --v277;
          }

          while (v277);
          if (v723)
          {
            v284 = &v729[v726];
            v285 = -(v42 * v687);
            if (v284 < v723)
            {
              v285 = 0;
            }

            v65 = (v732 + v42 + v285);
            v286 = -(v726 * v687);
            if (v284 < v723)
            {
              v286 = 0;
            }

            v67 = v741 + 4 * v286 + 4 * v726;
            v729 = &v284[v286];
            v732 += v42 + v285;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v42;
          }

          v752 += v701;
          __ba = &v281[v725];
          v275 = v713 - 1;
          v757[0] = v713 - 1;
        }

        while (v713 != 1);
        goto LABEL_761;
      case 6:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v309 = v61;
        v310 = v43;
        do
        {
          v311 = v767[0];
          v742 = v67;
          do
          {
            if (*__ba != -1)
            {
              if (~*__ba == 255)
              {
                if (v43)
                {
                  v312 = *v65;
                }

                else
                {
                  v312 = -1;
                }

                *v752 = *v751;
                *__ba = v312;
              }

              else
              {
                if (v43)
                {
                  v313 = *v65;
                }

                else
                {
                  v313 = 255;
                }

                DAplusDAM(v752, __ba, *v752, *__ba, *v751, v313, ~*__ba);
                v43 = v748;
                v67 = v742;
              }
            }

            __ba += v309;
            v314 = &v751[v683];
            if (v314 >= v67)
            {
              v315 = -v688;
            }

            else
            {
              v315 = 0;
            }

            v65 += v310 + v315;
            v751 = &v314[v315];
            v752 += v683;
            --v311;
          }

          while (v311);
          if (v723)
          {
            v316 = &v729[v726];
            v317 = -(v42 * v687);
            if (v316 < v723)
            {
              v317 = 0;
            }

            v65 = (v732 + v42 + v317);
            v318 = -(v726 * v687);
            if (v316 < v723)
            {
              v318 = 0;
            }

            v67 += 4 * v318 + 4 * v726;
            v729 = &v316[v318];
            v732 += v42 + v317;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v42;
          }

          v752 += v701;
          __ba += v725;
          --v757[0];
        }

        while (v757[0]);
        goto LABEL_761;
      case 7:
        v225 = v683;
        if (v61)
        {
          v729 = v59;
          v732 = v64;
          v684 = v11;
          v226 = v61;
          v227 = -v688;
          v664 = -(v42 * v687);
          do
          {
            v228 = v767[0];
            do
            {
              v229 = *v65;
              if (v229 != 255)
              {
                if (*v65)
                {
                  v231 = v67;
                  v232 = PDAM_5790(*v752, *__ba, v229);
                  v227 = -v688;
                  v225 = v683;
                  v67 = v231;
                  *v752 = v232;
                  v230 = HIDWORD(v232);
                }

                else
                {
                  LOBYTE(v230) = 0;
                  *v752 = 0;
                }

                *__ba = v230;
              }

              __ba += v226;
              v233 = &v751[v225];
              if (v233 >= v67)
              {
                v234 = v227;
              }

              else
              {
                v234 = 0;
              }

              v65 += v43 + v234;
              v751 = &v233[v234];
              v752 += v683;
              --v228;
            }

            while (v228);
            if (v723)
            {
              v235 = &v729[v726];
              v236 = v664;
              if (v235 < v723)
              {
                v236 = 0;
              }

              v65 = (v732 + v700 + v236);
              v237 = -(v726 * v687);
              if (v235 < v723)
              {
                v237 = 0;
              }

              v67 += 4 * v237 + 4 * v726;
              v729 = &v235[v237];
              v732 += v700 + v236;
              v751 = v729;
            }

            else
            {
              v751 += v726;
              v65 += v700;
            }

            v752 += v701;
            __ba += v725;
            --v757[0];
          }

          while (v757[0]);
          goto LABEL_761;
        }

LABEL_845:
        v483 = v767[0];
        while (1)
        {
          v484 = *v65;
          if (!*v65)
          {
            goto LABEL_849;
          }

          if (v484 != 255)
          {
            break;
          }

LABEL_850:
          v485 = &v751[v683];
          if (v485 >= v67)
          {
            v486 = -v688;
          }

          else
          {
            v486 = 0;
          }

          v65 += v43 + v486;
          v751 = &v485[v486];
          v752 += v683;
          if (!--v483)
          {
            if (v723)
            {
              v487 = &v59[v726];
              if (v487 >= v723)
              {
                v488 = -(v42 * v687);
              }

              else
              {
                v488 = 0;
              }

              v64 += v42 + v488;
              if (v487 >= v723)
              {
                v489 = -(v726 * v687);
              }

              else
              {
                v489 = 0;
              }

              v59 = &v487[v489];
              v67 += 4 * v489 + 4 * v726;
              v65 = v64;
              v751 = v59;
            }

            else
            {
              v751 += v726;
              v65 += v42;
            }

            v752 += v701;
            __ba += v725;
            if (!--v757[0])
            {
              goto LABEL_940;
            }

            goto LABEL_845;
          }
        }

        v484 = (((*v752 & 0xFF00FF) * v484 + 65537 + ((((*v752 & 0xFF00FF) * v484) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v752 >> 8) & 0xFF00FF) * v484 + 65537 + (((((*v752 >> 8) & 0xFF00FF) * v484) >> 8) & 0xFF00FF)) & 0xFF00FF00;
LABEL_849:
        *v752 = v484;
        goto LABEL_850;
      case 8:
        v344 = v683;
        if (v61)
        {
          v729 = v59;
          v732 = v64;
          v684 = v11;
          v345 = v61;
          v671 = -(v42 * v687);
          v346 = 4 * v683;
          v347 = -v688;
          do
          {
            v348 = v767[0];
            do
            {
              if (~*v65 != 255)
              {
                if (*v65 == -1)
                {
                  LOBYTE(v349) = 0;
                  *v752 = 0;
                }

                else
                {
                  v350 = v67;
                  v351 = v344;
                  v352 = PDAM_5790(*v752, *__ba, ~*v65);
                  v346 = 4 * v683;
                  v344 = v351;
                  v67 = v350;
                  *v752 = v352;
                  v349 = HIDWORD(v352);
                  v347 = -v688;
                }

                *__ba = v349;
              }

              __ba += v345;
              v353 = &v751[v344];
              if (v353 >= v67)
              {
                v354 = v347;
              }

              else
              {
                v354 = 0;
              }

              v65 += v43 + v354;
              v751 = &v353[v354];
              v752 = (v752 + v346);
              --v348;
            }

            while (v348);
            if (v723)
            {
              v355 = &v729[v726];
              v356 = v671;
              if (v355 < v723)
              {
                v356 = 0;
              }

              v65 = (v732 + v700 + v356);
              v357 = -(v726 * v687);
              if (v355 < v723)
              {
                v357 = 0;
              }

              v67 += 4 * v357 + 4 * v726;
              v729 = &v355[v357];
              v732 += v700 + v356;
              v751 = v729;
            }

            else
            {
              v751 += v726;
              v65 += v700;
            }

            v752 += v701;
            __ba += v725;
            --v757[0];
          }

          while (v757[0]);
          goto LABEL_761;
        }

LABEL_865:
        v490 = v767[0];
        while (1)
        {
          v491 = *v65 ^ 0xFF;
          if (!v491)
          {
            goto LABEL_869;
          }

          if (v491 != 255)
          {
            break;
          }

LABEL_870:
          v492 = &v751[v683];
          if (v492 >= v67)
          {
            v493 = -v688;
          }

          else
          {
            v493 = 0;
          }

          v65 += v43 + v493;
          v751 = &v492[v493];
          v752 += v683;
          if (!--v490)
          {
            if (v723)
            {
              v494 = &v59[v726];
              if (v494 >= v723)
              {
                v495 = -(v42 * v687);
              }

              else
              {
                v495 = 0;
              }

              v64 += v42 + v495;
              if (v494 >= v723)
              {
                v496 = -(v726 * v687);
              }

              else
              {
                v496 = 0;
              }

              v59 = &v494[v496];
              v67 += 4 * v496 + 4 * v726;
              v65 = v64;
              v751 = v59;
            }

            else
            {
              v751 += v726;
              v65 += v42;
            }

            v752 += v701;
            __ba += v725;
            if (!--v757[0])
            {
              goto LABEL_940;
            }

            goto LABEL_865;
          }
        }

        v491 = (((*v752 & 0xFF00FF) * v491 + 65537 + ((((*v752 & 0xFF00FF) * v491) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v752 >> 8) & 0xFF00FF) * v491 + 65537 + (((((*v752 >> 8) & 0xFF00FF) * v491) >> 8) & 0xFF00FF)) & 0xFF00FF00;
LABEL_869:
        *v752 = v491;
        goto LABEL_870;
      case 9:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v153 = v61;
        v655 = -(v42 * v687);
        v154 = v757[0];
        v155 = 4 * v683;
        do
        {
          v739 = v154;
          v156 = v692[0];
          do
          {
            v157 = v67;
            v158 = v155;
            DAMplusDAM(v752, __ba, *v751, *v65, *__ba ^ 0xFF, *v752, *__ba, *v65);
            v155 = v158;
            v67 = v157;
            v159 = &__ba[v153];
            v160 = &v751[v683];
            if (v160 >= v157)
            {
              v161 = -v688;
            }

            else
            {
              v161 = 0;
            }

            v65 += v43 + v161;
            v751 = &v160[v161];
            v752 = (v752 + v158);
            __ba += v153;
            --v156;
          }

          while (v156);
          if (v723)
          {
            v162 = &v729[v726];
            v163 = v655;
            if (v162 < v723)
            {
              v163 = 0;
            }

            v65 = (v732 + v700 + v163);
            v164 = -(v726 * v687);
            if (v162 < v723)
            {
              v164 = 0;
            }

            v67 = v157 + 4 * v164 + 4 * v726;
            v729 = &v162[v164];
            v732 += v700 + v163;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba = &v159[v725];
          v154 = v739 - 1;
          v757[0] = v739 - 1;
        }

        while (v739 != 1);
        goto LABEL_761;
      case 10:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v330 = v61;
        v331 = v757[0];
        v332 = 4 * v683;
        v333 = -v688;
        do
        {
          v717 = v331;
          v334 = v692[0];
          v743 = v67;
          do
          {
            v745 = v65;
            v335 = *v65;
            v336 = v333;
            v337 = v332;
            DAMplusDAM(v752, __ba, *v751, v335, *__ba ^ 0xFF, *v752, *__ba, v335 ^ 0xFF);
            v333 = v336;
            v332 = v337;
            v67 = v743;
            v338 = &__ba[v330];
            v339 = &v751[v683];
            if (v339 >= v743)
            {
              v340 = v336;
            }

            else
            {
              v340 = 0;
            }

            v65 = &v745[v43 + v340];
            v751 = &v339[v340];
            v752 = (v752 + v332);
            __ba += v330;
            --v334;
          }

          while (v334);
          if (v723)
          {
            v341 = &v729[v726];
            v342 = -(v42 * v687);
            if (v341 < v723)
            {
              v342 = 0;
            }

            v65 = (v732 + v42 + v342);
            v343 = -(v726 * v687);
            if (v341 < v723)
            {
              v343 = 0;
            }

            v67 = v743 + 4 * v343 + 4 * v726;
            v729 = &v341[v343];
            v732 += v42 + v342;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v42;
          }

          v752 += v701;
          __ba = &v338[v725];
          v331 = v717 - 1;
          v757[0] = v717 - 1;
        }

        while (v717 != 1);
        goto LABEL_761;
      case 11:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v705 = 4 * v683;
        if (v61)
        {
          v116 = v61;
          v117 = v43;
          v654 = -(v42 * v687);
          v118 = v757[0];
          do
          {
            v737 = v118;
            v119 = v692[0];
            v120 = v67;
            do
            {
              if (v43)
              {
                v121 = *v65;
              }

              else
              {
                v121 = 255;
              }

              DAplusdDA(v752, __ba, *v752, *__ba, *v751, v121);
              v122 = &__ba[v116];
              v123 = &v751[v683];
              if (v123 >= v120)
              {
                v124 = -v688;
              }

              else
              {
                v124 = 0;
              }

              v65 += v117 + v124;
              v751 = &v123[v124];
              v752 = (v752 + v705);
              __ba += v116;
              --v119;
              v43 = v748;
            }

            while (v119);
            v67 = v120;
            if (v723)
            {
              v125 = &v729[v726];
              v126 = v654;
              if (v125 < v723)
              {
                v126 = 0;
              }

              v65 = (v732 + v700 + v126);
              v127 = -(v726 * v687);
              if (v125 < v723)
              {
                v127 = 0;
              }

              v67 = v120 + 4 * v127 + 4 * v726;
              v729 = &v125[v127];
              v732 += v700 + v126;
              v751 = v729;
            }

            else
            {
              v751 += v726;
              v65 += v700;
            }

            v752 += v701;
            __ba = &v122[v725];
            v118 = v737 - 1;
            v757[0] = v737 - 1;
          }

          while (v737 != 1);
        }

        else
        {
          v441 = v43;
          v656 = -(v42 * v687);
          v442 = v757[0];
          v653 = v725 + v725 * (v757[0] - 1);
          do
          {
            v443 = v692[0];
            v444 = v67;
            do
            {
              if (v43)
              {
                v445 = *v65;
              }

              else
              {
                v445 = 255;
              }

              DplusdDA(v752, *v752, *v751, v445);
              v446 = &v751[v683];
              if (v446 >= v444)
              {
                v447 = -v688;
              }

              else
              {
                v447 = 0;
              }

              v65 += v441 + v447;
              v448 = &v446[v447];
              v751 = v448;
              v752 = (v752 + v705);
              --v443;
              v43 = v748;
            }

            while (v443);
            v67 = v444;
            if (v723)
            {
              v449 = &v729[v726];
              v450 = v656;
              if (v449 < v723)
              {
                v450 = 0;
              }

              v65 = (v732 + v700 + v450);
              v451 = -(v726 * v687);
              if (v449 < v723)
              {
                v451 = 0;
              }

              v67 = v444 + 4 * v451 + 4 * v726;
              v729 = &v449[v451];
              v732 += v700 + v450;
              v751 = v729;
            }

            else
            {
              v751 = &v448[v726];
              v65 += v700;
            }

            v752 += v701;
            v757[0] = --v442;
          }

          while (v442);
          __ba += v653;
        }

        goto LABEL_761;
      case 12:
        if (v61)
        {
          do
          {
            v140 = v64;
            v141 = v767[0];
            do
            {
              if (v43)
              {
                v142 = *v65;
              }

              else
              {
                v142 = 255;
              }

              v143 = ((*v751 >> 8) & 0xFF00FF) + ((*v752 >> 8) & 0xFF00FF);
              v144 = (*v751 & 0xFF00FF) + (*v752 & 0xFF00FF);
              v145 = v142 + *__ba;
              v146 = (v143 << 8) & 0xFF00FF00 | v144 & 0xFF00FF | (15 * (v143 & 0x1000100 | (v144 >> 8) & 0x10001)) | (240 * (v143 & 0x1000100 | (v144 >> 8) & 0x10001));
              if (v145 >= 0xFF)
              {
                LOBYTE(v145) = -1;
              }

              *__ba = v145;
              *v752 = v146;
              v147 = &__ba[v61];
              v148 = &v751[v683];
              if (v148 >= v67)
              {
                v149 = -v688;
              }

              else
              {
                v149 = 0;
              }

              v65 += v43 + v149;
              v751 = &v148[v149];
              v752 += v683;
              __ba += v61;
              --v141;
            }

            while (v141);
            if (v723)
            {
              v150 = &v59[v726];
              if (v150 >= v723)
              {
                v151 = -(v42 * v687);
              }

              else
              {
                v151 = 0;
              }

              v64 += v42 + v151;
              if (v150 >= v723)
              {
                v152 = -(v726 * v687);
              }

              else
              {
                v152 = 0;
              }

              v59 = &v150[v152];
              v67 += 4 * v152 + 4 * v726;
              v65 = (v140 + v42 + v151);
              v751 = v59;
            }

            else
            {
              v751 += v726;
              v65 += v42;
            }

            v752 += v701;
            __ba = &v147[v725];
            --v757[0];
          }

          while (v757[0]);
          v63 = v689;
LABEL_217:
          v13 = v686;
          v23 = v690;
        }

        else
        {
          do
          {
            v460 = v767[0];
            do
            {
              v461 = ((*v751 >> 8) & 0xFF00FF) + ((*v752 >> 8) & 0xFF00FF);
              v462 = (*v751 & 0xFF00FF) + (*v752 & 0xFF00FF);
              *v752 = (v461 << 8) & 0xFF00FF00 | v462 & 0xFF00FF | (15 * (v461 & 0x1000100 | (v462 >> 8) & 0x10001)) | (240 * (v461 & 0x1000100 | (v462 >> 8) & 0x10001));
              v463 = &v751[v683];
              if (v463 >= v67)
              {
                v464 = -v688;
              }

              else
              {
                v464 = 0;
              }

              v65 += v43 + v464;
              v751 = &v463[v464];
              v752 += v683;
              --v460;
            }

            while (v460);
            if (v723)
            {
              v465 = &v59[v726];
              if (v465 >= v723)
              {
                v466 = -(v42 * v687);
              }

              else
              {
                v466 = 0;
              }

              v64 += v42 + v466;
              if (v465 >= v723)
              {
                v467 = -(v726 * v687);
              }

              else
              {
                v467 = 0;
              }

              v59 = &v465[v467];
              v67 += 4 * v467 + 4 * v726;
              v65 = v64;
              v751 = v59;
            }

            else
            {
              v751 += v726;
              v65 += v42;
            }

            v752 += v701;
            __ba += v725;
            --v757[0];
          }

          while (v757[0]);
LABEL_940:
          v63 = v689;
          v23 = v690;
        }

        goto LABEL_763;
      case 13:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v715 = v61;
        v298 = v43;
        v669 = -(v42 * v687);
        while (1)
        {
          v299 = v767[0];
          v300 = v67;
          do
          {
            if (v43)
            {
              v301 = *v65;
              if (!*v65)
              {
                goto LABEL_485;
              }

              if (v61)
              {
                goto LABEL_480;
              }
            }

            else
            {
              v301 = 255;
              if (v61)
              {
LABEL_480:
                if (*__ba)
                {
                  v302 = PDAmultiplyPDA_5791(*v752, *__ba, *v751, v301);
                  v67 = v300;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v302;
                  *__ba = BYTE4(v302);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v301;
                }

                goto LABEL_485;
              }
            }

            v303 = PDAmultiplyPDA_5791(*v752, 255, *v751, v301);
            v67 = v300;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v303;
LABEL_485:
            __ba += v715;
            v304 = &v751[v683];
            if (v304 >= v67)
            {
              v305 = -v688;
            }

            else
            {
              v305 = 0;
            }

            v65 += v298 + v305;
            v751 = &v304[v305];
            v752 += v683;
            --v299;
          }

          while (v299);
          if (v723)
          {
            v306 = &v729[v726];
            v307 = v669;
            if (v306 < v723)
            {
              v307 = 0;
            }

            v65 = (v732 + v700 + v307);
            v308 = -(v726 * v687);
            if (v306 < v723)
            {
              v308 = 0;
            }

            v67 += 4 * v308 + 4 * v726;
            v729 = &v306[v308];
            v732 += v700 + v307;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 14:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v704 = v61;
        v105 = v43;
        v659 = -(v42 * v687);
        while (1)
        {
          v106 = v767[0];
          v107 = v67;
          do
          {
            if (v43)
            {
              v108 = *v65;
              if (!*v65)
              {
                goto LABEL_138;
              }

              if (v61)
              {
                goto LABEL_133;
              }
            }

            else
            {
              v108 = 255;
              if (v61)
              {
LABEL_133:
                if (*__ba)
                {
                  v109 = PDAscreenPDA_5792(*v752, *__ba, *v751, v108);
                  v67 = v107;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v109;
                  *__ba = BYTE4(v109);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v108;
                }

                goto LABEL_138;
              }
            }

            v110 = PDAscreenPDA_5792(*v752, 0xFFu, *v751, v108);
            v67 = v107;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v110;
LABEL_138:
            __ba += v704;
            v111 = &v751[v683];
            if (v111 >= v67)
            {
              v112 = -v688;
            }

            else
            {
              v112 = 0;
            }

            v65 += v105 + v112;
            v751 = &v111[v112];
            v752 += v683;
            --v106;
          }

          while (v106);
          if (v723)
          {
            v113 = &v729[v726];
            v114 = v659;
            if (v113 < v723)
            {
              v114 = 0;
            }

            v65 = (v732 + v700 + v114);
            v115 = -(v726 * v687);
            if (v113 < v723)
            {
              v115 = 0;
            }

            v67 += 4 * v115 + 4 * v726;
            v729 = &v113[v115];
            v732 += v700 + v114;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 15:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v709 = v61;
        v198 = v43;
        v663 = -(v42 * v687);
        while (1)
        {
          v199 = v767[0];
          v200 = v67;
          do
          {
            if (v43)
            {
              v201 = *v65;
              if (!*v65)
              {
                goto LABEL_309;
              }

              if (v61)
              {
                goto LABEL_304;
              }
            }

            else
            {
              v201 = 255;
              if (v61)
              {
LABEL_304:
                if (*__ba)
                {
                  v202 = PDAoverlayPDA_5793(*v752, *__ba, *v751, v201);
                  v67 = v200;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v202;
                  *__ba = BYTE4(v202);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v201;
                }

                goto LABEL_309;
              }
            }

            v203 = PDAoverlayPDA_5793(*v752, 255, *v751, v201);
            v67 = v200;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v203;
LABEL_309:
            __ba += v709;
            v204 = &v751[v683];
            if (v204 >= v67)
            {
              v205 = -v688;
            }

            else
            {
              v205 = 0;
            }

            v65 += v198 + v205;
            v751 = &v204[v205];
            v752 += v683;
            --v199;
          }

          while (v199);
          if (v723)
          {
            v206 = &v729[v726];
            v207 = v663;
            if (v206 < v723)
            {
              v207 = 0;
            }

            v65 = (v732 + v700 + v207);
            v208 = -(v726 * v687);
            if (v206 < v723)
            {
              v208 = 0;
            }

            v67 += 4 * v208 + 4 * v726;
            v729 = &v206[v208];
            v732 += v700 + v207;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 16:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v703 = v61;
        v94 = v43;
        v658 = -(v42 * v687);
        while (1)
        {
          v95 = v767[0];
          v96 = v67;
          do
          {
            if (v43)
            {
              v97 = *v65;
              if (!*v65)
              {
                goto LABEL_115;
              }

              if (v61)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v97 = 255;
              if (v61)
              {
LABEL_110:
                if (*__ba)
                {
                  v98 = PDAdarkenPDA_5795(*v752, *__ba, *v751, v97);
                  v67 = v96;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v98;
                  *__ba = BYTE4(v98);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v97;
                }

                goto LABEL_115;
              }
            }

            v99 = PDAdarkenPDA_5795(*v752, 0xFFu, *v751, v97);
            v67 = v96;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v99;
LABEL_115:
            __ba += v703;
            v100 = &v751[v683];
            if (v100 >= v67)
            {
              v101 = -v688;
            }

            else
            {
              v101 = 0;
            }

            v65 += v94 + v101;
            v751 = &v100[v101];
            v752 += v683;
            --v95;
          }

          while (v95);
          if (v723)
          {
            v102 = &v729[v726];
            v103 = v658;
            if (v102 < v723)
            {
              v103 = 0;
            }

            v65 = (v732 + v700 + v103);
            v104 = -(v726 * v687);
            if (v102 < v723)
            {
              v104 = 0;
            }

            v67 += 4 * v104 + 4 * v726;
            v729 = &v102[v104];
            v732 += v700 + v103;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 17:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v711 = v61;
        v252 = v43;
        v666 = -(v42 * v687);
        while (1)
        {
          v253 = v767[0];
          v254 = v67;
          do
          {
            if (v43)
            {
              v255 = *v65;
              if (!*v65)
              {
                goto LABEL_401;
              }

              if (v61)
              {
                goto LABEL_396;
              }
            }

            else
            {
              v255 = 255;
              if (v61)
              {
LABEL_396:
                if (*__ba)
                {
                  v256 = PDAlightenPDA_5794(*v752, *__ba, *v751, v255);
                  v67 = v254;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v256;
                  *__ba = BYTE4(v256);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v255;
                }

                goto LABEL_401;
              }
            }

            v257 = PDAlightenPDA_5794(*v752, 0xFFu, *v751, v255);
            v67 = v254;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v257;
LABEL_401:
            __ba += v711;
            v258 = &v751[v683];
            if (v258 >= v67)
            {
              v259 = -v688;
            }

            else
            {
              v259 = 0;
            }

            v65 += v252 + v259;
            v751 = &v258[v259];
            v752 += v683;
            --v253;
          }

          while (v253);
          if (v723)
          {
            v260 = &v729[v726];
            v261 = v666;
            if (v260 < v723)
            {
              v261 = 0;
            }

            v65 = (v732 + v700 + v261);
            v262 = -(v726 * v687);
            if (v260 < v723)
            {
              v262 = 0;
            }

            v67 += 4 * v262 + 4 * v726;
            v729 = &v260[v262];
            v732 += v700 + v261;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 18:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v716 = v61;
        v319 = v43;
        v670 = -(v42 * v687);
        while (1)
        {
          v320 = v767[0];
          v321 = v67;
          do
          {
            if (v43)
            {
              v322 = *v65;
              if (!*v65)
              {
                goto LABEL_533;
              }

              if (v61)
              {
                goto LABEL_528;
              }
            }

            else
            {
              v322 = 255;
              if (v61)
              {
LABEL_528:
                if (*__ba)
                {
                  v323 = PDAcolordodgePDA_5796(*v752, *__ba, *v751, v322);
                  v67 = v321;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v323;
                  *__ba = BYTE4(v323);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v322;
                }

                goto LABEL_533;
              }
            }

            v324 = PDAcolordodgePDA_5796(*v752, 255, *v751, v322);
            v67 = v321;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v324;
LABEL_533:
            __ba += v716;
            v325 = &v751[v683];
            if (v325 >= v67)
            {
              v326 = -v688;
            }

            else
            {
              v326 = 0;
            }

            v65 += v319 + v326;
            v751 = &v325[v326];
            v752 += v683;
            --v320;
          }

          while (v320);
          if (v723)
          {
            v327 = &v729[v726];
            v328 = v670;
            if (v327 < v723)
            {
              v328 = 0;
            }

            v65 = (v732 + v700 + v328);
            v329 = -(v726 * v687);
            if (v327 < v723)
            {
              v329 = 0;
            }

            v67 += 4 * v329 + 4 * v726;
            v729 = &v327[v329];
            v732 += v700 + v328;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 19:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v719 = v61;
        v383 = v43;
        v673 = -(v42 * v687);
        while (1)
        {
          v384 = v767[0];
          v385 = v67;
          do
          {
            if (v43)
            {
              v386 = *v65;
              if (!*v65)
              {
                goto LABEL_638;
              }

              if (v61)
              {
                goto LABEL_633;
              }
            }

            else
            {
              v386 = 255;
              if (v61)
              {
LABEL_633:
                if (*__ba)
                {
                  v387 = PDAcolorburnPDA_5797(*v752, *__ba, *v751, v386);
                  v67 = v385;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v387;
                  *__ba = BYTE4(v387);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v386;
                }

                goto LABEL_638;
              }
            }

            v388 = PDAcolorburnPDA_5797(*v752, 255, *v751, v386);
            v67 = v385;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v388;
LABEL_638:
            __ba += v719;
            v389 = &v751[v683];
            if (v389 >= v67)
            {
              v390 = -v688;
            }

            else
            {
              v390 = 0;
            }

            v65 += v383 + v390;
            v751 = &v389[v390];
            v752 += v683;
            --v384;
          }

          while (v384);
          if (v723)
          {
            v391 = &v729[v726];
            v392 = v673;
            if (v391 < v723)
            {
              v392 = 0;
            }

            v65 = (v732 + v700 + v392);
            v393 = -(v726 * v687);
            if (v391 < v723)
            {
              v393 = 0;
            }

            v67 += 4 * v393 + 4 * v726;
            v729 = &v391[v393];
            v732 += v700 + v392;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 20:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v712 = v61;
        v263 = v43;
        v667 = -(v42 * v687);
        while (1)
        {
          v264 = v767[0];
          v265 = v67;
          do
          {
            if (v43)
            {
              v266 = *v65;
              if (!*v65)
              {
                goto LABEL_424;
              }

              if (v61)
              {
                goto LABEL_419;
              }
            }

            else
            {
              v266 = 255;
              if (v61)
              {
LABEL_419:
                if (*__ba)
                {
                  v267 = PDAsoftlightPDA_5799(*v752, *__ba, *v751, v266);
                  v67 = v265;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v267;
                  *__ba = BYTE4(v267);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v266;
                }

                goto LABEL_424;
              }
            }

            v268 = PDAsoftlightPDA_5799(*v752, 255, *v751, v266);
            v67 = v265;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v268;
LABEL_424:
            __ba += v712;
            v269 = &v751[v683];
            if (v269 >= v67)
            {
              v270 = -v688;
            }

            else
            {
              v270 = 0;
            }

            v65 += v263 + v270;
            v751 = &v269[v270];
            v752 += v683;
            --v264;
          }

          while (v264);
          if (v723)
          {
            v271 = &v729[v726];
            v272 = v667;
            if (v271 < v723)
            {
              v272 = 0;
            }

            v65 = (v732 + v700 + v272);
            v273 = -(v726 * v687);
            if (v271 < v723)
            {
              v273 = 0;
            }

            v67 += 4 * v273 + 4 * v726;
            v729 = &v271[v273];
            v732 += v700 + v272;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 21:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v714 = v61;
        v287 = v43;
        v668 = -(v42 * v687);
        while (1)
        {
          v288 = v767[0];
          v289 = v67;
          do
          {
            if (v43)
            {
              v290 = *v65;
              if (!*v65)
              {
                goto LABEL_462;
              }

              if (v61)
              {
                goto LABEL_457;
              }
            }

            else
            {
              v290 = 255;
              if (v61)
              {
LABEL_457:
                if (*__ba)
                {
                  v291 = PDAhardlightPDA_5798(*v752, *__ba, *v751, v290);
                  v67 = v289;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v291;
                  *__ba = BYTE4(v291);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v290;
                }

                goto LABEL_462;
              }
            }

            v292 = PDAhardlightPDA_5798(*v752, 255, *v751, v290);
            v67 = v289;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v292;
LABEL_462:
            __ba += v714;
            v293 = &v751[v683];
            if (v293 >= v67)
            {
              v294 = -v688;
            }

            else
            {
              v294 = 0;
            }

            v65 += v287 + v294;
            v751 = &v293[v294];
            v752 += v683;
            --v288;
          }

          while (v288);
          if (v723)
          {
            v295 = &v729[v726];
            v296 = v668;
            if (v295 < v723)
            {
              v296 = 0;
            }

            v65 = (v732 + v700 + v296);
            v297 = -(v726 * v687);
            if (v295 < v723)
            {
              v297 = 0;
            }

            v67 += 4 * v297 + 4 * v726;
            v729 = &v295[v297];
            v732 += v700 + v296;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 22:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v718 = v61;
        v372 = v43;
        v672 = -(v42 * v687);
        while (1)
        {
          v373 = v767[0];
          v374 = v67;
          do
          {
            if (v43)
            {
              v375 = *v65;
              if (!*v65)
              {
                goto LABEL_615;
              }

              if (v61)
              {
                goto LABEL_610;
              }
            }

            else
            {
              v375 = 255;
              if (v61)
              {
LABEL_610:
                if (*__ba)
                {
                  v376 = PDAdifferencePDA_5800(*v752, *__ba, *v751, v375, v3, v4, v5, v6, v7, v8, v9, v10);
                  v67 = v374;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v376;
                  *__ba = BYTE4(v376);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v375;
                }

                goto LABEL_615;
              }
            }

            v377 = PDAdifferencePDA_5800(*v752, 0xFFu, *v751, v375, v3, v4, v5, v6, v7, v8, v9, v10);
            v67 = v374;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v377;
LABEL_615:
            __ba += v718;
            v378 = &v751[v683];
            if (v378 >= v67)
            {
              v379 = -v688;
            }

            else
            {
              v379 = 0;
            }

            v65 += v372 + v379;
            v751 = &v378[v379];
            v752 += v683;
            --v373;
          }

          while (v373);
          if (v723)
          {
            v380 = &v729[v726];
            v381 = v672;
            if (v380 < v723)
            {
              v381 = 0;
            }

            v65 = (v732 + v700 + v381);
            v382 = -(v726 * v687);
            if (v380 < v723)
            {
              v382 = 0;
            }

            v67 += 4 * v382 + 4 * v726;
            v729 = &v380[v382];
            v732 += v700 + v381;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 23:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v720 = v61;
        v394 = v43;
        v674 = -(v42 * v687);
        while (1)
        {
          v395 = v767[0];
          v396 = v67;
          do
          {
            if (v43)
            {
              v397 = *v65;
              if (!*v65)
              {
                goto LABEL_661;
              }

              if (v61)
              {
                goto LABEL_656;
              }
            }

            else
            {
              v397 = 255;
              if (v61)
              {
LABEL_656:
                if (*__ba)
                {
                  v398 = PDAexclusionPDA_5801(*v752, *__ba, *v751, v397);
                  v67 = v396;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v398;
                  *__ba = BYTE4(v398);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v397;
                }

                goto LABEL_661;
              }
            }

            v399 = PDAexclusionPDA_5801(*v752, 255, *v751, v397);
            v67 = v396;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v399;
LABEL_661:
            __ba += v720;
            v400 = &v751[v683];
            if (v400 >= v67)
            {
              v401 = -v688;
            }

            else
            {
              v401 = 0;
            }

            v65 += v394 + v401;
            v751 = &v400[v401];
            v752 += v683;
            --v395;
          }

          while (v395);
          if (v723)
          {
            v402 = &v729[v726];
            v403 = v674;
            if (v402 < v723)
            {
              v403 = 0;
            }

            v65 = (v732 + v700 + v403);
            v404 = -(v726 * v687);
            if (v402 < v723)
            {
              v404 = 0;
            }

            v67 += 4 * v404 + 4 * v726;
            v729 = &v402[v404];
            v732 += v700 + v403;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 24:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v708 = v61;
        v176 = v43;
        v661 = -(v42 * v687);
        while (1)
        {
          v177 = v767[0];
          v178 = v67;
          do
          {
            if (v43)
            {
              v179 = *v65;
              if (!*v65)
              {
                goto LABEL_266;
              }

              if (v61)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v179 = 255;
              if (v61)
              {
LABEL_261:
                if (*__ba)
                {
                  v180 = PDAhuePDA_5802(*v752, *__ba, *v751, v179);
                  v67 = v178;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v180;
                  *__ba = BYTE4(v180);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v179;
                }

                goto LABEL_266;
              }
            }

            v181 = PDAhuePDA_5802(*v752, 255, *v751, v179);
            v67 = v178;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v181;
LABEL_266:
            __ba += v708;
            v182 = &v751[v683];
            if (v182 >= v67)
            {
              v183 = -v688;
            }

            else
            {
              v183 = 0;
            }

            v65 += v176 + v183;
            v751 = &v182[v183];
            v752 += v683;
            --v177;
          }

          while (v177);
          if (v723)
          {
            v184 = &v729[v726];
            v185 = v661;
            if (v184 < v723)
            {
              v185 = 0;
            }

            v65 = (v732 + v700 + v185);
            v186 = -(v726 * v687);
            if (v184 < v723)
            {
              v186 = 0;
            }

            v67 += 4 * v186 + 4 * v726;
            v729 = &v184[v186];
            v732 += v700 + v185;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 25:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v707 = v61;
        v165 = v43;
        v660 = -(v42 * v687);
        while (1)
        {
          v166 = v767[0];
          v167 = v67;
          do
          {
            if (v43)
            {
              v168 = *v65;
              if (!*v65)
              {
                goto LABEL_243;
              }

              if (v61)
              {
                goto LABEL_238;
              }
            }

            else
            {
              v168 = 255;
              if (v61)
              {
LABEL_238:
                if (*__ba)
                {
                  v169 = PDAsaturationPDA_5803(*v752, *__ba, *v751, v168);
                  v67 = v167;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v169;
                  *__ba = BYTE4(v169);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v168;
                }

                goto LABEL_243;
              }
            }

            v170 = PDAsaturationPDA_5803(*v752, 255, *v751, v168);
            v67 = v167;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v170;
LABEL_243:
            __ba += v707;
            v171 = &v751[v683];
            if (v171 >= v67)
            {
              v172 = -v688;
            }

            else
            {
              v172 = 0;
            }

            v65 += v165 + v172;
            v751 = &v171[v172];
            v752 += v683;
            --v166;
          }

          while (v166);
          if (v723)
          {
            v173 = &v729[v726];
            v174 = v660;
            if (v173 < v723)
            {
              v174 = 0;
            }

            v65 = (v732 + v700 + v174);
            v175 = -(v726 * v687);
            if (v173 < v723)
            {
              v175 = 0;
            }

            v67 += 4 * v175 + 4 * v726;
            v729 = &v173[v175];
            v732 += v700 + v174;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 26:
        v729 = v59;
        v685 = v11;
        v427 = v42;
        v428 = v61;
        v429 = v43;
        *v694 = -(v427 * v687);
        while (1)
        {
          v735 = v64;
          v430 = v767[0];
          v431 = v67;
          do
          {
            if (v43)
            {
              v432 = *v65;
              if (!*v65)
              {
                goto LABEL_730;
              }

              if (v61)
              {
                goto LABEL_725;
              }
            }

            else
            {
              v432 = 255;
              if (v61)
              {
LABEL_725:
                v433 = *v751;
                if (*__ba)
                {
                  v434 = PDAluminosityPDA_5804(v433, v432, *v752, *__ba);
                  v67 = v431;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v434;
                  *__ba = BYTE4(v434);
                }

                else
                {
                  *v752 = v433;
                  *__ba = v432;
                }

                goto LABEL_730;
              }
            }

            v435 = PDAluminosityPDA_5804(*v751, v432, *v752, 255);
            v67 = v431;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v435;
LABEL_730:
            __ba += v428;
            v436 = &v751[v683];
            if (v436 >= v67)
            {
              v437 = -v688;
            }

            else
            {
              v437 = 0;
            }

            v65 += v429 + v437;
            v751 = &v436[v437];
            v752 += v683;
            --v430;
          }

          while (v430);
          if (v723)
          {
            v438 = &v729[v726];
            v439 = *v694;
            if (v438 < v723)
            {
              v439 = 0;
            }

            v64 = v735 + v700 + v439;
            v440 = -(v726 * v687);
            if (v438 < v723)
            {
              v440 = 0;
            }

            v67 += 4 * v440 + 4 * v726;
            v65 = (v735 + v700 + v439);
            v729 = &v438[v440];
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
            v64 = v735;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_742;
          }
        }

      case 27:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v702 = v61;
        v83 = v43;
        v657 = -(v42 * v687);
        while (1)
        {
          v84 = v767[0];
          v85 = v67;
          do
          {
            if (v43)
            {
              v86 = *v65;
              if (!*v65)
              {
                goto LABEL_92;
              }

              if (v61)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v86 = 255;
              if (v61)
              {
LABEL_87:
                if (*__ba)
                {
                  v87 = PDAluminosityPDA_5804(*v752, *__ba, *v751, v86);
                  v67 = v85;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v87;
                  *__ba = BYTE4(v87);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v86;
                }

                goto LABEL_92;
              }
            }

            v88 = PDAluminosityPDA_5804(*v752, 255, *v751, v86);
            v67 = v85;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v88;
LABEL_92:
            __ba += v702;
            v89 = &v751[v683];
            if (v89 >= v67)
            {
              v90 = -v688;
            }

            else
            {
              v90 = 0;
            }

            v65 += v83 + v90;
            v751 = &v89[v90];
            v752 += v683;
            --v84;
          }

          while (v84);
          if (v723)
          {
            v91 = &v729[v726];
            v92 = v657;
            if (v91 < v723)
            {
              v92 = 0;
            }

            v65 = (v732 + v700 + v92);
            v93 = -(v726 * v687);
            if (v91 < v723)
            {
              v93 = 0;
            }

            v67 += 4 * v93 + 4 * v726;
            v729 = &v91[v93];
            v732 += v700 + v92;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 28:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v721 = v61;
        v405 = v43;
        v675 = -(v42 * v687);
        while (1)
        {
          v406 = v767[0];
          v407 = v67;
          do
          {
            if (v43)
            {
              v408 = *v65;
              if (!*v65)
              {
                goto LABEL_684;
              }

              if (v61)
              {
                goto LABEL_679;
              }
            }

            else
            {
              v408 = 255;
              if (v61)
              {
LABEL_679:
                if (*__ba)
                {
                  v409 = PDAtranspose_huePDA(*v752, *__ba, *v751, v408);
                  v67 = v407;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v409;
                  *__ba = BYTE4(v409);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v408;
                }

                goto LABEL_684;
              }
            }

            v410 = PDAtranspose_huePDA(*v752, 255, *v751, v408);
            v67 = v407;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v410;
LABEL_684:
            __ba += v721;
            v411 = &v751[v683];
            if (v411 >= v67)
            {
              v412 = -v688;
            }

            else
            {
              v412 = 0;
            }

            v65 += v405 + v412;
            v751 = &v411[v412];
            v752 += v683;
            --v406;
          }

          while (v406);
          if (v723)
          {
            v413 = &v729[v726];
            v414 = v675;
            if (v413 < v723)
            {
              v414 = 0;
            }

            v65 = (v732 + v700 + v414);
            v415 = -(v726 * v687);
            if (v413 < v723)
            {
              v415 = 0;
            }

            v67 += 4 * v415 + 4 * v726;
            v729 = &v413[v415];
            v732 += v700 + v414;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 29:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v722 = v61;
        v416 = v43;
        v676 = -(v42 * v687);
        while (1)
        {
          v417 = v767[0];
          v418 = v67;
          do
          {
            if (v43)
            {
              v419 = *v65;
              if (!*v65)
              {
                goto LABEL_707;
              }

              if (v61)
              {
                goto LABEL_702;
              }
            }

            else
            {
              v419 = 255;
              if (v61)
              {
LABEL_702:
                if (*__ba)
                {
                  v420 = PDAtranspose_saturationPDA(*v752, *__ba, *v751, v419);
                  v67 = v418;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v420;
                  *__ba = BYTE4(v420);
                }

                else
                {
                  *v752 = *v751;
                  *__ba = v419;
                }

                goto LABEL_707;
              }
            }

            v421 = PDAtranspose_saturationPDA(*v752, 255, *v751, v419);
            v67 = v418;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v421;
LABEL_707:
            __ba += v722;
            v422 = &v751[v683];
            if (v422 >= v67)
            {
              v423 = -v688;
            }

            else
            {
              v423 = 0;
            }

            v65 += v416 + v423;
            v751 = &v422[v423];
            v752 += v683;
            --v417;
          }

          while (v417);
          if (v723)
          {
            v424 = &v729[v726];
            v425 = v676;
            if (v424 < v723)
            {
              v425 = 0;
            }

            v65 = (v732 + v700 + v425);
            v426 = -(v726 * v687);
            if (v424 < v723)
            {
              v426 = 0;
            }

            v67 += 4 * v426 + 4 * v726;
            v729 = &v424[v426];
            v732 += v700 + v425;
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
            goto LABEL_761;
          }
        }

      case 30:
        v729 = v59;
        v685 = v11;
        v358 = v42;
        v359 = v61;
        v360 = v43;
        *v693 = -(v358 * v687);
        while (1)
        {
          v734 = v64;
          v361 = v767[0];
          v362 = v67;
          do
          {
            if (v43)
            {
              v363 = *v65;
              if (!*v65)
              {
                goto LABEL_592;
              }

              if (v61)
              {
                goto LABEL_587;
              }
            }

            else
            {
              v363 = 255;
              if (v61)
              {
LABEL_587:
                v364 = *v751;
                if (*__ba)
                {
                  v365 = PDAtranspose_luminosityPDA(v364, v363, *v752, *__ba);
                  v67 = v362;
                  LODWORD(v61) = v746;
                  v43 = v748;
                  *v752 = v365;
                  *__ba = BYTE4(v365);
                }

                else
                {
                  *v752 = v364;
                  *__ba = v363;
                }

                goto LABEL_592;
              }
            }

            v366 = PDAtranspose_luminosityPDA(*v751, v363, *v752, 255);
            v67 = v362;
            LODWORD(v61) = v746;
            v43 = v748;
            *v752 = v366;
LABEL_592:
            __ba += v359;
            v367 = &v751[v683];
            if (v367 >= v67)
            {
              v368 = -v688;
            }

            else
            {
              v368 = 0;
            }

            v65 += v360 + v368;
            v751 = &v367[v368];
            v752 += v683;
            --v361;
          }

          while (v361);
          if (v723)
          {
            v369 = &v729[v726];
            v370 = *v693;
            if (v369 < v723)
            {
              v370 = 0;
            }

            v64 = v734 + v700 + v370;
            v371 = -(v726 * v687);
            if (v369 < v723)
            {
              v371 = 0;
            }

            v67 += 4 * v371 + 4 * v726;
            v65 = (v734 + v700 + v370);
            v729 = &v369[v371];
            v751 = v729;
          }

          else
          {
            v751 += v726;
            v65 += v700;
            v64 = v734;
          }

          v752 += v701;
          __ba += v725;
          if (!--v757[0])
          {
LABEL_742:
            v13 = v686;
            v11 = v685;
            v63 = v689;
            v23 = v690;
            v42 = v700;
            goto LABEL_762;
          }
        }

      case 31:
        v729 = v59;
        v732 = v64;
        v684 = v11;
        v710 = v61;
        v241 = v43;
        v665 = -(v42 * v687);
        break;
      default:
        goto LABEL_940;
    }

LABEL_369:
    v242 = v767[0];
    v243 = v67;
    while (1)
    {
      if (v43)
      {
        v244 = *v65;
        if (!*v65)
        {
          goto LABEL_378;
        }

        if (!v61)
        {
          goto LABEL_376;
        }
      }

      else
      {
        v244 = 255;
        if (!v61)
        {
LABEL_376:
          v246 = PDAtranspose_luminosityPDA(*v752, 255, *v751, v244);
          v67 = v243;
          LODWORD(v61) = v746;
          v43 = v748;
          *v752 = v246;
          goto LABEL_378;
        }
      }

      if (*__ba)
      {
        v245 = PDAtranspose_luminosityPDA(*v752, *__ba, *v751, v244);
        v67 = v243;
        LODWORD(v61) = v746;
        v43 = v748;
        *v752 = v245;
        *__ba = BYTE4(v245);
      }

      else
      {
        *v752 = *v751;
        *__ba = v244;
      }

LABEL_378:
      __ba += v710;
      v247 = &v751[v683];
      if (v247 >= v67)
      {
        v248 = -v688;
      }

      else
      {
        v248 = 0;
      }

      v65 += v241 + v248;
      v751 = &v247[v248];
      v752 += v683;
      if (!--v242)
      {
        if (v723)
        {
          v249 = &v729[v726];
          v250 = v665;
          if (v249 < v723)
          {
            v250 = 0;
          }

          v65 = (v732 + v700 + v250);
          v251 = -(v726 * v687);
          if (v249 < v723)
          {
            v251 = 0;
          }

          v67 += 4 * v251 + 4 * v726;
          v729 = &v249[v251];
          v732 += v700 + v250;
          v751 = v729;
        }

        else
        {
          v751 += v726;
          v65 += v700;
        }

        v752 += v701;
        __ba += v725;
        if (!--v757[0])
        {
LABEL_761:
          v13 = v686;
          v11 = v684;
          v63 = v689;
          v23 = v690;
          v42 = v700;
          v64 = v732;
LABEL_762:
          v59 = v729;
LABEL_763:
          if (!v63)
          {
            return 1;
          }

          v60 = v67;
          v756 = 0;
LABEL_765:
          if (!shape_enum_clip_next(v63, &v756 + 1, &v756, v767, v757))
          {
            v55 = v63;
            goto LABEL_1275;
          }

          v689 = v63;
          v690 = v23;
          if (v723)
          {
            v26 = v691;
            v752 = (v679 + 4 * v691 * v756 + 4 * SHIDWORD(v756));
            v452 = (v756 + *(v682 + 60)) % v687;
            v66 = v767[0];
            v453 = (HIDWORD(v756) + *(v682 + 56)) % v688;
            v454 = &v23[v726 * v452];
            v59 = &v454[v453];
            v67 = &v454[v688];
            v61 = v746;
            v455 = __ba;
            if (v746)
            {
              v455 = &v681[v680 * v756 + SHIDWORD(v756)];
            }

            __ba = v455;
            v456 = v725;
            if (v746)
            {
              v456 = v680 - v767[0];
            }

            v725 = v456;
            if (v748)
            {
              v43 = v748;
            }

            else
            {
              v43 = 0;
            }

            if (v748)
            {
              v64 = &v11[v42 * v452 + v453];
              v65 = v64;
            }

            v692[0] = v767[0];
            v751 = v59;
            v677 = (v756 + *(v682 + 60)) % v687;
            v678 = (HIDWORD(v756) + *(v682 + 56)) % v688;
          }

          else
          {
            v457 = SHIDWORD(v756) * v683;
            v692[0] = v767[0];
            v26 = v691;
            v752 = (v679 + 4 * v691 * v756 + 4 * v457);
            v66 = v767[0] * v683;
            v751 = &v23[v756 * v688 + v457];
            v726 = v688 - v767[0] * v683;
            v61 = v746;
            v458 = __ba;
            if (v746)
            {
              v458 = &v681[v680 * v756 + SHIDWORD(v756) * v683];
            }

            __ba = v458;
            v459 = v725;
            if (v746)
            {
              v459 = v680 - v767[0] * v683;
            }

            v725 = v459;
            if (v748)
            {
              v43 = v748;
            }

            else
            {
              v43 = 0;
            }

            v723 = 0;
            if (v748)
            {
              v65 = &v11[v756 * v687 + v457];
              v42 = v687 - v66;
            }

            v67 = v60;
          }

          goto LABEL_69;
        }

        goto LABEL_369;
      }
    }
  }

  v20 = *(v2 + 128);
  if ((v20 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      cmyk32_mark_constmask(v2, v13);
    }

    else
    {
      cmyk32_mark_pixelmask(v2, v13);
    }

    return 1;
  }

  v27 = *(v2 + 112);
  v28 = *(v2 + 116);
  v29 = (v27 + 15) & 0xFFFFFFF0;
  v30 = v29 * v28;
  if (v30 <= 4096)
  {
    v32 = v767;
    v33 = v2;
LABEL_41:
    CGSConvertBitsToMask(v19, *(v33 + 124), v32, v29, v27, v28, v20);
    v50 = *(v33 + 112);
    v763 = *(v33 + 96);
    v764 = v50;
    v51 = *(v33 + 144);
    v765 = *(v33 + 128);
    v766 = v51;
    v52 = *(v33 + 48);
    v759 = *(v33 + 32);
    v760 = v52;
    v53 = *(v33 + 80);
    v761 = *(v33 + 64);
    v762 = v53;
    v54 = *(v33 + 16);
    *v757 = *v33;
    v758 = v54;
    HIDWORD(v764) = (v27 + 15) & 0xFFFFFFF0;
    *(&v765 + 1) = v32;
    if (BYTE1(v757[0]) << 8 == 1024)
    {
      cmyk32_mark_constmask(v757, v13);
    }

    else
    {
      cmyk32_mark_pixelmask(v757, v13);
    }

    if (v32 != v767)
    {
      v55 = v32;
      goto LABEL_1275;
    }

    return 1;
  }

  v31 = malloc_type_malloc(v30, 0x97CEE3C3uLL);
  if (v31)
  {
    v32 = v31;
    v33 = v682;
    v19 = *(v682 + 136);
    v20 = *(v682 + 128);
    goto LABEL_41;
  }

  return 1;
}