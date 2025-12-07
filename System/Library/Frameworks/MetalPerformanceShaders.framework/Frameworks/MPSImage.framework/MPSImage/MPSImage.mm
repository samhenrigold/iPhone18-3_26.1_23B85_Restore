uint64_t sub_23993B8D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v10 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v10, 53, 0);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

void *sub_23993B970(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = a1;
    v23 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v23)
    {
      v24 = a2;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      a2 = v24;
      v23 = v26;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v23);
    a2 = v7;
    a6 = v21;
    a5 = v20;
    a4 = v19;
    a3 = v18;
    a1 = v22;
    v8 = *(v22 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v27);
    a6 = v14;
    a3 = v10;
    a2 = v9;
    if (v27 && v28 && 3 * v27 < 2 * *(v14 + 40) && 3 * v28 < (2 * *(v14 + 48)))
    {
      result = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v27);
      goto LABEL_11;
    }

    a5 = v13;
    a4 = v12;
    a1 = v11;
  }

LABEL_10:
  result = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, a6);
LABEL_11:
  if (v7)
  {
    return objc_msgSend_popDebugGroup(v7, v16, v17);
  }

  return result;
}

void sub_23993BB2C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3)
{
  if (v3)
  {
    objc_msgSend_popDebugGroup(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23993BB50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = a1;
    v23 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v23)
    {
      v24 = a2;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      a2 = v24;
      v23 = v26;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v23);
    a2 = v7;
    a6 = v21;
    a5 = v20;
    a4 = v19;
    a3 = v18;
    a1 = v22;
    v8 = *(v22 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v27);
    a6 = v14;
    a3 = v10;
    a2 = v9;
    if (v27 && v28 && 3 * v27 < 2 * *(v14 + 40) && 3 * v28 < (2 * *(v14 + 48)))
    {
      result = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v27);
      goto LABEL_11;
    }

    a5 = v13;
    a4 = v12;
    a1 = v11;
  }

LABEL_10:
  result = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, a6);
LABEL_11:
  if (v7)
  {
    return objc_msgSend_popDebugGroup(v7, v16, v17);
  }

  return result;
}

void sub_23993BD0C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3)
{
  if (v3)
  {
    objc_msgSend_popDebugGroup(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993BD30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a1;
    v25 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v25)
    {
      v26 = a2;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      a2 = v26;
      v25 = v28;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v25);
    a2 = v7;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a1 = v24;
    v8 = *(v24 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v29);
    a6 = v14;
    a3 = v10;
    a2 = v9;
    if (v29 && v30 && 3 * v29 < 2 * *(v14 + 40) && 3 * v30 < (2 * *(v14 + 48)))
    {
      v15 = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v29);
      goto LABEL_11;
    }

    a5 = v13;
    a4 = v12;
    a1 = v11;
  }

LABEL_10:
  v15 = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, a6);
LABEL_11:
  v18 = v15;
  if (v7)
  {
    objc_msgSend_popDebugGroup(v7, v16, v17);
  }

  return v18;
}

void sub_23993BEF4(_Unwind_Exception *exception_object, const char *a2, uint64_t a3)
{
  if (v3)
  {
    objc_msgSend_popDebugGroup(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993BF18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a1;
    v25 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v25)
    {
      v26 = a2;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      a2 = v26;
      v25 = v28;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v25);
    a2 = v7;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a1 = v24;
    v8 = *(v24 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v29);
    a6 = v14;
    a3 = v10;
    a2 = v9;
    if (v29 && v30 && 3 * v29 < 2 * *(v14 + 40) && 3 * v30 < (2 * *(v14 + 48)))
    {
      v15 = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v29);
      goto LABEL_11;
    }

    a5 = v13;
    a4 = v12;
    a1 = v11;
  }

LABEL_10:
  v15 = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, a6);
LABEL_11:
  v18 = v15;
  if (v7)
  {
    objc_msgSend_popDebugGroup(v7, v16, v17);
  }

  return v18;
}

void sub_23993C0DC(_Unwind_Exception *exception_object, const char *a2, uint64_t a3)
{
  if (v3)
  {
    objc_msgSend_popDebugGroup(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993C100(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a1;
    v25 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v25)
    {
      v26 = a2;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      a2 = v26;
      v25 = v28;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v25);
    a2 = v7;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a1 = v24;
    v8 = *(v24 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v29);
    a6 = v14;
    a3 = v10;
    a2 = v9;
    if (v29 && v30 && 3 * v29 < 2 * *(v14 + 40) && 3 * v30 < (2 * *(v14 + 48)))
    {
      v15 = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v29);
      goto LABEL_11;
    }

    a5 = v13;
    a4 = v12;
    a1 = v11;
  }

LABEL_10:
  v15 = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, a6);
LABEL_11:
  v18 = v15;
  if (v7)
  {
    objc_msgSend_popDebugGroup(v7, v16, v17);
  }

  return v18;
}

void sub_23993C2B4(_Unwind_Exception *exception_object, const char *a2, uint64_t a3)
{
  if (v3)
  {
    objc_msgSend_popDebugGroup(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993C2D8(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, void **a6)
{
  v313 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 208);
  v275 = *(a1 + *MEMORY[0x277CD7350]);
  v267 = *(a1 + 160);
  if (v9 > 0.14)
  {
    v12 = MEMORY[0x277CD7378];
    v13 = *(a1 + *MEMORY[0x277CD7378]);
    if (v9 < 1.0)
    {
      v14 = *(a1 + 216);
      v309 = *(a6 + 4);
      *&v310 = a6[10];
      objc_msgSend_setOffset_(v14, a2, &v309);
      v15 = *(a6 + 2);
      v309 = *(a6 + 1);
      v310 = v15;
      v311 = *(a6 + 3);
      objc_msgSend_setClipRect_(v14, v16, &v309);
      objc_msgSend_setOptions_(v14, v17, v13);
      objc_msgSend_setEdgeMode_(v14, v18, v267);
      if ((*(v14 + *v12) & 8) != 0)
      {
        v253 = *(v14 + *MEMORY[0x277CD7360]);
        if (!v253)
        {
          v254 = objc_opt_class();
          v253 = NSStringFromClass(v254);
        }

        objc_msgSend_pushDebugGroup_(a2, v19, v253);
        v20 = a2;
        v21 = *(v14 + 200);
        if (!v21)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v20 = 0;
        v21 = *(v14 + 200);
        if (!v21)
        {
          goto LABEL_142;
        }
      }

      if ((*(v14 + *v12) & 4) == 0)
      {
        v309 = 0uLL;
        *&v310 = 0;
        v21(&v309, v14, a4, a5, a6);
        if (v309)
        {
          if (*(&v309 + 1) && 3 * v309 < (2 * a6[5]) && 3 * *(&v309 + 1) < (2 * a6[6]))
          {
            v22 = MPSSubTileEncode(v14, a2, a3, a4, a5, a6, &v309);
            goto LABEL_143;
          }
        }
      }

LABEL_142:
      v22 = (*(v14 + 176))(*(v14 + 192), a2, a3, a4, a5, a6);
LABEL_143:
      v25 = v22;
      if (v20)
      {
        objc_msgSend_popDebugGroup(v20, v23, v24);
      }

      return v25;
    }

    v264 = *(a1 + 256);
    v26 = *(a1 + 276);
    v268 = *(a1 + 264);
    MEMORY[0x23EE7BAC0](v306, a3, a5);
    v257 = a3;
    v259 = a5;
    v270 = a2;
    v29 = objc_msgSend_width(a4, v27, v28);
    v32 = objc_msgSend_height(a4, v30, v31);
    v260 = a4;
    v261 = a1 + 224;
    if (!v264)
    {
      goto LABEL_48;
    }

    v46 = 0;
    v47 = 0;
    v48.i64[1] = 0;
    v48.f32[0] = v29;
    v48.f32[1] = v32;
    v49 = xmmword_239988FE0;
    v50 = &v308;
    v51 = (a1 + 224);
    v52 = v264;
    while (1)
    {
      v61 = *v51++;
      v60 = v61;
      if (v61 > 0x19)
      {
        v62 = 0;
        if (v60 >= 24)
        {
LABEL_16:
          if (v60 == 24)
          {
            v53 = v26;
          }

          else
          {
            v53 = 1.0 / v26;
          }

          LODWORD(v54) = 0;
          *(&v54 + 1) = v53;
          v55 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v53), v48.f32[0]), v54, *v48.f32, 1), xmmword_239988FE0, v48, 2);
          v56 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v53), v49.f32[0]), v54, *v49.f32, 1), xmmword_239988FE0, v49, 2), 0);
          v56.i32[3] = v40;
          v55.i32[3] = v41;
          v57 = vaddq_f32(v55, v56);
          v56.i32[3] = 0;
          v49 = vrndmq_f32(v56);
          v57.i32[3] = 0;
          v48 = vsubq_f32(vrndpq_f32(v57), v49);
          v58 = 2 * v47;
          *(v50 - 1) = v49;
          *v50 = v48;
          v41 = v55.i32[3];
          goto LABEL_20;
        }
      }

      else
      {
        v62 = qword_239989A50[v60];
        if (v60 >= 24)
        {
          goto LABEL_16;
        }
      }

      v63 = HIDWORD(v62);
      if (v60 < 16)
      {
        LODWORD(v77) = 0;
        *(&v77 + 1) = 1.0 / *(&v62 + 1);
        v78 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v49.f32[0]), v77, *v49.f32, 1), xmmword_239988FE0, v49, 2);
        v79 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v48.f32[0]), v77, *v48.f32, 1), xmmword_239988FE0, v48, 2);
        LODWORD(v77) = 0;
        *(&v77 + 1) = -v62;
        v80 = vaddq_f32(v77, v78);
        v81 = vsubq_f32(v79, vaddq_f32(v77, v77));
        v80.i32[3] = v43;
        v81.i32[3] = v45;
        v82 = vaddq_f32(v80, v81);
        v80.i32[3] = 0;
        v83 = vrndmq_f32(v80);
        v82.i32[3] = 0;
        v84 = vsubq_f32(vrndpq_f32(v82), v83);
        *(v50 - 1) = v83;
        *v50 = v84;
        v85 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / *(&v62 + 1)), v83.f32[0]), xmmword_239988FD0, *v83.f32, 1), xmmword_239988FE0, v83, 2);
        *&v86 = -v62;
        v87 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / *(&v62 + 1)), v84.f32[0]), xmmword_239988FD0, *v84.f32, 1), xmmword_239988FE0, v84, 2);
        v88 = vaddq_f32(v86, v85);
        v89 = vsubq_f32(v87, COERCE_UNSIGNED_INT(*&v86 + *&v86));
        v88.i32[3] = v37;
        v89.i32[3] = v39;
        v90 = vaddq_f32(v88, v89);
        v88.i32[3] = 0;
        v90.i32[3] = 0;
        v49 = vrndmq_f32(v88);
        v48 = vsubq_f32(vrndpq_f32(v90), v49);
        v58 = v46;
        v39 = v89.i32[3];
        v45 = v81.i32[3];
      }

      else
      {
        v64 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(v62), v49.f32[0]), xmmword_239988FD0, *v49.f32, 1), xmmword_239988FE0, v49, 2);
        v65 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(v62), v48.f32[0]), xmmword_239988FD0, *v48.f32, 1), xmmword_239988FE0, v48, 2);
        v66 = -v62;
        v67 = vaddq_f32(LODWORD(v66), v64);
        v68 = vsubq_f32(v65, COERCE_UNSIGNED_INT(v66 + v66));
        v67.i32[3] = v42;
        v68.i32[3] = v44;
        v69 = vaddq_f32(v67, v68);
        v67.i32[3] = 0;
        v70 = vrndmq_f32(v67);
        v69.i32[3] = 0;
        v71 = vsubq_f32(vrndpq_f32(v69), v70);
        v58 = 2 * v47;
        *(v50 - 1) = v70;
        *v50 = v71;
        v67.i32[0] = 0;
        v67.i32[1] = v63;
        v72 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v70.f32[0]), v67.u64[0], *v70.f32, 1), xmmword_239988FE0, v70, 2);
        v73 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v71.f32[0]), v67.u64[0], *v71.f32, 1), xmmword_239988FE0, v71, 2);
        v71.i32[0] = 0;
        v71.f32[1] = v66;
        v74 = vaddq_f32(v71.u64[0], v72);
        v75 = vsubq_f32(v73, vaddq_f32(v71.u64[0], v71.u64[0]));
        v74.i32[3] = v36;
        v75.i32[3] = v38;
        v76 = vaddq_f32(v74, v75);
        v74.i32[3] = 0;
        v49 = vrndmq_f32(v74);
        v76.i32[3] = 0;
        v48 = vsubq_f32(vrndpq_f32(v76), v49);
        v38 = v75.i32[3];
        v44 = v68.i32[3];
      }

LABEL_20:
      v59 = &v307[4 * v58];
      v59[2] = v49;
      v59[3] = v48;
      ++v47;
      v46 += 2;
      v50 += 8;
      if (!--v52)
      {
        if (v264 >= 1)
        {
          *v35.f32 = vcvt_f32_f64(vcvtq_f64_u64(*(a6 + 5)));
          *v118.f32 = vcvt_f32_f64(vcvtq_f64_s64(*(a6 + 4)));
          __asm { FMOV            V2.2S, #1.0 }

          v116 = v264 & 0x7FFFFFFF;
          v117 = v116 + 1;
          v118.i64[1] = _D2;
          v119 = (4 * v116 + 224 + a1 - 4);
          v116 <<= 6;
          v120 = (&v309 + v116 - 64);
          v121 = (&v307[-4] + v116);
          do
          {
            v124 = *v119--;
            v123 = v124;
            v125 = (&unk_284C6CA20 + 56 * v124);
            if (v124 <= 25)
            {
              v126 = v125;
            }

            else
            {
              v126 = 0;
            }

            v127 = *v121;
            v128 = vaddq_f32(v35, v118);
            v129 = vaddq_f32(*v121, v121[1]);
            v118.i32[3] = 0;
            v127.i32[3] = 0;
            v130 = vmaxnmq_f32(v118, v127);
            v128.i32[3] = 0;
            v129.i32[3] = 0;
            v131 = vaddq_f32(v130, vsubq_f32(vminnmq_f32(v128, v129), v130));
            v130.i32[3] = 0;
            v131.i32[3] = 0;
            v132 = vrndmq_f32(v130);
            v133 = vsubq_f32(vrndpq_f32(v131), v132);
            v120[2] = v132;
            v120[3] = v133;
            if (v123 >= 23)
            {
              *v120 = v132;
              v120[1] = v133;
              v122 = (v126 + 5);
              if (v123 == 24)
              {
                v122 = &off_284C6CF70;
              }

              (*v122)(1);
            }

            else
            {
              v280 = v121[-1];
              v282 = v121[-2];
              if (v123 < 16)
              {
                *v144.i64 = v125[2](1);
                v146 = vaddq_f32(v145, v144);
                v147 = v282;
                v148 = vaddq_f32(v282, v280);
                v144.i32[3] = 0;
                v147.i32[3] = 0;
                v149 = vmaxnmq_f32(v144, v147);
                v146.i32[3] = 0;
                v148.i32[3] = 0;
                v150 = vsubq_f32(vminnmq_f32(v146, v148), v149);
                v149.i32[3] = v273;
                v150.i32[3] = v279;
                v151 = vaddq_f32(v149, v150);
                v152 = v149;
                v152.i32[3] = 0;
                v151.i32[3] = 0;
                v153 = vrndmq_f32(v152);
                *v120 = v153;
                v120[1] = vsubq_f32(vrndpq_f32(v151), v153);
                v125[5](1);
              }

              else
              {
                *v134.i64 = v125[5](0);
                v136 = vaddq_f32(v135, v134);
                v137 = v282;
                v138 = vaddq_f32(v282, v280);
                v134.i32[3] = 0;
                v137.i32[3] = 0;
                v139 = vmaxnmq_f32(v134, v137);
                v136.i32[3] = 0;
                v138.i32[3] = 0;
                v140 = vsubq_f32(vminnmq_f32(v136, v138), v139);
                v139.i32[3] = v271;
                v140.i32[3] = v274;
                v141 = vaddq_f32(v139, v140);
                v142 = v139;
                v142.i32[3] = 0;
                v141.i32[3] = 0;
                v143 = vrndmq_f32(v142);
                *v120 = v143;
                v120[1] = vsubq_f32(vrndpq_f32(v141), v143);
                v125[2](0);
              }
            }

            --v117;
            v120 -= 4;
            v121 -= 4;
          }

          while (v117 > 1);
        }

LABEL_48:
        PixelInfo = **a6;
        if ((v13 & 2) != 0 || (PixelInfo & 0xFC00000000uLL) >> 34 <= 2)
        {
          v155 = BYTE3(PixelInfo) & 0xF;
          if (v155 > 4)
          {
            v156 = MTLPixelFormatRGBA16Float;
          }

          else
          {
            v156 = qword_239989080[v155];
          }

          PixelInfo = MPSDevice::GetPixelInfo(v275, v156, MPSImageFeatureChannelFormatNone);
        }

        v305 = PixelInfo;
        if (v264)
        {
          v157 = 0;
          v158 = 0;
          v159 = 0;
          v258 = v268 + 24;
          v276 = 0;
          v256 = &v287;
          v265 = v264 - 1;
          CompressedTempTexture = a4;
          do
          {
            while (1)
            {
              v161 = *(v261 + 4 * v157);
              if (v161 > 0x19)
              {
                v162 = -1;
              }

              else
              {
                v162 = dword_2399899E8[v161];
              }

              v281 = v162;
              if (v161 <= 25)
              {
                v163 = &unk_284C6CA20 + 56 * v161;
              }

              else
              {
                v163 = 0;
              }

              ComputeState = MPSLibrary::GetComputeState();
              if (!ComputeState && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v165 = MPSLibrary::GetComputeState();
              if (!v165 && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v272 = v163;
              v166 = v161 < 16;
              v167 = 8;
              if (v161 >= 16)
              {
                v168 = 8;
              }

              else
              {
                v168 = 32;
              }

              if (!v166)
              {
                v167 = 32;
              }

              v269 = v167;
              v169 = (v166 ? v165 : ComputeState);
              v170 = (v166 ? ComputeState : v165);
              v283 = v170;
              v171 = (&v309 + 4 * v157);
              if (v169)
              {
                break;
              }

              v184 = v270;
              if (!v170)
              {
                goto LABEL_56;
              }

LABEL_113:
              if (v157 == v265)
              {
                v220 = vmovn_s64(*(a6 + 1));
              }

              else
              {
                v220 = 0;
              }

              v222 = v171[2];
              v221 = v171[3];
              v285 = vuzp1_s16(vcvt_s32_f32(*v221.f32), v220);
              v286 = v222.i64[0];
              v263 = *v222.f32;
              v289 = v303[0];
              v290 = v303[1];
              v223 = xmmword_239989020;
              HIDWORD(v223) = v276.i32[0];
              v291 = v303[2];
              v292 = v303[3];
              v224 = xmmword_239988FD0;
              HIDWORD(v224) = v276.i32[1];
              v287 = v223;
              v288 = v224;
              v293 = v26;
              v225.i64[0] = 0x4F0000004F000000;
              v225.i64[1] = 0x4F0000004F000000;
              v226 = vcgtq_f32(v221, v225);
              *v226.i8 = vadd_s32(vand_s8(*v226.i8, 0x8000000080000000), *&vcvtq_s32_f32(vsubq_f32(v221, vbslq_s8(v226, v225, 0))));
              *&v227 = v226.u32[0];
              *(&v227 + 1) = v226.u32[1];
              v297 = v227;
              v298 = 1;
              CompressedTempTexture = v259;
              if (v157 != v265)
              {
                CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
              }

              Sampler = MPSDevice::GetSampler();
              v278 = v285;
              v231 = objc_msgSend_maxTotalThreadsPerThreadgroup(v283, v229, v230);
              v234 = objc_msgSend_threadExecutionWidth(v283, v232, v233);
              v236 = (v231 & -v234) / v234;
              if (v236 <= v234)
              {
                v237 = v234;
              }

              else
              {
                v237 = (v231 & -v234) / v234;
              }

              if (v236 >= v234)
              {
                v236 = v234;
              }

              v238 = *&v272[v269 + 16];
              if (v238)
              {
                v239 = v237;
              }

              else
              {
                v239 = v236;
              }

              if (v238)
              {
                v240 = v236;
              }

              else
              {
                v240 = v237;
              }

              objc_msgSend_setComputePipelineState_(v184, v235, v283, v256);
              objc_msgSend_setTexture_atIndex_(v184, v241, CompressedTempTexture, 0);
              objc_msgSend_setTexture_atIndex_(v184, v242, v159, 1);
              objc_msgSend_setSamplerState_atIndex_(v184, v243, Sampler, 0);
              objc_msgSend_setBytes_length_atIndex_(v184, v244, &v285, 128, 0);
              v294 = (v278 + v239 - 1) / v239;
              v295 = (HIWORD(v278) + v240 - 1) / v240;
              v296 = 1;
              v284[0] = v239;
              v284[1] = v240;
              v284[2] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v184, v245, &v294, v284);
              MPSLibrary::ReleaseComputeState();
              MPSAutoCache::ReleaseTempResource();
              v276 = vneg_f32(v263);
              v159 = CompressedTempTexture;
              v158 += v281;
              if (++v157 == v264)
              {
                goto LABEL_130;
              }
            }

            v172 = v281 - 1;
            v173 = (v258 + 8 * v158);
            v175 = *v171;
            v174 = v171[1];
            v176 = vcvt_s32_f32(*v174.f32);
            v177.f64[1] = 0.0;
            LOWORD(v177.f64[0]) = v176.i16[0];
            WORD1(v177.f64[0]) = v176.i16[2];
            v299 = LODWORD(v177.f64[0]);
            v300 = v175.i64[0];
            v262 = *v175.f32;
            v178 = ((v281 - 1) >> 2);
            if (v178 < 1)
            {
              v178 = 0;
              v183 = v172 & 3;
              if (!v183)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v179 = v303;
              v180 = (v172 >> 2);
              do
              {
                v182 = *v173;
                v181 = v173[1];
                v173 += 2;
                v177 = vcvt_hight_f32_f64(vcvt_f32_f64(v182), v181);
                *v179++ = v177;
                --v180;
              }

              while (v180);
              v183 = v172 & 3;
              if (!v183)
              {
                goto LABEL_95;
              }
            }

            v185 = &v303[v178];
            *v185 = 0;
            v185[1] = 0;
            v186.f64[0] = v173->f64[0];
            if (v183 == 2)
            {
              v186.f64[1] = v173->f64[1];
              *&v186.f64[0] = vcvt_f32_f64(v186);
            }

            else if (v183 == 1)
            {
              *&v187 = v186.f64[0];
              v186 = v187;
            }

            else
            {
              v177.f64[0] = v173[1].f64[0];
              v186.f64[1] = v173->f64[1];
              v186 = vcvt_hight_f32_f64(vcvt_f32_f64(v186), v177);
              HIDWORD(v186.f64[1]) = 0;
            }

            v303[v178] = v186;
LABEL_95:
            v190 = xmmword_239988FD0;
            v189 = xmmword_239989020;
            v190.i32[3] = v276.i32[1];
            HIDWORD(v189) = v276.i32[0];
            v301 = v189;
            v302 = v190;
            v304 = 1.0 / v26;
            v190.i64[0] = 0x4F0000004F000000;
            v190.i64[1] = 0x4F0000004F000000;
            v191 = vcgtq_f32(v174, v190);
            v192 = vadd_s32(vand_s8(*v191.i8, 0x8000000080000000), *&vcvtq_s32_f32(vsubq_f32(v174, vbslq_s8(v191, v190, 0))));
            *&v193 = v192.u32[0];
            *(&v193 + 1) = v192.u32[1];
            v297 = v193;
            v298 = 1;
            v194 = MPSAutoCache::GetCompressedTempTexture();
            v195 = MPSDevice::GetSampler();
            v277 = v299;
            v198 = objc_msgSend_maxTotalThreadsPerThreadgroup(v169, v196, v197, v256);
            v201 = objc_msgSend_threadExecutionWidth(v169, v199, v200);
            v203 = (v198 & -v201) / v201;
            if (v203 <= v201)
            {
              v204 = v201;
            }

            else
            {
              v204 = (v198 & -v201) / v201;
            }

            if (v203 >= v201)
            {
              v203 = v201;
            }

            v205 = *&v272[v168 + 16];
            if (v205)
            {
              v206 = v204;
            }

            else
            {
              v206 = v203;
            }

            if (v205)
            {
              v207 = v203;
            }

            else
            {
              v207 = v204;
            }

            objc_msgSend_setComputePipelineState_(v270, v202, v169);
            objc_msgSend_setTexture_atIndex_(v270, v208, v194, 0);
            objc_msgSend_setTexture_atIndex_(v270, v209, CompressedTempTexture, 1);
            objc_msgSend_setSamplerState_atIndex_(v270, v210, v195, 0);
            objc_msgSend_setBytes_length_atIndex_(v270, v211, &v299, 128, 0);
            v285 = (v277 + v206 - 1) / v206;
            v286 = (HIWORD(v277) + v207 - 1) / v207;
            *&v287 = 1;
            v294 = v206;
            v295 = v207;
            v296 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v270, v212, &v285, &v294);
            MPSLibrary::ReleaseComputeState();
            if (CompressedTempTexture == v260)
            {
              v184 = v270;
              if (v260)
              {
                v213 = objc_msgSend_userDictionary(v257, v33, v34);
                v215 = objc_msgSend_objectForKey_(v213, v214, @"_MPSCommandBufferRetainListKey");
                if (!v215)
                {
                  v217 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  objc_msgSend_setObject_forKey_(v213, v218, v217, @"_MPSCommandBufferRetainListKey");

                  v285 = MEMORY[0x277D85DD0];
                  v286 = 3221225472;
                  *&v287 = sub_23993DA68;
                  *(&v287 + 1) = &unk_278AC37A8;
                  *&v288 = @"_MPSCommandBufferRetainListKey";
                  objc_msgSend_addCompletedHandler_(v257, v219, &v285);
                  v215 = v217;
                }

                objc_msgSend_addObject_(v215, v216, v260);
                v184 = v270;
              }
            }

            else
            {
              MPSAutoCache::ReleaseTempResource();
              v184 = v270;
            }

            v276 = vneg_f32(v262);
            v159 = v194;
            if (v283)
            {
              goto LABEL_113;
            }

LABEL_56:
            CompressedTempTexture = v159;
            v158 += v281;
            ++v157;
          }

          while (v157 != v264);
        }

LABEL_130:
        if (v259)
        {
          v246 = objc_msgSend_userDictionary(v257, v33, v34);
          v248 = objc_msgSend_objectForKey_(v246, v247, @"_MPSCommandBufferRetainListKey");
          if (!v248)
          {
            v250 = objc_alloc_init(MEMORY[0x277CBEB18]);
            objc_msgSend_setObject_forKey_(v246, v251, v250, @"_MPSCommandBufferRetainListKey");

            v299 = MEMORY[0x277D85DD0];
            v300 = 3221225472;
            *&v301 = sub_23993DA68;
            *(&v301 + 1) = &unk_278AC37A8;
            v302.i64[0] = @"_MPSCommandBufferRetainListKey";
            objc_msgSend_addCompletedHandler_(v257, v252, &v299);
            v248 = v250;
          }

          objc_msgSend_addObject_(v248, v249, v259, v256);
        }

        MPSAutoCache::~MPSAutoCache(v306);
        return 0;
      }
    }
  }

  if (a4 == a5 || (objc_msgSend_isEqual_(a4, a2, a5) & 1) != 0)
  {
    return -18;
  }

  v91 = vcvt_f32_f64(vcvtq_f64_s64(*(a6 + 4)));
  *&v309 = vmovn_s32(vuzp1q_s32(*(a6 + 5), *(a6 + 1)));
  *(&v309 + 1) = v91;
  v312 = 1065353216;
  v92 = MPSDevice::GetSampler();
  v93 = MPSLibrary::GetComputeState();
  if (v93)
  {
    v95 = v93;
    objc_msgSend_setComputePipelineState_(a2, v94, v93);
    objc_msgSend_setTexture_atIndex_(a2, v96, a5, 0);
    objc_msgSend_setTexture_atIndex_(a2, v97, a4, 1);
    objc_msgSend_setSamplerState_atIndex_(a2, v98, v92, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v99, &v309, 128, 0);
    v101 = a6[5];
    v100 = a6[6];
    v104 = objc_msgSend_maxTotalThreadsPerThreadgroup(v95, v102, v103);
    v107 = objc_msgSend_threadExecutionWidth(v95, v105, v106);
    v109 = (v104 & -v107) / v107;
    if (v109 <= v107)
    {
      v110 = v107;
    }

    else
    {
      v110 = (v104 & -v107) / v107;
    }

    if (v109 >= v107)
    {
      v109 = v107;
    }

    v307[0] = (v101 + v109 - 1) / v109;
    v307[1] = (v100 + v110 - 1) / v110;
    v308 = 1;
    v299 = v109;
    v300 = v110;
    *&v301 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v108, v307, &v299);
    MPSLibrary::ReleaseComputeState();
    return 0;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return -1;
}

void sub_23993D520(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239941EEC(a1);
  }

  _Unwind_Resume(a1);
}

double sub_23993D6AC(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  v6 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v5, *a2.f32, 1), xmmword_239988FE0, a2, 2), xmmword_239989010);
  __asm { FMOV            V1.2D, #-2.0 }

  if (a1)
  {
    v6.i64[0] = vaddq_f32(v6, xmmword_239988FB0).u64[0];
  }

  return *v6.i64;
}

double sub_23993D718(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  v5 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), xmmword_239988FD0, *a2.f32, 1), xmmword_239988FE0, a2, 2), xmmword_239988FF0);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_239988FB0).u64[0];
  }

  return *v5.i64;
}

double sub_23993D788(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  v4 = vaddq_f32(a2, COERCE_UNSIGNED_INT(-a4));
  if (a1)
  {
    v4.i64[0] = vaddq_f32(v4, xmmword_239988FB0).u64[0];
  }

  return *v4.i64;
}

double sub_23993D7CC(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  LODWORD(v4) = 0;
  *(&v4 + 1) = -a4;
  v5 = vaddq_f32(a2, v4);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_239988FB0).u64[0];
  }

  return *v5.i64;
}

double sub_23993D804(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  v5 = vaddq_f32(COERCE_UNSIGNED_INT(-(a4 - (a5 * 0.5))), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), xmmword_239988FD0, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_239988FB0).u64[0];
  }

  return *v5.i64;
}

double sub_23993D878(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  LODWORD(v6) = 0;
  *(&v6 + 1) = a5;
  *(&v5 + 1) = -(a4 - (a5 * 0.5));
  v7 = vaddq_f32(v5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v6, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_239988FB0).u64[0];
  }

  return *v7.i64;
}

uint64_t sub_23993D93C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993D978(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993D9B4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993D9F0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993DA2C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993DA68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993DAA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

uint64_t sub_23993DAE0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userDictionary(a2, a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_removeObjectForKey_, v5);
}

void sub_23993FF3C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23993FF50(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23993FF64(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23993FF78(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23993FF8C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23993FFA0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23993FFB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239941EEC(a1);
  }

  _Unwind_Resume(a1);
}

id *sub_2399400F0(id *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_endEncoding(*a1, a2, a3);

  return a1;
}

void sub_239940AB8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940ACC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940AE0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940AF4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940B08(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940B1C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940B38(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940B4C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940B60(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239940B74(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23994117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_2399411A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_2399411BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_2399411D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_2399411E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_2399411F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941DD0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239941DE4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239941DF8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239941E10(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239941E24(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239941E38(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t sub_239941E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v10 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v10, 53, 0);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

void *sub_23994204C(float *a1, float *a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  _S0 = a2[7];
  _S1 = a2[8];
  if (v5 == 1)
  {
    _S0 = -_S0 / _S1;
    _S1 = 1.0 / _S1;
  }

  a1[12] = _S0;
  a1[13] = _S1;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
  }

  *(a1 + 28) = _H0;
  *(a1 + 29) = _H1;
  if (v5)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = -a2[8];
  }

  v15 = *a1;
  v16 = *(a1 + 1);
  v18 = *a2;
  v17 = *(a2 + 1);
  if (v16 * *a1)
  {
    v19 = 0;
    do
    {
      *(objc_msgSend_mutableBytes(*(a1 + 2), a2, a3) + 4 * v19) = 0;
      *(objc_msgSend_mutableBytes(*(a1 + 3), v20, v21) + 2 * v19++) = 0;
    }

    while (v19 < *(a1 + 1) * *a1);
    v22 = *a2;
    if (!*a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = *a2;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  v23 = *(a2 + 1);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = (v15 - v18) >> 1;
    v27 = (v16 - v17) >> 1;
    do
    {
      if (v23)
      {
        for (i = 0; i < v23; ++i)
        {
          v29 = v27 + i + v26 * *(a1 + 1);
          _S9 = v14 * *(objc_msgSend_bytes(*(a2 + 2), a2, a3) + v24 * v23 + 4 * i);
          *(objc_msgSend_mutableBytes(*(a1 + 2), v31, v32) + 4 * v29) = _S9;
          __asm { FCVT            H9, S9 }

          *(objc_msgSend_mutableBytes(*(a1 + 3), v33, v34) + 2 * v29) = LOWORD(_S9);
          v23 = *(a2 + 1);
        }

        v22 = *a2;
      }

      ++v25;
      v24 += 4;
      ++v26;
    }

    while (v25 < v22);
  }

LABEL_19:
  v35 = *(a1 + 2);
  v36 = objc_msgSend_contents(*(a1 + 4), a2, a3);
  v39 = objc_msgSend_bytes(v35, v37, v38);
  v42 = objc_msgSend_length(v35, v40, v41);
  memcpy(v36, v39, v42);
  v43 = *(a1 + 5);
  v44 = *(a1 + 3);
  v47 = objc_msgSend_contents(v43, v45, v46);
  v50 = objc_msgSend_bytes(v44, v48, v49);
  v53 = objc_msgSend_length(v44, v51, v52);

  return memcpy(v47, v50, v53);
}

uint64_t sub_2399425CC(void *a1, void *a2, _BYTE *a3, unint64_t a4, unint64_t a5)
{
  v101 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v85 = a3;
  *a3 = 0;
  v87 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  v86 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  v92 = -1;
  v12 = &off_284C6CFE0;
  v13 = 62848;
  do
  {
    v14 = *v12;
    if (*v12)
    {
      v15 = objc_msgSend_UTF8String(*v12, v10, v11);
      if (!strncmp(v15, "kUpsample_", 0xAuLL))
      {
        v16 = objc_msgSend_UTF8String(v14, v10, v11);
        memset(v94, 0, sizeof(v94));
        sscanf(v16, "kUpsample_%u_%i_%u_%u_%u_%u_%s", v94, v94 + 4, v94 + 8, v94 + 12, &v94[1], &v94[1] + 4, v100);
        sscanf(v100, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v95, &v95 + 4, &v95 + 8, &v95 + 12, &v96, &v96 + 4, &v96 + 8, &v96 + 12, &v97, &v97 + 4);
        v17 = v94[1];
        if (LODWORD(v94[1]) >= a4)
        {
          v18 = DWORD1(v94[1]);
          if (DWORD1(v94[1]) >= a5 && v92 >= (DWORD1(v94[1]) * LODWORD(v94[1])))
          {
            *a1 = LODWORD(v94[1]);
            *a2 = v18;
            v92 = (v18 * v17);
          }
        }
      }
    }

    v12 += 16;
    v13 -= 128;
  }

  while (v13);
  if (v92 == -1)
  {
    goto LABEL_49;
  }

  v19 = 0;
  while (1)
  {
    v20 = &off_284C6CFE0 + v19;
    v23 = objc_autoreleasePoolPush();
    v24 = *(&off_284C6CFE0 + v19);
    if (!v24 || *(v20 + 8))
    {
      goto LABEL_12;
    }

    v25 = objc_msgSend_UTF8String(*v20, v21, v22);
    if (strncmp(v25, "kCopy2D_", 8uLL))
    {
      break;
    }

    v47 = objc_msgSend_UTF8String(v24, v26, v27);
    memset(v94, 0, 48);
    sscanf(v47, "kCopy2D_%u_%i_%s", v94, v94 + 4, v100);
    sscanf(v100, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v95, &v95 + 4, &v95 + 8, &v95 + 12, &v96, &v96 + 4, &v96 + 8, &v96 + 12, &v97, &v97 + 4);
    *(&v94[2] + 1) = v97;
    *(v94 + 8) = v95;
    *(&v94[1] + 8) = v96;
    if (((DWORD1(v95) * v95 * DWORD2(v95) * HIDWORD(v95)) & 0x3F) == 0)
    {
      v99[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v48, LODWORD(v94[0]));
      v99[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v49, DWORD1(v94[0]) != 0);
      v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, v99, 2);
      v53 = objc_msgSend_objectAtIndexedSubscript_(v51, v52, 0);
      if (objc_msgSend_count(v51, v54, v55) == 1)
      {
        v57 = v87;
      }

      else
      {
        v63 = 1;
        v64 = v87;
        for (i = objc_msgSend_objectForKey_(v87, v56, v53); ; i = objc_msgSend_objectForKey_(v57, v56, v53))
        {
          v57 = i;
          if (!i)
          {
            v57 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v66, v67);
            objc_msgSend_setObject_forKey_(v64, v70, v57, v53);
          }

          v53 = objc_msgSend_objectAtIndexedSubscript_(v51, v66, v63++);
          v64 = v57;
          if (v63 == objc_msgSend_count(v51, v68, v69))
          {
            break;
          }
        }
      }

      v58 = objc_msgSend_objectForKey_(v57, v56, v53);
      v61 = v58;
      if (v58)
      {
        if (objc_msgSend_containsObject_(v58, v59, v24))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v61 = objc_msgSend_array(MEMORY[0x277CBEB18], v59, v60);
        objc_msgSend_setObject_forKey_(v57, v71, v61, v53);
        if (objc_msgSend_containsObject_(v61, v72, v24))
        {
          goto LABEL_48;
        }
      }

      objc_msgSend_addObject_(v61, v62, v24);
    }

LABEL_12:
    objc_autoreleasePoolPop(v23);
    v19 += 128;
    if (v19 == 62848)
    {
      *(v85 + 1) = v87;
      *(v85 + 2) = v86;
      v83 = 1;
      goto LABEL_50;
    }
  }

  v28 = objc_msgSend_UTF8String(v24, v26, v27);
  if (strncmp(v28, "kUpsample_", 0xAuLL))
  {
    goto LABEL_48;
  }

  v31 = objc_msgSend_UTF8String(v24, v29, v30);
  memset(v94, 0, sizeof(v94));
  sscanf(v31, "kUpsample_%u_%i_%u_%u_%u_%u_%s", v94, v94 + 4, v94 + 8, v94 + 12, &v94[1], &v94[1] + 4, v100);
  sscanf(v100, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v95, &v95 + 4, &v95 + 8, &v95 + 12, &v96, &v96 + 4, &v96 + 8, &v96 + 12, &v97, &v97 + 4);
  *(&v94[3] + 1) = v97;
  *(&v94[2] + 8) = v96;
  *(&v94[1] + 8) = v95;
  if (((BYTE4(v95) * v95 * BYTE8(v95) * BYTE12(v95)) & 0x3F) != 0 || *(&v94[0] + 1) != 0x200000002 || *a1 != LODWORD(v94[1]) || *a2 != DWORD1(v94[1]))
  {
    goto LABEL_12;
  }

  v98[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v32, LODWORD(v94[0]));
  v98[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v33, DWORD1(v94[0]) != 0);
  v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v98, 2);
  v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0);
  if (objc_msgSend_count(v35, v38, v39) == 1)
  {
    v41 = v86;
  }

  else
  {
    v73 = 1;
    v74 = v86;
    for (j = objc_msgSend_objectForKey_(v86, v40, v37); ; j = objc_msgSend_objectForKey_(v41, v40, v37))
    {
      v41 = j;
      if (!j)
      {
        v41 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v76, v77);
        objc_msgSend_setObject_forKey_(v74, v80, v41, v37);
      }

      v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v76, v73++);
      v74 = v41;
      if (v73 == objc_msgSend_count(v35, v78, v79))
      {
        break;
      }
    }
  }

  v42 = objc_msgSend_objectForKey_(v41, v40, v37);
  v45 = v42;
  if (v42)
  {
    if (objc_msgSend_containsObject_(v42, v43, v24))
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v45 = objc_msgSend_array(MEMORY[0x277CBEB18], v43, v44);
  objc_msgSend_setObject_forKey_(v41, v81, v45, v37);
  if ((objc_msgSend_containsObject_(v45, v82, v24) & 1) == 0)
  {
LABEL_46:
    objc_msgSend_addObject_(v45, v46, v24);
    goto LABEL_12;
  }

LABEL_48:
  objc_autoreleasePoolPop(v23);
LABEL_49:
  v83 = 0;
LABEL_50:
  objc_autoreleasePoolPop(context);
  return v83;
}

uint64_t sub_239942D58(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5)
{
  v266 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CD7350];
  v10 = *(a1 + *MEMORY[0x277CD7350]);
  v11 = objc_msgSend_pixelFormat(a4, a2, a3);
  PixelInfo = MPSDevice::GetPixelInfo(v10, v11, MPSImageFeatureChannelFormatNone);
  if ((PixelInfo & 0x800000000000) == 0 || ((PixelInfo & 0xE000000) == 0 ? (v15 = 1) : (v15 = BYTE3(PixelInfo) & 0xF), (BYTE3(PixelInfo) & 0xF) != 3 ? (v16 = v15) : (v16 = 4), v16 != 1 ? (v17 = v16 == 4) : (v17 = 1), !v17))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return -19;
    }

LABEL_29:
    MTLReportFailure();
    return -19;
  }

  v18 = PixelInfo;
  if (objc_msgSend_mipmapLevelCount(a5, v13, v14) != 1 || objc_msgSend_mipmapLevelCount(a4, v19, v20) != 1)
  {
    objc_msgSend_mipmapLevelCount(a5, v19, v20);
    objc_msgSend_mipmapLevelCount(a4, v21, v22);
  }

  if (objc_msgSend_mipmapLevelCount(a5, v19, v20) != 1 || objc_msgSend_mipmapLevelCount(a4, v23, v24) != 1)
  {
    v25 = objc_msgSend_mipmapLevelCount(a5, v23, v24) + 1;
    if (v25 < objc_msgSend_mipmapLevelCount(a4, v26, v27))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return -5;
    }
  }

  v28 = objc_msgSend_height(a5, v23, v24);
  if (v28 == objc_msgSend_height(a4, v29, v30))
  {
    objc_msgSend_width(a5, v31, v32);
    objc_msgSend_width(a4, v33, v34);
  }

  v35 = objc_msgSend_height(a5, v31, v32);
  if (v35 != objc_msgSend_height(a4, v36, v37) || (v40 = objc_msgSend_width(a5, v38, v39), v40 != objc_msgSend_width(a4, v41, v42)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -6;
  }

  if (a4 == a5 || (objc_msgSend_isEqual_(a4, v43, a5), objc_msgSend_isEqual_(a4, v44, a5)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -18;
  }

  v47 = objc_msgSend_pixelFormat(a5, v45, v46);
  v50 = objc_msgSend_pixelFormat(a4, v48, v49);
  objc_msgSend_isValidDstPixelFormat_srcPixelFormat_(a1, v51, v47, v50);
  v54 = objc_msgSend_pixelFormat(a5, v52, v53);
  v57 = objc_msgSend_pixelFormat(a4, v55, v56);
  if ((objc_msgSend_isValidDstPixelFormat_srcPixelFormat_(a1, v58, v54, v57) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -7;
  }

  v61 = objc_msgSend_pixelFormat(a5, v59, v60);
  v64 = objc_msgSend_pixelFormat(a4, v62, v63);
  if (objc_msgSend_isReducedPrecisionAllowedForDstPixelFormat_srcPixelFormat_(a1, v65, v61, v64))
  {
    v66 = (*(a1 + *MEMORY[0x277CD7378]) >> 1) & 1;
  }

  else
  {
    v66 = 0;
  }

  v68 = sub_239944578(a4);
  if (!v68)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_123;
    }

    return -1;
  }

  v69 = v68;
  v70 = sub_239944578(a5);
  if (!v70)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_123:
      MTLReportFailure();
      return -1;
    }

    return -1;
  }

  if (*(a1 + 264) != 1)
  {
    v81 = MEMORY[0x277CD7370];
    v82 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
    v83 = *(v82 + 16);
    if (!v83)
    {
      goto LABEL_60;
    }

    v84 = 8 * (1 << -__clz((v18 >> 10) - 1));
    v85 = *(v82 + 8) + 8;
    while (1)
    {
      v86 = *(v85 + 8);
      v87 = *(a1 + 344) == (v86 & 0xF) && *(a1 + 352) == v86 >> 4;
      v88 = v87 && ((v86 >> 8) & 7) == v16;
      if (v88 && v84 == (v86 >> 11) && ((v66 ^ ((v86 & 0x80000) == 0)) & 1) != 0)
      {
        break;
      }

      v85 += 24;
      if (!--v83)
      {
        goto LABEL_60;
      }
    }

    v89 = *(v85 - 8);
    if (!v89 || (v90 = *v85, *v85 > 0xFFFFFFFEFFFFFFFFLL) || v90 == 0xFFFFFFFFLL)
    {
LABEL_60:
      if (!MTLReportFailureTypeEnabled())
      {
        return -19;
      }

      goto LABEL_29;
    }

    v91 = v70;
    IsPyramidAdd = objc_msgSend_getIsPyramidAdd(a1, v71, v72);
    objc_msgSend_edgeMode(a1, v92, v93);
    v247 = v89;
    v248 = v90;
    v94 = *(a1 + *v9);
    v240 = *(*(a1 + *v81) + 32);
    Sampler = MPSDevice::GetSampler();
    if (objc_msgSend_count(v69, v95, v96) == 1 && objc_msgSend_count(v91, v97, v98) == 1)
    {
      v99 = objc_msgSend_objectAtIndexedSubscript_(v91, v97, 0);
      v239 = objc_msgSend_objectAtIndexedSubscript_(v69, v100, 0);
      v243[0] = xmmword_239983230;
      v243[1] = xmmword_239983240;
      v243[2] = xmmword_239983250;
      v243[3] = xmmword_239983260;
      v243[4] = xmmword_239983270;
      v243[5] = xmmword_239983280;
      v243[6] = xmmword_239983290;
      v243[7] = xmmword_2399832A0;
      v244 = objc_msgSend_width(v99, v101, v102);
      v245 = objc_msgSend_height(v99, v103, v104);
      v246 = -1;
      v107 = objc_msgSend_UTF8String(0, v105, v106);
      memset(v242, 0, sizeof(v242));
      sscanf(v107, "kCopy2D_%u_%i_%s", v242, v242 + 4, v254);
      sscanf(v254, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v249, &v249 + 4, &v249 + 8, &v249 + 12, &v250, &v250 + 4, &v250 + 8, &v250 + 12, &v251, &v251 + 4);
      *(v242 + 8) = v249;
      *(&v242[1] + 8) = v250;
      *(&v242[2] + 1) = v251;
      v108 = objc_autoreleasePoolPush();
      v111 = objc_msgSend_UTF8String(0, v109, v110);
      v116 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v112, v113);
      v117 = 62848;
      v118 = &off_284C6CFE0;
      do
      {
        v144 = *(v118 + 4);
        if (v144 != -1)
        {
          if (*v118)
          {
            v145 = objc_msgSend_UTF8String(*v118, v114, v115);
            if (!strcmp(v145, v111))
            {
              v146 = v118[8];
              v147 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v114, v146 != 0);
              if (objc_msgSend_objectForKey_(v116, v148, v147))
              {
                goto LABEL_102;
              }

              v150 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v149, v144);
              v152 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v151, v146 != 0);
              objc_msgSend_setObject_forKey_(v116, v153, v150, v152);
            }
          }
        }

        v118 += 16;
        v117 -= 128;
      }

      while (v117);
      if (objc_msgSend_count(v116, v114, v115) && v116)
      {
        goto LABEL_104;
      }

LABEL_102:
      v116 = 0;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
        v116 = 0;
      }

LABEL_104:
      v208 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v207, *(v240 + 24));
      v210 = objc_msgSend_objectForKeyedSubscript_(v116, v209, v208);
      if (v210 || (v235 = MTLReportFailureTypeEnabled(), v210 = 0, !v235))
      {
        objc_msgSend_unsignedIntegerValue(v210, v211, v212);
      }

      else
      {
        MTLReportFailure();
        objc_msgSend_unsignedIntegerValue(0, v236, v237);
      }

      ComputeState = MPSLibrary::GetComputeState();
      if (!ComputeState && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_autoreleasePoolPop(v108);
      v214 = (DWORD1(v242[1]) * LODWORD(v242[1]));
      v215 = (HIDWORD(v242[0]) * DWORD2(v242[0]));
      v218 = objc_msgSend_width(v99, v216, v217);
      v219 = (v218 + (DWORD1(v242[1]) * HIDWORD(v242[0]) * LODWORD(v242[2])) - 1) / (DWORD1(v242[1]) * HIDWORD(v242[0]) * LODWORD(v242[2]));
      v222 = objc_msgSend_height(v99, v220, v221);
      v223 = (v222 + (LODWORD(v242[1]) * DWORD2(v242[0]) * HIDWORD(v242[1])) - 1) / (LODWORD(v242[1]) * DWORD2(v242[0]) * HIDWORD(v242[1]));
      v224 = v215 * v214;
      if ((v224 > objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v225, v226) || v224 % objc_msgSend_threadExecutionWidth(ComputeState, v227, v228)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_setComputePipelineState_(a2, v229, ComputeState);
      objc_msgSend_setSamplerState_atIndex_(a2, v230, Sampler, 0);
      objc_msgSend_setTexture_atIndex_(a2, v231, v99, 0);
      objc_msgSend_setTexture_atIndex_(a2, v232, v239, 1);
      objc_msgSend_setBytes_length_atIndex_(a2, v233, v243, 144, 0);
      *v254 = v219;
      v255 = v223;
      v256 = 1;
      *&v249 = v214;
      *(&v249 + 1) = v215;
      *&v250 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v234, v254, &v249);
    }

    else
    {
      v154 = objc_msgSend_UTF8String(v89, v97, v98);
      memset(v243, 0, 64);
      sscanf(v154, "kUpsample_%u_%i_%u_%u_%u_%u_%s", v243, v243 + 4, v243 + 8, v243 | 0xC, &v243[1], &v243[1] + 4, v254);
      sscanf(v254, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", v242, v242 + 4, v242 + 8, v242 + 12, &v242[1], &v242[1] + 4, &v242[1] + 8, &v242[1] + 12, &v242[2], &v242[2] + 4);
      *(&v243[1] + 8) = v242[0];
      *(&v243[2] + 8) = v242[1];
      *(&v243[3] + 1) = *&v242[2];
      v156 = objc_msgSend_objectAtIndexedSubscript_(v69, v155, 0);
      v159 = objc_msgSend_pixelFormat(v156, v157, v158);
      MPSDevice::GetPixelInfo(v94, v159, MPSImageFeatureChannelFormatNone);
      v161 = MPSLibrary::GetComputeState();
      if (!v161 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_setComputePipelineState_(a2, v160, v161);
      v162 = (DWORD1(v243[2]) * LODWORD(v243[2]));
      v163 = (HIDWORD(v243[1]) * DWORD2(v243[1]));
      v164 = v163 * v162;
      if ((v164 > objc_msgSend_maxTotalThreadsPerThreadgroup(v161, v165, v166) || v164 % objc_msgSend_threadExecutionWidth(v161, v167, v168)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v170 = 48;
      if (v66)
      {
        v170 = 56;
        v171 = 4;
      }

      else
      {
        v171 = 8;
      }

      if (v66)
      {
        v172 = 24;
      }

      else
      {
        v172 = 16;
      }

      objc_msgSend_setBytes_length_atIndex_(a2, v169, a1 + v170 + 344, v171, 1);
      v175 = objc_msgSend_bytes(*(a1 + 344 + v172), v173, v174);
      v178 = objc_msgSend_length(*(a1 + 344 + v172), v176, v177);
      objc_msgSend_setBytes_length_atIndex_(a2, v179, v175, v178, 2);
      objc_msgSend_setSamplerState_atIndex_(a2, v180, Sampler, 0);
      *v254 = MEMORY[0x277D85DD0];
      v255 = 3221225472;
      v256 = sub_239944654;
      v257 = &unk_278AC5088;
      v262 = v243[0];
      v263 = v243[1];
      v264 = v243[2];
      v265 = v243[3];
      v258 = a2;
      v259 = v162;
      v260 = v163;
      v261 = 1;
      v183 = objc_msgSend_count(v69, v181, v182);
      if (IsPyramidAdd)
      {
        if (v183 >= 2)
        {
          v186 = -1;
          v187 = 1;
          do
          {
            v188 = objc_msgSend_count(v69, v184, v185) + v186;
            v190 = objc_msgSend_objectAtIndexedSubscript_(v91, v189, v188 - 1);
            v192 = objc_msgSend_objectAtIndexedSubscript_(v69, v191, v188 - 1);
            if (v188 + 1 == objc_msgSend_count(v69, v193, v194))
            {
              v196 = objc_msgSend_objectAtIndexedSubscript_(v69, v195, v188);
            }

            else
            {
              v196 = objc_msgSend_objectAtIndexedSubscript_(v91, v195, v188);
            }

            (v256)(v254, v190, v192, v196);
            ++v187;
            --v186;
          }

          while (v187 < objc_msgSend_count(v69, v197, v198));
        }
      }

      else if (v183 >= 2)
      {
        v199 = 1;
        do
        {
          v200 = objc_msgSend_objectAtIndexedSubscript_(v91, v184, v199 - 1);
          v202 = objc_msgSend_objectAtIndexedSubscript_(v69, v201, v199 - 1);
          v204 = objc_msgSend_objectAtIndexedSubscript_(v69, v203, v199);
          (v256)(v254, v200, v202, v204);
          ++v199;
        }

        while (v199 < objc_msgSend_count(v69, v205, v206));
      }
    }

    MPSLibrary::ReleaseComputeState();
    return 0;
  }

  if (objc_msgSend_getCopyConfigID(a1, v71, v72) == -1)
  {
    CopyConfigID = 0;
    if (objc_msgSend_getUpsampleConfigID(a1, v73, v74) != -1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    CopyConfigID = objc_msgSend_getCopyConfigID(a1, v73, v74);
    if (objc_msgSend_getUpsampleConfigID(a1, v76, v77) != -1)
    {
LABEL_40:
      UpsampleConfigID = objc_msgSend_getUpsampleConfigID(a1, v78, v79);
      goto LABEL_65;
    }
  }

  UpsampleConfigID = 0;
LABEL_65:
  CopyConfigs = objc_msgSend_getCopyConfigs(a1, v78, v79);
  v253[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v120, v16);
  v253[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v121, v66);
  v124 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v122, v253, 2);
  v125 = 0;
  do
  {
    if (!CopyConfigs)
    {
      break;
    }

    v126 = objc_msgSend_objectAtIndexedSubscript_(v124, v123, v125);
    CopyConfigs = objc_msgSend_objectForKey_(CopyConfigs, v127, v126);
    ++v125;
  }

  while (v125 != objc_msgSend_count(v124, v128, v129));
  v130 = objc_msgSend_objectAtIndex_(CopyConfigs, v123, CopyConfigID);
  UpsampleConfigs = objc_msgSend_getUpsampleConfigs(a1, v131, v132);
  v252[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v134, v16);
  v252[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v135, v66);
  v138 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v136, v252, 2);
  v139 = 0;
  do
  {
    if (!UpsampleConfigs)
    {
      break;
    }

    v140 = objc_msgSend_objectAtIndexedSubscript_(v138, v137, v139);
    UpsampleConfigs = objc_msgSend_objectForKey_(UpsampleConfigs, v141, v140);
    ++v139;
  }

  while (v139 != objc_msgSend_count(v138, v142, v143));
  if (!(v130 | objc_msgSend_objectAtIndex_(UpsampleConfigs, v137, UpsampleConfigID)))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return -19;
    }

    goto LABEL_29;
  }

  return -20;
}

uint64_t sub_2399444BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_autoreleasePoolPush();
  v7 = MPSCreateFunctionConstantValues();
  v11 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v11, 53, 0);
  v9 = _MPSNewSpecializedFunction();

  objc_autoreleasePoolPop(v6);
  return v9;
}

id sub_239944578(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = objc_msgSend_mipmapLevelCount(a1, v3, v4);
  v9 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  if (!v9 || !objc_msgSend_mipmapLevelCount(a1, v7, v8))
  {
    return v9;
  }

  v12 = 0;
  while (1)
  {
    v13 = objc_msgSend_pixelFormat(a1, v10, v11);
    v15 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a1, v14, v13, 2, v12, 1, 0, 1);
    if (!v15)
    {
      break;
    }

    v17 = v15;
    objc_msgSend_setObject_atIndexedSubscript_(v9, v16, v15, v12);

    if (++v12 >= objc_msgSend_mipmapLevelCount(a1, v18, v19))
    {
      return v9;
    }
  }

  return 0;
}

uint64_t sub_239944654(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30[0] = xmmword_239983230;
  v30[1] = xmmword_239983240;
  v30[2] = xmmword_239983250;
  v30[3] = xmmword_239983260;
  v30[4] = xmmword_239983270;
  v30[5] = xmmword_239983280;
  v30[6] = xmmword_239983290;
  v30[7] = xmmword_2399832A0;
  v31 = objc_msgSend_width(a2, a2, a3);
  v32 = objc_msgSend_height(a2, v8, v9);
  v33 = -1;
  v12 = objc_msgSend_width(a2, v10, v11);
  v13 = (2 * *(a1 + 92) * *(a1 + 100) * *(a1 + 112));
  v14 = (v12 + v13 - 1) / v13;
  v17 = objc_msgSend_height(a2, v15, v16);
  v18 = (2 * *(a1 + 88) * *(a1 + 96) * *(a1 + 108));
  v19 = (v17 + v18 - 1) / v18;
  objc_msgSend_setTexture_atIndex_(*(a1 + 32), v20, a2, 0);
  objc_msgSend_setTexture_atIndex_(*(a1 + 32), v21, a3, 1);
  objc_msgSend_setTexture_atIndex_(*(a1 + 32), v22, a4, 2);
  objc_msgSend_setBytes_length_atIndex_(*(a1 + 32), v23, v30, 144, 0);
  v24 = *(a1 + 32);
  v29[0] = v14;
  v29[1] = v19;
  v29[2] = 1;
  v27 = *(a1 + 40);
  v28 = *(a1 + 56);
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v24, v25, v29, &v27);
}

uint64_t sub_239944860(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t **a6)
{
  v8 = *(a1 + *MEMORY[0x277CD7378]);
  v9 = *(a1 + *MEMORY[0x277CD7350]);
  v76 = *(a6 + 1);
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
    v70 = *(a6 + 5);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v10 = v70;
    a3 = v17;
    a5 = v18;
    if (isEqual)
    {
      return -18;
    }
  }

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
      v62 = a3;
      v67 = a5;
      v72 = v10;
      v30 = MTLReportFailureTypeEnabled();
      v10 = v72;
      a3 = v62;
      a5 = v67;
      if (v30)
      {
        v22 = 1;
        MTLReportFailure();
        v10 = v72;
        a3 = v62;
        a5 = v67;
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      v64 = a3;
      v68 = a5;
      v74 = v10;
      v59 = MTLReportFailureTypeEnabled();
      v10 = v74;
      a3 = v64;
      a5 = v68;
      if (v59)
      {
        MTLReportFailure();
        v10 = v74;
        a3 = v64;
        a5 = v68;
      }
    }

    if ((*(v11 + 5) & 2) != 0)
    {
      v65 = a3;
      v69 = a5;
      v75 = v10;
      v60 = MTLReportFailureTypeEnabled();
      v10 = v75;
      a3 = v65;
      a5 = v69;
      if (v60)
      {
        MTLReportFailure();
        v10 = v75;
        a3 = v65;
        a5 = v69;
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
    v28 = BYTE3(v23) & 0xF;
    v26 = v9;
    switch(v28)
    {
      case 4u:
        v71 = v10;
        v61 = a3;
        v66 = a5;
        v31 = (v24 & 0x10000000000) == 0;
        v27 = 123;
        break;
      case 2u:
        v71 = v10;
        v61 = a3;
        v66 = a5;
        v31 = (v24 & 0x10000000000) == 0;
        v27 = 103;
        break;
      case 1u:
        v71 = v10;
        v61 = a3;
        v66 = a5;
        v15 = (v24 & 0x10000000000) == 0;
        v27 = 53;
        if (!v15)
        {
          v27 = 54;
        }

        goto LABEL_48;
      default:
        return -7;
    }

    if (!v31)
    {
      ++v27;
    }

    goto LABEL_48;
  }

  v25 = BYTE3(v23) & 0xF;
  if (v25 > 4)
  {
    return -7;
  }

  v26 = v9;
  v71 = v10;
  v61 = a3;
  v66 = a5;
  v27 = qword_239983350[v25];
LABEL_48:
  if ((v8 & 2) != 0)
  {
    v32 = *v11 & 0x3FF;
  }

  else
  {
    v32 = v27;
  }

  PixelInfo = MPSDevice::GetPixelInfo(v26, v32, MPSImageFeatureChannelFormatNone);
  MEMORY[0x23EE7BAC0](v93, v61, v66);
  v91 = v71;
  v92 = 1;
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState && (objc_msgSend_setComputePipelineState_(a2, v33, ComputeState), v37 = objc_msgSend_threadExecutionWidth(ComputeState, v35, v36), MPSLibrary::ReleaseComputeState(), v38 = vmovn_s64(*(a6 + 4)), v87[1] = v38.i16[2], v87[0] = v38.i16[0], v88 = 0, v39 = vmovn_s64(v71), v90 = v39.i16[2], v73 = v39, v89 = v39.i16[0], objc_msgSend_setTexture_atIndex_(a2, v40, a4, 0), objc_msgSend_setTexture_atIndex_(a2, v41, CompressedTempTexture, 1), v42 = MPSDevice::GetSampler(), objc_msgSend_setSamplerState_atIndex_(a2, v43, v42, 0), objc_msgSend_setBytes_length_atIndex_(a2, v44, v87, 12, 0), v85 = (v14 + v37 - 1) / v37, v86 = vdupq_n_s64(1uLL), v83 = v37, v84 = v86, objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v45, &v85, &v83), (v47 = MPSLibrary::GetComputeState()) != 0))
  {
    objc_msgSend_setComputePipelineState_(a2, v46, v47);
    v50 = objc_msgSend_threadExecutionWidth(v47, v48, v49);
    MPSLibrary::ReleaseComputeState();
    v51 = vmovn_s64(v76);
    v78 = 0;
    v80 = v51.i16[2];
    v79 = v51.i16[0];
    v82 = v73.i16[2];
    v81 = v73.i16[0];
    objc_msgSend_setTexture_atIndex_(a2, v52, CompressedTempTexture, 0);
    objc_msgSend_setTexture_atIndex_(a2, v53, v66, 1);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v55, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(a2, v56, &v78, 12, 0);
    v85 = (v13 + v50 - 1) / v50;
    v86 = vdupq_n_s64(1uLL);
    v83 = v50;
    v84 = v86;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v57, &v85, &v83);
    v58 = 0;
  }

  else
  {
    v58 = -1;
  }

  MPSAutoCache::~MPSAutoCache(v93);
  return v58;
}

uint64_t sub_239945034(uint64_t a1, const char *a2, void *a3, float a4, uint64_t a5, void *a6, void *a7, int64x2_t *a8, uint64_t a9, __int128 *a10)
{
  v11 = a7;
  v13 = a3;
  v15 = a1;
  v16 = a8[1].i64[1];
  v38 = a8[1].i64[0];
  v18 = a8[2].i64[1];
  v17 = a8[3].i64[0];
  v19 = a8->i64[1];
  if (a8->i64[0] == v19)
  {
    if (a6 == a7)
    {
      return -18;
    }

    v21 = a8[1].i64[1];
    v16 = a8[3].i64[0];
    v22 = a8[2].i64[1];
    isEqual = objc_msgSend_isEqual_(a6, a2, a7, a5);
    v15 = a1;
    v11 = a7;
    v18 = v22;
    v17 = v16;
    LOWORD(v16) = v21;
    v13 = a3;
    if (isEqual)
    {
      return -18;
    }
  }

  v20 = BYTE3(*v19) & 0xF;
  if (v20 == 1 || v20 == 2 || (*(v15 + 1477) & 4) == 0 || (*v19 & 0xFC00uLL) <= 0x1000 || *(v15 + 1472) <= 6)
  {
    v27 = 32;
  }

  else
  {
    v27 = 16;
  }

  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    return -1;
  }

  objc_msgSend_setComputePipelineState_(v13, v29, ComputeState);
  MPSLibrary::ReleaseComputeState();
  v30 = vmovn_s64(a8[4]);
  v42[1] = v30.i16[2];
  v42[0] = v30.i16[0];
  v42[3] = v16;
  v42[2] = v38;
  v42[5] = v17;
  v42[4] = v18;
  v43 = a4;
  v44 = *a10;
  v45 = *(a10 + 4);
  objc_msgSend_setTexture_atIndex_(v13, v31, a6, 0);
  objc_msgSend_setTexture_atIndex_(v13, v32, v11, 1);
  objc_msgSend_setBytes_length_atIndex_(v13, v33, v42, 36, 0);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v13, v35, Sampler, 0);
  v41[0] = (v18 + v27 - 1) / v27;
  v41[1] = (v17 + v27 - 1) / v27;
  v41[2] = 1;
  v39 = vdupq_n_s64(0x10uLL);
  v40 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v13, v36, v41, &v39);
  return 0;
}

uint64_t sub_239945368(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  if (a6[3].i64[0])
  {
    v6 = a6[2].i64[1] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return sub_239945034(*(a1 + *MEMORY[0x277CD7350]), *(a1 + *MEMORY[0x277CD7370]), a2, *(a1 + 208), a4, a4, a5, a6, *(a1 + 160), &xmmword_2399833C8);
  }
}

void sub_239947308(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23994744C(va, a2, a3);
  _Unwind_Resume(a1);
}

id *sub_23994744C(id *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_endEncoding(*a1, a2, a3);

  return a1;
}

unint64_t sub_239947598@<X0>(const char *a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W4>, void *a5@<X5>, char a6@<W6>, unint64_t *a7@<X8>)
{
  if ((a6 & 1) == 0)
  {
    v11 = *a1;
    v14 = *(a1 + 1);
    v22 = *(a1 + 2);
    v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, a1, a2, a3);
    result = objc_msgSend_threadExecutionWidth(a5, v27, v28);
    v29 = v14 * v11;
    if (v14 * v11 <= v26)
    {
      if (!(v29 % result))
      {
        goto LABEL_44;
      }

      v30 = v26 / result;
      if (a4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      while (v29 > result)
      {
        if (--v29 <= v26 && (v29 & (result - 1)) == 0)
        {
          break;
        }
      }

      v30 = v29 / result;
      if (a4)
      {
LABEL_37:
        if (result <= v30)
        {
          v11 = v30;
        }

        else
        {
          v11 = result;
        }

        if (result >= v30)
        {
          v14 = v30;
        }

        else
        {
          v14 = result;
        }

LABEL_43:
        v22 = 1;
        goto LABEL_44;
      }
    }

    if (result >= v30)
    {
      v11 = v30;
    }

    else
    {
      v11 = result;
    }

    if (result <= v30)
    {
      v14 = v30;
    }

    else
    {
      v14 = result;
    }

    goto LABEL_43;
  }

  v9 = 0x10 / a2;
  if (a2 > 0x10)
  {
    v9 = 1;
  }

  v10 = (1 << -__clz(v9));
  if ((v9 & (v9 - 1)) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = 0x10 / a3;
  if (a3 > 0x10)
  {
    v12 = 1;
  }

  v13 = (1 << -__clz(v12));
  if ((v12 & (v12 - 1)) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 * v11;
  if (v15 % objc_msgSend_threadExecutionWidth(a5, a1, a2))
  {
    do
    {
      v18 = v11 <= v14;
      v14 <<= v11 > v14;
      v11 <<= v18;
      v15 = v11 * v14;
    }

    while (v11 * v14 % objc_msgSend_threadExecutionWidth(a5, v16, v17));
  }

  result = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, v16, v17);
  v22 = 1;
  if (v15 > result && v14 >= 2)
  {
    v22 = 1;
    do
    {
      v23 = v14;
      v14 >>= 1;
      result = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, v20, v21);
    }

    while (v14 * v11 > result && v23 > 3);
  }

LABEL_44:
  *a7 = v11;
  a7[1] = v14;
  a7[2] = v22;
  return result;
}

__n128 sub_23994774C@<Q0>(__n128 *a1@<X1>, int a2@<W4>, void *a3@<X5>, __n128 *a4@<X8>, uint64_t a5@<X2>)
{
  v9 = objc_msgSend_maxTotalThreadsPerThreadgroup(a3, a1, a5);
  v12 = objc_msgSend_threadExecutionWidth(a3, v10, v11);
  v13 = a1->n128_u64[1] * a1->n128_u64[0];
  if (v13 > v9)
  {
    while (v13 > v12)
    {
      if (--v13 <= v9 && (v13 & (v12 - 1)) == 0)
      {
        break;
      }
    }

    v14 = v13 / v12;
    if (v12 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v12 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    if (a2)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (!a2)
    {
      v15 = v16;
    }

LABEL_32:
    a1->n128_u64[0] = v17;
    a1->n128_u64[1] = v15;
    a1[1].n128_u64[0] = 1;
    goto LABEL_33;
  }

  if (v13 % v12)
  {
    v15 = v9 / v12;
    if (a2)
    {
      if (v12 <= v9 / v12)
      {
        v17 = v9 / v12;
      }

      else
      {
        v17 = v12;
      }

      if (v12 < v9 / v12)
      {
        v15 = v12;
      }
    }

    else
    {
      if (v12 >= v9 / v12)
      {
        v17 = v9 / v12;
      }

      else
      {
        v17 = v12;
      }

      if (v12 > v9 / v12)
      {
        v15 = v12;
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t sub_239947840@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 12);
  v6 = 63 - __clz(v5);
  v7 = v5 == 0;
  v8 = 0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = *(a2 + 8) >> v8;
  v10 = 3 * (31 - __clz(v9));
  if (!v9)
  {
    v10 = 0;
  }

  v12 = *(a2 + 20);
  v11 = *(a2 + 24);
  v13 = 31 - __clz(v11);
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 29);
  if (v3 == 1 && v4 == 1)
  {
    *(a2 + 29) = 0;
    *a3 = xmmword_239983450;
    *(a3 + 16) = vdupq_n_s64(0x10uLL);
    *(a3 + 32) = 774;
    return result;
  }

  if ((v3 == 1 || v4 == 1 || v3 == v4) && (v3 < 0xA || v4 < 0xA))
  {
    v24 = v3 == 1 && v4 > 9;
    v25 = v4 - 1;
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v3 > 9;
    }

    if (!v26 && !v24)
    {
      v27 = v10 + v8;
      v28 = 12 * (31 - __clz(v12 >> v14));
      v29 = dword_239983460[5 * (v25 >> 1) + ((v3 - 1) >> 1)];
      if (!(v12 >> v14))
      {
        v28 = 0;
      }

      v16 = 648 * (*(a2 + 16) ^ 1) + 324 * (*(a2 + 28) ^ 1) + v28 + 36 * v27 + v29;
      v7 = v15 == 0;
      v30 = 8;
      if (!v7)
      {
        v30 = 16;
      }

      v17 = *(result + v30);
      goto LABEL_18;
    }

    if (v24)
    {
      v31 = 3;
    }

    else
    {
      v31 = 0;
    }

    v16 = v8 + v31 + 6 * v15;
  }

  else
  {
    *(a2 + 29) = 0;
    v16 = v8 + 12;
  }

  v17 = &unk_2399885C4;
LABEL_18:
  v18 = &v17[8 * v16];
  v19 = *v18;
  v20 = (v19 >> 8) & 0xF;
  LODWORD(v21) = (((v19 >> 8) & 0xE0) + 32) / (v20 + 1);
  if ((v19 & 0x1000) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = (v20 + 1);
  }

  if ((v19 & 0x1000) != 0)
  {
    v21 = (v20 + 1);
  }

  else
  {
    v21 = v21;
  }

  *a3 = (v19 & 0xF) + 1;
  *(a3 + 8) = (v19 >> 4) + 1;
  *(a3 + 16) = v22;
  *(a3 + 24) = v21;
  *(a3 + 32) = *(v18 + 2);
  return result;
}

uint64_t sub_239947F3C(uint64_t a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v185 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v135 = *(a1 + 256);
  v136 = *(a1 + 248);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = MEMORY[0x277CD7370];
  v126 = *a6;
  v127 = *(a6 + 8);
  v132 = *(a1 + *MEMORY[0x277CD7370]);
  v14 = *(a1 + 160);
  _S8 = *(a1 + 264);
  v16 = objc_msgSend_width(a4, a2, a3);
  v133 = a4;
  v19 = objc_msgSend_height(a4, v17, v18);
  result = 0;
  v179 = v16;
  v180 = v19;
  v181 = 1;
  v21 = *(a6 + 48);
  *v178 = *(a6 + 32);
  *&v178[16] = v21;
  v177 = *(a6 + 16);
  if (*&v178[8] && *&v178[16])
  {
    v22 = *(a6 + 64);
    if (v22 <= (v16 + (v136 >> 1)) && v22 + *&v178[8] >= -(v136 >> 1))
    {
      v23 = *(a6 + 72);
      if (v23 <= (v19 + (v135 >> 1)) && v23 + *&v178[16] >= -(v135 >> 1))
      {
        if (*(a1 + 272) == 1)
        {
          v24 = *(*(a1 + 280) + *v13);
          v25 = *(a1 + 232);
          LODWORD(v26) = *(v25 + 4);
          DWORD1(v26) = *(v25 + 12);
          *(&v26 + 1) = *(v25 + 16);
          v182 = v26;
          LODWORD(v183) = *(v25 + 28);
          return sub_239945034(v12, v24, a2, _S8, a3, a4, a5, a6, v14, &v182);
        }

        v125 = a5;
        if ((v11 & 2) != 0)
        {
          v28 = a4;
          v27 = ((*v127 >> 34) & 0x3F) <= 2 && ((*v126 >> 34) & 0x3F) < 3;
        }

        else
        {
          v27 = 0;
          v28 = v133;
        }

        Sampler = MPSDevice::GetSampler();
        v124 = a3;
        v30 = *(v132 + 32);
        if (*(a1 + 268) == 1)
        {
          v159 = sub_239949630(*v127, v12, v27);
          MPSSeparatePassDimensions();
          MEMORY[0x23EE7BAC0](v158, a3, v125);
          (*(*v30 + 32))(v30);
          CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
          objc_msgSend_usage(CompressedTempTexture, v32, v33, v161, v160);
          v34 = sub_2399496AC(*v126);
          v36 = v35;
          v37 = v159;
          v38 = sub_2399496AC(*v127);
          v40 = v39;
          v157 = 0;
          v152.i64[0] = v136 | 0x100000000;
          v152.i64[1] = __PAIR64__(v34, v36);
          LOBYTE(v36) = MPSIsTextureTwiddled();
          v41 = sub_2399496AC(v37);
          LODWORD(v37) = v42;
          LODWORD(v153) = v36;
          HIDWORD(v153) = v42;
          v154 = v41;
          v155 = MPSIsTextureTwiddled();
          v156 = v27;
          v151 = 0;
          LODWORD(v146) = 1;
          *(&v146 + 4) = __PAIR64__(v37, v135);
          HIDWORD(v146) = v41;
          LODWORD(v147) = MPSIsTextureTwiddled();
          HIDWORD(v147) = v40;
          v148 = v38;
          v149 = MPSIsTextureTwiddled();
          v150 = v27;
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          (*(*v30 + 16))(&v182, v30, &v152);
          v145 = 0;
          v143 = 0u;
          v144 = 0u;
          (*(*v30 + 16))(&v143, v30, &v146);
          v43 = v156;
          v44 = v150;
          ComputeState = MPSLibrary::GetComputeState();
          if (!ComputeState && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v46 = MPSLibrary::GetComputeState();
          if (!v46 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v47 = v182;
          v141 = 0uLL;
          v142 = 0;
          v139 = v183;
          v140 = 1;
          v48 = *(&v182 + 1);
          (*(*v30 + 24))(&v141, v30, &v139, v182);
          v49 = v141;
          v50 = vmovn_s64(v161[0]);
          v165 = v50.i16[2];
          v164 = v50.i16[0];
          v166 = 0;
          v128 = v162;
          v51 = vmovn_s64(v162);
          v168 = v51.i16[2];
          v167 = v51.i16[0];
          v170 = 0;
          v169 = 0.0;
          v171 = v136;
          objc_msgSend_setComputePipelineState_(a2, v52, ComputeState);
          objc_msgSend_setTexture_atIndex_(a2, v53, v133, 0);
          objc_msgSend_setTexture_atIndex_(a2, v54, CompressedTempTexture, 1);
          objc_msgSend_setBytes_length_atIndex_(a2, v55, &v164, 20, 0);
          v57 = *(a1 + 232);
          if (v57)
          {
            if (v43)
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v56, *(a1 + 240), 2 * v136, 1);
            }

            else
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v56, v57, 4 * v136, 1);
            }
          }

          else
          {
            v59 = 4;
            if (v43)
            {
              v59 = 6;
            }

            v60 = *(a1 + OBJC_IVAR___MPSImageConvolution__fWidth[v59]);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v56, v60, 0, 1);
            sub_2399496F0(v124, v60, v61);
          }

          objc_msgSend_setSamplerState_atIndex_(a2, v58, Sampler, 0);
          *&v139 = (v49 * v47 + v128.i64[0] - 1) / (v49 * v47);
          *(&v139 + 1) = (*(&v49 + 1) * v48 + v128.i64[1] - 1) / (*(&v49 + 1) * v48);
          v140 = 1;
          v137 = v141;
          v138 = v142;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v78, &v139, &v137);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_usage(v125, v79, v80);
          v81 = v143;
          v137 = v144;
          v138 = 1;
          v82 = *(&v143 + 1);
          (*(*v30 + 24))(&v139, v30, &v137, v143);
          v141 = v139;
          v142 = v140;
          v83 = v139;
          v84 = vmovn_s64(v160[0]);
          v165 = v84.i16[2];
          v164 = v84.i16[0];
          v85 = vmovn_s64(v177);
          HIWORD(v166) = v85.i16[2];
          LOWORD(v166) = v85.i16[0];
          v131 = *&v178[8];
          _D0 = vmovn_s64(vaddq_s64(v177, *&v178[8]));
          v168 = _D0.i16[2];
          v167 = _D0.i16[0];
          __asm { FCVT            H0, S8 }

          v170 = _D0.i16[0];
          v169 = _S8;
          v171 = v135;
          objc_msgSend_setComputePipelineState_(a2, v91, v46);
          objc_msgSend_setTexture_atIndex_(a2, v92, CompressedTempTexture, 0);
          objc_msgSend_setTexture_atIndex_(a2, v93, v125, 1);
          objc_msgSend_setBytes_length_atIndex_(a2, v94, &v164, 20, 0);
          v96 = *(a1 + 232);
          if (v96)
          {
            v97 = a2;
            if (v44)
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v95, *(a1 + 240) + 2 * v136, 2 * v135, 1);
            }

            else
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v95, v96 + 4 * v136, 4 * v135, 1);
            }
          }

          else
          {
            v99 = 4;
            if (v44)
            {
              v99 = 6;
            }

            v100 = 1;
            if (!v44)
            {
              v100 = 2;
            }

            v101 = *(a1 + OBJC_IVAR___MPSImageConvolution__fWidth[v99]);
            v97 = a2;
            objc_msgSend_setBuffer_offset_atIndex_(a2, v95, v101, v136 << v100, 1);
            sub_2399496F0(v124, v101, v102);
          }

          objc_msgSend_setSamplerState_atIndex_(v97, v98, Sampler, 0);
          *&v139 = (v83 * v81 + v131.i64[0] - 1) / (v83 * v81);
          *(&v139 + 1) = (*(&v83 + 1) * v82 + v131.i64[1] - 1) / (*(&v83 + 1) * v82);
          v140 = 1;
          v137 = v141;
          v138 = v142;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v97, v103, &v139, &v137);
          MPSLibrary::ReleaseComputeState();
          sub_2399496F0(v124, v133, v104);
          sub_2399496F0(v124, v125, v105);
          MPSAutoCache::~MPSAutoCache(v158);
        }

        else
        {
          if (v28 == v125 || (objc_msgSend_isEqual_(v28, v29, v125) & 1) != 0)
          {
            return -18;
          }

          v62 = sub_2399496AC(*v126);
          v64 = v63;
          v129 = sub_2399496AC(*v127);
          v66 = v65;
          v144 = 0uLL;
          *&v143 = __PAIR64__(v135, v136);
          *(&v143 + 1) = __PAIR64__(v62, v64);
          LOBYTE(v144) = MPSIsTextureTwiddled();
          *(&v144 + 4) = __PAIR64__(v129, v66);
          BYTE12(v144) = MPSIsTextureTwiddled();
          BYTE13(v144) = v27;
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          (*(*v30 + 16))(&v182, v30, &v143);
          v67 = BYTE13(v144);
          v68 = v184;
          v130 = MPSLibrary::GetComputeState();
          if (!v130 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          objc_msgSend_usage(v125, v69, v70);
          v152 = 0uLL;
          v153 = 0;
          v146 = v183;
          v147 = 1;
          v71 = v182;
          (*(*v30 + 24))(&v152);
          v73 = vmovn_s64(*(a6 + 64));
          v122 = *&v178[8];
          if (v68 - 771 > 2)
          {
            v165 = v73.i16[2];
            v164 = v73.i16[0];
            v106 = vmovn_s64(v177);
            HIWORD(v166) = v106.i16[2];
            _D0 = vmovn_s64(vaddq_s64(v177, *&v178[8]));
            LOWORD(v166) = v106.i16[0];
            v168 = _D0.i16[2];
            v167 = _D0.i16[0];
            __asm { FCVT            H0, S8 }

            v170 = _D0.i16[0];
            v169 = _S8;
            v108 = v136;
            if (v136 == 1)
            {
              v108 = v135;
            }

            v171 = v108;
            v76 = &v164;
            v77 = 20;
          }

          else
          {
            v172[1] = v73.i16[2];
            v74 = vmovn_s64(v177);
            v172[0] = v73.i16[0];
            v172[3] = v74.i16[2];
            v172[2] = v74.i16[0];
            v75 = vmovn_s64(vaddq_s64(v177, *&v178[8]));
            v172[5] = v75.i16[2];
            v172[4] = v75.i16[0];
            v173 = _S8;
            v174 = v182;
            v175 = v136;
            v176 = v135;
            v76 = v172;
            v77 = 24;
          }

          v109 = v152;
          objc_msgSend_setComputePipelineState_(a2, v72, v130);
          objc_msgSend_setTexture_atIndex_(a2, v110, v133, 0);
          objc_msgSend_setTexture_atIndex_(a2, v111, v125, 1);
          objc_msgSend_setBytes_length_atIndex_(a2, v112, v76, v77, 0);
          v114 = *(a1 + 232);
          if (v114)
          {
            if (((v68 < 0x303) & v67) != 0)
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v113, *(a1 + 240), 2 * v135 * v136, 1);
            }

            else
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v113, v114, 4 * v135 * v136, 1);
            }
          }

          else
          {
            v116 = 4;
            if (((v68 < 0x303) & v67) != 0)
            {
              v116 = 6;
            }

            v117 = *(a1 + OBJC_IVAR___MPSImageConvolution__fWidth[v116]);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v113, v117, 0, 1);
            sub_2399496F0(a3, v117, v118);
          }

          objc_msgSend_setSamplerState_atIndex_(a2, v115, Sampler, 0);
          *&v146 = (v109.i64[0] * v71 + v122 - 1) / (v109.i64[0] * v71);
          *(&v146 + 1) = (v109.i64[1] * *(&v71 + 1) + *(&v122 + 1) - 1) / (v109.i64[1] * *(&v71 + 1));
          v147 = 1;
          v162 = v152;
          v163 = v153;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v119, &v146, &v162);
          MPSLibrary::ReleaseComputeState();
          sub_2399496F0(a3, v133, v120);
          sub_2399496F0(a3, v125, v121);
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_239948CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239948DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239949630(uint64_t a1, MPSDevice *this, int a3)
{
  if (BYTE4(a1) < 0xBuLL)
  {
    a3 = 1;
  }

  v5 = BYTE3(a1) & 0xF;
  v6 = 55;
  if (a3)
  {
    v6 = 25;
  }

  v7 = 125;
  if (a3)
  {
    v7 = 115;
  }

  v8 = 105;
  if (a3)
  {
    v8 = 65;
  }

  v9 = a3 == 0;
  v10 = 125;
  if (!v9)
  {
    v10 = 115;
  }

  if (v5 == 2)
  {
    v10 = v8;
  }

  if (v5 - 3 < 2)
  {
    v10 = v7;
  }

  if (v5 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  return MPSDevice::GetPixelInfo(this, v11, MPSImageFeatureChannelFormatNone);
}

uint64_t sub_2399496AC(uint64_t a1)
{
  if ((a1 & 0xE000000) != 0)
  {
    v1 = BYTE3(a1) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  if ((BYTE3(a1) & 0xF) == 3)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x800000000000) != 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *sub_2399496F0(void *result, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_userDictionary(result, a2, a3);
    v7 = objc_msgSend_objectForKey_(v5, v6, @"_MPSCommandBufferRetainListKey");
    if (!v7)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v5, v10, v9, @"_MPSCommandBufferRetainListKey");

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23993D978;
      v12[3] = &unk_278AC37A8;
      v12[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v4, v11, v12);
      v7 = v9;
    }

    return objc_msgSend_addObject_(v7, v8, a2);
  }

  return result;
}

uint64_t sub_2399498C0(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = *(a1 + *MEMORY[0x277CD7370]);
  *&v61.origin.x = *(a1 + 208);
  *&v61.origin.z = *(a1 + 224);
  v11 = *(a1 + 256);
  *&v61.size.height = *(a1 + 240);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_textureType(a4, a2, a3);
    objc_msgSend_textureType(a5, v12, v13);
    v16 = objc_msgSend_textureType(a4, v14, v15);
    if (v16 != objc_msgSend_textureType(a5, v17, v18))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v55 = a4;
        v56 = a5;
        MTLReportFailure();
      }
    }
  }

  v19 = *(a6 + 16);
  v21 = *(a6 + 40);
  v20 = *(a6 + 48);
  v22 = *a6;
  v23 = *(a6 + 8);
  if (*a6 == v23)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v60 = *(a6 + 16);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v19 = v60;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v20)
  {
    if (v21)
    {
      v59 = v19;
      memset(v67, 0, 48);
      v66.width = objc_msgSend_width(a4, a2, a3);
      v66.height = objc_msgSend_height(a4, v25, v26);
      v66.depth = 1;
      v65 = v61;
      MPSGetEffectiveClipRegion(v67[0].i64, &v66, &v65);
      result = -3;
      if (v67[2].i64[0])
      {
        if (v67[1].i64[1])
        {
          v27 = *v22 & 0xF000000;
          if (v27 == 0x4000000)
          {
            v28 = (*v23 & 0xF000000) == 0x1000000;
            v58 = a2;
            v29 = v11 - 1;
            if ((v11 - 1) > 6)
            {
LABEL_10:
              v30 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            v28 = 0;
            v58 = a2;
            v29 = v11 - 1;
            if ((v11 - 1) > 6)
            {
              goto LABEL_10;
            }
          }

          v30 = dword_2399886E8[v29];
LABEL_16:
          ComputeState = MPSLibrary::GetComputeState();
          if (!ComputeState)
          {
            return -1;
          }

          v34 = ComputeState;
          v57 = v28;
          objc_msgSend_setComputePipelineState_(v58, v33, ComputeState);
          v37 = objc_msgSend_threadExecutionWidth(v34, v35, v36);
          MPSLibrary::ReleaseComputeState();
          if ((*v22 & 0xF000000) == 0x1000000)
          {
            v39 = v30;
          }

          else
          {
            v39 = v30 + 1;
          }

          v40 = *(*(*(v10 + 280) + 16 * v39) + 64);
          if (v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v37;
          }

          v42 = 1.0;
          v43 = 0.0;
          if (v11 > 3)
          {
            if (v11 <= 5)
            {
              v44 = v58;
              if (v11 != 4)
              {
                v42 = 1.0 / v67[2].u64[0];
LABEL_37:
                v20 = v21;
                v43 = v42;
LABEL_40:
                v46 = vmovn_s64(v67[0]);
                v62[1] = v46.i16[2];
                v62[0] = v46.i16[0];
                v47 = vmovn_s64(*(&v67[1] + 8));
                v62[3] = v47.i16[2];
                v62[2] = v47.i16[0];
                v48 = vmovn_s64(v59);
                v62[5] = v48.i16[2];
                v62[4] = v48.i16[0];
                v63 = v43;
                v64 = v57;
                objc_msgSend_setTexture_atIndex_(v44, v38, a4, 0, v55, v56);
                objc_msgSend_setTexture_atIndex_(v44, v49, a5, 1);
                objc_msgSend_setBytes_length_atIndex_(v44, v50, v62, 20, 0);
                Sampler = MPSDevice::GetSampler();
                objc_msgSend_setSamplerState_atIndex_(v44, v52, Sampler, 0);
                objc_msgSend_setThreadgroupMemoryLength_atIndex_(v44, v53, 16 * v41, 0);
                v65.origin.x = 1;
                v65.origin.y = v20;
                v65.origin.z = 1;
                v66.width = v41;
                *&v66.height = vdupq_n_s64(1uLL);
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v44, v54, &v65, &v66);
                return 0;
              }

              v42 = 1.0 / v67[1].u64[1];
              goto LABEL_39;
            }

            v44 = v58;
            if (v11 == 6)
            {
              goto LABEL_39;
            }

            v45 = v11 == 7;
          }

          else
          {
            if (v11 <= 1)
            {
              v44 = v58;
              if (v11)
              {
                v45 = v11 == 1;
                goto LABEL_35;
              }

LABEL_39:
              v43 = v42;
              goto LABEL_40;
            }

            v44 = v58;
            if (v11 == 2)
            {
              goto LABEL_39;
            }

            v45 = v11 == 3;
          }

LABEL_35:
          if (!v45)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23994A590(uint64_t a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v7 = a4;
  v157 = *(a6 + 16);
  v9 = *(a6 + 40);
  v161 = *(a6 + 56);
  v163 = *(a6 + 32);
  v10 = *(a1 + 232);
  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v167 = *(a1 + *MEMORY[0x277CD7378]);
  v159 = *(a1 + 236);
  v12 = *(a1 + 256);
  v170 = v9;
  if (*a6 == *(a6 + 8))
  {
    if (a4 == a5)
    {
      return -18;
    }

    v20 = a3;
    v21 = *(a1 + *MEMORY[0x277CD7350]);
    v22 = *(a1 + 256);
    v23 = a5;
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v9 = v170;
    a5 = v23;
    v12 = v22;
    v11 = v21;
    v7 = a4;
    a3 = v20;
    if (isEqual)
    {
      return -18;
    }
  }

  v154 = a5;
  v152 = a3;
  v198 = v9;
  v199 = 1;
  v13 = (a6 + 64);
  v14 = *(a6 + 64);
  if (v14 > objc_msgSend_width(v7, a2, a3) + 1)
  {
    return 0;
  }

  v17 = v170.i64[0];
  if (*v13 + v170.i64[0] < -1)
  {
    return 0;
  }

  v18 = *(a6 + 72);
  if (v18 > objc_msgSend_height(v7, v15, v16) + 1 || *(a6 + 72) + v170.i64[1] < -1)
  {
    return 0;
  }

  v150 = **a6 & 0xF000000;
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v25 = MPSLibrary::GetComputeState();
    if (v25)
    {
      v26 = v25;
      v149 = v12;
      v27 = MPSLibrary::GetComputeState();
      if (v27)
      {
        v28 = v27;
        v29 = MPSLibrary::GetComputeState();
        if (v29)
        {
          v146 = v29;
          v147 = MPSLibrary::GetComputeState();
          if (v147)
          {
            v148 = v26;
            v30 = vmovn_s64(v157);
            LOWORD(v31) = v30.i16[0];
            WORD1(v31) = v30.i16[2];
            HIDWORD(v31) = v163;
            v188 = 0;
            v189 = v31;
            v144 = v31;
            v32 = vaddq_s64(v170, v157);
            *v32.i8 = vmovn_s64(v32);
            LOWORD(v33) = v32.i16[0];
            WORD1(v33) = v32.i16[2];
            HIDWORD(v33) = (v161 + v163);
            v155 = v33;
            v190 = v33;
            v32.i64[0] = *(a1 + 208);
            v32.i32[2] = *(a1 + 216);
            LODWORD(v33) = *(a1 + 220);
            v191 = v32;
            v32.i32[0] = *(a1 + 224);
            v192 = v33;
            v193 = v32.i32[0];
            v194 = v159;
            v34 = v11;
            Sampler = MPSDevice::GetSampler();
            MEMORY[0x23EE7BAC0](v187, v152, 0);
            v186 = 0;
            v36 = (v167 >> 1) & 1;
            v168 = v34;
            v186 = sub_23994B79C(**a6, v36, v34);
            CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
            v170.i64[0] = MPSAutoCache::GetTempBuffer(v187, 12, 0);
            TempBuffer = MPSAutoCache::GetTempBuffer(v187, 8, 0);
            v165 = MPSAutoCache::GetTempBuffer(v187, 4, 0);
            v156 = MPSAutoCache::GetTempBuffer(v187, 0x8000, 0);
            v40 = objc_msgSend_pixelFormat(CompressedTempTexture, v38, v39);
            v184 = 0;
            PixelInfo = MPSDevice::GetPixelInfo(v168, v40, MPSImageFeatureChannelFormatNone);
            v174 = *a6;
            p_PixelInfo = &PixelInfo;
            v176 = 0;
            v177 = 0;
            v178 = 0;
            v179 = v17;
            v180 = v170.i64[1];
            v181 = 1;
            v182 = *v13;
            v183 = *(a6 + 80);
            sub_23993BB50(*(a1 + 240), a2, v152, v7, CompressedTempTexture, &v174);
            objc_msgSend_setComputePipelineState_(a2, v41, ComputeState);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(a2, v42, CompressedTempTexture, 0);
            objc_msgSend_setTexture_atIndex_(a2, v43, v154, 1);
            objc_msgSend_setSamplerState_atIndex_(a2, v44, Sampler, 0);
            objc_msgSend_setBytes_length_atIndex_(a2, v45, &v188, 80, 0);
            v48 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v46, v47);
            v51 = objc_msgSend_threadExecutionWidth(ComputeState, v49, v50);
            v54 = objc_msgSend_threadExecutionWidth(ComputeState, v52, v53);
            v55 = (v48 & -v51) / v54;
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v56, 16 * v54 * v55, 0);
            v57 = v150 == 0x1000000;
            v164 = v170.i64[1] - 1;
            v162 = v17 - 1;
            *v173 = ((v54 << v57) - 2 + v17 - 1) / ((v54 << v57) - 2);
            *&v173[8] = ((v55 << v57) - 2 + v170.i64[1] - 1) / ((v55 << v57) - 2);
            *&v173[16] = 1;
            v171 = v54;
            v172.i64[0] = v55;
            v172.i64[1] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v58, v173, &v171);
            v61 = objc_msgSend_maxTotalThreadsPerThreadgroup(v148, v59, v60);
            v64 = objc_msgSend_threadExecutionWidth(v148, v62, v63);
            v67 = v64;
            v68 = v61 & -v64;
            if (v64 > 0x100 || v68 <= 0xFF)
            {
              v69 = v68 / v64;
            }

            else
            {
              v67 = 16;
              v69 = 16;
            }

            v158 = Sampler;
            v160 = v28;
            v70 = objc_msgSend_contents(*(a1 + 248), v65, v66, v144);
            v71 = (2 * v67 + v162) / (2 * v67);
            v72 = (2 * v69 + v164) / (2 * v69);
            *v70 = v71;
            v70[1] = v72;
            v70[2] = 1;
            v73 = MPSLibrary::GetComputeState();
            objc_msgSend_setComputePipelineState_(a2, v74, v73);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setBuffer_offset_atIndex_(a2, v75, *(a1 + 248), 0, 0);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v76, v170.i64[0], 0, 1);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v77, TempBuffer, 0, 2);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v78, v165, 0, 3);
            v81 = objc_msgSend_threadExecutionWidth(v73, v79, v80);
            v83 = vdupq_n_s64(1uLL);
            *v173 = v83;
            if (v81 <= 1)
            {
              v84 = 1;
            }

            else
            {
              v84 = v81;
            }

            *&v173[16] = 1;
            v171 = v84;
            v172 = v83;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v82, v173, &v171);
            v86 = vcvtps_u32_f32(v10 * (v72 * v71));
            if (*(a1 + 228))
            {
              v87 = v86;
            }

            else
            {
              v87 = v72 * v71;
            }

            v196 = v87;
            v188 = v145;
            v189 = v145;
            v190 = v155;
            v197 = 4096;
            if ((*(v168 + 1477) & 0x80) != 0)
            {
              if (v149)
              {
                v97 = 2;
              }

              else
              {
                v97 = 1;
              }

              if (v149)
              {
                v98 = 4096;
              }

              else
              {
                v98 = 0;
              }

              objc_msgSend_encodeStartWhile_offset_comparison_referenceValue_(a2, v85, TempBuffer, 0, v97, v98);
              objc_msgSend_setComputePipelineState_(a2, v99, v160);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v100, TempBuffer, 0, 0);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v101, v165, 0, 1);
              *v173 = vdupq_n_s64(1uLL);
              *&v173[16] = 1;
              v171 = objc_msgSend_threadExecutionWidth(v160, v102, v103);
              v172 = vdupq_n_s64(1uLL);
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v104, v173, &v171);
              objc_msgSend_setComputePipelineState_(a2, v105, v148);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v106, v170.i64[0], 0, 1);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v107, TempBuffer, 0, 2);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v108, v165, 0, 3);
              if (v149)
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v109, v156, 0, 4);
              }

              objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v109, 4 * v67 * v69 + 16, 0);
              objc_msgSend_setTexture_atIndex_(a2, v110, v154, 0);
              objc_msgSend_setTexture_atIndex_(a2, v111, v154, 1);
              objc_msgSend_setSamplerState_atIndex_(a2, v112, v158, 0);
              objc_msgSend_setBytes_length_atIndex_(a2, v113, &v188, 80, 0);
              *v173 = (2 * v67 + v162) / (2 * v67);
              *&v173[8] = (2 * v69 + v164) / (2 * v69);
              *&v173[16] = 1;
              v171 = v67;
              v172.i64[0] = v69;
              v172.i64[1] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v114, v173, &v171);
              objc_msgSend_encodeEndWhile(a2, v115, v116);
              if (v149)
              {
                objc_msgSend_setComputePipelineState_(a2, v117, v146);
                objc_msgSend_setTexture_atIndex_(a2, v118, v154, 0);
                objc_msgSend_setBytes_length_atIndex_(a2, v119, &v188, 80, 0);
                objc_msgSend_setBuffer_offset_atIndex_(a2, v120, v156, 0, 1);
                objc_msgSend_setBuffer_offset_atIndex_(a2, v121, TempBuffer, 0, 2);
                v122 = v197;
                *v173 = v122 / objc_msgSend_threadExecutionWidth(v146, v123, v124);
                *&v173[8] = vdupq_n_s64(1uLL);
                v171 = objc_msgSend_threadExecutionWidth(v146, v125, v126);
                v172 = vdupq_n_s64(1uLL);
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v127, v173, &v171);
              }
            }

            else
            {
              objc_msgSend_setComputePipelineState_(a2, v85, v148);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v88, v170.i64[0], 0, 1);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v89, TempBuffer, 0, 2);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v90, 4 * v67 * v69 + 16, 0);
              objc_msgSend_setTexture_atIndex_(a2, v91, v154, 0);
              objc_msgSend_setTexture_atIndex_(a2, v92, v154, 1);
              objc_msgSend_setSamplerState_atIndex_(a2, v93, v158, 0);
              if (v87)
              {
                for (i = 0; i != v87; ++i)
                {
                  v195 = i;
                  objc_msgSend_setBytes_length_atIndex_(a2, v94, &v188, 80, 0);
                  *v173 = v67;
                  *&v173[8] = v69;
                  *&v173[16] = 1;
                  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(a2, v96, v170.i64[0], 0, v173);
                }
              }
            }

            MPSLibrary::ReleaseComputeState();
            MPSLibrary::ReleaseComputeState();
            MPSLibrary::ReleaseComputeState();
            MPSAutoCache::~MPSAutoCache(v187);
            v130 = objc_msgSend_maxTotalThreadsPerThreadgroup(v147, v128, v129);
            v133 = objc_msgSend_threadExecutionWidth(v147, v131, v132);
            v135 = v133;
            v136 = v130 & -v133;
            if (v133 <= 1 && v136)
            {
              v135 = 1;
              v137 = 1;
            }

            else
            {
              v137 = v136 / v133;
            }

            objc_msgSend_setComputePipelineState_(a2, v134, v147);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(a2, v138, v154, 0);
            objc_msgSend_setTexture_atIndex_(a2, v139, v154, 1);
            objc_msgSend_setSamplerState_atIndex_(a2, v140, v158, 0);
            objc_msgSend_setBytes_length_atIndex_(a2, v141, &v188, 80, 0);
            v174 = (2 * v135 + v162) / (2 * v135);
            p_PixelInfo = (2 * v137 + v164) / (2 * v137);
            v176 = 1;
            v187[0] = v135;
            v187[1] = v137;
            v187[2] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v142, &v174, v187);
            sub_23994B820(v152, *(a1 + 248), v143);
            return 0;
          }
        }
      }
    }
  }

  return -1;
}

uint64_t sub_23994B79C(uint64_t result, int a2, MPSDevice *this)
{
  if (BYTE4(result) == 8)
  {
    v3 = BYTE3(result) & 0xF;
    if (v3 >= 5)
    {
      return MPSDevice::GetPixelInfo(this, MTLPixelFormatRGBA8Unorm, MPSImageFeatureChannelFormatNone);
    }

    else
    {
      return MPSDevice::GetPixelInfo(this, qword_239988768[v3], MPSImageFeatureChannelFormatNone);
    }
  }

  else if (BYTE4(result) < 0xCu || a2)
  {
    v4 = BYTE3(result) & 0xF;
    if (v4 > 4)
    {
      return MPSDevice::GetPixelInfo(this, MTLPixelFormatRGBA16Float, MPSImageFeatureChannelFormatNone);
    }

    else
    {
      return MPSDevice::GetPixelInfo(this, qword_239988790[v4], MPSImageFeatureChannelFormatNone);
    }
  }

  return result;
}

void *sub_23994B820(void *result, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_userDictionary(result, a2, a3);
    v7 = objc_msgSend_objectForKey_(v5, v6, @"_MPSCommandBufferRetainListKey");
    if (!v7)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v5, v10, v9, @"_MPSCommandBufferRetainListKey");

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23993D9B4;
      v12[3] = &unk_278AC37A8;
      v12[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v4, v11, v12);
      v7 = v9;
    }

    return objc_msgSend_addObject_(v7, v8, a2);
  }

  return result;
}

uint64_t sub_23994B904(MPSDevice *a1, const char *a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, float32x4_t *a7)
{
  if (a3 < 2 || a4 < 2 || a3 == 3 && a4 == 3)
  {
    return 0;
  }

  v8 = 0;
  for (i = 0; i < a4; v8 = ++i)
  {
    v10 = 0;
    v11 = &a2[4 * v8 * a3];
    v12 = 1;
    do
    {
      if ((*&v11[4 * v10] & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        return 0;
      }

      v10 = v12++;
    }

    while (v10 < a3);
  }

  v13 = 0;
  v14 = a2 + 4;
  v15 = 4 * a3;
  v16 = a3 - 1;
  while (2)
  {
    v17 = 0;
    v18 = &a2[4 * v13 * a3];
    v19 = &a2[4 * a3];
    while (v18[v17] != 0.0)
    {
LABEL_14:
      v17 = (v17 + 1);
      ++v19;
      if (v17 >= a3)
      {
        goto LABEL_12;
      }
    }

    if (v17 || *v18 != 0.0)
    {
LABEL_22:
      if (*&a2[4 * v17] != 0.0)
      {
        return 0;
      }

      v22 = 0;
      v23 = v19;
      do
      {
        if (a4 - 1 == v22)
        {
          goto LABEL_14;
        }

        v24 = *v23;
        v23 = (v23 + v15);
        ++v22;
      }

      while (v24 == 0.0);
      if (v22 < a4)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v20 = 0;
    while (v16 != v20)
    {
      v21 = *&v14[4 * v20++];
      if (v21 != 0.0)
      {
        if (v20 >= a3)
        {
          break;
        }

        goto LABEL_22;
      }
    }

LABEL_12:
    v13 = (v13 + 1);
    v14 += v15;
    if (v13 < a4)
    {
      continue;
    }

    break;
  }

  if (a5)
  {
    v32 = objc_msgSend_pixelFormat(a5, a2, a3);
    v33 = -2 - (MPSDevice::GetPixelInfo(a1, v32, MPSImageFeatureChannelFormatNone) >> 32);
  }

  else
  {
    v33 = -11;
  }

  v34 = ldexpf(1.0, v33);
  v35 = 0;
  v36 = a4;
  v37 = a3;
  v38 = 1;
  v39 = a7;
  v40 = a6;
  v41 = a2;
  while (1)
  {
    v42 = *&a2[4 * v35];
    if (v42 != 0.0)
    {
      break;
    }

    v35 = v38++;
    if (a4 * a3 <= v35)
    {
      v42 = *&a2[4 * v35];
      break;
    }
  }

  v43 = v35 / a3;
  v44 = v35 / a3 * a3;
  v45 = v35 % a3;
  v46 = &a2[4 * v44];
  if (a6)
  {
    if (a3 < 0x14)
    {
      goto LABEL_38;
    }

    v48 = 0;
    v47 = 0;
    if (v16 != -1 && !HIDWORD(v16))
    {
      if ((a6 - v46) < 0x20)
      {
LABEL_38:
        v47 = 0;
        v48 = 0;
      }

      else
      {
        v62 = 0;
        v47 = a3 & 0x1FFFFFFF8;
        v48 = a3 & 0xFFFFFFF8;
        v63 = (a6 + 16);
        v64 = a3 & 0x1FFFFFFF8;
        do
        {
          v65 = &v46[4 * v62];
          v66 = *(v65 + 1);
          *(v63 - 1) = *v65;
          *v63 = v66;
          v62 += 8;
          v63 += 2;
          v64 -= 8;
        }

        while (v64);
        v37 = a3;
        v39 = a7;
        v40 = a6;
        v36 = a4;
        v41 = a2;
        if (v47 == a3)
        {
          goto LABEL_41;
        }
      }
    }

    v49 = v48 + 1;
    do
    {
      *(v40 + 4 * v47) = *&v46[4 * v47];
      v47 = v49++;
    }

    while (v47 < v37);
  }

LABEL_41:
  v50 = 0;
  v51 = 0;
  while (2)
  {
    if (v51 == v43)
    {
      v52 = 1.0;
      if (!v39)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v53 = &v41[4 * v50 * v37];
    v54 = *&v53[4 * v45];
    if (v54 == 0.0)
    {
      v52 = 0.0;
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_43:
      v39->f32[v50] = v52;
      goto LABEL_44;
    }

    v55 = 0;
    v56 = 1;
    v52 = v54 / v42;
    do
    {
      if (v56 - v45 != 1)
      {
        v57 = *&v46[4 * v55];
        v58 = *&v53[4 * v55];
        if (v57 == 0.0)
        {
          if (v58 != 0.0)
          {
            return 0;
          }
        }

        else if (fabsf(((v58 / v57) - v52) / v52) > v34)
        {
          return 0;
        }
      }

      v55 = v56++;
    }

    while (v55 < v37);
    if (v39)
    {
      goto LABEL_43;
    }

LABEL_44:
    v50 = ++v51;
    if (v51 < v36)
    {
      continue;
    }

    break;
  }

  v25 = 1;
  if (v40 && v39)
  {
    if (v37 >= 1)
    {
      v59 = v37 & 0x7FFFFFFF;
      if (v59 <= 7)
      {
        v60 = 0;
        v61 = 0;
        goto LABEL_73;
      }

      v60 = v59 - (a3 & 7);
      v67 = a6 + 16;
      v61 = 0;
      v68 = v60;
      do
      {
        *v61.i32 = (((((((*v61.i32 + COERCE_FLOAT(*(v67 - 16))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*(v67 - 8))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*v67)) + COERCE_FLOAT(HIDWORD(*v67))) + COERCE_FLOAT(*(v67 + 8))) + COERCE_FLOAT(HIDWORD(*v67));
        v67 += 32;
        v68 -= 8;
      }

      while (v68);
      if ((a3 & 7) != 0)
      {
LABEL_73:
        v69 = v59 - v60;
        v70 = (a6 + 4 * v60);
        do
        {
          v71 = *v70++;
          *v61.i32 = *v61.i32 + v71;
          --v69;
        }

        while (v69);
      }

      LODWORD(v36) = a4;
      if (*v61.i32 != 0.0)
      {
        if (v59 <= 7)
        {
          v72 = 0;
          goto LABEL_84;
        }

        v72 = v59 - (a3 & 7);
        v76 = vdupq_lane_s32(v61, 0);
        v77 = (a6 + 16);
        v78 = v72;
        do
        {
          v79 = vdivq_f32(*v77, v76);
          v77[-1] = vdivq_f32(v77[-1], v76);
          *v77 = v79;
          v77 += 2;
          v78 -= 8;
        }

        while (v78);
        if ((a3 & 7) != 0)
        {
LABEL_84:
          v80 = v59 - v72;
          v81 = (a6 + 4 * v72);
          do
          {
            *v81 = *v81 / *v61.i32;
            ++v81;
            --v80;
          }

          while (v80);
        }

        if (a4 >= 1)
        {
          v82 = a4 & 0x7FFFFFFF;
          if (v82 <= 7)
          {
            v83 = 0;
            goto LABEL_100;
          }

          v83 = v82 - (a4 & 7);
          v90 = a7 + 1;
          v91 = v83;
          do
          {
            v92 = vmulq_n_f32(*v90, *v61.i32);
            v90[-1] = vmulq_n_f32(v90[-1], *v61.i32);
            *v90 = v92;
            v90 += 2;
            v91 -= 8;
          }

          while (v91);
          if ((a4 & 7) != 0)
          {
LABEL_100:
            v93 = v82 - v83;
            v94 = &a7->f32[v83];
            v25 = 1;
            do
            {
              *v94 = *v61.i32 * *v94;
              ++v94;
              --v93;
            }

            while (v93);
            return v25;
          }
        }

        return 1;
      }
    }

    if (v36 < 1)
    {
      return 1;
    }

    v73 = a4 & 0x7FFFFFFF;
    if (v73 <= 7)
    {
      v74 = 0;
      v75 = 0;
      goto LABEL_92;
    }

    v74 = v73 - (a4 & 7);
    v84 = a7 + 1;
    v75 = 0;
    v85 = v74;
    do
    {
      *v75.i32 = (((((((*v75.i32 + COERCE_FLOAT(*&v84[-1])) + COERCE_FLOAT(HIDWORD(v84[-1].i64[0]))) + COERCE_FLOAT(v84[-1].i64[1])) + COERCE_FLOAT(HIDWORD(*&v84[-1]))) + COERCE_FLOAT(*v84)) + COERCE_FLOAT(HIDWORD(v84->i64[0]))) + COERCE_FLOAT(v84->i64[1])) + COERCE_FLOAT(HIDWORD(*v84));
      v84 += 2;
      v85 -= 8;
    }

    while (v85);
    if ((a4 & 7) != 0)
    {
LABEL_92:
      v86 = v73 - v74;
      v87 = &a7->f32[v74];
      do
      {
        v88 = *v87++;
        *v75.i32 = *v75.i32 + v88;
        --v86;
      }

      while (v86);
    }

    if (*v75.i32 == 0.0)
    {
      return 1;
    }

    if (v73 <= 7)
    {
      v89 = 0;
      goto LABEL_106;
    }

    v89 = v73 - (a4 & 7);
    v95 = vdupq_lane_s32(v75, 0);
    v96 = a7 + 1;
    v97 = v89;
    do
    {
      v98 = vdivq_f32(*v96, v95);
      v96[-1] = vdivq_f32(v96[-1], v95);
      *v96 = v98;
      v96 += 2;
      v97 -= 8;
    }

    while (v97);
    if ((a4 & 7) != 0)
    {
LABEL_106:
      v99 = v73 - v89;
      v100 = &a7->f32[v89];
      do
      {
        *v100 = *v100 / *v75.i32;
        ++v100;
        --v99;
      }

      while (v99);
    }

    if (a3 < 1)
    {
      return 1;
    }

    v101 = a3 & 0x7FFFFFFF;
    if (v101 > 7)
    {
      v102 = v101 - (a3 & 7);
      v103 = (a6 + 16);
      v104 = v102;
      do
      {
        v105 = vmulq_n_f32(*v103, *v75.i32);
        v103[-1] = vmulq_n_f32(v103[-1], *v75.i32);
        *v103 = v105;
        v103 += 2;
        v104 -= 8;
      }

      while (v104);
      if ((a3 & 7) == 0)
      {
        return 1;
      }
    }

    else
    {
      v102 = 0;
    }

    v106 = v101 - v102;
    v107 = (a6 + 4 * v102);
    v25 = 1;
    do
    {
      *v107 = *v75.i32 * *v107;
      ++v107;
      --v106;
    }

    while (v106);
  }

  return v25;
}

unint64_t sub_23994C3F4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = MEMORY[0x277CD7350];
  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = objc_msgSend_pixelFormat(a3, a2, a3);
  result = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v15 = result >> 10;
  if ((~result & 0xA00000000000) == 0 && a2 != a3 && v15 != 0)
  {
    v18 = result;
    result = objc_msgSend_isEqual_(a2, v14, a3);
    if ((result & 1) == 0)
    {
      v19 = *(a1 + 208);
      v20 = *(a1 + *v10);
      v21 = 24;
      if (v20)
      {
        if (*(v20 + 1472) >= 8)
        {
          v21 = 24;
        }

        else
        {
          v21 = 9;
        }
      }

      v22 = v19 >> 1;
      if (v19 <= 9)
      {
        v23 = v22;
      }

      else
      {
        v23 = 5;
      }

      if (v21 <= v22)
      {
        v23 = 6;
      }

      v24 = *(*(*(*(a1 + *MEMORY[0x277CD7370]) + 280) + 16 * v23 + 112 * byte_2399887B8[(v18 >> 24) & 0xF]) + 64);
      if (v24)
      {
        v25 = __clz(v15) + v24 - 63;
        v26 = v25 & ~(v25 >> 63);
        v27 = (v26 + 1) >> 1;
        v28 = 1 << (v26 - v27);
        v29 = 1 << v27;
        if ((1 << v27) >= *(a4 + 40))
        {
          v29 = *(a4 + 40);
        }

        v30 = v25 <= v27;
        v31 = 2;
        if (!v30)
        {
          v31 = v28;
        }

        if (v31 >= *(a4 + 48))
        {
          v31 = *(a4 + 48);
        }

        *a5 = v29;
        a5[1] = v31;
      }
    }
  }

  return result;
}

uint64_t sub_23994C584(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6)
{
  v8 = *(a1 + 216);
  v9 = *(a1 + 208);
  v10 = *(a1 + 224);
  v11 = *(a1 + 228);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  if (*(a1 + *MEMORY[0x277CD7378]))
  {
    v14 = *(a1 + 208);
  }

  else
  {
    if ((v8 & v9 & 1) == 0)
    {
      v88 = a2;
      v74 = a3;
      v75 = MTLReportFailureTypeEnabled();
      a3 = v74;
      a2 = v88;
      if (v75)
      {
        v79 = v8;
        v83 = v9;
        MTLReportFailure();
        a3 = v74;
        a2 = v88;
      }
    }

    v14 = v9 | 1;
    v8 |= 1uLL;
  }

  result = 0;
  v16 = a6->i64[1];
  v93 = a6->i64[0];
  v17 = a6[3];
  *v114 = a6[2];
  *&v114[16] = v17;
  v113 = a6[1];
  if (!v17.i64[0] || !*&v114[8])
  {
    return result;
  }

  v90 = v16;
  v91 = v12;
  v89 = a5;
  v87 = a2;
  v18 = *v16;
  v19 = v10;
  if (((v18 >> 34) & 0x3F) <= 2)
  {
    if (((*v93 >> 34) & 0x3FuLL) >= 3)
    {
      v19 = v10;
    }

    else
    {
      v19 = v11;
    }
  }

  v20 = v14;
  if (v14 == v8)
  {
    v21 = v19 + 112;
    v22 = (v18 >> 24) & 0xF;
    v23 = 24;
    if (v12)
    {
      v24 = a3;
      v23 = *(v12 + 1472) >= 8 ? 24 : 9;
    }

    else
    {
      v24 = a3;
    }

    v25 = byte_2399887B8[v22];
    v26 = v14 <= 9u ? v14 >> 1 : 5;
    v27 = v23 <= v14 >> 1 ? 6 : v26;
    v28 = objc_msgSend_UTF8String(**(*(v13 + 280) + 16 * (v27 + v21 - v25 + 8 * v25)), a2, a3, v79, v83);
    v29 = strstr(v28, "SinglePass");
    a3 = v24;
    if (v29)
    {
      if (a4 != v89 && (objc_msgSend_isEqual_(a4, a2, v89) & 1) == 0)
      {
        ComputeState = MPSLibrary::GetComputeState();
        v31 = vmovn_s64(v113);
        *&v110 = vcvt_f32_f64(vcvtq_f64_s64(a6[4]));
        WORD5(v110) = v31.i16[2];
        WORD4(v110) = v31.i16[0];
        HIWORD(v110) = *&v114[16];
        WORD6(v110) = *&v114[8];
        objc_msgSend_setComputePipelineState_(v87, v32, ComputeState);
        objc_msgSend_setTexture_atIndex_(v87, v33, a4, 0);
        objc_msgSend_setTexture_atIndex_(v87, v34, v89, 1);
        objc_msgSend_setBytes_length_atIndex_(v87, v35, &v110, 40, 0);
        MPSLibrary::ReleaseComputeState();
        v38 = (v20 >> 1) - 1;
        if (v38 < 4)
        {
          v39 = qword_239988818[v38];
          v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v36, v37) >> 6;
          if (v41 >= 8)
          {
            v41 = 8;
          }

          *v105 = (*&v114[8] + 63) >> 6;
          *&v105[8] = (*&v114[16] + v41 * v39 - 1) / (v41 * v39);
          *&v105[16] = 1;
          *v108 = 64;
          *&v108[8] = v41;
          *&v108[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v87, v40, v105, v108);
          return 0;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v73 = objc_opt_class();
          NSStringFromClass(v73);
          MTLReportFailure();
        }

        return -19;
      }

      return -18;
    }
  }

  if (v8 != 1)
  {
    v42 = a3;
    v98 = objc_msgSend_width(a4, a2, a3);
    v99 = objc_msgSend_height(a4, v43, v44);
    v100 = 1;
    v84 = &v103;
    MPSSeparatePassDimensions();
    MEMORY[0x23EE7BAC0](v97, v42, v89);
    *v105 = vextq_s8(v101, v101, 8uLL);
    *&v105[16] = 1;
    v45 = v90;
    if ((*(v93 + 5) & 0x20) != 0)
    {
      v46 = MPSGetLinearTextureSize2D();
      v45 = v93;
      if (MPSGetLinearTextureSize2D() >= v46)
      {
        v45 = v90;
      }
    }

    TempTexture = MPSAutoCache::GetTempTexture();
    if (((*v90 >> 34) & 0x3FuLL) > 2)
    {
      v47 = 4;
    }

    else if (((*v93 >> 34) & 0x3FuLL) < 3 && v9 > 0x2E)
    {
      v47 = 2;
    }

    else
    {
      v47 = 4;
    }

    v48 = MPSLibrary::GetComputeState();
    if (!v48)
    {
      goto LABEL_56;
    }

    v95 = v106;
    v96 = v107;
    memset(v105, 0, 24);
    *&v105[24] = v101;
    *&v105[40] = v102;
    sub_23994EE64(v108, v20, &v95, v105, v91, v48, v45, v47, 1);
    v110 = *v108;
    v111 = *&v108[16];
    v112 = v109;
    if (!*&v108[16] && MTLReportFailureTypeEnabled())
    {
      v76 = objc_opt_class();
      v80 = NSStringFromClass(v76);
      v84 = v20;
      MTLReportFailure();
    }

    objc_msgSend_setComputePipelineState_(v87, v49, v48, v80, v84);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(v87, v50, a4, 0);
    objc_msgSend_setTexture_atIndex_(v87, v51, TempTexture, 1);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v87, v52, ((DWORD2(v111) * v112) + 15) & 0x1FFFFFFF0, 0);
    objc_msgSend_setBytes_length_atIndex_(v87, v53, &v110, 40, 0);
    *v105 = v101.i64[1];
    *&v105[8] = vdupq_n_s64(1uLL);
    *v108 = HIDWORD(v111);
    *&v108[8] = *&v105[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v87, v54, v105, v108);
    if (((*v90 >> 34) & 0x3FuLL) > 2)
    {
      v55 = 4;
    }

    else
    {
      v55 = ((*v93 >> 34) & 0x3FuLL) < 3 && v9 > 0x2E ? 2 : 4;
    }

    v57 = MPSLibrary::GetComputeState();
    if (v57)
    {
      *v105 = v113;
      v96 = v104;
      v94 = *&v114[8];
      v95 = vextq_s8(v103, v103, 8uLL);
      *&v105[24] = vextq_s8(v94, v94, 8uLL);
      *&v105[16] = *v114;
      *&v105[40] = *&v114[24];
      sub_23994EE64(v108, v8, &v95, v105, v91, v57, v90, v55, 1);
      v110 = *v108;
      v111 = *&v108[16];
      v112 = v109;
      if (!*&v108[16] && MTLReportFailureTypeEnabled())
      {
        v77 = objc_opt_class();
        v81 = NSStringFromClass(v77);
        v85 = v20;
        MTLReportFailure();
      }

      objc_msgSend_setComputePipelineState_(v87, v58, v57, v81, v85);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(v87, v59, TempTexture, 0);
      objc_msgSend_setTexture_atIndex_(v87, v60, v89, 1);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v87, v61, ((DWORD2(v111) * v112) + 15) & 0x1FFFFFFF0, 0);
      objc_msgSend_setBytes_length_atIndex_(v87, v62, &v110, 40, 0);
      *v105 = v94.i64[0];
      *&v105[8] = vdupq_n_s64(1uLL);
      *v108 = HIDWORD(v111);
      *&v108[8] = *&v105[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v87, v63, v105, v108);
      v64 = 0;
    }

    else
    {
LABEL_56:
      v64 = -1;
    }

    MPSAutoCache::~MPSAutoCache(v97);
    return v64;
  }

  if (a4 == v89 || (objc_msgSend_isEqual_(a4, a2, v89) & 1) != 0)
  {
    return -18;
  }

  if (((*v90 >> 34) & 0x3FuLL) > 2)
  {
    v56 = 4;
  }

  else if (((*v93 >> 34) & 0x3FuLL) < 3 && v9 > 0x2E)
  {
    v56 = 2;
  }

  else
  {
    v56 = 4;
  }

  v65 = MPSLibrary::GetComputeState();
  if (v65)
  {
    v67 = v65;
    objc_msgSend_setComputePipelineState_(v87, v66, v65);
    v106 = a6[4];
    v107 = a6[5].i64[0];
    *v105 = v113;
    *&v105[16] = *v114;
    *&v105[32] = *&v114[16];
    sub_23994EE64(v108, v20, &v106, v105, v12, v67, v90, v56, 0);
    v110 = *v108;
    v111 = *&v108[16];
    v112 = v109;
    MPSLibrary::ReleaseComputeState();
    if (!v111 && MTLReportFailureTypeEnabled())
    {
      v78 = objc_opt_class();
      v82 = NSStringFromClass(v78);
      v83 = v20;
      MTLReportFailure();
    }

    objc_msgSend_setTexture_atIndex_(v87, v68, a4, 0, v82, v83);
    objc_msgSend_setTexture_atIndex_(v87, v69, v89, 1);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v87, v70, ((DWORD2(v111) * v112) + 15) & 0x1FFFFFFF0, 0);
    objc_msgSend_setBytes_length_atIndex_(v87, v71, &v110, 40, 0);
    *v105 = *&v114[16];
    *&v105[8] = vdupq_n_s64(1uLL);
    *v108 = HIDWORD(v111);
    *&v108[8] = *&v105[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v87, v72, v105, v108);
    return 0;
  }

  return -1;
}

void sub_23994D13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_23994D1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23994DF48(uint64_t a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v8 = *(a1 + *MEMORY[0x277CD7350]);
  v9 = *(a1 + 280);
  v10 = *(a1 + 272);
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + 266);
  v13 = *(a1 + 264);
  v14 = *(a1 + 224);
  v90 = *(a1 + 232);
  v15 = *(a1 + 256);
  v16 = *(a1 + 260);
  v17 = *(a1 + 216);
  if ((v11 & 1) == 0)
  {
    v18 = a4;
    if ((v9 & v10 & 1) == 0)
    {
      v89 = a3;
      v80 = *(a1 + 216);
      v75 = *(a1 + 264);
      v82 = *(a1 + 260);
      v84 = *(a1 + 256);
      v76 = MTLReportFailureTypeEnabled();
      v16 = v82;
      v15 = v84;
      v13 = v75;
      v17 = v80;
      a3 = v89;
      if (v76)
      {
        v77 = v9;
        v78 = v10;
        MTLReportFailure();
        v16 = v82;
        v15 = v84;
        v13 = v75;
        v17 = v80;
        a3 = v89;
      }
    }

    v9 |= 1uLL;
    v10 |= 1uLL;
    a4 = v18;
  }

  if (*(a6 + 48) && *(a6 + 40))
  {
    v88 = a3;
    v19 = *a6;
    if (v9 == v12 && v10 == v13)
    {
      v99 = *(a6 + 64);
      *&v100 = *(a6 + 80);
      v20 = a4;
      objc_msgSend_setOffset_(v14, a2, &v99);
      v21 = *(a6 + 32);
      v99 = *(a6 + 16);
      v100 = v21;
      v101 = *(a6 + 48);
      objc_msgSend_setClipRect_(v14, v22, &v99);
      objc_msgSend_setOptions_(v14, v23, v11);
      return sub_23993BD30(v14, a2, v88, v20, a5, a6);
    }

    if (a4 == a5)
    {
      return -18;
    }

    v85 = v13;
    v86 = *(a6 + 8);
    v81 = v16;
    v83 = v15;
    v79 = v17;
    v87 = a4;
    if (objc_msgSend_isEqual_(a4, a2, a5))
    {
      return -18;
    }

    MEMORY[0x23EE7BAC0](v105, v88, a5);
    if ((*v19 & 0x200000000000) != 0)
    {
      v26 = v19;
    }

    else
    {
      v26 = v86;
    }

    v27 = v26;
    v28 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v25, *v26 & 0x3FFLL, *(a6 + 40), *(a6 + 48), 0, v77, v78);
    v29 = (*(*v8 + 32))(v8);
    objc_msgSend_setStorageMode_(v28, v30, v29);
    objc_msgSend_setUsage_(v28, v31, 3);
    TempTexture = MPSAutoCache::GetTempTexture();
    v99 = *(a6 + 64);
    *&v100 = *(a6 + 80);
    objc_msgSend_setOffset_(v14, v33, &v99);
    v34 = *(MEMORY[0x277CD7200] + 16);
    v99 = *MEMORY[0x277CD7200];
    v100 = v34;
    v101 = *(MEMORY[0x277CD7200] + 32);
    objc_msgSend_setClipRect_(v14, v35, &v99);
    objc_msgSend_setOptions_(v14, v36, v11);
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    *&v99 = *a6;
    *(&v99 + 1) = v27;
    *v95 = objc_msgSend_width(TempTexture, v37, v38);
    *&v95[8] = objc_msgSend_height(TempTexture, v39, v40);
    *&v95[16] = 1;
    if (v14)
    {
      objc_msgSend_clipRect(v14, v41, v42);
    }

    else
    {
      memset(&v97, 0, sizeof(v97));
    }

    MPSGetEffectiveClipRegion(&v100, v95, &v97);
    v103 = *(a6 + 64);
    v104 = *(a6 + 80);
    v43 = sub_23993BD30(v14, a2, v88, v87, TempTexture, &v99);
    if (v43)
    {
      goto LABEL_29;
    }

    v98 = 0;
    v97.origin.x = vmovn_s64(*(a6 + 64));
    v97.origin.y = v97.origin.x;
    v44 = vmovn_s64(*(a6 + 16));
    WORD1(v97.origin.z) = v44.i16[2];
    LOWORD(v97.origin.z) = v44.i16[0];
    v45 = vmovn_s64(*(a6 + 40));
    HIWORD(v97.origin.z) = v45.i16[2];
    WORD2(v97.origin.z) = v45.i16[0];
    WORD1(v97.size.width) = v9;
    LOWORD(v97.size.width) = v10;
    v46 = v87;
    WORD2(v97.size.width) = byte_239988810[(*v86 >> 24) & 0xFLL];
    HIWORD(v97.size.width) = 1;
    LOWORD(v97.size.height) = (v9 - v12) >> 1;
    WORD1(v97.size.height) = v9 - LOWORD(v97.size.height);
    WORD2(v97.size.height) = (v10 - v85) >> 1;
    HIWORD(v97.size.height) = v10 - WORD2(v97.size.height);
    v97.size.depth = __PAIR64__(v81, v83);
    LOWORD(v98) = v85;
    WORD1(v98) = v12;
    if (v90)
    {
      v46 = MPSAutoCache::GetTempTexture();
      *v95 = *(a6 + 64);
      *&v95[16] = *(a6 + 80);
      objc_msgSend_setOffset_(v90, v47, v95);
      v48 = *(MEMORY[0x277CD7200] + 16);
      *v95 = *MEMORY[0x277CD7200];
      *&v95[16] = v48;
      v96 = *(MEMORY[0x277CD7200] + 32);
      objc_msgSend_setClipRect_(v90, v49, v95);
      objc_msgSend_setOptions_(v90, v50, v11);
      *&v99 = *a6;
      *(&v99 + 1) = v27;
      v103 = *(a6 + 64);
      *&v104 = *(a6 + 80);
      v94.width = objc_msgSend_width(v46, v51, v52);
      v94.height = objc_msgSend_height(v46, v53, v54);
      v94.depth = 1;
      objc_msgSend_clipRect(v90, v55, v56);
      MPSGetEffectiveClipRegion(v95, &v94, &v93);
      v100 = *v95;
      v101 = *&v95[16];
      v102 = v96;
      v43 = sub_23993BD30(v90, a2, v88, v87, v46, &v99);
      if (v43)
      {
LABEL_29:
        v74 = v43;
        MPSAutoCache::~MPSAutoCache(v105);
        return v74;
      }

      v97.origin.y = 0;
    }

    ComputeState = MPSLibrary::GetComputeState();
    v60 = ComputeState;
    if (ComputeState)
    {
      v61 = objc_msgSend_threadExecutionWidth(ComputeState, v58, v59);
      objc_msgSend_setComputePipelineState_(a2, v62, v60);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(a2, v63, v87, 0);
      objc_msgSend_setTexture_atIndex_(a2, v64, TempTexture, 1);
      objc_msgSend_setTexture_atIndex_(a2, v65, v46, 2);
      objc_msgSend_setTexture_atIndex_(a2, v66, a5, 3);
      if ((objc_msgSend_retainedReferences(v88, v67, v68) & 1) == 0)
      {
        v70 = v79;
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = sub_23994F090;
        v92[3] = &unk_278AC37A8;
        v92[4] = v79;
        objc_msgSend_addCompletedHandler_(v88, v71, v92);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v69, v79, 0, 0);
      objc_msgSend_setBytes_length_atIndex_(a2, v72, &v97, 56, 1);
      *v95 = (*(a6 + 48) + 1) >> 1;
      *&v95[8] = vdupq_n_s64(1uLL);
      v93.origin.x = v61;
      *&v93.origin.y = *&v95[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v73, v95, &v93);
    }

    v43 = 0;
    goto LABEL_29;
  }

  return 0;
}

unint64_t sub_23994EE64(float32x2_t *a1, const char *a2, int64x2_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int a9)
{
  v14 = a2;
  v16 = *(a5 + 1472);
  if (v16 < 7 || (v16 != 7 ? (v17 = 24) : (v17 = 9), a2 >> 1 == 6 ? (v18 = a2 >= 0xA) : (v18 = 1), v18 && v17 > a2 >> 1))
  {
    v19 = objc_msgSend_threadExecutionWidth(a6, a2, a3);
    if ((*(a5 + 1472) & 0xFFFFFFFE) == 0x18)
    {
      v22 = 8;
    }

    else
    {
      v22 = v19;
    }

    v23 = objc_msgSend_maxTotalThreadsPerThreadgroup(a6, v20, v21);
    if (v23 / v22 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v23 / v22;
    }

    v27 = objc_msgSend_staticThreadgroupMemoryLength(a6, v24, v25);
    v30 = objc_msgSend_maxComputeThreadgroupMemory(*(a5 + 16), v28, v29);
    v31 = 0x1000000;
    if (v30 < 0x1000000)
    {
      v31 = v30;
    }

    v32 = v31 - v27;
    if ((*(a7 + 3) & 0xE) != 0)
    {
      v33 = *(a7 + 3) & 0xF;
    }

    else
    {
      v33 = 1;
    }

    v34 = v33 * a8;
    v35 = v32 / (v34 * v26);
    v36 = v14 - 1;
    v37 = -v22;
    v38 = (v35 - v36) & -v22;
    while (1)
    {
      v39 = 2 * v35;
      v40 = (2 * v35 - v36) & v37;
      result = (v38 + v36) * (v26 >> 1) * v40;
      v42 = v38 * v26 * (v40 + v36) < result || 4 * v22 > v38;
      if (!v42)
      {
        break;
      }

      v38 = (2 * v35 - v36) & v37;
      v35 *= 2;
      v42 = v26 > 3;
      v26 >>= 1;
      if (!v42)
      {
        LODWORD(v38) = v40;
        LODWORD(v35) = v39;
        break;
      }
    }

    v43 = a3;
  }

  else
  {
    result = objc_msgSend_threadExecutionWidth(a6, a2, a3);
    v43 = a3;
    if ((*(a5 + 1472) & 0xFFFFFFFE) == 0x18)
    {
      v22 = 8;
    }

    else
    {
      v22 = result;
    }

    if ((*(a7 + 3) & 0xE) != 0)
    {
      v45 = *(a7 + 3) & 0xF;
    }

    else
    {
      v45 = 1;
    }

    v34 = v45 * a8;
    v35 = 0x1000 / v34;
    v38 = (0x1000 / v34 - v14 + 1) & -v22;
  }

  a1[4] = 0;
  *a1 = vcvt_f32_f64(vcvtq_f64_s64(*v43));
  v46 = vmovn_s64(*a4);
  a1[1].i16[1] = v46.i16[2];
  v47 = v46.i16[0];
  v48 = vmovn_s64(*(a4 + 24));
  a1[1].i16[0] = v47;
  a1[1].i16[3] = v48.i16[2];
  a1[1].i16[2] = v48.i16[0];
  a1[2].i32[0] = v38;
  a1[2].i16[2] = v14;
  a1[2].i16[3] = a9 != 0;
  a1[3].i32[0] = v35;
  a1[3].i32[1] = v22;
  a1[4].i32[0] = v34;
  return result;
}

uint64_t sub_23994F288(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v71 = *(a6 + 16);
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a6 + 32);
  v72 = *(a6 + 40);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v70 = *(a6 + 56);
  v14 = *(a6 + 8);
  v15 = *v14;
  if (*a6 == v14 && (a4 == a5 || (objc_msgSend_isEqual_(a4, a2, a5) & 1) != 0))
  {
    return -18;
  }

  if ((v11 & 1) == 0)
  {
    if ((~v15 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v67 = a5;
      MTLReportFailure();
    }

    v16 = *(*(a6 + 8) + 3) & 0xF;
    if ((*(*a6 + 3) & 0xF) != v16 && v16 != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v17 = *(a6 + 64);
  if (v17 > objc_msgSend_width(a4, a2, a3, v67) + 1)
  {
    return 0;
  }

  if (*(a6 + 64) + v72.i64[0] < -1)
  {
    return 0;
  }

  v20 = *(a6 + 72);
  if (v20 > objc_msgSend_height(a4, v18, v19) + 1 || *(a6 + 72) + v72.i64[1] < -1)
  {
    return 0;
  }

  v21 = *a6;
  v22 = MPSIsTextureTwiddled();
  if ((**(a6 + 8) & 0xF000000) == 0x1000000)
  {
    v23 = 13;
    if ((**a6 & 0xF000000) == 0x1000000)
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  if ((*v21 & 0xE000000) != 0)
  {
    v25 = BYTE3(*v21) & 0xF;
  }

  else
  {
    v25 = 1;
  }

  if ((BYTE3(*v21) & 0xF) == 3)
  {
    v26 = 4;
  }

  else
  {
    v26 = v25;
  }

  if (v26 == 1)
  {
    v27 = 0;
  }

  else
  {
    v28 = 3 * (v26 >> 1);
    v29 = v26 == 2;
    v30 = 1;
    if (!v29)
    {
      v30 = 2;
    }

    v31 = (*v21 >> 10) >> v30;
    v32 = 63 - __clz(v31);
    if (v22)
    {
      v33 = 3;
    }

    else
    {
      v33 = -3;
    }

    v34 = v23 + v33 + v28;
    if (v31)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0;
    }

    v27 = v34 + v35;
    if (v34 + v35 == -1)
    {
      return -19;
    }
  }

  v69 = *(*(*(v13 + 280) + 16 * v27) + 64);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v38 = ComputeState;
    v68 = a1 + 208;
    objc_msgSend_setComputePipelineState_(a2, v37, ComputeState);
    MPSLibrary::ReleaseComputeState();
    v41 = objc_msgSend_threadExecutionWidth(v38, v39, v40);
    v44 = objc_msgSend_maxTotalThreadsPerThreadgroup(v38, v42, v43);
    v45 = WORD2(v69) * WORD1(v69);
    v46 = v44 & -v41;
    if (v46 <= v41)
    {
      v46 = v41;
    }

    v47 = v46 / v41;
    if (v45 > v44)
    {
      v48 = v47;
    }

    else
    {
      v48 = WORD2(v69);
    }

    if (v45 <= v44)
    {
      v41 = WORD1(v69);
    }

    v49 = v41 * v69;
    v50 = v48 * BYTE1(v69);
    if (v72.i64[0] % v49)
    {
      v51 = v72.i64[0] + v49 - 1;
    }

    else
    {
      v51 = v72.i64[0];
    }

    v52 = v51 / v49;
    if (v72.i64[1] % v50)
    {
      v53 = v72.i64[1] + v50 - 1;
    }

    else
    {
      v53 = v72.u64[1];
    }

    v54 = vmovn_s64(*(a6 + 64));
    LOWORD(v55) = v54.i16[0];
    WORD1(v55) = v54.i16[2];
    HIDWORD(v55) = *(a6 + 80);
    v56 = vmovn_s64(v71);
    LOWORD(v57) = v56.i16[0];
    WORD1(v57) = v56.i16[2];
    HIDWORD(v58) = 0;
    HIDWORD(v57) = v12;
    v75[0] = v55;
    v75[1] = v57;
    v59 = vmovn_s64(vaddq_s64(v72, v71));
    v56.i16[0] = v59.i16[0];
    v56.i16[1] = v59.i16[2];
    v56.i32[1] = (v70 + v12);
    v75[2] = v56;
    *&v58 = *v68;
    DWORD2(v58) = *(v68 + 8);
    v76 = v58;
    v60 = v53 / v50;
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setTexture_atIndex_(a2, v62, a4, 0);
    objc_msgSend_setTexture_atIndex_(a2, v63, a5, 1);
    objc_msgSend_setBytes_length_atIndex_(a2, v64, v75, 48, 0);
    objc_msgSend_setSamplerState_atIndex_(a2, v65, Sampler, 0);
    v74[0] = v52;
    v74[1] = v60;
    v74[2] = 1;
    v73[0] = v41;
    v73[1] = v48;
    v73[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v66, v74, v73);
    return 0;
  }

  return -1;
}

uint64_t sub_239950048(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 216);
  v12 = *(a1 + 208);
  v140 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + 160);
  v14 = *(a1 + 224);
  v138 = *(a1 + *MEMORY[0x277CD7378]);
  if ((v138 & 1) == 0)
  {
    if ((v11 & v12 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v132 = v11;
      v133 = v12;
      MTLReportFailure();
    }

    v11 |= 1uLL;
    v12 |= 1uLL;
  }

  v15 = *(a6 + 32);
  v163 = *(a6 + 16);
  *v164 = v15;
  *&v164[16] = *(a6 + 48);
  v139 = *(a6 + 8);
  v16 = *(v140 + 185);
  if (!v14)
  {
    v23 = *(v140 + 369);
    if ((v23 & 0x400) == 0 && *(v140 + 368) < 26)
    {
      v136 = 0;
      if (v11 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    if ((*v139 & 0xF000000) == 0x1000000)
    {
      if ((v23 & 0x40) == 0)
      {
        v136 = 0;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if (MPSIsTextureTwiddled() && (*(v140 + 1477) & 4) != 0 && objc_msgSend_height(a5, v74, v75) >= 6 * v16 * BYTE2(v16))
      {
        HIDWORD(v136) = 0;
        if (objc_msgSend_width(a5, v74, v75) < v16 << 9)
        {
          goto LABEL_115;
        }
      }

      else
      {
        HIDWORD(v136) = 1;
        if (objc_msgSend_width(a5, v74, v75, v132, v133) < v16 << 9)
        {
          goto LABEL_115;
        }
      }

      if ((*(v140 + 1477) & 4) != 0 && !MPSIsTextureTwiddled())
      {
        LODWORD(v136) = 0;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if ((v23 & 0x40) == 0)
      {
        v136 = 0;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if ((!MPSIsTextureTwiddled() || (*v139 & 0xFC00) == 0x4000 || objc_msgSend_height(a5, v76, v77) < 4 * v16 * BYTE2(v16)) && (!MPSIsTextureTwiddled() || (*(v140 + 1477) & 4) != 0 || objc_msgSend_height(a5, a2, a3) < BYTE2(v16) * v16))
      {
        v136 = 0x100000001;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      HIDWORD(v136) = 0;
    }

LABEL_115:
    LODWORD(v136) = 1;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v136 = 0;
  if (v11 == 1)
  {
LABEL_6:
    if (a4 != a5 && (objc_msgSend_isEqual_(a4, a2, a5) & 1) == 0)
    {
      v18 = *(a1 + 232);
      if (v18)
      {
        objc_msgSend_setOptions_(v18, v17, v138);
        *v150 = v163;
        *&v150[16] = *v164;
        *&v150[32] = *&v164[16];
        objc_msgSend_setClipRect_(*(a1 + 232), v19, v150);
        *v150 = *(a6 + 64);
        *&v150[16] = *(a6 + 80);
        objc_msgSend_setOffset_(*(a1 + 232), v20, v150);
        objc_msgSend_setEdgeMode_(*(a1 + 232), v21, v13);
        return sub_23993BF18(*(a1 + 232), a2, a3, a4, a5, a6);
      }

      ComputeState = MPSLibrary::GetComputeState();
      if (ComputeState)
      {
        v62 = vmovn_s64(*(a6 + 64));
        v160.i16[1] = v62.i16[2];
        v160.i16[0] = v62.i16[0];
        v63 = vmovn_s64(v163);
        v160.i16[3] = v63.i16[2];
        v160.i16[2] = v63.i16[0];
        v64 = vmovn_s64(*&v164[8]);
        v160.i16[5] = v64.i16[2];
        v160.i16[4] = v64.i16[0];
        v160.i16[6] = v12 >> 1;
        v160.i16[7] = v13 == 1;
        v65 = ComputeState;
        v66 = objc_msgSend_threadExecutionWidth(ComputeState, v60, v61);
        objc_msgSend_setComputePipelineState_(a2, v67, v65);
        objc_msgSend_setTexture_atIndex_(a2, v68, a4, 0);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v70, Sampler, 0);
        objc_msgSend_setTexture_atIndex_(a2, v71, a5, 1);
        objc_msgSend_setBytes_length_atIndex_(a2, v72, &v160, 16, 0);
        v73 = *&v164[16];
        if (!HIDWORD(v136))
        {
          v73 = (v66 + *&v164[16] - 1) / v66;
        }

        *v150 = v73;
        *&v150[8] = vdupq_n_s64(1uLL);
        v161 = v66;
        v162 = *&v150[8];
LABEL_109:
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v57, v150, &v161, v132, v133);
        return 0;
      }

      return -1;
    }

    return -18;
  }

LABEL_13:
  if (v12 == 1)
  {
    if (a4 != a5 && (objc_msgSend_isEqual_(a4, a2, a5) & 1) == 0)
    {
      v38 = *(a1 + 240);
      if (v38)
      {
        objc_msgSend_setOptions_(v38, v24, v138);
        *v150 = v163;
        *&v150[16] = *v164;
        *&v150[32] = *&v164[16];
        objc_msgSend_setClipRect_(*(a1 + 240), v39, v150);
        *v150 = *(a6 + 64);
        *&v150[16] = *(a6 + 80);
        objc_msgSend_setOffset_(*(a1 + 240), v40, v150);
        objc_msgSend_setEdgeMode_(*(a1 + 240), v41, v13);
        sub_23993BF18(*(a1 + 240), a2, a3, a4, a5, a6);
      }

      v42 = MPSLibrary::GetComputeState();
      if (v42)
      {
        v45 = vmovn_s64(*(a6 + 64));
        v160.i16[1] = v45.i16[2];
        v160.i16[0] = v45.i16[0];
        v46 = vmovn_s64(v163);
        v160.i16[3] = v46.i16[2];
        v160.i16[2] = v46.i16[0];
        v47 = vmovn_s64(*&v164[8]);
        v160.i16[5] = v47.i16[2];
        v160.i16[4] = v47.i16[0];
        v160.i16[6] = v11 >> 1;
        v160.i16[7] = v13 == 1;
        v48 = v42;
        v49 = objc_msgSend_threadExecutionWidth(v42, v43, v44);
        objc_msgSend_setComputePipelineState_(a2, v50, v48);
        objc_msgSend_setTexture_atIndex_(a2, v51, a4, 0);
        v52 = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v53, v52, 0);
        v54 = 1;
        objc_msgSend_setTexture_atIndex_(a2, v55, a5, 1);
        objc_msgSend_setBytes_length_atIndex_(a2, v56, &v160, 16, 0);
        if (v136)
        {
          v58 = (*&v164[8] + 15) >> 4;
          if ((*v139 & 0xF000000) == 0x1000000)
          {
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v57, 2176, 0, v132, v133);
          }

          else
          {
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v57, 8704, 0, v132, v133);
          }

          v54 = 16;
          v49 = 16;
        }

        else
        {
          v58 = (v49 + *&v164[8] - 1) / v49;
        }

        *v150 = v58;
        *&v150[8] = vdupq_n_s64(1uLL);
        v161 = v49;
        *&v162 = v54;
        *(&v162 + 1) = 1;
        goto LABEL_109;
      }

      return -1;
    }

    return -18;
  }

  v134 = a5;
  v135 = v13;
  v161 = objc_msgSend_width(a4, a2, a3);
  *&v162 = objc_msgSend_height(a4, v25, v26);
  *(&v162 + 1) = 1;
  MPSSeparatePassDimensions();
  v27 = *v139;
  v28 = BYTE4(*v139);
  v29 = 115;
  if (v11 * v12 > 1 << (11 - v28))
  {
    v29 = 125;
  }

  if (v28 <= 0xB)
  {
    v30 = v29;
  }

  else
  {
    v30 = 125;
  }

  v31 = 115;
  if (((v27 >> 34) & 0x3F) >= 3)
  {
    v31 = v30;
  }

  if ((v138 & 2) != 0)
  {
    v30 = v31;
  }

  v32 = BYTE3(v27) & 0xF;
  v33 = 105;
  if (v30 == 115)
  {
    v33 = 65;
  }

  v34 = 55;
  if (v30 == 115)
  {
    v34 = 25;
  }

  if (v32 == 1)
  {
    v30 = v34;
  }

  if (v32 == 2)
  {
    v35 = v33;
  }

  else
  {
    v35 = v30;
  }

  if (*(v140 + 368) < 8)
  {
    v37 = a2;
    goto LABEL_86;
  }

  if (MPSIsTextureTwiddled())
  {
    v36 = MPSIsTextureTwiddled() ^ 1;
    if (*(a1 + 232))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 1;
    if (*(a1 + 232))
    {
LABEL_38:
      if ((v36 | HIDWORD(v136) ^ 1))
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  if ((*(a1 + 240) != 0) & v36) != 0 || ((HIDWORD(v136) ^ 1))
  {
LABEL_60:
    if ((v138 >> 1) & 1 | (v136 ^ 1) & 1)
    {
      goto LABEL_85;
    }

    goto LABEL_61;
  }

LABEL_59:
  if (*&v164[16] * *&v164[8] >= 0x40000uLL)
  {
    goto LABEL_60;
  }

  if ((v138 >> 1) & 1 | (v136 ^ 1) & 1)
  {
    goto LABEL_85;
  }

LABEL_61:
  if ((*v139 & 0xF000000) >= 0x2000001)
  {
    v37 = a2;
    goto LABEL_86;
  }

LABEL_85:
  v37 = a2;
LABEL_86:
  PixelInfo = MPSDevice::GetPixelInfo(v140, v35, MPSImageFeatureChannelFormatNone);
  MEMORY[0x23EE7BAC0](v154, a3, v134);
  TempTexture = MPSAutoCache::GetTempTexture();
  v80 = *(a1 + 232);
  if (v80)
  {
    objc_msgSend_setOptions_(v80, v78, v138, &v158, &v156);
    memset(v150, 0, 24);
    v81 = *(a1 + 232);
    *&v150[24] = v160;
    *&v150[40] = 1;
    objc_msgSend_setClipRect_(v81, v82, v150);
    *v150 = v158;
    *&v150[16] = v159;
    objc_msgSend_setOffset_(*(a1 + 232), v83, v150);
    objc_msgSend_setEdgeMode_(*(a1 + 232), v84, v135);
    v152 = 0u;
    v153 = 0u;
    v151 = 0u;
    memset(&v150[16], 0, 32);
    *v150 = *a6;
    *&v150[8] = &PixelInfo;
    v87 = *(a1 + 232);
    if (v87)
    {
      objc_msgSend_clipRect(v87, v85, v86);
      v87 = *(a1 + 232);
    }

    else
    {
      v151 = 0uLL;
      memset(&v150[16], 0, 32);
    }

    v152 = v158;
    v153 = v159;
    v104 = sub_23993BF18(v87, v37, a3, a4, TempTexture, v150);
    if (v104)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v88 = MPSLibrary::GetComputeState();
    v91 = v88;
    if (!v88)
    {
      goto LABEL_104;
    }

    v92 = vmovn_s64(v158);
    v144 = v92.i16[2];
    v143 = v92.i16[0];
    v145 = 0;
    v93 = vmovn_s64(v160);
    v147 = v93.u16[2];
    v146 = v93.i16[0];
    v148 = v12 >> 1;
    v149 = v135 == 1;
    v94 = objc_msgSend_threadExecutionWidth(v88, v89, v90, &v158, &v156);
    objc_msgSend_setComputePipelineState_(v37, v95, v91);
    objc_msgSend_setTexture_atIndex_(v37, v96, a4, 0);
    v97 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v37, v98, v97, 0);
    objc_msgSend_setTexture_atIndex_(v37, v99, TempTexture, 1);
    objc_msgSend_setBytes_length_atIndex_(v37, v100, &v143, 16, 0);
    v102 = v147;
    if (!HIDWORD(v136))
    {
      v102 = (v94 + v147 - 1) / v94;
    }

    *v150 = v102;
    *&v150[8] = vdupq_n_s64(1uLL);
    v141 = v94;
    v142 = *&v150[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v37, v101, v150, &v141);
  }

  v105 = *(a1 + 240);
  if (v105)
  {
    objc_msgSend_setOptions_(v105, v103, v138);
    *v150 = v163;
    *&v150[16] = *v164;
    *&v150[32] = *&v164[16];
    objc_msgSend_setClipRect_(*(a1 + 240), v106, v150);
    *v150 = v156;
    *&v150[16] = v157;
    objc_msgSend_setOffset_(*(a1 + 240), v107, v150);
    objc_msgSend_setEdgeMode_(*(a1 + 240), v108, v135);
    v152 = 0u;
    v153 = 0u;
    v151 = 0u;
    memset(&v150[16], 0, 32);
    v111 = *(a6 + 8);
    *v150 = &PixelInfo;
    *&v150[8] = v111;
    v112 = *(a1 + 240);
    if (v112)
    {
      objc_msgSend_clipRect(v112, v109, v110);
      v112 = *(a1 + 240);
    }

    else
    {
      v151 = 0uLL;
      memset(&v150[16], 0, 32);
    }

    v152 = v156;
    v153 = v157;
    v104 = sub_23993BF18(v112, v37, a3, TempTexture, v134, v150);
    goto LABEL_112;
  }

  v113 = MPSLibrary::GetComputeState();
  v116 = v113;
  if (v113)
  {
    v117 = vmovn_s64(v156);
    v144 = v117.i16[2];
    v143 = v117.i16[0];
    v118 = vmovn_s64(v163);
    HIWORD(v145) = v118.i16[2];
    LOWORD(v145) = v118.i16[0];
    v119 = vmovn_s64(*&v164[8]);
    v147 = v119.u16[2];
    v146 = v119.i16[0];
    v148 = v11 >> 1;
    v149 = v135 == 1;
    v120 = objc_msgSend_threadExecutionWidth(v113, v114, v115);
    objc_msgSend_setComputePipelineState_(v37, v121, v116);
    objc_msgSend_setTexture_atIndex_(v37, v122, TempTexture, 0);
    v123 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v37, v124, v123, 0);
    objc_msgSend_setTexture_atIndex_(v37, v125, v134, 1);
    objc_msgSend_setBytes_length_atIndex_(v37, v126, &v143, 16, 0);
    v128 = v146;
    if (v136)
    {
      if ((*v139 & 0xF000000) == 0x1000000)
      {
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v37, v127, 2176, 0);
      }

      else
      {
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v37, v127, 8704, 0);
      }

      v129 = (v128 + 15) >> 4;
      v120 = 16;
      v130 = 16;
    }

    else
    {
      v130 = 1;
      v129 = (v120 + v146 - 1) / v120;
    }

    *v150 = v129;
    *&v150[8] = vdupq_n_s64(1uLL);
    v141 = v120;
    *&v142 = v130;
    *(&v142 + 1) = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v37, v127, v150, &v141);
    v104 = 0;
    goto LABEL_112;
  }

LABEL_104:
  v104 = -1;
LABEL_112:
  v131 = v104;
  MPSAutoCache::~MPSAutoCache(v154);
  return v131;
}

void sub_239950EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239950F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

int8x16_t sub_239950F68@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int8x16_t *a5@<X8>)
{
  *a5 = 0uLL;
  a5[1].i64[0] = 0;
  v10 = *(a1 + *MEMORY[0x277CD7350]);
  v11 = objc_msgSend_pixelFormat(a3, a2, a3);
  PixelInfo = MPSDevice::GetPixelInfo(v10, v11, MPSImageFeatureChannelFormatNone);
  if ((~PixelInfo & 0xA00000000000) == 0 && (PixelInfo & 0xFC00) != 0)
  {
    if (*(a1 + 208) > 9uLL)
    {
      if (a2 == a3)
      {
        return result;
      }
    }

    else if (a2 == a3 || *(a1 + 216) < 0xAuLL)
    {
      return result;
    }

    if ((objc_msgSend_isEqual_(a2, v13, a3) & 1) == 0)
    {
      v16 = vdupq_n_s64(0x2C0uLL);
      result = vbslq_s8(vcgtq_u64(v16, *(a4 + 40)), *(a4 + 40), v16);
      *a5 = result;
    }
  }

  return result;
}

uint64_t sub_239951064@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = MEMORY[0x277CD7350];
  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = objc_msgSend_pixelFormat(a3, a2, a3);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v14 = *(a1 + *v10);
  v17 = objc_msgSend_pixelFormat(a2, v15, v16);
  result = MPSDevice::GetPixelInfo(v14, v17, MPSImageFeatureChannelFormatNone);
  if ((~PixelInfo & 0xA00000000000) == 0 && (PixelInfo & 0xFC00) != 0)
  {
    if (*(a1 + 208) > 9uLL)
    {
      if (a2 == a3)
      {
        return result;
      }
    }

    else if (a2 == a3 || *(a1 + 216) < 0xAuLL)
    {
      return result;
    }

    v21 = result;
    result = objc_msgSend_isEqual_(a2, v19, a3);
    if ((result & 1) == 0)
    {
      if ((*(*(a1 + *v10) + 1480) & 0xFEuLL) < 0xE)
      {
        v24 = v21 >> 10;
        if (v24 <= 7)
        {
          v25 = v24 > 3;
          v23 = 4096;
          v22 = 2048;
          if (!v25)
          {
            v22 = 4096;
          }
        }

        else
        {
          v22 = 2048;
          v23 = 2048;
        }
      }

      else
      {
        v22 = 2048;
        v23 = 4096;
        if ((v21 & 0xC000) == 0)
        {
          v22 = 4096;
        }
      }

      if (v23 >= *(a4 + 40))
      {
        v23 = *(a4 + 40);
      }

      if (v22 >= *(a4 + 48))
      {
        v22 = *(a4 + 48);
      }

      *a5 = v23;
      a5[1] = v22;
    }
  }

  return result;
}

int8x16_t sub_2399511EC@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int8x16_t *a5@<X8>)
{
  *a5 = 0uLL;
  a5[1].i64[0] = 0;
  v10 = *(a1 + *MEMORY[0x277CD7350]);
  v11 = objc_msgSend_pixelFormat(a3, a2, a3);
  PixelInfo = MPSDevice::GetPixelInfo(v10, v11, MPSImageFeatureChannelFormatNone);
  if ((~PixelInfo & 0xA00000000000) == 0 && (PixelInfo & 0xFC00) != 0)
  {
    if (*(a1 + 208) > 9uLL)
    {
      if (a2 == a3)
      {
        return result;
      }
    }

    else if (a2 == a3 || *(a1 + 216) < 0xAuLL)
    {
      return result;
    }

    if ((objc_msgSend_isEqual_(a2, v13, a3) & 1) == 0)
    {
      v16 = vdupq_n_s64(0x800uLL);
      result = vbslq_s8(vcgtq_u64(v16, *(a4 + 40)), *(a4 + 40), v16);
      *a5 = result;
    }
  }

  return result;
}

uint64_t sub_239951C7C(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v10 = *(a6 + 40);
  v11 = *(a6 + 48);
  v12 = *(a1 + *MEMORY[0x277CD7378]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v14 = *a6;
  v15 = *(a6 + 8);
  if (*a6 == v15)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v55 = *(a6 + 48);
    v33 = *(a6 + 40);
    v37 = *(a1 + *MEMORY[0x277CD7370]);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v13 = v37;
    v7 = a5;
    v9 = a2;
    v8 = a4;
    v10 = v33;
    v11 = v55;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v11 && v10)
  {
    if ((*v14 & 0x40000000000) != 0)
    {
      v17 = (*v15 >> 42) & (((*v15 ^ *v14) & 0x10000000000) == 0);
    }

    else
    {
      v17 = (*v15 & 0x40000000000) == 0;
    }

    if ((v12 & 1) == 0)
    {
      if (!v17)
      {
        v51 = v13;
        v52 = MTLReportFailureTypeEnabled();
        v13 = v51;
        if (v52)
        {
          v53 = v7;
          v54 = v8;
          MTLReportFailure();
          v13 = v51;
        }
      }

      if ((*(a6 + 64) & 0x8000000000000000) != 0 || (*(a6 + 72) & 0x8000000000000000) != 0)
      {
        v18 = v13;
        v19 = MTLReportFailureTypeEnabled();
        v13 = v18;
        if (v19)
        {
          MTLReportFailure();
          v13 = v18;
        }
      }
    }

    if ((*v14 & 0x10000000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 5;
    }

    if ((*v14 & 0x40000000000) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(*(*(v13 + 280) + 16 * (v21 + (*(v15 + 3) & 0xFu))) + 64);
    ComputeState = MPSLibrary::GetComputeState();
    v25 = ComputeState;
    if (v22)
    {
      if (ComputeState)
      {
        objc_msgSend_setComputePipelineState_(v9, v24, ComputeState);
        MPSLibrary::ReleaseComputeState();
        v26 = vmovn_s64(*(a6 + 64));
        v62 = v26.i16[2];
        v61 = v26.i16[0];
        v63 = 0;
        v65 = v11;
        v64 = v10;
        objc_msgSend_setTexture_atIndex_(v9, v27, v8, 0);
        objc_msgSend_setTexture_atIndex_(v9, v28, v7, 1);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(v9, v30, Sampler, 0);
        objc_msgSend_setBytes_length_atIndex_(v9, v31, &v61, 12, 0);
        v58 = (v10 + 15) >> 4;
        v59 = (v11 + 63) >> 6;
        v60 = 1;
        v56 = vdupq_n_s64(0x10uLL);
LABEL_32:
        v57 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v9, v32, &v58, &v56, v53, v54);
        return 0;
      }
    }

    else if (ComputeState)
    {
      objc_msgSend_setComputePipelineState_(v9, v24, ComputeState);
      v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(v25, v39, v40);
      MPSLibrary::ReleaseComputeState();
      v43 = v41 > 0x3FF;
      if (v41 <= 0x3FF)
      {
        v44 = 16;
      }

      else
      {
        v44 = 32;
      }

      v45 = 4;
      if (v43)
      {
        v45 = 5;
      }

      v46 = (v10 + v44 - 1) >> v45;
      v47 = vmovn_s64(*(a6 + 64));
      v62 = v47.i16[2];
      v61 = v47.i16[0];
      v63 = 0;
      v48 = (v11 + v44 - 1) >> v45;
      v65 = v11;
      v64 = v10;
      objc_msgSend_setTexture_atIndex_(v9, v42, v8, 0, v53, v54);
      objc_msgSend_setTexture_atIndex_(v9, v49, v7, 1);
      objc_msgSend_setBytes_length_atIndex_(v9, v50, &v61, 12, 0);
      v58 = v46;
      v59 = v48;
      v60 = 1;
      v56.i64[0] = v44;
      v56.i64[1] = v44;
      goto LABEL_32;
    }

    return -1;
  }

  return result;
}

uint64_t sub_2399526E4(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, __n128 a8)
{
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  a8.n128_u32[0] = *(a1 + 232);
  v100 = a8;
  v99 = *(a1 + 236);
  a8.n128_u32[0] = *(a1 + 240);
  v97 = a8;
  v102 = *(a1 + 244);
  v98 = *(a1 + 248);
  *(&v104 + 1) = *(a1 + 256);
  *&v104 = *(a1 + 264);
  v94 = *(a1 + 272);
  *&v105 = *(a1 + 288);
  *(&v105 + 1) = *(a1 + 280);
  v95 = *(a1 + 296);
  v103 = objc_msgSend_arrayLength(a6, a2, a3);
  v14 = *(a7 + 48);
  v15 = *(a7 + 64);
  v17 = *a7;
  v16 = *(a7 + 8);
  v18 = *(a7 + 16);
  if (*a7 == v18 || v16 == v18)
  {
    if (a4 == a6)
    {
      return -18;
    }

    v93 = *(a7 + 48);
    isEqual = objc_msgSend_isEqual_(a4, v12, a6);
    result = -18;
    if (a5 == a6 || (isEqual & 1) != 0)
    {
      return result;
    }

    v27 = objc_msgSend_isEqual_(a5, v25, a6);
    v14 = v93;
    if (v27)
    {
      return -18;
    }
  }

  v91 = a5;
  result = 0;
  v20 = *(&v14 + 1);
  if (*(&v14 + 1) && v14 && v15)
  {
    v21 = *v17;
    v22 = *v16;
    v90 = v14;
    if ((*v17 & 0x40000000000) != 0)
    {
      v28 = (v22 & 0x40000000000) != 0 && ((v22 ^ v21) & 0x10000000000) == 0;
      v23 = a4;
    }

    else
    {
      v23 = a4;
      if ((v22 & 0x40000000000) == 0)
      {
        v24 = (*(v18 + 5) & 4) == 0;
        v92 = v14;
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      v28 = 0;
    }

    v24 = v28 & (*v18 >> 42) & (((*v18 ^ v21) & 0x10000000000) == 0);
    v92 = v14;
    if (v11)
    {
LABEL_9:
      if (v24)
      {
        if (v15 != 1)
        {
          return -16;
        }

        goto LABEL_28;
      }

      return -7;
    }

LABEL_23:
    if (v24)
    {
      objc_msgSend_textureType(v23, v12, v13);
      objc_msgSend_textureType(v91, v29, v30);
      v33 = objc_msgSend_textureType(v23, v31, v32);
      if (v33 != objc_msgSend_textureType(v91, v34, v35) && MTLReportFailureTypeEnabled())
      {
        v87 = v23;
        v88 = v91;
        MTLReportFailure();
      }

      objc_msgSend_textureType(v23, v36, v37, v87, v88);
      objc_msgSend_textureType(a6, v38, v39);
      v42 = objc_msgSend_textureType(v23, v40, v41);
      if (v42 != objc_msgSend_textureType(a6, v43, v44) && MTLReportFailureTypeEnabled())
      {
        v87 = v23;
        v88 = a6;
        MTLReportFailure();
      }

      if (v15 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        return -16;
      }

      v21 = *v17;
LABEL_28:
      v45 = v104 != 0;
      v89 = v105 == 0;
      if ((v21 & 0xF000000) != 0x4000000)
      {
        goto LABEL_39;
      }

      v46 = 0;
      if ((v21 & 0xF800000000uLL) >= 0x1700000001)
      {
        if (objc_msgSend_width(v23, v12, v13) >= 2)
        {
          if (objc_msgSend_height(v23, v12, v13) >= 2)
          {
            v46 = 0;
            if (v90 >= 0x400 && v20 >= 0x400)
            {
              if (v105 == 0)
              {
                v46 = v104 != 0;
              }

              else
              {
                v46 = !v45 && !v89;
              }

              if ((*v17 & 0xF000000) != 0x1000000)
              {
                goto LABEL_40;
              }

LABEL_43:
              v48 = a3;
              if (objc_msgSend_width(v23, v12, v13, v87, v88) < 2 || objc_msgSend_height(v23, v12, v13) < 2)
              {
                v47 = v46;
              }

              else if (v105 == 0)
              {
                v47 = v45 || v46;
              }

              else
              {
                v47 = !v45 && !v89 || v46;
              }

LABEL_48:
              objc_msgSend_textureType(v23, v12, v13, v87);
              MEMORY[0x23EE7BAC0](v128, v48, a6);
              v52 = v100;
              v52.n128_f32[1] = v99;
              HIDWORD(v51) = v97.n128_u32[3];
              v52.n128_u32[2] = v97.n128_u32[0];
              v110 = v100.n128_f32[0] * v99;
              v111 = v100.n128_f32[0] / v99;
              v53 = v98 == INFINITY && v102 == -INFINITY;
              LODWORD(v51) = 0;
              if (!v53)
              {
                *&v51 = 1.0;
              }

              *(&v51 + 1) = v102;
              *(&v51 + 2) = v98;
              v109[0] = v52;
              v109[1] = v51;
              v54 = vmovn_s64(*(a7 + 72));
              v114 = *(a7 + 88);
              v113 = vuzp1_s16(v54, v54).u32[0];
              v55 = vmovn_s64(*(a7 + 96));
              v116 = *(a7 + 112);
              v115 = vuzp1_s16(v55, v55).u32[0];
              v56 = vmovn_s64(*(a7 + 24));
              v118 = *(a7 + 40);
              v117 = vuzp1_s16(v56, v56).u32[0];
              v119 = objc_msgSend_width(a6, v49, v50);
              v120 = objc_msgSend_height(a6, v57, v58);
              v121 = objc_msgSend_depth(a6, v59, v60) * v103;
              v61 = vmovn_s64(v92);
              v122 = vuzp1_s16(v61, v61).u32[0];
              *v61.i32 = *(&v104 + 1);
              v123 = v103;
              *&v61.i32[1] = v104;
              v125 = v94;
              *&v62 = *(&v105 + 1);
              *(&v62 + 1) = v105;
              v124 = v61;
              v127 = v95;
              v126 = v62;
              v112 = *(v18 + 3) & 0xF;
              ComputeState = MPSLibrary::GetComputeState();
              objc_msgSend_setComputePipelineState_(a2, v64, ComputeState);
              v67 = objc_msgSend_threadExecutionWidth(ComputeState, v65, v66);
              if (v67 <= 1)
              {
                v70 = 1;
              }

              else
              {
                v70 = v67;
              }

              if (v70 >= 0x10)
              {
                v71 = 16;
              }

              else
              {
                v71 = v70;
              }

              v72 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v68, v69);
              v73 = *(a7 + 48);
              if (v47)
              {
                v73 = (v73 + 1) >> 1;
                v74 = (*(a7 + 56) + 1) >> 1;
                v75 = v72 / v71;
                if (v71 <= v72)
                {
LABEL_61:
                  v76 = (v75 + v74 - 1) / v75;
LABEL_64:
                  v77 = *(a7 + 64);
                  MPSLibrary::ReleaseComputeState();
                  objc_msgSend_setTexture_atIndex_(a2, v78, a4, 0);
                  objc_msgSend_setTexture_atIndex_(a2, v79, v91, 1);
                  objc_msgSend_setTexture_atIndex_(a2, v80, a6, 2);
                  objc_msgSend_setBytes_length_atIndex_(a2, v81, v109, 128, 0);
                  Sampler = MPSDevice::GetSampler();
                  objc_msgSend_setSamplerState_atIndex_(a2, v83, Sampler, 0);
                  v84 = MPSDevice::GetSampler();
                  objc_msgSend_setSamplerState_atIndex_(a2, v85, v84, 1);
                  v108[0] = (v71 + v73 - 1) / v71;
                  v108[1] = v76;
                  v108[2] = v77 * v103;
                  v107[0] = v71;
                  v107[1] = v75;
                  v107[2] = 1;
                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v86, v108, v107);
                  MPSAutoCache::~MPSAutoCache(v128);
                  return 0;
                }
              }

              else
              {
                v74 = *(a7 + 56);
                v75 = v72 / v71;
                if (v71 <= v72)
                {
                  goto LABEL_61;
                }
              }

              v76 = 0;
              goto LABEL_64;
            }

            goto LABEL_42;
          }

LABEL_39:
          v46 = 0;
          if ((*v17 & 0xF000000) == 0x1000000)
          {
            goto LABEL_43;
          }

LABEL_40:
          v47 = v46;
          v48 = a3;
          goto LABEL_48;
        }

        v46 = 0;
      }

LABEL_42:
      if ((*v17 & 0xF000000) == 0x1000000)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -7;
  }

  return result;
}

uint64_t sub_2399536B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = *(a2 + 64);
  v16 = v7 & 1;
  v15 = (v7 & 2) != 0;
  v8 = (v7 >> 2) & 0xF;
  v14 = (v7 >> 2) & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v9, &v16, 53, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v10, &v15, 53, 1);
  if (v8 <= 3)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v6, v11, &v14, 41, 2);
  }

  v12 = _MPSNewSpecializedFunction();

  return v12;
}

uint64_t sub_2399538E4(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v100 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = *(a1 + 208);
  v14 = *(a6 + 40);
  v13 = *(a6 + 48);
  v15 = *a6;
  v16 = *(a6 + 8);
  if (*a6 == v16)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v90 = *(a6 + 40);
    v91 = *(a6 + 48);
    v98 = *(a1 + 208);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5);
    v12 = v98;
    v13 = v91;
    v14 = v90;
    v8 = a3;
    v9 = a2;
    v10 = a1;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  v99 = v13;
  if (v13 && v14)
  {
    v97 = v12;
    if ((v11 & 1) == 0)
    {
      if ((*v15 & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
      {
        v93 = a4;
        MTLReportFailure();
      }

      if ((*v16 & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
      {
        v93 = a5;
        MTLReportFailure();
      }

      if ((*(v16 + 5) & 4) != 0 && MTLReportFailureTypeEnabled())
      {
        v93 = a5;
        MTLReportFailure();
      }

      v18 = objc_msgSend_width(a4, a2, a3, v93);
      if (v18 == objc_msgSend_width(a5, v19, v20))
      {
        objc_msgSend_height(a4, v21, v22);
        objc_msgSend_height(a5, v23, v24);
      }

      v25 = objc_msgSend_width(a4, v21, v22);
      if (v25 != objc_msgSend_width(a5, v26, v27) || (v30 = objc_msgSend_height(a4, v28, v29), v30 != objc_msgSend_height(a5, v31, v32)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v94 = a5;
          v95 = a4;
          MTLReportFailure();
        }
      }

      if (v14 == objc_msgSend_width(a5, v33, v34, v94, v95))
      {
        objc_msgSend_height(a5, v35, v36);
      }

      if ((v14 != objc_msgSend_width(a5, v35, v36) || v99 != objc_msgSend_height(a5, v37, v38)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    MEMORY[0x23EE7BAC0](v111, v8, a5);
    v108 = objc_msgSend_width(a5, v39, v40);
    v109 = objc_msgSend_height(a5, v41, v42);
    v110 = 1;
    PixelInfo = MPSDevice::GetPixelInfo(v100, MTLPixelFormatR16Sint, MPSImageFeatureChannelFormatNone);
    TempBuffer = MPSAutoCache::GetTempBuffer(v111, 8 * v108, 0);
    TempTexture = MPSAutoCache::GetTempTexture();
    v96 = MPSAutoCache::GetTempTexture();
    ComputeState = MPSLibrary::GetComputeState();
    if (ComputeState && (objc_msgSend_setComputePipelineState_(v9, v45, ComputeState), MPSLibrary::ReleaseComputeState(), objc_msgSend_setTexture_atIndex_(v9, v47, a4, 0), objc_msgSend_setTexture_atIndex_(v9, v48, TempTexture, 1), objc_msgSend_setBuffer_offset_atIndex_(v9, v49, TempBuffer, 0, 0), objc_msgSend_setBuffer_offset_atIndex_(v9, v50, TempBuffer, 4 * v108, 1), v51 = MPSDevice::GetSampler(), objc_msgSend_setSamplerState_atIndex_(v9, v52, v51, 0), objc_msgSend_setThreadgroupMemoryLength_atIndex_(v9, v53, 2048, 0), v54 = (v14 + 7) >> 3, v104 = 1, v105 = v54, v106 = 1, v102 = xmmword_239988A20, v103 = 1, objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v9, v55, &v104, &v102), (v57 = MPSLibrary::GetComputeState()) != 0) && (objc_msgSend_setComputePipelineState_(v9, v56, v57), MPSLibrary::ReleaseComputeState(), objc_msgSend_setTexture_atIndex_(v9, v58, TempTexture, 0), objc_msgSend_setTexture_atIndex_(v9, v59, v96, 1), objc_msgSend_setBuffer_offset_atIndex_(v9, v60, TempBuffer, 0, 0), objc_msgSend_setBuffer_offset_atIndex_(v9, v61, TempBuffer, 4 * v108, 1), v62 = MPSDevice::GetSampler(), objc_msgSend_setSamplerState_atIndex_(v9, v63, v62, 0), objc_msgSend_setThreadgroupMemoryLength_atIndex_(v9, v64, 2048, 0), v104 = 1, v105 = v54, v106 = 1, v102 = xmmword_239988A20, v103 = 1, objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v9, v65, &v104, &v102), MPSAutoCache::ReleaseTempResource(), v66 = (v108 + 255) & 0xFFFFFFFFFFFFFF00, v67 = MPSAutoCache::GetTempBuffer(v111, 4 * v66 * (v109 + 16), 0), (v69 = MPSLibrary::GetComputeState()) != 0))
    {
      objc_msgSend_setComputePipelineState_(v9, v68, v69);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(v9, v70, v96, 0);
      objc_msgSend_setTexture_atIndex_(v9, v71, a5, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v9, v72, v67, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v9, v73, v67, 2 * v66 * (v109 + 16), 1);
      objc_msgSend_setBuffer_offset_atIndex_(v9, v74, TempBuffer, 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v9, v75, TempBuffer, 4 * v108, 3);
      v76 = *(*(v10 + *MEMORY[0x277CD7370]) + 32);
      v77 = v76[2];
      (*(*v76 + 16))(v76);
      v80 = v77 + 64.0;
      HIDWORD(v81) = 0;
      LODWORD(v81) = v97;
      if (v108 >= 0xA01)
      {
        v80 = v77;
      }

      *(&v81 + 1) = v80;
      DWORD2(v81) = v79;
      v101 = v81;
      objc_msgSend_setBytes_length_atIndex_(v9, v78, &v101, 16, 4);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(v9, v83, Sampler, 0);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v9, v84, 0x2000, 0);
      v104 = 1;
      v105 = (v99 + 7) >> 3;
      v106 = 16;
      v102 = vdupq_n_s64(8uLL);
      v103 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v9, v85, &v104, &v102);
      v86 = 0;
    }

    else
    {
      v86 = -1;
    }

    MPSAutoCache::~MPSAutoCache(v111);
    return v86;
  }

  return result;
}

uint64_t sub_2399543A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = *(a2 + 64);
  v15 = v7 & 1;
  v14 = (v7 & 2) != 0;
  v13 = (v7 & 4) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v6, v8, &v15, 53, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v9, &v14, 53, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v6, v10, &v13, 53, 2);
  v11 = _MPSNewSpecializedFunction();

  return v11;
}

uint64_t sub_23995478C(float32x4_t *a1, char *a2, void *a3, uint64_t a4, NSString *a5, uint64_t *a6)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v13, 1);
  return sub_239954834(a1, a2, a3, v11, a5, a6);
}

uint64_t sub_239954834(float32x4_t *a1, char *a2, void *a3, void *a4, NSString *a5, uint64_t *a6)
{
  v7 = *(a1->i64 + *MEMORY[0x277CD7378]);
  v8 = a1[17].u8[0];
  v81 = *(a1->i64 + *MEMORY[0x277CD7370]);
  v80 = a1[16].u8[0];
  v75 = a1[15];
  v76 = a1[14];
  v78 = a1[13].u64[0];
  v73 = a1[16].i64[1];
  v79 = a1[10].i64[0];
  v77 = *(a6 + 1);
  v85 = *(a6 + 5);
  v9 = *a6;
  v10 = a6[1];
  v11 = a6[11];
  v82 = a1[13].u8[8];
  if (v11)
  {
    v12 = objc_msgSend_graph(v11, a2, a3);
    v13 = **(***(v12 + 56) + 8);
    if (*(*(***(v12 + 56) + 8) + 8) == v13)
    {
      sub_239955C4C();
    }

    v14 = *(*v13 + 16);
    v16 = *v14;
    v15 = v14[1];
    if (v15 != v16)
    {
      if (((v15 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_239955CF4();
    }

    if ((MEMORY[0] - 1) >= 4)
    {
      abort();
    }

    v17 = MEMORY[0];
    operator delete(0);
    v20 = 0;
    v21 = 0;
    v22 = v85;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v20 = a5;
  v23 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0);
  v21 = v23;
  if (v9 == v10 && (v23 == v20 || (objc_msgSend_isEqual_(v23, v18, v20) & 1) != 0))
  {
    return -18;
  }

  v17 = *(v9 + 3) & 0xF;
  v22 = v85;
  if ((v7 & 1) == 0)
  {
LABEL_10:
    if (!v8)
    {
      v67 = MTLReportFailureTypeEnabled();
      v22 = v85;
      if (v67)
      {
        v68 = objc_opt_class();
        v71 = NSStringFromClass(v68);
        MTLReportFailure();
        v22 = v85;
      }
    }

    if (!v11)
    {
      if ((*(v9 + 3) & 0xF) == 0)
      {
        v69 = MTLReportFailureTypeEnabled();
        v22 = v85;
        if (v69)
        {
          v71 = v21;
          MTLReportFailure();
          v22 = v85;
        }
      }

      if ((*(v10 + 3) & 0xF) == 0)
      {
        v70 = MTLReportFailureTypeEnabled();
        v22 = v85;
        if (v70)
        {
          v71 = v20;
          MTLReportFailure();
          v22 = v85;
        }
      }
    }
  }

LABEL_14:
  if (!v8)
  {
    return -20;
  }

  result = 0;
  v25 = v22.i64[1];
  if (v22.i64[1])
  {
    v26 = v22.i64[0];
    if (v22.i64[0])
    {
      *&v27 = -1;
      *(&v27 + 1) = -1;
      v102 = v27;
      v103 = v27;
      v99 = v27;
      v100 = -1;
      v104 = -1;
      v101 = 0;
      v72 = v21;
      if (v11)
      {
        v28 = *(objc_msgSend_graph(v11, v18, v19) + 80) == 1;
        v104 = *(objc_msgSend_graph(v11, v29, v30, v71) + 72) | (v28 << 16);
        v33 = ((v79 == 0) << 7) | ((v17 == 4) << 8) | (2 * (*(objc_msgSend_graph(v11, v31, v32) + 76) & 0x3FLL)) | 1;
      }

      else
      {
        v104 = 0;
        v33 = 256;
      }

      v105 = v33;
      if (v82)
      {
        v34 = 4;
      }

      else
      {
        v34 = 3;
      }

      if (v17 != 4)
      {
        v34 = v17;
      }

      if (v80)
      {
        v35 = 0;
      }

      else
      {
        v35 = 5;
      }

      v36 = (v34 + v35);
      objc_msgSend_copy(**(*(v81 + 280) + 16 * v36), v18, v19, v71);
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      if (PipelineStateForMPSKey)
      {
        v39 = PipelineStateForMPSKey;
        objc_msgSend_setComputePipelineState_(a2, v38, PipelineStateForMPSKey, v11, 0, 0, 0, 0);
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseComputeState();
        v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(v39, v40, v41);
        v46 = (&unk_239988AE0 + 32 * *(*(*(v81 + 280) + 16 * v36) + 64));
        v47 = *v46;
        if (v42 >= 16 * *v46)
        {
          v48 = 16;
        }

        else
        {
          v48 = v42 / v47;
        }

        *v45.i32 = v78;
        v50 = v46[2] * v47;
        v51 = v46[3] * v48;
        v52 = v25 + v51 - 1;
        v97 = 0;
        v98 = 0;
        v89[0] = v76;
        v89[1] = vdivq_f32(vdupq_lane_s32(v45, 0), vsubq_f32(v75, v76));
        v53 = vmovn_s64(*(a6 + 4));
        v91 = v53.i16[2];
        v90 = v53.i16[0];
        v54 = vmovn_s64(v77);
        v93 = v54.i16[2];
        v92 = v54.i16[0];
        v55 = vmovn_s64(v85);
        v95 = v55.i16[2];
        v94 = v55.i16[0];
        v96 = (v78 - 1);
        LOWORD(v97) = v78;
        if ((objc_msgSend_retainedReferences(a3, v43, v44) & 1) == 0)
        {
          v57 = v73;
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = sub_239955C44;
          v88[3] = &unk_278AC37A8;
          v88[4] = v73;
          objc_msgSend_addCompletedHandler_(a3, v58, v88);
        }

        v59 = (v26 + v50 - 1) / v50;
        v60 = v52 / v51;
        if (v11)
        {
          MPSSetResourcesOnCommandEncoder();
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(a2, v56, v72, 1);
          Sampler = MPSDevice::GetSampler();
          objc_msgSend_setSamplerState_atIndex_(a2, v63, Sampler, 0);
          objc_msgSend_setTexture_atIndex_(a2, v64, a5, 0);
        }

        objc_msgSend_setBytes_length_atIndex_(a2, v61, v89, 64, 29);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v65, v73, 0, 28);
        v87[0] = v59;
        v87[1] = v60;
        v87[2] = 1;
        v86[0] = v47;
        v86[1] = v48;
        v86[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v66, v87, v86);
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

  return result;
}

void sub_239955C64(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239955CC0(exception, a1);
  __cxa_throw(exception, &unk_284C6BF00, MEMORY[0x277D825F8]);
}

std::logic_error *sub_239955CC0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_239955D0C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239955D68(exception, a1);
  __cxa_throw(exception, &unk_284C6BF28, MEMORY[0x277D825F0]);
}

std::logic_error *sub_239955D68(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_239956830(uint64_t result, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    if (*(result + *MEMORY[0x277CD7380]))
    {
      return vfprintf(*MEMORY[0x277D85DF8], a3, va);
    }
  }

  return result;
}

uint64_t sub_239956C20(void *a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t **a6)
{
  v10 = objc_msgSend_scaleTransform(a1, a2, a3);
  v12 = a6[8];
  v11 = a6[9];
  v49 = objc_msgSend_width(a4, v13, v14);
  v17 = objc_msgSend_height(a4, v15, v16);
  v18.f32[0] = v49;
  v18.f32[1] = v17;
  v50 = v18;
  v21 = objc_msgSend_width(a5, v19, v20);
  v24 = objc_msgSend_height(a5, v22, v23);
  if (v10)
  {
    __asm { FMOV            V2.2S, #1.0 }

    v31 = vmaxnm_f32(vcvt_f32_f64(*v10), vdiv_f32(_D2, v50));
    v32 = vcvt_f32_f64(v10[1]);
    if (a4 == a5)
    {
      return -18;
    }
  }

  else
  {
    v33.f32[0] = v21;
    v33.f32[1] = v24;
    v31 = vdiv_f32(v33, v50);
    v32 = 0;
    if (a4 == a5)
    {
      return -18;
    }
  }

  if (objc_msgSend_isEqual_(a4, v25, a5))
  {
    return -18;
  }

  if (a6[6])
  {
    if (a6[5])
    {
      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(a2, v36, ComputeState);
      v59 = 0;
      __asm { FMOV            V0.2S, #1.0 }

      v54[0] = vdiv_f32(_D0, v31);
      v54[1] = v32;
      v38 = vmovn_s64(*(a6 + 1));
      v56 = v38.i16[2];
      v55 = v38.i16[0];
      v39 = a6[6];
      v40 = vmovn_s64(*(a6 + 5));
      v41 = (a6[5] + 15) >> 4;
      v42 = (v39 + 15) >> 4;
      v58 = v40.i16[2];
      v57 = v40.i16[0];
      WORD1(v59) = v11;
      LOWORD(v59) = v12;
      objc_msgSend_setTexture_atIndex_(a2, v43, a4, 0);
      objc_msgSend_setTexture_atIndex_(a2, v44, a5, 1);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v46, Sampler, 0);
      objc_msgSend_setBytes_length_atIndex_(a2, v47, v54, 32, 0);
      v53[0] = v41;
      v53[1] = v42;
      v53[2] = 1;
      v51 = vdupq_n_s64(0x10uLL);
      v52 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v48, v53, &v51);
    }
  }

  return 0;
}

void sub_239957D10(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_239957D30(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_23995818C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_2399400F0(va, a2, a3);
  operator delete(v23);
  if (v22)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_239959014(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t MPSSubTileEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, unint64_t *a7)
{
  v9 = *a7;
  if (*a7 && (v10 = a7[1]) != 0)
  {
    v12 = *(a6 + 5);
    v11 = *(a6 + 6);
    v13 = 4;
    if (*(*(a1 + *MEMORY[0x277CD7350]) + 1482) > 4uLL)
    {
      v13 = *(*(a1 + *MEMORY[0x277CD7350]) + 1482);
    }

    if (v9 >= v12)
    {
      v15 = 1;
      v16 = *(a6 + 5);
    }

    else
    {
      v14 = v12 - 1;
      v15 = (v12 - 1 + v9) / v9;
      if (v15 * v9 == v12)
      {
        v16 = *a7;
      }

      else
      {
        v16 = v9 - (v15 * v9 - v12) / (v15 * v13) * v13;
        v33 = v16 * v15 - v12;
        if (v33)
        {
          if (v15 >= 2)
          {
            v35 = v9 + (v15 * v13 - v13 + v14 - (v15 - 1) * v9) / (v15 * v13 - v13) * v13;
            v36 = v35 * (v15 - 1) - v12;
            if (v36 >= v33 || (v16 = v9 + (v15 * v13 - v13 + v14 - (v15 - 1) * v9) / (v15 * v13 - v13) * v13, v33 = v35 * (v15 - 1) - v12, --v15, v36))
            {
              v37 = v9 > v13;
              v38 = v9 - v13;
              if (v37)
              {
                v39 = (v38 + v14) / v38;
                if (v39 * v38 - v12 < v33)
                {
                  v16 = v38;
                  v15 = v39;
                }
              }
            }
          }

          else
          {
            v15 = 1;
          }
        }
      }
    }

    if (v10 >= v11)
    {
      v21 = 1;
      v22 = *(a6 + 6);
    }

    else
    {
      v20 = v11 - 1;
      v21 = (v11 - 1 + v10) / v10;
      if (v21 * v10 == v11)
      {
        v22 = a7[1];
      }

      else
      {
        v22 = v10 - (v21 * v10 - v11) / (v21 * v13) * v13;
        v34 = v22 * v21 - v11;
        if (v34)
        {
          if (v21 >= 2)
          {
            v40 = v10 + (v21 * v13 - v13 + v20 - (v21 - 1) * v10) / (v21 * v13 - v13) * v13;
            v41 = v40 * (v21 - 1) - v11;
            if (v41 >= v34 || (v22 = v10 + (v21 * v13 - v13 + v20 - (v21 - 1) * v10) / (v21 * v13 - v13) * v13, v34 = v40 * (v21 - 1) - v11, --v21, v41))
            {
              v37 = v10 > v13;
              v42 = v10 - v13;
              if (v37 && (v42 + v20) / v42 * v42 - v11 < v34)
              {
                v22 = v42;
                v21 = (v42 + v20) / v42;
              }
            }
          }

          else
          {
            v21 = 1;
          }
        }
      }
    }

    v23 = a6[3];
    v53 = a6[2];
    v54 = v23;
    v24 = a6[5];
    v55 = a6[4];
    v56 = v24;
    v25 = a6[1];
    v51 = *a6;
    v52 = v25;
    if (v11 && v12)
    {
      v26 = 0;
      v27 = (v15 - 1) * v16;
      v28 = (v21 - 1) * v22;
      v45 = v22;
      v46 = v11;
      v44 = v28;
      while (2)
      {
        v29 = 0;
        *(&v55 + 1) = *(a6 + 9) + v26;
        v30 = v11 - v26;
        if (v26 < v28)
        {
          v30 = v22;
        }

        *(&v52 + 1) = *(a6 + 3) + v26;
        *&v54 = v30;
        v31 = v12;
        do
        {
          *&v55 = v29 + *(a6 + 8);
          if (v29 >= v27)
          {
            v32 = v31;
          }

          else
          {
            v32 = v16;
          }

          *&v52 = v29 + *(a6 + 2);
          *(&v53 + 1) = v32;
          result = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, &v51);
          if (result)
          {
            if (v29 | v26)
            {
              v43 = result;
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              return v43;
            }

            return result;
          }

          v29 += v16;
          v31 -= v16;
        }

        while (v29 < v12);
        result = 0;
        v22 = v45;
        v11 = v46;
        v26 += v45;
        v28 = v44;
        if (v26 < v46)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 176);
    v18 = *(a1 + 192);

    return v17(v18, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_23995A480(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, int64x2_t *a6)
{
  v537 = *MEMORY[0x277D85DE8];
  v6 = &a6[2].i64[1];
  v7 = *(a6 + 40);
  v473 = v7;
  if (a6[3].i64[0])
  {
    v8 = v7.i64[0] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v445 = v7.i64[0];
  v9 = *(a1 + *MEMORY[0x277CD7350]);
  v416 = a6[1];
  v450 = a6[4];
  v10 = *(a1 + 312);
  v417 = *(a1 + 360);
  v465 = *(a1 + 368);
  if (*(a1 + 320) > 1 || v10 < 1)
  {
    v13 = a6[3].i64[0];
    v14 = *(a1 + *MEMORY[0x277CD7350]);
    v408 = *(a1 + 312);
    MEMORY[0x23EE7BAC0](v477, a3, a5);
    MPSDevice::GetPixelInfo(v14, MTLPixelFormatRGBA32Float, MPSImageFeatureChannelFormatNone);
    v15 = objc_alloc_init(MEMORY[0x277CD7058]);
    v18 = objc_msgSend_textureType(a5, v16, v17);
    objc_msgSend_setTextureType_(v15, v19, v18);
    objc_msgSend_setPixelFormat_(v15, v20, 125);
    objc_msgSend_setWidth_(v15, v21, *v6);
    objc_msgSend_setHeight_(v15, v22, a6[3].i64[0]);
    v23 = (*(*v14 + 32))(v14);
    objc_msgSend_setStorageMode_(v15, v24, v23);
    objc_msgSend_setUsage_(v15, v25, 3);
    v406 = (v408 - 2);
    if (v408 < 2)
    {
      v404 = 0;
      CompressedTempTexture = a5;
      v27 = v416;
    }

    else
    {
      CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
      v404 = MPSAutoCache::GetCompressedTempTexture();
      v27 = 0uLL;
    }

    v472 = v27;

    if (v408 < 1)
    {
LABEL_315:
      MPSAutoCache::~MPSAutoCache(v477);
      return 0;
    }

    v44 = 0;
    v402 = (v13 + 1) >> 1;
    v403 = v445 - 1;
    v401 = vmovn_s64(v473);
    v399 = &v479;
    v45 = vmovn_s64(v450);
    v400 = (v13 + 7) >> 3;
    while (1)
    {
      v470 = a4;
      a4 = CompressedTempTexture;
      v49 = &v417[8 * v44];
      v50 = *(v49 + 2);
      v467 = v45;
      if (v50 > 3)
      {
        if ((v50 - 4) >= 6)
        {
          goto LABEL_32;
        }

        v474 = v44;
        v432 = *(v49 + 2);
        v55 = (v465 + 4 * *v49);
        v459 = *(a1 + 480);
        v56 = *(a1 + 488);
        v451 = *(a1 + 288);
        v438 = *(a1 + 292);
        v441 = *(a1 + 296);
        v446 = *(a1 + 300);
        v57 = *(a1 + 312);
        v59 = *(a1 + 336);
        v58 = *(a1 + 340);
        v424 = *(a1 + 408);
        v410 = *(a1 + 416);
        v412 = *(a1 + 376);
        v455 = *v55;
        *&v60 = -1;
        *(&v60 + 1) = -1;
        v488 = v60;
        v489 = v60;
        *&v487[8] = v60;
        *&v60 = *(a1 + 348);
        v61.i64[0] = v60;
        v61.i64[1] = DWORD1(v60);
        *&v486[8] = vextq_s8(v61, v61, 8uLL);
        v62 = *(a1 + 356);
        *v486 = v57;
        *v487 = v62;
        MPSLibrary::CreateUberShaderKey();
        PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
        v64 = v55[5];
        v67 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v65, v66, 0, 0, 0, 0, 0);
        v68 = v67;
        if (v67 <= 1)
        {
          v69 = 1;
        }

        else
        {
          v69 = v67;
        }

        v70 = MPSIsTextureTwiddled();
        if (v68 <= 1)
        {
          v72 = 1;
        }

        else
        {
          v72 = v69 >> 1;
        }

        if (v68 > 7)
        {
          v73 = v70;
        }

        else
        {
          v73 = 0;
        }

        v74 = (v72 + v403) / v72;
        if ((v69 & 7) != 0)
        {
          v418 = 2;
          v421 = v402;
          v77 = v69 >> 1;
        }

        else
        {
          v75 = v73 == 0;
          if (v73)
          {
            v74 = ((v69 >> 3) + v403) / (v69 >> 3);
            v76 = v400;
          }

          else
          {
            v76 = v402;
          }

          if (v73)
          {
            v77 = v69 >> 3;
          }

          else
          {
            v77 = v69 >> 1;
          }

          v78 = 2;
          if (!v75)
          {
            v78 = 8;
          }

          v418 = v78;
          v421 = v76;
        }

        v80 = v459 == 1 || v59 > 3;
        v82 = v56 != 1 && v58 < 4;
        if (!v44)
        {
          v83 = v64 | 0x10;
          if (v80)
          {
            v83 = v64;
          }

          if (v459 == 2)
          {
            v64 = v83;
          }

          if (!v80 && !v82)
          {
            v64 |= 0x20u;
          }
        }

        if (v44 == v57 - 1 && v58 <= 3)
        {
          v84 = !v80;
          if (v56 == 1)
          {
            v84 = 0;
          }

          if (v84)
          {
            if (v56 == 2)
            {
              v64 |= 0x40u;
            }
          }

          else
          {
            v64 |= 0x80u;
          }
        }

        objc_msgSend_setComputePipelineState_(a2, v71, PipelineStateForMPSKey);
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseMPSKey();
        objc_msgSend_setTexture_atIndex_(a2, v85, v470, 0);
        objc_msgSend_setTexture_atIndex_(a2, v86, CompressedTempTexture, 1);
        *&v88 = __PAIR64__(v438, v451);
        *(&v88 + 1) = __PAIR64__(v446, v441);
        v89 = vmovn_s64(v472);
        if ((v432 & 0xFFFFFFFD) == 4)
        {
          *v486 = v88;
          *&v486[18] = v467.i16[2];
          *&v486[16] = v467.i16[0];
          *&v486[22] = v89.i16[2];
          *&v486[20] = v89.i16[0];
          *&v487[2] = v401.i16[2];
          *v487 = v401.i16[0];
          *&v487[4] = v64;
          *&v487[8] = v410;
          *&v487[16] = v44;
          v90 = v412 + 4 * v455;
          DWORD1(v488) = *v90;
          LODWORD(v488) = *(v90 + 4);
          *(&v488 + 1) = *(v90 + 8);
          *&v489 = *(v90 + 16);
          objc_msgSend_setBytes_length_atIndex_(a2, v87, v486, 80, 0);
        }

        else
        {
          switch(v432)
          {
            case 5:
              *v486 = v88;
              *&v486[18] = v467.i16[2];
              *&v486[16] = v467.i16[0];
              *&v486[22] = v89.i16[2];
              *&v486[20] = v89.i16[0];
              *&v487[2] = v401.i16[2];
              *v487 = v401.i16[0];
              *&v487[4] = v64;
              *&v487[8] = v410;
              *&v487[16] = v44;
              v488 = *(v412 + 4 * v455);
              objc_msgSend_setBytes_length_atIndex_(a2, v87, v486, 64, 0);
              break;
            case 9:
              *v486 = v88;
              *&v486[18] = v467.i16[2];
              *&v486[16] = v467.i16[0];
              *&v486[22] = v89.i16[2];
              *&v486[20] = v89.i16[0];
              *&v487[2] = v401.i16[2];
              *v487 = v401.i16[0];
              *&v487[4] = v64;
              *&v487[8] = v410;
              *&v487[16] = v44;
              v176 = (v412 + 4 * v455);
              v488 = *v176;
              v489 = v176[1];
              *&v487[12] = v455 + 8;
              objc_msgSend_setBytes_length_atIndex_(a2, v87, v486, 80, 0);
              break;
            case 8:
              *v486 = v88;
              *&v486[18] = v467.i16[2];
              *&v486[16] = v467.i16[0];
              *&v486[22] = v89.i16[2];
              *&v486[20] = v89.i16[0];
              *&v487[2] = v401.i16[2];
              *v487 = v401.i16[0];
              *&v487[4] = v64;
              *&v487[8] = v410;
              *&v487[16] = v44;
              *&v487[12] = v455;
              v175 = v412 + 4 * v455;
              LODWORD(v488) = *v175;
              *(&v488 + 4) = *(v175 + 4);
              HIDWORD(v488) = *(v175 + 12);
              v489 = *(v175 + 16);
              v490 = *(v175 + 32);
              v491 = *(v175 + 48);
              LODWORD(v492) = *(v175 + 64);
              objc_msgSend_setBytes_length_atIndex_(a2, v87, v486, 128, 0);
              break;
            case 7:
              *v486 = v88;
              *&v486[18] = v467.i16[2];
              *&v486[16] = v467.i16[0];
              *&v486[22] = v89.i16[2];
              *&v486[20] = v89.i16[0];
              *&v487[2] = v401.i16[2];
              *v487 = v401.i16[0];
              *&v487[4] = v64;
              *&v487[8] = v410;
              *&v487[16] = v44;
              *&v487[12] = v455;
              v91 = v412 + 4 * v455;
              v488 = *v91;
              v489 = *(v91 + 16);
              *&v490 = *(v91 + 32);
              objc_msgSend_setBytes_length_atIndex_(a2, v87, v486, 96, 0);
              break;
          }
        }

        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v178, Sampler, 0);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v179, v424, 0, 3);
        *v486 = v74;
        *&v486[8] = v421;
        *&v486[16] = 1;
        *v526 = v77;
        *&v526[8] = v418;
        *&v526[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v180, v486, v526);
        goto LABEL_31;
      }

      if (v50 == 1)
      {
        break;
      }

      if (v50 == 2)
      {
        v127 = (v465 + 4 * *v49);
        v431 = *(a1 + 480);
        v128 = *(a1 + 488);
        v448 = *(a1 + 288);
        v433 = *(a1 + 292);
        v439 = *(a1 + 296);
        v443 = *(a1 + 300);
        v429 = *(a1 + 312);
        v129 = *(a1 + 340);
        v426 = *(a1 + 336);
        v130 = *(a1 + 384);
        v131 = *(a1 + 416);
        v419 = *(a1 + 408);
        v132 = v127[3];
        *(&v529 + 1) = v132;
        *&v529 = 1.0 / v132;
        *(&v529 + 2) = 0.5 / v132;
        *(&v529 + 3) = (v132 - 1) / v132;
        v453 = *(v130 + 8 * v127[4]);
        if (a3 && (objc_msgSend_retainedReferences(a3, v42, v43) & 1) == 0)
        {
          v133 = v453;
          *&v478 = MEMORY[0x277D85DD0];
          *(&v478 + 1) = 3221225472;
          v479 = sub_239963ED0;
          v480 = &unk_278AC37A8;
          v481 = v453;
          objc_msgSend_addCompletedHandler_(a3, v134, &v478);
        }

        *&v210 = -1;
        *(&v210 + 1) = -1;
        *&v487[8] = v210;
        v488 = v210;
        v489 = v210;
        v211 = *(a1 + 312);
        *&v210 = *(a1 + 348);
        v212.i64[0] = v210;
        v212.i64[1] = DWORD1(v210);
        *&v486[8] = vextq_s8(v212, v212, 8uLL);
        v213 = *(a1 + 356);
        *v486 = v211;
        *v487 = v213;
        MPSLibrary::CreateUberShaderKey();
        v214 = MPSLibrary::GetPipelineStateForMPSKey();
        v215 = v127[5];
        v218 = objc_msgSend_threadExecutionWidth(v214, v216, v217, 0, 0, 0, 0, 0);
        v219 = v218;
        if (v218 <= 1)
        {
          v220 = 1;
        }

        else
        {
          v220 = v218;
        }

        v221 = MPSIsTextureTwiddled();
        v223 = v131;
        v224 = v220 >> 1;
        if (v219 <= 1)
        {
          v225 = 1;
        }

        else
        {
          v225 = v220 >> 1;
        }

        if (v219 > 7)
        {
          v226 = v221;
        }

        else
        {
          v226 = 0;
        }

        v227 = (v225 + v403) / v225;
        if ((v220 & 7) != 0)
        {
          v230 = v402;
          v231 = 2;
        }

        else
        {
          v228 = v220 >> 3;
          v229 = v226 == 0;
          if (v226)
          {
            v227 = ((v220 >> 3) + v403) / (v220 >> 3);
            v230 = v400;
          }

          else
          {
            v230 = v402;
          }

          if (v226)
          {
            v224 = v228;
          }

          v231 = 2;
          if (!v229)
          {
            v231 = 8;
          }
        }

        v414 = v231;
        v233 = v431 == 1 || v426 > 3;
        v235 = v128 != 1 && v129 < 4;
        if (!v44)
        {
          v236 = v215 | 0x10;
          if (v233)
          {
            v236 = v215;
          }

          if (v431 == 2)
          {
            v215 = v236;
          }

          if (!v233 && !v235)
          {
            v215 |= 0x20u;
          }
        }

        if (v44 == v429 - 1 && v129 <= 3)
        {
          v237 = !v233;
          if (v128 == 1)
          {
            v237 = 0;
          }

          if (v237)
          {
            if (v128 == 2)
            {
              v215 |= 0x40u;
            }
          }

          else
          {
            v215 |= 0x80u;
          }
        }

        *&v238 = __PAIR64__(v433, v448);
        *(&v238 + 1) = __PAIR64__(v443, v439);
        v239 = vmovn_s64(v472);
        *v526 = v238;
        *&v526[18] = v467.i16[2];
        *&v526[16] = v467.i16[0];
        *&v526[22] = v239.i16[2];
        *&v526[20] = v239.i16[0];
        WORD1(v527) = v401.i16[2];
        LOWORD(v527) = v401.i16[0];
        HIDWORD(v527) = v215;
        *&v528 = v223;
        DWORD2(v528) = v44;
        objc_msgSend_setComputePipelineState_(a2, v222, v214);
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseMPSKey();
        objc_msgSend_setTexture_atIndex_(a2, v240, v470, 0);
        objc_msgSend_setTexture_atIndex_(a2, v241, a4, 1);
        objc_msgSend_setTexture_atIndex_(a2, v242, v453, 2);
        v243 = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v244, v243, 0);
        v245 = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v246, v245, 1);
        objc_msgSend_setBytes_length_atIndex_(a2, v247, v526, 64, 0);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v248, v419, 0, 3);
        *v486 = v227;
        *&v486[8] = v230;
        *&v486[16] = 1;
        v535.i64[0] = v224;
        v535.i64[1] = v414;
        *&v536 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v249, v486, &v535);
        goto LABEL_32;
      }

      if (v50 == 3)
      {
        v474 = v44;
        v531 = 0;
        v532 = 0;
        v533 = 0;
        v51 = *(v49 + 3);
        if (v51 <= 0)
        {
          v52 = 0;
          v53 = a1;
        }

        else
        {
          v52 = v465 + 4 * *v49;
          v531 = v52;
          v53 = a1;
          if (v51 != 1)
          {
            v532 = v465 + 4 * v49[1];
            if (v51 > 2)
            {
              v533 = v465 + 4 * v49[2];
              if (v51 == 3)
              {
                v54 = 0;
              }

              else
              {
                v54 = v465 + 4 * v49[3];
              }

              goto LABEL_161;
            }

LABEL_160:
            v54 = 0;
            v533 = 0;
LABEL_161:
            v135 = *(v53 + 480);
            v534 = v54;
            v136 = *(v53 + 488);
            v137 = v53 + 288;
            v138 = *(v53 + 288);
            v139 = *(v53 + 292);
            v141 = *(v53 + 296);
            v140 = *(v53 + 300);
            v142 = *(v53 + 312);
            v143 = *(v53 + 340);
            v440 = *(v53 + 336);
            v144 = (v53 + 360);
            v145 = v144[2];
            v146 = v144[4];
            v427 = v144[6];
            v460 = v144[7];
            if (v51 >= 4)
            {
              v147 = 4;
            }

            else
            {
              v147 = v51;
            }

            v535 = 0u;
            v536 = 0u;
            LODWORD(v499) = v147;
            v454 = v140;
            v457 = v138;
            v444 = v139;
            v449 = v141;
            if (v51 <= 0)
            {
              v413 = 0;
LABEL_178:
              v434 = 1;
            }

            else
            {
              v148 = 0;
              v149 = 0;
              v150 = 0;
LABEL_166:
              v151 = &v498 + v148;
              v152 = &v489 + 8 * v148 + 3;
              do
              {
                v153 = *(&v531 + v148);
                v154 = *v153;
                v155 = *(v153 + 2);
                *(v151 - 8) = v155;
                *(v151 - 4) = v153[2];
                if (v155 == 5)
                {
                  v149 = *(v146 + 8 * v153[3]);
                  *v151 = *(v153 + 3);
                  v535.i64[v148] = v149;
                  v150 = 1;
                  v8 = v147 - 1 == v148++;
                  if (!v8)
                  {
                    goto LABEL_166;
                  }

                  v413 = v149;
                  goto LABEL_176;
                }

                v156 = (v145 + 4 * v154);
                if (v155 > 4)
                {
                  v150 = 1;
                }

                *(v152 - 7) = *v156;
                *(v152 - 6) = v156[1];
                *(v152 - 5) = v156[2];
                *(v152 - 4) = v156[3];
                *(v152 - 3) = v156[4];
                *(v152 - 2) = v156[5];
                *(v152 - 1) = v156[6];
                *v152 = v156[7];
                v152 += 8;
                v535.i64[v148++] = 0;
                ++v151;
              }

              while (v147 != v148);
              v413 = v149;
              if (!v150)
              {
                goto LABEL_178;
              }

LABEL_176:
              v434 = 0;
            }

            *&v157 = -1;
            *(&v157 + 1) = -1;
            v529 = v157;
            v530 = v157;
            v528 = v157;
            *v526 = v142;
            *&v157 = *(v137 + 60);
            v158.i64[0] = v157;
            v158.i64[1] = DWORD1(v157);
            *&v526[8] = vextq_s8(v158, v158, 8uLL);
            v527 = *(v137 + 68);
            MPSLibrary::CreateUberShaderKey();
            v159 = MPSLibrary::GetPipelineStateForMPSKey();
            v160 = *(v52 + 8);
            v163 = objc_msgSend_threadExecutionWidth(v159, v161, v162, 0, 0, 0, 0, 0);
            v164 = v163;
            if (v163 <= 1)
            {
              v165 = 1;
            }

            else
            {
              v165 = v163;
            }

            v166 = MPSIsTextureTwiddled();
            if (v164 <= 1)
            {
              v168 = 1;
            }

            else
            {
              v168 = v165 >> 1;
            }

            if (v164 > 7)
            {
              v169 = v166;
            }

            else
            {
              v169 = 0;
            }

            v170 = (v168 + v403) / v168;
            if ((v165 & 7) != 0)
            {
              v420 = 2;
              v422 = v402;
              v173 = v165 >> 1;
            }

            else
            {
              v171 = v169 == 0;
              if (v169)
              {
                v170 = ((v165 >> 3) + v403) / (v165 >> 3);
                v172 = v400;
              }

              else
              {
                v172 = v402;
              }

              if (v169)
              {
                v173 = v165 >> 3;
              }

              else
              {
                v173 = v165 >> 1;
              }

              v174 = 2;
              if (!v171)
              {
                v174 = 8;
              }

              v420 = v174;
              v422 = v172;
            }

            LODWORD(v181) = v457;
            v183 = v135 == 1 || v440 > 3;
            v185 = v136 != 1 && v143 < 4;
            if (!v44)
            {
              v186 = v160 | 0x10;
              if (v183)
              {
                v186 = v160;
              }

              if (v135 == 2)
              {
                v160 = v186;
              }

              if (!v183 && !v185)
              {
                v160 |= 0x20u;
              }
            }

            if (v44 == v142 - 1 && v143 <= 3)
            {
              v187 = !v183;
              if (v136 == 1)
              {
                v187 = 0;
              }

              v188 = v460;
              if (v187)
              {
                if (v136 == 2)
                {
                  v160 |= 0x40u;
                }
              }

              else
              {
                v160 |= 0x80u;
              }
            }

            else
            {
              v188 = v460;
            }

            DWORD1(v181) = v444;
            *(&v181 + 1) = __PAIR64__(v454, v449);
            v189 = vmovn_s64(v472);
            *v486 = v181;
            *&v486[18] = v467.i16[2];
            *&v486[16] = v467.i16[0];
            *&v486[22] = v189.i16[2];
            *&v486[20] = v189.i16[0];
            *&v487[2] = v401.i16[2];
            *v487 = v401.i16[0];
            *&v487[4] = v160;
            *&v487[8] = v188;
            *&v487[16] = v44;
            objc_msgSend_setComputePipelineState_(a2, v167, v159);
            MPSLibrary::ReleaseComputeState();
            MPSLibrary::ReleaseMPSKey();
            objc_msgSend_setBytes_length_atIndex_(a2, v190, v486, 240, 0);
            objc_msgSend_setTexture_atIndex_(a2, v191, v470, 0);
            objc_msgSend_setTexture_atIndex_(a2, v192, CompressedTempTexture, 1);
            if (v434)
            {
              v194 = 3;
              goto LABEL_314;
            }

            v195 = v535.i64[0];
            if (a3)
            {
              if (v535.i64[0])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v193, v535.i64[0], 0, 1);
                if ((objc_msgSend_retainedReferences(a3, v196, v197) & 1) == 0)
                {
                  v199 = v195;
                  *&v478 = MEMORY[0x277D85DD0];
                  *(&v478 + 1) = 3221225472;
                  v479 = sub_239963EC8;
                  v480 = &unk_278AC37A8;
                  v481 = v195;
                  objc_msgSend_addCompletedHandler_(a3, v200, &v478);
                }
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v193, v413, 0, 1);
              }

              v251 = v535.i64[1];
              if (v535.i64[1])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v198, v535.i64[1], 0, 2);
                if ((objc_msgSend_retainedReferences(a3, v252, v253) & 1) == 0)
                {
                  v255 = v251;
                  *&v478 = MEMORY[0x277D85DD0];
                  *(&v478 + 1) = 3221225472;
                  v479 = sub_239963EC8;
                  v480 = &unk_278AC37A8;
                  v481 = v251;
                  objc_msgSend_addCompletedHandler_(a3, v256, &v478);
                }
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v198, v413, 0, 2);
              }

              v257 = v536;
              if (v536)
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v254, v536, 0, 3);
                if ((objc_msgSend_retainedReferences(a3, v258, v259) & 1) == 0)
                {
                  v261 = v257;
                  *&v478 = MEMORY[0x277D85DD0];
                  *(&v478 + 1) = 3221225472;
                  v479 = sub_239963EC8;
                  v480 = &unk_278AC37A8;
                  v481 = v257;
                  objc_msgSend_addCompletedHandler_(a3, v262, &v478);
                }
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v254, v413, 0, 3);
              }

              v263 = *(&v536 + 1);
              if (*(&v536 + 1))
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v260, *(&v536 + 1), 0, 4);
                if ((objc_msgSend_retainedReferences(a3, v264, v265) & 1) == 0)
                {
                  v266 = v263;
                  *&v478 = MEMORY[0x277D85DD0];
                  *(&v478 + 1) = 3221225472;
                  v479 = sub_239963EC8;
                  v480 = &unk_278AC37A8;
                  v481 = v263;
                  objc_msgSend_addCompletedHandler_(a3, v267, &v478);
                }

                goto LABEL_313;
              }

LABEL_312:
              objc_msgSend_setBuffer_offset_atIndex_(a2, v260, v413, 0, 4);
            }

            else
            {
              if (v535.i64[0])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v193, v535.i64[0], 0, 1);
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v193, v413, 0, 1);
              }

              if (v535.i64[1])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v250, v535.i64[1], 0, 2);
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v250, v413, 0, 2);
              }

              if (v536)
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v268, v536, 0, 3);
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v268, v413, 0, 3);
              }

              if (!*(&v536 + 1))
              {
                goto LABEL_312;
              }

              objc_msgSend_setBuffer_offset_atIndex_(a2, v260, *(&v536 + 1), 0, 4);
            }

LABEL_313:
            v194 = 5;
LABEL_314:
            v269 = MPSDevice::GetSampler();
            objc_msgSend_setSamplerState_atIndex_(a2, v270, v269, 0);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v271, v427, 0, v194);
            *v486 = v170;
            *&v486[8] = v422;
            *&v486[16] = 1;
            *v526 = v173;
            *&v526[8] = v420;
            *&v526[16] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v272, v486, v526);
LABEL_31:
            v44 = v474;
            goto LABEL_32;
          }
        }

        v532 = 0;
        goto LABEL_160;
      }

LABEL_32:
      v46 = v404;
      if (v44)
      {
        v46 = v470;
      }

      if (v44 == v406)
      {
        CompressedTempTexture = a5;
      }

      else
      {
        CompressedTempTexture = v46;
      }

      v47 = vdup_n_s32(v44 == v406);
      v48.i64[0] = v47.u32[0];
      v48.i64[1] = v47.u32[1];
      v472 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v48, 0x3FuLL)), v416, v472);
      ++v44;
      v45 = 0;
      if (v44 == v408)
      {
        goto LABEL_315;
      }
    }

    v474 = v44;
    v92 = (v465 + 4 * *v49);
    v93 = *(a1 + 480);
    v94 = *(a1 + 488);
    v442 = *(a1 + 288);
    v95 = *(a1 + 312);
    v97 = *(a1 + 336);
    v96 = *(a1 + 340);
    v456 = *(a1 + 376);
    v430 = *(a1 + 408);
    v447 = *(a1 + 416);
    v452 = *v92;
    *&v98 = -1;
    *(&v98 + 1) = -1;
    v488 = v98;
    v489 = v98;
    *&v487[8] = v98;
    *&v98 = *(a1 + 348);
    v99.i64[0] = v98;
    v99.i64[1] = DWORD1(v98);
    *&v486[8] = vextq_s8(v99, v99, 8uLL);
    v100 = *(a1 + 356);
    *v486 = v95;
    *v487 = v100;
    MPSLibrary::CreateUberShaderKey();
    v101 = MPSLibrary::GetPipelineStateForMPSKey();
    v102 = v92[1];
    v105 = objc_msgSend_threadExecutionWidth(v101, v103, v104, 0, 0, 0, 0, 0, v399);
    v106 = v105;
    if (v105 <= 1)
    {
      v107 = 1;
    }

    else
    {
      v107 = v105;
    }

    v108 = MPSIsTextureTwiddled();
    if (v106 <= 1)
    {
      v110 = 1;
    }

    else
    {
      v110 = v107 >> 1;
    }

    v111 = (v110 + v403) / v110;
    if (v106 > 7)
    {
      v112 = v108;
    }

    else
    {
      v112 = 0;
    }

    v113 = (v107 & 7) != 0 || v112 == 0;
    if (v113)
    {
      v114 = v111;
    }

    else
    {
      v114 = ((v107 >> 3) + v403) / (v107 >> 3);
    }

    v115 = v402;
    if (!v113)
    {
      v115 = v400;
    }

    v425 = v115;
    if (v113)
    {
      v116 = v107 >> 1;
    }

    else
    {
      v116 = v107 >> 3;
    }

    v117 = 2;
    if (!v113)
    {
      v117 = 8;
    }

    v428 = v117;
    v119 = v93 == 1 || v97 > 3;
    v121 = v94 != 1 && v96 < 4;
    if (!v474)
    {
      v122 = v102 | 0x10;
      if (v119)
      {
        v122 = v102;
      }

      if (v93 == 2)
      {
        v102 = v122;
      }

      if (!v119 && !v121)
      {
        v102 |= 0x20u;
      }
    }

    if (v474 == v95 - 1 && v96 <= 3)
    {
      v123 = !v119;
      if (v94 == 1)
      {
        v123 = 0;
      }

      v124 = v456;
      v125 = v452;
      v126 = v447;
      if (v123)
      {
        if (v94 == 2)
        {
          v102 |= 0x40u;
        }
      }

      else
      {
        v102 |= 0x80u;
      }
    }

    else
    {
      v124 = v456;
      v125 = v452;
      v126 = v447;
    }

    v201 = vmovn_s64(v472);
    *v486 = v442;
    *&v486[18] = v467.i16[2];
    *&v486[16] = v467.i16[0];
    *&v486[22] = v201.i16[2];
    *&v486[20] = v201.i16[0];
    *&v487[2] = v401.i16[2];
    *v487 = v401.i16[0];
    *&v487[4] = v102;
    *&v487[8] = v126;
    *&v487[16] = v474;
    v202 = (v124 + 4 * v125);
    v488 = *v202;
    v489 = v202[1];
    v490 = v202[2];
    objc_msgSend_setComputePipelineState_(a2, v109, v101);
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_setTexture_atIndex_(a2, v203, v470, 0);
    objc_msgSend_setTexture_atIndex_(a2, v204, a4, 1);
    objc_msgSend_setBytes_length_atIndex_(a2, v205, v486, 96, 0);
    v206 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v207, v206, 0);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v208, v430, 0, 3);
    *v526 = v114;
    *&v526[8] = v425;
    *&v526[16] = 1;
    *&v478 = v116;
    *(&v478 + 1) = v428;
    v479 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v209, v526, &v478);
    goto LABEL_31;
  }

  v28 = a6[2].i64[0];
  v29 = a6[3].i64[1];
  v30 = a6[5].i64[0];
  v31 = *(a6->i64[1] + 4);
  v32 = *(a1 + 480);
  v33 = *(a1 + 488);
  v437 = *(a1 + 288);
  v34 = *(a1 + 336);
  v35 = *(a1 + 340);
  v36 = *(a1 + 344);
  v37 = *(a1 + 384);
  v38 = *(a1 + 312);
  if (v10 != 2 || v36 | (*(a1 + 352) >> 13))
  {
    if (v10 != 3 || (v36 | (*(a1 + 352) >> 13)) != 0)
    {
      v40 = *(a1 + 360);
      if (v10 == 5 && (v36 | (*(a1 + 352) >> 13)) == 0)
      {
        v41 = *(v417 + 2);
        if (v41 == 3)
        {
          v40 = *(a1 + 360);
          if (*(v417 + 6) == 1 && *(v417 + 10) == 3 && *(v417 + 14) == 1 && *(v417 + 18) == 2 && (*(v465 + 4 * v417[32] + 4) - 5) >= 0xFFFFFFFE)
          {
            *v486 = a6[1];
            *v487 = v7;
            *&v486[16] = v28;
            *&v487[16] = v29;
            v535 = v450;
            *&v536 = v30;
            sub_2399632FC(a1, a2, a3, a4, a5, v486, v535.i64, v31, 1u);
            return 0;
          }
        }

        else
        {
          v40 = *(a1 + 360);
          if (v41 == 2 && *(v417 + 6) == 1 && *(v417 + 10) == 3 && *(v417 + 14) == 1 && *(v417 + 18) == 3 && (*(v465 + 4 * *v417 + 4) - 5) >= 0xFFFFFFFE)
          {
            *v486 = a6[1];
            *v487 = v7;
            *&v486[16] = v28;
            *&v487[16] = v29;
            v535 = v450;
            *&v536 = v30;
            sub_2399632FC(a1, a2, a3, a4, a5, v486, v535.i64, v31, 0);
            return 0;
          }
        }
      }

      goto LABEL_331;
    }

    v40 = *(a1 + 360);
    if (*(v417 + 2) != 3 || *(v417 + 6) != 1 || *(v417 + 10) != 3)
    {
      goto LABEL_331;
    }

    v273 = *(v417 + 3);
    v274 = v465 + 8;
    if (v273 < 1)
    {
      v278 = 1;
    }

    else
    {
      v275 = 1;
      do
      {
        v276 = *v40++;
        v277 = *(v274 + 4 * v276);
        v278 = v277 == 3;
        if (v275 >= v273)
        {
          break;
        }

        ++v275;
      }

      while (v277 == 3);
    }

    v436 = *(a1 + 416);
    v333 = *(v417 + 11);
    if (v333 >= 1 && v278)
    {
      v335 = 1;
      v336 = v417 + 16;
      do
      {
        v337 = *v336++;
        v338 = *(v274 + 4 * v337);
        if (v335 >= v333)
        {
          break;
        }

        ++v335;
      }

      while (v338 == 3);
    }

    v339 = a6[3].i64[0];
    v462 = *(a1 + 408);
    v469 = *(a1 + 376);
    v341 = v32 == 1 || v34 > 3;
    if (v341)
    {
      v342 = 0;
    }

    else
    {
      v342 = 16;
    }

    if (v32 != 2)
    {
      v342 = 0;
    }

    if (v35 >= 4 || v33 == 1)
    {
      v342 |= 0x20u;
    }

    if (v341)
    {
      v344 = 0;
    }

    else
    {
      v344 = v342;
    }

    MPSIsTextureTwiddled();
    v345 = v33;
    v346 = v35;
    *&v347 = -1;
    *(&v347 + 1) = -1;
    *&v487[8] = v347;
    v488 = v347;
    v489 = v347;
    v348 = *(a1 + 312);
    *&v347 = *(a1 + 348);
    v349.i64[0] = v347;
    v349.i64[1] = DWORD1(v347);
    *&v486[8] = vextq_s8(v349, v349, 8uLL);
    v350 = *(a1 + 356);
    *v486 = v348;
    *v487 = v350;
    MPSLibrary::CreateUberShaderKey();
    v351 = MPSLibrary::GetPipelineStateForMPSKey();
    v354 = objc_msgSend_threadExecutionWidth(v351, v352, v353, 0, 0, 0, 0, 0);
    v355 = v354;
    if (v354 <= 1)
    {
      v356 = 1;
    }

    else
    {
      v356 = v354;
    }

    v357 = v356 >> 1;
    if (v354 <= 1)
    {
      v358 = 4;
    }

    else
    {
      v358 = 4 * (v356 >> 1);
    }

    v359 = MPSIsTextureTwiddled();
    if (v355 > 7)
    {
      v361 = v359;
    }

    else
    {
      v361 = 0;
    }

    v362 = (v356 & 7) != 0 || v361 == 0;
    v363 = v356 >> 3;
    if (v362)
    {
      v364 = (v358 + v445 - 1) / v358;
    }

    else
    {
      v364 = (v357 + v445 - 1) / v357;
    }

    if (v362)
    {
      v365 = (v339 + 1) >> 1;
    }

    else
    {
      v365 = (v339 + 7) >> 3;
    }

    if (v362)
    {
      v366 = v357;
    }

    else
    {
      v366 = v363;
    }

    if (v362)
    {
      v367 = 2;
    }

    else
    {
      v367 = 8;
    }

    if (v346 <= 3)
    {
      v368 = !v341;
      if (v345 == 1)
      {
        v368 = 0;
      }

      if (v368)
      {
        if (v345 == 2)
        {
          v344 |= 0x40u;
        }
      }

      else
      {
        v344 |= 0x80u;
      }
    }

    v369 = vmovn_s64(v450);
    v370 = vmovn_s64(v416);
    *v486 = v437;
    v371 = vmovn_s64(v473);
    *&v486[18] = v369.i16[2];
    *&v486[16] = v369.i16[0];
    *&v486[22] = v370.i16[2];
    *&v486[20] = v370.i16[0];
    *&v487[2] = v371.i16[2];
    *v487 = v371.i16[0];
    *&v487[4] = v344;
    *&v487[8] = v436;
    *&v487[12] = 0;
    objc_msgSend_setComputePipelineState_(a2, v360, v351);
    v372 = *(v417 + 3);
    v373 = *(v417 + 11);
    if (v372 <= 0)
    {
      v374 = 0;
    }

    else
    {
      v374 = (v465 + 4 * *v417);
    }

    if (v373 < 1)
    {
      v376 = 0;
      v375 = v465;
    }

    else
    {
      v375 = v465;
      v376 = (v465 + 4 * v417[16]);
    }

    if (v372 <= 1)
    {
      v377 = 0;
    }

    else
    {
      v377 = (v375 + 4 * v417[1]);
    }

    if (v373 < 2)
    {
      v378 = 0;
    }

    else
    {
      v378 = (v375 + 4 * v417[17]);
    }

    if (v372 <= 2)
    {
      v379 = 0;
    }

    else
    {
      v379 = (v375 + 4 * v417[2]);
    }

    if (v373 < 3)
    {
      v380 = 0;
    }

    else
    {
      v380 = (v375 + 4 * v417[18]);
    }

    if (v372 <= 3)
    {
      v381 = 0;
    }

    else
    {
      v381 = (v375 + 4 * v417[3]);
    }

    if (v373 < 4)
    {
      v382 = 0;
    }

    else
    {
      v382 = (v375 + 4 * v417[19]);
    }

    v524 = *(v417 + 3);
    v525 = v373;
    if (v372 < 1)
    {
      v488 = xmmword_239988C80;
      v489 = unk_239988C90;
    }

    else
    {
      v383 = (v469 + 4 * *v374);
      v504 = v374[2];
      v488 = *v383;
      v489 = v383[1];
      if (v372 >= 2)
      {
        v384 = (v469 + 4 * *v377);
        v505 = v377[2];
        v490 = *v384;
        v491 = v384[1];
        if (v372 >= 3)
        {
          v385 = (v469 + 4 * *v379);
          v506 = v379[2];
          v492 = *v385;
          v493 = v385[1];
          if (v372 > 3)
          {
            v386 = (v469 + 4 * *v381);
            v507 = v381[2];
            v494 = *v386;
            v495 = v386[1];
            goto LABEL_493;
          }

LABEL_492:
          v494 = xmmword_239988C80;
          v495 = unk_239988C90;
LABEL_493:
          if (v373 < 1)
          {
            v496 = xmmword_239988C80;
            v497 = unk_239988C90;
          }

          else
          {
            v387 = (v469 + 4 * *v376);
            v508 = v376[2];
            v496 = *v387;
            v497 = v387[1];
            if (v373 >= 2)
            {
              v388 = (v469 + 4 * *v378);
              v509 = v378[2];
              v498 = *v388;
              v499 = v388[1];
              if (v373 >= 3)
              {
                v389 = (v469 + 4 * *v380);
                v510 = v380[2];
                v500 = *v389;
                v501 = v389[1];
                if (v373 > 3)
                {
                  v390 = (v469 + 4 * *v382);
                  v511 = v382[2];
                  v502 = *v390;
                  v503 = v390[1];
LABEL_502:
                  v391 = (v469 + 4 * *(v375 + 4 * v417[8]));
                  v512 = *v391;
                  v513 = v391[1];
                  v514 = v391[2];
                  v515 = v391[3];
                  v516 = v391[4];
                  v517 = v391[5];
                  v518 = v391[6];
                  v519 = v391[7];
                  v520 = v391[8];
                  v521 = v391[9];
                  v522 = v391[10];
                  v523 = v391[11];
                  MPSLibrary::ReleaseComputeState();
                  MPSLibrary::ReleaseMPSKey();
                  objc_msgSend_setTexture_atIndex_(a2, v392, a4, 0);
                  objc_msgSend_setTexture_atIndex_(a2, v393, a5, 1);
                  objc_msgSend_setBytes_length_atIndex_(a2, v394, v486, 400, 0);
                  objc_msgSend_setBuffer_offset_atIndex_(a2, v395, v462, 0, 3);
                  v396 = MPSDevice::GetSampler();
                  objc_msgSend_setSamplerState_atIndex_(a2, v397, v396, 0);
                  v535.i64[0] = v364;
                  v535.i64[1] = v365;
                  *&v536 = 1;
                  v531 = v366;
                  v532 = v367;
                  v533 = 1;
                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v398, &v535, &v531);
                  return 0;
                }

LABEL_501:
                v502 = xmmword_239988C80;
                v503 = unk_239988C90;
                goto LABEL_502;
              }

LABEL_500:
              v500 = xmmword_239988C80;
              v501 = unk_239988C90;
              goto LABEL_501;
            }
          }

          v498 = xmmword_239988C80;
          v499 = unk_239988C90;
          goto LABEL_500;
        }

LABEL_491:
        v492 = xmmword_239988C80;
        v493 = unk_239988C90;
        goto LABEL_492;
      }
    }

    v490 = xmmword_239988C80;
    v491 = unk_239988C90;
    goto LABEL_491;
  }

  v39 = *(v417 + 2);
  if (v39 == 1)
  {
    v40 = *(a1 + 360);
    if (*(v417 + 6) == 3)
    {
      *v486 = a6[1];
      *v487 = v7;
      *&v486[16] = v28;
      *&v487[16] = v29;
      v535 = v450;
      *&v536 = v30;
      sub_239962C58(a1, a2, a3, a4, a5, v486, v535.i64, 1u);
      return 0;
    }
  }

  else
  {
    v40 = *(a1 + 360);
    if (v39 == 3 && *(v417 + 6) == 1)
    {
      *v486 = a6[1];
      *v487 = v7;
      *&v486[16] = v28;
      *&v487[16] = v29;
      v535 = v450;
      *&v536 = v30;
      sub_239962C58(a1, a2, a3, a4, a5, v486, v535.i64, 0);
      return 0;
    }
  }

LABEL_331:
  v423 = *(a1 + 400);
  v407 = *(a1 + 480);
  v411 = *(a1 + 488);
  v415 = a6[3].i64[0];
  v435 = *(a1 + 416);
  v468 = 0;
  v471 = 0;
  v458 = 0;
  v279 = 0;
  v280 = 0;
  v461 = 0;
  v409 = *(a1 + 340);
  v485 = v409;
  v405 = v34;
  v484 = v34;
  v483 = v10;
  v281 = v40 + 4;
  v282 = 1;
  do
  {
    if (*v281 == 2)
    {
      v283 = v465 + 4 * *(v281 - 4);
      v284 = *(v283 + 4);
      v285 = ((1 << v284) & v279) != 0;
      if (v280)
      {
        v280 = -1;
      }

      else
      {
        v280 = *(v283 + 4);
      }

      v279 |= 1 << v284;
      objc_msgSend_setTexture_atIndex_(a2, v9, *(v37 + 8 * *(v283 + 16)), v284 + 1);
      if (v284 > 2)
      {
        if (v284 == 3)
        {
          v458 = *(v37 + 8 * *(v283 + 16));
        }

        else if (v284 == 4)
        {
          v461 = *(v37 + 8 * *(v283 + 16));
        }
      }

      else if (v284 == 1)
      {
        v468 = *(v37 + 8 * *(v283 + 16));
      }

      else if (v284 == 2)
      {
        v471 = *(v37 + 8 * *(v283 + 16));
      }
    }

    else
    {
      v285 = 0;
    }

    if (v282 >= v38)
    {
      break;
    }

    ++v282;
    v281 += 4;
  }

  while (!v285);
  if ((v279 & 2) != 0)
  {
    v286 = v458;
    if ((v279 & 4) != 0)
    {
LABEL_351:
      if ((v279 & 8) == 0)
      {
        goto LABEL_352;
      }

      goto LABEL_356;
    }
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(a2, v9, *v423, 2);
    v468 = *v423;
    v286 = v458;
    if ((v279 & 4) != 0)
    {
      goto LABEL_351;
    }
  }

  objc_msgSend_setTexture_atIndex_(a2, v9, v423[1], 3);
  v471 = v423[1];
  if ((v279 & 8) == 0)
  {
LABEL_352:
    objc_msgSend_setTexture_atIndex_(a2, v9, v423[2], 4);
    v286 = v423[2];
    if ((v279 & 0x10) != 0)
    {
      goto LABEL_358;
    }

    goto LABEL_357;
  }

LABEL_356:
  if ((v279 & 0x10) == 0)
  {
LABEL_357:
    objc_msgSend_setTexture_atIndex_(a2, v9, v423[3], 5);
    v461 = v423[3];
  }

LABEL_358:
  *&v287 = -1;
  *(&v287 + 1) = -1;
  *&v487[8] = v287;
  v488 = v287;
  v489 = v287;
  v288 = *(a1 + 312);
  *&v287 = *(a1 + 348);
  v289.i64[0] = v287;
  v289.i64[1] = DWORD1(v287);
  *&v486[8] = vextq_s8(v289, v289, 8uLL);
  v290 = *(a1 + 356);
  *v486 = v288;
  *v487 = v290;
  MPSLibrary::CreateUberShaderKey();
  v291 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v292, v291, 0, 0, 0, 0, 0);
  v295 = objc_msgSend_threadExecutionWidth(v291, v293, v294);
  v296 = v295;
  if (v295 <= 1)
  {
    v297 = 1;
  }

  else
  {
    v297 = v295;
  }

  v298 = v297 >> 1;
  if (v295 <= 1)
  {
    v299 = 4;
  }

  else
  {
    v299 = 4 * (v297 >> 1);
  }

  v300 = MPSIsTextureTwiddled();
  v301 = (v415 + 1) >> 1;
  if (v296 > 7)
  {
    v302 = v300;
  }

  else
  {
    v302 = 0;
  }

  v303 = 2;
  v304 = (v299 + v445 - 1) / v299;
  if (v297 & 7) == 0 && (v302)
  {
    v304 = (v298 + v445 - 1) / v298;
    v301 = (v415 + 7) >> 3;
    v298 = v297 >> 3;
    v303 = 8;
  }

  v306 = v407 == 1 || v405 > 3;
  if (v306)
  {
    v307 = 0;
  }

  else
  {
    v307 = 16;
  }

  if (v407 != 2)
  {
    v307 = 0;
  }

  if (v409 >= 4 || v411 == 1)
  {
    v307 |= 0x20u;
  }

  if (v306)
  {
    v307 = 0;
  }

  if (v409 <= 3)
  {
    v309 = !v306;
    if (v411 == 1)
    {
      v309 = 0;
    }

    if (v309)
    {
      if (v411 == 2)
      {
        v307 |= 0x40u;
      }
    }

    else
    {
      v307 |= 0x80u;
    }
  }

  v310 = vmovn_s64(v450);
  v311 = vmovn_s64(v416);
  v478 = v437;
  v312 = vmovn_s64(v473);
  WORD1(v479) = v310.i16[2];
  LOWORD(v479) = v310.i16[0];
  HIWORD(v479) = v311.i16[2];
  WORD2(v479) = v311.i16[0];
  WORD1(v480) = v312.i16[2];
  LOWORD(v480) = v312.i16[0];
  HIDWORD(v480) = v307;
  v481 = v435;
  v482 = 0;
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setTexture_atIndex_(a2, v313, a4, 0);
  objc_msgSend_setTexture_atIndex_(a2, v314, a5, 1);
  objc_msgSend_setBytes_length_atIndex_(a2, v315, &v478, 64, 0);
  v316 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v317, v316, 0);
  objc_msgSend_setBytes_length_atIndex_(a2, v318, *(a1 + 360), 16 * *(a1 + 312), 1);
  objc_msgSend_setBytes_length_atIndex_(a2, v319, *(a1 + 368), 4 * *(a1 + 304), 2);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v320, *(a1 + 408), 0, 3);
  if (a3 && (objc_msgSend_retainedReferences(a3, v321, v322) & 1) == 0)
  {
    v323 = *(a1 + 408);
    v324 = v468;
    v325 = v471;
    v326 = v286;
    v327 = v461;
    *v526 = MEMORY[0x277D85DD0];
    *&v526[8] = 3221225472;
    *&v526[16] = sub_239963E5C;
    v527 = &unk_278AF68E8;
    *&v528 = a1;
    *(&v528 + 1) = v468;
    *&v529 = v471;
    *(&v529 + 1) = v286;
    *&v530 = v461;
    objc_msgSend_addCompletedHandler_(a3, v328, v526);
  }

  v329 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v330, v329, 1);
  *v486 = v304;
  *&v486[8] = v301;
  *&v486[16] = 1;
  v535.i64[0] = v298;
  v535.i64[1] = v303;
  *&v536 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v331, v486, &v535);
  return 0;
}