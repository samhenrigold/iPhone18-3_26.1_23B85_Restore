uint64_t cmyk64_sample_rgba64(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v77 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v76 = *(result + 188);
  v10 = *(result + 152) - 16;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  v13 = 0xFFFF000000000000;
  if (*(result + 40))
  {
    v13 = 0;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v78 = *(result + 64);
  while (1)
  {
LABEL_4:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v18 = v78;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v7;
        v22 = v21 - a3 + (v20 >> 1);
        v18 = v78;
        if (v22 < 1)
        {
          goto LABEL_36;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v76 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      v18 = v78;
      if (v17 < 1)
      {
        goto LABEL_36;
      }

      if (v17 >= v15)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v17) >> 32;
      }

      v25 = v76 | v19;
      v26 = v16 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v18 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v76;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_28;
    }

LABEL_36:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 16;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v77)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_28;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v77;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_36;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v76;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_28:
  if (v25 < 0x400000)
  {
    goto LABEL_36;
  }

  v35 = v12 + SHIDWORD(v26) * v4 + 8 * (v30 >> 32);
  v36 = *(result + 32);
  if (v14 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v14;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (!v5)
  {
    v40 = v77;
    goto LABEL_39;
  }

  v39 = *(v5 + (v31 | v24));
LABEL_57:
  v40 = v77;
  v51 = v39 & 0xF;
  v52 = HIBYTE(v39) & 3;
  switch(v51)
  {
    case 1:
      v73 = (v35 + SBYTE1(v39) * v4);
      if (v14 < v73)
      {
        v73 = v14;
      }

      if (v73 < v36)
      {
        v73 = v36;
      }

      v74 = interpolate_16161616_21862[v52];
      v75 = v52 + 1;
      v67 = v38 - ((v74 & v38) >> v75);
      v72 = (v74 & *v73) >> v75;
LABEL_85:
      v38 = v67 + v72;
      break;
    case 2:
      v69 = (v35 + ((HIWORD(v39) << 56) >> 53));
      if (v14 < v69)
      {
        v69 = v14;
      }

      if (v69 < v36)
      {
        v69 = v36;
      }

      v70 = (v39 >> 28) & 3;
      v71 = interpolate_16161616_21862[v70];
      v66 = v70 + 1;
      v67 = v38 - ((v71 & v38) >> v66);
      v68 = v71 & *v69;
LABEL_79:
      v72 = v68 >> v66;
      goto LABEL_85;
    case 3:
      v53 = HIWORD(v39) << 56;
      v54 = (v35 + (v53 >> 53));
      if (v14 < v54)
      {
        v54 = v14;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = *v54;
      v56 = (v35 + SBYTE1(v39) * v4);
      if (v14 >= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v14;
      }

      if (v57 < v36)
      {
        v57 = v36;
      }

      v58 = *v57;
      v59 = (v56 + (v53 >> 53));
      if (v14 < v59)
      {
        v59 = v14;
      }

      if (v59 < v36)
      {
        v59 = v36;
      }

      v60 = interpolate_16161616_21862[v52];
      v61 = v52 + 1;
      v62 = v38 - ((v60 & v38) >> v61) + ((v60 & v58) >> v61);
      v63 = v55 - ((v60 & v55) >> v61) + ((v60 & *v59) >> v61);
      v64 = (v39 >> 28) & 3;
      v65 = interpolate_16161616_21862[v64];
      v66 = v64 + 1;
      v67 = v62 - ((v62 & v65) >> v66);
      v68 = v63 & v65;
      goto LABEL_79;
  }

LABEL_39:
  v41 = 0;
  v42 = v25 >> 22;
  v43 = (v10 + 24);
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v40 - a2;
  while (1)
  {
    v46 = v38 | v13;
    v47 = WORD1(v38);
    v48 = ((v38 | v13) >> 32);
    if (v38 > WORD1(v38))
    {
      v47 = v38;
    }

    if (v48 <= v47)
    {
      v48 = v47;
    }

    *(v43 - 1) = ((v48 - ((v38 | v13) >> 32)) << 32) | ((HIWORD(v46) - v48) << 48) | ((v48 - WORD1(v38)) << 16) | (v48 - v38);
    *v43 = HIWORD(v46);
    *(v11 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if ((v44 | v45 | (a3 - v6) | (a2 - v78)) < 0)
    {
      v11 += v41 + 1;
      v10 = (v43 - 4);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_4;
      }

      return result;
    }

    v49 = v12 + SHIDWORD(a3) * v4;
    v35 = v49 + 8 * (a2 >> 32);
    v36 = *(result + 32);
    if (v14 >= v35)
    {
      v50 = (v49 + 8 * (a2 >> 32));
    }

    else
    {
      v50 = v14;
    }

    if (v50 < v36)
    {
      v50 = *(result + 32);
    }

    v38 = *v50;
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v11 += v41 + 1;
        v10 = (v43 - 4);
        a4 += ~v41;
        v25 = -1;
        goto LABEL_57;
      }
    }

    ++v41;
    v43 += 8;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v42) = -1;
  }
}

uint64_t cmyk64_sample_RGBA64(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v67 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v66 = *(result + 188);
  v10 = *(result + 152) - 16;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  v13 = 0xFFFF000000000000;
  if (*(result + 40))
  {
    v13 = 0;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v68 = *(result + 64);
  while (1)
  {
LABEL_4:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v18 = v68;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v7;
        v22 = v21 - a3 + (v20 >> 1);
        v18 = v68;
        if (v22 < 1)
        {
          goto LABEL_36;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v66 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      v18 = v68;
      if (v17 < 1)
      {
        goto LABEL_36;
      }

      if (v17 >= v15)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v17) >> 32;
      }

      v25 = v66 | v19;
      v26 = v16 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v18 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v66;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_28;
    }

LABEL_36:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 16;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v67)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_28;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v67;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_36;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v66;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_28:
  if (v25 < 0x400000)
  {
    goto LABEL_36;
  }

  v35 = v12 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 8 * v36;
  v38 = *(result + 32);
  if (v14 >= v37)
  {
    v39 = (v35 + 8 * v36);
  }

  else
  {
    v39 = v14;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = ((bswap32(v39[2]) >> 16) << 32) | ((bswap32(v39[3]) >> 16) << 48) | bswap32(v39[1]) & 0xFFFF0000 | (bswap32(*v39) >> 16);
  if (v5)
  {
    v41 = *(v5 + (v31 | v24));
LABEL_56:
    v51 = v41 & 0xF;
    v52 = HIBYTE(v41) & 3;
    switch(v51)
    {
      case 1:
        v65 = (v37 + SBYTE1(v41) * v4);
        if (v14 < v65)
        {
          v65 = v14;
        }

        if (v65 < v38)
        {
          v65 = v38;
        }

        v40 = v40 - ((interpolate_16161616_21862[v52] & v40) >> (v52 + 1)) + (((((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & interpolate_16161616_21862[v52]) >> (v52 + 1));
        break;
      case 2:
        v63 = (v37 + ((HIWORD(v41) << 56) >> 53));
        if (v14 < v63)
        {
          v63 = v14;
        }

        if (v63 < v38)
        {
          v63 = v38;
        }

        v64 = (v41 >> 28) & 3;
        v40 = v40 - ((interpolate_16161616_21862[v64] & v40) >> (v64 + 1)) + (((((bswap32(v63[2]) >> 16) << 32) | ((bswap32(v63[3]) >> 16) << 48) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16)) & interpolate_16161616_21862[v64]) >> (v64 + 1));
        break;
      case 3:
        v53 = HIWORD(v41) << 56;
        v54 = (v37 + (v53 >> 53));
        if (v14 < v54)
        {
          v54 = v14;
        }

        if (v54 < v38)
        {
          v54 = v38;
        }

        v55 = ((bswap32(v54[2]) >> 16) << 32) | ((bswap32(v54[3]) >> 16) << 48) | bswap32(v54[1]) & 0xFFFF0000 | (bswap32(*v54) >> 16);
        v56 = v37 + SBYTE1(v41) * v4;
        if (v14 >= v56)
        {
          v57 = (v37 + SBYTE1(v41) * v4);
        }

        else
        {
          v57 = v14;
        }

        if (v57 < v38)
        {
          v57 = v38;
        }

        v58 = ((bswap32(v57[2]) >> 16) << 32) | ((bswap32(v57[3]) >> 16) << 48) | bswap32(v57[1]) & 0xFFFF0000 | (bswap32(*v57) >> 16);
        v59 = (v56 + (v53 >> 53));
        if (v14 < v59)
        {
          v59 = v14;
        }

        if (v59 < v38)
        {
          v59 = v38;
        }

        v60 = interpolate_16161616_21862[v52];
        v61 = v52 + 1;
        v62 = v40 - ((v60 & v40) >> v61) + ((v58 & v60) >> v61);
        v40 = v62 - ((v62 & interpolate_16161616_21862[(v41 >> 28) & 3]) >> (((v41 >> 28) & 3) + 1)) + (((v55 - ((v60 & v55) >> v61) + (((((bswap32(v59[2]) >> 16) << 32) | ((bswap32(v59[3]) >> 16) << 48) | bswap32(v59[1]) & 0xFFFF0000 | (bswap32(*v59) >> 16)) & v60) >> v61)) & interpolate_16161616_21862[(v41 >> 28) & 3]) >> (((v41 >> 28) & 3) + 1));
        break;
    }
  }

  v42 = 0;
  v43 = v25 >> 22;
  v44 = (v10 + 24);
  a3 += v9;
  v45 = v7 - a3;
  a2 += v8;
  v46 = v67 - a2;
  while (1)
  {
    v47 = v40;
    if (v40 <= WORD1(v40))
    {
      v47 = WORD1(v40);
    }

    if (((v40 | v13) >> 32) > v47)
    {
      v47 = ((v40 | v13) >> 32);
    }

    v48 = (v40 | v13) >> 48;
    *(v44 - 1) = ((v47 - ((v40 | v13) >> 32)) << 32) | ((v48 - v47) << 48) | ((v47 - WORD1(v40)) << 16) | (v47 - v40);
    *v44 = v48;
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v45 | v46 | (a3 - v6) | (a2 - v68)) < 0)
    {
      v11 += v42 + 1;
      v10 = (v44 - 4);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_4;
      }

      return result;
    }

    v49 = v12 + SHIDWORD(a3) * v4;
    v37 = v49 + 8 * (a2 >> 32);
    v38 = *(result + 32);
    if (v14 >= v37)
    {
      v50 = (v49 + 8 * (a2 >> 32));
    }

    else
    {
      v50 = v14;
    }

    if (v50 < v38)
    {
      v50 = *(result + 32);
    }

    v40 = ((bswap32(v50[2]) >> 16) << 32) | ((bswap32(v50[3]) >> 16) << 48) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = (v44 - 4);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_56;
      }
    }

    ++v42;
    v44 += 8;
    a3 += v9;
    v45 -= v9;
    a2 += v8;
    v46 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t cmyk64_sample_rgb48(uint64_t result, unint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v66 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 16;
  v13 = *(result + 144) - 1;
  v65 = *(result + 188);
  v14 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
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

        v24 = v65 | v22;
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

      v24 = v65 | v18;
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
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v65;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 16;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v66)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v66;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v65;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v29 >> 32;
  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = v35 + 6 * v34;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v35 + 6 * v34);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38 | (*(v38 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_54:
  v50 = v40 & 0xF;
  v51 = HIBYTE(v40) & 3;
  switch(v50)
  {
    case 1:
      v64 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v64)
      {
        v64 = v14;
      }

      if (v64 < v37)
      {
        v64 = v37;
      }

      v60 = *v64 | (*(v64 + 2) << 32) | 0xFFFF000000000000;
      goto LABEL_81;
    case 2:
      v63 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v63)
      {
        v63 = v14;
      }

      if (v63 < v37)
      {
        v63 = v37;
      }

      v60 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v51 = (v40 >> 28) & 3;
LABEL_81:
      v61 = interpolate_16161616_21862[v51];
      v62 = v61 & v39;
      goto LABEL_82;
    case 3:
      v52 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v52)
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v54)
      {
        v55 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v55 = v14;
      }

      if (v55 < v37)
      {
        v55 = v37;
      }

      v56 = *v55 | (*(v55 + 2) << 32) | 0xFFFF000000000000;
      v57 = (v54 + 6 * SBYTE2(v40));
      if (v14 < v57)
      {
        v57 = v14;
      }

      if (v57 < v37)
      {
        v57 = v37;
      }

      v58 = interpolate_16161616_21862[v51];
      v59 = v51 + 1;
      v39 = v39 - ((v58 & v39) >> v59) + ((v56 & v58) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + (((*v57 | (*(v57 + 2) << 32) | 0xFFFF000000000000) & v58) >> v59);
      v51 = (v40 >> 28) & 3;
      v61 = interpolate_16161616_21862[v51];
      v62 = v39 & v61;
LABEL_82:
      v39 = v39 - (v62 >> (v51 + 1)) + ((v60 & v61) >> (v51 + 1));
      break;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  v43 = (v12 + 24);
  a3 += v11;
  v44 = v9 - a3;
  a2 += v10;
  v45 = v66 - a2;
  while (1)
  {
    v46 = v39;
    v47 = WORD2(v39);
    if (v39 <= WORD1(v39))
    {
      v46 = WORD1(v39);
    }

    if (WORD2(v39) <= v46)
    {
      v47 = v46;
    }

    *(v43 - 1) = ((v47 - WORD2(v39)) << 32) | ((HIWORD(v39) - v47) << 48) | ((v47 - WORD1(v39)) << 16) | (v47 - v39);
    *v43 = HIWORD(v39);
    *(v13 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
    {
      v13 += v41 + 1;
      v12 = (v43 - 4);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v48 = v4 + SHIDWORD(a3) * v5;
    v36 = v48 + 6 * SHIDWORD(a2);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v49 = (v48 + 6 * SHIDWORD(a2));
    }

    else
    {
      v49 = v14;
    }

    if (v49 < v37)
    {
      v49 = *(result + 32);
    }

    v39 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v13 += v41 + 1;
        v12 = (v43 - 4);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_54;
      }
    }

    ++v41;
    v43 += 8;
    a3 += v11;
    v44 -= v11;
    a2 += v10;
    v45 -= v10;
    LOBYTE(v42) = -1;
  }
}

uint64_t cmyk64_sample_RGB48(uint64_t result, unint64_t a2, int64_t a3, int a4)
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
  v12 = *(result + 152) - 16;
  v13 = *(result + 144) - 1;
  v71 = *(result + 188);
  v14 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
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
    v12 += 16;
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

  v34 = v29 >> 32;
  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = v35 + 6 * v34;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v35 + 6 * v34);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (bswap32(*v38) >> 16) | ((bswap32(v38[1]) >> 16) << 16) | ((bswap32(v38[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_54:
  v49 = v40 & 0xF;
  v50 = HIBYTE(v40) & 3;
  switch(v49)
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

      v69 = interpolate_16161616_21862[v50];
      v70 = v50 + 1;
      v64 = v39 - ((v69 & v39) >> v70);
      v67 = (((bswap32(*v68) >> 16) | ((bswap32(v68[1]) >> 16) << 16) | ((bswap32(v68[2]) >> 16) << 32) | 0xFFFF000000000000) & v69) >> v70;
LABEL_82:
      v39 = v64 + v67;
      break;
    case 2:
      v65 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v65)
      {
        v65 = v14;
      }

      if (v65 < v37)
      {
        v65 = v37;
      }

      v60 = (bswap32(*v65) >> 16) | ((bswap32(v65[1]) >> 16) << 16) | ((bswap32(v65[2]) >> 16) << 32) | 0xFFFF000000000000;
      v66 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v66];
      v63 = v66 + 1;
      v64 = v39 - ((v62 & v39) >> v63);
LABEL_76:
      v67 = (v60 & v62) >> v63;
      goto LABEL_82;
    case 3:
      v51 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
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

      v55 = (bswap32(*v54) >> 16) | ((bswap32(v54[1]) >> 16) << 16) | ((bswap32(v54[2]) >> 16) << 32) | 0xFFFF000000000000;
      v56 = (v53 + 6 * SBYTE2(v40));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_16161616_21862[v50];
      v58 = v50 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((((bswap32(*v56) >> 16) | ((bswap32(v56[1]) >> 16) << 16) | ((bswap32(v56[2]) >> 16) << 32) | 0xFFFF000000000000) & v57) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_76;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  v43 = (v12 + 24);
  a3 += v11;
  v44 = v9 - a3;
  a2 += v10;
  v45 = v72 - a2;
  while (1)
  {
    v46 = v39;
    if (v39 <= WORD1(v39))
    {
      v46 = WORD1(v39);
    }

    if (WORD2(v39) > v46)
    {
      v46 = WORD2(v39);
    }

    *(v43 - 1) = ((v46 - WORD2(v39)) << 32) | ((HIWORD(v39) - v46) << 48) | ((v46 - WORD1(v39)) << 16) | (v46 - v39);
    *v43 = HIWORD(v39);
    *(v13 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
    {
      v13 += v41 + 1;
      v12 = (v43 - 4);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v36 = v47 + 6 * SHIDWORD(a2);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v48 = (v47 + 6 * SHIDWORD(a2));
    }

    else
    {
      v48 = v14;
    }

    if (v48 < v37)
    {
      v48 = *(result + 32);
    }

    v39 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v13 += v41 + 1;
        v12 = (v43 - 4);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_54;
      }
    }

    ++v41;
    v43 += 8;
    a3 += v11;
    v44 -= v11;
    a2 += v10;
    v45 -= v10;
    LOBYTE(v42) = -1;
  }
}

uint64_t cmyk64_sample_w16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v91 = *(result + 80);
  v93 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 16;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -65536;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v5 + (v14 * v7) + 2 * (v15 - 1);
  v90 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v92 = *(result + 64);
  v94 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v94)
    {
      if (a3 <= v93)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v92;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v93;
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

        v29 = v92;
        v27 = v90 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v94 - *(result + 224);
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

      v29 = v92;
      v27 = v90 | v21;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v90;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 16;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v91)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v91;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v90;
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
  v40 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
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

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  v44 = *v43;
  if (!v5)
  {
    v45 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v48 = *(v8 + (v34 | v26));
LABEL_69:
    v59 = v48 & 0xF;
    v60 = HIBYTE(v48) & 3;
    switch(v59)
    {
      case 1:
        v84 = (v41 + SBYTE1(v48) * v6);
        if (v17 < v84)
        {
          v84 = v17;
        }

        if (v84 < v42)
        {
          v84 = v42;
        }

        v85 = *v84;
        if (v5)
        {
          v86 = (v45 + SBYTE1(v48) * v7);
          if (v16 < v86)
          {
            v86 = v16;
          }

          if (v86 < *(result + 40))
          {
            v86 = *(result + 40);
          }

          v85 |= *v86 << 16;
        }

        v87 = interpolate_1616[v60];
        v88 = v60 + 1;
        v79 = v44 - ((v87 & v44) >> v88);
        v80 = (v87 & v85) >> v88;
        break;
      case 2:
        v81 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v81)
        {
          v81 = v17;
        }

        if (v81 < v42)
        {
          v81 = v42;
        }

        v82 = *v81;
        if (v5)
        {
          v83 = (v45 + 2 * SBYTE2(v48));
          if (v16 < v83)
          {
            v83 = v16;
          }

          if (v83 < *(result + 40))
          {
            v83 = *(result + 40);
          }

          v82 |= *v83 << 16;
        }

        v44 = v44 - ((interpolate_1616[(v48 >> 28) & 3] & v44) >> (((v48 >> 28) & 3) + 1)) + ((interpolate_1616[(v48 >> 28) & 3] & v82) >> (((v48 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v89 = HIBYTE(v48) & 3;
        v61 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v61)
        {
          v61 = v17;
        }

        if (v61 < v42)
        {
          v61 = v42;
        }

        v62 = *v61;
        v63 = (v41 + SBYTE1(v48) * v6);
        if (v17 >= v63)
        {
          v64 = v63;
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
        v66 = &v63[SBYTE2(v48)];
        if (v17 < v66)
        {
          v66 = v17;
        }

        if (v66 < v42)
        {
          v66 = v42;
        }

        v67 = *v66;
        if (v5)
        {
          v68 = 2 * SBYTE2(v48);
          v69 = (v45 + v68);
          v70 = *(result + 40);
          if (v16 < v45 + v68)
          {
            v69 = v16;
          }

          if (v69 < v70)
          {
            v69 = *(result + 40);
          }

          v62 |= *v69 << 16;
          v71 = v45 + SBYTE1(v48) * v7;
          if (v16 >= v71)
          {
            v72 = (v45 + SBYTE1(v48) * v7);
          }

          else
          {
            v72 = v16;
          }

          if (v72 < v70)
          {
            v72 = *(result + 40);
          }

          v65 |= *v72 << 16;
          v73 = (v71 + v68);
          if (v16 < v73)
          {
            v73 = v16;
          }

          if (v73 < v70)
          {
            v73 = *(result + 40);
          }

          v67 |= *v73 << 16;
        }

        v74 = interpolate_1616[v89];
        v75 = v44 - ((v74 & v44) >> (v89 + 1)) + ((v74 & v65) >> (v89 + 1));
        v76 = v62 - ((v74 & v62) >> (v89 + 1)) + ((v74 & v67) >> (v89 + 1));
        v77 = (v48 >> 28) & 3;
        v78 = interpolate_1616[v77];
        LOBYTE(v77) = v77 + 1;
        v79 = v75 - ((v75 & v78) >> v77);
        v80 = (v76 & v78) >> v77;
        break;
      default:
        goto LABEL_47;
    }

    v44 = v79 + v80;
    goto LABEL_47;
  }

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

  v44 |= *v46 << 16;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v49 = (v44 | v13) >> 16;
  *(v11 + 16) = (v49 - v44) << 48;
  *(v11 + 24) = v49;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    v51 = (v11 + 40);
    a2 += v10;
    v52 = v91 - a2;
    a3 += v9;
    v53 = v93 - a3;
    while (((v53 | v52 | (a3 - v94) | (a2 - v92)) & 0x8000000000000000) == 0)
    {
      v54 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v41 = v4 + SHIDWORD(a3) * v6 + v54;
      v42 = *(result + 32);
      if (v17 >= v41)
      {
        v55 = (v4 + SHIDWORD(a3) * v6 + v54);
      }

      else
      {
        v55 = v17;
      }

      if (v55 < v42)
      {
        v55 = *(result + 32);
      }

      v44 = *v55;
      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v54;
        v56 = *(result + 40);
        if (v16 >= v45)
        {
          v57 = (v5 + SHIDWORD(a3) * v7 + v54);
        }

        else
        {
          v57 = v16;
        }

        if (v57 >= v56)
        {
          v56 = v57;
        }

        v44 |= *v56 << 16;
      }

      if (v8)
      {
        v48 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v48 & 0xF) != 0)
        {
          v12 += v50 + 1;
          v11 = (v51 - 12);
          a4 += ~v50;
          v27 = -1;
          goto LABEL_69;
        }
      }

      v58 = (v44 | v13) >> 16;
      *(v51 - 1) = (v58 - v44) << 48;
      *v51 = v58;
      v51 += 8;
      *(v12 + v50++ + 2) = -1;
      a2 += v10;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v12 += v50 + 1;
    v11 = (v51 - 12);
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t cmyk64_sample_W16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v91 = *(result + 80);
  v93 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 16;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -65536;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v5 + (v14 * v7) + 2 * (v15 - 1);
  v90 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v92 = *(result + 64);
  v94 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v94)
    {
      if (a3 <= v93)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v92;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v93;
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

        v29 = v92;
        v27 = v90 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v94 - *(result + 224);
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

      v29 = v92;
      v27 = v90 | v21;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v90;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 16;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v91)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v91;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v90;
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
  v40 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
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

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  v44 = bswap32(*v43) >> 16;
  if (!v5)
  {
    v45 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v48 = *(v8 + (v34 | v26));
LABEL_69:
    v59 = v48 & 0xF;
    v60 = HIBYTE(v48) & 3;
    switch(v59)
    {
      case 1:
        v84 = (v41 + SBYTE1(v48) * v6);
        if (v17 < v84)
        {
          v84 = v17;
        }

        if (v84 < v42)
        {
          v84 = v42;
        }

        v85 = bswap32(*v84) >> 16;
        if (v5)
        {
          v86 = (v45 + SBYTE1(v48) * v7);
          if (v16 < v86)
          {
            v86 = v16;
          }

          if (v86 < *(result + 40))
          {
            v86 = *(result + 40);
          }

          v85 |= bswap32(*v86) & 0xFFFF0000;
        }

        v87 = interpolate_1616[v60];
        v88 = v60 + 1;
        v79 = v44 - ((v87 & v44) >> v88);
        v80 = (v87 & v85) >> v88;
        break;
      case 2:
        v81 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v81)
        {
          v81 = v17;
        }

        if (v81 < v42)
        {
          v81 = v42;
        }

        v82 = bswap32(*v81) >> 16;
        if (v5)
        {
          v83 = (v45 + 2 * SBYTE2(v48));
          if (v16 < v83)
          {
            v83 = v16;
          }

          if (v83 < *(result + 40))
          {
            v83 = *(result + 40);
          }

          v82 |= bswap32(*v83) & 0xFFFF0000;
        }

        v44 = v44 - ((interpolate_1616[(v48 >> 28) & 3] & v44) >> (((v48 >> 28) & 3) + 1)) + ((interpolate_1616[(v48 >> 28) & 3] & v82) >> (((v48 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v89 = HIBYTE(v48) & 3;
        v61 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v61)
        {
          v61 = v17;
        }

        if (v61 < v42)
        {
          v61 = v42;
        }

        v62 = bswap32(*v61) >> 16;
        v63 = (v41 + SBYTE1(v48) * v6);
        if (v17 >= v63)
        {
          v64 = v63;
        }

        else
        {
          v64 = v17;
        }

        if (v64 < v42)
        {
          v64 = v42;
        }

        v65 = bswap32(*v64) >> 16;
        v66 = &v63[SBYTE2(v48)];
        if (v17 < v66)
        {
          v66 = v17;
        }

        if (v66 < v42)
        {
          v66 = v42;
        }

        v67 = bswap32(*v66) >> 16;
        if (v5)
        {
          v68 = 2 * SBYTE2(v48);
          v69 = (v45 + v68);
          v70 = *(result + 40);
          if (v16 < v45 + v68)
          {
            v69 = v16;
          }

          if (v69 < v70)
          {
            v69 = *(result + 40);
          }

          v62 |= bswap32(*v69) & 0xFFFF0000;
          v71 = v45 + SBYTE1(v48) * v7;
          if (v16 >= v71)
          {
            v72 = (v45 + SBYTE1(v48) * v7);
          }

          else
          {
            v72 = v16;
          }

          if (v72 < v70)
          {
            v72 = *(result + 40);
          }

          v65 |= bswap32(*v72) & 0xFFFF0000;
          v73 = (v71 + v68);
          if (v16 < v73)
          {
            v73 = v16;
          }

          if (v73 < v70)
          {
            v73 = *(result + 40);
          }

          v67 |= bswap32(*v73) & 0xFFFF0000;
        }

        v74 = interpolate_1616[v89];
        v75 = v44 - ((v74 & v44) >> (v89 + 1)) + ((v74 & v65) >> (v89 + 1));
        v76 = v62 - ((v74 & v62) >> (v89 + 1)) + ((v74 & v67) >> (v89 + 1));
        v77 = (v48 >> 28) & 3;
        v78 = interpolate_1616[v77];
        LOBYTE(v77) = v77 + 1;
        v79 = v75 - ((v75 & v78) >> v77);
        v80 = (v76 & v78) >> v77;
        break;
      default:
        goto LABEL_47;
    }

    v44 = v79 + v80;
    goto LABEL_47;
  }

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

  v44 |= bswap32(*v46) & 0xFFFF0000;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v49 = (v44 | v13) >> 16;
  *(v11 + 16) = (v49 - v44) << 48;
  *(v11 + 24) = v49;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    v51 = (v11 + 40);
    a2 += v10;
    v52 = v91 - a2;
    a3 += v9;
    v53 = v93 - a3;
    while (((v53 | v52 | (a3 - v94) | (a2 - v92)) & 0x8000000000000000) == 0)
    {
      v54 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v41 = v4 + SHIDWORD(a3) * v6 + v54;
      v42 = *(result + 32);
      if (v17 >= v41)
      {
        v55 = (v4 + SHIDWORD(a3) * v6 + v54);
      }

      else
      {
        v55 = v17;
      }

      if (v55 < v42)
      {
        v55 = *(result + 32);
      }

      v44 = bswap32(*v55) >> 16;
      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v54;
        v56 = *(result + 40);
        if (v16 >= v45)
        {
          v57 = (v5 + SHIDWORD(a3) * v7 + v54);
        }

        else
        {
          v57 = v16;
        }

        if (v57 >= v56)
        {
          v56 = v57;
        }

        v44 |= bswap32(*v56) & 0xFFFF0000;
      }

      if (v8)
      {
        v48 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v48 & 0xF) != 0)
        {
          v12 += v50 + 1;
          v11 = (v51 - 12);
          a4 += ~v50;
          v27 = -1;
          goto LABEL_69;
        }
      }

      v58 = (v44 | v13) >> 16;
      *(v51 - 1) = (v58 - v44) << 48;
      *v51 = v58;
      v51 += 8;
      *(v12 + v50++ + 2) = -1;
      a2 += v10;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v12 += v50 + 1;
    v11 = (v51 - 12);
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t cmyk64_sample_cmyk32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v91 = *(result + 80);
  v89 = *(result + 88);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v10 = *(result + 152) - 16;
  v92 = *(result + 144) - 1;
  v93 = *(result + 28);
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFF00000000;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = (v5 + (v13 - 1) + (v12 * *(result + 28)));
  v15 = v4 + (v12 * v6) + 4 * v13 - 8;
  v87 = *(result + 188);
  v90 = *(result + 72);
  v88 = *(result + 64);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v88;
        v28 = v91;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v89;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_42;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v88;
        v28 = v91;
        v25 = v87 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v90 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_42;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v88;
      v28 = v91;
      v25 = v87 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      if (a2 <= v28)
      {
        v33 = (a2 >> 26) & 0x3C;
        v32 = a2;
      }

      else
      {
        v34 = *(result + 192);
        v35 = *(result + 200) + v28;
        v36 = v35 - a2 + (v34 >> 1);
        if (v36 < 1)
        {
          goto LABEL_42;
        }

        if (v36 < v34)
        {
          v25 = ((v25 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v87;
        }

        v32 = v35 - 0x1000000;
        v33 = 28;
      }
    }

    else
    {
      v29 = *(result + 192);
      v30 = v27 - *(result + 200);
      v31 = a2 - v30 + (v29 >> 1);
      if (v31 < 1)
      {
        goto LABEL_42;
      }

      if (v31 < v29)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v87;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_42:
    v46 = a4 - 1;
    a2 += v9;
    a3 += v8;
    v10 += 16;
    *++v92 = 0;
LABEL_43:
    a4 = v46;
    if (!v46)
    {
      return result;
    }
  }

  v37 = v26 >> 32;
  v38 = v32 >> 32;
  v39 = v4 + SHIDWORD(v26) * v6 + 4 * v38;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = v39;
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
  if (v5)
  {
    v43 = v5 + v37 * v93 + v38;
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

    v42 |= *v44 << 32;
  }

  else
  {
    v43 = 0;
  }

  v47 = v89;
  if (!v7)
  {
    goto LABEL_48;
  }

  v48 = *(v7 + (v33 | v24));
LABEL_68:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  switch(v57)
  {
    case 1:
      v84 = (v39 + SBYTE1(v48) * v6);
      if (v15 < v84)
      {
        v84 = v15;
      }

      if (v84 < v40)
      {
        v84 = v40;
      }

      v82 = *v84;
      if (v5)
      {
        v85 = (v43 + SBYTE1(v48) * v93);
        v47 = v89;
        if (v14 < v85)
        {
          v85 = v14;
        }

        if (v85 < *(result + 40))
        {
          v85 = *(result + 40);
        }

        v82 |= *v85 << 32;
      }

      goto LABEL_121;
    case 2:
      v81 = (v39 + ((HIWORD(v48) << 56) >> 54));
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
        v83 = (v43 + SBYTE2(v48));
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 32;
      }

      v58 = (v48 >> 28) & 3;
LABEL_121:
      v86 = interpolate_cif10a[v58];
      v78 = v58 + 1;
      v79 = v42 - ((v86 & v42) >> v78);
      v80 = v86 & v82;
      goto LABEL_122;
    case 3:
      v59 = HIWORD(v48) << 56;
      v60 = (v39 + (v59 >> 54));
      if (v15 < v60)
      {
        v60 = v15;
      }

      if (v60 < v40)
      {
        v60 = v40;
      }

      v61 = *v60;
      v62 = v39 + SBYTE1(v48) * v6;
      if (v15 >= v62)
      {
        v63 = (v39 + SBYTE1(v48) * v6);
      }

      else
      {
        v63 = v15;
      }

      if (v63 < v40)
      {
        v63 = v40;
      }

      v64 = *v63;
      v65 = (v62 + (v59 >> 54));
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v40)
      {
        v65 = v40;
      }

      v66 = *v65;
      if (v5)
      {
        v67 = (v43 + SBYTE2(v48));
        v68 = *(result + 40);
        if (v14 < v67)
        {
          v67 = v14;
        }

        if (v67 < v68)
        {
          v67 = *(result + 40);
        }

        v61 |= *v67 << 32;
        v69 = v43 + SBYTE1(v48) * v93;
        v47 = v89;
        if (v14 >= v69)
        {
          v70 = (v43 + SBYTE1(v48) * v93);
        }

        else
        {
          v70 = v14;
        }

        if (v70 < v68)
        {
          v70 = *(result + 40);
        }

        v64 |= *v70 << 32;
        v71 = (v69 + SBYTE2(v48));
        if (v14 < v71)
        {
          v71 = v14;
        }

        if (v71 >= v68)
        {
          v68 = v71;
        }

        v66 |= *v68 << 32;
      }

      v72 = interpolate_cif10a[v58];
      v73 = v58 + 1;
      v74 = v42 - ((v72 & v42) >> v73) + ((v72 & v64) >> v73);
      v75 = v61 - ((v72 & v61) >> v73) + ((v72 & v66) >> v73);
      v76 = (v48 >> 28) & 3;
      v77 = interpolate_cif10a[v76];
      v78 = v76 + 1;
      v79 = v74 - ((v74 & v77) >> v78);
      v80 = v75 & v77;
LABEL_122:
      v42 = v79 + (v80 >> v78);
      break;
  }

LABEL_48:
  v49 = 0;
  v50 = v25 >> 22;
  v51 = (v10 + 24);
  a3 += v8;
  v52 = v47 - a3;
  a2 += v9;
  v53 = v91 - a2;
  while (1)
  {
    *(v51 - 1) = (0x10100000000 * BYTE1(v42)) | (0x101000000000000 * v42) | v42 & 0xFF0000 | (BYTE2(v42) << 24) | BYTE3(v42) | (BYTE3(v42) << 8);
    *v51 = ((v42 | v11) >> 32) | (((v42 | v11) >> 32) << 8);
    *(v92 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if (((v52 | v53 | (a3 - v90) | (a2 - v88)) & 0x8000000000000000) != 0)
    {
      v92 += v49 + 1;
      v10 = (v51 - 4);
      v46 = ~v49 + a4;
      goto LABEL_43;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32));
    }

    else
    {
      v54 = v15;
    }

    if (v54 < v40)
    {
      v54 = *(result + 32);
    }

    v42 = *v54;
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v93 + (a2 >> 32);
      v55 = *(result + 40);
      if (v14 >= v43)
      {
        v56 = v5 + SHIDWORD(a3) * v93 + (a2 >> 32);
      }

      else
      {
        v56 = v14;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v42 |= *v55 << 32;
    }

    if (v7)
    {
      v48 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v92 += v49 + 1;
        v10 = (v51 - 4);
        a4 += ~v49;
        v25 = -1;
        v47 = v89;
        goto LABEL_68;
      }
    }

    ++v49;
    v51 += 8;
    a3 += v8;
    v52 -= v8;
    a2 += v9;
    v53 -= v9;
    LOBYTE(v50) = -1;
  }
}

uint64_t cmyk64_sample_CMYK32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v84 = *(result + 80);
  v82 = *(result + 88);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v10 = *(result + 152) - 16;
  v85 = *(result + 144) - 1;
  v86 = *(result + 28);
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFF00000000;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = (v5 + (v13 - 1) + (v12 * *(result + 28)));
  v15 = v4 + (v12 * v6) + 4 * v13 - 8;
  v80 = *(result + 188);
  v83 = *(result + 72);
  v81 = *(result + 64);
  while (1)
  {
    if (a3 >= v83)
    {
      if (a3 <= v82)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v81;
        v28 = v84;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v82;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_42;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v81;
        v28 = v84;
        v25 = v80 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v83 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_42;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v81;
      v28 = v84;
      v25 = v80 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      if (a2 <= v28)
      {
        v33 = (a2 >> 26) & 0x3C;
        v32 = a2;
      }

      else
      {
        v34 = *(result + 192);
        v35 = *(result + 200) + v28;
        v36 = v35 - a2 + (v34 >> 1);
        if (v36 < 1)
        {
          goto LABEL_42;
        }

        if (v36 < v34)
        {
          v25 = ((v25 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v80;
        }

        v32 = v35 - 0x1000000;
        v33 = 28;
      }
    }

    else
    {
      v29 = *(result + 192);
      v30 = v27 - *(result + 200);
      v31 = a2 - v30 + (v29 >> 1);
      if (v31 < 1)
      {
        goto LABEL_42;
      }

      if (v31 < v29)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v80;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_42:
    v46 = a4 - 1;
    a2 += v9;
    a3 += v8;
    v10 += 16;
    *++v85 = 0;
LABEL_43:
    a4 = v46;
    if (!v46)
    {
      return result;
    }
  }

  v37 = v26 >> 32;
  v38 = v32 >> 32;
  v39 = v4 + SHIDWORD(v26) * v6 + 4 * v38;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = bswap32(*v41);
  if (v5)
  {
    v43 = v5 + v37 * v86 + v38;
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

    v42 |= *v44 << 32;
  }

  else
  {
    v43 = 0;
  }

  v47 = v82;
  if (v7)
  {
    v48 = *(v7 + (v33 | v24));
LABEL_68:
    v57 = v48 & 0xF;
    v58 = HIBYTE(v48) & 3;
    switch(v57)
    {
      case 1:
        v77 = (v39 + SBYTE1(v48) * v6);
        if (v15 < v77)
        {
          v77 = v15;
        }

        if (v77 < v40)
        {
          v77 = v40;
        }

        v78 = bswap32(*v77);
        if (v5)
        {
          v79 = (v43 + SBYTE1(v48) * v86);
          v47 = v82;
          if (v14 < v79)
          {
            v79 = v14;
          }

          if (v79 < *(result + 40))
          {
            v79 = *(result + 40);
          }

          v78 |= *v79 << 32;
        }

        v42 = v42 - ((interpolate_cif10a[v58] & v42) >> (v58 + 1)) + ((interpolate_cif10a[v58] & v78) >> (v58 + 1));
        break;
      case 2:
        v74 = (v39 + ((HIWORD(v48) << 56) >> 54));
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v40)
        {
          v74 = v40;
        }

        v75 = bswap32(*v74);
        if (v5)
        {
          v76 = (v43 + SBYTE2(v48));
          if (v14 < v76)
          {
            v76 = v14;
          }

          if (v76 < *(result + 40))
          {
            v76 = *(result + 40);
          }

          v75 |= *v76 << 32;
        }

        v42 = v42 - ((interpolate_cif10a[(v48 >> 28) & 3] & v42) >> (((v48 >> 28) & 3) + 1)) + ((interpolate_cif10a[(v48 >> 28) & 3] & v75) >> (((v48 >> 28) & 3) + 1));
        break;
      case 3:
        v59 = HIWORD(v48) << 56;
        v60 = (v39 + (v59 >> 54));
        if (v15 < v60)
        {
          v60 = v15;
        }

        if (v60 < v40)
        {
          v60 = v40;
        }

        v61 = bswap32(*v60);
        v62 = v39 + SBYTE1(v48) * v6;
        if (v15 >= v62)
        {
          v63 = (v39 + SBYTE1(v48) * v6);
        }

        else
        {
          v63 = v15;
        }

        if (v63 < v40)
        {
          v63 = v40;
        }

        v64 = bswap32(*v63);
        v65 = (v62 + (v59 >> 54));
        if (v15 < v65)
        {
          v65 = v15;
        }

        if (v65 < v40)
        {
          v65 = v40;
        }

        v66 = bswap32(*v65);
        if (v5)
        {
          v67 = (v43 + SBYTE2(v48));
          v68 = *(result + 40);
          if (v14 < v67)
          {
            v67 = v14;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v61 |= *v67 << 32;
          v69 = v43 + SBYTE1(v48) * v86;
          v47 = v82;
          if (v14 >= v69)
          {
            v70 = (v43 + SBYTE1(v48) * v86);
          }

          else
          {
            v70 = v14;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v64 |= *v70 << 32;
          v71 = (v69 + SBYTE2(v48));
          if (v14 < v71)
          {
            v71 = v14;
          }

          if (v71 >= v68)
          {
            v68 = v71;
          }

          v66 |= *v68 << 32;
        }

        v72 = interpolate_cif10a[v58];
        v73 = v42 - ((v72 & v42) >> (v58 + 1)) + ((v72 & v64) >> (v58 + 1));
        v42 = v73 - ((v73 & interpolate_cif10a[(v48 >> 28) & 3]) >> (((v48 >> 28) & 3) + 1)) + (((v61 - ((v72 & v61) >> (v58 + 1)) + ((v72 & v66) >> (v58 + 1))) & interpolate_cif10a[(v48 >> 28) & 3]) >> (((v48 >> 28) & 3) + 1));
        break;
    }
  }

  v49 = 0;
  v50 = v25 >> 22;
  v51 = (v10 + 24);
  a3 += v8;
  v52 = v47 - a3;
  a2 += v9;
  v53 = v84 - a2;
  while (1)
  {
    *(v51 - 1) = (0x10100000000 * BYTE1(v42)) | (0x101000000000000 * v42) | v42 & 0xFF0000 | (BYTE2(v42) << 24) | BYTE3(v42) | (BYTE3(v42) << 8);
    *v51 = ((v42 | v11) >> 32) | (((v42 | v11) >> 32) << 8);
    *(v85 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if (((v52 | v53 | (a3 - v83) | (a2 - v81)) & 0x8000000000000000) != 0)
    {
      v85 += v49 + 1;
      v10 = (v51 - 4);
      v46 = ~v49 + a4;
      goto LABEL_43;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32));
    }

    else
    {
      v54 = v15;
    }

    if (v54 < v40)
    {
      v54 = *(result + 32);
    }

    v42 = bswap32(*v54);
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v86 + (a2 >> 32);
      v55 = *(result + 40);
      if (v14 >= v43)
      {
        v56 = v5 + SHIDWORD(a3) * v86 + (a2 >> 32);
      }

      else
      {
        v56 = v14;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v42 |= *v55 << 32;
    }

    if (v7)
    {
      v48 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v85 += v49 + 1;
        v10 = (v51 - 4);
        a4 += ~v49;
        v25 = -1;
        v47 = v82;
        goto LABEL_68;
      }
    }

    ++v49;
    v51 += 8;
    a3 += v8;
    v52 -= v8;
    a2 += v9;
    v53 -= v9;
    LOBYTE(v50) = -1;
  }
}

uint64_t cmyk64_shade(uint64_t a1)
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
      v12 = cmyk64_shade_radial_CMYK;
    }

    else if (*(v4 + 24))
    {
      v12 = cmyk64_shade_conic_CMYK;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = cmyk64_shade_axial_CMYK;
    }

    else
    {
      v12 = cmyk64_shade_custom_CMYK;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 3, 4, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 384)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 3, 4, v16, *(&v16 + 1), v13);
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
  cmyk64_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void cmyk64_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v542 = *MEMORY[0x1E69E9840];
  v540 = *(a1 + 4);
  v527 = v540;
  v528 = a1;
  v3 = (v540 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 <= 0x1FFFFFF)
  {
    v5 = *(v528 + 40);
    v541 = *(v528 + 48);
    v6 = *(a2 + 184);
    v536 = *(v528 + 136);
    v7 = *(a2 + 96);
    v538 = *(a2 + 104);
    v539 = v7;
    v9 = *(v528 + 24);
    v8 = *(v528 + 28);
    v11 = *(v528 + 16);
    v10 = *(v528 + 20);
    v12 = *(v528 + 12);
    v537 = *(v528 + 8);
    v534 = a2;
    v13 = *(a2 + 16);
    v14 = (v13 + 18) * v3;
    if (v14 > 65439)
    {
      v17 = malloc_type_calloc(1uLL, v14 + 96, 0xF5B4F9ABuLL);
      v16 = v17;
      v19 = v17;
      v20 = v534;
      if (!v17)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v16 = &v518 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v15);
      v19 = 0;
      v20 = v534;
    }

    v523 = v19;
    v531 = a3;
    v21 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v22 = v21 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[20] = v22;
    if (v13)
    {
      v23 = 16 * v3;
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 + v23;
    v25 = v5 + (v9 - 1) * v8;
    v26 = v8 >> 3;
    v20[18] = v21;
    v20[19] = v24;
    if (v541)
    {
      v27 = v528;
      v28 = *(v528 + 32) >> 1;
      v29 = (v541 + 2 * v28 * v11 + 2 * v12);
      v532 = v28 - v527;
      v30 = v527;
      v31 = 1;
    }

    else
    {
      v29 = 0;
      v532 = 0;
      v31 = 0;
      v30 = v527;
      v27 = v528;
    }

    v533 = ((v6 * 65535.0) + 0.5);
    v32 = v25 + 8 * v10;
    v33 = (v5 + 8 * v26 * v11 + 8 * v12);
    v530 = v26 - v30;
    v34 = *(v27 + 104);
    v35 = *(v27 + 108);
    v36 = *(v27 + 2);
    if (v36 == 6 || v36 == 1)
    {
      v37 = v531;
      v38 = v534;
      v39 = v540;
      if (v536)
      {
        v520 = v26;
        v40 = 0;
        v41 = 0;
        v42 = *(v27 + 124);
        v43 = v536 + v42 * v35 + v34;
        v30 = v527;
        v529 = v42 - v527;
        goto LABEL_21;
      }

      goto LABEL_569;
    }

    v520 = v26;
    v39 = v540;
    if (v536)
    {
      v521 = v32;
      v522 = v31;
      shape_enum_clip_alloc(v17, v18, v536, 1, 1, 1, v34, v35, v540, v537);
      if (v44)
      {
        v40 = v44;
        v45 = ((v13 * v3 + 15) & 0xFFFFFFF0);
        v46 = v13 == 0;
        v41 = 0;
        if (v46)
        {
          v45 = 16 * v3;
        }

        v47 = v527;
        v529 = -v527;
        v43 = (v24 + v45 + 16);
        v37 = v531;
        v38 = v534;
        goto LABEL_572;
      }

LABEL_569:
      if (v523)
      {
        free(v523);
      }

      return;
    }

    v43 = 0;
    v40 = 0;
    v529 = 0;
    v41 = 0;
    v37 = v531;
    v38 = v534;
LABEL_21:
    LODWORD(v536) = v41;
    v48 = v40;
    v49 = v533 ^ 0xFFFF;
    v525 = (v39 - 1);
    v524 = -v30;
    v521 = v32;
    v526 = v32 - 8;
    v522 = v31;
    v50 = 2 * v31;
    v51 = v48;
    v53 = v538;
    v52 = v539;
LABEL_22:
    v535 = v51;
    v54 = *v38;
    v538 = v53;
    v539 = v52;
    v54(v38);
    v55 = *(v38 + 160);
    v56 = *(v38 + 144);
    v57 = *(v38 + 8);
    if (v57 == *(v38 + 12))
    {
      if (v533 != 0xFFFF)
      {
        v58 = v39;
        v59 = *(v38 + 144);
        do
        {
          if (*v59)
          {
            v60 = *(v55 + 8);
            v61 = WORD2(*v55) * v49;
            *v55 = ((HIWORD(*v55) - ((HIWORD(*v55) * v49 + ((HIWORD(*v55) * v49) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v55) - ((v61 + HIWORD(v61) + 1) >> 16)) << 32) | ((WORD1(*v55) - ((WORD1(*v55) * v49 + ((WORD1(*v55) * v49) >> 16) + 1) >> 16)) << 16) | (*v55 - ((*v55 * v49 + ((*v55 * v49) >> 16) + 1) >> 16));
            *(v55 + 8) = v60 - ((v60 * v49 + ((v60 * v49) >> 16) + 1) >> 16);
          }

          ++v59;
          v55 += 16;
          --v58;
        }

        while (v58);
        v55 += 16 * v524;
        v56 += v525 + v524 + 1;
      }
    }

    else
    {
      v62 = *(v38 + 152);
      v63 = HIWORD(v57) & 0x3F;
      if (v63 == 16)
      {
        if (v533 == 0xFFFF)
        {
          v103 = 0;
          v104 = 0;
          do
          {
            if (v56[v103])
            {
              *(v55 + v104) = *(v62 + v104);
            }

            v104 += 16;
            ++v103;
          }

          while (v39 != v103);
        }

        else
        {
          v78 = 0;
          v79 = (v62 + 8);
          v80 = (v55 + 8);
          do
          {
            if (v56[v78])
            {
              v81 = *v79;
              v82 = *(v79 - 1);
              *(v80 - 1) = ((HIWORD(v82) - ((HIWORD(v82) * v49 + ((HIWORD(v82) * v49) >> 16) + 1) >> 16)) << 48) | ((WORD2(v82) - ((WORD2(v82) * v49 + ((WORD2(v82) * v49) >> 16) + 1) >> 16)) << 32) | ((WORD1(v82) - ((WORD1(v82) * v49 + ((WORD1(v82) * v49) >> 16) + 1) >> 16)) << 16) | (v82 - ((v82 * v49 + ((v82 * v49) >> 16) + 1) >> 16));
              *v80 = v81 - ((v81 * v49 + ((v81 * v49) >> 16) + 1) >> 16);
            }

            v79 += 8;
            ++v78;
            v80 += 8;
          }

          while (v39 != v78);
        }
      }

      else if (v63 == 32)
      {
        if (v533 == 0xFFFF)
        {
          v90 = 0;
          v91 = 0;
          v92 = (v62 + 8);
          do
          {
            if (v56[v90])
            {
              v93 = v92[2];
              if (v93 <= 0.0)
              {
                LOWORD(v94) = 0;
                *(v55 + v91) = 0;
              }

              else
              {
                LODWORD(v94) = ((v93 * 65535.0) + 0.5);
                v95 = *(v92 - 2);
                if (v93 <= 1.0)
                {
                  v94 = v94;
                }

                else
                {
                  v94 = 0xFFFFLL;
                }

                if (v93 > 1.0)
                {
                  v93 = 1.0;
                }

                LOWORD(v96) = v94;
                if (v95 <= v93)
                {
                  if (v95 >= 0.0)
                  {
                    v96 = ((v95 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v96) = 0;
                  }
                }

                v97 = *(v92 - 1);
                v98 = v94;
                if (v97 <= v93)
                {
                  if (v97 >= 0.0)
                  {
                    v98 = ((v97 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v98 = 0;
                  }
                }

                v99 = *v92;
                LOWORD(v100) = v94;
                if (*v92 <= v93)
                {
                  if (v99 >= 0.0)
                  {
                    v100 = ((v99 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v100) = 0;
                  }
                }

                v101 = v92[1];
                v102 = v94;
                if (v101 <= v93)
                {
                  if (v101 >= 0.0)
                  {
                    v102 = ((v101 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v102 = 0;
                  }
                }

                *(v55 + v91) = (v100 << 32) | (v102 << 48) | (v98 << 16) | v96;
              }

              *(v55 + v91 + 8) = v94;
            }

            v91 += 16;
            v92 += 5;
            ++v90;
          }

          while (v39 != v90);
        }

        else
        {
          v64 = 0;
          v65 = 0;
          v66 = (v62 + 8);
          do
          {
            if (v56[v64])
            {
              v67 = v66[2];
              if (v67 <= 0.0)
              {
                LOWORD(v72) = 0;
                *(v55 + v65) = 0;
              }

              else
              {
                v68 = *(v66 - 2);
                v69 = ((v67 * 65535.0) + 0.5);
                if (v67 > 1.0)
                {
                  v69 = 0xFFFF;
                }

                v70 = v69;
                if (v67 > 1.0)
                {
                  v67 = 1.0;
                }

                v71 = v69;
                if (v68 <= v67)
                {
                  if (v68 >= 0.0)
                  {
                    v71 = ((v68 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v71 = 0;
                  }
                }

                v73 = *(v66 - 1);
                v74 = v69;
                if (v73 <= v67)
                {
                  if (v73 >= 0.0)
                  {
                    v74 = ((v73 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v74 = 0;
                  }
                }

                v75 = *v66;
                v76 = v69;
                if (*v66 <= v67)
                {
                  if (v75 >= 0.0)
                  {
                    v76 = ((v75 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v76 = 0;
                  }
                }

                v77 = v66[1];
                if (v77 <= v67)
                {
                  if (v77 >= 0.0)
                  {
                    v70 = ((v77 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v70 = 0;
                  }
                }

                v72 = v69 - ((v69 * v49 + ((v69 * v49) >> 16) + 1) >> 16);
                *(v55 + v65) = ((v76 - ((v76 * v49 + ((v76 * v49) >> 16) + 1) >> 16)) << 32) | ((v70 - ((v70 * v49 + ((v70 * v49) >> 16) + 1) >> 16)) << 48) | ((v74 - ((v74 * v49 + ((v74 * v49) >> 16) + 1) >> 16)) << 16) | (v71 - ((v71 * v49 + ((v71 * v49) >> 16) + 1) >> 16));
              }

              *(v55 + v65 + 8) = v72;
            }

            v65 += 16;
            v66 += 5;
            ++v64;
          }

          while (v39 != v64);
        }
      }

      else if (v533 == 0xFFFF)
      {
        v105 = 0;
        v106 = (v55 + 8);
        do
        {
          if (v56[v105])
          {
            v107 = *(v62 + 8 * v105);
            *(v106 - 1) = (0x10100000000 * BYTE1(v107)) | (0x101000000000000 * v107) | v107 & 0xFF0000 | (BYTE2(v107) << 24) | BYTE3(v107) | (BYTE3(v107) << 8);
            *v106 = BYTE4(v107) | (WORD2(v107) << 8);
          }

          ++v105;
          v106 += 8;
        }

        while (v39 != v105);
      }

      else
      {
        v83 = 0;
        v84 = (v55 + 8);
        do
        {
          if (v56[v83])
          {
            v85 = v62 + 8 * v83;
            v86 = *(v85 + 4);
            LODWORD(v85) = *v85;
            v87 = BYTE3(v85) | (BYTE3(v85) << 8);
            v88 = BYTE2(v85) | (BYTE2(v85) << 8);
            v89 = BYTE1(v85) | (BYTE1(v85) << 8);
            LODWORD(v85) = v85 | (v85 << 8);
            *(v84 - 1) = ((v85 - ((v85 * v49 + ((v85 * v49) >> 16) + 1) >> 16)) << 48) | ((v89 - ((v89 * v49 + ((v89 * v49) >> 16) + 1) >> 16)) << 32) | ((v88 - ((v88 * v49 + ((v88 * v49) >> 16) + 1) >> 16)) << 16) | (v87 - ((v87 * v49 + ((v87 * v49) >> 16) + 1) >> 16));
            *v84 = (v86 | (v86 << 8)) - (((v86 | (v86 << 8)) * v49 + (((v86 | (v86 << 8)) * v49) >> 16) + 1) >> 16);
          }

          ++v83;
          v84 += 8;
        }

        while (v39 != v83);
      }
    }

    switch(v37)
    {
      case 0:
        v108 = v43 != 0;
        if (!v541)
        {
          v462 = v39;
          v463 = v43;
          do
          {
            v464 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v464 = ((*v463 * v464 + ((*v463 * v464) >> 8) + 1) >> 8);
              }

              if (v464)
              {
                if (v464 == 255)
                {
                  *v33 = 0;
                }

                else
                {
                  cmyk64_DM(v33, *v33, (v464 | (v464 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v56;
            v463 += v108;
            ++v33;
            --v462;
          }

          while (v462);
          v43 = &v463[v529];
          v33 += v530;
          v29 += v532;
          v37 = v531;
          goto LABEL_515;
        }

        v109 = v39;
        v110 = v43;
        do
        {
          v111 = *v56;
          if (*v56)
          {
            if (v43)
            {
              v111 = ((*v110 * v111 + ((*v110 * v111) >> 8) + 1) >> 8);
            }

            if (v111)
            {
              if (v111 == 255)
              {
                LOWORD(v112) = 0;
                *v33 = 0;
              }

              else
              {
                v113 = *v29;
                v114 = v111 | (v111 << 8);
                v115 = vdup_n_s32(v114);
                v116 = vmul_s32(vand_s8(*v33, 0xFFFF0000FFFFLL), v115);
                v117.i32[0] = HIWORD(v33->u32[0]);
                v117.i32[1] = HIWORD(*v33);
                v118 = vmul_s32(v117, v115);
                *v33 = vsli_n_s32(vsub_s32(*v33, vshr_n_u32(vadd_s32(vsra_n_u32(v116, v116, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v117, vshr_n_u32(vadd_s32(vsra_n_u32(v118, v118, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v112 = v113 - ((v114 * v113 + ((v114 * v113) >> 16) + 1) >> 16);
              }

              *v29 = v112;
            }
          }

          ++v56;
          v110 += v108;
          ++v33;
          ++v29;
          --v109;
        }

        while (v109);
        v43 = &v110[v529];
        v33 += v530;
        v29 += v532;
        goto LABEL_516;
      case 1:
        v272 = *v56;
        if (v541)
        {
          v273 = 0;
          v274 = (v55 + 8);
          v275 = v56 + 1;
          if (v43)
          {
            v276 = v29;
            v277 = v33;
            do
            {
              v278 = v277;
              v279 = v276;
              if (v272)
              {
                v280 = v43[v273] * v272 + ((v43[v273] * v272) >> 8) + 1;
                if (BYTE1(v280))
                {
                  if (BYTE1(v280) == 255)
                  {
                    v33[v273] = *(v274 - 4);
                    v29[v273] = *v274;
                  }

                  else
                  {
                    cmyk64_DAMplusDAM(v277, v276, *(v274 - 1), *v274, (257 * (v280 >> 8)), *&v33[v273], v29[v273], ~(257 * (v280 >> 8)));
                  }
                }
              }

              v272 = v275[v273];
              v277 = v278 + 2;
              v276 = v279 + 1;
              ++v273;
              v274 += 8;
            }

            while (v540 != v273);
            v43 += v273 + v529;
          }

          else
          {
            v491 = v29;
            v492 = v33;
            do
            {
              if (v272)
              {
                if (v272 == 255)
                {
                  v33[v273] = *(v274 - 4);
                  v29[v273] = *v274;
                }

                else
                {
                  cmyk64_DAMplusDAM(v492, v491, *(v274 - 1), *v274, v272 | (v272 << 8), *&v33[v273], v29[v273], (v272 | (v272 << 8)) ^ 0xFFFF);
                }
              }

              v272 = v275[v273];
              v492 += 2;
              ++v491;
              ++v273;
              v274 += 8;
            }

            while (v540 != v273);
            v43 = 0;
            v279 = v491 - 1;
            v278 = v492 - 2;
          }

          v37 = v531;
          v489 = &v279[v532];
          v490 = &v278[2 * v530];
          goto LABEL_540;
        }

        v465 = v56 + 1;
        if (v43)
        {
          v466 = v540;
          do
          {
            if (v272)
            {
              v467 = *v43 * v272 + ((*v43 * v272) >> 8) + 1;
              v468 = v526;
              if (v526 >= v33)
              {
                v468 = v33;
              }

              if (v468 >= *(v528 + 40))
              {
                v443 = v468;
              }

              else
              {
                v443 = *(v528 + 40);
              }

              if (BYTE1(v467))
              {
                if (BYTE1(v467) == 255)
                {
                  *v443 = *v55;
                }

                else
                {
                  cmyk64_DMplusDM(v443, *v55, (257 * (v467 >> 8)), *v443, ~(257 * (v467 >> 8)));
                }
              }
            }

            else
            {
              v443 = v33;
            }

            v469 = *v465++;
            v272 = v469;
            v55 += 16;
            ++v43;
            v33 = (v443 + 2);
            --v466;
          }

          while (v466);
          v43 += v529;
        }

        else
        {
          v509 = v540;
          v510 = v528;
          do
          {
            v511 = v526;
            if (v526 >= v33)
            {
              v511 = v33;
            }

            if (v511 >= *(v510 + 40))
            {
              v443 = v511;
            }

            else
            {
              v443 = *(v510 + 40);
            }

            if (v272)
            {
              if (v272 == 255)
              {
                *v443 = *v55;
              }

              else
              {
                cmyk64_DMplusDM(v443, *v55, v272 | (v272 << 8), *v443, (v272 | (v272 << 8)) ^ 0xFFFF);
              }
            }

            v512 = *v465++;
            v272 = v512;
            v55 += 16;
            v33 = (v443 + 2);
            --v509;
          }

          while (v509);
          v43 = 0;
        }

        goto LABEL_565;
      case 2:
        v222 = *v56;
        if (v541)
        {
          v223 = 0;
          if (v43)
          {
            v224 = v56 + 1;
            v225 = v29;
            v226 = v33;
            v519 = v56 + 1;
            while (1)
            {
              v227 = v226;
              v228 = v225;
              if (!v222)
              {
                goto LABEL_237;
              }

              v229 = v43[v223] * v222 + ((v43[v223] * v222) >> 8) + 1;
              if (!BYTE1(v229))
              {
                goto LABEL_237;
              }

              if (BYTE1(v229) == 255)
              {
                v230 = *(v55 + 8);
                if (*(v55 + 8))
                {
                  if (v230 != 0xFFFF)
                  {
                    v241 = *v55;
                    v239 = v33[v223];
                    v240 = v29[v223];
                    v242 = v230 ^ 0xFFFF;
                    goto LABEL_236;
                  }

                  v33[v223] = *v55;
                  v29[v223] = -1;
                }
              }

              else
              {
                v231 = *(v55 + 8);
                v232 = (257 * (v229 >> 8)) ^ 0xFFFF;
                if (v231 != (v232 * v231 + ((v232 * v231) >> 16) + 1) >> 16)
                {
                  v233 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v55), xmmword_18439CB80));
                  v234.i32[1] = v233.i32[1];
                  v234.i32[0] = v233.u16[0];
                  v235 = vmul_s32(v234, vdup_n_s32(v232));
                  v236 = vand_s8(vsub_s32(v233, vshr_n_u32(vadd_s32(vsra_n_u32(v235, v235, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v237.i64[0] = v236.u32[0];
                  v237.i64[1] = v236.u32[1];
                  v238 = vshlq_u64(v237, xmmword_18439CB70);
                  v239 = v33[v223];
                  v240 = v29[v223];
                  v241 = vorrq_s8(v238, vdupq_laneq_s64(v238, 1)).u64[0] | ((WORD1(*v55) - ((WORD1(*v55) * v232 + ((WORD1(*v55) * v232) >> 16) + 1) >> 16)) << 16) | (*v55 - ((*v55 * v232 + ((*v55 * v232) >> 16) + 1) >> 16));
                  LOWORD(v230) = v231 - ((v232 * v231 + ((v232 * v231) >> 16) + 1) >> 16);
                  v242 = ~v230;
LABEL_236:
                  cmyk64_DAplusDAM(v227, v228, v241, v230, v239, v240, v242);
                  v224 = v519;
                }
              }

LABEL_237:
              v222 = v224[v223];
              v55 += 16;
              v226 = v227 + 1;
              v225 = v228 + 1;
              if (v540 == ++v223)
              {
                v43 += v223 + v529;
LABEL_531:
                v489 = &v228[v532];
                v490 = &v227[v530];
LABEL_540:
                v33 = v490 + 1;
                v29 = v489 + 1;
LABEL_514:
                v38 = v534;
LABEL_515:
                v39 = v540;
LABEL_516:
                if (v537 == 1)
                {
                  v40 = v535;
                  if (v535)
                  {
LABEL_568:
                    free(v40);
                  }

                  goto LABEL_569;
                }

                --v537;
                v51 = 0;
                LODWORD(v536) = v536 + 1;
                v52 = *(v38 + 128) + v539;
                v53 = *(v38 + 136) + v538;
                if (v535)
                {
                  v538 += *(v38 + 136);
                  v539 = v52;
                  v47 = v527;
                  v40 = v535;
                  v41 = v536;
LABEL_572:
                  v513 = v532 + v47;
                  while (1)
                  {
                    while (1)
                    {
                      v514 = *(v43 - 4);
                      v515 = v514 - v41;
                      if (v514 <= v41)
                      {
                        break;
                      }

                      v537 -= v515;
                      if (v537 < 1)
                      {
                        goto LABEL_568;
                      }

                      v516 = v539 + *(v38 + 128) * v515;
                      v538 += *(v38 + 136) * v515;
                      v539 = v516;
                      v33 += v520 * v515;
                      v517 = v513 * v515;
                      if (!v541)
                      {
                        v517 = 0;
                      }

                      v29 += v517;
                      v41 = v514;
                    }

                    if (v41 < *(v43 - 3) + v514)
                    {
                      break;
                    }

                    if (!shape_enum_clip_scan(v40, v43 - 4))
                    {
                      goto LABEL_568;
                    }
                  }

                  v30 = v527;
                  v31 = v522;
                  v32 = v521;
                  goto LABEL_21;
                }

                goto LABEL_22;
              }
            }
          }

          v473 = v56 + 1;
          v474 = v29;
          v475 = v33;
          while (1)
          {
            if (v222)
            {
              if (v222 == 255)
              {
                v476 = *(v55 + 8);
                if (*(v55 + 8))
                {
                  if (v476 != 0xFFFF)
                  {
                    v487 = *v55;
                    v485 = v33[v223];
                    v486 = v29[v223];
                    v488 = v476 ^ 0xFFFF;
                    goto LABEL_528;
                  }

                  v33[v223] = *v55;
                  v29[v223] = -1;
                }
              }

              else
              {
                v477 = *(v55 + 8);
                v478 = (257 * v222) ^ 0xFFFF;
                if (v477 != (v478 * v477 + ((v478 * v477) >> 16) + 1) >> 16)
                {
                  v479 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v55), xmmword_18439CB80));
                  v480.i32[1] = v479.i32[1];
                  v480.i32[0] = v479.u16[0];
                  v481 = vmul_s32(v480, vdup_n_s32(v478));
                  v482 = vand_s8(vsub_s32(v479, vshr_n_u32(vadd_s32(vsra_n_u32(v481, v481, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v483.i64[0] = v482.u32[0];
                  v483.i64[1] = v482.u32[1];
                  v484 = vshlq_u64(v483, xmmword_18439CB70);
                  v485 = v33[v223];
                  v486 = v29[v223];
                  v487 = vorrq_s8(v484, vdupq_laneq_s64(v484, 1)).u64[0] | ((WORD1(*v55) - ((WORD1(*v55) * v478 + ((WORD1(*v55) * v478) >> 16) + 1) >> 16)) << 16) | (*v55 - ((*v55 * v478 + ((*v55 * v478) >> 16) + 1) >> 16));
                  LOWORD(v476) = v477 - ((v478 * v477 + ((v478 * v477) >> 16) + 1) >> 16);
                  v488 = ~v476;
LABEL_528:
                  cmyk64_DAplusDAM(v475, v474, v487, v476, v485, v486, v488);
                }
              }
            }

            v222 = v473[v223];
            v55 += 16;
            ++v475;
            ++v474;
            if (v540 == ++v223)
            {
              v43 = 0;
              v228 = v474 - 1;
              v227 = v475 - 1;
              v37 = v531;
              goto LABEL_531;
            }
          }
        }

        if (v43)
        {
          v440 = 0;
          v441 = v56 + 1;
          v442 = v33;
          while (1)
          {
            v443 = v442;
            if (!v222)
            {
              goto LABEL_466;
            }

            v444 = v43[v440] * v222 + ((v43[v440] * v222) >> 8) + 1;
            if (!BYTE1(v444))
            {
              goto LABEL_466;
            }

            if (BYTE1(v444) == 255)
            {
              v445 = *(v55 + 8);
              if (*(v55 + 8))
              {
                if (v445 != 0xFFFF)
                {
                  v457 = *v55;
                  v456 = v33[v440];
                  v458 = v445 ^ 0xFFFF;
                  goto LABEL_465;
                }

                v33[v440] = *v55;
              }
            }

            else
            {
              v446 = v444 >> 8;
              v447 = *(v55 + 8);
              v448 = (257 * v446) ^ 0xFFFF;
              v449 = v448 * v447 + ((v448 * v447) >> 16) + 1;
              if (v447 != HIWORD(v449))
              {
                v450 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v55), xmmword_18439CB80));
                v451.i32[1] = v450.i32[1];
                v451.i32[0] = v450.u16[0];
                v452 = vmul_s32(v451, vdup_n_s32(v448));
                v453 = vand_s8(vsub_s32(v450, vshr_n_u32(vadd_s32(vsra_n_u32(v452, v452, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v454.i64[0] = v453.u32[0];
                v454.i64[1] = v453.u32[1];
                v455 = vshlq_u64(v454, xmmword_18439CB70);
                v456 = v33[v440];
                v457 = vorrq_s8(v455, vdupq_laneq_s64(v455, 1)).u64[0] | ((WORD1(*v55) - ((WORD1(*v55) * v448 + ((WORD1(*v55) * v448) >> 16) + 1) >> 16)) << 16) | (*v55 - ((*v55 * v448 + ((*v55 * v448) >> 16) + 1) >> 16));
                v458 = (~v447 + HIWORD(v449));
LABEL_465:
                cmyk64_DplusDM(v443, v457, v456, v458);
              }
            }

LABEL_466:
            v222 = v441[v440];
            v55 += 16;
            v442 = (v443 + 2);
            if (v540 == ++v440)
            {
              v43 += v440 + v529;
LABEL_565:
              v37 = v531;
              goto LABEL_566;
            }
          }
        }

        v493 = v56 + 1;
        v494 = v540;
        while (1)
        {
          if (v222)
          {
            if (v222 == 255)
            {
              v495 = *(v55 + 8);
              if (*(v55 + 8))
              {
                if (v495 != 0xFFFF)
                {
                  v506 = *v55;
                  v505 = *v33;
                  v507 = v495 ^ 0xFFFF;
                  goto LABEL_550;
                }

                *v33 = *v55;
              }
            }

            else
            {
              v496 = *(v55 + 8);
              v497 = (257 * v222) ^ 0xFFFF;
              v498 = v497 * v496 + ((v497 * v496) >> 16) + 1;
              if (v496 != HIWORD(v498))
              {
                v499 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v55), xmmword_18439CB80));
                v500.i32[1] = v499.i32[1];
                v500.i32[0] = v499.u16[0];
                v501 = vmul_s32(v500, vdup_n_s32(v497));
                v502 = vand_s8(vsub_s32(v499, vshr_n_u32(vadd_s32(vsra_n_u32(v501, v501, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v503.i64[0] = v502.u32[0];
                v503.i64[1] = v502.u32[1];
                v504 = vshlq_u64(v503, xmmword_18439CB70);
                v505 = *v33;
                v506 = vorrq_s8(v504, vdupq_laneq_s64(v504, 1)).u64[0] | ((WORD1(*v55) - ((WORD1(*v55) * v497 + ((WORD1(*v55) * v497) >> 16) + 1) >> 16)) << 16) | (*v55 - ((*v55 * v497 + ((*v55 * v497) >> 16) + 1) >> 16));
                v507 = (~v496 + HIWORD(v498));
LABEL_550:
                cmyk64_DplusDM(v33, v506, v505, v507);
              }
            }
          }

          v508 = *v493++;
          v222 = v508;
          v55 += 16;
          ++v33;
          if (!--v494)
          {
            v43 = 0;
            v443 = &v33[-1];
LABEL_566:
            v33 = &v443[2 * v530 + 2];
            v29 += v532;
            goto LABEL_515;
          }
        }

      case 3:
        v253 = (v55 + 8);
        v254 = v39;
        v166 = v43;
        do
        {
          v255 = *v56;
          if (*v56)
          {
            if (v43)
            {
              v255 = ((*v166 * v255 + ((*v166 * v255) >> 8) + 1) >> 8);
            }

            if (v255)
            {
              if (v255 == 255)
              {
                v256 = *(v253 - 4);
                v257 = *v253;
                v258 = *v29 ^ 0xFFFF;
                v259 = vdup_n_s32(v258);
                v260 = vmul_s32(vand_s8(v256, 0xFFFF0000FFFFLL), v259);
                v261 = vmul_s32(__PAIR64__(HIWORD(*&v256), v256.u16[1]), v259);
                *v33 = vsli_n_s32(vsub_s32(v256, vshr_n_u32(vadd_s32(vsra_n_u32(v260, v260, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(HIWORD(*&v256), v256.u16[1]), vshr_n_u32(vadd_s32(vsra_n_u32(v261, v261, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                *v29 = v257 - ((v258 * v257 + ((v258 * v257) >> 16) + 1) >> 16);
              }

              else
              {
                cmyk64_DAMplusDAM(v33, v29, *(v253 - 1), *v253, (*v29 * (v255 | (v255 << 8)) + ((*v29 * (v255 | (v255 << 8))) >> 16) + 1) >> 16, *v33, *v29, (v255 | (v255 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v56;
          v166 += v43 != 0;
          ++v33;
          v253 += 8;
          v29 = (v29 + v50);
          --v254;
        }

        while (v254);
        goto LABEL_453;
      case 4:
        v164 = (v55 + 8);
        v165 = v39;
        v166 = v43;
        do
        {
          v167 = *v56;
          if (*v56)
          {
            if (v43)
            {
              v167 = ((*v166 * v167 + ((*v166 * v167) >> 8) + 1) >> 8);
            }

            if (v167)
            {
              if (v167 == 255)
              {
                v168 = *(v164 - 4);
                v169 = *v164;
                v170 = *v29;
                v171 = vdup_n_s32(v170);
                v172 = vmul_s32(vand_s8(v168, 0xFFFF0000FFFFLL), v171);
                v173 = vmul_s32(__PAIR64__(HIWORD(*&v168), v168.u16[1]), v171);
                *v33 = vsli_n_s32(vsub_s32(v168, vshr_n_u32(vadd_s32(vsra_n_u32(v172, v172, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(HIWORD(*&v168), v168.u16[1]), vshr_n_u32(vadd_s32(vsra_n_u32(v173, v173, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                *v29 = v169 - ((v170 * v169 + ((v170 * v169) >> 16) + 1) >> 16);
              }

              else
              {
                cmyk64_DAMplusDAM(v33, v29, *(v164 - 1), *v164, ((*v29 ^ 0xFFFF) * (v167 | (v167 << 8)) + (((*v29 ^ 0xFFFF) * (v167 | (v167 << 8))) >> 16) + 1) >> 16, *v33, *v29, (v167 | (v167 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v56;
          v166 += v43 != 0;
          ++v33;
          v164 += 8;
          v29 = (v29 + v50);
          --v165;
        }

        while (v165);
        goto LABEL_453;
      case 5:
        v301 = (v55 + 8);
        v302 = v39;
        v166 = v43;
        while (1)
        {
          v303 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_314;
            }

            v304 = *v166 * v303 + ((*v166 * v303) >> 8) + 1;
            if (v304 >= 0x100)
            {
              break;
            }
          }

LABEL_315:
          ++v56;
          v166 += v43 != 0;
          ++v33;
          v301 += 8;
          v29 = (v29 + v50);
          if (!--v302)
          {
            goto LABEL_453;
          }
        }

        v303 = v304 >> 8;
LABEL_314:
        v305 = *v301;
        v306 = *(v301 - 1);
        v307 = (v303 | (v303 << 8)) ^ 0xFFFF;
        v308 = v307 * v305 + ((v307 * v305) >> 16) + 1;
        v309 = vmovn_s64(vshlq_u64(vdupq_n_s64(v306), xmmword_18439CB80));
        v310.i32[1] = v309.i32[1];
        v310.i32[0] = v309.u16[0];
        v311 = vmul_s32(vdup_n_s32(v307), v310);
        v312 = vand_s8(vsub_s32(v309, vshr_n_u32(vadd_s32(vsra_n_u32(v311, v311, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v313.i64[0] = v312.u32[0];
        v313.i64[1] = v312.u32[1];
        v314 = vshlq_u64(v313, xmmword_18439CB70);
        cmyk64_DAMplusDAM(v33, v29, vorrq_s8(v314, vdupq_laneq_s64(v314, 1)).u64[0] | ((WORD1(v306) - ((WORD1(v306) * v307 + ((WORD1(v306) * v307) >> 16) + 1) >> 16)) << 16) | (v306 - ((v306 * v307 + ((v306 * v307) >> 16) + 1) >> 16)), (v305 - HIWORD(v308)), *v29, *v33, *v29, ~(v305 - HIWORD(v308)));
        goto LABEL_315;
      case 6:
        v335 = (v55 + 8);
        v336 = v39;
        v166 = v43;
        while (1)
        {
          v337 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_348;
            }

            v338 = *v166 * v337 + ((*v166 * v337) >> 8) + 1;
            if (v338 >= 0x100)
            {
              break;
            }
          }

LABEL_352:
          ++v56;
          v166 += v43 != 0;
          ++v33;
          v335 += 8;
          v29 = (v29 + v50);
          if (!--v336)
          {
            goto LABEL_453;
          }
        }

        v337 = v338 >> 8;
LABEL_348:
        if (*v29 != 0xFFFF)
        {
          if (~*v29 == 0xFFFF)
          {
            v339 = *(v335 - 4);
            v340 = *v335;
            v341 = (v337 | (v337 << 8)) ^ 0xFFFF;
            v342 = vdup_n_s32(v341);
            v343 = vmul_s32(vand_s8(v339, 0xFFFF0000FFFFLL), v342);
            v344 = vmul_s32(__PAIR64__(HIWORD(*&v339), v339.u16[1]), v342);
            *v33 = vsli_n_s32(vsub_s32(v339, vshr_n_u32(vadd_s32(vsra_n_u32(v343, v343, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(HIWORD(*&v339), v339.u16[1]), vshr_n_u32(vadd_s32(vsra_n_u32(v344, v344, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
            *v29 = v340 - ((v341 * v340 + ((v341 * v340) >> 16) + 1) >> 16);
          }

          else
          {
            cmyk64_DAplusDAM(v33, v29, *v33, *v29, *(v335 - 1), *v335, (257 * v337 * ~*v29 + ((257 * v337 * ~*v29) >> 16) + 1) >> 16);
          }
        }

        goto LABEL_352;
      case 7:
        v262 = v43 != 0;
        if (v541)
        {
          v263 = (v55 + 8);
          v264 = v39;
          v153 = v43;
          do
          {
            v265 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v265 = ((*v153 * v265 + ((*v153 * v265) >> 8) + 1) >> 8);
              }

              if (v265)
              {
                if (v265 == 255)
                {
                  v266 = *v29;
                  v267 = *v263 ^ 0xFFFF;
                  v268 = vdup_n_s32(v267);
                  v269 = vmul_s32(vand_s8(*v33, 0xFFFF0000FFFFLL), v268);
                  v270.i32[0] = HIWORD(v33->u32[0]);
                  v270.i32[1] = HIWORD(*v33);
                  v271 = vmul_s32(v270, v268);
                  *v33 = vsli_n_s32(vsub_s32(*v33, vshr_n_u32(vadd_s32(vsra_n_u32(v269, v269, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v270, vshr_n_u32(vadd_s32(vsra_n_u32(v271, v271, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                  *v29 = v266 - ((v267 * v266 + ((v267 * v266) >> 16) + 1) >> 16);
                }

                else
                {
                  cmyk64_DAMplusDAM(v33, v29, *v33, *v29, (*v263 * (v265 | (v265 << 8)) + ((*v263 * (v265 | (v265 << 8))) >> 16) + 1) >> 16, *v33, *v29, (v265 | (v265 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v56;
            v153 += v262;
            ++v33;
            ++v29;
            v263 += 8;
            --v264;
          }

          while (v264);
        }

        else
        {
          v459 = (v55 + 8);
          v460 = v39;
          v153 = v43;
          do
          {
            v461 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v461 = ((*v153 * v461 + ((*v153 * v461) >> 8) + 1) >> 8);
              }

              if (v461)
              {
                if (v461 == 255)
                {
                  cmyk64_DM(v33, *v33, *v459);
                }

                else
                {
                  cmyk64_DMplusDM(v33, *v33, (*v459 * (v461 | (v461 << 8)) + ((*v459 * (v461 | (v461 << 8))) >> 16) + 1) >> 16, *v33, (v461 | (v461 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v56;
            v153 += v262;
            ++v33;
            v459 += 8;
            --v460;
          }

          while (v460);
        }

        goto LABEL_512;
      case 8:
        v369 = v43 != 0;
        if (v541)
        {
          v370 = (v55 + 8);
          v371 = v39;
          v153 = v43;
          do
          {
            v372 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v372 = ((*v153 * v372 + ((*v153 * v372) >> 8) + 1) >> 8);
              }

              if (v372)
              {
                if (v372 == 255)
                {
                  v373 = *v29;
                  v374 = *v370;
                  v375 = vdup_n_s32(v374);
                  v376 = vmul_s32(vand_s8(*v33, 0xFFFF0000FFFFLL), v375);
                  v377.i32[0] = HIWORD(v33->u32[0]);
                  v377.i32[1] = HIWORD(*v33);
                  v378 = vmul_s32(v377, v375);
                  *v33 = vsli_n_s32(vsub_s32(*v33, vshr_n_u32(vadd_s32(vsra_n_u32(v376, v376, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v377, vshr_n_u32(vadd_s32(vsra_n_u32(v378, v378, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                  *v29 = v373 - ((v374 * v373 + ((v374 * v373) >> 16) + 1) >> 16);
                }

                else
                {
                  cmyk64_DAMplusDAM(v33, v29, *v33, *v29, ((*v370 ^ 0xFFFF) * (v372 | (v372 << 8)) + (((*v370 ^ 0xFFFF) * (v372 | (v372 << 8))) >> 16) + 1) >> 16, *v33, *v29, (v372 | (v372 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v56;
            v153 += v369;
            ++v33;
            ++v29;
            v370 += 8;
            --v371;
          }

          while (v371);
        }

        else
        {
          v470 = (v55 + 8);
          v471 = v39;
          v153 = v43;
          do
          {
            v472 = *v56;
            if (*v56)
            {
              if (v43)
              {
                v472 = ((*v153 * v472 + ((*v153 * v472) >> 8) + 1) >> 8);
              }

              if (v472)
              {
                if (v472 == 255)
                {
                  cmyk64_DM(v33, *v33, *v470 ^ 0xFFFF);
                }

                else
                {
                  cmyk64_DMplusDM(v33, *v33, ((*v470 ^ 0xFFFF) * (v472 | (v472 << 8)) + (((*v470 ^ 0xFFFF) * (v472 | (v472 << 8))) >> 16) + 1) >> 16, *v33, (v472 | (v472 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v56;
            v153 += v369;
            ++v33;
            v470 += 8;
            --v471;
          }

          while (v471);
        }

        goto LABEL_512;
      case 9:
        v187 = (v55 + 8);
        v188 = v39;
        v166 = v43;
        while (1)
        {
          v189 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_195;
            }

            v190 = *v166 * v189 + ((*v166 * v189) >> 8) + 1;
            if (v190 >= 0x100)
            {
              break;
            }
          }

LABEL_196:
          ++v56;
          v166 += v43 != 0;
          ++v33;
          v187 += 8;
          v29 = (v29 + v50);
          if (!--v188)
          {
            goto LABEL_453;
          }
        }

        v189 = v190 >> 8;
LABEL_195:
        v191 = *v187;
        v192 = *(v187 - 1);
        v193 = ~(v189 | (v189 << 8));
        v194 = v193;
        v195 = v191 * v194 + ((v191 * v194) >> 16) + 1;
        v196 = vmovn_s64(vshlq_u64(vdupq_n_s64(v192), xmmword_18439CB80));
        v197.i32[1] = v196.i32[1];
        v197.i32[0] = v196.u16[0];
        v198 = vmul_s32(v197, vdup_n_s32(v193));
        v199 = vand_s8(vsub_s32(v196, vshr_n_u32(vadd_s32(vsra_n_u32(v198, v198, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v200.i64[0] = v199.u32[0];
        v200.i64[1] = v199.u32[1];
        v201 = vshlq_u64(v200, xmmword_18439CB70);
        cmyk64_DAMplusDAM(v33, v29, vorrq_s8(v201, vdupq_laneq_s64(v201, 1)).u64[0] | ((WORD1(v192) - ((WORD1(v192) * v194 + ((WORD1(v192) * v194) >> 16) + 1) >> 16)) << 16) | (v192 - ((v192 * v193 + ((v192 * v193) >> 16) + 1) >> 16)), (v191 - HIWORD(v195)), *v29 ^ 0xFFFF, *v33, *v29, (v191 - HIWORD(v195) + v193));
        goto LABEL_196;
      case 10:
        v355 = (v55 + 8);
        v356 = v39;
        v166 = v43;
        while (1)
        {
          v357 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_372;
            }

            v358 = *v166 * v357 + ((*v166 * v357) >> 8) + 1;
            if (v358 >= 0x100)
            {
              break;
            }
          }

LABEL_373:
          ++v56;
          v166 += v43 != 0;
          ++v33;
          v355 += 8;
          v29 = (v29 + v50);
          if (!--v356)
          {
            goto LABEL_453;
          }
        }

        v357 = v358 >> 8;
LABEL_372:
        v359 = *v355;
        v360 = *(v355 - 1);
        v361 = (v357 | (v357 << 8)) ^ 0xFFFF;
        v362 = v361 * v359 + ((v361 * v359) >> 16) + 1;
        v363 = vmovn_s64(vshlq_u64(vdupq_n_s64(v360), xmmword_18439CB80));
        v364.i32[1] = v363.i32[1];
        v364.i32[0] = v363.u16[0];
        v365 = vmul_s32(vdup_n_s32(v361), v364);
        v366 = vand_s8(vsub_s32(v363, vshr_n_u32(vadd_s32(vsra_n_u32(v365, v365, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v367.i64[0] = v366.u32[0];
        v367.i64[1] = v366.u32[1];
        v368 = vshlq_u64(v367, xmmword_18439CB70);
        cmyk64_DAMplusDAM(v33, v29, vorrq_s8(v368, vdupq_laneq_s64(v368, 1)).u64[0] | ((WORD1(v360) - ((WORD1(v360) * v361 + ((WORD1(v360) * v361) >> 16) + 1) >> 16)) << 16) | (v360 - ((v360 * v361 + ((v360 * v361) >> 16) + 1) >> 16)), (v359 - HIWORD(v362)), *v29 ^ 0xFFFF, *v33, *v29, ~(v359 - HIWORD(v362)));
        goto LABEL_373;
      case 11:
        v150 = v43 != 0;
        if (v541)
        {
          v151 = (v55 + 8);
          v152 = v39;
          v153 = v43;
          while (1)
          {
            v154 = *v56;
            if (*v56)
            {
              if (!v43)
              {
                goto LABEL_168;
              }

              v155 = *v153 * v154 + ((*v153 * v154) >> 8) + 1;
              if (v155 >= 0x100)
              {
                break;
              }
            }

LABEL_169:
            ++v56;
            v153 += v150;
            ++v33;
            ++v29;
            v151 += 8;
            if (!--v152)
            {
              goto LABEL_512;
            }
          }

          v154 = v155 >> 8;
LABEL_168:
          v156 = *(v151 - 1);
          v157 = (v154 | (v154 << 8)) ^ 0xFFFF;
          v158 = vmovn_s64(vshlq_u64(vdupq_n_s64(v156), xmmword_18439CB80));
          v159.i32[1] = v158.i32[1];
          v159.i32[0] = v158.u16[0];
          v160 = vmul_s32(vdup_n_s32(v157), v159);
          v161 = vand_s8(vsub_s32(v158, vshr_n_u32(vadd_s32(vsra_n_u32(v160, v160, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v162.i64[0] = v161.u32[0];
          v162.i64[1] = v161.u32[1];
          v163 = vshlq_u64(v162, xmmword_18439CB70);
          cmyk64_DAplusdDA(v33, v29, *v33, *v29, vorrq_s8(v163, vdupq_laneq_s64(v163, 1)).u64[0] | ((WORD1(v156) - ((WORD1(v156) * v157 + ((WORD1(v156) * v157) >> 16) + 1) >> 16)) << 16) | (v156 - ((v156 * v157 + ((v156 * v157) >> 16) + 1) >> 16)), (*v151 - ((v157 * *v151 + ((v157 * *v151) >> 16) + 1) >> 16)));
          goto LABEL_169;
        }

        v419 = (v55 + 8);
        v420 = v39;
        v153 = v43;
        while (1)
        {
          v421 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_443;
            }

            v422 = *v153 * v421 + ((*v153 * v421) >> 8) + 1;
            if (v422 >= 0x100)
            {
              break;
            }
          }

LABEL_444:
          ++v56;
          v153 += v150;
          ++v33;
          v419 += 8;
          if (!--v420)
          {
LABEL_512:
            v43 = &v153[v529];
            goto LABEL_513;
          }
        }

        v421 = v422 >> 8;
LABEL_443:
        v423 = *(v419 - 1);
        v424 = (v421 | (v421 << 8)) ^ 0xFFFF;
        v425 = vmovn_s64(vshlq_u64(vdupq_n_s64(v423), xmmword_18439CB80));
        v426.i32[1] = v425.i32[1];
        v426.i32[0] = v425.u16[0];
        v427 = vmul_s32(vdup_n_s32(v424), v426);
        v428 = vand_s8(vsub_s32(v425, vshr_n_u32(vadd_s32(vsra_n_u32(v427, v427, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v429.i64[0] = v428.u32[0];
        v429.i64[1] = v428.u32[1];
        v430 = vshlq_u64(v429, xmmword_18439CB70);
        cmyk64_DplusdDA(v33, *v33, vorrq_s8(v430, vdupq_laneq_s64(v430, 1)).u64[0] | ((WORD1(v423) - ((WORD1(v423) * v424 + ((WORD1(v423) * v424) >> 16) + 1) >> 16)) << 16) | (v423 - ((v423 * v424 + ((v423 * v424) >> 16) + 1) >> 16)), (*v419 - ((v424 * *v419 + ((v424 * *v419) >> 16) + 1) >> 16)));
        goto LABEL_444;
      case 12:
        v174 = v43 != 0;
        if (v541)
        {
          v175 = (v55 + 8);
          v176 = v39;
          v153 = v43;
          while (1)
          {
            v177 = *v56;
            if (*v56)
            {
              if (!v43)
              {
                goto LABEL_187;
              }

              v178 = *v153 * v177 + ((*v153 * v177) >> 8) + 1;
              if (v178 >= 0x100)
              {
                break;
              }
            }

LABEL_188:
            ++v56;
            v153 += v174;
            ++v33;
            ++v29;
            v175 += 8;
            if (!--v176)
            {
              goto LABEL_512;
            }
          }

          v177 = v178 >> 8;
LABEL_187:
          v179 = *(v175 - 1);
          v180 = (v177 | (v177 << 8)) ^ 0xFFFF;
          v181 = vmovn_s64(vshlq_u64(vdupq_n_s64(v179), xmmword_18439CB80));
          v182.i32[1] = v181.i32[1];
          v182.i32[0] = v181.u16[0];
          v183 = vmul_s32(vdup_n_s32(v180), v182);
          v184 = vand_s8(vsub_s32(v181, vshr_n_u32(vadd_s32(vsra_n_u32(v183, v183, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v185.i64[0] = v184.u32[0];
          v185.i64[1] = v184.u32[1];
          v186 = vshlq_u64(v185, xmmword_18439CB70);
          cmyk64_DApluslDA(v33, v29, *v33, *v29, vorrq_s8(v186, vdupq_laneq_s64(v186, 1)).u64[0] | ((WORD1(v179) - ((WORD1(v179) * v180 + ((WORD1(v179) * v180) >> 16) + 1) >> 16)) << 16) | (v179 - ((v179 * v180 + ((v179 * v180) >> 16) + 1) >> 16)), (*v175 - ((v180 * *v175 + ((v180 * *v175) >> 16) + 1) >> 16)));
          goto LABEL_188;
        }

        v166 = v43;
        while (1)
        {
          v431 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_451;
            }

            v432 = *v166 * v431 + ((*v166 * v431) >> 8) + 1;
            if (v432 >= 0x100)
            {
              break;
            }
          }

LABEL_452:
          ++v56;
          v55 += 16;
          v166 += v174;
          ++v33;
          if (!--v39)
          {
            goto LABEL_453;
          }
        }

        v431 = v432 >> 8;
LABEL_451:
        v433 = (v431 | (v431 << 8)) ^ 0xFFFF;
        v434 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v55), xmmword_18439CB80));
        v435.i32[1] = v434.i32[1];
        v435.i32[0] = v434.u16[0];
        v436 = vmul_s32(vdup_n_s32(v433), v435);
        v437 = vand_s8(vsub_s32(v434, vshr_n_u32(vadd_s32(vsra_n_u32(v436, v436, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v438.i64[0] = v437.u32[0];
        v438.i64[1] = v437.u32[1];
        v439 = vshlq_u64(v438, xmmword_18439CB70);
        cmyk64_DpluslD(v33, *v33, vorrq_s8(v439, vdupq_laneq_s64(v439, 1)).u64[0] | ((WORD1(*v55) - ((WORD1(*v55) * v433 + ((WORD1(*v55) * v433) >> 16) + 1) >> 16)) << 16) | (*v55 - ((*v55 * v433 + ((*v55 * v433) >> 16) + 1) >> 16)));
        goto LABEL_452;
      case 13:
        v325 = (v55 + 8);
        v326 = v39;
        v121 = v43;
        while (1)
        {
          v327 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_335;
            }

            v328 = *v121 * v327 + ((*v121 * v327) >> 8) + 1;
            if (v328 >= 0x100)
            {
              break;
            }
          }

LABEL_341:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v325 += 8;
          v29 = (v29 + v50);
          if (!--v326)
          {
            goto LABEL_424;
          }
        }

        v327 = v328 >> 8;
LABEL_335:
        v329 = *v325;
        v330 = (v327 | (v327 << 8)) ^ 0xFFFF;
        v331 = v330 * v329 + ((v330 * v329) >> 16) + 1;
        v332 = v329 - HIWORD(v331);
        if (v329 != HIWORD(v331))
        {
          v333 = *(v325 - 1);
          v334 = ((HIWORD(v333) - ((v330 * HIWORD(v333) + ((v330 * HIWORD(v333)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v333) - ((WORD2(v333) * v330 + ((WORD2(v333) * v330) >> 16) + 1) >> 16)) << 32) | ((WORD1(v333) - ((WORD1(v333) * v330 + ((WORD1(v333) * v330) >> 16) + 1) >> 16)) << 16) | (v333 - ((v333 * v330 + ((v333 * v330) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v334 = PDAmultiplyPDA_11872(*v33, *v29, v334, v332);
            }

            *v33 = v334;
            *v29 = v332;
          }

          else
          {
            *v33 = PDAmultiplyPDA_11872(*v33, 0xFFFFu, v334, v332);
          }
        }

        goto LABEL_341;
      case 14:
        v140 = (v55 + 8);
        v141 = v39;
        v121 = v43;
        while (1)
        {
          v142 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_154;
            }

            v143 = *v121 * v142 + ((*v121 * v142) >> 8) + 1;
            if (v143 >= 0x100)
            {
              break;
            }
          }

LABEL_160:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v140 += 8;
          v29 = (v29 + v50);
          if (!--v141)
          {
            goto LABEL_424;
          }
        }

        v142 = v143 >> 8;
LABEL_154:
        v144 = *v140;
        v145 = (v142 | (v142 << 8)) ^ 0xFFFF;
        v146 = v145 * v144 + ((v145 * v144) >> 16) + 1;
        v147 = v144 - HIWORD(v146);
        if (v144 != HIWORD(v146))
        {
          v148 = *(v140 - 1);
          v149 = ((HIWORD(v148) - ((v145 * HIWORD(v148) + ((v145 * HIWORD(v148)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v148) - ((WORD2(v148) * v145 + ((WORD2(v148) * v145) >> 16) + 1) >> 16)) << 32) | ((WORD1(v148) - ((WORD1(v148) * v145 + ((WORD1(v148) * v145) >> 16) + 1) >> 16)) << 16) | (v148 - ((v148 * v145 + ((v148 * v145) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v149 = PDAscreenPDA_11873(*v33, *v29, v149, v147);
            }

            *v33 = v149;
            *v29 = v147;
          }

          else
          {
            *v33 = PDAscreenPDA_11873(*v33, 0xFFFFu, v149, v147);
          }
        }

        goto LABEL_160;
      case 15:
        v243 = (v55 + 8);
        v244 = v39;
        v121 = v43;
        while (1)
        {
          v245 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_244;
            }

            v246 = *v121 * v245 + ((*v121 * v245) >> 8) + 1;
            if (v246 >= 0x100)
            {
              break;
            }
          }

LABEL_250:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v243 += 8;
          v29 = (v29 + v50);
          if (!--v244)
          {
            goto LABEL_424;
          }
        }

        v245 = v246 >> 8;
LABEL_244:
        v247 = *v243;
        v248 = (v245 | (v245 << 8)) ^ 0xFFFF;
        v249 = v248 * v247 + ((v248 * v247) >> 16) + 1;
        v250 = v247 - HIWORD(v249);
        if (v247 != HIWORD(v249))
        {
          v251 = *(v243 - 1);
          v252 = ((HIWORD(v251) - ((v248 * HIWORD(v251) + ((v248 * HIWORD(v251)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v251) - ((WORD2(v251) * v248 + ((WORD2(v251) * v248) >> 16) + 1) >> 16)) << 32) | ((WORD1(v251) - ((WORD1(v251) * v248 + ((WORD1(v251) * v248) >> 16) + 1) >> 16)) << 16) | (v251 - ((v251 * v248 + ((v251 * v248) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v252 = PDAoverlayPDA_11874(*v33, *v29, v252, v250);
            }

            *v33 = v252;
            *v29 = v250;
          }

          else
          {
            *v33 = PDAoverlayPDA_11874(*v33, 0xFFFFu, v252, v250);
          }
        }

        goto LABEL_250;
      case 16:
        v130 = (v55 + 8);
        v131 = v39;
        v121 = v43;
        while (1)
        {
          v132 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_141;
            }

            v133 = *v121 * v132 + ((*v121 * v132) >> 8) + 1;
            if (v133 >= 0x100)
            {
              break;
            }
          }

LABEL_147:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v130 += 8;
          v29 = (v29 + v50);
          if (!--v131)
          {
            goto LABEL_424;
          }
        }

        v132 = v133 >> 8;
LABEL_141:
        v134 = *v130;
        v135 = (v132 | (v132 << 8)) ^ 0xFFFF;
        v136 = v135 * v134 + ((v135 * v134) >> 16) + 1;
        v137 = v134 - HIWORD(v136);
        if (v134 != HIWORD(v136))
        {
          v138 = *(v130 - 1);
          v139 = ((HIWORD(v138) - ((v135 * HIWORD(v138) + ((v135 * HIWORD(v138)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v138) - ((WORD2(v138) * v135 + ((WORD2(v138) * v135) >> 16) + 1) >> 16)) << 32) | ((WORD1(v138) - ((WORD1(v138) * v135 + ((WORD1(v138) * v135) >> 16) + 1) >> 16)) << 16) | (v138 - ((v138 * v135 + ((v138 * v135) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v139 = PDAdarkenPDA_11876(*v33, *v29, v139, v137);
            }

            *v33 = v139;
            *v29 = v137;
          }

          else
          {
            *v33 = PDAdarkenPDA_11876(*v33, 0xFFFFu, v139, v137);
          }
        }

        goto LABEL_147;
      case 17:
        v281 = (v55 + 8);
        v282 = v39;
        v121 = v43;
        while (1)
        {
          v283 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_288;
            }

            v284 = *v121 * v283 + ((*v121 * v283) >> 8) + 1;
            if (v284 >= 0x100)
            {
              break;
            }
          }

LABEL_294:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v281 += 8;
          v29 = (v29 + v50);
          if (!--v282)
          {
            goto LABEL_424;
          }
        }

        v283 = v284 >> 8;
LABEL_288:
        v285 = *v281;
        v286 = (v283 | (v283 << 8)) ^ 0xFFFF;
        v287 = v286 * v285 + ((v286 * v285) >> 16) + 1;
        v288 = v285 - HIWORD(v287);
        if (v285 != HIWORD(v287))
        {
          v289 = *(v281 - 1);
          v290 = ((HIWORD(v289) - ((v286 * HIWORD(v289) + ((v286 * HIWORD(v289)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v289) - ((WORD2(v289) * v286 + ((WORD2(v289) * v286) >> 16) + 1) >> 16)) << 32) | ((WORD1(v289) - ((WORD1(v289) * v286 + ((WORD1(v289) * v286) >> 16) + 1) >> 16)) << 16) | (v289 - ((v289 * v286 + ((v289 * v286) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v290 = PDAlightenPDA_11875(*v33, *v29, v290, v288);
            }

            *v33 = v290;
            *v29 = v288;
          }

          else
          {
            *v33 = PDAlightenPDA_11875(*v33, 0xFFFFu, v290, v288);
          }
        }

        goto LABEL_294;
      case 18:
        v345 = (v55 + 8);
        v346 = v39;
        v121 = v43;
        while (1)
        {
          v347 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_359;
            }

            v348 = *v121 * v347 + ((*v121 * v347) >> 8) + 1;
            if (v348 >= 0x100)
            {
              break;
            }
          }

LABEL_365:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v345 += 8;
          v29 = (v29 + v50);
          if (!--v346)
          {
            goto LABEL_424;
          }
        }

        v347 = v348 >> 8;
LABEL_359:
        v349 = *v345;
        v350 = (v347 | (v347 << 8)) ^ 0xFFFF;
        v351 = v350 * v349 + ((v350 * v349) >> 16) + 1;
        v352 = v349 - HIWORD(v351);
        if (v349 != HIWORD(v351))
        {
          v353 = *(v345 - 1);
          v354 = ((HIWORD(v353) - ((v350 * HIWORD(v353) + ((v350 * HIWORD(v353)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v353) - ((WORD2(v353) * v350 + ((WORD2(v353) * v350) >> 16) + 1) >> 16)) << 32) | ((WORD1(v353) - ((WORD1(v353) * v350 + ((WORD1(v353) * v350) >> 16) + 1) >> 16)) << 16) | (v353 - ((v353 * v350 + ((v353 * v350) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v354 = PDAcolordodgePDA_11877(*v33, *v29, v354, v352);
            }

            *v33 = v354;
            *v29 = v352;
          }

          else
          {
            *v33 = PDAcolordodgePDA_11877(*v33, 0xFFFFu, v354, v352);
          }
        }

        goto LABEL_365;
      case 19:
        v389 = (v55 + 8);
        v390 = v39;
        v121 = v43;
        while (1)
        {
          v391 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_404;
            }

            v392 = *v121 * v391 + ((*v121 * v391) >> 8) + 1;
            if (v392 >= 0x100)
            {
              break;
            }
          }

LABEL_410:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v389 += 8;
          v29 = (v29 + v50);
          if (!--v390)
          {
            goto LABEL_424;
          }
        }

        v391 = v392 >> 8;
LABEL_404:
        v393 = *v389;
        v394 = (v391 | (v391 << 8)) ^ 0xFFFF;
        v395 = v394 * v393 + ((v394 * v393) >> 16) + 1;
        v396 = v393 - HIWORD(v395);
        if (v393 != HIWORD(v395))
        {
          v397 = *(v389 - 1);
          v398 = ((HIWORD(v397) - ((v394 * HIWORD(v397) + ((v394 * HIWORD(v397)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v397) - ((WORD2(v397) * v394 + ((WORD2(v397) * v394) >> 16) + 1) >> 16)) << 32) | ((WORD1(v397) - ((WORD1(v397) * v394 + ((WORD1(v397) * v394) >> 16) + 1) >> 16)) << 16) | (v397 - ((v397 * v394 + ((v397 * v394) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v398 = PDAcolorburnPDA_11878(*v33, *v29, v398, v396);
            }

            *v33 = v398;
            *v29 = v396;
          }

          else
          {
            *v33 = PDAcolorburnPDA_11878(*v33, 0xFFFFu, v398, v396);
          }
        }

        goto LABEL_410;
      case 20:
        v291 = (v55 + 8);
        v292 = v39;
        v121 = v43;
        while (1)
        {
          v293 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_301;
            }

            v294 = *v121 * v293 + ((*v121 * v293) >> 8) + 1;
            if (v294 >= 0x100)
            {
              break;
            }
          }

LABEL_307:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v291 += 8;
          v29 = (v29 + v50);
          if (!--v292)
          {
            goto LABEL_424;
          }
        }

        v293 = v294 >> 8;
LABEL_301:
        v295 = *v291;
        v296 = (v293 | (v293 << 8)) ^ 0xFFFF;
        v297 = v296 * v295 + ((v296 * v295) >> 16) + 1;
        v298 = v295 - HIWORD(v297);
        if (v295 != HIWORD(v297))
        {
          v299 = *(v291 - 1);
          v300 = ((HIWORD(v299) - ((v296 * HIWORD(v299) + ((v296 * HIWORD(v299)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v299) - ((WORD2(v299) * v296 + ((WORD2(v299) * v296) >> 16) + 1) >> 16)) << 32) | ((WORD1(v299) - ((WORD1(v299) * v296 + ((WORD1(v299) * v296) >> 16) + 1) >> 16)) << 16) | (v299 - ((v299 * v296 + ((v299 * v296) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v300 = PDAsoftlightPDA_11880(*v33, *v29, v300, v298);
            }

            *v33 = v300;
            *v29 = v298;
          }

          else
          {
            *v33 = PDAsoftlightPDA_11880(*v33, 0xFFFFu, v300, v298);
          }
        }

        goto LABEL_307;
      case 21:
        v315 = (v55 + 8);
        v316 = v39;
        v121 = v43;
        while (1)
        {
          v317 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_322;
            }

            v318 = *v121 * v317 + ((*v121 * v317) >> 8) + 1;
            if (v318 >= 0x100)
            {
              break;
            }
          }

LABEL_328:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v315 += 8;
          v29 = (v29 + v50);
          if (!--v316)
          {
            goto LABEL_424;
          }
        }

        v317 = v318 >> 8;
LABEL_322:
        v319 = *v315;
        v320 = (v317 | (v317 << 8)) ^ 0xFFFF;
        v321 = v320 * v319 + ((v320 * v319) >> 16) + 1;
        v322 = v319 - HIWORD(v321);
        if (v319 != HIWORD(v321))
        {
          v323 = *(v315 - 1);
          v324 = ((HIWORD(v323) - ((v320 * HIWORD(v323) + ((v320 * HIWORD(v323)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v323) - ((WORD2(v323) * v320 + ((WORD2(v323) * v320) >> 16) + 1) >> 16)) << 32) | ((WORD1(v323) - ((WORD1(v323) * v320 + ((WORD1(v323) * v320) >> 16) + 1) >> 16)) << 16) | (v323 - ((v323 * v320 + ((v323 * v320) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v324 = PDAhardlightPDA_11879(*v33, *v29, v324, v322);
            }

            *v33 = v324;
            *v29 = v322;
          }

          else
          {
            *v33 = PDAhardlightPDA_11879(*v33, 0xFFFFu, v324, v322);
          }
        }

        goto LABEL_328;
      case 22:
        v379 = (v55 + 8);
        v380 = v39;
        v121 = v43;
        while (1)
        {
          v381 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_391;
            }

            v382 = *v121 * v381 + ((*v121 * v381) >> 8) + 1;
            if (v382 >= 0x100)
            {
              break;
            }
          }

LABEL_397:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v379 += 8;
          v29 = (v29 + v50);
          if (!--v380)
          {
            goto LABEL_424;
          }
        }

        v381 = v382 >> 8;
LABEL_391:
        v383 = *v379;
        v384 = (v381 | (v381 << 8)) ^ 0xFFFF;
        v385 = v384 * v383 + ((v384 * v383) >> 16) + 1;
        v386 = v383 - HIWORD(v385);
        if (v383 != HIWORD(v385))
        {
          v387 = *(v379 - 1);
          v388 = ((HIWORD(v387) - ((v384 * HIWORD(v387) + ((v384 * HIWORD(v387)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v387) - ((WORD2(v387) * v384 + ((WORD2(v387) * v384) >> 16) + 1) >> 16)) << 32) | ((WORD1(v387) - ((WORD1(v387) * v384 + ((WORD1(v387) * v384) >> 16) + 1) >> 16)) << 16) | (v387 - ((v387 * v384 + ((v387 * v384) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v388 = PDAdifferencePDA_11881(*v33, *v29, v388, v386);
            }

            *v33 = v388;
            *v29 = v386;
          }

          else
          {
            *v33 = PDAdifferencePDA_11881(*v33, 0xFFFFu, v388, v386);
          }
        }

        goto LABEL_397;
      case 23:
        v399 = (v55 + 8);
        v400 = v39;
        v121 = v43;
        while (1)
        {
          v401 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_417;
            }

            v402 = *v121 * v401 + ((*v121 * v401) >> 8) + 1;
            if (v402 >= 0x100)
            {
              break;
            }
          }

LABEL_423:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v399 += 8;
          v29 = (v29 + v50);
          if (!--v400)
          {
            goto LABEL_424;
          }
        }

        v401 = v402 >> 8;
LABEL_417:
        v403 = *v399;
        v404 = (v401 | (v401 << 8)) ^ 0xFFFF;
        v405 = v404 * v403 + ((v404 * v403) >> 16) + 1;
        v406 = v403 - HIWORD(v405);
        if (v403 != HIWORD(v405))
        {
          v407 = *(v399 - 1);
          v408 = ((HIWORD(v407) - ((v404 * HIWORD(v407) + ((v404 * HIWORD(v407)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v407) - ((WORD2(v407) * v404 + ((WORD2(v407) * v404) >> 16) + 1) >> 16)) << 32) | ((WORD1(v407) - ((WORD1(v407) * v404 + ((WORD1(v407) * v404) >> 16) + 1) >> 16)) << 16) | (v407 - ((v407 * v404 + ((v407 * v404) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v408 = PDAexclusionPDA_11882(*v33, *v29, v408, v406);
            }

            *v33 = v408;
            *v29 = v406;
          }

          else
          {
            *v33 = PDAexclusionPDA_11882(*v33, 0xFFFFu, v408, v406);
          }
        }

        goto LABEL_423;
      case 24:
        v212 = (v55 + 8);
        v213 = v39;
        v121 = v43;
        while (1)
        {
          v214 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_216;
            }

            v215 = *v121 * v214 + ((*v121 * v214) >> 8) + 1;
            if (v215 >= 0x100)
            {
              break;
            }
          }

LABEL_222:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v212 += 8;
          v29 = (v29 + v50);
          if (!--v213)
          {
            goto LABEL_424;
          }
        }

        v214 = v215 >> 8;
LABEL_216:
        v216 = *v212;
        v217 = (v214 | (v214 << 8)) ^ 0xFFFF;
        v218 = v217 * v216 + ((v217 * v216) >> 16) + 1;
        v219 = v216 - HIWORD(v218);
        if (v216 != HIWORD(v218))
        {
          v220 = *(v212 - 1);
          v221 = ((HIWORD(v220) - ((v217 * HIWORD(v220) + ((v217 * HIWORD(v220)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v220) - ((WORD2(v220) * v217 + ((WORD2(v220) * v217) >> 16) + 1) >> 16)) << 32) | ((WORD1(v220) - ((WORD1(v220) * v217 + ((WORD1(v220) * v217) >> 16) + 1) >> 16)) << 16) | (v220 - ((v220 * v217 + ((v220 * v217) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v221 = PDAhuePDA_11883(*v33, *v29, v221, v219);
            }

            *v33 = v221;
            *v29 = v219;
          }

          else
          {
            *v33 = PDAhuePDA_11883(*v33, 0xFFFFu, v221, v219);
          }
        }

        goto LABEL_222;
      case 25:
        v202 = (v55 + 8);
        v203 = v39;
        v121 = v43;
        while (1)
        {
          v204 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_203;
            }

            v205 = *v121 * v204 + ((*v121 * v204) >> 8) + 1;
            if (v205 >= 0x100)
            {
              break;
            }
          }

LABEL_209:
          ++v56;
          v121 += v43 != 0;
          ++v33;
          v202 += 8;
          v29 = (v29 + v50);
          if (!--v203)
          {
            goto LABEL_424;
          }
        }

        v204 = v205 >> 8;
LABEL_203:
        v206 = *v202;
        v207 = (v204 | (v204 << 8)) ^ 0xFFFF;
        v208 = v207 * v206 + ((v207 * v206) >> 16) + 1;
        v209 = v206 - HIWORD(v208);
        if (v206 != HIWORD(v208))
        {
          v210 = *(v202 - 1);
          v211 = ((HIWORD(v210) - ((v207 * HIWORD(v210) + ((v207 * HIWORD(v210)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v210) - ((WORD2(v210) * v207 + ((WORD2(v210) * v207) >> 16) + 1) >> 16)) << 32) | ((WORD1(v210) - ((WORD1(v210) * v207 + ((WORD1(v210) * v207) >> 16) + 1) >> 16)) << 16) | (v210 - ((v210 * v207 + ((v210 * v207) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v211 = PDAsaturationPDA_11884(*v33, *v29, v211, v209);
            }

            *v33 = v211;
            *v29 = v209;
          }

          else
          {
            *v33 = PDAsaturationPDA_11884(*v33, 0xFFFFu, v211, v209);
          }
        }

        goto LABEL_209;
      case 26:
        v409 = (v55 + 8);
        v410 = v39;
        v166 = v43;
        while (1)
        {
          v411 = *v56;
          if (*v56)
          {
            if (!v43)
            {
              goto LABEL_430;
            }

            v412 = *v166 * v411 + ((*v166 * v411) >> 8) + 1;
            if (v412 >= 0x100)
            {
              break;
            }
          }

LABEL_436:
          ++v56;
          v166 += v43 != 0;
          ++v33;
          v409 += 8;
          v29 = (v29 + v50);
          if (!--v410)
          {
LABEL_453:
            v43 = &v166[v529];
            goto LABEL_513;
          }
        }

        v411 = v412 >> 8;
LABEL_430:
        v413 = *v409;
        v414 = (v411 | (v411 << 8)) ^ 0xFFFF;
        v415 = v414 * v413 + ((v414 * v413) >> 16) + 1;
        v416 = v413 - HIWORD(v415);
        if (v413 != HIWORD(v415))
        {
          v417 = *(v409 - 1);
          v418 = ((HIWORD(v417) - ((v414 * HIWORD(v417) + ((v414 * HIWORD(v417)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v417) - ((WORD2(v417) * v414 + ((WORD2(v417) * v414) >> 16) + 1) >> 16)) << 32) | ((WORD1(v417) - ((WORD1(v417) * v414 + ((WORD1(v417) * v414) >> 16) + 1) >> 16)) << 16) | (v417 - ((v417 * v414 + ((v417 * v414) >> 16) + 1) >> 16));
          if (v541)
          {
            if (*v29)
            {
              v418 = PDAluminosityPDA_11885(v418, v416, *v33, *v29);
            }

            *v33 = v418;
            *v29 = v416;
          }

          else
          {
            *v33 = PDAluminosityPDA_11885(v418, v416, *v33, 0xFFFFu);
          }
        }

        goto LABEL_436;
      case 27:
        v119 = (v55 + 8);
        v120 = v39;
        v121 = v43;
        break;
      default:
        goto LABEL_516;
    }

    while (1)
    {
      v122 = *v56;
      if (*v56)
      {
        if (!v43)
        {
          goto LABEL_128;
        }

        v123 = *v121 * v122 + ((*v121 * v122) >> 8) + 1;
        if (v123 >= 0x100)
        {
          break;
        }
      }

LABEL_134:
      ++v56;
      v121 += v43 != 0;
      ++v33;
      v119 += 8;
      v29 = (v29 + v50);
      if (!--v120)
      {
LABEL_424:
        v43 = &v121[v529];
LABEL_513:
        v33 += v530;
        v29 += v532;
        v37 = v531;
        goto LABEL_514;
      }
    }

    v122 = v123 >> 8;
LABEL_128:
    v124 = *v119;
    v125 = (v122 | (v122 << 8)) ^ 0xFFFF;
    v126 = v125 * v124 + ((v125 * v124) >> 16) + 1;
    v127 = v124 - HIWORD(v126);
    if (v124 != HIWORD(v126))
    {
      v128 = *(v119 - 1);
      v129 = ((HIWORD(v128) - ((v125 * HIWORD(v128) + ((v125 * HIWORD(v128)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v128) - ((WORD2(v128) * v125 + ((WORD2(v128) * v125) >> 16) + 1) >> 16)) << 32) | ((WORD1(v128) - ((WORD1(v128) * v125 + ((WORD1(v128) * v125) >> 16) + 1) >> 16)) << 16) | (v128 - ((v128 * v125 + ((v128 * v125) >> 16) + 1) >> 16));
      if (v541)
      {
        if (*v29)
        {
          v129 = PDAluminosityPDA_11885(*v33, *v29, v129, v127);
        }

        *v33 = v129;
        *v29 = v127;
      }

      else
      {
        *v33 = PDAluminosityPDA_11885(*v33, 0xFFFFu, v129, v127);
      }
    }

    goto LABEL_134;
  }
}

int *cmyk64_DM(int *result, unint64_t a2, int a3)
{
  *result = (a2 - ((a2 * (a3 ^ 0xFFFF) + ((a2 * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) | ((WORD1(a2) - ((WORD1(a2) * (a3 ^ 0xFFFF) + ((WORD1(a2) * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 16);
  result[1] = (WORD2(a2) - ((WORD2(a2) * (a3 ^ 0xFFFF) + ((WORD2(a2) * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) | ((HIWORD(a2) - ((HIWORD(a2) * (a3 ^ 0xFFFFu) + ((HIWORD(a2) * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 16);
  return result;
}

unsigned int *cmyk64_DAMplusDAM(unsigned int *result, _WORD *a2, unint64_t a3, int a4, int a5, unint64_t a6, int a7, int a8)
{
  v8 = WORD1(a3) * a5 + WORD1(a6) * a8;
  v9 = WORD2(a3) * a5 + WORD2(a6) * a8;
  v10 = a5 * HIWORD(a3) + a8 * HIWORD(a6);
  *result = (v8 + HIWORD(v8) + 1) & 0xFFFF0000 | ((a3 * a5 + a6 * a8 + ((a3 * a5 + a6 * a8) >> 16) + 1) >> 16);
  result[1] = (v10 + HIWORD(v10) + 1) & 0xFFFF0000 | ((v9 + HIWORD(v9) + 1) >> 16);
  *a2 = (a5 * a4 + a8 * a7 + ((a5 * a4 + a8 * a7) >> 16) + 1) >> 16;
  return result;
}

unsigned int *cmyk64_DMplusDM(unsigned int *result, unint64_t a2, int a3, unint64_t a4, int a5)
{
  v5 = WORD1(a2) * a3 + WORD1(a4) * a5;
  v6 = WORD2(a2) * a3 + WORD2(a4) * a5;
  v7 = HIWORD(a2) * a3 + HIWORD(a4) * a5;
  *result = (v5 + HIWORD(v5) + 1) & 0xFFFF0000 | ((a2 * a3 + a4 * a5 + ((a2 * a3 + a4 * a5) >> 16) + 1) >> 16);
  result[1] = (v7 + HIWORD(v7) + 1) & 0xFFFF0000 | ((v6 + HIWORD(v6) + 1) >> 16);
  return result;
}

void *cmyk64_DAplusDAM(void *result, _WORD *a2, uint64_t a3, __int16 a4, unint64_t a5, int a6, int a7)
{
  *result = ((WORD1(a5) * a7 + ((WORD1(a5) * a7) >> 16) + 1) & 0xFFFF0000) + a3 + ((a5 * a7 + ((a5 * a7) >> 16) + 1) >> 16) + (((WORD2(a5) * a7 + ((WORD2(a5) * a7) >> 16) + 1) >> 16) << 32) + ((a7 * HIWORD(a5) + ((a7 * HIWORD(a5)) >> 16) + 1) >> 16 << 48);
  *a2 = a4 + ((a7 * a6 + ((a7 * a6) >> 16) + 1) >> 16);
  return result;
}

int *cmyk64_DAplusdDA(int *result, __int16 *a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a4 - (WORD1(a3) + WORD1(a5)) + a6;
  v7 = a4 + a6 - (WORD2(a3) + WORD2(a5));
  v8 = a4 - (HIWORD(a3) + HIWORD(a5)) + a6;
  if (v6 >= 0xFFFF)
  {
    LOWORD(v6) = -1;
  }

  if (v7 >= 0xFFFF)
  {
    LOWORD(v7) = -1;
  }

  if (v8 >= 0xFFFF)
  {
    LOWORD(v8) = -1;
  }

  if ((a4 + a6) >= 0xFFFF)
  {
    v9 = -1;
  }

  else
  {
    v9 = a4 + a6;
  }

  *result = (v9 - v6) | ((v9 - v6) << 16);
  result[1] = (v9 - v7) | ((v9 - v8) << 16);
  *a2 = v9;
  return result;
}

int *cmyk64_DplusdDA(int *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a4 - WORD1(a3) + (~a2 >> 16);
  v5 = a4 - WORD2(a3) + ~WORD2(a2);
  if (v4 >= 0xFFFF)
  {
    LOWORD(v4) = -1;
  }

  v6 = ~v4;
  if (v5 >= 0xFFFF)
  {
    LOWORD(v5) = -1;
  }

  v7 = v6 | (v6 << 16);
  v8 = (HIWORD(a2) | 0xFFFF0000) - a4 + HIWORD(a3);
  if (v8 <= -65536)
  {
    LOWORD(v8) = 0;
  }

  *result = v7;
  result[1] = (v5 | (v8 << 16)) ^ 0xFFFF;
  return result;
}

unsigned int *cmyk64_DApluslDA(unsigned int *result, _WORD *a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a5 + a3;
  v7 = WORD1(a5) + WORD1(a3);
  v8 = WORD2(a5) + WORD2(a3);
  v9 = HIWORD(a5) + HIWORD(a3);
  v10 = a6 + a4;
  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFF;
  }

  if (v7 >= 0xFFFF)
  {
    v7 = 0xFFFF;
  }

  if (v8 >= 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  if (v9 >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  if (v10 >= 0xFFFF)
  {
    LOWORD(v10) = -1;
  }

  *result = v6 | (v7 << 16);
  result[1] = v8 | (v9 << 16);
  *a2 = v10;
  return result;
}

unsigned int *cmyk64_DpluslD(unsigned int *result, unint64_t a2, unint64_t a3)
{
  v3 = a3 + a2;
  v4 = WORD1(a3) + WORD1(a2);
  v5 = WORD2(a3) + WORD2(a2);
  v6 = HIWORD(a3) + HIWORD(a2);
  if (v3 >= 0xFFFF)
  {
    v3 = 0xFFFF;
  }

  if (v4 >= 0xFFFF)
  {
    v4 = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    v5 = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFF;
  }

  *result = v3 | (v4 << 16);
  result[1] = v5 | (v6 << 16);
  return result;
}

unint64_t PDAmultiplyPDA_11872(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a4;
  v5 = a4 - a3;
  v6 = a4 - WORD1(a3);
  v7 = a4 - WORD2(a3);
  v8 = a4 - HIWORD(a3);
  v9 = a4 == 0xFFFF;
  v10 = a4 ^ 0xFFFF;
  v11 = v5 + (a4 ^ 0xFFFF);
  v12 = v6 + v10;
  v13 = v7 + v10;
  v14 = v8 + v10;
  if (v9)
  {
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
  }

  v15 = v14 * (a2 - HIWORD(a1));
  v16 = v13 * (a2 - WORD2(a1));
  v17 = v12 * (a2 - WORD1(a1));
  v18 = v11 * (a2 - a1);
  v19 = v18 + v5 * (a2 ^ 0xFFFF);
  v20 = v17 + v6 * (a2 ^ 0xFFFF);
  v21 = v16 + v7 * (a2 ^ 0xFFFF);
  v22 = v15 + v8 * (a2 ^ 0xFFFF);
  if (a2 != 0xFFFF)
  {
    v18 = v19;
    v17 = v20;
    v16 = v21;
    v15 = v22;
  }

  v23 = 0xFFFF * (v4 + a2) - v4 * a2;
  if (v18 <= 4294868992)
  {
    v24 = v18 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  if (v17 <= 4294868992)
  {
    v26 = v17 + 0x8000;
  }

  else
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  if (v16 <= 4294868992)
  {
    v28 = v16 + 0x8000;
  }

  else
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v15 <= 4294868992)
  {
    v30 = v15 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  if (v23 <= 4294868992)
  {
    v32 = v23 + 0x8000;
  }

  else
  {
    v32 = 4294868992;
  }

  return ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v29)) << 32) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v31)) << 48) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v27)) << 16) | (((v32 + (v32 >> 16)) >> 16) - HIWORD(v25));
}

unint64_t PDAscreenPDA_11873(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = (a4 - a3) * (0xFFFF - (a2 - a1)) - (a2 - a1) + ((a2 - a1) << 16);
  v5 = (a4 - WORD1(a3)) * (0xFFFF - (a2 - WORD1(a1))) - (a2 - WORD1(a1)) + ((a2 - WORD1(a1)) << 16);
  v6 = (a4 - WORD2(a3)) * (0xFFFF - (a2 - WORD2(a1))) - (a2 - WORD2(a1)) + ((a2 - WORD2(a1)) << 16);
  v7 = (a4 - HIWORD(a3)) * (0xFFFF - (a2 - HIWORD(a1))) - (a2 - HIWORD(a1)) + ((a2 - HIWORD(a1)) << 16);
  v8 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v4 <= 4294868992)
  {
    v9 = v4 + 0x8000;
  }

  else
  {
    v9 = 4294868992;
  }

  v10 = (v9 >> 16) + v9;
  if (v5 <= 4294868992)
  {
    v11 = v5 + 0x8000;
  }

  else
  {
    v11 = 4294868992;
  }

  v12 = (v11 >> 16) + v11;
  if (v6 <= 4294868992)
  {
    v13 = v6 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  v14 = (v13 >> 16) + v13;
  if (v7 <= 4294868992)
  {
    v15 = v7 + 0x8000;
  }

  else
  {
    v15 = 4294868992;
  }

  v16 = (v15 >> 16) + v15;
  if (v8 <= 4294868992)
  {
    v17 = v8 + 0x8000;
  }

  else
  {
    v17 = 4294868992;
  }

  return ((((v17 + (v17 >> 16)) >> 16) - HIWORD(v16)) << 48) | ((((v17 + (v17 >> 16)) >> 16) - HIWORD(v14)) << 32) | ((((v17 + (v17 >> 16)) >> 16) - HIWORD(v12)) << 16) | (((v17 + (v17 >> 16)) >> 16) - HIWORD(v10));
}

unint64_t PDAoverlayPDA_11874(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - WORD2(a1);
  v6 = a2 - HIWORD(a1);
  if ((a4 - a3) >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2 - a1;
  }

  v9 = 2 * v8 * v7;
  if ((a4 - WORD1(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD1(a1);
  }

  if ((a4 - WORD2(a3)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - WORD2(a3);
  }

  if (v5 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v5;
  }

  if ((a4 - HIWORD(a3)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a4 - HIWORD(a3);
  }

  if (v6 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v6;
  }

  v16 = a4 * a2;
  v17 = (a2 + 1) >> 1;
  if (v8 >= v17)
  {
    v18 = v7 * (a2 + 0xFFFFLL) + (a4 + 0xFFFFLL) * v8 - (v16 + v9);
  }

  else
  {
    v18 = (a4 ^ 0xFFFFLL) * v8 + v7 * (a2 ^ 0xFFFFLL) + v9;
  }

  v19 = 2 * v11 * v10;
  if (v11 >= v17)
  {
    v20 = v10 * (a2 + 0xFFFFLL) + (a4 + 0xFFFFLL) * v11 - (v16 + v19);
  }

  else
  {
    v20 = (a4 ^ 0xFFFFLL) * v11 + v10 * (a2 ^ 0xFFFFLL) + v19;
  }

  v21 = 2 * v13 * v12;
  if (v13 >= v17)
  {
    v22 = v12 * (v4 + 0xFFFF) + (a4 + 0xFFFFLL) * v13 - (v16 + v21);
  }

  else
  {
    v22 = (a4 ^ 0xFFFFLL) * v13 + v12 * (v4 ^ 0xFFFF) + v21;
  }

  v23 = 2 * v15 * v14;
  if (v15 >= v17)
  {
    v24 = v14 * (v4 + 0xFFFF) + (a4 + 0xFFFFLL) * v15 - (v16 + v23);
  }

  else
  {
    v24 = (a4 ^ 0xFFFFLL) * v15 + v14 * (v4 ^ 0xFFFF) + v23;
  }

  v25 = 0xFFFF * (a4 + v4) - v16;
  v26 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  v28.i64[0] = v22;
  v28.i64[1] = v20;
  v29 = vdupq_n_s64(0xFFFE8000uLL);
  v30 = vcgtq_s64(v28, v29);
  v31 = vaddq_s64(v28, vdupq_n_s64(0x8000uLL));
  if (v24 <= 4294868992)
  {
    v32 = v24 + 0x8000;
  }

  else
  {
    v32 = 4294868992;
  }

  v33 = (v32 >> 16) + v32;
  if (v25 <= 4294868992)
  {
    v34 = v25 + 0x8000;
  }

  else
  {
    v34 = 4294868992;
  }

  v35 = (v34 + (v34 >> 16)) >> 16;
  v36 = vbslq_s8(v30, v29, v31);
  v37 = vandq_s8(vshlq_u64(vsubq_s64(vdupq_n_s64(v35), vshrq_n_u64(vsraq_n_u64(v36, v36, 0x10uLL), 0x10uLL)), xmmword_18439CBE0), xmmword_18439CBF0);
  return v37.i64[0] | ((v35 - HIWORD(v33)) << 48) | (v35 - HIWORD(v27)) | v37.i64[1];
}

unint64_t PDAlightenPDA_11875(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - a1;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  v10 = a4 - WORD2(a3);
  v11 = a4 - HIWORD(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v12 = v4 * a4;
  if (v8 * a2 > v12)
  {
    v12 = v8 * a2;
  }

  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v13 = v5 * a4;
  if (v9 * a2 > v13)
  {
    v13 = v9 * a2;
  }

  if (v10 >= a4)
  {
    v10 = a4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v14 = v6 * a4;
  if (v10 * a2 > v14)
  {
    v14 = v10 * a2;
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v15 = v7 * a4;
  if (v11 * a2 > v15)
  {
    v15 = v11 * a2;
  }

  v16 = v12 + (a4 ^ 0xFFFFLL) * v4;
  v17 = v13 + (a4 ^ 0xFFFFLL) * v5;
  v18 = v14 + (a4 ^ 0xFFFFLL) * v6;
  v19 = v15 + (a4 ^ 0xFFFFLL) * v7;
  if (a4 == 0xFFFF)
  {
    v19 = v15;
    v18 = v14;
    v17 = v13;
    v16 = v12;
  }

  v20 = v16 + v8 * (a2 ^ 0xFFFFLL);
  v21 = v17 + v9 * (a2 ^ 0xFFFFLL);
  v22 = v18 + v10 * (a2 ^ 0xFFFFLL);
  v23 = v19 + v11 * (a2 ^ 0xFFFFLL);
  if (a2 != 0xFFFF)
  {
    v19 = v23;
    v18 = v22;
    v17 = v21;
    v16 = v20;
  }

  v24 = 0xFFFF * (a4 + a2) - a4 * a2;
  v25 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  v27 = v17 + 0x8000;
  if (v17 > 4294868992)
  {
    v27 = 4294868992;
  }

  v28 = (v27 >> 16) + v27;
  if (v18 <= 4294868992)
  {
    v29 = v18 + 0x8000;
  }

  else
  {
    v29 = 4294868992;
  }

  v30 = (v29 >> 16) + v29;
  v31 = v19 + 0x8000;
  if (v19 > 4294868992)
  {
    v31 = 4294868992;
  }

  v32 = (v31 >> 16) + v31;
  if (v24 <= 4294868992)
  {
    v33 = v24 + 0x8000;
  }

  else
  {
    v33 = 4294868992;
  }

  return ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v32)) << 48) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v30)) << 32) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v28)) << 16) | (((v33 + (v33 >> 16)) >> 16) - HIWORD(v26));
}

unint64_t PDAdarkenPDA_11876(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - a1;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  v10 = a4 - WORD2(a3);
  v11 = a4 - HIWORD(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v12 = v4 * a4;
  if (v8 * a2 < v12)
  {
    v12 = v8 * a2;
  }

  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v13 = v5 * a4;
  if (v9 * a2 < v13)
  {
    v13 = v9 * a2;
  }

  if (v10 >= a4)
  {
    v10 = a4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v14 = v6 * a4;
  if (v10 * a2 < v14)
  {
    v14 = v10 * a2;
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v15 = v7 * a4;
  if (v11 * a2 < v15)
  {
    v15 = v11 * a2;
  }

  v16 = v12 + (a4 ^ 0xFFFFLL) * v4;
  v17 = v13 + (a4 ^ 0xFFFFLL) * v5;
  v18 = v14 + (a4 ^ 0xFFFFLL) * v6;
  v19 = v15 + (a4 ^ 0xFFFFLL) * v7;
  if (a4 == 0xFFFF)
  {
    v19 = v15;
    v18 = v14;
    v17 = v13;
    v16 = v12;
  }

  v20 = v16 + v8 * (a2 ^ 0xFFFFLL);
  v21 = v17 + v9 * (a2 ^ 0xFFFFLL);
  v22 = v18 + v10 * (a2 ^ 0xFFFFLL);
  v23 = v19 + v11 * (a2 ^ 0xFFFFLL);
  if (a2 != 0xFFFF)
  {
    v19 = v23;
    v18 = v22;
    v17 = v21;
    v16 = v20;
  }

  v24 = 0xFFFF * (a4 + a2) - a4 * a2;
  v25 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  v27 = v17 + 0x8000;
  if (v17 > 4294868992)
  {
    v27 = 4294868992;
  }

  v28 = (v27 >> 16) + v27;
  if (v18 <= 4294868992)
  {
    v29 = v18 + 0x8000;
  }

  else
  {
    v29 = 4294868992;
  }

  v30 = (v29 >> 16) + v29;
  v31 = v19 + 0x8000;
  if (v19 > 4294868992)
  {
    v31 = 4294868992;
  }

  v32 = (v31 >> 16) + v31;
  if (v24 <= 4294868992)
  {
    v33 = v24 + 0x8000;
  }

  else
  {
    v33 = 4294868992;
  }

  return ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v32)) << 48) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v30)) << 32) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v28)) << 16) | (((v33 + (v33 >> 16)) >> 16) - HIWORD(v26));
}

unint64_t PDAcolordodgePDA_11877(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = 4294836225;
  v5 = a2 - WORD1(a1);
  v6 = a4 * a4;
  if ((a2 - a1) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 - a1;
  }

  if (v7)
  {
    v8 = 4294836225;
    if (a3)
    {
      v8 = (v6 * v7) / a3;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = a3 >> 16;
  v10 = HIDWORD(a3);
  if (v5 >= a2)
  {
    v5 = a2;
  }

  v11 = a2 - WORD2(a1);
  if (v5)
  {
    v12 = 4294836225;
    if (WORD1(a3))
    {
      v12 = (v6 * v5) / WORD1(a3);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = a2 - HIWORD(a1);
  v14 = HIWORD(a3);
  if (v11 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v11;
  }

  if (v15)
  {
    v16 = 4294836225;
    if (WORD2(a3))
    {
      v16 = (v6 * v15) / WORD2(a3);
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = a4 - a3;
  v18 = a4 - v9;
  if (v13 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = v13;
  }

  v20 = a4 - v10;
  if (v19)
  {
    if (v14)
    {
      v4 = (v6 * v19) / v14;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a4 != 0xFFFF)
  {
    v8 += (a4 ^ 0xFFFFLL) * v7;
    v12 += (a4 ^ 0xFFFFLL) * v5;
    v16 += (a4 ^ 0xFFFFLL) * v15;
    v4 += (a4 ^ 0xFFFFLL) * v19;
  }

  if (a2 == 0xFFFF)
  {
    v21 = v16;
  }

  else
  {
    v4 += (a4 - v14) * (a2 ^ 0xFFFF);
    v21 = v16 + v20 * (a2 ^ 0xFFFF);
  }

  if (a2 != 0xFFFF)
  {
    v12 += v18 * (a2 ^ 0xFFFF);
    v8 += v17 * (a2 ^ 0xFFFF);
  }

  v22 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v8 >= v22)
  {
    v8 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v12 >= v22)
  {
    v23 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  else
  {
    v23 = v12;
  }

  if (v21 >= v22)
  {
    v21 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v4 >= v22)
  {
    v4 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v21 <= 4294868992)
  {
    v24 = v21 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  if (v23 <= 4294868992)
  {
    v26 = v23 + 0x8000;
  }

  else
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  if (v8 <= 4294868992)
  {
    v28 = v8 + 0x8000;
  }

  else
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v4 <= 4294868992)
  {
    v30 = v4 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  if (v22 <= 4294868992)
  {
    v32 = v22 + 0x8000;
  }

  else
  {
    v32 = 4294868992;
  }

  return ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v31)) << 48) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v25)) << 32) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v27)) << 16) | (((v32 + (v32 >> 16)) >> 16) - HIWORD(v29));
}

unint64_t PDAcolorburnPDA_11878(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - HIWORD(a1);
  v6 = a4;
  v7 = a4 - WORD1(a3);
  v8 = a4 - HIWORD(a3);
  v9 = a4 * a2;
  if ((a4 - a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - a1;
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - WORD1(a1);
  }

  if ((a4 - WORD2(a3)) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 - WORD2(a3);
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 - WORD2(a1);
  }

  if (v8 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v8;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v20 = a4 == 0xFFFF;
  v16 = v9 + (a4 ^ 0xFFFFLL) * v12;
  v17 = v9 + (v6 ^ 0xFFFF) * v14;
  v18 = v9 + (v6 ^ 0xFFFF) * v5;
  if (v20)
  {
    v18 = v9;
    v17 = v9;
    v16 = v9;
    v19 = v9;
  }

  else
  {
    v19 = v9 + (v6 ^ 0xFFFF) * v11;
  }

  v20 = a2 == 0xFFFF;
  v21 = v19 + v10 * (a2 ^ 0xFFFFLL);
  if (v20)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + v15 * (v4 ^ 0xFFFF);
  }

  if (v20)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + v13 * (v4 ^ 0xFFFF);
  }

  if (v20)
  {
    v24 = v16;
  }

  else
  {
    v24 = v16 + v7 * (v4 ^ 0xFFFF);
  }

  if (v20)
  {
    v21 = v19;
  }

  v25 = (v21 - (v6 * v6 * (v4 - v11)) / v10) & ~((v21 - (v6 * v6 * (v4 - v11)) / v10) >> 63);
  if (!v10)
  {
    v25 = 0;
  }

  if (a1)
  {
    v21 = v25;
  }

  if (!WORD1(a1))
  {
LABEL_44:
    if (WORD2(a1))
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if (v7)
  {
    v26 = (v6 * v6 * (v4 - v12)) / v7;
    v24 = (v24 - v26) & ~((v24 - v26) >> 63);
    goto LABEL_44;
  }

  v24 = 0;
  if (WORD2(a1))
  {
LABEL_45:
    if (v13)
    {
      v27 = v23 - (v6 * v6 * (v4 - v14)) / v13;
      v23 = v27 & ~(v27 >> 63);
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_50:
  if (v15)
  {
    v28 = (v22 - (v6 * v6 * (v4 - v5)) / v15) & ~((v22 - (v6 * v6 * (v4 - v5)) / v15) >> 63);
  }

  else
  {
    v28 = 0;
  }

  if (!HIWORD(a1))
  {
    v28 = v22;
  }

  v29 = 0xFFFF * (v6 + v4) - v9;
  v30 = v21 + 0x8000;
  if (v21 > 4294868992)
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  v32.i64[0] = v23;
  v32.i64[1] = v24;
  v33 = vdupq_n_s64(0xFFFE8000uLL);
  v34 = vcgtq_s64(v32, v33);
  v35 = vaddq_s64(v32, vdupq_n_s64(0x8000uLL));
  if (v28 <= 4294868992)
  {
    v36 = v28 + 0x8000;
  }

  else
  {
    v36 = 4294868992;
  }

  v37 = (v36 >> 16) + v36;
  if (v29 <= 4294868992)
  {
    v38 = v29 + 0x8000;
  }

  else
  {
    v38 = 4294868992;
  }

  v39 = (v38 + (v38 >> 16)) >> 16;
  v40 = vbslq_s8(v34, v33, v35);
  v41 = vandq_s8(vshlq_u64(vsubq_s64(vdupq_n_s64(v39), vshrq_n_u64(vsraq_n_u64(v40, v40, 0x10uLL), 0x10uLL)), xmmword_18439CBE0), xmmword_18439CBF0);
  return v41.i64[0] | ((v39 - HIWORD(v37)) << 48) | (v39 - HIWORD(v31)) | v41.i64[1];
}

unint64_t PDAhardlightPDA_11879(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4;
  v9 = a4 - WORD2(a3);
  v10 = a4 - HIWORD(a3);
  if ((a4 - a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - a1;
  }

  v13 = 2 * v12 * v11;
  if ((a4 - WORD1(a3)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a4 - WORD1(a3);
  }

  if (v5 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v5;
  }

  v16 = 2 * v15 * v14;
  if (v9 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v9;
  }

  if (v6 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v6;
  }

  v19 = 2 * v18 * v17;
  if (v10 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v10;
  }

  if (v7 >= a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = v7;
  }

  v22 = 2 * v21 * v20;
  v23 = a4 * a2;
  v24 = (a4 + 1) >> 1;
  if (v11 <= v24)
  {
    v25 = (a4 ^ 0xFFFFLL) * v12 + v11 * (a2 ^ 0xFFFFLL) + v13;
  }

  else
  {
    v25 = v11 * (a2 + 0xFFFFLL) + (a4 + 0xFFFFLL) * v12 - (v23 + v13);
  }

  v26 = a4 ^ 0xFFFFLL;
  v27 = v4 ^ 0xFFFF;
  v28 = (v8 ^ 0xFFFF) * v15 + v14 * (v4 ^ 0xFFFF) + v16;
  v29 = v14 * (v4 + 0xFFFF) + (v8 + 0xFFFF) * v15 - (v23 + v16);
  if (v14 > v24)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  v31 = v26 * v18 + v17 * v27 + v19;
  v32 = v17 * (v4 + 0xFFFF) + (v8 + 0xFFFF) * v18 - (v23 + v19);
  if (v17 > v24)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  v34 = v26 * v21 + v20 * v27 + v22;
  v35 = v20 * (v4 + 0xFFFF) + (v8 + 0xFFFF) * v21 - (v23 + v22);
  if (v20 > v24)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  v37 = 0xFFFF * (v8 + v4) - v23;
  v38 = v25 + 0x8000;
  if (v25 > 4294868992)
  {
    v38 = 4294868992;
  }

  v39 = (v38 >> 16) + v38;
  v40.i64[0] = v33;
  v40.i64[1] = v30;
  v41 = vdupq_n_s64(0xFFFE8000uLL);
  v42 = vcgtq_s64(v40, v41);
  v43 = vaddq_s64(v40, vdupq_n_s64(0x8000uLL));
  if (v36 <= 4294868992)
  {
    v44 = v36 + 0x8000;
  }

  else
  {
    v44 = 4294868992;
  }

  v45 = (v44 >> 16) + v44;
  if (v37 <= 4294868992)
  {
    v46 = v37 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  v47 = (v46 + (v46 >> 16)) >> 16;
  v48 = vbslq_s8(v42, v41, v43);
  v49 = vandq_s8(vshlq_u64(vsubq_s64(vdupq_n_s64(v47), vshrq_n_u64(vsraq_n_u64(v48, v48, 0x10uLL), 0x10uLL)), xmmword_18439CBE0), xmmword_18439CBF0);
  return v49.i64[0] | ((v47 - HIWORD(v45)) << 48) | (v47 - HIWORD(v39)) | v49.i64[1];
}

unint64_t PDAsoftlightPDA_11880(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - WORD1(a1);
  v5 = a2 - WORD2(a1);
  v6 = a2 - HIWORD(a1);
  v7 = a4 - WORD1(a3);
  v8 = a4 - WORD2(a3);
  if ((a4 - a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 - a1;
  }

  v11 = a4 - HIWORD(a3);
  if (a2)
  {
    v12 = v10 * v10 * (2 * v9 - a4) / a2;
    v13 = (2 * v10 * v9 - v12) & ~((2 * v10 * v9 - v12) >> 63);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    if (v4 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 - WORD1(a1);
    }

    v15 = v14 * v14 * (2 * v7 - a4) / a2;
    v16 = (2 * v14 * v7 - v15) & ~((2 * v14 * v7 - v15) >> 63);
    if (v8 >= a4)
    {
      v8 = a4;
    }

    if (v5 >= a2)
    {
      v5 = a2;
    }

    v17 = v5 * v5 * (2 * v8 - a4) / a2;
    v18 = (2 * v5 * v8 - v17) & ~((2 * v5 * v8 - v17) >> 63);
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v6 >= a2)
    {
      v6 = a2;
    }

    v19 = v6 * v6 * (2 * v11 - a4) / a2;
    v20 = (2 * v6 * v11 - v19) & ~((2 * v6 * v11 - v19) >> 63);
  }

  else
  {
    v18 = 0;
    v13 = 0;
    v16 = 0;
    v20 = 0;
    if (v7 >= a4)
    {
      v7 = a4;
    }

    if (v4 >= 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = -WORD1(a1);
    }

    if (v8 >= a4)
    {
      v8 = a4;
    }

    if (v5 >= 0)
    {
      v5 = 0;
    }

    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v6 >= 0)
    {
      v6 = 0;
    }
  }

  if (a4 != 0xFFFF)
  {
    v13 += (a4 ^ 0xFFFFLL) * v10;
    v16 += v14 * (a4 ^ 0xFFFFLL);
    v18 += v5 * (a4 ^ 0xFFFFLL);
    v20 += v6 * (a4 ^ 0xFFFFLL);
  }

  if (a2 != 0xFFFF)
  {
    v13 += v9 * (a2 ^ 0xFFFFLL);
    v16 += v7 * (a2 ^ 0xFFFFLL);
    v18 += v8 * (a2 ^ 0xFFFFLL);
    v20 += v11 * (a2 ^ 0xFFFFLL);
  }

  v21 = 0xFFFF * (a4 + a2) - a4 * a2;
  v22 = v13 + 0x8000;
  if (v13 > 4294868992)
  {
    v22 = 4294868992;
  }

  v23 = (v22 >> 16) + v22;
  v24 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  v26 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  v28 = v20 + 0x8000;
  if (v20 > 4294868992)
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v21 <= 4294868992)
  {
    v30 = v21 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  return ((((v30 + (v30 >> 16)) >> 16) - HIWORD(v29)) << 48) | ((((v30 + (v30 >> 16)) >> 16) - HIWORD(v27)) << 32) | ((((v30 + (v30 >> 16)) >> 16) - HIWORD(v25)) << 16) | (((v30 + (v30 >> 16)) >> 16) - HIWORD(v23));
}

unint64_t PDAdifferencePDA_11881(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - a1;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  v10 = a4 - WORD2(a3);
  v11 = a4 - HIWORD(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v12 = v8 + v4;
  v13 = v4 * a4;
  v14 = v8 * a2;
  v16 = v13 - v14;
  v15 = v13 - v14 < 0;
  v17 = 0xFFFF * v12 - v14 - v13;
  if (v15)
  {
    v18 = -v16;
  }

  else
  {
    v18 = v16;
  }

  v19 = v17 + v18;
  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v20 = v9 + v5;
  v21 = v5 * a4;
  v22 = v9 * a2;
  v23 = v21 - v22;
  v15 = v21 - v22 < 0;
  v24 = 0xFFFF * v20 - v22 - v21;
  if (v15)
  {
    v25 = -v23;
  }

  else
  {
    v25 = v23;
  }

  v26 = v24 + v25;
  if (v10 >= a4)
  {
    v27 = a4;
  }

  else
  {
    v27 = v10;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v28 = v27 + v6;
  v29 = v6 * a4;
  v30 = v27 * a2;
  v31 = v29 - v30;
  v15 = v29 - v30 < 0;
  v32 = 0xFFFF * v28 - v30 - v29;
  if (v15)
  {
    v33 = -v31;
  }

  else
  {
    v33 = v31;
  }

  v34 = v32 + v33;
  if (v11 >= a4)
  {
    v35 = a4;
  }

  else
  {
    v35 = v11;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v36 = v35 + v7;
  v37 = v7 * a4;
  v38 = v35 * a2;
  v39 = v37 - v38;
  v15 = v37 - v38 < 0;
  v40 = 0xFFFF * v36 - v38 - v37;
  if (v15)
  {
    v41 = -v39;
  }

  else
  {
    v41 = v39;
  }

  v42 = v40 + v41;
  v43 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v19 <= 4294868992)
  {
    v44 = v19 + 0x8000;
  }

  else
  {
    v44 = 4294868992;
  }

  v45 = (v44 >> 16) + v44;
  if (v26 <= 4294868992)
  {
    v46 = v26 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  v47 = (v46 >> 16) + v46;
  if (v34 <= 4294868992)
  {
    v48 = v34 + 0x8000;
  }

  else
  {
    v48 = 4294868992;
  }

  v49 = (v48 >> 16) + v48;
  if (v42 <= 4294868992)
  {
    v50 = v42 + 0x8000;
  }

  else
  {
    v50 = 4294868992;
  }

  v51 = (v50 >> 16) + v50;
  if (v43 <= 4294868992)
  {
    v52 = v43 + 0x8000;
  }

  else
  {
    v52 = 4294868992;
  }

  return ((((v52 + (v52 >> 16)) >> 16) - HIWORD(v51)) << 48) | ((((v52 + (v52 >> 16)) >> 16) - HIWORD(v49)) << 32) | ((((v52 + (v52 >> 16)) >> 16) - HIWORD(v47)) << 16) | (((v52 + (v52 >> 16)) >> 16) - HIWORD(v45));
}

unint64_t PDAexclusionPDA_11882(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - a1;
  v6 = a2 - WORD1(a1);
  v7 = a2 - WORD2(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v10 = 0xFFFF * (v8 + v5) - 2 * v5 * v8;
  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v11 = 0xFFFF * (v9 + v6) - 2 * v6 * v9;
  if ((a4 - WORD2(a3)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - WORD2(a3);
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v13 = 0xFFFF * (v12 + v7) - 2 * v7 * v12;
  if ((a4 - HIWORD(a3)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a4 - HIWORD(a3);
  }

  if ((a2 - HIWORD(a1)) < a2)
  {
    v4 = a2 - HIWORD(a1);
  }

  v15 = 0xFFFF * (v14 + v4) - 2 * v4 * v14;
  v16 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v10 <= 4294868992)
  {
    v17 = v10 + 0x8000;
  }

  else
  {
    v17 = 4294868992;
  }

  v18 = (v17 >> 16) + v17;
  if (v11 <= 4294868992)
  {
    v19 = v11 + 0x8000;
  }

  else
  {
    v19 = 4294868992;
  }

  v20 = (v19 >> 16) + v19;
  if (v13 <= 4294868992)
  {
    v21 = v13 + 0x8000;
  }

  else
  {
    v21 = 4294868992;
  }

  v22 = (v21 >> 16) + v21;
  if (v15 <= 4294868992)
  {
    v23 = v15 + 0x8000;
  }

  else
  {
    v23 = 4294868992;
  }

  v24 = (v23 >> 16) + v23;
  if (v16 <= 4294868992)
  {
    v25 = v16 + 0x8000;
  }

  else
  {
    v25 = 4294868992;
  }

  return ((((v25 + (v25 >> 16)) >> 16) - HIWORD(v24)) << 48) | ((((v25 + (v25 >> 16)) >> 16) - HIWORD(v22)) << 32) | ((((v25 + (v25 >> 16)) >> 16) - HIWORD(v20)) << 16) | (((v25 + (v25 >> 16)) >> 16) - HIWORD(v18));
}

unint64_t PDAhuePDA_11883(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a4 - WORD2(a3);
  v7 = a4 - HIWORD(a3);
  if ((a4 - a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  if ((a4 - WORD1(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD1(a1);
  }

  if (v6 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v6;
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - WORD2(a1);
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  v14 = a2 - HIWORD(a1);
  if (v14 >= a2)
  {
    v14 = a2;
  }

  if (a4 == 0xFFFF)
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v15 = (a4 ^ 0xFFFFLL) * v9;
    v9 = (v9 * a4 + 0x8000 + ((v9 * a4 + 0x8000) >> 16)) >> 16;
    v16 = (a4 ^ 0xFFFFLL) * v11;
    v11 = (v11 * a4 + 0x8000 + ((v11 * a4 + 0x8000) >> 16)) >> 16;
    v17 = (a4 ^ 0xFFFFLL) * v13;
    v13 = (v13 * a4 + 0x8000 + ((v13 * a4 + 0x8000) >> 16)) >> 16;
    v18 = (a4 ^ 0xFFFFLL) * v14;
    v14 = (v14 * a4 + 0x8000 + ((v14 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v15 += v8 * (a2 ^ 0xFFFFLL);
    v8 = (v8 * a2 + 0x8000 + ((v8 * a2 + 0x8000) >> 16)) >> 16;
    v16 += v10 * (a2 ^ 0xFFFFLL);
    v10 = (v10 * a2 + 0x8000 + ((v10 * a2 + 0x8000) >> 16)) >> 16;
    v17 += v12 * (a2 ^ 0xFFFFLL);
    v12 = (v12 * a2 + 0x8000 + ((v12 * a2 + 0x8000) >> 16)) >> 16;
    v18 += (a2 ^ 0xFFFFLL) * v7;
  }

  v51 = v8;
  v52 = v10;
  v53 = v12;
  v19 = v8 < v10;
  v20 = v8 >= v10;
  if (v8 >= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v8;
  }

  if (v12 >= v21)
  {
    if (v8 <= v10)
    {
      v8 = v10;
    }

    v23 = v12 <= v8;
    v22 = v20;
    if (v23)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    if (!v23)
    {
      v19 = 2;
    }
  }

  else
  {
    v22 = 2;
  }

  v24 = *(&v51 + v19);
  v25 = *(&v51 + v22);
  v23 = v24 <= v25;
  v26 = v24 - v25;
  if (v23)
  {
    *(&v51 + v19) = 0;
    *(&v51 + v20) = 0;
  }

  else
  {
    if (v9 >= v11)
    {
      v27 = v11;
    }

    else
    {
      v27 = v9;
    }

    if (v9 <= v11)
    {
      v28 = v11;
    }

    else
    {
      v28 = v9;
    }

    if (v13 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v13;
    }

    if (v13 >= v27)
    {
      v28 = v29;
    }

    else
    {
      v27 = v13;
    }

    v30 = v28 - v27;
    *(&v51 + v19) = v30;
    *(&v51 + v20) = ((*(&v51 + v20) - *(&v51 + v22)) * ((v30 << 16) / v26) + 0x8000) >> 16;
  }

  *(&v51 + v22) = 0;
  v31 = 151 * (v11 - v52) + 77 * (v9 - v51) + 28 * (v13 - v53);
  v32 = v31 + 128;
  v33 = v51 + ((v31 + 128) >> 8);
  v34 = v52 + ((v31 + 128) >> 8);
  v35 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v36 = v53 + ((v31 + 128) >> 8);
  if (v31 != v31)
  {
    v37 = v51 >= v52 ? v52 + ((v31 + 128) >> 8) : v51 + ((v31 + 128) >> 8);
    v38 = v51 >= v52 ? v51 + ((v31 + 128) >> 8) : v52 + ((v31 + 128) >> 8);
    v39 = v36 <= v38 ? v38 : v53 + ((v31 + 128) >> 8);
    if (v36 >= v37)
    {
      v38 = v39;
    }

    else
    {
      v37 = v36;
    }

    if (v38 > v35 || v37 < 0)
    {
      v40 = v32 >> 8;
      v41 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      if (v40 < 0)
      {
        v42 = v41 - v37;
        if (!v42)
        {
          goto LABEL_76;
        }

        v43 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      }

      else
      {
        v42 = v38 - v41;
        if (v38 == v41)
        {
          goto LABEL_76;
        }

        v43 = v35 - v41;
      }

      v44 = (v43 << 16) / v42;
      v33 = v41 + ((v44 * (v33 - v41) + 0x8000) >> 16);
      v34 = v41 + ((v44 * (v34 - v41) + 0x8000) >> 16);
      v36 = v41 + ((v44 * (v36 - v41) + 0x8000) >> 16);
    }
  }

LABEL_76:
  v45 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v45 = 4294868992;
  }

  if (v17 <= 4294868992)
  {
    v46 = v17 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  if (v16 <= 4294868992)
  {
    v47 = v16 + 0x8000;
  }

  else
  {
    v47 = 4294868992;
  }

  if (v15 <= 4294868992)
  {
    v48 = v15 + 0x8000;
  }

  else
  {
    v48 = 4294868992;
  }

  v49 = a4 + a2 - v35;
  return ((v49 - (v14 + (((v45 >> 16) + v45) >> 16))) << 48) | ((v49 - (v36 + (((v46 >> 16) + v46) >> 16))) << 32) | ((v49 - (v34 + (((v47 >> 16) + v47) >> 16))) << 16) | (v49 - (v33 + (((v48 >> 16) + v48) >> 16)));
}

unint64_t PDAsaturationPDA_11884(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a4 - WORD2(a3);
  v7 = a4 - HIWORD(a3);
  if ((a4 - a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  if ((a4 - WORD1(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD1(a1);
  }

  if (v6 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v6;
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - WORD2(a1);
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  v14 = a2 - HIWORD(a1);
  if (v14 >= a2)
  {
    v14 = a2;
  }

  if (a4 == 0xFFFF)
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v15 = (a4 ^ 0xFFFFLL) * v9;
    v9 = (v9 * a4 + 0x8000 + ((v9 * a4 + 0x8000) >> 16)) >> 16;
    v16 = (a4 ^ 0xFFFFLL) * v11;
    v11 = (v11 * a4 + 0x8000 + ((v11 * a4 + 0x8000) >> 16)) >> 16;
    v17 = (a4 ^ 0xFFFFLL) * v13;
    v13 = (v13 * a4 + 0x8000 + ((v13 * a4 + 0x8000) >> 16)) >> 16;
    v18 = (a4 ^ 0xFFFFLL) * v14;
    v14 = (v14 * a4 + 0x8000 + ((v14 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v15 += v8 * (a2 ^ 0xFFFFLL);
    v8 = (v8 * a2 + 0x8000 + ((v8 * a2 + 0x8000) >> 16)) >> 16;
    v16 += v10 * (a2 ^ 0xFFFFLL);
    v10 = (v10 * a2 + 0x8000 + ((v10 * a2 + 0x8000) >> 16)) >> 16;
    v17 += v12 * (a2 ^ 0xFFFFLL);
    v12 = (v12 * a2 + 0x8000 + ((v12 * a2 + 0x8000) >> 16)) >> 16;
    v18 += (a2 ^ 0xFFFFLL) * v7;
  }

  v51 = v9;
  v52 = v11;
  v53 = v13;
  v19 = v9 < v11;
  v20 = v9 >= v11;
  if (v9 >= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = v9;
  }

  if (v13 >= v21)
  {
    if (v9 <= v11)
    {
      v23 = v11;
    }

    else
    {
      v23 = v9;
    }

    v24 = v13 <= v23;
    v22 = v9 >= v11;
    if (v24)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9 < v11;
    }

    if (!v24)
    {
      v19 = 2;
    }
  }

  else
  {
    v22 = 2;
  }

  v25 = *(&v51 + v19);
  v26 = *(&v51 + v22);
  v24 = v25 <= v26;
  v27 = v25 - v26;
  if (v24)
  {
    *(&v51 + v19) = 0;
    *(&v51 + v20) = 0;
  }

  else
  {
    if (v8 >= v10)
    {
      v28 = v10;
    }

    else
    {
      v28 = v8;
    }

    if (v8 <= v10)
    {
      v8 = v10;
    }

    if (v12 <= v8)
    {
      v29 = v8;
    }

    else
    {
      v29 = v12;
    }

    if (v12 >= v28)
    {
      v12 = v28;
      v8 = v29;
    }

    v30 = v8 - v12;
    *(&v51 + v19) = v30;
    *(&v51 + v20) = ((*(&v51 + v20) - *(&v51 + v22)) * ((v30 << 16) / v27) + 0x8000) >> 16;
  }

  *(&v51 + v22) = 0;
  v31 = 151 * (v11 - v52) + 77 * (v9 - v51) + 28 * (v13 - v53);
  v32 = v31 + 128;
  v33 = v51 + ((v31 + 128) >> 8);
  v34 = v52 + ((v31 + 128) >> 8);
  v35 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v36 = v53 + ((v31 + 128) >> 8);
  if (v31 != v31)
  {
    v37 = v51 >= v52 ? v52 + ((v31 + 128) >> 8) : v51 + ((v31 + 128) >> 8);
    v38 = v51 >= v52 ? v51 + ((v31 + 128) >> 8) : v52 + ((v31 + 128) >> 8);
    v39 = v36 <= v38 ? v38 : v53 + ((v31 + 128) >> 8);
    if (v36 >= v37)
    {
      v38 = v39;
    }

    else
    {
      v37 = v36;
    }

    if (v38 > v35 || v37 < 0)
    {
      v40 = v32 >> 8;
      v41 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      if (v40 < 0)
      {
        v42 = v41 - v37;
        if (!v42)
        {
          goto LABEL_75;
        }

        v43 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      }

      else
      {
        v42 = v38 - v41;
        if (v38 == v41)
        {
          goto LABEL_75;
        }

        v43 = v35 - v41;
      }

      v44 = (v43 << 16) / v42;
      v33 = v41 + ((v44 * (v33 - v41) + 0x8000) >> 16);
      v34 = v41 + ((v44 * (v34 - v41) + 0x8000) >> 16);
      v36 = v41 + ((v44 * (v36 - v41) + 0x8000) >> 16);
    }
  }

LABEL_75:
  v45 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v45 = 4294868992;
  }

  if (v17 <= 4294868992)
  {
    v46 = v17 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  if (v16 <= 4294868992)
  {
    v47 = v16 + 0x8000;
  }

  else
  {
    v47 = 4294868992;
  }

  if (v15 <= 4294868992)
  {
    v48 = v15 + 0x8000;
  }

  else
  {
    v48 = 4294868992;
  }

  v49 = a4 + a2 - v35;
  return ((v49 - (v14 + (((v45 >> 16) + v45) >> 16))) << 48) | ((v49 - (v36 + (((v46 >> 16) + v46) >> 16))) << 32) | ((v49 - (v34 + (((v47 >> 16) + v47) >> 16))) << 16) | (v49 - (v33 + (((v48 >> 16) + v48) >> 16)));
}

unint64_t PDAluminosityPDA_11885(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  if ((a4 - a3) >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 - a1;
  }

  if ((a4 - WORD1(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - WORD1(a1);
  }

  if ((a4 - WORD2(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD2(a3);
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD2(a1);
  }

  v12 = a4 - HIWORD(a3);
  if (v12 >= a4)
  {
    v12 = a4;
  }

  if (a4 == 0xFFFF)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    if ((a2 - HIWORD(a1)) >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2 - HIWORD(a1);
    }

    v14 = (a4 ^ 0xFFFFLL) * v7;
    v7 = (v7 * a4 + 0x8000 + ((v7 * a4 + 0x8000) >> 16)) >> 16;
    v15 = (a4 ^ 0xFFFFLL) * v9;
    v9 = (v9 * a4 + 0x8000 + ((v9 * a4 + 0x8000) >> 16)) >> 16;
    v16 = (a4 ^ 0xFFFFLL) * v11;
    v11 = (v11 * a4 + 0x8000 + ((v11 * a4 + 0x8000) >> 16)) >> 16;
    v17 = (a4 ^ 0xFFFFLL) * v13;
  }

  if (a2 != 0xFFFF)
  {
    v14 += v6 * (a2 ^ 0xFFFFLL);
    v6 = (v6 * a2 + 0x8000 + ((v6 * a2 + 0x8000) >> 16)) >> 16;
    v15 += v8 * (a2 ^ 0xFFFFLL);
    v8 = (v8 * a2 + 0x8000 + ((v8 * a2 + 0x8000) >> 16)) >> 16;
    v16 += v10 * (a2 ^ 0xFFFFLL);
    v10 = (v10 * a2 + 0x8000 + ((v10 * a2 + 0x8000) >> 16)) >> 16;
    v17 += v12 * (a2 ^ 0xFFFFLL);
    v12 = (v12 * a2 + 0x8000 + ((v12 * a2 + 0x8000) >> 16)) >> 16;
  }

  v18 = 151 * (v8 - v9) + 28 * (v10 - v11) + 77 * (v6 - v7);
  v19 = v18 + 128;
  v20 = v7 + ((v18 + 128) >> 8);
  v21 = v9 + ((v18 + 128) >> 8);
  v22 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v23 = v11 + ((v18 + 128) >> 8);
  if (v18 != v18)
  {
    v24 = v7 < v9;
    if (v7 >= v9)
    {
      v25 = v9 + ((v18 + 128) >> 8);
    }

    else
    {
      v25 = v7 + ((v18 + 128) >> 8);
    }

    if (v24)
    {
      v26 = v9 + ((v18 + 128) >> 8);
    }

    else
    {
      v26 = v20;
    }

    if (v23 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    if (v23 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v23;
    }

    if (v23 >= v25)
    {
      v26 = v27;
    }

    if (v26 > v22 || v28 < 0)
    {
      v29 = (77 * v20 + 151 * v21 + 28 * v23 + 128) >> 8;
      if (v19 >> 8 < 0)
      {
        v30 = v29 - v28;
        if (!v30)
        {
          goto LABEL_52;
        }

        v31 = (77 * v20 + 151 * v21 + 28 * v23 + 128) >> 8;
      }

      else
      {
        v30 = v26 - v29;
        if (v26 == v29)
        {
          goto LABEL_52;
        }

        v31 = v22 - v29;
      }

      v32 = (v31 << 16) / v30;
      v20 = v29 + ((v32 * (v20 - v29) + 0x8000) >> 16);
      v21 = v29 + ((v32 * (v21 - v29) + 0x8000) >> 16);
      v23 = v29 + ((v32 * (v23 - v29) + 0x8000) >> 16);
    }
  }

LABEL_52:
  v33 = a4 + a2 - v22;
  v34 = v17 + 0x8000;
  if (v17 > 4294868992)
  {
    v34 = 4294868992;
  }

  v35 = (v34 >> 16) + v34;
  if (v16 <= 4294868992)
  {
    v36 = v16 + 0x8000;
  }

  else
  {
    v36 = 4294868992;
  }

  v37 = (v36 >> 16) + v36;
  if (v15 <= 4294868992)
  {
    v38 = v15 + 0x8000;
  }

  else
  {
    v38 = 4294868992;
  }

  v39 = (v38 >> 16) + v38;
  if (v14 <= 4294868992)
  {
    v40 = v14 + 0x8000;
  }

  else
  {
    v40 = 4294868992;
  }

  return ((v33 - (v12 + HIWORD(v35))) << 48) | ((v33 - (v23 + HIWORD(v37))) << 32) | ((v33 - (v21 + HIWORD(v39))) << 16) | (v33 - (v20 + (((v40 >> 16) + v40) >> 16)));
}

void cmyk64_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    for (i = (v14 + 8); ; i += 8)
    {
      v20 = v11;
      if (v5 >= v9)
      {
        v20 = v12;
        if (v5 <= v10)
        {
          v20 = (v8 * (v5 - v7));
        }
      }

      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      v21 = v16;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 = v4 + v5;
      *v13 = v21;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v21 = (v17 + 2 * (5 * v20));
LABEL_18:
    v22 = *v21;
    LOWORD(v21) = *(v21 + 4);
    *(i - 1) = v22;
    *i = v21;
    LOBYTE(v21) = -1;
    goto LABEL_19;
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
    v23 = (v17 + 2 * (5 * v11));
    if (v11 < 0)
    {
      v24 = v16;
    }

    else
    {
      v24 = v23;
    }

    v25 = *(v24 + 4);
    v26 = *v24;
    v27 = a4 + 4;
    do
    {
      *v14 = v26;
      *(v14 + 8) = v25;
      *(v14 + 16) = v26;
      *(v14 + 24) = v25;
      *(v14 + 32) = v26;
      *(v14 + 40) = v25;
      *(v14 + 48) = v26;
      *(v14 + 56) = v25;
      v14 += 64;
      v27 -= 4;
      *v13++ = -1;
    }

    while (v27 > 4);
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

uint64_t cmyk64_shade_custom_CMYK(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
  v22 = 5 * *(result + 48);
  v23 = *(result + 144);
  v24 = (*(result + 152) + 8);
  a6.i32[1] = v14;
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v15, v25))), vmovn_s32(vcgtq_f32(v25, v15)))) & 1) == 0)
    {
      v26 = v21 + 2 * v22 * (v19 * (*&a6.i32[1] - v17)) + 10 * (v18 * (*a6.i32 - v16));
LABEL_6:
      v27 = *v26;
      LOWORD(v26) = *(v26 + 8);
      *(v24 - 1) = v27;
      *v24 = v26;
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
    *v23++ = v26;
    v24 += 8;
    --a4;
  }

  while (a4);
  return result;
}

uint64_t cmyk64_shade_conic_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 284);
  v10 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v9 * v6));
  v34 = *(a1 + 336);
  v35 = *(a1 + 304);
  v12 = *(a1 + 344);
  v13 = *(a1 + 360);
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  v33 = *(a1 + 308) - v35;
  do
  {
    v16 = v12 * ((v35 + (((atan2f(v10, v8) * 0.15915) + 0.5) * v33)) - v34);
    v17 = vcvtms_s32_f32(v16);
    v18 = vcvtms_s32_f32(v12 + v16);
    v19 = ceilf(v16);
    v20 = v16 - floorf(v16);
    if (v16 < 0.0)
    {
      v17 = v18;
    }

    v21 = v16 <= v12;
    v22 = ceilf(v16 - v12);
    v23 = (v20 * 255.0) + 0.5;
    if (v21)
    {
      v22 = v19;
    }

    v24 = (v13 + 2 * (5 * v17));
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = 255 - v23;
    v30 = (v13 + 10 * v22);
    result = v23 * v30[1];
    LODWORD(v24) = (v30[4] * v23 + v29 * v24[4]) >> 8;
    v32 = (((v23 * v30[2] + v29 * v27) >> 8) << 32) | (((v30[3] * v23 + v29 * v28) >> 8) << 48) | ((result + v29 * v26) << 8) & 0xFFFF0000 | ((v23 * *v30 + v29 * v25) >> 8);
    *(v14 + 8) = v24;
    *v14 = v32;
    v14 += 16;
    v8 = v4 + v8;
    v10 = v9 + v10;
    *v15++ = -1;
    --a4;
  }

  while (a4);
  return result;
}

void cmyk64_shade_radial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    for (i = (v23 + 8); ; i += 8)
    {
      v36 = v33 + ((v9 + v9) * v18);
      v37 = ((v10 * v10) + (v9 * v9)) - v21;
      if (v20 == 0.0)
      {
        v44 = v37 / v36;
      }

      else
      {
        v38 = ((v20 * -4.0) * v37) + (v36 * v36);
        if (v38 < 0.0)
        {
          goto LABEL_39;
        }

        v39 = sqrtf(v38);
        v40 = v32 * (v36 - v39);
        v41 = v36 + v39;
        v42 = v32 * v41;
        v43 = (v32 * v41) <= v40;
        if ((v32 * v41) <= v40)
        {
          v44 = v32 * v41;
        }

        else
        {
          v44 = v40;
        }

        if (v43)
        {
          v42 = v40;
        }

        if (v42 < 0.0)
        {
          v45 = v42 < v31;
LABEL_25:
          v46 = v30;
          if (v45)
          {
            goto LABEL_39;
          }

LABEL_26:
          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v42 <= 1.0)
        {
          v47 = v15 + (v42 * v34);
          goto LABEL_37;
        }

        if ((v17 & 0x80000000) == 0)
        {
          v46 = v17;
          if (v42 <= v19)
          {
LABEL_38:
            v48 = (v26 + 2 * (5 * v46));
LABEL_40:
            v49 = *v48;
            LOWORD(v48) = *(v48 + 4);
            *(i - 1) = v49;
            *i = v48;
            LOBYTE(v48) = -1;
            goto LABEL_41;
          }
        }
      }

      if (v44 < 0.0)
      {
        v45 = v44 < v31;
        goto LABEL_25;
      }

      if (v44 > 1.0)
      {
        v46 = v17;
        if (v44 > v19)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v47 = v15 + (v44 * v34);
LABEL_37:
      v46 = (v14 * (v47 - v13));
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      v48 = v25;
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_41:
      v9 = v4 + v9;
      v10 = v5 + v10;
      *v22++ = v48;
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
    v50 = fabsf(v12[8]);
    v51 = v20 * -4.0;
    v52 = v16 - v15;
    v53 = (v26 + 2 * (5 * v17));
    v54 = a4 + 2;
    while (1)
    {
      v55 = v27 + (v9 * v9);
      v56 = v4 + v9;
      v57 = v27 + (v56 * v56);
      if (v55 > v28 && v57 > v28)
      {
        if (v17 < 0)
        {
          if (!v25)
          {
            v72 = 0;
            LOBYTE(v71) = 0;
            goto LABEL_65;
          }

          v66 = *(v25 + 4);
          v67 = *v25;
        }

        else
        {
          v66 = *(v53 + 4);
          v67 = *v53;
        }

        *v23 = v67;
        *(v23 + 8) = v66;
        goto LABEL_63;
      }

      v59 = sqrtf(v51 * v57);
      v60 = v50 * sqrtf(v51 * v55);
      v61 = v50 * v59;
      v62 = (v14 * ((v15 + (v60 * v52)) - v13));
      v63 = (v14 * ((v15 + ((v50 * v59) * v52)) - v13));
      if (v60 <= 1.0 && v61 <= 1.0)
      {
        v68 = (v26 + 10 * v62);
        v69 = *v68;
        LOWORD(v68) = *(v68 + 4);
        v70 = (v26 + 10 * v63);
        v67 = *v70;
        v66 = *(v70 + 4);
        *v23 = v69;
        *(v23 + 8) = v68;
LABEL_63:
        LOBYTE(v71) = -1;
        goto LABEL_64;
      }

      if (v60 <= 1.0)
      {
        if ((v62 & 0x80000000) == 0)
        {
          v65 = (5 * v62);
LABEL_69:
          v71 = (v26 + 2 * v65);
LABEL_71:
          v73 = *v71;
          LOWORD(v71) = *(v71 + 4);
          *v23 = v73;
          *(v23 + 8) = v71;
          LOBYTE(v71) = -1;
          goto LABEL_72;
        }
      }

      else if (v60 <= v19)
      {
        v65 = (5 * v17);
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }

      v71 = v25;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v61 <= 1.0)
      {
        if (v63 < 0)
        {
          goto LABEL_79;
        }

        v74 = (5 * v63);
      }

      else if (v61 > v19 || (v74 = (5 * v17), v17 < 0))
      {
LABEL_79:
        if (!v25)
        {
          v72 = 0;
          goto LABEL_65;
        }

        v67 = *v25;
        v66 = *(v25 + 4);
        goto LABEL_64;
      }

      v75 = (v26 + 2 * v74);
      v67 = *v75;
      v66 = *(v75 + 4);
LABEL_64:
      *(v23 + 16) = v67;
      *(v23 + 24) = v66;
      v72 = -1;
LABEL_65:
      v9 = v4 + v56;
      v23 += 32;
      *v22 = v71;
      v22[1] = v72;
      v22 += 2;
      v54 -= 2;
      if (v54 <= 2)
      {
        return;
      }
    }
  }

  if (v25 || (v17 & 0x80000000) == 0)
  {
    if (v17 >= 0)
    {
      v76 = (v26 + 10 * v17);
    }

    else
    {
      v76 = *(a1 + 376);
    }

    v77 = *(v76 + 4);
    v78 = *v76;
    v79 = a4 + 4;
    do
    {
      *v23 = v78;
      *(v23 + 8) = v77;
      *(v23 + 16) = v78;
      *(v23 + 24) = v77;
      *(v23 + 32) = v78;
      *(v23 + 40) = v77;
      *(v23 + 48) = v78;
      *(v23 + 56) = v77;
      v23 += 64;
      v79 -= 4;
      *v22 = -1;
      v22 += 4;
    }

    while (v79 > 4);
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

uint64_t cmyk64_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
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

  v10 = 269501476;
  v11 = *a3;
  *(&v24 + 1) = __PAIR64__(*v6, *a3);
  if (v11 == 269501476)
  {
    if (!v35 && (~DWORD1(v25) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v25) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      cmyk64_mark(a1);
      return 1;
    }

    *&v24 = cmyk64_sample_cmyk64;
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
  *&v24 = *&CMYK16_image_sample[2 * v12 + 2];
  if (v24)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8 || (*&v24 = *&CMYK8_image_sample[2 * v12 + 2], !v24))
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

  v10 = 134759444;
  v15 = 8;
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
      v18 = cmyk64_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v16 == 4)
    {
      *(&v24 + 2) = *a3;
      v18 = cmyk64_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v16 != 5)
    {
      goto LABEL_37;
    }

    *(&v24 + 2) = *a3;
    v19 = cmyk64_image_mark_rgb32;
LABEL_64:
    v20 = v19;
    v21 = a2;
    v22 = v8;
    v23 = 8;
LABEL_67:
    cmyk64_image_mark_image(v21, &v24, v22, v23, v20);
    return 1;
  }

  switch(v16)
  {
    case 0:
      *(&v24 + 2) = *a3;
      v18 = cmyk64_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      *(&v24 + 2) = *a3;
      v19 = cmyk64_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      *(&v24 + 2) = *a3;
      v18 = cmyk64_image_mark_W8;
LABEL_66:
      v20 = v18;
      v21 = a2;
      v22 = v8;
      v23 = 0;
      goto LABEL_67;
  }

LABEL_37:
  cmyk64_image_mark(a2, &v24, v8);
  return 1;
}

uint64_t cmyk64_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v833 = *MEMORY[0x1E69E9840];
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
  if ((*v2 & 0xFF0000) == 0x50000 || !v13)
  {
    v15 = *v2 & 0xFF00;
    v736 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v4 == 0) + 4 * (v5 == 0));
    v731 = v2;
    if (v15 == 1024)
    {
      v832[0] = *(v2 + 4);
      v822[0] = v11;
      if (v4)
      {
        v16 = *v4;
      }

      else
      {
        v16 = 0xFFFF;
      }

      v28 = **(v2 + 88);
      v797 = *(v2 + 28) >> 3;
      v29 = *(v2 + 12);
      v30 = *(v2 + 16);
      if (v5)
      {
        v810 = *(v2 + 32) >> 1;
        v803 = v5 + 2 * v810 * v30 + 2 * v29;
        v774 = 1;
      }

      else
      {
        v803 = 0;
        v810 = 0;
        v774 = 0;
      }

      v36 = *(v2 + 28) >> 3;
      v37 = (*(v2 + 40) + 8 * v30 * v797 + 8 * v29);
      v799 = v37;
      if (!v13)
      {
        v812 = 0;
        if (v5)
        {
          v41 = v9;
        }

        else
        {
          v41 = 0;
        }

        v40 = v803;
        v819 = v810 - v41;
        v42 = v9;
        goto LABEL_72;
      }

      shape_enum_clip_alloc(v1, v2, v13, 1, 1, 1, *(v2 + 104), *(v2 + 108), v9, v11);
      v39 = v38;
      v40 = v803;
      v819 = v810;
      if (v38)
      {
        while (shape_enum_clip_next(v39, &v821 + 1, &v821, v832, v822))
        {
          v812 = v39;
          v37 += v36 * v821 + SHIDWORD(v821);
          v42 = v832[0];
          if (v5)
          {
            v40 = (v803 + 2 * v810 * v821 + 2 * SHIDWORD(v821));
          }

          v62 = v819;
          if (v5)
          {
            v62 = v810 - v832[0];
          }

          v819 = v62;
          LODWORD(v9) = v832[0];
LABEL_72:
          v818 = v36 - v42;
          v801 = v9;
          switch(v6)
          {
            case 0:
              v63 = v818 + v9;
              v64 = v822[0];
              v65 = v822[0] - 1;
              v66 = &v37[(v63 * v65) & (v63 >> 63)];
              if (v63 < 0)
              {
                v63 = -v63;
              }

              CGBlt_fillBytes(8 * v9, v822[0], 0, v66, 8 * v63);
              if (v5)
              {
                v67 = v819 + v9;
                v40 += 2 * ((v67 * v65) & (v67 >> 63));
                if (v67 < 0)
                {
                  v67 = -v67;
                }

                v819 = v67;
                CGBlt_fillBytes(2 * v9, v64, 0, v40, 2 * v67);
              }

              goto LABEL_368;
            case 1:
              v142 = v818 + v9;
              if (v142 < 0)
              {
                v37 += v142 * (v822[0] - 1);
                v142 = -v142;
              }

              v143 = *(v731 + 88);
              v144 = v822[0];
              if (v143)
              {
                CGSFillDRAM64(v37, 8 * v142, 8 * v9, v822[0], v143, 8, 8, 1, 0, 0);
              }

              else
              {
                CGBlt_fillBytes(8 * v9, v822[0], 0, v37, 8 * v142);
              }

              v37 = v799;
              if (v5)
              {
                v199 = *(v731 + 96);
                if (!v199)
                {
                  v199 = &PIXELALPHAPLANARCONSTANT_18034;
                }

                v200 = v819 + v9;
                v40 += 2 * ((v200 * (v144 - 1)) & (v200 >> 63));
                if (v200 < 0)
                {
                  v200 = -v200;
                }

                v819 = v200;
                CGBlt_fillBytes(2 * v9, v144, *v199, v40, 2 * v200);
              }

              v36 = v797;
              goto LABEL_370;
            case 2:
              v773 = v9 & 3;
              v112 = v822[0];
              v113 = 8 * v774;
              v114 = 2 * v774;
              if (v5)
              {
                v769 = (v9 >> 2) + 1;
                do
                {
                  v815 = v112;
                  if (v9 < 4)
                  {
                    v119 = v9;
                  }

                  else
                  {
                    v115 = (v40 + 4);
                    v116 = v769;
                    do
                    {
                      cmyk64_DAplusDAM(v37, v115 - 2, *&v28, v16, *v37, *(v115 - 2), ~v16);
                      cmyk64_DAplusDAM(&v37[1], v115 - 1, *&v28, v16, *&v37[1], *(v115 - 1), ~v16);
                      cmyk64_DAplusDAM(&v37[2], v115, *&v28, v16, *&v37[2], *v115, ~v16);
                      v118 = v37[3];
                      v117 = v37 + 3;
                      cmyk64_DAplusDAM(v117, v115 + 1, *&v28, v16, v118, v115[1], ~v16);
                      v37 = v117 + 1;
                      --v116;
                      v115 = (v115 + v113);
                    }

                    while (v116 > 1);
                    v40 = (v115 - 2);
                    v119 = v773;
                  }

                  if (v119 < 1)
                  {
                    v121 = v37;
                  }

                  else
                  {
                    v120 = v119 + 1;
                    v121 = v37;
                    do
                    {
                      v122 = *v121++;
                      cmyk64_DAplusDAM(v37, v40, *&v28, v16, v122, *v40, ~v16);
                      v40 += v114;
                      --v120;
                      v37 = v121;
                    }

                    while (v120 > 1);
                  }

                  v37 = &v121[v818];
                  v40 += 2 * v819;
                  v112 = v815 - 1;
                  LODWORD(v9) = v801;
                }

                while (v815 != 1);
              }

              else
              {
                v770 = (v9 >> 2) + 1;
                do
                {
                  v816 = v112;
                  if (v9 < 4)
                  {
                    v192 = v9;
                  }

                  else
                  {
                    v189 = v770;
                    do
                    {
                      cmyk64_DplusDM(v37, *&v28, *v37, ~v16);
                      cmyk64_DplusDM(&v37[1], *&v28, *&v37[1], ~v16);
                      cmyk64_DplusDM(&v37[2], *&v28, *&v37[2], ~v16);
                      v191 = v37[3];
                      v190 = v37 + 3;
                      cmyk64_DplusDM(v190, *&v28, v191, ~v16);
                      v37 = v190 + 1;
                      --v189;
                      v40 += v113;
                    }

                    while (v189 > 1);
                    v192 = v773;
                  }

                  if (v192 < 1)
                  {
                    v9 = v37;
                  }

                  else
                  {
                    v193 = v192 + 1;
                    v9 = v37;
                    do
                    {
                      v194 = *v9;
                      v9 += 8;
                      cmyk64_DplusDM(v37, *&v28, v194, ~v16);
                      v40 += v114;
                      --v193;
                      v37 = v9;
                    }

                    while (v193 > 1);
                  }

                  v37 = (v9 + 8 * v818);
                  v40 += 2 * v819;
                  v112 = v816 - 1;
                  LODWORD(v9) = v801;
                }

                while (v816 != 1);
              }

              goto LABEL_367;
            case 3:
              v126.i32[0] = v28.u16[1];
              v126.i32[1] = HIWORD(*&v28);
              v127 = vand_s8(v28, 0xFFFF0000FFFFLL);
              v128 = v822[0];
              do
              {
                v129 = v9;
                do
                {
                  v130 = *v40;
                  if (v130 == 0xFFFF)
                  {
                    *v37 = v28;
                    LOWORD(v130) = v16;
                  }

                  else if (*v40)
                  {
                    v131 = v130 ^ 0xFFFF;
                    v132 = vdup_n_s32(v131);
                    v133 = vmul_s32(v127, v132);
                    v134 = vmul_s32(v126, v132);
                    *v37 = vsli_n_s32(vsub_s32(v28, vshr_n_u32(vadd_s32(vsra_n_u32(v133, v133, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v126, vshr_n_u32(vadd_s32(vsra_n_u32(v134, v134, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                    v130 = v16 - ((v131 * v16 + ((v131 * v16) >> 16) + 1) >> 16);
                  }

                  else
                  {
                    *v37 = 0;
                  }

                  *v40 = v130;
                  ++v37;
                  v40 += 2 * v774;
                  --v129;
                }

                while (v129);
                v37 += v818;
                v40 += 2 * v819;
                --v128;
              }

              while (v128);
              goto LABEL_291;
            case 4:
              v85 = vand_s8(v28, 0xFFFF0000FFFFLL);
              v86.i32[0] = v28.u16[1];
              v86.i32[1] = HIWORD(*&v28);
              v87 = v822[0];
              do
              {
                v88 = v9;
                do
                {
                  v89 = *v40;
                  if (*v40)
                  {
                    if (v89 != 0xFFFF)
                    {
                      v91 = vdup_n_s32(v89);
                      v92 = vmul_s32(v85, v91);
                      v93 = vmul_s32(v86, v91);
                      *v37 = vsli_n_s32(vsub_s32(v28, vshr_n_u32(vadd_s32(vsra_n_u32(v92, v92, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v86, vshr_n_u32(vadd_s32(vsra_n_u32(v93, v93, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                      v90 = v16 - ((v89 * v16 + ((v89 * v16) >> 16) + 1) >> 16);
                    }

                    else
                    {
                      LOWORD(v90) = 0;
                      *v37 = 0;
                    }
                  }

                  else
                  {
                    *v37 = v28;
                    LOWORD(v90) = v16;
                  }

                  *v40 = v90;
                  ++v37;
                  v40 += 2 * v774;
                  --v88;
                }

                while (v88);
                v37 += v818;
                v40 += 2 * v819;
                --v87;
              }

              while (v87);
              goto LABEL_291;
            case 5:
              v151 = v822[0];
              do
              {
                v152 = v9;
                v153 = v37;
                do
                {
                  v154 = *v153++;
                  cmyk64_DAMplusDAM(v37, v40, *&v28, v16, *v40, v154, *v40, ~v16);
                  v40 += 2 * v774;
                  v37 = v153;
                  --v152;
                }

                while (v152);
                v37 = &v153[v818];
                v40 += 2 * v819;
                --v151;
              }

              while (v151);
              goto LABEL_367;
            case 6:
              v161 = v822[0];
              do
              {
                v162 = v9;
                do
                {
                  if (*v40 != 0xFFFF)
                  {
                    if (~*v40 == 0xFFFF)
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }

                    else
                    {
                      cmyk64_DAplusDAM(v37, v40, *v37, *v40, *&v28, v16, ~*v40);
                    }
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v162;
                }

                while (v162);
                v37 += v818;
                v40 += 2 * v819;
                --v161;
              }

              while (v161);
              goto LABEL_367;
            case 7:
              if (v5)
              {
                v135 = vdup_n_s32(~v16);
                v136 = v822[0];
                do
                {
                  v137 = v9;
                  do
                  {
                    v138 = *v40;
                    v139 = vmul_s32(vand_s8(*v37, 0xFFFF0000FFFFLL), v135);
                    v140.i32[0] = HIWORD(v37->u32[0]);
                    v140.i32[1] = HIWORD(*v37);
                    v141 = vmul_s32(v140, v135);
                    *v37 = vsli_n_s32(vsub_s32(*v37, vshr_n_u32(vadd_s32(vsra_n_u32(v139, v139, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v140, vshr_n_u32(vadd_s32(vsra_n_u32(v141, v141, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                    ++v37;
                    *v40 = v138 - ((~v16 * v138 + ((~v16 * v138) >> 16) + 1) >> 16);
                    v40 += 2 * v774;
                    --v137;
                  }

                  while (v137);
                  v37 += v818;
                  v40 += 2 * v819;
                  --v136;
                }

                while (v136);
                goto LABEL_291;
              }

              v195 = v822[0];
              do
              {
                v196 = v9;
                v197 = v37;
                do
                {
                  v198 = *v197++;
                  cmyk64_DM(v37, v198, v16);
                  v40 += 2 * v774;
                  v37 = v197;
                  --v196;
                }

                while (v196);
                v37 = &v197[v818];
                v40 += 2 * v819;
                --v195;
              }

              while (v195);
              goto LABEL_367;
            case 8:
              if (v5)
              {
                v170 = vdup_n_s32(v16);
                v171 = v822[0];
                do
                {
                  v172 = v9;
                  do
                  {
                    v173 = *v40;
                    v174 = vmul_s32(vand_s8(*v37, 0xFFFF0000FFFFLL), v170);
                    v175.i32[0] = HIWORD(v37->u32[0]);
                    v175.i32[1] = HIWORD(*v37);
                    v176 = vmul_s32(v175, v170);
                    *v37 = vsli_n_s32(vsub_s32(*v37, vshr_n_u32(vadd_s32(vsra_n_u32(v174, v174, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v175, vshr_n_u32(vadd_s32(vsra_n_u32(v176, v176, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                    ++v37;
                    *v40 = v173 - ((v16 * v173 + ((v16 * v173) >> 16) + 1) >> 16);
                    v40 += 2 * v774;
                    --v172;
                  }

                  while (v172);
                  v37 += v818;
                  v40 += 2 * v819;
                  --v171;
                }

                while (v171);
LABEL_291:
                v822[0] = 0;
              }

              else
              {
                v201 = v822[0];
                do
                {
                  v202 = v9;
                  v203 = v37;
                  do
                  {
                    v204 = *v203++;
                    cmyk64_DM(v37, v204, ~v16);
                    v40 += 2 * v774;
                    v37 = v203;
                    --v202;
                  }

                  while (v202);
                  v37 = &v203[v818];
                  v40 += 2 * v819;
                  --v201;
                }

                while (v201);
LABEL_367:
                v822[0] = 0;
                v6 = v736;
LABEL_368:
                v36 = v797;
              }

LABEL_369:
              v37 = v799;
LABEL_370:
              v39 = v812;
              if (!v812)
              {
                return 1;
              }

              v821 = 0;
              break;
            case 9:
              v102 = v822[0];
              do
              {
                v103 = v9;
                v104 = v37;
                do
                {
                  v105 = *v104++;
                  cmyk64_DAMplusDAM(v37, v40, *&v28, v16, *v40 ^ 0xFFFF, v105, *v40, v16);
                  v40 += 2 * v774;
                  v37 = v104;
                  --v103;
                }

                while (v103);
                v37 = &v104[v818];
                v40 += 2 * v819;
                --v102;
              }

              while (v102);
              goto LABEL_367;
            case 10:
              v166 = v822[0];
              do
              {
                v167 = v9;
                v168 = v37;
                do
                {
                  v169 = *v168++;
                  cmyk64_DAMplusDAM(v37, v40, *&v28, v16, *v40 ^ 0xFFFF, v169, *v40, ~v16);
                  v40 += 2 * v774;
                  v37 = v168;
                  --v167;
                }

                while (v167);
                v37 = &v168[v818];
                v40 += 2 * v819;
                --v166;
              }

              while (v166);
              goto LABEL_367;
            case 11:
              v77 = v822[0];
              v78 = 2 * v774;
              if (v5)
              {
                do
                {
                  v79 = v801;
                  v80 = v37;
                  do
                  {
                    v81 = *v80++;
                    cmyk64_DAplusdDA(v37, v40, v81, *v40, *&v28, v16);
                    v40 += v78;
                    v37 = v80;
                    --v79;
                  }

                  while (v79);
                  v37 = &v80[v818];
                  v40 += 2 * v819;
                  --v77;
                }

                while (v77);
              }

              else
              {
                do
                {
                  v82 = v801;
                  v83 = v37;
                  do
                  {
                    v84 = *v83++;
                    cmyk64_DplusdDA(v37, v84, *&v28, v16);
                    v40 += v78;
                    v37 = v83;
                    --v82;
                  }

                  while (v82);
                  v37 = &v83[v818];
                  v40 += 2 * v819;
                  --v77;
                }

                while (v77);
              }

              goto LABEL_367;
            case 12:
              v94 = v822[0];
              v95 = 2 * v774;
              if (v5)
              {
                do
                {
                  v96 = v801;
                  v97 = v37;
                  do
                  {
                    v98 = *v97++;
                    cmyk64_DApluslDA(v37, v40, v98, *v40, *&v28, v16);
                    v40 += v95;
                    v37 = v97;
                    --v96;
                  }

                  while (v96);
                  v37 = &v97[v818];
                  v40 += 2 * v819;
                  --v94;
                }

                while (v94);
              }

              else
              {
                do
                {
                  v99 = v801;
                  v100 = v37;
                  do
                  {
                    v101 = *v100++;
                    cmyk64_DpluslD(v37, v101, *&v28);
                    v40 += v95;
                    v37 = v100;
                    --v99;
                  }

                  while (v99);
                  v37 = &v100[v818];
                  v40 += 2 * v819;
                  --v94;
                }

                while (v94);
              }

              goto LABEL_367;
            case 13:
              if (!v16)
              {
                goto LABEL_369;
              }

              v158 = v822[0];
              do
              {
                v159 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAmultiplyPDA_11872(*v37, *v40, *&v28, v16);
                      *v40 = v160;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAmultiplyPDA_11872(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v159;
                }

                while (v159);
                v37 += v818;
                v40 += 2 * v819;
                --v158;
              }

              while (v158);
              goto LABEL_335;
            case 14:
              if (!v16)
              {
                goto LABEL_369;
              }

              v74 = v822[0];
              do
              {
                v75 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAscreenPDA_11873(*v37, *v40, *&v28, v16);
                      *v40 = v76;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAscreenPDA_11873(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v75;
                }

                while (v75);
                v37 += v818;
                v40 += 2 * v819;
                --v74;
              }

              while (v74);
              goto LABEL_335;
            case 15:
              if (!v16)
              {
                goto LABEL_369;
              }

              v123 = v822[0];
              do
              {
                v124 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAoverlayPDA_11874(*v37, *v40, *&v28, v16);
                      *v40 = v125;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAoverlayPDA_11874(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v124;
                }

                while (v124);
                v37 += v818;
                v40 += 2 * v819;
                --v123;
              }

              while (v123);
              goto LABEL_335;
            case 16:
              if (!v16)
              {
                goto LABEL_369;
              }

              v71 = v822[0];
              do
              {
                v72 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAdarkenPDA_11876(*v37, *v40, *&v28, v16);
                      *v40 = v73;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAdarkenPDA_11876(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v72;
                }

                while (v72);
                v37 += v818;
                v40 += 2 * v819;
                --v71;
              }

              while (v71);
              goto LABEL_335;
            case 17:
              if (!v16)
              {
                goto LABEL_369;
              }

              v145 = v822[0];
              do
              {
                v146 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAlightenPDA_11875(*v37, *v40, *&v28, v16);
                      *v40 = v147;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAlightenPDA_11875(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v146;
                }

                while (v146);
                v37 += v818;
                v40 += 2 * v819;
                --v145;
              }

              while (v145);
              goto LABEL_335;
            case 18:
              if (!v16)
              {
                goto LABEL_369;
              }

              v163 = v822[0];
              do
              {
                v164 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAcolordodgePDA_11877(*v37, *v40, *&v28, v16);
                      *v40 = v165;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAcolordodgePDA_11877(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v164;
                }

                while (v164);
                v37 += v818;
                v40 += 2 * v819;
                --v163;
              }

              while (v163);
              goto LABEL_335;
            case 19:
              if (!v16)
              {
                goto LABEL_369;
              }

              v180 = v822[0];
              do
              {
                v181 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAcolorburnPDA_11878(*v37, *v40, *&v28, v16);
                      *v40 = v182;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAcolorburnPDA_11878(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v181;
                }

                while (v181);
                v37 += v818;
                v40 += 2 * v819;
                --v180;
              }

              while (v180);
              goto LABEL_335;
            case 20:
              if (!v16)
              {
                goto LABEL_369;
              }

              v148 = v822[0];
              do
              {
                v149 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAsoftlightPDA_11880(*v37, *v40, *&v28, v16);
                      *v40 = v150;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAsoftlightPDA_11880(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v149;
                }

                while (v149);
                v37 += v818;
                v40 += 2 * v819;
                --v148;
              }

              while (v148);
              goto LABEL_335;
            case 21:
              if (!v16)
              {
                goto LABEL_369;
              }

              v155 = v822[0];
              do
              {
                v156 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAhardlightPDA_11879(*v37, *v40, *&v28, v16);
                      *v40 = v157;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAhardlightPDA_11879(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v156;
                }

                while (v156);
                v37 += v818;
                v40 += 2 * v819;
                --v155;
              }

              while (v155);
              goto LABEL_335;
            case 22:
              if (!v16)
              {
                goto LABEL_369;
              }

              v177 = v822[0];
              do
              {
                v178 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAdifferencePDA_11881(*v37, *v40, *&v28, v16);
                      *v40 = v179;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAdifferencePDA_11881(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v178;
                }

                while (v178);
                v37 += v818;
                v40 += 2 * v819;
                --v177;
              }

              while (v177);
              goto LABEL_335;
            case 23:
              if (!v16)
              {
                goto LABEL_369;
              }

              v183 = v822[0];
              do
              {
                v184 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAexclusionPDA_11882(*v37, *v40, *&v28, v16);
                      *v40 = v185;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAexclusionPDA_11882(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v184;
                }

                while (v184);
                v37 += v818;
                v40 += 2 * v819;
                --v183;
              }

              while (v183);
              goto LABEL_335;
            case 24:
              if (!v16)
              {
                goto LABEL_369;
              }

              v109 = v822[0];
              do
              {
                v110 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAhuePDA_11883(*v37, *v40, *&v28, v16);
                      *v40 = v111;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAhuePDA_11883(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v110;
                }

                while (v110);
                v37 += v818;
                v40 += 2 * v819;
                --v109;
              }

              while (v109);
              goto LABEL_335;
            case 25:
              if (!v16)
              {
                goto LABEL_369;
              }

              v106 = v822[0];
              do
              {
                v107 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAsaturationPDA_11884(*v37, *v40, *&v28, v16);
                      *v40 = v108;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAsaturationPDA_11884(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v107;
                }

                while (v107);
                v37 += v818;
                v40 += 2 * v819;
                --v106;
              }

              while (v106);
              goto LABEL_335;
            case 26:
              if (!v16)
              {
                goto LABEL_369;
              }

              v186 = v822[0];
              do
              {
                v187 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAluminosityPDA_11885(*&v28, v16, *v37, *v40);
                      *v40 = v188;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAluminosityPDA_11885(*&v28, v16, *v37, 0xFFFFu);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v187;
                }

                while (v187);
                v37 += v818;
                v40 += 2 * v819;
                --v186;
              }

              while (v186);
              goto LABEL_335;
            case 27:
              if (!v16)
              {
                goto LABEL_369;
              }

              v68 = v822[0];
              do
              {
                v69 = v9;
                do
                {
                  if (v5)
                  {
                    if (*v40)
                    {
                      *v37 = PDAluminosityPDA_11885(*v37, *v40, *&v28, v16);
                      *v40 = v70;
                    }

                    else
                    {
                      *v37 = v28;
                      *v40 = v16;
                    }
                  }

                  else
                  {
                    *v37 = PDAluminosityPDA_11885(*v37, 0xFFFFu, *&v28, v16);
                  }

                  ++v37;
                  v40 += 2 * v774;
                  --v69;
                }

                while (v69);
                v37 += v818;
                v40 += 2 * v819;
                --v68;
              }

              while (v68);
LABEL_335:
              v822[0] = 0;
              goto LABEL_368;
            default:
              goto LABEL_369;
          }
        }

        v48 = v39;
LABEL_979:
        free(v48);
      }

      return 1;
    }

    v832[0] = *(v2 + 4);
    v822[0] = v11;
    v17 = *(v2 + 88);
    v18 = *(v2 + 12);
    v19 = *(v2 + 16);
    v20 = *(v2 + 28) >> 3;
    if (v5)
    {
      v733 = *(v2 + 32) >> 1;
      v734 = v5 + 2 * v733 * v19 + 2 * v18;
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v733 = 0;
      v734 = 0;
      v21 = 0;
    }

    v732 = *(v2 + 40) + 8 * v19 * v20 + 8 * v18;
    v31 = *(v2 + 56);
    v32 = *(v2 + 60);
    v33 = *(v2 + 76) >> 3;
    if (v15 == 256)
    {
      if (v4)
      {
        v34 = *(v2 + 80) >> 1;
        v4 += v34 * v32 + v31;
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v49 = *(v2 + 76) >> 3;
      v17 += 8 * v32 * v33 + 8 * v31;
      if (v33 == v20)
      {
        v50 = (v732 - v17) >> 3;
        if (v50 >= 1)
        {
          if (v50 <= v9)
          {
            v732 += 8 * v10;
            v17 += 8 * v10;
            v734 += 2 * (v21 & v10);
            v51 = -1;
            v49 = *(v2 + 28) >> 3;
            v4 += v35 & v10;
            goto LABEL_49;
          }

          if (v732 <= v17 + 8 * v20 * v12 + 8 * v9 - 8)
          {
            v732 += 8 * v20 * v12;
            v49 = -v20;
            v61 = v734 + 2 * v733 * v12;
            v733 = -v733;
            v734 = v61;
            v4 += v34 * v12;
            v21 &= 1u;
            v34 = -v34;
            v35 &= 1u;
            v51 = 1;
            v17 += 8 * v20 * v12;
            v20 = -v20;
            goto LABEL_49;
          }
        }
      }

      v21 &= 1u;
      v35 &= 1u;
      v51 = 1;
LABEL_49:
      v693 = *(v2 + 60);
      v694 = *(v2 + 56);
      if (v13)
      {
        v811 = v21;
        v813 = v35;
        v798 = 0;
        v52 = 0;
        v747 = v17;
        v748 = -1;
        v745 = v49;
        v744 = v34;
        goto LABEL_54;
      }

      v735 = v51;
      v56 = v51 * v9;
      v772 = v733 - v21 * v9;
      v57 = -1;
      v744 = v34;
      v745 = v49;
LABEL_62:
      v52 = 0;
      v746 = 0;
      v798 = 0;
      v800 = v4;
      v49 -= v56;
      v34 -= v35 * v9;
      v814 = v17;
      v817 = v4;
      v55 = v734;
      v820 = v732;
      goto LABEL_395;
    }

    v745 = *(v2 + 64);
    v744 = *(v2 + 68);
    if (v4)
    {
      v34 = *(v2 + 80) >> 1;
      v35 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v49 = *(v2 + 76) >> 3;
    v52 = v17 + 8 * v33 * v744;
    v21 &= 1u;
    if (v13)
    {
      v693 = *(v2 + 60);
      v694 = *(v2 + 56);
      v811 = v21;
      v813 = v35;
      v51 = 1;
      v798 = *(v2 + 88);
      v747 = v798;
      v748 = v798;
LABEL_54:
      v735 = v51;
      shape_enum_clip_alloc(v17, v2, v13, v51, v20, 1, *(v2 + 104), *(v2 + 108), v9, v11);
      v54 = v53;
      v800 = v4;
      v817 = v4;
      v55 = v734;
      v772 = v733;
      if (v53)
      {
        goto LABEL_372;
      }

      return 1;
    }

    v772 = v733 - (v21 * v9);
    if (!v17)
    {
      v693 = *(v2 + 60);
      v694 = *(v2 + 56);
      v57 = 0;
      v735 = 1;
      v56 = v9;
      goto LABEL_62;
    }

    v58 = v32 % v744;
    v693 = v32 % v744;
    v59 = v17 + 8 * v33 * v58;
    v60 = v31 % v745;
    v57 = v59 + 8 * v745;
    v694 = v60;
    v798 = (v59 + 8 * v60);
    v746 = 0;
    if (v4)
    {
      v735 = 1;
      v35 = 1;
      v800 = &v4[v34 * v58 + v60];
      v817 = v800;
    }

    else
    {
      v800 = 0;
      v817 = 0;
      v735 = 1;
    }

    v814 = (v59 + 8 * v60);
    v55 = v734;
    v820 = v732;
    v56 = v9;
LABEL_395:
    v811 = v21;
    v813 = v35;
    v747 = v17;
    v768 = v49;
    v771 = v20 - v56;
    v766 = v52;
    v767 = v34;
    switch(v736)
    {
      case 0:
        v748 = v57;
        v217 = v771 - v9;
        v218 = &v820[-v9 + 1];
        if (v735 >= 0)
        {
          v218 = v820;
          v217 = v771 + v9;
        }

        v219 = v822[0];
        v220 = v822[0] - 1;
        v221 = (v218 + 8 * ((v217 * v220) & (v217 >> 63)));
        if (v217 < 0)
        {
          v217 = -v217;
        }

        CGBlt_fillBytes(8 * v9, v822[0], 0, v221, 8 * v217);
        if (v811)
        {
          if (v735 < 0)
          {
            v222 = v772 - v9;
            v55 = &v55[-2 * v9 + 2];
          }

          else
          {
            v222 = v772 + v9;
          }

          v654 = (v222 * v220) & (v222 >> 63);
          v655 = &v55[2 * v654];
          if (v222 < 0)
          {
            v222 = -v222;
          }

          v772 = v222;
          v55 += 2 * v654;
          CGBlt_fillBytes(2 * v9, v219, 0, v655, 2 * v222);
        }

        goto LABEL_1124;
      case 1:
        v403 = *(v731 + 1);
        if (v403 == 2)
        {
          if (v9 >= 4 && (8 * v745) <= 0x40)
          {
            v3.i32[0] = 8 * v745;
            v644 = vcnt_s8(v3);
            v644.i16[0] = vaddlv_u8(v644);
            if (v644.i32[0] <= 1u)
            {
              v748 = v57;
              v645 = v822[0];
              CGSFillDRAM64(v820, 8 * (v9 + v771), 8 * v9, v822[0], v17, 8 * v49, 8 * v745, v744, 8 * v694, v693);
              if (!v811)
              {
                goto LABEL_1033;
              }

              v54 = v746;
              if (v813)
              {
                CGSFillDRAM64(v55, 2 * (v9 + v772), 2 * v9, v645, v4, 2 * v34, 2 * v745, v744, 2 * v694, v693);
              }

              else
              {
                CGBlt_fillBytes(2 * v9, v645, -1, v55, 2 * (v9 + v772));
              }

              goto LABEL_1034;
            }
          }
        }

        else if (v403 == 1)
        {
          v748 = v57;
          if (v735 < 0)
          {
            v404 = v49 - v9;
            v672 = 8 * v9 - 8;
            v814 = (v814 - v672);
            v405 = v771 - v9;
            v820 = (v820 - v672);
          }

          else
          {
            v404 = v49 + v9;
            v405 = v771 + v9;
          }

          v673 = v822[0];
          v674 = v822[0] - 1;
          v675 = &v814[(v404 * v674) & (v404 >> 63)];
          if (v404 >= 0)
          {
            v676 = v404;
          }

          else
          {
            v676 = -v404;
          }

          if (v405 >= 0)
          {
            LODWORD(v677) = v405;
          }

          else
          {
            v677 = -v405;
          }

          v678 = v676;
          CGBlt_copyBytes(8 * v9, v822[0], v675, &v820[(v405 * v674) & (v405 >> 63)], 8 * v676, 8 * v677);
          if (v811)
          {
            v679 = 2 * v9;
            if (v813)
            {
              v680 = v767 - v9;
              v681 = 2 * v9 - 2;
              v682 = (v817 - v681);
              v683 = v772 - v9;
              v684 = &v55[-v681];
              if (v735 >= 0)
              {
                v682 = v817;
                v684 = v55;
                v680 = v767 + v9;
                v683 = v772 + v9;
              }

              v685 = &v682[(v680 * v674) & (v680 >> 63)];
              if (v680 >= 0)
              {
                v686 = v680;
              }

              else
              {
                v686 = -v680;
              }

              v687 = v683 * v674;
              v34 = v686;
              v688 = &v684[2 * (v687 & (v683 >> 63))];
              if (v683 >= 0)
              {
                v689 = v683;
              }

              else
              {
                v689 = -v683;
              }

              v772 = v689;
              v817 = v685;
              v55 = v688;
              CGBlt_copyBytes(v679, v673, v685, v688, 2 * v686, 2 * v689);
              goto LABEL_1183;
            }

            v690 = v772 - v9;
            v691 = &v55[-2 * v9 + 2];
            if (v735 >= 0)
            {
              v691 = v55;
              v690 = v772 + v9;
            }

            v692 = (v690 * v674) & (v690 >> 63);
            if (v690 < 0)
            {
              v690 = -v690;
            }

            v772 = v690;
            v55 = (v691 + 2 * v692);
            CGBlt_fillBytes(v679, v673, -1, v55, 2 * v690);
          }

          v34 = v767;
LABEL_1183:
          v49 = v678;
          goto LABEL_1033;
        }

        if (v21)
        {
          if (v35)
          {
            v646 = v822[0];
            do
            {
              v647 = v9;
              do
              {
                *v820 = *v814;
                *v55 = *v817;
                v648 = &v814[v735];
                if (v648 >= v57)
                {
                  v649 = -v745;
                }

                else
                {
                  v649 = 0;
                }

                v814 = &v648[v649];
                v817 += v35 + v649;
                v55 += 2 * v21;
                v820 += v735;
                --v647;
              }

              while (v647);
              if (v52)
              {
                v650 = &v798[v49];
                if (v650 >= v52)
                {
                  v651 = -(v34 * v744);
                }

                else
                {
                  v651 = 0;
                }

                v652 = v800 + 2 * v34 + 2 * v651;
                if (v650 >= v52)
                {
                  v653 = -(v49 * v744);
                }

                else
                {
                  v653 = 0;
                }

                v57 += 8 * v653 + 8 * v49;
                v798 = &v650[v653];
                v800 += 2 * v34 + 2 * v651;
                v814 = v798;
                v817 = v652;
              }

              else
              {
                v814 += v49;
                v817 += v34;
              }

              v820 += v771;
              v55 += 2 * v772;
              --v646;
            }

            while (v646);
          }

          else
          {
            v664 = v822[0];
            do
            {
              v665 = v9;
              do
              {
                *v820 = *v814;
                *v55 = -1;
                v666 = &v814[v735];
                if (v666 >= v57)
                {
                  v667 = -v745;
                }

                else
                {
                  v667 = 0;
                }

                v814 = &v666[v667];
                v817 += v667;
                v55 += 2 * v21;
                v820 += v735;
                --v665;
              }

              while (v665);
              if (v52)
              {
                v668 = &v798[v49];
                if (v668 >= v52)
                {
                  v669 = -(v34 * v744);
                }

                else
                {
                  v669 = 0;
                }

                v670 = v800 + 2 * v34 + 2 * v669;
                if (v668 >= v52)
                {
                  v671 = -(v49 * v744);
                }

                else
                {
                  v671 = 0;
                }

                v57 += 8 * v671 + 8 * v49;
                v798 = &v668[v671];
                v800 += 2 * v34 + 2 * v669;
                v814 = v798;
                v817 = v670;
              }

              else
              {
                v814 += v49;
                v817 += v34;
              }

              v820 += v771;
              v55 += 2 * v772;
              --v664;
            }

            while (v664);
          }
        }

        else
        {
          v656 = v822[0];
          do
          {
            v657 = v9;
            do
            {
              *v820 = *v814;
              v658 = &v814[v735];
              if (v658 >= v57)
              {
                v659 = -v745;
              }

              else
              {
                v659 = 0;
              }

              v814 = &v658[v659];
              v817 += v35 + v659;
              v820 += v735;
              --v657;
            }

            while (v657);
            if (v52)
            {
              v660 = &v798[v49];
              if (v660 >= v52)
              {
                v661 = -(v34 * v744);
              }

              else
              {
                v661 = 0;
              }

              v662 = v800 + 2 * v34 + 2 * v661;
              if (v660 >= v52)
              {
                v663 = -(v49 * v744);
              }

              else
              {
                v663 = 0;
              }

              v57 += 8 * v663 + 8 * v49;
              v798 = &v660[v663];
              v800 += 2 * v34 + 2 * v661;
              v814 = v798;
              v817 = v662;
            }

            else
            {
              v814 += v49;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            --v656;
          }

          while (v656);
        }

LABEL_517:
        v748 = v57;
        v822[0] = 0;
        goto LABEL_1033;
      case 2:
        v737 = v20;
        v741 = v4;
        v344 = 8 * v735;
        if (v21)
        {
          v345 = v35;
          v716 = -(v49 * v744);
          v346 = v822[0];
          v347 = 2 * v21;
          do
          {
            v755 = v346;
            v348 = v9;
            do
            {
              v349 = *v817;
              if (*v817)
              {
                if (v349 == 0xFFFF)
                {
                  *v820 = *v814;
                  *v55 = -1;
                }

                else
                {
                  cmyk64_DAplusDAM(v820, v55, *v814, v349, *v820, *v55, v349 ^ 0xFFFF);
                  v344 = 8 * v735;
                }
              }

              v350 = &v814[v735];
              if (v350 >= v57)
              {
                v351 = -v745;
              }

              else
              {
                v351 = 0;
              }

              v814 = &v350[v351];
              v817 += v345 + v351;
              v55 += v347;
              v820 = (v820 + v344);
              --v348;
            }

            while (v348);
            if (v766)
            {
              v49 = v768;
              v352 = &v798[v768];
              v353 = -(v34 * v744);
              if (v352 < v766)
              {
                v353 = 0;
              }

              v354 = v800 + 2 * v34 + 2 * v353;
              v355 = v716;
              if (v352 < v766)
              {
                v355 = 0;
              }

              v57 += 8 * v355 + 8 * v768;
              v798 = &v352[v355];
              v800 += 2 * v34 + 2 * v353;
              v814 = v798;
              v817 = v354;
            }

            else
            {
              v49 = v768;
              v814 += v768;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            v346 = v755 - 1;
          }

          while (v755 != 1);
        }

        else
        {
          v606 = v35;
          v795 = -(v49 * v744);
          v607 = v822[0];
          do
          {
            v608 = v9;
            do
            {
              v609 = *v817;
              if (*v817)
              {
                if (v609 == 0xFFFF)
                {
                  *v820 = *v814;
                }

                else
                {
                  cmyk64_DplusDM(v820, *v814, *v820, v609 ^ 0xFFFF);
                  v344 = 8 * v735;
                }
              }

              v610 = &v814[v735];
              if (v610 >= v57)
              {
                v611 = -v745;
              }

              else
              {
                v611 = 0;
              }

              v814 = &v610[v611];
              v817 += v606 + v611;
              v820 = (v820 + v344);
              --v608;
            }

            while (v608);
            if (v52)
            {
              v49 = v768;
              v612 = &v798[v768];
              v613 = -(v34 * v744);
              if (v612 < v52)
              {
                v613 = 0;
              }

              v614 = v800 + 2 * v34 + 2 * v613;
              v615 = v795;
              if (v612 < v52)
              {
                v615 = 0;
              }

              v57 += 8 * v615 + 8 * v768;
              v798 = &v612[v615];
              v800 += 2 * v34 + 2 * v613;
              v814 = v798;
              v817 = v614;
            }

            else
            {
              v49 = v768;
              v814 += v768;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            --v607;
          }

          while (v607);
        }

        goto LABEL_1031;
      case 3:
        v738 = v20;
        v742 = v4;
        v370 = 2 * v21;
        v371 = 8 * v735;
        if (v35)
        {
          v372 = v822[0];
          v374 = v798;
          v373 = v800;
          do
          {
            v375 = v9;
            do
            {
              v376 = *v55;
              if (v376 == 0xFFFF)
              {
                *v820 = *v814;
                LOWORD(v376) = *v817;
              }

              else if (*v55)
              {
                v377 = *v817;
                v378 = v376 ^ 0xFFFF;
                v379 = vdup_n_s32(v378);
                v380 = vmul_s32(vand_s8(*v814, 0xFFFF0000FFFFLL), v379);
                v381.i32[0] = WORD1(*v814);
                v381.i32[1] = HIWORD(*v814);
                v382 = vmul_s32(v381, v379);
                *v820 = vsli_n_s32(vsub_s32(*v814, vshr_n_u32(vadd_s32(vsra_n_u32(v380, v380, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v381, vshr_n_u32(vadd_s32(vsra_n_u32(v382, v382, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v376 = v377 - ((v378 * v377 + ((v378 * v377) >> 16) + 1) >> 16);
              }

              else
              {
                *v820 = 0;
              }

              *v55 = v376;
              v383 = &v814[v735];
              if (v383 >= v57)
              {
                v384 = -v745;
              }

              else
              {
                v384 = 0;
              }

              v814 = &v383[v384];
              v817 += v35 + v384;
              v55 += v370;
              v820 = (v820 + v371);
              --v375;
            }

            while (v375);
            if (v52)
            {
              v385 = &v374[v49];
              if (v385 >= v52)
              {
                v386 = -(v767 * v744);
              }

              else
              {
                v386 = 0;
              }

              v373 += v767 + v386;
              if (v385 >= v52)
              {
                v387 = -(v49 * v744);
              }

              else
              {
                v387 = 0;
              }

              v374 = &v385[v387];
              v57 += 8 * v387 + 8 * v49;
              v814 = v374;
              v817 = v373;
            }

            else
            {
              v814 += v49;
              v817 += v767;
            }

            v820 += v771;
            v55 += 2 * v772;
            --v372;
          }

          while (v372);
          v798 = v374;
          v800 = v373;
        }

        else
        {
          v808 = v370;
          v616 = v822[0];
          do
          {
            v796 = v616;
            v617 = v9;
            do
            {
              v618 = *v55;
              if (v618 == 0xFFFF)
              {
                *v820 = *v814;
              }

              else if (*v55)
              {
                cmyk64_DM(v820, *v814, v618);
                v370 = v808;
              }

              else
              {
                *v820 = 0;
              }

              v619 = &v814[v735];
              if (v619 >= v57)
              {
                v620 = -v745;
              }

              else
              {
                v620 = 0;
              }

              v814 = &v619[v620];
              v817 += v620;
              v55 += v370;
              v820 = (v820 + v371);
              --v617;
            }

            while (v617);
            v52 = v766;
            if (v766)
            {
              v621 = &v798[v49];
              v622 = -(v767 * v744);
              if (v621 < v766)
              {
                v622 = 0;
              }

              v623 = v800 + 2 * v767 + 2 * v622;
              v624 = -(v49 * v744);
              if (v621 < v766)
              {
                v624 = 0;
              }

              v57 += 8 * v624 + 8 * v49;
              v798 = &v621[v624];
              v800 += 2 * v767 + 2 * v622;
              v814 = v798;
              v817 = v623;
            }

            else
            {
              v814 += v49;
              v817 += v767;
            }

            v820 += v771;
            v55 += 2 * v772;
            v616 = v796 - 1;
          }

          while (v796 != 1);
        }

        goto LABEL_1075;
      case 4:
        v276 = v822[0];
        do
        {
          v277 = v9;
          do
          {
            v278 = *v55;
            if (*v55)
            {
              LOWORD(v279) = ~v278;
              if (v278 != 0xFFFF)
              {
                if (v35)
                {
                  v280 = *v817;
                }

                else
                {
                  v280 = 0xFFFF;
                }

                v281 = vdup_n_s32(v278);
                v282 = vmul_s32(vand_s8(*v814, 0xFFFF0000FFFFLL), v281);
                v283.i32[0] = WORD1(*v814);
                v283.i32[1] = HIWORD(*v814);
                v284 = vmul_s32(v283, v281);
                *v820 = vsli_n_s32(vsub_s32(*v814, vshr_n_u32(vadd_s32(vsra_n_u32(v282, v282, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v283, vshr_n_u32(vadd_s32(vsra_n_u32(v284, v284, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v279 = v280 - ((v278 * v280 + ((v278 * v280) >> 16) + 1) >> 16);
              }

              else
              {
                *v820 = 0;
              }
            }

            else if (v35)
            {
              LOWORD(v279) = *v817;
            }

            else
            {
              LOWORD(v279) = -1;
            }

            *v55 = v279;
            v285 = &v814[v735];
            if (v285 >= v57)
            {
              v286 = -v745;
            }

            else
            {
              v286 = 0;
            }

            v814 = &v285[v286];
            v817 += v35 + v286;
            v55 += 2 * v21;
            v820 += v735;
            --v277;
          }

          while (v277);
          if (v52)
          {
            v287 = &v798[v49];
            if (v287 >= v52)
            {
              v288 = -(v34 * v744);
            }

            else
            {
              v288 = 0;
            }

            v289 = v800 + 2 * v34 + 2 * v288;
            if (v287 >= v52)
            {
              v290 = -(v49 * v744);
            }

            else
            {
              v290 = 0;
            }

            v57 += 8 * v290 + 8 * v49;
            v798 = &v287[v290];
            v800 += 2 * v34 + 2 * v288;
            v814 = v798;
            v817 = v289;
          }

          else
          {
            v814 += v49;
            v817 += v34;
          }

          v820 += v771;
          v55 += 2 * v772;
          --v276;
        }

        while (v276);
        goto LABEL_517;
      case 5:
        v737 = v20;
        v741 = v4;
        v434 = v35;
        v720 = -(v49 * v744);
        v435 = v822[0];
        v436 = 2 * v21;
        v437 = 8 * v735;
        do
        {
          v786 = v435;
          v438 = v9;
          do
          {
            v439 = v437;
            cmyk64_DAMplusDAM(v820, v55, *v814, *v817, *v55, *v820, *v55, *v817 ^ 0xFFFF);
            v437 = v439;
            v440 = &v814[v735];
            if (v440 >= v57)
            {
              v441 = -v745;
            }

            else
            {
              v441 = 0;
            }

            v814 = &v440[v441];
            v817 += v434 + v441;
            v55 += v436;
            v820 = (v820 + v439);
            --v438;
          }

          while (v438);
          if (v766)
          {
            v49 = v768;
            v442 = &v798[v768];
            v443 = -(v34 * v744);
            if (v442 < v766)
            {
              v443 = 0;
            }

            v444 = v800 + 2 * v34 + 2 * v443;
            v445 = v720;
            if (v442 < v766)
            {
              v445 = 0;
            }

            v57 += 8 * v445 + 8 * v768;
            v798 = &v442[v445];
            v800 += 2 * v34 + 2 * v443;
            v814 = v798;
            v817 = v444;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v34;
          }

          v820 += v771;
          v55 += 2 * v772;
          v435 = v786 - 1;
        }

        while (v786 != 1);
        goto LABEL_1031;
      case 6:
        v739 = v20;
        v743 = v4;
        v474 = v34;
        v475 = v35;
        v723 = -(v474 * v744);
        v476 = v822[0];
        v477 = 2 * v21;
        do
        {
          v805 = v476;
          v478 = v9;
          v761 = v57;
          do
          {
            if (*v55 != 0xFFFF)
            {
              if (~*v55 == 0xFFFF)
              {
                *v820 = *v814;
                if (v35)
                {
                  v479 = *v817;
                }

                else
                {
                  v479 = -1;
                }

                *v55 = v479;
              }

              else
              {
                if (v35)
                {
                  v480 = *v817;
                }

                else
                {
                  v480 = 0xFFFF;
                }

                cmyk64_DAplusDAM(v820, v55, *v820, *v55, *v814, v480, ~*v55);
                LODWORD(v35) = v813;
                v57 = v761;
              }
            }

            v481 = &v814[v735];
            if (v481 >= v57)
            {
              v482 = -v745;
            }

            else
            {
              v482 = 0;
            }

            v814 = &v481[v482];
            v817 += v475 + v482;
            v55 += v477;
            v820 += v735;
            --v478;
          }

          while (v478);
          if (v52)
          {
            v483 = &v798[v49];
            v484 = v723;
            if (v483 < v52)
            {
              v484 = 0;
            }

            v485 = v800 + 2 * v767 + 2 * v484;
            v486 = -(v49 * v744);
            if (v483 < v52)
            {
              v486 = 0;
            }

            v57 += 8 * v486 + 8 * v49;
            v798 = &v483[v486];
            v800 += 2 * v767 + 2 * v484;
            v814 = v798;
            v817 = v485;
          }

          else
          {
            v814 += v49;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v476 = v805 - 1;
        }

        while (v805 != 1);
        goto LABEL_977;
      case 7:
        if (v21)
        {
          v388 = v822[0];
          do
          {
            v389 = v9;
            do
            {
              v390 = *v817;
              if (v390 != 0xFFFF)
              {
                if (*v817)
                {
                  v391 = *v55;
                  v392 = v390 ^ 0xFFFF;
                  v393 = vdup_n_s32(v392);
                  v394 = vmul_s32(vand_s8(*v820, 0xFFFF0000FFFFLL), v393);
                  v395.i32[0] = HIWORD(v820->u32[0]);
                  v395.i32[1] = HIWORD(*v820);
                  v396 = vmul_s32(v395, v393);
                  *v820 = vsli_n_s32(vsub_s32(*v820, vshr_n_u32(vadd_s32(vsra_n_u32(v394, v394, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v395, vshr_n_u32(vadd_s32(vsra_n_u32(v396, v396, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                  v390 = v391 - ((v392 * v391 + ((v392 * v391) >> 16) + 1) >> 16);
                }

                else
                {
                  *v820 = 0;
                }

                *v55 = v390;
              }

              v397 = &v814[v735];
              if (v397 >= v57)
              {
                v398 = -v745;
              }

              else
              {
                v398 = 0;
              }

              v814 = &v397[v398];
              v817 += v35 + v398;
              v55 += 2 * v21;
              v820 += v735;
              --v389;
            }

            while (v389);
            if (v52)
            {
              v399 = &v798[v49];
              if (v399 >= v52)
              {
                v400 = -(v34 * v744);
              }

              else
              {
                v400 = 0;
              }

              v401 = v800 + 2 * v34 + 2 * v400;
              if (v399 >= v52)
              {
                v402 = -(v49 * v744);
              }

              else
              {
                v402 = 0;
              }

              v57 += 8 * v402 + 8 * v49;
              v798 = &v399[v402];
              v800 += 2 * v34 + 2 * v400;
              v814 = v798;
              v817 = v401;
            }

            else
            {
              v814 += v49;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            --v388;
          }

          while (v388);
          goto LABEL_883;
        }

        v738 = v20;
        v742 = v4;
        v625 = v35;
        v626 = v822[0];
        do
        {
          v627 = v9;
          do
          {
            v628 = *v817;
            if (v628 != 0xFFFF)
            {
              if (*v817)
              {
                cmyk64_DM(v820, *v820, v628);
              }

              else
              {
                *v820 = 0;
              }
            }

            v629 = &v814[v735];
            if (v629 >= v57)
            {
              v630 = -v745;
            }

            else
            {
              v630 = 0;
            }

            v814 = &v629[v630];
            v817 += v625 + v630;
            v820 += v735;
            --v627;
          }

          while (v627);
          v52 = v766;
          if (v766)
          {
            v631 = &v798[v49];
            v632 = -(v34 * v744);
            if (v631 < v766)
            {
              v632 = 0;
            }

            v633 = v800 + 2 * v34 + 2 * v632;
            v634 = -(v49 * v744);
            if (v631 < v766)
            {
              v634 = 0;
            }

            v57 += 8 * v634 + 8 * v49;
            v798 = &v631[v634];
            v800 += 2 * v34 + 2 * v632;
            v814 = v798;
            v817 = v633;
          }

          else
          {
            v814 += v49;
            v817 += v34;
          }

          v820 += v771;
          v55 += 2 * v772;
          --v626;
        }

        while (v626);
LABEL_1075:
        v748 = v57;
        v822[0] = 0;
        v20 = v738;
        v4 = v742;
        v34 = v767;
        goto LABEL_1033;
      case 8:
        if (!v21)
        {
          v740 = v20;
          v635 = v35;
          v730 = -(v34 * v744);
          v636 = v822[0];
          do
          {
            v809 = v636;
            v637 = v9;
            do
            {
              if (~*v817 != 0xFFFF)
              {
                if (*v817 == -1)
                {
                  *v820 = 0;
                }

                else
                {
                  cmyk64_DM(v820, *v820, ~*v817);
                }
              }

              v638 = &v814[v735];
              if (v638 >= v57)
              {
                v639 = -v745;
              }

              else
              {
                v639 = 0;
              }

              v814 = &v638[v639];
              v817 += v635 + v639;
              v820 += v735;
              --v637;
            }

            while (v637);
            if (v52)
            {
              v34 = v767;
              v640 = &v798[v49];
              v641 = v730;
              if (v640 < v52)
              {
                v641 = 0;
              }

              v642 = v800 + 2 * v767 + 2 * v641;
              v643 = -(v49 * v744);
              if (v640 < v52)
              {
                v643 = 0;
              }

              v57 += 8 * v643 + 8 * v49;
              v798 = &v640[v643];
              v800 += 2 * v767 + 2 * v641;
              v814 = v798;
              v817 = v642;
            }

            else
            {
              v34 = v767;
              v814 += v49;
              v817 += v767;
            }

            v820 += v771;
            v55 += 2 * v772;
            v636 = v809 - 1;
          }

          while (v809 != 1);
          v748 = v57;
          v822[0] = 0;
          v20 = v740;
          goto LABEL_1124;
        }

        v515 = v822[0];
        do
        {
          v516 = v9;
          do
          {
            v517 = *v817;
            if (*v817)
            {
              if (v517 != 0xFFFF)
              {
                v519 = *v55;
                v520 = vdup_n_s32(v517);
                v521 = vmul_s32(vand_s8(*v820, 0xFFFF0000FFFFLL), v520);
                v522.i32[0] = HIWORD(v820->u32[0]);
                v522.i32[1] = HIWORD(*v820);
                v523 = vmul_s32(v522, v520);
                *v820 = vsli_n_s32(vsub_s32(*v820, vshr_n_u32(vadd_s32(vsra_n_u32(v521, v521, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v522, vshr_n_u32(vadd_s32(vsra_n_u32(v523, v523, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v518 = v519 - ((v517 * v519 + ((v517 * v519) >> 16) + 1) >> 16);
              }

              else
              {
                LOWORD(v518) = 0;
                *v820 = 0;
              }

              *v55 = v518;
            }

            v524 = &v814[v735];
            if (v524 >= v57)
            {
              v525 = -v745;
            }

            else
            {
              v525 = 0;
            }

            v814 = &v524[v525];
            v817 += v35 + v525;
            v55 += 2 * v21;
            v820 += v735;
            --v516;
          }

          while (v516);
          if (v52)
          {
            v526 = &v798[v49];
            if (v526 >= v52)
            {
              v527 = -(v34 * v744);
            }

            else
            {
              v527 = 0;
            }

            v528 = v800 + 2 * v34 + 2 * v527;
            if (v526 >= v52)
            {
              v529 = -(v49 * v744);
            }

            else
            {
              v529 = 0;
            }

            v57 += 8 * v529 + 8 * v49;
            v798 = &v526[v529];
            v800 += 2 * v34 + 2 * v527;
            v814 = v798;
            v817 = v528;
          }

          else
          {
            v814 += v49;
            v817 += v34;
          }

          v820 += v771;
          v55 += 2 * v772;
          --v515;
        }

        while (v515);
LABEL_883:
        v748 = v57;
        v822[0] = 0;
        goto LABEL_1033;
      case 9:
        v737 = v20;
        v741 = v4;
        v302 = v35;
        v780 = -(v49 * v744);
        v303 = v822[0];
        v304 = 2 * v21;
        v305 = 8 * v735;
        v306 = -v745;
        do
        {
          v804 = v303;
          v307 = v9;
          do
          {
            v308 = v305;
            v309 = v306;
            cmyk64_DAMplusDAM(v820, v55, *v814, *v817, *v55 ^ 0xFFFF, *v820, *v55, *v817);
            v306 = v309;
            v305 = v308;
            v310 = &v814[v735];
            if (v310 >= v57)
            {
              v311 = v309;
            }

            else
            {
              v311 = 0;
            }

            v814 = &v310[v311];
            v817 += v302 + v311;
            v55 += v304;
            v820 = (v820 + v308);
            --v307;
          }

          while (v307);
          if (v766)
          {
            v49 = v768;
            v312 = &v798[v768];
            v313 = -(v34 * v744);
            if (v312 < v766)
            {
              v313 = 0;
            }

            v314 = v800 + 2 * v34 + 2 * v313;
            v315 = v780;
            if (v312 < v766)
            {
              v315 = 0;
            }

            v57 += 8 * v315 + 8 * v768;
            v798 = &v312[v315];
            v800 += 2 * v34 + 2 * v313;
            v814 = v798;
            v817 = v314;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v34;
          }

          v820 += v771;
          v55 += 2 * v772;
          v303 = v804 - 1;
        }

        while (v804 != 1);
        goto LABEL_1031;
      case 10:
        v737 = v20;
        v741 = v4;
        v501 = v35;
        v790 = -(v49 * v744);
        v502 = v822[0];
        v503 = 2 * v21;
        v504 = 8 * v735;
        v505 = -v745;
        do
        {
          v806 = v502;
          v506 = v9;
          do
          {
            v507 = v504;
            v508 = v505;
            cmyk64_DAMplusDAM(v820, v55, *v814, *v817, *v55 ^ 0xFFFF, *v820, *v55, *v817 ^ 0xFFFF);
            v505 = v508;
            v504 = v507;
            v509 = &v814[v735];
            if (v509 >= v57)
            {
              v510 = v508;
            }

            else
            {
              v510 = 0;
            }

            v814 = &v509[v510];
            v817 += v501 + v510;
            v55 += v503;
            v820 = (v820 + v507);
            --v506;
          }

          while (v506);
          if (v766)
          {
            v49 = v768;
            v511 = &v798[v768];
            v512 = -(v34 * v744);
            if (v511 < v766)
            {
              v512 = 0;
            }

            v513 = v800 + 2 * v34 + 2 * v512;
            v514 = v790;
            if (v511 < v766)
            {
              v514 = 0;
            }

            v57 += 8 * v514 + 8 * v768;
            v798 = &v511[v514];
            v800 += 2 * v34 + 2 * v512;
            v814 = v798;
            v817 = v513;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v34;
          }

          v820 += v771;
          v55 += 2 * v772;
          v502 = v806 - 1;
        }

        while (v806 != 1);
        goto LABEL_1031;
      case 11:
        v737 = v20;
        v741 = v4;
        v778 = 8 * v735;
        v265 = v35;
        if (v21)
        {
          v713 = -(v49 * v744);
          v266 = v822[0];
          v267 = 2 * v21;
          do
          {
            v752 = v266;
            v268 = v9;
            do
            {
              if (v35)
              {
                v269 = *v817;
              }

              else
              {
                v269 = 0xFFFF;
              }

              cmyk64_DAplusdDA(v820, v55, *v820, *v55, *v814, v269);
              v270 = &v814[v735];
              if (v270 >= v57)
              {
                v271 = -v745;
              }

              else
              {
                v271 = 0;
              }

              v814 = &v270[v271];
              v817 += v265 + v271;
              v55 += v267;
              v820 = (v820 + v778);
              --v268;
              LODWORD(v35) = v813;
            }

            while (v268);
            if (v52)
            {
              v49 = v768;
              v272 = &v798[v768];
              v273 = -(v34 * v744);
              if (v272 < v52)
              {
                v273 = 0;
              }

              v274 = v800 + 2 * v34 + 2 * v273;
              v275 = v713;
              if (v272 < v52)
              {
                v275 = 0;
              }

              v57 += 8 * v275 + 8 * v768;
              v798 = &v272[v275];
              v800 += 2 * v34 + 2 * v273;
              v814 = v798;
              v817 = v274;
            }

            else
            {
              v49 = v768;
              v814 += v768;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            v266 = v752 - 1;
          }

          while (v752 != 1);
        }

        else
        {
          v729 = -(v49 * v744);
          v586 = v822[0];
          do
          {
            v587 = v9;
            do
            {
              if (v35)
              {
                v588 = *v817;
              }

              else
              {
                v588 = 0xFFFF;
              }

              cmyk64_DplusdDA(v820, *v820, *v814, v588);
              v589 = &v814[v735];
              if (v589 >= v57)
              {
                v590 = -v745;
              }

              else
              {
                v590 = 0;
              }

              v814 = &v589[v590];
              v817 += v265 + v590;
              v820 = (v820 + v778);
              --v587;
              LODWORD(v35) = v813;
            }

            while (v587);
            if (v52)
            {
              v49 = v768;
              v591 = &v798[v768];
              v592 = -(v34 * v744);
              if (v591 < v52)
              {
                v592 = 0;
              }

              v593 = v800 + 2 * v34 + 2 * v592;
              v594 = v729;
              if (v591 < v52)
              {
                v594 = 0;
              }

              v57 += 8 * v594 + 8 * v768;
              v798 = &v591[v594];
              v800 += 2 * v34 + 2 * v592;
              v814 = v798;
              v817 = v593;
            }

            else
            {
              v49 = v768;
              v814 += v768;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            --v586;
          }

          while (v586);
        }

        goto LABEL_1031;
      case 12:
        v738 = v20;
        v742 = v4;
        if (v21)
        {
          v291 = v35;
          v292 = v822[0];
          v293 = 2 * v21;
          do
          {
            v779 = v292;
            v294 = v9;
            do
            {
              if (v35)
              {
                v295 = *v817;
              }

              else
              {
                v295 = 0xFFFF;
              }

              cmyk64_DApluslDA(v820, v55, *v820, *v55, *v814, v295);
              v296 = &v814[v735];
              if (v296 >= v57)
              {
                v297 = -v745;
              }

              else
              {
                v297 = 0;
              }

              v814 = &v296[v297];
              v817 += v291 + v297;
              v55 += v293;
              v820 += v735;
              --v294;
              LODWORD(v35) = v813;
            }

            while (v294);
            v52 = v766;
            if (v766)
            {
              v298 = &v798[v49];
              v299 = -(v767 * v744);
              if (v298 < v766)
              {
                v299 = 0;
              }

              v300 = v800 + 2 * v767 + 2 * v299;
              v301 = -(v49 * v744);
              if (v298 < v766)
              {
                v301 = 0;
              }

              v57 += 8 * v301 + 8 * v49;
              v798 = &v298[v301];
              v800 += 2 * v767 + 2 * v299;
              v814 = v798;
              v817 = v300;
            }

            else
            {
              v814 += v49;
              v817 += v767;
            }

            v820 += v771;
            v55 += 2 * v772;
            v292 = v779 - 1;
          }

          while (v779 != 1);
        }

        else
        {
          v595 = v35;
          v596 = v822[0];
          v597 = 8 * v735;
          do
          {
            v807 = v596;
            v598 = v9;
            do
            {
              v599 = v597;
              cmyk64_DpluslD(v820, *v820, *v814);
              v597 = v599;
              v600 = &v814[v735];
              if (v600 >= v57)
              {
                v601 = -v745;
              }

              else
              {
                v601 = 0;
              }

              v814 = &v600[v601];
              v817 += v595 + v601;
              v820 = (v820 + v599);
              --v598;
            }

            while (v598);
            v52 = v766;
            if (v766)
            {
              v602 = &v798[v49];
              v603 = -(v34 * v744);
              if (v602 < v766)
              {
                v603 = 0;
              }

              v604 = v800 + 2 * v34 + 2 * v603;
              v605 = -(v49 * v744);
              if (v602 < v766)
              {
                v605 = 0;
              }

              v57 += 8 * v605 + 8 * v49;
              v798 = &v602[v605];
              v800 += 2 * v34 + 2 * v603;
              v814 = v798;
              v817 = v604;
            }

            else
            {
              v814 += v49;
              v817 += v34;
            }

            v820 += v771;
            v55 += 2 * v772;
            v596 = v807 - 1;
          }

          while (v807 != 1);
        }

        goto LABEL_1075;
      case 13:
        v737 = v20;
        v741 = v4;
        v788 = v35;
        v460 = v822[0];
        v704 = -(v34 * v744);
        v722 = -(v49 * v744);
        v461 = 2 * v21;
        while (1)
        {
          v760 = v460;
          v462 = v9;
          v463 = v57;
          do
          {
            if (v35)
            {
              v464 = *v817;
              if (!*v817)
              {
                goto LABEL_785;
              }

              if (v21)
              {
                goto LABEL_780;
              }
            }

            else
            {
              v464 = 0xFFFF;
              if (v21)
              {
LABEL_780:
                if (*v55)
                {
                  v465 = PDAmultiplyPDA_11872(*v820, *v55, *v814, v464);
                  v57 = v463;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v465;
                  *v55 = v466;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v464;
                }

                goto LABEL_785;
              }
            }

            v467 = PDAmultiplyPDA_11872(*v820, 0xFFFFu, *v814, v464);
            v57 = v463;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v467;
LABEL_785:
            v468 = &v814[v735];
            if (v468 >= v57)
            {
              v469 = -v745;
            }

            else
            {
              v469 = 0;
            }

            v814 = &v468[v469];
            v817 += v788 + v469;
            v55 += v461;
            v820 += v735;
            --v462;
          }

          while (v462);
          if (v52)
          {
            v49 = v768;
            v470 = &v798[v768];
            v471 = v704;
            if (v470 < v52)
            {
              v471 = 0;
            }

            v472 = v800 + 2 * v767 + 2 * v471;
            v473 = v722;
            if (v470 < v52)
            {
              v473 = 0;
            }

            v57 += 8 * v473 + 8 * v768;
            v798 = &v470[v473];
            v800 += 2 * v767 + 2 * v471;
            v814 = v798;
            v817 = v472;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v460 = v760 - 1;
          if (v760 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 14:
        v737 = v20;
        v741 = v4;
        v777 = v35;
        v251 = v822[0];
        v697 = -(v34 * v744);
        v712 = -(v49 * v744);
        v252 = 2 * v21;
        while (1)
        {
          v751 = v251;
          v253 = v9;
          v254 = v57;
          do
          {
            if (v35)
            {
              v255 = *v817;
              if (!*v817)
              {
                goto LABEL_459;
              }

              if (v21)
              {
                goto LABEL_454;
              }
            }

            else
            {
              v255 = 0xFFFF;
              if (v21)
              {
LABEL_454:
                if (*v55)
                {
                  v256 = PDAscreenPDA_11873(*v820, *v55, *v814, v255);
                  v57 = v254;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v256;
                  *v55 = v257;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v255;
                }

                goto LABEL_459;
              }
            }

            v258 = PDAscreenPDA_11873(*v820, 0xFFFFu, *v814, v255);
            v57 = v254;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v258;
LABEL_459:
            v259 = &v814[v735];
            if (v259 >= v57)
            {
              v260 = -v745;
            }

            else
            {
              v260 = 0;
            }

            v814 = &v259[v260];
            v817 += v777 + v260;
            v55 += v252;
            v820 += v735;
            --v253;
          }

          while (v253);
          if (v52)
          {
            v49 = v768;
            v261 = &v798[v768];
            v262 = v697;
            if (v261 < v52)
            {
              v262 = 0;
            }

            v263 = v800 + 2 * v767 + 2 * v262;
            v264 = v712;
            if (v261 < v52)
            {
              v264 = 0;
            }

            v57 += 8 * v264 + 8 * v768;
            v798 = &v261[v264];
            v800 += 2 * v767 + 2 * v262;
            v814 = v798;
            v817 = v263;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v251 = v751 - 1;
          if (v751 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 15:
        v737 = v20;
        v741 = v4;
        v783 = v35;
        v356 = v822[0];
        v700 = -(v34 * v744);
        v717 = -(v49 * v744);
        v357 = 2 * v21;
        while (1)
        {
          v756 = v356;
          v358 = v9;
          v359 = v57;
          do
          {
            if (v35)
            {
              v360 = *v817;
              if (!*v817)
              {
                goto LABEL_628;
              }

              if (v21)
              {
                goto LABEL_623;
              }
            }

            else
            {
              v360 = 0xFFFF;
              if (v21)
              {
LABEL_623:
                if (*v55)
                {
                  v361 = PDAoverlayPDA_11874(*v820, *v55, *v814, v360);
                  v57 = v359;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v361;
                  *v55 = v362;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v360;
                }

                goto LABEL_628;
              }
            }

            v363 = PDAoverlayPDA_11874(*v820, 0xFFFFu, *v814, v360);
            v57 = v359;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v363;
LABEL_628:
            v364 = &v814[v735];
            if (v364 >= v57)
            {
              v365 = -v745;
            }

            else
            {
              v365 = 0;
            }

            v814 = &v364[v365];
            v817 += v783 + v365;
            v55 += v357;
            v820 += v735;
            --v358;
          }

          while (v358);
          if (v52)
          {
            v49 = v768;
            v366 = &v798[v768];
            v367 = v700;
            if (v366 < v52)
            {
              v367 = 0;
            }

            v368 = v800 + 2 * v767 + 2 * v367;
            v369 = v717;
            if (v366 < v52)
            {
              v369 = 0;
            }

            v57 += 8 * v369 + 8 * v768;
            v798 = &v366[v369];
            v800 += 2 * v767 + 2 * v367;
            v814 = v798;
            v817 = v368;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v356 = v756 - 1;
          if (v756 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 16:
        v737 = v20;
        v741 = v4;
        v776 = v35;
        v237 = v822[0];
        v696 = -(v34 * v744);
        v711 = -(v49 * v744);
        v238 = 2 * v21;
        while (1)
        {
          v750 = v237;
          v239 = v9;
          v240 = v57;
          do
          {
            if (v35)
            {
              v241 = *v817;
              if (!*v817)
              {
                goto LABEL_436;
              }

              if (v21)
              {
                goto LABEL_431;
              }
            }

            else
            {
              v241 = 0xFFFF;
              if (v21)
              {
LABEL_431:
                if (*v55)
                {
                  v242 = PDAdarkenPDA_11876(*v820, *v55, *v814, v241);
                  v57 = v240;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v242;
                  *v55 = v243;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v241;
                }

                goto LABEL_436;
              }
            }

            v244 = PDAdarkenPDA_11876(*v820, 0xFFFFu, *v814, v241);
            v57 = v240;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v244;
LABEL_436:
            v245 = &v814[v735];
            if (v245 >= v57)
            {
              v246 = -v745;
            }

            else
            {
              v246 = 0;
            }

            v814 = &v245[v246];
            v817 += v776 + v246;
            v55 += v238;
            v820 += v735;
            --v239;
          }

          while (v239);
          if (v52)
          {
            v49 = v768;
            v247 = &v798[v768];
            v248 = v696;
            if (v247 < v52)
            {
              v248 = 0;
            }

            v249 = v800 + 2 * v767 + 2 * v248;
            v250 = v711;
            if (v247 < v52)
            {
              v250 = 0;
            }

            v57 += 8 * v250 + 8 * v768;
            v798 = &v247[v250];
            v800 += 2 * v767 + 2 * v248;
            v814 = v798;
            v817 = v249;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v237 = v750 - 1;
          if (v750 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 17:
        v737 = v20;
        v741 = v4;
        v784 = v35;
        v406 = v822[0];
        v701 = -(v34 * v744);
        v718 = -(v49 * v744);
        v407 = 2 * v21;
        while (1)
        {
          v757 = v406;
          v408 = v9;
          v409 = v57;
          do
          {
            if (v35)
            {
              v410 = *v817;
              if (!*v817)
              {
                goto LABEL_701;
              }

              if (v21)
              {
                goto LABEL_696;
              }
            }

            else
            {
              v410 = 0xFFFF;
              if (v21)
              {
LABEL_696:
                if (*v55)
                {
                  v411 = PDAlightenPDA_11875(*v820, *v55, *v814, v410);
                  v57 = v409;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v411;
                  *v55 = v412;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v410;
                }

                goto LABEL_701;
              }
            }

            v413 = PDAlightenPDA_11875(*v820, 0xFFFFu, *v814, v410);
            v57 = v409;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v413;
LABEL_701:
            v414 = &v814[v735];
            if (v414 >= v57)
            {
              v415 = -v745;
            }

            else
            {
              v415 = 0;
            }

            v814 = &v414[v415];
            v817 += v784 + v415;
            v55 += v407;
            v820 += v735;
            --v408;
          }

          while (v408);
          if (v52)
          {
            v49 = v768;
            v416 = &v798[v768];
            v417 = v701;
            if (v416 < v52)
            {
              v417 = 0;
            }

            v418 = v800 + 2 * v767 + 2 * v417;
            v419 = v718;
            if (v416 < v52)
            {
              v419 = 0;
            }

            v57 += 8 * v419 + 8 * v768;
            v798 = &v416[v419];
            v800 += 2 * v767 + 2 * v417;
            v814 = v798;
            v817 = v418;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v406 = v757 - 1;
          if (v757 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 18:
        v737 = v20;
        v741 = v4;
        v789 = v35;
        v487 = v822[0];
        v705 = -(v34 * v744);
        v724 = -(v49 * v744);
        v488 = 2 * v21;
        while (1)
        {
          v762 = v487;
          v489 = v9;
          v490 = v57;
          do
          {
            if (v35)
            {
              v491 = *v817;
              if (!*v817)
              {
                goto LABEL_833;
              }

              if (v21)
              {
                goto LABEL_828;
              }
            }

            else
            {
              v491 = 0xFFFF;
              if (v21)
              {
LABEL_828:
                if (*v55)
                {
                  v492 = PDAcolordodgePDA_11877(*v820, *v55, *v814, v491);
                  v57 = v490;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v492;
                  *v55 = v493;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v491;
                }

                goto LABEL_833;
              }
            }

            v494 = PDAcolordodgePDA_11877(*v820, 0xFFFFu, *v814, v491);
            v57 = v490;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v494;
LABEL_833:
            v495 = &v814[v735];
            if (v495 >= v57)
            {
              v496 = -v745;
            }

            else
            {
              v496 = 0;
            }

            v814 = &v495[v496];
            v817 += v789 + v496;
            v55 += v488;
            v820 += v735;
            --v489;
          }

          while (v489);
          if (v52)
          {
            v49 = v768;
            v497 = &v798[v768];
            v498 = v705;
            if (v497 < v52)
            {
              v498 = 0;
            }

            v499 = v800 + 2 * v767 + 2 * v498;
            v500 = v724;
            if (v497 < v52)
            {
              v500 = 0;
            }

            v57 += 8 * v500 + 8 * v768;
            v798 = &v497[v500];
            v800 += 2 * v767 + 2 * v498;
            v814 = v798;
            v817 = v499;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v487 = v762 - 1;
          if (v762 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 19:
        v737 = v20;
        v741 = v4;
        v792 = v35;
        v544 = v822[0];
        v707 = -(v34 * v744);
        v726 = -(v49 * v744);
        v545 = 2 * v21;
        while (1)
        {
          v764 = v544;
          v546 = v9;
          v547 = v57;
          do
          {
            if (v35)
            {
              v548 = *v817;
              if (!*v817)
              {
                goto LABEL_917;
              }

              if (v21)
              {
                goto LABEL_912;
              }
            }

            else
            {
              v548 = 0xFFFF;
              if (v21)
              {
LABEL_912:
                if (*v55)
                {
                  v549 = PDAcolorburnPDA_11878(*v820, *v55, *v814, v548);
                  v57 = v547;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v549;
                  *v55 = v550;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v548;
                }

                goto LABEL_917;
              }
            }

            v551 = PDAcolorburnPDA_11878(*v820, 0xFFFFu, *v814, v548);
            v57 = v547;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v551;
LABEL_917:
            v552 = &v814[v735];
            if (v552 >= v57)
            {
              v553 = -v745;
            }

            else
            {
              v553 = 0;
            }

            v814 = &v552[v553];
            v817 += v792 + v553;
            v55 += v545;
            v820 += v735;
            --v546;
          }

          while (v546);
          if (v52)
          {
            v49 = v768;
            v554 = &v798[v768];
            v555 = v707;
            if (v554 < v52)
            {
              v555 = 0;
            }

            v556 = v800 + 2 * v767 + 2 * v555;
            v557 = v726;
            if (v554 < v52)
            {
              v557 = 0;
            }

            v57 += 8 * v557 + 8 * v768;
            v798 = &v554[v557];
            v800 += 2 * v767 + 2 * v555;
            v814 = v798;
            v817 = v556;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v544 = v764 - 1;
          if (v764 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 20:
        v737 = v20;
        v741 = v4;
        v785 = v35;
        v420 = v822[0];
        v702 = -(v34 * v744);
        v719 = -(v49 * v744);
        v421 = 2 * v21;
        while (1)
        {
          v758 = v420;
          v422 = v9;
          v423 = v57;
          do
          {
            if (v35)
            {
              v424 = *v817;
              if (!*v817)
              {
                goto LABEL_724;
              }

              if (v21)
              {
                goto LABEL_719;
              }
            }

            else
            {
              v424 = 0xFFFF;
              if (v21)
              {
LABEL_719:
                if (*v55)
                {
                  v425 = PDAsoftlightPDA_11880(*v820, *v55, *v814, v424);
                  v57 = v423;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v425;
                  *v55 = v426;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v424;
                }

                goto LABEL_724;
              }
            }

            v427 = PDAsoftlightPDA_11880(*v820, 0xFFFFu, *v814, v424);
            v57 = v423;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v427;
LABEL_724:
            v428 = &v814[v735];
            if (v428 >= v57)
            {
              v429 = -v745;
            }

            else
            {
              v429 = 0;
            }

            v814 = &v428[v429];
            v817 += v785 + v429;
            v55 += v421;
            v820 += v735;
            --v422;
          }

          while (v422);
          if (v52)
          {
            v49 = v768;
            v430 = &v798[v768];
            v431 = v702;
            if (v430 < v52)
            {
              v431 = 0;
            }

            v432 = v800 + 2 * v767 + 2 * v431;
            v433 = v719;
            if (v430 < v52)
            {
              v433 = 0;
            }

            v57 += 8 * v433 + 8 * v768;
            v798 = &v430[v433];
            v800 += 2 * v767 + 2 * v431;
            v814 = v798;
            v817 = v432;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v420 = v758 - 1;
          if (v758 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 21:
        v737 = v20;
        v741 = v4;
        v787 = v35;
        v446 = v822[0];
        v703 = -(v34 * v744);
        v721 = -(v49 * v744);
        v447 = 2 * v21;
        while (1)
        {
          v759 = v446;
          v448 = v9;
          v449 = v57;
          do
          {
            if (v35)
            {
              v450 = *v817;
              if (!*v817)
              {
                goto LABEL_762;
              }

              if (v21)
              {
                goto LABEL_757;
              }
            }

            else
            {
              v450 = 0xFFFF;
              if (v21)
              {
LABEL_757:
                if (*v55)
                {
                  v451 = PDAhardlightPDA_11879(*v820, *v55, *v814, v450);
                  v57 = v449;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v451;
                  *v55 = v452;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v450;
                }

                goto LABEL_762;
              }
            }

            v453 = PDAhardlightPDA_11879(*v820, 0xFFFFu, *v814, v450);
            v57 = v449;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v453;
LABEL_762:
            v454 = &v814[v735];
            if (v454 >= v57)
            {
              v455 = -v745;
            }

            else
            {
              v455 = 0;
            }

            v814 = &v454[v455];
            v817 += v787 + v455;
            v55 += v447;
            v820 += v735;
            --v448;
          }

          while (v448);
          if (v52)
          {
            v49 = v768;
            v456 = &v798[v768];
            v457 = v703;
            if (v456 < v52)
            {
              v457 = 0;
            }

            v458 = v800 + 2 * v767 + 2 * v457;
            v459 = v721;
            if (v456 < v52)
            {
              v459 = 0;
            }

            v57 += 8 * v459 + 8 * v768;
            v798 = &v456[v459];
            v800 += 2 * v767 + 2 * v457;
            v814 = v798;
            v817 = v458;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v446 = v759 - 1;
          if (v759 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 22:
        v737 = v20;
        v741 = v4;
        v791 = v35;
        v530 = v822[0];
        v706 = -(v34 * v744);
        v725 = -(v49 * v744);
        v531 = 2 * v21;
        while (1)
        {
          v763 = v530;
          v532 = v9;
          v533 = v57;
          do
          {
            if (v35)
            {
              v534 = *v817;
              if (!*v817)
              {
                goto LABEL_894;
              }

              if (v21)
              {
                goto LABEL_889;
              }
            }

            else
            {
              v534 = 0xFFFF;
              if (v21)
              {
LABEL_889:
                if (*v55)
                {
                  v535 = PDAdifferencePDA_11881(*v820, *v55, *v814, v534);
                  v57 = v533;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v535;
                  *v55 = v536;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v534;
                }

                goto LABEL_894;
              }
            }

            v537 = PDAdifferencePDA_11881(*v820, 0xFFFFu, *v814, v534);
            v57 = v533;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v537;
LABEL_894:
            v538 = &v814[v735];
            if (v538 >= v57)
            {
              v539 = -v745;
            }

            else
            {
              v539 = 0;
            }

            v814 = &v538[v539];
            v817 += v791 + v539;
            v55 += v531;
            v820 += v735;
            --v532;
          }

          while (v532);
          if (v52)
          {
            v49 = v768;
            v540 = &v798[v768];
            v541 = v706;
            if (v540 < v52)
            {
              v541 = 0;
            }

            v542 = v800 + 2 * v767 + 2 * v541;
            v543 = v725;
            if (v540 < v52)
            {
              v543 = 0;
            }

            v57 += 8 * v543 + 8 * v768;
            v798 = &v540[v543];
            v800 += 2 * v767 + 2 * v541;
            v814 = v798;
            v817 = v542;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v530 = v763 - 1;
          if (v763 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 23:
        v737 = v20;
        v741 = v4;
        v793 = v35;
        v558 = v822[0];
        v708 = -(v34 * v744);
        v727 = -(v49 * v744);
        v559 = 2 * v21;
        while (1)
        {
          v765 = v558;
          v560 = v9;
          v561 = v57;
          do
          {
            if (v35)
            {
              v562 = *v817;
              if (!*v817)
              {
                goto LABEL_940;
              }

              if (v21)
              {
                goto LABEL_935;
              }
            }

            else
            {
              v562 = 0xFFFF;
              if (v21)
              {
LABEL_935:
                if (*v55)
                {
                  v563 = PDAexclusionPDA_11882(*v820, *v55, *v814, v562);
                  v57 = v561;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v563;
                  *v55 = v564;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v562;
                }

                goto LABEL_940;
              }
            }

            v565 = PDAexclusionPDA_11882(*v820, 0xFFFFu, *v814, v562);
            v57 = v561;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v565;
LABEL_940:
            v566 = &v814[v735];
            if (v566 >= v57)
            {
              v567 = -v745;
            }

            else
            {
              v567 = 0;
            }

            v814 = &v566[v567];
            v817 += v793 + v567;
            v55 += v559;
            v820 += v735;
            --v560;
          }

          while (v560);
          if (v52)
          {
            v49 = v768;
            v568 = &v798[v768];
            v569 = v708;
            if (v568 < v52)
            {
              v569 = 0;
            }

            v570 = v800 + 2 * v767 + 2 * v569;
            v571 = v727;
            if (v568 < v52)
            {
              v571 = 0;
            }

            v57 += 8 * v571 + 8 * v768;
            v798 = &v568[v571];
            v800 += 2 * v767 + 2 * v569;
            v814 = v798;
            v817 = v570;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v558 = v765 - 1;
          if (v765 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 24:
        v737 = v20;
        v741 = v4;
        v782 = v35;
        v330 = v822[0];
        v699 = -(v34 * v744);
        v715 = -(v49 * v744);
        v331 = 2 * v21;
        while (1)
        {
          v754 = v330;
          v332 = v9;
          v333 = v57;
          do
          {
            if (v35)
            {
              v334 = *v817;
              if (!*v817)
              {
                goto LABEL_585;
              }

              if (v21)
              {
                goto LABEL_580;
              }
            }

            else
            {
              v334 = 0xFFFF;
              if (v21)
              {
LABEL_580:
                if (*v55)
                {
                  v335 = PDAhuePDA_11883(*v820, *v55, *v814, v334);
                  v57 = v333;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v335;
                  *v55 = v336;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v334;
                }

                goto LABEL_585;
              }
            }

            v337 = PDAhuePDA_11883(*v820, 0xFFFFu, *v814, v334);
            v57 = v333;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v337;
LABEL_585:
            v338 = &v814[v735];
            if (v338 >= v57)
            {
              v339 = -v745;
            }

            else
            {
              v339 = 0;
            }

            v814 = &v338[v339];
            v817 += v782 + v339;
            v55 += v331;
            v820 += v735;
            --v332;
          }

          while (v332);
          if (v52)
          {
            v49 = v768;
            v340 = &v798[v768];
            v341 = v699;
            if (v340 < v52)
            {
              v341 = 0;
            }

            v342 = v800 + 2 * v767 + 2 * v341;
            v343 = v715;
            if (v340 < v52)
            {
              v343 = 0;
            }

            v57 += 8 * v343 + 8 * v768;
            v798 = &v340[v343];
            v800 += 2 * v767 + 2 * v341;
            v814 = v798;
            v817 = v342;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v330 = v754 - 1;
          if (v754 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 25:
        v737 = v20;
        v741 = v4;
        v781 = v35;
        v316 = v822[0];
        v698 = -(v34 * v744);
        v714 = -(v49 * v744);
        v317 = 2 * v21;
        while (1)
        {
          v753 = v316;
          v318 = v9;
          v319 = v57;
          do
          {
            if (v35)
            {
              v320 = *v817;
              if (!*v817)
              {
                goto LABEL_562;
              }

              if (v21)
              {
                goto LABEL_557;
              }
            }

            else
            {
              v320 = 0xFFFF;
              if (v21)
              {
LABEL_557:
                if (*v55)
                {
                  v321 = PDAsaturationPDA_11884(*v820, *v55, *v814, v320);
                  v57 = v319;
                  LODWORD(v21) = v811;
                  LODWORD(v35) = v813;
                  *v820 = v321;
                  *v55 = v322;
                }

                else
                {
                  *v820 = *v814;
                  *v55 = v320;
                }

                goto LABEL_562;
              }
            }

            v323 = PDAsaturationPDA_11884(*v820, 0xFFFFu, *v814, v320);
            v57 = v319;
            LODWORD(v21) = v811;
            LODWORD(v35) = v813;
            *v820 = v323;
LABEL_562:
            v324 = &v814[v735];
            if (v324 >= v57)
            {
              v325 = -v745;
            }

            else
            {
              v325 = 0;
            }

            v814 = &v324[v325];
            v817 += v781 + v325;
            v55 += v317;
            v820 += v735;
            --v318;
          }

          while (v318);
          if (v52)
          {
            v49 = v768;
            v326 = &v798[v768];
            v327 = v698;
            if (v326 < v52)
            {
              v327 = 0;
            }

            v328 = v800 + 2 * v767 + 2 * v327;
            v329 = v714;
            if (v326 < v52)
            {
              v329 = 0;
            }

            v57 += 8 * v329 + 8 * v768;
            v798 = &v326[v329];
            v800 += 2 * v767 + 2 * v327;
            v814 = v798;
            v817 = v328;
          }

          else
          {
            v49 = v768;
            v814 += v768;
            v817 += v767;
          }

          v820 += v771;
          v55 += 2 * v772;
          v316 = v753 - 1;
          if (v753 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 26:
        v739 = v20;
        v743 = v4;
        v802 = v9;
        v572 = v34;
        v573 = v35;
        v574 = v822[0];
        v709 = -(v572 * v744);
        v728 = -(v49 * v744);
        v575 = 2 * v21;
        while (1)
        {
          v794 = v574;
          v576 = v57;
          do
          {
            if (v35)
            {
              v577 = *v817;
              if (!*v817)
              {
                goto LABEL_965;
              }

              if (!v21)
              {
LABEL_963:
                v579 = PDAluminosityPDA_11885(*v814, v577, *v820, 0xFFFFu);
                v57 = v576;
                LODWORD(v21) = v811;
                LODWORD(v35) = v813;
                *v820 = v579;
                goto LABEL_965;
              }
            }

            else
            {
              v577 = 0xFFFF;
              if (!v21)
              {
                goto LABEL_963;
              }
            }

            v578 = *v814;
            if (*v55)
            {
              v578 = PDAluminosityPDA_11885(v578, v577, *v820, *v55);
              v57 = v576;
              LODWORD(v21) = v811;
              LODWORD(v35) = v813;
            }

            *v820 = v578;
            *v55 = v577;
LABEL_965:
            v580 = &v814[v735];
            if (v580 >= v57)
            {
              v581 = -v745;
            }

            else
            {
              v581 = 0;
            }

            v814 = &v580[v581];
            v817 += v573 + v581;
            v55 += v575;
            v820 += v735;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v52)
          {
            v582 = &v798[v768];
            v583 = v709;
            if (v582 < v52)
            {
              v583 = 0;
            }

            v584 = v800 + 2 * v767 + 2 * v583;
            v585 = v728;
            if (v582 < v52)
            {
              v585 = 0;
            }

            v57 += 8 * v585 + 8 * v768;
            v798 = &v582[v585];
            v800 += 2 * v767 + 2 * v583;
            v814 = v798;
            v817 = v584;
          }

          else
          {
            v814 += v768;
            v817 += v767;
          }

          LODWORD(v9) = v802;
          v820 += v771;
          v55 += 2 * v772;
          v574 = v794 - 1;
          if (v794 == 1)
          {
LABEL_977:
            v748 = v57;
            v822[0] = 0;
            v20 = v739;
            v4 = v743;
            v34 = v767;
LABEL_1124:
            v49 = v768;
LABEL_1032:
            v52 = v766;
LABEL_1033:
            v54 = v746;
LABEL_1034:
            if (!v54)
            {
              return 1;
            }

            v821 = 0;
LABEL_372:
            if (!shape_enum_clip_next(v54, &v821 + 1, &v821, v832, v822))
            {
              v48 = v54;
              goto LABEL_979;
            }

            v746 = v54;
            if (v52)
            {
              v820 = (v732 + 8 * v20 * v821 + 8 * SHIDWORD(v821));
              v205 = (v821 + *(v731 + 60)) % v744;
              v56 = v832[0];
              v206 = (HIDWORD(v821) + *(v731 + 56)) % v745;
              v17 = v747;
              v207 = v747 + 8 * v49 * v205;
              v57 = v207 + 8 * v745;
              v21 = v811;
              if (v811)
              {
                v55 = (v734 + 2 * v733 * v821 + 2 * SHIDWORD(v821));
              }

              v208 = v772;
              if (v811)
              {
                v208 = v733 - v832[0];
              }

              v772 = v208;
              if (v813)
              {
                v35 = v813;
              }

              else
              {
                v35 = 0;
              }

              v209 = v800;
              if (v813)
              {
                v209 = &v4[v34 * v205 + v206];
              }

              v798 = (v207 + 8 * v206);
              v800 = v209;
              v210 = v817;
              if (v813)
              {
                v210 = &v4[v34 * v205 + v206];
              }

              v814 = (v207 + 8 * v206);
              v817 = v210;
              LODWORD(v9) = v832[0];
              v693 = (v821 + *(v731 + 60)) % v744;
              v694 = (HIDWORD(v821) + *(v731 + 56)) % v745;
            }

            else
            {
              v211 = HIDWORD(v821) * v735;
              LODWORD(v9) = v832[0];
              v212 = v832[0] * v735;
              v820 = (v732 + 8 * v20 * v821 + 8 * HIDWORD(v821) * v735);
              v56 = v832[0] * v735;
              v17 = v747;
              v814 = (v747 + 8 * v821 * v745 + 8 * HIDWORD(v821) * v735);
              v49 = v745 - v832[0] * v735;
              v21 = v811;
              v35 = v813;
              if (v811)
              {
                v55 = (v734 + 2 * v733 * v821 + 2 * v211);
              }

              v213 = v772;
              if (v811)
              {
                v213 = v733 - v212;
              }

              v772 = v213;
              v214 = &v4[v821 * v744 + v211];
              v215 = v744 - v212;
              v216 = v817;
              if (v813)
              {
                v216 = v214;
              }

              v817 = v216;
              if (v813)
              {
                v34 = v215;
              }

              v57 = v748;
            }

            goto LABEL_395;
          }
        }

      case 27:
        v737 = v20;
        v741 = v4;
        v775 = v35;
        v223 = v822[0];
        v695 = -(v34 * v744);
        v710 = -(v49 * v744);
        v224 = 2 * v21;
        break;
      default:
        v748 = v57;
        goto LABEL_1033;
    }

LABEL_404:
    v749 = v223;
    v225 = v9;
    v226 = v57;
    while (1)
    {
      if (v35)
      {
        v227 = *v817;
        if (!*v817)
        {
          goto LABEL_413;
        }

        if (!v21)
        {
          goto LABEL_411;
        }
      }

      else
      {
        v227 = 0xFFFF;
        if (!v21)
        {
LABEL_411:
          v230 = PDAluminosityPDA_11885(*v820, 0xFFFFu, *v814, v227);
          v57 = v226;
          LODWORD(v21) = v811;
          LODWORD(v35) = v813;
          *v820 = v230;
          goto LABEL_413;
        }
      }

      if (*v55)
      {
        v228 = PDAluminosityPDA_11885(*v820, *v55, *v814, v227);
        v57 = v226;
        LODWORD(v21) = v811;
        LODWORD(v35) = v813;
        *v820 = v228;
        *v55 = v229;
      }

      else
      {
        *v820 = *v814;
        *v55 = v227;
      }

LABEL_413:
      v231 = &v814[v735];
      if (v231 >= v57)
      {
        v232 = -v745;
      }

      else
      {
        v232 = 0;
      }

      v814 = &v231[v232];
      v817 += v775 + v232;
      v55 += v224;
      v820 += v735;
      if (!--v225)
      {
        if (v52)
        {
          v49 = v768;
          v233 = &v798[v768];
          v234 = v695;
          if (v233 < v52)
          {
            v234 = 0;
          }

          v235 = v800 + 2 * v767 + 2 * v234;
          v236 = v710;
          if (v233 < v52)
          {
            v236 = 0;
          }

          v57 += 8 * v236 + 8 * v768;
          v798 = &v233[v236];
          v800 += 2 * v767 + 2 * v234;
          v814 = v798;
          v817 = v235;
        }

        else
        {
          v49 = v768;
          v814 += v768;
          v817 += v767;
        }

        v820 += v771;
        v55 += 2 * v772;
        v223 = v749 - 1;
        if (v749 == 1)
        {
LABEL_1031:
          v748 = v57;
          v822[0] = 0;
          v20 = v737;
          v4 = v741;
          v34 = v767;
          goto LABEL_1032;
        }

        goto LABEL_404;
      }
    }
  }

  v14 = *(v2 + 128);
  if ((v14 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      cmyk64_mark_constmask(v2, v6);
    }

    else
    {
      cmyk64_mark_pixelmask(v2, v6);
    }

    return 1;
  }

  v22 = *(v2 + 112);
  v23 = *(v2 + 116);
  v24 = (v22 + 15) & 0xFFFFFFF0;
  v25 = v24 * v23;
  if (v25 <= 4096)
  {
    v27 = v832;
LABEL_38:
    CGSConvertBitsToMask(v13, *(v8 + 124), v27, v24, v22, v23, v14);
    v43 = *(v8 + 112);
    v828 = *(v8 + 96);
    v829 = v43;
    v44 = *(v8 + 144);
    v830 = *(v8 + 128);
    v831 = v44;
    v45 = *(v8 + 48);
    v824 = *(v8 + 32);
    v825 = v45;
    v46 = *(v8 + 80);
    v826 = *(v8 + 64);
    v827 = v46;
    v47 = *(v8 + 16);
    *v822 = *v8;
    v823 = v47;
    HIDWORD(v829) = (v22 + 15) & 0xFFFFFFF0;
    *(&v830 + 1) = v27;
    if (BYTE1(v822[0]) << 8 == 1024)
    {
      cmyk64_mark_constmask(v822, v6);
    }

    else
    {
      cmyk64_mark_pixelmask(v822, v6);
    }

    if (v27 != v832)
    {
      v48 = v27;
      goto LABEL_979;
    }

    return 1;
  }

  v26 = malloc_type_malloc(v25, 0x97CEE3C3uLL);
  if (v26)
  {
    v27 = v26;
    v13 = *(v8 + 136);
    v14 = *(v8 + 128);
    goto LABEL_38;
  }

  return 1;
}