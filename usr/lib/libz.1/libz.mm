int inflateInit2_(z_streamp strm, int windowBits, const char *version, int stream_size)
{
  v4 = -6;
  if (version && stream_size == 112 && *version == 49)
  {
    if (strm)
    {
      strm->msg = 0;
      zalloc = strm->zalloc;
      if (!zalloc)
      {
        zalloc = sub_2999C9534;
        strm->zalloc = sub_2999C9534;
        strm->opaque = 0;
      }

      if (!strm->zfree)
      {
        strm->zfree = sub_2999C38A4;
      }

      if (zalloc == sub_2999C9534)
      {
        v8 = malloc_type_malloc(0x1BF8uLL, 0x10700402F6B96DDuLL);
      }

      else
      {
        v8 = (zalloc)(strm->opaque, 1, 7160);
      }

      v9 = v8;
      if (v8)
      {
        strm->state = v8;
        *v8 = strm;
        *(v8 + 9) = 0;
        *(v8 + 2) = 16180;
        v4 = inflateReset2(strm, windowBits);
        if (v4)
        {
          (strm->zfree)(strm->opaque, v9);
          strm->state = 0;
        }
      }

      else
      {
        return -4;
      }
    }

    else
    {
      return -2;
    }
  }

  return v4;
}

uLong crc32_z(uLong crc, const Bytef *buf, z_size_t len)
{
  if (!buf)
  {
    return 0;
  }

  v7 = len;
  v8 = buf;
  v9 = ~crc;
  if (len && (buf & 0xF) != 0)
  {
    v10 = buf + 1;
    do
    {
      v11 = v8->i8[0];
      v8 = (v8 + 1);
      v9 = qword_2999CA4F0[(v11 ^ v9)] ^ (v9 >> 8);
      if (!--v7)
      {
        break;
      }
    }

    while ((v10++ & 0xF));
  }

  if (v7 >= 0x20)
  {
    do
    {
      if (v7 >> 30)
      {
        v13 = 0x40000000;
      }

      else
      {
        v13 = v7 & 0x3FFFFFF0;
      }

      LODWORD(v9) = sub_2999BE8D0(v9, v8, v13, v3, v4, v5, v6);
      v8 = (v8 + v13);
      v7 -= v13;
    }

    while (v7 > 0x1F);
    v9 = v9;
  }

  if (v7 >= 8)
  {
    do
    {
      v7 -= 8;
      v14 = qword_2999CA4F0[(v8->i8[0] ^ v9)] ^ (v9 >> 8);
      v15 = qword_2999CA4F0[(v8->i8[1] ^ v14)] ^ (v14 >> 8);
      v16 = qword_2999CA4F0[(v8->i8[2] ^ v15)] ^ (v15 >> 8);
      v17 = qword_2999CA4F0[(v8->i8[3] ^ v16)] ^ (v16 >> 8);
      v18 = qword_2999CA4F0[(v8->i8[4] ^ v17)] ^ (v17 >> 8);
      v19 = qword_2999CA4F0[(v8->i8[5] ^ v18)] ^ (v18 >> 8);
      v20 = qword_2999CA4F0[(v8->i8[6] ^ v19)] ^ (v19 >> 8);
      v21 = &v8->u64[1];
      v9 = qword_2999CA4F0[(v8->i8[7] ^ v20)] ^ (v20 >> 8);
      v8 = (v8 + 8);
    }

    while (v7 > 7);
    v8 = v21;
  }

  for (; v7; --v7)
  {
    v22 = v8->i8[0];
    v8 = (v8 + 1);
    v9 = qword_2999CA4F0[(v22 ^ v9)] ^ (v9 >> 8);
  }

  return v9 ^ 0xFFFFFFFF;
}

unint64_t sub_2999BE8D0(__int32 a1, int8x16_t *a2, int a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = veorq_s8(a4, a4);
  v9 = *a2;
  v8 = a2 + 1;
  v7.i32[0] = a1;
  v10 = veorq_s8(v7, v9);
  v11 = __OFSUB__(a3, 16);
  v12 = a3 - 16;
  if (!((v12 < 0) ^ v11 | (v12 == 0)))
  {
    if (v12 >= 48)
    {
      v13 = *v8;
      a6 = v8[1];
      a7 = v8[2];
      v8 += 3;
      v11 = __OFSUB__(v12, 112);
      v14 = v12 - 112;
      if (v14 < 0 == v11)
      {
        do
        {
          v16 = *v8;
          v17 = v8[1];
          v15 = v8 + 2;
          v10 = veorq_s8(vmull_high_p64(v10, qword_2999CCAF0), veorq_s8(vmull_p64(v10.u64[0], 0x154442BD4uLL), v16));
          v13 = veorq_s8(vmull_high_p64(v13, qword_2999CCAF0), veorq_s8(vmull_p64(v13.u64[0], 0x154442BD4uLL), v17));
          v18 = *v15;
          v19 = v15[1];
          v8 = v15 + 2;
          a6 = veorq_s8(vmull_high_p64(a6, qword_2999CCAF0), veorq_s8(vmull_p64(a6.u64[0], 0x154442BD4uLL), v18));
          a7 = veorq_s8(vmull_high_p64(a7, qword_2999CCAF0), veorq_s8(vmull_p64(a7.u64[0], 0x154442BD4uLL), v19));
          v11 = __OFSUB__(v14, 64);
          v14 -= 64;
        }

        while (!((v14 < 0) ^ v11 | (v14 == 0)));
      }

      v20 = veorq_s8(vmull_high_p64(v10, qword_2999CCB00), veorq_s8(vmull_p64(v10.u64[0], 0x1751997D0uLL), v13));
      v21 = veorq_s8(vmull_high_p64(v20, qword_2999CCB00), veorq_s8(vmull_p64(v20.u64[0], 0x1751997D0uLL), a6));
      v10 = veorq_s8(vmull_high_p64(v21, qword_2999CCB00), veorq_s8(vmull_p64(v21.u64[0], 0x1751997D0uLL), a7));
      v12 = v14 + 64;
    }

    v11 = __OFSUB__(v12, 16);
    for (i = v12 - 16; i < 0 == v11; i -= 16)
    {
      v23 = *v8++;
      v10 = veorq_s8(vmull_high_p64(v10, qword_2999CCB00), veorq_s8(vmull_p64(v10.u64[0], 0x1751997D0uLL), v23));
      v11 = __OFSUB__(i, 16);
    }
  }

  v24 = veorq_s8(a6, a6);
  v25 = veorq_s8(a7, a7);
  v24.i64[0] = v10.i64[1];
  v26 = veorq_s8(v24, vmull_p64(v10.u64[0], 0xCCAA009EuLL));
  v25.i32[2] = v26.i32[0];
  v26.i64[0] = *(v26.i64 + 4);
  v27 = veorq_s8(vmull_high_p64(v25, qword_2999CCB10), v26);
  v25.i32[0] = v27.i32[0];
  v25.i32[2] = vmull_p64(v25.u64[0], 0x1F7011641uLL).u32[0];
  return HIDWORD(veorq_s8(vmull_high_p64(v25, qword_2999CCB20), v27).u64[0]);
}

unint64_t sub_2999BEA10(uint64_t a1, char *__src, unint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  if (!*(a1 + 40) && sub_2999C5B98(a1) == -1)
  {
    return 0;
  }

  if (*(a1 + 112))
  {
    *(a1 + 112) = 0;
    if (sub_2999C9EE4(a1, *(a1 + 104)) == -1)
    {
      return 0;
    }
  }

  if (*(a1 + 40) <= v3)
  {
    if (!*(a1 + 136) || sub_2999C0334(a1, 0) != -1)
    {
      *(a1 + 128) = __src;
      v13 = v3;
      while (1)
      {
        v14 = v13 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : v13;
        *(a1 + 136) = v14;
        *(a1 + 16) += v14;
        if (sub_2999C0334(a1, 0) == -1)
        {
          break;
        }

        v13 -= v14;
        if (!v13)
        {
          return v3;
        }
      }
    }

    return 0;
  }

  v6 = v3;
  while (1)
  {
    v7 = *(a1 + 136);
    if (v7)
    {
      v8 = *(a1 + 128);
      v9 = *(a1 + 48);
    }

    else
    {
      v9 = *(a1 + 48);
      *(a1 + 128) = v9;
      LODWORD(v8) = v9;
    }

    v10 = v8 + v7 - v9;
    v11 = *(a1 + 40) - v10;
    v12 = v6 >= v11 ? v11 : v6;
    memcpy((v9 + v10), __src, v12);
    *(a1 + 136) += v12;
    *(a1 + 16) += v12;
    v6 -= v12;
    if (!v6)
    {
      break;
    }

    __src += v12;
    if (sub_2999C0334(a1, 0) == -1)
    {
      return 0;
    }
  }

  return v3;
}

int gzwrite(gzFile file, voidpc buf, unsigned int len)
{
  if (file)
  {
    if (file[1].have == 31153 && !HIDWORD(file[4].pos))
    {
      if ((len & 0x80000000) != 0)
      {
        sub_2999C63DC(file, -3, "requested length does not fit in int");
        LODWORD(file) = 0;
      }

      else
      {
        LODWORD(file) = sub_2999BEA10(file, buf, len);
      }
    }

    else
    {
      LODWORD(file) = 0;
    }
  }

  return file;
}

uint64_t gzoffset_0(gzFile a1)
{
  if (!a1)
  {
    return -1;
  }

  have = a1[1].have;
  if (have != 31153 && have != 7247)
  {
    return -1;
  }

  result = lseek(*(&a1[1].have + 1), 0, 1);
  if (result != -1 && a1[1].have == 7247)
  {
    result -= LODWORD(a1[5].pos);
  }

  return result;
}

int deflate(z_streamp strm, int flush)
{
  v2 = *&flush;
  v4 = sub_2999C05A0(strm);
  result = -2;
  if (v2 > 5 || v4)
  {
    return result;
  }

  if (!strm->next_out || (state = strm->state, (avail_in = strm->avail_in) != 0) && !strm->next_in || (v8 = *(state + 2), v2 != 4) && v8 == 666)
  {
    strm->msg = "stream error";
    return result;
  }

  if (!strm->avail_out)
  {
    goto LABEL_30;
  }

  v9 = *(state + 19);
  *(state + 19) = v2;
  if (*(state + 5))
  {
    sub_2999C4B04(strm);
    if (!strm->avail_out)
    {
      goto LABEL_160;
    }

    v8 = *(state + 2);
  }

  else if (!avail_in)
  {
    v11 = v9 <= 4 ? 0 : -9;
    v12 = v2 <= 4 ? 0 : -9;
    if (v2 != 4 && v12 + 2 * v2 <= v11 + 2 * v9)
    {
      goto LABEL_30;
    }
  }

  switch(v8)
  {
    case 42:
      if (!*(state + 12))
      {
        *(state + 2) = 113;
        goto LABEL_133;
      }

      if (*(state + 50) <= 1)
      {
        v13 = *(state + 49);
        if (v13 == 6)
        {
          v14 = 128;
        }

        else
        {
          v14 = 192;
        }

        if (v13 >= 6)
        {
          v15 = v14;
        }

        else
        {
          v15 = 64;
        }

        if (v13 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v16 = v10 | ((*(state + 21) << 12) - 30720);
      if (*(state + 43))
      {
        v16 |= 0x20u;
      }

      v17 = *(state + 2);
      v18 = *(state + 5);
      *(state + 5) = v18 + 1;
      *(v17 + v18) = BYTE1(v16);
      v19 = *(state + 2);
      v20 = *(state + 5);
      *(state + 5) = v20 + 1;
      *(v19 + v20) = ((v16 % 0x1F) | v16) ^ 0x1F;
      if (*(state + 43))
      {
        adler = strm->adler;
        v22 = adler >> 16;
        v23 = *(state + 2);
        v24 = *(state + 5);
        *(state + 5) = v24 + 1;
        *(v23 + v24) = BYTE3(adler);
        v25 = *(state + 2);
        v26 = *(state + 5);
        *(state + 5) = v26 + 1;
        *(v25 + v26) = v22;
        v27 = strm->adler;
        v28 = *(state + 2);
        v29 = *(state + 5);
        *(state + 5) = v29 + 1;
        *(v28 + v29) = BYTE1(v27);
        v30 = *(state + 2);
        v31 = *(state + 5);
        *(state + 5) = v31 + 1;
        *(v30 + v31) = v27;
      }

      strm->adler = adler32(0, 0, 0);
      *(state + 2) = 113;
      sub_2999C4B04(strm);
      if (*(state + 5))
      {
        goto LABEL_160;
      }

      v8 = *(state + 2);
      break;
    case 666:
      if (!strm->avail_in)
      {
        goto LABEL_134;
      }

LABEL_30:
      strm->msg = "buffer error";
      return -5;
    case 57:
      strm->adler = crc32(0, 0, 0);
      v32 = *(state + 2);
      v33 = *(state + 5);
      *(state + 5) = v33 + 1;
      *(v32 + v33) = 31;
      v34 = *(state + 2);
      v35 = *(state + 5);
      *(state + 5) = v35 + 1;
      *(v34 + v35) = -117;
      v36 = *(state + 2);
      v37 = *(state + 5);
      *(state + 5) = v37 + 1;
      *(v36 + v37) = 8;
      v38 = *(state + 7);
      if (v38)
      {
        v39 = (*v38 != 0) | (2 * (*(v38 + 68) != 0)) | (4 * (*(v38 + 24) != 0)) | (8 * (*(v38 + 40) != 0)) | (16 * (*(v38 + 56) != 0));
        v40 = *(state + 2);
        v41 = *(state + 5);
        *(state + 5) = v41 + 1;
        *(v40 + v41) = v39;
        v42 = *(*(state + 7) + 8);
        v43 = *(state + 2);
        v44 = *(state + 5);
        *(state + 5) = v44 + 1;
        *(v43 + v44) = v42;
        v45 = *(*(state + 7) + 8) >> 8;
        v46 = *(state + 2);
        v47 = *(state + 5);
        *(state + 5) = v47 + 1;
        *(v46 + v47) = v45;
        v48 = *(*(state + 7) + 8) >> 16;
        v49 = *(state + 2);
        v50 = *(state + 5);
        *(state + 5) = v50 + 1;
        *(v49 + v50) = v48;
        v51 = *(*(state + 7) + 8) >> 24;
        v52 = *(state + 2);
        v53 = *(state + 5);
        *(state + 5) = v53 + 1;
        *(v52 + v53) = v51;
        v54 = *(state + 49);
        if (v54 == 9)
        {
          v55 = 2;
        }

        else if (*(state + 50) > 1 || v54 < 2)
        {
          v55 = 4;
        }

        else
        {
          v55 = 0;
        }

        v69 = *(state + 2);
        v70 = *(state + 5);
        *(state + 5) = v70 + 1;
        *(v69 + v70) = v55;
        v71 = *(*(state + 7) + 20);
        v72 = *(state + 2);
        v73 = *(state + 5);
        *(state + 5) = v73 + 1;
        *(v72 + v73) = v71;
        v74 = *(state + 7);
        if (*(v74 + 24))
        {
          v75 = *(v74 + 32);
          v76 = *(state + 2);
          v77 = *(state + 5);
          *(state + 5) = v77 + 1;
          *(v76 + v77) = v75;
          v78 = *(*(state + 7) + 32) >> 8;
          v79 = *(state + 2);
          v80 = *(state + 5);
          *(state + 5) = v80 + 1;
          *(v79 + v80) = v78;
          v74 = *(state + 7);
        }

        if (*(v74 + 68))
        {
          strm->adler = crc32(strm->adler, *(state + 2), *(state + 10));
        }

        *(state + 8) = 0;
        *(state + 2) = 69;
        goto LABEL_76;
      }

      v56 = *(state + 2);
      v57 = *(state + 5);
      *(state + 5) = v57 + 1;
      *(v56 + v57) = 0;
      v58 = *(state + 2);
      v59 = *(state + 5);
      *(state + 5) = v59 + 1;
      *(v58 + v59) = 0;
      v60 = *(state + 2);
      v61 = *(state + 5);
      *(state + 5) = v61 + 1;
      *(v60 + v61) = 0;
      v62 = *(state + 2);
      v63 = *(state + 5);
      *(state + 5) = v63 + 1;
      *(v62 + v63) = 0;
      v64 = *(state + 2);
      v65 = *(state + 5);
      *(state + 5) = v65 + 1;
      *(v64 + v65) = 0;
      v66 = *(state + 49);
      if (v66 == 9)
      {
        v67 = 2;
      }

      else if (*(state + 50) > 1 || v66 < 2)
      {
        v67 = 4;
      }

      else
      {
        v67 = 0;
      }

      v82 = *(state + 2);
      v83 = *(state + 5);
      *(state + 5) = v83 + 1;
      *(v82 + v83) = v67;
      v84 = *(state + 2);
      v85 = *(state + 5);
      *(state + 5) = v85 + 1;
      *(v84 + v85) = 19;
      *(state + 2) = 113;
      sub_2999C4B04(strm);
      if (*(state + 5))
      {
        goto LABEL_160;
      }

      v8 = *(state + 2);
      break;
  }

  if (v8 <= 90)
  {
    if (v8 != 69)
    {
      if (v8 != 73)
      {
        goto LABEL_133;
      }

      goto LABEL_92;
    }

LABEL_76:
    v86 = *(state + 7);
    v87 = *(v86 + 24);
    if (v87)
    {
      v88 = *(state + 5);
      v89 = *(v86 + 32);
      v90 = *(state + 8);
      v91 = (v89 - v90);
      v92 = *(state + 3);
      if (v88 + v91 > v92)
      {
        while (1)
        {
          v93 = v92 - v88;
          memcpy((*(state + 2) + v88), (*(*(state + 7) + 24) + *(state + 8)), (v92 - v88));
          v94 = *(state + 3);
          *(state + 5) = v94;
          if (*(*(state + 7) + 68))
          {
            v95 = v94 > v88;
          }

          else
          {
            v95 = 0;
          }

          if (v95)
          {
            strm->adler = crc32(strm->adler, (*(state + 2) + v88), v94 - v88);
          }

          *(state + 8) += v93;
          sub_2999C4B04(strm);
          if (*(state + 5))
          {
            goto LABEL_160;
          }

          v88 = 0;
          v91 = v91 - v93;
          v92 = *(state + 3);
          if (v92 >= v91)
          {
            v88 = 0;
            v90 = *(state + 8);
            v87 = *(*(state + 7) + 24);
            break;
          }
        }
      }

      memcpy((*(state + 2) + v88), (v87 + v90), v91);
      v96 = *(state + 5) + v91;
      *(state + 5) = v96;
      if (*(*(state + 7) + 68) && v96 > v88)
      {
        strm->adler = crc32(strm->adler, (*(state + 2) + v88), v96 - v88);
      }

      *(state + 8) = 0;
    }

    *(state + 2) = 73;
LABEL_92:
    if (*(*(state + 7) + 40))
    {
      v97 = *(state + 5);
      do
      {
        v98 = *(state + 5);
        v99 = *(state + 7);
        if (v98 == *(state + 3))
        {
          if (*(v99 + 68))
          {
            v100 = v98 > v97;
          }

          else
          {
            v100 = 0;
          }

          if (v100)
          {
            strm->adler = crc32(strm->adler, (*(state + 2) + v97), v98 - v97);
          }

          sub_2999C4B04(strm);
          v97 = *(state + 5);
          if (v97)
          {
            goto LABEL_160;
          }

          v98 = 0;
          v99 = *(state + 7);
        }

        v101 = *(v99 + 40);
        v102 = *(state + 8);
        *(state + 8) = v102 + 1;
        LODWORD(v101) = *(v101 + v102);
        v103 = *(state + 2);
        *(state + 5) = v98 + 1;
        *(v103 + v98) = v101;
      }

      while (v101);
      if (*(*(state + 7) + 68))
      {
        v104 = *(state + 5);
        if (v104 > v97)
        {
          strm->adler = crc32(strm->adler, (*(state + 2) + v97), v104 - v97);
        }
      }

      *(state + 8) = 0;
    }

    *(state + 2) = 91;
    goto LABEL_112;
  }

  if (v8 != 91)
  {
    if (v8 != 103)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_112:
  if (*(*(state + 7) + 56))
  {
    v105 = *(state + 5);
    do
    {
      v106 = *(state + 5);
      v107 = *(state + 7);
      if (v106 == *(state + 3))
      {
        if (*(v107 + 68))
        {
          v108 = v106 > v105;
        }

        else
        {
          v108 = 0;
        }

        if (v108)
        {
          strm->adler = crc32(strm->adler, (*(state + 2) + v105), v106 - v105);
        }

        sub_2999C4B04(strm);
        v105 = *(state + 5);
        if (v105)
        {
          goto LABEL_160;
        }

        v106 = 0;
        v107 = *(state + 7);
      }

      v109 = *(v107 + 56);
      v110 = *(state + 8);
      *(state + 8) = v110 + 1;
      LODWORD(v109) = *(v109 + v110);
      v111 = *(state + 2);
      *(state + 5) = v106 + 1;
      *(v111 + v106) = v109;
    }

    while (v109);
    if (*(*(state + 7) + 68))
    {
      v112 = *(state + 5);
      if (v112 > v105)
      {
        strm->adler = crc32(strm->adler, (*(state + 2) + v105), v112 - v105);
      }
    }
  }

  *(state + 2) = 103;
LABEL_128:
  if (*(*(state + 7) + 68))
  {
    v113 = *(state + 5);
    if ((v113 + 2) > *(state + 3))
    {
      sub_2999C4B04(strm);
      v113 = *(state + 5);
      if (v113)
      {
        goto LABEL_160;
      }
    }

    v114 = strm->adler;
    v115 = *(state + 2);
    *(state + 5) = v113 + 1;
    *(v115 + v113) = v114;
    v116 = strm->adler >> 8;
    v117 = *(state + 2);
    v118 = *(state + 5);
    *(state + 5) = v118 + 1;
    *(v117 + v118) = v116;
    strm->adler = crc32(0, 0, 0);
  }

  *(state + 2) = 113;
  sub_2999C4B04(strm);
  if (*(state + 5))
  {
LABEL_160:
    result = 0;
    *(state + 19) = -1;
    return result;
  }

LABEL_133:
  if (strm->avail_in)
  {
    goto LABEL_135;
  }

LABEL_134:
  if (*(state + 45))
  {
    goto LABEL_135;
  }

  if (!v2)
  {
    return 0;
  }

  if (*(state + 2) != 666)
  {
LABEL_135:
    v119 = *(state + 49);
    if (v119)
    {
      v120 = *(state + 50);
      if (v120 == 3)
      {
        v121 = sub_2999C75FC(state, v2);
      }

      else if (v120 == 2)
      {
        v121 = sub_2999C7428(state, v2);
      }

      else
      {
        v121 = qword_2A1FEDD58[2 * v119 + 1](state, v2);
      }
    }

    else
    {
      v121 = sub_2999C6F6C(state, v2);
    }

    if ((v121 & 0xFFFFFFFE) == 2)
    {
      *(state + 2) = 666;
    }

    if ((v121 & 0xFFFFFFFD) != 0)
    {
      if (v121 != 1)
      {
        goto LABEL_158;
      }

      if (v2 != 5)
      {
        if (v2 == 1)
        {
          sub_2999C9438(state);
        }

        else
        {
          sub_2999C61C4(state, 0, 0, 0);
          if (v2 == 3)
          {
            v122 = *(state + 15);
            v123 = 2 * (*(state + 33) - 1);
            *&v122[v123] = 0;
            bzero(v122, v123);
            if (!*(state + 45))
            {
              *(state + 43) = 0;
              *(state + 19) = 0;
              *(state + 1483) = 0;
            }
          }
        }
      }

      sub_2999C4B04(strm);
      if (strm->avail_out)
      {
        goto LABEL_158;
      }

      goto LABEL_160;
    }

    if (!strm->avail_out)
    {
      goto LABEL_160;
    }

    return 0;
  }

LABEL_158:
  if (v2 != 4)
  {
    return 0;
  }

  v124 = *(state + 12);
  if (v124 < 1)
  {
    return 1;
  }

  v125 = strm->adler;
  if (v124 == 2)
  {
    v126 = *(state + 2);
    v127 = *(state + 5);
    *(state + 5) = v127 + 1;
    *(v126 + v127) = v125;
    v128 = strm->adler >> 8;
    v129 = *(state + 2);
    v130 = *(state + 5);
    *(state + 5) = v130 + 1;
    *(v129 + v130) = v128;
    v131 = strm->adler >> 16;
    v132 = *(state + 2);
    v133 = *(state + 5);
    *(state + 5) = v133 + 1;
    *(v132 + v133) = v131;
    v134 = strm->adler >> 24;
    v135 = *(state + 2);
    v136 = *(state + 5);
    *(state + 5) = v136 + 1;
    *(v135 + v136) = v134;
    total_in = strm->total_in;
    v138 = *(state + 2);
    v139 = *(state + 5);
    *(state + 5) = v139 + 1;
    *(v138 + v139) = total_in;
    v140 = strm->total_in >> 8;
    v141 = *(state + 2);
    v142 = *(state + 5);
    *(state + 5) = v142 + 1;
    *(v141 + v142) = v140;
    v143 = strm->total_in >> 16;
    v144 = *(state + 2);
    v145 = *(state + 5);
    *(state + 5) = v145 + 1;
    *(v144 + v145) = v143;
    v146 = strm->total_in >> 24;
  }

  else
  {
    v147 = v125 >> 16;
    v148 = *(state + 2);
    v149 = *(state + 5);
    *(state + 5) = v149 + 1;
    *(v148 + v149) = BYTE3(v125);
    v150 = *(state + 2);
    v151 = *(state + 5);
    *(state + 5) = v151 + 1;
    *(v150 + v151) = v147;
    v146 = strm->adler;
    v152 = *(state + 2);
    v153 = *(state + 5);
    *(state + 5) = v153 + 1;
    *(v152 + v153) = BYTE1(v146);
  }

  v154 = *(state + 2);
  v155 = *(state + 5);
  *(state + 5) = v155 + 1;
  *(v154 + v155) = v146;
  sub_2999C4B04(strm);
  v156 = *(state + 12);
  if (v156 >= 1)
  {
    *(state + 12) = -v156;
  }

  return *(state + 5) == 0;
}

int inflateReset(z_streamp strm)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  *(state + 8) = 0;
  *(state + 15) = 0;

  return inflateResetKeep(strm);
}

int inflateReset2(z_streamp strm, int windowBits)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  v6 = (windowBits >> 4) + 5;
  v7 = windowBits & 0xF;
  if (windowBits >= 0x30)
  {
    v7 = windowBits;
  }

  v8 = windowBits >= 0;
  v9 = windowBits < 0 ? -windowBits : v7;
  v10 = v8 ? v6 : 0;
  if ((v9 - 8) >= 8 && v9)
  {
    return -2;
  }

  if (*(state + 9) && *(state + 14) != v9)
  {
    (strm->zfree)(strm->opaque);
    *(state + 9) = 0;
  }

  *(state + 4) = v10;
  *(state + 14) = v9;

  return inflateReset(strm);
}

int inflateResetKeep(z_streamp a1)
{
  if (sub_2999BF904(a1))
  {
    return -2;
  }

  state = a1->state;
  *(state + 5) = 0;
  a1->total_in = 0;
  a1->total_out = 0;
  a1->msg = 0;
  v4 = *(state + 4);
  if (v4)
  {
    a1->adler = v4 & 1;
  }

  result = 0;
  *(state + 1) = 16180;
  *(state + 20) = 0xFFFFFFFF00000000;
  *(state + 7) = 0x8000;
  *(state + 18) = state + 1368;
  *(state + 13) = state + 1368;
  *(state + 14) = state + 1368;
  *(state + 6) = 0;
  *(state + 10) = 0;
  *(state + 22) = 0;
  *(state + 893) = 0xFFFFFFFF00000001;
  return result;
}

uint64_t sub_2999BF9E0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 188);
  v3 = *(a1 + 184);
  v4 = *(a1 + 96);
  v5 = *(a1 + 172);
  v6 = (v4 + v5);
  v7 = *(a1 + 80) - 262;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 112);
  v11 = *(a1 + 88);
  v12 = *(a1 + 180);
  v13 = v6[v3 - 1];
  v14 = v6[v3];
  v15 = *(a1 + 208);
  if (v3 >= *(a1 + 204))
  {
    v2 >>= 2;
  }

  if (v15 >= v12)
  {
    v15 = *(a1 + 180);
  }

  while (1)
  {
    v16 = (v4 + a2);
    v17 = &v16[v3];
    if (*v17 != v14 || *(v17 - 1) != v13 || *v16 != *v6 || v16[1] != v6[1])
    {
      goto LABEL_32;
    }

    v18 = 0;
    v19 = v4 + 5 + a2;
    while (1)
    {
      v20 = &v6[v18];
      if (v6[v18 + 3] != *(v19 + v18 - 2))
      {
        v26 = v20 + 3;
        goto LABEL_29;
      }

      if (v20[4] != *(v19 + v18 - 1))
      {
        v26 = v6 + v18 + 4;
        goto LABEL_29;
      }

      v21 = &v6[v18];
      if (v6[v18 + 5] != *(v19 + v18))
      {
        v26 = v21 + 5;
        goto LABEL_29;
      }

      if (v21[6] != *(v19 + v18 + 1))
      {
        v26 = v6 + v18 + 6;
        goto LABEL_29;
      }

      v22 = &v6[v18];
      if (v6[v18 + 7] != *(v19 + v18 + 2))
      {
        v26 = v22 + 7;
        goto LABEL_29;
      }

      if (v22[8] != *(v19 + v18 + 3))
      {
        v26 = v6 + v18 + 8;
        goto LABEL_29;
      }

      v23 = &v6[v18];
      if (v6[v18 + 9] != *(v19 + v18 + 4))
      {
        break;
      }

      v24 = v18 + 8;
      if ((v18 + 2) <= 0xF9)
      {
        v25 = *(v19 + v18 + 5);
        v18 += 8;
        if (v23[10] == v25)
        {
          continue;
        }
      }

      v26 = v6 + v24 + 2;
      goto LABEL_29;
    }

    v26 = v23 + 9;
LABEL_29:
    v27 = v26 - (v6 + 258);
    v28 = v26 - v6;
    if (v28 <= v3)
    {
      goto LABEL_32;
    }

    *(a1 + 176) = a2;
    if (v28 >= v15)
    {
      break;
    }

    v13 = v6[v27 + 257];
    v14 = v6[v28];
    LODWORD(v3) = v28;
LABEL_32:
    a2 = *(v10 + 2 * (a2 & v11));
    --v2;
    if (v9 >= a2 || v2 == 0)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v3) = v28;
LABEL_37:
  if (v3 >= v12)
  {
    return v12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2999BFBF0(void *a1, int a2)
{
  v4 = a1 + 212;
  v5 = a1 + 313;
  while (1)
  {
    if (*(a1 + 45) >= 0x106u)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 44);
      goto LABEL_9;
    }

    sub_2999C00F4(a1);
    v6 = *(a1 + 45);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    if (v6 <= 2)
    {
      *(a1 + 46) = v7;
      v9 = 2;
      *(a1 + 40) = 2;
      *(a1 + 41) = v8;
      goto LABEL_19;
    }

LABEL_9:
    v10 = *(a1 + 43);
    v11 = ((*(a1 + 32) << *(a1 + 36)) ^ *(a1[12] + v10 + 2)) & *(a1 + 35);
    *(a1 + 32) = v11;
    v12 = a1[15];
    v13 = *(v12 + 2 * v11);
    *(a1[14] + 2 * (a1[11] & v10)) = v13;
    *(v12 + 2 * v11) = v10;
    *(a1 + 46) = v7;
    v9 = 2;
    *(a1 + 40) = 2;
    *(a1 + 41) = v8;
    if (!v13)
    {
      goto LABEL_19;
    }

    if (v7 < *(a1 + 48) && v10 - v13 <= *(a1 + 20) - 262)
    {
      v9 = sub_2999BF9E0(a1, v13);
      *(a1 + 40) = v9;
      if (v9 <= 5)
      {
        if (*(a1 + 50) != 1)
        {
          if (v9 != 3)
          {
            goto LABEL_18;
          }

          if ((*(a1 + 43) - *(a1 + 44)) <= 0x1000)
          {
            v9 = 3;
            goto LABEL_18;
          }
        }

        v9 = 2;
        *(a1 + 40) = 2;
      }
    }

LABEL_18:
    v7 = *(a1 + 46);
LABEL_19:
    v14 = v7 - 3;
    if (v7 < 3 || v9 > v7)
    {
      if (*(a1 + 42))
      {
        v35 = *(a1[12] + (*(a1 + 43) - 1));
        v36 = a1[736];
        v37 = *(a1 + 1475);
        *(a1 + 1475) = v37 + 1;
        *(v36 + v37) = 0;
        v38 = a1[736];
        v39 = *(a1 + 1475);
        *(a1 + 1475) = v39 + 1;
        *(v38 + v39) = 0;
        v40 = a1[736];
        v41 = *(a1 + 1475);
        *(a1 + 1475) = v41 + 1;
        *(v40 + v41) = v35;
        ++*&v4[4 * v35];
        if (*(a1 + 1475) == *(a1 + 1476))
        {
          v42 = a1[19];
          if (v42 < 0)
          {
            v43 = 0;
          }

          else
          {
            v43 = (a1[12] + v42);
          }

          sub_2999C45B0(a1, v43, *(a1 + 43) - v42, 0);
          a1[19] = *(a1 + 43);
          sub_2999C4B04(*a1);
        }

        ++*(a1 + 43);
        --*(a1 + 45);
        goto LABEL_40;
      }

      v44 = *(a1 + 43) + 1;
      *(a1 + 42) = 1;
      *(a1 + 43) = v44;
      --*(a1 + 45);
    }

    else
    {
      v15 = *(a1 + 43);
      v16 = v15 + *(a1 + 45) - 3;
      v17 = v15 + ~*(a1 + 41);
      v18 = a1[736];
      v19 = *(a1 + 1475);
      *(a1 + 1475) = v19 + 1;
      *(v18 + v19) = v17;
      v20 = a1[736];
      v21 = *(a1 + 1475);
      *(a1 + 1475) = v21 + 1;
      *(v20 + v21) = BYTE1(v17);
      v22 = a1[736];
      v23 = *(a1 + 1475);
      *(a1 + 1475) = v23 + 1;
      *(v22 + v23) = v14;
      v24 = v17 - 1;
      v25 = &v4[4 * byte_2999CC2B8[v14]];
      ++*(v25 + 514);
      v26 = (v24 >> 7) + 256;
      if ((v24 & 0xFF00) == 0)
      {
        v26 = v24;
      }

      v30 = 4 * byte_2999CC0B8[v26];
      ++*(v5 + v30);
      v27 = *(a1 + 1475);
      v28 = *(a1 + 1476);
      LODWORD(v30) = *(a1 + 46);
      *(a1 + 45) = *(a1 + 45) - v30 + 1;
      *(a1 + 46) = v30 - 2;
      v29 = v30 - 3;
      LODWORD(v30) = *(a1 + 43) + 1;
      do
      {
        *(a1 + 43) = v30;
        if (v30 <= v16)
        {
          v31 = ((*(a1 + 32) << *(a1 + 36)) ^ *(a1[12] + (v30 + 2))) & *(a1 + 35);
          *(a1 + 32) = v31;
          v32 = a1[15];
          *(a1[14] + 2 * (a1[11] & v30)) = *(v32 + 2 * v31);
          *(v32 + 2 * v31) = v30;
        }

        *(a1 + 46) = v29--;
        v30 = (v30 + 1);
      }

      while (v29 != -1);
      *(a1 + 40) = 2;
      *(a1 + 42) = 0;
      *(a1 + 43) = v30;
      if (v27 == v28)
      {
        v33 = a1[19];
        if (v33 < 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = (a1[12] + v33);
        }

        sub_2999C45B0(a1, v34, v30 - v33, 0);
        a1[19] = *(a1 + 43);
        sub_2999C4B04(*a1);
LABEL_40:
        if (!*(*a1 + 32))
        {
          return 0;
        }
      }
    }
  }

  if (*(a1 + 42))
  {
    v46 = *(a1[12] + (*(a1 + 43) - 1));
    v47 = a1[736];
    v48 = *(a1 + 1475);
    *(a1 + 1475) = v48 + 1;
    *(v47 + v48) = 0;
    v49 = a1[736];
    v50 = *(a1 + 1475);
    *(a1 + 1475) = v50 + 1;
    *(v49 + v50) = 0;
    v51 = a1[736];
    v52 = *(a1 + 1475);
    *(a1 + 1475) = v52 + 1;
    *(v51 + v52) = v46;
    ++*&v4[4 * v46];
    *(a1 + 42) = 0;
  }

  v53 = *(a1 + 43);
  if (v53 >= 2)
  {
    v54 = 2;
  }

  else
  {
    v54 = *(a1 + 43);
  }

  *(a1 + 1483) = v54;
  if (a2 == 4)
  {
    v55 = a1[19];
    if (v55 < 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = (a1[12] + v55);
    }

    sub_2999C45B0(a1, v56, v53 - v55, 1);
    a1[19] = *(a1 + 43);
    sub_2999C4B04(*a1);
    if (*(*a1 + 32))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (*(a1 + 1475))
    {
      v57 = a1[19];
      v58 = v57 < 0 ? 0 : (a1[12] + v57);
      sub_2999C45B0(a1, v58, v53 - v57, 0);
      a1[19] = *(a1 + 43);
      sub_2999C4B04(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }

    return 1;
  }
}

void sub_2999C00F4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 180);
  v4 = vdup_n_s32(v2);
  do
  {
    v5 = *(a1 + 172);
    v6 = *(a1 + 104) - (v3 + v5);
    if (v5 >= v2 - 262 + *(a1 + 80))
    {
      memcpy(*(a1 + 96), (*(a1 + 96) + v2), v2 - v6);
      v7 = vsub_s32(*(a1 + 172), v4);
      *(a1 + 172) = v7;
      *(a1 + 152) -= v2;
      v5 = v7.i32[0];
      if (*(a1 + 5932) > v7.i32[0])
      {
        *(a1 + 5932) = v7.i32[0];
      }

      v8 = *(a1 + 80);
      v9 = *(a1 + 132);
      v10 = (*(a1 + 120) + 2 * v9 - 2);
      do
      {
        v11 = *v10;
        v12 = v11 >= v8;
        v13 = v11 - v8;
        if (!v12)
        {
          v13 = 0;
        }

        *v10-- = v13;
        LODWORD(v9) = v9 - 1;
      }

      while (v9);
      v14 = (*(a1 + 112) + 2 * v8 - 2);
      v15 = v8;
      do
      {
        v16 = *v14;
        v12 = v16 >= v8;
        v17 = v16 - v8;
        if (!v12)
        {
          v17 = 0;
        }

        *v14-- = v17;
        --v15;
      }

      while (v15);
      v6 += v2;
    }

    if (!*(*a1 + 8))
    {
      break;
    }

    v3 = *(a1 + 180) + sub_2999C04F0(*a1, (*(a1 + 96) + v5 + *(a1 + 180)), v6);
    *(a1 + 180) = v3;
    v18 = *(a1 + 5932);
    if (v18 + v3 >= 3)
    {
      v19 = *(a1 + 172) - v18;
      v20 = *(a1 + 96);
      v21 = *(v20 + v19);
      *(a1 + 128) = v21;
      v23 = *(a1 + 140);
      v22 = *(a1 + 144);
      v24 = ((v21 << v22) ^ *(v20 + v19 + 1)) & v23;
      *(a1 + 128) = v24;
      do
      {
        if (!v18)
        {
          break;
        }

        v24 = ((v24 << v22) ^ *(v20 + v19 + 2)) & v23;
        v25 = *(a1 + 120);
        *(*(a1 + 112) + 2 * (*(a1 + 88) & v19)) = *(v25 + 2 * v24);
        *(v25 + 2 * v24) = v19;
        *(a1 + 128) = v24;
        ++v19;
        *(a1 + 5932) = --v18;
      }

      while (v3 + v18 > 2);
    }
  }

  while (v3 <= 0x105 && *(*a1 + 8));
  v26 = *(a1 + 5944);
  v27 = *(a1 + 104);
  if (v27 > v26)
  {
    v28 = *(a1 + 180) + *(a1 + 172);
    if (v26 >= v28)
    {
      if (v28 + 258 <= v26)
      {
        return;
      }

      if (v28 + 258 - v26 >= v27 - v26)
      {
        v31 = v27 - v26;
      }

      else
      {
        v31 = v28 + 258 - v26;
      }

      bzero((*(a1 + 96) + v26), v31);
      v30 = *(a1 + 5944) + v31;
    }

    else
    {
      if (v27 - v28 >= 0x102)
      {
        v29 = 258;
      }

      else
      {
        v29 = v27 - v28;
      }

      bzero((*(a1 + 96) + v28), v29);
      v30 = v29 + v28;
    }

    *(a1 + 5944) = v30;
  }
}

uint64_t sub_2999C0334(uint64_t a1, int flush)
{
  if (!*(a1 + 40) && sub_2999C5B98(a1) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 136);
    if (v4)
    {
      v5 = *(a1 + 128);
      while (1)
      {
        v6 = v4 >= 0x40000000 ? 0x40000000 : v4;
        v7 = write(*(a1 + 28), v5, v6);
        if (v7 < 0)
        {
          break;
        }

        v8 = *(a1 + 136);
        v5 = (*(a1 + 128) + (v7 & 0x7FFFFFFF));
        *(a1 + 128) = v5;
        v4 = v8 - v7;
        *(a1 + 136) = v4;
        if (!v4)
        {
          return 0;
        }
      }

LABEL_40:
      v20 = __error();
      v21 = strerror(*v20);
      v19 = 0xFFFFFFFFLL;
      sub_2999C63DC(a1, -1, v21);
      return v19;
    }

    return 0;
  }

  if (*(a1 + 96))
  {
    if (!*(a1 + 136))
    {
      return 0;
    }

    deflateReset((a1 + 128));
    *(a1 + 96) = 0;
  }

  v9 = 0;
  v10 = *(a1 + 160);
  do
  {
    if (!v10 || (flush == 4 ? (v11 = v9 == 1) : (v11 = 1), !v11 ? (v12 = 0) : (v12 = 1), flush && v12))
    {
      v13 = *(a1 + 152);
      v14 = *(a1 + 8);
      if (v13 > v14)
      {
        while (1)
        {
          v15 = v13 - v14;
          v16 = v15 <= 0x40000000 ? v15 : 0x40000000;
          v17 = write(*(a1 + 28), v14, v16);
          if (v17 < 0)
          {
            goto LABEL_40;
          }

          v14 = (*(a1 + 8) + (v17 & 0x7FFFFFFF));
          *(a1 + 8) = v14;
          v13 = *(a1 + 152);
          if (v13 <= v14)
          {
            v10 = *(a1 + 160);
            break;
          }
        }
      }

      if (!v10)
      {
        v10 = *(a1 + 40);
        *(a1 + 160) = v10;
        v18 = *(a1 + 56);
        *(a1 + 152) = v18;
        *(a1 + 8) = v18;
      }
    }

    v9 = deflate((a1 + 128), flush);
    if (v9 == -2)
    {
      sub_2999C63DC(a1, -2, "internal error: deflate stream corrupt");
      return 0xFFFFFFFFLL;
    }

    v11 = v10 == *(a1 + 160);
    v10 = *(a1 + 160);
  }

  while (!v11);
  if (flush != 4)
  {
    return 0;
  }

  v19 = 0;
  *(a1 + 96) = 1;
  return v19;
}

size_t sub_2999C04F0(uint64_t a1, void *__dst, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    *(a1 + 8) = v3 - v4;
    memcpy(__dst, *a1, v4);
    v7 = *(*(a1 + 56) + 48);
    if (v7 == 2)
    {
      v8 = crc32(*(a1 + 96), __dst, v4);
    }

    else
    {
      if (v7 != 1)
      {
LABEL_10:
        *a1 += v4;
        *(a1 + 16) += v4;
        return v4;
      }

      v8 = adler32(*(a1 + 96), __dst, v4);
    }

    *(a1 + 96) = v8;
    goto LABEL_10;
  }

  return v4;
}

BOOL sub_2999C05A0(void *a1)
{
  result = 1;
  if (a1)
  {
    if (a1[8])
    {
      if (a1[9])
      {
        v1 = a1[7];
        if (v1)
        {
          if (*v1 == a1)
          {
            v3 = *(v1 + 8);
            v4 = (v3 - 57) > 0x38 || ((1 << (v3 - 57)) & 0x100400400011001) == 0;
            if (!v4 || v3 == 666 || v3 == 42)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

int inflate(z_streamp strm, int flush)
{
  v2 = *&flush;
  v3 = strm;
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  next_out = v3->next_out;
  if (!next_out)
  {
    return -2;
  }

  next_in = v3->next_in;
  if (!v3->next_in)
  {
    if (v3->avail_in)
    {
      return -2;
    }
  }

  state = v3->state;
  v8 = *(state + 2);
  if (v8 == 16191)
  {
    v8 = 16192;
    *(state + 2) = 16192;
  }

  avail_out = v3->avail_out;
  v10 = *(state + 10);
  v11 = state + 152;
  v236 = state + 1368;
  v12 = *(state + 22);
  v242 = v2 - 5;
  v13 = avail_out;
  avail_in = v3->avail_in;
  v244 = 0;
  v14 = avail_in;
  while (2)
  {
    v15 = v8 - 16180;
    v16 = -3;
    v17 = 1;
    switch(v15)
    {
      case 0:
        v18 = *(state + 4);
        if (!v18)
        {
          v53 = 16192;
          goto LABEL_394;
        }

        if (v12 <= 0xF)
        {
          v19 = avail_out;
          avail_out = v12;
          do
          {
            if (!v14)
            {
              goto LABEL_400;
            }

            v20 = *next_in++;
            v14 = (v14 - 1);
            v10 += v20 << avail_out;
            v21 = avail_out + 8;
            v62 = avail_out >= 8;
            avail_out += 8;
          }

          while (!v62);
          v12 = v21;
          avail_out = v19;
        }

        if ((v18 & 2) != 0 && v10 == 35615)
        {
          if (!*(state + 14))
          {
            *(state + 14) = 15;
          }

          v22 = crc32(0, 0, 0);
          *(state + 4) = v22;
          *buf = -29921;
          v23 = crc32(v22, buf, 2u);
          v10 = 0;
          v12 = 0;
          *(state + 4) = v23;
          *(state + 2) = 16181;
          goto LABEL_169;
        }

        v167 = *(state + 6);
        if (v167)
        {
          *(v167 + 72) = -1;
        }

        if ((v18 & 1) == 0 || 0xEF7BDEF7BDEF7BDFLL * ((v10 << 8) + (v10 >> 8)) >= 0x842108421084211)
        {
          v45 = "incorrect header check";
          goto LABEL_393;
        }

        if ((v10 & 0xF) != 8)
        {
          goto LABEL_392;
        }

        v217 = v10 >> 4;
        v218 = v217 + 8;
        v219 = *(state + 14);
        if (!v219)
        {
          *(state + 14) = v218;
          v219 = v217 + 8;
        }

        if (v217 > 7 || v218 > v219)
        {
          v10 >>= 4;
          v12 = (v12 - 4);
          v45 = "invalid window size";
          goto LABEL_393;
        }

        *(state + 6) = 0;
        *(state + 7) = 256 << v217;
        v220 = adler32(0, 0, 0);
        v11 = state + 152;
        v12 = 0;
        *(state + 4) = v220;
        v3->adler = v220;
        if ((v10 & 0x2000) != 0)
        {
          v221 = 16189;
        }

        else
        {
          v221 = 16191;
        }

        *(state + 2) = v221;
        v10 = 0;
        goto LABEL_395;
      case 1:
        if (v12 > 0xF)
        {
          goto LABEL_56;
        }

        v34 = avail_out;
        avail_out = v12;
        do
        {
          if (!v14)
          {
            goto LABEL_403;
          }

          v43 = *next_in++;
          v14 = (v14 - 1);
          v10 += v43 << avail_out;
          v44 = avail_out + 8;
          v62 = avail_out >= 8;
          avail_out += 8;
        }

        while (!v62);
        v12 = v44;
        avail_out = v34;
LABEL_56:
        *(state + 6) = v10;
        if (v10 != 8)
        {
LABEL_392:
          v45 = "unknown compression method";
          goto LABEL_393;
        }

        if ((v10 & 0xE000) != 0)
        {
          v45 = "unknown header flags set";
          goto LABEL_393;
        }

        v237 = v2;
        v2 = v13;
        v168 = *(state + 6);
        if (v168)
        {
          *v168 = (v10 >> 8) & 1;
        }

        v13 = avail_out;
        if ((v10 & 0x200) != 0 && (*(state + 16) & 4) != 0)
        {
          *buf = v10;
          v169 = crc32(*(state + 4), buf, 2u);
          v11 = state + 152;
          *(state + 4) = v169;
        }

        LODWORD(v12) = 0;
        v10 = 0;
        *(state + 2) = 16182;
LABEL_254:
        avail_out = v12;
        do
        {
          if (!v14)
          {
            goto LABEL_402;
          }

          v170 = *next_in++;
          LODWORD(v14) = v14 - 1;
          v10 += v170 << avail_out;
          v62 = avail_out >= 0x18;
          avail_out += 8;
        }

        while (!v62);
LABEL_258:
        v171 = *(state + 6);
        if (v171)
        {
          *(v171 + 8) = v10;
        }

        if ((*(state + 25) & 2) != 0 && (*(state + 16) & 4) != 0)
        {
          *buf = v10;
          v172 = crc32(*(state + 4), buf, 4u);
          v11 = state + 152;
          *(state + 4) = v172;
        }

        LODWORD(v12) = 0;
        v10 = 0;
        *(state + 2) = 16183;
LABEL_264:
        avail_out = v12;
        do
        {
          if (!v14)
          {
            goto LABEL_402;
          }

          v173 = *next_in++;
          v14 = (v14 - 1);
          v10 += v173 << avail_out;
          v62 = avail_out >= 8;
          avail_out += 8;
        }

        while (!v62);
LABEL_268:
        v174 = *(state + 6);
        if (v174)
        {
          *(v174 + 16) = v10;
          *(v174 + 20) = v10 >> 8;
        }

        if ((*(state + 25) & 2) != 0 && (*(state + 16) & 4) != 0)
        {
          *buf = v10;
          v175 = crc32(*(state + 4), buf, 2u);
          v11 = state + 152;
          *(state + 4) = v175;
        }

        v10 = 0;
        LODWORD(v12) = 0;
        v47 = 0;
        *(state + 2) = 16184;
        v46 = *(state + 6);
        avail_out = v13;
        v13 = v2;
        v2 = v237;
        if ((v46 & 0x400) != 0)
        {
LABEL_276:
          v19 = avail_out;
          avail_out = v12;
          do
          {
            if (!v14)
            {
              goto LABEL_400;
            }

            v177 = *next_in++;
            v14 = (v14 - 1);
            v10 += v177 << avail_out;
            v62 = avail_out >= 8;
            avail_out += 8;
          }

          while (!v62);
          avail_out = v19;
LABEL_281:
          *(state + 23) = v10;
          v178 = *(state + 6);
          if (v178)
          {
            *(v178 + 32) = v10;
          }

          if ((v46 & 0x200) != 0 && (*(state + 16) & 4) != 0)
          {
            *buf = v10;
            v179 = crc32(*(state + 4), buf, 2u);
            v11 = state + 152;
            v10 = 0;
            v47 = 0;
            *(state + 4) = v179;
          }

          else
          {
            v10 = 0;
            v47 = 0;
          }
        }

        else
        {
LABEL_274:
          v176 = *(state + 6);
          if (v176)
          {
            *(v176 + 24) = 0;
          }
        }

        *(state + 2) = 16185;
        v12 = v47;
LABEL_288:
        v180 = *(state + 6);
        if ((v180 & 0x400) != 0)
        {
          v181 = *(state + 23);
          if (v181 >= v14)
          {
            v182 = v14;
          }

          else
          {
            v182 = *(state + 23);
          }

          if (v182)
          {
            v183 = *(state + 6);
            if (v183)
            {
              v184 = *(v183 + 24);
              if (v184)
              {
                v186 = *(v183 + 32);
                v185 = *(v183 + 36);
                v187 = v186 - v181;
                if (v185 > v187)
                {
                  if (v187 + v182 <= v185)
                  {
                    v188 = v182;
                  }

                  else
                  {
                    v188 = v185 - v187;
                  }

                  v239 = v13;
                  v189 = v12;
                  memcpy((v184 + v187), next_in, v188);
                  v12 = v189;
                  v13 = v239;
                  v11 = state + 152;
                  v180 = *(state + 6);
                }
              }
            }

            if ((v180 & 0x200) != 0 && (*(state + 16) & 4) != 0)
            {
              v240 = v13;
              v190 = v12;
              v191 = crc32(*(state + 4), next_in, v182);
              v12 = v190;
              v13 = v240;
              v11 = state + 152;
              *(state + 4) = v191;
            }

            v14 = v14 - v182;
            next_in += v182;
            v181 = *(state + 23) - v182;
            *(state + 23) = v181;
          }

          if (v181)
          {
            goto LABEL_411;
          }
        }

        *(state + 23) = 0;
        *(state + 2) = 16186;
LABEL_306:
        if ((*(state + 25) & 8) != 0)
        {
          if (!v14)
          {
            goto LABEL_411;
          }

          v241 = v13;
          v235 = avail_out;
          v193 = v2;
          v194 = 0;
          do
          {
            v195 = next_in[v194];
            v196 = *(state + 6);
            if (v196)
            {
              v197 = *(v196 + 40);
              if (v197)
              {
                v198 = *(state + 23);
                if (v198 < *(v196 + 48))
                {
                  *(state + 23) = v198 + 1;
                  *(v197 + v198) = v195;
                }
              }
            }

            ++v194;
            if (v195)
            {
              v199 = v194 >= v14;
            }

            else
            {
              v199 = 1;
            }
          }

          while (!v199);
          if ((*(state + 25) & 2) != 0 && (*(state + 16) & 4) != 0)
          {
            v233 = v12;
            v200 = crc32(*(state + 4), next_in, v194);
            v12 = v233;
            v11 = state + 152;
            *(state + 4) = v200;
          }

          next_in += v194;
          if (v195)
          {
            goto LABEL_404;
          }

          v14 = v14 - v194;
          avail_out = v235;
          v13 = v241;
        }

        else
        {
          v192 = *(state + 6);
          if (v192)
          {
            *(v192 + 40) = 0;
          }
        }

        *(state + 23) = 0;
        *(state + 2) = 16187;
LABEL_326:
        if ((*(state + 25) & 0x10) == 0)
        {
          v201 = *(state + 6);
          if (v201)
          {
            *(v201 + 56) = 0;
          }

          goto LABEL_345;
        }

        if (v14)
        {
          v241 = v13;
          v235 = avail_out;
          v193 = v2;
          v194 = 0;
          do
          {
            v202 = next_in[v194];
            v203 = *(state + 6);
            if (v203)
            {
              v204 = *(v203 + 56);
              if (v204)
              {
                v205 = *(state + 23);
                if (v205 < *(v203 + 64))
                {
                  *(state + 23) = v205 + 1;
                  *(v204 + v205) = v202;
                }
              }
            }

            ++v194;
            if (v202)
            {
              v206 = v194 >= v14;
            }

            else
            {
              v206 = 1;
            }
          }

          while (!v206);
          if ((*(state + 25) & 2) != 0 && (*(state + 16) & 4) != 0)
          {
            v234 = v12;
            v207 = crc32(*(state + 4), next_in, v194);
            v12 = v234;
            v11 = state + 152;
            *(state + 4) = v207;
          }

          next_in += v194;
          if (!v202)
          {
            v14 = v14 - v194;
            avail_out = v235;
            v13 = v241;
LABEL_345:
            *(state + 2) = 16188;
LABEL_346:
            v208 = *(state + 6);
            if ((v208 & 0x200) != 0)
            {
              if (v12 <= 0xF)
              {
                v19 = avail_out;
                avail_out = v12;
                do
                {
                  if (!v14)
                  {
                    goto LABEL_400;
                  }

                  v209 = *next_in++;
                  v14 = (v14 - 1);
                  v10 += v209 << avail_out;
                  v210 = avail_out + 8;
                  v62 = avail_out >= 8;
                  avail_out += 8;
                }

                while (!v62);
                v12 = v210;
                avail_out = v19;
              }

              if ((*(state + 16) & 4) != 0 && v10 != *(state + 16))
              {
                v45 = "header crc mismatch";
                goto LABEL_393;
              }

              v10 = 0;
              v12 = 0;
            }

            v74 = v12;
            v211 = *(state + 6);
            if (v211)
            {
              *(v211 + 68) = (v208 >> 9) & 1;
              *(v211 + 72) = 1;
            }

            v212 = crc32(0, 0, 0);
            *(state + 4) = v212;
            v3->adler = v212;
            *(state + 2) = 16191;
            goto LABEL_359;
          }

LABEL_404:
          LODWORD(v14) = v14 - v194;
          v17 = v244;
          LODWORD(v2) = v193;
          LODWORD(avail_out) = v235;
          LODWORD(v13) = v241;
          goto LABEL_412;
        }

        goto LABEL_411;
      case 2:
        v237 = v2;
        v2 = v13;
        v13 = avail_out;
        if (v12 > 0x1F)
        {
          goto LABEL_258;
        }

        goto LABEL_254;
      case 3:
        v237 = v2;
        v2 = v13;
        v13 = avail_out;
        if (v12 > 0xF)
        {
          goto LABEL_268;
        }

        goto LABEL_264;
      case 4:
        v46 = *(state + 6);
        if ((v46 & 0x400) == 0)
        {
          v47 = v12;
          goto LABEL_274;
        }

        if (v12 <= 0xF)
        {
          goto LABEL_276;
        }

        goto LABEL_281;
      case 5:
        goto LABEL_288;
      case 6:
        goto LABEL_306;
      case 7:
        goto LABEL_326;
      case 8:
        goto LABEL_346;
      case 9:
        v34 = avail_out;
        if (v12 > 0x1F)
        {
          goto LABEL_68;
        }

        avail_out = v12;
        do
        {
          if (!v14)
          {
            goto LABEL_403;
          }

          v48 = *next_in++;
          v14 = (v14 - 1);
          v10 += v48 << avail_out;
          v62 = avail_out >= 0x18;
          avail_out += 8;
        }

        while (!v62);
LABEL_68:
        LODWORD(v12) = 0;
        v49 = bswap32(v10);
        *(state + 4) = v49;
        v3->adler = v49;
        *(state + 2) = 16190;
        v10 = 0;
        avail_out = v34;
LABEL_69:
        if (!*(state + 5))
        {
          v3->next_out = next_out;
          v3->avail_out = avail_out;
          v3->next_in = next_in;
          v3->avail_in = v14;
          *(state + 10) = v10;
          result = 2;
          *(state + 22) = v12;
          return result;
        }

        v50 = v13;
        v51 = v12;
        v52 = adler32(0, 0, 0);
        LODWORD(v12) = v51;
        v13 = v50;
        v11 = state + 152;
        *(state + 4) = v52;
        v3->adler = v52;
        *(state + 2) = 16191;
LABEL_71:
        if (v242 < 2)
        {
          goto LABEL_411;
        }

LABEL_72:
        if (*(state + 3))
        {
          v10 >>= v12 & 7;
          v12 = v12 & 0xFFFFFFF8;
          v53 = 16206;
          goto LABEL_394;
        }

        if (v12 <= 2)
        {
          if (!v14)
          {
            v16 = v244;
LABEL_410:
            v17 = v16;
            goto LABEL_412;
          }

          v54 = *next_in++;
          v14 = (v14 - 1);
          v10 += v54 << v12;
          LODWORD(v12) = v12 | 8;
        }

        *(state + 3) = v10 & 1;
        v55 = (v10 >> 1) & 3;
        if (v55 > 1)
        {
          if (v55 == 2)
          {
            v56 = 16196;
          }

          else
          {
            v3->msg = "invalid block type";
            v56 = 16209;
          }

          goto LABEL_237;
        }

        if (!v55)
        {
          v56 = 16193;
LABEL_237:
          *(state + 2) = v56;
          goto LABEL_238;
        }

        *(state + 13) = &unk_2999CB6E6;
        *(state + 14) = &unk_2999CBEE6;
        *(state + 15) = 0x500000009;
        *(state + 2) = 16199;
        if (v2 != 6)
        {
LABEL_238:
          v10 >>= 3;
          v12 = (v12 - 3);
          goto LABEL_395;
        }

        v10 >>= 3;
        LODWORD(v12) = v12 - 3;
        goto LABEL_411;
      case 10:
        goto LABEL_69;
      case 11:
        goto LABEL_71;
      case 12:
        goto LABEL_72;
      case 13:
        v10 >>= v12 & 7;
        if (v12 > 0x1F)
        {
          v12 = v12 & 0xFFFFFFF8;
        }

        else
        {
          v34 = avail_out;
          avail_out = v12 & 0x18;
          do
          {
            if (!v14)
            {
              goto LABEL_403;
            }

            v35 = *next_in++;
            v14 = (v14 - 1);
            v10 += v35 << avail_out;
            v36 = avail_out + 8;
            v62 = avail_out >= 0x18;
            avail_out += 8;
          }

          while (!v62);
          v12 = v36;
          avail_out = v34;
        }

        if ((v10 ^ (v10 >> 16)) != 0xFFFF)
        {
          v45 = "invalid stored block lengths";
          goto LABEL_393;
        }

        v12 = 0;
        *(state + 23) = v10;
        *(state + 2) = 16194;
        v10 = 0;
        if (v2 == 6)
        {
          goto LABEL_411;
        }

LABEL_101:
        *(state + 2) = 16195;
LABEL_102:
        v63 = *(state + 23);
        if (!v63)
        {
          goto LABEL_247;
        }

        if (v63 >= v14)
        {
          v63 = v14;
        }

        if (v63 >= avail_out)
        {
          v64 = avail_out;
        }

        else
        {
          v64 = v63;
        }

        if (v64)
        {
          v238 = v3;
          v65 = avail_out;
          v66 = v2;
          v67 = v13;
          v68 = v12;
          memcpy(next_out, next_in, v64);
          v12 = v68;
          v13 = v67;
          v2 = v66;
          LODWORD(v66) = v65;
          v3 = v238;
          v11 = state + 152;
          v14 = (v14 - v64);
          next_in += v64;
          avail_out = (v66 - v64);
          next_out += v64;
          *(state + 23) -= v64;
          goto LABEL_395;
        }

        goto LABEL_411;
      case 14:
        goto LABEL_101;
      case 15:
        goto LABEL_102;
      case 16:
        if (v12 > 0xD)
        {
          goto LABEL_86;
        }

        v34 = avail_out;
        avail_out = v12;
        do
        {
          if (!v14)
          {
LABEL_403:
            LODWORD(v12) = avail_out;
            v17 = v244;
            LODWORD(avail_out) = v34;
            goto LABEL_412;
          }

          v57 = *next_in++;
          v14 = (v14 - 1);
          v10 += v57 << avail_out;
          v58 = avail_out + 8;
          v62 = avail_out >= 6;
          avail_out += 8;
        }

        while (!v62);
        LODWORD(v12) = v58;
        avail_out = v34;
LABEL_86:
        v59 = v10 & 0x1F;
        v60 = (v10 >> 5) & 0x1F;
        *(state + 33) = (v10 & 0x1F) + 257;
        *(state + 34) = v60 + 1;
        v61 = ((v10 >> 10) & 0xF) + 4;
        *(state + 32) = v61;
        v10 >>= 14;
        v12 = (v12 - 14);
        v62 = v59 > 0x1D || v60 >= 0x1E;
        if (v62)
        {
          v45 = "too many length or distance symbols";
          goto LABEL_393;
        }

        v237 = v2;
        v2 = v13;
        v13 = avail_out;
        v69 = 0;
        *(state + 35) = 0;
        *(state + 2) = 16197;
LABEL_114:
        LODWORD(avail_out) = v12;
        while (2)
        {
          if (avail_out <= 2)
          {
            if (v14)
            {
              v70 = *next_in++;
              v14 = (v14 - 1);
              v10 += v70 << avail_out;
              LODWORD(avail_out) = avail_out | 8;
              goto LABEL_118;
            }

LABEL_402:
            LODWORD(v12) = avail_out;
            v17 = v244;
            LODWORD(avail_out) = v13;
            LODWORD(v13) = v2;
            LODWORD(v2) = v237;
            goto LABEL_412;
          }

LABEL_118:
          *(v11 + 2 * word_2999CB6C0[v69]) = v10 & 7;
          *(state + 35) = v69 + 1;
          v10 >>= 3;
          avail_out = (avail_out - 3);
          if (v61 != ++v69)
          {
            continue;
          }

          break;
        }

        v12 = avail_out;
        v69 = v61;
LABEL_120:
        if (v69 <= 0x12)
        {
          v71 = &word_2999CB6C0[v69];
          v72 = v69 + 1;
          do
          {
            v73 = *v71++;
            *(v11 + 2 * v73) = 0;
            v228 = v72++ == 19;
          }

          while (!v228);
          *(state + 35) = 19;
        }

        v74 = v12;
        *(state + 18) = v236;
        *(state + 13) = v236;
        *(state + 14) = v236;
        *(state + 30) = 7;
        v75 = sub_2999C1F38(0, v11, 0x13u, state + 18, state + 30, state + 396, 0);
        avail_out = v13;
        if (v75)
        {
          v244 = v75;
          v3->msg = "invalid code lengths set";
          *(state + 2) = 16209;
          v13 = v2;
          v2 = v237;
LABEL_359:
          v11 = state + 152;
          v12 = v74;
          goto LABEL_395;
        }

        v37 = 0;
        v244 = 0;
        *(state + 35) = 0;
        *(state + 2) = 16198;
        v13 = v2;
        v2 = v237;
        v11 = state + 152;
        v12 = v74;
LABEL_128:
        v76 = *(state + 34) + *(state + 33);
        if (v37 >= v76)
        {
          goto LABEL_161;
        }

        v77 = *(state + 13);
        v78 = ~(-1 << *(state + 30));
        while (2)
        {
          v79 = v78 & v10;
          v80 = *(v77 + 4 * v79) - (*(v77 + 4 * v79 + 1) & ((8 * *(v77 + 4 * v79 + 1)) >> 7) & 0xF);
          if (v12 >= v80)
          {
            v85 = (*(v77 + 4 * v79) - (*(v77 + 4 * v79 + 1) & ((8 * *(v77 + 4 * v79 + 1)) >> 7) & 0xF));
          }

          else
          {
            v81 = v12;
            v82 = next_in;
            LODWORD(v83) = v14;
            do
            {
              if (!v83)
              {
                goto LABEL_401;
              }

              v83 = (v83 - 1);
              v84 = *v82++;
              v10 += v84 << v81;
              v81 += 8;
              v79 = v78 & v10;
            }

            while (v81 < (*(v77 + 4 * v79) - (*(v77 + 4 * v79 + 1) & ((8 * *(v77 + 4 * v79 + 1)) >> 7) & 0xF)));
            v85 = (*(v77 + 4 * v79) - (*(v77 + 4 * v79 + 1) & ((8 * *(v77 + 4 * v79 + 1)) >> 7) & 0xF));
            LODWORD(v12) = v81;
            v14 = v83;
            next_in = v82;
            v80 = *(v77 + 4 * v79) - (*(v77 + 4 * v79 + 1) & ((8 * *(v77 + 4 * v79 + 1)) >> 7) & 0xF);
          }

          v86 = *(v77 + 4 * v79 + 2);
          if (v86 <= 0xF)
          {
            v10 >>= v80;
            v12 = (v12 - v85);
            *(v11 + 2 * v37++) = v86;
            goto LABEL_160;
          }

          if (v86 == 16)
          {
            v93 = (v85 + 2);
            if (v12 < v93)
            {
              v12 = v12;
              while (v14)
              {
                v14 = (v14 - 1);
                v94 = *next_in++;
                v10 += v94 << v12;
                v12 += 8;
                if (v12 >= v93)
                {
                  goto LABEL_150;
                }
              }

              goto LABEL_411;
            }

LABEL_150:
            v10 >>= v80;
            v12 = (v12 - v85);
            if (v37)
            {
              v90 = *(v11 + 2 * (v37 - 1));
              v92 = (v10 & 3) + 3;
              v10 >>= 2;
              v12 = (v12 - 2);
              goto LABEL_158;
            }

LABEL_396:
            v45 = "invalid bit length repeat";
LABEL_393:
            v3->msg = v45;
            v53 = 16209;
LABEL_394:
            *(state + 2) = v53;
            goto LABEL_395;
          }

          if (v86 == 17)
          {
            v87 = (v85 + 3);
            if (v12 < v87)
            {
              v88 = avail_out;
              avail_out = v12;
              do
              {
                if (!v14)
                {
                  goto LABEL_405;
                }

                v14 = (v14 - 1);
                v89 = *next_in++;
                v10 += v89 << avail_out;
                avail_out += 8;
              }

              while (avail_out < v87);
              LODWORD(v12) = avail_out;
              avail_out = v88;
            }

            v90 = 0;
            v91 = v10 >> v80;
            v92 = ((v10 >> v80) & 7) + 3;
            v10 = v91 >> 3;
            v12 = (v12 - v85 - 3);
            goto LABEL_158;
          }

          v95 = (v85 + 7);
          if (v12 >= v95)
          {
            goto LABEL_157;
          }

          v88 = avail_out;
          avail_out = v12;
          while (2)
          {
            if (!v14)
            {
LABEL_405:
              LODWORD(v12) = avail_out;
              v17 = v244;
              LODWORD(avail_out) = v88;
              goto LABEL_412;
            }

            v14 = (v14 - 1);
            v96 = *next_in++;
            v10 += v96 << avail_out;
            avail_out += 8;
            if (avail_out < v95)
            {
              continue;
            }

            break;
          }

          LODWORD(v12) = avail_out;
          avail_out = v88;
LABEL_157:
          v90 = 0;
          v97 = v10 >> v80;
          v92 = ((v10 >> v80) & 0x7F) + 11;
          v10 = v97 >> 7;
          v12 = (v12 - v85 - 7);
LABEL_158:
          if (v92 + v37 > v76)
          {
            goto LABEL_396;
          }

          do
          {
            *(v11 + 2 * v37++) = v90;
            --v92;
          }

          while (v92);
LABEL_160:
          *(state + 35) = v37;
          if (v37 < v76)
          {
            continue;
          }

          break;
        }

LABEL_161:
        if (!*(state + 332))
        {
          v3->msg = "invalid code -- missing end-of-block";
          *(state + 2) = 16209;
          goto LABEL_395;
        }

        v74 = v12;
        if (sub_2999C2488(v3))
        {
          goto LABEL_359;
        }

        *(state + 2) = 16199;
        v11 = state + 152;
        LODWORD(v12) = v74;
        if (v2 == 6)
        {
          goto LABEL_411;
        }

LABEL_164:
        *(state + 2) = 16200;
LABEL_165:
        if (v14 >= 0x19 && avail_out >= 0x143)
        {
          v3->next_out = next_out;
          v3->avail_out = avail_out;
          v3->next_in = next_in;
          v3->avail_in = v14;
          *(state + 10) = v10;
          *(state + 22) = v12;
          sub_2999C32A4(v3, v13);
          next_out = v3->next_out;
          avail_out = v3->avail_out;
          next_in = v3->next_in;
          v14 = v3->avail_in;
          v10 = *(state + 10);
          v12 = *(state + 22);
          if (*(state + 2) == 16191)
          {
            *(state + 1787) = -1;
          }

LABEL_169:
          v11 = state + 152;
LABEL_395:
          v8 = *(state + 2);
          continue;
        }

        *(state + 1787) = 0;
        v98 = *(state + 13);
        v99 = -1 << *(state + 30);
        v100 = v10 & ~v99;
        v101 = (v98 + 4 * v100);
        v102 = *v101;
        v103 = v101[1];
        v104 = v102 - (v103 & (v103 << 27 >> 31) & 0xF);
        if (v12 >= v104)
        {
          v113 = v104;
        }

        else
        {
          v105 = ~v99;
          v106 = next_in;
          LODWORD(v107) = v14;
          v108 = v12;
          do
          {
            if (!v107)
            {
              goto LABEL_401;
            }

            v107 = (v107 - 1);
            v109 = *v106++;
            v10 += v109 << v108;
            v108 += 8;
            v100 = v105 & v10;
            v110 = (v98 + 4 * v100);
            v111 = *v110;
            v103 = v110[1];
            v112 = v111 - (v103 & (v103 << 27 >> 31) & 0xF);
          }

          while (v108 < v112);
          v113 = v112;
          LODWORD(v12) = v108;
          v14 = v107;
          next_in = v106;
          v104 = v112;
        }

        v114 = *(v98 + 4 * v100 + 2);
        if ((v103 - 1) > 0xE)
        {
          v113 = 0;
        }

        else
        {
          v115 = -1 << (v113 + v103);
          v116 = ((v10 & ~v115) >> v113) + v114;
          v117 = (v98 + 4 * v116);
          v118 = *v117;
          v103 = v117[1];
          v119 = v118 - (v103 & ((8 * v103) >> 7) & 0xF);
          if (v113 + v119 > v12)
          {
            v120 = ~v115;
            v121 = next_in;
            LODWORD(v122) = v14;
            v123 = v12;
            do
            {
              if (!v122)
              {
                goto LABEL_401;
              }

              v122 = (v122 - 1);
              v124 = *v121++;
              v10 += v124 << v123;
              v123 += 8;
              v116 = ((v10 & v120) >> v113) + v114;
              v125 = (v98 + 4 * v116);
              v126 = *v125;
              v103 = v125[1];
              v119 = v126 - (v103 & ((8 * v103) >> 7) & 0xF);
            }

            while (v123 < v113 + v119);
            LODWORD(v12) = v123;
            v14 = v122;
            next_in = v121;
          }

          v114 = *(v98 + 4 * v116 + 2);
          v10 >>= v104;
          LODWORD(v12) = v12 - v113;
          v104 = v119;
        }

        v10 >>= v104;
        v12 = v12 - v104;
        *(state + 1787) = v113 + v104;
        *(state + 23) = v114;
        if (!v103)
        {
          v53 = 16205;
          goto LABEL_394;
        }

        if ((v103 & 0x20) != 0)
        {
          *(state + 1787) = -1;
LABEL_247:
          v53 = 16191;
          goto LABEL_394;
        }

        if ((v103 & 0x40) != 0)
        {
          v45 = "invalid literal/length code";
          goto LABEL_393;
        }

        v38 = v103 & 0xF;
        *(state + 25) = v38;
        *(state + 2) = 16201;
        if ((v103 & 0xF) == 0)
        {
LABEL_188:
          v127 = *(state + 23);
          goto LABEL_191;
        }

LABEL_45:
        if (v12 >= v38)
        {
          v41 = v12;
          v40 = v14;
          v39 = next_in;
LABEL_190:
          v127 = *(state + 23) + (v10 & ~(-1 << v38));
          *(state + 23) = v127;
          v10 >>= v38;
          LODWORD(v12) = v41 - v38;
          *(state + 1787) += v38;
          v14 = v40;
          next_in = v39;
LABEL_191:
          *(state + 1788) = v127;
          *(state + 2) = 16202;
LABEL_192:
          v128 = *(state + 14);
          v129 = -1 << *(state + 31);
          v130 = v10 & ~v129;
          v132 = v128 + 4 * v130;
          v131 = *v132;
          LODWORD(v132) = *(v132 + 1);
          v133 = v131 - (v132 & ((v132 << 27) >> 31) & 0xF);
          if (v12 >= v133)
          {
            v141 = v133;
          }

          else
          {
            v134 = ~v129;
            v135 = next_in;
            LODWORD(v136) = v14;
            v137 = v12;
            do
            {
              if (!v136)
              {
                goto LABEL_401;
              }

              v136 = (v136 - 1);
              v138 = *v135++;
              v10 += v138 << v137;
              v137 += 8;
              v130 = v134 & v10;
              v132 = v128 + 4 * v130;
              v139 = *v132;
              LODWORD(v132) = *(v132 + 1);
              v140 = v139 - (v132 & ((v132 << 27) >> 31) & 0xF);
            }

            while (v137 < v140);
            v141 = v140;
            LODWORD(v12) = v137;
            v14 = v136;
            next_in = v135;
            v133 = v140;
          }

          v142 = *(v128 + 4 * v130 + 2);
          if (v132 >= 0x10)
          {
            v153 = *(state + 1787);
          }

          else
          {
            v143 = -1 << (v141 + v132);
            v144 = ((v10 & ~v143) >> v141) + v142;
            v132 = v128 + 4 * v144;
            v145 = *v132;
            LOBYTE(v132) = *(v132 + 1);
            v146 = v145 - (v132 & ((8 * v132) >> 7) & 0xF);
            if (v141 + v146 > v12)
            {
              v147 = ~v143;
              v148 = next_in;
              LODWORD(v149) = v14;
              v150 = v12;
              do
              {
                if (!v149)
                {
                  goto LABEL_401;
                }

                v149 = (v149 - 1);
                v151 = *v148++;
                v10 += v151 << v150;
                v150 += 8;
                v144 = ((v10 & v147) >> v141) + v142;
                v132 = v128 + 4 * v144;
                v152 = *v132;
                LOBYTE(v132) = *(v132 + 1);
                v146 = v152 - (v132 & ((8 * v132) >> 7) & 0xF);
              }

              while (v150 < v141 + v146);
              LODWORD(v12) = v150;
              v14 = v149;
              next_in = v148;
            }

            v142 = *(v128 + 4 * v144 + 2);
            v10 >>= v133;
            LODWORD(v12) = v12 - v141;
            v153 = *(state + 1787) + v141;
            v133 = v146;
          }

          v10 >>= v133;
          v12 = v12 - v133;
          *(state + 1787) = v153 + v133;
          if ((v132 & 0x40) != 0)
          {
            v45 = "invalid distance code";
            goto LABEL_393;
          }

          v24 = v132 & 0xF;
          *(state + 24) = v142;
          *(state + 25) = v24;
          *(state + 2) = 16203;
          if ((v132 & 0xF) != 0)
          {
LABEL_208:
            if (v12 < v24)
            {
              v154 = next_in;
              LODWORD(v155) = v14;
              v156 = v12;
              while (v155)
              {
                v155 = (v155 - 1);
                v157 = *v154++;
                v10 += v157 << v156;
                v156 += 8;
                if (v156 >= v24)
                {
                  goto LABEL_215;
                }
              }

              goto LABEL_401;
            }

            v156 = v12;
            v155 = v14;
            v154 = next_in;
LABEL_215:
            *(state + 24) += v10 & ~(-1 << v24);
            v10 >>= v24;
            v12 = v156 - v24;
            *(state + 1787) += v24;
            v14 = v155;
            next_in = v154;
          }

LABEL_216:
          *(state + 2) = 16204;
LABEL_217:
          if (avail_out)
          {
            v158 = *(state + 24);
            if (v158 <= v13 - avail_out)
            {
              v160 = &next_out[-v158];
              v161 = *(state + 23);
              v162 = v161;
            }

            else
            {
              v159 = v158 - (v13 - avail_out);
              if (v159 > *(state + 16) && *(state + 1786))
              {
                v45 = "invalid distance too far back";
                goto LABEL_393;
              }

              v163 = *(state + 17);
              v162 = v159 - v163;
              if (v159 <= v163)
              {
                v164 = v163 - v159;
                v162 = v159;
              }

              else
              {
                v164 = *(state + 15) - v162;
              }

              v160 = (*(state + 9) + v164);
              v161 = *(state + 23);
              if (v162 >= v161)
              {
                v162 = *(state + 23);
              }
            }

            if (v162 >= avail_out)
            {
              v162 = avail_out;
            }

            *(state + 23) = v161 - v162;
            v165 = v162;
            do
            {
              v166 = *v160++;
              *next_out++ = v166;
              --v165;
            }

            while (v165);
            avail_out = avail_out - v162;
            if (*(state + 23))
            {
              goto LABEL_395;
            }

LABEL_233:
            v53 = 16200;
            goto LABEL_394;
          }

LABEL_411:
          v17 = v244;
          goto LABEL_412;
        }

        v39 = next_in;
        LODWORD(v40) = v14;
        v41 = v12;
        while (v40)
        {
          v40 = (v40 - 1);
          v42 = *v39++;
          v10 += v42 << v41;
          v41 += 8;
          if (v41 >= v38)
          {
            goto LABEL_190;
          }
        }

LABEL_401:
        next_in += v14;
        v17 = v244;
        LODWORD(v12) = v12 + 8 * v14;
        LODWORD(v14) = 0;
LABEL_412:
        v3->next_out = next_out;
        v3->avail_out = avail_out;
        v3->next_in = next_in;
        v3->avail_in = v14;
        *(state + 10) = v10;
        *(state + 22) = v12;
        if (!*(state + 15))
        {
          if (v13 == avail_out || (v222 = *(state + 2), v222 > 0x3F50) || v2 == 4 && v222 > 0x3F4D)
          {
LABEL_422:
            v223 = (v13 - avail_out);
            v3->total_in += avail_in - v14;
            v3->total_out += v223;
            *(state + 5) += v223;
            if ((*(state + 16) & 4) != 0 && v13 != avail_out)
            {
              v224 = *(state + 4);
              v225 = &v3->next_out[-v223];
              if (*(state + 6))
              {
                v226 = crc32(v224, v225, v223);
              }

              else
              {
                v226 = adler32(v224, v225, v223);
              }

              *(state + 4) = v226;
              v3->adler = v226;
            }

            v227 = *(state + 2);
            v228 = v227 == 16194 || v227 == 16199;
            if (v228)
            {
              v229 = 256;
            }

            else
            {
              v229 = 0;
            }

            v3->data_type = *(state + 22) + ((*(state + 3) != 0) << 6) + ((v227 == 16191) << 7) + v229;
            if ((v13 == avail_out && avail_in == v14 || v2 == 4) && v17 == 0)
            {
              return -5;
            }

            else
            {
              return v17;
            }
          }
        }

        if (!sub_2999C25D4(v3, next_out, v13 - avail_out))
        {
          LODWORD(v14) = v3->avail_in;
          LODWORD(avail_out) = v3->avail_out;
          goto LABEL_422;
        }

        *(state + 2) = 16210;
        return -4;
      case 17:
        v237 = v2;
        v2 = v13;
        v13 = avail_out;
        v61 = *(state + 32);
        v69 = *(state + 35);
        if (v69 >= v61)
        {
          goto LABEL_120;
        }

        goto LABEL_114;
      case 18:
        v37 = *(state + 35);
        goto LABEL_128;
      case 19:
        goto LABEL_164;
      case 20:
        goto LABEL_165;
      case 21:
        v38 = *(state + 25);
        if (v38)
        {
          goto LABEL_45;
        }

        goto LABEL_188;
      case 22:
        goto LABEL_192;
      case 23:
        v24 = *(state + 25);
        if (!v24)
        {
          goto LABEL_216;
        }

        goto LABEL_208;
      case 24:
        goto LABEL_217;
      case 25:
        if (!avail_out)
        {
          goto LABEL_411;
        }

        *next_out++ = *(state + 23);
        avail_out = (avail_out - 1);
        goto LABEL_233;
      case 26:
        v25 = *(state + 4);
        if (!v25)
        {
          goto LABEL_370;
        }

        if (v12 > 0x1F)
        {
          goto LABEL_30;
        }

        v19 = avail_out;
        avail_out = v12;
        while (v14)
        {
          v26 = *next_in++;
          v14 = (v14 - 1);
          v10 += v26 << avail_out;
          v27 = avail_out + 8;
          v62 = avail_out >= 0x18;
          avail_out += 8;
          if (v62)
          {
            v12 = v27;
            avail_out = v19;
LABEL_30:
            v28 = (v13 - avail_out);
            v3->total_out += v28;
            *(state + 5) += v28;
            v29 = v25 & 4;
            if ((v25 & 4) != 0 && v13 != avail_out)
            {
              v30 = v12;
              v31 = *(state + 4);
              v32 = &next_out[-v28];
              if (*(state + 6))
              {
                v33 = crc32(v31, v32, v28);
              }

              else
              {
                v33 = adler32(v31, v32, v28);
              }

              *(state + 4) = v33;
              v3->adler = v33;
              v25 = *(state + 4);
              v29 = v25 & 4;
              v11 = state + 152;
              v12 = v30;
            }

            if (v29)
            {
              v213 = bswap32(v10);
              v214 = *(state + 6) ? v10 : v213;
              if (v214 != *(state + 4))
              {
                v3->msg = "incorrect data check";
                *(state + 2) = 16209;
                v13 = avail_out;
                goto LABEL_395;
              }
            }

            v10 = 0;
            v12 = 0;
            v13 = avail_out;
LABEL_370:
            *(state + 2) = 16207;
LABEL_371:
            if (v25 && *(state + 6))
            {
              if (v12 <= 0x1F)
              {
                v19 = avail_out;
                avail_out = v12;
                do
                {
                  if (!v14)
                  {
                    goto LABEL_400;
                  }

                  v215 = *next_in++;
                  v14 = (v14 - 1);
                  v10 += v215 << avail_out;
                  v216 = avail_out + 8;
                  v62 = avail_out >= 0x18;
                  avail_out += 8;
                }

                while (!v62);
                v12 = v216;
                avail_out = v19;
              }

              if ((v25 & 4) != 0 && v10 != *(state + 10))
              {
                v45 = "incorrect length check";
                goto LABEL_393;
              }

              v10 = 0;
              LODWORD(v12) = 0;
            }

            *(state + 2) = 16208;
            v17 = 1;
            goto LABEL_412;
          }
        }

LABEL_400:
        LODWORD(v12) = avail_out;
        v17 = v244;
        LODWORD(avail_out) = v19;
        goto LABEL_412;
      case 27:
        v25 = *(state + 4);
        goto LABEL_371;
      case 28:
        goto LABEL_412;
      case 29:
        goto LABEL_410;
      case 30:
        return -4;
      default:
        return -2;
    }
  }
}

uint64_t sub_2999C1F38(int a1, uint64_t a2, unsigned int a3, char **a4, unsigned int *a5, _WORD *a6, unsigned int a7)
{
  v83 = *MEMORY[0x29EDCA608];
  v7 = 0uLL;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  if (a3 >= 2)
  {
    v8 = 0;
    v10 = (a2 + 2);
    do
    {
      ++v78.i16[*(v10 - 1)];
      v11 = *v10;
      v10 += 2;
      ++v80.i16[v11];
      v12 = v8 + 4;
      v8 += 2;
    }

    while (v12 <= a3);
    v7 = vaddq_s16(v80, v78);
    v9 = vaddq_s16(v81, v79);
  }

  else
  {
    LODWORD(v8) = 0;
    v9 = 0uLL;
  }

  v82[0] = v7;
  v82[1] = v9;
  if (v8 < a3)
  {
    v13 = *(a2 + 2 * v8);
    ++*(v82 + v13);
  }

  v14 = 15;
  while (!*(v82 + v14))
  {
    if (!--v14)
    {
      v15 = *a4;
      *a4 += 4;
      *v15 = 16385;
      *(v15 + 1) = 0;
      v16 = *a4;
      *a4 += 4;
      *v16 = 16385;
      *(v16 + 1) = 0;
      v17 = 1;
LABEL_12:
      v18 = 0;
      *a5 = v17;
      return v18;
    }
  }

  if (*a5 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = *a5;
  }

  if (v14 < 2)
  {
    LODWORD(v20) = 1;
  }

  else
  {
    v20 = 1;
    while (!*(v82 + v20))
    {
      if (v14 == ++v20)
      {
        LODWORD(v20) = v14;
        break;
      }
    }
  }

  if (v19 <= v20)
  {
    v17 = v20;
  }

  else
  {
    v17 = v19;
  }

  v21 = 1;
  for (i = 2; i != 32; i += 2)
  {
    v21 = 2 * v21 - *(v82 + i);
    if (v21 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!v21 || (v18 = 0xFFFFFFFFLL, a1) && v14 == 1)
  {
    v23 = 0;
    v24 = 0;
    v78.i16[1] = 0;
    do
    {
      v24 += *(v82 + v23 * 2 + 2);
      v78.i16[v23 + 2] = v24;
      ++v23;
    }

    while (v23 != 14);
    if (a3 >= 2)
    {
      v27 = 0;
      do
      {
        v28 = *(a2 + 2 * v27);
        if (*(a2 + 2 * v27))
        {
          v29 = v78.u16[v28];
          v78.i16[v28] = v29 + 1;
          a6[v29] = v27;
        }

        v30 = *(a2 + 2 * v27 + 2);
        if (*(a2 + 2 * v27 + 2))
        {
          v31 = v78.u16[v30];
          v78.i16[v30] = v31 + 1;
          a6[v31] = v27 | 1;
        }

        v25 = v27 + 2;
        v32 = v27 + 4;
        v27 += 2;
      }

      while (v32 <= a3);
    }

    else
    {
      v25 = 0;
    }

    if (v25 < a3 && *(a2 + 2 * v25))
    {
      a6[v78.u16[*(a2 + 2 * v25)]] = v25;
    }

    if (a1 == 1)
    {
      v34 = 257;
      v77 = &unk_2999CBFA4;
      v35 = &unk_2999CBF66;
    }

    else
    {
      if (!a1)
      {
        v65 = a5;
        LOBYTE(v18) = 0;
        v33 = 1 << v17;
        v34 = 20;
        v76 = a6;
        v77 = a6;
LABEL_53:
        v66 = v18;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v69 = v33;
        v39 = v33 - 1;
        v40 = *a4;
        v41 = -1;
        v42 = v17;
        v73 = a2;
        v74 = a6;
        v71 = v34;
        v72 = v17;
        v70 = v39;
LABEL_54:
        v43 = v42;
        v75 = v41;
        while (1)
        {
          v44 = v20 - v36;
          v45 = a6[v38];
          if (v45 + 1 < v34)
          {
            break;
          }

          v47 = v45 >= v34;
          v45 -= v34;
          if (!v47)
          {
            LOWORD(v45) = 0;
            LOBYTE(v46) = 96;
            goto LABEL_59;
          }

          v46 = v77[v45];
          LOWORD(v45) = v76[v45];
          v48 = (v46 & (v46 << 27 >> 31) & 0xF) + v20 - v36;
LABEL_61:
          v49 = &v40[4 * (v37 >> v36)];
          *v49 = v48;
          v49[1] = v46;
          *(v49 + 1) = v45;
          v50 = 1 << (v20 - 1);
          do
          {
            v51 = v50;
            v50 >>= 1;
          }

          while ((v51 & v37) != 0);
          if (v51)
          {
            v37 = ((v51 - 1) & v37) + v51;
          }

          else
          {
            v37 = 0;
          }

          ++v38;
          v52 = *(v82 + v20) - 1;
          *(v82 + v20) = v52;
          if (!v52)
          {
            if (v20 == v14)
            {
              if (v37)
              {
                v64 = &v40[4 * v37];
                *v64 = v44;
                v64[1] = 64;
                *(v64 + 1) = 0;
              }

              *a4 += 4 * v69;
              a5 = v65;
              goto LABEL_12;
            }

            v53 = *(a2 + 2 * a6[v38]);
            if (v20 < v53)
            {
              do
              {
                if (v44 >= v43)
                {
                  break;
                }

                memcpy(&v40[4 * (1 << v44)], v40, 4 << v44);
                ++v44;
              }

              while (v53 - v36 != v44);
              LODWORD(v20) = v53;
              a2 = v73;
              a6 = v74;
              v34 = v71;
              v17 = v72;
              v39 = v70;
              v41 = v75;
            }
          }

          if (v20 > v17 && (v37 & v39) != v41)
          {
            if (!v36)
            {
              v36 = v17;
            }

            v42 = v20 - v36;
            v54 = 1 << (v20 - v36);
            if (v20 >= v14)
            {
              v57 = v66;
              v56 = a7;
              v58 = v69;
            }

            else
            {
              v42 = v14 - v36;
              v55 = v20;
              v57 = v66;
              v56 = a7;
              v58 = v69;
              while (1)
              {
                v59 = v54 - *(v82 + v55);
                if (v59 < 1)
                {
                  break;
                }

                v54 = 2 * v59;
                if (++v55 >= v14)
                {
                  goto LABEL_83;
                }
              }

              v42 = v55 - v36;
LABEL_83:
              v54 = 1 << v42;
            }

            v60 = v54 + v58;
            if (v60 > v56)
            {
              v61 = v57;
            }

            else
            {
              v61 = 0;
            }

            if ((v61 & 1) == 0)
            {
              v69 = v60;
              v40 += 4 * (1 << v43);
              v62 = *a4;
              v63 = &(*a4)[4 * (v37 & v39)];
              v63[1] = v42;
              *v63 = v17;
              *(v63 + 1) = (v40 - v62) >> 2;
              v41 = v37 & v39;
              goto LABEL_54;
            }

            return 1;
          }
        }

        LOBYTE(v46) = 0;
LABEL_59:
        v48 = v20 - v36;
        goto LABEL_61;
      }

      v34 = 0;
      v77 = &unk_2999CC022;
      v35 = &unk_2999CBFE2;
    }

    v76 = v35;
    v18 = 1;
    v33 = 1 << v17;
    if (1 << v17 > a7)
    {
      return v18;
    }

    v65 = a5;
    goto LABEL_53;
  }

  return v18;
}

uint64_t sub_2999C2488(uint64_t a1)
{
  v2 = *(a1 + 56);
  *(v2 + 120) = 0x70000000ALL;
  v3 = (v2 + 120);
  v4 = v2 + 1368;
  *(v2 + 144) = v2 + 1368;
  *(v2 + 104) = v2 + 1368;
  if (sub_2999C1F38(1, v2 + 152, *(v2 + 132), (v2 + 144), (v2 + 120), (v2 + 792), 0x5A4u))
  {
    v5 = "invalid literal/lengths set";
LABEL_3:
    *(a1 + 48) = v5;
    *(v2 + 8) = 16209;
    return 1;
  }

  else
  {
    v5 = "invalid distances set";
    while (1)
    {
      v7 = *(v2 + 144);
      *(v2 + 112) = v7;
      result = sub_2999C1F38(2, v2 + 152 + 2 * *(v2 + 132), *(v2 + 136), (v2 + 144), (v2 + 124), (v2 + 792), (v2 + 7144 - v7) >> 2);
      if (!result)
      {
        break;
      }

      if (*v3 <= 9 && *(v2 + 124) < 7u)
      {
        goto LABEL_3;
      }

      *(v2 + 120) = 0x600000009;
      *(v2 + 144) = v4;
      *(v2 + 104) = v4;
      if (sub_2999C1F38(1, v2 + 152, *(v2 + 132), (v2 + 144), v3, (v2 + 792), 0x5A4u))
      {
        v5 = "invalid literal/lengths set";
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_2999C25D4(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = a1[7];
  v7 = *(v6 + 72);
  if (!v7)
  {
    v8 = a1[8];
    v7 = v8 == sub_2999C9534 ? malloc_type_malloc(1 << *(v6 + 56), 0x100004077774924uLL) : (v8)(a1[10], (1 << *(v6 + 56)), 1);
    *(v6 + 72) = v7;
    if (!v7)
    {
      return 1;
    }
  }

  v9 = *(v6 + 60);
  if (!v9)
  {
    v9 = 1 << *(v6 + 56);
    *(v6 + 64) = 0;
    *(v6 + 60) = v9;
  }

  if (v9 <= a3)
  {
    memcpy(v7, (a2 - v9), v9);
    result = 0;
    v15 = *(v6 + 60);
    *(v6 + 68) = 0;
    goto LABEL_15;
  }

  v10 = *(v6 + 68);
  v11 = v9 - v10;
  if (v9 - v10 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  memcpy(&v7[v10], (a2 - a3), v12);
  if (v11 < a3)
  {
    v13 = a3 - v12;
    memcpy(*(v6 + 72), (a2 - v13), v13);
    result = 0;
    v15 = *(v6 + 60);
    *(v6 + 68) = v13;
LABEL_15:
    *(v6 + 64) = v15;
    return result;
  }

  result = 0;
  v16 = *(v6 + 64);
  v17 = *(v6 + 68) + v12;
  v18 = *(v6 + 60);
  if (v17 == v18)
  {
    v17 = 0;
  }

  *(v6 + 68) = v17;
  if (v16 < v18)
  {
    result = 0;
    v15 = v16 + v12;
    goto LABEL_15;
  }

  return result;
}

uLong adler32_z(uLong adler, const Bytef *buf, z_size_t len)
{
  v5 = WORD1(adler);
  adler = adler;
  if (len == 1)
  {
    v6 = adler + *buf;
    if (v6 > 0xFFF0)
    {
      v6 -= 65521;
    }

    if (v6 + v5 <= 0xFFF0)
    {
      v7 = (v6 + v5) << 16;
    }

    else
    {
      v7 = ((v6 + v5) << 16) - 4293984256u;
    }

    return v7 | v6;
  }

  else if (buf)
  {
    if (len >= 0x10)
    {
      if ((buf & 0xF) != 0 || len >> 31)
      {
        v11 = buf + 1;
        do
        {
          --len;
          v12 = *buf++;
          v13 = adler + v12;
          if (v13 <= 0xFFF0)
          {
            adler = v13;
          }

          else
          {
            adler = v13 - 65521;
          }

          v5 = (v13 + v5) % 0xFFF1;
          v14 = (v11++ & 0xF) == 0;
        }

        while (!v14 || len >> 31);
      }

      return sub_2999C2880(adler, v5, buf, len);
    }

    else
    {
      for (; len; --len)
      {
        v9 = *buf++;
        adler += v9;
        v5 += adler;
      }

      v10 = adler - 65521;
      if (adler <= 0xFFF0)
      {
        v10 = adler;
      }

      return v10 | ((v5 % 0xFFF1) << 16);
    }
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2999C2880(uint64_t a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + (a2 << 32);
  if (a4 >= 5552)
  {
    v5 = a4 - 5552;
    do
    {
      v6 = *a3;
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_2999C29F0[2]);
      v6.i16[0] = vaddlvq_u8(*a3);
      v7.i32[0] = vaddlvq_u16(v7);
      ++a3;
      v8 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v6.i8, *v7.i8));
      v9 = 173;
      do
      {
        v10 = *a3;
        v11 = a3[1];
        v12 = vshld_n_s64(v8, 0x25uLL);
        v13 = (v8 + *&v12);
        v10.i16[0] = vaddlvq_u8(*a3);
        v12.i16[0] = vaddlvq_u8(v11);
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_2999C29F0), *v11.i8, 0x90A0B0C0D0E0F10), v11, *&qword_2999C29F0[2]);
        v14.i32[0] = vaddlvq_u16(v14);
        a3 += 2;
        v8 = vadd_s32(v13, vzip1_s32(*&vaddl_u16(*v10.i8, v12), *v14.i8));
        v15 = __OFSUB__(v9--, 1);
      }

      while (!((v9 < 0) ^ v15 | (v9 == 0)));
      v16 = vshrq_n_u64(vmull_lane_u32(v8, 0x800780710000FFF1, 1), 0x2FuLL);
      v16.i32[1] = v16.i32[2];
      v4 = vmls_lane_s32(v8, *v16.i8, 0x800780710000FFF1, 0);
      v15 = __OFSUB__(v5, 5552);
      v5 -= 5552;
    }

    while (v5 < 0 == v15);
    a4 = v5 + 5552;
  }

  v15 = __OFSUB__(a4, 32);
  for (i = a4 - 32; i < 0 == v15; i -= 32)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = vshld_n_s64(v4, 0x25uLL);
    v21 = (v4 + *&v20);
    v18.i16[0] = vaddlvq_u8(*a3);
    v20.i16[0] = vaddlvq_u8(v19);
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_2999C29F0), *v19.i8, 0x90A0B0C0D0E0F10), v19, *&qword_2999C29F0[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_2999C29F0[2]);
    v23.i16[0] = vaddlvq_u8(*a3);
    v24.i32[0] = vaddlvq_u16(v24);
    ++a3;
    v4 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v23.i8, *v24.i8));
  }

  for (j = i & 0xF; j; v4 += v26 + vshld_n_s64(v4 + v26, 0x20uLL))
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    --j;
  }

  v27 = vshrq_n_u64(vmull_lane_u32(v4, 0x800780710000FFF1, 1), 0x2FuLL);
  v27.i32[1] = v27.i32[2];
  v28 = vmls_lane_s32(v4, *v27.i8, 0x800780710000FFF1, 0);
  return (v28.i32[0] + (v28.i32[1] << 16));
}

int deflateReset(z_streamp strm)
{
  v2 = deflateResetKeep(strm);
  if (!v2)
  {
    state = strm->state;
    *(state + 13) = 2 * *(state + 20);
    v4 = *(state + 15);
    v5 = 2 * (*(state + 33) - 1);
    *&v4[v5] = 0;
    bzero(v4, v5);
    v6 = &qword_2A1FEDD58[2 * *(state + 49)];
    v7 = v6[2];
    *(state + 51) = *v6;
    *(state + 52) = v7;
    v8 = v6[1];
    *(state + 47) = v6[3];
    *(state + 48) = v8;
    *(state + 19) = 0;
    *(state + 1483) = 0;
    *(state + 180) = 0x200000000;
    *(state + 40) = 2;
    *(state + 21) = 0;
    *(state + 32) = 0;
  }

  return v2;
}

int deflateInit2_(z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size)
{
  if (!version)
  {
    return -6;
  }

  result = -6;
  if (stream_size == 112 && *version == 49)
  {
    if (!strm)
    {
      return -2;
    }

    strm->msg = 0;
    zalloc = strm->zalloc;
    if (!zalloc)
    {
      zalloc = sub_2999C9534;
      strm->zalloc = sub_2999C9534;
      strm->opaque = 0;
    }

    if (!strm->zfree)
    {
      strm->zfree = sub_2999C38A4;
    }

    v13 = level == -1 ? 6 : level;
    if (windowBits < 0)
    {
      v14 = 0;
      windowBits = -windowBits;
      v15 = 1;
    }

    else if (windowBits < 0x10)
    {
      v15 = 0;
      v14 = 1;
    }

    else
    {
      v14 = 2;
      v15 = 1;
      windowBits -= 16;
    }

    result = -2;
    if (strategy <= 4 && v13 <= 9 && method == 8 && (memLevel - 10) >= 0xFFFFFFF7 && (windowBits - 16) >= 0xFFFFFFF8)
    {
      if (windowBits != 8)
      {
        v15 = 0;
      }

      if ((v15 & 1) == 0)
      {
        if (windowBits == 8)
        {
          v16 = 9;
        }

        else
        {
          v16 = windowBits;
        }

        if (zalloc == sub_2999C9534)
        {
          v17 = malloc_type_malloc(0x1740uLL, 0x1070040A8B75D6AuLL);
        }

        else
        {
          v17 = (zalloc)(strm->opaque, 1, 5952);
        }

        v18 = v17;
        if (v17)
        {
          strm->state = v17;
          *v17 = strm;
          *(v17 + 2) = 42;
          *(v17 + 12) = v14;
          *(v17 + 7) = 0;
          *(v17 + 20) = 1 << v16;
          *(v17 + 21) = v16;
          *(v17 + 22) = (1 << v16) - 1;
          *(v17 + 33) = 128 << memLevel;
          *(v17 + 34) = memLevel + 7;
          *(v17 + 35) = (128 << memLevel) - 1;
          *(v17 + 36) = (memLevel + 9) / 3u;
          v19 = strm->zalloc;
          if (v19 == sub_2999C9534)
          {
            v20 = malloc_type_malloc((2 << v16), 0x100004077774924uLL);
          }

          else
          {
            v20 = (v19)(strm->opaque);
          }

          *(v18 + 12) = v20;
          v21 = strm->zalloc;
          if (v21 == sub_2999C9534)
          {
            v22 = malloc_type_malloc(2 * *(v18 + 20), 0x1000040BDFB0063uLL);
          }

          else
          {
            v22 = (v21)(strm->opaque, *(v18 + 20), 2);
          }

          *(v18 + 14) = v22;
          v23 = strm->zalloc;
          if (v23 == sub_2999C9534)
          {
            v24 = malloc_type_malloc(2 * *(v18 + 33), 0x1000040BDFB0063uLL);
          }

          else
          {
            v24 = (v23)(strm->opaque, *(v18 + 33), 2);
          }

          *(v18 + 15) = v24;
          *(v18 + 743) = 0;
          *(v18 + 1474) = 64 << memLevel;
          v25 = strm->zalloc;
          if (v25 == sub_2999C9534)
          {
            v26 = malloc_type_malloc((256 << memLevel), 0x5F9A7EAuLL);
          }

          else
          {
            v26 = (v25)(strm->opaque);
          }

          v27 = *(v18 + 1474);
          *(v18 + 2) = v26;
          *(v18 + 3) = 4 * v27;
          if (*(v18 + 12) && *(v18 + 14) && *(v18 + 15) && v26)
          {
            *(v18 + 736) = &v26[v27];
            *(v18 + 1476) = 3 * v27 - 3;
            *(v18 + 49) = v13;
            *(v18 + 50) = strategy;
            *(v18 + 72) = 8;

            return deflateReset(strm);
          }

          *(v18 + 2) = 666;
          strm->msg = "insufficient memory";
          deflateEnd(strm);
        }

        return -4;
      }
    }
  }

  return result;
}

int deflateResetKeep(z_streamp a1)
{
  if (sub_2999C05A0(a1))
  {
    return -2;
  }

  a1->total_in = 0;
  a1->total_out = 0;
  a1->msg = 0;
  a1->data_type = 2;
  state = a1->state;
  *(state + 4) = *(state + 2);
  *(state + 5) = 0;
  v4 = *(state + 12);
  if (v4 < 0)
  {
    v4 = -v4;
    *(state + 12) = v4;
  }

  v5 = v4 == 2;
  if (v4 == 2)
  {
    v6 = 57;
  }

  else
  {
    v6 = 42;
  }

  *(state + 2) = v6;
  if (v5)
  {
    v7 = crc32(0, 0, 0);
  }

  else
  {
    v7 = adler32(0, 0, 0);
  }

  a1->adler = v7;
  *(state + 19) = -2;
  sub_2999C2EFC(state);
  return 0;
}

double sub_2999C2EFC(uint64_t a1)
{
  *(a1 + 2904) = a1 + 212;
  *(a1 + 2920) = &off_29F27B290;
  *(a1 + 2928) = a1 + 2504;
  *(a1 + 2944) = &off_29F27B2B0;
  *(a1 + 2952) = a1 + 2748;
  *(a1 + 2968) = &unk_29F27B2D0;
  *(a1 + 5936) = 0;
  *(a1 + 5940) = 0;
  return sub_2999C2F44(a1);
}

double sub_2999C2F44(uint64_t a1)
{
  v1 = xmmword_2999CC070;
  v2 = xmmword_2999CC080;
  v3 = xmmword_2999CC090;
  v4 = xmmword_2999CC0A0;
  v5 = (a1 + 240);
  v6 = 288;
  v7 = vdupq_n_s64(0x11EuLL);
  v8 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v4)), *v1.i8), *v1.i8).u8[0])
    {
      *(v5 - 14) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v4)), *&v1), *&v1).i8[1])
    {
      *(v5 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v3))), *&v1).i8[2])
    {
      *(v5 - 10) = 0;
      *(v5 - 8) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v2)), *&v1)).i32[1])
    {
      *(v5 - 6) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v2)), *&v1)).i8[5])
    {
      *(v5 - 4) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v1)))).i8[6])
    {
      *(v5 - 2) = 0;
      *v5 = 0;
    }

    v2 = vaddq_s64(v2, v8);
    v3 = vaddq_s64(v3, v8);
    v4 = vaddq_s64(v4, v8);
    v5 += 16;
    v1 = vaddq_s64(v1, v8);
    v6 -= 8;
  }

  while (v6);
  v9 = xmmword_2999CC070;
  v10 = xmmword_2999CC080;
  v11 = xmmword_2999CC090;
  v12 = xmmword_2999CC0A0;
  v13 = (a1 + 2532);
  v14 = 32;
  v15 = vdupq_n_s64(0x1EuLL);
  v16 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v15, v12)), *v9.i8), *v9.i8).u8[0])
    {
      *(v13 - 14) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v12)), *&v9), *&v9).i8[1])
    {
      *(v13 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v11))), *&v9).i8[2])
    {
      *(v13 - 10) = 0;
      *(v13 - 8) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10)), *&v9)).i32[1])
    {
      *(v13 - 6) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10)), *&v9)).i8[5])
    {
      *(v13 - 4) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)))).i8[6])
    {
      *(v13 - 2) = 0;
      *v13 = 0;
    }

    v10 = vaddq_s64(v10, v16);
    v11 = vaddq_s64(v11, v16);
    v12 = vaddq_s64(v12, v16);
    v13 += 16;
    v9 = vaddq_s64(v9, v16);
    v14 -= 8;
  }

  while (v14);
  v17 = xmmword_2999CC090;
  v18 = xmmword_2999CC0A0;
  v19 = (a1 + 2760);
  v20 = 20;
  v21 = vdupq_n_s64(0x13uLL);
  v22 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v21, v18)), *v17.i8).u8[0])
    {
      *(v19 - 6) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v18)), *&v17).i8[2])
    {
      *(v19 - 4) = 0;
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v17))).i32[1])
    {
      *(v19 - 2) = 0;
      *v19 = 0;
    }

    v17 = vaddq_s64(v17, v22);
    v18 = vaddq_s64(v18, v22);
    v19 += 8;
    v20 -= 4;
  }

  while (v20);
  *(a1 + 1236) = 1;
  *(a1 + 5900) = 0;
  result = 0.0;
  *(a1 + 5912) = 0u;
  *(a1 + 5928) = 0;
  return result;
}

uint64_t sub_2999C32A4(uint64_t result, int a2)
{
  v2 = *result;
  v3 = *(result + 24);
  v4 = &v3[*(result + 32)];
  v62 = *result + *(result + 8);
  v5 = v62 - 25;
  v6 = (v4 - 323);
  v7 = *(result + 56);
  v8 = v4 - a2;
  v9 = *(v7 + 60);
  v10 = *(v7 + 68);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v7 + 64) >= v9;
  }

  if (v11)
  {
    v10 = *(v7 + 60);
  }

  v12 = ~(-1 << *(v7 + 120));
  v13 = ~(-1 << *(v7 + 124));
  v14 = *(v7 + 72);
  v15 = *(v7 + 80) & ~(-1 << *(v7 + 88)) | (*v2 << *(v7 + 88));
  v16 = (v2 + (((*(v7 + 88) & 0x3Fu) >> 3) ^ 7));
  v17 = *(v7 + 88) & 7 | 0x38;
  v18 = *(v7 + 104);
  v19 = *(v7 + 112);
  v61 = "invalid distance too far back";
  while (2)
  {
    v20 = *(v18 + 4 * (v15 & v12));
    v21 = (*v16 << v17) | v15;
    v16 = (v16 + ((63 - v17) >> 3));
    v15 = v21 >> v20;
    v17 = (v17 | 0x38) - v20;
LABEL_8:
    v22 = HIWORD(v20);
    if ((v20 & 0xFF00) == 0)
    {
      *v3 = BYTE2(v20);
      v20 = *(v18 + 4 * (v15 & v12));
      v22 = HIWORD(v20);
      v23 = v15 >> v20;
      v17 -= v20;
      if ((v20 & 0xFF00) == 0)
      {
        v3[1] = BYTE2(v20);
        v3 += 2;
        v20 = *(v18 + 4 * (v23 & v12));
        LODWORD(v21) = v23;
        goto LABEL_11;
      }

      LODWORD(v21) = v15;
      ++v3;
      v15 >>= v20;
    }

    do
    {
      if ((v20 & 0x1000) != 0)
      {
        v24 = *(v19 + 4 * (v15 & v13));
        if (v17 <= 0x1B)
        {
          v15 |= *v16 << v17;
          v16 = (v16 + ((63 - v17) >> 3));
          v17 |= 0x38u;
        }

        v25 = v15 >> v24;
        v26 = HIWORD(v24);
        v27 = v24 >> 8;
        LOWORD(v28) = v24;
        v17 -= v24;
        if ((v24 & 0x1000) == 0)
        {
          while ((v28 & 0x4000) == 0)
          {
            LODWORD(v15) = v25;
            v28 = *(v19 + 4 * ((v25 & ~(-1 << v27)) + v26));
            v25 >>= v28;
            v17 -= v28;
            v26 = HIWORD(v28);
            v27 = v28 >> 8;
            if ((v28 & 0x1000) != 0)
            {
              goto LABEL_18;
            }
          }

          v61 = "invalid literal/length/distance code";
          LODWORD(v15) = v25;
          goto LABEL_91;
        }

LABEL_18:
        if (v17 <= 9)
        {
          v25 |= *v16 << v17;
          v16 = (v16 + ((63 - v17) >> 3));
          v17 |= 0x38u;
        }

        v29 = (v21 << -v20 >> 1 >> (BYTE1(v20) & 0xF ^ 0x1F)) + v22;
        v30 = (v15 << -v28 >> 1 >> (v27 & 0xF ^ 0x1F)) + v26;
        v21 = (*v16 << v17) | v25;
        v16 = (v16 + ((63 - v17) >> 3));
        v20 = *(v18 + 4 * (v25 & v12));
        v31 = v17 | 0x38;
        v15 = v21 >> v20;
        v17 = (v17 | 0x38) - v20;
        v32 = v3 - v8;
        if (v3 - v8 >= v30)
        {
LABEL_41:
          if (v30 + 16 > v32)
          {
            for (; v29; --v29)
            {
              *v3 = v3[-v30];
              ++v3;
            }

            goto LABEL_48;
          }

          v44 = &v3[v29];
          if (v30 >= v29 + 15)
          {
            v45 = -v29 & 0xF;
            v46 = *(v3 - 1);
            *&v3[-v45] = *&v3[-v45 - v30];
            if (v29 >= 0x11)
            {
              v47 = -v30;
              v48 = &v3[-v45 + 16];
              do
              {
                *v48 = *&v48[v47];
                v48 += 16;
                v29 -= 16;
              }

              while (v29 > 0x10);
            }

            *(v3 - 1) = v46;
LABEL_47:
            v3 = v44;
            goto LABEL_48;
          }

          if (v30 <= 0xF)
          {
            v63 = 0uLL;
            v50 = vqtbl1q_s8(*(v3 - 1), xmmword_2999CA3E0[v30]);
            v63 = v50;
            if (v29 <= 0xF)
            {
              if (v29)
              {
                *v3++ = v50.i8[0];
                v51 = &v63.i8[1];
              }

              else
              {
                v51 = &v63;
              }

LABEL_72:
              if ((v29 & 2) != 0)
              {
                v53 = v51->i16[0];
                v51 = (v51 + 2);
                *v3 = v53;
                v3 += 2;
              }

              if ((v29 & 4) != 0)
              {
                v54 = v51->i32[0];
                v51 = (v51 + 4);
                *v3 = v54;
                v3 += 4;
              }

              if (v29 >= 8)
              {
                *v3 = v51->i64[0];
              }

              goto LABEL_47;
            }

            *v3 = v50;
            v3 += 16;
            v29 -= 16;
            LODWORD(v30) = byte_2999CA4E0[v30];
          }

          if (v29 >= 0x10)
          {
            do
            {
              *v3 = *&v3[-v30];
              v3 += 16;
              v29 -= 16;
            }

            while (v29 > 0xF);
          }

          v51 = &v3[-v30];
          if (v29)
          {
            v52 = v51->i8[0];
            v51 = (v51 + 1);
            *v3++ = v52;
          }

          goto LABEL_72;
        }

        v33 = v3 - v8 - v30 + v10;
        if ((v33 & 0x80000000) != 0)
        {
          v33 += v9;
          if (v33 < v10)
          {
            goto LABEL_91;
          }

          v34 = v33 + v29;
        }

        else
        {
          v34 = v33 + v29;
          if (v33 + v29 > v10)
          {
            goto LABEL_39;
          }
        }

        if (v32 < 0x10 || v33 < 0xF || v34 > v9)
        {
LABEL_39:
          while (1)
          {
            *v3++ = *(v14 + v33);
            if (!--v29)
            {
              break;
            }

            if (++v33 == v10)
            {
              goto LABEL_41;
            }

            if (v33 == v9)
            {
              v33 = 0;
            }
          }
        }

        else
        {
          v37 = -v29 & 0xF;
          v38 = *(v3 - 1);
          *&v3[-v37] = *(v14 + v33 - v37);
          if (v29 >= 0x11)
          {
            v39 = v33;
            v40 = &v3[-v37 + 16];
            v41 = (v14 + 16 + v39 - v37);
            for (i = v29; i > 0x10; i -= 16)
            {
              v43 = *v41++;
              *v40 = v43;
              v40 += 16;
            }
          }

          *(v3 - 1) = v38;
          v3 += v29;
        }

LABEL_48:
        if (v16 > v5 || v3 > v6)
        {
          v17 = v31;
          LODWORD(v15) = v21;
          goto LABEL_83;
        }

        goto LABEL_8;
      }

      if ((v20 & 0x4000) != 0)
      {
        if ((v20 & 0x2000) != 0)
        {
          v60 = 16191;
          goto LABEL_92;
        }

        v61 = "invalid literal/length/distance code";
LABEL_91:
        *(result + 48) = v61;
        v60 = 16209;
LABEL_92:
        *(v7 + 8) = v60;
        goto LABEL_83;
      }

      v20 = *(v18 + 4 * ((v15 & ~(-1 << SBYTE1(v20))) + v22));
      v23 = v15;
      LODWORD(v21) = v15;
LABEL_11:
      v15 = v23 >> v20;
      v22 = HIWORD(v20);
      v17 -= v20;
    }

    while ((v20 & 0xFF00) != 0);
    *v3++ = BYTE2(v20);
    if (v16 <= v5 && v3 <= v6)
    {
      continue;
    }

    break;
  }

LABEL_83:
  v56 = v17 >> 3;
  v57 = (v16 - v56);
  v58 = v2 > (v16 - v56);
  v59 = (v17 & 7 | (8 * (v2 + ~v16 + v56))) + 8;
  if (!v58)
  {
    v59 = v17 & 7;
  }

  *(v7 + 88) = v59;
  *(v7 + 80) = v15 & ~(-1 << v59);
  if (!v58)
  {
    v2 = v57;
  }

  *result = v2;
  *(result + 24) = v3;
  *(result + 8) = v62 - v2;
  *(result + 32) = v4 - v3;
  return result;
}

int inflateEnd(z_streamp strm)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  if (*(state + 9))
  {
    (strm->zfree)(strm->opaque, *(state + 9));
    state = strm->state;
  }

  (strm->zfree)(strm->opaque, state);
  result = 0;
  strm->state = 0;
  return result;
}

uint64_t sub_2999C38AC(uint64_t a1)
{
  v3 = *(a1 + 116);
  if (v3)
  {
    v4 = v3 == -5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v1;
  v13 = v2;
  if (*(a1 + 80))
  {
    return 0;
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 128);
    do
    {
      v10 = *v9++;
      *v8++ = v10;
      --v7;
    }

    while (v7);
    v7 = *(a1 + 136);
  }

  v11 = 0;
  result = sub_2999C3DFC(a1, *(a1 + 48) + v7, *(a1 + 40) - v7, &v11);
  if (result != -1)
  {
    result = 0;
    *(a1 + 136) += v11;
    *(a1 + 128) = *(a1 + 48);
  }

  return result;
}

uint64_t sub_2999C3968(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 2);
    if (*(a2 + 2))
    {
      v6 = 7;
    }

    else
    {
      v6 = 138;
    }

    if (*(a2 + 2))
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    v8 = result + 2748;
    v9 = -1;
    do
    {
      ++v3;
      v10 = *(a2 + 4 * v3 + 2);
      v11 = v4 + 1;
      if (v4 + 1 >= v6 || v5 != v10)
      {
        if (v11 >= v7)
        {
          v22 = *(result + 5940);
          if (v5)
          {
            if (v5 != v9)
            {
              v23 = (v8 + 4 * v5);
              v24 = v23[1];
              v25 = *v23;
              v26 = *(result + 5936);
              v27 = v26 | (v25 << v22);
              *(result + 5936) = v26 | (v25 << v22);
              if (v22 <= 16 - v24)
              {
                v22 += v24;
              }

              else
              {
                v28 = *(result + 16);
                v29 = *(result + 40);
                *(result + 40) = v29 + 1;
                *(v28 + v29) = v27;
                LOBYTE(v28) = *(result + 5937);
                v30 = *(result + 16);
                v31 = *(result + 40);
                *(result + 40) = v31 + 1;
                *(v30 + v31) = v28;
                LODWORD(v28) = *(result + 5940);
                *(result + 5936) = v25 >> (16 - v28);
                v22 = v24 + v28 - 16;
              }

              *(result + 5940) = v22;
              v11 = v4;
            }

            v51 = *(result + 2814);
            v52 = *(result + 2812);
            v53 = *(result + 5936) | (v52 << v22);
            if (v22 <= 16 - v51)
            {
              v59 = v22 + v51;
            }

            else
            {
              *(result + 5936) = v53;
              v54 = *(result + 16);
              v55 = *(result + 40);
              *(result + 40) = v55 + 1;
              *(v54 + v55) = v53;
              v56 = *(result + 5937);
              v57 = *(result + 16);
              v58 = *(result + 40);
              *(result + 40) = v58 + 1;
              *(v57 + v58) = v56;
              LODWORD(v57) = *(result + 5940);
              v53 = v52 >> (16 - v57);
              v59 = v51 + v57 - 16;
            }

            *(result + 5940) = v59;
            v60 = v11 + 65533;
            v61 = v53 | (v60 << v59);
            *(result + 5936) = v61;
            if (v59 < 15)
            {
              v69 = v59 + 2;
            }

            else
            {
              v62 = *(result + 16);
              v63 = *(result + 40);
              *(result + 40) = v63 + 1;
              *(v62 + v63) = v61;
              v64 = *(result + 5937);
              v65 = *(result + 16);
              v66 = *(result + 40);
              *(result + 40) = v66 + 1;
              *(v65 + v66) = v64;
              v67 = v60;
              v68 = *(result + 5940);
              *(result + 5936) = v67 >> (16 - v68);
              v69 = v68 - 14;
            }
          }

          else
          {
            v32 = *(result + 5936);
            if (v4 > 9)
            {
              v42 = *(result + 2822);
              v43 = *(result + 2820);
              v44 = v32 | (v43 << v22);
              if (v22 <= 16 - v42)
              {
                v50 = v22 + v42;
              }

              else
              {
                *(result + 5936) = v44;
                v45 = *(result + 16);
                v46 = *(result + 40);
                *(result + 40) = v46 + 1;
                *(v45 + v46) = v44;
                v47 = *(result + 5937);
                v48 = *(result + 16);
                v49 = *(result + 40);
                *(result + 40) = v49 + 1;
                *(v48 + v49) = v47;
                LODWORD(v48) = *(result + 5940);
                v44 = v43 >> (16 - v48);
                v50 = v42 + v48 - 16;
              }

              *(result + 5940) = v50;
              v78 = v4 + 65526;
              v79 = v78 << v50;
              if (v50 < 10)
              {
                *(result + 5936) = v44 | v79;
                v69 = v50 + 7;
              }

              else
              {
                v80 = v44 | v79;
                *(result + 5936) = v80;
                v81 = *(result + 16);
                v82 = *(result + 40);
                *(result + 40) = v82 + 1;
                *(v81 + v82) = v80;
                LOBYTE(v80) = *(result + 5937);
                v83 = *(result + 16);
                v84 = *(result + 40);
                *(result + 40) = v84 + 1;
                *(v83 + v84) = v80;
                v85 = *(result + 5940);
                *(result + 5936) = v78 >> (16 - v85);
                v69 = v85 - 9;
              }
            }

            else
            {
              v33 = *(result + 2818);
              v34 = *(result + 2816);
              v35 = v32 | (v34 << v22);
              if (v22 <= 16 - v33)
              {
                v41 = v22 + v33;
              }

              else
              {
                *(result + 5936) = v35;
                v36 = *(result + 16);
                v37 = *(result + 40);
                *(result + 40) = v37 + 1;
                *(v36 + v37) = v35;
                v38 = *(result + 5937);
                v39 = *(result + 16);
                v40 = *(result + 40);
                *(result + 40) = v40 + 1;
                *(v39 + v40) = v38;
                LODWORD(v39) = *(result + 5940);
                v35 = v34 >> (16 - v39);
                v41 = v33 + v39 - 16;
              }

              *(result + 5940) = v41;
              v70 = v4 + 65534;
              v71 = v70 << v41;
              if (v41 < 14)
              {
                *(result + 5936) = v35 | v71;
                v69 = v41 + 3;
              }

              else
              {
                v72 = v35 | v71;
                *(result + 5936) = v72;
                v73 = *(result + 16);
                v74 = *(result + 40);
                *(result + 40) = v74 + 1;
                *(v73 + v74) = v72;
                LOBYTE(v72) = *(result + 5937);
                v75 = *(result + 16);
                v76 = *(result + 40);
                *(result + 40) = v76 + 1;
                *(v75 + v76) = v72;
                v77 = *(result + 5940);
                *(result + 5936) = v70 >> (16 - v77);
                v69 = v77 - 13;
              }
            }
          }

          *(result + 5940) = v69;
        }

        else
        {
          v12 = (v8 + 4 * v5);
          v13 = *(result + 5940);
          do
          {
            v14 = v12[1];
            v15 = *v12;
            v16 = *(result + 5936);
            v17 = v16 | (v15 << v13);
            *(result + 5936) = v16 | (v15 << v13);
            if (v13 <= 16 - v14)
            {
              v13 += v14;
            }

            else
            {
              v18 = *(result + 16);
              v19 = *(result + 40);
              *(result + 40) = v19 + 1;
              *(v18 + v19) = v17;
              LOBYTE(v18) = *(result + 5937);
              v20 = *(result + 16);
              v21 = *(result + 40);
              *(result + 40) = v21 + 1;
              *(v20 + v21) = v18;
              LODWORD(v18) = *(result + 5940);
              *(result + 5936) = v15 >> (16 - v18);
              v13 = v14 + v18 - 16;
            }

            *(result + 5940) = v13;
            --v11;
          }

          while (v11);
        }

        if (v5 == v10)
        {
          v86 = 3;
        }

        else
        {
          v86 = 4;
        }

        if (v5 == v10)
        {
          v87 = 6;
        }

        else
        {
          v87 = 7;
        }

        if (v10)
        {
          v7 = v86;
        }

        else
        {
          v7 = 3;
        }

        if (v10)
        {
          v6 = v87;
        }

        else
        {
          v6 = 138;
        }

        v11 = 0;
        v9 = v5;
      }

      v5 = v10;
      v4 = v11;
    }

    while (v3 != a3 + 1);
  }

  return result;
}

uint64_t sub_2999C3DFC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v8 = 0;
  *a4 = 0;
  while (1)
  {
    v9 = a3 - v8 >= 0x40000000 ? 0x40000000 : a3 - v8;
    v10 = read(*(a1 + 28), (a2 + v8), v9);
    if (v10 < 1)
    {
      break;
    }

    v8 = *a4 + v10;
    *a4 = v8;
    if (v8 >= a3)
    {
      return 0;
    }
  }

  if (v10 < 0)
  {
    v12 = __error();
    v13 = strerror(*v12);
    v11 = 0xFFFFFFFFLL;
    sub_2999C63DC(a1, -1, v13);
  }

  else
  {
    v11 = 0;
    *(a1 + 80) = 1;
  }

  return v11;
}

uint64_t sub_2999C3EB8(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 160);
  while (1)
  {
    if (!*(a1 + 136))
    {
      result = sub_2999C38AC(a1);
      if (result == -1)
      {
        return result;
      }

      if (!*(a1 + 136))
      {
        break;
      }
    }

    v5 = inflate((a1 + 128), 0);
    v2 = v5;
    if (v5 > -3)
    {
      if (v5 == 2 || v5 == -2)
      {
        v7 = "internal error: inflate stream corrupt";
        v8 = a1;
        v9 = -2;
LABEL_20:
        sub_2999C63DC(v8, v9, v7);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v5 == -4)
      {
        v7 = "out of memory";
        v8 = a1;
        v9 = -4;
        goto LABEL_20;
      }

      if (v5 == -3)
      {
        if (*(a1 + 176))
        {
          v7 = *(a1 + 176);
        }

        else
        {
          v7 = "compressed data error";
        }

        v8 = a1;
        v9 = -3;
        goto LABEL_20;
      }
    }

    v6 = *(a1 + 160);
    if (v5 == 1 || !v6)
    {
      goto LABEL_23;
    }
  }

  sub_2999C63DC(a1, -5, "unexpected end of file");
  v6 = *(a1 + 160);
LABEL_23:
  v10 = (v3 - v6);
  *a1 = v10;
  *(a1 + 8) = *(a1 + 152) - v10;
  result = 0;
  if (v2 == 1)
  {
    *(a1 + 68) = 0;
  }

  return result;
}

int gzread(gzFile file, voidp buf, unsigned int len)
{
  if (!file)
  {
    return -1;
  }

  if (file[1].have != 7247)
  {
    return -1;
  }

  pos_high = HIDWORD(file[4].pos);
  if (pos_high && pos_high != -5)
  {
    return -1;
  }

  if ((len & 0x80000000) != 0)
  {
    sub_2999C63DC(file, -2, "request does not fit in an int");
    return -1;
  }

  result = sub_2999C407C(file, buf, len);
  if (!result)
  {
    v7 = HIDWORD(file[4].pos);
    if (v7)
    {
      if (v7 != -5)
      {
        return -1;
      }
    }
  }

  return result;
}

uint64_t sub_2999C407C(uint64_t a1, char *__dst, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    if (!*(a1 + 112) || (*(a1 + 112) = 0, sub_2999C9B20(a1, *(a1 + 104)) != -1))
    {
      v6 = 0;
      while (1)
      {
        if (v3 >= 0xFFFFFFFF)
        {
          v7 = -1;
        }

        else
        {
          v7 = v3;
        }

        v11 = v7;
        v8 = *a1;
        if (*a1)
        {
          if (v8 < v7)
          {
            v11 = *a1;
            v7 = v8;
          }

          memcpy(__dst, *(a1 + 8), v7);
          *(a1 + 8) += v7;
          *a1 -= v7;
        }

        else
        {
          if (*(a1 + 80) && !*(a1 + 136))
          {
            *(a1 + 84) = 1;
            return v6;
          }

          v9 = *(a1 + 68);
          if (!v9 || v7 < 2 * *(a1 + 40))
          {
            if (sub_2999C5C90(a1) == -1)
            {
              return 0;
            }

            goto LABEL_18;
          }

          if (v9 == 1)
          {
            if (sub_2999C3DFC(a1, __dst, v7, &v11) == -1)
            {
              return 0;
            }

            v7 = v11;
          }

          else
          {
            *(a1 + 160) = v7;
            *(a1 + 152) = __dst;
            if (sub_2999C3EB8(a1) == -1)
            {
              return 0;
            }

            v7 = *a1;
            v11 = *a1;
            *a1 = 0;
          }
        }

        v3 -= v7;
        __dst += v7;
        v6 += v7;
        *(a1 + 16) += v7;
LABEL_18:
        if (!v3)
        {
          return v6;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2999C41F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 5900))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(result + 5888);
      v5 = *(v4 + v3) | (*(v4 + v3 + 1) << 8);
      v6 = *(v4 + v3 + 2);
      if (v5)
      {
        break;
      }

      v20 = (a2 + 4 * v6);
      v21 = v20[1];
      v22 = *(result + 5940);
      v23 = *v20;
      v24 = *(result + 5936);
      v25 = v24 | (v23 << v22);
      *(result + 5936) = v24 | (v23 << v22);
      if (v22 > 16 - v21)
      {
        v26 = *(result + 16);
        v27 = *(result + 40);
        *(result + 40) = v27 + 1;
        *(v26 + v27) = v25;
        LOBYTE(v26) = *(result + 5937);
        v28 = *(result + 16);
        v29 = *(result + 40);
        *(result + 40) = v29 + 1;
        *(v28 + v29) = v26;
        LODWORD(v26) = *(result + 5940);
        *(result + 5936) = v23 >> (16 - v26);
        v30 = v21 + v26;
LABEL_24:
        v40 = v30 - 16;
        goto LABEL_26;
      }

      v40 = v22 + v21;
LABEL_26:
      *(result + 5940) = v40;
LABEL_27:
      v3 += 3;
      if (v3 >= *(result + 5900))
      {
        goto LABEL_30;
      }
    }

    v7 = byte_2999CC2B8[v6];
    v8 = a2 + 4 * v7;
    v9 = *(v8 + 1030);
    v10 = *(result + 5940);
    v11 = *(v8 + 1028);
    v12 = *(result + 5936);
    v13 = v12 | (v11 << v10);
    *(result + 5936) = v12 | (v11 << v10);
    if (v10 <= 16 - v9)
    {
      v19 = v10 + v9;
    }

    else
    {
      v14 = *(result + 16);
      v15 = *(result + 40);
      *(result + 40) = v15 + 1;
      *(v14 + v15) = v13;
      v16 = *(result + 5937);
      v17 = *(result + 16);
      v18 = *(result + 40);
      *(result + 40) = v18 + 1;
      *(v17 + v18) = v16;
      LODWORD(v17) = *(result + 5940);
      v13 = v11 >> (16 - v17);
      *(result + 5936) = v13;
      v19 = v9 + v17 - 16;
    }

    *(result + 5940) = v19;
    if ((v7 - 28) >= 0xFFFFFFFFFFFFFFECLL)
    {
      v31 = dword_2999CC8B0[v7];
      v32 = v6 - dword_2999CC9FC[v7];
      v33 = v32 << v19;
      if (v19 <= 16 - v31)
      {
        v13 |= v33;
        *(result + 5936) = v13;
        v19 += v31;
      }

      else
      {
        v34 = v32;
        v35 = v13 | v33;
        *(result + 5936) = v35;
        v36 = *(result + 16);
        v37 = *(result + 40);
        *(result + 40) = v37 + 1;
        *(v36 + v37) = v35;
        LOBYTE(v35) = *(result + 5937);
        v38 = *(result + 16);
        v39 = *(result + 40);
        *(result + 40) = v39 + 1;
        *(v38 + v39) = v35;
        LODWORD(v38) = *(result + 5940);
        v13 = v34 >> (16 - v38);
        *(result + 5936) = v13;
        v19 = v31 + v38 - 16;
      }

      *(result + 5940) = v19;
    }

    v41 = v5 - 1;
    if (v5 >= 0x101)
    {
      v42 = ((v5 - 1) >> 7) + 256;
    }

    else
    {
      v42 = v5 - 1;
    }

    v43 = byte_2999CC0B8[v42];
    v44 = (a3 + 4 * v43);
    v45 = v44[1];
    v46 = *v44;
    v47 = v13 | (v46 << v19);
    *(result + 5936) = v47;
    if (v19 <= 16 - v45)
    {
      v40 = v19 + v45;
    }

    else
    {
      v48 = *(result + 16);
      v49 = *(result + 40);
      *(result + 40) = v49 + 1;
      *(v48 + v49) = v47;
      v50 = *(result + 5937);
      v51 = *(result + 16);
      v52 = *(result + 40);
      *(result + 40) = v52 + 1;
      *(v51 + v52) = v50;
      LODWORD(v51) = *(result + 5940);
      v47 = v46 >> (16 - v51);
      *(result + 5936) = v47;
      v40 = v45 + v51 - 16;
    }

    *(result + 5940) = v40;
    if (v43 < 4)
    {
      goto LABEL_27;
    }

    v53 = dword_2999CC924[v43];
    v54 = v41 - dword_2999CCA70[v43];
    v55 = v54 << v40;
    if (v40 <= 16 - v53)
    {
      *(result + 5936) = v47 | v55;
      v40 += v53;
      goto LABEL_26;
    }

    v56 = v54;
    v57 = v47 | v55;
    *(result + 5936) = v57;
    v58 = *(result + 16);
    v59 = *(result + 40);
    *(result + 40) = v59 + 1;
    *(v58 + v59) = v57;
    LOBYTE(v57) = *(result + 5937);
    v60 = *(result + 16);
    v61 = *(result + 40);
    *(result + 40) = v61 + 1;
    *(v60 + v61) = v57;
    v62 = *(result + 5940);
    *(result + 5936) = v56 >> (16 - v62);
    v30 = v53 + v62;
    goto LABEL_24;
  }

  v40 = *(result + 5940);
LABEL_30:
  v63 = *(a2 + 1026);
  v64 = *(a2 + 1024);
  v65 = *(result + 5936);
  v66 = v65 | (v64 << v40);
  *(result + 5936) = v65 | (v64 << v40);
  if (v40 <= 16 - v63)
  {
    v73 = v40 + v63;
  }

  else
  {
    v67 = *(result + 16);
    v68 = *(result + 40);
    *(result + 40) = v68 + 1;
    *(v67 + v68) = v66;
    v69 = *(result + 5937);
    v70 = *(result + 16);
    v71 = *(result + 40);
    *(result + 40) = v71 + 1;
    *(v70 + v71) = v69;
    v72 = *(result + 5940);
    *(result + 5936) = v64 >> (16 - v72);
    v73 = v63 + v72 - 16;
  }

  *(result + 5940) = v73;
  return result;
}

void sub_2999C45B0(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(a1 + 196) < 1)
  {
    v11 = a3 + 5;
    LODWORD(v12) = 1;
    v13 = a3 + 5;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(*a1 + 88) == 2)
    {
      v8 = 0;
      v9 = 4093624447;
      do
      {
        if ((v9 & 1) != 0 && *(a1 + 212 + v8))
        {
          v10 = 0;
          goto LABEL_14;
        }

        v9 >>= 1;
        v8 += 4;
      }

      while (v8 != 128);
      if (!*(a1 + 248) && !*(a1 + 252) && !*(a1 + 264))
      {
        v70 = 0;
        v71 = a1 + 340;
        while (1)
        {
          v10 = *(v71 + v70);
          if (*(v71 + v70))
          {
            break;
          }

          v70 += 4;
          if (v70 == 896)
          {
            goto LABEL_14;
          }
        }
      }

      v10 = 1;
LABEL_14:
      *(*a1 + 88) = v10;
    }

    sub_2999C4C30(a1, (a1 + 2904));
    sub_2999C4C30(a1, (a1 + 2928));
    sub_2999C51A8(a1, a1 + 212, *(a1 + 2912));
    sub_2999C51A8(a1, a1 + 2504, *(a1 + 2936));
    sub_2999C4C30(a1, (a1 + 2952));
    v14 = 0x12u;
    while (!*(a1 + 2748 + 4 * byte_2999CC9E8[v14] + 2))
    {
      if (v14-- <= 3)
      {
        v14 = 2;
        break;
      }
    }

    v16 = *(a1 + 5912) + 3 * v14;
    *(a1 + 5912) = v16 + 17;
    v13 = (v16 + 27) >> 3;
    v11 = (*(a1 + 5920) + 10) >> 3;
    if (v11 < v13)
    {
      v13 = (*(a1 + 5920) + 10) >> 3;
    }

    LODWORD(v12) = v14 + 1;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  if (a3 + 4 <= v13)
  {
    sub_2999C61C4(a1, a2, a3, v4);
    goto LABEL_50;
  }

LABEL_24:
  v17 = *(a1 + 5940);
  if (v11 == v13 || *(a1 + 200) == 4)
  {
    v26 = v4 + 2;
    if (v17 < 14)
    {
      *(a1 + 5936) |= v26 << v17;
      v33 = v17 + 3;
    }

    else
    {
      v27 = *(a1 + 5936) | (v26 << v17);
      *(a1 + 5936) = v27;
      v28 = *(a1 + 16);
      v29 = *(a1 + 40);
      *(a1 + 40) = v29 + 1;
      *(v28 + v29) = v27;
      LOBYTE(v27) = *(a1 + 5937);
      v30 = *(a1 + 16);
      v31 = *(a1 + 40);
      *(a1 + 40) = v31 + 1;
      *(v30 + v31) = v27;
      v32 = *(a1 + 5940);
      *(a1 + 5936) = (v4 + 2) >> (16 - v32);
      v33 = v32 - 13;
    }

    *(a1 + 5940) = v33;
    v34 = &unk_2999CC3B8;
    v35 = &unk_2999CC838;
  }

  else
  {
    v18 = v4 + 4;
    if (v17 < 14)
    {
      v24 = *(a1 + 5936) | (v18 << v17);
      v25 = v17 + 3;
    }

    else
    {
      v19 = *(a1 + 5936) | (v18 << v17);
      *(a1 + 5936) = v19;
      v20 = *(a1 + 16);
      v21 = *(a1 + 40);
      *(a1 + 40) = v21 + 1;
      *(v20 + v21) = v19;
      LOBYTE(v19) = *(a1 + 5937);
      v22 = *(a1 + 16);
      v23 = *(a1 + 40);
      *(a1 + 40) = v23 + 1;
      *(v22 + v23) = v19;
      LODWORD(v22) = *(a1 + 5940);
      v24 = (v4 + 4) >> (16 - v22);
      v25 = v22 - 13;
    }

    *(a1 + 5940) = v25;
    v36 = *(a1 + 2912);
    v37 = *(a1 + 2936);
    v38 = v36 + 65280;
    if (v25 < 12)
    {
      v45 = v24 | (v38 << v25);
      v46 = v25 + 5;
    }

    else
    {
      v39 = v24 | (v38 << v25);
      *(a1 + 5936) = v39;
      v40 = *(a1 + 16);
      v41 = *(a1 + 40);
      *(a1 + 40) = v41 + 1;
      *(v40 + v41) = v39;
      LOBYTE(v39) = *(a1 + 5937);
      v42 = *(a1 + 16);
      v43 = *(a1 + 40);
      *(a1 + 40) = v43 + 1;
      *(v42 + v43) = v39;
      v44 = *(a1 + 5940);
      v45 = (v36 - 256) >> (16 - v44);
      v46 = v44 - 11;
    }

    *(a1 + 5940) = v46;
    if (v46 < 12)
    {
      v52 = v45 | (v37 << v46);
      v53 = v46 + 5;
    }

    else
    {
      v47 = v45 | (v37 << v46);
      *(a1 + 5936) = v47;
      v48 = *(a1 + 16);
      v49 = *(a1 + 40);
      *(a1 + 40) = v49 + 1;
      *(v48 + v49) = v47;
      LOBYTE(v47) = *(a1 + 5937);
      v50 = *(a1 + 16);
      v51 = *(a1 + 40);
      *(a1 + 40) = v51 + 1;
      *(v50 + v51) = v47;
      LODWORD(v50) = *(a1 + 5940);
      v52 = v37 >> (16 - v50);
      v53 = v50 - 11;
    }

    *(a1 + 5940) = v53;
    v54 = v12 + 65532;
    if (v53 < 13)
    {
      v60 = v52 | (v54 << v53);
      *(a1 + 5936) = v60;
      v61 = v53 + 4;
    }

    else
    {
      v55 = v52 | (v54 << v53);
      *(a1 + 5936) = v55;
      v56 = *(a1 + 16);
      v57 = *(a1 + 40);
      *(a1 + 40) = v57 + 1;
      *(v56 + v57) = v55;
      LOBYTE(v55) = *(a1 + 5937);
      v58 = *(a1 + 16);
      v59 = *(a1 + 40);
      *(a1 + 40) = v59 + 1;
      *(v58 + v59) = v55;
      LODWORD(v58) = *(a1 + 5940);
      v60 = (v12 - 4) >> (16 - v58);
      *(a1 + 5936) = v60;
      v61 = v58 - 12;
    }

    *(a1 + 5940) = v61;
    if (v12 >= 1)
    {
      v12 = v12;
      v62 = byte_2999CC9E8;
      do
      {
        v63 = *v62++;
        v64 = *(a1 + 2748 + 4 * v63 + 2);
        v60 |= v64 << v61;
        *(a1 + 5936) = v60;
        if (v61 < 14)
        {
          v61 += 3;
        }

        else
        {
          v65 = *(a1 + 16);
          v66 = *(a1 + 40);
          *(a1 + 40) = v66 + 1;
          *(v65 + v66) = v60;
          v67 = *(a1 + 5937);
          v68 = *(a1 + 16);
          v69 = *(a1 + 40);
          *(a1 + 40) = v69 + 1;
          *(v68 + v69) = v67;
          LODWORD(v68) = *(a1 + 5940);
          v60 = v64 >> (16 - v68);
          *(a1 + 5936) = v60;
          v61 = v68 - 13;
        }

        *(a1 + 5940) = v61;
        --v12;
      }

      while (v12);
    }

    sub_2999C3968(a1, a1 + 212, v36);
    sub_2999C3968(a1, a1 + 2504, v37);
    v34 = (a1 + 212);
    v35 = (a1 + 2504);
  }

  sub_2999C41F4(a1, v34, v35);
LABEL_50:
  sub_2999C2F44(a1);
  if (v4)
  {

    sub_2999C5EE8(a1);
  }
}

void *sub_2999C4B04(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = sub_2999C4B9C(v2);
  v4 = *(v2 + 40);
  v5 = *(a1 + 32);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    result = memcpy(*(a1 + 24), *(v2 + 32), v6);
    *(a1 + 24) += v6;
    *(a1 + 40) += v6;
    *(a1 + 32) -= v6;
    v7 = *(v2 + 40) - v6;
    *(v2 + 32) += v6;
    *(v2 + 40) = v7;
    if (!v7)
    {
      *(v2 + 32) = *(v2 + 16);
    }
  }

  return result;
}

uint64_t sub_2999C4BA0(uint64_t result)
{
  v1 = *(result + 5940);
  if (v1 == 16)
  {
    v2 = 0;
    v3 = *(result + 5936);
    v4 = *(result + 40);
    *(result + 40) = v4 + 1;
    *(*(result + 16) + v4) = v3;
    v5 = *(result + 5937);
    v6 = *(result + 16);
    v7 = *(result + 40);
    *(result + 40) = v7 + 1;
    *(v6 + v7) = v5;
    *(result + 5936) = 0;
  }

  else
  {
    if (v1 < 8)
    {
      return result;
    }

    v8 = *(result + 5936);
    v9 = *(result + 16);
    v10 = *(result + 40);
    *(result + 40) = v10 + 1;
    *(v9 + v10) = v8;
    *(result + 5936) = *(result + 5937);
    v2 = *(result + 5940) - 8;
  }

  *(result + 5940) = v2;
  return result;
}

uint64_t sub_2999C4C30(uint64_t a1, uint64_t *a2)
{
  v76 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = a2[2];
  v6 = *v5;
  v7 = *(v5 + 20);
  *(a1 + 5300) = 0x23D00000000;
  if (v7 < 1)
  {
    v12 = 0;
    v10 = -1;
  }

  else
  {
    v8 = 0;
    v9 = (v4 + 2);
    v10 = -1;
    do
    {
      if (*(v9 - 1))
      {
        v11 = *(a1 + 5300) + 1;
        *(a1 + 5300) = v11;
        *(a1 + 3008 + 4 * v11) = v8;
        *(a1 + 5308 + v8) = 0;
        v10 = v8;
      }

      else
      {
        *v9 = 0;
      }

      ++v8;
      v9 += 2;
    }

    while (v7 != v8);
    v12 = *(a1 + 5300);
    if (v12 > 1)
    {
      goto LABEL_20;
    }
  }

  v13 = v10;
  do
  {
    if (v13 < 2)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 + 1;
    *(a1 + 5300) = v15;
    *(a1 + 3008 + 4 * v15) = v14;
    *(v4 + 4 * v14) = 1;
    if (v13 >= 2)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13 + 1;
    }

    *(a1 + 5308 + v14) = 0;
    --*(a1 + 5912);
    if (v6)
    {
      *(a1 + 5920) -= *(v6 + 4 * v14 + 2);
    }

    v12 = *(a1 + 5300);
    v13 = v10;
  }

  while (v12 < 2);
LABEL_20:
  *(a2 + 2) = v10;
  v16 = v12 >> 1;
  do
  {
    sub_2999C50C4(a1, v4, v16);
    v17 = v16-- != 0;
  }

  while (v16 != 0 && v17);
  v18 = *(a1 + 5300);
  v19 = a1 + 3008;
  v20 = a1 + 5308;
  v21 = v7;
  v22 = 4 * v7;
  do
  {
    v23 = *(a1 + 3012);
    *(a1 + 5300) = v18 - 1;
    *(a1 + 3012) = *(v19 + 4 * v18);
    sub_2999C50C4(a1, v4, 1u);
    v24 = *(a1 + 3012);
    v25 = *(a1 + 5304) - 1;
    *(a1 + 5304) = v25;
    *(v19 + 4 * v25) = v23;
    v26 = *(a1 + 5304) - 1;
    *(a1 + 5304) = v26;
    *(v19 + 4 * v26) = v24;
    v27 = (v4 + 4 * v23);
    v28 = (v4 + 4 * v24);
    *(v4 + v22) = *v28 + *v27;
    v29 = *(v20 + v24);
    if (*(v20 + v23) > v29)
    {
      LOBYTE(v29) = *(v20 + v23);
    }

    *(v20 + v21) = v29 + 1;
    v28[1] = v21;
    v27[1] = v21;
    *(a1 + 3012) = v21;
    result = sub_2999C50C4(a1, v4, 1u);
    v18 = *(a1 + 5300);
    v22 += 4;
    ++v21;
  }

  while (v18 > 1);
  v31 = *(a1 + 3012);
  v32 = *(a1 + 5304) - 1;
  *(a1 + 5304) = v32;
  *(v19 + 4 * v32) = v31;
  v33 = *a2;
  v34 = *(a2 + 2);
  v35 = a2[2];
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  v39 = *(v35 + 24);
  v40 = a1 + 2976;
  *(a1 + 2992) = 0u;
  *(a1 + 2976) = 0u;
  *(v33 + 4 * *(v19 + 4 * *(a1 + 5304)) + 2) = 0;
  v41 = *(a1 + 5304);
  if (v41 <= 571)
  {
    v42 = 0;
    v43 = v41 + 2;
    v44 = (a1 + 4 * v41 + 3012);
    do
    {
      v46 = *v44++;
      v45 = v46;
      v47 = (v33 + 4 * v46);
      v48 = *(v33 + 4 * v47[1] + 2);
      v49 = v39 <= v48;
      if (v39 > v48)
      {
        v50 = v48 + 1;
      }

      else
      {
        v50 = v39;
      }

      if (v49)
      {
        ++v42;
      }

      v47[1] = v50;
      if (v45 <= v34)
      {
        ++*(v40 + 2 * v50);
        v51 = v45 >= v38 ? *(v37 + 4 * (v45 - v38)) : 0;
        v52 = *v47;
        *(a1 + 5912) += v52 * (v51 + v50);
        if (v36)
        {
          *(a1 + 5920) += v52 * (v51 + *(v36 + 4 * v45 + 2));
        }
      }

      result = v43 + 1;
    }

    while (v43++ != 573);
    if (v42)
    {
      do
      {
        v54 = (a1 + 2 * v39 + 2976);
        v55 = (v39 << 32) + 0x100000000;
        do
        {
          v57 = *--v54;
          v56 = v57;
          v55 -= 0x100000000;
        }

        while (!v57);
        result = (v56 - 1);
        *v54 = result;
        *(v40 + (v55 >> 31)) += 2;
        --*(v40 + 2 * v39);
        v58 = __OFSUB__(v42, 2);
        v42 -= 2;
      }

      while (!((v42 < 0) ^ v58 | (v42 == 0)));
      if (v39)
      {
        v59 = 573;
        do
        {
          v60 = *(v40 + 2 * v39);
          if (*(v40 + 2 * v39))
          {
            do
            {
              v61 = (a1 + 3004 + 4 * v59);
              do
              {
                v63 = *v61--;
                v62 = v63;
                --v59;
              }

              while (v63 > v34);
              v64 = (v33 + 4 * v62);
              v65 = v39 - v64[1];
              if (v65)
              {
                result = *(a1 + 5912);
                *(a1 + 5912) = result + v65 * *v64;
                v64[1] = v39;
              }

              --v60;
            }

            while (v60);
          }

          --v39;
        }

        while (v39);
      }
    }
  }

  v66 = 0;
  v67 = 0;
  do
  {
    v67 = 2 * (v67 + *(v40 + v66 * 2));
    v75[++v66] = v67;
  }

  while (v66 != 15);
  if ((v10 & 0x80000000) == 0)
  {
    v68 = 0;
    do
    {
      v69 = (v4 + 4 * v68);
      v70 = v69[1];
      if (v69[1])
      {
        v71 = 0;
        v72 = v75[v69[1]];
        v75[v69[1]] = v72 + 1;
        v73 = v70 + 1;
        do
        {
          v74 = v71 | v72 & 1;
          v72 >>= 1;
          v71 = 2 * v74;
          --v73;
        }

        while (v73 > 1);
        *v69 = v74;
      }

      ++v68;
    }

    while (v68 != v10 + 1);
  }

  return result;
}

uint64_t sub_2999C50C4(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = result + 3008;
  v4 = *(result + 3008 + 4 * a3);
  v5 = 2 * a3;
  v6 = *(result + 5300);
  if ((2 * a3) <= v6)
  {
    v8 = result + 5308;
    while (1)
    {
      if (v5 >= v6)
      {
        v7 = v5;
        v9 = v5;
      }

      else
      {
        v9 = v5;
        v10 = *(v3 + 4 * (v5 | 1));
        v11 = *(a2 + 4 * v10);
        v12 = *(v3 + 4 * v5);
        v13 = *(a2 + 4 * v12);
        if (v11 >= v13)
        {
          if (v11 != v13)
          {
            v7 = v5;
            goto LABEL_9;
          }

          v17 = *(v8 + v10);
          v7 = v5;
          if (v17 > *(v8 + v12))
          {
            goto LABEL_9;
          }
        }

        v9 = v5 | 1;
        v7 = v5 | 1;
      }

LABEL_9:
      v14 = *(a2 + 4 * v4);
      v15 = *(v3 + 4 * v9);
      v16 = *(a2 + 4 * v15);
      if (v14 < v16 || v14 == v16 && *(v8 + v4) <= *(v8 + v15))
      {
        break;
      }

      *(v3 + 4 * a3) = v15;
      v5 = 2 * v7;
      v6 = *(result + 5300);
      a3 = v7;
      if (2 * v7 > v6)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = a3;
LABEL_3:
  *(v3 + 4 * v7) = v4;
  return result;
}

_WORD *sub_2999C51A8(_WORD *result, uint64_t a2, int a3)
{
  v3 = *(a2 + 2);
  *(a2 + 4 * a3 + 6) = -1;
  if ((a3 & 0x80000000) == 0)
  {
    v4 = 0;
    if (v3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    if (v3)
    {
      v6 = 7;
    }

    else
    {
      v6 = 138;
    }

    v7 = result + 1374;
    v8 = (a3 + 1);
    v9 = (a2 + 6);
    v10 = 0xFFFFFFFFLL;
    do
    {
      v12 = *v9;
      v9 += 2;
      v11 = v12;
      v13 = v4 + 1;
      if (v4 + 1 < v6 && v3 == v11)
      {
        v3 = v10;
      }

      else
      {
        if (v13 >= v5)
        {
          if (v3)
          {
            if (v3 != v10)
            {
              ++v7[2 * v3];
            }

            ++result[1406];
          }

          else if (v4 > 9)
          {
            ++result[1410];
          }

          else
          {
            ++result[1408];
          }
        }

        else
        {
          v7[2 * v3] += v13;
        }

        if (v3 == v11)
        {
          v15 = 6;
        }

        else
        {
          v15 = 7;
        }

        if (v3 == v11)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }

        v13 = 0;
        if (v11)
        {
          v6 = v15;
        }

        else
        {
          v6 = 138;
        }

        if (v11)
        {
          v5 = v16;
        }

        else
        {
          v5 = 3;
        }
      }

      v10 = v3;
      v4 = v13;
      v3 = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

int compress2(Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level)
{
  memset(&v15, 0, sizeof(v15));
  v9 = *destLen;
  *destLen = 0;
  memset(&v15.zalloc, 0, 24);
  result = deflateInit_(&v15, level, "1.2.12", 112);
  if (!result)
  {
    v15.next_out = dest;
    v15.avail_out = 0;
    v15.next_in = source;
    v15.avail_in = 0;
LABEL_3:
    if (v9 >= 0xFFFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v15.avail_out = v11;
    v9 -= v11;
    while (1)
    {
      if (!v15.avail_in)
      {
        if (sourceLen >= 0xFFFFFFFF)
        {
          v12 = 0xFFFFFFFFLL;
        }

        else
        {
          v12 = sourceLen;
        }

        v15.avail_in = v12;
        sourceLen -= v12;
      }

      v13 = deflate(&v15, 4 * (sourceLen == 0));
      if (v13)
      {
        break;
      }

      if (!v15.avail_out)
      {
        goto LABEL_3;
      }
    }

    v14 = v13;
    *destLen = v15.total_out;
    deflateEnd(&v15);
    if (v14 == 1)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t sub_2999C53D0(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  v5 = a1 + 2504;
  while (1)
  {
    if (*(a1 + 180) > 0x105u)
    {
      goto LABEL_7;
    }

    sub_2999C00F4(a1);
    v6 = *(a1 + 180);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    if (v6 < 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = *(a1 + 172);
    v8 = ((*(a1 + 128) << *(a1 + 144)) ^ *(*(a1 + 96) + v7 + 2)) & *(a1 + 140);
    *(a1 + 128) = v8;
    v9 = *(a1 + 120);
    v10 = *(v9 + 2 * v8);
    *(*(a1 + 112) + 2 * (*(a1 + 88) & v7)) = v10;
    *(v9 + 2 * v8) = v7;
    if (!v10 || v7 - v10 > *(a1 + 80) - 262)
    {
LABEL_9:
      v11 = *(a1 + 160);
      goto LABEL_11;
    }

    v11 = sub_2999BF9E0(a1, v10);
    *(a1 + 160) = v11;
LABEL_11:
    if (v11 < 3)
    {
      v36 = *(*(a1 + 96) + *(a1 + 172));
      v37 = *(a1 + 5888);
      v38 = *(a1 + 5900);
      *(a1 + 5900) = v38 + 1;
      *(v37 + v38) = 0;
      v39 = *(a1 + 5888);
      v40 = *(a1 + 5900);
      *(a1 + 5900) = v40 + 1;
      *(v39 + v40) = 0;
      v41 = *(a1 + 5888);
      v42 = *(a1 + 5900);
      *(a1 + 5900) = v42 + 1;
      *(v41 + v42) = v36;
      ++*(v4 + 4 * v36);
      v23 = *(a1 + 5900);
      v24 = *(a1 + 5904);
      --*(a1 + 180);
      v35 = *(a1 + 172) + 1;
LABEL_20:
      *(a1 + 172) = v35;
      goto LABEL_22;
    }

    v12 = *(a1 + 172) - *(a1 + 176);
    v13 = *(a1 + 5888);
    v14 = *(a1 + 5900);
    *(a1 + 5900) = v14 + 1;
    *(v13 + v14) = v12;
    v15 = *(a1 + 5888);
    v16 = *(a1 + 5900);
    *(a1 + 5900) = v16 + 1;
    *(v15 + v16) = BYTE1(v12);
    v17 = *(a1 + 5888);
    v18 = *(a1 + 5900);
    *(a1 + 5900) = v18 + 1;
    *(v17 + v18) = v11 - 3;
    v19 = v12 - 1;
    v20 = v4 + 4 * byte_2999CC2B8[(v11 - 3)];
    ++*(v20 + 1028);
    v21 = (v19 >> 7) + 256;
    if ((v19 & 0xFF00) == 0)
    {
      v21 = v19;
    }

    v22 = 4 * byte_2999CC0B8[v21];
    ++*(v5 + v22);
    v23 = *(a1 + 5900);
    v24 = *(a1 + 5904);
    v25 = *(a1 + 160);
    v26 = *(a1 + 180) - v25;
    *(a1 + 180) = v26;
    if (v25 <= *(a1 + 192) && v26 >= 3)
    {
      *(a1 + 160) = v25 - 1;
      v27 = *(a1 + 96);
      v29 = *(a1 + 140);
      v28 = *(a1 + 144);
      v31 = *(a1 + 112);
      v30 = *(a1 + 120);
      v32 = *(a1 + 88);
      v33 = *(a1 + 128);
      v34 = v25 - 2;
      v35 = *(a1 + 172) + 1;
      do
      {
        *(a1 + 172) = v35;
        v33 = ((v33 << v28) ^ *(v27 + v35 + 2)) & v29;
        *(a1 + 128) = v33;
        *(v31 + 2 * (v32 & v35)) = *(v30 + 2 * v33);
        *(v30 + 2 * v33) = v35;
        *(a1 + 160) = v34--;
        ++v35;
      }

      while (v34 != -1);
      goto LABEL_20;
    }

    v35 = *(a1 + 172) + v25;
    *(a1 + 172) = v35;
    *(a1 + 160) = 0;
    v43 = *(a1 + 96);
    v44 = *(v43 + v35);
    *(a1 + 128) = v44;
    *(a1 + 128) = ((v44 << *(a1 + 144)) ^ *(v43 + v35 + 1)) & *(a1 + 140);
LABEL_22:
    if (v23 == v24)
    {
      v45 = *(a1 + 152);
      v46 = v45 < 0 ? 0 : (*(a1 + 96) + v45);
      sub_2999C45B0(a1, v46, v35 - v45, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_2999C4B04(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v48 = *(a1 + 172);
  if (v48 >= 2)
  {
    v49 = 2;
  }

  else
  {
    v49 = *(a1 + 172);
  }

  *(a1 + 5932) = v49;
  if (a2 == 4)
  {
    v50 = *(a1 + 152);
    if (v50 < 0)
    {
      v51 = 0;
    }

    else
    {
      v51 = (*(a1 + 96) + v50);
    }

    sub_2999C45B0(a1, v51, v48 - v50, 1);
    *(a1 + 152) = *(a1 + 172);
    sub_2999C4B04(*a1);
    if (*(*a1 + 32))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (*(a1 + 5900))
    {
      v52 = *(a1 + 152);
      v53 = v52 < 0 ? 0 : (*(a1 + 96) + v52);
      sub_2999C45B0(a1, v53, v48 - v52, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_2999C4B04(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }

    return 1;
  }
}

gzFile gzdopen(int fd, const char *mode)
{
  if (fd == -1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x13uLL, 0x100004052888210uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  snprintf(v4, 0x13uLL, "<fd:%d>", fd);
  v6 = sub_2999C5844(v5, fd, mode);
  free(v5);
  return v6;
}

uint64_t sub_2999C5844(const char *a1, int a2, unsigned __int8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0xF0uLL, 0x10B00408B6D6075uLL);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6[5] = 0x200000000000;
  v6[15] = 0;
  *(v6 + 6) = 0;
  v6[11] = 0xFFFFFFFFLL;
  *(v6 + 16) = 0;
  v8 = *a3;
  if (!*a3)
  {
    goto LABEL_64;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3 + 1;
  do
  {
    v14 = (v8 - 48);
    if (v14 <= 9)
    {
      *(v7 + 88) = v14;
      goto LABEL_32;
    }

    if (v8 > 0x65u)
    {
      if (v8 <= 0x71u)
      {
        if (v8 == 102)
        {
          *(v7 + 92) = 1;
        }

        else if (v8 == 104)
        {
          *(v7 + 92) = 2;
        }
      }

      else
      {
        if (v8 != 120)
        {
          if (v8 == 119)
          {
            v10 = 31153;
          }

          else
          {
            if (v8 != 114)
            {
              goto LABEL_32;
            }

            v10 = 7247;
          }

          goto LABEL_28;
        }

        v11 = 1;
      }
    }

    else if (v8 <= 0x53u)
    {
      switch(v8)
      {
        case 'F':
          *(v7 + 92) = 4;
          break;
        case 'R':
          *(v7 + 92) = 3;
          break;
        case '+':
          goto LABEL_64;
      }
    }

    else
    {
      switch(v8)
      {
        case 'T':
          v9 = 1;
          *(v7 + 64) = 1;
          break;
        case 'a':
          v10 = 1;
LABEL_28:
          *(v7 + 24) = v10;
          break;
        case 'e':
          v12 = 1;
          break;
      }
    }

LABEL_32:
    v15 = *v13++;
    v8 = v15;
  }

  while (v15);
  v16 = v12 != 0;
  if (v11)
  {
    v17 = 2561;
  }

  else
  {
    v17 = 513;
  }

  if (v10 == 7247)
  {
    if (!v9)
    {
      *(v7 + 64) = 1;
      goto LABEL_44;
    }

    goto LABEL_64;
  }

  if (!v10)
  {
LABEL_64:
    free(v7);
    return 0;
  }

LABEL_44:
  v18 = strlen(a1);
  v19 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
  *(v7 + 32) = v19;
  if (!v19)
  {
    goto LABEL_64;
  }

  snprintf(v19, v18 + 1, "%s", a1);
  v20 = *(v7 + 24);
  if ((a2 & 0x80000000) == 0)
  {
    *(v7 + 28) = a2;
    goto LABEL_55;
  }

  if (v20 == 31153)
  {
    v21 = 1024;
  }

  else
  {
    v21 = 8;
  }

  v22 = v21 | v17;
  if (v20 == 7247)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v24 = open(a1, v23 | (v16 << 24), 438);
  *(v7 + 28) = v24;
  if (v24 == -1)
  {
    free(*(v7 + 32));
    goto LABEL_64;
  }

  a2 = v24;
  v20 = *(v7 + 24);
LABEL_55:
  if (v20 == 7247)
  {
    v25 = lseek(a2, 0, 1);
    if (v25 == -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    *(v7 + 72) = v26;
  }

  else if (v20 == 1)
  {
    lseek(a2, 0, 2);
    *(v7 + 24) = 31153;
  }

  sub_2999C5B28(v7);
  return v7;
}

void sub_2999C5B28(uint64_t a1)
{
  *a1 = 0;
  if (*(a1 + 24) == 7247)
  {
    *(a1 + 80) = 0;
    *(a1 + 68) = 0;
  }

  else
  {
    *(a1 + 96) = 0;
  }

  *(a1 + 112) = 0;
  v2 = *(a1 + 120);
  if (v2)
  {
    if (*(a1 + 116) != -4)
    {
      free(v2);
    }

    *(a1 + 120) = 0;
  }

  *(a1 + 116) = 0;
  *(a1 + 16) = 0;
  *(a1 + 136) = 0;
}

uint64_t sub_2999C5B98(uint64_t a1)
{
  v2 = malloc_type_malloc((2 * *(a1 + 44)), 0x100004077774924uLL);
  *(a1 + 48) = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 64))
  {
    result = 0;
    *(a1 + 40) = *(a1 + 44);
    return result;
  }

  v4 = malloc_type_malloc(*(a1 + 44), 0x100004077774924uLL);
  *(a1 + 56) = v4;
  if (!v4)
  {
LABEL_7:
    free(*(a1 + 48));
LABEL_8:
    sub_2999C63DC(a1, -4, "out of memory");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (deflateInit2_((a1 + 128), *(a1 + 88), 8, 31, 8, *(a1 + 92), "1.2.12", 112))
  {
    free(*(a1 + 56));
    goto LABEL_7;
  }

  *(a1 + 128) = 0;
  v5 = *(a1 + 64);
  v6 = *(a1 + 44);
  *(a1 + 40) = v6;
  result = 0;
  if (!v5)
  {
    *(a1 + 160) = v6;
    v7 = *(a1 + 56);
    *(a1 + 152) = v7;
    *(a1 + 8) = v7;
  }

  return result;
}

uint64_t sub_2999C5C90(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 68);
    if (!v2)
    {
      result = sub_2999C5D58(a1);
      if (result == -1)
      {
        return result;
      }

      if (!*(a1 + 68))
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v2 == 2)
    {
      *(a1 + 160) = 2 * *(a1 + 40);
      *(a1 + 152) = *(a1 + 56);
      result = sub_2999C3EB8(a1);
      if (result == -1)
      {
        return result;
      }

      goto LABEL_9;
    }

    if (v2 == 1)
    {
      break;
    }

LABEL_9:
    if (*a1 || *(a1 + 80) && !*(a1 + 136))
    {
      return 0;
    }
  }

  result = sub_2999C3DFC(a1, *(a1 + 56), 2 * *(a1 + 40), a1);
  if (result != -1)
  {
    result = 0;
    *(a1 + 8) = *(a1 + 56);
  }

  return result;
}

uint64_t sub_2999C5D58(uint64_t a1)
{
  if (*(a1 + 40))
  {
    goto LABEL_2;
  }

  *(a1 + 48) = malloc_type_malloc(*(a1 + 44), 0x100004077774924uLL);
  v6 = malloc_type_malloc((2 * *(a1 + 44)), 0x100004077774924uLL);
  *(a1 + 56) = v6;
  if (*(a1 + 48))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    free(v6);
    free(*(a1 + 48));
LABEL_20:
    sub_2999C63DC(a1, -4, "out of memory");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = *(a1 + 44);
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  if (inflateInit2_((a1 + 128), 31, "1.2.12", 112))
  {
    free(*(a1 + 56));
    free(*(a1 + 48));
    *(a1 + 40) = 0;
    goto LABEL_20;
  }

LABEL_2:
  LODWORD(result) = *(a1 + 136);
  if (result > 1)
  {
    goto LABEL_6;
  }

  result = sub_2999C38AC(a1);
  if (result == -1)
  {
    return result;
  }

  result = *(a1 + 136);
  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
LABEL_6:
    v3 = *(a1 + 128);
    if (*v3 == 31 && v3[1] == 139)
    {
      inflateReset((a1 + 128));
      result = 0;
      v4 = 0x200000000;
LABEL_11:
      *(a1 + 64) = v4;
      return result;
    }
  }

  if (*(a1 + 64))
  {
    v5 = *(a1 + 56);
    *(a1 + 8) = v5;
    memcpy(v5, *(a1 + 128), result);
    result = 0;
    *a1 = *(a1 + 136);
    *(a1 + 136) = 0;
    v4 = 0x100000001;
    goto LABEL_11;
  }

  result = 0;
  *(a1 + 136) = 0;
  *(a1 + 80) = 1;
  *a1 = 0;
  return result;
}

uint64_t sub_2999C5EE8(uint64_t result)
{
  v1 = *(result + 5940);
  if (v1 >= 9)
  {
    v2 = (result + 16);
    v3 = *(result + 16);
    v4 = (result + 40);
    v5 = *(result + 40);
    v6 = *(result + 5936);
    *(result + 40) = v5 + 1;
    *(v3 + v5) = v6;
    v7 = *(result + 5937);
LABEL_5:
    v8 = *v2;
    v9 = (*v4)++;
    *(v8 + v9) = v7;
    goto LABEL_6;
  }

  if (v1 >= 1)
  {
    v7 = *(result + 5936);
    v2 = (result + 16);
    v4 = (result + 40);
    goto LABEL_5;
  }

LABEL_6:
  *(result + 5936) = 0;
  *(result + 5940) = 0;
  return result;
}

int deflateEnd(z_streamp strm)
{
  if (sub_2999C05A0(strm))
  {
    return -2;
  }

  state = strm->state;
  v4 = *(state + 2);
  if (*(state + 2))
  {
    (strm->zfree)(strm->opaque, *(state + 2));
    state = strm->state;
  }

  if (*(state + 15))
  {
    (strm->zfree)(strm->opaque, *(state + 15));
    state = strm->state;
  }

  if (*(state + 14))
  {
    (strm->zfree)(strm->opaque, *(state + 14));
    state = strm->state;
  }

  if (*(state + 12))
  {
    (strm->zfree)(strm->opaque, *(state + 12));
    state = strm->state;
  }

  (strm->zfree)(strm->opaque, state);
  strm->state = 0;
  if (v4 == 113)
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

int uncompress2(Bytef *dest, uLongf *destLen, const Bytef *source, uLong *sourceLen)
{
  v6 = *sourceLen;
  v7 = *destLen;
  if (*destLen)
  {
    *destLen = 0;
  }

  else
  {
    dest = &v16;
    v7 = 1;
  }

  memset(&strm.avail_in, 0, 104);
  strm.next_in = source;
  strm.avail_in = 0;
  v9 = inflateInit_(&strm, "1.2.12", 112);
  if (v9)
  {
    return v9;
  }

  strm.next_out = dest;
  strm.avail_out = 0;
LABEL_8:
  if (v7 >= 0xFFFFFFFF)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = v7;
  }

  strm.avail_out = v12;
  v7 -= v12;
  while (1)
  {
    if (!strm.avail_in)
    {
      if (v6 >= 0xFFFFFFFF)
      {
        v13 = 0xFFFFFFFFLL;
      }

      else
      {
        v13 = v6;
      }

      strm.avail_in = v13;
      v6 -= v13;
    }

    v14 = inflate(&strm, 0);
    if (v14)
    {
      break;
    }

    if (!strm.avail_out)
    {
      goto LABEL_8;
    }
  }

  v10 = v14;
  *sourceLen -= v6 + strm.avail_in;
  if (dest == &v16)
  {
    if (strm.total_out)
    {
      v15 = v14 == -5;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v7 = 1;
    }
  }

  else
  {
    *destLen = strm.total_out;
  }

  inflateEnd(&strm);
  switch(v10)
  {
    case 2:
      return -3;
    case 1:
      return 0;
    case -5:
      if (v7 + strm.avail_out)
      {
        return -3;
      }

      else
      {
        return -5;
      }
  }

  return v10;
}

uint64_t sub_2999C61C4(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v7 = *(a1 + 5940);
  if (v7 < 14)
  {
    *(a1 + 5936) |= a4 << v7;
    v14 = v7 + 3;
  }

  else
  {
    v8 = *(a1 + 5936) | (a4 << v7);
    *(a1 + 5936) = v8;
    v9 = *(a1 + 16);
    v10 = *(a1 + 40);
    *(a1 + 40) = v10 + 1;
    *(v9 + v10) = v8;
    LOBYTE(v8) = *(a1 + 5937);
    v11 = *(a1 + 16);
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
    *(v11 + v12) = v8;
    v13 = *(a1 + 5940);
    *(a1 + 5936) = a4 >> (16 - v13);
    v14 = v13 - 13;
  }

  *(a1 + 5940) = v14;
  result = sub_2999C5EE8(a1);
  v16 = *(a1 + 16);
  v17 = *(a1 + 40);
  *(a1 + 40) = v17 + 1;
  *(v16 + v17) = a3;
  v18 = *(a1 + 16);
  v19 = *(a1 + 40);
  *(a1 + 40) = v19 + 1;
  *(v18 + v19) = BYTE1(a3);
  v20 = *(a1 + 16);
  v21 = *(a1 + 40);
  *(a1 + 40) = v21 + 1;
  *(v20 + v21) = ~a3;
  v22 = *(a1 + 16);
  v23 = *(a1 + 40);
  *(a1 + 40) = v23 + 1;
  *(v22 + v23) = ~a3 >> 8;
  if (a3)
  {
    result = memcpy((*(a1 + 16) + *(a1 + 40)), a2, a3);
  }

  *(a1 + 40) += a3;
  return result;
}

int gzclose_r(gzFile file)
{
  if (!file)
  {
    return -2;
  }

  if (file[1].have != 7247)
  {
    return -2;
  }

  if (LODWORD(file[1].pos))
  {
    inflateEnd(&file[5].next);
    free(file[2].next);
    free(*&file[2].have);
  }

  if (HIDWORD(file[4].pos) == -5)
  {
    v2 = -5;
  }

  else
  {
    v2 = 0;
  }

  sub_2999C63DC(file, 0, 0);
  free(file[1].next);
  v3 = close(*(&file[1].have + 1));
  free(file);
  if (v3)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

int gzclose(gzFile file)
{
  if (!file)
  {
    return -2;
  }

  if (file[1].have == 7247)
  {
    return gzclose_r(file);
  }

  return gzclose_w(file);
}

void sub_2999C63DC(uint64_t a1, int a2, const char *a3)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    if (*(a1 + 116) != -4)
    {
      free(v6);
    }

    *(a1 + 120) = 0;
  }

  if (a2 != -5 && a2)
  {
    *a1 = 0;
  }

  *(a1 + 116) = a2;
  if (a2 != -4 && a3)
  {
    v7 = strlen(*(a1 + 32));
    v8 = strlen(a3);
    v9 = malloc_type_malloc(v7 + v8 + 3, 0x100004077774924uLL);
    *(a1 + 120) = v9;
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 32);
      v12 = strlen(v11);
      v13 = strlen(a3);
      snprintf(v10, v12 + v13 + 3, "%s%s%s", v11, ": ", a3);
    }

    else
    {
      *(a1 + 116) = -4;
    }
  }
}

int gzflush(gzFile file, int flush)
{
  if (!file)
  {
    return -2;
  }

  if (file[1].have != 31153)
  {
    return -2;
  }

  result = -2;
  if (flush <= 4 && !HIDWORD(file[4].pos))
  {
    if (!LODWORD(file[4].pos) || (LODWORD(file[4].pos) = 0, sub_2999C9EE4(file, file[4].next) != -1))
    {
      sub_2999C0334(file, flush);
    }

    return HIDWORD(file[4].pos);
  }

  return result;
}

int gzclose_w(gzFile file)
{
  if (!file || file[1].have != 31153)
  {
    return -2;
  }

  if (LODWORD(file[4].pos) && (LODWORD(file[4].pos) = 0, sub_2999C9EE4(file, file[4].next) == -1))
  {
    pos_high = HIDWORD(file[4].pos);
  }

  else
  {
    pos_high = 0;
  }

  if (sub_2999C0334(file, 4) == -1)
  {
    pos_high = HIDWORD(file[4].pos);
  }

  if (LODWORD(file[1].pos))
  {
    if (!LODWORD(file[2].pos))
    {
      deflateEnd(&file[5].next);
      free(file[2].next);
    }

    free(*&file[2].have);
  }

  sub_2999C63DC(file, 0, 0);
  free(file[1].next);
  if (close(*(&file[1].have + 1)) == -1)
  {
    pos_high = -1;
  }

  free(file);
  return pos_high;
}

uLong deflateBound(z_streamp strm, uLong sourceLen)
{
  v4 = sourceLen + 7;
  v5 = sourceLen + ((sourceLen + 7) >> 3) + ((sourceLen + 63) >> 6);
  if (sub_2999C05A0(strm))
  {
    return v5 + 11;
  }

  state = strm->state;
  v8 = *(state + 12);
  if (v8)
  {
    if (v8 == 2)
    {
      v9 = *(state + 7);
      if (v9)
      {
        if (*(v9 + 24))
        {
          v10 = (*(v9 + 32) + 2) + 18;
        }

        else
        {
          v10 = 18;
        }

        v11 = *(v9 + 40);
        if (v11)
        {
          do
          {
            ++v10;
          }

          while (*v11++);
        }

        v13 = *(v9 + 56);
        if (v13)
        {
          do
          {
            ++v10;
          }

          while (*v13++);
        }

        if (*(v9 + 68))
        {
          v8 = v10 + 2;
        }

        else
        {
          v8 = v10;
        }
      }

      else
      {
        v8 = 18;
      }
    }

    else if (v8 == 1)
    {
      v8 = 10;
      if (!*(state + 43))
      {
        v8 = 6;
      }
    }

    else
    {
      v8 = 6;
    }
  }

  if (*(state + 21) == 15 && *(state + 34) == 15)
  {
    v15 = v4 + (sourceLen >> 12) + (sourceLen >> 14) + (sourceLen >> 25);
  }

  else
  {
    v15 = v5 + 5;
  }

  return v15 + v8;
}

unint64_t sub_2999C6770(int a1, int a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1 + a2;
  v4 = v3 + 65520;
  v5 = HIWORD(a1) + HIWORD(a2) - a3 % 0xFFF1 + a3 % 0xFFF1 * a1 % 0xFFF1;
  v6 = v5 + 65521;
  v7 = v3 - 1;
  if (v4 <= 0xFFF0)
  {
    v7 = 65520;
  }

  if (v7 > 0xFFF0)
  {
    v7 -= 65521;
  }

  v8 = v5 - 65521;
  if (v6 <= 0x1FFE1)
  {
    v8 = v6;
  }

  if (v8 <= 0xFFF0)
  {
    v9 = v8 << 16;
  }

  else
  {
    v9 = (v8 << 16) - 4293984256u;
  }

  return v9 | v7;
}

uLong crc32_combine_0(uLong a1, uLong a2, uint64_t a3)
{
  v5 = crc32_combine_gen_0(a3);
  v6 = 0;
  for (i = 0x80000000; ; i >>= 1)
  {
    if ((i & v5) != 0)
    {
      v6 ^= a1;
      if (((i - 1) & v5) == 0)
      {
        break;
      }
    }

    if (a1)
    {
      a1 = (a1 >> 1) ^ 0xEDB88320;
    }

    else
    {
      a1 >>= 1;
    }
  }

  return v6 ^ a2;
}

uLong crc32_combine_gen_0(uint64_t a1)
{
  if (!a1)
  {
    return 0x80000000;
  }

  v1 = 3;
  v2 = 0x80000000;
  do
  {
    if (a1)
    {
      v3 = 0;
      v5 = qword_2999CACF0[v1 & 0x1F];
      for (i = 0x80000000; ; i >>= 1)
      {
        if ((i & v5) != 0)
        {
          v3 ^= v2;
          if (((i - 1) & v5) == 0)
          {
            break;
          }
        }

        if (v2)
        {
          v2 = (v2 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v2 >>= 1;
        }
      }
    }

    else
    {
      v3 = v2;
    }

    ++v1;
    v2 = v3;
    v4 = a1 > 1;
    a1 >>= 1;
  }

  while (v4);
  return v3;
}

uLong crc32_combine_op(uLong crc1, uLong crc2, uLong op)
{
  v3 = 0;
  for (i = 0x80000000; ; i >>= 1)
  {
    if ((i & op) != 0)
    {
      v3 ^= crc1;
      if (((i - 1) & op) == 0)
      {
        break;
      }
    }

    if (crc1)
    {
      crc1 = (crc1 >> 1) ^ 0xEDB88320;
    }

    else
    {
      crc1 >>= 1;
    }
  }

  return v3 ^ crc2;
}

int deflateSetDictionary(z_streamp strm, const Bytef *dictionary, uInt dictLength)
{
  v6 = sub_2999C05A0(strm);
  result = -2;
  if (!dictionary)
  {
    return result;
  }

  if (v6)
  {
    return result;
  }

  state = strm->state;
  v9 = *(state + 12);
  if (v9 == 2)
  {
    return result;
  }

  if (v9 == 1)
  {
    if (*(state + 2) != 42 || *(state + 45))
    {
      return result;
    }

    strm->adler = adler32(strm->adler, dictionary, dictLength);
    *(state + 12) = 0;
    v10 = *(state + 20);
    if (v10 > dictLength)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(state + 45))
    {
      return result;
    }

    *(state + 12) = 0;
    v10 = *(state + 20);
    if (v10 > dictLength)
    {
      goto LABEL_14;
    }

    if (!v9)
    {
      v11 = *(state + 15);
      v12 = 2 * (*(state + 33) - 1);
      *&v11[v12] = 0;
      bzero(v11, v12);
      *(state + 43) = 0;
      *(state + 19) = 0;
      *(state + 1483) = 0;
      v10 = *(state + 20);
    }
  }

  dictionary += dictLength - v10;
  dictLength = v10;
LABEL_14:
  avail_in = strm->avail_in;
  next_in = strm->next_in;
  strm->avail_in = dictLength;
  strm->next_in = dictionary;
  sub_2999C00F4(state);
  v15 = *(state + 45);
  if (v15 >= 3)
  {
    do
    {
      v16 = *(state + 43);
      v17 = v15 - 2;
      v18 = *(state + 12);
      v20 = *(state + 35);
      v19 = *(state + 36);
      v22 = *(state + 14);
      v21 = *(state + 15);
      v23 = *(state + 22);
      v24 = *(state + 32);
      do
      {
        v24 = ((v24 << v19) ^ *(v18 + v16 + 2)) & v20;
        *(state + 32) = v24;
        *(v22 + 2 * (v23 & v16)) = *(v21 + 2 * v24);
        *(v21 + 2 * v24) = v16++;
        --v17;
      }

      while (v17);
      *(state + 43) = v16;
      *(state + 45) = 2;
      sub_2999C00F4(state);
      v15 = *(state + 45);
    }

    while (v15 > 2);
  }

  result = 0;
  v25 = *(state + 43) + v15;
  *(state + 19) = v25;
  *(state + 1483) = v15;
  *(state + 180) = 0x200000000;
  *(state + 40) = 2;
  *(state + 42) = 0;
  *(state + 43) = v25;
  strm->next_in = next_in;
  strm->avail_in = avail_in;
  *(state + 12) = v9;
  return result;
}

int deflateGetDictionary(z_streamp strm, Bytef *dictionary, uInt *dictLength)
{
  if (sub_2999C05A0(strm))
  {
    return -2;
  }

  state = strm->state;
  v8 = *(state + 43);
  v9 = *(state + 45);
  v10 = *(state + 20);
  if (v9 + v8 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = (v9 + v8);
  }

  if (dictionary && v11)
  {
    memcpy(dictionary, (*(state + 12) + v8 + v9 - v11), v11);
  }

  result = 0;
  if (dictLength)
  {
    *dictLength = v11;
  }

  return result;
}

int deflateSetHeader(z_streamp strm, gz_headerp head)
{
  if (sub_2999C05A0(strm))
  {
    return -2;
  }

  state = strm->state;
  if (*(state + 12) != 2)
  {
    return -2;
  }

  result = 0;
  *(state + 7) = head;
  return result;
}

int deflatePending(z_streamp strm, unsigned int *pending, int *bits)
{
  if (sub_2999C05A0(strm))
  {
    return -2;
  }

  if (pending)
  {
    *pending = *(strm->state + 5);
  }

  result = 0;
  if (bits)
  {
    *bits = *(strm->state + 1485);
  }

  return result;
}

int deflatePrime(z_streamp strm, int bits, int value)
{
  if (sub_2999C05A0(strm))
  {
    return -2;
  }

  if (bits > 0x10)
  {
    return -5;
  }

  state = strm->state;
  if (*(state + 736) < (*(state + 4) + 2))
  {
    return -5;
  }

  do
  {
    v8 = *(state + 1485);
    if (16 - v8 >= bits)
    {
      v9 = bits;
    }

    else
    {
      v9 = 16 - v8;
    }

    *(state + 2968) |= (value & ~(-1 << v9)) << v8;
    *(state + 1485) = v9 + v8;
    sub_2999C4B9C(state);
    value >>= v9;
    bits -= v9;
  }

  while (bits);
  return 0;
}

int deflateParams(z_streamp strm, int level, int strategy)
{
  if (sub_2999C05A0(strm))
  {
    return -2;
  }

  if (level == -1)
  {
    v7 = 6;
  }

  else
  {
    v7 = level;
  }

  result = -2;
  if (strategy <= 4 && v7 <= 9)
  {
    state = strm->state;
    if ((*(state + 50) != strategy || qword_2A1FEDD58[2 * *(state + 49) + 1] != qword_2A1FEDD58[2 * v7 + 1]) && *(state + 19) != -2)
    {
      result = deflate(strm, 5);
      if (result == -2)
      {
        return result;
      }

      if (strm->avail_in || *(state + 43) - *(state + 19) + *(state + 45))
      {
        return -5;
      }
    }

    v9 = *(state + 49);
    if (v9 != v7)
    {
      if (!v9)
      {
        v10 = *(state + 1482);
        if (v10)
        {
          if (v10 == 1)
          {
            sub_2999C6EB8(state);
          }

          else
          {
            v11 = *(state + 15);
            v12 = 2 * (*(state + 33) - 1);
            *&v11[v12] = 0;
            bzero(v11, v12);
          }

          *(state + 1482) = 0;
        }
      }

      *(state + 49) = v7;
      v13 = &qword_2A1FEDD58[2 * v7];
      v14 = v13[1];
      v15 = v13[2];
      *(state + 51) = *v13;
      *(state + 52) = v15;
      *(state + 47) = v13[3];
      *(state + 48) = v14;
    }

    result = 0;
    *(state + 50) = strategy;
  }

  return result;
}

uint64_t sub_2999C6EB8(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 80);
  v3 = *(result + 132);
  v4 = (*(result + 120) + 2 * v3 - 2);
  do
  {
    v5 = *v4;
    v6 = v5 >= v1;
    v7 = v5 - v1;
    if (!v6)
    {
      v7 = 0;
    }

    *v4-- = v7;
    LODWORD(v3) = v3 - 1;
  }

  while (v3);
  v8 = (*(result + 112) + 2 * v1 - 2);
  do
  {
    v9 = *v8;
    v6 = v9 >= v1;
    v10 = v9 - v1;
    if (!v6)
    {
      v10 = 0;
    }

    *v8-- = v10;
    --v2;
  }

  while (v2);
  return result;
}

int deflateTune(z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain)
{
  result = sub_2999C05A0(strm);
  if (result)
  {
    return -2;
  }

  state = strm->state;
  *(state + 51) = good_length;
  *(state + 52) = nice_length;
  *(state + 47) = max_chain;
  *(state + 48) = max_lazy;
  return result;
}

uint64_t sub_2999C6F6C(_DWORD *a1, int a2)
{
  if (*(a1 + 3) - 5 <= a1[20])
  {
    v4 = a1[6] - 5;
  }

  else
  {
    v4 = a1[20];
  }

  v5 = *(*a1 + 8);
  while (1)
  {
    v6 = a1[1485] + 42;
    v7 = *a1;
    v8 = *(*a1 + 32);
    if (v8 < v6 >> 3)
    {
      break;
    }

    v9 = v8 - (v6 >> 3);
    v10 = a1[43];
    v11 = a1[38];
    v12 = (v10 - v11);
    v13 = *(v7 + 8);
    v14 = v12 + v13;
    v15 = v12 + v13;
    v16 = v14 >= 0xFFFF ? 0xFFFF : v15;
    v17 = v16 >= v9 ? v9 : v16;
    if (v17 < v4)
    {
      v18 = v17 || a2 == 4;
      v19 = v18 && v17 == v15;
      if (!v19 || a2 == 0)
      {
        break;
      }
    }

    v22 = a2 == 4 && v17 == v15;
    sub_2999C61C4(a1, 0, 0, v22);
    *(*(a1 + 2) + *(a1 + 5) - 4) = v17;
    *(*(a1 + 2) + *(a1 + 5) - 2) = ~v17;
    sub_2999C4B04(*a1);
    if (v10 != v11)
    {
      if (v12 >= v17)
      {
        v12 = v17;
      }

      else
      {
        v12 = v12;
      }

      memcpy(*(*a1 + 24), (*(a1 + 12) + *(a1 + 19)), v12);
      v23 = *a1;
      *(v23 + 24) = *(*a1 + 24) + v12;
      *(v23 + 32) -= v12;
      *(v23 + 40) += v12;
      *(a1 + 19) += v12;
      v17 -= v12;
    }

    if (v17)
    {
      sub_2999C04F0(*a1, *(*a1 + 24), v17);
      v24 = *a1;
      *(v24 + 24) = *(*a1 + 24) + v17;
      *(v24 + 32) -= v17;
      *(v24 + 40) += v17;
    }

    if (v22)
    {
      v25 = 0;
      v7 = *a1;
      goto LABEL_39;
    }
  }

  v25 = 1;
LABEL_39:
  v26 = *(v7 + 8);
  v27 = (v5 - v26);
  if (v5 == v26)
  {
    v28 = a1[43];
    v29 = a1[43];
  }

  else
  {
    v30 = a1[20];
    if (v27 >= v30)
    {
      a1[1482] = 2;
      memcpy(*(a1 + 12), (*v7 - v30), v30);
      v29 = a1[20];
      a1[43] = v29;
      a1[1483] = v29;
    }

    else
    {
      v31 = a1[43];
      if (*(a1 + 13) - v31 <= v27)
      {
        v32 = (v31 - v30);
        a1[43] = v32;
        memcpy(*(a1 + 12), (*(a1 + 12) + v30), v32);
        v33 = a1[1482];
        if (v33 <= 1)
        {
          a1[1482] = v33 + 1;
        }

        LODWORD(v31) = a1[43];
        if (a1[1483] > v31)
        {
          a1[1483] = v31;
        }
      }

      memcpy((*(a1 + 12) + v31), (**a1 - v27), v27);
      v29 = a1[43] + v27;
      a1[43] = v29;
      v34 = a1[1483];
      v35 = a1[20] - v34;
      if (v27 < v35)
      {
        v35 = v27;
      }

      a1[1483] = v35 + v34;
    }

    v28 = v29;
    *(a1 + 19) = v29;
  }

  if (*(a1 + 743) < v28)
  {
    *(a1 + 743) = v28;
  }

  if (!v25)
  {
    return 3;
  }

  if ((a2 | 4) != 4 && !*(*a1 + 8) && *(a1 + 19) == v28)
  {
    return 1;
  }

  v37 = a1[26] - v29;
  if (*(*a1 + 8) > v37)
  {
    v38 = *(a1 + 19);
    v39 = a1[20];
    v40 = v38 < v39;
    v41 = v38 - v39;
    if (!v40)
    {
      *(a1 + 19) = v41;
      v42 = v29 - v39;
      a1[43] = v42;
      memcpy(*(a1 + 12), (*(a1 + 12) + v39), v42);
      v43 = a1[1482];
      if (v43 <= 1)
      {
        a1[1482] = v43 + 1;
      }

      v37 += a1[20];
      v29 = a1[43];
      if (a1[1483] > v29)
      {
        a1[1483] = v29;
      }
    }
  }

  if (v37 >= *(*a1 + 8))
  {
    v37 = *(*a1 + 8);
  }

  if (v37)
  {
    sub_2999C04F0(*a1, (*(a1 + 12) + v29), v37);
    v29 = a1[43] + v37;
    a1[43] = v29;
    v44 = a1[1483];
    v45 = a1[20] - v44;
    if (v37 < v45)
    {
      v45 = v37;
    }

    a1[1483] = v45 + v44;
  }

  v46 = v29;
  if (*(a1 + 743) < v29)
  {
    *(a1 + 743) = v29;
  }

  LODWORD(v47) = 0xFFFF;
  if (*(a1 + 3) - ((a1[1485] + 42) >> 3) < 0xFFFF)
  {
    v47 = *(a1 + 3) - ((a1[1485] + 42) >> 3);
  }

  if (a1[20] >= v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = a1[20];
  }

  v49 = *(a1 + 19);
  v50 = v46 - v49;
  if (v46 - v49 >= v48)
  {
LABEL_90:
    if (v50 >= v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = v50;
    }

    if (a2 == 4)
    {
      v54 = v50 <= v47;
      if (*(*a1 + 8))
      {
        v55 = 0;
      }

      else
      {
        v55 = v54;
      }
    }

    else
    {
      v55 = 0;
    }

    sub_2999C61C4(a1, (*(a1 + 12) + v49), v53, v55);
    *(a1 + 19) += v53;
    sub_2999C4B04(*a1);
    return (2 * v55);
  }

  result = 0;
  v52 = a2 == 4 || v46 != v49;
  if (a2 && v52)
  {
    if (*(*a1 + 8))
    {
      return 0;
    }

    goto LABEL_90;
  }

  return result;
}

uint64_t sub_2999C7428(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  while (1)
  {
    if (!*(a1 + 180))
    {
      sub_2999C00F4(a1);
      if (!*(a1 + 180))
      {
        break;
      }
    }

    *(a1 + 160) = 0;
    v5 = *(*(a1 + 96) + *(a1 + 172));
    v6 = *(a1 + 5888);
    v7 = *(a1 + 5900);
    *(a1 + 5900) = v7 + 1;
    *(v6 + v7) = 0;
    v8 = *(a1 + 5888);
    v9 = *(a1 + 5900);
    *(a1 + 5900) = v9 + 1;
    *(v8 + v9) = 0;
    v10 = *(a1 + 5888);
    v11 = *(a1 + 5900);
    *(a1 + 5900) = v11 + 1;
    *(v10 + v11) = v5;
    ++*(v4 + 4 * v5);
    LODWORD(v10) = *(a1 + 5900);
    LODWORD(v11) = *(a1 + 5904);
    --*(a1 + 180);
    v12 = (*(a1 + 172) + 1);
    *(a1 + 172) = v12;
    if (v10 == v11)
    {
      v13 = *(a1 + 152);
      v14 = v13 < 0 ? 0 : (*(a1 + 96) + v13);
      sub_2999C45B0(a1, v14, v12 - v13, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_2999C4B04(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  *(a1 + 5932) = 0;
  if (a2 != 4)
  {
    if (!*(a1 + 5900))
    {
      return 1;
    }

    v17 = *(a1 + 152);
    v18 = v17 < 0 ? 0 : (*(a1 + 96) + v17);
    sub_2999C45B0(a1, v18, *(a1 + 172) - v17, 0);
    *(a1 + 152) = *(a1 + 172);
    sub_2999C4B04(*a1);
    return *(*a1 + 32) != 0;
  }

  v15 = *(a1 + 152);
  if (v15 < 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (*(a1 + 96) + v15);
  }

  sub_2999C45B0(a1, v16, *(a1 + 172) - v15, 1);
  *(a1 + 152) = *(a1 + 172);
  sub_2999C4B04(*a1);
  if (*(*a1 + 32))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2999C75FC(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  v5 = (a1 + 2504);
  while (1)
  {
    v6 = *(a1 + 180);
    if (v6 >= 0x103)
    {
      *(a1 + 160) = 0;
      v7 = *(a1 + 172);
      if (!*(a1 + 172))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    sub_2999C00F4(a1);
    v6 = *(a1 + 180);
    if (!a2 && v6 < 0x103)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    *(a1 + 160) = 0;
    v7 = *(a1 + 172);
    if (v6 < 3 || !*(a1 + 172))
    {
LABEL_24:
      v18 = *(a1 + 5900);
LABEL_25:
      v19 = *(*(a1 + 96) + v7);
      v20 = *(a1 + 5888);
      *(a1 + 5900) = v18 + 1;
      *(v20 + v18) = 0;
      v21 = *(a1 + 5888);
      v22 = *(a1 + 5900);
      *(a1 + 5900) = v22 + 1;
      *(v21 + v22) = 0;
      v23 = *(a1 + 5888);
      v24 = *(a1 + 5900);
      *(a1 + 5900) = v24 + 1;
      *(v23 + v24) = v19;
      ++*(v4 + 4 * v19);
      v25 = *(a1 + 5900);
      v26 = *(a1 + 5904);
      --*(a1 + 180);
      v27 = *(a1 + 172) + 1;
      *(a1 + 172) = v27;
      goto LABEL_26;
    }

LABEL_10:
    v8 = (*(a1 + 96) + v7);
    v9 = *(v8 - 1);
    if (v9 != *v8 || v9 != v8[1] || v9 != v8[2])
    {
      goto LABEL_24;
    }

    v10 = 0;
    v11 = v8 + 258;
    while (1)
    {
      v12 = &v8[v10];
      if (v9 != v8[v10 + 3])
      {
        v17 = v12 + 3;
        goto LABEL_39;
      }

      if (v9 != v12[4])
      {
        v17 = v8 + v10 + 4;
        goto LABEL_39;
      }

      v13 = &v8[v10];
      if (v9 != v8[v10 + 5])
      {
        v17 = v13 + 5;
        goto LABEL_39;
      }

      if (v9 != v13[6])
      {
        v17 = v8 + v10 + 6;
        goto LABEL_39;
      }

      v14 = &v8[v10];
      if (v9 != v8[v10 + 7])
      {
        v17 = v14 + 7;
        goto LABEL_39;
      }

      if (v9 != v14[8])
      {
        v17 = v8 + v10 + 8;
        goto LABEL_39;
      }

      v15 = &v8[v10];
      if (v9 != v8[v10 + 9])
      {
        break;
      }

      v16 = v10 + 2;
      v10 += 8;
      if (v16 > 0xF9 || v9 != v15[10])
      {
        v17 = v8 + v10 + 2;
        goto LABEL_39;
      }
    }

    v17 = v15 + 9;
LABEL_39:
    v30 = v17 - v11 + 258;
    if (v30 < v6)
    {
      v6 = v30;
    }

    *(a1 + 160) = v6;
    v18 = *(a1 + 5900);
    v31 = v6 >= 3;
    v32 = v6 - 3;
    if (!v31)
    {
      goto LABEL_25;
    }

    v33 = *(a1 + 5888);
    *(a1 + 5900) = v18 + 1;
    *(v33 + v18) = 1;
    v34 = *(a1 + 5888);
    v35 = *(a1 + 5900);
    *(a1 + 5900) = v35 + 1;
    *(v34 + v35) = 0;
    v36 = *(a1 + 5888);
    v37 = *(a1 + 5900);
    *(a1 + 5900) = v37 + 1;
    *(v36 + v37) = v32;
    v38 = v4 + 4 * byte_2999CC2B8[v32];
    ++*(v38 + 1028);
    ++*v5;
    v25 = *(a1 + 5900);
    v26 = *(a1 + 5904);
    LODWORD(v38) = *(a1 + 160);
    *(a1 + 180) -= v38;
    v27 = *(a1 + 172) + v38;
    *(a1 + 172) = v27;
    *(a1 + 160) = 0;
LABEL_26:
    if (v25 == v26)
    {
      v28 = *(a1 + 152);
      v29 = v28 < 0 ? 0 : (*(a1 + 96) + v28);
      sub_2999C45B0(a1, v29, v27 - v28, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_2999C4B04(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  *(a1 + 5932) = 0;
  if (a2 != 4)
  {
    if (!*(a1 + 5900))
    {
      return 1;
    }

    v41 = *(a1 + 152);
    v42 = v41 < 0 ? 0 : (*(a1 + 96) + v41);
    sub_2999C45B0(a1, v42, *(a1 + 172) - v41, 0);
    *(a1 + 152) = *(a1 + 172);
    sub_2999C4B04(*a1);
    return *(*a1 + 32) != 0;
  }

  v39 = *(a1 + 152);
  if (v39 < 0)
  {
    v40 = 0;
  }

  else
  {
    v40 = (*(a1 + 96) + v39);
  }

  sub_2999C45B0(a1, v40, *(a1 + 172) - v39, 1);
  *(a1 + 152) = *(a1 + 172);
  sub_2999C4B04(*a1);
  if (*(*a1 + 32))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

int deflateCopy(z_streamp dest, z_streamp source)
{
  v4 = sub_2999C05A0(source);
  result = -2;
  if (dest && !v4)
  {
    state = source->state;
    v7 = *&source->msg;
    v9 = *&source->opaque;
    v8 = *&source->adler;
    *&dest->zalloc = *&source->zalloc;
    v10 = *&source->total_in;
    v11 = *&source->avail_out;
    *&dest->next_in = *&source->next_in;
    *&dest->total_in = v10;
    *&dest->opaque = v9;
    *&dest->adler = v8;
    *&dest->avail_out = v11;
    *&dest->msg = v7;
    zalloc = dest->zalloc;
    if (zalloc == sub_2999C9534)
    {
      v13 = malloc_type_malloc(0x1740uLL, 0x1070040A8B75D6AuLL);
    }

    else
    {
      v13 = (zalloc)(dest->opaque, 1, 5952);
    }

    v14 = v13;
    if (v13)
    {
      dest->state = v13;
      memcpy(v13, state, 0x1740uLL);
      *v14 = dest;
      v15 = dest->zalloc;
      if (v15 == sub_2999C9534)
      {
        v16 = malloc_type_malloc(2 * *(v14 + 20), 0x100004077774924uLL);
      }

      else
      {
        v16 = (v15)(dest->opaque, *(v14 + 20), 2);
      }

      *(v14 + 12) = v16;
      v17 = dest->zalloc;
      if (v17 == sub_2999C9534)
      {
        v18 = malloc_type_malloc(2 * *(v14 + 20), 0x1000040BDFB0063uLL);
      }

      else
      {
        v18 = (v17)(dest->opaque, *(v14 + 20), 2);
      }

      *(v14 + 14) = v18;
      v19 = dest->zalloc;
      if (v19 == sub_2999C9534)
      {
        v20 = malloc_type_malloc(2 * *(v14 + 33), 0x1000040BDFB0063uLL);
      }

      else
      {
        v20 = (v19)(dest->opaque, *(v14 + 33), 2);
      }

      *(v14 + 15) = v20;
      v21 = dest->zalloc;
      if (v21 == sub_2999C9534)
      {
        v22 = malloc_type_malloc((4 * *(v14 + 1474)), 0xA936757FuLL);
      }

      else
      {
        v22 = (v21)(dest->opaque, *(v14 + 1474), 4);
      }

      *(v14 + 2) = v22;
      if (*(v14 + 12) && *(v14 + 14) && *(v14 + 15) && v22)
      {
        memcpy(*(v14 + 12), *(state + 12), (2 * *(v14 + 20)));
        memcpy(*(v14 + 14), *(state + 14), 2 * *(v14 + 20));
        memcpy(*(v14 + 15), *(state + 15), 2 * *(v14 + 33));
        memcpy(*(v14 + 2), *(state + 2), *(v14 + 6));
        result = 0;
        v23 = *(v14 + 2);
        *(v14 + 4) = v23 + *(state + 4) - *(state + 2);
        *(v14 + 736) = v23 + *(v14 + 1474);
        *(v14 + 363) = v14 + 212;
        *(v14 + 366) = v14 + 2504;
        *(v14 + 369) = v14 + 2748;
        return result;
      }

      deflateEnd(dest);
    }

    return -4;
  }

  return result;
}

int inflateBackInit_(z_streamp strm, int windowBits, unsigned __int8 *window, const char *version, int stream_size)
{
  if (!version)
  {
    return -6;
  }

  result = -6;
  if (stream_size == 112 && *version == 49)
  {
    result = -2;
    if ((windowBits - 16) >= 0xFFFFFFF8 && strm && window)
    {
      strm->msg = 0;
      zalloc = strm->zalloc;
      if (!zalloc)
      {
        zalloc = sub_2999C9534;
        strm->zalloc = sub_2999C9534;
        strm->opaque = 0;
      }

      if (!strm->zfree)
      {
        strm->zfree = sub_2999C38A4;
      }

      if (zalloc == sub_2999C9534)
      {
        v10 = malloc_type_malloc(0x1BF8uLL, 0x10700402F6B96DDuLL);
      }

      else
      {
        v10 = (zalloc)(strm->opaque, 1, 7160);
      }

      v11 = v10;
      if (v10)
      {
        result = 0;
        strm->state = v11;
        *(v11 + 7) = 0x8000;
        *(v11 + 14) = windowBits;
        *(v11 + 15) = 1 << windowBits;
        *(v11 + 8) = 0;
        *(v11 + 9) = window;
      }

      else
      {
        return -4;
      }
    }
  }

  return result;
}

int inflateBack(z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc)
{
  if (!strm)
  {
    return -2;
  }

  v5 = strm;
  state = strm->state;
  if (!state)
  {
    return -2;
  }

  v9 = in_desc;
  strm->msg = 0;
  *(state + 1) = 16191;
  *(state + 16) = 0;
  __src = strm->next_in;
  if (__src)
  {
    avail_in = strm->avail_in;
  }

  else
  {
    avail_in = 0;
  }

  v12 = 0;
  LODWORD(v13) = 0;
  next_out = *(state + 9);
  v15 = state + 152;
  v117 = state + 1368;
  LODWORD(v16) = *(state + 15);
  v17 = 16191;
  v119 = state + 152;
LABEL_8:
  if (v17 <= 16195)
  {
    if (v17 == 16191)
    {
      if (!*(state + 3))
      {
        if (v13 <= 2)
        {
          if (!avail_in)
          {
            v51 = (in)(v9, &__src);
            v15 = state + 152;
            avail_in = v51;
            if (!v51)
            {
LABEL_225:
              __src = 0;
              goto LABEL_226;
            }
          }

          v52 = __src;
          __src = __src + 1;
          --avail_in;
          v12 += *v52 << v13;
          LODWORD(v13) = v13 | 8;
        }

        *(state + 3) = v12 & 1;
        v53 = (v12 >> 1) & 3;
        if (v53 > 1)
        {
          if (v53 == 2)
          {
            v54 = 16196;
          }

          else
          {
            v5->msg = "invalid block type";
            v54 = 16209;
          }
        }

        else if (v53)
        {
          *(state + 13) = &unk_2999CAE2E;
          *(state + 14) = &unk_2999CB62E;
          v54 = 16200;
          *(state + 15) = 0x500000009;
        }

        else
        {
          v54 = 16193;
        }

        *(state + 2) = v54;
        v12 >>= 3;
        LODWORD(v13) = v13 - 3;
        goto LABEL_197;
      }

      v12 >>= v13 & 7;
      LODWORD(v13) = v13 & 0xFFFFFFF8;
      v31 = 16208;
    }

    else
    {
      if (v17 != 16193)
      {
        goto LABEL_236;
      }

      v12 >>= v13 & 7;
      if (v13 > 0x1F)
      {
        LODWORD(v13) = v13 & 0xFFFFFFF8;
      }

      else
      {
        v19 = v13 & 0x18;
        do
        {
          if (!avail_in)
          {
            v20 = (in)(v9, &__src);
            v15 = state + 152;
            avail_in = v20;
            if (!v20)
            {
              goto LABEL_225;
            }
          }

          --avail_in;
          v21 = __src;
          __src = __src + 1;
          v12 += *v21 << v19;
          v22 = v19 + 8;
          v29 = v19 >= 0x18;
          v19 += 8;
        }

        while (!v29);
        LODWORD(v13) = v22;
      }

      if ((v12 ^ (v12 >> 16)) == 0xFFFF)
      {
        v40 = v12;
        v39 = v12 == 0;
        while (1)
        {
          *(state + 23) = v40;
          if (v39)
          {
            break;
          }

          if (!avail_in)
          {
            avail_in = (in)(v9, &__src);
            if (!avail_in)
            {
              goto LABEL_225;
            }
          }

          if (!v16)
          {
            next_out = *(state + 9);
            v16 = *(state + 15);
            *(state + 16) = v16;
            if ((out)(out_desc, next_out, v16))
            {
              goto LABEL_226;
            }
          }

          if (v40 >= avail_in)
          {
            v41 = avail_in;
          }

          else
          {
            v41 = v40;
          }

          if (v41 >= v16)
          {
            v42 = v16;
          }

          else
          {
            v42 = v41;
          }

          memcpy(next_out, __src, v42);
          avail_in -= v42;
          __src = __src + v42;
          LODWORD(v16) = v16 - v42;
          next_out += v42;
          v43 = *(state + 23);
          v40 = v43 - v42;
          v39 = v43 == v42;
          v9 = in_desc;
        }

        v12 = 0;
        LODWORD(v13) = 0;
        v50 = 16191;
LABEL_87:
        *(state + 2) = v50;
LABEL_88:
        v15 = state + 152;
        goto LABEL_197;
      }

      v30 = "invalid stored block lengths";
LABEL_64:
      v5->msg = v30;
      v31 = 16209;
    }

    *(state + 2) = v31;
    goto LABEL_197;
  }

  if (v17 <= 16199)
  {
    if (v17 != 16196)
    {
      goto LABEL_236;
    }

    if (v13 <= 0xD)
    {
      v13 = v13;
      do
      {
        if (!avail_in)
        {
          v23 = (in)(v9, &__src);
          v15 = state + 152;
          avail_in = v23;
          if (!v23)
          {
            goto LABEL_225;
          }
        }

        --avail_in;
        v24 = __src;
        __src = __src + 1;
        v12 += *v24 << v13;
        v25 = v13 + 8;
        v29 = v13 >= 6;
        v13 += 8;
      }

      while (!v29);
      LODWORD(v13) = v25;
    }

    v26 = v12 & 0x1F;
    v27 = (v12 >> 5) & 0x1F;
    *(state + 33) = v26 + 257;
    *(state + 34) = v27 + 1;
    v28 = ((v12 >> 10) & 0xF) + 4;
    *(state + 32) = v28;
    v12 >>= 14;
    LODWORD(v13) = v13 - 14;
    v29 = v26 > 0x1D || v27 >= 0x1E;
    if (v29)
    {
      v30 = "too many length or distance symbols";
      goto LABEL_64;
    }

    v44 = 0;
    *(state + 35) = 0;
    do
    {
      if (v13 <= 2)
      {
        if (!avail_in)
        {
          avail_in = (in)(v9, &__src);
          if (!avail_in)
          {
            goto LABEL_225;
          }

          v44 = *(state + 35);
          v28 = *(state + 32);
          v15 = state + 152;
        }

        v45 = __src;
        __src = __src + 1;
        --avail_in;
        v12 += *v45 << v13;
        LODWORD(v13) = v13 | 8;
      }

      *(v15 + 2 * word_2999CAE08[v44]) = v12 & 7;
      v46 = (v44 + 1);
      *(state + 35) = v46;
      v12 >>= 3;
      LODWORD(v13) = v13 - 3;
      ++v44;
    }

    while (v46 < v28);
    if (v46 <= 0x12)
    {
      v47 = &word_2999CAE08[v46];
      v48 = v46 + 1;
      do
      {
        v49 = *v47++;
        *(v15 + 2 * v49) = 0;
        v39 = v48++ == 19;
      }

      while (!v39);
      *(state + 35) = 19;
    }

    *(state + 18) = v117;
    *(state + 13) = v117;
    *(state + 30) = 7;
    if (sub_2999C1F38(0, v15, 0x13u, state + 18, state + 30, state + 396, 0))
    {
      v5->msg = "invalid code lengths set";
      v50 = 16209;
      goto LABEL_87;
    }

    *(state + 35) = 0;
    if (!(*(state + 34) + *(state + 33)))
    {
      v15 = state + 152;
LABEL_119:
      if (*(state + 2) == 16209)
      {
        goto LABEL_197;
      }

      if (!*(state + 332))
      {
        v5->msg = "invalid code -- missing end-of-block";
        *(state + 2) = 16209;
        goto LABEL_197;
      }

      if (sub_2999C2488(v5))
      {
        goto LABEL_88;
      }

      *(state + 2) = 16200;
LABEL_11:
      if (avail_in >= 0x19 && v16 > 0x142)
      {
        v5->next_out = next_out;
        v5->avail_out = v16;
        v5->next_in = __src;
        v5->avail_in = avail_in;
        *(state + 10) = v12;
        *(state + 22) = v13;
        v18 = *(state + 15);
        if (*(state + 16) < v18)
        {
          *(state + 16) = v18 - v16;
        }

        sub_2999C32A4(v5, v18);
        next_out = v5->next_out;
        LODWORD(v16) = v5->avail_out;
        __src = v5->next_in;
        avail_in = v5->avail_in;
        v12 = *(state + 10);
        LODWORD(v13) = *(state + 22);
        goto LABEL_88;
      }

      v114 = out;
      v115 = out_desc;
      v32 = *(state + 13);
      v33 = *(state + 30);
      v34 = v32 + 4 * (v12 & ~(-1 << v33));
      v35 = *(v34 + 1);
      v36 = *v34 - (v35 & (v35 << 27 >> 31) & 0xF);
      if (v13 >= v36)
      {
        v38 = (*v34 - (v35 & (v35 << 27 >> 31) & 0xF));
      }

      else
      {
        v13 = v13;
        do
        {
          if (!avail_in)
          {
            avail_in = (in)(v9, &__src);
            if (!avail_in)
            {
              goto LABEL_225;
            }

            v32 = *(state + 13);
            v33 = *(state + 30);
          }

          --avail_in;
          v37 = __src;
          __src = __src + 1;
          v12 += *v37 << v13;
          v13 += 8;
          v34 = v32 + 4 * (v12 & ~(-1 << v33));
          v35 = *(v34 + 1);
          v36 = *v34 - (v35 & (v35 << 27 >> 31) & 0xF);
        }

        while (v13 < v36);
        v38 = (*v34 - (v35 & (v35 << 27 >> 31) & 0xF));
      }

      v55 = *(v34 + 2);
      if ((v35 - 1) <= 0xE)
      {
        v56 = -1 << (v38 + v35);
        v57 = v32 + 4 * (((v12 & ~v56) >> v38) + v55);
        v35 = *(v57 + 1);
        v58 = *v57 - (v35 & ((8 * v35) >> 7) & 0xF);
        if (v38 + v58 > v13)
        {
          v111 = v5;
          v59 = ~v56;
          v13 = v13;
          while (1)
          {
            if (!avail_in)
            {
              avail_in = (in)(in_desc, &__src);
              if (!avail_in)
              {
LABEL_231:
                __src = 0;
                result = -5;
                v5 = v111;
                goto LABEL_227;
              }

              v32 = *(state + 13);
            }

            --avail_in;
            v60 = __src;
            __src = __src + 1;
            v12 += *v60 << v13;
            v13 += 8;
            v57 = v32 + 4 * (((v12 & v59) >> v38) + v55);
            v35 = *(v57 + 1);
            v58 = *v57 - (v35 & ((8 * v35) >> 7) & 0xF);
            if (v13 >= v38 + v58)
            {
              v5 = v111;
              break;
            }
          }
        }

        v55 = *(v57 + 2);
        v12 >>= v36;
        LODWORD(v13) = v13 - v38;
        v36 = v58;
      }

      v15 = state + 152;
      v12 >>= v36;
      *(state + 23) = v55;
      LODWORD(v13) = v13 - v36;
      out = v114;
      if (v35)
      {
        if ((v35 & 0x20) != 0)
        {
          v64 = 16191;
        }

        else
        {
          if ((v35 & 0x40) != 0)
          {
            v85 = "invalid literal/length code";
          }

          else
          {
            v61 = v35 & 0xF;
            *(state + 25) = v61;
            if ((v35 & 0xF) != 0)
            {
              if (v13 < v61)
              {
                do
                {
                  if (!avail_in)
                  {
                    avail_in = (in)(in_desc, &__src);
                    if (!avail_in)
                    {
                      goto LABEL_225;
                    }

                    v61 = *(state + 25);
                  }

                  --avail_in;
                  v62 = __src;
                  __src = __src + 1;
                  v12 += *v62 << v13;
                  LODWORD(v13) = v13 + 8;
                }

                while (v13 < v61);
                v55 = *(state + 23);
              }

              *(state + 23) = v55 + (v12 & ~(-1 << v61));
              v12 >>= v61;
              LODWORD(v13) = v13 - v61;
            }

            v86 = *(state + 14);
            v87 = *(state + 31);
            v88 = v86 + 4 * (v12 & ~(-1 << v87));
            LODWORD(v89) = *(v88 + 1);
            v90 = *v88 - (v89 & ((v89 << 27) >> 31) & 0xF);
            if (v13 >= v90)
            {
              v91 = (*v88 - (v89 & ((v89 << 27) >> 31) & 0xF));
            }

            else
            {
              v13 = v13;
              do
              {
                if (!avail_in)
                {
                  avail_in = (in)(in_desc, &__src);
                  if (!avail_in)
                  {
                    goto LABEL_225;
                  }

                  v86 = *(state + 14);
                  v87 = *(state + 31);
                }

                --avail_in;
                v89 = __src;
                __src = __src + 1;
                v12 += *v89 << v13;
                v13 += 8;
                v88 = v86 + 4 * (v12 & ~(-1 << v87));
                LODWORD(v89) = *(v88 + 1);
                v90 = *v88 - (v89 & ((v89 << 27) >> 31) & 0xF);
              }

              while (v13 < v90);
              v91 = (*v88 - (v89 & ((v89 << 27) >> 31) & 0xF));
            }

            v92 = *(v88 + 2);
            if (v89 <= 0xF)
            {
              v93 = -1 << (v91 + v89);
              v94 = v86 + 4 * (((v12 & ~v93) >> v91) + v92);
              LOBYTE(v89) = *(v94 + 1);
              v95 = *v94 - (v89 & ((8 * v89) >> 7) & 0xF);
              if (v91 + v95 > v13)
              {
                v111 = v5;
                v96 = ~v93;
                v13 = v13;
                do
                {
                  if (!avail_in)
                  {
                    avail_in = (in)(in_desc, &__src);
                    if (!avail_in)
                    {
                      goto LABEL_231;
                    }

                    v86 = *(state + 14);
                  }

                  --avail_in;
                  v89 = __src;
                  __src = __src + 1;
                  v12 += *v89 << v13;
                  v13 += 8;
                  v94 = v86 + 4 * (((v12 & v96) >> v91) + v92);
                  LOBYTE(v89) = *(v94 + 1);
                  v95 = *v94 - (v89 & ((8 * v89) >> 7) & 0xF);
                }

                while (v13 < v91 + v95);
                v5 = v111;
              }

              v92 = *(v94 + 2);
              v12 >>= v90;
              LODWORD(v13) = v13 - v91;
              v90 = v95;
            }

            v15 = state + 152;
            v12 >>= v90;
            LODWORD(v13) = v13 - v90;
            out = v114;
            if ((v89 & 0x40) == 0)
            {
              v97 = v89 & 0xF;
              *(state + 24) = v92;
              *(state + 25) = v97;
              out_desc = v115;
              if ((v89 & 0xF) != 0)
              {
                if (v13 < v97)
                {
                  do
                  {
                    if (!avail_in)
                    {
                      avail_in = (in)(in_desc, &__src);
                      if (!avail_in)
                      {
                        goto LABEL_225;
                      }

                      v97 = *(state + 25);
                      v15 = state + 152;
                    }

                    --avail_in;
                    v98 = __src;
                    __src = __src + 1;
                    v12 += *v98 << v13;
                    LODWORD(v13) = v13 + 8;
                  }

                  while (v13 < v97);
                  v92 = *(state + 24);
                }

                v92 += v12 & ~(-1 << v97);
                *(state + 24) = v92;
                v12 >>= v97;
                LODWORD(v13) = v13 - v97;
              }

              v99 = *(state + 15);
              if (*(state + 16) >= v99)
              {
                v100 = 0;
              }

              else
              {
                v100 = v16;
              }

              if (v92 > v99 - v100)
              {
                v101 = "invalid distance too far back";
                goto LABEL_207;
              }

              do
              {
                v102 = *(state + 15);
                if (v16)
                {
                  v103 = *(state + 15);
                  LODWORD(v102) = v16;
                }

                else
                {
                  next_out = *(state + 9);
                  *(state + 16) = v102;
                  if ((v114)(v115, next_out, v102))
                  {
                    goto LABEL_226;
                  }

                  v103 = *(state + 15);
                  v15 = state + 152;
                }

                v105 = *(state + 23);
                v104 = *(state + 24);
                v106 = (v103 - v104);
                if (v106 >= v102)
                {
                  v107 = 0;
                }

                else
                {
                  v107 = v106;
                }

                if (v106 >= v102)
                {
                  v106 = -v104;
                }

                v108 = v102 - v107;
                if (v102 - v107 >= v105)
                {
                  v108 = *(state + 23);
                }

                *(state + 23) = v105 - v108;
                v109 = v108;
                do
                {
                  *next_out = next_out[v106];
                  ++next_out;
                  --v109;
                }

                while (v109);
                LODWORD(v16) = v102 - v108;
              }

              while (*(state + 23));
              goto LABEL_196;
            }

            v85 = "invalid distance code";
          }

          v5->msg = v85;
          v64 = 16209;
        }

        *(state + 2) = v64;
        out_desc = v115;
        goto LABEL_196;
      }

      out_desc = v115;
      if (v16)
      {
LABEL_115:
        *next_out++ = v55;
        LODWORD(v16) = v16 - 1;
        v63 = 16200;
        goto LABEL_116;
      }

      next_out = *(state + 9);
      v16 = *(state + 15);
      *(state + 16) = v16;
      if (!(v114)(v115, next_out, v16))
      {
        v55 = *(state + 23);
        v15 = state + 152;
        goto LABEL_115;
      }

LABEL_226:
      result = -5;
      goto LABEL_227;
    }

    v116 = out_desc;
    while (1)
    {
      v65 = *(state + 13);
      v66 = *(state + 30);
      v67 = v65 + 4 * (v12 & ~(-1 << v66));
      v68 = *v67 - (*(v67 + 1) & ((8 * *(v67 + 1)) >> 7) & 0xF);
      if (v13 >= v68)
      {
        v70 = (*v67 - (*(v67 + 1) & ((8 * *(v67 + 1)) >> 7) & 0xF));
      }

      else
      {
        v13 = v13;
        do
        {
          if (!avail_in)
          {
            avail_in = (in)(in_desc, &__src);
            if (!avail_in)
            {
              goto LABEL_225;
            }

            v65 = *(state + 13);
            v66 = *(state + 30);
          }

          --avail_in;
          v69 = __src;
          __src = __src + 1;
          v12 += *v69 << v13;
          v13 += 8;
          v67 = v65 + 4 * (v12 & ~(-1 << v66));
          v68 = *v67 - (*(v67 + 1) & ((8 * *(v67 + 1)) >> 7) & 0xF);
        }

        while (v13 < v68);
        v70 = (*v67 - (*(v67 + 1) & ((8 * *(v67 + 1)) >> 7) & 0xF));
      }

      v71 = *(v67 + 2);
      v15 = state + 152;
      if (v71 > 0xF)
      {
        if (v71 == 16)
        {
          v79 = (v70 + 2);
          if (v13 < v79)
          {
            v113 = v70;
            v13 = v13;
            do
            {
              if (!avail_in)
              {
                v80 = (in)(in_desc, &__src);
                v15 = state + 152;
                avail_in = v80;
                if (!v80)
                {
                  goto LABEL_225;
                }
              }

              --avail_in;
              v81 = __src;
              __src = __src + 1;
              v12 += *v81 << v13;
              v13 += 8;
            }

            while (v13 < v79);
            v70 = v113;
          }

          v12 >>= v68;
          LODWORD(v13) = v13 - v70;
          v82 = *(state + 35);
          out_desc = v116;
          if (!v82)
          {
            v101 = "invalid bit length repeat";
LABEL_207:
            v5->msg = v101;
            v63 = 16209;
LABEL_116:
            *(state + 2) = v63;
LABEL_196:
            v9 = in_desc;
LABEL_197:
            v17 = *(state + 2);
            goto LABEL_8;
          }

          v77 = *(v15 + 2 * (v82 - 1));
          v78 = (v12 & 3) + 3;
          v12 >>= 2;
          LODWORD(v13) = v13 - 2;
        }

        else
        {
          v112 = v70;
          if (v71 == 17)
          {
            v75 = (v70 + 3);
            if (v13 < v75)
            {
              v13 = v13;
              do
              {
                if (!avail_in)
                {
                  avail_in = (in)(in_desc, &__src);
                  if (!avail_in)
                  {
                    goto LABEL_225;
                  }
                }

                --avail_in;
                v76 = __src;
                __src = __src + 1;
                v12 += *v76 << v13;
                v13 += 8;
              }

              while (v13 < v75);
            }

            v77 = 0;
            v78 = ((v12 >> v68) & 7) + 3;
            v12 = v12 >> v68 >> 3;
            LODWORD(v13) = v13 - v112 - 3;
          }

          else
          {
            v83 = (v70 + 7);
            if (v13 < v83)
            {
              v13 = v13;
              do
              {
                if (!avail_in)
                {
                  avail_in = (in)(in_desc, &__src);
                  if (!avail_in)
                  {
                    goto LABEL_225;
                  }
                }

                --avail_in;
                v84 = __src;
                __src = __src + 1;
                v12 += *v84 << v13;
                v13 += 8;
              }

              while (v13 < v83);
            }

            v77 = 0;
            v78 = ((v12 >> v68) & 0x7F) + 11;
            v12 = v12 >> v68 >> 7;
            LODWORD(v13) = v13 - v112 - 7;
          }

          out_desc = v116;
        }

        v9 = in_desc;
        v73 = *(state + 35);
        v74 = *(state + 34) + *(state + 33);
        if (v73 + v78 > v74)
        {
          v5->msg = "invalid bit length repeat";
          *(state + 2) = 16209;
          goto LABEL_88;
        }

        v15 = state + 152;
        do
        {
          *&v119[2 * v73++] = v77;
          --v78;
        }

        while (v78);
        *(state + 35) = v73;
      }

      else
      {
        v12 >>= v68;
        LODWORD(v13) = v13 - v70;
        v72 = *(state + 35);
        v73 = v72 + 1;
        *(state + 35) = v72 + 1;
        *&v119[2 * v72] = v71;
        v74 = *(state + 34) + *(state + 33);
        v9 = in_desc;
      }

      if (v73 >= v74)
      {
        goto LABEL_119;
      }
    }
  }

  switch(v17)
  {
    case 16200:
      goto LABEL_11;
    case 16208:
      v110 = *(state + 15);
      if (v110 <= v16)
      {
        result = 1;
      }

      else if ((out)(out_desc, *(state + 9), v110 - v16))
      {
        result = -5;
      }

      else
      {
        result = 1;
      }

      break;
    case 16209:
      result = -3;
      break;
    default:
LABEL_236:
      result = -2;
      break;
  }

LABEL_227:
  v5->next_in = __src;
  v5->avail_in = avail_in;
  return result;
}