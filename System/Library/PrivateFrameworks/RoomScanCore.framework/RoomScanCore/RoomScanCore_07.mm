void sub_26223C04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_26223C0EC(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_26223C190(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void *sub_26223C234(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_26223C298(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        sub_26223C234(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_26223C31C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_26223C234((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_26223C36C(float32x4_t *a1, char a2, double a3)
{
  if (a1[1].i64[0] >= 3uLL)
  {
    v4 = a1->i64[1];
    if (a2)
    {
      while (v4 != a1)
      {
        v5 = *(v4 + 8);
        if (*(v5 + 8) == a1)
        {
          break;
        }

        v6 = *(v4 + 16);
        v7 = vsubq_f32(*(v5 + 16), v6).u64[0];
        v6.f32[0] = *&a3 - v6.f32[0];
        v8 = *(&a3 + 1) - COERCE_FLOAT(HIDWORD(*(v4 + 16)));
        v9 = vmuls_lane_f32(v8, v7, 1) + (v7.f32[0] * v6.f32[0]);
        v10 = sqrtf(vmuls_lane_f32(v7.f32[1], v7, 1) + (v7.f32[0] * v7.f32[0]));
        v11 = sqrtf((v8 * v8) + (v6.f32[0] * v6.f32[0]));
        v13 = v11 < v10 && ((v11 * v10) + -0.001) < v9 && v9 < ((v11 * v10) + 0.001);
        v4 = *(v4 + 8);
        if (v13)
        {
          return 1;
        }
      }
    }

    else
    {
      while (a1 != v4)
      {
        a1 = a1->i64[0];
        if (a1->i64[0] == v4)
        {
          break;
        }

        v14 = a1[1];
        v15 = vsubq_f32(*(a1->i64[0] + 16), v14).u64[0];
        v14.f32[0] = *&a3 - v14.f32[0];
        v16 = *(&a3 + 1) - COERCE_FLOAT(HIDWORD(a1[1].i64[0]));
        v17 = vmuls_lane_f32(v16, v15, 1) + (v15.f32[0] * v14.f32[0]);
        v18 = sqrtf(vmuls_lane_f32(v15.f32[1], v15, 1) + (v15.f32[0] * v15.f32[0]));
        v19 = sqrtf((v16 * v16) + (v14.f32[0] * v14.f32[0]));
        if (v19 < v18 && ((v19 * v18) + -0.001) < v17 && v17 < ((v19 * v18) + 0.001))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_26223C48C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_2621CBEB0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_2621CBEC8(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_26223C55C(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

float *sub_26223C878(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v130 = *MEMORY[0x277D85DE8];
  v105 = a2;
  v108 = a3;
  v110 = a4;
  v106 = a5;
  v13 = a6;
  v107 = a7;
  if (a1)
  {
    v125 = 8210;
    v126 = 0;
    v111 = v13;
    kdebug_trace();
    v112 = objc_opt_new();
    v14 = objc_opt_new();
    v109 = objc_opt_new();
    v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
    v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v23 = objc_msgSend_walls(v13, v21, v22);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v121, v129, 16);
    if (v25)
    {
      v26 = *v122;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v122 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v121 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_addObject_(v20, v29, v28);
          }

          else
          {
            objc_msgSend_addObject_(v17, v29, v28);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v121, v129, 16);
      }

      while (v25);
    }

    sub_2622AE900(v111, v17);
    v31 = v110;
    if (v110)
    {
      v31 = v110[14];
    }

    v32 = v31;
    v35 = objc_msgSend_count(v32, v33, v34) == 0;

    if (v35)
    {
      sub_26224BDFC(a1 + 440, v36, v37);
      sub_26224BDFC(a1 + 504, v75, v76);
    }

    else
    {
      v38 = objc_msgSend_walls(v111, v36, v37);
      v104 = objc_msgSend_copy(v38, v39, v40);

      if (v111)
      {
        v44 = v111[3];
        v43 = v111[4];
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v45 = objc_msgSend_copy(v107, v41, v42);
      v46.n128_u32[0] = v44;
      v47.n128_u32[0] = v43;
      sub_2622CB354(v45, v46, v47);
      kdebug_trace();
      if (v110)
      {
        v48 = v110[4];
        v49 = (v110[5] - v48) >> 4;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      sub_2622499A4(a1 + 8, v104, v108, v48, v49);
      if (v110)
      {
        v50 = v110[4];
        v51 = (v110[5] - v50) >> 4;
      }

      else
      {
        v50 = 0;
        v51 = 0;
      }

      sub_2622499A4(a1 + 224, v45, v108, v50, v51);
      kdebug_trace();
      kdebug_trace();
      v52 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v53 = sub_26220AAF4(*(a1 + 568), v105, *(a1 + 48), *(a1 + 264), v106, 1);

      kdebug_trace();
      kdebug_trace();
      v54 = objc_opt_new();
      v56 = objc_msgSend_objectForKeyedSubscript_(v53, v55, @"windows");
      objc_msgSend_addObjectsFromArray_(v54, v57, v56);

      v59 = objc_msgSend_objectForKeyedSubscript_(v53, v58, @"doors");
      objc_msgSend_addObjectsFromArray_(v54, v60, v59);

      v61 = *(a1 + 48);
      v64 = objc_msgSend_walls(v111, v62, v63);
      sub_26224A580((a1 + 440), v54, v61, v64);

      v65 = objc_opt_new();
      v67 = objc_msgSend_objectForKeyedSubscript_(v53, v66, @"opendoors");
      objc_msgSend_addObjectsFromArray_(v65, v68, v67);

      v69 = *(a1 + 264);
      v72 = objc_msgSend_openings(v111, v70, v71);
      sub_26224A580((a1 + 504), v65, v69, v72);

      kdebug_trace();
    }

    for (j = 0; objc_msgSend_count(*(a1 + 472), v73, v74) > j; ++j)
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 472), v78, j);
      v82 = objc_msgSend_type(v79, v80, v81) == 1;

      v85 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 472), v83, j);
      if (v82)
      {
        objc_msgSend_addObject_(v112, v84, v85);
      }

      else
      {
        objc_msgSend_addObject_(v14, v84, v85);
      }
    }

    objc_msgSend_addObjectsFromArray_(v109, v78, *(a1 + 536));
    sub_2622AE910(v111, v112);
    sub_26223FCDC(v111, v14);
    sub_26223FCBC(v111, v109);
    v88 = objc_msgSend_array(MEMORY[0x277CBEB18], v86, v87);
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v91 = objc_msgSend_walls(v111, v89, v90);
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v117, v128, 16);
    if (v94)
    {
      v95 = *v118;
      do
      {
        for (k = 0; k != v94; ++k)
        {
          if (*v118 != v95)
          {
            objc_enumerationMutation(v91);
          }

          objc_msgSend_addObject_(v88, v93, *(*(&v117 + 1) + 8 * k));
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v93, &v117, v128, 16);
      }

      while (v94);
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v97 = v20;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v113, v127, 16);
    if (v100)
    {
      v101 = *v114;
      do
      {
        for (m = 0; m != v100; ++m)
        {
          if (*v114 != v101)
          {
            objc_enumerationMutation(v97);
          }

          objc_msgSend_addObject_(v88, v99, *(*(&v113 + 1) + 8 * m));
        }

        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v99, &v113, v127, 16);
      }

      while (v100);
    }

    sub_2622AE900(v111, v88);
    sub_2621CD534(&v125);
    v13 = 0;
  }

  else
  {
    v111 = 0;
  }

  return v111;
}

void sub_26223CFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  sub_2621CD534(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26223D51C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_count(v3, v4, v5) == 8)
  {
    for (i = 0; i != 8; ++i)
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v10, i);
      if (objc_msgSend_count(v11, v12, v13) != 3)
      {

        goto LABEL_8;
      }

      v15 = objc_msgSend_objectAtIndexedSubscript_(v11, v14, 0);
      objc_msgSend_floatValue(v15, v16, v17);
      v32 = v18;
      v20 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 1);
      objc_msgSend_floatValue(v20, v21, v22);
      v31 = v23;
      v25 = objc_msgSend_objectAtIndexedSubscript_(v11, v24, 2);
      objc_msgSend_floatValue(v25, v26, v27);
      v28 = v32;
      DWORD1(v28) = v31;
      DWORD2(v28) = v29;
      *(a2 + 16 * i) = v28;
    }
  }

  else
  {
LABEL_8:
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_26223E290(void *a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_27FF0C120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C120))
  {
    qword_27FF0C118 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v1, @"Cabinet", @"Refrigerator", @"Shelf", @"Stove", @"Bed", @"Sink", @"Washer", @"Toilet", @"Bathtub", @"Oven", @"Dishwasher", @"Table", @"Sofa", @"Chair", @"Fireplace", @"Stool", @"Screen", @"Door", @"Window", @"Cuboid", @"Stairs", @"BuildInCabinet", @"Storage", 0);
    __cxa_guard_release(&qword_27FF0C120);
  }

  v3 = objc_msgSend_containsObject_(qword_27FF0C118, v1, v2);

  return v3;
}

void sub_26223E404(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27FF0C120);

  _Unwind_Resume(a1);
}

uint64_t sub_26223E428(void *a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_27FF0C130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C130))
  {
    qword_27FF0C128 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v1, @"unknown", @"online", @"offline", 0);
    __cxa_guard_release(&qword_27FF0C130);
  }

  v3 = objc_msgSend_containsObject_(qword_27FF0C128, v1, v2);

  return v3;
}

void sub_26223E4D4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27FF0C130);

  _Unwind_Resume(a1);
}

void sub_26223E4F8(void *a1, _OWORD *a2)
{
  v29 = a1;
  if (objc_msgSend_count(v29, v3, v4) == 4)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v29, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v28 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v29, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    v27 = v14;
    v16 = objc_msgSend_objectAtIndexedSubscript_(v29, v15, 2);
    objc_msgSend_floatValue(v16, v17, v18);
    v26 = v19;
    v21 = objc_msgSend_objectAtIndexedSubscript_(v29, v20, 3);
    objc_msgSend_floatValue(v21, v22, v23);
    *&v24 = __PAIR64__(v27, v28);
    *(&v24 + 1) = __PAIR64__(v25, v26);
    *a2 = v24;
  }
}

void sub_26223FAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a1 && sub_26223FB54(v8))
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, a2);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v7, v6, v8);
  }
}

uint64_t sub_26223FB54(void *a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_27FF0C140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C140))
  {
    qword_27FF0C138 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v1, @"ChairGroup", @"LShapeGroup", @"UShapeGroup", @"FloorPlan", 0);
    __cxa_guard_release(&qword_27FF0C140);
  }

  v3 = objc_msgSend_containsObject_(qword_27FF0C138, v1, v2);

  return v3;
}

void sub_26223FC08(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27FF0C140);

  _Unwind_Resume(a1);
}

void sub_26223FC2C(uint64_t a1, __n128 *a2, void *a3)
{
  v9 = a3;
  if (a1)
  {
    v7 = sub_2622113C0(a2, v5, v6);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 16), v8, v7, v9);
  }
}

void sub_26223FCBC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_26223FCCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_26223FCDC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

__n128 sub_26223FCEC(void *a1)
{
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v8 = v4;
  objc_msgSend_quad(v1, v5, v6);

  return v8;
}

void sub_26223FD48(uint64_t a1, void *a2)
{
  v3 = a2;
  *&v4 = *a1;
  DWORD2(v4) = *(a1 + 8);
  v28 = v4;
  v29 = v3;
  objc_msgSend_quad(v3, v5, v6);
  v27 = v7;
  v26 = *(a1 + 8);
  objc_msgSend_quad(v29, v8, v9);
  v25 = v10;
  v24 = *(a1 + 8);
  objc_msgSend_quad(v29, v11, v12);
  v23 = v13;
  *&v14 = *a1;
  DWORD2(v14) = *(a1 + 8);
  v22 = v14;
  objc_msgSend_quad(v29, v15, v16);
  v17 = v28;
  DWORD2(v17) = v27;
  *&v18 = v26;
  *(&v18 + 1) = vextq_s8(v25, v25, 8uLL).u64[0];
  *&v19 = v24;
  *(&v19 + 1) = vextq_s8(v23, v23, 8uLL).u64[0];
  v20 = v22;
  DWORD2(v20) = v21;
  src[0] = v17;
  src[1] = v18;
  src[2] = v19;
  src[3] = v20;
  if (v29)
  {
    objc_copyStruct(v29 + 272, src, 64, 1, 0);
  }
}

void sub_26223FE5C(unint64_t *a1, uint64_t a2, float a3, float a4, __n128 a5, __n128 a6)
{
  a5.n128_u64[0] = *a1;
  a6.n128_u64[0] = a1[1];
  v6 = a5;
  v6.n128_f32[2] = a4;
  v7 = a6;
  v7.n128_f32[2] = a4;
  a6.n128_f32[2] = a3;
  a5.n128_f32[2] = a3;
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = a6;
  v8[3] = a5;
  if (a2)
  {
    objc_copyStruct((a2 + 272), v8, 64, 1, 0);
  }
}

void sub_26223FEB8(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  sub_2621DC2A8();
  v12 = vsub_f32(v10, v11);
  v13 = vmul_f32(v12, v12);
  v14 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  v15 = vsub_f32(v6, v7);
  v16 = vmul_f32(v15, v15);
  v17 = vadd_f32(v16, vdup_lane_s32(v16, 1));
  sub_2621DC2A8();
  v20 = vsub_f32(v18, v19);
  v21 = vmul_f32(v20, v20);
  v22 = vadd_f32(v21, vdup_lane_s32(v21, 1));
  v23 = vsub_f32(v8, v9);
  v24 = vmul_f32(v23, v23);
  v25 = vadd_f32(v24, vdup_lane_s32(v24, 1));
  v26 = vmul_f32(vadd_f32(v6, v7), 0x3F0000003F000000);
  v27 = vsub_f32(v9, v8);
  v28 = vaddv_f32(vmul_f32(vsub_f32(v26, v8), v27));
  v29 = vaddv_f32(vmul_f32(v27, v27));
  if (v29 < 0.000001)
  {
    v29 = 0.000001;
  }

  v30 = v28 / v29;
  v31 = vadd_f32(v8, v9);
  v32 = vsub_f32(vmla_n_f32(v8, v27, v30), v26);
  v33 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
  v34 = vmul_f32(v31, 0x3F0000003F000000);
  v35 = vsub_f32(v7, v6);
  v36 = vaddv_f32(vmul_f32(vsub_f32(v34, v6), v35));
  v37 = vaddv_f32(vmul_f32(v35, v35));
  if (v37 < 0.000001)
  {
    v37 = 0.000001;
  }

  v38 = vsub_f32(vmla_n_f32(v6, v35, v36 / v37), v34);
  v39 = sqrtf(vaddv_f32(vmul_f32(v38, v38)));
  if (v39 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v39;
  }

  v41 = sub_2621C92AC(a2, a3, 0);
  v42 = vdiv_f32(vsqrt_f32(vzip1_s32(v14, v22)), vmaxnm_f32(vsqrt_f32(vzip1_s32(v17, v25)), vdup_n_s32(0x358637BDu)));
  *a1 = v42;
  v43 = *&v42.i32[1];
  if (*v42.i32 >= *&v42.i32[1])
  {
    v43 = *v42.i32;
  }

  *(a1 + 8) = v43;
  *(a1 + 12) = v33;
  *(a1 + 16) = v39;
  *(a1 + 20) = v40;
  *(a1 + 24) = v41;
  *(a1 + 28) = -1;
  *(a1 + 32) = 0;
  *(a1 + 36) = vrev64_s32(v42);
  *(a1 + 44) = v43;
  *(a1 + 48) = v39;
  *(a1 + 52) = v33;
  *(a1 + 56) = v40;
  *(a1 + 60) = v41;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0;
}

void sub_262240084(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  sub_2621DC2A8();
  v12 = vsub_f32(v10, v11);
  v13 = vmul_f32(v12, v12);
  v14 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  v15 = vsub_f32(v6, v7);
  v16 = vmul_f32(v15, v15);
  v17 = vadd_f32(v16, vdup_lane_s32(v16, 1));
  sub_2621DC2A8();
  v20 = vsub_f32(v18, v19);
  v21 = vmul_f32(v20, v20);
  v22 = vadd_f32(v21, vdup_lane_s32(v21, 1));
  v23 = vsub_f32(v8, v9);
  v24 = vmul_f32(v23, v23);
  v25 = vadd_f32(v24, vdup_lane_s32(v24, 1));
  v26 = vmul_f32(vadd_f32(v6, v7), 0x3F0000003F000000);
  v27 = vsub_f32(v9, v8);
  v28 = vaddv_f32(vmul_f32(vsub_f32(v26, v8), v27));
  v29 = vaddv_f32(vmul_f32(v27, v27));
  if (v29 < 0.000001)
  {
    v29 = 0.000001;
  }

  v30 = v28 / v29;
  v31 = vadd_f32(v8, v9);
  v32 = vsub_f32(vmla_n_f32(v8, v27, v30), v26);
  v33 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
  v34 = vmul_f32(v31, 0x3F0000003F000000);
  v35 = vsub_f32(v7, v6);
  v36 = vaddv_f32(vmul_f32(vsub_f32(v34, v6), v35));
  v37 = vaddv_f32(vmul_f32(v35, v35));
  if (v37 < 0.000001)
  {
    v37 = 0.000001;
  }

  v38 = vsub_f32(vmla_n_f32(v6, v35, v36 / v37), v34);
  v39 = sqrtf(vaddv_f32(vmul_f32(v38, v38)));
  if (v39 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v39;
  }

  v41 = sub_2621C92AC(a2, a3, 0);
  if ((180.0 - v41) < v41)
  {
    v41 = 180.0 - v41;
  }

  v42 = vdiv_f32(vsqrt_f32(vzip1_s32(v14, v22)), vmaxnm_f32(vsqrt_f32(vzip1_s32(v17, v25)), vdup_n_s32(0x358637BDu)));
  *a1 = v42;
  v43 = *&v42.i32[1];
  if (*v42.i32 >= *&v42.i32[1])
  {
    v43 = *v42.i32;
  }

  *(a1 + 8) = v43;
  *(a1 + 12) = v33;
  *(a1 + 16) = v39;
  *(a1 + 20) = v40;
  *(a1 + 24) = v41;
  *(a1 + 28) = -1;
  *(a1 + 32) = 0;
  *(a1 + 36) = vrev64_s32(v42);
  *(a1 + 44) = v43;
  *(a1 + 48) = v39;
  *(a1 + 52) = v33;
  *(a1 + 56) = v40;
  *(a1 + 60) = v41;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0;
}

double sub_262240264(float32x4_t *a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  v41.columns[0] = *a2;
  v41.columns[1] = *(a2 + 16);
  v41.columns[0].i32[3] = 0;
  v41.columns[1].i32[3] = 0;
  v41.columns[2] = *(a2 + 32);
  v41.columns[2].i32[3] = 0;
  a10.n128_f32[0] = (a3 - 1);
  a10.n128_u32[2] = 0;
  a10.n128_u32[3] = 1.0;
  v11 = a10;
  v11.n128_u32[1] = 0;
  v31 = v11;
  a10.n128_f32[1] = (a4 - 1);
  v32 = a10;
  a10.n128_u32[0] = 0;
  a10.n128_u32[2] = 0;
  v30 = a10;
  v41.columns[3] = xmmword_2623A7810;
  v42 = __invert_f4(v41);
  v12 = 0;
  v33 = xmmword_2623A7810;
  v34 = v31;
  v35 = v32;
  v36 = v30;
  do
  {
    *(&v37 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42.columns[0], COERCE_FLOAT(*(&v33 + v12))), v42.columns[1], *(&v33 + v12), 1), v42.columns[2], *(&v33 + v12), 2), v42.columns[3], *(&v33 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v13 = 0;
  v14 = v37;
  v15 = v38;
  v16 = v39;
  v17 = v40;
  v14.i32[3] = 1.0;
  v15.i32[3] = 1.0;
  v16.i32[3] = 1.0;
  v17.n128_u32[3] = 1.0;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  do
  {
    *(&v37 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v33 + v13))), v19, *(&v33 + v13), 1), v20, *(&v33 + v13), 2), v21, *(&v33 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  v22 = vsubq_f32(v39, v37);
  v23 = vsubq_f32(v38, v37);
  v24.i32[0] = vextq_s8(v22, v22, 8uLL).u32[0];
  v24.i32[1] = v22.i32[0];
  v25 = vextq_s8(v23, v23, 8uLL);
  v25.i32[1] = v23.i32[0];
  v26 = vdup_laneq_s32(v22, 2);
  v26.i32[0] = v22.i32[1];
  *v25.f32 = vmla_f32(vmul_f32(v26, vneg_f32(*v25.f32)), v24, *&vextq_s8(v23, v23, 4uLL));
  v25.f32[2] = (-*&v23.i32[1] * *v22.i32) + (*v23.i32 * *&v22.i32[1]);
  v27 = vmulq_f32(v25, v25);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  *&result = vmulq_n_f32(v25, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]).u64[0];
  return result;
}

void sub_26224041C(float32x4_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, __n128 a7, double a8, double a9, double a10, double a11, __n128 a12)
{
  if (a2)
  {
    v16 = a2;
    do
    {
      a7.n128_f64[0] = sub_262240264(a1, a3, a4, a5, a7.n128_f64[0], a8, a9, a10, a11, a12);
      v19 = *(a6 + 8);
      v18 = *(a6 + 16);
      if (v19 >= v18)
      {
        v21 = (v19 - *a6) >> 4;
        if ((v21 + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        v22 = v18 - *a6;
        v23 = v22 >> 3;
        if (v22 >> 3 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          sub_2621CBF10(v24);
        }

        *(16 * v21) = a7;
        v20 = 16 * v21 + 16;
        v25 = *(a6 + 8) - *a6;
        v26 = (16 * v21 - v25);
        memcpy(v26, *a6, v25);
        v27 = *a6;
        *a6 = v26;
        *(a6 + 8) = v20;
        *(a6 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v19 = a7;
        v20 = &v19[1];
      }

      *(a6 + 8) = v20;
      a1 += 4;
      --v16;
    }

    while (v16);
  }
}

dispatch_queue_t sub_262240540(const char *a1, void *a2)
{
  v3 = a2;
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  v6 = std::string::append(&__dst, ".workloop", 9uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  inactive = dispatch_workloop_create_inactive(v8);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  dispatch_workloop_set_qos_class_floor();
  v10 = v3;
  if (v10)
  {
    dispatch_workloop_set_os_workgroup(inactive, v10);
  }

  dispatch_activate(inactive);
  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v12 = dispatch_queue_create_with_target_V2(a1, v11, inactive);

  return v12;
}

void sub_2622406F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_262240718(uint64_t a1)
{
  v1 = os_workgroup_attr_set_flags();
  if (v1)
  {
    printf("ERROR [createWorkGroup]: Failed to set workgroup flags with error (%d)\n", v1);
  }

  v2 = os_workgroup_create();

  return v2;
}

void sub_2622407C8(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  v60 = a1;
  v61 = a2;
  v76 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v62 = a4;
  if (objc_msgSend_count(v62, v6, v7) && objc_msgSend_count(v5, v8, v9))
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v62;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v68, v75, 16);
    if (v11)
    {
      v64 = *v69;
      do
      {
        v65 = v11;
        for (i = 0; i != v65; ++i)
        {
          if (*v69 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v68 + 1) + 8 * i);
          v16 = 0;
          v17 = 0;
          v67 = 0.0;
          v18 = -1;
          v66 = 0xFFFFFFFFLL;
          while (objc_msgSend_count(v5, v13, v14, v60, v61) > v16)
          {
            v21 = objc_msgSend_parentIdentifier(v15, v19, v20);
            v23 = objc_msgSend_objectAtIndexedSubscript_(v5, v22, v16);
            v26 = objc_msgSend_identifier(v23, v24, v25);
            isEqual = objc_msgSend_isEqual_(v21, v27, v26);

            if (isEqual)
            {
              v29 = objc_msgSend_objectAtIndexedSubscript_(v5, v13, v16);

              v17 = v29;
              v18 = v16;
            }

            ++v16;
          }

          if (v17)
          {
            LODWORD(v66) = v18;
            objc_msgSend_endOrientation(v17, v19, v20);
            v31 = v30;
            objc_msgSend_startOrientation(v17, v32, v33);
            v35 = v34;
            objc_msgSend_startOrientation(v15, v36, v37);
            v39 = v38;
            objc_msgSend_startOrientation(v17, v40, v41);
            v44 = v31 - v35;
            v46 = (v39 - v45) / v44;
            if (v46 <= 1.0)
            {
              v47 = v46;
            }

            else
            {
              v47 = 1.0;
            }

            if (v46 >= 0.0)
            {
              v48 = v47;
            }

            else
            {
              v48 = 0.0;
            }

            *(&v66 + 1) = v48;
            objc_msgSend_endOrientation(v15, v42, v43);
            v50 = v49;
            objc_msgSend_startOrientation(v17, v51, v52);
            v54 = (v50 - v53) / v44;
            if (v54 <= 1.0)
            {
              v55 = v54;
            }

            else
            {
              v55 = 1.0;
            }

            if (v54 >= 0.0)
            {
              v56 = v55;
            }

            else
            {
              v56 = 0.0;
            }

            v67 = v56;
            sub_262240B6C(&v72, &v66);
          }

          else
          {
            sub_262240B6C(&v72, &v66);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v68, v75, 16);
      }

      while (v11);
    }

    v66 = v61;
    v58 = sub_262240C70((v60 + 720), v61, &v66);
    v59 = v72;
    sub_2622410F8(v58 + 5, v72, v73, 0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 2));
    if (v59)
    {
      operator delete(v59);
    }
  }
}

void sub_262240ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262240B6C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_262241270(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void *sub_262240C70(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2622410E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2622412C8(va);
  _Unwind_Resume(a1);
}

void **sub_2622410F8(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 2) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0x1555555555555555;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1555555555555555)
      {
        sub_262241270(v12);
      }
    }

    sub_2621CBEB0();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 2) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void sub_262241270(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

char **sub_2622412C8(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_262241314(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_262241314(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_26224136C(int8x8_t *a1, void *a2, void *a3, void *a4)
{
  v51 = a3;
  v7 = a4;
  if (!sub_2621E26D8(&a1[90], a2) || !objc_msgSend_count(v51, v8, v9) || !objc_msgSend_count(v7, v10, v11))
  {
    goto LABEL_35;
  }

  v12 = sub_2621D1580(a2);
  v13 = a1[91];
  if (!*&v13)
  {
    goto LABEL_20;
  }

  v14 = v12;
  v15 = vcnt_s8(v13);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v12;
    if (v12 >= *&v13)
    {
      v17 = v12 % *&v13;
    }
  }

  else
  {
    v17 = (*&v13 - 1) & v12;
  }

  v18 = *(*&a1[90] + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_20:
    sub_2621C84A8("unordered_map::at: key not found");
  }

  while (1)
  {
    v20 = v19[1];
    if (v20 == v14)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v20 >= *&v13)
      {
        v20 %= *&v13;
      }
    }

    else
    {
      v20 &= *&v13 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_20;
    }

LABEL_19:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_20;
    }
  }

  if (!sub_2621D19D0(v19 + 2, a2))
  {
    goto LABEL_19;
  }

  v23 = v19[5];
  if (v19[6] != v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(v23 + v24);
      if ((v26 & 0x80000000) == 0 && objc_msgSend_count(v51, v21, v22) > v26)
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v7, v21, v25);
        v29 = objc_msgSend_objectAtIndexedSubscript_(v51, v28, *(v23 + v24));
        objc_msgSend_circleCenter(v29, v30, v31);
        if (v27)
        {
          v27[45] = v34;
        }

        objc_msgSend_radius(v29, v32, v33);
        if (v27)
        {
          v27[42].i32[0] = v37;
        }

        objc_msgSend_endOrientation(v29, v35, v36);
        v39 = v38;
        objc_msgSend_startOrientation(v29, v40, v41);
        v43 = v42;
        objc_msgSend_startOrientation(v29, v44, v45);
        v49 = v39 - v43;
        if (v27)
        {
          v27[42].f32[1] = v48 + (v49 * *(v23 + v24 + 4));
        }

        objc_msgSend_startOrientation(v29, v46, v47);
        if (v27)
        {
          v27[43].f32[0] = v50 + (v49 * *(v23 + v24 + 8));
        }

        sub_2622F85D0(v27);
      }

      ++v25;
      v23 = v19[5];
      v24 += 12;
    }

    while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v19[6] - v23) >> 2));
  }

LABEL_35:
}

unint64_t sub_262241638(float32x2_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0xBF800000FFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  v7 = -1;
  v8 = -1.0;
  do
  {
    v9 = (v2 + v5);
    v10 = sub_2621C92AC(a1, (v2 + v5), 0);
    if ((180.0 - v10) < v10)
    {
      v10 = 180.0 - v10;
    }

    if (v10 <= 20.0)
    {
      v11 = *v9;
      v12 = *a1;
      v13 = a1[1];
      v14 = vsub_f32(v9[1], *v9);
      v15 = vaddv_f32(vmul_f32(vsub_f32(*a1, *v9), v14));
      v16 = vaddv_f32(vmul_f32(v14, v14));
      if (v16 < 0.000001)
      {
        v16 = 0.000001;
      }

      v17 = vsub_f32(vmla_n_f32(v11, v14, v15 / v16), v12);
      v18 = vmul_f32(v17, v17);
      v19 = vsub_f32(vmla_n_f32(v11, v14, vaddv_f32(vmul_f32(v14, vsub_f32(v13, v11))) / v16), v13);
      v20 = vmul_f32(v19, v19);
      if ((vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v18, v20), vzip2_s32(v18, v20)))) * 0.5) < 0.4)
      {
        sub_2621DC2A8();
        v23 = vsub_f32(v21, v22);
        v24 = vsub_f32(v12, v13);
        v25 = sqrtf(vaddv_f32(vmul_f32(v23, v23))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v24, v24))), 0.000001);
        if (v25 > v8)
        {
          v7 = v6;
          v8 = v25;
        }
      }
    }

    ++v6;
    v2 = *a2;
    v5 += 16;
  }

  while (v6 < (a2[1] - *a2) >> 4);
  return v7 | (LODWORD(v8) << 32);
}

uint64_t sub_2622417E4(uint64_t a1)
{
  sub_262241820(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_262241820(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_262241314((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_262241864(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v726[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v647 = a3;
  v660 = a1;
  sub_262245570(a1 + 720);
  __src[0] = 0;
  __src[1] = 0;
  v696 = 0;
  v648 = v6;
  v9 = objc_msgSend_walls(v6, v7, v8);
  sub_2622455CC(v9, __src);

  memset(v694, 0, sizeof(v694));
  v12 = objc_msgSend_openings(v6, v10, v11);
  sub_2622455CC(v12, v694);

  memset(v693, 0, sizeof(v693));
  v15 = objc_msgSend_windows(v6, v13, v14);
  sub_2622455CC(v15, v693);

  memset(v692, 0, sizeof(v692));
  v18 = objc_msgSend_doors(v6, v16, v17);
  sub_2622455CC(v18, v692);

  memset(v691, 0, sizeof(v691));
  v21 = objc_msgSend_opendoors(v6, v19, v20);
  sub_2622455CC(v21, v691);

  sub_2621D0F64(__p, "opening");
  sub_2622457C0(a1, __p, __src, v694);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "window");
  sub_2622457C0(a1, __p, __src, v693);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "door");
  sub_2622457C0(a1, __p, __src, v692);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "opendoor");
  sub_2622457C0(a1, __p, __src, v691);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(&v709, "polygon");
  v664 = objc_msgSend_walls(v6, v22, v23);
  if (objc_msgSend_count(v664, v24, v25))
  {
    for (i = 0; ; ++i)
    {
      if (i >= objc_msgSend_count(v664, v26, v27))
      {
        goto LABEL_55;
      }

      v29 = objc_msgSend_objectAtIndexedSubscript_(v664, v28, i);
      objc_msgSend_quad(v29, v30, v31);
      v673 = v32;
      objc_msgSend_quad(v29, v33, v34);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v42 = vsubq_f32(v673, v41);
      v43 = fmaxf(sqrtf(vaddv_f32(*&vmulq_f32(v42, v42))), 0.00000001);
      while (objc_msgSend_polygonSize(v29, v35, v36) > v40)
      {
        v674 = *(objc_msgSend_polygon(v29, v44, v45) + v37);
        objc_msgSend_quad(v29, v46, v47);
        v49 = vsubq_f32(v674, v48);
        v50 = sqrtf(vaddv_f32(*&vmulq_f32(v49, v49))) / v43;
        if (v50 <= 1.0)
        {
          v51 = v50;
        }

        else
        {
          v51 = 1.0;
        }

        v52 = &v39[-v38];
        v53 = 0xAAAAAAAAAAAAAAABLL * (&v39[-v38] >> 2);
        v54 = v53 + 1;
        if (v53 + 1 > 0x1555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * (-v38 >> 2) > v54)
        {
          v54 = 0x5555555555555556 * (-v38 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v38 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v55 = 0x1555555555555555;
        }

        else
        {
          v55 = v54;
        }

        if (v55)
        {
          sub_262241270(v55);
        }

        v56 = 12 * v53;
        *v56 = -1;
        *(v56 + 4) = v51;
        *(v56 + 8) = v51;
        v39 = (12 * v53 + 12);
        v57 = (v56 + 12 * (v52 / -12));
        memcpy(v57, v38, v52);
        if (v38)
        {
          operator delete(v38);
        }

        v38 = v57;
        ++v40;
        v37 += 16;
      }

      if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v709.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v709.__r_.__value_.__l.__size_;
      }

      sub_262245A54(v720, size + 1);
      if (v720[23] >= 0)
      {
        v61 = v720;
      }

      else
      {
        v61 = *v720;
      }

      if (size)
      {
        if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v709;
        }

        else
        {
          v62 = v709.__r_.__value_.__r.__words[0];
        }

        memmove(v61, v62, size);
      }

      *&v61[size] = 58;
      v63 = objc_msgSend_identifier(v29, v59, v60);
      v66 = objc_msgSend_UUIDString(v63, v64, v65);
      v67 = v66;
      v70 = objc_msgSend_UTF8String(v66, v68, v69);
      sub_2621D0F64(&v725, v70);
      if (v726[0] >= 0)
      {
        v71 = &v725;
      }

      else
      {
        v71 = v725;
      }

      if (v726[0] >= 0)
      {
        v72 = HIBYTE(v726[0]);
      }

      else
      {
        v72 = *(&v725 + 1);
      }

      v73 = std::string::append(v720, v71, v72);
      v74 = *&v73->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v73->__r_.__value_.__l + 2);
      *__p = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v726[0]) < 0)
      {
        operator delete(v725);
      }

      if ((v720[23] & 0x80000000) != 0)
      {
        operator delete(*v720);
      }

      *v720 = __p;
      v75 = sub_262240C70((v660 + 720), __p, v720);
      sub_2622410F8(v75 + 5, v38, v39, 0xAAAAAAAAAAAAAAABLL * (&v39[-v38] >> 2));
      if ((__p[23] & 0x80000000) == 0)
      {
        break;
      }

      operator delete(*__p);
      if (v38)
      {
        goto LABEL_51;
      }

LABEL_52:
    }

    if (!v38)
    {
      goto LABEL_52;
    }

LABEL_51:
    operator delete(v38);
    goto LABEL_52;
  }

LABEL_55:

  if (SHIBYTE(v709.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v709.__r_.__value_.__l.__data_);
  }

  v688 = 0;
  v689 = 0;
  v690 = 0;
  v78 = objc_msgSend_curvedWalls(v648, v76, v77);
  sub_2622455CC(v78, &v688);

  v79 = v688;
  v80 = v689 - v688;
  v81 = (v689 - v688) >> 4;
  v82 = __src[0];
  v83 = __src[1];
  if (v81 < 1)
  {
    v86 = __src[1];
  }

  else if ((v696 - __src[1]) >= v80)
  {
    if (v688 != v689)
    {
      memmove(__src[1], v688, v689 - v688);
    }

    v86 = &v83[v80];
    __src[1] = &v83[v80];
  }

  else
  {
    v84 = v81 + ((__src[1] - __src[0]) >> 4);
    if (v84 >> 60)
    {
      sub_2621CBEB0();
    }

    if ((v696 - __src[0]) >> 3 > v84)
    {
      v84 = (v696 - __src[0]) >> 3;
    }

    if (v696 - __src[0] >= 0x7FFFFFFFFFFFFFF0)
    {
      v85 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v85 = v84;
    }

    if (v85)
    {
      sub_2621CBF10(v85);
    }

    v87 = 16 * ((__src[1] - __src[0]) >> 4);
    v86 = (v87 + v80);
    v88 = v87;
    do
    {
      v89 = *v79++;
      *v88++ = v89;
      v80 -= 16;
    }

    while (v80);
    v90 = __src[0];
    v82 = (v87 - (v83 - __src[0]));
    memcpy(v82, __src[0], v83 - __src[0]);
    __src[0] = v82;
    __src[1] = v86;
    v696 = 0;
    if (v90)
    {
      operator delete(v90);
    }
  }

  v686[0] = 0;
  v686[1] = 0;
  v687 = 0;
  v91 = v647;
  if (v91)
  {
    v665 = *(v91 + 5);
    v668 = *(v91 + 8);
    v655 = *(v91 + 4);
    v658 = *(v91 + 6);
    v675 = *(v91 + 7);
    v92 = *(v91 + 6);
    v93 = v91[8];
    v652 = *(v91 + 12);
    v94 = *(v91 + 7);
    v95 = *(v91 + 8);
    v96 = *(v91 + 36);
  }

  else
  {
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v668 = 0u;
    v675 = 0u;
    v92 = 0;
    v665 = 0u;
    v655 = 0u;
    v658 = 0u;
    v652 = 0u;
    v96 = 0;
  }

  v645 = v91;

  v97 = (v86 - v82);
  if ((v86 - v82) > 0x10)
  {
    *(v660 + 400) = v93;
    *(v660 + 404) = v652;
    *(v660 + 432) = v655;
    *(v660 + 448) = v665;
    *(v660 + 464) = v658;
    *(v660 + 480) = v675;
    *(v660 + 496) = v668;
    *(v660 + 512) = v94;
    *(v660 + 520) = v92;
    *(v660 + 528) = v95;
    *(v660 + 532) = vrev64_s32(v96);
    v98 = *(a4 + 8);
    v99 = *(a4 + 40);
    *(v660 + 568) = *(a4 + 24);
    *(v660 + 584) = v99;
    *(v660 + 552) = v98;
    v100 = *(a4 + 56);
    v101 = *(a4 + 72);
    v102 = *(a4 + 104);
    *(v660 + 632) = *(a4 + 88);
    *(v660 + 648) = v102;
    *(v660 + 600) = v100;
    *(v660 + 616) = v101;
    v104 = *(a4 + 120);
    v103 = *(a4 + 128);
    if (v103)
    {
      atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
    }

    *(v660 + 664) = v104;
    v105 = *(v660 + 672);
    *(v660 + 672) = v103;
    if (v105)
    {
      sub_2621D1B78(v105);
    }

    *(v660 + 688) = *(a4 + 144);
    *(v660 + 680) = *(a4 + 136);
    *(v660 + 704) = *(v660 + 696);
    sub_2623537A4(v660, __src);
    v106 = sub_262354078(v660);
    if ((*(v660 + 681) & 1) == 0)
    {
      sub_26235574C(__p, (v660 + 136), v660 + 400, v660 + 544);
    }

    if (!v106)
    {
      v160 = 0;
      v161 = 0uLL;
      goto LABEL_388;
    }

    v700 = 0;
    v701 = 0;
    v702 = 0;
    v108 = *(v660 + 136);
    v107 = *(v660 + 144);
    if (v107 == v108)
    {
      goto LABEL_233;
    }

    v109 = 0;
    v110 = 0;
    do
    {
      v111 = v110++;
      v112 = v107 - v108;
      if (v110 < (v107 - v108) >> 4)
      {
        v113 = v109;
        v114 = v110;
        v115 = v660;
        do
        {
          v116 = sub_262354364(v115, v111);
          v117 = sub_262354364(v115, v114);
          v118 = *(v115 + 136);
          v119 = (v118 + 16 * v111);
          v120 = vsub_f32(*v119, v119[1]);
          v121 = sqrtf(vaddv_f32(vmul_f32(v120, v120)));
          v122 = *(v115 + 40);
          if (v121 >= v122)
          {
            v123 = (v118 + v113);
            v124 = vsub_f32(*(v118 + v113 + 16), *(v118 + v113 + 24));
            if (sqrtf(vaddv_f32(vmul_f32(v124, v124))) >= v122 && v117 && v116)
            {
              v125 = *(v660 + 36);
              if (vabdd_f64(90.0, sub_2621C92AC(v119, (v118 + v113 + 16), 0)) < *(v660 + 32))
              {
                v127 = *v119;
                v128 = v119[1];
                v129 = vsub_f32(v128, *v119);
                v131 = v123[2];
                v130 = v123[3];
                v132 = vsub_f32(v130, v131);
                *v126.i32 = -*&v129.i32[1];
                v133 = vzip1_s32(v126, v129);
                v134 = vmul_f32(v132, v133);
                if (vaddv_f32(v134) != 0.0)
                {
                  v135 = vmul_f32(vsub_f32(v127, v131), v133);
                  v136 = vmla_n_f32(v131, v132, vdiv_f32(vadd_f32(v135, vdup_lane_s32(v135, 1)), vadd_f32(v134, vdup_lane_s32(v134, 1))).f32[0]);
                  v137 = sub_2621DC76C(v136, v127, v128, 0.00001);
                  v138 = sub_2621DC76C(v136, v131, v130, 0.00001);
                  if (v137 >= v138)
                  {
                    v138 = v137;
                  }

                  if (v138 < v125)
                  {
                    *v720 = v111;
                    *&v720[8] = v114;
                    memset(__p, 0, 24);
                    sub_2622AB9E8(__p, v720, &v720[16], 2uLL);
                    sub_2623489A8(&v700, __p);
                    if (*__p)
                    {
                      operator delete(*__p);
                    }
                  }
                }
              }
            }
          }

          ++v114;
          v115 = v660;
          v108 = *(v660 + 136);
          v107 = *(v660 + 144);
          v112 = v107 - v108;
          v113 += 16;
        }

        while (v114 < (v107 - v108) >> 4);
      }

      v109 += 16;
    }

    while (v110 < v112 >> 4);
    if (v700 == v701)
    {
LABEL_233:
      *__p = &v700;
      sub_2621E1D40(__p);
      v245 = sub_262354078(v660);
      v246 = *(v660 + 136);
      v247 = *(v660 + 144);
      v248 = (v247 - v246) >> 4;
      if (v245)
      {
        v706 = 0;
        v707 = 0;
        v708 = 0;
        if (v247 != v246)
        {
          v249 = 0;
          v250 = 0;
          v251 = 0;
          if (v248 <= 1)
          {
            v248 = 1;
          }

          v252 = vdup_n_s32(0x43340000u);
          v253 = vdup_n_s32(0xC2B40000);
          do
          {
            v254 = *(v660 + 136);
            v255 = *(v660 + 72);
            v256 = *(v660 + 76);
            v257 = *(v660 + 80);
            v258 = sub_262354364(v660, v251);
            v259 = *(v660 + 136);
            v260 = sub_2621C92AC((v259 + v249), (v660 + 376), 1);
            if ((180.0 - v260) < v260)
            {
              v260 = 180.0 - v260;
            }

            v261 = fabsf(v260 + -90.0);
            v262 = fabsf(v260);
            if (v262 >= v261)
            {
              v262 = v261;
            }

            if ((v262 <= v256 || (v263 = vsub_f32(*(v259 + v249), *(v259 + v249 + 8)), sqrtf(vaddv_f32(vmul_f32(v263, v263))) <= v255)) && (v262 <= v257 ? (v267 = v262 >= 0.00001) : ((v264 = vsub_f32(*(v259 + v249), *(v259 + v249 + 8)), v265 = sqrtf(vaddv_f32(vmul_f32(v264, v264))), v262 >= 0.00001) ? (v266 = v265 > v255) : (v266 = 0), !v266 ? (v267 = 0) : (v267 = 1)), v267 && v258))
            {
              v268 = sub_2621C92AC((v254 + v249), (v660 + 376), 1);
              if ((180.0 - v268) < v268)
              {
                v268 = 180.0 - v268;
              }

              v270 = fabsf(v268 + -90.0);
              v271 = fabsf(v268);
              if (v271 >= v270)
              {
                v271 = v270;
              }

              v272 = *(*(v660 + 208) + v250);
              v273 = *(v660 + 232);
              v274 = (*(v273 + 24 * *v272 + 8) - *(v273 + 24 * *v272)) >> 3;
              v276 = (v273 + 24 * v272[1]);
              v275 = v276[1];
              v277 = v274 > (v275 - *v276) >> 3;
              if (v274 < (v275 - *v276) >> 3)
              {
                v278 = 1;
              }

              else
              {
                v278 = 2;
              }

              if (v277)
              {
                v279 = 0;
              }

              else
              {
                v279 = v278;
              }

              v280 = (v271 * 3.1416) / 180.0;
              v281 = sub_26235564C(v279, *(v254 + v249), *(v254 + v249 + 8), v280, v269);
              v283 = v282;
              *__p = v281;
              *&__p[8] = v282;
              v676 = sub_2621C92AC(__p, (v660 + 376), 1);
              v285 = sub_26235564C(v279, *(v254 + v249), *(v254 + v249 + 8), -v280, v284);
              v287 = v286;
              *v720 = v285;
              *&v720[8] = v286;
              v288.f32[0] = sub_2621C92AC(v720, (v660 + 376), 1);
              v288.f32[1] = v676;
              v289 = vsub_f32(v252, v288);
              v290 = vbsl_s8(vcgt_f32(v288, v289), v289, v288);
              v291 = vadd_f32(v290, v253);
              v292 = vbsl_s8(vcagt_f32(v291, v290), vabs_f32(v290), vabs_f32(v291));
              if (vcgt_f32(vdup_lane_s32(v292, 1), v292).u8[0])
              {
                v293 = -1;
              }

              else
              {
                v293 = 0;
              }

              v294 = vdup_n_s32(v293);
              *&v725 = vbsl_s8(v294, v285, v281);
              *(&v725 + 1) = vbsl_s8(v294, v287, v283);
              if ((*(v660 + 681) & 1) == 0)
              {
                memset(__p, 0, 24);
                sub_2621DE070(__p, &v725);
                sub_26235574C(v720, __p, v660 + 400, v660 + 544);
              }

              sub_2621DE070(&v706, &v725);
            }

            else
            {
              sub_2621DE070(&v706, (v254 + v249));
            }

            ++v251;
            v250 += 24;
            v249 += 16;
          }

          while (v248 != v251);
        }

        v295 = *(v660 + 240) - *(v660 + 232);
        if (v295)
        {
          v296 = 0;
          v297 = 0;
          v298 = *(v660 + 64);
          v300 = 0xAAAAAAAAAAAAAAABLL * (v295 >> 3);
          if (v300 <= 1)
          {
            v301 = 1;
          }

          else
          {
            v301 = v300;
          }

          v299 = (v660 + 68);
          v302 = vld1_dup_f32(v299);
          v303 = v706;
          while (1)
          {
            v304 = *(v660 + 232) + v296;
            memset(__p, 0, 24);
            sub_262234B80(__p, *v304, *(v304 + 8), (*(v304 + 8) - *v304) >> 3);
            v305 = *__p;
            if (*&__p[8] - *__p != 16)
            {
              if (!*__p)
              {
                goto LABEL_296;
              }

              goto LABEL_295;
            }

            v306 = *(v660 + 208) + 24 * **__p;
            memset(v720, 0, 24);
            sub_262234B80(v720, *v306, *(v306 + 8), (*(v306 + 8) - *v306) >> 3);
            v307 = *(v660 + 208) + 24 * v305[1];
            v726[0] = 0;
            v725 = 0uLL;
            sub_262234B80(&v725, *v307, *(v307 + 8), (*(v307 + 8) - *v307) >> 3);
            *&v709.__r_.__value_.__l.__data_ = v303[*v305];
            v723 = v303[v305[1]];
            v308 = sub_2621C92AC(&v709, &v723, 0);
            if ((180.0 - v308) < v308)
            {
              v308 = 180.0 - v308;
            }

            if (v308 <= v298)
            {
              break;
            }

            v310 = vsub_f32(v709.__r_.__value_.__r.__words[1], v709.__r_.__value_.__l.__data_);
            v311 = v723;
            v312 = vsub_f32(*(&v723 + 8), *&v723);
            *v309.i32 = -*&v310.i32[1];
            v313 = vzip1_s32(v309, v310);
            v314 = vmul_f32(v312, v313);
            v315 = v725;
            if (vaddv_f32(v314) == 0.0)
            {
              goto LABEL_291;
            }

            v316 = vmul_f32(vsub_f32(v709.__r_.__value_.__l.__data_, *&v723), v313);
            v317 = vmla_n_f32(*&v723, v312, vdiv_f32(vadd_f32(v316, vdup_lane_s32(v316, 1)), vadd_f32(v314, vdup_lane_s32(v314, 1))).f32[0]);
            v318 = **v720;
            v319 = vsub_f32(vbsl_s8(vceqd_s64(v297, **v720), v709.__r_.__value_.__l.__data_, v709.__r_.__value_.__r.__words[1]), v317);
            v320 = vmul_f32(v319, v319);
            v321 = vsub_f32(vbsl_s8(vceqd_s64(v297, *v725), *&v723, *(&v723 + 8)), v317);
            v322 = vmul_f32(v321, v321);
            v323 = vcgt_f32(v302, vsqrt_f32(vadd_f32(vzip1_s32(v322, v320), vzip2_s32(v322, v320))));
            if (v323.i32[1] & v323.i32[0])
            {
              v324 = v709.__r_.__value_.__l.__size_;
              v325 = &v303[*v305];
              v326 = v297 == v318;
              if (v297 == v318)
              {
                v327 = v317;
              }

              else
              {
                v327 = v709.__r_.__value_.__r.__words[0];
              }

              if (!v326)
              {
                v324 = v317;
              }

              *v325 = v327;
              v325[1] = v324;
              v328 = vceqd_s64(v297, *v315);
              v329 = &v303[v305[1]];
              *v329 = vbsl_s8(v328, v317, *&v311);
              v329[1] = vbsl_s8(v328, *(&v311 + 8), v317);
            }

LABEL_292:
            operator delete(v315);
LABEL_293:
            if (*v720)
            {
              operator delete(*v720);
            }

LABEL_295:
            operator delete(v305);
LABEL_296:
            ++v297;
            v296 += 24;
            if (v301 == v297)
            {
              v330 = 0;
              v331 = *(v660 + 12);
              do
              {
                v332 = (*(v660 + 232) + 24 * v330);
                v333 = v332[1] - *v332;
                if (v333 >= 9)
                {
                  v677 = v330;
                  *__p = 0;
                  sub_2621DE86C(v720, v333 >> 3, __p);
                  v334 = *v332;
                  v335 = v332[1];
                  if (v335 != *v332)
                  {
                    v336 = 0;
                    v337 = v706;
                    do
                    {
                      if (*(*v720 + 4 * v336) == 1)
                      {
                        v338 = v336 + 1;
                        v339 = v335 - v334;
                      }

                      else
                      {
                        v338 = v336 + 1;
                        v339 = v335 - v334;
                        if (v336 + 1 < (v335 - v334) >> 3)
                        {
                          v340 = &v337[16 * *(v334 + 8 * v336)];
                          v341 = v336 + 1;
                          do
                          {
                            v342 = &v337[16 * *(v334 + 8 * v341)];
                            v343 = *v340;
                            v344 = *v342;
                            v345 = vsub_f32(*v340, *v342);
                            LODWORD(v725) = sqrtf(vaddv_f32(vmul_f32(v345, v345)));
                            v346 = v342[1];
                            v347 = vsub_f32(v343, v346);
                            DWORD1(v725) = sqrtf(vaddv_f32(vmul_f32(v347, v347)));
                            v348 = v340[1];
                            v349 = vsub_f32(v348, v344);
                            v350 = vmul_f32(v349, v349);
                            v351 = vsub_f32(v348, v346);
                            v352 = vmul_f32(v351, v351);
                            *(&v725 + 1) = vsqrt_f32(vadd_f32(vzip1_s32(v350, v352), vzip2_s32(v350, v352)));
                            memset(__p, 0, 24);
                            sub_2621DC430(__p, &v725, v726, 4uLL);
                            v353 = *__p;
                            if (*__p != *&__p[8])
                            {
                              v354 = *__p + 4;
                              v353 = *__p;
                              if (*__p + 4 != *&__p[8])
                              {
                                v355 = **__p;
                                v353 = *__p;
                                v356 = (*__p + 4);
                                do
                                {
                                  v357 = *v356++;
                                  v358 = v357;
                                  if (v357 < v355)
                                  {
                                    v355 = v358;
                                    v353 = v354;
                                  }

                                  v354 = v356;
                                }

                                while (v356 != *&__p[8]);
                              }
                            }

                            v359 = *v353;
                            if (*__p)
                            {
                              operator delete(*__p);
                            }

                            if (v359 < v331)
                            {
                              v360 = *v720;
                              *(*v720 + 4 * v336) = 1;
                              *(v360 + 4 * v341) = 1;
                            }

                            ++v341;
                            v334 = *v332;
                            v335 = v332[1];
                            v339 = v335 - *v332;
                          }

                          while (v341 < v339 >> 3);
                        }
                      }

                      v336 = v338;
                    }

                    while (v338 < v339 >> 3);
                  }

                  v725 = 0uLL;
                  v726[0] = 0;
                  memset(&v709, 0, sizeof(v709));
                  v361 = *v720;
                  if (*&v720[8] == *v720)
                  {
                    v366 = 0;
                    v365 = 0;
                  }

                  else
                  {
                    v362 = 0;
                    v363 = 0;
                    do
                    {
                      if (*(v361 + 4 * v363) <= 0)
                      {
                        v364 = &v709;
                      }

                      else
                      {
                        v364 = &v725;
                      }

                      sub_2621C9004(v364, (*v332 + v362));
                      ++v363;
                      v361 = *v720;
                      v362 += 8;
                    }

                    while (v363 < (*&v720[8] - *v720) >> 2);
                    v365 = *(&v725 + 1);
                    v366 = v725;
                  }

                  if ((v365 - v366) <= 8)
                  {
                    if (v709.__r_.__value_.__r.__words[0] != v709.__r_.__value_.__l.__size_)
                    {
                      operator new();
                    }

                    sub_262354454(0, 0, 0, 1);
                    operator delete(0);
                    v377 = v709.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    v367 = v706;
                    v368 = v366[1];
                    v369 = (v706 + 16 * *v366);
                    v370 = (v706 + 16 * v368);
                    v371 = *v369;
                    v372 = vsub_f32(*v369, *v370);
                    v373 = vmul_f32(v372, v372);
                    v374 = vsub_f32(*v369, v370[1]);
                    v375 = vmul_f32(v374, v374);
                    v376 = vsqrt_f32(vadd_f32(vzip1_s32(v375, v373), vzip2_s32(v375, v373)));
                    if (v376.f32[0] >= v376.f32[1])
                    {
                      v376.f32[0] = v376.f32[1];
                    }

                    if (v376.f32[0] >= v331)
                    {
                      v371 = v369[1];
                    }

                    v378 = v709.__r_.__value_.__l.__size_;
                    v377 = v709.__r_.__value_.__r.__words[0];
                    if (v709.__r_.__value_.__r.__words[0] != v709.__r_.__value_.__l.__size_)
                    {
                      v379 = v709.__r_.__value_.__r.__words[0];
                      do
                      {
                        v380 = *v379++;
                        v381 = &v367[16 * v380];
                        v382 = vsub_f32(*v381, v371);
                        v383 = vmul_f32(v382, v382);
                        v384 = vsub_f32(v381[1], v371);
                        v385 = vmul_f32(v384, v384);
                        v386 = vsqrt_f32(vadd_f32(vzip1_s32(v383, v385), vzip2_s32(v383, v385)));
                        v387 = (vmvn_s8(vcge_f32(vdup_lane_s32(v386, 1), v386)).u8[0] & 1) != 0;
                        v381[v387] = v371;
                      }

                      while (v379 != v378);
                    }
                  }

                  if (v377)
                  {
                    v709.__r_.__value_.__l.__size_ = v377;
                    operator delete(v377);
                  }

                  if (v725)
                  {
                    operator delete(v725);
                  }

                  if (*v720)
                  {
                    *&v720[8] = *v720;
                    operator delete(*v720);
                  }

                  v330 = v677;
                }

                ++v330;
              }

              while (v330 != v301);
              goto LABEL_348;
            }
          }

          v315 = v725;
LABEL_291:
          if (!v315)
          {
            goto LABEL_293;
          }

          goto LABEL_292;
        }

LABEL_348:
        sub_2623537A4(v660, &v706);
        if (v706)
        {
          operator delete(v706);
        }

        v388 = v660;
        v246 = *(v660 + 136);
        v247 = *(v660 + 144);
        v248 = (v247 - v246) >> 4;
      }

      else
      {
        v388 = v660;
      }

      v389 = v388[22];
      v390 = v388[23];
      v391 = v388[24];
      memset(__p, 0, 24);
      sub_2621DE214(__p, v246, v247, v248);
      if (v248 != 1)
      {
        v392 = 0;
        v678 = *__p;
        v393 = 16;
        while (1)
        {
          v394 = v392++;
          if (v392 < v248)
          {
            break;
          }

LABEL_384:
          v393 += 16;
          if (v392 == v248 - 1)
          {
            goto LABEL_385;
          }
        }

        v395 = (*(v660 + 136) + 16 * v394);
        v396 = v393;
        v397 = v392;
        v669 = v393;
        while (1)
        {
          v398 = *(v660 + 136);
          v399 = sub_2621C92AC(v395, (v398 + v396), 0);
          if ((180.0 - v399) < v399)
          {
            v399 = 180.0 - v399;
          }

          if (v399 < v390)
          {
            goto LABEL_383;
          }

          v401 = vsub_f32(v395[1], *v395);
          v402 = *(v398 + v396);
          v403 = vsub_f32(*(v398 + v396 + 8), v402);
          *v400.i32 = -*&v401.i32[1];
          v404 = vzip1_s32(v400, v401);
          v405 = vmul_f32(v403, v404);
          if (vaddv_f32(v405) == 0.0)
          {
            goto LABEL_383;
          }

          v406 = vmul_f32(vsub_f32(*v395, v402), v404);
          v407 = vmla_n_f32(v402, v403, vdiv_f32(vadd_f32(v406, vdup_lane_s32(v406, 1)), vadd_f32(v405, vdup_lane_s32(v405, 1))).f32[0]);
          v709.__r_.__value_.__l.__data_ = v407;
          *v720 = 0;
          *&v720[4] = 0;
          *&v720[8] = 0;
          LODWORD(v725) = 0;
          WORD2(v725) = 0;
          DWORD2(v725) = 0;
          sub_262353F30(v660, &v709, v394, v720, v389);
          sub_262353F30(v660, &v709, v397, &v725, v389);
          v408 = *v720;
          v409 = *&v725;
          if (*v720 >= v389 || *&v725 >= v389)
          {
            v410 = BYTE4(v725);
          }

          else
          {
            v410 = BYTE4(v725);
            if (v720[4] == 1 && (BYTE4(v725) & 1) != 0)
            {
              v411 = v392;
              v412 = SDWORD2(v725);
              v413 = *(v660 + 136);
              v414 = *(v660 + 144);
              if (v394 == sub_262353E7C(v413, v414, v397, *(&v413[DWORD2(v725) != 0] + v396)))
              {
                v415 = *&v720[8];
                if (v397 == sub_262353E7C(v413, v414, v394, v413[2 * v394 + (*&v720[8] != 0)]))
                {
                  *(v678 + 16 * v394 + 8 * v415) = v407;
                  v416 = (v678 + v396 + 8 * v412);
                  v392 = v411;
                  v393 = v669;
                  goto LABEL_382;
                }
              }

              v410 = 1;
              v392 = v411;
              v393 = v669;
            }
          }

          if ((v720[5] & 1) == 0 && v408 > v391 && (v410 & 1) != 0 && v409 < v389 && (v417 = SDWORD2(v725), v394 == sub_262353E7C(*(v660 + 136), *(v660 + 144), v397, *(*(v660 + 136) + 8 * (DWORD2(v725) != 0) + v396))))
          {
            v418 = v678 + 16 * v397;
          }

          else
          {
            if (BYTE5(v725))
            {
              goto LABEL_383;
            }

            if (v409 <= v391)
            {
              goto LABEL_383;
            }

            if (v408 >= v389)
            {
              goto LABEL_383;
            }

            if ((v720[4] & 1) == 0)
            {
              goto LABEL_383;
            }

            v417 = *&v720[8];
            if (v397 != sub_262353E7C(*(v660 + 136), *(v660 + 144), v394, *(*(v660 + 136) + 16 * v394 + 8 * (*&v720[8] != 0))))
            {
              goto LABEL_383;
            }

            v418 = v678 + 16 * v394;
          }

          v416 = (v418 + 8 * v417);
LABEL_382:
          *v416 = v407;
LABEL_383:
          ++v397;
          v396 += 16;
          if (v248 == v397)
          {
            goto LABEL_384;
          }
        }
      }

LABEL_385:
      sub_2623537A4(v660, __p);
      if (*__p)
      {
        operator delete(*__p);
      }

      v161 = *v686;
      v160 = v687;
LABEL_388:
      v163 = *(v660 + 136);
      v97 = *(v660 + 144);
      *(v660 + 136) = v161;
      v686[0] = v163;
      v686[1] = v97;
      v162 = *(v660 + 152);
      *(v660 + 152) = v160;
      v687 = v162;
      goto LABEL_389;
    }

    v697 = 0;
    v698 = 0;
    v699 = 0;
    v139 = v660;
    v140 = (*(v660 + 192) - *(v660 + 184)) >> 2;
    *__p = 0;
    sub_262355D5C(&v725, v140, __p);
    v141 = (*(v139 + 192) - *(v139 + 184)) >> 2;
    *__p = 0;
    sub_262355D5C(&v709, v141, __p);
    v142 = (*(v139 + 192) - *(v139 + 184)) >> 2;
    *__p = 0;
    sub_262355D5C(&v706, v142, __p);
    v143 = *(v660 + 184);
    v144 = *(v660 + 192) - v143;
    if (v144)
    {
      v145 = v144 >> 2;
      v146 = v725;
      v147 = *(v660 + 44);
      v148 = v709.__r_.__value_.__r.__words[0];
      v149 = v706;
      if (v145 <= 1)
      {
        v145 = 1;
      }

      do
      {
        v150 = *v143++;
        *v146 = v150;
        *v148++ = v150 - v147;
        v151 = *v146++;
        *v149++ = v151 + v147;
        --v145;
      }

      while (v145);
    }

    v723 = 0uLL;
    v724 = 0;
    v152 = v700;
    for (j = v701; v152 != j; v152 += 3)
    {
      v154 = *v152;
      v155 = *(v660 + 208);
      *__p = **(v155 + 24 * **v152);
      *&__p[8] = *(*(v155 + 24 * *v154) + 8);
      *&__p[16] = **(v155 + 24 * v154[1]);
      *&__p[24] = *(*(v155 + 24 * v154[1]) + 8);
      memset(v720, 0, 24);
      sub_2622AB9E8(v720, __p, &__p[32], 4uLL);
      sub_2623489A8(&v723, v720);
      if (*v720)
      {
        operator delete(*v720);
      }
    }

    v156 = v709.__r_.__value_.__r.__words[0];
    *&__p[8] = 0;
    *__p = (v709.__r_.__value_.__l.__size_ - v709.__r_.__value_.__r.__words[0]) >> 3;
    *&__p[4] = 1;
    if (*__p)
    {
      v157 = ((v709.__r_.__value_.__l.__size_ - v709.__r_.__value_.__r.__words[0]) << 29) >> 29;
      v158 = malloc_type_malloc(v157 & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
      v159 = v158;
      *&__p[8] = v158;
      if (v156 && v158)
      {
        memcpy(v158, v156, v157 & 0xFFFFFFFFFFFFFFF8);
      }
    }

    else
    {
      v159 = 0;
    }

    v164 = v706;
    v705 = 0;
    LODWORD(v704) = (v707 - v706) >> 3;
    HIDWORD(v704) = 1;
    if (v704)
    {
      v165 = (v707 - v706) << 29 >> 29;
      v166 = malloc_type_malloc(v165 & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
      v167 = v166;
      v705 = v166;
      if (v164 && v166)
      {
        memcpy(v166, v164, v165 & 0xFFFFFFFFFFFFFFF8);
      }
    }

    else
    {
      v167 = 0;
    }

    *v720 = &unk_2874EEEC0;
    sub_26235BA28(&v720[8], __p);
    sub_26235BA28(&v720[24], &v704);
    if (v167)
    {
      free(v167);
    }

    if (v159)
    {
      free(v159);
    }

    memset(&v720[40], 0, 32);
    *v720 = &unk_2874EEE88;
    __dst = 0;
    v722 = (*(&v725 + 1) - v725) >> 3;
    if (*(&v723 + 1) != v723)
    {
      v168 = 0xAAAAAAAAAAAAAAABLL * ((*(&v723 + 1) - v723) >> 3);
      if (v168 <= 0xAAAAAAAAAAAAAAALL)
      {
        sub_2621E1E3C(v168);
      }

      sub_2621CBEB0();
    }

    sub_26235DF8C(v723, *(&v723 + 1), 0);
    v170 = v169;
    v171 = *&v720[48];
    if (*&v720[48] != v169)
    {
      v172 = *&v720[48];
      do
      {
        v174 = *(v172 - 24);
        v172 -= 24;
        v173 = v174;
        if (v174)
        {
          *(v171 - 16) = v173;
          operator delete(v173);
        }

        v171 = v172;
      }

      while (v172 != v170);
    }

    *&v720[48] = v170;
    v175 = v725;
    v176 = *(&v725 + 1) - v725;
    v177 = (*(&v725 + 1) - v725) >> 3;
    if (v177)
    {
      v178 = v176 << 29 >> 29;
      v179 = malloc_type_malloc(v178 & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
      v180 = v179;
      if (v175 && v179)
      {
        memcpy(v179, v175, v178 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v177 >= 1)
      {
        if (*&v720[68] * *&v720[64] != v177)
        {
          if (__dst)
          {
            free(__dst);
            __dst = 0;
          }

          *&v720[64] = v177 | 0x100000000;
          v205 = malloc_type_malloc(v176 & 0x3FFFFFFF8, 0x100004000313F17uLL);
          __dst = v205;
          if (v205)
          {
            if (!v180)
            {
LABEL_150:
              *&__p[88] = -1;
              memset(&__p[48], 0, 40);
              memset(&__p[96], 0, 32);
              *&v711 = 0x500000000;
              *__p = &unk_2874EEEF8;
              *&__p[8] = 100;
              *&__p[16] = xmmword_2623A78E0;
              *&__p[32] = xmmword_2623A78F0;
              v705 = 0;
              LODWORD(v704) = (*(&v725 + 1) - v725) >> 3;
              HIDWORD(v704) = 1;
              if (v704)
              {
                v181 = malloc_type_malloc((((*(&v725 + 1) - v725) << 29) >> 29) & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
                v705 = v181;
                LODWORD(v182) = v704;
                if (v181)
                {
                  bzero(v181, 8 * HIDWORD(v704) * v704);
                  LODWORD(v182) = v704;
                }

                if (v182 >= 1)
                {
                  v183 = v725;
                  v184 = v705;
                  v182 = v182;
                  do
                  {
                    v185 = *v183++;
                    *v184++ = v185;
                    --v182;
                  }

                  while (v182);
                }
              }

              v186 = sub_262355E30(__p, v720, &v704);
              v187 = (*(v660 + 192) - *(v660 + 184)) >> 2;
              v703 = 0;
              sub_26220A3AC(&v697, v187, &v703, v188);
              v189 = v704;
              v190 = v705;
              if (v704 < 1)
              {
                if (!v705)
                {
LABEL_162:
                  *__p = &unk_2874EEEF8;
                  if (*&__p[120])
                  {
                    free(*&__p[120]);
                    *&__p[120] = 0;
                  }

                  *&__p[112] = 0;
                  if (*&__p[104])
                  {
                    free(*&__p[104]);
                  }

                  *v720 = &unk_2874EEE88;
                  if (__dst)
                  {
                    free(__dst);
                    __dst = 0;
                  }

                  *&v720[64] = 0;
                  *__p = &v720[40];
                  sub_2621E1D40(__p);
                  *v720 = &unk_2874EEEC0;
                  if (*&v720[32])
                  {
                    free(*&v720[32]);
                    *&v720[32] = 0;
                  }

                  *&v720[24] = 0;
                  if (*&v720[16])
                  {
                    free(*&v720[16]);
                  }

                  *__p = &v723;
                  sub_2621E1D40(__p);
                  if (v706)
                  {
                    v707 = v706;
                    operator delete(v706);
                  }

                  if (v709.__r_.__value_.__r.__words[0])
                  {
                    v709.__r_.__value_.__l.__size_ = v709.__r_.__value_.__r.__words[0];
                    operator delete(v709.__r_.__value_.__l.__data_);
                  }

                  if (v725)
                  {
                    *(&v725 + 1) = v725;
                    operator delete(v725);
                  }

                  v195 = v697;
                  if (v186)
                  {
                    memset(__p, 0, 24);
                    sub_2621C8E70(__p, v697, v698, (v698 - v697) >> 2);
                    v196 = *(v660 + 304);
                    v197 = *(v660 + 312);
                    if (v196 != v197)
                    {
                      v198 = *(v660 + 184);
                      v199 = *__p;
                      do
                      {
                        v200 = *v196++;
                        *(v199 + 8 * v200) = *(v198 + 8 * v200);
                        *(v199 + ((8 * v200) | 4)) = *(v198 + ((8 * v200) | 4));
                      }

                      while (v196 != v197);
                    }

                    v201 = *(v660 + 208);
                    v202 = *(v660 + 216);
                    memset(v720, 0, 24);
                    v203 = v202 - v201;
                    if (v202 != v201)
                    {
                      v204 = 0xAAAAAAAAAAAAAAABLL * (v203 >> 3);
                      if (!(v204 >> 60))
                      {
                        sub_2621CBF10(v204);
                      }

                      sub_2621CBEB0();
                    }

                    v206 = v201;
                    if (v203)
                    {
                      v207 = 0;
                      v208 = *__p;
                      if ((v203 >> 4) <= 1)
                      {
                        v209 = 1;
                      }

                      else
                      {
                        v209 = v203 >> 4;
                      }

                      do
                      {
                        v210 = *(v660 + 208);
                        v211 = sub_2621C92AC((*(v660 + 136) + 16 * v207), (16 * v207), 0);
                        if ((180.0 - v211) < v211)
                        {
                          v211 = 180.0 - v211;
                        }

                        v212 = *(v210 + 24 * v207);
                        if (v211 <= *(v660 + 32))
                        {
                          v216 = 0;
                          v217 = *(v660 + 184);
                          v218 = (*(v660 + 136) + 16 * v207);
                          v219 = 1;
                          do
                          {
                            v220 = v219;
                            v221 = v212[v216];
                            v222 = *(v217 + 8 * v221);
                            v223 = vsub_f32(*v218, v218[1]);
                            v224 = *(v660 + 48) * sqrtf(vaddv_f32(vmul_f32(v223, v223)));
                            v225 = vsub_f32(v222, *(v208 + 8 * v221));
                            v226 = sqrtf(vaddv_f32(vmul_f32(v225, v225)));
                            if (v224 > *(v660 + 44))
                            {
                              v224 = *(v660 + 44);
                            }

                            if (v226 > v224)
                            {
                              v227 = 2 * v221;
                              *(v208 + 4 * v227) = v222.i32[0];
                              *(v208 + ((4 * v227) | 4)) = *(v217 + ((4 * v227) | 4));
                            }

                            v219 = 0;
                            v216 = 1;
                          }

                          while ((v220 & 1) != 0);
                        }

                        else
                        {
                          v213 = *v212;
                          v214 = *(v660 + 184);
                          *(v208 + 8 * *v212) = *(v214 + 8 * *v212);
                          *(v208 + ((8 * v213) | 4)) = *(v214 + ((8 * v213) | 4));
                          v215 = v212[1];
                          *(v208 + 8 * v215) = *(v214 + 8 * v215);
                          *(v208 + ((8 * v215) | 4)) = *(v214 + ((8 * v215) | 4));
                        }

                        ++v207;
                      }

                      while (v207 != v209);
                      v201 = *(v660 + 208);
                      v206 = *(v660 + 216);
                    }

                    if ((*(v660 + 681) & 1) == 0)
                    {
                      v725 = 0uLL;
                      v726[0] = 0;
                      if (v206 != v201)
                      {
                        v228 = 0;
                        v229 = 0;
                        v230 = 0;
                        do
                        {
                          v231 = *(v201 + v228);
                          v232 = *(*__p + 8 * *v231);
                          v233 = *(*__p + 8 * v231[1]);
                          if (v229 >= v726[0])
                          {
                            v234 = v725;
                            v235 = v229 - v725;
                            v236 = (v229 - v725) >> 4;
                            v237 = v236 + 1;
                            if ((v236 + 1) >> 60)
                            {
                              sub_2621CBEB0();
                            }

                            v238 = v726[0] - v725;
                            if ((v726[0] - v725) >> 3 > v237)
                            {
                              v237 = v238 >> 3;
                            }

                            if (v238 >= 0x7FFFFFFFFFFFFFF0)
                            {
                              v239 = 0xFFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v239 = v237;
                            }

                            if (v239)
                            {
                              sub_2621CBF10(v239);
                            }

                            v240 = (16 * v236);
                            *v240 = v232;
                            v240[1] = v233;
                            v229 = (16 * v236 + 16);
                            memcpy(0, v234, v235);
                            *&v725 = 0;
                            v726[0] = 0;
                            if (v234)
                            {
                              operator delete(v234);
                            }
                          }

                          else
                          {
                            *v229 = v232;
                            v229[1] = v233;
                            v229 += 2;
                          }

                          *(&v725 + 1) = v229;
                          ++v230;
                          v201 = *(v660 + 208);
                          v228 += 24;
                        }

                        while (0xAAAAAAAAAAAAAAABLL * ((*(v660 + 216) - v201) >> 3) > v230);
                      }

                      sub_26235574C(&v709, &v725, v660 + 400, v660 + 544);
                    }

                    if (v206 != v201)
                    {
                      v241 = 0;
                      v242 = 0;
                      v243 = *__p;
                      v244 = 8;
                      do
                      {
                        *(v244 - 8) = *(v243 + 8 * **(v201 + v241));
                        *(v244 - 4) = *(v243 + 8 * **(v201 + v241) + 4);
                        *v244 = *(v243 + 8 * *(*(v201 + v241) + 8));
                        *(v244 + 4) = *(v243 + 8 * *(*(v201 + v241) + 8) + 4);
                        ++v242;
                        v201 = *(v660 + 208);
                        v244 += 16;
                        v241 += 24;
                      }

                      while (0xAAAAAAAAAAAAAAABLL * ((*(v660 + 216) - v201) >> 3) > v242);
                    }

                    sub_2623537A4(v660, v720);
                    if (*v720)
                    {
                      operator delete(*v720);
                    }

                    if (*__p)
                    {
                      operator delete(*__p);
                    }

                    v195 = v697;
                  }

                  if (v195)
                  {
                    operator delete(v195);
                  }

                  goto LABEL_233;
                }
              }

              else
              {
                v191 = v697;
                v192 = v705;
                do
                {
                  v193 = *v192++;
                  v194 = v193;
                  *v191++ = v194;
                  --v189;
                }

                while (v189);
              }

              free(v190);
              goto LABEL_162;
            }

            memcpy(v205, v180, 8 * *&v720[64] * *&v720[68]);
LABEL_149:
            free(v180);
            goto LABEL_150;
          }

LABEL_148:
          if (!v180)
          {
            goto LABEL_150;
          }

          goto LABEL_149;
        }

        if (__dst && v180)
        {
          memcpy(__dst, v180, 8 * *&v720[64] * *&v720[68]);
        }

LABEL_147:
        *&v720[64] = v177 | 0x100000000;
        goto LABEL_148;
      }
    }

    else
    {
      v180 = 0;
    }

    if (__dst)
    {
      free(__dst);
      __dst = 0;
    }

    goto LABEL_147;
  }

  if (v86 != v82)
  {
    sub_2621CBF10(1uLL);
  }

  v162 = 0;
  v163 = 0;
  v686[1] = v97;
LABEL_389:
  v419 = objc_alloc(MEMORY[0x277CBEB18]);
  v422 = objc_msgSend_walls(v648, v420, v421);
  v659 = objc_msgSend_initWithArray_copyItems_(v419, v423, v422, 1);

  v684 = 0u;
  v685 = 0u;
  v682 = 0u;
  v683 = 0u;
  v426 = objc_msgSend_curvedWalls(v648, v424, v425);
  v430 = objc_msgSend_countByEnumeratingWithState_objects_count_(v426, v427, &v682, v719, 16);
  if (v430)
  {
    v431 = *v683;
    do
    {
      for (k = 0; k != v430; ++k)
      {
        if (*v683 != v431)
        {
          objc_enumerationMutation(v426);
        }

        v433 = objc_msgSend_copy(*(*(&v682 + 1) + 8 * k), v428, v429, v645);
        objc_msgSend_addObject_(v659, v434, v433);
      }

      v430 = objc_msgSend_countByEnumeratingWithState_objects_count_(v426, v428, &v682, v719, 16);
    }

    while (v430);
  }

  if (objc_msgSend_count(v659, v435, v436) == (v97 - v163) >> 4)
  {
    v437 = objc_alloc_init(RSFloorPlan);
    sub_2622AE900(v437, v659);
    v670 = v437;
    v440 = objc_msgSend_walls(v437, v438, v439);
    sub_262245AE0(v686, v440);

    memset(&__p[8], 0, 128);
    v711 = 0u;
    v712 = 0u;
    *__p = &unk_2874EED80;
    v713 = 0;
    v714 = &unk_2874EEE20;
    v715 = 0;
    v717 = 0;
    v716 = 0;
    sub_2621C5224(v718);
    memset(&v718[176], 0, 24);
    sub_262245CF8(__p, v670);
    sub_2622B5BA8((v660 + 760), __p);
    v679 = objc_alloc_init(RSFloorPlan);
    v445 = objc_msgSend_array(MEMORY[0x277CBEB18], v441, v442);
    v446 = *&__p[8];
    v447 = *&__p[16];
    while (v446 != v447)
    {
      v449 = sub_26224644C(v446, v443, v444);
      if (v449)
      {
        objc_msgSend_addObject_(v445, v448, v449);
      }

      v446 += 176;
    }

    sub_2622AE900(v679, v445);
    v454 = objc_msgSend_array(MEMORY[0x277CBEB18], v450, v451);
    v456 = *&__p[40];
    for (m = *&__p[32]; m != v456; m += 176)
    {
      v458 = sub_26224644C(m, v452, v453);
      if (v458)
      {
        objc_msgSend_addObject_(v454, v457, v458);
      }
    }

    sub_2622AE920(v679, v454);
    v463 = objc_msgSend_array(MEMORY[0x277CBEB18], v459, v460);
    v464 = *&__p[56];
    v465 = *&__p[64];
    while (v464 != v465)
    {
      v467 = sub_26224644C(v464, v461, v462);
      if (v467)
      {
        objc_msgSend_addObject_(v463, v466, v467);
      }

      v464 += 176;
    }

    sub_2622AE910(v679, v463);
    v472 = objc_msgSend_array(MEMORY[0x277CBEB18], v468, v469);
    v473 = *&__p[80];
    v474 = *&__p[88];
    while (v473 != v474)
    {
      v476 = sub_26224644C(v473, v470, v471);
      if (v476)
      {
        objc_msgSend_addObject_(v472, v475, v476);
      }

      v473 += 176;
    }

    sub_26223FCDC(v679, v472);
    v481 = objc_msgSend_array(MEMORY[0x277CBEB18], v477, v478);
    v482 = *&__p[104];
    v483 = *&__p[112];
    while (v482 != v483)
    {
      v485 = sub_26224644C(v482, v479, v480);
      if (v485)
      {
        objc_msgSend_addObject_(v481, v484, v485);
      }

      v482 += 176;
    }

    sub_26223FCBC(v679, v481);
    v488 = objc_msgSend_array(MEMORY[0x277CBEB18], v486, v487);
    v490 = *(&v712 + 1);
    for (n = v712; n != v490; ++n)
    {
      v491 = *n;
      objc_msgSend_addObject_(v488, v492, v491);
    }

    sub_2622AE930(v679, v488);

    memset(v720, 0, 24);
    v495 = objc_msgSend_walls(v679, v493, v494);
    sub_2622455CC(v495, v720);

    v496 = *v720;
    *v720 = v163;
    v671 = v496;
    *v686 = v496;
    v162 = *&v720[16];
    v687 = *&v720[16];
    if (v163)
    {
      operator delete(v163);
    }

    sub_2621C4F2C(__p);

    v97 = *(&v671 + 1);
    v163 = v671;
  }

  v649 = v648;
  v499 = objc_msgSend_curvedWalls(v649, v497, v498);
  v502 = objc_msgSend_count(v499, v500, v501) == 0;

  if (!v502)
  {
    memset(v720, 0, 32);
    *&v720[32] = 1065353216;
    sub_2621D0F64(__p, "curved_window");
    v505 = objc_msgSend_curvedWalls(v649, v503, v504);
    v508 = objc_msgSend_curvedWindows(v649, v506, v507);
    sub_2622407C8(v660, __p, v505, v508);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_2621D0F64(__p, "curved_door");
    v511 = objc_msgSend_curvedWalls(v649, v509, v510);
    v514 = objc_msgSend_curvedDoors(v649, v512, v513);
    sub_2622407C8(v660, __p, v511, v514);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v515 = v688;
    if (v689 != v688)
    {
      v516 = 0;
      if (((v689 - v688) >> 4) <= 1)
      {
        v517 = 1;
      }

      else
      {
        v517 = (v689 - v688) >> 4;
      }

      do
      {
        v518 = sub_262241638(v515, v686);
        if ((v518 & 0x80000000) == 0)
        {
          v521 = v518 & 0x7FFFFFFF;
          if (v521 < (v97 - v163) >> 4 && *(&v518 + 1) > 0.000001)
          {
            v522 = objc_msgSend_curvedWalls(v649, v519, v520, *(&v518 + 1));
            v524 = objc_msgSend_objectAtIndexedSubscript_(v522, v523, v516);
            v525 = *v515;
            v526 = v515[1];
            objc_msgSend_circleCenter(v524, v527, v528);
            v532 = &v163[16 * v521];
            v533 = *v515;
            v534 = v515[1];
            v535 = *v532;
            v536 = v532[1];
            v537 = vsub_f32(*v532, *v515);
            v538 = vmul_f32(v537, v537);
            v539 = vsub_f32(*v532, v534);
            v540 = vmul_f32(v539, v539);
            v541 = vsqrt_f32(vadd_f32(vzip1_s32(v538, v540), vzip2_s32(v538, v540)));
            v542 = vcgt_f32(v541, vdup_lane_s32(v541, 1)).u8[0];
            v543 = v536;
            v544 = *v532;
            if (v542)
            {
              *v532 = v536;
              v532[1] = v535;
              v533 = *v515;
              v534 = v515[1];
              v543 = v535;
              v544 = v536;
            }

            if (v524)
            {
              v545 = vsub_f32(vmul_f32(vadd_f32(v525, v526), 0x3F0000003F000000), v531);
              v546 = vsub_f32(v544, v543);
              v547.i32[0] = vdup_lane_s32(v546, 1).u32[0];
              v547.f32[1] = -*v546.i32;
              v548 = vmul_f32(v547, v547);
              v548.i32[0] = vadd_f32(v548, vdup_lane_s32(v548, 1)).u32[0];
              v549 = vrsqrte_f32(v548.u32[0]);
              v550 = vmul_f32(v549, vrsqrts_f32(v548.u32[0], vmul_f32(v549, v549)));
              v551 = vsub_f32(v533, v534);
              v552 = vmla_n_f32(vmul_f32(vadd_f32(v535, v536), 0x3F0000003F000000), vmul_n_f32(vmul_n_f32(v547, vmul_f32(v550, vrsqrts_f32(v548.u32[0], vmul_f32(v550, v550))).f32[0]), sqrtf(vaddv_f32(vmul_f32(v545, v545)))), sqrtf(vaddv_f32(vmul_f32(v546, v546))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v551, v551))), 0.000001));
              v680 = vsub_f32(v543, v552);
              v553 = sqrtf(vaddv_f32(vmul_f32(v680, v680)));
              v554 = vsub_f32(v544, v552);
              v555 = sqrtf(vaddv_f32(vmul_f32(v554, v554)));
              v524[45] = v552;
              v556 = atan2f(v554.f32[1], v554.f32[0]) * 57.296;
              v524[42].f32[1] = v556;
              v557 = atan2f(v680.f32[1], v680.f32[0]) * 57.296;
              if (v557 < v556)
              {
                v557 = v557 + 360.0;
              }

              v524[43].f32[0] = v557;
              v524[42].f32[0] = (v555 + v553) * 0.5;
            }

            objc_msgSend_quad(v524, v529, v530, v645);
            *&v558 = *v532;
            DWORD2(v558) = v532[1].i32[0];
            v681 = v558;
            objc_msgSend_quad(v524, v559, v560);
            v672 = v561;
            v666 = v532[1];
            objc_msgSend_quad(v524, v562, v563);
            v662 = v564;
            v656 = v532[1];
            objc_msgSend_quad(v524, v565, v566);
            v653 = v567;
            *&v568 = *v532;
            DWORD2(v568) = v532[1].i32[0];
            *obja = v568;
            objc_msgSend_quad(v524, v569, v570);
            v571 = v681;
            DWORD2(v571) = v672;
            *&v572 = v666;
            *(&v572 + 1) = vextq_s8(v662, v662, 8uLL).u64[0];
            *&v573 = v656;
            *(&v573 + 1) = vextq_s8(v653, v653, 8uLL).u64[0];
            v574 = *obja;
            DWORD2(v574) = v575;
            *__p = v571;
            *&__p[16] = v572;
            *&__p[32] = v573;
            *&__p[48] = v574;
            if (v524)
            {
              objc_copyStruct(&v524[34], __p, 64, 1, 0);
            }

            v576 = v97 - &v532[2];
            if (v97 != &v532[2])
            {
              memmove(v532, &v532[2], v97 - &v532[2]);
            }

            v97 -= 2;
            v686[1] = v532 + v576;
          }
        }

        ++v516;
        v515 += 2;
      }

      while (v517 != v516);
    }

    sub_2621D0F64(__p, "curved_window");
    v579 = objc_msgSend_curvedWalls(v649, v577, v578);
    v582 = objc_msgSend_curvedWindows(v649, v580, v581);
    sub_26224136C(v660, __p, v579, v582);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_2621D0F64(__p, "curved_door");
    v585 = objc_msgSend_curvedWalls(v649, v583, v584);
    v588 = objc_msgSend_curvedDoors(v649, v586, v587);
    sub_26224136C(v660, __p, v585, v588);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_262241820(*&v720[16]);
    if (*v720)
    {
      operator delete(*v720);
    }

    v162 = v687;
  }

  v589 = *__src;
  *__src = *v686;
  *v686 = v589;
  v590 = v696;
  v696 = v162;
  v687 = v590;
  sub_2621D0F64(__p, "opening");
  sub_262246344(v660, __p, __src, v694);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "window");
  sub_262246344(v660, __p, __src, v693);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "door");
  sub_262246344(v660, __p, __src, v692);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "opendoor");
  sub_262246344(v660, __p, __src, v691);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v593 = objc_msgSend_walls(v649, v591, v592, v645);
  sub_262245AE0(__src, v593);

  v596 = objc_msgSend_openings(v649, v594, v595);
  sub_262245AE0(v694, v596);

  v599 = objc_msgSend_windows(v649, v597, v598);
  sub_262245AE0(v693, v599);

  v602 = objc_msgSend_doors(v649, v600, v601);
  sub_262245AE0(v692, v602);

  v605 = objc_msgSend_opendoors(v649, v603, v604);
  sub_262245AE0(v691, v605);

  sub_2621D0F64(&v723, "polygon");
  v608 = objc_msgSend_walls(v649, v606, v607);
  memset(v720, 0, 64);
  obj = v608;
  v610 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v609, v720, __p, 16);
  if (v610)
  {
    v654 = **&v720[16];
    do
    {
      v663 = 0;
      v657 = v610;
      do
      {
        if (**&v720[16] != v654)
        {
          objc_enumerationMutation(obj);
        }

        v611 = *(*&v720[8] + 8 * v663);
        if (v724 >= 0)
        {
          v612 = HIBYTE(v724);
        }

        else
        {
          v612 = *(&v723 + 1);
        }

        sub_262245A54(&v709, v612 + 1);
        if ((v709.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v615 = &v709;
        }

        else
        {
          v615 = v709.__r_.__value_.__r.__words[0];
        }

        if (v612)
        {
          if (v724 >= 0)
          {
            v616 = &v723;
          }

          else
          {
            v616 = v723;
          }

          memmove(v615, v616, v612);
        }

        *(&v615->__r_.__value_.__l.__data_ + v612) = 58;
        v617 = objc_msgSend_identifier(v611, v613, v614);
        v620 = objc_msgSend_UUIDString(v617, v618, v619);
        v621 = v620;
        v624 = objc_msgSend_UTF8String(v620, v622, v623);
        sub_2621D0F64(&v706, v624);
        if (v708 >= 0)
        {
          v625 = &v706;
        }

        else
        {
          v625 = v706;
        }

        if (v708 >= 0)
        {
          v626 = HIBYTE(v708);
        }

        else
        {
          v626 = v707;
        }

        v627 = std::string::append(&v709, v625, v626);
        v725 = *&v627->__r_.__value_.__l.__data_;
        v726[0] = *(&v627->__r_.__value_.__l + 2);
        v627->__r_.__value_.__l.__size_ = 0;
        v627->__r_.__value_.__r.__words[2] = 0;
        v627->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v708) < 0)
        {
          operator delete(v706);
        }

        if (SHIBYTE(v709.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v709.__r_.__value_.__l.__data_);
        }

        v628 = sub_2621E26D8((v660 + 720), &v725);
        if (v628)
        {
          v631 = v628;
          objc_msgSend_quad(v611, v629, v630);
          objc_msgSend_quad(v611, v632, v633);
          if (v631[6] != v631[5])
          {
            objc_msgSend_quad(v611, v634, v635);
            objc_msgSend_polygon(v611, v636, v637);
            sub_2621CBF10(1uLL);
          }

          v638 = objc_msgSend_polygonEdgeStates(v611, v634, v635);
          v641 = objc_msgSend_polygonEdgeConfidence(v611, v639, v640);
          v644 = objc_msgSend_polygonSize(v611, v642, v643);
          sub_2622C51B4(v611, 0, v638, v641, v644);
        }

        if (SHIBYTE(v726[0]) < 0)
        {
          operator delete(v725);
        }

        ++v663;
      }

      while (v663 != v657);
      v610 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v629, v720, __p, 16);
    }

    while (v610);
  }

  if (SHIBYTE(v724) < 0)
  {
    operator delete(v723);
  }

  sub_262245570(v660 + 720);

  if (v686[0])
  {
    operator delete(v686[0]);
  }

  if (v688)
  {
    operator delete(v688);
  }

  if (v691[0])
  {
    operator delete(v691[0]);
  }

  if (v692[0])
  {
    operator delete(v692[0]);
  }

  if (v693[0])
  {
    operator delete(v693[0]);
  }

  if (v694[0])
  {
    operator delete(v694[0]);
  }

  if (__src[0])
  {
    operator delete(__src[0]);
  }
}

void sub_262244D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (v66)
  {
    free(v66);
  }

  if (STACK[0x488])
  {
    free(STACK[0x488]);
    STACK[0x488] = 0;
  }

  STACK[0x480] = 0;
  STACK[0x220] = v67;
  sub_2621E1D40(&STACK[0x220]);
  sub_26235DF24(&STACK[0x440]);
  STACK[0x440] = v68 - 224;
  sub_2621E1D40(&STACK[0x440]);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  v70 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v70;
    operator delete(v70);
  }

  v71 = *(v68 - 192);
  if (v71)
  {
    *(v68 - 184) = v71;
    operator delete(v71);
  }

  if (a61)
  {
    operator delete(a61);
  }

  STACK[0x440] = &a64;
  sub_2621E1D40(&STACK[0x440]);
  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a57)
  {
    operator delete(a57);
  }

  _Unwind_Resume(a1);
}

void sub_262245570(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_262241820(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_2622455CC(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v28, v32, 16);
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_msgSend_quad(v10, v5, v6, v26);
        v27 = v11;
        objc_msgSend_quad(v10, v12, v13);
        v26 = v14;
        v16 = *(a2 + 8);
        v15 = *(a2 + 16);
        if (v16 >= v15)
        {
          v18 = (v16 - *a2) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_2621CBEB0();
          }

          v20 = v15 - *a2;
          if (v20 >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_2621CBF10(v21);
          }

          v22 = (16 * v18);
          *v22 = v27;
          v22[1] = v14;
          v17 = 16 * v18 + 16;
          v23 = *(a2 + 8) - *a2;
          v24 = 16 * v18 - v23;
          memcpy(v22 - v23, *a2, v23);
          v25 = *a2;
          *a2 = v24;
          *(a2 + 8) = v17;
          *(a2 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v16 = v27;
          v16[1] = v14;
          v17 = (v16 + 2);
        }

        *(a2 + 8) = v17;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v28, v32, 16);
    }

    while (v7);
  }
}

void sub_2622457C0(uint64_t a1, uint64_t a2, uint64_t *a3, float32x2_t **a4)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    if (*a3 != a3[1] && *a4 != a4[1])
    {
      v41 = a2;
      v9 = sub_262240C70((a1 + 720), a2, &v41);
      v9[6] = v9[5];
      if (a3[1] != *a3)
      {
        v10 = a4[1];
        v11 = *a4;
        if (v10 != v11)
        {
          while (1)
          {
            v41 = a2;
            v12 = sub_262240C70((a1 + 720), a2, &v41);
            v13 = sub_262241638(v11, a3);
            v14 = 0;
            v15 = 0;
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_22;
            }

            v16 = 0xFFFFFFFFLL;
            if (*(&v13 + 1) > 0.000001)
            {
              break;
            }

LABEL_23:
            v27 = v15 | v16;
            v29 = v12[6];
            v28 = v12[7];
            if (v29 >= v28)
            {
              v31 = v12[5];
              v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 2);
              v33 = v32 + 1;
              if (v32 + 1 > 0x1555555555555555)
              {
                sub_2621CBEB0();
              }

              v34 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 2);
              if (2 * v34 > v33)
              {
                v33 = 2 * v34;
              }

              if (v34 >= 0xAAAAAAAAAAAAAAALL)
              {
                v35 = 0x1555555555555555;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                sub_262241270(v35);
              }

              v36 = 12 * v32;
              *v36 = v27;
              *(v36 + 8) = v14;
              v30 = 12 * v32 + 12;
              v37 = v12[5];
              v38 = v12[6] - v37;
              v39 = (12 * v32 - v38);
              memcpy(v39, v37, v38);
              v40 = v12[5];
              v12[5] = v39;
              v12[6] = v30;
              v12[7] = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v29 = v27;
              *(v29 + 8) = v14;
              v30 = v29 + 12;
            }

            v12[6] = v30;
            v11 += 2;
            if (v11 == v10)
            {
              return;
            }
          }

          v16 = v13 & 0x7FFFFFFF;
          if (v16 < (a3[1] - *a3) >> 4)
          {
            v17 = (*a3 + 16 * v16);
            v18 = vsub_f32(*v17, v17[1]);
            v19 = vmul_f32(v18, v18);
            *v19.i32 = sqrtf(vaddv_f32(v19));
            v20 = vsub_f32(*v11, *v17);
            v21 = vmul_f32(v20, v20);
            v22 = vsub_f32(v11[1], *v17);
            v23 = vmul_f32(v22, v22);
            v24 = vdiv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v23, v21), vzip2_s32(v23, v21))), vdup_lane_s32(v19, 0));
            v25 = v24.f32[1];
            if (v24.f32[1] > 1.0)
            {
              v25 = 1.0;
            }

            v26 = vcltz_f32(v24);
            if (v24.f32[0] > 1.0)
            {
              v24.f32[0] = 1.0;
            }

            if (v26.i8[4])
            {
              v15 = 0;
            }

            else
            {
              v15 = LODWORD(v25) << 32;
            }

            if (v26.i8[0])
            {
              v14 = 0;
            }

            else
            {
              v14 = v24.i32[0];
            }

            goto LABEL_23;
          }

          v15 = 0;
          v14 = 0;
LABEL_22:
          v16 = 0xFFFFFFFFLL;
          goto LABEL_23;
        }
      }
    }
  }
}

uint64_t sub_262245A54(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void sub_262245AE0(uint64_t *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *a1;
  v4 = a1[1];
  if (objc_msgSend_count(v3, v6, v7) == (v4 - v5) >> 4)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = v3;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v44, v49, 16);
    if (v12)
    {
      v13 = 0;
      v14 = *v45;
      do
      {
        v15 = 0;
        v16 = 16 * v13;
        v33 = v37;
        v35 = v38;
        v29 = v42;
        v31 = v40;
        do
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v44 + 1) + 8 * v15);
          v18 = (*a1 + v16);
          v43 = *v18;
          v41 = v18[1];
          objc_msgSend_quad(v17, v10, v11, v29, v31, v33, v35);
          v39 = v19;
          objc_msgSend_quad(v17, v20, v21);
          *&v22 = v41;
          v23 = vextq_s8(v39, v39, 8uLL).u32[0];
          *&v24 = v43;
          *&v25 = v43;
          *(&v25 + 1) = __PAIR64__(v36, v23);
          *&v26 = v41;
          *(&v26 + 1) = __PAIR64__(v34, v23);
          v28 = vextq_s8(v27, v27, 8uLL).u32[0];
          *(&v22 + 1) = __PAIR64__(v32, v28);
          *(&v24 + 1) = __PAIR64__(v30, v28);
          v37 = v26;
          v38 = v25;
          src[0] = v25;
          src[1] = v26;
          v40 = v22;
          v42 = v24;
          src[2] = v22;
          src[3] = v24;
          if (v17)
          {
            objc_copyStruct((v17 + 272), src, 64, 1, 0);
          }

          ++v13;
          ++v15;
          v16 += 16;
          v33 = v37;
          v35 = v38;
          v29 = v42;
          v31 = v40;
        }

        while (v12 != v15);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v44, v49, 16, v42, v40, v37, v38);
      }

      while (v12);
    }
  }
}

void sub_262245CF8(uint64_t *a1, void *a2)
{
  v108 = *MEMORY[0x277D85DE8];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v72 = a2;
  v5 = objc_msgSend_walls(v72, v3, v4);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v98, v107, 16);
  if (v7)
  {
    v8 = *v99;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v99 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v98 + 1) + 8 * i);
        sub_2621C5224(&v93);
        sub_2622464F4(&v93, v10);
        sub_26224663C(a1 + 1, &v93, v11);
        sub_2621C50C4(&v93);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v98, v107, 16);
    }

    while (v7);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v15 = objc_msgSend_openings(v72, v13, v14);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v89, v106, 16);
  if (v17)
  {
    v18 = *v90;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v90 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v89 + 1) + 8 * j);
        sub_2621C5224(&v93);
        sub_2622464F4(&v93, v20);
        sub_26224663C(a1 + 4, &v93, v21);
        sub_2621C50C4(&v93);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, &v89, v106, 16);
    }

    while (v17);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v25 = objc_msgSend_windows(v72, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v85, v105, 16);
  if (v27)
  {
    v28 = *v86;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v86 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v85 + 1) + 8 * k);
        sub_2621C5224(&v93);
        sub_2622464F4(&v93, v30);
        sub_26224663C(a1 + 7, &v93, v31);
        sub_2621C50C4(&v93);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v32, &v85, v105, 16);
    }

    while (v27);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v35 = objc_msgSend_doors(v72, v33, v34);
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v81, v104, 16);
  if (v37)
  {
    v38 = *v82;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v82 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v81 + 1) + 8 * m);
        sub_2621C5224(&v93);
        sub_2622464F4(&v93, v40);
        sub_26224663C(a1 + 10, &v93, v41);
        sub_2621C50C4(&v93);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v42, &v81, v104, 16);
    }

    while (v37);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v45 = objc_msgSend_opendoors(v72, v43, v44);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v77, v103, 16);
  if (v47)
  {
    v48 = *v78;
    do
    {
      for (n = 0; n != v47; ++n)
      {
        if (*v78 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v77 + 1) + 8 * n);
        sub_2621C5224(&v93);
        sub_2622464F4(&v93, v50);
        sub_26224663C(a1 + 13, &v93, v51);
        sub_2621C50C4(&v93);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v52, &v77, v103, 16);
    }

    while (v47);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v55 = objc_msgSend_curvedWalls(v72, v53, v54);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v73, v102, 16);
  if (v59)
  {
    v60 = *v74;
    v61 = a1 + 19;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v74 != v60)
        {
          objc_enumerationMutation(v55);
        }

        v63 = objc_msgSend_copy(*(*(&v73 + 1) + 8 * ii), v57, v58);
        v64 = v63;
        v66 = a1[20];
        v65 = a1[21];
        if (v66 >= v65)
        {
          v68 = (v66 - *v61) >> 3;
          if ((v68 + 1) >> 61)
          {
            sub_2621CBEB0();
          }

          v69 = v65 - *v61;
          v70 = v69 >> 2;
          if (v69 >> 2 <= (v68 + 1))
          {
            v70 = v68 + 1;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v71 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v70;
          }

          v97 = a1 + 19;
          if (v71)
          {
            sub_2622317F8(v71);
          }

          v93 = 0;
          v94 = (8 * v68);
          v96 = 0;
          *v94 = v64;
          v95 = 8 * v68 + 8;
          sub_262246690((a1 + 19), &v93);
          v67 = a1[20];
          sub_262246740(&v93);
        }

        else
        {
          *v66 = v63;
          v67 = v66 + 1;
          a1[20] = v67;
        }

        a1[20] = v67;
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v73, v102, 16);
    }

    while (v59);
  }
}

void *sub_262246344(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  result = sub_2621E26D8((a1 + 720), a2);
  if (result)
  {
    if (*a3 != a3[1] && *a4 != a4[1])
    {
      v18 = a2;
      result = sub_262240C70((a1 + 720), a2, &v18);
      v9 = result[5];
      v10 = result[6];
      if (v10 != v9)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v9 + v11);
          if ((v14 & 0x80000000) == 0 && v14 < (a3[1] - *a3) >> 4)
          {
            v15 = (*a3 + 16 * v14);
            v16 = vsub_f32(v15[1], *v15);
            v17 = v9 + v11;
            *(*a4 + v12) = vmla_n_f32(*v15, v16, *(v17 + 4));
            *(*a4 + v12 + 8) = vmla_n_f32(*v15, v16, *(v17 + 8));
            v9 = result[5];
            v10 = result[6];
          }

          ++v13;
          v12 += 16;
          v11 += 12;
        }

        while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2));
      }
    }
  }

  return result;
}

id sub_26224644C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = objc_msgSend_copy(v4, a2, a3);
    v6 = v5;
    *&v7 = *(a1 + 16);
    *&v8 = *(a1 + 24);
    v9 = v7;
    DWORD2(v9) = *(a1 + 68);
    v10 = v8;
    DWORD2(v10) = DWORD2(v9);
    DWORD2(v8) = *(a1 + 64);
    DWORD2(v7) = DWORD2(v8);
    v12[0] = v9;
    v12[1] = v10;
    v12[2] = v8;
    v12[3] = v7;
    if (v5)
    {
      objc_copyStruct((v5 + 272), v12, 64, 1, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_2622464F4(uint64_t a1, void *a2)
{
  v32 = a2;
  objc_storeStrong((a1 + 8), a2);
  *&v6 = sub_262246BD0(a1, v4, v5);
  v9 = objc_msgSend_identifier(*(a1 + 8), v7, v8, v6);
  v12 = objc_msgSend_UUIDString(v9, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_UTF8String(v13, v14, v15);
  sub_2621DA094((a1 + 128), v16);

  v19 = objc_msgSend_parentIdentifier(*(a1 + 8), v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_parentIdentifier(*(a1 + 8), v20, v21);
    v25 = objc_msgSend_UUIDString(v22, v23, v24);
    v26 = v25;
    v29 = objc_msgSend_UTF8String(v26, v27, v28);
    sub_2621DA094((a1 + 152), v29);

    v30 = v32;
  }

  else
  {
    if (*(a1 + 175) < 0)
    {
      *(a1 + 160) = 0;
      v31 = *(a1 + 152);
    }

    else
    {
      v31 = (a1 + 152);
      *(a1 + 175) = 0;
    }

    v30 = v32;
    *v31 = 0;
  }
}

uint64_t sub_26224663C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_2622468BC(a1, a2, a3);
  }

  else
  {
    sub_262246794(a1[1], a2, a3);
    result = v4 + 176;
    a1[1] = v4 + 176;
  }

  a1[1] = result;
  return result;
}

void sub_262246690(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t sub_262246740(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_262246794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2874EEE40;
  *(a1 + 8) = 0u;
  *(a1 + 128) = 0u;
  v5 = (a1 + 128);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v6 = objc_msgSend_copy(*(a2 + 8), a2, a3);
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  std::string::operator=(v5, (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_262246888(_Unwind_Exception *a1)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622468BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1745D1745D1745DLL)
  {
    sub_2621CBEB0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    sub_2622469FC(v6);
  }

  v13 = 0;
  v14 = 176 * v3;
  sub_262246794(176 * v3, a2, a3);
  v15 = (176 * v3 + 176);
  v7 = a1[1];
  v8 = 176 * v3 + *a1 - v7;
  sub_262246A58(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_262246B64(&v13);
  return v12;
}

void sub_2622469E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_262246B64(va);
  _Unwind_Resume(a1);
}

void sub_2622469FC(unint64_t a1)
{
  if (a1 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t (***sub_262246A58(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = a3 - 176;
    v7 = result;
    v8 = a3;
    do
    {
      sub_262246794(v8, v7, a3);
      v7 += 22;
      v8 += 176;
      v5 -= 176;
      v6 += 176;
    }

    while (v7 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 22;
      result = (*v11)(v4);
      v9 += 22;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t sub_262246B64(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 176);
    *(a1 + 16) = i - 176;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float sub_262246BD0(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_quad(*(a1 + 8), a2, a3);
  v32 = v4;
  objc_msgSend_quad(*(a1 + 8), v5, v6);
  *(a1 + 16) = vzip1q_s64(v32, v7);
  objc_msgSend_quad(*(a1 + 8), v8, v9);
  *(a1 + 64) = v10;
  objc_msgSend_quad(*(a1 + 8), v11, v12);
  *(a1 + 68) = v15;
  for (i = 24; i != 72; i += 16)
  {
    objc_msgSend_quad(*(a1 + 8), v13, v14);
    v35 = v19;
    v37 = v20;
    v34 = v21;
    v36 = v22;
    v39 = v23;
    v38 = v24;
    v25 = *&v33[i];
    if (v25 >= *(a1 + 64))
    {
      v25 = *(a1 + 64);
    }

    *(a1 + 64) = v25;
    objc_msgSend_quad(*(a1 + 8), v17, v18);
    v35 = v28;
    v37 = DWORD2(v26);
    v34 = v29;
    v36 = v26;
    v39 = DWORD2(v27);
    v38 = v27;
    v30 = *&v33[i];
    if (*(a1 + 68) >= v30)
    {
      v30 = *(a1 + 68);
    }

    *(a1 + 68) = v30;
  }

  *&v26 = *(a1 + 16);
  *&v27 = *(a1 + 24);
  DWORD2(v26) = *(a1 + 64);
  *(&v27 + 2) = v30;
  *(a1 + 32) = v26;
  *(a1 + 48) = v27;
  result = v30 - *(&v26 + 2);
  *(a1 + 72) = result;
  return result;
}

void sub_262246CEC(float32x2_t *a1, int32x2_t *a2, int8x16_t *a3, simd_float4x4 *a4, uint64_t a5, int a6)
{
  sub_262247100(a3, a4, a5);
  v15.i32[0] = LODWORD(v12.f64[1]);
  if (*&v12.f64[1] >= *&v13.i32[2])
  {
    v16 = *&v12.f64[1];
  }

  else
  {
    v16 = *&v13.i32[2];
  }

  v14.f64[0] = 0.001;
  if (v16 < 0.001)
  {
    goto LABEL_5;
  }

  if (*&v13.i32[2] < *&v12.f64[1])
  {
    v15.f32[0] = *&v13.i32[2];
  }

  if (v15.f32[0] >= 0.001)
  {
LABEL_14:
    v23 = vdivq_f32(v12, vdupq_laneq_s32(v12, 2)).u64[0];
    v25 = vdupq_laneq_s32(v13, 2);
    v24 = vdivq_f32(v13, v25);
    v25.i32[0] = a2[2].i32[0];
    if (fabsf(v25.f32[0]) > 0.000001)
    {
      v46 = v24;
      v49 = v23;
      v26 = __sincosf_stret((v25.f32[0] / 180.0) * 3.1416);
      v27.f32[0] = -v26.__sinval;
      v27.i32[1] = LODWORD(v26.__cosval);
      v15.i64[1] = v46.i64[1];
      v15.i32[0] = 0;
      v15.f32[1] = a2[1].i32[1];
      v23 = vadd_f32(vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), v49.f32[0]), v27, v49, 1), *v15.f32);
      *v24.f32 = vadd_f32(*v15.f32, vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), v46.f32[0]), v27, *v46.f32, 1));
    }

    if (!a6)
    {
      goto LABEL_29;
    }

    *v28.f32 = v23;
    *&v28.u32[2] = v23;
    *v25.f32 = vadd_s32(a2[1], -1);
    *v15.f32 = vcvt_f32_s32(*v25.f32);
    v29.i32[0] = vmovn_s32(vcgeq_f32(v15, v28)).u32[0];
    v29.i32[1] = vmovn_s32(vcgeq_f32(v28, v15)).i32[1];
    v30.i64[0] = v24.i64[0];
    v30.i64[1] = v24.i64[0];
    v31.i32[0] = vmovn_s32(vcgeq_f32(v15, v30)).u32[0];
    v31.i32[1] = vmovn_s32(vcgeq_f32(v30, v15)).i32[1];
    v32 = vandq_s8(vmovl_s16(v31), xmmword_2623A77C0);
    v32.i32[0] = vaddvq_s32(v32);
    if ((vminv_u16(v29) & 1) != 0 && (~v32.i32[0] & 0xF) == 0)
    {
      goto LABEL_29;
    }

    v33 = vandq_s8(vmovl_s16(v29), xmmword_2623A77C0);
    v33.i32[0] = vaddvq_s32(v33);
    if ((~v33.i32[0] & 0xF) == 0 || (~v32.i32[0] & 0xF) == 0)
    {
      v44 = v32;
      v47 = *v24.f32;
      v54 = v23;
      v55 = v24.i64[0];
      v50 = v23;
      sub_2621DDBC8(v53, &v54, v25.i32[0], v25.i32[1], v25, *v33.i64, xmmword_2623A77C0);
      v36 = *&v53[0];
      if (*(&v53[0] + 1) - *&v53[0] == 8)
      {
        v35.i32[0] = 15;
        v37.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v37.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v37.i64[0] = vceqq_s8(vandq_s8(v44, v37), vandq_s8(v35, v37)).u64[0];
        v38 = vdupq_lane_s8(*v37.i8, 0);
        v39 = vbsl_s8((v37.i8[0] & 0xF | (16 * (v38.i8[1] & 0xF)) | ((v38.i8[2] & 0xF) << 8) & 0xFFF | ((v38.i8[3] & 0xFu) << 12) | ((v38.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v38.i8[5] & 0xF) << 20) | ((v38.i8[6] & 0xF) << 24) | ((v38.i8[7] & 0xF) << 28) | ((v38.i8[8] & 0xF) << 32) | ((v38.i8[9] & 0xF) << 36) | ((v38.i8[10] & 0xF) << 40) | ((v38.i8[11] & 0xF) << 44) | ((v38.i8[12] & 0xF) << 48) | ((v38.i8[13] & 0xF) << 52) | ((v38.i8[14] & 0xF) << 56) | (v38.u8[15] << 60)), v47, v50);
        v48 = **&v53[0];
        v51 = v39;
LABEL_28:
        operator delete(v36);
        v24.i64[0] = v48;
        v23 = v51;
LABEL_29:
        v40 = &a2[2] + 1;
        v41 = vld1_dup_f32(v40);
        *a1 = vdiv_f32(v23, v41);
        a1[1] = vdiv_f32(*v24.f32, v41);
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v54 = v23;
      v55 = v24.i64[0];
      sub_2621DDBC8(v53, &v54, v25.i32[0], v25.i32[1], v25, *v33.i64, xmmword_2623A77C0);
      v36 = *&v53[0];
      if (*(&v53[0] + 1) - *&v53[0] == 16)
      {
        v51 = **&v53[0];
        v48 = *(*&v53[0] + 8);
        goto LABEL_28;
      }
    }

    if (v36)
    {
      operator delete(v36);
    }

    goto LABEL_5;
  }

  v12.f64[0] = *&v13.i32[2];
  v18 = vdupq_lane_s64(vcgtq_f64(v14, v12).i64[0], 0);
  v19 = a3[1];
  v43 = vbslq_s8(v18, *a3, v19);
  v45 = vbslq_s8(v18, v19, *a3);
  v42 = vsubq_f32(v43, v45);
  v12 = vmulq_f32(v42, v42);
  v20 = ((sqrtf(*&v12.f64[1] + vaddv_f32(*&v12.f64[0])) + -0.001) / 0.0299999993);
  if ((v20 & 0x80000000) == 0)
  {
    v21 = 0;
    v22 = v20 + 1;
    do
    {
      v52 = *&v12.f64[1];
      v53[0] = vmlaq_n_f32(v45, v42, v21 / v22);
      v53[1] = v43;
      sub_262247100(v53, a4, a5);
      v15.i64[1] = v52;
      HIDWORD(v12.f64[1]) = HIDWORD(v52);
      if (*&v12.f64[1] > 0.001)
      {
        goto LABEL_14;
      }
    }

    while (v22 != ++v21);
  }

LABEL_5:
  v17 = 0;
  a1->i8[0] = 0;
LABEL_30:
  a1[2].i8[0] = v17;
}

void sub_262247100(_OWORD *a1, simd_float4x4 *a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  sub_2621D9F60(v5, a1);
  sub_2621D9F60(v5, a1 + 1);
  __invert_f4(*a2);
  sub_2621CBF10(1uLL);
}

void sub_2622472CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622472FC(uint64_t a1)
{
  sub_262247334(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262247334(uint64_t a1)
{
  *a1 = &unk_2874EE418;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  v7 = (a1 + 136);
  sub_2621C5004(&v7);
  v7 = (a1 + 112);
  sub_2621C5004(&v7);

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_262247400(id *a1)
{
  sub_262247438(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262247498(uint64_t a1)
{
  *a1 = &unk_2874EE418;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  *(a1 + 112) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  v3 = objc_opt_new();
  v4 = *v2;
  *v2 = v3;

  v5 = objc_opt_new();
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;

  return a1;
}

void sub_262247550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v3 + 184);
  if (v6)
  {
    *(v3 + 192) = v6;
    operator delete(v6);
  }

  v7 = *(v3 + 160);
  if (v7)
  {
    *(v3 + 168) = v7;
    operator delete(v7);
  }

  sub_2621C5004(va);
  sub_2621C5004(va);

  v8 = *(v3 + 48);
  if (v8)
  {
    *(v3 + 56) = v8;
    operator delete(v8);
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    *(v3 + 24) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_2622475D4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_2621CBEB0();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

void sub_262247708(uint64_t *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        sub_2621C5224(v16);
        sub_2622464F4(v16, v13);
        v17[60] = sub_262247B68(a3, a4, v17, 2uLL);
        sub_26224663C(a1, v16, v14);
        sub_2621C50C4(v16);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v18, v22, 16);
    }

    while (v10);
  }
}

void sub_26224785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2621C5004(&a9);

  _Unwind_Resume(a1);
}

void sub_26224789C(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 176;
      v6 = v3 - 176;
      v7 = (v3 - 176);
      do
      {
        v8 = *v7;
        v7 -= 22;
        (*v8)(v6);
        v5 -= 176;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_26224793C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  v5 = 0x8E38E38E38E38E39 * (v4 >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v10 = v3 + 36 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0x8E38E38E38E38E39 * ((v7 - v2) >> 2) < v6)
    {
      if (a2 <= 0x71C71C71C71C71CLL)
      {
        v8 = 0x1C71C71C71C71C72 * ((v7 - v3) >> 2);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (0x8E38E38E38E38E39 * ((v7 - v3) >> 2) >= 0x38E38E38E38E38ELL)
        {
          v9 = 0x71C71C71C71C71CLL;
        }

        else
        {
          v9 = v8;
        }

        sub_262247B0C(v9);
      }

      sub_2621CBEB0();
    }

    v10 = v2 + 36 * v6;
    v11 = 36 * a2 - 4 * (v4 >> 2);
    v12 = v2 + 33;
    v13 = vdup_n_s32(0x49742400u);
    do
    {
      *(v12 - 33) = xmmword_2623A7900;
      *(v12 - 17) = v13;
      *(v12 - 9) = -3175874560;
      *(v12 - 1) = 0;
      v12 += 36;
      v11 -= 36;
    }

    while (v11);
  }

  a1[1] = v10;
}

void sub_262247B0C(unint64_t a1)
{
  if (a1 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262247B68(__int128 *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3 && a1 && a2)
  {
    operator new[]();
  }

  return 0;
}

void sub_262247F68(const void **a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v4[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v3) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 2;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621CBEC8(v10);
      }

      sub_2621CBEB0();
    }

    v12 = 0;
    v13 = *a3;
    v14 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = vdupq_n_s64(v14);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_2623A7620)));
      if (v16.i8[0])
      {
        *&v3[8 * v12] = v13;
      }

      if (v16.i8[4])
      {
        *&v3[8 * v12 + 8] = v13;
      }

      v12 += 2;
    }

    while (v14 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    v11 = &v3[8 * v6];
  }

  a1[1] = v11;
}

uint64_t sub_262248128(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      if (v12 != 3)
      {
        if (v12 == 4)
        {
          v158 = *(*a3 + 16);

          return sub_262249288(v11, v11 + 1, v11 + 2, a2 - 1, v158);
        }

        if (v12 == 5)
        {
          result = sub_262249288(v11, v11 + 1, v11 + 2, v11 + 3, *(*a3 + 16));
          v140 = v11[3];
          v141 = *(*a3 + 16);
          v142 = (v141 + 20 * *v10);
          v143 = *v142;
          v144 = (v141 + 20 * v140);
          if (v143 == *v144)
          {
            if (v142[1] <= v144[1])
            {
              return result;
            }
          }

          else if ((v143 & 1) == 0)
          {
            return result;
          }

          v11[3] = *v10;
          *v10 = v140;
          v223 = v11[2];
          v222 = v11[3];
          v224 = (v141 + 20 * v222);
          v225 = *v224;
          v226 = (v141 + 20 * v223);
          if (v225 == *v226)
          {
            if (v224[1] <= v226[1])
            {
              return result;
            }
          }

          else if ((v225 & 1) == 0)
          {
            return result;
          }

          v11[2] = v222;
          v11[3] = v223;
          v243 = v11[1];
          v244 = (v141 + 20 * v243);
          if (v225 == *v244)
          {
            if (v224[1] <= v244[1])
            {
              return result;
            }
          }

          else if ((v225 & 1) == 0)
          {
            return result;
          }

          v11[1] = v222;
          v11[2] = v243;
          v250 = *v11;
          v251 = (v141 + 20 * *v11);
          if (v225 == *v251)
          {
            if (v224[1] <= v251[1])
            {
              return result;
            }
          }

          else if ((v225 & 1) == 0)
          {
            return result;
          }

          *v11 = v222;
          v11[1] = v250;
          return result;
        }

        goto LABEL_10;
      }

      v145 = *v11;
      v150 = v11[1];
      v151 = *(*a3 + 16);
      v152 = (v151 + 20 * v150);
      v153 = *v152;
      v154 = (v151 + 20 * *v11);
      v155 = *v154;
      if (v153 == v155)
      {
        if (v152[1] <= v154[1])
        {
          goto LABEL_220;
        }
      }

      else if ((v153 & 1) == 0)
      {
LABEL_220:
        v156 = (v151 + 20 * *v10);
        v157 = *v156;
        if (v157 == v153)
        {
          if (v156[1] <= v152[1])
          {
            return result;
          }
        }

        else if ((v157 & 1) == 0)
        {
          return result;
        }

        v11[1] = *v10;
        *v10 = v150;
        v246 = *v11;
        v245 = v11[1];
        v247 = (v151 + 20 * v245);
        v248 = *v247;
        v249 = (v151 + 20 * *v11);
        if (v248 == *v249)
        {
          if (v247[1] <= v249[1])
          {
            return result;
          }
        }

        else if ((v248 & 1) == 0)
        {
          return result;
        }

        *v11 = v245;
        v11[1] = v246;
        return result;
      }

      v227 = (v151 + 20 * *v10);
      v228 = *v227;
      if (v228 == v153)
      {
        if (v227[1] <= v152[1])
        {
LABEL_310:
          *v11 = v150;
          v11[1] = v145;
          v229 = (v151 + 20 * *v10);
          v230 = *v229;
          if (v230 == v155)
          {
            if (v229[1] <= v154[1])
            {
              return result;
            }
          }

          else if ((v230 & 1) == 0)
          {
            return result;
          }

          v11[1] = *v10;
          goto LABEL_344;
        }
      }

      else if ((v228 & 1) == 0)
      {
        goto LABEL_310;
      }

      *v11 = *v10;
LABEL_344:
      *v10 = v145;
      return result;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v145 = *v11;
      v146 = *(*a3 + 16);
      v147 = (v146 + 20 * *v10);
      v148 = *v147;
      v149 = (v146 + 20 * *v11);
      if (v148 == *v149)
      {
        if (v147[1] <= v149[1])
        {
          return result;
        }
      }

      else if ((v148 & 1) == 0)
      {
        return result;
      }

      *v11 = *v10;
      goto LABEL_344;
    }

LABEL_10:
    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v171 = (v12 - 2) >> 1;
      v172 = *a3;
      v173 = v171;
      while (2)
      {
        v174 = v173;
        if (v171 < v173)
        {
          goto LABEL_274;
        }

        v175 = (2 * v173) | 1;
        v176 = &v11[v175];
        if (2 * v174 + 2 >= v12)
        {
          v177 = *(v172 + 16);
          goto LABEL_256;
        }

        v177 = *(v172 + 16);
        v178 = (v177 + 20 * *v176);
        v179 = *v178;
        v180 = (v177 + 20 * v176[1]);
        if (v179 == *v180)
        {
          if (v178[1] <= v180[1])
          {
LABEL_256:
            v181 = v11[v174];
            v182 = (v177 + 20 * *v176);
            v183 = *v182;
            v184 = (v177 + 20 * v181);
            v185 = *v184;
            if (v183 == v185)
            {
              if (v182[1] > v184[1])
              {
                goto LABEL_274;
              }
            }

            else if (v183)
            {
              goto LABEL_274;
            }

            v11[v174] = *v176;
            if (v171 < v175)
            {
LABEL_261:
              v186 = v176;
LABEL_273:
              *v186 = v181;
LABEL_274:
              v173 = v174 - 1;
              if (v174)
              {
                continue;
              }

              while (2)
              {
                v194 = 0;
                v195 = *v11;
                v196 = *a3;
                v197 = v11;
LABEL_276:
                v198 = v197;
                v199 = &v197[v194];
                v197 = v199 + 1;
                v200 = 2 * v194;
                result = (2 * v194) | 1;
                v194 = result;
                v201 = v200 + 2;
                if (v201 < v12)
                {
                  v203 = v199[2];
                  v202 = v199 + 2;
                  v204 = *(v196 + 16);
                  v205 = (v204 + 20 * *(v202 - 1));
                  result = *v205;
                  v206 = (v204 + 20 * v203);
                  if (result == *v206)
                  {
                    if (v205[1] <= v206[1])
                    {
                      goto LABEL_282;
                    }
                  }

                  else if ((result & 1) == 0)
                  {
                    goto LABEL_282;
                  }

                  v197 = v202;
                  v194 = v201;
                }

LABEL_282:
                *v198 = *v197;
                if (v194 > ((v12 - 2) >> 1))
                {
                  if (v197 == --a2)
                  {
                    *v197 = v195;
                    goto LABEL_298;
                  }

                  *v197 = *a2;
                  *a2 = v195;
                  v207 = (v197 - v11 + 4) >> 2;
                  v208 = v207 - 2;
                  if (v207 < 2)
                  {
                    goto LABEL_298;
                  }

                  v209 = v208 >> 1;
                  v210 = &v11[v208 >> 1];
                  result = *v210;
                  v211 = *v197;
                  v212 = *(v196 + 16);
                  v213 = (v212 + 20 * result);
                  v214 = *v213;
                  v215 = (v212 + 20 * *v197);
                  v216 = *v215;
                  if (v214 == v216)
                  {
                    if (v213[1] <= v215[1])
                    {
                      goto LABEL_298;
                    }
                  }

                  else if ((v214 & 1) == 0)
                  {
                    goto LABEL_298;
                  }

                  *v197 = result;
                  if (v208 >= 2)
                  {
                    do
                    {
                      v218 = v209 - 1;
                      v209 = (v209 - 1) >> 1;
                      v217 = &v11[v209];
                      result = *v217;
                      v219 = (v212 + 20 * result);
                      v220 = *v219;
                      if (v220 == v216)
                      {
                        if (v219[1] <= v215[1])
                        {
                          goto LABEL_291;
                        }
                      }

                      else if ((v220 & 1) == 0)
                      {
                        goto LABEL_291;
                      }

                      *v210 = result;
                      v210 = &v11[v209];
                    }

                    while (v218 > 1);
                  }

                  else
                  {
LABEL_291:
                    v217 = v210;
                  }

                  *v217 = v211;
LABEL_298:
                  if (v12-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_276;
              }
            }

            while (2)
            {
              v187 = 2 * v175;
              v175 = (2 * v175) | 1;
              v186 = &v11[v175];
              v188 = v187 + 2;
              if (v188 < v12)
              {
                v189 = (v177 + 20 * *v186);
                v190 = *v189;
                v191 = (v177 + 20 * v186[1]);
                if (v190 == *v191)
                {
                  if (v189[1] <= v191[1])
                  {
                    goto LABEL_268;
                  }
                }

                else if ((v190 & 1) == 0)
                {
                  goto LABEL_268;
                }

                ++v186;
                v175 = v188;
              }

LABEL_268:
              v192 = (v177 + 20 * *v186);
              v193 = *v192;
              if (v193 == v185)
              {
                if (v192[1] > v184[1])
                {
                  goto LABEL_261;
                }
              }

              else if (v193)
              {
                goto LABEL_261;
              }

              *v176 = *v186;
              v176 = v186;
              if (v171 < v175)
              {
                goto LABEL_273;
              }

              continue;
            }
          }
        }

        else if ((v179 & 1) == 0)
        {
          goto LABEL_256;
        }

        break;
      }

      ++v176;
      v175 = 2 * v174 + 2;
      goto LABEL_256;
    }

    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = v14;
    v16 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v17 = *v14;
      v18 = *v11;
      v19 = (v16 + 20 * *v14);
      v20 = *v19;
      v21 = (v16 + 20 * *v11);
      v22 = *v21;
      if (v20 != v22)
      {
        if (v20)
        {
          goto LABEL_24;
        }

LABEL_15:
        v23 = (v16 + 20 * *v10);
        v24 = *v23;
        if (v24 == v20)
        {
          if (v23[1] <= v19[1])
          {
            goto LABEL_55;
          }
        }

        else if ((v24 & 1) == 0)
        {
          goto LABEL_55;
        }

        *v14 = *v10;
        *v10 = v17;
        v40 = *v11;
        v41 = (v16 + 20 * *v14);
        v42 = *v41;
        v43 = (v16 + 20 * *v11);
        if (v42 == *v43)
        {
          if (v41[1] <= v43[1])
          {
            goto LABEL_55;
          }
        }

        else if ((v42 & 1) == 0)
        {
          goto LABEL_55;
        }

        *v11 = *v14;
        *v14 = v40;
        goto LABEL_55;
      }

      if (v19[1] <= v21[1])
      {
        goto LABEL_15;
      }

LABEL_24:
      v33 = (v16 + 20 * *v10);
      v34 = *v33;
      if (v34 != v20)
      {
        if (v34)
        {
          goto LABEL_44;
        }

LABEL_26:
        *v11 = v17;
        *v14 = v18;
        v35 = (v16 + 20 * *v10);
        v36 = *v35;
        if (v36 == v22)
        {
          if (v35[1] <= v21[1])
          {
            goto LABEL_55;
          }
        }

        else if ((v36 & 1) == 0)
        {
          goto LABEL_55;
        }

        *v14 = *v10;
        goto LABEL_49;
      }

      if (v33[1] <= v19[1])
      {
        goto LABEL_26;
      }

LABEL_44:
      *v11 = *v10;
LABEL_49:
      *v10 = v18;
LABEL_55:
      v48 = v13 - 1;
      v49 = v11[v13 - 1];
      v50 = v11[1];
      v51 = (v16 + 20 * v49);
      v52 = *v51;
      v53 = (v16 + 20 * v50);
      v54 = *v53;
      if (v52 != v54)
      {
        if (v52)
        {
          goto LABEL_61;
        }

LABEL_57:
        v55 = *(a2 - 2);
        v56 = (v16 + 20 * v55);
        v57 = *v56;
        if (v57 == v52)
        {
          if (v56[1] <= v51[1])
          {
            goto LABEL_79;
          }
        }

        else if ((v57 & 1) == 0)
        {
          goto LABEL_79;
        }

        v11[v48] = v55;
        *(a2 - 2) = v49;
        v64 = v11[v48];
        v65 = v11[1];
        v66 = (v16 + 20 * v64);
        v67 = *v66;
        v68 = (v16 + 20 * v65);
        if (v67 == *v68)
        {
          if (v66[1] <= v68[1])
          {
            goto LABEL_79;
          }
        }

        else if ((v67 & 1) == 0)
        {
          goto LABEL_79;
        }

        v11[1] = v64;
        v11[v48] = v65;
        goto LABEL_79;
      }

      if (v51[1] <= v53[1])
      {
        goto LABEL_57;
      }

LABEL_61:
      v58 = *(a2 - 2);
      v59 = (v16 + 20 * v58);
      v60 = *v59;
      if (v60 != v52)
      {
        if (v60)
        {
          goto LABEL_71;
        }

LABEL_63:
        v11[1] = v49;
        v11[v48] = v50;
        v61 = *(a2 - 2);
        v62 = (v16 + 20 * v61);
        v63 = *v62;
        if (v63 == v54)
        {
          if (v62[1] <= v53[1])
          {
            goto LABEL_79;
          }
        }

        else if ((v63 & 1) == 0)
        {
          goto LABEL_79;
        }

        v11[v48] = v61;
        goto LABEL_76;
      }

      if (v59[1] <= v51[1])
      {
        goto LABEL_63;
      }

LABEL_71:
      v11[1] = v58;
LABEL_76:
      *(a2 - 2) = v50;
LABEL_79:
      v71 = v14[1];
      v69 = v14 + 1;
      v70 = v71;
      v72 = v11[2];
      v73 = (v16 + 20 * v71);
      v74 = *v73;
      v75 = (v16 + 20 * v72);
      v76 = *v75;
      if (v74 != v76)
      {
        if (v74)
        {
          goto LABEL_85;
        }

LABEL_81:
        v77 = *(a2 - 3);
        v78 = (v16 + 20 * v77);
        v79 = *v78;
        if (v79 == v74)
        {
          if (v78[1] <= v73[1])
          {
            goto LABEL_101;
          }
        }

        else if ((v79 & 1) == 0)
        {
          goto LABEL_101;
        }

        *v69 = v77;
        *(a2 - 3) = v70;
        v86 = v11[2];
        v87 = (v16 + 20 * *v69);
        v88 = *v87;
        v89 = (v16 + 20 * v86);
        if (v88 == *v89)
        {
          if (v87[1] <= v89[1])
          {
            goto LABEL_101;
          }
        }

        else if ((v88 & 1) == 0)
        {
          goto LABEL_101;
        }

        v11[2] = *v69;
        *v69 = v86;
        goto LABEL_101;
      }

      if (v73[1] <= v75[1])
      {
        goto LABEL_81;
      }

LABEL_85:
      v80 = *(a2 - 3);
      v81 = (v16 + 20 * v80);
      v82 = *v81;
      if (v82 != v74)
      {
        if (v82)
        {
          goto LABEL_95;
        }

LABEL_87:
        v11[2] = v70;
        *v69 = v72;
        v83 = *(a2 - 3);
        v84 = (v16 + 20 * v83);
        v85 = *v84;
        if (v85 == v76)
        {
          if (v84[1] <= v75[1])
          {
            goto LABEL_101;
          }
        }

        else if ((v85 & 1) == 0)
        {
          goto LABEL_101;
        }

        *v69 = v83;
        goto LABEL_98;
      }

      if (v81[1] <= v73[1])
      {
        goto LABEL_87;
      }

LABEL_95:
      v11[2] = v80;
LABEL_98:
      *(a2 - 3) = v72;
LABEL_101:
      v90 = v11[v48];
      v91 = *v15;
      v92 = (v16 + 20 * *v15);
      result = *v92;
      v93 = (v16 + 20 * v90);
      v94 = *v93;
      if (result == v94)
      {
        if (v92[1] <= v93[1])
        {
          goto LABEL_103;
        }

LABEL_107:
        v98 = *v69;
        v99 = (v16 + 20 * *v69);
        v100 = *v99;
        if (v100 == result)
        {
          if (v99[1] <= v92[1])
          {
            goto LABEL_109;
          }

LABEL_117:
          v11[v48] = v98;
LABEL_122:
          *v69 = v90;
LABEL_123:
          v101 = *v11;
          *v11 = v91;
          *v15 = v101;
          goto LABEL_124;
        }

        if (v100)
        {
          goto LABEL_117;
        }

LABEL_109:
        v11[v48] = v91;
        *v15 = v90;
        if (v100 == v94)
        {
          if (v99[1] <= v93[1])
          {
LABEL_111:
            v91 = v90;
            goto LABEL_123;
          }
        }

        else if ((v100 & 1) == 0)
        {
          goto LABEL_111;
        }

        *v15 = v98;
        v91 = v98;
        goto LABEL_122;
      }

      if (result)
      {
        goto LABEL_107;
      }

LABEL_103:
      v95 = *v69;
      v96 = (v16 + 20 * *v69);
      v97 = *v96;
      if (v97 == result)
      {
        if (v96[1] <= v92[1])
        {
          goto LABEL_123;
        }
      }

      else if ((v97 & 1) == 0)
      {
        goto LABEL_123;
      }

      *v15 = v95;
      *v69 = v91;
      if (v97 == v94)
      {
        if (v96[1] <= v93[1])
        {
LABEL_115:
          v91 = v95;
          goto LABEL_123;
        }
      }

      else if ((v97 & 1) == 0)
      {
        goto LABEL_115;
      }

      v11[v48] = v95;
      v69 = v15;
      v91 = v90;
      goto LABEL_122;
    }

    v25 = *v11;
    v26 = *v14;
    v27 = (v16 + 20 * *v11);
    v28 = *v27;
    v29 = (v16 + 20 * *v15);
    v30 = *v29;
    if (v28 == v30)
    {
      if (v27[1] > v29[1])
      {
        goto LABEL_30;
      }
    }

    else if (v28)
    {
LABEL_30:
      v37 = (v16 + 20 * *v10);
      result = *v37;
      if (result == v28)
      {
        if (v37[1] > v27[1])
        {
          goto LABEL_46;
        }
      }

      else if (result)
      {
LABEL_46:
        *v15 = *v10;
        goto LABEL_52;
      }

      *v15 = v25;
      *v11 = v26;
      v38 = (v16 + 20 * *v10);
      v39 = *v38;
      if (v39 != v30)
      {
        if ((v39 & 1) == 0)
        {
          goto LABEL_124;
        }

LABEL_51:
        *v11 = *v10;
LABEL_52:
        *v10 = v26;
        goto LABEL_124;
      }

      if (v38[1] > v29[1])
      {
        goto LABEL_51;
      }

      goto LABEL_124;
    }

    v31 = (v16 + 20 * *v10);
    v32 = *v31;
    if (v32 == v28)
    {
      if (v31[1] <= v27[1])
      {
        goto LABEL_124;
      }
    }

    else if ((v32 & 1) == 0)
    {
      goto LABEL_124;
    }

    *v11 = *v10;
    *v10 = v25;
    v44 = *v15;
    v45 = (v16 + 20 * *v11);
    v46 = *v45;
    v47 = (v16 + 20 * *v15);
    if (v46 != *v47)
    {
      if ((v46 & 1) == 0)
      {
        goto LABEL_124;
      }

LABEL_73:
      *v15 = *v11;
      *v11 = v44;
      goto LABEL_124;
    }

    if (v45[1] > v47[1])
    {
      goto LABEL_73;
    }

LABEL_124:
    --a4;
    v102 = *v11;
    v103 = *v11;
    if (a5)
    {
      v104 = *(v16 + 20 * v103);
LABEL_132:
      v112 = (v16 + 20 * v103 + 4);
      for (i = v11 + 1; ; ++i)
      {
        v114 = (v16 + 20 * *i);
        v115 = *v114;
        if (v115 != v104)
        {
          break;
        }

        if (v114[1] <= *v112)
        {
          goto LABEL_138;
        }

LABEL_137:
        ;
      }

      if (v115)
      {
        goto LABEL_137;
      }

LABEL_138:
      v116 = i - 1;
      j = a2 - 1;
      if (i - 1 != v11)
      {
        while (1)
        {
          v118 = (v16 + 20 * *j);
          v119 = *v118;
          if (v119 == v104)
          {
            if (v118[1] > *v112)
            {
              goto LABEL_153;
            }
          }

          else if (v119)
          {
            goto LABEL_153;
          }

          --j;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v120 = (v16 + 20 * *j);
          v121 = *v120;
          if (v121 == v104)
          {
            if (i >= j || v120[1] > *v112)
            {
              break;
            }
          }

          else if (i >= j || (v121 & 1) != 0)
          {
            break;
          }
        }
      }

LABEL_153:
      if (i >= j)
      {
        goto LABEL_167;
      }

      v122 = *j;
      v123 = *i;
      v124 = i;
      v125 = j;
      while (2)
      {
        *v124++ = v122;
        *v125 = v123;
        while (2)
        {
          v123 = *v124;
          v126 = (v16 + 20 * *v124);
          v127 = *v126;
          if (v127 == v104)
          {
            if (v126[1] <= *v112)
            {
              break;
            }

            goto LABEL_160;
          }

          if (v127)
          {
LABEL_160:
            ++v124;
            continue;
          }

          break;
        }

        v116 = v124 - 1;
        do
        {
          while (1)
          {
            v122 = *--v125;
            v128 = (v16 + 20 * *v125);
            v129 = *v128;
            if (v129 != v104)
            {
              break;
            }

            if (v128[1] > *v112)
            {
              goto LABEL_166;
            }
          }
        }

        while ((v129 & 1) == 0);
LABEL_166:
        if (v124 < v125)
        {
          continue;
        }

        break;
      }

LABEL_167:
      if (v116 != v11)
      {
        *v11 = *v116;
      }

      *v116 = v102;
      if (i < j)
      {
LABEL_172:
        result = sub_262248128(v9, v116, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v116 + 1;
      }

      else
      {
        v130 = sub_2622494A0(v11, v116, a3);
        v11 = v116 + 1;
        result = sub_2622494A0(v116 + 1, a2, a3);
        if (result)
        {
          a2 = v116;
          if (v130)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v130)
        {
          goto LABEL_172;
        }
      }
    }

    else
    {
      v105 = (v16 + 20 * *(v11 - 1));
      v106 = *v105;
      v107 = (v16 + 20 * v103);
      v104 = *v107;
      if (v106 == v104)
      {
        v104 = *v105;
        if (v105[1] > v107[1])
        {
          goto LABEL_132;
        }
      }

      else if (v106)
      {
        goto LABEL_132;
      }

      v108 = *v10;
      v109 = (v16 + 20 * *v10);
      v110 = *v109;
      if (v104 == v110)
      {
        if (v107[1] > v109[1])
        {
          v111 = v104;
LABEL_175:
          for (++v11; ; ++v11)
          {
            v131 = (v16 + 20 * *v11);
            if (v104 == *v131)
            {
              if (v107[1] > v131[1])
              {
                goto LABEL_188;
              }
            }

            else if (v111)
            {
              goto LABEL_188;
            }
          }
        }
      }

      else if (v104)
      {
        v111 = 1;
        goto LABEL_175;
      }

      for (++v11; v11 < a2; ++v11)
      {
        v132 = (v16 + 20 * *v11);
        if (v104 == *v132)
        {
          if (v107[1] > v132[1])
          {
            break;
          }
        }

        else if (v104)
        {
          break;
        }
      }

LABEL_188:
      k = a2;
      if (v11 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if (v104 == v110)
          {
            if (v107[1] <= *(v16 + 20 * v108 + 4))
            {
              break;
            }
          }

          else if ((v104 & 1) == 0)
          {
            break;
          }

          v134 = *(k - 1);
          v108 = v134;
          LOBYTE(v110) = *(v16 + 20 * v134);
        }
      }

      if (v11 >= k)
      {
        goto LABEL_207;
      }

      v135 = *v11;
      v136 = *k;
      do
      {
        *v11++ = v136;
        *k = v135;
        while (1)
        {
          v135 = *v11;
          v137 = (v16 + 20 * *v11);
          if (v104 == *v137)
          {
            break;
          }

          if (v104)
          {
            goto LABEL_204;
          }

LABEL_202:
          ++v11;
        }

        if (v107[1] <= v137[1])
        {
          goto LABEL_202;
        }

        do
        {
LABEL_204:
          while (1)
          {
            v136 = *--k;
            v138 = (v16 + 20 * *k);
            if (v104 == *v138)
            {
              break;
            }

            if ((v104 & 1) == 0)
            {
              goto LABEL_206;
            }
          }
        }

        while (v107[1] > v138[1]);
LABEL_206:
        ;
      }

      while (v11 < k);
LABEL_207:
      v139 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v139;
      }

      a5 = 0;
      *v139 = v102;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v11 == a2)
    {
      return result;
    }

    v231 = v11 + 1;
    if (v11 + 1 == a2)
    {
      return result;
    }

    v232 = *(*a3 + 16);
    while (1)
    {
      v233 = v9;
      v9 = v231;
      v235 = *v233;
      v234 = v233[1];
      v236 = (v232 + 20 * v234);
      v237 = *v236;
      v238 = (v232 + 20 * *v233);
      if (v237 == *v238)
      {
        if (*(v236 + 1) > v238[1])
        {
          v239 = *v236;
          goto LABEL_321;
        }
      }

      else if (v237)
      {
        v239 = 1;
        do
        {
LABEL_321:
          while (1)
          {
            v240 = v233;
            v241 = *--v233;
            v233[2] = v235;
            v235 = v241;
            v242 = (v232 + 20 * v241);
            result = *v242;
            if (v237 != result)
            {
              break;
            }

            if (*(v236 + 1) <= v242[1])
            {
              goto LABEL_325;
            }
          }
        }

        while ((v239 & 1) != 0);
LABEL_325:
        *v240 = v234;
      }

      v231 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v11 == a2)
  {
    return result;
  }

  v159 = v11 + 1;
  if (v11 + 1 == a2)
  {
    return result;
  }

  v160 = 0;
  v161 = *(*a3 + 16);
  v162 = v11;
  while (2)
  {
    v163 = v162;
    v162 = v159;
    v164 = v163[1];
    v165 = (v161 + 20 * v164);
    v166 = *v165;
    v167 = (v161 + 20 * *v163);
    result = *v167;
    if (v166 == result)
    {
      if (v165[1] <= v167[1])
      {
        goto LABEL_244;
      }
    }

    else if ((v166 & 1) == 0)
    {
      goto LABEL_244;
    }

    v163[1] = *v163;
    v168 = v11;
    if (v163 == v11)
    {
      goto LABEL_243;
    }

    v169 = v160;
    while (2)
    {
      result = *(v11 + v169 - 4);
      v170 = (v161 + 20 * result);
      if (v166 == *v170)
      {
        if (v165[1] <= v170[1])
        {
          v168 = v163;
          goto LABEL_243;
        }

LABEL_240:
        --v163;
        *(v11 + v169) = result;
        v169 -= 4;
        if (!v169)
        {
          v168 = v11;
          goto LABEL_243;
        }

        continue;
      }

      break;
    }

    if (v166)
    {
      goto LABEL_240;
    }

    v168 = (v11 + v169);
LABEL_243:
    *v168 = v164;
LABEL_244:
    v159 = v162 + 1;
    v160 += 4;
    if (v162 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

int *sub_262249288(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = (a5 + 20 * *a2);
  v8 = *v7;
  v9 = (a5 + 20 * *result);
  v10 = *v9;
  if (v8 == v10)
  {
    if (v7[1] <= v9[1])
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = *result;
    v14 = (a5 + 20 * *a3);
    v15 = *v14;
    if (v15 == v8)
    {
      if (v14[1] <= v7[1])
      {
LABEL_9:
        *result = v5;
        *a2 = v6;
        v5 = *a3;
        v16 = (a5 + 20 * *a3);
        v17 = *v16;
        if (v17 == v10)
        {
          if (v16[1] <= v9[1])
          {
LABEL_11:
            v11 = *a3;
            goto LABEL_22;
          }
        }

        else if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }

        *a2 = v5;
LABEL_20:
        *a3 = v6;
        goto LABEL_21;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    *result = *a3;
    goto LABEL_20;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = *a3;
  v11 = *a3;
  v12 = (a5 + 20 * *a3);
  v13 = *v12;
  if (v13 != v8)
  {
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_21:
    v5 = v6;
    goto LABEL_22;
  }

  if (v12[1] <= v7[1])
  {
    goto LABEL_21;
  }

LABEL_13:
  v11 = *a2;
  *a2 = v6;
  *a3 = v5;
  v18 = *result;
  v19 = (a5 + 20 * *a2);
  v20 = *v19;
  v21 = (a5 + 20 * *result);
  if (v20 == *v21)
  {
    if (v19[1] <= v21[1])
    {
      goto LABEL_22;
    }
  }

  else if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

  *result = *a2;
  *a2 = v18;
  v5 = *a3;
  v11 = *a3;
LABEL_22:
  v22 = (a5 + 20 * *a4);
  v23 = *v22;
  v24 = (a5 + 20 * v11);
  if (v23 == *v24)
  {
    if (v22[1] <= v24[1])
    {
      return result;
    }
  }

  else if ((v23 & 1) == 0)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v5;
  v25 = *a2;
  v26 = (a5 + 20 * *a3);
  v27 = *v26;
  v28 = (a5 + 20 * *a2);
  if (v27 == *v28)
  {
    if (v26[1] <= v28[1])
    {
      return result;
    }
  }

  else if ((v27 & 1) == 0)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v25;
  v29 = *result;
  v30 = (a5 + 20 * *a2);
  v31 = *v30;
  v32 = (a5 + 20 * *result);
  if (v31 == *v32)
  {
    if (v30[1] > v32[1])
    {
      goto LABEL_36;
    }
  }

  else if (v31)
  {
LABEL_36:
    *result = *a2;
    *a2 = v29;
  }

  return result;
}

BOOL sub_2622494A0(int *a1, int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        sub_262249288(a1, a1 + 1, a1 + 2, a2 - 1, *(*a3 + 16));
        return 1;
      }

      if (v6 != 5)
      {
        goto LABEL_18;
      }

      sub_262249288(a1, a1 + 1, a1 + 2, a1 + 3, *(*a3 + 16));
      v13 = *(a2 - 1);
      v14 = a1[3];
      v15 = *(*a3 + 16);
      v16 = (v15 + 20 * v13);
      v17 = *v16;
      v18 = (v15 + 20 * v14);
      if (v17 == *v18)
      {
        if (v16[1] <= v18[1])
        {
          return 1;
        }
      }

      else if ((v17 & 1) == 0)
      {
        return 1;
      }

      a1[3] = v13;
      *(a2 - 1) = v14;
      v50 = a1[2];
      v49 = a1[3];
      v51 = (v15 + 20 * v49);
      v52 = *v51;
      v53 = (v15 + 20 * v50);
      if (v52 == *v53)
      {
        if (v51[1] <= v53[1])
        {
          return 1;
        }
      }

      else if ((v52 & 1) == 0)
      {
        return 1;
      }

      a1[2] = v49;
      a1[3] = v50;
      v59 = a1[1];
      v60 = (v15 + 20 * v59);
      if (v52 == *v60)
      {
        if (v51[1] <= v60[1])
        {
          return 1;
        }
      }

      else if ((v52 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v49;
      a1[2] = v59;
      v73 = *a1;
      v74 = (v15 + 20 * *a1);
      if (v52 == *v74)
      {
        if (v51[1] > v74[1])
        {
          goto LABEL_93;
        }
      }

      else if (v52)
      {
LABEL_93:
        *a1 = v49;
        a1[1] = v73;
      }

      return 1;
    }

    v8 = *a1;
    v19 = a1[1];
    v20 = *(*a3 + 16);
    v21 = (v20 + 20 * v19);
    v22 = *v21;
    v23 = (v20 + 20 * *a1);
    v24 = *v23;
    if (v22 == v24)
    {
      if (v21[1] <= v23[1])
      {
        goto LABEL_15;
      }
    }

    else if ((v22 & 1) == 0)
    {
LABEL_15:
      v25 = *(a2 - 1);
      v26 = (v20 + 20 * v25);
      v27 = *v26;
      if (v27 == v22)
      {
        if (v26[1] <= v21[1])
        {
          return 1;
        }
      }

      else if ((v27 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v25;
      *(a2 - 1) = v19;
      v55 = *a1;
      v54 = a1[1];
      v56 = (v20 + 20 * v54);
      v57 = *v56;
      v58 = (v20 + 20 * *a1);
      if (v57 == *v58)
      {
        if (v56[1] <= v58[1])
        {
          return 1;
        }
      }

      else if ((v57 & 1) == 0)
      {
        return 1;
      }

      *a1 = v54;
      a1[1] = v55;
      return 1;
    }

    v40 = *(a2 - 1);
    v41 = (v20 + 20 * v40);
    v42 = *v41;
    if (v42 == v22)
    {
      if (v41[1] <= v21[1])
      {
LABEL_27:
        *a1 = v19;
        a1[1] = v8;
        v43 = *(a2 - 1);
        v44 = (v20 + 20 * v43);
        v45 = *v44;
        if (v45 == v24)
        {
          if (v44[1] <= v23[1])
          {
            return 1;
          }
        }

        else if ((v45 & 1) == 0)
        {
          return 1;
        }

        a1[1] = v43;
        goto LABEL_60;
      }
    }

    else if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }

    *a1 = v40;
    goto LABEL_60;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *(*a3 + 16);
    v10 = (v9 + 20 * v7);
    v11 = *v10;
    v12 = (v9 + 20 * *a1);
    if (v11 == *v12)
    {
      if (v10[1] <= v12[1])
      {
        return 1;
      }
    }

    else if ((v11 & 1) == 0)
    {
      return 1;
    }

    *a1 = v7;
LABEL_60:
    *(a2 - 1) = v8;
    return 1;
  }

LABEL_18:
  v28 = a1 + 2;
  v29 = *a1;
  v30 = a1 + 1;
  v31 = a1[1];
  v32 = *(*a3 + 16);
  v33 = (v32 + 20 * v31);
  v34 = *v33;
  v35 = (v32 + 20 * *a1);
  v36 = *v35;
  if (v34 == v36)
  {
    if (v33[1] <= v35[1])
    {
      goto LABEL_20;
    }

LABEL_31:
    v46 = *v28;
    v47 = (v32 + 20 * *v28);
    v48 = *v47;
    if (v48 == v34)
    {
      if (v47[1] <= v33[1])
      {
LABEL_33:
        *a1 = v31;
        a1[1] = v29;
        if (v48 == v36)
        {
          if (v47[1] <= v35[1])
          {
            goto LABEL_69;
          }
        }

        else if ((v48 & 1) == 0)
        {
          goto LABEL_69;
        }

        *v30 = v46;
        goto LABEL_65;
      }
    }

    else if ((v48 & 1) == 0)
    {
      goto LABEL_33;
    }

    *a1 = v46;
LABEL_65:
    v30 = a1 + 2;
LABEL_68:
    *v30 = v29;
    goto LABEL_69;
  }

  if (v34)
  {
    goto LABEL_31;
  }

LABEL_20:
  v37 = *v28;
  v38 = (v32 + 20 * *v28);
  v39 = *v38;
  if (v39 == v34)
  {
    if (v38[1] <= v33[1])
    {
      goto LABEL_69;
    }
  }

  else if ((v39 & 1) == 0)
  {
    goto LABEL_69;
  }

  *v30 = v37;
  *v28 = v31;
  if (v39 != v36)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  if (v38[1] > v35[1])
  {
LABEL_67:
    *a1 = v37;
    goto LABEL_68;
  }

LABEL_69:
  v61 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v62 = 0;
  v63 = 0;
  while (2)
  {
    v64 = *v61;
    v65 = (v32 + 20 * *v61);
    v66 = *v65;
    v67 = (v32 + 20 * *v28);
    if (v66 == *v67)
    {
      if (v65[1] <= v67[1])
      {
        goto LABEL_85;
      }

      v68 = *v65;
    }

    else
    {
      if ((v66 & 1) == 0)
      {
        goto LABEL_85;
      }

      v68 = 1;
    }

    *v61 = *v28;
    v69 = v62;
    while (1)
    {
      v70 = *(a1 + v69 + 4);
      v71 = (v32 + 20 * v70);
      if (v66 == *v71)
      {
        if (v65[1] <= v71[1])
        {
          goto LABEL_84;
        }

        goto LABEL_81;
      }

      if ((v68 & 1) == 0)
      {
        break;
      }

LABEL_81:
      --v28;
      *(a1 + v69 + 8) = v70;
      v69 -= 4;
      if (v69 == -8)
      {
        v28 = a1;
        goto LABEL_84;
      }
    }

    v28 = (a1 + v69 + 8);
LABEL_84:
    *v28 = v64;
    if (++v63 != 8)
    {
LABEL_85:
      v28 = v61;
      v62 += 4;
      if (++v61 == a2)
      {
        return 1;
      }

      continue;
    }

    return v61 + 1 == a2;
  }
}

void sub_2622499A4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v132 = a2;
  v10 = a3;
  objc_storeStrong((a1 + 72), a2);
  objc_storeStrong((a1 + 80), a3);
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  v133 = v10;
  if (*(a1 + 208) == 1)
  {
    v13 = *(a1 + 80);
    __p[0] = 0;
    *&v142 = 0;
    v16 = objc_msgSend_semanticLabels(v13, v14, v15);
    v19 = objc_msgSend_semanticVotes(v13, v17, v18);
    v22 = objc_msgSend_count(v13, v20, v21);
    __p[1] = 0;
    *&v147 = 0;
    sub_262247F68(__p, 0x21uLL, &v147);
    v25 = __p[0];
    do
    {
      v26 = *v19;
      if (v19->u16[0])
      {
        v26.i32[0] = *v16;
        v26.i16[0] = vmovl_u8(v26).u16[0];
        if (v26.u16[0] <= 0x20u)
        {
          ++v25[v26.u8[0]];
        }
      }

      ++v16;
      ++v19;
      --v22;
    }

    while (v22);
    v27 = v25[6];
    v28 = v25[31];
    v29 = objc_msgSend_count(v13, v23, v24);
    v30 = v25[7];
    v31 = v25[8];
    v34 = objc_msgSend_count(v13, v32, v33);
    operator delete(v25);
    v130 = fmaxf((v28 + v27) / v29, (v31 + v30) / v34) > 0.1;
  }

  else
  {
    v130 = 0;
  }

  objc_msgSend_cameraPose(*(a1 + 80), v11, v12);
  v134 = v35;
  v135 = v36;
  v137 = v38;
  v139 = v37;
  sub_262247708(__p, *(a1 + 8), *(a1 + 96), *(a1 + 104));
  sub_26224789C((a1 + 112));
  *(a1 + 112) = *__p;
  *(a1 + 128) = v142;
  __p[1] = 0;
  *&v142 = 0;
  __p[0] = 0;
  *&v147 = __p;
  sub_2621C5004(&v147);
  sub_262247708(__p, *(a1 + 72), *(a1 + 96), *(a1 + 104));
  sub_26224789C((a1 + 136));
  *(a1 + 136) = *__p;
  *(a1 + 152) = v142;
  __p[1] = 0;
  *&v142 = 0;
  __p[0] = 0;
  *&v147 = __p;
  sub_2621C5004(&v147);
  v39 = (a1 + 160);
  *(a1 + 168) = *(a1 + 160);
  sub_26224793C((a1 + 160), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 120) - *(a1 + 112)) >> 4));
  v40 = (a1 + 184);
  *(a1 + 192) = *(a1 + 184);
  sub_26224793C((a1 + 184), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 144) - *(a1 + 136)) >> 4));
  location = (a1 + 8);
  v42 = *(a1 + 112);
  v41 = *(a1 + 120);
  if (v41 != v42)
  {
    v43 = 0;
    v44 = *(a1 + 136);
    v45 = *(a1 + 144);
    do
    {
      if (v45 == v44)
      {
        v45 = v44;
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 16;
        do
        {
          sub_26223FEB8(__p, (*(a1 + 112) + 176 * v43 + 16), (v44 + v48));
          if (((*(&__p[1] + 1) + *(&v144 + 3)) * 0.5) < 0.2 && *(&v142 + 2) < 10.0)
          {
            v50 = *v39 + 36 * v43;
            if (*__p > *v50)
            {
              *v50 = *__p;
              *(v50 + 16) = v142;
              *(v50 + 32) = v143;
              *(*v39 + 36 * v43 + 28) = v47;
            }

            v51 = *v40 + v46;
            if (*&v144 > *v51)
            {
              *v51 = v144;
              *(v51 + 16) = v145;
              *(v51 + 32) = v146;
              *(*v40 + v46 + 28) = v43;
            }
          }

          ++v47;
          v44 = *(a1 + 136);
          v45 = *(a1 + 144);
          v46 += 36;
          v48 += 176;
        }

        while (v47 < 0x2E8BA2E8BA2E8BA3 * ((v45 - v44) >> 4));
        v42 = *(a1 + 112);
        v41 = *(a1 + 120);
      }

      ++v43;
    }

    while (v43 < 0x2E8BA2E8BA2E8BA3 * ((v41 - v42) >> 4));
  }

  v53 = objc_opt_new();
  __p[0] = 0;
  __p[1] = 0;
  *&v142 = 0;
  if (*(a1 + 144) != *(a1 + 136))
  {
    v54 = 0;
    v55 = 0;
    v56 = vmlaq_f32(vmulq_f32(v134, 0), 0, v135);
    __asm { FMOV            V2.4S, #-1.0 }

    v61 = vsubq_f32(vaddq_f32(v137, vmlaq_f32(v56, _Q2, v139)), vaddq_f32(v137, vmlaq_f32(v56, 0, v139)));
    v62 = vmulq_f32(v61, v61);
    _Q2.f32[0] = v62.f32[2] + vaddv_f32(*v62.f32);
    *v62.f32 = vrsqrte_f32(_Q2.u32[0]);
    *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(_Q2.u32[0], vmul_f32(*v62.f32, *v62.f32)));
    v136 = vmulq_n_f32(v61, vmul_f32(*v62.f32, vrsqrts_f32(_Q2.u32[0], vmul_f32(*v62.f32, *v62.f32))).f32[0]);
    v63 = 76;
    do
    {
      v64 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v52, v55);
      objc_msgSend_dimensions(v64, v65, v66);
      v140 = v67;

      v69 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v68, v55);
      objc_msgSend_quad(v69, v70, v71);
      v138 = v72;
      objc_msgSend_quad(v69, v73, v74);
      v76 = vsubq_f32(v138, v75);
      v77 = vmulq_f32(v76, v76);
      v78 = COERCE_UNSIGNED_INT(vaddv_f32(*v77.f32));
      *v77.f32 = vrsqrte_f32(v78);
      *v77.f32 = vmul_f32(*v77.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v77.f32, *v77.f32)));
      *v77.f32 = vdup_lane_s32(vmul_f32(*v77.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v77.f32, *v77.f32))), 0);
      v79 = vmulq_f32(v76, v77);
      v79.i32[2] = 0;
      v80.i64[1] = 1065353216;
      v81 = vmlaq_f32(vmulq_f32(v79, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL));
      v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
      v83 = vmulq_f32(v81, v81);
      v78.f32[0] = v83.f32[1] + (v83.f32[2] + v83.f32[0]);
      *v83.f32 = vrsqrte_f32(v78.u32[0]);
      *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v83.f32, *v83.f32)));
      v84 = vmulq_n_f32(v82, vmul_f32(*v83.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v83.f32, *v83.f32))).f32[0]);
      v85 = vmulq_f32(v84, v136);
      v85.f32[0] = v85.f32[2] + vaddv_f32(*v85.f32);
      v80.i64[0] = 0;
      v86 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v80, v85), 0), vnegq_f32(v84), v84), v136);
      v87 = acosf(v86.f32[2] + vaddv_f32(*v86.f32));

      v88 = *v40;
      v89 = *(*(a1 + 136) + v63);
      v91 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v90, v55);
      objc_msgSend_addObject_(v53, v92, v91);

      v94 = v140;
      *&v93 = (v87 * 180.0) / 3.14159265;
      *(&v147 + 1) = __PAIR64__(LODWORD(v140), v93);
      LOBYTE(v147) = v89;
      v95 = *(v88 + v54 + 28);
      if (v95 == -1)
      {
        v99 = (v140 / 0.75) & ~((v140 / 0.75) >> 31);
      }

      else
      {
        v96 = *(a1 + 16) + 20 * v95;
        v97 = v140 - ((v140 * *(v88 + v54)) / *(v88 + v54 + 4));
        v98 = *(v96 + 4);
        if (v98 < 0.0)
        {
          v98 = 0.0;
        }

        v94 = v97 + v98;
        v99 = ((v97 / 0.75) & ~((v97 / 0.75) >> 31)) + *(v96 + 16);
      }

      *(&v147 + 1) = v94;
      LODWORD(v148) = v99;
      sub_2622475D4(__p, &v147);
      ++v55;
      v63 += 176;
      v54 += 36;
    }

    while (v55 < 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 144) - *(a1 + 136)) >> 4));
  }

  objc_storeStrong(location, v53);
  v101 = (a1 + 16);
  v100 = *(a1 + 16);
  if (v100)
  {
    *(a1 + 24) = v100;
    operator delete(v100);
    *v101 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = *__p;
  *(a1 + 32) = v142;

  sub_2622101A8(__p, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 24) - *(a1 + 16)) >> 2));
  v102 = __p[0];
  v103 = __p[1];
  if (__p[0] != __p[1])
  {
    v104 = 0;
    v105 = (__p[1] - __p[0] - 4) >> 2;
    v106 = vdupq_n_s64(v105);
    v107 = (v105 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v108 = __p[0] + 8;
    do
    {
      v109 = vdupq_n_s64(v104);
      v110 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v109, xmmword_2623A7620)));
      if (vuzp1_s16(v110, *v106.i8).u8[0])
      {
        *(v108 - 2) = v104;
      }

      if (vuzp1_s16(v110, *&v106).i8[2])
      {
        *(v108 - 1) = v104 + 1;
      }

      if (vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v109, xmmword_2623A7630)))).i32[1])
      {
        *v108 = v104 + 2;
        v108[1] = v104 + 3;
      }

      v104 += 4;
      v108 += 4;
    }

    while (v107 != v104);
  }

  v111 = 126 - 2 * __clz(v103 - v102);
  *&v147 = a1;
  if (v103 == v102)
  {
    v112 = 0;
  }

  else
  {
    v112 = v111;
  }

  sub_262248128(v102, v103, &v147, v112, 1);
  v114 = objc_opt_new();
  v147 = 0uLL;
  v148 = 0;
  v115 = __p[0];
  if (__p[1] != __p[0])
  {
    v116 = 0;
    do
    {
      v117 = objc_msgSend_objectAtIndexedSubscript_(*location, v113, v115[v116]);
      objc_msgSend_addObject_(v114, v118, v117);

      sub_2622475D4(&v147, (*v101 + 20 * *(__p[0] + v116++)));
      v115 = __p[0];
    }

    while (v116 < (__p[1] - __p[0]) >> 2);
  }

  objc_storeStrong(location, v114);
  v119 = *v101;
  if (*v101)
  {
    *(a1 + 24) = v119;
    operator delete(v119);
    *v101 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = v147;
  *(a1 + 32) = v148;

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v120 = objc_opt_new();
  v121 = *(a1 + 40);
  *(a1 + 40) = v120;

  *(a1 + 56) = *(a1 + 48);
  if (objc_msgSend_count(*(a1 + 8), v122, v123))
  {
    v126 = objc_msgSend_objectAtIndexedSubscript_(*location, v124, 0);
    v127 = *v101;
    v128 = *(*v101 + 1) >= 0.75 || v130;
    if (v128 == 1)
    {
      objc_msgSend_addObject_(*(a1 + 40), v125, v126);
      sub_2622475D4(a1 + 48, v127);
      v129 = *(v127 + 4);
      if (v129)
      {
        *(v127 + 4) = v129 - 1;
      }

      else
      {
        *(v127 + 1) = 0;
      }
    }

    else if (*v127 == 1)
    {
      objc_msgSend_addObject_(*(a1 + 40), v125, v126);
      sub_2622475D4(a1 + 48, v127);
    }
  }
}

void sub_26224A36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  operator delete(v25);

  _Unwind_Resume(a1);
}

uint64_t sub_26224A450(uint64_t a1)
{
  *a1 = &unk_2874EE438;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  v4 = objc_opt_new();
  v5 = *(a1 + 48);
  *(a1 + 48) = v4;

  v6 = objc_opt_new();
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;

  return a1;
}

void sub_26224A528(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  v4 = objc_opt_new();
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
}

void sub_26224A580(id *a1, void *a2, void *a3, void *a4)
{
  v288 = a2;
  v287 = a3;
  v286 = a4;
  objc_storeStrong(a1 + 1, a2);
  objc_storeStrong(a1 + 2, a3);
  objc_storeStrong(a1 + 3, a4);
  v8 = a1 + 4;
  objc_storeStrong(a1 + 5, a1[4]);
  v9 = objc_opt_new();
  v10 = a1[4];
  a1[4] = v9;

  v290 = a1 + 4;
  if (objc_msgSend_count(a1[5], v11, v12))
  {
    objc_msgSend_removeAllObjects(a1[6], v13, v14);
    objc_msgSend_removeAllObjects(a1[7], v15, v16);
    sub_26224B9B0(v332, a1[5]);
    sub_26224B9B0(&v330, a1[2]);
    sub_26224BB18(&v328, 0x2E8BA2E8BA2E8BA3 * ((*(&v332[0] + 1) - *&v332[0]) >> 4));
    sub_26224BB18(&__p, 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
    v18 = *(&v332[0] + 1);
    v19 = *&v332[0];
    if (*(&v332[0] + 1) != *&v332[0])
    {
      v20 = 0;
      v21 = v330;
      v22 = v331;
      do
      {
        if (v22 == v21)
        {
          v22 = v21;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 16;
          do
          {
            sub_26223FEB8(&src, (*&v332[0] + 176 * v20 + 16), (v21 + v25));
            if (((src.f32[3] + *&v322[16]) * 0.5) < 0.2 && v321.f32[2] < 10.0)
            {
              v27 = (v328 + 36 * v20);
              if (src.f32[0] > v27->f32[0])
              {
                v27[1] = v321;
                *v27 = src;
                v27[2].i16[0] = *v322;
                v27[1].i32[3] = v24;
              }

              v28 = __p + v23;
              if (*&v322[4] > *(__p + v23))
              {
                *(v28 + 1) = *&v322[20];
                *(v28 + 16) = v323;
                *v28 = *&v322[4];
                *(v28 + 7) = v20;
              }
            }

            ++v24;
            v21 = v330;
            v22 = v331;
            v23 += 36;
            v25 += 176;
          }

          while (v24 < 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
          v18 = *(&v332[0] + 1);
          v19 = *&v332[0];
        }

        ++v20;
      }

      while (v20 < 0x2E8BA2E8BA2E8BA3 * ((v18 - v19) >> 4));
    }

    v29 = v328;
    if (v329 != v328)
    {
      v30 = 0;
      v31 = 28;
      do
      {
        v32 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v17, v30);
        if (v32)
        {
          v32[105] = 2;
        }

        if (*(v328 + v31) == -1)
        {
          v34 = a1[7];
        }

        else
        {
          v34 = a1[6];
        }

        v35 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v33, v30);
        objc_msgSend_addObject_(v34, v36, v35);

        ++v30;
        v29 = v328;
        v31 += 36;
      }

      while (v30 < 0x8E38E38E38E38E39 * ((v329 - v328) >> 2));
    }

    if (__p)
    {
      v327 = __p;
      operator delete(__p);
      v29 = v328;
    }

    if (v29)
    {
      v329 = v29;
      operator delete(v29);
    }

    src.i64[0] = &v330;
    sub_2621C5004(&src);
    src.i64[0] = v332;
    sub_2621C5004(&src);
    if (objc_msgSend_count(a1[1], v37, v38))
    {
      if (objc_msgSend_count(a1[6], v39, v40))
      {
        objc_msgSend_removeAllObjects(*v8, v41, v42);
        sub_26224B9B0(v332, a1[6]);
        sub_26224B9B0(&v330, a1[1]);
        sub_26224BBEC(&v328, a1[6]);
        sub_26224BBEC(&__p, a1[1]);
        sub_26224BB18(&v324, 0x2E8BA2E8BA2E8BA3 * ((*(&v332[0] + 1) - *&v332[0]) >> 4));
        v295 = a1;
        sub_26224BB18(&v318, 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
        v45 = *(&v332[0] + 1);
        v46 = *&v332[0];
        if (*(&v332[0] + 1) != *&v332[0])
        {
          v47 = 0;
          v48 = v330;
          v49 = v331;
          v50 = v328;
          v51 = __p;
          do
          {
            if (v49 == v48)
            {
              v49 = v48;
            }

            else
            {
              v52 = 0;
              v53 = 0;
              v54 = 16;
              do
              {
                sub_26223FEB8(&src, (*&v332[0] + 176 * v47 + 16), (v48 + v54));
                v55 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(*&v50[8 * v47], vdup_lane_s32(*&v50[8 * v47], 1))), 0), vrev64_s32(*&v50[8 * v47]), *&v50[8 * v47]);
                v56 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(*&v51[8 * v53], vdup_lane_s32(*&v51[8 * v53], 1))), 0), vrev64_s32(*&v51[8 * v53]), *&v51[8 * v53]);
                if (vcgt_f32(v55, v56).u32[0])
                {
                  v57 = v56.f32[0];
                }

                else
                {
                  v57 = v55.f32[0];
                }

                v58 = v55.f32[1];
                if (v55.f32[1] >= v56.f32[1])
                {
                  v59 = v55.f32[1];
                }

                else
                {
                  v59 = v56.f32[1];
                }

                if (v57 > v59)
                {
                  if (v56.f32[1] < v55.f32[1])
                  {
                    v58 = v56.f32[1];
                  }

                  if (vcgt_f32(v56, v55).u32[0])
                  {
                    v55.f32[0] = v56.f32[0];
                  }

                  v60 = v55.f32[0] - v58;
                  if (v60 < 0.000001)
                  {
                    v60 = 0.000001;
                  }

                  v61 = ((src.f32[3] + *&v322[16]) * 0.5) < 0.2 && v321.f32[2] < 10.0;
                  if (v61 && ((v57 - v59) / v60) >= 0.3)
                  {
                    v62 = (v324 + 36 * v47);
                    if (src.f32[0] > v62->f32[0])
                    {
                      v62[1] = v321;
                      *v62 = src;
                      v62[2].i16[0] = *v322;
                      v62[1].i32[3] = v53;
                    }

                    v63 = &v318[v52];
                    if (*&v322[4] > *&v318[v52])
                    {
                      *(v63 + 1) = *&v322[20];
                      *(v63 + 16) = v323;
                      *v63 = *&v322[4];
                      *(v63 + 7) = v47;
                    }
                  }
                }

                ++v53;
                v48 = v330;
                v49 = v331;
                v52 += 36;
                v54 += 176;
              }

              while (v53 < 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
              v45 = *(&v332[0] + 1);
              v46 = *&v332[0];
              v8 = v290;
            }

            ++v47;
          }

          while (v47 < 0x2E8BA2E8BA2E8BA3 * ((v45 - v46) >> 4));
        }

        v64 = v318;
        if (v319 != v318)
        {
          v65 = 0;
          v66 = 0;
          v67 = 8;
          a1 = v295;
          while (1)
          {
            v68 = &v64[v65];
            v69 = *&v64[v65 + 28];
            if (v69 == -1)
            {
              v83 = *v8;
              v81 = objc_msgSend_objectAtIndexedSubscript_(a1[1], v43, v66);
              objc_msgSend_addObject_(v83, v84, v81);
            }

            else
            {
              v70 = *(v330 + v67);
              if (v68[1] >= 0.8)
              {
                objc_msgSend_confidence(v70, v43, v44);
                v86 = v85;
                objc_msgSend_confidence(*(*&v332[0] + 176 * v69 + 8), v87, v88);
                v91 = a1[6];
                if (v86 >= (v90 + -0.15))
                {
                  v175 = objc_msgSend_objectAtIndexedSubscript_(v91, v89, v69);
                  v178 = objc_msgSend_identifier(v175, v176, v177);
                  objc_msgSend_objectAtIndexedSubscript_(a1[1], v179, v66);
                  v181 = v180 = a1;
                  sub_2622C533C(v181, v178);

                  v183 = objc_msgSend_objectAtIndexedSubscript_(v180[1], v182, v66);
                  a1 = v180;
                  if (v183)
                  {
                    v183[105] = 1;
                  }

                  v184 = *v8;
                  v81 = objc_msgSend_objectAtIndexedSubscript_(v180[1], v185, v66);
                  objc_msgSend_addObject_(v184, v186, v81);
                  goto LABEL_111;
                }

                v78 = objc_msgSend_objectAtIndexedSubscript_(v91, v89, v69);
                if (v78)
                {
                  v78[105] = 2;
                }
              }

              else
              {
                objc_msgSend_confidence(v70, v43, v44);
                v72 = v71;
                objc_msgSend_confidence(*(*&v332[0] + 176 * v69 + 8), v73, v74);
                v77 = a1[6];
                if (v72 >= (v76 + -0.15))
                {
                  v92 = objc_msgSend_objectAtIndexedSubscript_(v77, v75, v69);
                  v94 = objc_msgSend_objectAtIndexedSubscript_(a1[1], v93, v66);
                  v95 = v318;
                  v96 = v92;
                  v97 = v94;
                  v81 = objc_msgSend_copy(v97, v98, v99);
                  objc_msgSend_quad(v97, v100, v101);
                  v309 = v102;
                  objc_msgSend_quad(v97, v103, v104);
                  v306 = v105;
                  objc_msgSend_quad(v97, v106, v107);
                  v314 = v108;
                  objc_msgSend_quad(v97, v109, v110);
                  if (v113 >= v314)
                  {
                    v114 = v314;
                  }

                  else
                  {
                    v114 = v113;
                  }

                  objc_msgSend_quad(v97, v111, v112);
                  v315 = v115;
                  objc_msgSend_quad(v97, v116, v117);
                  if (v315 >= v120)
                  {
                    v121 = v315;
                  }

                  else
                  {
                    v121 = v120;
                  }

                  objc_msgSend_quad(v96, v118, v119);
                  v316 = v122;
                  objc_msgSend_quad(v96, v123, v124);
                  if (v127 >= v316)
                  {
                    v128 = v316;
                  }

                  else
                  {
                    v128 = v127;
                  }

                  objc_msgSend_quad(v96, v125, v126);
                  v317 = v129;
                  objc_msgSend_quad(v96, v130, v131);
                  if (v317 >= v134)
                  {
                    v135 = v317;
                  }

                  else
                  {
                    v135 = v134;
                  }

                  objc_msgSend_dimensions(v97, v132, v133);
                  v310 = v136;
                  objc_msgSend_dimensions(v96, v137, v138);
                  v303 = v141;
                  v142 = *(v95 + v65 + 4);
                  if (v121 < v135)
                  {
                    v121 = v135;
                  }

                  if (v128 < v114)
                  {
                    v114 = v128;
                  }

                  objc_msgSend_quad(v97, v139, v140);
                  v300 = v143;
                  objc_msgSend_quad(v97, v144, v145);
                  v297 = v146;
                  objc_msgSend_dimensions(v97, v147, v148);
                  v151 = vsubq_f32(v309, v306);
                  v152 = vmulq_f32(v151, v151);
                  *&v153 = v152.f32[2] + vaddv_f32(*v152.f32);
                  *v152.f32 = vrsqrte_f32(v153);
                  *v152.f32 = vmul_f32(*v152.f32, vrsqrts_f32(v153, vmul_f32(*v152.f32, *v152.f32)));
                  v154 = vmulq_n_f32(v151, vmul_f32(*v152.f32, vrsqrts_f32(v153, vmul_f32(*v152.f32, *v152.f32))).f32[0]);
                  v152.f32[0] = v310 + (v303 * (1.0 - v142));
                  v155.i64[0] = 0x3F0000003F000000;
                  v155.i64[1] = 0x3F0000003F000000;
                  v157.f32[0] = 0.5 * v156;
                  v158 = vmlaq_n_f32(vmlsq_lane_f32(vmulq_f32(vaddq_f32(v300, v297), v155), v154, v157, 0), v154, v152.f32[0] * 0.5);
                  v159 = vmulq_f32(vmulq_n_f32(v154, v152.f32[0]), v155);
                  v160 = vmulq_f32(vmulq_n_f32(xmmword_2623A7700, v121 - v114), v155);
                  v161 = vaddq_f32(v160, vsubq_f32(v158, v159));
                  v162 = vsubq_f32(vaddq_f32(v159, v158), v160);
                  v163 = v162;
                  v163.i32[2] = v161.i32[2];
                  src = v161;
                  v321 = v163;
                  v161.i32[2] = v162.i32[2];
                  *v322 = v162;
                  *&v322[16] = v161;
                  if (v81)
                  {
                    objc_copyStruct((v81 + 272), &src, 64, 1, 0);
                  }

                  objc_msgSend_confidence(v97, v149, v150);
                  v165 = v164;
                  objc_msgSend_confidence(v96, v166, v167);
                  if (v81)
                  {
                    *(v81 + 108) = (v165 + v170) * 0.5;
                  }

                  v171 = objc_msgSend_identifier(v96, v168, v169);
                  sub_2622C533C(v81, v171);

                  if (v81)
                  {
                    *(v81 + 105) = 1;
                  }

                  v172 = 0.0;
                  v173 = 0.0;
                  v8 = v290;
                  if (v96)
                  {
                    v173 = v96[32];
                  }

                  if (v97)
                  {
                    v172 = v97[32];
                  }

                  if (v81)
                  {
                    if (v173 >= v172)
                    {
                      v172 = v173;
                    }

                    *(v81 + 128) = v172;
                  }

                  objc_msgSend_addObject_(*v290, v174, v81);
                  a1 = v295;
                  goto LABEL_111;
                }

                v78 = objc_msgSend_objectAtIndexedSubscript_(v77, v75, v69);
                if (v78)
                {
                  v78[105] = 2;
                }
              }

              v79 = a1[4];
              v81 = objc_msgSend_objectAtIndexedSubscript_(a1[6], v80, v69);
              objc_msgSend_addObject_(v79, v82, v81);
            }

LABEL_111:

            ++v66;
            v64 = v318;
            v65 += 36;
            v67 += 176;
            if (v66 >= 0x8E38E38E38E38E39 * ((v319 - v318) >> 2))
            {
              if (v318)
              {
                goto LABEL_113;
              }

              goto LABEL_114;
            }
          }
        }

        a1 = v295;
        if (v318)
        {
LABEL_113:
          v319 = v64;
          operator delete(v64);
        }

LABEL_114:
        if (v324)
        {
          v325 = v324;
          operator delete(v324);
        }

        if (__p)
        {
          operator delete(__p);
        }

        if (v328)
        {
          operator delete(v328);
        }

        src.i64[0] = &v330;
        sub_2621C5004(&src);
        src.i64[0] = v332;
        sub_2621C5004(&src);
      }

      else
      {
        objc_storeStrong(a1 + 4, a1[1]);
      }
    }

    if (objc_msgSend_count(a1[7], v39, v40))
    {
      objc_msgSend_addObjectsFromArray_(a1[4], v187, a1[7]);
    }
  }

  else
  {
    objc_storeStrong(a1 + 4, a1[1]);
  }

  obj = objc_opt_new();
  if (objc_msgSend_count(*v8, v188, v189))
  {
    sub_26224B9B0(&v330, *v8);
    sub_26224B9B0(&v328, a1[3]);
    sub_26224BB18(&__p, 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
    sub_26224BB18(&v324, 0x2E8BA2E8BA2E8BA3 * ((v329 - v328) >> 4));
    v192 = v330;
    v191 = v331;
    if (v331 != v330)
    {
      v193 = 0;
      v194 = v328;
      v195 = v329;
      do
      {
        if (v195 == v194)
        {
          v195 = v194;
        }

        else
        {
          v196 = 0;
          v197 = 0;
          v198 = 16;
          do
          {
            sub_26223FEB8(&src, (v330 + 176 * v193 + 16), &v194[v198]);
            if (((src.f32[3] + *&v322[16]) * 0.5) < 0.2 && v321.f32[2] < 10.0)
            {
              v200 = (__p + 36 * v193);
              if (src.f32[0] > v200->f32[0])
              {
                v200[1] = v321;
                *v200 = src;
                v200[2].i16[0] = *v322;
                v200[1].i32[3] = v197;
              }

              v201 = v324 + v196;
              if (*&v322[4] > *(v324 + v196))
              {
                *(v201 + 1) = *&v322[20];
                *(v201 + 16) = v323;
                *v201 = *&v322[4];
                *(v201 + 7) = v193;
              }
            }

            ++v197;
            v194 = v328;
            v195 = v329;
            v196 += 36;
            v198 += 176;
          }

          while (v197 < 0x2E8BA2E8BA2E8BA3 * ((v329 - v328) >> 4));
          v192 = v330;
          v191 = v331;
        }

        ++v193;
      }

      while (v193 < 0x2E8BA2E8BA2E8BA3 * ((v191 - v192) >> 4));
    }

    v203 = __p;
    v202 = v327;
    if (v327 != __p)
    {
      v204 = a1;
      v205 = 0;
      do
      {
        v206 = v203[9 * v205 + 7];
        if (v206 != -1)
        {
          v207 = objc_msgSend_objectAtIndexedSubscript_(*v8, v190, v205);
          v209 = objc_msgSend_objectAtIndexedSubscript_(v204[3], v208, v206);
          v210 = v207;
          v211 = v209;
          v214 = objc_msgSend_copy(v210, v212, v213);
          objc_msgSend_quad(v211, v215, v216);
          v311 = v217;
          objc_msgSend_quad(v211, v218, v219);
          v307 = v220;
          objc_msgSend_quad(v211, v221, v222);
          v304 = v223;
          objc_msgSend_quad(v211, v224, v225);
          v301 = v226;
          objc_msgSend_quad(v210, v227, v228);
          v298 = v229;
          objc_msgSend_quad(v210, v230, v231);
          v296 = v232;
          objc_msgSend_dimensions(v210, v233, v234);
          v294 = v235;
          objc_msgSend_dimensions(v210, v236, v237);
          v291 = v238;
          objc_msgSend_dimensions(v210, v239, v240);
          v293 = v241;
          objc_msgSend_dimensions(v210, v242, v243);
          v292 = v244;
          v247 = objc_msgSend_type(v210, v245, v246);
          v250 = vsubq_f32(v311, v307);
          v251 = vmulq_f32(v250, v250);
          *&v252 = v251.f32[2] + vaddv_f32(*v251.f32);
          *v251.f32 = vrsqrte_f32(v252);
          *v251.f32 = vmul_f32(*v251.f32, vrsqrts_f32(v252, vmul_f32(*v251.f32, *v251.f32)));
          v253 = vmulq_n_f32(v250, vmul_f32(*v251.f32, vrsqrts_f32(v252, vmul_f32(*v251.f32, *v251.f32))).f32[0]);
          v254 = vmlaq_f32(vmulq_f32(v253, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v253, v253), v253, 0xCuLL));
          v255 = vextq_s8(vuzp1q_s32(v254, v254), v254, 0xCuLL);
          v256 = vmulq_f32(v254, v254);
          *&v257 = v256.f32[1] + (v256.f32[2] + v256.f32[0]);
          *v256.f32 = vrsqrte_f32(v257);
          *v256.f32 = vmul_f32(*v256.f32, vrsqrts_f32(v257, vmul_f32(*v256.f32, *v256.f32)));
          v258 = vmulq_n_f32(v255, vmul_f32(*v256.f32, vrsqrts_f32(v257, vmul_f32(*v256.f32, *v256.f32))).f32[0]);
          v259.i64[0] = 0x3F0000003F000000;
          v259.i64[1] = 0x3F0000003F000000;
          v260 = vmulq_f32(vaddq_f32(v304, v301), v259);
          v261 = vmulq_f32(vaddq_f32(v298, v296), v259);
          v262 = vmulq_f32(v258, vsubq_f32(v261, v260));
          v262.f32[0] = v262.f32[2] + vaddv_f32(*v262.f32);
          v308 = v253;
          v302 = v260;
          v305 = vmlsq_lane_f32(v261, v258, *v262.f32, 0);
          v312 = vaddq_f32(vaddq_f32(v305, vmulq_f32(vmulq_n_f32(v253, v293), v259)), vmulq_f32(vmulq_laneq_f32(xmmword_2623A7920, v292, 2), v259));
          if (v247 == 2 || objc_msgSend_type(v210, v248, v249) == 4)
          {
            objc_msgSend_quad(v211, v248, v249);
            v299 = v263;
            objc_msgSend_quad(v211, v264, v265);
            v267.i64[0] = v312.i64[0];
            v267.i64[1] = __PAIR64__(v312.u32[3], vmlaq_n_f32(v302, xmmword_2623A7930, fabsf(COERCE_FLOAT(*(vsubq_f32(v299, v266).f32 + 8)))).u32[2]);
            v312 = v267;
          }

          v268.i64[0] = 0x3F0000003F000000;
          v268.i64[1] = 0x3F0000003F000000;
          v269 = vaddq_f32(vsubq_f32(v305, vmulq_f32(vmulq_n_f32(v308, v294), v268)), vmulq_f32(vmulq_laneq_f32(xmmword_2623A7700, v291, 2), v268));
          v270 = v312;
          v270.i32[2] = v269.i32[2];
          v332[0] = v269;
          v332[1] = v270;
          v271 = v269;
          v271.i32[2] = v312.i32[2];
          v332[2] = v312;
          v332[3] = v271;
          src = v269;
          v321 = v270;
          *v322 = v312;
          *&v322[16] = v271;
          if (v214)
          {
            objc_copyStruct(v214 + 272, &src, 64, 1, 0);
          }

          if (objc_msgSend_individualUpdate(v210, v248, v249) == 2)
          {
            v274 = 0;
            while (1)
            {
              v313 = v332[v274];
              objc_msgSend_quad(v210, v272, v273);
              src.i32[2] = v275;
              v321.i32[2] = v276;
              *&v322[8] = v277;
              *&v322[24] = v278;
              src.i64[0] = v279;
              v321.i64[0] = v280;
              *v322 = v281;
              *&v322[16] = v282;
              v283 = vsubq_f32(v313, *(&src + v274 * 16));
              v284 = vmulq_f32(v283, v283);
              if (sqrtf(v284.f32[2] + vaddv_f32(*v284.f32)) > 0.001)
              {
                break;
              }

              if (++v274 == 4)
              {
                goto LABEL_158;
              }
            }

            if (v214)
            {
              v214[105] = 1;
            }
          }

LABEL_158:

          objc_msgSend_addObject_(obj, v285, v214);
          v203 = __p;
          v202 = v327;
          v8 = v290;
        }

        ++v205;
      }

      while (v205 < 0x8E38E38E38E38E39 * ((v202 - v203) >> 2));
    }

    objc_storeStrong(v8, obj);
    if (v324)
    {
      v325 = v324;
      operator delete(v324);
    }

    if (__p)
    {
      v327 = __p;
      operator delete(__p);
    }

    src.i64[0] = &v328;
    sub_2621C5004(&src);
    src.i64[0] = &v330;
    sub_2621C5004(&src);
  }
}

void sub_26224B6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (a63)
  {
    operator delete(a63);
  }

  a63 = (v63 - 248);
  sub_2621C5004(&a63);
  *(v63 - 248) = v63 - 224;
  sub_2621C5004((v63 - 248));

  _Unwind_Resume(a1);
}

void sub_26224B9B0(uint64_t *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        sub_2621C5224(v12);
        sub_2622464F4(v12, v9);
        sub_26224663C(a1, v12, v10);
        sub_2621C50C4(v12);
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v13, v17, 16);
    }

    while (v6);
  }
}

void sub_26224BAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2621C5004(&a9);

  _Unwind_Resume(a1);
}

uint64_t *sub_26224BB18(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x71C71C71C71C71DLL)
    {
      sub_262247B0C(a2);
    }

    sub_2621CBEB0();
  }

  return a1;
}

void sub_26224BBD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26224BBEC(void **a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v26, v30, 16);
  if (v8)
  {
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_msgSend_quad(v12, v6, v7, *&v25, v26);
        v25 = v13;
        objc_msgSend_quad(v12, v14, v15);
        v17 = vzip2q_s32(v25, v16);
        v18 = a1[2];
        if (v9 >= v18)
        {
          v25 = v17;
          v19 = *a1;
          v20 = v9 - *a1;
          v21 = (v20 >> 3) + 1;
          if (v21 >> 61)
          {
            sub_2621CBEB0();
          }

          v22 = v18 - v19;
          if (v22 >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            sub_2621CBEC8(v23);
          }

          v24 = (8 * (v20 >> 3));
          *v24 = v17.i64[0];
          v9 = (v24 + 1);
          memcpy(0, v19, v20);
          *a1 = 0;
          a1[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v9 = v17.i64[0];
          v9 += 8;
        }

        a1[1] = v9;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v26, v30, 16);
    }

    while (v8);
  }
}

void sub_26224BDBC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_26224BDFC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(*(a1 + 32), a2, a3);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, i);
      if (v7)
      {
        v7[105] = 2;
      }

      result = objc_msgSend_count(*(a1 + 32), v8, v9);
    }
  }

  return result;
}

void sub_26224BE68(void *a1, float32x2_t **a2, void *a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sub_262217160(v5);
}

void sub_26224C3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v51 = *v46;
  if (*v46)
  {
    *(v46 + 8) = v51;
    operator delete(v51);
  }

  if (v47)
  {
    *(v49 - 184) = v47;
    operator delete(v47);
  }

  sub_26224C4F4(&a22);
  sub_262216FC4(&a46);

  _Unwind_Resume(a1);
}

void **sub_26224C4F4(void **a1)
{
  sub_262217048(a1[21]);
  sub_2622170A4(a1[16]);
  sub_2622170A4(a1[12]);
  sub_262217048(a1[6]);
  return a1;
}

void sub_26224C550(uint64_t a1)
{
  sub_26224C588(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26224C588(uint64_t a1)
{
  *a1 = &unk_2874EE580;
  v4 = (a1 + 912);
  sub_2621C5004(&v4);
  v4 = (a1 + 792);
  sub_2621C512C(&v4);
  v4 = (a1 + 768);
  sub_26224C618(&v4);
  sub_2621C4F2C((a1 + 48));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_26224C618(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      do
      {
        (**v7)(v7);
        v6 -= 40;
        v8 = v7 == v2;
        v7 -= 40;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26224C6DC(void *a1, void *a2, int32x2_t *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a4;
  v365 = a5;
  v366 = a7;
  v14 = 0;
  memset(v392, 0, sizeof(v392));
  v15 = 48;
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = 0; ; i = v13[14])
  {
    v17 = i;
    v20 = objc_msgSend_count(v17, v18, v19);

    if (v14 >= v20)
    {
      break;
    }

    *v402 = *(v13[10] + v15);
    sub_2621D9F60(v392, v402);
    ++v14;
    v15 += 64;
    if (!v13)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  if (v13)
  {
    v21 = v13[4];
    v22 = (v13[5] - v21) >> 4;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  memset(v391, 0, sizeof(v391));
  sub_2621DDA38(v391, v21, v21 + 16 * v22, v22);
  sub_26224EE08(a1, a2, a3, v365, v392, a6, v366);
  v23 = a1[7];
  v385 = a1 + 7;
  v24 = a1[8];
  p_src = 0;
  v413 = 0;
  v414 = 0;
  v25 = a2[1];
  LODWORD(v399[0]) = 0;
  v367 = a2 + 1;
  v26 = a2[2];
  v376 = v13;
  v387 = a1;
  if (v26 == v25)
  {
    goto LABEL_115;
  }

  v27 = 0;
  v378 = 0x2E8BA2E8BA2E8BA3 * ((v24 - v23) >> 4);
  v28 = 20.0;
  v377 = a2;
  do
  {
    v29 = v25 + 176 * v27;
    if (*(v29 + 112) != 1)
    {
      goto LABEL_110;
    }

    v30 = *(v29 + 16);
    *__p = v30;
    if (v378 >= 1)
    {
      v31 = 0;
      v32 = __p[0];
      v33 = __p[1];
      *&v30 = vsub_f32(__p[0], __p[1]);
      *&v30 = vmul_f32(*&v30, *&v30);
      v370 = v30;
      v34 = -1;
      v373 = sqrtf(vaddv_f32(*&v30));
      v35 = fmaxf(v373, 0.000001);
      v36 = 16;
      v37 = -1;
      v38 = 0xFFFFFFFFLL;
      v39 = -1;
      do
      {
        *v402 = *(*v385 + v36);
        *&v40 = sub_2621C92AC(__p, v402, 0);
        if (*&v40 > v28 && *&v40 < 160.0)
        {
          if (v39 == -1)
          {
            if (sub_2621DC76C(v32, v402[0], v402[1], 0.00001) >= 0.1)
            {
              v39 = -1;
            }

            else
            {
              v39 = v31;
            }
          }

          if (v34 == -1)
          {
            if (sub_2621DC76C(v33, v402[0], v402[1], 0.00001) >= 0.1)
            {
              v34 = -1;
            }

            else
            {
              v34 = v31;
            }
          }
        }

        else
        {
          v42 = v402[0];
          v43 = v402[1];
          sub_2621DC2A8();
          *&v40 = vsub_f32(*&v40, v44);
          *&v40 = sqrtf(vaddv_f32(vmul_f32(*&v40, *&v40))) / v35;
          v45 = vsub_f32(v43, v42);
          v46 = vaddv_f32(vmul_f32(vsub_f32(v32, v42), v45));
          v47 = vaddv_f32(vmul_f32(v45, v45));
          if (v47 < 0.000001)
          {
            v47 = 0.000001;
          }

          v48 = vsub_f32(vmla_n_f32(v42, v45, v46 / v47), v32);
          v49 = sqrtf(vaddv_f32(vmul_f32(v48, v48)));
          v50 = vsub_f32(vmla_n_f32(v42, v45, vaddv_f32(vmul_f32(vsub_f32(v33, v42), v45)) / v47), v33);
          v51 = sqrtf(vaddv_f32(vmul_f32(v50, v50)));
          if (v49 < v51)
          {
            v49 = v51;
          }

          if (v38 == 0xFFFFFFFFLL && *&v40 > 0.9 && v49 < 0.3)
          {
            v38 = v31;
          }

          else
          {
            v52 = *&v40 > 0.8 && v37 == -1;
            v53 = v52;
            v55 = v49 > 0.3 && v49 < 0.9;
            if ((v53 & v55) != 0)
            {
              v37 = v31;
            }
          }
        }

        ++v31;
        v36 += 176;
      }

      while ((v378 & 0x7FFFFFFF) != v31);
      v13 = v376;
      if (v37 != -1)
      {
        if (v39 != -1 && v34 != -1)
        {
          v56 = *v385 + 176 * v39;
          v57 = *(v56 + 16);
          v58 = *(v56 + 24);
          v59 = *v385 + 176 * v34;
          v60 = *(v59 + 16);
          v61 = *(v59 + 24);
          sub_2621DC2A8();
          v64 = vsub_f32(v62, v63);
          v65 = vmul_f32(v64, v64);
          v66 = vadd_f32(v65, vdup_lane_s32(v65, 1));
          v67 = vsub_f32(v57, v58);
          v68 = vmul_f32(v67, v67);
          v368 = vadd_f32(v68, vdup_lane_s32(v68, 1));
          v369 = v66;
          sub_2621DC2A8();
          v71 = vsub_f32(v69, v70);
          v72 = vmul_f32(v71, v71);
          v73 = vsub_f32(v60, v61);
          v28 = 20.0;
          v74 = vmul_f32(v73, v73);
          v75 = vdiv_f32(vsqrt_f32(vzip1_s32(v369, vadd_f32(v72, vdup_lane_s32(v72, 1)))), vmaxnm_f32(vsqrt_f32(vzip1_s32(v368, vadd_f32(v74, vdup_lane_s32(v74, 1)))), vdup_n_s32(0x358637BDu)));
          if (v75.f32[0] < v75.f32[1])
          {
            v75.f32[0] = v75.f32[1];
          }

          if (v75.f32[0] < 0.8 && v373 < 0.9)
          {
            goto LABEL_109;
          }

          sub_2621C7CD0(&p_src, v399);
          sub_262246794(v402, *v385 + 176 * v37, v76);
          *&v79 = *(&v403 + 1);
          *&v78 = v403;
          *&v81 = vsub_f32(*&v403, *(&v403 + 8));
          *&v81 = vmul_f32(*&v81, *&v81);
          *(&v80 + 1) = *(&v370 + 1);
          *&v81 = vsqrt_f32(vadd_f32(vzip1_s32(*&v81, *&v370), vzip2_s32(*&v81, *&v370)));
          if ((vcgt_f32(*&v81, vdup_lane_s32(*&v81, 1)).u8[0] & 1) == 0)
          {
            goto LABEL_108;
          }

          v82 = vsub_f32(*(&v403 + 8), *&v403);
          v83 = vaddv_f32(vmul_f32(vsub_f32(v32, *&v403), v82));
          v84 = vaddv_f32(vmul_f32(v82, v82));
          if (v84 < 0.000001)
          {
            v84 = 0.000001;
          }

          *&v81 = vmla_n_f32(*&v403, v82, v83 / v84);
          *&v77 = vmla_n_f32(*&v403, v82, vaddv_f32(vmul_f32(vsub_f32(v33, *&v403), v82)) / v84);
          v85 = vsub_f32(*&v81, *&v403);
          v86 = vmul_f32(v85, v85);
          v87 = vsub_f32(*&v77, *&v403);
          v88 = vmul_f32(v87, v87);
          v89 = vsqrt_f32(vadd_f32(vzip1_s32(v86, v88), vzip2_s32(v86, v88)));
          if (v89.f32[0] >= v89.f32[1])
          {
            if (v89.f32[1] < 0.2)
            {
              v127 = *v385 + 176 * v37;
              v78 = v81;
              DWORD2(v78) = *(v127 + 64);
              v128 = v79;
              DWORD2(v128) = *(v127 + 68);
              *(v127 + 16) = v81;
              *(v127 + 24) = v79;
              DWORD2(v81) = DWORD2(v128);
              DWORD2(v79) = DWORD2(v78);
              *(v127 + 32) = v78;
              *(v127 + 48) = v128;
              v92 = *(v127 + 8);
              src = v81;
              v394 = v128;
              v395 = v79;
              v396 = v78;
              if (!v92)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }

            v134 = vsub_f32(*&v81, *(&v403 + 8));
            if (sqrtf(vaddv_f32(vmul_f32(v134, v134))) < 0.2)
            {
              v135 = *v385 + 176 * v37;
              v79 = v77;
              DWORD2(v79) = *(v135 + 64);
              v136 = v78;
              DWORD2(v136) = *(v135 + 68);
              *(v135 + 16) = v77;
              *(v135 + 24) = v78;
              DWORD2(v77) = DWORD2(v136);
              DWORD2(v78) = DWORD2(v79);
              *(v135 + 32) = v79;
              *(v135 + 48) = v136;
              v92 = *(v135 + 8);
              src = v77;
              v394 = v136;
              v395 = v78;
              v396 = v79;
              if (!v92)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }
          }

          else
          {
            if (v89.f32[0] < 0.2)
            {
              v90 = *v385 + 176 * v37;
              v78 = v77;
              DWORD2(v78) = *(v90 + 64);
              v91 = v79;
              DWORD2(v91) = *(v90 + 68);
              *(v90 + 16) = v77;
              *(v90 + 24) = v79;
              DWORD2(v77) = DWORD2(v91);
              DWORD2(v79) = DWORD2(v78);
              *(v90 + 32) = v78;
              *(v90 + 48) = v91;
              v92 = *(v90 + 8);
              src = v77;
              v394 = v91;
              v395 = v79;
              v396 = v78;
              if (!v92)
              {
                goto LABEL_95;
              }

LABEL_94:
              objc_copyStruct((v92 + 272), &src, 64, 1, 0);
LABEL_95:
              v137 = vsub_f32(v33, v32);
              *&v79 = -*&v137.i32[1];
              v138 = vzip1_s32(*&v79, v137);
              v139 = 1;
              do
              {
                v140 = v139;
                v141 = *v385 + 176 * v39;
                *&v78 = *(v141 + 16);
                v142 = *(v141 + 24);
                v143 = vsub_f32(v142, *&v78);
                v144 = vmul_f32(v143, v138);
                if (vaddv_f32(v144) != 0.0)
                {
                  v145 = vsub_f32(*&v78, *&v403);
                  v146 = vsub_f32(*&v78, *(&v403 + 8));
                  v147 = fminf(sqrtf(vaddv_f32(vmul_f32(v145, v145))), sqrtf(vaddv_f32(vmul_f32(v146, v146))));
                  if (v147 < 0.2 || (v148 = vsub_f32(v142, *&v403), sqrtf(vaddv_f32(vmul_f32(v148, v148))) < 0.2) || (v149 = vsub_f32(v142, *(&v403 + 8)), sqrtf(vaddv_f32(vmul_f32(v149, v149))) < 0.2))
                  {
                    v150 = vmul_f32(vsub_f32(v32, *&v78), v138);
                    LODWORD(v151) = vdiv_f32(vadd_f32(v150, vdup_lane_s32(v150, 1)), vadd_f32(v144, vdup_lane_s32(v144, 1))).u32[0];
                    v152 = v147 >= 0.2 ? 0 : -1;
                    *&v80 = vmla_n_f32(*&v78, v143, v151);
                    *&v78 = vbsl_s8(vdup_n_s32(v152), v142, *&v78);
                    v153 = *v385 + 176 * v39;
                    v154 = v80;
                    DWORD2(v154) = *(v153 + 64);
                    v155 = v78;
                    DWORD2(v155) = *(v153 + 68);
                    *(v153 + 16) = v80;
                    *(v153 + 24) = v78;
                    DWORD2(v80) = DWORD2(v155);
                    DWORD2(v78) = DWORD2(v154);
                    *(v153 + 32) = v154;
                    *(v153 + 48) = v155;
                    v156 = *(v153 + 8);
                    src = v80;
                    v394 = v155;
                    v395 = v78;
                    v396 = v154;
                    if (v156)
                    {
                      objc_copyStruct((v156 + 272), &src, 64, 1, 0);
                    }
                  }
                }

                v139 = 0;
                v39 = v34;
              }

              while ((v140 & 1) != 0);
              v157 = vsub_f32(*&v403, *(&v403 + 8));
              if (sqrtf(vaddv_f32(vmul_f32(v157, v157))) < 0.2)
              {
                LODWORD(v408) = 2;
              }

              goto LABEL_108;
            }

            v131 = vsub_f32(*&v77, *(&v403 + 8));
            if (sqrtf(vaddv_f32(vmul_f32(v131, v131))) < 0.2)
            {
              v132 = *v385 + 176 * v37;
              v79 = v81;
              DWORD2(v79) = *(v132 + 64);
              v133 = v78;
              DWORD2(v133) = *(v132 + 68);
              *(v132 + 16) = v81;
              *(v132 + 24) = v78;
              DWORD2(v81) = DWORD2(v133);
              DWORD2(v78) = DWORD2(v79);
              *(v132 + 32) = v79;
              *(v132 + 48) = v133;
              v92 = *(v132 + 8);
              src = v81;
              v394 = v133;
              v395 = v78;
              v396 = v79;
              if (!v92)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }
          }

LABEL_108:
          sub_2621C50C4(v402);
          goto LABEL_109;
        }

        v93 = *v385;
        v94 = *v385 + 176 * v37;
        v96 = *(v94 + 16);
        v97 = *(v94 + 24);
        v95 = (v94 + 16);
        v98 = *(*v367 + 176 * v27 + 16);
        v99 = vsub_f32(v97, v96);
        v100 = vaddv_f32(vmul_f32(vsub_f32(v98, v96), v99));
        v101 = vaddv_f32(vmul_f32(v99, v99));
        if (v101 < 0.000001)
        {
          v101 = 0.000001;
        }

        v102 = vsub_f32(vmla_n_f32(v96, v99, v100 / v101), v98);
        v103 = sqrtf(vaddv_f32(vmul_f32(v102, v102)));
        v104 = v39;
        if (v39 < 0 && (v104 = v34, v34 < 0))
        {
          v106 = v103 + 0.4;
        }

        else
        {
          v105 = vsub_f32(*(v93 + 176 * v104 + 16), *(v93 + 176 * v104 + 24));
          v106 = sqrtf(vaddv_f32(vmul_f32(v105, v105)));
        }

        if (v106 < (v103 + 0.2))
        {
          goto LABEL_109;
        }

        v107 = *v367 + 176 * v27;
        *(v107 + 88) = 2;
        if ((v38 & 0x80000000) == 0)
        {
          *(v93 + 176 * v38 + 88) = 2;
        }

        if (v39 <= v34)
        {
          v39 = v34;
        }

        if (v39 < 0)
        {
          goto LABEL_88;
        }

        v108 = v93 + 176 * v39;
        *&v40 = *(v108 + 16);
        v109 = *(v107 + 16);
        v110 = *(v107 + 24);
        v374 = v40;
        v111 = sub_2621DC76C(*&v40, v109, v110, 0.00001);
        *&v112 = *(v108 + 24);
        a1 = v387;
        v371 = v112;
        *&v113 = sub_2621DC76C(*&v112, v109, v110, 0.00001);
        if (*&v113 >= v111)
        {
          *&v113 = v111;
        }

        if (*&v113 >= 0.1)
        {
          goto LABEL_88;
        }

        v116 = v371;
        v115 = v374;
        v117 = vsub_f32(*&v371, *&v374);
        v118 = *v95;
        v119 = vsub_f32(v95[1], *v95);
        *v114.i32 = -*&v117.i32[1];
        v120 = vzip1_s32(v114, v117);
        v121 = vmul_f32(v119, v120);
        if (vaddv_f32(v121) == 0.0)
        {
          sub_2622386B8();
        }

        v122 = vmul_f32(vsub_f32(*&v374, v118), v120);
        *&v113 = vmla_n_f32(v118, v119, vdiv_f32(vadd_f32(v122, vdup_lane_s32(v122, 1)), vadd_f32(v121, vdup_lane_s32(v121, 1))).f32[0]);
        v123 = v93 + 176 * v39;
        *(v123 + 16) = v113;
        if (v111 >= 0.1)
        {
          v129 = v113;
          DWORD2(v129) = *(v123 + 64);
          v130 = v374;
          DWORD2(v130) = *(v123 + 68);
          *(v123 + 24) = v374;
          DWORD2(v113) = DWORD2(v130);
          DWORD2(v115) = DWORD2(v129);
          *(v123 + 32) = v129;
          *(v123 + 48) = v130;
          v126 = *(v123 + 8);
          *v402 = v113;
          v403 = v130;
          v404 = v115;
          *v405 = v129;
          if (v126)
          {
LABEL_87:
            objc_copyStruct((v126 + 272), v402, 64, 1, 0);
          }
        }

        else
        {
          v124 = v113;
          DWORD2(v124) = *(v123 + 64);
          v125 = v371;
          DWORD2(v125) = *(v123 + 68);
          DWORD2(v113) = DWORD2(v125);
          DWORD2(v116) = DWORD2(v124);
          *(v123 + 32) = v124;
          *(v123 + 48) = v125;
          v126 = *(v123 + 8);
          *v402 = v113;
          v403 = v125;
          v404 = v116;
          *v405 = v124;
          if (v126)
          {
            goto LABEL_87;
          }
        }

LABEL_88:
        sub_2621C7CD0(&p_src, v399);
      }
    }

LABEL_109:
    v25 = v377[1];
    v26 = v377[2];
LABEL_110:
    LODWORD(v399[0]) = ++v27;
  }

  while (0x2E8BA2E8BA2E8BA3 * ((v26 - v25) >> 4) > v27);
  v158 = p_src;
  if (v413 != p_src)
  {
    sub_262251928(v385);
    sub_262251928(v367);
  }

  if (v158)
  {
    operator delete(v158);
  }

LABEL_115:
  v159 = v366;
  v372 = v13;
  v382 = *v159[7];
  v160 = v159[1];
  v161 = v159[2];
  v375 = v159;
  memset(v399, 0, sizeof(v399));
  sub_26225172C(v399, v160, v161, v161 - v160);
  v162 = 0;
  v163 = 48;
  if (v13)
  {
    goto LABEL_119;
  }

LABEL_118:
  for (j = 0; ; j = v13[14])
  {
    v165 = j;
    v168 = objc_msgSend_count(v165, v166, v167);

    if (v162 >= v168)
    {
      break;
    }

    *v402 = *(v13[10] + v163);
    sub_2621D9F60((a1 + 1), v402);
    ++v162;
    v163 += 64;
    if (!v13)
    {
      goto LABEL_118;
    }

LABEL_119:
    ;
  }

  src = 0uLL;
  *&v394 = 0;
  p_src = 0;
  v413 = 0;
  v414 = 0;
  v398[0] = 0;
  v398[1] = 0;
  v397 = v398;
  v171 = a1[7];
  v170 = a1[8];
  if (v170 != v171)
  {
    v172 = 0;
    do
    {
      v173 = &v171[176 * v172];
      if (*(v173 + 76) == 1)
      {
        operator new();
      }

      sub_262246794(v402, v173, v169);
      sub_26224663C(&p_src, v402, v174);
      sub_2621C50C4(v402);
      ++v172;
      v171 = a1[7];
      v170 = a1[8];
    }

    while (v172 < 0x2E8BA2E8BA2E8BA3 * ((v170 - v171) >> 4));
  }

  v175 = src;
  if (*(&src + 1) != src)
  {
    v176 = 0;
    v177 = vdup_n_s32(0x3E4CCCCDu);
    while (1)
    {
      v178 = v175 + 24 * v176;
      v179 = *v178;
      if ((**v178 != 1 || v179[1] != 3) && (v179[2] != 1 || v179[3] != 3))
      {
LABEL_185:
        sub_262246794(v402, *v385 + 176 * *(4 * v176), v169);
        sub_26224663C(&p_src, v402, v233);
        sub_2621C50C4(v402);
        goto LABEL_186;
      }

      v180 = *(4 * v176);
      __p[0] = 0;
      __p[1] = 0;
      v401 = 0;
      sub_2622FF14C(__p, v179, *(v178 + 8), (*(v178 + 8) - v179) >> 3);
      v402[0] = 0;
      v402[1] = 0;
      *&v403 = 0;
      v181 = a1[7];
      if (a1[8] == v181)
      {
        v200 = 0;
      }

      else
      {
        v182 = 0;
        v183 = 0;
        v184 = &v181[22 * v180];
        v185 = v184 + 2;
        do
        {
          if (v180 != v183)
          {
            v186 = sub_2621C92AC(v184 + 2, &v181[v182 + 2], 0);
            if (v186 >= 30.0 && v186 <= 150.0)
            {
              v190 = v184[2];
              v189 = v184[3];
              v191 = vsub_f32(v189, v190);
              v192 = v181[v182 + 3];
              v193 = v181[v182 + 2];
              v194 = vsub_f32(v192, v193);
              *v187.i32 = -*&v191.i32[1];
              v195 = vzip1_s32(v187, v191);
              v196 = vmul_f32(v194, v195);
              if (vaddv_f32(v196) != 0.0)
              {
                v197 = vmul_f32(vsub_f32(v190, v193), v195);
                v198 = vmla_n_f32(v193, v194, vdiv_f32(vadd_f32(v197, vdup_lane_s32(v197, 1)), vadd_f32(v196, vdup_lane_s32(v196, 1))).f32[0]);
                v410 = v198;
                v411 = 1;
                if (vaddv_f32(vmul_f32(vsub_f32(v198, v193), vsub_f32(v198, v192))) <= 0.2 && vaddv_f32(vmul_f32(vsub_f32(v198, v190), vsub_f32(v198, v189))) <= 0.00001)
                {
                  sub_2621CBA84(v402, &v410);
                }
              }
            }
          }

          ++v183;
          v181 = a1[7];
          v199 = a1[8];
          v182 += 22;
        }

        while (0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4) > v183);
        v200 = v402[0];
        if (v402[1] != v402[0])
        {
          v201 = 0;
          v202 = v184[2];
          v409 = v184[3];
          v410 = v202;
          v203 = (v402[1] - v402[0]) >> 3;
          v204 = __p[0];
          v205 = &v410;
          v206 = 1;
          v207 = v199;
          do
          {
            v208 = v206;
            v209 = &v204[8 * v201];
            if (*v209 == 1 && *(v209 + 1) == 3)
            {
              v210 = v185[v201];
              v211 = *v200;
              v212 = vsub_f32(v210, *v200);
              v213 = vmul_f32(v212, v212);
              *v213.i32 = sqrtf(vaddv_f32(v213));
              v214 = v200 + 1;
              v215 = v203 - 1;
              if (v203 >= 2)
              {
                do
                {
                  v216 = *v214++;
                  v217 = vsub_f32(v210, v216);
                  v218 = vmul_f32(v217, v217);
                  v218.f32[0] = sqrtf(vaddv_f32(v218));
                  v211 = vbsl_s8(vdup_lane_s32(vcgt_f32(v213, v218), 0), v216, v211);
                  if (*v213.i32 > v218.f32[0])
                  {
                    *v213.i32 = v218.f32[0];
                  }

                  --v215;
                }

                while (v215);
                v212 = vsub_f32(v210, v211);
                v213 = vmul_f32(v212, v212);
                *v213.i32 = sqrtf(vaddv_f32(v213));
              }

              if (*v213.i32 <= 0.2)
              {
                v219 = vmul_f32(vadd_f32(v210, v211), 0x3F0000003F000000);
              }

              else
              {
                v219 = vmla_f32(v211, v177, vdiv_f32(v212, vdup_lane_s32(v213, 0)));
              }

              v220 = v181;
              if (v207 != v181)
              {
                v221 = 0;
                v222 = vsub_f32(v219, *&v382);
                *v212.i32 = -*&v222.i32[1];
                v223 = vzip1_s32(v212, v222);
                v224 = v181 + 3;
                v169 = v207;
                do
                {
                  if (v180 == v221)
                  {
                    v225 = 0x2E8BA2E8BA2E8BA3 * ((v169 - v181) >> 4);
                    v220 = v207;
                  }

                  else
                  {
                    v226 = v224[-1];
                    v227 = vsub_f32(*v224, v226);
                    v228 = vmul_f32(v227, v223);
                    v225 = 0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4);
                    v220 = v199;
                    v169 = v199;
                    if (vaddv_f32(v228) != 0.0)
                    {
                      v229 = vmul_f32(vsub_f32(*&v382, v226), v223);
                      v230 = vmla_n_f32(v226, v227, vdiv_f32(vadd_f32(v229, vdup_lane_s32(v229, 1)), vadd_f32(v228, vdup_lane_s32(v228, 1))).f32[0]);
                      v225 = 0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4);
                      v220 = v199;
                      v169 = v199;
                      if (vaddv_f32(vmul_f32(vsub_f32(v230, v226), vsub_f32(v230, *v224))) <= -0.001)
                      {
                        v225 = 0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4);
                        v220 = v199;
                        v169 = v199;
                        if (vaddv_f32(vmul_f32(vsub_f32(v230, *&v382), vsub_f32(v230, v219))) <= -0.001)
                        {
                          *v205 = v211;
                          goto LABEL_167;
                        }
                      }
                    }
                  }

                  ++v221;
                  v224 += 22;
                  v207 = v220;
                }

                while (v225 > v221);
              }
            }

            else
            {
LABEL_167:
              v220 = v207;
            }

            v206 = 0;
            v205 = &v409;
            v207 = v220;
            v201 = 1;
          }

          while ((v208 & 1) != 0);
          v231 = vsub_f32(v410, v409);
          v231.f32[0] = sqrtf(vaddv_f32(vmul_f32(v231, v231)));
          v232 = v231.f32[0] <= 0.2;
          if (v231.f32[0] > 0.2)
          {
            sub_2621CBF10(1uLL);
          }

          if (v200)
          {
            goto LABEL_180;
          }

          goto LABEL_181;
        }
      }

      v204 = __p[0];
      if (*__p[0] != 1 || *(__p[0] + 1) != 3 || *(__p[0] + 2) != 1)
      {
        v232 = 0;
        if (!v200)
        {
          goto LABEL_181;
        }

LABEL_180:
        v402[1] = v200;
        operator delete(v200);
        v204 = __p[0];
        goto LABEL_181;
      }

      v232 = *(__p[0] + 3) == 3;
      if (v200)
      {
        goto LABEL_180;
      }

LABEL_181:
      if (v204)
      {
        __p[1] = v204;
        operator delete(v204);
      }

      if (!v232)
      {
        goto LABEL_185;
      }

      v402[0] = (*v385 + 176 * *(4 * v176) + 128);
      *(sub_26226C7A4(&v397, v402[0], v402) + 14) = 0;
LABEL_186:
      ++v176;
      v175 = src;
      if (v176 >= 0xAAAAAAAAAAAAAAABLL * ((*(&src + 1) - src) >> 3))
      {
        v171 = a1[7];
        v170 = a1[8];
        break;
      }
    }
  }

  if (v170 != v171)
  {
    v234 = v170 - 176;
    v235 = v170 - 176;
    v236 = v170 - 176;
    do
    {
      v237 = *v236;
      v236 -= 176;
      (*v237)(v235);
      v234 -= 176;
      v52 = v235 == v171;
      v235 = v236;
    }

    while (!v52);
  }

  v238 = v387;
  v387[8] = v171;
  v239 = p_src;
  v240 = v413;
  while (v239 != v240)
  {
    sub_262246794(v402, v239, v169);
    sub_26224663C(v385, v402, v241);
    sub_2621C50C4(v402);
    v239 += 22;
  }

  v402[0] = &p_src;
  sub_2621C5004(v402);
  v402[0] = &src;
  sub_2621E1CB0(v402);
  v242 = 0x2E8BA2E8BA2E8BA3 * ((v387[11] - v387[10]) >> 4);
  LODWORD(src) = 1;
  sub_2621DE86C(v402, v242, &src);
  v244 = v402[0];
  v386 = v387[10];
  v245 = v387[11] - v386;
  if (v245)
  {
    v383 = (v387 + 10);
    v246 = 0;
    v247 = 0;
    v248 = 0x2E8BA2E8BA2E8BA3 * (v245 >> 4);
    v249 = v397;
    if (v248 <= 1)
    {
      v250 = 1;
    }

    else
    {
      v250 = v248;
    }

    do
    {
      while (v249 != v398)
      {
        v251 = v386 + 176 * v246;
        v252 = (v251 + 152);
        v253 = *(v251 + 175);
        v254 = v253;
        v255 = *(v251 + 160);
        if ((v253 & 0x80u) == 0)
        {
          v256 = v253;
        }

        else
        {
          v256 = v255;
        }

        v257 = v249;
        while (1)
        {
          v258 = *(v257 + 55);
          v259 = v258;
          if (v258 < 0)
          {
            v258 = v257[5];
          }

          if (v256 == v258)
          {
            v260 = v254 >= 0 ? v252 : *v252;
            v261 = v259 >= 0 ? v257 + 4 : v257[4];
            if (!memcmp(v260, v261, v256))
            {
              break;
            }
          }

          v262 = v257[1];
          if (v262)
          {
            do
            {
              v263 = v262;
              v262 = *v262;
            }

            while (v262);
          }

          else
          {
            do
            {
              v263 = v257[2];
              v52 = *v263 == v257;
              v257 = v263;
            }

            while (!v52);
          }

          v257 = v263;
          if (v263 == v398)
          {
            goto LABEL_220;
          }
        }

        v244[v246++] = 0;
        v247 = 1;
        if (v246 == v250)
        {
          goto LABEL_225;
        }
      }

LABEL_220:
      ++v246;
    }

    while (v246 != v250);
    if ((v247 & 1) == 0)
    {
      goto LABEL_245;
    }

LABEL_225:
    src = 0uLL;
    *&v394 = 0;
    v264 = v402[1];
    if (v402[1] != v244)
    {
      v265 = 0;
      v266 = 0;
      do
      {
        if (v244[v266])
        {
          sub_26224663C(&src, &(*v383)[v265], v243);
          v244 = v402[0];
          v264 = v402[1];
        }

        ++v266;
        v265 += 176;
      }

      while (v266 < (v264 - v244) >> 2);
    }

    if (v383 != &src)
    {
      v267 = *(&src + 1);
      v268 = *(&src + 1) - src;
      v269 = v387[10];
      if ((v387[12] - v269) < *(&src + 1) - src)
      {
        v270 = 0x2E8BA2E8BA2E8BA3 * (v268 >> 4);
        sub_26224789C(v383);
        if (v270 <= 0x1745D1745D1745DLL)
        {
          v271 = 0x5D1745D1745D1746 * ((v387[12] - v387[10]) >> 4);
          if (v271 <= v270)
          {
            v271 = v270;
          }

          if ((0x2E8BA2E8BA2E8BA3 * ((v387[12] - v387[10]) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
          {
            v272 = 0x1745D1745D1745DLL;
          }

          else
          {
            v272 = v271;
          }

          if (v272 <= 0x1745D1745D1745DLL)
          {
            sub_2622469FC(v272);
          }
        }

        sub_2621CBEB0();
      }

      v273 = v387[11] - v269;
      if (v273 >= v268)
      {
        sub_2622517A0(src, *(&src + 1), v269);
        v275 = v359;
        v360 = v387[11];
        if (v360 != v359)
        {
          v361 = v360 - 176;
          v362 = (v360 - 176);
          v363 = (v360 - 176);
          do
          {
            v364 = *v363;
            v363 -= 22;
            (*v364)(v362);
            v361 -= 176;
            v52 = v362 == v275;
            v362 = v363;
          }

          while (!v52);
          v238 = v387;
        }
      }

      else
      {
        v274 = sub_2622517A0(src, src + v273, v269);
        v275 = sub_26225185C(v274, v267, v387[11]);
      }

      *(v238 + 11) = v275;
    }

    p_src = &src;
    sub_2621C5004(&p_src);
    v244 = v402[0];
  }

LABEL_245:
  if (v244)
  {
    v402[1] = v244;
    operator delete(v244);
  }

  sub_2621CC7B4(v398[0]);
  if (v399[0])
  {
    operator delete(v399[0]);
  }

  v276 = *(v238 + 100);
  v277 = *(v238 + 99);
  while (v276 != v277)
  {
    v278 = *(v276 - 8);
    v276 -= 8;
  }

  *(v238 + 100) = v277;
  if ((v238[8] & 1) == 0)
  {
    v279 = *(v238 + 96);
    for (k = *(v238 + 97); v279 != k; v279 += 320)
    {
      if (*(v238 + 219))
      {
        v280 = v238[220];
        v281 = *(v279 + 224);
      }

      else
      {
        v281 = *(v279 + 224);
        v280 = (v238[221] * 360.0) / (v281 * 6.2832);
      }

      v282 = *(v279 + 228);
      v283 = __sincosf_stret((v282 / 180.0) * 3.1416);
      *&v284 = v281 * v283.__cosval;
      *(&v284 + 1) = v281 * v283.__sinval;
      v285 = *(v279 + 208);
      v285.i32[2] = 0;
      v388 = v285;
      v384 = vaddq_f32(v285, v284);
      v286 = *(v279 + 232);
      v287 = __sincosf_stret((v286 / 180.0) * 3.1416);
      *&v288 = v281 * v287.__cosval;
      *(&v288 + 1) = v281 * v287.__sinval;
      v381 = vaddq_f32(v388, v288);
      if (*(v279 + 240) == 1 && ((v289 = vsubq_f32(v384, *(v279 + 256)), v290 = sqrtf(vaddv_f32(*&vmulq_f32(v289, v289))), v291 = *(v279 + 312), v292 = v238[222], v291 != 1) || v290 >= v292))
      {
        v295 = vsubq_f32(v381, *(v279 + 272));
        v296 = sqrtf(vaddv_f32(*&vmulq_f32(v295, v295)));
        v298 = v296 >= v292 || v291 != -1;
        v293 = v298 && v290 < v296;
        if (v293)
        {
          v294 = 1;
        }

        else
        {
          v294 = -1;
        }
      }

      else
      {
        LOBYTE(v293) = 1;
        v294 = 1;
      }

      v380 = v294;
      src = 0uLL;
      *&v394 = 0;
      v402[0] = 0;
      v402[1] = 0;
      *&v403 = 0;
      v299 = v280 * 0.5;
      v300 = (v280 * 10.0);
      if (v293)
      {
        v301 = (v282 * 10.0);
        v302 = ((v286 - v299) * 10.0);
        while (v301 < v302)
        {
          *&p_src = v301 / 10.0;
          sub_2621C8F2C(v402, &p_src);
          v301 += v300;
        }

        sub_2621C8F2C(v402, (v279 + 232));
      }

      else
      {
        v303 = (v286 * 10.0);
        v304 = ((v299 + v282) * 10.0);
        while (v303 > v304)
        {
          *&p_src = v303 / 10.0;
          sub_2621C8F2C(v402, &p_src);
          v303 -= v300;
        }

        sub_2621C8F2C(v402, (v279 + 228));
      }

      v305 = v402[0];
      v238 = v387;
      if (v402[1] != v402[0])
      {
        v306 = 0;
        v307 = 0;
        if (((v402[1] - v402[0]) >> 2) <= 1)
        {
          v308 = 1;
        }

        else
        {
          v308 = (v402[1] - v402[0]) >> 2;
        }

        do
        {
          v309 = *(v279 + 224);
          v310 = __sincosf_stret((*(v402[0] + v307) / 180.0) * 3.1416);
          *&v311 = v309 * v310.__cosval;
          *(&v311 + 1) = v309 * v310.__sinval;
          v312 = *(v279 + 208);
          v312.i32[2] = 0;
          v313 = vaddq_f32(v312, v311);
          v314 = v306;
          v315 = v306 >> 4;
          if (((v306 >> 4) + 1) >> 60)
          {
            sub_2621CBEB0();
          }

          if (v306 >> 4 != -1)
          {
            sub_2621CBF10((v306 >> 4) + 1);
          }

          *(16 * v315) = v313;
          v306 = 16 * v315 + 16;
          memcpy(0, 0, v314);
          ++v307;
        }

        while (v308 != v307);
        if (v306 >= 0x11)
        {
          operator new();
        }

        v305 = v402[0];
      }

      if (v305)
      {
        operator delete(v305);
      }

      v316 = *(v279 + 288);
      v317 = *(v279 + 296);
      if (v317 != v316 && *(&src + 1) != src)
      {
        do
        {
          v320 = *v316;
          p_src = 0;
          v413 = 0;
          v414 = 0;
          v322 = *(&src + 1);
          v321 = src;
          if (src == *(&src + 1))
          {
            v346 = 0;
            v339 = 0;
            v342 = 0;
          }

          else
          {
            do
            {
              v323 = *v321;
              objc_msgSend_quad(v323, v324, v325);
              v389 = v326;
              objc_msgSend_quad(v323, v327, v328);
              *&v329 = v389;
              *(&v329 + 1) = v330;
              *__p = v329;
              objc_msgSend_quad(v320, v331, v332);
              v390 = v333;
              objc_msgSend_quad(v320, v334, v335);
              *&v336 = v390;
              *(&v336 + 1) = v337;
              *v399 = v336;
              sub_26229DAC8(v402, __p, v399, v238 + 116);
              if (*(&v404 + 1) <= v238[224] && ((v338 = v238[225], *(&v404 + 2) <= v338) || *(&v404 + 2) >= (180.0 - v338)))
              {
                sub_2621C8F2C(&p_src, &v403 + 2);
              }

              else
              {
                LODWORD(v397) = 0;
                sub_2621C8F2C(&p_src, &v397);
              }

              if (v407)
              {
                v408 = v407;
                operator delete(v407);
              }

              if (v405[1])
              {
                v406 = v405[1];
                operator delete(v405[1]);
              }

              ++v321;
            }

            while (v321 != v322);
            v339 = p_src;
            if (p_src == v413 || (v340 = p_src + 1, (p_src + 4) == v413))
            {
              v346 = p_src;
              v342 = p_src;
            }

            else
            {
              v341 = *p_src;
              v342 = p_src;
              v343 = p_src + 1;
              do
              {
                v344 = *v343++;
                v345 = v344;
                if (v341 < v344)
                {
                  v341 = v345;
                  v342 = v340;
                }

                v340 = v343;
              }

              while (v343 != v413);
              v346 = p_src;
            }
          }

          v347 = v342 - v346;
          if (*(v339 + v342 - v346) >= *(v387 + 223))
          {
            v348 = objc_msgSend_identifier(v320, v318, v319);
            v349 = v347 >> 2;
            sub_2622C533C(*(src + 8 * v349), v348);

            v352 = objc_msgSend_parentIdentifier(v320, v350, v351);
            sub_2622C534C(*(src + 8 * v349), v352);
          }

          operator delete(v339);

          ++v316;
          v238 = v387;
        }

        while (v316 != v317);
        v316 = *(v279 + 288);
        v317 = *(v279 + 296);
      }

      while (v317 != v316)
      {
        v353 = *--v317;
      }

      *(v279 + 296) = v316;
      v355 = *(&src + 1);
      for (m = src; m != v355; ++m)
      {
        sub_262251650((v279 + 288), m);
      }

      *(v279 + 256) = v384;
      *(v279 + 272) = v381;
      *(v279 + 240) = 1;
      *(v279 + 312) = v380;
      v402[0] = &src;
      sub_2621C512C(v402);
      v356 = *(v279 + 288);
      v357 = *(v279 + 296);
      while (v356 != v357)
      {
        v358 = *v356;
        v402[0] = v358;
        sub_262251650(v238 + 99, v402);

        ++v356;
      }
    }
  }

  if (v391[0])
  {
    operator delete(v391[0]);
  }

  if (v392[0])
  {
    operator delete(v392[0]);
  }
}