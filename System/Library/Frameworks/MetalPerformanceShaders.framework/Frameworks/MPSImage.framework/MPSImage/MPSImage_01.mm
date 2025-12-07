void *sub_23995D1B4(uint64_t a1, double *a2)
{
  *(a1 + 312) = 1;
  *(a1 + 336) = 3;
  *(a1 + 340) = 3;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0;
  if (a2)
  {
    v3 = a2[1];
    v4 = *a2;
    *(a1 + 288) = v4;
    v5 = v3;
    *(a1 + 292) = v5;
    v6 = a2[2];
    *(a1 + 296) = v6;
  }

  *(a1 + 360) = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0;
  *(a1 + 344) = 0;
  *(a1 + 376) = malloc_type_malloc(0x70uLL, 0x100004052888210uLL);
  *(a1 + 308) = 12;
  *(a1 + 368) = malloc_type_malloc(8uLL, 0x100004052888210uLL);
  *(a1 + 304) = 2;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0;
  *(a1 + 348) = 0;
  *(a1 + 356) = 0;
  *(a1 + 352) = 0;
  if (*(a1 + 316) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8;
    do
    {
      *(*(a1 + 368) + 4 * v8) = (v9 - 8);
      v10 = 4 * (v9 - 8);
      *(*(a1 + 376) + v10) = 1065353216;
      *(*(a1 + 376) + v10 + 8) = 0;
      *(*(a1 + 376) + v10 + 12) = 0;
      v11 = 4 * (v9 - 4);
      *(*(a1 + 376) + v11) = 0;
      *(*(a1 + 376) + v11 + 4) = 1065353216;
      *(*(a1 + 376) + v11 + 12) = 0;
      v12 = 4 * v9;
      *(*(a1 + 376) + v12) = 0;
      *(*(a1 + 376) + v12 + 4) = 0;
      *(*(a1 + 376) + v12 + 8) = 1065353216;
      v8 += 2;
      ++v7;
      v9 += 12;
    }

    while (v7 < *(a1 + 316));
  }

  v13 = *(a1 + 360);
  *(v13 + 8) = 0x100000001;
  *v13 = 0;
  result = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  *(a1 + 400) = result;
  return result;
}

void sub_23995D4C4(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v5 = *(a1 + 312);
  if (v5 < 1)
  {
    goto LABEL_81;
  }

  v6 = 0;
  v7 = *(a1 + 376) + 4 * *(a1 + 308) + 32;
  v8 = 0x7FFFFFFF;
  do
  {
    while (1)
    {
      v9 = v8;
      a2 = a1 + 360;
      v10 = *(a1 + 360);
      v11 = (v10 + 16 * v6);
      v8 = *(v11 + 2);
      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_4;
      }

      v13 = v6 - 1;
      v14 = *(v10 + 16 * v13);
      v15 = v5 - 1;
      if (v5 < 1)
      {
        break;
      }

      v16 = 0;
      do
      {
        while (v16 == v13)
        {
          v16 = v13 + 1;
          if (v16 >= v5)
          {
            goto LABEL_17;
          }
        }

        v17 = *(v10 + 16 * v16++);
      }

      while (v16 < v5 && v14 != v17);
      if (v14 != v17)
      {
        break;
      }

LABEL_3:
      v8 = 1;
LABEL_4:
      if (++v6 >= v5)
      {
        goto LABEL_26;
      }
    }

LABEL_17:
    v18 = *(a1 + 368);
    v19 = (v18 + 4 * v14);
    v20 = v19[1];
    if ((v20 & 2) != 0)
    {
      goto LABEL_3;
    }

    v21 = (v18 + 4 * *v11);
    v22 = v21[1];
    if ((v22 & 4) != 0)
    {
      goto LABEL_3;
    }

    v23 = *(a1 + 376);
    v24 = v23 + 4 * *v19;
    a2 = v23 + 4 * *v21;
    v25 = *(v24 + 8);
    v26 = *(v24 + 12);
    v27 = *(v24 + 24);
    v28 = *(v24 + 28);
    v29 = *(a2 + 12) + *a2 * v26 + *(a2 + 4) * v28;
    v30 = *(v24 + 40);
    v31 = *(v24 + 44);
    v32 = *(a2 + 28) + v26 * *(a2 + 16) + v28 * *(a2 + 20) + v31 * *(a2 + 24);
    v33 = *(a2 + 44) + v26 * *(a2 + 32) + v28 * *(a2 + 36) + v31 * *(a2 + 40);
    *&v29 = v29 + *(a2 + 8) * v31;
    *(v24 + 12) = LODWORD(v29);
    *&v29 = v32;
    *(v24 + 28) = LODWORD(v29);
    *&v29 = v33;
    *(v24 + 44) = LODWORD(v29);
    LODWORD(v32) = *(v24 + 4);
    v34 = *v24;
    LODWORD(v28) = *(v24 + 20);
    v35 = *(v24 + 16);
    v36 = v35 * *(a2 + 4) + v34 * *a2;
    v37 = v35 * *(a2 + 20) + v34 * *(a2 + 16);
    v38 = v35 * *(a2 + 36) + v34 * *(a2 + 32);
    v39 = *(v24 + 36);
    v40 = *(v24 + 32);
    v41 = v37 + v40 * *(a2 + 24);
    v42 = v38 + v40 * *(a2 + 40);
    *&v40 = v36 + v40 * *(a2 + 8);
    *v24 = LODWORD(v40);
    *&v40 = v41;
    *(v24 + 16) = LODWORD(v40);
    *&v42 = v42;
    *(v24 + 32) = LODWORD(v42);
    v43 = *&v32;
    v44 = *&v28;
    v45 = *&v28 * *(a2 + 4) + v43 * *a2;
    v46 = *&v28 * *(a2 + 20) + v43 * *(a2 + 16) + v39 * *(a2 + 24);
    v47 = v44 * *(a2 + 36) + v43 * *(a2 + 32) + v39 * *(a2 + 40);
    *&v44 = v45 + v39 * *(a2 + 8);
    *(v24 + 4) = LODWORD(v44);
    *&v44 = v46;
    *(v24 + 20) = LODWORD(v44);
    *&v47 = v47;
    *(v24 + 36) = LODWORD(v47);
    v48 = v25;
    v49 = v27;
    v50 = v30;
    v51 = v49 * *(a2 + 4) + v48 * *a2 + v50 * *(a2 + 8);
    v52 = v49 * *(a2 + 20) + v48 * *(a2 + 16) + v50 * *(a2 + 24);
    a3.n128_f64[0] = v49 * *(a2 + 36) + v48 * *(a2 + 32) + v50 * *(a2 + 40);
    *&v48 = v51;
    *(v24 + 8) = LODWORD(v48);
    *&v48 = v52;
    *(v24 + 24) = LODWORD(v48);
    a3.n128_f32[0] = a3.n128_f64[0];
    *(v24 + 40) = a3.n128_u32[0];
    v19[1] = v22 & 2 | v20 & 4;
    if (v6 < v15)
    {
      v53 = v15 - v6;
      v54 = 16 * v6;
      do
      {
        v55 = (*(a1 + 360) + v54);
        a3 = v55[1];
        *v55 = a3;
        v54 += 16;
        --v53;
      }

      while (v53);
    }

    v56 = 8 * v6;
    v57 = 8 * v5;
    if (v56 < v57)
    {
      v58 = v57 - v56;
      v59 = v7 + 4 * v56;
      do
      {
        a3 = *v59;
        v60 = *(v59 + 16);
        *(v59 - 32) = *v59;
        *(v59 - 16) = v60;
        v59 += 32;
        v58 -= 8;
      }

      while (v58);
    }

    v8 = *(*(a1 + 360) + 16 * v13 + 8);
    v5 = v15;
    v6 = v13 + 1;
  }

  while (v13 + 1 < v15);
LABEL_26:
  *(a1 + 312) = v5;
  if (v5 < 1)
  {
LABEL_81:
    v65 = 0;
    v64 = 0;
    v62 = 0;
    v111 = 64;
    v112 = 8;
    v113 = 128;
    v114 = 32;
    goto LABEL_94;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  a2 = 0xFFFFFFFFLL;
  a3.n128_u64[0] = 0x40C8E06B3C4FCDACLL;
  v66 = 1;
  v67 = 1;
  v68 = 1;
  v69 = 1;
  v70 = 1;
  do
  {
    v71 = 0;
    v72 = (*(a1 + 360) + 16 * v61);
    v73 = *(v72 + 2);
    if (v61 >= 8)
    {
      v74 = 0;
    }

    else
    {
      v74 = (v73 - 1) << (4 * v61);
    }

    if (v73 > 3)
    {
      if ((v73 - 4) >= 6)
      {
        goto LABEL_29;
      }

LABEL_35:
      v71 = *(*(a1 + 368) + 4 * *v72 + 20);
      goto LABEL_29;
    }

    if (v73 == 1)
    {
      v71 = *(*(a1 + 368) + 4 * *v72 + 4);
      goto LABEL_29;
    }

    if (v73 == 2)
    {
      goto LABEL_35;
    }

    if (v73 != 3)
    {
      goto LABEL_29;
    }

    v75 = *(v72 + 3);
    if (v75 < 1)
    {
      v80 = 0;
      v71 = 0;
    }

    else
    {
      v76 = *(a1 + 368);
      v77 = (v76 + 4 * *v72);
      v71 = v77[2];
      v78 = *(v77 + 2);
      if (v78 == 6)
      {
        v79 = (*(a1 + 376) + 4 * *v77);
        v70 &= (v79[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v79, xmmword_239988C60))));
      }

      v67 &= (v71 & 1) == 0;
      v66 &= v71;
      v80 = 1 << v78;
      if (v75 != 1)
      {
        v81 = (v76 + 4 * v72[1]);
        v82 = v81[2];
        v83 = *(v81 + 2);
        if (v83 == 6)
        {
          v84 = (*(a1 + 376) + 4 * *v81);
          v70 &= (v84[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v84, xmmword_239988C60))));
        }

        v71 |= v82;
        v67 &= (v81[2] & 1) == 0;
        v66 &= v82;
        v80 |= 1 << v83;
        if (v75 != 2)
        {
          v85 = (v76 + 4 * v72[2]);
          v86 = v85[2];
          v87 = *(v85 + 2);
          if (v87 == 6)
          {
            v88 = (*(a1 + 376) + 4 * *v85);
            v70 &= (v88[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v88, xmmword_239988C60))));
          }

          v71 |= v86;
          v67 &= (v85[2] & 1) == 0;
          v66 &= v86;
          v80 |= 1 << v87;
          if (v75 != 3)
          {
            v89 = (v76 + 4 * v72[3]);
            v90 = v89[2];
            v71 |= v90;
            v67 &= (v90 & 1) == 0;
            v66 &= v90;
            v91 = *(v89 + 2);
            v80 |= 1 << v91;
            if (v91 == 6)
            {
              v92 = (*(a1 + 376) + 4 * *v89);
              v70 &= (v92[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v92, xmmword_239988C60))));
            }
          }
        }
      }
    }

    v63 |= v80;
    v93 = (v75 == a2) & v69;
    v94 = (a2 & 0x80000000) != 0;
    if ((a2 & 0x80000000) != 0)
    {
      a2 = v75;
    }

    else
    {
      a2 = a2;
    }

    if (!v94)
    {
      v69 = v93;
    }

    if (v75 >= 4)
    {
      v95 = 4;
    }

    else
    {
      v95 = *(v72 + 3);
    }

    if (v64 <= v95)
    {
      v64 = v95;
    }

    if (((v80 >> 6) & ((v80 >> 6) - 1)) != 0)
    {
LABEL_79:
      v68 = 0;
      goto LABEL_29;
    }

    if (v75 < 2)
    {
      goto LABEL_29;
    }

    v96 = 1;
    do
    {
      if (v96 > 3)
      {
LABEL_70:
        v106 = 1;
        if (++v96 >= v75)
        {
          break;
        }

        continue;
      }

      v97 = *(a1 + 368);
      v98 = (v97 + 4 * *v72);
      v99 = (v97 + 4 * v72[v96]);
      if (*(v99 + 2) == 5)
      {
        v100 = *(v99 + 3);
        if (v100 != *(v98 + 3))
        {
          goto LABEL_79;
        }

        if (!*(v99 + 3))
        {
          goto LABEL_70;
        }

        v101 = *v98;
        v102 = *v99;
        v103 = *(a1 + 376);
        v104 = v103 + 4 * v101;
        v105 = v103 + 4 * v102;
      }

      else
      {
        v107 = *v98;
        v108 = *v99;
        v109 = *(a1 + 376);
        v104 = v109 + 4 * v107;
        v105 = v109 + 4 * v108;
        v100 = 9;
      }

      v110 = 0;
      do
      {
        v106 = *(v104 + 4 * v110) == *(v105 + 4 * v110);
        ++v110;
      }

      while (v110 < v100 && v106);
      if (++v96 >= v75)
      {
        break;
      }
    }

    while (v106);
    if (!v106)
    {
      goto LABEL_79;
    }

LABEL_29:
    v65 |= v74;
    v62 |= (v71 & 2 | (v71 >> 2) & 1) << v61++;
  }

  while (v61 != v5);
  if (v68)
  {
    v115 = 64;
  }

  else
  {
    v115 = 0;
  }

  v111 = v115 | (v63 << 8);
  if (v69)
  {
    v112 = 8;
  }

  else
  {
    v112 = 0;
  }

  if (v70)
  {
    v113 = 128;
  }

  else
  {
    v113 = 0;
  }

  if (v66)
  {
    v114 = 32;
    goto LABEL_94;
  }

  v114 = 0;
  v116 = 0;
  if (v67)
  {
LABEL_94:
    v116 = 16;
  }

  *(a1 + 348) = v62;
  *(a1 + 352) = v116 | v111 | v112 | v64 | v113 | v114;
  *(a1 + 356) = v65;
  v117 = *(a1 + 308);
  *(a1 + 416) = v117;
  *(a1 + 408) = objc_msgSend_newBufferWithBytes_length_options_(v3, a2, *(a1 + 376), 32 * v5 + 4 * v117 + 32, 0, a3.n128_f64[0]);
  v132 = objc_alloc_init(MEMORY[0x277CD7058]);
  objc_msgSend_setPixelFormat_(v132, v118, 110);
  objc_msgSend_setWidth_(v132, v119, 1);
  objc_msgSend_setHeight_(v132, v120, 1);
  objc_msgSend_setDepth_(v132, v121, 1);
  v122 = (*(**(a1 + *MEMORY[0x277CD7350]) + 24))(*(a1 + *MEMORY[0x277CD7350]));
  objc_msgSend_setStorageMode_(v132, v123, v122);
  objc_msgSend_setUsage_(v132, v124, 1);
  objc_msgSend_setTextureType_(v132, v125, 0);
  **(a1 + 400) = objc_msgSend_newTextureWithDescriptor_(v3, v126, v132);
  objc_msgSend_setTextureType_(v132, v127, 2);
  *(*(a1 + 400) + 8) = objc_msgSend_newTextureWithDescriptor_(v3, v128, v132);
  objc_msgSend_setTextureType_(v132, v129, 7);
  *(*(a1 + 400) + 16) = objc_msgSend_newTextureWithDescriptor_(v3, v130, v132);
  *(*(a1 + 400) + 24) = objc_msgSend_newTextureWithDescriptor_(v3, v131, v132);
}

void *sub_23995E98C(void *a1, const char *a2, uint64_t *a3, _BYTE *a4)
{
  *a4 = 0;
  *a3 = 0;
  if (objc_msgSend_decodeBoolForKey_(a1, a2, a2))
  {
    v20 = 0;
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithFormat_(v8, v9, @"%@%@", a2, @".length");
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_msgSend_initWithFormat_(v11, v12, @"%@%@", a2, @".data");
    v15 = objc_msgSend_decodeInt64ForKey_(a1, v14, v10);
    v17 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v16, v13, &v20);

    if (v17 && 4 * v15 == v20)
    {
      result = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
      if (result)
      {
        v19 = result;
        MPSCopyToFromNetworkByteOrder32();
        result = v19;
        *a4 = 1;
        *a3 = v15;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_23995EACC(void *a1, void *a2, const char *a3, uint64_t *a4, _BYTE *a5)
{
  if (objc_msgSend_decodeBoolForKey_(a1, a2, a3))
  {
    v10 = sub_23995E98C(a1, a3, a4, a5);
    if (v10)
    {
      v12 = v10;
      v13 = objc_msgSend_newBufferWithBytes_length_options_(a2, v11, v10, 4 * *a4, 0);
      free(v12);
      return v13;
    }
  }

  else
  {
    *a5 = 1;
  }

  return 0;
}

void *sub_23995EB78(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v85 = result;
    if (objc_msgSend_decodeBoolForKey_(a1, v9, a3))
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v12 = objc_msgSend_initWithFormat_(v10, v11, @"%@%@", a3, @".width");
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      v84 = objc_msgSend_initWithFormat_(v13, v14, @"%@%@", a3, @".heigth");
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = objc_msgSend_initWithFormat_(v15, v16, @"%@%@", a3, @".depth");
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = objc_msgSend_initWithFormat_(v18, v19, @"%@%@", a3, @".pixelFormat");
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = objc_msgSend_initWithFormat_(v21, v22, @"%@%@", a3, @".textureType");
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_initWithFormat_(v24, v25, @"%@%@", a3, @".data");
      v27 = objc_alloc_init(MEMORY[0x277CD7058]);
      v29 = objc_msgSend_decodeInt64ForKey_(a1, v28, v20);
      objc_msgSend_setPixelFormat_(v27, v30, v29);
      v32 = objc_msgSend_decodeInt64ForKey_(a1, v31, v12);
      objc_msgSend_setWidth_(v27, v33, v32);
      v35 = objc_msgSend_decodeInt64ForKey_(a1, v34, v84);
      objc_msgSend_setHeight_(v27, v36, v35);
      v38 = objc_msgSend_decodeInt64ForKey_(a1, v37, v17);
      objc_msgSend_setDepth_(v27, v39, v38);
      objc_msgSend_setUsage_(v27, v40, 1);
      v42 = objc_msgSend_decodeInt64ForKey_(a1, v41, v23);
      objc_msgSend_setTextureType_(v27, v43, v42);
      v44 = (*(*v85 + 24))(v85);
      objc_msgSend_setStorageMode_(v27, v45, v44);
      v87 = 0;
      v47 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v46, v26, &v87);

      if (v47 && (v50 = objc_msgSend_width(v27, v48, v49), v53 = v50 * objc_msgSend_height(v27, v51, v52), v56 = objc_msgSend_depth(v27, v54, v55), (v57 = malloc_type_malloc(16 * v53 * v56, 0x100004052888210uLL)) != 0) && (v60 = v57, objc_msgSend_width(v27, v58, v59), objc_msgSend_height(v27, v61, v62), objc_msgSend_depth(v27, v63, v64), MPSCopyToFromNetworkByteOrder32(), (v66 = objc_msgSend_newTextureWithDescriptor_(a2, v65, v27)) != 0))
      {
        v69 = v66;
        memset(v86, 0, 24);
        v86[3] = objc_msgSend_width(v27, v67, v68);
        v86[4] = objc_msgSend_height(v27, v70, v71);
        v86[5] = objc_msgSend_depth(v27, v72, v73);
        v76 = 16 * objc_msgSend_width(v27, v74, v75);
        v79 = objc_msgSend_width(v27, v77, v78);
        v82 = objc_msgSend_height(v27, v80, v81);
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v69, v83, v86, 0, 0, v60, v76, 16 * v79 * v82);

        if (v47 != v60)
        {
          free(v60);
        }

        *a4 = 1;
        return v69;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

void sub_23995F540(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_encodeBool_forKey_(a1, a2, a2 != 0, a3);
  if (a2)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithFormat_(v8, v9, @"%@%@", a3, @".length");
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_msgSend_initWithFormat_(v11, v12, @"%@%@", a3, @".data");
    objc_msgSend_encodeInt64_forKey_(a1, v13, a4, v10);

    v14 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
    if (v14)
    {
      v15 = v14;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(a1, v16, v15, 4 * a4, v17);
      free(v15);
    }
  }
}

void *sub_23995FEE0(void *a1, void *a2)
{
  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v5 = result;
    v6 = objc_alloc_init(MEMORY[0x277CD7058]);
    v9 = objc_msgSend_pixelFormat(a1, v7, v8);
    objc_msgSend_setPixelFormat_(v6, v10, v9);
    v13 = objc_msgSend_width(a1, v11, v12);
    objc_msgSend_setWidth_(v6, v14, v13);
    v17 = objc_msgSend_height(a1, v15, v16);
    objc_msgSend_setHeight_(v6, v18, v17);
    v21 = objc_msgSend_depth(a1, v19, v20);
    objc_msgSend_setDepth_(v6, v22, v21);
    objc_msgSend_setUsage_(v6, v23, 1);
    v26 = objc_msgSend_textureType(a1, v24, v25);
    objc_msgSend_setTextureType_(v6, v27, v26);
    v28 = (*(*v5 + 24))(v5);
    objc_msgSend_setStorageMode_(v6, v29, v28);
    v32 = objc_msgSend_width(a1, v30, v31);
    v35 = v32 * objc_msgSend_height(a1, v33, v34);
    v38 = objc_msgSend_depth(a1, v36, v37);
    v39 = malloc_type_malloc(16 * v35 * v38, 0x100004052888210uLL);
    if (v39)
    {
      v41 = v39;
      v42 = objc_msgSend_newTextureWithDescriptor_(a2, v40, v6);
      if (v42)
      {
        v45 = v42;
        v46 = objc_msgSend_width(v6, v43, v44);
        v49 = objc_msgSend_height(v6, v47, v48);
        v52 = objc_msgSend_depth(v6, v50, v51);
        v55 = 16 * objc_msgSend_width(v6, v53, v54);
        v58 = objc_msgSend_width(v6, v56, v57);
        v61 = objc_msgSend_height(v6, v59, v60);
        memset(v73, 0, 24);
        v73[3] = v46;
        v73[4] = v49;
        v73[5] = v52;
        objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(a1, v62, v41, v55, 16 * v58 * v61, v73, 0, 0);
        v65 = 16 * objc_msgSend_width(v6, v63, v64, 0, 0, 0, v46, v49, v52);
        v68 = objc_msgSend_width(v6, v66, v67);
        v71 = objc_msgSend_height(v6, v69, v70);
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v45, v72, v73, 0, 0, v41, v65, 16 * v68 * v71);

        free(v41);
        return v45;
      }

      free(v41);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_2399606AC()
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 5);
  if (result)
  {
    v1 = result;
    off_27DF85530 = dlsym(result, "CGColorConversionInfoIterateFunctionsWithCallbacks");
    qword_27DF85538 = dlsym(v1, "CGColorMatrixGetMatrix");
    qword_27DF85540 = dlsym(v1, "CGColorTRCGetFunction");
    qword_27DF85548 = dlsym(v1, "CGColorNxMLUTGetLUT");
    qword_27DF85550 = dlsym(v1, "CGColorFunctionGetOptions");
    qword_27DF85558 = dlsym(v1, "CGColorFunctionGetInputRange");
    qword_27DF85560 = dlsym(v1, "CGColorFunctionGetOutputRange");
    result = dlsym(v1, "CGColorFunctionGetProperties");
    qword_27DF85568 = result;
  }

  return result;
}

uint64_t sub_239960784(uint64_t a1, uint64_t a2)
{
  v325 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  v5 = *(a2 + 28);
  v6 = *(a2 + 36);
  v306 = *(a2 + 44);
  v304 = *(a2 + 52);
  v7 = *(a2 + 60);
  v314 = *(a2 + 68);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 424);
  v313 = *(v9 + 440);
  v11 = *(v9 + 432);
  v12 = *(v9 + 472);
  v295 = *(v9 + *MEMORY[0x277CD7350]);
  v296 = v295[2];
  *(v9 + 312) = v2;
  *(v9 + 336) = v3;
  *(v9 + 340) = v4;
  *(v9 + 288) = 0;
  *(v9 + 292) = 0;
  *(v9 + 296) = 0;
  *(v9 + 300) = 0;
  if (v8)
  {
    if (v3 > 0)
    {
      v13 = *v8;
      *(v9 + 288) = v13;
      if (v3 << 32 != 0x100000000)
      {
        v14 = v8[1];
        *(v9 + 292) = v14;
        if (v3 >= 3)
        {
          v15 = v8[2];
          *(v9 + 296) = v15;
          if (v3 << 32 != 0x300000000)
          {
            v16 = v8[3];
            *(v9 + 300) = v16;
          }
        }
      }
    }
  }

  v308 = v10;
  v297 = v12;
  v303 = v11;
  *(v9 + 360) = malloc_type_malloc(16 * v2, 0x1000040451B5BE8uLL);
  *(v9 + 400) = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  v302 = v9;
  *(v9 + 392) = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  v305 = v5;
  v17 = 0;
  if (v5 >= 1)
  {
    v18 = v5;
    v19 = v304;
    do
    {
      v20 = *v19++;
      memset(v316, 0, 36);
      v303(v316, v20);
      if (SLODWORD(v316[0]) <= 5 && LODWORD(v316[0]) >= 5)
      {
        v17 += DWORD1(v316[0]) + 6;
      }

      else
      {
        v17 += 9;
      }

      --v18;
    }

    while (v18);
  }

  v300 = v2 << 32;
  if (v306 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v307 = 0;
    v24 = 0;
    v25 = v302;
    while (1)
    {
      v26 = *(v314 + 8 * v22);
      memset(v316, 0, 36);
      v313(v316, v26);
      if ((LODWORD(v316[0]) - 7) <= 1)
      {
        ++v24;
        v23 += 6;
      }

      else
      {
        switch(LODWORD(v316[0]))
        {
          case 0xB:
            ++v24;
            v23 += *(*(&v316[1] + 12) + 28) + 8;
            break;
          case 0xA:
            ++v24;
            v23 += 17;
            break;
          case 9:
            ++v24;
            v23 += 516;
            break;
          default:
            v27 = HIDWORD(v316[0]);
            if (*(v316 + 12) == 3)
            {
              v27 = 4;
            }

            if (SDWORD1(v316[0]) < 1)
            {
              v29 = 1;
            }

            else
            {
              if (DWORD1(v316[0]) == 1)
              {
                v28 = 0;
                v29 = 1;
                goto LABEL_36;
              }

              v28 = DWORD1(v316[0]) & 0x7FFFFFFE;
              v30 = DWORD1(v316[0]) & 0x7FFFFFFE;
              v31 = 1;
              v32 = 1;
              do
              {
                v31 *= DWORD1(v316[1]);
                v32 *= DWORD1(v316[1]);
                v30 -= 2;
              }

              while (v30);
              v29 = v32 * v31;
              if (v28 != DWORD1(v316[0]))
              {
LABEL_36:
                v33 = DWORD1(v316[0]) - v28;
                do
                {
                  v29 *= DWORD1(v316[1]);
                  --v33;
                }

                while (v33);
              }
            }

            ++v307;
            v23 += v29 * v27;
            break;
        }
      }

      if (++v22 == v306)
      {
        goto LABEL_40;
      }
    }
  }

  v24 = 0;
  v307 = 0;
  v23 = 0;
  v25 = v302;
LABEL_40:
  v34 = v17 + 12 * v6 + v23;
  *(v25 + 376) = malloc_type_malloc(4 * ((v300 >> 29) + v34) + 32, 0x100004052888210uLL);
  *(v25 + 308) = v34;
  *(v25 + 368) = malloc_type_malloc(8 * v6 + 16 * v305 + 24 * v306, 0x100004052888210uLL);
  *(v25 + 304) = (8 * v6 + 16 * v305 + 24 * v306) >> 2;
  *(v25 + 316) = v6;
  *(v25 + 320) = v307;
  *(v25 + 324) = v306;
  *(v25 + 328) = v305;
  *(v25 + 332) = v24;
  v35 = malloc_type_calloc(v306, 8uLL, 0x80040B8603338uLL);
  result = 0;
  *(v25 + 384) = v35;
  if (!*(v25 + 360) || !v35)
  {
    return result;
  }

  if (!*(v25 + 400) || !*(v25 + 392) || !*(v25 + 376) || !*(v25 + 368))
  {
    return 0;
  }

  v37 = v25 + 8;
  if (v6 >= 1)
  {
    LODWORD(v38) = 0;
    v39 = 0;
    v40 = v25 + 16;
    v41 = v297;
    do
    {
      v42 = *v7++;
      memset(v316, 0, 48);
      v308(v316, v42);
      v43 = v39;
      v44 = (*(v37 + 360) + 4 * v39);
      *v44 = v38;
      v44[1] = v297(v42) & 0xF;
      *(*(v40 + 360) + 4 * v38) = v316[0];
      *(*(v40 + 360) + 4 * (v38 + 4)) = v316[1];
      *(*(v40 + 360) + 4 * (v38 + 8)) = v316[2];
      v38 = (v38 + 12);
      v39 = v43 + 2;
      --v6;
    }

    while (v6);
    v45 = v302;
    v46 = v302 + 16;
    if (v306 >= 1)
    {
      goto LABEL_50;
    }

LABEL_211:
    v242 = 0;
    goto LABEL_220;
  }

  v39 = 0;
  v38 = 0;
  v41 = v297;
  v45 = v302;
  v46 = v302 + 16;
  if (v306 < 1)
  {
    goto LABEL_211;
  }

LABEL_50:
  v47 = 0;
  v288 = v45 + 24;
  v286 = &v325;
  __asm { FMOV            V0.2D, #1.0 }

  v287 = _Q0;
  v51 = v38;
  v301 = v37;
  do
  {
    v55 = *(v314 + 8 * v47);
    v56 = v51;
    memset(v315, 0, 36);
    v313(v315, v55);
    v57 = *(v37 + 360) + 4 * v39;
    if (v315[0].i32[0] <= 8)
    {
      if (v315[0].i32[0] == 7 || v315[0].i32[0] == 8)
      {
        *v57 = v51;
        *(v57 + 20) = v41(v55) & 0xF;
        *(v57 + 12) = 0;
        *(v57 + 4) = 0x300000003;
        v52 = *(&v315[1].i64[1] + 4);
        v53 = 4 * v51;
        *(*(v46 + 360) + v53) = *(*(&v315[1].i64[1] + 4) + 4);
        *(*(v46 + 360) + v53 + 4) = *v52;
        v54 = 4 * (v51 + 2);
        *(*(v46 + 360) + v54) = v52[2];
        *(*(v46 + 360) + v54 + 4) = v52[3];
        *(*(v46 + 360) + v54 + 8) = v52[4];
        v51 = (v51 + 6);
        *(*(v46 + 360) + v54 + 12) = v52[5];
LABEL_52:
        v37 = v301;
        goto LABEL_53;
      }

LABEL_64:
      *(v57 + 12) = v315[1].i32[1];
      *(v57 + 4) = vmovn_s64(*(v315 + 4));
      *v57 = v51;
      *(v57 + 20) = v41(v55) & 0xF;
      if (v315[0].i64[0] <= 0)
      {
        v78 = *(&v315[0].u64[1] + 4);
        v79 = *(&v315[0].i64[1] + 4) == 3;
        if (*(&v315[0].i64[1] + 4) == 3)
        {
          v80 = 4;
        }

        else
        {
          v80 = *(&v315[0].u64[1] + 4);
        }

        v324 = xmmword_239988C70;
        v291 = v80;
        v81 = v315[0].i32[0];
        v294 = v51;
        v290 = v39;
        v289 = v47;
        if (v315[0].i32[0])
        {
          goto LABEL_108;
        }

        goto LABEL_73;
      }

      v66 = v315[1].i32[1];
      if (v315[0].i32[1] == 1)
      {
        v67 = 0;
        v68 = 1;
      }

      else
      {
        v67 = v315[0].i32[1] & 0x7FFFFFFE;
        v110 = v315[0].i32[1] & 0x7FFFFFFE;
        v111 = 1;
        v112 = 1;
        do
        {
          v111 *= *(v315[1].i64 + 4);
          v112 *= *(v315[1].i64 + 4);
          v110 -= 2;
        }

        while (v110);
        v68 = v112 * v111;
        if (v67 == v315[0].i32[1])
        {
LABEL_97:
          v78 = *(&v315[0].u64[1] + 4);
          v79 = *(&v315[0].i64[1] + 4) == 3;
          v324 = xmmword_239988C70;
          v114 = v315[0].i32[1] & 0x7FFFFFFF;
          if (v114 > 7)
          {
            v116 = v315[0].i8[4] & 7;
            v115 = v114 - v116;
            v117 = vdupq_n_s32(v315[1].u32[1]);
            v118 = v114 - v116;
            v119 = v286;
            do
            {
              v119[-1] = v117;
              *v119 = v117;
              v119 += 2;
              v118 -= 8;
            }

            while (v118);
            if (!v116)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v115 = 0;
          }

          v120 = v114 - v115;
          v121 = &v324 + v115;
          do
          {
            *v121++ = v66;
            --v120;
          }

          while (v120);
LABEL_104:
          if (v78 == 3)
          {
            v80 = 4;
          }

          else
          {
            v80 = v78;
          }

          v291 = v80 * v68;
          v81 = v315[0].i32[0];
          v294 = v51;
          v290 = v39;
          v289 = v47;
          if (v315[0].i32[0])
          {
LABEL_108:
            v83 = v51;
            if (v81 != 2)
            {
              goto LABEL_177;
            }

            v122 = v324;
            v83 = v51;
            if (v324 < 1)
            {
              goto LABEL_177;
            }

            v123 = DWORD1(v324);
            v83 = v51;
            if (SDWORD1(v324) < 1)
            {
              goto LABEL_177;
            }

            v124 = DWORD2(v324);
            v83 = v51;
            if (SDWORD2(v324) < 1)
            {
              goto LABEL_177;
            }

            v125 = HIDWORD(v324);
            v83 = v51;
            if (SHIDWORD(v324) < 1)
            {
              goto LABEL_177;
            }

            if (!v78)
            {
              v83 = (v51 + v324 * v80 * DWORD1(v324) * DWORD2(v324) * HIDWORD(v324));
              goto LABEL_177;
            }

            v126 = *(&v315[1].i64[1] + 4);
            v127 = 4 * v51;
            v128 = 4 * v80;
            v129 = 0;
            if (v79)
            {
              v130 = 0;
              v131 = 4;
              if (v80 > 4)
              {
                v131 = v80;
              }

              v132 = v131 - 3;
              v133 = v127 + 12;
              v134 = v128 * v324;
              v135 = v134 * DWORD1(v324);
              v94 = 1;
              LODWORD(v83) = v51;
              do
              {
                v299 = v83;
                v136 = 0;
                v310 = v133;
                v137 = v133;
                do
                {
                  v138 = 0;
                  v139 = v137;
                  do
                  {
                    v140 = 0;
                    v141 = v139;
                    do
                    {
                      v142 = *(v126 + 4 * v130);
                      v143 = 4 * (v129 + (v136 + (v138 + v140 * v124) * v123) * v122) * v80;
                      *(*(v46 + 360) + v127 + v143) = v142;
                      v144 = *(v126 + 4 + 4 * v130);
                      *(*(v46 + 360) + v127 + v143 + 4) = v144;
                      v145 = *(v126 + 8 + 4 * v130);
                      v146 = v130;
                      *(*(v46 + 360) + v127 + v143 + 8) = v145;
                      v147 = v141;
                      v148 = v132;
                      do
                      {
                        *(*(v46 + 360) + v147) = 0;
                        v147 += 4;
                        --v148;
                      }

                      while (v148);
                      v150 = v142 <= 1.0 && v142 >= 0.0;
                      v152 = v144 <= 1.0 && v144 >= 0.0;
                      v154 = v145 <= 1.0 && v145 >= 0.0;
                      v130 = v146 + 3;
                      v94 &= v154 && v152 && v150;
                      ++v140;
                      v141 += v135 * v124;
                    }

                    while (v140 != v125);
                    ++v138;
                    v139 += v135;
                  }

                  while (v138 != v124);
                  ++v136;
                  v137 += v134;
                }

                while (v136 != v123);
                v83 = (v299 + v123 * v80 * v124 * v125);
                ++v129;
                v133 = v310 + 4 * v80;
                v56 = v294;
              }

              while (v129 != v122);
            }

            else
            {
              LODWORD(v167) = 0;
              v168 = v128 * v324 * DWORD1(v324);
              v94 = 1;
              LODWORD(v83) = v51;
              do
              {
                v169 = 0;
                v170 = v127;
                do
                {
                  v171 = 0;
                  v172 = v170;
                  do
                  {
                    v173 = 0;
                    v174 = v172;
                    do
                    {
                      v167 = v167;
                      v175 = v174;
                      v176 = v78;
                      do
                      {
                        v177 = *(v126 + 4 * v167++);
                        *(*(v46 + 360) + v175) = v177;
                        v179 = v177 <= 1.0 && v177 >= 0.0;
                        v94 &= v179;
                        v175 += 4;
                        --v176;
                      }

                      while (v176);
                      ++v173;
                      v174 += v168 * v124;
                    }

                    while (v173 != v125);
                    ++v171;
                    v172 += v168;
                  }

                  while (v171 != v124);
                  ++v169;
                  v170 += v128 * v122;
                }

                while (v169 != v123);
                v83 = (v83 + v123 * v80 * v124 * v125);
                ++v129;
                v127 += v128;
              }

              while (v129 != v122);
            }

            goto LABEL_175;
          }

LABEL_73:
          v82 = v324;
          v83 = v51;
          if (v324 < 1)
          {
            goto LABEL_177;
          }

          v83 = v51;
          v309 = DWORD1(v324);
          if (SDWORD1(v324) < 1)
          {
            goto LABEL_177;
          }

          v84 = DWORD2(v324);
          v83 = v51;
          if (SDWORD2(v324) < 1)
          {
            goto LABEL_177;
          }

          v85 = HIDWORD(v324);
          v83 = v51;
          if (SHIDWORD(v324) < 1)
          {
            goto LABEL_177;
          }

          if (!v78)
          {
            v83 = (v51 + v324 * v80 * DWORD1(v324) * DWORD2(v324) * HIDWORD(v324));
            goto LABEL_177;
          }

          v86 = *(&v315[1].i64[1] + 4);
          v293 = DWORD1(v324) * v80 * DWORD2(v324) * HIDWORD(v324);
          v87 = 4 * v51;
          v88 = 0;
          if (v79)
          {
            v89 = 0;
            v90 = 4;
            if (v80 > 4)
            {
              v90 = v80;
            }

            v91 = v90 - 3;
            v92 = v87 + 12;
            v93 = 4 * v80 * v324;
            v94 = 1;
            LODWORD(v83) = v51;
            do
            {
              v298 = v83;
              v95 = 0;
              v292 = v92;
              do
              {
                v96 = 0;
                v97 = v92;
                do
                {
                  v98 = 0;
                  v99 = v97;
                  do
                  {
                    v100 = *(v86 + 2 * v89);
                    v101 = vcvts_n_f32_u32(v100, 8uLL) + (v100 >> 8);
                    v102 = 4 * (v88 + (v95 + (v96 + v98 * v84) * v309) * v82) * v80;
                    *(*(v46 + 360) + v87 + v102) = v101;
                    v103 = *(v86 + 2 + 2 * v89);
                    v104 = vcvts_n_f32_u32(v103, 8uLL) + (v103 >> 8);
                    *(*(v46 + 360) + v87 + v102 + 4) = v104;
                    v105 = *(v86 + 4 + 2 * v89);
                    v106 = v89;
                    v107 = vcvts_n_f32_u32(v105, 8uLL) + (v105 >> 8);
                    *(*(v46 + 360) + v87 + v102 + 8) = v107;
                    v108 = v99;
                    v109 = v91;
                    do
                    {
                      *(*(v46 + 360) + v108) = 0;
                      v108 += 4;
                      --v109;
                    }

                    while (v109);
                    v89 = v106 + 3;
                    v94 &= fmaxf(fmaxf(v107, v104), v101) <= 1.0;
                    ++v98;
                    v99 += v93 * v309 * v84;
                  }

                  while (v98 != v85);
                  ++v96;
                  v97 += v93 * v309;
                }

                while (v96 != v84);
                ++v95;
                v92 += v93;
              }

              while (v95 != v309);
              v83 = (v298 + v293);
              ++v88;
              v92 = v292 + 4 * v80;
              v56 = v294;
            }

            while (v88 != v82);
          }

          else
          {
            LODWORD(v155) = 0;
            v156 = 4 * v80 * v324;
            v157 = v156 * SDWORD1(v324);
            v94 = 1;
            LODWORD(v83) = v51;
            do
            {
              v158 = 0;
              v159 = v87;
              do
              {
                v160 = 0;
                v161 = v159;
                do
                {
                  v162 = 0;
                  v163 = v161;
                  do
                  {
                    v155 = v155;
                    v164 = v163;
                    v165 = v78;
                    do
                    {
                      v166 = vcvts_n_f32_u32(*(v86 + 2 * v155), 8uLL) + HIBYTE(*(v86 + 2 * v155));
                      *(*(v46 + 360) + v164) = v166;
                      ++v155;
                      v94 &= v166 <= 1.0;
                      v164 += 4;
                      --v165;
                    }

                    while (v165);
                    ++v162;
                    v163 += v157 * v84;
                  }

                  while (v162 != v85);
                  ++v160;
                  v161 += v157;
                }

                while (v160 != v84);
                ++v158;
                v159 += v156;
              }

              while (v158 != v309);
              v83 = (v83 + v293);
              ++v88;
              v87 += 4 * v80;
            }

            while (v88 != v82);
          }

LABEL_175:
          if ((v94 & 1) == 0)
          {
            v51 = v83;
            v180 = 0;
            v181 = 115;
            v41 = v297;
LABEL_178:
            v182 = 65;
            if (v180)
            {
              v182 = 60;
            }

            v183 = 25;
            if (v180)
            {
              v183 = 20;
            }

            if (v78 == 1)
            {
              v181 = v183;
            }

            if (v78 == 2)
            {
              v184 = v182;
            }

            else
            {
              v184 = v181;
            }

            v185 = objc_alloc_init(MEMORY[0x277CD7058]);
            objc_msgSend_setPixelFormat_(v185, v186, v184);
            objc_msgSend_setWidth_(v185, v187, *(v315[1].i64 + 4));
            objc_msgSend_setHeight_(v185, v188, *(v315[1].i64 + 4));
            objc_msgSend_setDepth_(v185, v189, *(v315[1].i64 + 4));
            v190 = (*(*v295 + 24))(v295);
            objc_msgSend_setStorageMode_(v185, v191, v190);
            objc_msgSend_setUsage_(v185, v192, 1);
            result = malloc_type_malloc(2 * v291, 0x1000040BDFB0063uLL);
            if (!result)
            {
              return result;
            }

            v194 = result;
            if (v180)
            {
              if (v291 >= 1)
              {
                v195 = v291 & 0x7FFFFFFF;
                v196 = 4 * v56;
                v197 = result;
                do
                {
                  *v197++ = llroundf(*(*(v46 + 360) + v196) * 65535.0);
                  v196 += 4;
                  --v195;
                }

                while (v195);
              }

              v198 = 0;
              v199 = *(v315[0].i64 + 4);
              v39 = v290;
              if (*(v315[0].i64 + 4) <= 2)
              {
                goto LABEL_193;
              }
            }

            else
            {
              MPSConvertFloatToHalf();
              v198 = 0;
              v199 = *(v315[0].i64 + 4);
              v39 = v290;
              if (*(v315[0].i64 + 4) <= 2)
              {
LABEL_193:
                if (v199 != 1)
                {
                  if (v199 != 2)
                  {
                    goto LABEL_206;
                  }

                  objc_msgSend_setDepth_(v185, v193, 1);
                  objc_msgSend_setTextureType_(v185, v200, 2);
                  v198 = objc_msgSend_newTextureWithDescriptor_(v296, v201, v185);
                  v204 = objc_msgSend_width(v185, v202, v203);
                  v207 = objc_msgSend_height(v185, v205, v206);
                  if (!v198)
                  {
                    goto LABEL_206;
                  }

                  memset(v316, 0, 24);
                  *(&v316[1] + 1) = v204;
                  *&v316[2] = v207;
                  *(&v316[2] + 1) = 1;
                  goto LABEL_205;
                }

                objc_msgSend_setHeight_(v185, v193, 1);
                objc_msgSend_setDepth_(v185, v231, 1);
                objc_msgSend_setTextureType_(v185, v232, 0);
                v198 = objc_msgSend_newTextureWithDescriptor_(v296, v233, v185);
                v236 = objc_msgSend_width(v185, v234, v235);
                if (v198)
                {
                  memset(v316, 0, 24);
                  *(&v316[1] + 1) = v236;
                  v316[2] = vdupq_n_s64(1uLL);
LABEL_205:
                  v237 = objc_msgSend_width(v185, v208, v209, v286);
                  objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v198, v238, v316, 0, v194, 2 * v80 * v237);
                }

LABEL_206:

                free(v194);
                *(*(v288 + 360) + 8 * v289) = v198;
                v47 = v289;
                goto LABEL_52;
              }
            }

            if (v199 != 3)
            {
              if (v199 != 4)
              {
                goto LABEL_206;
              }

              objc_msgSend_setDepth_(v185, v193, *(v315[1].i64 + 4) * *(v315[1].i64 + 4));
            }

            objc_msgSend_setTextureType_(v185, v193, 7, v286);
            v198 = objc_msgSend_newTextureWithDescriptor_(v296, v210, v185);
            v213 = objc_msgSend_width(v185, v211, v212);
            v311 = objc_msgSend_height(v185, v214, v215);
            v218 = objc_msgSend_depth(v185, v216, v217);
            if (v198)
            {
              memset(v316, 0, 24);
              *(&v316[1] + 1) = v213;
              *&v316[2] = v311;
              *(&v316[2] + 1) = v218;
              v221 = v39;
              v222 = 2 * v80;
              v223 = objc_msgSend_width(v185, v219, v220) * 2 * v80;
              v312 = objc_msgSend_width(v185, v224, v225);
              v228 = objc_msgSend_height(v185, v226, v227);
              v229 = v312 * v222;
              v39 = v221;
              objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v198, v230, v316, 0, 0, v194, v223, v229 * v228);
            }

            goto LABEL_206;
          }

          v41 = v297;
LABEL_177:
          v51 = v83;
          v180 = 1;
          v181 = 110;
          goto LABEL_178;
        }
      }

      v113 = v315[0].i32[1] - v67;
      do
      {
        v68 *= *(v315[1].i64 + 4);
        --v113;
      }

      while (v113);
      goto LABEL_97;
    }

    if (v315[0].i32[0] == 9)
    {
      *v57 = v51;
      *(v57 + 20) = v41(v55) & 0xF;
      *(v57 + 12) = 0;
      *(v57 + 4) = 0x300000003;
      v69 = *(&v315[1].i64[1] + 4);
      v70 = 4 * v51;
      *(*(v46 + 360) + v70) = *(*(&v315[1].i64[1] + 4) + 56);
      *(*(v46 + 360) + v70 + 4) = *(v69 + 60);
      *(*(v46 + 360) + v70 + 8) = *(v69 + 64);
      *(*(v46 + 360) + 4 * (v51 + 3)) = *(v69 + 68);
      v71 = *(v46 + 360) + 4 * (v51 + 4);
      v72 = *(v69 + 28);
      v73 = vcvtq_f64_f32(*v69);
      v316[2] = vdivq_f64(v287, v73);
      v316[3] = v73;
      v316[4] = vcvtq_f64_f32(*(v69 + 8));
      v317 = *(v69 + 16);
      v74 = *(v69 + 24);
      v73.f64[0] = (*(v69 + 20) - v74);
      v318 = v73.f64[0];
      v319 = 1.0 / v73.f64[0];
      v320 = v74;
      v75 = vcvtq_f64_f32(*(v69 + 36));
      *v316 = v75.f64[0];
      *(v316 + 1) = 1.0 - v75.f64[0];
      *&v316[1] = (v72 * 3.0) - (v75.f64[0] + 2.0);
      *(&v316[1] + 1) = v75.f64[0] + 1.0 - (v72 + v72);
      v321 = v75;
      v322 = 0;
      v323 = 0;
      sub_239963ED8(v316, v71, 0.0, 14.6484375, 2.145214, 12.5032235, 14.6484375);
      sub_239963ED8(v316, v71 + 1024, 937.5, 141.601562, 20.7370687, 120.864494, 141.601562);
      v51 = (v51 + 516);
      goto LABEL_52;
    }

    if (v315[0].i32[0] == 10)
    {
      *v57 = v51;
      *(v57 + 20) = v41(v55) & 0xF;
      *(v57 + 12) = 0;
      *(v57 + 4) = 0x300000003;
      v76 = *(&v315[1].i64[1] + 4);
      v77 = 4 * v51;
      *(*(v46 + 360) + v77) = **(&v315[1].i64[1] + 4);
      *(*(v46 + 360) + v77 + 4) = v76[1];
      *(*(v46 + 360) + v77 + 8) = v76[2];
      *(*(v46 + 360) + v77 + 12) = v76[3];
      *(*(v46 + 360) + v77 + 16) = v76[4];
      *(*(v46 + 360) + v77 + 20) = v76[5];
      *(*(v46 + 360) + v77 + 24) = v76[6];
      *(*(v46 + 360) + v77 + 28) = v76[7];
      *(*(v46 + 360) + v77 + 32) = v76[8];
      *(*(v46 + 360) + v77 + 36) = v76[9];
      *(*(v46 + 360) + v77 + 40) = v76[10];
      *(*(v46 + 360) + v77 + 44) = v76[11];
      *(*(v46 + 360) + v77 + 48) = v76[12];
      *(*(v46 + 360) + v77 + 52) = v76[13];
      *(*(v46 + 360) + v77 + 56) = v76[14];
      *(*(v46 + 360) + v77 + 60) = v76[15];
      v51 = (v51 + 17);
      *(*(v46 + 360) + v77 + 64) = v76[16];
      goto LABEL_52;
    }

    if (v315[0].i32[0] != 11)
    {
      goto LABEL_64;
    }

    *v57 = v51;
    *(v57 + 20) = v41(v55) & 0xF;
    *(v57 + 12) = 0;
    *(v57 + 4) = 0x300000003;
    v58 = *(&v315[1].i64[1] + 4);
    v59 = 4 * v51;
    *(*(v46 + 360) + v59) = **(&v315[1].i64[1] + 4);
    *(*(v46 + 360) + v59 + 4) = *(v58 + 4);
    v60 = v51 + 2;
    v61 = 4 * v60;
    *(*(v46 + 360) + v61) = *(v58 + 8);
    *(*(v46 + 360) + v61 + 4) = *(v58 + 12);
    *(*(v46 + 360) + v61 + 8) = *(v58 + 16);
    *(*(v46 + 360) + v61 + 12) = *(v58 + 20);
    *(*(v46 + 360) + 4 * (v60 + 4)) = *(v58 + 24);
    v62 = *(v58 + 28);
    *(*(v46 + 360) + 4 * (v51 + 7)) = v62;
    v51 = (v51 + 8);
    if (!v62)
    {
      goto LABEL_52;
    }

    v63 = (v58 + 36);
    v64 = 4 * v51;
    v51 = (v56 + v62 + 8);
    v37 = v301;
    do
    {
      v65 = *v63++;
      *(*(v46 + 360) + v64) = v65;
      v64 += 4;
      --v62;
    }

    while (v62);
LABEL_53:
    v39 += 6;
    ++v47;
  }

  while (v47 != v306);
  v239 = *(v288 + 360);
  v240 = v306;
  if (v306 > 7)
  {
    v241 = v306 & 0x7FFFFFFFFFFFFFF8;
    v243 = v239 + 2;
    v244 = 0uLL;
    v245 = v306 & 0x7FFFFFFFFFFFFFF8;
    v246 = 0uLL;
    v45 = v302;
    do
    {
      v247 = v243[-2];
      v248 = v243[-1];
      v249 = *v243;
      v250 = v243[1];
      v243 += 4;
      v244 = vsubq_s32(v244, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v247), vceqzq_s64(v248))));
      v246 = vsubq_s32(v246, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v249), vceqzq_s64(v250))));
      v245 -= 8;
    }

    while (v245);
    v242 = vaddvq_s32(vaddq_s32(v246, v244));
    v240 = v306;
    if (v306 != v241)
    {
      goto LABEL_215;
    }
  }

  else
  {
    v241 = 0;
    v242 = 0;
    v45 = v302;
LABEL_215:
    v251 = v240 - v241;
    v252 = &v239->i64[v241];
    do
    {
      if (*v252++)
      {
        ++v242;
      }

      --v251;
    }

    while (v251);
  }

  LODWORD(v38) = v51;
LABEL_220:
  result = v242 >= v307;
  if (v305 >= 1 && v242 >= v307)
  {
    v254 = v37;
    v255 = 0;
    v256 = v45 + 32;
    do
    {
      *(*(v45 + 392) + 8 * v255++) = 0;
    }

    while (v305 != v255);
    v257 = 0;
    v258 = v45 + 56;
    do
    {
      v268 = v304[v257];
      memset(v316, 0, 36);
      v303(v316, v268);
      v269 = *(v254 + 360) + 4 * v39;
      *v269 = v38;
      *(v269 + 4) = v316[0];
      v270 = v297(v268);
      *(v269 + 8) = v270 & 0xF;
      if (SLODWORD(v316[0]) < 6 && LODWORD(v316[0]) > 4)
      {
        *(v258 + 288) = 1;
        v273 = WORD2(v316[0]);
        *(v269 + 6) = WORD2(v316[0]);
        v274 = *(&v316[1] + 1);
        v275 = v273 - 1;
        v276 = 1.0 / v275;
        v277 = v39;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(&v316[1] + 4))))))
        {
          v279 = *(&v316[1] + 3);
          v278 = *(&v316[1] + 2);
          v280 = *&v316[2];
        }

        else
        {
          v280 = **(v316 + 12);
          v279 = v276 * (*(*(v316 + 12) + 4) - **(v316 + 12));
          v278 = *(*(v316 + 12) + 4 * v275);
          v274 = v276 * (v278 - *(*(v316 + 12) + 4 * v273 - 8));
          *(v269 + 8) = v270 & 0xE;
        }

        v281 = 4 * v38;
        *(*(v46 + 360) + v281) = v280 - (v276 * v279);
        v282 = v38 + 2;
        *(*(v46 + 360) + v281 + 4) = v280;
        if (v273)
        {
          v283 = 0;
          v284 = 4 * v282;
          v282 = v38 + v273 + 2;
          do
          {
            *(*(v46 + 360) + v284) = *(*(v316 + 12) + v283);
            v284 += 4;
            v283 += 4;
          }

          while (4 * v273 != v283);
        }

        v285 = 4 * v282;
        *(*(v46 + 360) + v285) = v278 + v274;
        *(*(v46 + 360) + v285 + 4) = v278 + (v276 * (v274 * v273));
        *(*(v256 + 360) + 8 * v257) = objc_msgSend_newBufferWithBytes_length_options_(v296, v271, *(v46 + 360) + 4 * v38, 4 * v273 + 16, 0, v286);
        if (!*(*(v256 + 360) + 8 * v257))
        {
          return 0;
        }

        LODWORD(v38) = v282 + 2;
        v39 = v277;
      }

      else
      {
        if (LODWORD(v316[0]))
        {
          v259 = HIDWORD(v316[0]);
          v260 = *(v316 + 2);
          if (LODWORD(v316[0]) > 2)
          {
            v262 = *(&v316[1] + 1);
            if (LODWORD(v316[0]) == 3)
            {
              v263 = 0.0;
            }

            else
            {
              v263 = *(&v316[1] + 2);
            }

            if (LODWORD(v316[0]) == 3)
            {
              v264 = 0.0;
            }

            else
            {
              v264 = *(&v316[1] + 3);
            }

            v261 = v316[1];
          }

          else
          {
            v261 = 0;
            if (LODWORD(v316[0]) == 2)
            {
              v264 = *&v316[1];
            }

            else
            {
              v264 = 0.0;
            }

            if (*(v316 + 2) == 0.0)
            {
              v262 = 0.0;
              v263 = 0.0;
            }

            else
            {
              v263 = 0.0;
              v262 = -*(v316 + 3) / *(v316 + 2);
            }
          }
        }

        else
        {
          v259 = 0;
          v260 = 1.0;
          v261 = 0;
          v262 = 0.0;
          v263 = 0.0;
          v264 = 0.0;
        }

        v265 = v316[2];
        v266 = DWORD1(v316[0]);
        v267 = 4 * v38;
        *(*(v46 + 360) + v267) = v260;
        *(*(v46 + 360) + v267 + 4) = v259;
        *(*(v46 + 360) + v267 + 8) = v261;
        *(*(v46 + 360) + v267 + 12) = v262;
        *(*(v46 + 360) + v267 + 16) = v263;
        *(*(v46 + 360) + v267 + 20) = v264;
        *(*(v46 + 360) + v267 + 24) = v266;
        LODWORD(v38) = v38 + 8;
        *(*(v46 + 360) + v267 + 28) = v265;
        *(v269 + 6) = 0;
      }

      v39 += 4;
      ++v257;
      result = 1;
    }

    while (v257 != v305);
  }

  return result;
}

uint64_t sub_239962204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a1 + 32);
  v8 = *(a2 + 36);
  v9 = *(v7 + 472);
  v10 = *(v7 + 456);
  v11 = *(a2 + 44);
  v12 = *(v7 + 464);
  v13 = *(a2 + 52);
  v14 = *(v7 + 360) + 16 * a3;
  *(v14 + 8) = 3;
  *(v14 + 12) = a4;
  if (a4 < 1)
  {
    v36.i64[0] = 0x80000000800000;
    v36.i64[1] = 0x80000000800000;
    v34 = vnegq_f32(v36);
    v29 = v34;
    v30.i64[0] = 0x80000000800000;
    v30.i64[1] = 0x80000000800000;
    v83 = *(v7 + 376) + 4 * *(v7 + 308);
    v84 = 8 * a3;
    v85 = v84;
    if (a3 <= 0)
    {
LABEL_13:
      v86 = (v85 | 4);
      goto LABEL_14;
    }
  }

  else
  {
    v119 = *(v7 + 308);
    v120 = *(v7 + 376);
    v16 = v7 + 8;
    v17 = *a5;
    v108 = 6 * v11 + 2 * v8;
    v18 = ((4 * *a5) & ~((4 * *a5) >> 31)) + v108;
    *v14 = v18;
    *(*(v16 + 360) + 4 * v18 + 12) = v17;
    v19 = v9(*(v13 + 8 * v17));
    v20 = v10(*(v13 + 8 * *a5));
    v109 = v21;
    v114 = LODWORD(v20);
    *&v22 = v12(*(v13 + 8 * *a5));
    v23.i32[0] = 0;
    v24.i32[0] = v19 & 4;
    v25 = vdupq_lane_s32(*&vceqq_s32(v24, v23), 0);
    v26.i64[0] = 0x80000000800000;
    v26.i64[1] = 0x80000000800000;
    v27 = vnegq_f32(v26);
    v28 = v27;
    v28.i32[0] = v109;
    v29 = vbslq_s8(v25, v27, v28);
    v28.i64[1] = 0x80000000800000;
    v28.i64[0] = v114 | 0x80000000000000;
    v30 = vbslq_s8(v25, v26, v28);
    v25.i32[0] = v19 & 2;
    v31 = vdupq_lane_s32(*&vceqq_s32(v25, v23), 0);
    v32 = v27;
    v32.i32[0] = v33;
    v34 = vbslq_s8(v31, v27, v32);
    v35.i64[1] = 0x80000000800000;
    v35.i64[0] = v22 | 0x80000000000000;
    v36 = vbslq_s8(v31, v26, v35);
    if (a4 == 1 || (v37 = a5[1], v38 = ((4 * v37) & ~((4 * v37) >> 31)) + v108, *(v14 + 2) = v38, *(*(v16 + 360) + 4 * v38 + 12) = v37, v110 = v34, v115 = v29, v100 = v30, v104 = v36, v39 = v9(*(v13 + 8 * v37)), v40 = v10(*(v13 + 8 * a5[1])), v94 = v41, v97 = LODWORD(v40), v42 = v12(*(v13 + 8 * a5[1])), v43.i32[0] = 0, v44.i32[0] = v39 & 4, v45 = vdupq_lane_s32(*&vceqq_s32(v44, v43), 0), v46 = v115, v46.i32[1] = v94, v29 = vbslq_s8(v45, v115, v46), v47 = v100, v47.i32[1] = v97, v30 = vbslq_s8(v45, v100, v47), v45.i32[0] = v39 & 2, v48 = vdupq_lane_s32(*&vceqq_s32(v45, v43), 0), v49 = v110, v49.i32[1] = v50, v34 = vbslq_s8(v48, v110, v49), v51 = v104, *&v51.i32[1] = v42, v36 = vbslq_s8(v48, v104, v51), a4 == 2) || (v52 = a5[2], v53 = ((4 * v52) & ~((4 * v52) >> 31)) + v108, *(v14 + 4) = v53, *(*(v16 + 360) + 4 * v53 + 12) = v52, v111 = v34, v116 = v29, v101 = v30, v105 = v36, v54 = v9(*(v13 + 8 * v52)), v55 = v10(*(v13 + 8 * a5[2])), v95 = v56, v98 = LODWORD(v55), v57 = v12(*(v13 + 8 * a5[2])), v58.i32[0] = 0, v59.i32[0] = v54 & 4, v60 = vdupq_lane_s32(*&vceqq_s32(v59, v58), 0), v61 = v116, v61.i32[2] = v95, v29 = vbslq_s8(v60, v116, v61), v62 = v101, v62.i32[2] = v98, v30 = vbslq_s8(v60, v101, v62), v60.i32[0] = v54 & 2, v63 = vdupq_lane_s32(*&vceqq_s32(v60, v58), 0), v64 = v111, v64.i32[2] = v65, v34 = vbslq_s8(v63, v111, v64), v66 = v105, *&v66.i32[2] = v57, v36 = vbslq_s8(v63, v105, v66), a4 == 3) || (v67 = a5[3], v68 = ((4 * v67) & ~((4 * v67) >> 31)) + v108, *(v14 + 6) = v68, *(*(v16 + 360) + 4 * v68 + 12) = v67, v112 = v34, v117 = v29, v102 = v30, v106 = v36, v69 = v9(*(v13 + 8 * v67)), v70 = v10(*(v13 + 8 * a5[3])), v96 = v71, v99 = LODWORD(v70), v72 = v12(*(v13 + 8 * a5[3])), v73.i32[0] = 0, v74.i32[0] = v69 & 4, v75 = vdupq_lane_s32(*&vceqq_s32(v74, v73), 0), v76 = v117, v76.i32[3] = v96, v29 = vbslq_s8(v75, v117, v76), v77 = v102, v77.i32[3] = v99, v30 = vbslq_s8(v75, v102, v77), v75.i32[0] = v69 & 2, v78 = vdupq_lane_s32(*&vceqq_s32(v75, v73), 0), v79 = v112, v79.i32[3] = v80, v34 = vbslq_s8(v78, v112, v79), v81 = v106, *&v81.i32[3] = v72, v36 = vbslq_s8(v78, v106, v81), (v82 = a4 - 4) == 0))
    {
      v83 = v120 + 4 * v119;
      v84 = 8 * a3;
      v85 = v84;
      if (a3 <= 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v103 = v30;
      v107 = v36;
      v113 = v34;
      v118 = v29;
      v87 = (v14 + 8);
      v88 = a5 + 4;
      do
      {
        v89 = *v88;
        v90 = ((4 * *v88) & ~((4 * *v88) >> 31)) + v108;
        *v87++ = v90;
        *(*(v16 + 360) + 4 * v90 + 12) = v89;
        v9(*(v13 + 8 * v89));
        v10(*(v13 + 8 * *v88));
        v91 = *v88++;
        v12(*(v13 + 8 * v91));
        --v82;
      }

      while (v82);
      v34 = v113;
      v29 = v118;
      v30 = v103;
      v36 = v107;
      v83 = v120 + 4 * v119;
      v84 = 8 * a3;
      v85 = v84;
      if (a3 <= 0)
      {
        goto LABEL_13;
      }
    }
  }

  v86 = v84 | 4;
  v30 = vmaxnmq_f32(v30, *(v83 + 4 * v85));
  v29 = vminnmq_f32(v29, *(v83 + 4 * v86));
LABEL_14:
  v92 = (v83 + 4 * v85);
  *v92 = v30;
  *(v83 + 4 * v86) = v29.i32[0];
  v92[1].i32[1] = v29.i32[1];
  v92[1].i64[1] = vextq_s8(v29, v29, 8uLL).u64[0];
  v92[2] = v36;
  v92[3] = v34;
  return 1;
}

uint64_t sub_239962718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 60);
  v8 = *(v6 + 472);
  v9 = *(v6 + 456);
  v10 = *(v6 + 464);
  v11 = *(v6 + 360) + 16 * a3;
  *(v11 + 8) = 0x100000001;
  *v11 = 2 * a4;
  v12 = v8(*(v7 + 8 * a4));
  v32 = COERCE_INT32X2_T(v9(*(v7 + 8 * a4)));
  v33 = v13;
  v10(*(v7 + 8 * a4));
  v16.i32[0] = 0;
  v17.i32[0] = v12 & 4;
  v18 = vdupq_lane_s32(*&vceqq_s32(v17, v16), 0);
  v19.i64[0] = 0x80000000800000;
  v19.i64[1] = 0x80000000800000;
  v20 = vbslq_s8(v18, v19, vdupq_lane_s32(v32, 0));
  v21 = vdupq_lane_s32(v33, 0);
  v22 = vnegq_f32(v19);
  v23 = vbslq_s8(v18, v22, v21);
  v24 = *(v6 + 376) + 4 * *(v6 + 308);
  v25 = 8 * a3;
  v26 = v25;
  if (a3 <= 0)
  {
    v27 = (v25 | 4);
  }

  else
  {
    v22 = *(v24 + 4 * v25);
    v27 = v25 | 4;
    v21 = *(v24 + 4 * v27);
    v20 = vmaxnmq_f32(v20, v22);
    v23 = vminnmq_f32(v23, v21);
  }

  v22.i32[0] = 0;
  v21.i32[0] = v12 & 2;
  v28 = vdupq_lane_s32(*&vceqq_s32(v21, v22), 0);
  v29.i64[0] = 0x80000000800000;
  v29.i64[1] = 0x80000000800000;
  v30 = v24 + 4 * v26;
  *v30 = v20;
  *(v24 + 4 * v27) = v23.i32[0];
  *(v30 + 20) = v23.i32[1];
  *(v30 + 24) = vextq_s8(v23, v23, 8uLL).u64[0];
  *(v30 + 32) = vbslq_s8(v28, v29, vdupq_lane_s32(v14, 0));
  *(v30 + 48) = vbslq_s8(v28, vnegq_f32(v29), vdupq_lane_s32(v15, 0));
  return 1;
}

uint64_t sub_239962894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 36);
  v8 = *(v6 + 472);
  v9 = *(v6 + 456);
  v10 = *(a2 + 68);
  v11 = *(v6 + 464);
  v12 = *(v6 + 440);
  v13 = *(v10 + 8 * a4);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v12(v43, v13);
  v14 = *(v6 + 360) + 16 * a3;
  *(v14 + 12) = 1;
  if ((LODWORD(v43[0]) - 7) > 4)
  {
    v15 = 2;
  }

  else
  {
    v15 = dword_239988CC0[LODWORD(v43[0]) - 7];
  }

  *(v14 + 8) = v15;
  v16 = 2 * v7 + 6 * a4;
  *v14 = v16;
  *(*(v6 + 368) + 4 * v16 + 16) = a4;
  v39 = COERCE_INT32X2_T(v9(*(v10 + 8 * a4)));
  v40 = v17;
  *&v18 = v11(*(v10 + 8 * a4));
  v41 = v19;
  v42 = v18;
  v20 = *(v6 + 376);
  v21 = *(v6 + 308);
  v23 = v8(*(v10 + 8 * a4));
  v23.i32[0] = 0;
  v24.i32[0] = v22 & 4;
  v25 = vdupq_lane_s32(*&vceqq_s32(v24, v23), 0);
  v26.i64[0] = 0x80000000800000;
  v26.i64[1] = 0x80000000800000;
  v27 = vbslq_s8(v25, v26, vdupq_lane_s32(v39, 0));
  v28 = vdupq_lane_s32(v40, 0);
  v29 = vnegq_f32(v26);
  v30 = vbslq_s8(v25, v29, v28);
  v31 = v20 + 4 * v21;
  v32 = 8 * a3;
  v33 = v32;
  if (a3 <= 0)
  {
    v34 = (v32 | 4);
  }

  else
  {
    v29 = *(v31 + 4 * v32);
    v34 = v32 | 4;
    v28 = *(v31 + 4 * v34);
    v27 = vmaxnmq_f32(v27, v29);
    v30 = vminnmq_f32(v30, v28);
  }

  v29.i32[0] = 0;
  v28.i32[0] = v22 & 2;
  v35 = vdupq_lane_s32(*&vceqq_s32(v28, v29), 0);
  v36.i64[0] = 0x80000000800000;
  v36.i64[1] = 0x80000000800000;
  v37 = v31 + 4 * v33;
  *v37 = v27;
  *(v31 + 4 * v34) = v30.i32[0];
  *(v37 + 20) = v30.i32[1];
  *(v37 + 24) = vextq_s8(v30, v30, 8uLL).u64[0];
  *(v37 + 32) = vbslq_s8(v35, v36, vdupq_lane_s32(v42, 0));
  *(v37 + 48) = vbslq_s8(v35, vnegq_f32(v36), vdupq_lane_s32(v41, 0));
  return 1;
}

uint64_t sub_239962AB8(int *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6 > 9)
    {
      v7 = "<unknown TRC type>";
    }

    else
    {
      v7 = off_278AF6920[v6];
    }

    v11 = *a1;
    qword_27DF85528 = v7;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_initWithFormat_(v12, v13, @"\t\t\tTRC channel:      %d\n\t\t\tOptions:          %u\n\t\t\tTRC Type:         %s\n\t\t\t{\n", a3, a1[2], qword_27DF85528);
    v15 = *(a1 + 2);
    if (v15 > 9)
    {
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_msgSend_initWithFormat_(v26, v27, @"\t\t\t<unknown TRC type>", v28, v29, v30);
    }

    else if (v15 == 5)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_msgSend_initWithFormat_(v24, v25, @"\t\t\t\tTable size:     %d\n\t\t\t\tLUT buffer id:  %d\n\t\t\t}", *(a1 + 3), a1[3], v30);
    }

    else
    {
      v16 = (a2 + 4 * v11);
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_msgSend_initWithFormat_(v17, v18, @"\t\t\t\ta:              %.6f\n\t\t\t\tb:              %.6f\n\t\t\t\tc:              %.6f\n\t\t\t\td:              %.6f\n\t\t\t\te:              %.6f\n\t\t\t\tf:              %.6f\n\t\t\t\tgamma:          %.6f\n\t\t\t\tg:              %.6f\n\t\t\t}", *v16, v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7]);
    }

    v20 = v19;
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_initWithFormat_(v21, v22, @"%@%@,\n", v14, v20);

    return v23;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    return objc_msgSend_initWithFormat_(v8, v9, @"\t\t\tTRC channel:      %d\n\t\t\t<NULL>,\n", a3);
  }
}

uint64_t sub_239962C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, unsigned int a8)
{
  v75 = *(a1 + 360);
  v10 = *(v75 + 16 * a8 + 12);
  if (v10 >= 1)
  {
    v11 = 1;
    v12 = (*(a1 + 360) + 16 * a8);
    do
    {
      v13 = *v12++;
      v14 = *(*(a1 + 368) + 8 + 4 * v13);
      if (v11 >= v10)
      {
        break;
      }

      ++v11;
    }

    while (v14 == 3);
  }

  v76 = *(a1 + 368);
  v77 = *(a1 + 408);
  v71 = *(a1 + 416);
  v72 = (*(a1 + 360) + 16 * a8);
  v15 = *(a1 + 480);
  v69 = *(a1 + 488);
  v70 = *(a1 + 288);
  v16 = *(a1 + 340);
  v68 = *(a1 + 336);
  v74 = *(a1 + 376);
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v87 = v17;
  v88 = v17;
  v86 = v17;
  *v84 = *(a1 + 312);
  *&v17 = *(a1 + 348);
  v18.i64[0] = v17;
  v18.i64[1] = DWORD1(v17);
  *&v84[8] = vextq_s8(v18, v18, 8uLL);
  v85 = *(a1 + 356);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v66 = a6[1];
  v67 = *a6;
  v21 = a6[3];
  v20 = a6[4];
  v64 = a7[1];
  v65 = *a7;
  v73 = PipelineStateForMPSKey;
  v24 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v22, v23, 0, 0, 0, 0, 0);
  v25 = v24;
  if (v24 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = 4 * (v26 >> 1);
  if (v24 <= 1)
  {
    v27 = 4;
  }

  v28 = (v20 + 1) >> 1;
  v29 = (v27 + v21 - 1) / v27;
  v30 = MPSIsTextureTwiddled();
  v32 = 2;
  if ((v26 & 7) != 0 || v25 < 8)
  {
    v33 = v26 >> 1;
    v34 = v69;
  }

  else
  {
    v33 = v26 >> 1;
    v34 = v69;
    if (v30)
    {
      v29 = ((v26 >> 1) + v21 - 1) / (v26 >> 1);
      v33 = v26 >> 3;
      v28 = (v20 + 7) >> 3;
      v32 = 8;
    }
  }

  v35 = v32;
  v37 = v15 == 1 || v68 > 3;
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = 16;
  }

  if (v15 != 2)
  {
    v38 = 0;
  }

  if (v16 >= 4 || v34 == 1)
  {
    v38 |= 0x20u;
  }

  if (v37)
  {
    v38 = 0;
  }

  if (v16 <= 3)
  {
    v40 = !v37;
    if (v34 == 1)
    {
      v40 = 0;
    }

    if (v40)
    {
      if (v34 == 2)
      {
        v38 |= 0x40u;
      }
    }

    else
    {
      v38 |= 0x80u;
    }
  }

  *v84 = v70;
  *&v84[18] = v64;
  *&v84[16] = v65;
  *&v84[22] = v66;
  *&v84[20] = v67;
  WORD1(v85) = v20;
  LOWORD(v85) = v21;
  HIDWORD(v85) = v38;
  LODWORD(v86) = v71;
  *(&v86 + 4) = 0;
  objc_msgSend_setComputePipelineState_(a2, v31, v73);
  v41 = *(v72 + 3);
  if (v41 <= 0)
  {
    v46 = 0;
    v44 = 0;
    v47 = 0;
    v48 = 0;
    v45 = a8;
    v43 = v75;
    v42 = v76;
    if (a8)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v43 = v75;
    v42 = v76;
    v44 = (v76 + 4 * *v72);
    v45 = a8;
    if (v41 == 1)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      if ((a8 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_52:
      v49 = *(v43 + 28);
      v111 = 3;
      v112 = v49;
      if (!v44)
      {
        goto LABEL_59;
      }

LABEL_53:
      v50 = v74;
      v51 = (v74 + 4 * *v44);
      v95 = v44[2];
      v87 = *v51;
      v88 = v51[1];
      if (!v47)
      {
        goto LABEL_60;
      }

LABEL_54:
      v52 = (v50 + 4 * *v47);
      v96 = v47[2];
      v89 = *v52;
      v90 = v52[1];
      if (!v46)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v47 = (v76 + 4 * v72[1]);
    if (v41 < 3)
    {
      v46 = 0;
      v48 = 0;
      if ((a8 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

    v46 = (v76 + 4 * v72[2]);
    if (v41 != 3)
    {
      v48 = (v76 + 4 * v72[3]);
      if ((a8 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

    v48 = 0;
    if (a8)
    {
      goto LABEL_52;
    }
  }

LABEL_58:
  v111 = *(v43 + 12);
  v112 = 3;
  if (v44)
  {
    goto LABEL_53;
  }

LABEL_59:
  v87 = xmmword_239988C80;
  v88 = unk_239988C90;
  v50 = v74;
  if (v47)
  {
    goto LABEL_54;
  }

LABEL_60:
  v89 = xmmword_239988C80;
  v90 = unk_239988C90;
  if (!v46)
  {
LABEL_61:
    v91 = xmmword_239988C80;
    v92 = unk_239988C90;
    if (!v48)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_55:
  v53 = (v50 + 4 * *v46);
  v97 = v46[2];
  v91 = *v53;
  v92 = v53[1];
  if (!v48)
  {
LABEL_62:
    v93 = xmmword_239988C80;
    v94 = unk_239988C90;
    goto LABEL_63;
  }

LABEL_56:
  v54 = (v50 + 4 * *v48);
  v98 = v48[2];
  v93 = *v54;
  v94 = v54[1];
LABEL_63:
  v55 = (v50 + 4 * *(v42 + 4 * *(v43 + 16 * (v45 ^ 1))));
  v99 = *v55;
  v100 = v55[1];
  v101 = v55[2];
  v102 = v55[3];
  v103 = v55[4];
  v104 = v55[5];
  v105 = v55[6];
  v106 = v55[7];
  v107 = v55[8];
  v108 = v55[9];
  v109 = v55[10];
  v110 = v55[11];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setTexture_atIndex_(a2, v56, a4, 0);
  objc_msgSend_setTexture_atIndex_(a2, v57, a5, 1);
  objc_msgSend_setBytes_length_atIndex_(a2, v58, v84, 400, 0);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v59, v77, 0, 3);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v61, Sampler, 0);
  v83[0] = v29;
  v83[1] = v28;
  v83[2] = 1;
  v82[0] = v33;
  v82[1] = v35;
  v82[2] = 1;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v62, v83, v82);
}

uint64_t sub_2399632FC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, int a8, unsigned __int8 a9)
{
  v12 = *(a1 + 360);
  v13 = 4;
  if (a9)
  {
    v14 = 6;
  }

  else
  {
    v14 = 3;
  }

  if (a9)
  {
    v15 = 3;
  }

  else
  {
    v15 = 6;
  }

  if (a9)
  {
    v13 = 2;
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  if (a9)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v124 = v17;
  v18 = (v12 + 16 * v16);
  v20 = *(v18 + 3);
  v19 = v20;
  v125 = (v18 + 6);
  v127 = *(a1 + 368);
  v21 = v127 + 8;
  if (v20 < 1)
  {
    v26 = 1;
  }

  else
  {
    v22 = 1;
    v23 = v18;
    do
    {
      v24 = *v23++;
      v25 = *(v21 + 4 * v24);
      v26 = v25 == v15;
      if (v22 >= v19)
      {
        break;
      }

      ++v22;
    }

    while (v25 == v15);
  }

  v27 = (v12 + 16 * v13);
  v120 = v27 + 3;
  if (v27[3] >= 1 && v26)
  {
    v29 = 1;
    v30 = v27;
    do
    {
      v31 = *v30++;
      v32 = *(v21 + 4 * v31);
      if (v29 >= v27[3])
      {
        break;
      }

      ++v29;
    }

    while (v32 == v14);
  }

  v116 = v27;
  v117 = v18;
  v126 = *(a1 + 360);
  v128 = *(a1 + 408);
  v115 = *(a1 + 416);
  v33 = *(a1 + 480);
  v113 = *(a1 + 488);
  v114 = *(a1 + 288);
  v34 = *(a1 + 340);
  v112 = *(a1 + 336);
  v118 = *(a1 + 376);
  v119 = *(a1 + 384);
  *&v35 = -1;
  *(&v35 + 1) = -1;
  v139 = v35;
  v140 = v35;
  v138 = v35;
  *v136 = *(a1 + 312);
  *&v35 = *(a1 + 348);
  v36.i64[0] = v35;
  v36.i64[1] = DWORD1(v35);
  *&v136[8] = vextq_s8(v36, v36, 8uLL);
  v137 = *(a1 + 356);
  v129 = a3;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v110 = a6[1];
  v111 = *a6;
  v39 = a6[3];
  v38 = a6[4];
  v108 = a7[1];
  v109 = *a7;
  v40 = PipelineStateForMPSKey;
  v43 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v41, v42, 0, 0, 0, 0, 0);
  v44 = v43;
  if (v43 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = v43;
  }

  v46 = v45 >> 1;
  if (v43 <= 1)
  {
    v47 = 4;
  }

  else
  {
    v47 = 4 * (v45 >> 1);
  }

  v48 = v39 - 1;
  v49 = MPSIsTextureTwiddled();
  if ((v45 & 7) != 0 || v44 < 8 || v49 == 0)
  {
    v121 = 2;
    v122 = (v38 + 1) >> 1;
    v123 = (v47 + v48) / v47;
    v53 = v45 >> 1;
  }

  else
  {
    v53 = v45 >> 3;
    v122 = (v38 + 7) >> 3;
    v123 = (v46 + v48) / v46;
    v121 = 8;
  }

  v55 = v33 == 1 || v112 > 3;
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = 16;
  }

  if (v33 != 2)
  {
    v56 = 0;
  }

  if (v34 >= 4 || v113 == 1)
  {
    v56 |= 0x20u;
  }

  if (v55)
  {
    v56 = 0;
  }

  if (v34 <= 3)
  {
    v58 = !v55;
    if (v113 == 1)
    {
      v58 = 0;
    }

    if (v58)
    {
      if (v113 == 2)
      {
        v56 |= 0x40u;
      }
    }

    else
    {
      v56 |= 0x80u;
    }
  }

  *v136 = v114;
  *&v136[18] = v108;
  *&v136[16] = v109;
  *&v136[22] = v110;
  *&v136[20] = v111;
  WORD1(v137) = v38;
  LOWORD(v137) = v39;
  HIDWORD(v137) = v56;
  LODWORD(v138) = v115;
  *(&v138 + 4) = 0;
  objc_msgSend_setComputePipelineState_(a2, v50, v40);
  v59 = *v125;
  v60 = *v120;
  if (*v125 <= 0)
  {
    v65 = 0;
    v66 = a4;
    v68 = v128;
    v67 = v129;
    v63 = v126;
    v64 = v127;
    v69 = v124;
    v61 = v118;
    v70 = v119;
    v71 = v116;
    v62 = v117;
    if (v60 >= 1)
    {
LABEL_69:
      v72 = (v64 + 4 * *v71);
      if (v59 > 1)
      {
        goto LABEL_70;
      }

      goto LABEL_86;
    }
  }

  else
  {
    v62 = v117;
    v61 = v118;
    v63 = v126;
    v64 = v127;
    v65 = (v127 + 4 * *v117);
    v66 = a4;
    v68 = v128;
    v67 = v129;
    v69 = v124;
    v70 = v119;
    v71 = v116;
    if (v60 >= 1)
    {
      goto LABEL_69;
    }
  }

  v72 = 0;
  if (v59 > 1)
  {
LABEL_70:
    v73 = (v64 + 4 * v62[1]);
    if (v60 < 2)
    {
      goto LABEL_71;
    }

    goto LABEL_87;
  }

LABEL_86:
  v73 = 0;
  if (v60 < 2)
  {
LABEL_71:
    v74 = 0;
    if (v59 <= 2)
    {
      goto LABEL_72;
    }

    goto LABEL_88;
  }

LABEL_87:
  v74 = (v64 + 4 * v71[1]);
  if (v59 <= 2)
  {
LABEL_72:
    v75 = 0;
    if (v60 < 3)
    {
      goto LABEL_73;
    }

    goto LABEL_89;
  }

LABEL_88:
  v75 = (v64 + 4 * v62[2]);
  if (v60 < 3)
  {
LABEL_73:
    v76 = 0;
    if (v59 <= 3)
    {
      goto LABEL_74;
    }

    goto LABEL_90;
  }

LABEL_89:
  v76 = (v64 + 4 * v71[2]);
  if (v59 <= 3)
  {
LABEL_74:
    v77 = 0;
    if (v60 < 4)
    {
      goto LABEL_75;
    }

    goto LABEL_91;
  }

LABEL_90:
  v77 = (v64 + 4 * v62[3]);
  if (v60 < 4)
  {
LABEL_75:
    v78 = 0;
    if (v59 < 1)
    {
      goto LABEL_76;
    }

    goto LABEL_92;
  }

LABEL_91:
  v78 = (v64 + 4 * v71[3]);
  if (v59 < 1)
  {
LABEL_76:
    v139 = xmmword_239988C80;
    v140 = unk_239988C90;
    if (*v125 <= 1)
    {
      goto LABEL_77;
    }

    goto LABEL_93;
  }

LABEL_92:
  v80 = (v61 + 4 * *v65);
  v155 = v65[2];
  v139 = *v80;
  v140 = v80[1];
  if (*v125 <= 1)
  {
LABEL_77:
    v141 = xmmword_239988C80;
    v142 = unk_239988C90;
    if (*v125 <= 2)
    {
      goto LABEL_78;
    }

    goto LABEL_94;
  }

LABEL_93:
  v81 = (v61 + 4 * *v73);
  v156 = v73[2];
  v141 = *v81;
  v142 = v81[1];
  if (*v125 <= 2)
  {
LABEL_78:
    v143 = xmmword_239988C80;
    v144 = unk_239988C90;
    if (*v125 <= 3)
    {
      goto LABEL_79;
    }

    goto LABEL_95;
  }

LABEL_94:
  v82 = (v61 + 4 * *v75);
  v157 = v75[2];
  v143 = *v82;
  v144 = v82[1];
  if (*v125 <= 3)
  {
LABEL_79:
    v145 = xmmword_239988C80;
    v146 = unk_239988C90;
    if (*v120 < 1)
    {
      goto LABEL_80;
    }

    goto LABEL_96;
  }

LABEL_95:
  v83 = (v61 + 4 * *v77);
  v158 = v77[2];
  v145 = *v83;
  v146 = v83[1];
  if (*v120 < 1)
  {
LABEL_80:
    v147 = xmmword_239988C80;
    v148 = unk_239988C90;
    v79 = a9;
    if (*v120 <= 1)
    {
      goto LABEL_81;
    }

    goto LABEL_97;
  }

LABEL_96:
  v84 = (v61 + 4 * *v72);
  v159 = v72[2];
  v147 = *v84;
  v148 = v84[1];
  v79 = a9;
  if (*v120 <= 1)
  {
LABEL_81:
    v149 = xmmword_239988C80;
    v150 = unk_239988C90;
    if (*v120 <= 2)
    {
      goto LABEL_82;
    }

LABEL_98:
    v86 = (v61 + 4 * *v76);
    v161 = v76[2];
    v151 = *v86;
    v152 = v86[1];
    if (*v120 <= 3)
    {
      goto LABEL_83;
    }

    goto LABEL_99;
  }

LABEL_97:
  v85 = (v61 + 4 * *v74);
  v160 = v74[2];
  v149 = *v85;
  v150 = v85[1];
  if (*v120 > 2)
  {
    goto LABEL_98;
  }

LABEL_82:
  v151 = xmmword_239988C80;
  v152 = unk_239988C90;
  if (*v120 <= 3)
  {
LABEL_83:
    v153 = xmmword_239988C80;
    v154 = unk_239988C90;
    goto LABEL_100;
  }

LABEL_99:
  v87 = (v61 + 4 * *v78);
  v162 = v78[2];
  v153 = *v87;
  v154 = v87[1];
LABEL_100:
  v88 = (v61 + 4 * *(v64 + 4 * *(v63 + 16)));
  v163 = *v88;
  v164 = v88[1];
  v165 = v88[2];
  v166 = v88[3];
  v167 = v88[4];
  v168 = v88[5];
  v169 = v88[6];
  v170 = v88[7];
  v171 = v88[8];
  v172 = v88[9];
  v173 = v88[10];
  v174 = v88[11];
  v89 = (v61 + 4 * *(v64 + 4 * *(v63 + 48)));
  v175 = *v89;
  v176 = v89[1];
  v177 = v89[2];
  v178 = v89[3];
  v179 = v89[4];
  v180 = v89[5];
  v181 = v89[6];
  v182 = v89[7];
  v183 = v89[8];
  v184 = v89[9];
  v185 = v89[10];
  v186 = v89[11];
  v90 = (v64 + 4 * *(v63 + 16 * v69));
  v91 = *(v70 + 8 * v90[4]);
  v189 = v90[3];
  v92 = v90 + 2;
  v93 = (v90 + 1);
  if (v79)
  {
    v93 = v125;
  }

  else
  {
    v92 = v120;
  }

  v94 = *v92;
  v187 = *v93;
  v188 = v94;
  if (v67 && (objc_msgSend_retainedReferences(v67, v125, v69) & 1) == 0)
  {
    v95 = v91;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_239963EC0;
    v135[3] = &unk_278AC37A8;
    v135[4] = v91;
    objc_msgSend_addCompletedHandler_(v67, v96, v135);
  }

  Sampler = MPSDevice::GetSampler();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setTexture_atIndex_(a2, v98, v66, 0);
  objc_msgSend_setTexture_atIndex_(a2, v99, a5, 1);
  objc_msgSend_setTexture_atIndex_(a2, v100, v91, 2);
  objc_msgSend_setSamplerState_atIndex_(a2, v101, Sampler, 1);
  objc_msgSend_setBytes_length_atIndex_(a2, v102, v136, 448, 0);
  v103 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v104, v103, 0);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v105, v68, 0, 3);
  v134[0] = v123;
  v134[1] = v122;
  v134[2] = 1;
  v133[0] = v53;
  v133[1] = v121;
  v133[2] = 1;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v106, v134, v133);
}

void sub_239963E5C(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_239963ED8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a6;
  v8 = a5;
  v12 = 0;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 48);
  v16 = *(a1 + 104);
  v59 = *(a1 + 96);
  v60 = *(a1 + 56);
  v17 = *(a1 + 80);
  v57 = *(a1 + 88);
  v58 = *(a1 + 112);
  __y = *(a1 + 32);
  v56 = *(a1 + 40);
  v53 = v15;
  v45 = a7 - a5;
  v46 = a6 - a5;
  v43 = a5 + a6;
  v44 = (a6 - a5) * ((a7 - a5) * (a7 - a6));
  do
  {
    v29 = pow((a3 + 0.0) / 10000.0, v15);
    v30 = v59 * (pow((v13 + v14 * v29) / (v17 * v29 + 1.0), v60) - v16);
    if (v30 >= v58)
    {
      v30 = *a1 + (v30 - v58) * *(a1 + 120) * (*(a1 + 8) + (v30 - v58) * *(a1 + 120) * (*(a1 + 16) + (v30 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v30 >= 0.0)
    {
      if (v30 < 1.0)
      {
        v30 = v30 + (1.0 - v30) * ((1.0 - v30) * ((1.0 - v30) * ((1.0 - v30) * *(a1 + 128))));
      }
    }

    else
    {
      v30 = *(a1 + 128);
    }

    v31 = pow(v16 + v57 * v30, v56);
    v32 = v31 - v13;
    if (v31 - v13 < 0.0)
    {
      v32 = 0.0;
    }

    v52 = pow(v32 / (v14 - v17 * v31), __y);
    v33 = pow((a3 + v8) / 10000.0, v15);
    v34 = v59 * (pow((v13 + v14 * v33) / (v17 * v33 + 1.0), v60) - v16);
    if (v34 >= v58)
    {
      v34 = *a1 + (v34 - v58) * *(a1 + 120) * (*(a1 + 8) + (v34 - v58) * *(a1 + 120) * (*(a1 + 16) + (v34 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v34 >= 0.0)
    {
      if (v34 < 1.0)
      {
        v34 = v34 + (1.0 - v34) * ((1.0 - v34) * ((1.0 - v34) * ((1.0 - v34) * *(a1 + 128))));
      }
    }

    else
    {
      v34 = *(a1 + 128);
    }

    v35 = pow(v16 + v57 * v34, v56);
    v36 = v35 - v13;
    if (v35 - v13 < 0.0)
    {
      v36 = 0.0;
    }

    v50 = pow(v36 / (v14 - v17 * v35), __y);
    v37 = pow((a3 + v7) / 10000.0, v15);
    v38 = v59 * (pow((v13 + v14 * v37) / (v17 * v37 + 1.0), v60) - v16);
    if (v38 >= v58)
    {
      v38 = *a1 + (v38 - v58) * *(a1 + 120) * (*(a1 + 8) + (v38 - v58) * *(a1 + 120) * (*(a1 + 16) + (v38 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v38 >= 0.0)
    {
      if (v38 < 1.0)
      {
        v38 = v38 + (1.0 - v38) * ((1.0 - v38) * ((1.0 - v38) * ((1.0 - v38) * *(a1 + 128))));
      }
    }

    else
    {
      v38 = *(a1 + 128);
    }

    v39 = pow(v16 + v57 * v38, v56);
    v40 = v39 - v13;
    if (v39 - v13 < 0.0)
    {
      v40 = 0.0;
    }

    v41 = pow(v40 / (v14 - v17 * v39), __y);
    v42 = pow((a3 + a7) / 10000.0, v53);
    v18 = v59 * (pow((v13 + v14 * v42) / (v17 * v42 + 1.0), v60) - v16);
    if (v18 >= v58)
    {
      v18 = *a1 + (v18 - v58) * *(a1 + 120) * (*(a1 + 8) + (v18 - v58) * *(a1 + 120) * (*(a1 + 16) + (v18 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v18 < 0.0)
    {
      v18 = *(a1 + 128);
    }

    else if (v18 < 1.0)
    {
      v18 = v18 + (1.0 - v18) * ((1.0 - v18) * ((1.0 - v18) * ((1.0 - v18) * *(a1 + 128))));
    }

    v51 = v52 * 10000.0;
    v19 = v41 * 10000.0;
    v20 = pow(v16 + v57 * v18, v56);
    v21 = v20 - v13;
    if (v20 - v13 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = pow(v21 / (v14 - v17 * v20), __y);
    v8 = a5;
    v23 = (v50 * 10000.0 - v51) / a5;
    v24 = v19 - v51;
    v7 = a6;
    v25.f64[0] = v51;
    v26 = v24 / a6 - v23;
    v27 = -(v45 * v26 - v46 * (-(v51 - v22 * 10000.0) / a7 - v23)) / v44;
    v28.f64[0] = v26 / v46 - v43 * v27;
    v28.f64[1] = v27;
    v25.f64[1] = v23 - v28.f64[0] * a5 - v27 * a5 * a5;
    *(a2 + v12) = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v28);
    a3 = a3 + a4;
    v12 += 16;
    v15 = v53;
  }

  while (v12 != 1024);
}

uint64_t sub_239965328(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v9 = v7;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  v14 = vaddvq_s32(vbicq_s8(xmmword_239988CE0, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12))));
  v15 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239988CE0)) & 0xF;
  if (*a3 != -1 || v15 != 0 || (v14 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v23 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v23, 33, 126);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v23 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 125);
    }

    if (a3[2] != -1)
    {
      v23 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 124);
    }

    if (a3[3] != -1)
    {
      v23 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 123);
    }

    if (a3[4] != -1)
    {
      v23 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 119);
    }

    if (a3[5] != -1)
    {
      v23 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 118);
    }

    if (a3[8] != -1)
    {
      v23 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 122);
    }

    if (a3[9] != -1)
    {
      v23 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 121);
    }

    if (a3[6] != -1)
    {
      v23 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 117);
    }

    if (a3[7] != -1)
    {
      v23 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 116);
    }
  }

  LOWORD(v23) = (v6 >> 59) & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 41, 0);
  v22 = v6 < 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v19, &v22, 53, 1);
  v20 = _MPSNewSpecializedFunction();

  return v20;
}

void sub_239965BA8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23994744C(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_239965E30(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (a4 == a5)
  {
    return -18;
  }

  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + 208);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  if (objc_msgSend_isEqual_(a4, a2, a5))
  {
    return -18;
  }

  v15 = *a6;
  v16 = *(a6 + 8);
  v17 = *(a6 + 16);
  v79 = *(a6 + 40);
  v18 = **a6 & 0xF000000;
  if (v11)
  {
    if (!v18 || (*(v16 + 3) & 0xF) == 0)
    {
      return -4;
    }
  }

  else
  {
    if (!v18)
    {
      v77 = *(a6 + 16);
      v65 = MTLReportFailureTypeEnabled();
      v17 = v77;
      if (v65)
      {
        v66 = a4;
        MTLReportFailure();
        v17 = v77;
      }
    }

    if ((*(v16 + 3) & 0xF) == 0)
    {
      v73 = v17;
      v19 = MTLReportFailureTypeEnabled();
      v17 = v73;
      if (v19)
      {
        v66 = a5;
        MTLReportFailure();
        v17 = v73;
      }
    }
  }

  v78 = (v12 - 1) >> 1;
  v20 = v78 - 1;
  v72 = v12 - 1;
  if (v12 - 1 > 5)
  {
    v20 = 8;
  }

  if (v20 <= 1)
  {
    v74 = v17;
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      return -1;
    }

    objc_msgSend_setComputePipelineState_(a2, v22, ComputeState);
    MPSLibrary::ReleaseComputeState();
    v24 = 15;
    v25 = vmovn_s64(*(a6 + 64));
    *&v87[2] = v25.i16[2];
    if (v78 == 1)
    {
      v24 = 31;
    }

    v26 = v79.i64[0] + v24;
    *v87 = v25.i16[0];
    *&v87[6] = v74.i16[4];
    v27 = 4;
    if (v78 == 1)
    {
      v27 = 5;
    }

    v28 = v26 >> v27;
    *&v87[4] = v74.i16[0];
    *&v87[10] = v79.i16[4];
    *&v87[8] = v79.i16[0];
    *&v87[12] = 0;
    objc_msgSend_setTexture_atIndex_(a2, v23, a4, 0, v66);
    objc_msgSend_setTexture_atIndex_(a2, v29, a5, 1);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v31, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v32, v87, 16, 0);
    v89[0] = v28;
    v89[1] = (v79.i64[1] + 15) >> 4;
    v89[2] = 1;
    *v88 = vdupq_n_s64(0x10uLL);
    *&v88[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v33, v89, v88);
    return 0;
  }

  v34 = *(v15 + 4);
  if (v11)
  {
    if (v34 <= 8)
    {
      goto LABEL_25;
    }

    return -4;
  }

  if (v34 >= 9)
  {
    v75 = v17;
    v35 = MTLReportFailureTypeEnabled();
    v17 = v75;
    if (v35)
    {
      v66 = a4;
      MTLReportFailure();
      v17 = v75;
    }
  }

LABEL_25:
  v76 = v17;
  v36 = *(*(v13 + 32) + 8);
  v37 = MEMORY[0x23EE7BAC0](v89, a3, a5);
  v71 = (v79.i64[1] + 255) >> 8;
  v70 = v79.i64[0] * v71;
  if ((v36 & 1) == 0)
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v37, 1536 * v70, 0);
    if (TempBuffer)
    {
      v39 = MPSLibrary::GetComputeState();
      if (v39)
      {
        objc_msgSend_setComputePipelineState_(a2, v38, v39);
        MPSLibrary::ReleaseComputeState();
        v80 = 96 * v70;
        objc_msgSend_setBuffer_offset_atIndex_(a2, v40, TempBuffer, 0, 0);
        objc_msgSend_setBytes_length_atIndex_(a2, v41, &v80, 4, 1);
        *v88 = (96 * v70 + 255) >> 8;
        *&v88[8] = vdupq_n_s64(1uLL);
        *v87 = xmmword_239988DA0;
        *&v87[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v42, v88, v87);
        v44 = MPSLibrary::GetComputeState();
        if (v44)
        {
          objc_msgSend_setComputePipelineState_(a2, v43, v44);
          MPSLibrary::ReleaseComputeState();
          v46 = 1;
          LODWORD(v68) = 1536;
          v69 = (v79.i64[0] + 255) >> 8;
          v47 = 256;
          v48 = 1;
          v49 = TempBuffer;
          goto LABEL_38;
        }
      }

LABEL_41:
      MPSAutoCache::~MPSAutoCache(v89);
      return -1;
    }
  }

  if (v12 >= 0x10)
  {
    v50 = 9;
  }

  else
  {
    v50 = 10;
  }

  v52 = MPSLibrary::GetComputeState();
  if (!v52)
  {
    goto LABEL_41;
  }

  objc_msgSend_setComputePipelineState_(a2, v51, v52);
  MPSLibrary::ReleaseComputeState();
  v46 = 0;
  v49 = 0;
  v53 = *(*(*(v13 + 280) + 16 * v50) + 64);
  v47 = (v53 & 0x1F) << ((v53 >> 6) & 2);
  v71 = (v79.i64[1] + 127) >> 7;
  v68 = 768 * ((v53 >> 5) & 3);
  v69 = (v79.i64[0] + (v53 & 0x1F) - 1) / (v53 & 0x1F);
  if ((v53 & 0x80) != 0)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

LABEL_38:
  v54 = vmovn_s64(*(a6 + 64));
  HIWORD(v80) = v54.i16[2];
  LOWORD(v80) = v54.i16[0];
  v55 = vmovn_s64(v76);
  v82 = v55.i16[2];
  v81 = v55.i16[0];
  v56 = vmovn_s64(v79);
  v84 = v56.i16[2];
  v83 = v56.i16[0];
  v85 = v78;
  v86 = ((v72 & 0xFFFE) + (v72 & 0xFFFE) * v78) | 1;
  objc_msgSend_setTexture_atIndex_(a2, v45, a4, 0, v66);
  objc_msgSend_setTexture_atIndex_(a2, v57, a5, 1);
  v58 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v59, v58, 0);
  objc_msgSend_setBytes_length_atIndex_(a2, v60, &v80, 16, 0);
  if (v46)
  {
    objc_msgSend_setBuffer_offset_atIndex_(a2, v61, v49, 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v62, v49, v70 << 9, 2);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v63, v49, v70 << 10, 3);
  }

  else
  {
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v61, v68 * (v47 / v48), 0);
  }

  *v88 = v69;
  *&v88[8] = v71;
  *&v88[16] = 1;
  *v87 = v47;
  *&v87[8] = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v64, v88, v87);
  MPSAutoCache::~MPSAutoCache(v89);
  return 0;
}

uint64_t sub_239966A50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 256;
  v5 = MPSCreateFunctionConstantValues();
  objc_msgSend_setConstantValue_type_atIndex_(v5, v6, &v9, 41, 2);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t sub_239966AD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 128;
  v5 = MPSCreateFunctionConstantValues();
  objc_msgSend_setConstantValue_type_atIndex_(v5, v6, &v9, 41, 2);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void sub_23996964C(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 + 504));
  sub_23994744C((v1 + 528), v3, v4);
  _Unwind_Resume(a1);
}

void *sub_2399696CC(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v8 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v8, v9, *a2 & 0x3FFLL);
  objc_msgSend_setWidth_(v8, v10, *a3);
  objc_msgSend_setHeight_(v8, v11, a3[1]);
  objc_msgSend_setArrayLength_(v8, v12, a3[2]);
  if (a3[2] == 1)
  {
    objc_msgSend_setTextureType_(v8, v13, 2);
  }

  else
  {
    objc_msgSend_setTextureType_(v8, v13, 3);
  }

  v14 = (*(*a1 + 32))(a1);
  objc_msgSend_setStorageMode_(v8, v15, v14);
  v16 = (*(*a1 + 40))(a1);
  objc_msgSend_setCpuCacheMode_(v8, v17, v16);
  objc_msgSend_setUsage_(v8, v18, 3);
  if (a4)
  {
    v21 = objc_msgSend_usage(v8, v19, v20);
    objc_msgSend_setUsage_(v8, v22, v21 | 0x4000);
    objc_msgSend_setCompressionMode_(v8, v23, 1);
  }

  return v8;
}

void *sub_2399698D4()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  result = objc_msgSend_initWithArray_(v0, v1, &unk_284C9DF58);
  qword_280B15A08 = result;
  return result;
}

void sub_23996B6A4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23996C2DC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23996CD34(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  if (v28)
  {
    objc_msgSend_popDebugGroup(v28, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_2399400F0(&a28, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23996CD5C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3)
{
  if (v3)
  {
    objc_msgSend_popDebugGroup(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23996E560(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_23996E594(unsigned int a1, uint64_t a2)
{
  if ((a1 & 0x400) == 0)
  {
    return 0;
  }

  result = 1;
  switch(a2)
  {
    case 10:
    case 12:
    case 30:
    case 32:
    case 70:
    case 72:
      return result;
    case 20:
    case 22:
    case 60:
    case 62:
    case 110:
    case 112:
      result = (a1 >> 8) & 1;
      break;
    case 25:
    case 65:
    case 115:
      result = (a1 >> 9) & 1;
      break;
    default:
      return 0;
  }

  return result;
}

void sub_23996EF38(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23996F46C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23996FD88(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_23996FE6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v10 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v10, 53, 0);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t sub_23996FEFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  v19 = *(a2 + 64) & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v19, 53, 1);
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  if (*a3 != -1 || ((v14 = vaddvq_s32(vbicq_s8(xmmword_239988CE0, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239988CE0)) & 0xF) == 0) ? (v15 = v14 == 0) : (v15 = 0), v15 ? (v16 = a3[5] == -1) : (v16 = 0), !v16))
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v20 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 126);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v20 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 125);
    }

    if (a3[2] != -1)
    {
      v20 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 124);
    }

    if (a3[3] != -1)
    {
      v20 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 123);
    }

    if (a3[4] != -1)
    {
      v20 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 119);
    }

    if (a3[5] != -1)
    {
      v20 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 118);
    }

    if (a3[8] != -1)
    {
      v20 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 122);
    }

    if (a3[9] != -1)
    {
      v20 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 121);
    }

    if (a3[6] != -1)
    {
      v20 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 117);
    }

    if (a3[7] != -1)
    {
      v20 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v7, v9, &v20, 33, 116);
    }
  }

  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t sub_2399701B0(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t **a6)
{
  v8 = *(a1 + *MEMORY[0x277CD7378]);
  v9 = *(a1 + *MEMORY[0x277CD7350]);
  v79 = *(a6 + 1);
  v10 = *(a6 + 5);
  v12 = *a6;
  v11 = a6[1];
  if (*a6 == v11)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v17 = a3;
    v18 = a5;
    v72 = *(a6 + 5);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v10 = v72;
    a3 = v17;
    a5 = v18;
    if (isEqual)
    {
      return -18;
    }
  }

  v78 = v9;
  v13 = v10.i64[1];
  v14 = v10.i64[0];
  if (v10.i64[1])
  {
    v15 = v10.i64[0] == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  v20 = *v12;
  v21 = *v11;
  if ((*v12 & 0x40000000000) != 0)
  {
    LODWORD(v20) = ((v21 ^ v20) & 0x10000000000) == 0;
    if (BYTE4(v20) >= BYTE4(v21))
    {
      LODWORD(v20) = 0;
    }

    if ((v21 & 0x40000000000) != 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else if ((v21 & 0x60000000000) != 0 || BYTE4(v21) < BYTE4(v20))
  {
    v22 = 0;
  }

  else if (v8)
  {
    v22 = 1;
  }

  else
  {
    v22 = 1;
    if (BYTE4(v21) == 11 && v10.i64[1] * v10.i64[0] >= 0xFFE1uLL)
    {
      v65 = a5;
      v69 = a3;
      v73 = v10;
      v31 = MTLReportFailureTypeEnabled();
      v10 = v73;
      a3 = v69;
      a5 = v65;
      if (v31)
      {
        v22 = 1;
        MTLReportFailure();
        v10 = v73;
        a3 = v69;
        a5 = v65;
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      v67 = a5;
      v70 = a3;
      v76 = v10;
      v63 = MTLReportFailureTypeEnabled();
      v10 = v76;
      a3 = v70;
      a5 = v67;
      if (v63)
      {
        MTLReportFailure();
        v10 = v76;
        a3 = v70;
        a5 = v67;
      }
    }

    if ((*(v11 + 5) & 2) != 0)
    {
      v68 = a5;
      v71 = a3;
      v77 = v10;
      v64 = MTLReportFailureTypeEnabled();
      v10 = v77;
      a3 = v71;
      a5 = v68;
      if (v64)
      {
        MTLReportFailure();
        v10 = v77;
        a3 = v71;
        a5 = v68;
      }
    }
  }

  if (!v22)
  {
    return -7;
  }

  v23 = *v11;
  if ((*v11 & 0x20000000000) != 0)
  {
    return -7;
  }

  v24 = *v12;
  if ((*v12 & 0x40000000000) != 0)
  {
    v27 = BYTE3(v23) & 0xF;
    switch(v27)
    {
      case 4u:
        v28 = (v24 & 0x10000000000) == 0;
        v29 = 123;
        break;
      case 2u:
        v28 = (v24 & 0x10000000000) == 0;
        v29 = 103;
        break;
      case 1u:
        v28 = (v24 & 0x10000000000) == 0;
        v29 = 53;
        break;
      default:
        return -7;
    }

    if (v28)
    {
      v26 = v29;
    }

    else
    {
      v26 = v29 + 1;
    }

    goto LABEL_47;
  }

  v25 = BYTE3(v23) & 0xF;
  if (v25 > 4)
  {
    return -7;
  }

  v26 = qword_239988F88[v25];
LABEL_47:
  v74 = v10;
  v97[0] = *v11;
  if ((v8 & 2) == 0)
  {
    v32 = a3;
    v33 = a5;
    PixelInfo = MPSDevice::GetPixelInfo(v78, v26, MPSImageFeatureChannelFormatNone);
    a3 = v32;
    a5 = v33;
    v97[0] = PixelInfo;
  }

  v66 = a5;
  MEMORY[0x23EE7BAC0](v96, a3, a5);
  v94 = v74;
  v95 = 1;
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState && (v38 = CompressedTempTexture, objc_msgSend_setComputePipelineState_(a2, v36, ComputeState), v41 = objc_msgSend_threadExecutionWidth(ComputeState, v39, v40), MPSLibrary::ReleaseComputeState(), v42 = vmovn_s64(*(a6 + 4)), v90[1] = v42.i16[2], v90[0] = v42.i16[0], v91 = 0, v43 = vmovn_s64(v74), v93 = v43.i16[2], v75 = v43, v92 = v43.i16[0], objc_msgSend_setTexture_atIndex_(a2, v44, a4, 0), objc_msgSend_setTexture_atIndex_(a2, v45, v38, 1), v46 = MPSDevice::GetSampler(), objc_msgSend_setSamplerState_atIndex_(a2, v47, v46, 0), objc_msgSend_setBytes_length_atIndex_(a2, v48, v90, 12, 0), v88 = (v14 + v41 - 1) / v41, v89 = vdupq_n_s64(1uLL), v86 = v41, v87 = v89, objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v49, &v88, &v86), (v51 = MPSLibrary::GetComputeState()) != 0))
  {
    objc_msgSend_setComputePipelineState_(a2, v50, v51);
    v54 = objc_msgSend_threadExecutionWidth(v51, v52, v53);
    MPSLibrary::ReleaseComputeState();
    v55 = vmovn_s64(v79);
    v81 = 0;
    v83 = v55.i16[2];
    v82 = v55.i16[0];
    v85 = v75.i16[2];
    v84 = v75.i16[0];
    objc_msgSend_setTexture_atIndex_(a2, v56, v38, 0);
    objc_msgSend_setTexture_atIndex_(a2, v57, v66, 1);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v59, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v60, &v81, 12, 0);
    v88 = (v13 + v54 - 1) / v54;
    v89 = vdupq_n_s64(1uLL);
    v86 = v54;
    v87 = v89;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v61, &v88, &v86);
    v62 = 0;
  }

  else
  {
    v62 = -1;
  }

  MPSAutoCache::~MPSAutoCache(v96);
  return v62;
}

double sub_239970A68(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = a5;
  *&v6 = -a4;
  *(&v6 + 1) = -a4;
  v7 = vaddq_f32(v6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_239988FB0).u64[0];
  }

  return *v7.i64;
}

double sub_239970AD4(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  *&v6 = -a4;
  *(&v6 + 1) = -a4;
  v7 = vaddq_f32(v6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_239988FB0).u64[0];
  }

  return *v7.i64;
}

int64x2_t sub_2399712C4@<Q0>(uint64_t a1@<X0>, int a2@<W2>, int64x2_t *a3@<X8>)
{
  if (a2)
  {
    result = vdupq_n_s64(0x10uLL);
    *a3 = result;
    a3[1].i64[0] = 1;
  }

  else
  {
    result = *(a1 + 8);
    *a3 = result;
    a3[1].i64[0] = *(a1 + 24);
  }

  return result;
}

int64x2_t sub_2399712F4@<Q0>(int64x2_t *a1@<X0>, int a2@<W2>, int64x2_t *a3@<X8>)
{
  if (a2)
  {
    result = vdupq_n_s64(0x10uLL);
    *a3 = result;
    a3[1].i64[0] = 1;
  }

  else
  {
    result = a1[2];
    *a3 = result;
    a3[1].i64[0] = a1[3].i64[0];
  }

  return result;
}

uint64_t sub_2399713C4@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 32);
    *a4 = v6;
    *(a4 + 16) = *(result + 48);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, a5).i64[0], 0), xmmword_2399890D0, xmmword_2399890C0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971418@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, int64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 8);
    *a4 = v6;
    *(a4 + 16) = *(result + 24);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(a5, 1)).i64[0], 0), xmmword_2399890F0, xmmword_2399890E0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971510@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 32);
    *a4 = v6;
    *(a4 + 16) = *(result + 48);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, a5).i64[0], 0), xmmword_2399890D0, xmmword_2399890C0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971564@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, int64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 8);
    *a4 = v6;
    *(a4 + 16) = *(result + 24);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(a5, 1)).i64[0], 0), xmmword_2399890F0, xmmword_2399890E0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_23997165C@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 32);
    *a4 = v6;
    *(a4 + 16) = *(result + 48);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, a5).i64[0], 0), xmmword_2399890D0, xmmword_2399890C0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_2399716B0@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, int64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 8);
    *a4 = v6;
    *(a4 + 16) = *(result + 24);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(a5, 1)).i64[0], 0), xmmword_2399890F0, xmmword_2399890E0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971798(char *a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = objc_msgSend_scaleTransform(a1, a2, a3);
  v12 = *&a1[*MEMORY[0x277CD7350]];
  v15 = objc_msgSend_width(a4, v13, v14);
  v18 = objc_msgSend_height(a4, v16, v17);
  v19.f64[0] = v15;
  v19.f64[1] = v18;
  v71 = v19;
  v22 = objc_msgSend_width(a5, v20, v21);
  v25 = objc_msgSend_height(a5, v23, v24);
  if (!v11)
  {
    v32.f64[0] = v22;
    v32.f64[1] = v25;
    v70 = 0u;
    v72 = vdivq_f64(v32, v71);
    v87 = v72;
    v88 = 0u;
    if (a4 != a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    isEqual = 1;
    goto LABEL_6;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v70 = *(v11 + 16);
  v72 = vmaxnmq_f64(*v11, vdivq_f64(_Q0, v71));
  v87 = v72;
  v88 = v70;
  if (a4 == a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  isEqual = objc_msgSend_isEqual_(a4, v26, a5);
LABEL_6:
  MEMORY[0x23EE7BAC0](v86, a3, a5);
  if (v72.f64[0] == 1.0 && v70.n128_f64[0] == 0.0)
  {
    if ((isEqual & 1) == 0)
    {
      v34 = sub_23997209C(a1, a3, 1, v72.f64[1], 1.0, v70);
      if (v34)
      {
        v35 = sub_2399726A0(a1, a2, v33, a4, a5, a6, &v87, v34);
LABEL_30:
        v36 = v35;
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (v72.f64[1] == 1.0 && v70.n128_f64[1] == 0.0)
  {
    if ((isEqual & 1) == 0)
    {
      v61 = sub_23997209C(a1, a3, 0, v72.f64[0], 1.0, v70);
      if (v61)
      {
        v35 = sub_239972AEC(a1, a2, v60, a4, a5, a6, &v87, v61);
        goto LABEL_30;
      }

      goto LABEL_26;
    }

LABEL_14:
    v36 = -18;
    goto LABEL_31;
  }

  v37 = **(a6 + 8);
  if ((v37 & 0xFF00000000) <= 0x1000000000)
  {
    v38 = &unk_239989148;
  }

  else
  {
    v38 = &unk_239989120;
  }

  PixelInfo = MPSDevice::GetPixelInfo(v12, v38[(v37 >> 24) & 0xF], MPSImageFeatureChannelFormatNone);
  v41 = sub_23997209C(a1, a3, 0, v72.f64[0], v39, v40);
  v44 = sub_23997209C(a1, a3, 1, v72.f64[1], v42, v43);
  if (v41)
  {
    _ZF = v44 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
LABEL_26:
    v36 = -1;
    goto LABEL_31;
  }

  v46 = *(v44 + 9);
  v47 = v18 + v46 - 1;
  v48 = *(a6 + 40);
  v49 = *(v41 + 9);
  v50 = v15 + v49 - 1;
  if (((v49 * (v47 * v48)) + (v46 * (*(a6 + 48) * v48))) <= ((v46 * (v50 * *(a6 + 48))) + (v49 * (*(a6 + 48) * v48))))
  {
    *&v56 = v70.n128_u64[0];
    *(&v58 + 1) = *&v72.f64[1];
    *&v52 = v72.f64[0];
    *(&v52 + 1) = 1.0;
    v68 = v44;
    v62 = floor(*(v44 + 2));
    *(&v56 + 1) = -v62;
    *&v58 = 1.0;
    *&v57 = 0;
    *(&v57 + 1) = v70.n128_f64[1] + v72.f64[1] * v62;
    v73 = sub_2399726A0;
    v55 = sub_239972AEC;
    v59 = v41;
  }

  else
  {
    *(&v51 + 1) = v70.n128_u64[1];
    *(&v52 + 1) = *&v72.f64[1];
    *&v52 = 1.0;
    v53 = floor(*(v41 + 2));
    *&v51 = -v53;
    *&v54 = v72.f64[0];
    *(&v54 + 1) = 1.0;
    *&v57 = v70.n128_f64[0] + v72.f64[0] * v53;
    v73 = sub_239972AEC;
    v55 = sub_2399726A0;
    v48 = v50;
    v47 = *(a6 + 48);
    v56 = v51;
    v57 = v57;
    v58 = v54;
    v59 = v44;
    v68 = v41;
  }

  *&v83 = v48;
  *(&v83 + 1) = v47;
  v84 = 1;
  v82[0] = v52;
  v82[1] = v56;
  v81[0] = v58;
  v81[1] = v57;
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v74 = *a6;
  p_PixelInfo = &PixelInfo;
  *v77 = 0;
  v76 = 0uLL;
  *&v77[8] = v83;
  *&v77[24] = 1;
  v78 = *(a6 + 64);
  v79 = *(a6 + 80);
  v80 = 0;
  v36 = (v55)(a1, a2, a3, a4, CompressedTempTexture, &v74, v82, v59, v86);
  if (!v36)
  {
    v64 = *(a6 + 8);
    v74 = p_PixelInfo;
    p_PixelInfo = v64;
    v65 = *(a6 + 32);
    v76 = *(a6 + 16);
    *v77 = v65;
    v66 = *(a6 + 64);
    *&v77[16] = *(a6 + 48);
    v78 = v66;
    v79 = *(a6 + 80);
    v35 = (v73)(a1, a2, a3, CompressedTempTexture, a5, &v74, v81, v68, v86);
    goto LABEL_30;
  }

LABEL_31:
  MPSAutoCache::~MPSAutoCache(v86);
  return v36;
}

id *sub_23997209C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, __n128 a6)
{
  a6.n128_f64[0] = fmin(a4, 1.0);
  v7 = a1 + 248;
  if (*(a1 + 248) && *(a1 + 256) == a6.n128_f64[0])
  {
    if (!a2)
    {
      return v7;
    }

LABEL_50:
    if ((objc_msgSend_retainedReferences(a2, a2, a3, *&v87, *&v88) & 1) == 0)
    {
      v83 = *v7;
      v84 = *v7;
      v91 = MEMORY[0x277D85DD0];
      v92 = 3221225472;
      v93 = sub_239972F64;
      v94 = &unk_278AC37A8;
      v95 = v83;
      objc_msgSend_addCompletedHandler_(a2, v85, &v91);
    }

    return v7;
  }

  v8 = (a1 + 296);
  if (*(a1 + 296) && *(a1 + 304) == a6.n128_f64[0])
  {
    if (a2 && (objc_msgSend_retainedReferences(a2, a2, a3) & 1) == 0)
    {
      v9 = *v8;
      v10 = *v8;
      v91 = MEMORY[0x277D85DD0];
      v92 = 3221225472;
      v93 = sub_239972F64;
      v94 = &unk_278AC37A8;
      v95 = v9;
      objc_msgSend_addCompletedHandler_(a2, v11, &v91);
    }

    return v8;
  }

  else
  {
    v7 += 48 * (a3 != 0);
    __asm { FMOV            V1.2D, #1.0 }

    v19 = vminnmq_f64(vdupq_lane_s64(a6.n128_i64[0], 0), _Q1);
    v87 = a6;
    v88 = vandq_s8(vmaxnmq_f64(vmulq_f64(v19, vdupq_n_s64(0x4050000000000000uLL)), _Q1), vdupq_n_s64(0xFFF0000000000000));
    __asm { FMOV            V2.2D, #6.0 }

    v90 = vrndpq_f64(vsubq_f64(vdivq_f64(_Q2, v19), vdivq_f64(_Q1, v88)));
    v21 = (&v89 | (8 * (a3 != 0)));
    v22 = *(&v90 & 0xFFFFFFFFFFFFFFF7 | (8 * (a3 != 0)));

    *v7 = 0;
    *(v7 + 8) = v87.n128_u64[0];
    *(v7 + 16) = -3.0 / v87.n128_f64[0] + 0.5;
    *(v7 + 24) = 3;
    *(v7 + 36) = v22;
    v89 = v88;
    v23 = *v21;
    *(v7 + 28) = v23;
    *(v7 + 32) = 1.0 / v23;
    *(v7 + 40) = v23 - 1;
    *(v7 + 44) = (v22 + 3) >> 2;
    v25 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v24, 115);
    if (!v25)
    {
      return 0;
    }

    v27 = v25;
    objc_msgSend_setUsage_(v25, v26, 1);
    v29 = objc_msgSend_newTextureWithDescriptor_(*(*(a1 + *MEMORY[0x277CD7350]) + 16), v28, v27);
    *v7 = v29;
    if (!v29)
    {
      return 0;
    }

    if (a4 >= 1.0)
    {
      v57 = *(v7 + 28);
      v35 = &unk_239989180;
    }

    else
    {
      if (qword_280B159F8 != -1)
      {
        dispatch_once(&qword_280B159F8, &unk_284C6BAE0);
      }

      v30 = (*(v7 + 28) * *(v7 + 44));
      v31 = malloc_type_calloc(3uLL, 16 * v30, 0x100004052888210uLL);
      v35 = v31;
      v36 = &v31[v30];
      v37 = &v36[v30];
      v38 = *(v7 + 44);
      if (v38)
      {
        v39 = 0;
        LODWORD(v32) = *(v7 + 24);
        v40 = vdupq_lane_s64(COERCE__INT64(v32 / a4), 0);
        v41 = vsubq_f64(xmmword_239989100, v40);
        v33 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(xmmword_239989110, v40)), v41);
        v42 = a4;
        v43 = v31;
        do
        {
          *v41.f64 = v39;
          v41 = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(*&v41.f64[0], 0), v33), v42);
          *v43++ = v41;
          v39 += 4;
        }

        while (4 * v38 != v39);
        if (*(v7 + 28) >= 2u)
        {
          v44 = 1;
          v45 = v38;
          do
          {
            v46 = v31;
            v47 = v38;
            do
            {
              *v41.f64 = (v42 * v44) * *(v7 + 32);
              v34 = *v46;
              v41 = vsubq_f32(*v46, vdupq_lane_s32(*&v41.f64[0], 0));
              v46[v45] = v41;
              ++v46;
              --v47;
            }

            while (v47);
            ++v44;
            v45 += v38;
          }

          while (v44 < *(v7 + 28));
        }
      }

      if (v30)
      {
        v33.f32[0] = *(v7 + 24);
        v48 = 1.0 / v33.f32[0];
        v33.f32[0] = v33.f32[0] / 9.8696;
        v49 = vdupq_lane_s32(*v33.f32, 0);
        v50 = v31;
        v51 = &v31[v30];
        v52 = &v51[v30];
        v53 = v30;
        do
        {
          v34.f32[0] = *(v7 + 24);
          v54 = vdupq_lane_s32(*v34.f32, 0);
          v55 = vmaxnmq_f32(vminnmq_f32(*v50, v54), vnegq_f32(v54));
          *v50++ = v55;
          v34 = vmulq_n_f32(v55, v48);
          *v51++ = v34;
          *v52++ = vdivq_f32(v49, vmulq_f32(v55, v55));
          --v53;
        }

        while (v53);
      }

      v56 = (8 * v30);
      LODWORD(v91) = 8 * v30;
      if (off_280B159F0)
      {
        off_280B159F0(v31, v31, &v91);
      }

      else if (v56)
      {
        v58 = v31;
        do
        {
          *v58 = __sinpif (*v58);
          ++v58;
          --v56;
        }

        while (v56);
      }

      __asm { FMOV            V0.4S, #1.0 }

      if (v30)
      {
        v60.i64[0] = 0x7F0000007FLL;
        v60.i64[1] = 0x7F0000007FLL;
        v61 = vnegq_f32(v60);
        v62 = v35;
        do
        {
          v63 = *v36++;
          v64 = vmulq_f32(*v62, v63);
          v65 = *v37++;
          *v62++ = vbslq_s8(vceqq_f32(v65, v61), _Q0, vmulq_f32(v64, v65));
          --v30;
        }

        while (v30);
      }

      v57 = *(v7 + 28);
      if (v57)
      {
        v66 = 0;
        v67 = v35 + 1;
        v68 = 16 * v38;
        v69 = v35;
        do
        {
          v70 = v35[v66 * v38];
          if (v38 >= 2)
          {
            v71 = v67;
            v72 = v38 - 1;
            do
            {
              v73 = *v71++;
              v70 = vaddq_f32(v70, v73);
              --v72;
            }

            while (v72);
          }

          if (v38)
          {
            v74 = vaddq_f32(v70, vextq_s8(v70, v70, 8uLL));
            v75 = vdivq_f32(_Q0, vaddq_f32(v74, vrev64q_s32(v74)));
            v76 = v69;
            v77 = v38;
            do
            {
              *v76 = vmulq_f32(v75, *v76);
              ++v76;
              --v77;
            }

            while (v77);
            v57 = *(v7 + 28);
          }

          ++v66;
          v67 = (v67 + v68);
          v69 = (v69 + v68);
        }

        while (v66 < v57);
      }
    }

    v78 = *(v7 + 44);
    v79 = v57;
    v80 = malloc_type_malloc(8 * v78 * v57, 0x1000040BDFB0063uLL);
    MPSConvertFloatToHalf();
    v81 = *v7;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = v78;
    v95 = v79;
    v96 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v81, v82, &v91, 0, v80, 8 * v78);
    if (v35 != &unk_239989180)
    {
      free(v35);
    }

    free(v80);
    if (a2)
    {
      goto LABEL_50;
    }
  }

  return v7;
}

uint64_t sub_2399726A0(void *a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, float64x2_t *a7, uint64_t a8)
{
  if (a4 == a5)
  {
    return -18;
  }

  v95 = v8;
  v96 = v9;
  if (objc_msgSend_isEqual_(a4, a2, a5))
  {
    return -18;
  }

  v20 = MEMORY[0x277CD7370];
  v23 = objc_msgSend_isCompressed(a5, v17, v18) && objc_msgSend_compressionType(a5, v21, v22) == 1;
  v24 = *(*(a1 + *v20) + 32);
  v25 = MPSIsTextureTwiddled();
  v77 = *a7;
  v28 = objc_msgSend_scaleTransform(a1, v26, v27);
  v29 = v77;
  if (v28)
  {
    v29 = *v28;
  }

  v93 = 0uLL;
  v94 = 0;
  (*(*v24 + 16))(&v93, v24, v25, v23, v29);
  objc_msgSend_pixelFormat(a5, v30, v31);
  if (v23)
  {
    v32 = (v93 + 31) / v93;
    v33 = (*(&v93 + 1) + 31) / *(&v93 + 1);
  }

  else
  {
    v33 = 1;
    v32 = 1;
  }

  v34 = *a7;
  __asm { FMOV            V2.2D, #0.5 }

  v40 = vdivq_f64(vsubq_f64(_Q2, a7[1]), *a7);
  v40.f64[1] = *(a8 + 16) + v40.f64[1];
  v41 = vmovn_s64(*(a6 + 16));
  v42 = v41.i16[2];
  v43 = v41.i16[0];
  v44 = *(a6 + 40);
  v45 = vmovn_s64(v44);
  v46 = v45.i16[2];
  v47 = v45.i16[0];
  __asm { FMOV            V4.2S, #1.0 }

  v49 = vdiv_f32(_D4, vcvt_f32_f64(*a7));
  v88[1] = v42;
  v88[0] = v43;
  v88[3] = v46;
  v88[2] = v47;
  *&v40.f64[0] = vcvt_f32_f64(v40);
  v89 = v40.f64[0];
  v90 = v49;
  *v40.f64 = *(a8 + 28);
  v50 = *(a8 + 40);
  v91 = vdiv_f32(0xCB4000004B400000, vdup_lane_s32(*&v40.f64[0], 0));
  v92 = v50;
  if (v23)
  {
    v51 = 256;
  }

  else
  {
    v51 = 0;
    if (v34.f64[1] >= 1.0 && v44.i64[0] >= 5uLL)
    {
      v51 = 0;
    }
  }

  *&v52 = -1;
  *(&v52 + 1) = -1;
  v86 = v52;
  v87 = v52;
  v84 = -1;
  v85 = v52;
  v82 = v52;
  v83 = v51 | (16 * v33) | v32;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    return -19;
  }

  v56 = ComputeState;
  v76 = v32;
  v78 = v33;
  v57 = objc_msgSend_threadExecutionWidth(ComputeState, v54, v55);
  if (v57 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v57;
  }

  v61 = objc_msgSend_maxTotalThreadsPerThreadgroup(v56, v58, v59);
  objc_msgSend_setComputePipelineState_(a2, v62, v56);
  objc_msgSend_setTexture_atIndex_(a2, v63, a4, 0);
  objc_msgSend_setTexture_atIndex_(a2, v64, a5, 1);
  objc_msgSend_setTexture_atIndex_(a2, v65, *a8, 2);
  objc_msgSend_setBytes_length_atIndex_(a2, v66, v88, 40, 0);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v68, Sampler, 0);
  v70 = *(&v93 + 1);
  if (*(&v93 + 1) * v93 <= v61)
  {
    v60 = v93;
    v71 = v76;
  }

  else
  {
    if (v61 <= 2 * v60)
    {
      v70 = 1;
    }

    else
    {
      v70 = v61 / v60;
    }

    v71 = v76;
    *&v93 = v60;
    *(&v93 + 1) = v70;
    v94 = 1;
  }

  v72 = *(a6 + 40);
  v73 = *(a6 + 48);
  v74 = (v72 + v60 * v71 - 1) / (v60 * v71);
  v75 = (v73 - 1 + v70 * v78) / (v70 * v71);
  if (!v23 && a7->f64[1] >= 1.0 && v72 >= 5)
  {
    v74 = (v60 + ((v72 + 3) >> 2) - 1) / v60;
    v75 = (v73 - 1 + v70) / v70;
  }

  if (v23)
  {
    objc_msgSend_setImageblockWidth_height_(a2, v69, 32, 32);
  }

  v81[0] = v74;
  v81[1] = v75;
  v81[2] = 1;
  v79 = v93;
  v80 = v94;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v69, v81, &v79);
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t sub_239972AEC(void *a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, __n128 *a7, uint64_t a8)
{
  if (a4 == a5)
  {
    return -18;
  }

  v90 = v8;
  v91 = v9;
  if (objc_msgSend_isEqual_(a4, a2, a5))
  {
    return -18;
  }

  v18 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v19 = MPSIsTextureTwiddled();
  v72 = *a7;
  v22 = objc_msgSend_scaleTransform(a1, v20, v21);
  if (v22)
  {
    v72 = *v22;
  }

  v27 = objc_msgSend_isCompressed(a5, v23, v24) && objc_msgSend_compressionType(a5, v25, v26) == 1;
  v88 = 0uLL;
  v89 = 0;
  (*(*v18 + 24))(&v88, v18, v19, v27, v72);
  objc_msgSend_pixelFormat(a5, v28, v29);
  if (v27)
  {
    v30 = (v88 + 31) / v88;
    v31 = (*(&v88 + 1) + 31) / *(&v88 + 1);
  }

  else
  {
    v31 = 1;
    v30 = 1;
  }

  v32 = *a7;
  __asm { FMOV            V2.2D, #0.5 }

  v38 = vdivq_f64(vsubq_f64(_Q2, a7[1]), *a7);
  v38.f64[0] = *(a8 + 16) + v38.f64[0];
  v39 = vmovn_s64(*(a6 + 16));
  v83[1] = v39.i16[2];
  v83[0] = v39.i16[0];
  v40 = *(a6 + 40);
  v41 = vmovn_s64(v40);
  v83[3] = v41.i16[2];
  v83[2] = v41.i16[0];
  *&v38.f64[0] = vcvt_f32_f64(v38);
  __asm { FMOV            V3.2D, #1.0 }

  v84 = v38.f64[0];
  v85 = vcvt_f32_f64(vdivq_f64(_Q3, v32));
  *v38.f64 = *(a8 + 28);
  _Q3.f64[0] = *(a8 + 40);
  v86 = vdiv_f32(0xCB4000004B400000, vdup_lane_s32(*&v38.f64[0], 0));
  v87 = _Q3.f64[0];
  if (v27)
  {
    v43 = 256;
  }

  else
  {
    v43 = 0;
    if (v32.f64[0] > 1.0 && v40.i64[1] >= 5uLL)
    {
      v43 = 0;
    }
  }

  *&v44 = -1;
  *(&v44 + 1) = -1;
  v81 = v44;
  v82 = v44;
  v79 = -1;
  v80 = v44;
  v77 = v44;
  v73 = v30;
  v78 = v43 | (16 * v31) | v30;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    return -19;
  }

  v48 = ComputeState;
  v71 = v31;
  v49 = objc_msgSend_threadExecutionWidth(ComputeState, v46, v47);
  if (v49 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v49;
  }

  v53 = objc_msgSend_maxTotalThreadsPerThreadgroup(v48, v50, v51);
  objc_msgSend_setComputePipelineState_(a2, v54, v48);
  objc_msgSend_setTexture_atIndex_(a2, v55, a4, 0);
  objc_msgSend_setTexture_atIndex_(a2, v56, a5, 1);
  objc_msgSend_setTexture_atIndex_(a2, v57, *a8, 2);
  objc_msgSend_setBytes_length_atIndex_(a2, v58, v83, 40, 0);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v60, Sampler, 0);
  v63 = *(&v88 + 1);
  if (*(&v88 + 1) * v88 <= v53)
  {
    v52 = v88;
    v65 = v71;
    v64 = v73;
  }

  else
  {
    v64 = v73;
    if (v53 <= 2 * v52)
    {
      v63 = 1;
    }

    else
    {
      v63 = v53 / v52;
    }

    v65 = v71;
    *&v88 = v52;
    *(&v88 + 1) = v63;
    v89 = 1;
  }

  v66 = v52 * v64;
  v67 = *(a6 + 48);
  v68 = *(a6 + 40) - 1;
  v69 = (v68 + v66) / v66;
  v70 = (v63 * v65 + v67 - 1) / (v63 * v65);
  if (!v27)
  {
    v62 = a7->n128_f64[0];
    if (a7->n128_f64[0] > 1.0 && v67 >= 5)
    {
      v69 = (v68 + v52) / v52;
      v70 = (v63 + ((v67 + 3) >> 2) - 1) / v63;
    }
  }

  if (v27)
  {
    objc_msgSend_setImageblockWidth_height_(a2, v61, 32, 32, v62);
  }

  v76[0] = v69;
  v76[1] = v70;
  v76[2] = 1;
  v74 = v88;
  v75 = v89;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v61, v76, &v74);
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void *sub_239972F28()
{
  result = dlopen("/System/Library/Frameworks/Accelerate.framework/Accelerate", 5);
  if (result)
  {
    result = dlsym(result, "vvsinpif");
    off_280B159F0 = result;
  }

  return result;
}

void sub_2399740C0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23994744C(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239974638(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void *sub_23997464C(uint64_t a1, char *a2, void *a3, void *a4, int64x2_t *a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v174 = objc_opt_class();
      v183 = NSStringFromClass(v174);
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v175 = objc_opt_class();
      v183 = NSStringFromClass(v175);
      MTLReportFailure();
    }

    objc_msgSend_columns(a4, a2, a3, v183);
    objc_msgSend_height(a3, v13, v14);
    objc_msgSend_width(a3, v15, v16);
    objc_msgSend_featureChannels(a3, v17, v18);
    v21 = objc_msgSend_columns(a4, v19, v20) - a5->i64[1];
    v24 = objc_msgSend_height(a3, v22, v23);
    v27 = objc_msgSend_width(a3, v25, v26) * v24;
    if (v21 < v27 * objc_msgSend_featureChannels(a3, v28, v29) && MTLReportFailureTypeEnabled())
    {
      v191 = objc_msgSend_columns(a4, v30, v31);
      v176 = a5->i64[1];
      v189 = objc_msgSend_height(a3, v177, v178);
      v187 = objc_msgSend_width(a3, v179, v180);
      v188 = objc_msgSend_featureChannels(a3, v181, v182);
      v185 = v176;
      v186 = v189;
      v184 = v191;
      MTLReportFailure();
    }

    objc_msgSend_rows(a4, v30, v31, v184, v185, v186, v187, v188);
    v32 = a5->i64[0];
    if (v32 >= objc_msgSend_rows(a4, v33, v34) && MTLReportFailureTypeEnabled())
    {
      v183 = a5->i64[0];
      v185 = objc_msgSend_rows(a4, a2, a3);
      MTLReportFailure();
    }
  }

  v35 = *(v12 + 16);
  if (v35)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v35, a2, a3);
  }

  v36 = objc_msgSend_featureChannels(a3, a2, a3, v183, v185);
  if (objc_msgSend_textureType(a3, v37, v38) != 2)
  {
    v106 = (v36 + 3) >> 2;
    objc_msgSend_featureChannels(a3, v39, v40);
    objc_msgSend_dataType(a4, v107, v108);
    v109 = a6;
    result = MPSLibrary::GetComputeState();
    if (!result)
    {
      return result;
    }

    v111 = result;
    objc_msgSend_setComputePipelineState_(a2, v110, result);
    v114 = objc_msgSend_maxTotalThreadsPerThreadgroup(v111, v112, v113);
    MPSLibrary::ReleaseComputeState();
    v115 = v109;
    v116 = a5->i32[0];
    v119 = objc_msgSend_rowBytes(a4, v117, v118) * v116;
    *(&v203 + 1) = 0;
    v201 = vmovn_s64(*a5);
    LODWORD(v202) = objc_msgSend_rowBytes(a4, v120, v121);
    HIDWORD(v202) = v119;
    LOWORD(v203) = objc_msgSend_featureChannels(a3, v122, v123);
    WORD1(v203) = objc_msgSend_numberOfImages(a3, v124, v125);
    *(&v203 + 4) = 0;
    if (!v115)
    {
      v130 = (objc_msgSend_featureChannels(a3, v126, v127) + 3) >> 2;
      if ((objc_msgSend_featureChannels(a3, v134, v135) & 3) != 0)
      {
        if (v130 >= v114)
        {
          v130 = v114;
        }

        v140 = objc_msgSend_width(a3, v136, v137);
        v133 = 1;
      }

      else if (v130 <= v114)
      {
        if (v130 <= 1)
        {
          v154 = 1;
        }

        else
        {
          v154 = v130;
        }

        v133 = v114 / v154;
        if (v114 / v154 > objc_msgSend_width(a3, v136, v137))
        {
          v133 = objc_msgSend_width(a3, v155, v156);
        }

        v157 = objc_msgSend_width(a3, v155, v156);
        if (v133)
        {
          v140 = (v133 + v157 - 1) / v133;
        }

        else
        {
          v140 = 0;
        }
      }

      else
      {
        v140 = objc_msgSend_width(a3, v136, v137);
        v133 = 1;
        v130 = v114;
      }

      v153 = objc_msgSend_height(a3, v138, v139);
      v145 = objc_msgSend_numberOfImages(a3, v158, v159);
      v146 = 1;
      goto LABEL_69;
    }

    if (objc_msgSend_width(a3, v126, v127) <= 0x10)
    {
      v130 = objc_msgSend_width(a3, v128, v129);
      if (objc_msgSend_height(a3, v141, v142) <= 0x10)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v130 = 16;
      if (objc_msgSend_height(a3, v128, v129) <= 0x10)
      {
LABEL_36:
        v133 = objc_msgSend_height(a3, v131, v132);
        goto LABEL_43;
      }
    }

    v133 = 16;
LABEL_43:
    v143 = v133 * v130;
    if (v133 * v130 <= 1)
    {
      v143 = 1;
    }

    v144 = v114 / v143;
    if (v144 >= v106)
    {
      v145 = (v36 + 3) >> 2;
    }

    else
    {
      v145 = v144;
    }

    if (v145 >= 0x40)
    {
      v146 = 64;
    }

    else
    {
      v146 = v145;
    }

    v147 = objc_msgSend_width(a3, v131, v132);
    if (v130)
    {
      v140 = (v130 + v147 - 1) / v130;
      v150 = objc_msgSend_height(a3, v148, v149);
      if (v133)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v140 = 0;
      v150 = objc_msgSend_height(a3, v148, v149);
      if (v133)
      {
LABEL_53:
        v153 = (v133 + v150 - 1) / v133;
        if (v145)
        {
LABEL_54:
          v145 = (v106 + v146 - 1) / v146;
LABEL_69:
          v160 = objc_msgSend_texture(a3, v151, v152);
          objc_msgSend_setTexture_atIndex_(a2, v161, v160, 0);
          v164 = objc_msgSend_data(a4, v162, v163);
          v167 = objc_msgSend_matrixBytes(a4, v165, v166);
          v170 = objc_msgSend_offset(a4, v168, v169);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v171, v164, v170 + v167 * a7, 0);
          objc_msgSend_setBytes_length_atIndex_(a2, v172, &v201, 32, 1);
          v198 = v140;
          v199 = v153;
          v200 = v145;
          v195 = v130;
          v196 = v133;
          v197 = v146;
          return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v173, &v198, &v195);
        }

LABEL_57:
        v146 = 0;
        goto LABEL_69;
      }
    }

    v153 = 0;
    if (v145)
    {
      goto LABEL_54;
    }

    goto LABEL_57;
  }

  v42 = a5->i64[0];
  v41 = a5->i64[1];
  objc_msgSend_dataType(a4, v39, v40);
  result = MPSLibrary::GetComputeState();
  if (result)
  {
    v45 = result;
    objc_msgSend_setComputePipelineState_(a2, v44, result);
    v190 = objc_msgSend_threadExecutionWidth(v45, v46, v47);
    v50 = objc_msgSend_maxTotalThreadsPerThreadgroup(v45, v48, v49);
    MPSLibrary::ReleaseComputeState();
    v53 = objc_msgSend_rowBytes(a4, v51, v52);
    v56 = objc_msgSend_dataType(a4, v54, v55) >> 3;
    v59 = objc_msgSend_offset(a4, v57, v58);
    v194 = v59 + v53 * v42 + objc_msgSend_matrixBytes(a4, v60, v61) * a7 + v41 * v56;
    v201 = 0;
    v203 = 0u;
    v202 = objc_msgSend_rowBytes(a4, v62, v63);
    LOWORD(v203) = objc_msgSend_featureChannels(a3, v64, v65);
    WORD1(v203) = objc_msgSend_numberOfImages(a3, v66, v67);
    *(&v203 + 4) = 0;
    v70 = objc_msgSend_width(a3, v68, v69);
    v73 = objc_msgSend_height(a3, v71, v72);
    v76 = objc_msgSend_numberOfImages(a3, v74, v75);
    v79 = 8;
    if (v70 <= 0x10)
    {
      v80 = 8;
    }

    else
    {
      v80 = 16;
    }

    if (v70 <= 0x10)
    {
      v81 = 3;
    }

    else
    {
      v81 = 4;
    }

    if (v73 <= 0x10)
    {
      v82 = 3;
    }

    else
    {
      v79 = 16;
      v82 = 4;
    }

    v83 = v76 << (v82 + v81);
    if (v83 > v50)
    {
      v84 = 1;
    }

    else
    {
      v84 = v76;
    }

    if (v83 > v50)
    {
      v85 = 1;
    }

    else
    {
      v85 = v79;
    }

    if (v83 <= v50)
    {
      v86 = v80;
    }

    else
    {
      v86 = v190;
    }

    v87 = (objc_msgSend_width(a3, v77, v78) + v86 - 1) / v86;
    v92 = v85 + objc_msgSend_height(a3, v88, v89) - 1;
    if (v83 <= v50)
    {
      v93 = v82;
    }

    else
    {
      v93 = 0;
    }

    v94 = v92 >> v93;
    v95 = (v84 + objc_msgSend_numberOfImages(a3, v90, v91) - 1) / v84;
    v98 = objc_msgSend_texture(a3, v96, v97);
    objc_msgSend_setTexture_atIndex_(a2, v99, v98, 0);
    v102 = objc_msgSend_data(a4, v100, v101);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v103, v102, v194, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v104, &v201, 32, 1);
    v198 = v87;
    v199 = v94;
    v200 = v95;
    v195 = v86;
    v196 = v85;
    v197 = v84;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v105, &v198, &v195);
  }

  return result;
}

char *sub_239974FEC(char *result, char *a2, uint64_t a3, void *a4, void *a5, unint64_t *a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *&result[*MEMORY[0x277CD7378]];
  v193 = result;
  v13 = *(*&result[*MEMORY[0x277CD7350]] + 1480);
  if (!a4)
  {
    if (v12)
    {
      return result;
    }

    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      v20 = objc_opt_class();
      v177 = NSStringFromClass(v20);
      result = MTLReportFailure();
    }

    v15 = 0;
    goto LABEL_16;
  }

  result = objc_msgSend_count(a4, a2, a3);
  v15 = result;
  if ((v12 & 1) == 0)
  {
    if (result)
    {
      v16 = result;
      for (i = 0; i != v16; ++i)
      {
        objc_msgSend_objectAtIndexedSubscript_(a4, v14, i, v177);
        result = objc_msgSend_objectAtIndexedSubscript_(a4, v18, i);
        if (!result)
        {
          result = MTLReportFailureTypeEnabled();
          if (result)
          {
            v19 = objc_opt_class();
            v177 = NSStringFromClass(v19);
            result = MTLReportFailure();
          }
        }
      }

      v15 = v16;
    }

LABEL_16:
    if (!a5)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        v176 = objc_opt_class();
        v177 = NSStringFromClass(v176);
        result = MTLReportFailure();
      }
    }

    v21 = 1;
    if (v15)
    {
      goto LABEL_18;
    }

    return result;
  }

  v21 = 0;
  if (result)
  {
LABEL_18:
    v22 = (v13 >> 52) & 0x3FF;
    v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v14, 0, v177);
    v204 = objc_msgSend_width(v23, v24, v25);
    v201 = objc_msgSend_height(v23, v26, v27);
    v192 = v23;
    v199 = objc_msgSend_featureChannels(v23, v28, v29);
    v190 = v15;
    if (v21)
    {
      v32 = 0;
      v33 = *a6;
      do
      {
        v34 = objc_msgSend_objectAtIndexedSubscript_(a4, v30, v32, v178);
        objc_msgSend_columns(a5, v35, v36);
        objc_msgSend_height(v34, v37, v38);
        objc_msgSend_width(v34, v39, v40);
        objc_msgSend_featureChannels(v34, v41, v42);
        v45 = objc_msgSend_columns(a5, v43, v44) - a6[1];
        v48 = objc_msgSend_height(v34, v46, v47);
        v51 = objc_msgSend_width(v34, v49, v50) * v48;
        if (v45 < v51 * objc_msgSend_featureChannels(v34, v52, v53) && MTLReportFailureTypeEnabled())
        {
          v203 = objc_msgSend_columns(a5, v54, v55);
          v58 = a6[1];
          v61 = objc_msgSend_height(v34, v59, v60);
          v182 = objc_msgSend_width(v34, v62, v63);
          v183 = objc_msgSend_featureChannels(v34, v64, v65);
          v15 = v190;
          v180 = v58;
          v181 = v61;
          v179 = v203;
          MTLReportFailure();
        }

        objc_msgSend_rows(a5, v54, v55, v179, v180, v181, v182, v183);
        if (v33 >= objc_msgSend_rows(a5, v56, v57) && MTLReportFailureTypeEnabled())
        {
          v178 = *a6;
          v180 = objc_msgSend_rows(a5, v30, v31);
          MTLReportFailure();
        }

        ++v33;
        ++v32;
      }

      while (v15 != v32);
    }

    v189 = a4;
    v66 = a7;
    objc_msgSend_dataType(a5, v30, v31, v178);
    objc_msgSend_textureType(v192, v67, v68);
    v69 = 0;
    v70 = v201 * v204;
    v71 = 32;
    if ((v201 * v204) > 0x100)
    {
      v71 = 16;
    }

    if (v70 > 0x400)
    {
      v71 = 16;
    }

    if (v70 <= 0x1000)
    {
      v72 = v71;
    }

    else
    {
      v72 = 1;
    }

    v73.i16[3] = 1;
    v73.i16[0] = v204;
    v73.i16[1] = v201;
    v73.i16[2] = (v199 + 3) >> 2;
    v74.i16[3] = 1;
    v74.i16[0] = v73.i16[2];
    v74.i16[1] = v201;
    v74.i16[2] = v204;
    v75 = vbsl_s8(vceqd_s64(v66, 0), v74, v73);
    if (v22 >= v72)
    {
      v76 = v72;
    }

    else
    {
      v76 = v22;
    }

    v215 = -1;
    *&v77 = -1;
    *(&v77 + 1) = -1;
    v214 = v77;
    v213 = v77;
    v212 = v77;
    v211 = v77;
    v188 = v76;
    v210 = v76;
    v78 = v75.u16[2];
    v79 = -65536 * v75.u16[2];
    v80 = vmax_u16(v75, 0x1000100010001);
    v187 = v78;
    v185 = 0x80000000 / v78;
    v186 = v79;
    v205 = v80;
    v80.i16[3] = 1;
    v184 = v80;
    v81 = a2;
    do
    {
      v202 = v69 + v188;
      if (v69 + v188 <= v15)
      {
        v86 = v188;
      }

      else
      {
        v86 = &v15[-v69];
      }

      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      objc_msgSend_setComputePipelineState_(v81, v88, PipelineStateForMPSKey, 0, 0, 0, 0, 0);
      MPSLibrary::ReleaseMPSKey();
      v91 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v89, v90);
      objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v92, v93);
      if (v91 >= 0x100)
      {
        v96 = 256;
      }

      else
      {
        v96 = v91;
      }

      v97 = *(*&v193[*MEMORY[0x277CD7350]] + 16);
      v216 = 0;
      v217 = 0;
      v218 = 0;
      if (v97)
      {
        objc_msgSend_maxThreadsPerThreadgroup(v97, v94, v95);
        v98 = v216;
        v99 = v217;
        v100 = v218;
      }

      else
      {
        v100 = 0;
        v99 = 0;
        v98 = 0;
      }

      if (v205.u16[0] * v205.u16[1] * v205.u16[2] <= v96 && v98 >= v205.u16[0] && v99 >= v205.u16[1] && v100 >= v205.u16[2])
      {
        v106 = v184;
        v107 = v205.u16[2];
        v108 = v205.u16[1];
        v109 = v205.u16[0];
        v110 = v187;
        v111 = a5;
        goto LABEL_119;
      }

      if (v97)
      {
        v208 = 0uLL;
        *&v209 = 0;
        objc_msgSend_maxThreadsPerThreadgroup(v97, v94, v95);
        v105 = *(&v208 + 1);
        v104 = v208;
        v98 = v216;
        v99 = v217;
        v100 = v218;
      }

      else
      {
        v104 = 0;
        v105 = 0;
      }

      v112 = (64 - __clz(v96)) >> 1;
      v113 = 63 - __clz(v105);
      v114 = v105 == 0;
      v115 = 0x8000000000000000;
      if (!v114)
      {
        v115 = v113;
      }

      if (v112 < v115)
      {
        LOBYTE(v115) = v112;
      }

      v116 = v96 >> v115;
      if (v104 < v96 >> v115)
      {
        v116 = v104;
      }

      v117 = 1 << v115;
      if (v98 >= v205.u16[0])
      {
        v118 = v205.u16[0];
      }

      else
      {
        v118 = v98;
      }

      if (v99 >= v205.u16[1])
      {
        v119 = v205.u16[1];
      }

      else
      {
        v119 = v99;
      }

      if (v100 >= v205.u16[2])
      {
        v120 = v205.u16[2];
      }

      else
      {
        v120 = v100;
      }

      v110 = v187;
      if (v116)
      {
        v121 = v205.u16[0] + v116 - 1;
        v122 = (v205.u16[1] + v117 - 1) / v117;
        if (v116 <= v121)
        {
          v123 = (v205.u16[0] + v121 / v116 - 1) / (v121 / v116);
          if (v122)
          {
LABEL_83:
            v124 = (v205.u16[1] + v122 - 1) / v122;
            goto LABEL_86;
          }
        }

        else
        {
          v123 = 0;
          if (v122)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        v123 = 0;
        v122 = (v205.u16[1] + v117 - 1) / v117;
        if (v122)
        {
          goto LABEL_83;
        }
      }

      v124 = 0;
LABEL_86:
      if (v123 >= v118)
      {
        v109 = v118;
      }

      else
      {
        v109 = v123;
      }

      if (v124 >= v119)
      {
        v108 = v119;
      }

      else
      {
        v108 = v124;
      }

      v125 = v108 * v109;
      if (v96 / (v108 * v109) >= v120)
      {
        v126 = v120;
      }

      else
      {
        v126 = v96 / (v108 * v109);
      }

      if (v205.u16[3] < 2u)
      {
        v107 = v126;
        v128 = v96 - v126 * v125;
        if (v124 < v119)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v126 < 2)
        {
          v107 = v126;
        }

        else
        {
          do
          {
            v107 = v126;
          }

          while (v205.u16[2] % v126--);
        }

        v128 = v96 - v107 * v125;
        if (v124 < v119)
        {
LABEL_101:
          v129 = v107 * v109;
          if (v128 > v107 * v109)
          {
            v108 += v128 / v129;
            if (v108 >= v119)
            {
              v108 = v119;
            }

            v128 = v96 - v108 * v129;
          }
        }
      }

      if (v123 < v118)
      {
        v130 = v108 * v107;
        if (v128 > v108 * v107)
        {
          v109 += v128 / v130;
          if (v109 >= v118)
          {
            v109 = v118;
          }

          v128 = v96 - v109 * v130;
        }
      }

      v106.i16[2] = 1;
      v106.i16[0] = v116;
      v106.i16[1] = v117;
      v111 = a5;
      if (v107 < v120 && v128 > v109 * v108)
      {
        v107 += v128 / (v109 * v108);
        if (v107 >= v120)
        {
          v107 = v120;
        }

        if (v205.u16[3] >= 2u && v107 >= 2)
        {
          do
          {
            v131 = v107;
          }

          while (v205.u16[2] % v107--);
          v107 = v131;
        }
      }

LABEL_119:
      v133 = v106.i16[0];
      if (v106.i16[0])
      {
        v134 = (v205.u16[0] + v106.u16[0] - 1) / v106.u16[0];
        v135 = v106.u16[1];
        if (v106.i16[1])
        {
          goto LABEL_121;
        }
      }

      else
      {
        LOWORD(v134) = 0;
        v135 = v106.u16[1];
        if (v106.i16[1])
        {
LABEL_121:
          v136 = (v205.u16[1] + v135 - 1) / v135;
          v137 = v106.u16[2];
          if (v106.i16[2])
          {
            goto LABEL_122;
          }

          goto LABEL_128;
        }
      }

      LOWORD(v136) = 0;
      v137 = v106.u16[2];
      if (v106.i16[2])
      {
LABEL_122:
        v138 = (v205.u16[2] + v137 - 1) / v137;
        if (v109)
        {
          goto LABEL_123;
        }

        goto LABEL_129;
      }

LABEL_128:
      LOWORD(v138) = 0;
      if (v109)
      {
LABEL_123:
        v139 = (v205.u16[0] + v109 - 1) / v109;
        if (v108)
        {
          goto LABEL_124;
        }

        goto LABEL_130;
      }

LABEL_129:
      LOWORD(v139) = 0;
      if (v108)
      {
LABEL_124:
        v140 = (v205.u16[1] + v108 - 1) / v108;
        if (!v107)
        {
          goto LABEL_131;
        }

        goto LABEL_125;
      }

LABEL_130:
      LOWORD(v140) = 0;
      if (!v107)
      {
LABEL_131:
        v141 = 0;
        goto LABEL_132;
      }

LABEL_125:
      v141 = (v205.u16[2] + v107 - 1) / v107;
LABEL_132:
      LOWORD(v142) = v134;
      WORD1(v142) = v136;
      WORD2(v142) = v138;
      HIWORD(v142) = v205.i16[3];
      v143 = v140 * v139 * v141;
      v144 = v136 * v134 * v138;
      LOWORD(v145) = v139;
      WORD1(v145) = v140;
      WORD2(v145) = v141;
      HIWORD(v145) = v205.i16[3];
      if (v143 < v144)
      {
        v146 = v107;
      }

      else
      {
        v146 = v137;
      }

      if (v143 < v144)
      {
        v147 = v108;
      }

      else
      {
        v147 = v135;
      }

      if (v143 < v144)
      {
        v148 = v109;
      }

      else
      {
        v148 = v133;
      }

      if (v143 < v144)
      {
        v142 = v145;
      }

      v198 = v142;
      v208 = 0u;
      v209 = 0u;
      *(&v208 + 1) = objc_msgSend_rowBytes(v111, v141, v143);
      LOWORD(v209) = objc_msgSend_featureChannels(v192, v149, v150);
      WORD1(v209) = 1;
      v200 = v146;
      if (v110 >= 2)
      {
        v154 = __clz(v185);
        v155 = v185 >> (16 - v154);
        v156 = v154 + 15;
        v157 = v186 * v155 / v110;
        if (v157 <= v155)
        {
          v158 = v155;
        }

        else
        {
          v158 = v155 + 1;
        }

        if (v157 <= v155)
        {
          LOWORD(v155) = 0;
        }

        v153 = (v156 << 48) | ((v157 - v155) << 32) | (v158 << 16) | v110;
      }

      else
      {
        v153 = 65537;
      }

      *(&v209 + 4) = v153;
      v197 = *a6;
      v195 = objc_msgSend_rowBytes(v111, v151, v152);
      v196 = a6[1];
      v161 = objc_msgSend_dataType(v111, v159, v160);
      v164 = objc_msgSend_offset(v111, v162, v163);
      v169 = objc_msgSend_matrixBytes(v111, v165, v166);
      if (v86)
      {
        for (j = 0; j < v86; ++j)
        {
          v171 = objc_msgSend_objectAtIndexedSubscript_(v189, v167, v69 + j);
          v174 = objc_msgSend_texture(v171, v172, v173);
          objc_msgSend_setTexture_atIndex_(v81, v175, v174, j);
        }
      }

      v82 = objc_msgSend_data(a5, v167, v168);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v83, v82, v164 + (v197 + v69) * v195 + v169 * a8 + v196 * (v161 >> 3), 0);
      objc_msgSend_setBytes_length_atIndex_(a2, v84, &v208, 32, 1);
      v216 = v198;
      v217 = WORD1(v198);
      v218 = (WORD2(v198) * HIWORD(v198));
      v81 = a2;
      v207[0] = v148;
      v207[1] = v147;
      v207[2] = v200;
      result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v85, &v216, v207);
      v69 += v188;
      v15 = v190;
    }

    while (v202 < v190);
  }

  return result;
}

void sub_239976150(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_239976524(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v18 = (v5 & 0x2000000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v18, 53, 0);
  v17 = BYTE6(v5) & 1;
  v16 = (v5 & 0x1000000000000) == 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v8, &v16, 53, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v9, &v17, 53, 2);
  v15 = v5;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v10, &v15, 41, 3);
  v14 = WORD2(v5);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v11, &v14, 41, 4);
  v12 = _MPSNewSpecializedFunction();

  return v12;
}

uint64_t sub_239976714(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = a6[4];
  v12 = a6[5].i64[0];
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 0, (a1 + 208), a6);
}

uint64_t sub_239976C80(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = a6[4];
  v12 = a6[5].i64[0];
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 1, (a1 + 208), a6);
}

uint64_t sub_2399771E8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = a6[4];
  v12 = a6[5].i64[0];
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 2, (a1 + 208), a6);
}

uint64_t sub_239977730(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = a6[4];
  v12 = a6[5].i64[0];
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 3, (a1 + 208), a6);
}

uint64_t sub_239977C78(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = a6[4];
  v12 = a6[5].i64[0];
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 4, (a1 + 208), a6);
}

uint64_t sub_2399780D4(void *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, int a8, uint64_t *a9, void *a10)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a1;
  v16 = a10[2];
  v15 = a10[3];
  v17 = a10[5];
  v18 = a10[6];
  if (*a10 == a10[1])
  {
    if (a4 == a5)
    {
      return -18;
    }

    v21 = a10[5];
    v23 = a10[6];
    v25 = a10[2];
    v16 = a2;
    v26 = a10[3];
    v27 = a8;
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    a8 = v27;
    LOWORD(v15) = v26;
    a2 = v16;
    LOWORD(v16) = v25;
    v13 = a3;
    v18 = v23;
    v14 = a1;
    v17 = v21;
    v11 = a5;
    v12 = a4;
    v10 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  if (v18)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v52 = v15;
    if ((**a10 & 0xF000000) == 0x1000000)
    {
      v20 = 0;
    }

    else
    {
      v56 = a8;
      v20 = 5;
      if (objc_msgSend_buffer(v12, a2, a3))
      {
        if (objc_msgSend_buffer(v11, v30, v31))
        {
          v20 = 10;
        }

        else
        {
          v20 = 5;
        }
      }

      a8 = v56;
    }

    v51 = v20 + a8;
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      return -1;
    }

    v34 = ComputeState;
    objc_msgSend_setComputePipelineState_(v14, v33, ComputeState);
    v50 = objc_msgSend_maxTotalThreadsPerThreadgroup(v34, v35, v36);
    MPSLibrary::ReleaseComputeState();
    v38 = *a9;
    *&v37 = a9[1];
    DWORD2(v37) = *(a9 + 4);
    v59 = v37;
    v65 = 0;
    v66 = 0;
    v60 = v38;
    *&v37 = vmovn_s64(*v10);
    v62 = WORD2(v37);
    v61 = v37;
    v64 = v52;
    v63 = v16;
    WORD1(v65) = v18;
    LOWORD(v65) = v17;
    objc_msgSend_setTexture_atIndex_(v14, v39, v12, 0);
    objc_msgSend_setTexture_atIndex_(v14, v40, v11, 1);
    objc_msgSend_setBytes_length_atIndex_(v14, v41, &v59, 48, 0);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v14, v43, Sampler, 0);
    v45 = (&unk_2399AF618 + 32 * *(*(*(v13 + 280) + 16 * v51) + 64));
    v46 = *v45;
    if (v50 >= 16 * *v45)
    {
      v47 = 16;
    }

    else
    {
      v47 = v50 / v46;
    }

    v48 = v45[2];
    v49 = v45[3] * v47;
    v58[0] = (v17 + v48 * v46 - 1) / (v48 * v46);
    v58[1] = (v18 + v49 - 1) / v49;
    v58[2] = 1;
    v57[0] = v46;
    v57[1] = v47;
    v57[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v14, v44, v58, v57, v50);
  }

  return 0;
}

void sub_2399791E8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_23994744C(va, a2, a3);
  MPSAutoCache::~MPSAutoCache((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_239979F7C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, id);
  v23 = va_arg(va1, void);
  sub_23994744C(va, a2, a3);
  MPSAutoCache::~MPSAutoCache(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_23997A0C4(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a2;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v14 = *(a1 + 160);
  v15 = *(a1 + 224);
  *&v64.origin.x = *(a1 + 208);
  *&v64.origin.z = v15;
  *&v64.size.height = *(a1 + 240);
  v16 = a6[5];
  v17 = a6[6];
  v18 = *a6;
  v19 = a6[1];
  if (*a6 == v19)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v57 = v11;
    v59 = v14;
    v28 = v13;
    v29 = v12;
    v31 = a3;
    v32 = a6[5];
    v11 = *a6;
    v33 = a6[1];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v19 = v33;
    v18 = v11;
    v16 = v32;
    a3 = v31;
    v9 = a2;
    v12 = v29;
    v13 = v28;
    v8 = a4;
    v6 = a6;
    LOBYTE(v11) = v57;
    v14 = v59;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v17)
  {
    if (v16)
    {
      v56 = v19;
      v58 = v18;
      v52 = v16;
      v54 = a3;
      memset(&v63, 0, sizeof(v63));
      v62.width = objc_msgSend_width(v8, a2, a3);
      v62.height = objc_msgSend_height(v8, v21, v22);
      v62.depth = 1;
      v61 = v64;
      MPSGetEffectiveClipRegion(&v63, &v62, &v61);
      result = -3;
      if (v63.size.height)
      {
        if (v63.size.width)
        {
          v25 = v58;
          if ((*v58 & 0x40000000000) != 0)
          {
            v27 = 0;
            v26 = v56;
            if (v11)
            {
LABEL_20:
              v61 = v63;
              return sub_23997C8D0(a1, v12, v13, v9, v54, v8, a5, v6, &v61, v14, 1, (v11 & 2) != 0);
            }
          }

          else
          {
            v26 = v56;
            v27 = (*(v56 + 5) & 4) == 0;
            if (v11)
            {
              goto LABEL_20;
            }
          }

          if ((*v58 & 0xF000000) == 0)
          {
            v44 = MTLReportFailureTypeEnabled();
            v26 = v56;
            v25 = v58;
            if (v44)
            {
              v48 = v8;
              MTLReportFailure();
              v26 = v56;
              v25 = v58;
            }
          }

          if ((*(v26 + 3) & 0xF) == 0)
          {
            v45 = MTLReportFailureTypeEnabled();
            v26 = v56;
            v25 = v58;
            if (v45)
            {
              v48 = a5;
              MTLReportFailure();
              v26 = v56;
              v25 = v58;
            }
          }

          v60 = v14;
          if (((*v26 ^ *v25) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v48 = v8;
            v50 = a5;
            MTLReportFailure();
          }

          v35 = v11;
          if (!v27 && MTLReportFailureTypeEnabled())
          {
            v48 = a5;
            v50 = v8;
            MTLReportFailure();
          }

          objc_msgSend_width(v8, v23, v24, v48, v50);
          v36 = v63.size.width + v63.origin.x;
          if (v36 > objc_msgSend_width(v8, v37, v38) && MTLReportFailureTypeEnabled())
          {
            v49 = v63.size.width + v63.origin.x;
            v51 = objc_msgSend_width(v8, v39, v40);
            MTLReportFailure();
          }

          objc_msgSend_height(v8, v39, v40, v49, v51);
          v41 = v63.size.height + v63.origin.y;
          if (v41 > objc_msgSend_height(v8, v42, v43) && MTLReportFailureTypeEnabled())
          {
            objc_msgSend_height(v8, v46, v47);
            MTLReportFailure();
          }

          LOBYTE(v11) = v35;
          v14 = v60;
          if (v52 <= 1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997A928(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a2;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v58 = *(a1 + 160);
  v14 = *(a1 + 224);
  *&v62.origin.x = *(a1 + 208);
  *&v62.origin.z = v14;
  *&v62.size.height = *(a1 + 240);
  v16 = a6[5];
  v15 = a6[6];
  v17 = *a6;
  v18 = a6[1];
  if (*a6 == v18)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v54 = v13;
    v57 = v11;
    v29 = v12;
    v31 = a3;
    v32 = *a6;
    v11 = a6[1];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v18 = v11;
    v17 = v32;
    a3 = v31;
    v9 = a2;
    v12 = v29;
    v8 = a4;
    v13 = v54;
    LOBYTE(v11) = v57;
    v6 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v15)
  {
    if (v16)
    {
      v20 = v18;
      v51 = a3;
      v53 = v17;
      memset(&v61, 0, sizeof(v61));
      v60.width = objc_msgSend_width(v8, a2, a3);
      v60.height = objc_msgSend_height(v8, v21, v22);
      v60.depth = 1;
      v59 = v62;
      MPSGetEffectiveClipRegion(&v61, &v60, &v59);
      result = -3;
      if (v61.size.height)
      {
        if (v61.size.width)
        {
          v25 = v53;
          if ((*v53 & 0x40000000000) != 0)
          {
            v27 = 0;
            v26 = v20;
            v56 = v11;
            if (v11)
            {
LABEL_19:
              v59 = v61;
              return sub_23997C8D0(a1, v12, v13, v9, v51, v8, a5, v6, &v59, v58, 2, (v56 & 2) != 0);
            }
          }

          else
          {
            v26 = v20;
            v27 = (*(v20 + 5) & 4) == 0;
            v56 = v11;
            if (v11)
            {
              goto LABEL_19;
            }
          }

          if ((*v53 & 0xF000000) == 0)
          {
            v43 = MTLReportFailureTypeEnabled();
            v26 = v20;
            v25 = v53;
            if (v43)
            {
              v47 = v8;
              MTLReportFailure();
              v26 = v20;
              v25 = v53;
            }
          }

          if ((*(v26 + 3) & 0xF) == 0)
          {
            v44 = MTLReportFailureTypeEnabled();
            v26 = v20;
            v25 = v53;
            if (v44)
            {
              v47 = a5;
              MTLReportFailure();
              v26 = v20;
              v25 = v53;
            }
          }

          if (((*v26 ^ *v25) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v47 = v8;
            v49 = a5;
            MTLReportFailure();
          }

          v55 = v13;
          if (!v27 && MTLReportFailureTypeEnabled())
          {
            v47 = a5;
            v49 = v8;
            MTLReportFailure();
          }

          objc_msgSend_width(v8, v23, v24, v47, v49);
          v34 = v61.size.width + v61.origin.x;
          if (v34 > objc_msgSend_width(v8, v35, v36) && MTLReportFailureTypeEnabled())
          {
            v48 = v61.size.width + v61.origin.x;
            v50 = objc_msgSend_width(v8, v37, v38);
            MTLReportFailure();
          }

          objc_msgSend_height(v8, v37, v38, v48, v50);
          v39 = v61.size.height + v61.origin.y;
          v42 = v39 > objc_msgSend_height(v8, v40, v41);
          v13 = v55;
          if (v42)
          {
            if (MTLReportFailureTypeEnabled())
            {
              objc_msgSend_height(v8, v45, v46);
              v13 = v55;
              MTLReportFailure();
            }
          }

          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997B160(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a2;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v58 = *(a1 + 160);
  v14 = *(a1 + 224);
  *&v62.origin.x = *(a1 + 208);
  *&v62.origin.z = v14;
  *&v62.size.height = *(a1 + 240);
  v16 = a6[5];
  v15 = a6[6];
  v17 = *a6;
  v18 = a6[1];
  if (*a6 == v18)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v54 = v13;
    v57 = v11;
    v29 = v12;
    v31 = a3;
    v32 = *a6;
    v11 = a6[1];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v18 = v11;
    v17 = v32;
    a3 = v31;
    v9 = a2;
    v12 = v29;
    v8 = a4;
    v13 = v54;
    LOBYTE(v11) = v57;
    v6 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v15)
  {
    if (v16)
    {
      v20 = v18;
      v51 = a3;
      v53 = v17;
      memset(&v61, 0, sizeof(v61));
      v60.width = objc_msgSend_width(v8, a2, a3);
      v60.height = objc_msgSend_height(v8, v21, v22);
      v60.depth = 1;
      v59 = v62;
      MPSGetEffectiveClipRegion(&v61, &v60, &v59);
      result = -3;
      if (v61.size.height)
      {
        if (v61.size.width)
        {
          v25 = v53;
          if ((*v53 & 0x40000000000) != 0)
          {
            v27 = 0;
            v26 = v20;
            v56 = v11;
            if (v11)
            {
LABEL_19:
              v59 = v61;
              return sub_23997C8D0(a1, v12, v13, v9, v51, v8, a5, v6, &v59, v58, 4, (v56 & 2) != 0);
            }
          }

          else
          {
            v26 = v20;
            v27 = (*(v20 + 5) & 4) == 0;
            v56 = v11;
            if (v11)
            {
              goto LABEL_19;
            }
          }

          if ((*v53 & 0xF000000) == 0)
          {
            v43 = MTLReportFailureTypeEnabled();
            v26 = v20;
            v25 = v53;
            if (v43)
            {
              v47 = v8;
              MTLReportFailure();
              v26 = v20;
              v25 = v53;
            }
          }

          if ((*(v26 + 3) & 0xF) == 0)
          {
            v44 = MTLReportFailureTypeEnabled();
            v26 = v20;
            v25 = v53;
            if (v44)
            {
              v47 = a5;
              MTLReportFailure();
              v26 = v20;
              v25 = v53;
            }
          }

          if (((*v26 ^ *v25) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v47 = v8;
            v49 = a5;
            MTLReportFailure();
          }

          v55 = v13;
          if (!v27 && MTLReportFailureTypeEnabled())
          {
            v47 = a5;
            v49 = v8;
            MTLReportFailure();
          }

          objc_msgSend_width(v8, v23, v24, v47, v49);
          v34 = v61.size.width + v61.origin.x;
          if (v34 > objc_msgSend_width(v8, v35, v36) && MTLReportFailureTypeEnabled())
          {
            v48 = v61.size.width + v61.origin.x;
            v50 = objc_msgSend_width(v8, v37, v38);
            MTLReportFailure();
          }

          objc_msgSend_height(v8, v37, v38, v48, v50);
          v39 = v61.size.height + v61.origin.y;
          v42 = v39 > objc_msgSend_height(v8, v40, v41);
          v13 = v55;
          if (v42)
          {
            if (MTLReportFailureTypeEnabled())
            {
              objc_msgSend_height(v8, v45, v46);
              v13 = v55;
              MTLReportFailure();
            }
          }

          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997BBE0(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v7 = a4;
  v8 = a2;
  v98[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + *MEMORY[0x277CD7378]);
  v10 = *(a1 + *MEMORY[0x277CD7350]);
  v11 = *(a1 + 224);
  *&v97.origin.x = *(a1 + 208);
  *&v97.origin.z = v11;
  *&v97.size.height = *(a1 + 240);
  v90 = *(a1 + 256);
  v12 = *(a1 + 272);
  v13 = *(a1 + 264);
  v88 = *(a1 + 280);
  v14 = *(a6 + 16);
  v15 = *(a6 + 40);
  v16 = *(a6 + 48);
  v17 = *a6;
  v18 = *(a6 + 8);
  if (*a6 == v18)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v86 = *(a6 + 16);
    v82 = v9;
    v84 = *a6;
    v26 = *(a6 + 40);
    v9 = *(a6 + 8);
    v27 = v10;
    v30 = *(a1 + 264);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v13 = v30;
    v8 = a2;
    v7 = a4;
    v10 = v27;
    v18 = v9;
    v15 = v26;
    LOBYTE(v9) = v82;
    v17 = v84;
    v14 = v86;
    if (isEqual)
    {
      return -18;
    }
  }

  v87 = a5;
  result = 0;
  if (v16)
  {
    if (v15)
    {
      v20 = v15;
      v83 = v13;
      v85 = v14;
      memset(v96, 0, sizeof(v96));
      v95.width = objc_msgSend_width(v7, a2, a3);
      v95.height = objc_msgSend_height(v7, v21, v22);
      v95.depth = 1;
      v94 = v97;
      MPSGetEffectiveClipRegion(v96[0].i64, &v95, &v94);
      result = -3;
      if (v96[2].i64[0])
      {
        if (v96[1].i64[1])
        {
          if ((*v17 & 0x40000000000) != 0)
          {
            v25 = 0;
            if (v9)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v25 = (*(v18 + 5) & 4) == 0;
            if (v9)
            {
LABEL_21:
              v42 = 0;
              v43 = *(v10 + 1480);
              v44 = 1;
              v45 = ((v90 << 8) + v96[1].i64[1] - 1) / (v90 << 8);
              do
              {
                v46 = v44 * v45;
                ++v44;
                ++v42;
              }

              while (v46 < v43);
              if (v42 >= (HIDWORD(v90) + v96[2].i64[0] - 1) / HIDWORD(v90))
              {
                v47 = (HIDWORD(v90) + v96[2].i64[0] - 1) / HIDWORD(v90);
              }

              else
              {
                v47 = v42;
              }

              v48 = MEMORY[0x23EE7BAC0](&v95, a3, v87);
              v80 = v47;
              v49 = v47 * v45;
              TempBuffer = MPSAutoCache::GetTempBuffer(v48, 36 * v49, 0);
              if (!v12)
              {
                v12 = v83;
              }

              v98[0] = v12;
              objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, v98, 1, v76, v78);
              MPSLibrary::CreateUberShaderKey();
              PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
              MPSLibrary::CreateUberShaderKey();
              v52 = MPSLibrary::GetPipelineStateForMPSKey();
              objc_msgSend_setComputePipelineState_(v8, v53, PipelineStateForMPSKey, 0, 0, 0, 0, 0);
              MPSLibrary::ReleaseMPSKey();
              v54 = vmovn_s64(v96[0]);
              WORD1(v94.origin.x) = v54.i16[2];
              LOWORD(v94.origin.x) = v54.i16[0];
              v55 = vmovn_s64(*(&v96[1] + 8));
              HIWORD(v94.origin.x) = v55.i16[2];
              v56 = vmovn_s64(vaddq_s64(v96[0], *(&v96[1] + 8)));
              WORD2(v94.origin.x) = v55.i16[0];
              WORD1(v94.origin.y) = v56.i16[2];
              LOWORD(v94.origin.y) = v56.i16[0];
              HIWORD(v94.origin.y) = WORD2(v90);
              WORD2(v94.origin.y) = v90;
              v57 = vmovn_s64(v85);
              WORD1(v94.origin.z) = v57.i16[2];
              LOWORD(v94.origin.z) = v57.i16[0];
              *v57.i32 = 1.0 / (v96[2].i64[0] / HIDWORD(v90) * (v96[1].i64[1] / v90));
              HIDWORD(v94.origin.z) = v49;
              LODWORD(v94.size.width) = v57.i32[0];
              v60 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v58, v59);
              objc_msgSend_setTexture_atIndex_(v8, v61, v7, 0);
              objc_msgSend_setBuffer_offset_atIndex_(v8, v62, TempBuffer, 0, 0);
              objc_msgSend_setBytes_length_atIndex_(v8, v63, &v94, 28, 1);
              objc_msgSend_setBuffer_offset_atIndex_(v8, v64, v88, 0, 2);
              v65 = 36 * (0x100 / v60) + 15;
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v8, v66, v65 & 0xFFF0, 0);
              v92.i64[0] = v45;
              v92.i64[1] = v80;
              v93 = 1;
              *v91 = 256;
              *&v91[8] = vdupq_n_s64(1uLL);
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v8, v67, &v92, v91);
              objc_msgSend_setComputePipelineState_(v8, v68, v52);
              MPSLibrary::ReleaseMPSKey();
              objc_msgSend_setBuffer_offset_atIndex_(v8, v69, TempBuffer, 0, 0);
              objc_msgSend_setTexture_atIndex_(v8, v70, v87, 0);
              objc_msgSend_setBytes_length_atIndex_(v8, v71, &v94, 28, 1);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v8, v72, v65 & 0xFFF0, 0);
              v92 = vdupq_n_s64(1uLL);
              v93 = 1;
              *v91 = xmmword_239988DA0;
              *&v91[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v8, v73, &v92, v91);
              MPSAutoCache::~MPSAutoCache(&v95);
              return 0;
            }
          }

          if ((*v17 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
          {
            v76 = v7;
            MTLReportFailure();
          }

          if ((*(v18 + 3) & 0xF) == 0 && MTLReportFailureTypeEnabled())
          {
            v76 = v87;
            MTLReportFailure();
          }

          if (((*v18 ^ *v17) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v76 = v7;
            v78 = v87;
            MTLReportFailure();
          }

          if (!v25 && MTLReportFailureTypeEnabled())
          {
            v76 = v87;
            v78 = v7;
            MTLReportFailure();
          }

          objc_msgSend_width(v7, v23, v24, v76, v78);
          v32 = v96[0].i64[0];
          v33 = v96[1].i64[1];
          if (v33 + v32 > objc_msgSend_width(v7, v34, v35) && MTLReportFailureTypeEnabled())
          {
            v77 = v96[1].i64[1] + v96[0].i64[0];
            v79 = objc_msgSend_width(v7, v36, v37);
            MTLReportFailure();
          }

          objc_msgSend_height(v7, v36, v37, v77, v79);
          v38 = v96[0].i64[1];
          v39 = v96[2].i64[0];
          if (v39 + v38 > objc_msgSend_height(v7, v40, v41) && MTLReportFailureTypeEnabled())
          {
            v76 = v96[2].i64[0] + v96[0].i64[1];
            v78 = objc_msgSend_height(v7, v74, v75);
            MTLReportFailure();
          }

          if (v20 <= 2 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          goto LABEL_21;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997C8D0(uint64_t a1, MPSDevice *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  if (a11 == 1)
  {
    v78 = 0;
    goto LABEL_13;
  }

  if (a11 == 2)
  {
    v78 = 0;
    goto LABEL_13;
  }

  if (a12)
  {
    v17 = 0x1000000;
    if ((**a8 & 0xF000000) != 0x1000000)
    {
      if ((**a8 & 0x3FFLL) != 0x7D && (**a8 & 0x3FFLL) != 0x69 || (v17 = **a8 & 0xF000000, (*(a2 + 1476) & 0x80) != 0))
      {
        v78 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v17 = **a8 & 0xF000000;
  }

  v78 = v17 == 0x1000000;
LABEL_13:
  v77 = *(a8 + 8);
  v72 = *(a8 + 16);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v20 = ComputeState;
    v73 = a7;
    objc_msgSend_setComputePipelineState_(a4, v19, ComputeState);
    v23 = objc_msgSend_maxTotalThreadsPerThreadgroup(v20, v21, v22);
    v26 = objc_msgSend_threadExecutionWidth(v20, v24, v25);
    MPSLibrary::ReleaseComputeState();
    v27 = *(a9 + 32);
    v28 = v23 / v26;
    if (v78)
    {
      v29 = (v27 + 1) >> 1;
      if (v28 >= v29)
      {
        v30 = (v27 + 1) >> 1;
      }

      else
      {
        v30 = v23 / v26;
      }

      if (a11 == 4)
      {
        v31 = 0;
        v32 = (*(a9 + 24) + 1) >> 1;
        v33 = (v26 + v32 - 1) / v26;
        v76 = (v32 + v33 * v26 - 1) / (v33 * v26);
        v34 = *v77;
        v95[0] = *v77;
        v79 = (v29 + v30 - 1) / v30;
        v80 = v30;
LABEL_28:
        v37 = (BYTE3(v34) & 0xF) - 1;
        if (v37 <= 3)
        {
          v38 = qword_2399AF768[v37];
          if (v38 != (v34 & 0x3FF))
          {
            v95[0] = MPSDevice::GetPixelInfo(a2, v38, MPSImageFeatureChannelFormatNone);
          }
        }

LABEL_31:
        MEMORY[0x23EE7BAC0](v94, a5);
        v93 = 1;
        CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
        v91 = v80 * v79;
        v92 = 2;
        v74 = MPSAutoCache::GetCompressedTempTexture();
        v40 = vmovn_s64(*a9);
        v89[1] = v40.i16[2];
        v89[0] = v40.i16[0];
        v41 = vmovn_s64(*(a9 + 24));
        v89[3] = v41.i16[2];
        v89[2] = v41.i16[0];
        v89[5] = v80 * v79;
        v89[4] = v76 * v26;
        v89[7] = 1;
        v89[6] = v33;
        v90 = 0;
        if (a11 == 1)
        {
          v42 = -1.0;
          if ((*v77 & 0x10000000000) == 0)
          {
            v42 = 0.0;
          }

          v43 = 3.4028e38;
          if ((*v77 & 0x20000000000) != 0)
          {
            v43 = 1.0;
          }

          else
          {
            v42 = -3.4028e38;
          }

          v90 = __PAIR64__(LODWORD(v42), LODWORD(v43));
        }

        objc_msgSend_setTexture_atIndex_(a4, v39, a6, 0);
        objc_msgSend_setTexture_atIndex_(a4, v44, CompressedTempTexture, 1);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a4, v46, Sampler, 0);
        objc_msgSend_setBytes_length_atIndex_(a4, v47, v89, 24, 0);
        *v88 = v76;
        *&v88[8] = v79;
        *&v88[16] = 1;
        v86 = v26;
        v87.i64[0] = v80;
        v87.i64[1] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v48, v88, &v86);
        v50 = MPSLibrary::GetComputeState();
        if (v50)
        {
          objc_msgSend_setComputePipelineState_(a4, v49, v50);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_setTexture_atIndex_(a4, v51, v74, 0);
          objc_msgSend_setTexture_atIndex_(a4, v52, CompressedTempTexture, 1);
          objc_msgSend_setBytes_length_atIndex_(a4, v53, v89, 24, 0);
          *v88 = v79;
          *&v88[8] = vdupq_n_s64(1uLL);
          v86 = v80;
          v87 = *&v88[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v54, v88, &v86);
          v56 = MPSLibrary::GetComputeState();
          if (v56)
          {
            objc_msgSend_setComputePipelineState_(a4, v55, v56);
            v59 = objc_msgSend_threadExecutionWidth(v56, v57, v58);
            MPSLibrary::ReleaseComputeState();
            v60 = vmovn_s64(v72);
            v81[1] = v60.i16[2];
            v81[0] = v60.i16[0];
            v82 = 1.0 / (*(a9 + 32) * *(a9 + 24));
            v83 = 0;
            v84 = v80 * v79;
            v85 = v90;
            objc_msgSend_setTexture_atIndex_(a4, v61, v74, 0);
            objc_msgSend_setTexture_atIndex_(a4, v62, v73, 1);
            objc_msgSend_setBytes_length_atIndex_(a4, v63, v81, 20, 0);
            v65 = 4;
            if (v31)
            {
              v65 = 5;
            }

            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a4, v64, v59 << v65, 0);
            if (a11 == 1)
            {
              *v88 = 2;
              *&v88[8] = vdupq_n_s64(1uLL);
              v86 = v59;
              v87 = *&v88[8];
            }

            else
            {
              v87 = vdupq_n_s64(1uLL);
              *v88 = v87;
              *&v88[16] = 1;
              v86 = v59;
            }

            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v66, v88, &v86);
            v68 = 0;
            goto LABEL_69;
          }

          if (a11 == 1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_67;
            }

LABEL_68:
            v68 = -19;
LABEL_69:
            MPSAutoCache::~MPSAutoCache(v94);
            return v68;
          }

          if (v31)
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (a11 != 1)
          {
            if (v31)
            {
              if (MTLReportFailureTypeEnabled())
              {
                goto LABEL_67;
              }
            }

            else if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_68;
          }
        }

LABEL_67:
        v70 = objc_opt_class();
        NSStringFromClass(v70);
        MTLReportFailure();
        goto LABEL_68;
      }
    }

    else if (v28 >= v27)
    {
      v30 = *(a9 + 32);
    }

    else
    {
      v30 = v23 / v26;
    }

    v35 = *(a9 + 24);
    v33 = (v26 + v35 - 1) / v26;
    v76 = (v35 + v33 * v26 - 1) / (v33 * v26);
    v36 = v27 + v30 - 1;
    v34 = *v77;
    v95[0] = *v77;
    v31 = a11 == 2;
    v79 = v36 / v30;
    v80 = v30;
    if (a11 != 4 && a11 != 2)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (a11 == 1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_59;
    }
  }

  else
  {
    v67 = MTLReportFailureTypeEnabled();
    if (a11 == 2)
    {
      if (v67)
      {
        goto LABEL_59;
      }
    }

    else if (v67)
    {
LABEL_59:
      v69 = objc_opt_class();
      NSStringFromClass(v69);
      MTLReportFailure();
    }
  }

  return -19;
}

uint64_t sub_23997D314(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 > 5)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  if (((a3 > 5) & v4) != 0)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23997D338(uint64_t a1, unint64_t a2)
{
  v2 = 124;
  if (a2 <= 0x400)
  {
    v3 = 2;
  }

  else
  {
    v2 = -4;
    v3 = 4;
  }

  return (v3 + (a2 >> 5)) & v2;
}

uint64_t sub_23997D4A0(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t **a6)
{
  v8 = a4;
  v244 = objc_msgSend_pixelFormat(a4, a2, a3);
  result = 0;
  if (!a6[5] || !a6[6])
  {
    return result;
  }

  v242 = a3;
  v13 = *a6;
  v14 = **a6;
  if ((v14 & 0x800000000000) == 0)
  {
    return -4;
  }

  v15 = (v14 & 0xE000000) != 0 ? BYTE3(v14) & 0xF : 1;
  v16 = (BYTE3(v14) & 0xF) == 3 ? 4 : v15;
  if (v16 > 4 || ((1 << v16) & 0x16) == 0)
  {
    return -4;
  }

  v18 = *(a1 + *MEMORY[0x277CD7378]);
  v230 = *(a1 + 240);
  v219 = *(a1 + 248);
  v19 = *(a1 + *MEMORY[0x277CD7350]);
  v20 = MEMORY[0x277CD7370];
  v233 = *(a1 + 160);
  v21 = a6[1];
  v258 = 0;
  if (((*v21 >> 34) & 0x3F) <= 2 && (v14 & 0xFC00000000uLL) >> 34 <= 2)
  {
    HIBYTE(v258) = 1;
    if ((v18 & 2) != 0)
    {
      LOBYTE(v258) = 1;
    }
  }

  Sampler = MPSDevice::GetSampler();
  v228 = *(*(a1 + *v20) + 32);
  if (v8 != a5 && !objc_msgSend_isEqual_(v8, v22, a5))
  {
    return -5;
  }

  v24 = objc_msgSend_width(a5, v22, v23);
  v239 = objc_msgSend_height(a5, v25, v26);
  v216 = objc_msgSend_mipmapLevelCount(a5, v27, v28);
  if (v216 < 2)
  {
    return 0;
  }

  v243 = v8;
  LODWORD(v8) = v24;
  v257 = 0;
  v236 = a1;
  if (*(a1 + 256) == 1 && sub_23997EBBC(v230, v219, v14, &v258 + 1, 1, &v258, v228) && (ComputeState = MPSLibrary::GetComputeState()) != 0)
  {
    v32 = objc_msgSend_threadExecutionWidth(ComputeState, v29, v30);
    v34 = (v32 & (v32 - 1)) == 0 && v32 > 0x1F;
    MPSLibrary::ReleaseComputeState();
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v236 + 256);
  v214 = a5;
  if (v35 != 1 || v34)
  {
    v38 = sub_23997EBBC(v230, v219, v14, &v258 + 1, v35, &v258, v228);
    if (v38)
    {
      v39 = v38;
      v40 = (*v38 >> 12) & 0x1F;
    }

    else
    {
      v39 = &dword_2399AFAA0;
      v40 = 4;
    }

    v226 = v40;
    v45 = MPSLibrary::GetComputeState();
    if (!v45 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v46 = objc_msgSend_threadExecutionWidth(v45, v43, v44);
    v47 = (*(*v228 + 16))(v228, v230, v219, v258) * v46;
    v224 = *v39;
    objc_msgSend_setComputePipelineState_(a2, v48, v45);
    v50 = 63 - __clz(v47);
    v231 = v47;
    if (!v47)
    {
      v50 = 0;
    }

    v256 = v50;
    v51 = *(v236 + 224);
    if (v51)
    {
      if (*(v236 + 256) == 1)
      {
        v52 = v219 + v230;
      }

      else
      {
        v52 = v230 * v219;
      }

      objc_msgSend_setBytes_length_atIndex_(a2, v49, v51, 4 * v52, 1);
    }

    else
    {
      v53 = *(v236 + 208);
      if (v53)
      {
        v54 = objc_msgSend_userDictionary(v242, v49, 0);
        v56 = objc_msgSend_objectForKey_(v54, v55, @"_MPSCommandBufferRetainListKey");
        if (!v56)
        {
          v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v54, v59, v58, @"_MPSCommandBufferRetainListKey");

          v259 = MEMORY[0x277D85DD0];
          v260 = 3221225472;
          v261 = sub_23993DAE0;
          v262 = &unk_278AC37A8;
          v263 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v242, v60, &v259);
          v56 = v58;
        }

        objc_msgSend_addObject_(v56, v57, v53);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v49, v53, 0, 1);
    }

    objc_msgSend_setSamplerState_atIndex_(a2, v61, Sampler, 0);
    if (*(v236 + 256))
    {
      v64 = 8;
      v65 = 4;
    }

    else
    {
      v66 = objc_msgSend_maxTotalThreadsPerThreadgroup(v45, v62, v63);
      v69 = objc_msgSend_threadExecutionWidth(v45, v67, v68);
      if (v69 >> 2 <= 4)
      {
        v65 = 4;
      }

      else
      {
        v65 = v69 >> 2;
      }

      if (v65 * v65 <= v66)
      {
        v64 = v65;
      }

      else
      {
        do
        {
          v65 >>= 1;
          v64 = v65;
        }

        while (v65 * v65 > v66);
      }
    }

    v70 = 0;
    v237 = v216 - 1;
    v235 = v64;
    v217 = (v231 >> 1) - (v219 >> 1);
    v221 = (v231 >> 1) - (v230 >> 1);
    v71 = 1;
    LODWORD(v72) = v8;
    LOWORD(v73) = v239;
    while (1)
    {
      v78 = v70;
      v70 = v71;
      v81 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v243, v62, v244, 2, v71, 1, 0, 1);
      if (v81)
      {
        v82 = objc_msgSend_userDictionary(v242, v79, v80);
        v84 = objc_msgSend_objectForKey_(v82, v83, @"_MPSCommandBufferRetainListKey");
        if (!v84)
        {
          v86 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v82, v87, v86, @"_MPSCommandBufferRetainListKey");

          v259 = MEMORY[0x277D85DD0];
          v260 = 3221225472;
          v261 = sub_23993DAE0;
          v262 = &unk_278AC37A8;
          v263 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v242, v88, &v259);
          v84 = v86;
        }

        objc_msgSend_addObject_(v84, v85, v81);
      }

      v91 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v243, v79, v244, 2, v78, 1, 0, 1);
      if (v91)
      {
        v92 = objc_msgSend_userDictionary(v242, v89, v90);
        v94 = objc_msgSend_objectForKey_(v92, v93, @"_MPSCommandBufferRetainListKey");
        if (!v94)
        {
          v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v92, v97, v96, @"_MPSCommandBufferRetainListKey");

          v259 = MEMORY[0x277D85DD0];
          v260 = 3221225472;
          v261 = sub_23993DAE0;
          v262 = &unk_278AC37A8;
          v263 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v242, v98, &v259);
          v94 = v96;
        }

        objc_msgSend_addObject_(v94, v95, v91);
      }

      if (v72 <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v72 >> 1;
      }

      if ((v73 & 0xFFFE) != 0)
      {
        v73 = v73 >> 1;
      }

      else
      {
        v73 = 1;
      }

      v253 = v72;
      v254 = v73;
      if (!v72 || !v73)
      {
        goto LABEL_75;
      }

      objc_msgSend_setTexture_atIndex_(a2, v89, v81, 1);
      objc_msgSend_setTexture_atIndex_(a2, v99, v91, 0);
      if ((*(v236 + 256) & 1) == 0)
      {
        v252 = 1;
        v110 = v72 / v235 * v235;
        v111 = v73 / v65;
        v112 = v73 / v65 * v65;
        if (v112 < v73)
        {
          ++v111;
        }

        v240 = v111;
        if (v110 >= v72)
        {
          v109 = v72 / v235;
        }

        else
        {
          v109 = v72 / v235 + 1;
        }

        if (v110 < v72 || v112 < v73)
        {
          v252 = 0;
        }

        v75 = v235;
        objc_msgSend_setBytes_length_atIndex_(a2, v100, &v252, 20, 0);
        goto LABEL_74;
      }

      if (v230 >= 0xA && MTLReportFailureTypeEnabled())
      {
        v213 = 9;
        MTLReportFailure();
      }

      if (v219 >= 0xA && MTLReportFailureTypeEnabled())
      {
        v213 = 9;
        MTLReportFailure();
      }

      v101 = *(*v228 + 24);
      if (v224 < 0)
      {
        v113 = v101(v228, v72, 1);
        if (v113 <= 4)
        {
          v114 = 4;
        }

        else
        {
          v114 = v113;
        }

        if (v72 < 0x80)
        {
          v114 = 4;
        }

        v115 = v73 / v217;
        v255 = v114;
        v252 = 1;
        v116 = v72 / v114;
        v117 = v114 * v116;
        v118 = v73 / v217 * v217;
        if (v118 < v73)
        {
          ++v115;
        }

        v240 = v115;
        if (v117 >= v72)
        {
          v109 = v116;
        }

        else
        {
          v109 = v116 + 1;
        }

        if (v117 >= v72 && v118 >= v73)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v102 = v101(v228, v73, 1);
        if (v73 < 0x80u || v102 < 4)
        {
          v105 = 4;
        }

        else
        {
          v105 = v102;
        }

        LODWORD(v106) = v73 / v105;
        v255 = v105;
        v252 = 1;
        v107 = v72 / v221 * v221;
        v108 = v105 * (v73 / v105);
        if (v108 >= v73)
        {
          v106 = v106;
        }

        else
        {
          v106 = v106 + 1;
        }

        v240 = v106;
        if (v107 >= v72)
        {
          v109 = v72 / v221;
        }

        else
        {
          v109 = v72 / v221 + 1;
        }

        if (v107 >= v72 && v108 >= v73)
        {
          goto LABEL_70;
        }
      }

      v252 = 0;
LABEL_70:
      if (HIBYTE(v258))
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }

      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v103, (((2 * v231) << v74) * v226), 0, v213);
      v65 = 1;
      v75 = v231;
      objc_msgSend_setBytes_length_atIndex_(a2, v76, &v252, 16, 0);
LABEL_74:
      v259 = v109;
      v260 = v240;
      v261 = 1;
      v235 = v75;
      v249 = v75;
      v250 = v65;
      v251 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v77, &v259, &v249);
LABEL_75:

      v71 = v70 + 1;
      if (v237 <= v70)
      {
        MPSLibrary::ReleaseComputeState();
        v122 = v214;
        v123 = v242;
        goto LABEL_235;
      }
    }
  }

  PixelInfo = *v13;
  if ((v258 & 0x100) != 0 || (PixelInfo & 0xFC00000000uLL) >> 34 <= 2)
  {
    v41 = BYTE3(PixelInfo) & 0xF;
    v37 = v242;
    if (v41 > 4)
    {
      v42 = MTLPixelFormatRGBA16Float;
    }

    else
    {
      v42 = qword_2399AFD00[v41];
    }

    PixelInfo = MPSDevice::GetPixelInfo(v19, v42, MPSImageFeatureChannelFormatNone);
  }

  else
  {
    v37 = v242;
  }

  v248 = PixelInfo;
  v124 = v239;
  v125 = objc_msgSend_width(a5, v29, v30);
  v126 = (v219 >> 1);
  if (v126 >= ((v239 >> 1) + 1) >> 1)
  {
    if (v239 == 1)
    {
      v124 = v126 + 1;
    }

    else
    {
      v124 = (v239 & 0xFFFE) + 2 * v126 - 1;
    }
  }

  if ((v125 & 0x1FFFE) != 0)
  {
    v127 = (v125 >> 1);
  }

  else
  {
    v127 = 1;
  }

  LODWORD(v238) = v124;
  v249 = v127;
  v250 = v124;
  v251 = 1;
  MEMORY[0x23EE7BAC0](v247, v37, a5);
  TempTexture = MPSAutoCache::GetTempTexture();
  if (v258 == 1)
  {
    if ((*(*v228 + 40))(v228, 1, v219))
    {
      v128 = 1;
    }

    else
    {
      v128 = 0;
      LOBYTE(v258) = 0;
    }
  }

  else
  {
    v128 = 0;
  }

  v129 = &dword_2399AFAA0;
  do
  {
    if ((*v129 & 0x3F) == 0 && ((*v129 ^ (32 * v219 + 4064)) & 0xFC0) == 0 && ((*v129 >> 12) & 0x1F) == v16)
    {
      break;
    }

    v132 = v129[3];
    v129 += 2;
  }

  while (v132 != -1);
  v222 = MPSLibrary::GetComputeState();
  if (!v222 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v128 && ((*(*v228 + 40))(v228, v230, 1) & 1) == 0)
  {
    LOBYTE(v258) = 0;
  }

  HIBYTE(v258) = 0;
  v133 = &dword_2399AFAA0;
  do
  {
    if (*v133 & 0xFC0 | (*v133 ^ ((v230 + 127) >> 1)) & 0x3F)
    {
      v134 = 0;
    }

    else
    {
      v134 = ((*v133 >> 12) & 0x1F) == v16;
    }

    if (v134)
    {
      break;
    }

    v135 = v133[3];
    v133 += 2;
  }

  while (v135 != -1);
  v223 = MPSLibrary::GetComputeState();
  if (!v223 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v123 = v37;
  v137 = 0;
  v229 = v216 - 1;
  v225 = v126 + 1;
  v227 = 2 * v126 - 1;
  v218 = 4 * v230;
  v215 = 4 * v219;
  v220 = vdupq_n_s64(8uLL);
  while (1)
  {
    v138 = v137;
    if (v229 <= v137)
    {
      break;
    }

    ++v137;
    v141 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v243, v136, v244, 2, (v138 + 1), 1, 0, 1);
    if (v141)
    {
      v142 = objc_msgSend_userDictionary(v123, v139, v140);
      v144 = objc_msgSend_objectForKey_(v142, v143, @"_MPSCommandBufferRetainListKey");
      if (!v144)
      {
        v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v142, v147, v146, @"_MPSCommandBufferRetainListKey");

        v259 = MEMORY[0x277D85DD0];
        v260 = 3221225472;
        v261 = sub_23993DAE0;
        v262 = &unk_278AC37A8;
        v263 = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(v123, v148, &v259);
        v144 = v146;
      }

      objc_msgSend_addObject_(v144, v145, v141);
    }

    v151 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v243, v139, v244, 2, v138, 1, 0, 1);
    if (v151)
    {
      v152 = objc_msgSend_userDictionary(v123, v149, v150);
      v155 = objc_msgSend_objectForKey_(v152, v153, @"_MPSCommandBufferRetainListKey");
      if (!v155)
      {
        v155 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v152, v156, v155, @"_MPSCommandBufferRetainListKey");

        v259 = MEMORY[0x277D85DD0];
        v260 = 3221225472;
        v261 = sub_23993DAE0;
        v262 = &unk_278AC37A8;
        v263 = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(v123, v157, &v259);
      }

      objc_msgSend_addObject_(v155, v154, v151);
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v8 >> 1;
    }

    if ((v239 & 0xFFFE) != 0)
    {
      v158 = v239;
    }

    else
    {
      v158 = 1;
    }

    v159 = v227 + (v158 & 0xFFFE);
    if ((v239 & 0xFFFE) == 0)
    {
      v159 = v225;
    }

    if (v138)
    {
      v160 = v159;
    }

    else
    {
      v160 = v238;
    }

    if (v233)
    {
      v253 = v8;
      v238 = v160;
      v254 = v160;
      LOWORD(v257) = 1;
      if (!v8)
      {
        goto LABEL_233;
      }
    }

    else
    {
      HIWORD(v257) = v158;
      v253 = v8;
      v238 = v160;
      v254 = v160;
      LOWORD(v257) = 1;
      if (!v8)
      {
        goto LABEL_233;
      }
    }

    objc_msgSend_setComputePipelineState_(a2, v149, v223);
    objc_msgSend_setTexture_atIndex_(a2, v161, v151, 0);
    objc_msgSend_setTexture_atIndex_(a2, v162, TempTexture, 1);
    v164 = *(v236 + 224);
    if (v164)
    {
      objc_msgSend_setBytes_length_atIndex_(a2, v163, v164, v218, 1);
    }

    else
    {
      v166 = *(v236 + 208);
      if (v166)
      {
        v167 = objc_msgSend_userDictionary(v123, v163, 0);
        v169 = objc_msgSend_objectForKey_(v167, v168, @"_MPSCommandBufferRetainListKey");
        if (!v169)
        {
          v171 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v167, v172, v171, @"_MPSCommandBufferRetainListKey");

          v259 = MEMORY[0x277D85DD0];
          v260 = 3221225472;
          v261 = sub_23993DAE0;
          v262 = &unk_278AC37A8;
          v263 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v123, v173, &v259);
          v169 = v171;
        }

        objc_msgSend_addObject_(v169, v170, v166);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v163, v166, 0, 1);
    }

    objc_msgSend_setSamplerState_atIndex_(a2, v165, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v174, &v252, 20, 0);
    v176 = v238 >> 3;
    v177 = 8 * (v8 >> 3);
    if (v177 >= v8)
    {
      v178 = v8 >> 3;
    }

    else
    {
      v178 = (v8 >> 3) + 1;
    }

    v179 = v238 > 8 * v176 || v177 < v8;
    v252 = !v179;
    if (v238 <= 8 * v176)
    {
      v180 = v238 >> 3;
    }

    else
    {
      v180 = v176 + 1;
    }

    v259 = v178;
    v260 = v180;
    v261 = 1;
    v245 = v220;
    v246 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v175, &v259, &v245);
    v253 = v8;
    if ((v239 & 0xFFFE) != 0)
    {
      v158 >>= 1;
    }

    else
    {
      v158 = 1;
    }

    v254 = v158;
    LOWORD(v257) = 2;
    objc_msgSend_setComputePipelineState_(a2, v181, v222);
    objc_msgSend_setTexture_atIndex_(a2, v182, TempTexture, 0);
    objc_msgSend_setTexture_atIndex_(a2, v183, v141, 1);
    v186 = *(v236 + 224);
    if (v186)
    {
      objc_msgSend_setBytes_length_atIndex_(a2, v184, v186 + 4 * v230, v215, 1);
    }

    else
    {
      v188 = *(v236 + 208);
      if (v188)
      {
        v189 = objc_msgSend_userDictionary(v242, v184, v185);
        v191 = objc_msgSend_objectForKey_(v189, v190, @"_MPSCommandBufferRetainListKey");
        if (!v191)
        {
          v241 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v189, v193, v241, @"_MPSCommandBufferRetainListKey");

          v259 = MEMORY[0x277D85DD0];
          v260 = 3221225472;
          v261 = sub_23993DAE0;
          v262 = &unk_278AC37A8;
          v263 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v242, v194, &v259);
          v191 = v241;
        }

        objc_msgSend_addObject_(v191, v192, v188);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v184, v188, v218, 1);
    }

    objc_msgSend_setSamplerState_atIndex_(a2, v187, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v195, &v252, 20, 0);
    v197 = v177 >= v8;
    v198 = v158 >> 3;
    if (8 * v198 < v158)
    {
      ++v198;
      v197 = 0;
    }

    v252 = v197;
    v259 = v178;
    v260 = v198;
    v261 = 1;
    v245 = vdupq_n_s64(8uLL);
    v246 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v196, &v259, &v245);
    v123 = v242;
LABEL_233:

    v239 = v158;
  }

  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSAutoCache::~MPSAutoCache(v247);
  v122 = v214;
LABEL_235:
  if (v243)
  {
    v199 = objc_msgSend_userDictionary(v123, v120, v121);
    v201 = objc_msgSend_objectForKey_(v199, v200, @"_MPSCommandBufferRetainListKey");
    if (!v201)
    {
      v203 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v199, v204, v203, @"_MPSCommandBufferRetainListKey");

      v259 = MEMORY[0x277D85DD0];
      v260 = 3221225472;
      v261 = sub_23993DAE0;
      v262 = &unk_278AC37A8;
      v263 = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v123, v205, &v259);
      v201 = v203;
    }

    objc_msgSend_addObject_(v201, v202, v243);
  }

  if (v122)
  {
    v206 = objc_msgSend_userDictionary(v123, v120, v121);
    v208 = objc_msgSend_objectForKey_(v206, v207, @"_MPSCommandBufferRetainListKey");
    if (!v208)
    {
      v210 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v206, v211, v210, @"_MPSCommandBufferRetainListKey");

      v259 = MEMORY[0x277D85DD0];
      v260 = 3221225472;
      v261 = sub_23993DAE0;
      v262 = &unk_278AC37A8;
      v263 = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v123, v212, &v259);
      v208 = v210;
    }

    objc_msgSend_addObject_(v208, v209, v122);
  }

  return 0;
}

void sub_23997E91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23997E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

int *sub_23997EBBC(unint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4, int a5, _BYTE *a6, uint64_t a7)
{
  if (a1 >= 0xA && a2 > 9)
  {
    return 0;
  }

  if ((a3 & 0xE000000) != 0)
  {
    v11 = BYTE3(a3) & 0xF;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  if ((BYTE3(a3) & 0xF) == 3)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  if ((a3 & 0x800000000000) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a1 - 1;
  v15 = 32 * a2;
  if (*a6 == 1)
  {
    v16 = a7;
    v17 = a5;
    v18 = (*(*a7 + 40))(a7, a1, a2);
    a5 = v17;
    a7 = v16;
    if ((v18 & 1) == 0)
    {
      *a6 = 0;
    }
  }

  v19 = (v14 >> 1) & 0x3F;
  v20 = v15 + 4064;
  if (!a5)
  {
    result = &dword_2399AFAA0;
    *a4 = 0;
    goto LABEL_34;
  }

  if (*a4 != 1 || ((v21 = (*(*a7 + 32))(a7, a1, a2), v22 = &unk_2399AF828, !v21) ? (v23 = &unk_2399AF8C8) : (v22 = &unk_2399AF7D8, v23 = &unk_2399AF878), !*a6 ? (result = v23) : (result = v22), result[1] == -1))
  {
    result = &dword_2399AF918;
    *a4 = 0;
LABEL_34:
    while (1)
    {
      v28 = (*result & 0x3F) == v19 && ((*result ^ v20) & 0xFC0) == 0;
      if (v28 && ((v13 ^ (*result >> 12)) & 0x1F) == 0)
      {
        break;
      }

      v30 = result[3];
      result += 2;
      if (v30 == -1)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v25 = (*result & 0x3F) == v19 && ((*result ^ v20) & 0xFC0) == 0;
      if (v25 && ((v13 ^ (*result >> 12)) & 0x1F) == 0)
      {
        break;
      }

      v27 = result[3];
      result += 2;
      if (v27 == -1)
      {
        result = &dword_2399AF918;
        *a4 = 0;
        goto LABEL_34;
      }
    }
  }

  return result;
}

uint64_t sub_23997F0E8(float32x4_t *a1, char *a2, void *a3, NSString *a4, NSString *a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a3;
  v8 = *(a1->i64 + *MEMORY[0x277CD7378]);
  v9 = a1[17].u8[0];
  v10 = a1[13].u8[8];
  v11 = *(a1->i64 + *MEMORY[0x277CD7370]);
  v12 = a1[16].u8[0];
  v13 = a1[14];
  v14 = a1[15];
  v15 = a1[13].u64[0];
  v16 = a1[16].i64[1];
  v17 = *(a6 + 1);
  v18 = *(a6 + 5);
  v20 = *a6;
  v19 = a6[1];
  if (*a6 == v19)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v81 = a1[13].i64[0];
    v94 = a4;
    v41 = a1[16].i64[1];
    v42 = a5;
    v108 = *(a6 + 1);
    v113 = *(a6 + 5);
    v98 = a1[15];
    v103 = a1[14];
    v43 = *(a1->i64 + *MEMORY[0x277CD7370]);
    v44 = a1[17].u8[0];
    v45 = a1[13].u8[8];
    v80 = *a6;
    v47 = a1[16].u8[0];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v12 = v47;
    v6 = a6;
    v10 = v45;
    v9 = v44;
    v11 = v43;
    v14 = v98;
    v13 = v103;
    v17 = v108;
    v18 = v113;
    a5 = v42;
    v16 = v41;
    a4 = v94;
    v20 = v80;
    v15 = v81;
    v7 = a3;
    if (isEqual)
    {
      return -18;
    }
  }

  if ((v8 & 1) == 0)
  {
    if (!v9)
    {
      v89 = a5;
      v95 = a4;
      v109 = v17;
      v114 = v18;
      v99 = v14;
      v104 = v13;
      v69 = v11;
      v90 = v10;
      v82 = v12;
      v70 = MTLReportFailureTypeEnabled();
      v12 = v82;
      v10 = v90;
      v9 = 0;
      v11 = v69;
      v14 = v99;
      v13 = v104;
      v17 = v109;
      v18 = v114;
      a5 = v89;
      a4 = v95;
      if (v70)
      {
        v71 = objc_opt_class();
        v79 = NSStringFromClass(v71);
        MTLReportFailure();
        v12 = v82;
        v10 = v90;
        v9 = 0;
        v11 = v69;
        v14 = v99;
        v13 = v104;
        v17 = v109;
        v18 = v114;
        a5 = v89;
        a4 = v95;
      }
    }

    if ((*(v20 + 3) & 0xF) == 0)
    {
      v72 = a5;
      v96 = a4;
      v110 = v17;
      v115 = v18;
      v100 = v14;
      v105 = v13;
      v73 = v11;
      v86 = v9;
      v91 = v10;
      v83 = v12;
      v74 = MTLReportFailureTypeEnabled();
      v12 = v83;
      v10 = v91;
      v9 = v86;
      v11 = v73;
      v14 = v100;
      v13 = v105;
      v17 = v110;
      v18 = v115;
      a4 = v96;
      a5 = v72;
      if (v74)
      {
        v79 = v96;
        MTLReportFailure();
        v12 = v83;
        v10 = v91;
        v9 = v86;
        v11 = v73;
        v14 = v100;
        v13 = v105;
        v17 = v110;
        v18 = v115;
        a4 = v96;
        a5 = v72;
      }
    }

    if ((*(v19 + 3) & 0xF) == 0)
    {
      v75 = a5;
      v76 = a4;
      v111 = v17;
      v116 = v18;
      v101 = v14;
      v106 = v13;
      v77 = v11;
      v87 = v9;
      v92 = v10;
      v84 = v12;
      v78 = MTLReportFailureTypeEnabled();
      v12 = v84;
      v10 = v92;
      v9 = v87;
      v11 = v77;
      v14 = v101;
      v13 = v106;
      v17 = v111;
      v18 = v116;
      a4 = v76;
      a5 = v75;
      if (v78)
      {
        v79 = v75;
        MTLReportFailure();
        v12 = v84;
        v10 = v92;
        v9 = v87;
        v11 = v77;
        v14 = v101;
        v13 = v106;
        v17 = v111;
        v18 = v116;
        a4 = v76;
        a5 = v75;
      }
    }
  }

  if (!v9)
  {
    return -20;
  }

  v21 = 0;
  v22 = v18.i64[1];
  if (v18.i64[1])
  {
    v23 = v18.i64[0];
    if (v18.i64[0])
    {
      v97 = v14;
      v102 = v13;
      v107 = v17;
      v112 = v18;
      v88 = a5;
      v93 = a4;
      v24 = *(v20 + 3) & 0xF;
      if (v10)
      {
        v25 = 4;
      }

      else
      {
        v25 = 3;
      }

      if (v24 == 4)
      {
        v24 = v25;
      }

      if (v12)
      {
        v26 = 0;
      }

      else
      {
        v26 = 5;
      }

      v27 = v24 + v26;
      v28 = v11;
      ComputeState = MPSLibrary::GetComputeState();
      if (ComputeState)
      {
        v31 = ComputeState;
        objc_msgSend_setComputePipelineState_(a2, v30, ComputeState);
        v34 = objc_msgSend_maxTotalThreadsPerThreadgroup(v31, v32, v33);
        MPSLibrary::ReleaseComputeState();
        v38 = (&unk_2399AFD78 + 32 * *(*(*(v28 + 280) + 16 * v27) + 64));
        v39 = *v38;
        if (v34 >= 16 * *v38)
        {
          v40 = 16;
        }

        else
        {
          v40 = v34 / v39;
        }

        *v37.i32 = v15;
        v50 = v38[2];
        v51 = v38[3] * v40;
        v52 = v15;
        v53 = (v23 + v50 * v39 - 1) / (v50 * v39);
        v129 = 0;
        v130 = 0;
        v121[0] = v102;
        v121[1] = vdivq_f32(vdupq_lane_s32(v37, 0), vsubq_f32(v97, v102));
        v54 = vmovn_s64(v6[4]);
        v123 = v54.i16[2];
        v122 = v54.i16[0];
        v55 = vmovn_s64(v107);
        v125 = v55.i16[2];
        v124 = v55.i16[0];
        v56 = vmovn_s64(v112);
        v127 = v56.i16[2];
        v126 = v56.i16[0];
        v128 = (v52 - 1);
        v57 = v52;
        LOWORD(v129) = v52;
        v58 = (v22 + v51 - 1) / v51;
        if ((objc_msgSend_retainedReferences(v7, v35, v36, v79) & 1) == 0)
        {
          v60 = v16;
          v120[0] = MEMORY[0x277D85DD0];
          v120[1] = 3221225472;
          v120[2] = sub_23998081C;
          v120[3] = &unk_278AC37A8;
          v120[4] = v16;
          objc_msgSend_addCompletedHandler_(v7, v61, v120);
        }

        objc_msgSend_setTexture_atIndex_(a2, v59, v93, 0);
        objc_msgSend_setTexture_atIndex_(a2, v62, v88, 1);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v64, Sampler, 0);
        objc_msgSend_setBytes_length_atIndex_(a2, v65, v121, 64, 0);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v66, v16, 32 * v57, 1);
        v119[0] = v53;
        v119[1] = v58;
        v119[2] = 1;
        v118[0] = v39;
        v118[1] = v40;
        v118[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v67, v119, v118);
        return 0;
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          v49 = objc_opt_class();
          NSStringFromClass(v49);
          MTLReportFailure();
        }

        return -19;
      }
    }
  }

  return v21;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}