void sub_2622A9CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, id a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  if (v47)
  {
    operator delete(v47);
  }

  sub_26225CF48(a41);

  sub_2621CD534(&a43);
  _Unwind_Resume(a1);
}

void sub_2622AB028(_Unwind_Exception *a1)
{
  v4 = v2;

  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2622AB06C(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[15] & 1) == 0)
  {
    v5 = MEMORY[0x266727EF0]();
    v6 = v3[19];
    if (v6 && *(v6 + 177) == 1 && *(v6 + 104))
    {
      v7 = *(v6 + 64);
      v8 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v4, v5, @"avail_mem");
      v27[1] = @"time_stamp";
      *&buf = v8;
      v9 = MEMORY[0x277CCABB0];
      objc_msgSend_timestamp(*(v6 + 104), v10, v11);
      v14 = objc_msgSend_numberWithDouble_(v9, v12, v13);
      *(&buf + 1) = v14;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &buf, v27, 2);
      objc_msgSend_addObject_(v7, v17, v16);
    }

    if (*(a1 + 40) > v5)
    {
      if (qword_27FF0C0B0 != -1)
      {
        dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
      }

      v18 = qword_27FF0C0A8;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v5;
        _os_log_error_impl(&dword_2621C3000, v18, OS_LOG_TYPE_ERROR, "RSError: limited available memory: %{bytes}zu", &buf, 0xCu);
      }

      v21 = objc_msgSend_delegate(v3, v19, v20);
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v25 = objc_msgSend_delegate(v3, v23, v24);
        objc_msgSend_session_didFailWithError_(v25, v26, v3, -1);
      }
    }
  }
}

void sub_2622AB5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622AB5CC(void *a1, unint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_2622AB9E8(&v36, a3, &a3[a2], a2);
    sub_2622ABA5C(__p, (a1 + 1), &v36);
    v4 = a1[1];
    if (v4)
    {
      a1[2] = v4;
      operator delete(v4);
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
    }

    *(a1 + 1) = *__p;
    a1[3] = v40;
    sub_2622ABA5C(__p, (a1 + 4), &v36);
    v5 = a1[4];
    if (v5)
    {
      a1[5] = v5;
      operator delete(v5);
      a1[4] = 0;
      a1[5] = 0;
      a1[6] = 0;
    }

    *(a1 + 2) = *__p;
    a1[6] = v40;
    v35 = 0;
    v34 = 0uLL;
    v7 = v36;
    v6 = v37;
    sub_2622ABC20(&v34, (v37 - v36) >> 3);
    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    sub_2622ABCC4(__p, a1[7], a1[8], (a1[8] - a1[7]) >> 2);
    v9 = __p[0];
    if (v7 != v6)
    {
      v10 = *(&v34 + 1);
      v11 = v35;
      v12 = v34;
      do
      {
        v8.i32[0] = v9[*v7];
        v13 = vmovl_u8(v8).u64[0];
        if (v10 >= v11)
        {
          v14 = v10 - v12;
          v15 = (v10 - v12) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            v35 = v11;
            *&v34 = v12;
            sub_2621CBEB0();
          }

          if ((v11 - v12) >> 1 > v16)
          {
            v16 = (v11 - v12) >> 1;
          }

          if (v11 - v12 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            sub_2621C7F54(v17);
          }

          v18 = (4 * v15);
          v11 = 0;
          *v18 = vuzp1_s8(v13, v13).u32[0];
          v10 = (v18 + 1);
          memcpy(0, v12, v14);
          if (v12)
          {
            operator delete(v12);
          }

          v12 = 0;
        }

        else
        {
          v8 = vuzp1_s8(v13, v13);
          *v10 = v8.i32[0];
          v10 += 4;
        }

        ++v7;
      }

      while (v7 != v6);
      *(&v34 + 1) = v10;
      v35 = v11;
      *&v34 = v12;
      v9 = __p[0];
    }

    if (v9)
    {
      operator delete(v9);
    }

    v19 = a1[7];
    if (v19)
    {
      a1[8] = v19;
      operator delete(v19);
      a1[7] = 0;
      a1[8] = 0;
      a1[9] = 0;
    }

    *(a1 + 7) = v34;
    v20 = v36;
    a1[9] = v35;
    v35 = 0;
    v34 = 0uLL;
    v21 = v37;
    sub_26220F5A0(&v34, v37 - v20);
    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    sub_2622ABD40(__p, a1[10], a1[11], (a1[11] - a1[10]) >> 3);
    v22 = __p[0];
    if (v20 != v21)
    {
      v23 = *(&v34 + 1);
      v24 = v35;
      v25 = v34;
      do
      {
        v26 = v22[*v20];
        if (v23 >= v24)
        {
          v27 = v23 - v25;
          v28 = (v23 - v25) >> 3;
          v29 = v28 + 1;
          if ((v28 + 1) >> 61)
          {
            v35 = v24;
            *&v34 = v25;
            sub_2621CBEB0();
          }

          if ((v24 - v25) >> 2 > v29)
          {
            v29 = (v24 - v25) >> 2;
          }

          if (v24 - v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            sub_2621CBEC8(v30);
          }

          v31 = (8 * v28);
          v24 = 0;
          *v31 = v26;
          v23 = (v31 + 1);
          memcpy(0, v25, v27);
          if (v25)
          {
            operator delete(v25);
          }

          v25 = 0;
        }

        else
        {
          *v23 = v26;
          v23 += 8;
        }

        ++v20;
      }

      while (v20 != v21);
      *(&v34 + 1) = v23;
      v35 = v24;
      *&v34 = v25;
      v22 = __p[0];
    }

    if (v22)
    {
      operator delete(v22);
    }

    v32 = a1[10];
    if (v32)
    {
      a1[11] = v32;
      operator delete(v32);
      a1[10] = 0;
      a1[11] = 0;
      a1[12] = 0;
    }

    *(a1 + 5) = v34;
    a1[12] = v35;
    sub_2622ABA5C(__p, (a1 + 13), &v36);
    v33 = a1[13];
    if (v33)
    {
      a1[14] = v33;
      operator delete(v33);
      a1[13] = 0;
      a1[14] = 0;
      a1[15] = 0;
    }

    *(a1 + 13) = *__p;
    a1[15] = v40;
    if (v36)
    {
      operator delete(v36);
    }
  }
}

void sub_2622AB978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2622AB9E8(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_2622ABA40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622ABA5C(void **a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2622ABDBC(a1, (a3[1] - *a3) >> 3);
  v6 = *a3;
  v7 = a3[1];
  memset(__p, 0, sizeof(__p));
  sub_2621DDA38(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  v8 = __p[0];
  if (v6 != v7)
  {
    v9 = a1[1];
    v10 = a1[2];
    do
    {
      if (v9 >= v10)
      {
        v11 = *a1;
        v12 = v9 - *a1;
        v13 = (v12 >> 4) + 1;
        if (v13 >> 60)
        {
          sub_2621CBEB0();
        }

        if ((v10 - v11) >> 3 > v13)
        {
          v13 = (v10 - v11) >> 3;
        }

        if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_2621CBF10(v14);
        }

        v15 = (16 * (v12 >> 4));
        v10 = 0;
        *v15 = v8[*v6];
        v9 = (v15 + 1);
        memcpy(0, v11, v12);
        *a1 = 0;
        a1[2] = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v9 = v8[*v6];
        v9 += 16;
      }

      a1[1] = v9;
      ++v6;
    }

    while (v6 != v7);
    v8 = __p[0];
  }

  if (v8)
  {

    operator delete(v8);
  }
}

void sub_2622ABBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622ABC20(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_2621C7F54(a2);
    }

    sub_2621CBEB0();
  }
}

uint64_t *sub_2622ABCC4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621C8EEC(result, a4);
  }

  return result;
}

void sub_2622ABD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2622ABD40(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_2622ABDA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622ABDBC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_2621CBF10(a2);
    }

    sub_2621CBEB0();
  }
}

void sub_2622AC378(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2622ACF80(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_262236A0C(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
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
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14++;
        *v15++ = v16;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t *sub_2622AD0AC(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621C8EEC(a1, a2);
  }

  return a1;
}

void sub_2622AD108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2622AD124(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 <= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2622AD2C4(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 1)
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
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14++;
        *v15++ = v16;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t *sub_2622AD24C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621CC71C(a1, a2);
  }

  return a1;
}

void sub_2622AD2A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622AD2C4(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2621CBEB0();
}

void sub_2622AD434(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

id RSKeyframeToDictionary(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_count(v1, v6, v7);
  v10 = objc_msgSend_numberWithInteger_(v5, v9, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v11, v10, @"count");

  objc_msgSend_cameraPose(v1, v12, v13);
  v134[0] = v14;
  v134[1] = v15;
  v134[2] = v16;
  v134[3] = v17;
  v19 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v18, v134, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, @"cameraPose");

  v23 = objc_msgSend_points(v1, v21, v22);
  v26 = objc_msgSend_points(v1, v24, v25);
  v29 = objc_msgSend_count(v1, v27, v28);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  sub_26225172C(&v131, v23, (v26 + 16 * v29), (v26 + 16 * v29 - v23) >> 4);
  v30 = v131;
  v31 = v132;
  v32 = v132 - v131;
  sub_26220EDA4(&v129, ((v132 - v131) >> 3) + ((v132 - v131) >> 4));
  if (v31 != v30)
  {
    v34 = 0;
    v35 = v32 >> 4;
    if ((v32 >> 4) <= 1)
    {
      v35 = 1;
    }

    v36 = v30;
    do
    {
      v37 = v129 + v34;
      v38 = *v36;
      *(v37 + 2) = v36[2];
      *v37 = v38;
      v36 += 4;
      v34 += 12;
      --v35;
    }

    while (v35);
  }

  if (v130 == v129)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v39 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v33, v129, v130 - v129);
  }

  v41 = v39;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v40, v39, @"points");

  v44 = objc_msgSend_pointsToWorld(v1, v42, v43);
  v47 = objc_msgSend_pointsToWorld(v1, v45, v46);
  v50 = objc_msgSend_count(v1, v48, v49);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  sub_2621DDA38(&v126, v44, v47 + 16 * v50, (v47 + 16 * v50 - v44) >> 4);
  v51 = v126;
  v52 = v127;
  v53 = v127 - v126;
  sub_26220EDA4(&v124, ((v127 - v126) >> 3) + ((v127 - v126) >> 4));
  if (v52 != v51)
  {
    v55 = 0;
    v56 = v53 >> 4;
    if ((v53 >> 4) <= 1)
    {
      v56 = 1;
    }

    v57 = v51;
    do
    {
      v58 = v124 + v55;
      v59 = *v57;
      *(v58 + 2) = v57[2];
      *v58 = v59;
      v57 += 4;
      v55 += 12;
      --v56;
    }

    while (v56);
  }

  if (v125 == v124)
  {
    v60 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v60 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v54, v124, v125 - v124);
  }

  v62 = v60;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v61, v60, @"pointsToWorld");

  v65 = objc_msgSend_semanticLabels(v1, v63, v64);
  v69 = objc_msgSend_count(v1, v66, v67);
  if (v65 && v69)
  {
    v70 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v68, v65, 4 * v69);
  }

  else
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v72 = v70;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v71, v70, @"semanticLabels");

  v75 = objc_msgSend_semanticVotes(v1, v73, v74);
  v79 = objc_msgSend_count(v1, v76, v77);
  if (v75 && v79)
  {
    v80 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v78, v75, 8 * v79);
  }

  else
  {
    v80 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v82 = v80;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v81, v80, @"semanticVotes");

  v85 = objc_msgSend_identifier(v1, v83, v84);
  v88 = objc_msgSend_UUIDString(v85, v86, v87);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v89, v88, @"identifier");
  v92 = objc_msgSend_colors(v1, v90, v91);
  v95 = objc_msgSend_colors(v1, v93, v94);
  v98 = objc_msgSend_count(v1, v96, v97);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_2621DDA38(&v121, v92, v95 + 16 * v98, (v95 + 16 * v98 - v92) >> 4);
  v99 = v121;
  v100 = v122;
  v101 = v122 - v121;
  sub_26220EDA4(&__p, ((v122 - v121) >> 3) + ((v122 - v121) >> 4));
  if (v100 != v99)
  {
    v103 = 0;
    v104 = v101 >> 4;
    if ((v101 >> 4) <= 1)
    {
      v104 = 1;
    }

    v105 = v99;
    do
    {
      v106 = __p + v103;
      v107 = *v105;
      *(v106 + 2) = v105[2];
      *v106 = v107;
      v105 += 4;
      v103 += 12;
      --v104;
    }

    while (v104);
  }

  if (v120 == __p)
  {
    v108 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v108 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v102, __p, v120 - __p);
  }

  v110 = v108;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v109, v108, @"colors");

  v111 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(v1, v112, v113);
  v116 = objc_msgSend_numberWithDouble_(v111, v114, v115);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v117, v116, @"timestamp");

  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  if (v99)
  {
    operator delete(v99);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v51)
  {
    operator delete(v51);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v30)
  {
    operator delete(v30);
  }

  return v4;
}

void sub_2622AD940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v29 = v27;

  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

RSKeyframeExtended *RSKeyframeFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [RSKeyframeExtended alloc];
  v4 = objc_msgSend_initWithDictionary_(v2, v3, v1);

  return v4;
}

id RSKeyframeSequenceToDictionary(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB38];
  v5 = objc_msgSend_count(v1, v3, v4);
  v7 = objc_msgSend_dictionaryWithCapacity_(v2, v6, v5);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = objc_msgSend_allKeys(v1, v8, v9, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v1, v12, v16);
        v18 = RSKeyframeToDictionary(v17);
        v21 = objc_msgSend_UUIDString(v16, v19, v20);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v22, v18, v21);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v24, v28, 16);
    }

    while (v13);
  }

  return v7;
}

id RSKeyframeSequenceFromDictionary(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB38];
  v5 = objc_msgSend_count(v1, v3, v4);
  v29 = objc_msgSend_dictionaryWithCapacity_(v2, v6, v5);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = objc_msgSend_allKeys(v1, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v31, v35, 16);
  if (v10)
  {
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        v16 = objc_msgSend_initWithUUIDString_(v14, v15, v13);
        v17 = [RSKeyframeExtended alloc];
        v19 = objc_msgSend_objectForKeyedSubscript_(v1, v18, v13);
        v21 = objc_msgSend_initWithDictionary_(v17, v20, v19);

        if (v16)
        {
          v23 = v21 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v29, v22, v21, v16);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v31, v35, 16);
    }

    while (v10);
  }

  v27 = objc_msgSend_copy(v29, v25, v26);

  return v27;
}

id RSKeyframeSequenceFromDictionaryWithId(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v33 = v3;
  v7 = objc_msgSend_count(v3, v5, v6);
  v31 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = objc_msgSend_allKeys(v33, v9, v10);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v34, v38, 16);
  if (v12)
  {
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CCAD78]);
        v18 = objc_msgSend_initWithUUIDString_(v16, v17, v15);
        v19 = [RSKeyframeExtended alloc];
        v21 = objc_msgSend_objectForKeyedSubscript_(v33, v20, v15);
        v23 = objc_msgSend_initWithDictionary_withGroupId_(v19, v22, v21, a2);

        if (v18)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v31, v24, v23, v18);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v34, v38, 16);
    }

    while (v12);
  }

  v29 = objc_msgSend_copy(v31, v27, v28);

  return v29;
}

void sub_2622AE900(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_2622AE910(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_2622AE920(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_2622AE930(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_2622AE940(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

void sub_2622AE950(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_2622AE960(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_2622AE970(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_2622AEA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2622AEAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2622AEE64(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = objc_msgSend_walls(a1, a2, a3);
    v7 = objc_msgSend_count(v4, v5, v6);

    if (!v7)
    {
      *(a1 + 12) = 0xBFC000003F99999ALL;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = objc_msgSend_walls(a1, v8, v9);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
    if (v14)
    {
      v15 = *v28;
      v16 = -3.4028e38;
      v17 = 3.4028e38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          objc_msgSend_quad(v19, v12, v13);
          v26 = v20;
          objc_msgSend_quad(v19, v21, v22);
          v24 = v26;
          if (v26 >= v23)
          {
            v25 = v26;
          }

          else
          {
            v25 = v23;
          }

          if (v26 >= v23)
          {
            v24 = v23;
          }

          if (v25 > v16)
          {
            v16 = v25;
          }

          if (v24 < v17)
          {
            v17 = v24;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v27, v31, 16);
      }

      while (v14);
    }

    else
    {
      v16 = -3.4028e38;
      v17 = 3.4028e38;
    }

    *(a1 + 12) = v16;
    *(a1 + 16) = v17;
  }
}

id sub_2622AFA60(void *a1, char a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  if (v3 && objc_msgSend_count(v3, v4, v5))
  {
    v9 = MEMORY[0x277CBEB18];
    v10 = objc_msgSend_count(v6, v7, v8);
    v12 = objc_msgSend_arrayWithCapacity_(v9, v11, v10);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v6;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v31, 16);
    if (v17)
    {
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          if (v20)
          {
            v20[104] = a2;
          }

          v21 = objc_msgSend_dictionaryRepresentation(v20, v15, v16, v27);
          objc_msgSend_addObject_(v12, v22, v21);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v27, v31, 16);
      }

      while (v17);
    }

    v25 = objc_msgSend_copy(v12, v23, v24);
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  return v25;
}

id sub_2622AFC34(void *a1, char a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  if (v3 && objc_msgSend_count(v3, v4, v5))
  {
    v9 = MEMORY[0x277CBEB18];
    v10 = objc_msgSend_count(v6, v7, v8);
    v12 = objc_msgSend_arrayWithCapacity_(v9, v11, v10);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v6;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v31, 16);
    if (v17)
    {
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          if (v20)
          {
            v20[104] = a2;
          }

          v21 = objc_msgSend_dictionaryRepresentation(v20, v15, v16, v27);
          objc_msgSend_addObject_(v12, v22, v21);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v27, v31, 16);
      }

      while (v17);
    }

    v25 = objc_msgSend_copy(v12, v23, v24);
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  return v25;
}

void *sub_2622AFE14(void *a1, void *a2, uint64_t a3)
{
  v124 = *MEMORY[0x277D85DE8];
  v116 = a2;
  if (a1)
  {
    v118.receiver = a1;
    v118.super_class = RSFloorPlan;
    v117 = objc_msgSendSuper2(&v118, sel_init);
    v6 = objc_msgSend_objectForKeyedSubscript_(v116, v5, @"walls");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_2622B086C(v7, 0, a3);
    v9 = v117[3];
    v117[3] = v8;

    v11 = objc_msgSend_objectForKeyedSubscript_(v116, v10, @"doors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_2622B086C(v12, 2u, a3);
    v14 = v117[4];
    v117[4] = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(v116, v15, @"windows");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_2622B086C(v17, 1u, a3);
    v19 = v117[5];
    v117[5] = v18;

    v21 = objc_msgSend_objectForKeyedSubscript_(v116, v20, @"openings");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_2622B086C(v22, 3u, a3);
    v24 = v117[6];
    v117[6] = v23;

    v26 = objc_msgSend_objectForKeyedSubscript_(v116, v25, @"open_doors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_2622B086C(v27, 4u, a3);
    v29 = v117[7];
    v117[7] = v28;

    v31 = objc_msgSend_objectForKeyedSubscript_(v116, v30, @"objects");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v115 = v33;
    if (v33 && (v36 = v33, objc_msgSend_count(v33, v34, v35)))
    {
      v39 = MEMORY[0x277CBEB18];
      v40 = objc_msgSend_count(v36, v37, v38);
      v42 = objc_msgSend_arrayWithCapacity_(v39, v41, v40);
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v43 = v36;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v119, v123, 16);
      if (v45)
      {
        v46 = *v120;
        do
        {
          v47 = 0;
          do
          {
            if (*v120 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v119 + 1) + 8 * v47);
            v49 = [RS3DObject alloc];
            v51 = objc_msgSend_initWithDictionaryRepresentation_(v49, v50, v48);

            sub_26223FAB0(v51, a3, @"FloorPlan");
            if (v51)
            {
              objc_msgSend_addObject_(v42, v52, v51);
            }

            ++v47;
          }

          while (v45 != v47);
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v53, &v119, v123, 16);
        }

        while (v45);
      }

      v56 = objc_msgSend_copy(v42, v54, v55);
    }

    else
    {
      v56 = MEMORY[0x277CBEBF8];
    }

    v57 = v117[8];
    v117[8] = v56;

    v59 = objc_msgSend_objectForKeyedSubscript_(v116, v58, @"curved_walls");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    v61 = sub_2622B0A70(v60, 0, a3);
    v62 = v117[9];
    v117[9] = v61;

    v64 = objc_msgSend_objectForKeyedSubscript_(v116, v63, @"room_types");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = v65;
    v69 = v66;
    if (v66 && objc_msgSend_count(v66, v67, v68))
    {
      v72 = MEMORY[0x277CBEB18];
      v73 = objc_msgSend_count(v69, v70, v71);
      v75 = objc_msgSend_arrayWithCapacity_(v72, v74, v73);
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v76 = v69;
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v119, v123, 16);
      if (v78)
      {
        v79 = *v120;
        do
        {
          v80 = 0;
          do
          {
            if (*v120 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v81 = *(*(&v119 + 1) + 8 * v80);
            v82 = [RSRoomType alloc];
            v85 = objc_msgSend_initWithDictionaryRepresentation_withGroupId_(v82, v83, v81, 0);
            if (v85)
            {
              objc_msgSend_addObject_(v75, v84, v85);
            }

            ++v80;
          }

          while (v78 != v80);
          v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v86, &v119, v123, 16);
        }

        while (v78);
      }

      v89 = objc_msgSend_copy(v75, v87, v88);
    }

    else
    {
      v89 = MEMORY[0x277CBEBF8];
    }

    v90 = v117[10];
    v117[10] = v89;

    v92 = objc_msgSend_objectForKeyedSubscript_(v116, v91, @"floors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    v94 = sub_2622B086C(v93, 5u, a3);
    v95 = v117[11];
    v117[11] = v94;

    v97 = objc_msgSend_objectForKeyedSubscript_(v116, v96, @"curved_windows");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    v99 = sub_2622B0A70(v98, 1u, a3);
    v100 = v117[12];
    v117[12] = v99;

    v102 = objc_msgSend_objectForKeyedSubscript_(v116, v101, @"curved_doors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = sub_2622B0A70(v103, 2u, a3);
    v105 = v117[13];
    v117[13] = v104;

    sub_2622AEE64(v117, v106, v107);
    *(v117 + 2) = a3;
    v109 = objc_msgSend_objectForKeyedSubscript_(v116, v108, @"story");
    v112 = objc_msgSend_integerValue(v109, v110, v111);
    sub_2622B0C74(v117, v112, v113);
  }

  else
  {
    v117 = 0;
  }

  return v117;
}

id sub_2622B086C(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v29 = v5;
  if (v5 && objc_msgSend_count(v5, v6, v7))
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_count(v29, v8, v9);
    v13 = objc_msgSend_arrayWithCapacity_(v10, v12, v11);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v29;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v30, v34, 16);
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [RS3DSurface alloc];
          v22 = objc_msgSend_initWithDictionaryRepresentation_WithGroupId_(v20, v21, v19, a3);

          if (v22)
          {
            v22[104] = a2;
            objc_msgSend_addObject_(v13, v23, v22);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v24, &v30, v34, 16);
      }

      while (v16);
    }

    v27 = objc_msgSend_copy(v13, v25, v26);
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  return v27;
}

id sub_2622B0A70(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v29 = v5;
  if (v5 && objc_msgSend_count(v5, v6, v7))
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_count(v29, v8, v9);
    v13 = objc_msgSend_arrayWithCapacity_(v10, v12, v11);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v29;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v30, v34, 16);
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [RS3DCurvedSurface alloc];
          v22 = objc_msgSend_initWithDictionaryRepresentation_WithGroupId_(v20, v21, v19, a3);

          if (v22)
          {
            v22[104] = a2;
            objc_msgSend_addObject_(v13, v23, v22);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v24, &v30, v34, 16);
      }

      while (v16);
    }

    v27 = objc_msgSend_copy(v13, v25, v26);
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  return v27;
}

void sub_2622B0C74(void *a1, const char *a2, uint64_t a3)
{
  v157 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a1[15] = a2;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v5 = objc_msgSend_walls(a1, a2, a3);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v142, v156, 16);
    if (v8)
    {
      v9 = *v143;
      do
      {
        v10 = 0;
        do
        {
          if (*v143 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v142 + 1) + 8 * v10);
          if (v11)
          {
            *(v11 + 184) = a2;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v142, v156, 16);
      }

      while (v8);
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v14 = objc_msgSend_windows(a1, v12, v13);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v138, v155, 16);
    if (v17)
    {
      v18 = *v139;
      do
      {
        v19 = 0;
        do
        {
          if (*v139 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v138 + 1) + 8 * v19);
          if (v20)
          {
            *(v20 + 184) = a2;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v138, v155, 16);
      }

      while (v17);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v23 = objc_msgSend_doors(a1, v21, v22);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v134, v154, 16);
    if (v26)
    {
      v27 = *v135;
      do
      {
        v28 = 0;
        do
        {
          if (*v135 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v134 + 1) + 8 * v28);
          if (v29)
          {
            *(v29 + 184) = a2;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v134, v154, 16);
      }

      while (v26);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v32 = objc_msgSend_opendoors(a1, v30, v31);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v130, v153, 16);
    if (v35)
    {
      v36 = *v131;
      do
      {
        v37 = 0;
        do
        {
          if (*v131 != v36)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v130 + 1) + 8 * v37);
          if (v38)
          {
            *(v38 + 184) = a2;
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v130, v153, 16);
      }

      while (v35);
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v41 = objc_msgSend_openings(a1, v39, v40);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v126, v152, 16);
    if (v44)
    {
      v45 = *v127;
      do
      {
        v46 = 0;
        do
        {
          if (*v127 != v45)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v126 + 1) + 8 * v46);
          if (v47)
          {
            *(v47 + 184) = a2;
          }

          ++v46;
        }

        while (v44 != v46);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v126, v152, 16);
      }

      while (v44);
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v50 = objc_msgSend_objects(a1, v48, v49);
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v122, v151, 16);
    if (v53)
    {
      v54 = *v123;
      do
      {
        v55 = 0;
        do
        {
          if (*v123 != v54)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v122 + 1) + 8 * v55);
          if (v56)
          {
            *(v56 + 112) = a2;
          }

          ++v55;
        }

        while (v53 != v55);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v122, v151, 16);
      }

      while (v53);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v59 = objc_msgSend_floors(a1, v57, v58);
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v118, v150, 16);
    if (v62)
    {
      v63 = *v119;
      do
      {
        v64 = 0;
        do
        {
          if (*v119 != v63)
          {
            objc_enumerationMutation(v59);
          }

          v65 = *(*(&v118 + 1) + 8 * v64);
          if (v65)
          {
            *(v65 + 184) = a2;
          }

          ++v64;
        }

        while (v62 != v64);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v118, v150, 16);
      }

      while (v62);
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v68 = objc_msgSend_roomTypes(a1, v66, v67);
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v114, v149, 16);
    if (v71)
    {
      v72 = *v115;
      do
      {
        v73 = 0;
        do
        {
          if (*v115 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v74 = *(*(&v114 + 1) + 8 * v73);
          if (v74)
          {
            *(v74 + 32) = a2;
          }

          ++v73;
        }

        while (v71 != v73);
        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v114, v149, 16);
      }

      while (v71);
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v77 = objc_msgSend_curvedWalls(a1, v75, v76);
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v110, v148, 16);
    if (v80)
    {
      v81 = *v111;
      do
      {
        v82 = 0;
        do
        {
          if (*v111 != v81)
          {
            objc_enumerationMutation(v77);
          }

          v83 = *(*(&v110 + 1) + 8 * v82);
          if (v83)
          {
            *(v83 + 184) = a2;
          }

          ++v82;
        }

        while (v80 != v82);
        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v79, &v110, v148, 16);
      }

      while (v80);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v86 = objc_msgSend_curvedWindows(a1, v84, v85);
    v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v106, v147, 16);
    if (v89)
    {
      v90 = *v107;
      do
      {
        v91 = 0;
        do
        {
          if (*v107 != v90)
          {
            objc_enumerationMutation(v86);
          }

          v92 = *(*(&v106 + 1) + 8 * v91);
          if (v92)
          {
            *(v92 + 184) = a2;
          }

          ++v91;
        }

        while (v89 != v91);
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v88, &v106, v147, 16);
      }

      while (v89);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v95 = objc_msgSend_curvedDoors(a1, v93, v94, 0);
    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v102, v146, 16);
    if (v98)
    {
      v99 = *v103;
      do
      {
        v100 = 0;
        do
        {
          if (*v103 != v99)
          {
            objc_enumerationMutation(v95);
          }

          v101 = *(*(&v102 + 1) + 8 * v100);
          if (v101)
          {
            *(v101 + 184) = a2;
          }

          ++v100;
        }

        while (v98 != v100);
        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v102, v146, 16);
      }

      while (v98);
    }
  }
}

void sub_2622B1590(uint64_t a1, void *a2)
{
  v10 = a2;
  for (i = 0; objc_msgSend_count(v10, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v10, v6, i);
    if (v7)
    {
      v9 = *(a1 + 12);
      v8 = *(a1 + 16);
      v7[70] = v9;
      v7[74] = v9;
      v7[78] = v8;
      v7[82] = v8;
    }
  }
}

void **sub_2622B1630(void **result)
{
  if (result)
  {
    v1 = result;
    sub_2622B1590(result, result[3]);
    sub_2622B1590(v1, v1[9]);
    v2 = *(v1 + 4);
    if ((v2 + 1.0) >= (*(v1 + 3) + -0.3))
    {
      v3 = v2 + 1.0;
    }

    else
    {
      v3 = *(v1 + 3) + -0.3;
    }

    v6 = v1[6];
    for (i = 0; objc_msgSend_count(v6, v4, v5) > i; ++i)
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(v6, v8, i);
      if (v9)
      {
        v9[70] = v3;
        v9[74] = v3;
        v9[78] = v2;
        v9[82] = v2;
      }
    }

    if (objc_msgSend_count(v1[5], v10, v11))
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(v1[5], v12, v14);
        objc_msgSend_quad(v15, v16, v17);
        v56 = v18;
        v19 = *(v1 + 3);
        objc_msgSend_quad(v15, v20, v21);
        if (v15)
        {
          v23 = *(v1 + 4);
          if (v23 < v22)
          {
            v23 = v22;
          }

          v24 = v56;
          if (v56 >= v19)
          {
            v24 = v19;
          }

          v15[70] = v24;
          v15[74] = v24;
          v15[78] = v23;
          v15[82] = v23;
        }

        ++v14;
      }

      while (objc_msgSend_count(v1[5], v25, v26) > v14);
    }

    if (objc_msgSend_count(v1[4], v12, v13))
    {
      v29 = 0;
      do
      {
        v30 = objc_msgSend_objectAtIndexedSubscript_(v1[4], v27, v29);
        objc_msgSend_quad(v30, v31, v32);
        v57 = v33;
        v34 = *(v1 + 3);
        objc_msgSend_quad(v30, v35, v36);
        if (v30)
        {
          v38 = *(v1 + 4);
          if (v38 < v37)
          {
            v38 = v37;
          }

          v39 = v57;
          if (v57 >= v34)
          {
            v39 = v34;
          }

          v30[70] = v39;
          v30[74] = v39;
          v30[78] = v38;
          v30[82] = v38;
        }

        ++v29;
      }

      while (objc_msgSend_count(v1[4], v40, v41) > v29);
    }

    result = objc_msgSend_count(v1[7], v27, v28);
    if (result)
    {
      for (j = 0; j < result; ++j)
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(v1[7], v42, j);
        objc_msgSend_quad(v44, v45, v46);
        v58 = v47;
        v48 = *(v1 + 3);
        objc_msgSend_quad(v44, v49, v50);
        if (v44)
        {
          v52 = *(v1 + 4);
          if (v52 < v51)
          {
            v52 = v51;
          }

          v53 = v58;
          if (v58 >= v48)
          {
            v53 = v48;
          }

          v44[70] = v53;
          v44[74] = v53;
          v44[78] = v52;
          v44[82] = v52;
        }

        result = objc_msgSend_count(v1[7], v54, v55);
      }
    }
  }

  return result;
}

id sub_2622B18A8(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v32, 16);
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        objc_msgSend_quad(v12, v7, v8);
        v27 = v13;
        objc_msgSend_quad(v12, v14, v15);
        v26 = v16;
        objc_msgSend_quad(v12, v17, v18);
        v25 = v19;
        objc_msgSend_quad(v12, v20, v21);
        v22 = vsubq_f32(v27, v26);
        if ((sqrtf(vaddv_f32(*&vmulq_f32(v22, v22))) * fabsf(COERCE_FLOAT(vsubq_f32(v25, v23).i32[2]))) >= 0.00001)
        {
          objc_msgSend_addObject_(v4, v7, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v28, v32, 16);
    }

    while (v9);
  }

  return v4;
}

void sub_2622B1A88(void **a1)
{
  if (a1)
  {
    v2 = sub_2622B18A8(a1[3]);
    v3 = a1[3];
    a1[3] = v2;

    v4 = sub_2622B18A8(a1[5]);
    v5 = a1[5];
    a1[5] = v4;

    v6 = sub_2622B18A8(a1[4]);
    v7 = a1[4];
    a1[4] = v6;

    v8 = sub_2622B18A8(a1[6]);
    v9 = a1[6];
    a1[6] = v8;

    v10 = sub_2622B18A8(a1[7]);
    v11 = a1[7];
    a1[7] = v10;

    v12 = sub_2622B18A8(a1[9]);
    v13 = a1[9];
    a1[9] = v12;

    v14 = sub_2622B18A8(a1[12]);
    v15 = a1[12];
    a1[12] = v14;

    v16 = sub_2622B18A8(a1[13]);
    v17 = a1[13];
    a1[13] = v16;
  }
}

id sub_2622B1B7C(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = objc_msgSend_parentIdentifier(v15, v10, v11);
        if (v16)
        {
          v17 = objc_msgSend_parentIdentifier(v15, v10, v11);
          v19 = objc_msgSend_containsObject_(v4, v18, v17);

          if (v19)
          {
            objc_msgSend_addObject_(v7, v10, v15);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v21, v25, 16);
    }

    while (v12);
  }

  return v7;
}

void sub_2622B1D54(id *a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = a1[3];
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v39, v44, 16);
    if (v9)
    {
      v10 = *v40;
      do
      {
        v11 = 0;
        do
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = objc_msgSend_identifier(*(*(&v39 + 1) + 8 * v11), v7, v8);
          objc_msgSend_addObject_(v4, v13, v12);

          ++v11;
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v39, v44, 16);
      }

      while (v9);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = a1[9];
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v43, 16);
    if (v18)
    {
      v19 = *v36;
      do
      {
        v20 = 0;
        do
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = objc_msgSend_identifier(*(*(&v35 + 1) + 8 * v20), v16, v17, v35);
          objc_msgSend_addObject_(v4, v22, v21);

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v35, v43, 16);
      }

      while (v18);
    }

    v23 = sub_2622B1B7C(a1[5], v4);
    v24 = a1[5];
    a1[5] = v23;

    v25 = sub_2622B1B7C(a1[4], v4);
    v26 = a1[4];
    a1[4] = v25;

    v27 = sub_2622B1B7C(a1[6], v4);
    v28 = a1[6];
    a1[6] = v27;

    v29 = sub_2622B1B7C(a1[7], v4);
    v30 = a1[7];
    a1[7] = v29;

    v31 = sub_2622B1B7C(a1[12], v4);
    v32 = a1[12];
    a1[12] = v31;

    v33 = sub_2622B1B7C(a1[13], v4);
    v34 = a1[13];
    a1[13] = v33;
  }
}

void sub_2622B2024(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v1 = *(a1 + 24);
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v19, v23, 16);
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v1);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = objc_msgSend_polygonSize(v8, v3, v4);
          if (v9 >= 3)
          {
            v10 = 0;
            v11 = (v9 - 2);
            v12 = 3.4028e38;
            v13 = -3.4028e38;
            do
            {
              v18 = *(objc_msgSend_polygon(v8, v3, v4) + v10);
              v16 = objc_msgSend_polygon(v8, v14, v15);
              if (v13 < *(&v18 + 2))
              {
                v13 = *(&v18 + 2);
              }

              if (*(v16 + v10 + 8) < v12)
              {
                v12 = *(v16 + v10 + 8);
              }

              v10 += 16;
              --v11;
            }

            while (v11);
            if (vabds_f32(v13, v12) < 0.001 && v8 != 0)
            {
              v8[2] = v8[1];
              v8[11] = v8[10];
              v8[5] = v8[4];
              v8[8] = v8[7];
            }
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v19, v23, 16);
      }

      while (v5);
    }
  }
}

void sub_2622B21F8(void *a1)
{
  if (a1)
  {
    v2 = sub_2622B22D0(a1[6], a1[3]);
    v3 = a1[6];
    a1[6] = v2;

    v4 = sub_2622B22D0(a1[5], a1[3]);
    v5 = a1[5];
    a1[5] = v4;

    v6 = sub_2622B22D0(a1[4], a1[3]);
    v7 = a1[4];
    a1[4] = v6;

    v8 = sub_2622B22D0(a1[7], a1[3]);
    v9 = a1[7];
    a1[7] = v8;

    v10 = sub_2622B22D0(a1[12], a1[9]);
    v11 = a1[12];
    a1[12] = v10;

    v12 = sub_2622B22D0(a1[13], a1[9]);
    v13 = a1[13];
    a1[13] = v12;
  }
}

id sub_2622B22D0(void *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v48 = a2;
  v45 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v3);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v57, v62, 16);
  if (v7)
  {
    v47 = *v58;
    do
    {
      v49 = v7;
      for (i = 0; i != v49; ++i)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = v48;
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v53, v61, 16);
        if (v14)
        {
          v15 = *v54;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v54 != v15)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v53 + 1) + 8 * j);
              v18 = objc_msgSend_parentIdentifier(v9, v12, v13);
              v21 = objc_msgSend_identifier(v17, v19, v20);
              isEqual = objc_msgSend_isEqual_(v18, v22, v21);

              if (isEqual)
              {
                objc_msgSend_quad(v17, v12, v13);
                v51 = v24;
                objc_msgSend_quad(v9, v25, v26);
                if (v29 >= (v51 + -0.03))
                {
                  v30 = v51 + -0.03;
                }

                else
                {
                  v30 = v29;
                }

                objc_msgSend_quad(v17, v27, v28);
                v52 = v31;
                objc_msgSend_quad(v9, v32, v33);
                if (v9)
                {
                  v37 = v52;
                  v9[70] = v30;
                  v9[74] = v30;
                  if (v52 < v36)
                  {
                    v37 = v36;
                  }

                  v9[78] = v37;
                  v9[82] = v37;
                }

                objc_msgSend_quad(v9, v34, v35);
                v50 = v38;
                objc_msgSend_quad(v9, v39, v40);
                if (vmovn_s32(vcgtq_f32(v50, v42)).i32[1])
                {
                  objc_msgSend_addObject_(v45, v41, v9);
                }

                goto LABEL_24;
              }
            }

            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v53, v61, 16);
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v57, v62, 16);
    }

    while (v7);
  }

  return v45;
}

id sub_2622B261C(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = objc_msgSend_parentIdentifier(v15, v10, v11, v20);
        isEqual = objc_msgSend_isEqual_(v16, v17, v3);

        if (isEqual)
        {
          objc_msgSend_addObject_(v7, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v20, v24, 16);
    }

    while (v12);
  }

  return v7;
}

id sub_2622B27C4(void *a1, void *a2, void *a3)
{
  v344 = *MEMORY[0x277D85DE8];
  v298 = a1;
  v299 = a2;
  v303 = a3;
  v7 = objc_msgSend_count(v303, v5, v6);
  v310 = 0;
  v311 = 0;
  v312 = 0;
  v327.i64[0] = &v310;
  v327.i8[8] = 0;
  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  for (i = 0; objc_msgSend_count(v303, v8, v9) > i; ++i)
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(v303, v11, i);
    v13 = v310[i];
    v310[i] = v12;
  }

  v14 = @"lshaped";
  if (v310 == v311)
  {
    v67 = 0;
    v68 = 0;
    v307 = 0;
    v308 = 0;
    v309 = 0;
  }

  else
  {
    sub_26220EDA4(__p, v311 - v310);
    v15 = v310;
    v16 = v311;
    v17 = __p[0];
    if (v310 != v311)
    {
      do
      {
        v18 = *v15;
        v22 = 0.0;
        if (objc_msgSend_hasBoxesDict_(v18, v19, @"lshaped"))
        {
          v23 = objc_msgSend_boxesDict(v18, v20, v21);
          v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"lshaped");
          sub_262211250(&v327, v25);
          sub_26220F71C(&v327);
        }

        v28 = objc_msgSend_parts(v18, v20, v21);
        if (v28)
        {
          v29 = objc_msgSend_parts(v18, v26, v27);
          v32 = objc_msgSend_count(v29, v30, v31) == 0;

          if (!v32)
          {
            v22 = 0.0 + 0.0;
          }
        }

        *v17++ = v22;
        ++v15;
      }

      while (v15 != v16);
      v17 = __p[0];
    }

    v307 = 0;
    v308 = 0;
    v309 = 0;
    sub_2622101A8(&v317, (__p[1] - v17) >> 2);
    v33 = v317;
    v34 = v318;
    if (v317 != v318)
    {
      v35 = 0;
      v36 = (v318 - v317 - 4) >> 2;
      v37 = vdupq_n_s64(v36);
      v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v39 = v317 + 8;
      do
      {
        v40 = vdupq_n_s64(v35);
        v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2623A7620)));
        if (vuzp1_s16(v41, *v37.i8).u8[0])
        {
          *(v39 - 2) = v35;
        }

        if (vuzp1_s16(v41, *&v37).i8[2])
        {
          *(v39 - 1) = v35 + 1;
        }

        if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2623A7630)))).i32[1])
        {
          *v39 = v35 + 2;
          v39[1] = v35 + 3;
        }

        v35 += 4;
        v39 += 4;
      }

      while (v38 != v35);
    }

    v42 = 126 - 2 * __clz(v34 - v33);
    if (v34 == v33)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    v327.i64[0] = __p;
    sub_262210220(v33, v34, &v327, v43, 1);
    v45 = v317;
    v46 = v318;
    if (v317 != v318)
    {
      do
      {
        v47 = *(v46 - 1);
        v314 = v47;
        if (objc_msgSend_hasBoxesDict_(v310[v47], v44, @"lshaped"))
        {
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v329 = 0u;
          v330 = 0u;
          v327 = 0u;
          v328 = 0u;
          v49 = objc_msgSend_boxesDict(v310[v47], v44, v48);
          v51 = objc_msgSend_objectForKeyedSubscript_(v49, v50, @"lshaped");
          sub_262211250(&v327, v51);

          sub_2621C9004(&v307, &v314);
          v315 = 0;
          v316 = 0uLL;
          v52 = v317;
          if (v318 - v317 != 4)
          {
            v53 = 0;
            do
            {
              v313 = v52[v53];
              v54 = v313;
              if (objc_msgSend_hasBoxesDict_(v310[v313], v44, @"lshaped"))
              {
                v56 = objc_msgSend_type(v310[v47], v44, v55);
                v59 = objc_msgSend_type(v310[v54], v57, v58);
                isEqualToString = objc_msgSend_isEqualToString_(v56, v60, v59);

                if (!isEqualToString || (v325 = 0u, v326 = 0u, v323 = 0u, v324 = 0u, v321 = 0u, v322 = 0u, v319 = 0u, v320 = 0u, objc_msgSend_boxesDict(v310[v54], v62, v63), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v64, v65, @"lshaped"), v66 = objc_claimAutoreleasedReturnValue(), sub_262211250(&v319, v66), v66, v64, sub_26220FA14(buf, &v327, &v319), buf[0].f32[0] <= 0.1))
                {
                  sub_2621C7CD0(&v315, &v313);
                }
              }

              ++v53;
              v52 = v317;
            }

            while (((v318 - v317) >> 2) - 1 > v53);
          }

          if (v52)
          {
            *&v318 = v52;
            operator delete(v52);
          }

          v45 = v315;
          v317 = v315;
          v318 = v316;
          v46 = v316;
        }

        else
        {
          v45 = v317;
          v46 = (v318 - 4);
          *&v318 = v318 - 4;
        }
      }

      while (v45 != v46);
    }

    if (v45)
    {
      *&v318 = v45;
      operator delete(v45);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v67 = v307;
    v68 = v308;
  }

  v302 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v69, v68 - v67);
  v72 = v308;
  if (v67 != v308)
  {
    v73 = v67;
    do
    {
      objc_msgSend_addObject_(v302, v70, v310[*v73++]);
    }

    while (v73 != v72);
  }

  if (v302)
  {
    v74 = v302;
    v306 = objc_msgSend_count(v74, v75, v76);
    v305 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v77, @"Dishwasher", @"Washer", @"Oven", 0);
    v304 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v78, @"Stove", @"Sink", 0);
    if (v306)
    {
      v80 = 0;
      while (1)
      {
        v81 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v80);
        v84 = objc_msgSend_type(v81, v82, v83);
        if (objc_msgSend_isEqualToString_(v84, v85, @"Sofa"))
        {
          break;
        }

        v87 = objc_msgSend_objectAtIndexedSubscript_(v74, v86, v80);
        v90 = objc_msgSend_type(v87, v88, v89);
        v92 = objc_msgSend_isEqualToString_(v90, v91, @"Table");

        if ((v92 & 1) == 0)
        {
          v81 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v80);
          sub_26223FCCC(v81, 0);
          goto LABEL_58;
        }

LABEL_59:
        if (v306 == ++v80)
        {
          v93 = 0;
          while (1)
          {
            v94 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v93);
            v97 = objc_msgSend_type(v94, v95, v96);
            if (objc_msgSend_isEqualToString_(v97, v98, @"Cabinet"))
            {
              break;
            }

            v100 = objc_msgSend_objectAtIndexedSubscript_(v74, v99, v93);
            v103 = objc_msgSend_type(v100, v101, v102);
            v105 = objc_msgSend_isEqualToString_(v103, v104, @"Storage");

            if (v105)
            {
              goto LABEL_64;
            }

LABEL_81:
            if (++v93 == v306)
            {
              v157 = 0;
              while (1)
              {
                v158 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157);
                v161 = objc_msgSend_type(v158, v159, v160);
                if (objc_msgSend_isEqualToString_(v161, v162, @"Cabinet"))
                {
                  break;
                }

                v164 = objc_msgSend_objectAtIndexedSubscript_(v74, v163, v157);
                v167 = objc_msgSend_type(v164, v165, v166);
                v169 = objc_msgSend_isEqualToString_(v167, v168, @"Storage");

                if (v169)
                {
                  goto LABEL_86;
                }

LABEL_99:
                if (++v157 == v306)
                {
                  v221 = 0;
                  while (1)
                  {
                    v222 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v221);
                    v225 = objc_msgSend_type(v222, v223, v224);
                    if (!objc_msgSend_isEqualToString_(v225, v226, @"Sink"))
                    {
                      goto LABEL_122;
                    }

                    v228 = objc_msgSend_objectAtIndexedSubscript_(v74, v227, v221);
                    if ((objc_msgSend_hasBoxesDict_(v228, v229, @"rawdetection") & 1) == 0)
                    {
                      break;
                    }

                    v231 = objc_msgSend_objectAtIndexedSubscript_(v74, v230, v221);
                    v234 = objc_msgSend_parent_id(v231, v232, v233);
                    v235 = v234 == 0;

                    if (v235)
                    {
                      v236 = 0;
                      while (1)
                      {
                        v237 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v236);
                        v240 = objc_msgSend_type(v237, v238, v239);
                        if (objc_msgSend_isEqualToString_(v240, v241, @"Cabinet"))
                        {
                          goto LABEL_108;
                        }

                        v243 = objc_msgSend_objectAtIndexedSubscript_(v74, v242, v236);
                        v246 = objc_msgSend_type(v243, v244, v245);
                        if (objc_msgSend_isEqualToString_(v246, v247, @"Storage"))
                        {
                          break;
                        }

                        v279 = objc_msgSend_objectAtIndexedSubscript_(v74, v248, v236);
                        v282 = objc_msgSend_type(v279, v280, v281);
                        v284 = objc_msgSend_isEqualToString_(v282, v283, @"Table");

                        if (v284)
                        {
                          goto LABEL_109;
                        }

LABEL_119:
                        if (v306 == ++v236)
                        {
                          goto LABEL_123;
                        }
                      }

LABEL_108:
LABEL_109:
                      v249 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v236);
                      hasBoxesDict = objc_msgSend_hasBoxesDict_(v249, v250, @"rawdetection");

                      if (hasBoxesDict)
                      {
                        v333 = 0u;
                        v334 = 0u;
                        v331 = 0u;
                        v332 = 0u;
                        v329 = 0u;
                        v330 = 0u;
                        v327 = 0u;
                        v328 = 0u;
                        v252 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v221);
                        v255 = objc_msgSend_boxesDict(v252, v253, v254);
                        v257 = objc_msgSend_objectForKeyedSubscript_(v255, v256, @"rawdetection");
                        sub_262211250(&v327, v257);

                        v325 = 0u;
                        v326 = 0u;
                        v323 = 0u;
                        v324 = 0u;
                        v321 = 0u;
                        v322 = 0u;
                        v319 = 0u;
                        v320 = 0u;
                        v259 = objc_msgSend_objectAtIndexedSubscript_(v74, v258, v236);
                        v262 = objc_msgSend_boxesDict(v259, v260, v261);
                        v264 = objc_msgSend_objectForKeyedSubscript_(v262, v263, @"rawdetection");
                        sub_262211250(&v319, v264);

                        v265 = *(&v331 + 2);
                        v266 = *(&v323 + 2);
                        v342 = 0u;
                        v343 = 0u;
                        v340 = 0u;
                        v341 = 0u;
                        v338 = 0u;
                        v339 = 0u;
                        memset(buf, 0, sizeof(buf));
                        sub_2622110F8(buf, &v327, 0.2);
                        v317 = 0;
                        v318 = 0uLL;
                        sub_26220FA14(&v317, buf, &v319);
                        if (*&v317 > 0.01 && v265 > v266)
                        {
                          v267 = *(&v318 + 3);
                          if (*(&v318 + 3) >= 0.5)
                          {
                            v268 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v236, *&v317);
                            v271 = objc_msgSend_identifier(v268, v269, v270);
                            v274 = objc_msgSend_copy(v271, v272, v273);
                            v276 = objc_msgSend_objectAtIndexedSubscript_(v74, v275, v221);
                            sub_26223FCCC(v276, v274);

                            if (qword_27FF0C060 != -1)
                            {
                              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                            }

                            v277 = qword_27FF0C058;
                            if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
                            {
                              v285 = objc_msgSend_objectAtIndexedSubscript_(v74, v278, v236);
                              v288 = objc_msgSend_type(v285, v286, v287);
                              v290 = objc_msgSend_objectAtIndexedSubscript_(v74, v289, v221);
                              v293 = objc_msgSend_parent_id(v290, v291, v292);
                              LODWORD(__p[0]) = 138412802;
                              *(__p + 4) = v288;
                              WORD2(__p[1]) = 2112;
                              *(&__p[1] + 6) = v293;
                              HIWORD(__p[2]) = 2048;
                              v336 = v267;
                              _os_log_debug_impl(&dword_2621C3000, v277, OS_LOG_TYPE_DEBUG, "The sink has parent object (%@) with parent_id: %@, %f", __p, 0x20u);
                            }
                          }
                        }
                      }

                      goto LABEL_119;
                    }

LABEL_123:
                    if (++v221 == v306)
                    {
                      goto LABEL_124;
                    }
                  }

LABEL_122:
                  goto LABEL_123;
                }
              }

LABEL_86:
              v170 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157);
              v172 = objc_msgSend_hasBoxesDict_(v170, v171, @"rawdetection");

              if (v172)
              {
                for (j = 0; j != v306; ++j)
                {
                  v174 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, j);
                  v177 = objc_msgSend_type(v174, v175, v176);
                  if (objc_msgSend_containsObject_(v304, v178, v177))
                  {
                    v180 = objc_msgSend_objectAtIndexedSubscript_(v74, v179, j);
                    v182 = objc_msgSend_hasBoxesDict_(v180, v181, @"rawdetection");

                    if (v182)
                    {
                      v333 = 0u;
                      v334 = 0u;
                      v331 = 0u;
                      v332 = 0u;
                      v329 = 0u;
                      v330 = 0u;
                      v327 = 0u;
                      v328 = 0u;
                      v183 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157);
                      v186 = objc_msgSend_boxesDict(v183, v184, v185);
                      v188 = objc_msgSend_objectForKeyedSubscript_(v186, v187, @"rawdetection");
                      sub_262211250(&v327, v188);

                      v325 = 0u;
                      v326 = 0u;
                      v323 = 0u;
                      v324 = 0u;
                      v321 = 0u;
                      v322 = 0u;
                      v319 = 0u;
                      v320 = 0u;
                      v190 = objc_msgSend_objectAtIndexedSubscript_(v74, v189, j);
                      v193 = objc_msgSend_boxesDict(v190, v191, v192);
                      v195 = objc_msgSend_objectForKeyedSubscript_(v193, v194, @"rawdetection");
                      sub_262211250(&v319, v195);

                      v342 = 0u;
                      v343 = 0u;
                      v340 = 0u;
                      v341 = 0u;
                      v338 = 0u;
                      v339 = 0u;
                      memset(buf, 0, sizeof(buf));
                      sub_2622110F8(buf, &v319, 0.3);
                      v317 = 0;
                      v318 = 0uLL;
                      sub_26220FA14(&v317, &v327, buf);
                      if (*&v317 >= 0.000001)
                      {
                        LODWORD(v196) = HIDWORD(v318);
                        if (*(&v318 + 3) >= 0.5)
                        {
                          v197 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157, v196);
                          v200 = objc_msgSend_identifier(v197, v198, v199);
                          v203 = objc_msgSend_copy(v200, v201, v202);
                          v205 = objc_msgSend_objectAtIndexedSubscript_(v74, v204, j);
                          sub_26223FCCC(v205, v203);

                          if (qword_27FF0C060 != -1)
                          {
                            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                          }

                          v206 = qword_27FF0C058;
                          if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                          {
                            v208 = objc_msgSend_objectAtIndexedSubscript_(v74, v207, j);
                            v301 = objc_msgSend_type(v208, v209, v210);
                            v212 = objc_msgSend_objectAtIndexedSubscript_(v74, v211, v157);
                            v215 = objc_msgSend_type(v212, v213, v214);
                            v217 = objc_msgSend_objectAtIndexedSubscript_(v74, v216, j);
                            objc_msgSend_parent_id(v217, v218, v219);
                            v220 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                            LODWORD(__p[0]) = 138412802;
                            *(__p + 4) = v301;
                            WORD2(__p[1]) = 2112;
                            *(&__p[1] + 6) = v215;
                            HIWORD(__p[2]) = 2112;
                            v336 = v220;
                            _os_log_debug_impl(&dword_2621C3000, v206, OS_LOG_TYPE_DEBUG, "%@ has parent object (%@) with parent_id: %@", __p, 0x20u);
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                  }
                }
              }

              goto LABEL_99;
            }
          }

LABEL_64:
          v106 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v93);
          v108 = objc_msgSend_hasBoxesDict_(v106, v107, @"rawdetection");

          if (v108)
          {
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v329 = 0u;
            v330 = 0u;
            v327 = 0u;
            v328 = 0u;
            v109 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v93);
            v112 = objc_msgSend_boxesDict(v109, v110, v111);
            v114 = objc_msgSend_objectForKeyedSubscript_(v112, v113, @"rawdetection");
            sub_262211250(&v327, v114);

            for (k = 0; k != v306; ++k)
            {
              v116 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, k);
              v119 = objc_msgSend_type(v116, v117, v118);
              if (objc_msgSend_containsObject_(v305, v120, v119))
              {
                v122 = objc_msgSend_objectAtIndexedSubscript_(v74, v121, k);
                v124 = objc_msgSend_hasBoxesDict_(v122, v123, @"rawdetection");

                if (v124)
                {
                  v325 = 0u;
                  v326 = 0u;
                  v323 = 0u;
                  v324 = 0u;
                  v321 = 0u;
                  v322 = 0u;
                  v319 = 0u;
                  v320 = 0u;
                  v125 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, k);
                  v128 = objc_msgSend_boxesDict(v125, v126, v127);
                  v130 = objc_msgSend_objectForKeyedSubscript_(v128, v129, @"rawdetection");
                  sub_262211250(&v319, v130);

                  memset(__p, 0, sizeof(__p));
                  sub_26220FA14(__p, &v327, &v319);
                  if (*__p >= 0.000001 && *(&__p[1] + 1) >= 0.8)
                  {
                    sub_26220F644(&v317, &v327);
                    sub_26220F644(&v315, &v319);
                    v132 = v315;
                    if (((*(v315 + 3) * *(v315 + 4)) * *(v315 + 5)) >= ((*(v317 + 3) * *(v317 + 4)) * *(v317 + 5)))
                    {
                      goto LABEL_76;
                    }

                    v133 = objc_msgSend_objectAtIndexedSubscript_(v74, v131, v93);
                    v136 = objc_msgSend_identifier(v133, v134, v135);
                    v139 = objc_msgSend_copy(v136, v137, v138);
                    v141 = objc_msgSend_objectAtIndexedSubscript_(v74, v140, k);
                    sub_26223FCCC(v141, v139);

                    if (qword_27FF0C060 != -1)
                    {
                      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                    }

                    v142 = qword_27FF0C058;
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                    {
                      v144 = objc_msgSend_objectAtIndexedSubscript_(v74, v143, k);
                      v300 = objc_msgSend_type(v144, v145, v146);
                      v148 = objc_msgSend_objectAtIndexedSubscript_(v74, v147, v93);
                      v151 = objc_msgSend_type(v148, v149, v150);
                      v153 = objc_msgSend_objectAtIndexedSubscript_(v74, v152, k);
                      v156 = objc_msgSend_parent_id(v153, v154, v155);
                      buf[0].i32[0] = 138412802;
                      *(buf[0].i64 + 4) = v300;
                      buf[0].i16[6] = 2112;
                      *(&buf[0].i64[1] + 6) = v151;
                      buf[1].i16[3] = 2112;
                      buf[1].i64[1] = v156;
                      _os_log_debug_impl(&dword_2621C3000, v142, OS_LOG_TYPE_DEBUG, "%@ has parent object (%@) with parent_id: %@", buf, 0x20u);
                    }

                    v132 = v315;
                    if (v315)
                    {
LABEL_76:
                      *&v316 = v132;
                      operator delete(v132);
                    }

                    if (v317)
                    {
                      *&v318 = v317;
                      operator delete(v317);
                    }
                  }
                }
              }

              else
              {
              }
            }
          }

          goto LABEL_81;
        }
      }

LABEL_58:
      goto LABEL_59;
    }

LABEL_124:

    v294 = objc_alloc_init(RSObjectAsset);
    sub_2622AD434(v294, v74);
    v295 = objc_alloc_init(RSObjectAlign);
    v296 = sub_2621E3D3C(v295, v298, v299, v294, 1, 1);

    v67 = v307;
  }

  else
  {
    v296 = objc_msgSend_array(MEMORY[0x277CBEA60], v70, v71);
  }

  if (v67)
  {
    v308 = v67;
    operator delete(v67);
  }

  v327.i64[0] = &v310;
  sub_2621C512C(&v327);

  return v296;
}

void sub_2622B3B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, _Unwind_Exception *exception_objecta, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char *a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  a53 = &a26;
  sub_2621C512C(&a53);

  _Unwind_Resume(a1);
}

void sub_2622B4144(uint64_t a1)
{
  v178 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v2 = *(a1 + 24);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v163, v177, 16);
    if (v6)
    {
      v8 = *v164;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v164 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v163 + 1) + 8 * i);
          *&v7 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v10, v4, v5, v7);
          objc_msgSend_translateBy_(v10, v11, v12, *(a1 + 128));
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v163, v177, 16);
      }

      while (v6);
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v13 = *(a1 + 32);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v159, v176, 16);
    if (v17)
    {
      v19 = *v160;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v160 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v159 + 1) + 8 * j);
          *&v18 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v21, v15, v16, v18);
          objc_msgSend_translateBy_(v21, v22, v23, *(a1 + 128));
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v159, v176, 16);
      }

      while (v17);
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v24 = *(a1 + 40);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v155, v175, 16);
    if (v28)
    {
      v30 = *v156;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v156 != v30)
          {
            objc_enumerationMutation(v24);
          }

          v32 = *(*(&v155 + 1) + 8 * k);
          *&v29 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v32, v26, v27, v29);
          objc_msgSend_translateBy_(v32, v33, v34, *(a1 + 128));
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v155, v175, 16);
      }

      while (v28);
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v35 = *(a1 + 48);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v151, v174, 16);
    if (v39)
    {
      v41 = *v152;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v152 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v151 + 1) + 8 * m);
          *&v40 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v43, v37, v38, v40);
          objc_msgSend_translateBy_(v43, v44, v45, *(a1 + 128));
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v151, v174, 16);
      }

      while (v39);
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v46 = *(a1 + 56);
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v147, v173, 16);
    if (v50)
    {
      v52 = *v148;
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v148 != v52)
          {
            objc_enumerationMutation(v46);
          }

          v54 = *(*(&v147 + 1) + 8 * n);
          *&v51 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v54, v48, v49, v51);
          objc_msgSend_translateBy_(v54, v55, v56, *(a1 + 128));
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v147, v173, 16);
      }

      while (v50);
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v57 = *(a1 + 64);
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v143, v172, 16);
    if (v61)
    {
      v63 = *v144;
      do
      {
        for (ii = 0; ii != v61; ++ii)
        {
          if (*v144 != v63)
          {
            objc_enumerationMutation(v57);
          }

          v65 = *(*(&v143 + 1) + 8 * ii);
          *&v62 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v65, v59, v60, v62);
          objc_msgSend_translateBy_(v65, v66, v67, *(a1 + 128));
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v143, v172, 16);
      }

      while (v61);
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v68 = *(a1 + 88);
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v139, v171, 16);
    if (v72)
    {
      v74 = *v140;
      do
      {
        for (jj = 0; jj != v72; ++jj)
        {
          if (*v140 != v74)
          {
            objc_enumerationMutation(v68);
          }

          v76 = *(*(&v139 + 1) + 8 * jj);
          *&v73 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v76, v70, v71, v73);
          objc_msgSend_translateBy_(v76, v77, v78, *(a1 + 128));
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v139, v171, 16);
      }

      while (v72);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v79 = *(a1 + 72);
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v135, v170, 16);
    if (v83)
    {
      v85 = *v136;
      do
      {
        for (kk = 0; kk != v83; ++kk)
        {
          if (*v136 != v85)
          {
            objc_enumerationMutation(v79);
          }

          v87 = *(*(&v135 + 1) + 8 * kk);
          *&v84 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v87, v81, v82, v84);
          objc_msgSend_translateBy_(v87, v88, v89, *(a1 + 128));
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v135, v170, 16);
      }

      while (v83);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v90 = *(a1 + 104);
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v131, v169, 16);
    if (v94)
    {
      v96 = *v132;
      do
      {
        for (mm = 0; mm != v94; ++mm)
        {
          if (*v132 != v96)
          {
            objc_enumerationMutation(v90);
          }

          v98 = *(*(&v131 + 1) + 8 * mm);
          *&v95 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v98, v92, v93, v95);
          objc_msgSend_translateBy_(v98, v99, v100, *(a1 + 128));
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v92, &v131, v169, 16);
      }

      while (v94);
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v101 = *(a1 + 96);
    v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v127, v168, 16);
    if (v105)
    {
      v107 = *v128;
      do
      {
        for (nn = 0; nn != v105; ++nn)
        {
          if (*v128 != v107)
          {
            objc_enumerationMutation(v101);
          }

          v109 = *(*(&v127 + 1) + 8 * nn);
          *&v106 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v109, v103, v104, v106);
          objc_msgSend_translateBy_(v109, v110, v111, *(a1 + 128));
        }

        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v103, &v127, v168, 16);
      }

      while (v105);
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v112 = *(a1 + 80);
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, &v123, v167, 16);
    if (v116)
    {
      v118 = *v124;
      do
      {
        for (i1 = 0; i1 != v116; ++i1)
        {
          if (*v124 != v118)
          {
            objc_enumerationMutation(v112);
          }

          v120 = *(*(&v123 + 1) + 8 * i1);
          *&v117 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v120, v114, v115, v117, v123);
          objc_msgSend_translateBy_(v120, v121, v122, *(a1 + 128));
        }

        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v114, &v123, v167, 16);
      }

      while (v116);
    }
  }
}

void sub_2622B4958(id *a1)
{
  v110 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v2 = a1[3];
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v97, v109, 16);
    if (v5)
    {
      v6 = *v98;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v98 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v97 + 1) + 8 * i);
          if (v8)
          {
            *(v8 + 192) = xmmword_2623A7B70;
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v97, v109, 16);
      }

      while (v5);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v9 = a1[5];
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v93, v108, 16);
    if (v12)
    {
      v13 = *v94;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v94 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v93 + 1) + 8 * j);
          if (v15)
          {
            *(v15 + 192) = xmmword_2623A7B80;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v93, v108, 16);
      }

      while (v12);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v16 = a1[4];
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v89, v107, 16);
    if (v19)
    {
      v20 = *v90;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v90 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v89 + 1) + 8 * k);
          if (v22)
          {
            *(v22 + 192) = xmmword_2623A7B90;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v89, v107, 16);
      }

      while (v19);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v23 = a1[7];
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v85, v106, 16);
    if (v26)
    {
      v27 = *v86;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v86 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v85 + 1) + 8 * m);
          if (v29)
          {
            *(v29 + 192) = xmmword_2623A7BA0;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v85, v106, 16);
      }

      while (v26);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v30 = a1[6];
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v81, v105, 16);
    if (v33)
    {
      v34 = *v82;
      do
      {
        for (n = 0; n != v33; ++n)
        {
          if (*v82 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v81 + 1) + 8 * n);
          if (v36)
          {
            *(v36 + 192) = xmmword_2623A7BB0;
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v81, v105, 16);
      }

      while (v33);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v37 = a1[9];
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v77, v104, 16);
    if (v40)
    {
      v41 = *v78;
      do
      {
        for (ii = 0; ii != v40; ++ii)
        {
          if (*v78 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v77 + 1) + 8 * ii);
          if (v43)
          {
            *(v43 + 192) = xmmword_2623A7BC0;
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v77, v104, 16);
      }

      while (v40);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v44 = a1[12];
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v73, v103, 16);
    if (v47)
    {
      v48 = *v74;
      do
      {
        for (jj = 0; jj != v47; ++jj)
        {
          if (*v74 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = *(*(&v73 + 1) + 8 * jj);
          if (v50)
          {
            *(v50 + 192) = xmmword_2623A7B80;
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v73, v103, 16);
      }

      while (v47);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v51 = a1[13];
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v69, v102, 16);
    if (v54)
    {
      v55 = *v70;
      do
      {
        for (kk = 0; kk != v54; ++kk)
        {
          if (*v70 != v55)
          {
            objc_enumerationMutation(v51);
          }

          v57 = *(*(&v69 + 1) + 8 * kk);
          if (v57)
          {
            *(v57 + 192) = xmmword_2623A7B90;
          }
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v69, v102, 16);
      }

      while (v54);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v58 = a1[11];
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v65, v101, 16);
    if (v61)
    {
      v62 = *v66;
      do
      {
        for (mm = 0; mm != v61; ++mm)
        {
          if (*v66 != v62)
          {
            objc_enumerationMutation(v58);
          }

          v64 = *(*(&v65 + 1) + 8 * mm);
          if (v64)
          {
            *(v64 + 192) = xmmword_2623A7B90;
          }
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v60, &v65, v101, 16);
      }

      while (v61);
    }
  }
}

unint64_t sub_2622B5158(void *a1, void *a2, void *a3, void *a4, int a5, unsigned int a6, void *a7, void *a8, void *a9)
{
  v14 = a1;
  v15 = a3;
  v155 = a4;
  v154 = a7;
  v153 = a8;
  v159 = a9;
  v152 = v15;
  if (v15)
  {
    v157 = *(v15 + 8);
    v158 = *(v15 + 6);
    v162 = *(v15 + 5);
    v163 = *(v15 + 7);
    v17 = *(v15 + 7);
    v16 = *(v15 + 8);
    v18 = *(v15 + 4);
    v19 = *(v15 + 6);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0.0;
    v162 = 0u;
    v163 = 0u;
    v157 = 0u;
    v158 = 0u;
    v19 = 0.0;
  }

  v174 = 0uLL;
  v175 = 0uLL;
  v176 = 1065353216;
  v20 = vcvtd_n_f64_u64((a2[1] - *a2) >> 3, 2uLL);
  sub_2621C67D4(&v174, v20);
  v171 = 0u;
  v172 = 0u;
  v173 = 1065353216;
  if (v16 >= 1)
  {
    sub_2621C67D4(&v171, v20);
  }

  v24 = *a2;
  v23 = a2[1];
  v156 = v16;
  if (*a2 != v23)
  {
    v25 = v18 + v19;
    do
    {
      v26 = (objc_msgSend_points(v14, v21, v22) + 16 * *v24);
      v27 = vmulq_f64(v162, vaddq_f64(v163, vcvtq_f64_f32(*v26)));
      v28 = llround(v27.f64[0]);
      if ((v28 & 0x80000000) == 0 && v17 > v28)
      {
        v29 = llround(v27.f64[1]);
        if ((v29 & 0x80000000) == 0 && v17 > v29)
        {
          v160 = *v26->f32;
          v30 = v29 + v17 * v28;
          v167[0] = v30;
          *&v168[0] = v167;
          v31 = sub_2621C65A4(&v174, v30, v168);
          v32 = v31;
          v34 = v31[4];
          v33 = v31[5];
          if (v34 >= v33)
          {
            v36 = v31[3];
            v37 = v34 - v36;
            v38 = (v34 - v36) >> 2;
            v39 = v38 + 1;
            if ((v38 + 1) >> 62)
            {
              sub_2621CBEB0();
            }

            v40 = v33 - v36;
            if (v40 >> 1 > v39)
            {
              v39 = v40 >> 1;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v41 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v39;
            }

            if (v41)
            {
              sub_2621C7F54(v41);
            }

            v42 = (v34 - v36) >> 2;
            v43 = (4 * v38);
            v44 = (4 * v38 - 4 * v42);
            *v43 = *v24;
            v35 = v43 + 1;
            memcpy(v44, v36, v37);
            v45 = v32[3];
            v32[3] = v44;
            v32[4] = v35;
            v32[5] = 0;
            if (v45)
            {
              operator delete(v45);
            }

            v16 = v156;
          }

          else
          {
            *v34 = *v24;
            v35 = v34 + 4;
          }

          v46.f64[1] = *(&v160 + 1);
          v46.f64[0] = *(&v160 + 2);
          v47 = llround(vmulq_f64(v158, vaddq_f64(v157, v46)).f64[0]);
          v32[4] = v35;
          if (v16 > v47 && (v47 & 0x80000000) == 0)
          {
            v48 = v26[1].f32[0];
            if (v18 <= v48 && v48 <= v25)
            {
              v170 = v30 + v17 * v17 * v47;
              *&v168[0] = &v170;
              v50 = sub_2622B596C(&v171, v170, v168);
              ++*(v50 + 5);
            }
          }
        }
      }

      ++v24;
    }

    while (v24 != v23);
  }

  v161 = sub_2622C57A4(v155, 0);
  v53 = sub_2622C57A4(v155, 0x1AuLL);
  if (v155)
  {
    v54 = v155[5] * v155[3];
  }

  else
  {
    v54 = 0;
  }

  if (a5 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = a5;
  }

  v56 = v175;
  if (!v175)
  {
    goto LABEL_52;
  }

  do
  {
    v164 = v55;
    v169 = 0;
    memset(v168, 0, sizeof(v168));
    v57 = v56[3];
    v58 = v56[4];
    v59 = v57;
    if (v57 != v58)
    {
      do
      {
        v60 = objc_msgSend_semanticLabels(v14, v51, v52);
        v61 = *v57;
        v64 = objc_msgSend_semanticVotes(v14, v62, v63);
        sub_2622CB1A4((v60 + 4 * v61), (v64 + 8 * *v57), v167, v65, v66, v67);
        for (i = 0; i != 26; ++i)
        {
          *(v168 + i * 4) = *(v168 + i * 4) + *&v167[i];
        }

        ++v57;
      }

      while (v57 != v58);
      v57 = v56[3];
      v59 = v56[4];
    }

    v69 = 0;
    v70 = (v59 - v57) >> 2;
    _S0 = v70;
    __asm { FCVT            H1, S0 }

    v77 = *(v56 + 4);
    *(v53 + v77) = _H1;
    v78 = v161;
    do
    {
      _S1 = *(v168 + v69) / _S0;
      __asm { FCVT            H1, S1 }

      *(v78 + v77) = LOWORD(_S1);
      v69 += 4;
      v78 = (v78 + v54);
    }

    while (v69 != 104);
    v55 = v164;
    if (v164 <= v70)
    {
      v55 = v70;
    }

    v56 = *v56;
  }

  while (v56);
  v80 = v175;
  if (v175)
  {
    v82 = v156;
    do
    {
      v83 = *(v80 + 4);
      _H1 = *(v53 + v83);
      __asm { FCVT            S1, H1 }

      v81 = 1.0 / v55;
      _S1 = v81 * _S1;
      __asm { FCVT            H1, S1 }

      *(v53 + v83) = LOWORD(_S1);
      v80 = *v80;
    }

    while (v80);
  }

  else
  {
LABEL_52:
    v82 = v156;
  }

  if (a6 <= 1)
  {
    v87 = 1;
  }

  else
  {
    v87 = a6;
  }

  if (v82 >= 1)
  {
    v88 = sub_2622C57A4(v155, 0x1BuLL);
    v89 = v172;
    if (v172)
    {
      v90 = v172;
      do
      {
        v91 = *(v90 + 5);
        _S0 = v91;
        __asm { FCVT            H0, S0 }

        *(v88 + *(v90 + 4)) = LOWORD(_S0);
        if (v87 <= v91)
        {
          v87 = v91;
        }

        else
        {
          v87 = v87;
        }

        v90 = *v90;
      }

      while (v90);
      do
      {
        v94 = *(v89 + 4);
        _H1 = *(v88 + v94);
        __asm { FCVT            S1, H1 }

        v93 = 1.0 / v87;
        _S1 = v93 * _S1;
        __asm { FCVT            H1, S1 }

        *(v88 + v94) = LOWORD(_S1);
        v89 = *v89;
      }

      while (v89);
    }
  }

  if (v154)
  {
    v98 = sub_2622C57A4(v154, 0);
    v102 = v175;
    if (v175)
    {
      v103 = v98;
      LOWORD(v18) = -1024;
      do
      {
        v104 = v102[3];
        v105 = v102[4];
        *&_D0 = v18;
        if (v104 != v105)
        {
          _S9 = -3.4028e38;
          do
          {
            v107 = objc_msgSend_points(v14, v99, v100, _D0);
            v108 = *v104++;
            v109 = v107 + 16 * v108;
            LODWORD(_D0) = *(v109 + 8);
            if (_S9 < *&_D0)
            {
              _S9 = *(v109 + 8);
            }
          }

          while (v104 != v105);
          __asm { FCVT            H0, S9 }
        }

        *(v103 + *(v102 + 4)) = LOWORD(_D0);
        v102 = *v102;
      }

      while (v102);
    }
  }

  if (v153)
  {
    v110 = sub_2622C57A4(v153, 0);
    v113 = v175;
    if (v175)
    {
      v114 = v110;
      v115 = v162.f64[0] + v162.f64[0];
      do
      {
        v116 = v113[3];
        v117 = v113[4];
        if (v116 == v117)
        {
          _S0 = 0.0;
        }

        else
        {
          v118 = 0;
          do
          {
            v119.i32[0] = *(objc_msgSend_semanticLabels(v14, v111, v112) + 4 * *v116);
            if (vmovl_u8(v119).u8[0] == 6 && *(objc_msgSend_semanticVotes(v14, v111, v112) + 8 * *v116))
            {
              ++v118;
            }

            ++v116;
          }

          while (v116 != v117);
          _S0 = v118;
        }

        __asm { FCVT            H1, S0 }

        *(v114 + *(v113 + 4)) = _H1;
        if (v115 < _S0)
        {
          v115 = _S0;
        }

        v113 = *v113;
      }

      while (v113);
      for (j = v175; j; j = *j)
      {
        v123 = *(j + 4);
        _H3 = *(v114 + v123);
        __asm { FCVT            S3, H3 }

        v126 = (255.0 / v115) * _S3;
        if (v126 <= 255.0)
        {
          v127 = v126;
        }

        else
        {
          v127 = 255.0;
        }

        if (v126 >= 0.0)
        {
          _S3 = v127;
        }

        else
        {
          _S3 = 0.0;
        }

        __asm { FCVT            H3, S3 }

        *(v114 + v123) = _H3;
      }
    }
  }

  if (v159)
  {
    v130 = sub_2622C57A4(v159, 0);
    v133 = v175;
    if (v175)
    {
      v134 = v130;
      do
      {
        v135 = v133[3];
        v136 = v133[4];
        v137 = 0;
        while (v135 != v136)
        {
          v165 = *(objc_msgSend_cameraPositions(v14, v131, v132) + 16 * *v135);
          v140 = objc_msgSend_points(v14, v138, v139);
          v141 = *v135++;
          v137 = vadd_f32(v137, vsub_f32(*&v165, *(v140 + 16 * v141)));
        }

        v142 = v159[7];
        if (v142)
        {
          v143 = 0;
          v144 = ((v133[4] - v133[3]) >> 2);
          v145 = *(v133 + 4);
          v146 = v134;
          do
          {
            v166 = v137;
            _S1 = *(&v166 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v143 & 1))) / v144;
            __asm { FCVT            H1, S1 }

            *(v146 + v145) = LOWORD(_S1);
            ++v143;
            v146 = (v146 + v54);
          }

          while (v142 != v143);
        }

        v133 = *v133;
      }

      while (v133);
    }
  }

  sub_2621C74C4(&v171);
  sub_2621C7150(v175);
  v148 = v174;
  *&v174 = 0;
  if (v148)
  {
    operator delete(v148);
  }

  return v55 | (v87 << 32);
}

void sub_2622B58E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  sub_2621C74C4(v23 - 192);
  sub_2621C7004((v23 - 144));

  _Unwind_Resume(a1);
}

uint64_t *sub_2622B596C(void *a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2622B5BA8(float *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v3 != v2)
  {
    v4 = a2;
    v174 = *(a2 + 16);
    while (1)
    {
      v6 = (v3 + 16);
      v7 = vsub_f32(*(v3 + 16), *(v3 + 24));
      if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < a1[3])
      {
        break;
      }

LABEL_151:
      v3 += 176;
      if (v3 == v2)
      {
        return;
      }
    }

    sub_2622B676C(&v180, a1, v3, *(v4 + 8), *(v4 + 16));
    v8 = a1[4];
    v9 = a1[5];
    v11 = a1[7];
    v10 = a1[8];
    v12 = a1[6];
    v13 = a1[2];
    v15 = v180;
    v14 = v181;
    if (v181 - v180 != 24)
    {
      v178 = (v3 + 16);
      if (v181 - v180 == 48 && v181 != v180)
      {
        v26 = 0;
        v27 = 0;
        v28 = v180 + 8;
        v29 = -1;
        v30 = -100000.0;
        do
        {
          v27 += *v28;
          v31 = vsub_f32(*(*(v28 - 1) + 16), *(*(v28 - 1) + 24));
          v32 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
          if (v32 > v30)
          {
            v30 = v32;
            v29 = v26;
          }

          ++v26;
          v28 += 6;
        }

        while (v26 != 2);
        if (v27 == 1 && (v29 & 0x80000000) == 0)
        {
          if (v30 > v13 || (v33 = vsub_f32(*(v3 + 16), *(v3 + 24)), v30 > (v10 * sqrtf(vaddv_f32(vmul_f32(v33, v33))))))
          {
            v34 = *(v180 + 3 * (1 - v29));
            v35 = v34 + 2;
            v36 = vsub_f32(v34[2], v34[3]);
            v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
            v38 = a1[6];
            if (v37 > v8)
            {
              if (v37 <= a1[3])
              {
                v38 = a1[15];
              }

              else
              {
                v38 = a1[14];
              }
            }

            v80 = v180 + 24 * v29;
            v81 = *v80;
            v82 = sub_2621C92AC(v178, (*v80 + 16), 0);
            v83 = sub_2621C92AC(v81 + 2, v35, 0);
            v84 = v83 >= v38 && v83 <= (180.0 - v38);
            if (!v84 && (v85 = vsub_f32(*(v3 + 16), *(v3 + 24)), sqrtf(vaddv_f32(vmul_f32(v85, v85))) <= v8) && (v86 = vabds_f32(90.0, v82), v86 < v12) || (v86 = vabds_f32(90.0, v82), v86 < v9))
            {
              if (v86 < v11)
              {
                goto LABEL_148;
              }

              v87 = sub_2621C92AC(v178, v81 + 2, 0);
              v88 = sub_2621C92AC(v178, v35, 0);
              v89 = fabsf(v87 + -90.0);
              v90 = fabsf(v88 + -90.0);
              v91 = vsub_f32(v34[2], v34[3]);
              v92 = v90 + v90;
              if (sqrtf(vaddv_f32(vmul_f32(v91, v91))) < v8 || v89 < v92)
              {
                v94 = *(v80 + 2);
                v95 = *(v80 + 3);
                v96 = v81[2];
                v97 = vsub_f32(v81[3], v96);
                *v96.i32 = -*&v97.i32[1];
                v98 = vzip1_s32(v96, v97);
                v99 = v178[1 - v94];
                v100 = vadd_f32(v99, v98);
                v101 = vsub_f32(v99, v100);
                v102 = vaddv_f32(vmul_f32(vsub_f32(v178[v94], v100), v101));
                v103 = vaddv_f32(vmul_f32(v101, v101));
                if (v103 < 0.000001)
                {
                  v103 = 0.000001;
                }

                v104 = COERCE_DOUBLE(vmla_n_f32(v100, v101, v102 / v103));
                sub_2622B6BB0(v3, v94, v104);
                if (v95 != -1)
                {
                  sub_2622B6BB0(v81, v95, v104);
                }

                goto LABEL_148;
              }
            }
          }
        }
      }

LABEL_67:
      if (v14 != v15)
      {
        v105 = a1[5];
        v107 = a1[7];
        v106 = a1[8];
        v109 = a1[2];
        v108 = a1[3];
        v179 = v14;
        while (2)
        {
          if (*(v15 + 4))
          {
            goto LABEL_129;
          }

          v110 = vsub_f32((*v15)[2], (*v15)[3]);
          if (sqrtf(vaddv_f32(vmul_f32(v110, v110))) >= v108)
          {
            goto LABEL_129;
          }

          v111 = a1;
          sub_2622B676C(__p, a1, *v15, *(v4 + 8), *(v4 + 16));
          v113 = __p[0];
          v112 = __p[1];
          if (__p[0] != __p[1])
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            while (1)
            {
              v117 = *v113;
              v118 = *(*v113 + 151);
              if (v118 < 0)
              {
                if (!*(v117 + 136))
                {
                  goto LABEL_95;
                }
              }

              else if (!*(*v113 + 151))
              {
                goto LABEL_95;
              }

              v119 = *(v3 + 151);
              if (v119 < 0)
              {
                v120 = *(v3 + 136);
                if (!v120)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                if (!*(v3 + 151))
                {
                  goto LABEL_95;
                }

                v120 = *(v3 + 136);
              }

              if (v118 >= 0)
              {
                v121 = *(*v113 + 151);
              }

              else
              {
                v121 = *(v117 + 136);
              }

              if (v119 >= 0)
              {
                v120 = *(v3 + 151);
              }

              if (v121 != v120 || ((v124 = *(v117 + 128), v122 = (v117 + 128), v123 = v124, v118 >= 0) ? (v125 = v122) : (v125 = v123), v119 >= 0 ? (v126 = (v3 + 128)) : (v126 = *(v3 + 128)), memcmp(v125, v126, v121)))
              {
                v128 = 0xAAAAAAAAAAAAAAABLL * ((v116 - v115) >> 3);
                v129 = v128 + 1;
                if (v128 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * (-v115 >> 3) > v129)
                {
                  v129 = 0x5555555555555556 * (-v115 >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v115 >> 3) >= 0x555555555555555)
                {
                  v130 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v130 = v129;
                }

                if (v130)
                {
                  sub_2622B6B58(v130);
                }

                v131 = 24 * v128;
                v132 = *v113;
                *(v131 + 16) = v113[2];
                *v131 = v132;
                v127 = 24 * v128 + 24;
                v133 = v114 - v115;
                v134 = (24 * v128 + 24 * ((v114 - v115) / -24));
                memcpy(v134, v115, v133);
                if (v115)
                {
                  operator delete(v115);
                }

                v115 = v134;
                v116 = 24 * v128 + 24;
                goto LABEL_107;
              }

LABEL_95:
              v127 = v114;
LABEL_107:
              v113 += 3;
              v114 = v127;
              if (v113 == v112)
              {
                v4 = a2;
                goto LABEL_110;
              }
            }
          }

          v115 = 0;
          v116 = 0;
LABEL_110:
          a1 = v111;
          if (v116 - v115 == 24)
          {
            v135 = *v115;
            v136 = vsub_f32((*v115)[2], (*v115)[3]);
            v137 = sqrtf(vaddv_f32(vmul_f32(v136, v136)));
            v14 = v179;
            if (v137 <= v109 && (v138 = vsub_f32(*(v3 + 16), *(v3 + 24)), v137 <= (v106 * sqrtf(vaddv_f32(vmul_f32(v138, v138))))) || ((v139 = sub_2621C92AC(v178, *v115 + 2, 0), v139 > v105) ? (v141 = v139 < (180.0 - v105)) : (v141 = 0), v141))
            {
              v143 = 1;
            }

            else
            {
              if (v139 < v107 || v139 > (180.0 - v107))
              {
                v143 = 0;
                break;
              }

              v145 = *(v3 + 16);
              v144 = *(v3 + 24);
              v146 = vmul_f32(vadd_f32(v145, v144), 0x3F0000003F000000);
              v147 = v135[2];
              v148 = vsub_f32(v135[3], v147);
              *v147.i32 = -*&v148.i32[1];
              v149 = vzip1_s32(v147, v148);
              v150 = vadd_f32(v145, v149);
              v151 = vadd_f32(v144, v149);
              v152 = vsub_f32(v150, v145);
              v153 = vaddv_f32(vmul_f32(vsub_f32(v146, v145), v152));
              v154 = vaddv_f32(vmul_f32(v152, v152));
              if (v154 < 0.000001)
              {
                v154 = 0.000001;
              }

              v155 = vmla_n_f32(v145, v152, v153 / v154);
              *&v156 = vsub_f32(v151, v144);
              *&v157 = vmul_f32(vsub_f32(v146, v144), *&v156);
              *&v157 = vaddv_f32(*&v157);
              v158 = vaddv_f32(vmul_f32(*&v156, *&v156));
              if (v158 < 0.000001)
              {
                v158 = 0.000001;
              }

              v175 = vmla_n_f32(v144, *&v156, *&v157 / v158);
              v176 = v155;
              v159 = v180;
              v160 = v181;
              while (v159 != v160)
              {
                if (!*(v159 + 4))
                {
                  v161 = *(v159 + 3);
                  if (v161 <= 1)
                  {
                    LODWORD(v157) = 0;
                    LODWORD(v156) = *(v159 + 2);
                    v162 = *v159;
                    v183 = *(*v159)[2].f32;
                    *(&v156 + 1) = *(&v183 + 1);
                    *(&v183 + v161) = vbsl_s8(vdup_lane_s32(vceq_s32(*&v156, *&v157), 0), v176, v175);
                    *(&v157 + 1) = *(&v183 + 1);
                    *v162[2].f32 = v183;
                    *&v157 = v162[2];
                    *&v156 = v162[3];
                    v140 = v157;
                    DWORD2(v140) = v162[8].i32[0];
                    v163 = v156;
                    DWORD2(v163) = v162[8].i32[1];
                    DWORD2(v157) = DWORD2(v163);
                    DWORD2(v156) = DWORD2(v140);
                    *v162[4].f32 = v140;
                    *v162[6].f32 = v163;
                    v164 = v162[1];
                    src = v157;
                    v185 = v163;
                    v186 = v156;
                    v187 = v140;
                    if (v164)
                    {
                      objc_copyStruct((*&v164 + 272), &src, 64, 1, 0);
                    }
                  }
                }

                v159 += 3;
              }

              v165 = *(v3 + 64);
              *&v166 = v176;
              *&v167 = v176;
              *(&v167 + 1) = v165;
              *&v140 = *(v3 + 24);
              v168 = v140;
              DWORD2(v168) = v165.i32[1];
              *(v3 + 16) = v176;
              *(&v166 + 1) = vdup_lane_s32(v165, 1);
              *(&v140 + 1) = v165;
              *(v3 + 32) = v167;
              *(v3 + 48) = v168;
              v169 = *(v3 + 8);
              src = v166;
              v185 = v168;
              v186 = v140;
              v187 = v167;
              if (v169)
              {
                objc_copyStruct((v169 + 272), &src, 64, 1, 0);
                v165 = *(v3 + 64);
                v169 = *(v3 + 8);
              }

              v170 = *(v3 + 16);
              *&v171 = v175;
              *(v3 + 24) = v175;
              *&v172 = v170;
              *(&v172 + 1) = v165;
              *&v173 = v175;
              *(&v173 + 1) = vdup_lane_s32(v165, 1);
              *(v3 + 32) = v172;
              *(v3 + 48) = v173;
              DWORD2(v170) = v165.i32[1];
              *(&v171 + 1) = v165;
              src = v170;
              v185 = v173;
              v186 = v171;
              v187 = v172;
              if (v169)
              {
                objc_copyStruct((v169 + 272), &src, 64, 1, 0);
              }

              v143 = 0;
              if (!v115)
              {
LABEL_126:
                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if (!v143)
                {
                  goto LABEL_148;
                }

LABEL_129:
                v15 += 3;
                if (v15 == v14)
                {
                  goto LABEL_148;
                }

                continue;
              }
            }
          }

          else
          {
            v143 = 1;
            v14 = v179;
            if (!v115)
            {
              goto LABEL_126;
            }
          }

          break;
        }

        operator delete(v115);
        goto LABEL_126;
      }

      goto LABEL_148;
    }

    if (!*(v180 + 4))
    {
      v39 = *v180;
      v40 = vsub_f32(*(*v180 + 16), *(*v180 + 24));
      v41 = sqrtf(vaddv_f32(vmul_f32(v40, v40)));
      if (v41 > v13 || (v42 = vsub_f32(*(v3 + 16), *(v3 + 24)), v41 > (v10 * sqrtf(vaddv_f32(vmul_f32(v42, v42))))))
      {
        v43 = sub_2621C92AC((v3 + 16), (*v180 + 16), 0);
        v45 = vsub_f32(*(v3 + 16), *(v3 + 24));
        if (sqrtf(vaddv_f32(vmul_f32(v45, v45))) >= v8)
        {
          v46 = v9;
        }

        else
        {
          v46 = v12;
        }

        v47 = fabsf(v43 + -90.0);
        if (v47 <= v46)
        {
          if (v47 < v11)
          {
            goto LABEL_148;
          }

          v67 = *(v15 + 2);
          v68 = v39[2];
          v69 = vsub_f32(v39[3], v68);
          *v68.i32 = -*&v69.i32[1];
          v70 = vzip1_s32(v68, v69);
          v71 = *(v6 + 8 * v67);
          v72 = vadd_f32(v71, v70);
          v73 = 1 - v67;
          v74 = vsub_f32(v71, v72);
          v75 = vaddv_f32(vmul_f32(vsub_f32(*(v6 + 8 * v73), v72), v74));
          v76 = vaddv_f32(vmul_f32(v74, v74));
          if (v76 < 0.000001)
          {
            v76 = 0.000001;
          }

          *__p = *v6;
          __p[v73] = vmla_n_f32(v72, v74, v75 / v76);
          *v6 = *__p;
          v77 = *(v3 + 16);
          v78 = v77;
          DWORD2(v78) = *(v3 + 64);
          *&v44 = *(v3 + 24);
          v79 = v44;
          DWORD2(v79) = *(v3 + 68);
          DWORD2(v77) = DWORD2(v79);
          DWORD2(v44) = DWORD2(v78);
          *(v3 + 32) = v78;
          *(v3 + 48) = v79;
          v63 = *(v3 + 8);
          src = v77;
          v185 = v79;
          v186 = v44;
          v187 = v78;
          if (!v63)
          {
            goto LABEL_148;
          }

          goto LABEL_43;
        }

        v8 = a1[4];
        v9 = a1[5];
        v11 = a1[7];
        v10 = a1[8];
        v12 = a1[6];
        v13 = a1[2];
      }
    }

    if (*(v15 + 4) != 1 || (v16 = *v15, v17 = vsub_f32((*v15)[2], (*v15)[3]), v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17))), v18 <= v13) && (v19 = vsub_f32(*(v3 + 16), *(v3 + 24)), v18 <= (v10 * sqrtf(vaddv_f32(vmul_f32(v19, v19))))) || ((v20 = sub_2621C92AC((v3 + 16), *v15 + 2, 0), v21 = *(v3 + 16), v22 = *(v3 + 24), *&v23 = vsub_f32(v21, v22), sqrtf(vaddv_f32(vmul_f32(*&v23, *&v23))) >= v8) ? (v24 = v9) : (v24 = v12), v25 = fabsf(v20 + -90.0), v25 > v24))
    {
      v178 = (v3 + 16);
      goto LABEL_67;
    }

    if (v25 < v11)
    {
      goto LABEL_148;
    }

    v48 = *(v15 + 2);
    v49 = vmul_f32(vadd_f32(v21, v22), 0x3F0000003F000000);
    v50 = v16[2];
    v51 = vsub_f32(v16[3], v50);
    v52 = vaddv_f32(vmul_f32(vsub_f32(v49, v50), v51));
    *&v23 = vaddv_f32(vmul_f32(v51, v51));
    if (*&v23 < 0.000001)
    {
      *&v23 = 0.000001;
    }

    v53 = vmla_n_f32(v50, v51, v52 / *&v23);
    v54 = 1 - v48;
    v55 = *(v6 + 8 * (1 - v48));
    v56 = vsub_f32(v49, v53);
    v57 = vaddv_f32(vmul_f32(v56, v56));
    *__p = *v6;
    __p[v48] = v53;
    *v6 = *__p;
    v58 = *(v3 + 16);
    *&v23 = *(v3 + 24);
    v61 = v23;
    v59 = *(v3 + 64);
    *&v60 = *(v3 + 16);
    *(&v60 + 1) = v59;
    DWORD2(v61) = HIDWORD(v59);
    if (v57 >= 0.000001)
    {
      v62 = v57;
    }

    else
    {
      v62 = 0.000001;
    }

    DWORD2(v58) = HIDWORD(v59);
    *(&v23 + 1) = v59;
    *(v3 + 32) = v60;
    *(v3 + 48) = v61;
    v63 = *(v3 + 8);
    src = v58;
    v185 = v61;
    v186 = v23;
    v187 = v60;
    if (v63)
    {
      objc_copyStruct((v63 + 272), &src, 64, 1, 0);
      v59 = *(v3 + 64);
      v63 = *(v3 + 8);
    }

    *__p = *v6;
    __p[v54] = vmla_n_f32(v53, v56, vaddv_f32(vmul_f32(vsub_f32(v55, v53), v56)) / v62);
    *v6 = *__p;
    v64 = *(v3 + 16);
    *&v65 = *(v3 + 16);
    *(&v65 + 1) = v59;
    *&v23 = *(v3 + 24);
    v66 = v23;
    DWORD2(v66) = HIDWORD(v59);
    *(v3 + 32) = v65;
    *(v3 + 48) = v66;
    DWORD2(v64) = HIDWORD(v59);
    *(&v23 + 1) = v59;
    src = v64;
    v185 = v66;
    v186 = v23;
    v187 = v65;
    if (!v63)
    {
LABEL_148:
      if (v180)
      {
        operator delete(v180);
      }

      v2 = v174;
      goto LABEL_151;
    }

LABEL_43:
    objc_copyStruct((v63 + 272), &src, 64, 1, 0);
    goto LABEL_148;
  }
}

void sub_2622B6714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622B676C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a3 + 151) < 0)
  {
    if (!*(a3 + 136))
    {
      return;
    }

    goto LABEL_5;
  }

  if (*(a3 + 151))
  {
LABEL_5:
    v9 = *(a2 + 36);
    *v74[0].f32 = *(a3 + 16);
    if (a4 == a5)
    {
      return;
    }

    v10 = (a3 + 128);
    v11 = v74[0];
    v12 = v74[1];
    do
    {
      v13 = *(v6 + 151);
      if (v13 < 0)
      {
        v14 = *(v6 + 136);
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else if (*(v6 + 151))
      {
        v14 = *(v6 + 136);
LABEL_11:
        if (v13 >= 0)
        {
          v15 = *(v6 + 151);
        }

        else
        {
          v15 = v14;
        }

        v16 = *(a3 + 151);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(a3 + 136);
        }

        if (v15 == v16)
        {
          v18 = v13 >= 0 ? (v6 + 128) : *(v6 + 128);
          v19 = (v17 >= 0 ? a3 + 128 : *v10);
          if (!memcmp(v18, v19, v15))
          {
            goto LABEL_75;
          }
        }

        v73 = *(v6 + 16);
        sub_2621DCD34(&v71, v74, &v73);
        v20 = v71;
        v21 = v71 + 1;
        v22 = *v71;
        if (v71 == v72 || v21 == v72)
        {
          v29 = v71;
          if (v22 < v9)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v23 = *v71;
          v24 = v71 + 1;
          v25 = v71;
          v26 = v71 + 1;
          do
          {
            v27 = *v26++;
            v28 = v27;
            if (v27 < v23)
            {
              v23 = v28;
              v25 = v24;
            }

            v24 = v26;
          }

          while (v26 != v72);
          if (*v25 < v9)
          {
            v29 = v71;
            v30 = v71 + 1;
            do
            {
              v31 = *v30++;
              v32 = v31;
              if (v31 < v22)
              {
                v22 = v32;
                v29 = v21;
              }

              v21 = v30;
            }

            while (v30 != v72);
LABEL_37:
            v33 = (v29 - v71) >> 2;
            *&v69 = v6;
            DWORD2(v69) = v33 / 2;
            HIDWORD(v69) = v33 % 2;
            v70 = 0;
            sub_2622B6C30(a1, &v69);
LABEL_74:
            operator delete(v20);
            goto LABEL_75;
          }
        }

        *&v34 = sub_2621C92AC(v74, &v73, 0);
        LODWORD(v37) = 1127153664;
        if (*&v34 <= 5.0 || *&v34 >= 175.0)
        {
          goto LABEL_74;
        }

        sub_2621DC4A4(&v69, v74, &v73, v34, v37, v35, v36);
        v42 = v69;
        if (v69 == *(&v69 + 1))
        {
          if (v69)
          {
            operator delete(v69);
          }

          goto LABEL_74;
        }

        v43 = (v69 + 8);
        v44 = (v69 + 4);
        v45 = v69;
        if (v69 + 4 != v69 + 8)
        {
          v46 = *v69;
          v47 = (v69 + 4);
          v45 = v69;
          v48 = (v69 + 4);
          do
          {
            v49 = *v48++;
            v50 = v49;
            if (v49 < v46)
            {
              v46 = v50;
              v45 = v47;
            }

            v47 = v48;
          }

          while (v48 != v43);
        }

        if (v43 == *(&v69 + 1))
        {
          v52 = (v69 + 8);
        }

        else
        {
          v51 = (v69 + 12);
          v52 = (v69 + 8);
          if (v69 + 12 != *(&v69 + 1))
          {
            v53 = *v43;
            v52 = (v69 + 8);
            v54 = (v69 + 12);
            do
            {
              v55 = *v54++;
              v56 = v55;
              if (v55 < v53)
              {
                v53 = v56;
                v52 = v51;
              }

              v51 = v54;
            }

            while (v54 != *(&v69 + 1));
          }
        }

        v57 = *v45;
        v58 = *v52;
        sub_2621DC654(&__p, &v73, v11, v12, v39, v40, v41);
        v59 = __p;
        if (v57 >= v9 || v58 < v9)
        {
LABEL_70:
          if (v59)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if ((*__p & 2) != 0)
          {
            if (v44 == v43)
            {
              v61 = v42;
            }

            else
            {
              v60 = *v42;
              v61 = v42;
              v62 = v42 + 1;
              do
              {
                v63 = *v62++;
                v64 = v63;
                if (v63 < v60)
                {
                  v60 = v64;
                  v61 = v44;
                }

                v44 = v62;
              }

              while (v62 != v43);
            }

            v65 = v6;
            v66 = (v61 - v42) >> 2;
            v67 = 0x1FFFFFFFFLL;
            sub_2622B6C30(a1, &v65);
            goto LABEL_70;
          }

LABEL_71:
          operator delete(v59);
        }

        if (v42)
        {
          operator delete(v42);
        }

        goto LABEL_74;
      }

LABEL_75:
      v6 += 176;
    }

    while (v6 != a5);
  }
}

void sub_2622B6B00(_Unwind_Exception *a1)
{
  operator delete(v4);
  if (v3)
  {
    operator delete(v3);
  }

  operator delete(v2);
  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_2622B6B58(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2622B6BB0(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(a1 + 16);
  *(&v3 + 1) = *(&v8 + 1);
  *(&src[-1] + a2) = a3;
  *(&v4 + 1) = *(&v8 + 1);
  *(a1 + 16) = v8;
  *&v4 = *(a1 + 16);
  *&v3 = *(a1 + 24);
  v5 = v4;
  DWORD2(v5) = *(a1 + 64);
  v6 = v3;
  DWORD2(v6) = *(a1 + 68);
  DWORD2(v4) = DWORD2(v6);
  DWORD2(v3) = DWORD2(v5);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v7 = *(a1 + 8);
  src[0] = v4;
  src[1] = v6;
  src[2] = v3;
  src[3] = v5;
  if (v7)
  {
    objc_copyStruct((v7 + 272), src, 64, 1, 0);
  }
}

void sub_2622B6C30(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2622B6B58(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
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
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_2622B6D34(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_2622B6E14(void *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v53 = v4;
  objc_msgSend_quad(v1, v5, v6);
  v51 = v7;

  if (v1)
  {
    objc_copyStruct(&dest, v1 + 240, 16, 1, 0);
    v50 = dest;
    objc_copyStruct(&dest, v1 + 240, 16, 1, 0);
    v49 = dest;
    objc_copyStruct(&dest, v1 + 256, 16, 1, 0);
    v10 = v51;
    v11 = v49;
    v12 = vsubq_f32(v53, v50);
    v13 = dest;
  }

  else
  {
    v11 = 0uLL;
    v10 = v51;
    v12 = v53;
    v13 = 0uLL;
  }

  v14 = vsubq_f32(v10, v11);
  v16 = vmulq_f32(v12, v13);
  v15 = sqrtf(vaddv_f32(*&vmulq_f32(v13, v13)));
  v16.f32[0] = (vaddv_f32(*v16.f32) / sqrtf(vaddv_f32(*&vmulq_f32(v12, v12)))) * v15;
  v17 = (vaddv_f32(*&vmulq_f32(v14, v13)) / sqrtf(vaddv_f32(*&vmulq_f32(v14, v14)))) * v15;
  v18 = (-v13.f32[1] * v12.f32[0]) + (v13.f32[0] * v12.f32[1]);
  v19 = (-v13.f32[1] * v14.f32[0]) + (v13.f32[0] * v14.f32[1]);
  v57 = 0uLL;
  if (v18 > 0.0 && v19 > 0.0)
  {
    if (v16.f32[0] <= v17)
    {
LABEL_16:
      v20.i64[1] = v53.i64[1];
      v57.i64[0] = v53.i64[0];
      v57.i64[1] = v10.i64[0];
      v20.i64[0] = v10.i64[0];
      goto LABEL_17;
    }

LABEL_13:
    v20 = v53;
    v57.i64[0] = v10.i64[0];
    v57.i64[1] = v53.i64[0];
LABEL_17:
    v52 = v20;
    goto LABEL_18;
  }

  if (v18 < 0.0 && v19 < 0.0)
  {
    if (v16.f32[0] > v17)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v18 <= 0.0 && v19 >= 0.0)
  {
    goto LABEL_13;
  }

  v16.i64[0] = 0;
  v52 = v16;
  if (v18 >= 0.0 && v19 <= 0.0)
  {
    goto LABEL_16;
  }

LABEL_18:
  objc_msgSend_quad(v1, v8, v9, *&v49);
  dest.i32[0] = v21;
  objc_msgSend_quad(v1, v22, v23);
  dest.i32[1] = v24;
  objc_msgSend_quad(v1, v25, v26);
  dest.i32[2] = v27;
  objc_msgSend_quad(v1, v28, v29);
  dest.i32[3] = v30;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  sub_2621DC430(&v54, &dest, v59, 4uLL);
  v31 = v54;
  v32 = v54 + 1;
  v33 = *v54;
  if (v54 == v55 || v32 == v55)
  {
    v40 = *v54;
  }

  else
  {
    v34 = *v54;
    v35 = v54 + 1;
    v36 = v54;
    v37 = v54 + 1;
    do
    {
      v38 = *v37++;
      v39 = v38;
      if (v38 < v34)
      {
        v34 = v39;
        v36 = v35;
      }

      v35 = v37;
    }

    while (v37 != v55);
    v40 = *v36;
    v41 = v54;
    v42 = v54 + 1;
    do
    {
      v43 = *v42++;
      v44 = v43;
      if (v33 < v43)
      {
        v33 = v44;
        v41 = v32;
      }

      v32 = v42;
    }

    while (v42 != v55);
    v33 = *v41;
  }

  v45 = v57;
  v46 = v57;
  v46.f32[2] = v33;
  v47 = v52;
  v48 = v52;
  v48.f32[2] = v33;
  v47.f32[2] = v40;
  v45.f32[2] = v40;
  dest = v46;
  v59[0] = v48;
  v59[1] = v47;
  v59[2] = v45;
  if (v1)
  {
    objc_copyStruct(v1 + 272, &dest, 64, 1, 0);
  }

  operator delete(v31);
}

void sub_2622B7120(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_2622B7170(void *a1, int a2, __n128 *a3, __n128 *a4, _DWORD *a5, _OWORD *a6)
{
  v11 = a1;
  v12 = v11;
  if (v11)
  {
    v11[105] = a2;
    if (a2)
    {
      src = *a3;
      objc_copyStruct(v11 + 240, &src, 16, 1, 0);
      src = *a4;
      objc_copyStruct(v12 + 256, &src, 16, 1, 0);
      goto LABEL_11;
    }
  }

  else if (a2)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v31 = *a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_circleCenter(v13, v14, v15);
    v31.n128_u64[0] = v16;
  }

  v17 = sub_26223FCEC(v13).n128_u64[0];
  v19 = vsub_f32(v18.n128_u64[0], v17);
  v20.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v31.n128_u64[0], v17), v19));
  v21 = vaddv_f32(vmul_f32(v19, v19));
  if (v21 < 0.000001)
  {
    v21 = 0.000001;
  }

  v20.n128_u64[0] = vsub_f32(vmla_n_f32(v17, v19, v20.n128_f32[0] / v21), v31.n128_u64[0]);
  v22 = vmul_f32(v20.n128_u64[0], v20.n128_u64[0]);
  v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
  v23 = vrsqrte_f32(v22.u32[0]);
  v24 = vmul_f32(v23, vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)));
  v20.n128_u64[0] = vmul_n_f32(v20.n128_u64[0], vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).f32[0]);
  v18.n128_u64[0] = vmul_f32(vadd_f32(v17, v18.n128_u64[0]), 0x3F0000003F000000);
  __asm { FMOV            V0.2S, #-3.0 }

  v18.n128_u64[0] = vmla_f32(v18.n128_u64[0], _D0, v20.n128_u64[0]);
  v30 = v20;
  v32 = v18;

  src = v32;
  if (v12)
  {
    objc_copyStruct(v13 + 240, &src, 16, 1, 0);
    src = v30;
    objc_copyStruct(v13 + 256, &src, 16, 1, 0);
  }

LABEL_11:
  sub_2622B6E14(v12);
  if (v12)
  {
    *(v12 + 31) = *a5;
    *(v12 + 14) = *a6;
  }
}

void sub_2622B7364(void *a1, void *a2, unsigned int a3, uint64_t a4, float32_t a5)
{
  v40 = a1;
  v9 = a2;
  v12 = sub_26223FCEC(v9).n128_u64[0];
  v14 = v13;
  v15 = 0;
  v42[0] = v12;
  v42[1] = v13;
  v16 = a3;
  v17 = vsub_f32(v13, v12);
  *v13.i32 = -*&v17.i32[1];
  v18 = vzip1_s32(v13, v17);
  while (objc_msgSend_count(v40, v10, v11) > v15)
  {
    v20 = objc_msgSend_objectAtIndexedSubscript_(v40, v19, v15);
    v21 = v20;
    if (v16 == v15)
    {
      goto LABEL_23;
    }

    v22 = sub_26223FCEC(v20).n128_u64[0];
    v24 = v23;
    v41[0] = v22;
    v41[1] = v23;
    v25 = v42[sub_2621DCEC8(v42, v41)];
    v27 = v41[v26];
    v28 = vsub_f32(v25, v27);
    if (sqrtf(vaddv_f32(vmul_f32(v28, v28))) < a5)
    {
      v29 = vsub_f32(v12, v25);
      if (sqrtf(vaddv_f32(vmul_f32(v29, v29))) < 0.00001 || (v30 = vsub_f32(v12, v27), sqrtf(vaddv_f32(vmul_f32(v30, v30))) < 0.00001))
      {
        if (!v21 || v21[29] != 3)
        {
          *(a4 + 3) = 0;
        }
      }

      v31 = vsub_f32(v14, v25);
      if (sqrtf(vaddv_f32(vmul_f32(v31, v31))) < 0.00001 || (v32 = vsub_f32(v14, v27), sqrtf(vaddv_f32(vmul_f32(v32, v32))) < 0.00001))
      {
        if (v21 && v21[29] == 3)
        {
          goto LABEL_23;
        }

        *(a4 + 1) = 0;
      }
    }

    if (!v21 || v21[29] != 3)
    {
      v33 = vsub_f32(v24, v22);
      v34 = vmul_f32(v33, v18);
      if (vaddv_f32(v34) != 0.0)
      {
        v35 = v22;
        v36 = vmul_f32(vsub_f32(v12, v22), v18);
        v37 = vmla_n_f32(v22, v33, vdiv_f32(vadd_f32(v36, vdup_lane_s32(v36, 1)), vadd_f32(v34, vdup_lane_s32(v34, 1))).f32[0]);
        if (sub_2621DC76C(v37, v35, v24, 0.00001) < a5)
        {
          v38 = vsub_f32(v12, v37);
          if (sqrtf(vaddv_f32(vmul_f32(v38, v38))) < a5)
          {
            *(a4 + 3) = 0;
          }

          v39 = vsub_f32(v14, v37);
          if (sqrtf(vaddv_f32(vmul_f32(v39, v39))) < a5)
          {
            *(a4 + 1) = 0;
          }
        }
      }
    }

LABEL_23:

    ++v15;
  }
}

void sub_2622B75F8(void *a1, void *a2, void *a3, __n128 *a4, __n128 *a5, int a6)
{
  v183 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = v8;
  v12 = v9;
  v15 = v12;
  v147 = v10;
  if (v11)
  {
    v151 = objc_msgSend_count(v11, v13, v14);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v151 = 0;
    if (v12)
    {
LABEL_3:
      v16 = objc_msgSend_count(v15, v13, v14);
      v164 = 0;
      v165 = 0;
      v163 = &v164;
      LODWORD(v175[0]) = 0;
      if (v16 >= 1)
      {
        v18 = 0;
        v148 = v16;
        do
        {
          if (v151 >= 1)
          {
            for (i = 0; i != v151; ++i)
            {
              v20 = objc_msgSend_objectAtIndexedSubscript_(v15, v17, SLODWORD(v175[0]));
              v23 = objc_msgSend_identifier(v20, v21, v22);
              v25 = objc_msgSend_objectAtIndexedSubscript_(v11, v24, i);
              v28 = objc_msgSend_identifier(v25, v26, v27);
              isEqual = objc_msgSend_isEqual_(v23, v29, v28);

              if (isEqual)
              {
                *&dest[0] = v175;
                *(sub_2622B6D34(&v163, v175[0], dest) + 8) = i;
              }
            }

            v18 = v175[0];
            v16 = v148;
          }

          LODWORD(v175[0]) = ++v18;
        }

        while (v18 < v16);
      }

      goto LABEL_15;
    }
  }

  v164 = 0;
  v165 = 0;
  v163 = &v164;
LABEL_15:

  v33 = 0;
  v162 = -1;
  v161 = 0uLL;
  while (1)
  {
    LODWORD(v170) = v33;
    if (objc_msgSend_count(v15, v31, v32) <= v33)
    {
      break;
    }

    v35 = objc_msgSend_objectAtIndexedSubscript_(v15, v34, v170);
    v36 = v35;
    v37 = v164;
    if (!v164)
    {
      goto LABEL_26;
    }

    v38 = &v164;
    do
    {
      v39 = v37;
      v40 = v38;
      v41 = *(v37 + 7);
      if (v41 >= v170)
      {
        v38 = v37;
      }

      v37 = v37[v41 < v170];
    }

    while (v37);
    if (v38 == &v164)
    {
      goto LABEL_26;
    }

    if (v41 < v170)
    {
      v39 = v40;
    }

    if (v170 < *(v39 + 7))
    {
LABEL_26:
      sub_2622B7170(v35, 0, a4, a5, &v162, &v161);
      goto LABEL_27;
    }

    *&dest[0] = &v170;
    v43 = *(sub_2622B6D34(&v163, v170, dest) + 8);
    if (a6 == 3)
    {
      v46 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v43);
      if (v46)
      {
        v47 = v46[30] == 3;

        if (v47)
        {
LABEL_35:
          sub_2622B7170(v36, 0, a4, a5, &v162, &v161);
          goto LABEL_27;
        }
      }
    }

    else if (!a6)
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v43);
      if (v44)
      {
        v45 = v44[29] == 3;

        if (v45)
        {
          goto LABEL_35;
        }
      }
    }

    v49 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v43);
    if (v49)
    {
      objc_copyStruct(dest, (v49 + 240), 16, 1, 0);
      v50 = dest[0];
    }

    else
    {
      v50 = 0uLL;
    }

    *v175 = v50;
    v51 = objc_msgSend_objectAtIndexedSubscript_(v11, v48, v43);
    if (v51)
    {
      objc_copyStruct(dest, (v51 + 256), 16, 1, 0);
      v52 = dest[0];
    }

    else
    {
      v52 = 0uLL;
    }

    *v173 = v52;
    sub_2622B7170(v36, 2, v175, v173, &v162, &v161);

LABEL_27:
    v33 = v170 + 1;
  }

  v53 = v11;
  v54 = v15;
  v55 = *a5;
  v56 = vmulq_f32(*a5, xmmword_2623A7700);
  v57 = v56.f32[2] + vaddv_f32(*v56.f32);
  v58 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v55, v55)));
  *v56.f32 = vrsqrte_f32(v58);
  *v56.f32 = vmul_f32(*v56.f32, vrsqrts_f32(v58.u32[0], vmul_f32(*v56.f32, *v56.f32)));
  *v55.f32 = vmul_n_f32(a5->n128_u64[0], vmul_f32(*v56.f32, vrsqrts_f32(v58.u32[0], vmul_f32(*v56.f32, *v56.f32))).f32[0]);
  v59 = dest;
  v60 = vdup_lane_s32(*v55.f32, 1);
  __asm { FMOV            V2.4S, #5.0 }

  v152 = _Q2;
  v154 = *a4;
  v159 = v55;
  v149 = vmlaq_f32(*a4, _Q2, v55);
  v65 = 1;
  do
  {
    v66 = v65 & 1;
    if (v65)
    {
      v67 = -0.5236;
    }

    else
    {
      v67 = -0.34907;
    }

    if (v65)
    {
      v68 = 0.34907;
    }

    else
    {
      v68 = 0.5236;
    }

    v69 = __sincosf_stret(v67);
    v70.f32[0] = -v69.__sinval;
    v70.i32[1] = LODWORD(v69.__cosval);
    v71.i64[1] = v159.i64[1];
    *v71.f32 = vmla_f32(vmul_n_f32(__PAIR64__(LODWORD(v69.__sinval), LODWORD(v69.__cosval)), v159.f32[0]), v60, v70);
    v156 = v71;
    v74 = __sincosf_stret(v68);
    v65 = 0;
    v75.f32[0] = -v74.__sinval;
    v75.i32[1] = LODWORD(v74.__cosval);
    v76.i32[3] = v159.i32[3];
    *v76.f32 = vmla_f32(vmul_n_f32(__PAIR64__(LODWORD(v74.__sinval), LODWORD(v74.__cosval)), v159.f32[0]), v60, v75);
    v76.i32[2] = 0;
    *v59 = v154;
    v59[1] = vmlaq_f32(v154, v152, v156);
    v59[2] = v149;
    v59[3] = vmlaq_f32(v154, v152, v76);
    v59 = v182;
  }

  while (v66);
  v77 = 0;
  v78 = fabsf(v57);
  while (objc_msgSend_count(v54, v72, *&v73) > v77)
  {
    v80 = objc_msgSend_objectAtIndexedSubscript_(v54, v79, v77);
    objc_msgSend_quad(v80, v81, v82);
    v160 = v83;
    objc_msgSend_quad(v80, v84, v85);
    v157 = v86;
    v180 = 16843009;
    memset_pattern16(__b, &unk_2623A7E60, 0x10uLL);
    if (objc_msgSend_individualUpdate(v80, v87, v88))
    {
      if (objc_msgSend_individualUpdate(v80, v89, v90) == 2)
      {
        v93 = v164;
        if (v164)
        {
          v94 = &v164;
          v95 = v164;
          do
          {
            v96 = v95;
            v97 = v94;
            v98 = *(v95 + 7);
            if (v77 <= v98)
            {
              v94 = v95;
            }

            v95 = v95[v77 > v98];
          }

          while (v95);
          if (v94 != &v164)
          {
            if (v77 > v98)
            {
              v96 = v97;
            }

            if (v77 >= *(v96 + 7))
            {
              while (1)
              {
                while (1)
                {
                  v99 = *(v93 + 7);
                  if (v77 >= v99)
                  {
                    break;
                  }

                  v93 = *v93;
                  if (!v93)
                  {
                    goto LABEL_122;
                  }
                }

                if (v77 <= v99)
                {
                  break;
                }

                v93 = v93[1];
                if (!v93)
                {
LABEL_122:
                  sub_2621C84A8("map::at:  key not found");
                }
              }

              v100 = *(v93 + 8);
              if ((v100 & 0x80000000) == 0 && objc_msgSend_count(v53, v91, v92) > v100)
              {
                v102 = objc_msgSend_objectAtIndexedSubscript_(v53, v101, v100);
                v146 = v53;
                objc_msgSend_quad(v102, v103, v104);
                v150 = v105;
                objc_msgSend_quad(v102, v106, v107);
                v109 = fabsf(COERCE_FLOAT(vsubq_f32(v160, v150).i32[2])) / 0.15;
                if (v109 <= 1.0)
                {
                  v110 = v109;
                }

                else
                {
                  v110 = 1.0;
                }

                v111 = fabsf(COERCE_FLOAT(vsubq_f32(v108, v157).i32[2])) / 0.15;
                if (v111 <= 1.0)
                {
                  v112 = v111;
                }

                else
                {
                  v112 = 1.0;
                }

                v177 = sub_26223FCEC(v80).n128_u64[0];
                v178 = v113;
                v180 = 0;
                BYTE1(v180) = objc_msgSend_edgeStates(v102, v114, v115) >> 8;
                HIBYTE(v180) = objc_msgSend_edgeStates(v102, v116, v117) >> 24;
                if (v78 < 0.86603)
                {
                  if (sub_262247B68(dest, 4uLL, &v177, 1uLL))
                  {
                    HIBYTE(v180) = 0;
                  }

                  if (sub_262247B68(v182, 4uLL, &v178, 1uLL))
                  {
                    BYTE1(v180) = 0;
                  }
                }

                v175[0] = 0;
                v175[1] = 0;
                v176 = 0;
                v173[0] = 0;
                v173[1] = 0;
                v174 = 0;
                v170 = sub_26223FCEC(v80).n128_u64[0];
                v171 = v118;
                v119 = sub_26223FCEC(v102).n128_u64[0];
                if (sub_26229E760(&v170, v175, v173, v119, v120, 0.05))
                {
                  v121 = sub_26223FCEC(v80).n128_u64[0];
                  v122 = v173[0];
                  v123 = v173[1];
                  v124 = sub_26229E8EC(v173[0], v173[1], v121);
                  sub_26223FCEC(v80);
                  v126 = sub_26229E8EC(v122, v123, v125);
                  if (v124 > 0.0)
                  {
                    HIBYTE(v180) = 1;
                    v127 = v124 / 0.15;
                    if ((v124 / 0.15) > 1.0)
                    {
                      v127 = 1.0;
                    }

                    __b[3] = v127;
                  }

                  v53 = v146;
                  if (v126 > 0.0)
                  {
                    BYTE1(v180) = 1;
                    v128 = v126 / 0.15;
                    if (v128 > 1.0)
                    {
                      v128 = 1.0;
                    }

                    __b[1] = v128;
                  }
                }

                v170 = 0;
                v171 = 0;
                v172 = 0;
                __p = 0;
                v168 = 0;
                v169 = 0;
                v166[0] = sub_26223FCEC(v102).n128_u64[0];
                v166[1] = v129;
                v130 = sub_26223FCEC(v80).n128_u64[0];
                if (sub_26229E760(v166, &v170, &__p, v130, v131, 0.05))
                {
                  v132 = sub_26223FCEC(v102).n128_u64[0];
                  v133 = __p;
                  v134 = v168;
                  v135 = sub_26229E8EC(__p, v168, v132);
                  sub_26223FCEC(v102);
                  v137 = sub_26229E8EC(v133, v134, v136);
                  if (v135 > 0.0)
                  {
                    HIBYTE(v180) = 1;
                    v138 = v135 / 0.15;
                    if ((v135 / 0.15) > 1.0)
                    {
                      v138 = 1.0;
                    }

                    __b[3] = v138;
                  }

                  v53 = v146;
                  if (v137 > 0.0)
                  {
                    BYTE1(v180) = 1;
                    v139 = v137 / 0.15;
                    if (v139 > 1.0)
                    {
                      v139 = 1.0;
                    }

                    __b[1] = v139;
                  }
                }

                sub_2622B7364(v54, v80, v77, &v180, 0.05);
                LOBYTE(v180) = 1;
                __b[0] = v110;
                BYTE2(v180) = 1;
                v142 = 0;
                __b[2] = v112;
                do
                {
                  v166[0].i32[0] = objc_msgSend_edgeStates(v102, v140, v141);
                  _CF = v166[0].u8[v142] != *(&v180 + v142) || v142 >= 3;
                  ++v142;
                }

                while (!_CF);
                if (v80)
                {
                  *(v80 + 105) = 1;
                  *(v80 + 124) = v180;
                  v144 = __b[3];
                  v145 = __b[1];
                  *(v80 + 224) = v110;
                  *(v80 + 228) = v145;
                  *(v80 + 232) = v112;
                  *(v80 + 236) = v144;
                }

                if (__p)
                {
                  operator delete(__p);
                }

                if (v170)
                {
                  operator delete(v170);
                }

                if (v173[0])
                {
                  operator delete(v173[0]);
                }

                if (v175[0])
                {
                  operator delete(v175[0]);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_2622B7364(v54, v80, v77, &v180, 0.05);
      if (v80)
      {
        *(v80 + 124) = v180;
        *(v80 + 224) = *__b;
      }
    }

    ++v77;
  }

  sub_2621C6C04(v164);
}

void sub_2622B7FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a39)
  {
    operator delete(a39);
  }

  sub_2621C6C04(a25);
  _Unwind_Resume(a1);
}

void sub_2622B8150(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84(v5, (a1 + 104));
}

void sub_2622B84FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622B855C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_262258F3C(a1, a2);
  }

  else
  {
    sub_262258DB0(a1[1], a2);
    result = v3 + 320;
    a1[1] = v3 + 320;
  }

  a1[1] = result;
  return result;
}

void sub_2622B85B0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2622B8670(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v7 = result;
  v266 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v8 = a2;
    v9 = a2 - 320;
    v223 = a2 - 960;
    v224 = a2 - 640;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v10;
          v11 = v8 - v10;
          v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 6);
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v81 = (*a3)(v10 + 320, v10);
                result = (*a3)(v9, v10 + 320);
                if ((v81 & 1) == 0)
                {
                  if (!result)
                  {
                    return result;
                  }

                  v79 = v10 + 320;
                  v80 = a2 - 320;
                  goto LABEL_192;
                }

                if (result)
                {
                  goto LABEL_121;
                }

                sub_2622BA094(v10, v10 + 320);
                result = (*a3)(v9, v10 + 320);
                if (!result)
                {
                  return result;
                }

                v82 = v10 + 320;
LABEL_122:
                v83 = a2 - 320;
LABEL_123:

                return sub_2622BA094(v82, v83);
              case 4:

                return sub_2622BA2A0(v10, v10 + 320, v10 + 640, v9, a3);
              case 5:
                sub_2622BA2A0(v10, v10 + 320, v10 + 640, v10 + 960, a3);
                result = (*a3)(v9, v10 + 960);
                if (!result)
                {
                  return result;
                }

                sub_2622BA094(v10 + 960, v9);
                result = (*a3)(v10 + 960, v10 + 640);
                if (!result)
                {
                  return result;
                }

                sub_2622BA094(v10 + 640, v10 + 960);
                result = (*a3)(v10 + 640, v10 + 320);
                if (!result)
                {
                  return result;
                }

                v79 = v10 + 320;
                v80 = v10 + 640;
LABEL_192:
                sub_2622BA094(v79, v80);
                result = (*a3)(v10 + 320, v10);
                if (!result)
                {
                  return result;
                }

                v83 = v10 + 320;
                v82 = v10;
                goto LABEL_123;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              result = (*a3)(v9, v10);
              if (!result)
              {
                return result;
              }

LABEL_121:
              v82 = v10;
              goto LABEL_122;
            }
          }

          if (v11 <= 7679)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v84 = v10 + 320;
                if (v10 + 320 != a2)
                {
                  v85 = 0;
                  v86 = v10;
                  do
                  {
                    v87 = v86;
                    v86 = v84;
                    result = (*a3)(v84, v87);
                    if (result)
                    {
                      sub_262258DB0(&v248, v86);
                      v88 = v85;
                      while (1)
                      {
                        v89 = v88;
                        v90 = v7 + v88;
                        objc_storeStrong((v7 + v88 + 328), *(v7 + v88 + 8));
                        v91 = *(v90 + 96);
                        *(v90 + 400) = *(v90 + 80);
                        *(v90 + 416) = v91;
                        *(v90 + 425) = *(v90 + 105);
                        v92 = *(v90 + 32);
                        *(v90 + 336) = *(v90 + 16);
                        *(v90 + 352) = v92;
                        v93 = *(v90 + 64);
                        *(v90 + 368) = *(v90 + 48);
                        *(v90 + 384) = v93;
                        std::string::operator=((v90 + 448), (v90 + 128));
                        v94 = v7 + v89;
                        std::string::operator=((v7 + v89 + 472), (v7 + v89 + 152));
                        objc_storeStrong((v94 + 496), *(v94 + 176));
                        *(v94 + 528) = *(v94 + 208);
                        *(v94 + 540) = *(v94 + 220);
                        v95 = v7 + v89;
                        v96 = *(v7 + v89 + 256);
                        *(v95 + 560) = *(v7 + v89 + 240);
                        *(v95 + 576) = v96;
                        *(v95 + 592) = *(v7 + v89 + 272);
                        sub_26225945C(v7 + v89 + 608, *(v7 + v89 + 288), *(v7 + v89 + 296), (*(v7 + v89 + 296) - *(v7 + v89 + 288)) >> 3);
                        *(v95 + 632) = *(v95 + 312);
                        if (!v89)
                        {
                          break;
                        }

                        v97 = (*a3)(&v248, v7 + v89 - 320);
                        v88 = v89 - 320;
                        if ((v97 & 1) == 0)
                        {
                          v98 = v7 + v89;
                          v99 = v7 + v89;
                          v100 = (v7 + v89 + 16);
                          v101 = (v99 + 128);
                          v226 = (v99 + 152);
                          v102 = (v99 + 240);
                          v103 = (v99 + 208);
                          goto LABEL_136;
                        }
                      }

                      v100 = (v7 + 16);
                      v101 = (v7 + 128);
                      v226 = (v7 + 152);
                      v102 = (v7 + 240);
                      v103 = (v7 + 208);
                      v98 = v7;
LABEL_136:
                      objc_storeStrong((v98 + 8), obj);
                      v104 = v250;
                      v105 = v252;
                      v100[1] = v251;
                      v100[2] = v105;
                      *v100 = v104;
                      v106 = v253;
                      v107 = v254;
                      v108 = v255[0];
                      *(v100 + 89) = *(v255 + 9);
                      v100[4] = v107;
                      v100[5] = v108;
                      v100[3] = v106;
                      std::string::operator=(v101, &v256);
                      std::string::operator=(v226, &v257);
                      objc_storeStrong((v98 + 176), v258);
                      v109 = v259[0];
                      *(v103 + 12) = *(v259 + 12);
                      *v103 = v109;
                      v110 = v260;
                      v111 = v262;
                      v102[1] = v261;
                      v102[2] = v111;
                      *v102 = v110;
                      if (v98 != &v248)
                      {
                        sub_26225945C(v98 + 288, *v263, *v264, (*v264 - *v263) >> 3);
                      }

                      *(v98 + 312) = v265;
                      v248 = off_2874EE620;
                      v230 = v263;
                      sub_2621C512C(&v230);

                      result = sub_2621C50C4(&v248);
                    }

                    v84 = v86 + 320;
                    v85 += 320;
                  }

                  while (v86 + 320 != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v199 = v10 + 320;
              if (v10 + 320 != a2)
              {
                v200 = v10 + 632;
                do
                {
                  v201 = v7;
                  v7 = v199;
                  result = (*a3)(v199, v201);
                  if (result)
                  {
                    sub_262258DB0(&v248, v7);
                    v202 = v200;
                    do
                    {
                      v203 = v202;
                      objc_storeStrong(v202 - 38, *(v202 - 78));
                      v204 = v202 - 74;
                      v205 = v202 - 154;
                      v206 = *(v202 - 146);
                      *(v202 - 62) = *(v202 - 142);
                      v207 = *(v202 - 134);
                      *(v202 - 58) = *(v202 - 138);
                      *(v202 - 54) = v207;
                      v208 = *(v202 - 150);
                      *v204 = *(v202 - 154);
                      v204[1] = v208;
                      v204[2] = v206;
                      v209 = (v202 - 126);
                      *(v202 - 207) = *(v202 - 527);
                      std::string::operator=((v202 - 46), v202 - 21);
                      v210 = (v202 - 120);
                      std::string::operator=((v202 - 40), v202 - 20);
                      objc_storeStrong(v202 - 17, *(v202 - 57));
                      v211 = v202 - 106;
                      *(v202 - 26) = *(v202 - 106);
                      *(v202 - 23) = *(v202 - 103);
                      v212 = v202 - 98;
                      v213 = *(v202 - 94);
                      *(v202 - 18) = *(v202 - 98);
                      *(v202 - 14) = v213;
                      *(v202 - 10) = *(v202 - 90);
                      sub_26225945C((v202 - 6), *(v202 - 43), *(v202 - 42), (*(v202 - 42) - *(v202 - 43)) >> 3);
                      v202 -= 80;
                      *v203 = *(v203 - 80);
                    }

                    while (((*a3)(&v248, (v203 - 238)) & 1) != 0);
                    v214 = (v203 - 158);
                    objc_storeStrong(v214 + 1, obj);
                    v215 = v250;
                    v216 = v252;
                    v205[1] = v251;
                    v205[2] = v216;
                    *v205 = v215;
                    v217 = v253;
                    v218 = v254;
                    v219 = v255[0];
                    *(v205 + 89) = *(v255 + 9);
                    v205[4] = v218;
                    v205[5] = v219;
                    v205[3] = v217;
                    std::string::operator=(v209, &v256);
                    std::string::operator=(v210, &v257);
                    objc_storeStrong(v214 + 22, v258);
                    v220 = v259[0];
                    *(v211 + 12) = *(v259 + 12);
                    *v211 = v220;
                    v221 = v260;
                    v222 = v262;
                    v212[1] = v261;
                    v212[2] = v222;
                    *v212 = v221;
                    if (v214 != &v248)
                    {
                      sub_26225945C((v214 + 36), *v263, *v264, (*v264 - *v263) >> 3);
                    }

                    *(v214 + 78) = v265;
                    v248 = off_2874EE620;
                    v230 = v263;
                    sub_2621C512C(&v230);

                    result = sub_2621C50C4(&v248);
                  }

                  v199 = v7 + 320;
                  v200 += 320;
                }

                while (v7 + 320 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v112 = (v12 - 2) >> 1;
              v227 = v112;
              do
              {
                v113 = v112;
                if (v227 >= v112)
                {
                  v114 = (2 * v112) | 1;
                  v115 = v7 + 320 * v114;
                  if (2 * v112 + 2 < v12 && (*a3)(v7 + 320 * v114, v115 + 320))
                  {
                    v115 += 320;
                    v114 = 2 * v113 + 2;
                  }

                  v116 = v7 + 320 * v113;
                  result = (*a3)(v115, v116);
                  if ((result & 1) == 0)
                  {
                    sub_262258DB0(&v248, v7 + 320 * v113);
                    do
                    {
                      v117 = v115;
                      objc_storeStrong((v116 + 8), *(v115 + 8));
                      v118 = *(v115 + 16);
                      v119 = *(v115 + 48);
                      *(v116 + 32) = *(v115 + 32);
                      *(v116 + 48) = v119;
                      *(v116 + 16) = v118;
                      v120 = *(v115 + 64);
                      v121 = *(v115 + 80);
                      v122 = *(v115 + 96);
                      *(v116 + 105) = *(v115 + 105);
                      *(v116 + 80) = v121;
                      *(v116 + 96) = v122;
                      *(v116 + 64) = v120;
                      std::string::operator=((v116 + 128), (v115 + 128));
                      std::string::operator=((v116 + 152), (v115 + 152));
                      objc_storeStrong((v116 + 176), *(v115 + 176));
                      v123 = *(v115 + 208);
                      *(v116 + 220) = *(v115 + 220);
                      *(v116 + 208) = v123;
                      v124 = *(v115 + 240);
                      v125 = *(v115 + 272);
                      *(v116 + 256) = *(v115 + 256);
                      *(v116 + 272) = v125;
                      *(v116 + 240) = v124;
                      if (v116 != v115)
                      {
                        sub_26225945C(v116 + 288, *(v115 + 288), *(v115 + 296), (*(v115 + 296) - *(v115 + 288)) >> 3);
                      }

                      *(v116 + 312) = *(v115 + 312);
                      if (v227 < v114)
                      {
                        break;
                      }

                      v126 = (2 * v114) | 1;
                      v115 = v7 + 320 * v126;
                      v114 = 2 * v114 + 2;
                      if (v114 >= v12)
                      {
                        v114 = v126;
                      }

                      else if ((*a3)(v7 + 320 * v126, v115 + 320))
                      {
                        v115 += 320;
                      }

                      else
                      {
                        v114 = v126;
                      }

                      v116 = v117;
                    }

                    while (!(*a3)(v115, &v248));
                    objc_storeStrong((v117 + 8), obj);
                    v127 = v250;
                    v128 = v252;
                    *(v117 + 32) = v251;
                    *(v117 + 48) = v128;
                    *(v117 + 16) = v127;
                    v129 = v253;
                    v130 = v254;
                    v131 = v255[0];
                    *(v117 + 105) = *(v255 + 9);
                    *(v117 + 80) = v130;
                    *(v117 + 96) = v131;
                    *(v117 + 64) = v129;
                    std::string::operator=((v117 + 128), &v256);
                    std::string::operator=((v117 + 152), &v257);
                    objc_storeStrong((v117 + 176), v258);
                    v132 = v259[0];
                    *(v117 + 220) = *(v259 + 12);
                    *(v117 + 208) = v132;
                    v133 = v260;
                    v134 = v262;
                    *(v117 + 256) = v261;
                    *(v117 + 272) = v134;
                    *(v117 + 240) = v133;
                    if (v117 != &v248)
                    {
                      sub_26225945C(v117 + 288, *v263, *v264, (*v264 - *v263) >> 3);
                    }

                    *(v117 + 312) = v265;
                    v248 = off_2874EE620;
                    v230 = v263;
                    sub_2621C512C(&v230);

                    result = sub_2621C50C4(&v248);
                  }
                }

                v112 = v113 - 1;
              }

              while (v113);
              v135 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 6);
              do
              {
                if (v135 >= 2)
                {
                  sub_262258DB0(&v230, v7);
                  v136 = 0;
                  v137 = v7;
                  do
                  {
                    v138 = v137 + 320 * v136;
                    v139 = v138 + 320;
                    v140 = 2 * v136;
                    v136 = (2 * v136) | 1;
                    v141 = v140 + 2;
                    if (v140 + 2 < v135)
                    {
                      v142 = v138 + 640;
                      if ((*a3)(v138 + 320, v138 + 640))
                      {
                        v139 = v142;
                        v136 = v141;
                      }
                    }

                    objc_storeStrong((v137 + 8), *(v139 + 8));
                    v143 = *(v139 + 16);
                    v144 = *(v139 + 48);
                    *(v137 + 32) = *(v139 + 32);
                    *(v137 + 48) = v144;
                    *(v137 + 16) = v143;
                    v145 = *(v139 + 64);
                    v146 = *(v139 + 80);
                    v147 = *(v139 + 96);
                    *(v137 + 105) = *(v139 + 105);
                    *(v137 + 80) = v146;
                    *(v137 + 96) = v147;
                    *(v137 + 64) = v145;
                    std::string::operator=((v137 + 128), (v139 + 128));
                    std::string::operator=((v137 + 152), (v139 + 152));
                    objc_storeStrong((v137 + 176), *(v139 + 176));
                    v148 = *(v139 + 208);
                    *(v137 + 220) = *(v139 + 220);
                    *(v137 + 208) = v148;
                    v149 = *(v139 + 240);
                    v150 = *(v139 + 272);
                    *(v137 + 256) = *(v139 + 256);
                    *(v137 + 272) = v150;
                    *(v137 + 240) = v149;
                    if (v137 != v139)
                    {
                      sub_26225945C(v137 + 288, *(v139 + 288), *(v139 + 296), (*(v139 + 296) - *(v139 + 288)) >> 3);
                    }

                    *(v137 + 312) = *(v139 + 312);
                    v137 = v139;
                  }

                  while (v136 <= ((v135 - 2) >> 1));
                  if (v139 == a2 - 320)
                  {
                    objc_storeStrong((v139 + 8), v231);
                    v190 = v232;
                    v191 = v234;
                    *(v139 + 32) = v233;
                    *(v139 + 48) = v191;
                    *(v139 + 16) = v190;
                    v192 = v235;
                    v193 = v236;
                    v194 = v237[0];
                    *(v139 + 105) = *(v237 + 9);
                    *(v139 + 80) = v193;
                    *(v139 + 96) = v194;
                    *(v139 + 64) = v192;
                    std::string::operator=((v139 + 128), &v238);
                    std::string::operator=((v139 + 152), &v239);
                    objc_storeStrong((v139 + 176), v240);
                    v195 = v241[0];
                    *(v139 + 220) = *(v241 + 12);
                    *(v139 + 208) = v195;
                    v196 = v242;
                    v197 = v244;
                    *(v139 + 256) = v243;
                    *(v139 + 272) = v197;
                    *(v139 + 240) = v196;
                    if (v139 != &v230)
                    {
                      sub_26225945C(v139 + 288, v245, v246, v246 - v245);
                    }

                    *(v139 + 312) = v247;
                  }

                  else
                  {
                    objc_storeStrong((v139 + 8), *(a2 - 312));
                    v151 = (a2 - 304);
                    v152 = *(a2 - 256);
                    v153 = *(a2 - 240);
                    v154 = *(a2 - 224);
                    *(v139 + 105) = *(a2 - 215);
                    *(v139 + 80) = v153;
                    *(v139 + 96) = v154;
                    *(v139 + 64) = v152;
                    v155 = *(a2 - 304);
                    v156 = *(a2 - 272);
                    *(v139 + 32) = *(a2 - 288);
                    *(v139 + 48) = v156;
                    *(v139 + 16) = v155;
                    std::string::operator=((v139 + 128), (a2 - 192));
                    std::string::operator=((v139 + 152), (a2 - 168));
                    objc_storeStrong((v139 + 176), *(a2 - 144));
                    v157 = *(a2 - 112);
                    *(v139 + 220) = *(a2 - 100);
                    *(v139 + 208) = v157;
                    v158 = *(a2 - 80);
                    v159 = *(a2 - 48);
                    *(v139 + 256) = *(a2 - 64);
                    *(v139 + 272) = v159;
                    *(v139 + 240) = v158;
                    sub_26225945C(v139 + 288, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 3);
                    *(v139 + 312) = *(a2 - 8);
                    objc_storeStrong((a2 - 312), v231);
                    v160 = v232;
                    v161 = v234;
                    v151[1] = v233;
                    v151[2] = v161;
                    *v151 = v160;
                    v162 = v235;
                    v163 = v236;
                    v164 = v237[0];
                    *(v151 + 89) = *(v237 + 9);
                    v151[4] = v163;
                    v151[5] = v164;
                    v151[3] = v162;
                    std::string::operator=((a2 - 192), &v238);
                    std::string::operator=((a2 - 168), &v239);
                    objc_storeStrong((a2 - 144), v240);
                    v165 = (a2 - 112);
                    v166 = (a2 - 80);
                    v167 = v241[0];
                    *(v165 + 12) = *(v241 + 12);
                    *v165 = v167;
                    v168 = v242;
                    v169 = v244;
                    v166[1] = v243;
                    v166[2] = v169;
                    *v166 = v168;
                    if ((a2 - 320) != &v230)
                    {
                      sub_26225945C(a2 - 32, v245, v246, v246 - v245);
                    }

                    *(a2 - 8) = v247;
                    v170 = v139 - v7 + 320;
                    if (v170 >= 321)
                    {
                      v171 = (-2 - 0x3333333333333333 * (v170 >> 6)) >> 1;
                      v172 = v7 + 320 * v171;
                      if ((*a3)(v172, v139))
                      {
                        sub_262258DB0(&v248, v139);
                        do
                        {
                          v173 = v172;
                          objc_storeStrong((v139 + 8), *(v172 + 8));
                          v174 = *(v172 + 16);
                          v175 = *(v172 + 48);
                          *(v139 + 32) = *(v172 + 32);
                          *(v139 + 48) = v175;
                          *(v139 + 16) = v174;
                          v176 = *(v172 + 64);
                          v177 = *(v172 + 80);
                          v178 = *(v172 + 96);
                          *(v139 + 105) = *(v172 + 105);
                          *(v139 + 80) = v177;
                          *(v139 + 96) = v178;
                          *(v139 + 64) = v176;
                          std::string::operator=((v139 + 128), (v172 + 128));
                          std::string::operator=((v139 + 152), (v172 + 152));
                          objc_storeStrong((v139 + 176), *(v172 + 176));
                          v179 = *(v172 + 208);
                          *(v139 + 220) = *(v172 + 220);
                          *(v139 + 208) = v179;
                          v180 = *(v172 + 240);
                          v181 = *(v172 + 272);
                          *(v139 + 256) = *(v172 + 256);
                          *(v139 + 272) = v181;
                          *(v139 + 240) = v180;
                          if (v139 != v172)
                          {
                            sub_26225945C(v139 + 288, *(v172 + 288), *(v172 + 296), (*(v172 + 296) - *(v172 + 288)) >> 3);
                          }

                          *(v139 + 312) = *(v172 + 312);
                          if (!v171)
                          {
                            break;
                          }

                          v171 = (v171 - 1) >> 1;
                          v172 = v7 + 320 * v171;
                          v139 = v173;
                        }

                        while (((*a3)(v172, &v248) & 1) != 0);
                        objc_storeStrong((v173 + 8), obj);
                        v182 = v250;
                        v183 = v252;
                        *(v173 + 32) = v251;
                        *(v173 + 48) = v183;
                        *(v173 + 16) = v182;
                        v184 = v253;
                        v185 = v254;
                        v186 = v255[0];
                        *(v173 + 105) = *(v255 + 9);
                        *(v173 + 80) = v185;
                        *(v173 + 96) = v186;
                        *(v173 + 64) = v184;
                        std::string::operator=((v173 + 128), &v256);
                        std::string::operator=((v173 + 152), &v257);
                        objc_storeStrong((v173 + 176), v258);
                        v187 = v259[0];
                        *(v173 + 220) = *(v259 + 12);
                        *(v173 + 208) = v187;
                        v188 = v260;
                        v189 = v262;
                        *(v173 + 256) = v261;
                        *(v173 + 272) = v189;
                        *(v173 + 240) = v188;
                        if (v173 != &v248)
                        {
                          sub_26225945C(v173 + 288, *v263, *v264, (*v264 - *v263) >> 3);
                        }

                        *(v173 + 312) = v265;
                        v248 = off_2874EE620;
                        v229 = v263;
                        sub_2621C512C(&v229);

                        sub_2621C50C4(&v248);
                      }
                    }
                  }

                  v230 = off_2874EE620;
                  v248 = &v245;
                  sub_2621C512C(&v248);

                  result = sub_2621C50C4(&v230);
                }

                a2 -= 320;
              }

              while (v135-- > 2);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = v10 + 320 * v13;
          v15 = *a3;
          if (v11 > 0xA000)
          {
            v16 = v15(v7 + 320 * v13, v7);
            v17 = (*a3)(v9, v7 + 320 * v13);
            if (v16)
            {
              if (v17)
              {
                v18 = v7;
              }

              else
              {
                sub_2622BA094(v7, v7 + 320 * v13);
                if (!(*a3)(v9, v7 + 320 * v13))
                {
                  goto LABEL_29;
                }

                v18 = v7 + 320 * v13;
              }

              v22 = a2 - 320;
            }

            else
            {
              if (!v17 || (sub_2622BA094(v7 + 320 * v13, v9), !(*a3)(v7 + 320 * v13, v7)))
              {
LABEL_29:
                v24 = v7 + 320 * v13 - 320;
                v25 = (*a3)(v24, v7 + 320);
                v26 = (*a3)(v224, v24);
                if (v25)
                {
                  if (v26)
                  {
                    v27 = v7 + 320;
                  }

                  else
                  {
                    sub_2622BA094(v7 + 320, v7 + 320 * v13 - 320);
                    if (!(*a3)(v224, v7 + 320 * v13 - 320))
                    {
                      goto LABEL_42;
                    }

                    v27 = v7 + 320 * v13 - 320;
                  }

                  v28 = a2 - 640;
                }

                else
                {
                  if (!v26 || (sub_2622BA094(v7 + 320 * v13 - 320, v224), !(*a3)(v7 + 320 * v13 - 320, v7 + 320)))
                  {
LABEL_42:
                    v29 = v7 + 320 * v13;
                    v30 = (*a3)(v29 + 320, v7 + 640);
                    v31 = (*a3)(v223, v29 + 320);
                    if (v30)
                    {
                      if (v31)
                      {
                        v32 = v7 + 640;
                      }

                      else
                      {
                        sub_2622BA094(v7 + 640, v29 + 320);
                        if (!(*a3)(v223, v29 + 320))
                        {
                          goto LABEL_52;
                        }

                        v32 = v29 + 320;
                      }

                      v33 = a2 - 960;
                    }

                    else
                    {
                      if (!v31 || (sub_2622BA094(v29 + 320, v223), !(*a3)(v29 + 320, v7 + 640)))
                      {
LABEL_52:
                        v34 = (*a3)(v14, v24);
                        v35 = (*a3)(v29 + 320, v14);
                        if (v34)
                        {
                          if (v35)
                          {
                            v36 = v29 + 320;
                            v37 = v24;
                          }

                          else
                          {
                            sub_2622BA094(v24, v14);
                            if (!(*a3)(v29 + 320, v14))
                            {
LABEL_61:
                              v21 = v7;
                              v23 = v14;
                              goto LABEL_62;
                            }

                            v36 = v29 + 320;
                            v37 = v14;
                          }
                        }

                        else
                        {
                          if (!v35)
                          {
                            goto LABEL_61;
                          }

                          sub_2622BA094(v14, v29 + 320);
                          if (!(*a3)(v14, v24))
                          {
                            goto LABEL_61;
                          }

                          v37 = v24;
                          v36 = v14;
                        }

                        sub_2622BA094(v37, v36);
                        goto LABEL_61;
                      }

                      v32 = v7 + 640;
                      v33 = v29 + 320;
                    }

                    sub_2622BA094(v32, v33);
                    goto LABEL_52;
                  }

                  v27 = v7 + 320;
                  v28 = v7 + 320 * v13 - 320;
                }

                sub_2622BA094(v27, v28);
                goto LABEL_42;
              }

              v18 = v7;
              v22 = v7 + 320 * v13;
            }

            sub_2622BA094(v18, v22);
            goto LABEL_29;
          }

          v19 = v15(v7, v7 + 320 * v13);
          v20 = (*a3)(v9, v7);
          if (v19)
          {
            if (v20)
            {
              v21 = v7 + 320 * v13;
LABEL_37:
              v23 = a2 - 320;
              goto LABEL_62;
            }

            sub_2622BA094(v7 + 320 * v13, v7);
            if ((*a3)(v9, v7))
            {
              v21 = v7;
              goto LABEL_37;
            }
          }

          else if (v20)
          {
            sub_2622BA094(v7, v9);
            if ((*a3)(v7, v7 + 320 * v13))
            {
              v21 = v7 + 320 * v13;
              v23 = v7;
LABEL_62:
              sub_2622BA094(v21, v23);
            }
          }

          --a4;
          if (a5 & 1) != 0 || ((*a3)(v7 - 320, v7))
          {
            break;
          }

          sub_262258DB0(&v248, v7);
          if ((*a3)(&v248, v9))
          {
            v10 = v7;
            do
            {
              v10 += 320;
            }

            while (((*a3)(&v248, v10) & 1) == 0);
          }

          else
          {
            v59 = v7 + 320;
            do
            {
              v10 = v59;
              if (v59 >= a2)
              {
                break;
              }

              v60 = (*a3)(&v248, v59);
              v59 = v10 + 320;
            }

            while (!v60);
          }

          v61 = a2;
          if (v10 < a2)
          {
            v61 = a2;
            do
            {
              v61 -= 320;
            }

            while (((*a3)(&v248, v61) & 1) != 0);
          }

          while (v10 < v61)
          {
            sub_2622BA094(v10, v61);
            do
            {
              v10 += 320;
            }

            while (!(*a3)(&v248, v10));
            do
            {
              v61 -= 320;
            }

            while (((*a3)(&v248, v61) & 1) != 0);
          }

          if (v10 - 320 != v7)
          {
            objc_storeStrong((v7 + 8), *(v10 - 312));
            v62 = *(v10 - 256);
            v63 = *(v10 - 240);
            v64 = *(v10 - 224);
            *(v7 + 105) = *(v10 - 215);
            *(v7 + 80) = v63;
            *(v7 + 96) = v64;
            *(v7 + 64) = v62;
            v65 = *(v10 - 304);
            v66 = *(v10 - 272);
            *(v7 + 32) = *(v10 - 288);
            *(v7 + 48) = v66;
            *(v7 + 16) = v65;
            std::string::operator=((v7 + 128), (v10 - 192));
            std::string::operator=((v7 + 152), (v10 - 168));
            objc_storeStrong((v7 + 176), *(v10 - 144));
            v67 = *(v10 - 112);
            *(v7 + 220) = *(v10 - 100);
            *(v7 + 208) = v67;
            v68 = *(v10 - 80);
            v69 = *(v10 - 48);
            *(v7 + 256) = *(v10 - 64);
            *(v7 + 272) = v69;
            *(v7 + 240) = v68;
            sub_26225945C(v7 + 288, *(v10 - 32), *(v10 - 24), (*(v10 - 24) - *(v10 - 32)) >> 3);
            *(v7 + 312) = *(v10 - 8);
          }

          objc_storeStrong((v10 - 312), obj);
          v70 = (v10 - 304);
          v71 = v250;
          v72 = v252;
          v70[1] = v251;
          v70[2] = v72;
          *v70 = v71;
          v73 = v253;
          v74 = v254;
          v75 = v255[0];
          *(v10 - 215) = *(v255 + 9);
          *(v10 - 240) = v74;
          *(v10 - 224) = v75;
          *(v10 - 256) = v73;
          std::string::operator=((v10 - 192), &v256);
          std::string::operator=((v10 - 168), &v257);
          objc_storeStrong((v10 - 144), v258);
          v76 = v259[0];
          *(v10 - 100) = *(v259 + 12);
          *(v10 - 112) = v76;
          v77 = v260;
          v78 = v262;
          *(v10 - 64) = v261;
          *(v10 - 48) = v78;
          *(v10 - 80) = v77;
          if ((v10 - 320) != &v248)
          {
            sub_26225945C(v10 - 32, *v263, *v264, (*v264 - *v263) >> 3);
          }

          *(v10 - 8) = v265;
          v248 = off_2874EE620;
          v230 = v263;
          sub_2621C512C(&v230);

          result = sub_2621C50C4(&v248);
          a5 = 0;
          v8 = a2;
        }

        sub_262258DB0(&v248, v7);
        v38 = v7;
        do
        {
          v38 += 320;
        }

        while (((*a3)(v38, &v248) & 1) != 0);
        v39 = a2;
        if (v38 - 320 == v7)
        {
          v39 = a2;
          do
          {
            if (v38 >= v39)
            {
              break;
            }

            v39 -= 320;
          }

          while (((*a3)(v39, &v248) & 1) == 0);
        }

        else
        {
          do
          {
            v39 -= 320;
          }

          while (!(*a3)(v39, &v248));
        }

        v10 = v38;
        if (v38 < v39)
        {
          v40 = v39;
          do
          {
            sub_2622BA094(v10, v40);
            do
            {
              v10 += 320;
            }

            while (((*a3)(v10, &v248) & 1) != 0);
            do
            {
              v40 -= 320;
            }

            while (!(*a3)(v40, &v248));
          }

          while (v10 < v40);
        }

        if (v10 - 320 != v7)
        {
          objc_storeStrong((v7 + 8), *(v10 - 312));
          v41 = *(v10 - 256);
          v42 = *(v10 - 240);
          v43 = *(v10 - 224);
          *(v7 + 105) = *(v10 - 215);
          *(v7 + 80) = v42;
          *(v7 + 96) = v43;
          *(v7 + 64) = v41;
          v44 = *(v10 - 304);
          v45 = *(v10 - 272);
          *(v7 + 32) = *(v10 - 288);
          *(v7 + 48) = v45;
          *(v7 + 16) = v44;
          std::string::operator=((v7 + 128), (v10 - 192));
          std::string::operator=((v7 + 152), (v10 - 168));
          objc_storeStrong((v7 + 176), *(v10 - 144));
          v46 = *(v10 - 112);
          *(v7 + 220) = *(v10 - 100);
          *(v7 + 208) = v46;
          v47 = *(v10 - 80);
          v48 = *(v10 - 48);
          *(v7 + 256) = *(v10 - 64);
          *(v7 + 272) = v48;
          *(v7 + 240) = v47;
          sub_26225945C(v7 + 288, *(v10 - 32), *(v10 - 24), (*(v10 - 24) - *(v10 - 32)) >> 3);
          *(v7 + 312) = *(v10 - 8);
        }

        objc_storeStrong((v10 - 312), obj);
        v49 = (v10 - 304);
        v50 = v250;
        v51 = v252;
        v49[1] = v251;
        v49[2] = v51;
        *v49 = v50;
        v52 = v253;
        v53 = v254;
        v54 = v255[0];
        *(v10 - 215) = *(v255 + 9);
        *(v10 - 240) = v53;
        *(v10 - 224) = v54;
        *(v10 - 256) = v52;
        std::string::operator=((v10 - 192), &v256);
        std::string::operator=((v10 - 168), &v257);
        objc_storeStrong((v10 - 144), v258);
        v55 = v259[0];
        *(v10 - 100) = *(v259 + 12);
        *(v10 - 112) = v55;
        v56 = v260;
        v57 = v262;
        *(v10 - 64) = v261;
        *(v10 - 48) = v57;
        *(v10 - 80) = v56;
        if ((v10 - 320) != &v248)
        {
          sub_26225945C(v10 - 32, *v263, *v264, (*v264 - *v263) >> 3);
        }

        *(v10 - 8) = v265;
        v248 = off_2874EE620;
        v230 = v263;
        sub_2621C512C(&v230);

        sub_2621C50C4(&v248);
        v8 = a2;
        if (v38 >= v39)
        {
          break;
        }

LABEL_86:
        result = sub_2622B8670(v7, v10 - 320, a3, a4, a5 & 1);
        a5 = 0;
      }

      v58 = sub_2622BA3F0(v7, v10 - 320, a3);
      result = sub_2622BA3F0(v10, a2, a3);
      if (result)
      {
        break;
      }

      if (!v58)
      {
        goto LABEL_86;
      }
    }

    a2 = v10 - 320;
    if (!v58)
    {
      continue;
    }

    return result;
  }
}

void sub_2622B9E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_26225972C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622B9F2C(const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_2621E1EE4(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_2621DDA38((24 * v7), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_2621DDA38(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_2622BA074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BA094(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_262258DB0(v18, a1);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 64) = v6;
  std::string::operator=((a1 + 128), (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  objc_storeStrong((a1 + 176), *(a2 + 176));
  v9 = *(a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 208) = v9;
  v10 = *(a2 + 240);
  v11 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v11;
  *(a1 + 240) = v10;
  if (a1 != a2)
  {
    sub_26225945C(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 3);
  }

  *(a1 + 312) = *(a2 + 312);
  objc_storeStrong((a2 + 8), v18[1]);
  v12 = v24[0];
  *(a2 + 80) = v23;
  *(a2 + 96) = v12;
  *(a2 + 105) = *(v24 + 9);
  v13 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = v13;
  v14 = v22;
  *(a2 + 48) = v21;
  *(a2 + 64) = v14;
  std::string::operator=((a2 + 128), &v25);
  std::string::operator=((a2 + 152), &v26);
  objc_storeStrong((a2 + 176), v27);
  *(a2 + 208) = v28[0];
  *(a2 + 220) = *(v28 + 12);
  v15 = v28[3];
  *(a2 + 240) = v28[2];
  *(a2 + 256) = v15;
  *(a2 + 272) = v28[4];
  if (v18 != a2)
  {
    sub_26225945C(a2 + 288, v29, v30, v30 - v29);
  }

  *(a2 + 312) = v31;
  v17 = &v29;
  v18[0] = off_2874EE620;
  sub_2621C512C(&v17);

  return sub_2621C50C4(v18);
}

void sub_2622BA284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_26225972C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BA2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    sub_2622BA094(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_2622BA094(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      sub_2622BA094(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_2622BA094(a3, a4);
    result = (*a5)(a3, a2);
    if (result)
    {
      sub_2622BA094(a2, a3);
      result = (*a5)(a2, a1);
      if (result)
      {

        return sub_2622BA094(a1, a2);
      }
    }
  }

  return result;
}

BOOL sub_2622BA3F0(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 6);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v12 = a2 - 320;
        v13 = (*a3)(a1 + 320, a1);
        v14 = (*a3)(a2 - 320, a1 + 320);
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            sub_2622BA094(a1, a1 + 320);
            if (!(*a3)(v12, a1 + 320))
            {
              return 1;
            }

            v7 = a1 + 320;
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
          return 1;
        }

        v10 = a1 + 320;
        v11 = v12;
        break;
      case 4:
        sub_2622BA2A0(a1, a1 + 320, a1 + 640, a2 - 320, a3);
        return 1;
      case 5:
        v9 = a2 - 320;
        sub_2622BA2A0(a1, a1 + 320, a1 + 640, a1 + 960, a3);
        if (!(*a3)(a2 - 320, a1 + 960))
        {
          return 1;
        }

        sub_2622BA094(a1 + 960, v9);
        if (!(*a3)(a1 + 960, a1 + 640))
        {
          return 1;
        }

        sub_2622BA094(a1 + 640, a1 + 960);
        if (!(*a3)(a1 + 640, a1 + 320))
        {
          return 1;
        }

        v10 = a1 + 320;
        v11 = a1 + 640;
        break;
      default:
        goto LABEL_16;
    }

    sub_2622BA094(v10, v11);
    if ((*a3)(a1 + 320, a1))
    {
      v8 = a1 + 320;
      v7 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2 - 320;
    if ((*a3)(a2 - 320, a1))
    {
      v7 = a1;
      v8 = v6;
LABEL_30:
      sub_2622BA094(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v15 = a1 + 640;
  v16 = (*a3)(a1 + 320, a1);
  v17 = (*a3)(a1 + 640, a1 + 320);
  if (v16)
  {
    if (v17)
    {
      v18 = a1;
    }

    else
    {
      sub_2622BA094(a1, a1 + 320);
      if (!(*a3)(a1 + 640, a1 + 320))
      {
        goto LABEL_35;
      }

      v18 = a1 + 320;
    }

    v19 = a1 + 640;
    goto LABEL_34;
  }

  if (v17)
  {
    sub_2622BA094(a1 + 320, a1 + 640);
    if ((*a3)(a1 + 320, a1))
    {
      v19 = a1 + 320;
      v18 = a1;
LABEL_34:
      sub_2622BA094(v18, v19);
    }
  }

LABEL_35:
  v20 = a1 + 960;
  if (a1 + 960 == a2)
  {
    return 1;
  }

  v21 = 0;
  v43 = 0;
  while (1)
  {
    if ((*a3)(v20, v15))
    {
      sub_262258DB0(v46, v20);
      v22 = v21;
      while (1)
      {
        v23 = v22;
        v24 = a1 + v22;
        objc_storeStrong((a1 + v22 + 968), *(a1 + v22 + 648));
        v25 = *(v24 + 736);
        *(v24 + 1040) = *(v24 + 720);
        *(v24 + 1056) = v25;
        v26 = *(v24 + 672);
        *(v24 + 976) = *(v24 + 656);
        *(v24 + 992) = v26;
        v27 = *(v24 + 704);
        *(v24 + 1008) = *(v24 + 688);
        *(v24 + 1024) = v27;
        *(v24 + 1065) = *(v24 + 745);
        std::string::operator=((v24 + 1088), (v24 + 768));
        std::string::operator=((a1 + v23 + 1112), (a1 + v23 + 792));
        objc_storeStrong((a1 + v23 + 1136), *(a1 + v23 + 816));
        v28 = a1 + v23;
        *(v28 + 1168) = *(a1 + v23 + 848);
        *(a1 + v23 + 1180) = *(a1 + v23 + 860);
        v29 = *(a1 + v23 + 896);
        *(v28 + 1200) = *(a1 + v23 + 880);
        *(v28 + 1216) = v29;
        *(v28 + 1232) = *(a1 + v23 + 912);
        sub_26225945C(a1 + v23 + 1248, *(a1 + v23 + 928), *(a1 + v23 + 936), (*(a1 + v23 + 936) - *(a1 + v23 + 928)) >> 3);
        *(v28 + 1272) = *(v28 + 952);
        if (v23 == -640)
        {
          break;
        }

        v30 = (*a3)(v46, a1 + v23 + 320);
        v22 = v23 - 320;
        if ((v30 & 1) == 0)
        {
          v31 = a1 + v23;
          v32 = (a1 + v23 + 656);
          v33 = a1 + v22 + 960;
          v34 = (v31 + 768);
          v42 = (v31 + 792);
          v35 = (v31 + 880);
          v36 = (v31 + 848);
          goto LABEL_43;
        }
      }

      v32 = (a1 + 16);
      v34 = (a1 + 128);
      v42 = (a1 + 152);
      v35 = (a1 + 240);
      v36 = (a1 + 208);
      v33 = a1;
LABEL_43:
      objc_storeStrong((v33 + 8), v46[1]);
      v37 = v52[0];
      v32[4] = v51;
      v32[5] = v37;
      *(v32 + 89) = *(v52 + 9);
      v38 = v48;
      *v32 = v47;
      v32[1] = v38;
      v39 = v50;
      v32[2] = v49;
      v32[3] = v39;
      std::string::operator=(v34, &v53);
      std::string::operator=(v42, &v54);
      objc_storeStrong((v33 + 176), v55);
      *v36 = v56[0];
      *(v36 + 12) = *(v56 + 12);
      v40 = v56[3];
      *v35 = v56[2];
      v35[1] = v40;
      v35[2] = v56[4];
      if (v33 != v46)
      {
        sub_26225945C(v33 + 288, v57, v58, v58 - v57);
      }

      *(v33 + 312) = v59;
      ++v43;
      v45 = &v57;
      v46[0] = off_2874EE620;
      sub_2621C512C(&v45);

      sub_2621C50C4(v46);
      if (v43 == 8)
      {
        return v20 + 320 == a2;
      }
    }

    v15 = v20;
    v21 += 320;
    v20 += 320;
    if (v20 == a2)
    {
      return 1;
    }
  }
}

void sub_2622BA928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_26225972C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BA9AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v162 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 280))
    {
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 288);
          do
          {
            v12 = *v11++;
            *v10++ = (v12 * *(a2 + 344));
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v81 = 0;
        v82 = *(result + 56);
        v83 = *(result + 64);
        v84 = *(a2 + 288);
        do
        {
          v85 = 0;
          v10[v83 * *(&v147 + 1) + v82 * v147] = (*(v84 + 4 * v81) * *(a2 + 344));
          do
          {
            v86 = *(&v147 + v85 + 8) + 1;
            *(&v147 + v85 + 8) = v86;
            result = *(v3 + 16 + v85);
            if (v86 != result)
            {
              break;
            }

            *(&v147 + v85 + 8) = 0;
            v85 -= 8;
          }

          while (v85 != -16);
          ++v81;
        }

        while (v81 != v9);
      }
    }

    else
    {
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v41 = *(result + 104);
      v42 = *(result + 144);
      if (*(result + 136))
      {
        if (v41)
        {
          v43 = 0;
          v44 = *(a2 + 200);
          v45 = *(a2 + 208);
          v46 = *(a2 + 288);
          do
          {
            v47 = 0;
            *(v42 + 4 * v43) = (*(v46 + 4 * v45 * *(&v147 + 1) + 4 * v44 * v147) * *(a2 + 344));
            do
            {
              v48 = *(&v147 + v47 + 8) + 1;
              *(&v147 + v47 + 8) = v48;
              result = *(v3 + 16 + v47);
              if (v48 != result)
              {
                break;
              }

              *(&v147 + v47 + 8) = 0;
              v47 -= 8;
            }

            while (v47 != -16);
            ++v43;
          }

          while (v43 != v41);
        }
      }

      else if (v41)
      {
        v87 = 0;
        v88 = *(result + 56);
        v89 = *(result + 64);
        v90 = *(a2 + 200);
        v91 = *(a2 + 208);
        v92 = *(a2 + 288);
        do
        {
          result = 0;
          *(v42 + 4 * v89 * *(&v147 + 1) + 4 * v88 * v147) = (*(v92 + 4 * v91 * *(&v147 + 1) + 4 * v90 * v147) * *(a2 + 344));
          do
          {
            v93 = *(&v147 + result + 8) + 1;
            *(&v147 + result + 8) = v93;
            if (v93 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v147 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v87;
        }

        while (v87 != v41);
      }
    }
  }

  else
  {
    if (*(a2 + 280))
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v13 = 0;
      v14 = &v138;
      v15 = 1;
      do
      {
        v16 = *v14;
        v17 = *(v5 + v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v15 = 0;
        v14 = &v138 + 1;
        v13 = 1;
      }

      while (v16 == v17);
      if (v16 != v17)
      {
        v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v19, " ", 1);
        v20 = MEMORY[0x277D82670];
        v21 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v23 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v24 = *(v3 + 104);
      v25 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v24)
        {
          v26 = 0;
          v28 = *(&v148 + 1);
          v27 = v149;
          v29 = (v149 - *(&v148 + 1)) >> 3;
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v30 = *(a2 + 288);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v27 != v28)
            {
              v31 = v28;
              v32 = v29;
              do
              {
                v33 = *v31++;
                *(&v141 + v33) = 0;
                --v32;
              }

              while (v32);
            }

            v34 = 0;
            v35 = 0;
            v36 = &v141;
            v37 = 1;
            do
            {
              v38 = v37;
              v35 += *(&v159 + v34) * *v36;
              v36 = (&v141 + 8);
              v34 = 1;
              v37 = 0;
            }

            while ((v38 & 1) != 0);
            *(v25 + 4 * v26) = (*(v30 + 4 * v35) * *(a2 + 344));
            for (i = 1; i != -1; --i)
            {
              v40 = (v144[i].__locale_ + 1);
              v144[i].__locale_ = v40;
              if (v40 != *(&v138 + i * 8))
              {
                break;
              }

              v144[i].__locale_ = 0;
            }

            ++v26;
          }

          while (v26 != v24);
        }
      }

      else if (v24)
      {
        v94 = 0;
        v96 = *(&v148 + 1);
        v95 = v149;
        v97 = (v149 - *(&v148 + 1)) >> 3;
        if (v97 <= 1)
        {
          v97 = 1;
        }

        v98 = *(v3 + 56);
        v99 = *(v3 + 64);
        v100 = *(a2 + 288);
        do
        {
          locale = v144[0].__locale_;
          v102 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v95 != v96)
          {
            v103 = v96;
            v104 = v97;
            do
            {
              v105 = *v103++;
              *(&v141 + v105) = 0;
              --v104;
            }

            while (v104);
          }

          v106 = 0;
          v107 = 0;
          v108 = &v141;
          v109 = 1;
          do
          {
            v110 = v109;
            v107 += *(&v159 + v106) * *v108;
            v108 = (&v141 + 8);
            v106 = 1;
            v109 = 0;
          }

          while ((v110 & 1) != 0);
          *(v25 + 4 * v102 * v99 + 4 * locale * v98) = (*(v100 + 4 * v107) * *(a2 + 344));
          for (j = 1; j != -1; --j)
          {
            v112 = (v144[j].__locale_ + 1);
            v144[j].__locale_ = v112;
            if (v112 != *(&v138 + j * 8))
            {
              break;
            }

            v144[j].__locale_ = 0;
          }

          ++v94;
        }

        while (v94 != v24);
      }
    }

    else
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v49 = 0;
      v50 = &v138;
      v51 = 1;
      do
      {
        v52 = *v50;
        v53 = *(v5 + v49);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v51 = 0;
        v50 = &v138 + 1;
        v49 = 1;
      }

      while (v52 == v53);
      if (v52 != v53)
      {
        v54 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v55 = sub_2621D552C(v54, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v55, " ", 1);
        v56 = MEMORY[0x277D82670];
        v57 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v57, " ", 1);
        sub_2621D552C(v57, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v58 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v59 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v60 = *(v3 + 104);
      v61 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v60)
        {
          v62 = 0;
          v64 = *(&v148 + 1);
          v63 = v149;
          v65 = (v149 - *(&v148 + 1)) >> 3;
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = *(a2 + 280);
          v67 = *(a2 + 200);
          v68 = *(a2 + 208);
          v69 = *(a2 + 288);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v63 != v64)
            {
              v70 = v64;
              v71 = v65;
              do
              {
                v72 = *v70++;
                *(&v141 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            v73 = 0;
            v74 = 0;
            v75 = &v141;
            v76 = 1;
            do
            {
              v77 = v76;
              v74 += *(&v159 + v73) * *v75;
              v75 = (&v141 + 8);
              v73 = 1;
              v76 = 0;
            }

            while ((v77 & 1) != 0);
            v78 = (v69 + 4 * v74);
            if (!v66)
            {
              v78 = (v69 + 4 * *(&v141 + 1) * v68 + 4 * v141 * v67);
            }

            *(v61 + 4 * v62) = (*v78 * *(a2 + 344));
            for (k = 1; k != -1; --k)
            {
              v80 = (v144[k].__locale_ + 1);
              v144[k].__locale_ = v80;
              if (v80 != *(&v138 + k * 8))
              {
                break;
              }

              v144[k].__locale_ = 0;
            }

            ++v62;
          }

          while (v62 != v60);
        }
      }

      else if (v60)
      {
        v113 = 0;
        v115 = *(&v148 + 1);
        v114 = v149;
        v116 = (v149 - *(&v148 + 1)) >> 3;
        if (v116 <= 1)
        {
          v116 = 1;
        }

        v117 = *(v3 + 56);
        v118 = *(v3 + 64);
        v119 = *(a2 + 280);
        v120 = *(a2 + 200);
        v121 = *(a2 + 208);
        v122 = *(a2 + 288);
        do
        {
          v123 = v144[0].__locale_;
          v124 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v114 != v115)
          {
            v125 = v115;
            v126 = v116;
            do
            {
              v127 = *v125++;
              *(&v141 + v127) = 0;
              --v126;
            }

            while (v126);
          }

          v128 = 0;
          v129 = 0;
          v130 = &v141;
          v131 = 1;
          do
          {
            v132 = v131;
            v129 += *(&v159 + v128) * *v130;
            v130 = (&v141 + 8);
            v128 = 1;
            v131 = 0;
          }

          while ((v132 & 1) != 0);
          v133 = v123 * v117;
          v134 = v124 * v118;
          v135 = (v122 + 4 * v129);
          if (!v119)
          {
            v135 = (v122 + 4 * *(&v141 + 1) * v121 + 4 * v141 * v120);
          }

          *(v61 + 4 * v134 + 4 * v133) = (*v135 * *(a2 + 344));
          for (m = 1; m != -1; --m)
          {
            v137 = (v144[m].__locale_ + 1);
            v144[m].__locale_ = v137;
            if (v137 != *(&v138 + m * 8))
            {
              break;
            }

            v144[m].__locale_ = 0;
          }

          ++v113;
        }

        while (v113 != v60);
      }
    }

    return sub_2621C57C8(&v147);
  }

  return result;
}

void sub_2622BB47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BB4B0(float32x2_t *a1, uint64_t a2, float *a3)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  DWORD2(v33) = 0;
  *&v33 = a1[4];
  DWORD2(v34) = 0;
  *&v34 = a1[6];
  sub_2621D9F60(&v35, &v33);
  sub_2621D9F60(&v35, &v34);
  sub_2621D9F60(&v35, (a2 + 208));
  sub_2623A3C7C(v32, (a2 + 192), v6);
  v7 = v35;
  v8 = v32[0];
  if ((sub_262257F0C(v35, (v36 - v35) >> 4, v32[0], v32[1] - v32[0]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = vsub_f32(a1[2], a1[3]);
  v10 = vmul_f32(v9, v9);
  *v10.i32 = sqrtf(vaddv_f32(v10));
  v11 = ((*v10.i32 + -0.000001) / 0.01);
  if (v11 < 0)
  {
    v25 = 0.0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v15 = *a1[4].f32;
    v14 = *a1[6].f32;
    v15.i32[2] = 0;
    v14.i32[2] = 0;
    v31 = v15;
    v16 = vsubq_f32(v14, v15);
    if (*v10.i32 < 0.000001)
    {
      *v10.i32 = 0.000001;
    }

    v30 = vmulq_f32(vdivq_f32(v16, vdupq_lane_s32(v10, 0)), vdupq_n_s32(0x3C23D70Au));
    do
    {
      v17 = vmlaq_n_f32(v31, v30, v13);
      v18 = *(a2 + 208);
      v19 = vsubq_f32(v17, v18);
      v20 = vmulq_f32(v19, v19);
      v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
      if (v20.f32[0] < 0.000001)
      {
        v20.f32[0] = 0.000001;
      }

      v21 = vdivq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
      v22 = vmlaq_f32(vmlaq_n_f32(v18, v21, COERCE_FLOAT(*(a2 + 224))), 0, v21);
      v23 = vsubq_f32(v17, v22);
      v24 = vmulq_f32(v23, v23);
      if (sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) <= a3[11])
      {
        v12 += sub_2623A3EA4((a2 + 192), v22, 0.0);
      }

      ++v13;
    }

    while (v11 + 1 != v13);
    v25 = v12;
  }

  v26 = v25 / (v11 + 1);
  if (v26 <= a3[10])
  {
LABEL_16:
    v28 = 0xFFFFFFFFLL;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v27 = vsub_f32(a1[2], a1[3]);
  v28 = ((1.0 - v26) * sqrtf(vaddv_f32(vmul_f32(v27, v27)))) >= a3[17];
  if (v8)
  {
LABEL_17:
    operator delete(v8);
  }

LABEL_18:
  if (v7)
  {
    operator delete(v7);
  }

  return v28;
}

void sub_2622BB700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2622BB734(float32x4_t *a1, float32x4_t *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = *(a5 + 32);
  memset(v49, 0, 24);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  __p = 0;
  v44 = 0;
  v11 = a2[14].f32[1];
  v10 = a2[14].f32[2];
  v45 = 0;
  if (v10 <= v11 || (v12 = v10 + 1.0, v11 >= (v10 + 1.0)))
  {
    v26 = 0;
  }

  else
  {
    v13 = -5 - v9;
    v14 = v9 + 6;
    do
    {
      v15 = a2[14].f32[0];
      v16 = __sincosf_stret((v11 / 180.0) * 3.1416);
      *&v17 = v16.__cosval * v15;
      *(&v17 + 1) = v16.__sinval * v15;
      v18 = a2[13];
      v18.i32[2] = 0;
      v37 = vaddq_f32(v17, v18);
      if (v13 < v14)
      {
        sub_2621CBEC8(1uLL);
      }

      v42 = 0;
      v41 = 0u;
      v40 = MEMORY[0];
      v19 = MEMORY[0];
      sub_2621C8F2C(v49, &v40);
      v39.i32[0] = v19 > *(a5 + 20);
      sub_2621C7CD0(&v46, &v39);
      v20 = a1[13];
      v21 = vsubq_f32(v37, v20);
      v22 = vmulq_f32(v21, v21);
      v22.f32[0] = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
      if (v22.f32[0] < 0.000001)
      {
        v22.f32[0] = 0.000001;
      }

      v23 = vdivq_f32(v21, vdupq_lane_s32(*v22.f32, 0));
      v39 = vmlaq_f32(vmlaq_n_f32(v20, v23, COERCE_FLOAT(*&a1[14])), 0, v23);
      sub_2621D9F60(&__p, &v39);
      v11 = v11 + 1.0;
    }

    while (v11 < v12);
    v26 = v46;
    v25 = v47;
    if (v47 != v46)
    {
      *v46 = 1;
      *(v25 - 1) = 1;
      v27 = v26;
      while (*v27 == 1)
      {
        if (++v27 == v25)
        {
          v38 = a1[13];
          v28 = a1[14].i32[0];
          LODWORD(v24) = v28;
          v29 = sub_2623A3DE4(v38, v24, *__p);
          LODWORD(v30) = v28;
          v31 = sub_2623A3DE4(v38, v30, *(v44 - 16));
          v32 = a1[14].f32[1];
          v33 = v29 + -360.0;
          if (v29 <= v31)
          {
            v33 = v29;
          }

          if (v33 >= 0.0 || v32 <= 0.0 || vabds_f32(v32, v33) <= 180.0)
          {
            if (v33 > 0.0 && v32 < 0.0 && vabds_f32(v32, v33) > 180.0)
            {
              v33 = v33 + -360.0;
            }
          }

          else
          {
            v32 = v32 + -360.0;
          }

          if (v33 < v32)
          {
            v32 = v33;
          }

          v35 = LODWORD(v32) << 32;
          v34 = 1;
          goto LABEL_21;
        }
      }
    }
  }

  v34 = 0;
  v35 = 0;
LABEL_21:
  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (v49[0])
  {
    operator delete(v49[0]);
  }

  return v35 | v34;
}

void sub_2622BBD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32)
{
  if (v34)
  {
    operator delete(v34);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  v37 = *(v35 - 176);
  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void sub_2622BBD94(uint64_t a1, float a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  *(a1 + 228) = a2;
  *(a1 + 232) = a3.n128_u32[0];
  a3.n128_u32[0] = *(a1 + 224);
  v26 = a3;
  v5 = __sincosf_stret((a2 / 180.0) * 3.1416);
  v6.i64[1] = v26.n128_i64[1];
  *v6.f32 = vmul_n_f32(__PAIR64__(LODWORD(v5.__sinval), LODWORD(v5.__cosval)), v26.n128_f32[0]);
  v7 = *(a1 + 208);
  v7.i32[2] = 0;
  v24 = v7;
  v25 = vaddq_f32(v7, v6);
  v10 = __sincosf_stret((v3 / 180.0) * 3.1416);
  v11.i64[1] = v26.n128_i64[1];
  *v11.f32 = vmul_n_f32(__PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval)), v26.n128_f32[0]);
  v12 = vaddq_f32(v24, v11);
  *&v13 = v25.i64[0];
  *(&v13 + 1) = v12.i64[0];
  v14 = v25;
  v15 = v25;
  v14.i32[2] = *(a1 + 64);
  v16 = v12;
  v16.i32[2] = *(a1 + 68);
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  v15.i32[2] = v16.i32[2];
  v12.i32[2] = v14.i32[2];
  *(a1 + 48) = v16;
  v17 = *(a1 + 8);
  src = v15;
  v28 = v16;
  v29 = v12;
  v30 = v14;
  if (v17)
  {
    objc_copyStruct((v17 + 272), &src, 64, 1, 0);
  }

  v18 = *(a1 + 176);
  if (v18)
  {
    *(v18 + 105) = 1;
    *(v18 + 336) = *(a1 + 224);
    *(v18 + 340) = *(a1 + 228);
    *(v18 + 344) = *(a1 + 232);
    *(v18 + 360) = *(a1 + 208);
  }

  objc_msgSend_quad(*(a1 + 8), v8, *&v9, *&v24, *&v25);
  v19 = *(a1 + 176);
  src = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  if (v19)
  {
    objc_copyStruct((v19 + 272), &src, 64, 1, 0);
  }
}

void *sub_2622BBF0C(float *a1, void *a2, __int128 **a3)
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