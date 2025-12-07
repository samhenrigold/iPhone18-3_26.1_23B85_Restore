void sub_22F9C42D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22F9C5604(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);

  sub_22F9C7D28(va, 0);
  _Unwind_Resume(a1);
}

id sub_22F9C6264(_DWORD *a1, double a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102[16] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = *a1;
  v101 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4, a5, a6, a2);
  v102[0] = v101;
  LODWORD(v7) = a1[1];
  v100 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v7);
  v102[1] = v100;
  LODWORD(v12) = a1[2];
  v99 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v15, v16, v12);
  v102[2] = v99;
  LODWORD(v17) = a1[3];
  v98 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20, v21, v17);
  v102[3] = v98;
  LODWORD(v22) = a1[4];
  v97 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v23, v24, v25, v26, v22);
  v102[4] = v97;
  LODWORD(v27) = a1[5];
  v96 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v30, v31, v27);
  v102[5] = v96;
  LODWORD(v32) = a1[6];
  v95 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v33, v34, v35, v36, v32);
  v102[6] = v95;
  LODWORD(v37) = a1[7];
  v42 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v40, v41, v37);
  v102[7] = v42;
  LODWORD(v43) = a1[8];
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
  v102[8] = v48;
  LODWORD(v49) = a1[9];
  v54 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v50, v51, v52, v53, v49);
  v102[9] = v54;
  LODWORD(v55) = a1[10];
  v60 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v56, v57, v58, v59, v55);
  v102[10] = v60;
  LODWORD(v61) = a1[11];
  v66 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v62, v63, v64, v65, v61);
  v102[11] = v66;
  LODWORD(v67) = a1[12];
  v72 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v68, v69, v70, v71, v67);
  v102[12] = v72;
  LODWORD(v73) = a1[13];
  v78 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v74, v75, v76, v77, v73);
  v102[13] = v78;
  LODWORD(v79) = a1[14];
  v84 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v80, v81, v82, v83, v79);
  v102[14] = v84;
  LODWORD(v85) = a1[15];
  v90 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v86, v87, v88, v89, v85);
  v102[15] = v90;
  v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v102, 16, v92);

  return v93;
}

void sub_22F9C7754(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_22F9C7BF8(result, a2 - v2);
  }
}

void sub_22F9C7AEC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22F9C7B48(exception, a1);
  __cxa_throw(exception, off_2788ADAF0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22F9C7B48(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22F9C7B7C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9C7BC4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_22F9C7BF8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_22F9C7AD4();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_22F9C7B7C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

core::ThreadPool *sub_22F9C7D28(core::ThreadPool **a1, core::ThreadPool *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    core::ThreadPool::~ThreadPool(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

void sub_22F9C7D74(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_22F9C8A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

id sub_22F9C8CF0(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v18, 5, v6);
    v11 = objc_msgSend_setWithArray_(v4, v8, v7, v9, v10, v18, v19, v20, v21);

    v13 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v12, v11, v3, a2);
    if (v13 && (objc_opt_self(), v14 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_22F9C8E6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9C8EBC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_22F9C91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(a1);
}

id sub_22F9CAB90(void *a1, uint64_t a2)
{
  v4 = a1;
  if (v4)
  {
    v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v3, v4, 0, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22F9CAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(a1);
}

void sub_22F9CC310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

void sub_22F9CC484(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_22F9CD65C(result, a2 - v2);
  }
}

void sub_22F9CC4B4(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_22F9CD7B8(result, a2 - v2);
  }
}

void sub_22F9CC4E4(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_22F9CD914(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void sub_22F9CD65C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_22F9C7AD4();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22F9CD770(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_22F9CD770(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9CD7B8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22F9C7AD4();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22F9CD8CC(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_22F9CD8CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9CD914(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_22F9C7AD4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22F9CDA88(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_22F9CDA88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9CDD0C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_22F9CE144(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_22F9CF968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_22F9CFFD8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22F9D5CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, FILE *a18, uint64_t a19, uint64_t a20, uint64_t a21, FILE *a22)
{
  fclose(a22);

  fclose(a18);
  _Unwind_Resume(a1);
}

uint64_t sub_22F9D5E28(uint64_t a1)
{
  *a1 = &unk_28449BCF0;
  fclose(*(a1 + 8));
  return a1;
}

void sub_22F9D60CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, FILE *a12)
{
  fclose(a12);

  _Unwind_Resume(a1);
}

void sub_22F9D67C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t *sub_22F9D6D48(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22F9D6DC4(result, a4);
  }

  return result;
}

void sub_22F9D6DA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22F9D6DC4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22F9CD8CC(a1, a2);
  }

  sub_22F9C7AD4();
}

uint64_t *sub_22F9D6E00(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22F9D6F14(a1, a2);
  }

  return a1;
}

void sub_22F9D6EF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22F9D6F14(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_22F9C7B7C(a1, a2);
  }

  sub_22F9C7AD4();
}

uint64_t *sub_22F9D6F50(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22F9D6FF4(a1, a2);
  }

  return a1;
}

void sub_22F9D6FF4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_22F9D7040(a1, a2);
  }

  sub_22F9C7AD4();
}

void sub_22F9D7040(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9D7098(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_22F9D70EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_22F9D70EC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_22F9D7144(uint64_t a1)
{
  *a1 = &unk_28449BCF0;
  fclose(*(a1 + 8));

  JUMPOUT(0x2319050F0);
}

void sub_22F9D8E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

size_t sub_22F9DA018(uint64_t a1, void *__dst, unsigned int a3)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 16) - v4;
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  memcpy(__dst, (*(a1 + 8) + v4), v6);
  *(a1 + 20) += v6;
  return v6;
}

uint64_t sub_22F9DA070(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 20);
  LODWORD(v3) = *(a1 + 16) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v3;
  }

  *(a1 + 20) = v3 + v2;
  return v3;
}

void sub_22F9DB9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  if (v19)
  {
  }

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

void sub_22F9DC140(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

tiled::Processor *sub_22F9DC1C0(tiled::Processor **a1, tiled::Processor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    tiled::Processor::~Processor(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

double initializeMXISwizzle@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_22F9DC57C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9DDA38(uint64_t a1)
{
  *a1 = &unk_28449BD98;
  fclose(*(a1 + 8));
  return a1;
}

void sub_22F9DDC60(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_path(*(a1 + 32), v4, v5, v6, v7);
  v9 = v8;
  v14 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13);
  v18 = &unk_28449BD98;
  v19 = fopen(v14, "wb");

  image::WriteKTX(&v18, *(a1 + 40));
  objc_msgSend_setSignaledValue_(v3, v15, *(a1 + 48), v16, v17, v18);
  v18 = &unk_28449BD98;
  fclose(v19);
}

void sub_22F9DDDA8(uint64_t a1)
{
  *a1 = &unk_28449BD98;
  fclose(*(a1 + 8));

  JUMPOUT(0x2319050F0);
}

id _MXISignpostLogSystem(uint64_t a1)
{
  if (qword_27DAD2778 != -1)
  {
    sub_22F9DDEC4();
  }

  v2 = qword_27DAD2770;

  return v2;
}

uint64_t sub_22F9DDE80()
{
  qword_27DAD2770 = os_log_create("com.apple.mxi", "signpost-persistent");

  return MEMORY[0x2821F96F8]();
}

uint64_t *core::get_info@<X0>(unint64_t *__return_ptr a1@<X8>)
{
  v35 = 0;
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
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *task_info_out = 0u;
  task_info_outCnt = 93;
  v2 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  v3 = *(&v22 + 1) >> 20;
  *a1 = v21 >> 20;
  a1[1] = v3;
  v4 = MEMORY[0x231905320](v2);
  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  task_info_outCnt = 40;
  host_statistics64(v4, 4, v8, &task_info_outCnt);
  v5 = HIDWORD(v8[0]);
  result = getpagesize();
  v7 = ((v10 + HIDWORD(v9)) * result) >> 20;
  a1[2] = (result * v5) >> 20;
  a1[3] = v7;
  return result;
}

void sub_22F9DE03C(_Unwind_Exception *a1)
{
  MEMORY[0x2319050F0](v2, 0x10A0C4019AD96C2);
  sub_22F9DED10(v1, 0);
  _Unwind_Resume(a1);
}

void core::ThreadPool::~ThreadPool(core::ThreadPool *this)
{
  sub_22F9DED10(this, 0);
}

{
  sub_22F9DED10(this, 0);
}

void sub_22F9DE0D8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  sub_22F9DE2E8((a1 + 88), a2);
  std::condition_variable::notify_one((a1 + 144));

  std::mutex::unlock((a1 + 24));
}

uint64_t sub_22F9DE148(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 24);
  while (1)
  {
    v8 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    v3 = *(a1 + 128);
    if (v3)
    {
      sub_22F9DEA70(v7, *(*(a1 + 96) + ((*(a1 + 120) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 120) & 0x7FLL));
      sub_22F9DEB78((a1 + 88));
      atomic_fetch_add((a1 + 136), 1u);
    }

    else
    {
      while (atomic_load((a1 + 136)))
      {
        std::condition_variable::wait((a1 + 192), &__lk);
      }
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v3)
    {
      break;
    }

    if (!v8)
    {
      sub_22F9DEC44();
    }

    (*(*v8 + 48))(v8);
    atomic_fetch_add((a1 + 136), 0xFFFFFFFF);
    sub_22F9DEC90(v7);
  }

  return sub_22F9DEC90(v7);
}

void sub_22F9DE28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_22F9DE97C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22F9DE2E8(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_22F9DE380(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  result = sub_22F9DE9D8(v8, a2);
  ++a1[5];
  return result;
}

void sub_22F9DE380(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_22F9DE990(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_22F9DE554(a1, &v9);
}

void sub_22F9DE508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22F9DE554(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_22F9DE990(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_22F9DE65C(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22F9DE990(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_22F9DE768(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_22F9DE990(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_22F9DE870(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22F9DE990(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_22F9DE990(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

uint64_t sub_22F9DE9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_22F9DEA70(uint64_t a1, uint64_t a2)
{
  sub_22F9DEAF4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_22F9DEAF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_22F9DEB78(int64x2_t *a1)
{
  sub_22F9DEC90(*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_22FA07F00);

  return sub_22F9DEBE4(a1, 1);
}

uint64_t sub_22F9DEBE4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

void sub_22F9DEC44()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_22F9DEC90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_22F9DED10(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_22F9DED5C(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

uint64_t sub_22F9DED5C(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  *(a1 + 240) = 1;
  std::mutex::unlock((a1 + 24));
  std::condition_variable::notify_all((a1 + 144));
  v2 = *a1;
  v3 = *(a1 + 8);
  while (v2 != v3)
  {
    if (v2->__t_)
    {
      std::thread::join(v2);
    }

    ++v2;
  }

  std::condition_variable::~condition_variable((a1 + 192));
  std::condition_variable::~condition_variable((a1 + 144));
  sub_22F9DEE08((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  v5 = a1;
  sub_22F9DEF88(&v5);
  return a1;
}

uint64_t sub_22F9DEE08(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_22F9DEC90(v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_22F9DEF38(a1);
}

uint64_t sub_22F9DEF38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_22F9DEF88(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_22F9DF00C(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 850045863;
  *(a1 + 144) = 1018212795;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1018212795;
  *(a1 + 225) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  if (a2)
  {
    *&v7 = core::ThreadPool::Impl::worker_entry_point;
    *(&v7 + 1) = 0;
    v6 = a1;
    if (*(a1 + 16))
    {
      sub_22F9DF3A8(0, &v7, &v6);
    }

    v2 = -*a1 >> 3;
    if (!((v2 + 1) >> 61))
    {
      v3 = -*a1;
      v4 = v3 >> 2;
      if (v3 >> 2 <= (v2 + 1))
      {
        v4 = v2 + 1;
      }

      if (v3 >= 0x7FFFFFFFFFFFFFF8)
      {
        v5 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4;
      }

      v12 = a1;
      if (v5)
      {
        sub_22F9DE990(a1, v5);
      }

      v8 = 0;
      v9 = 8 * v2;
      v10 = 8 * v2;
      v11 = 0;
      sub_22F9DF3A8((8 * v2), &v7, &v6);
    }

    sub_22F9C7AD4();
  }

  return a1;
}

void sub_22F9DF1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::condition_variable::~condition_variable(v15);
  std::condition_variable::~condition_variable(v14);
  sub_22F9DEE08((v12 + 88));
  std::mutex::~mutex(v13);
  a10 = v12;
  sub_22F9DEF88(&a10);
  _Unwind_Resume(a1);
}

uint64_t core::ThreadPool::Impl::worker_entry_point(core::ThreadPool::Impl *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = (this + 24);
  while (1)
  {
    v7 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    while (1)
    {
      if (*(this + 16))
      {
        sub_22F9DEA70(v6, *(*(this + 12) + ((*(this + 15) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(this + 15) & 0x7FLL));
        sub_22F9DEB78((this + 88));
        v3 = 0;
        atomic_fetch_add(this + 34, 1u);
        goto LABEL_7;
      }

      if (*(this + 240))
      {
        break;
      }

      std::condition_variable::wait(this + 3, &__lk);
    }

    v3 = 1;
LABEL_7:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v3)
    {
      return sub_22F9DEC90(v6);
    }

    if (!v7)
    {
      sub_22F9DEC44();
    }

    (*(*v7 + 48))(v7);
    std::mutex::lock(v2);
    atomic_fetch_add(this + 34, 0xFFFFFFFF);
    std::condition_variable::notify_one(this + 4);
    std::mutex::unlock(v2);
    sub_22F9DEC90(v6);
  }
}

void sub_22F9DF35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  sub_22F9DEC90(&a13);
  _Unwind_Resume(a1);
}

void sub_22F9DF48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22F9DF598(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22F9DF4C4(const void **a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  sub_22F9DF550(&v8);
  return 0;
}

void sub_22F9DF53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22F9DF550(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_22F9DF550(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_22F9DF598(v2);
    MEMORY[0x2319050F0](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *sub_22F9DF598(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x231905000]();
    MEMORY[0x2319050F0](v3, 0x20C4093837F09);
  }

  return a1;
}

std::thread *sub_22F9DF5E0(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_22F9DF688(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id _mxi_log(uint64_t a1)
{
  if (qword_27DAD2788 != -1)
  {
    sub_22F9DFAAC();
  }

  v2 = qword_27DAD2780;

  return v2;
}

uint64_t sub_22F9DFA68()
{
  qword_27DAD2780 = os_log_create("com.apple.mxi", "log");

  return MEMORY[0x2821F96F8]();
}

void sub_22F9DFAF8(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = fopen(a2, "rb");
  v11 = v8;
  if (v8)
  {
    v12 = _mxi_log(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = a2;
      _os_log_impl(&dword_22F9C3000, v12, OS_LOG_TYPE_DEFAULT, "[Core] Opened file %s as a file stream", buf, 0xCu);
    }

    sub_22F9DFE08(v7, v11, a3, a4);
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v9, a3, @"Failed opening file '%s'.", v10, a2);
    *a4 = 0;
  }
}

void sub_22F9DFC30(void *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = fmemopen(a2, a3, "rb");
  v13 = v10;
  if (v10)
  {
    v14 = _mxi_log(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = a2;
      _os_log_impl(&dword_22F9C3000, v14, OS_LOG_TYPE_DEFAULT, "[Core] Opened data buffer %p as a file stream", buf, 0xCu);
    }

    sub_22F9DFE08(v9, v13, a4, buf);
    *a5 = buf[0];
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v11, a4, @"Failed opening data buffer '%p' as stream", v12, a2);
    *a5 = 0;
  }
}

uint64_t *core::Writer::Create@<X0>(const char *a1@<X0>, void *a2@<X8>, const char *a3@<X1>)
{
  v5 = fopen(a1, "wb");
  result = sub_22F9E2434(&v8, v5, a3, v6);
  *a2 = v8;
  return result;
}

uint64_t *core::Writer::Create@<X0>(char **a1@<X0>, size_t *a2@<X1>, void *a3@<X8>, const char *a4@<X2>)
{
  v6 = open_memstream(a1, a2);
  result = sub_22F9E2434(&v9, v6, a4, v7);
  *a3 = v9;
  return result;
}

void sub_22F9DFE08(void *a1@<X0>, FILE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  __ptr = 0;
  if (fread(&__ptr, 4uLL, 1uLL, a2) == 1)
  {
    if (__ptr == 1128810068)
    {
      operator new();
    }

    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Unrecognized format.", v9);
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed reading signature.", v9);
  }

  *a4 = 0;
}

void sub_22F9E0070(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

void sub_22F9E00C0(uint64_t a1)
{
  sub_22F9E1948(a1);

  JUMPOUT(0x2319050F0);
}

uint64_t sub_22F9E00F8(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v14 = a2;
  result = sub_22F9E19EC((a1 + 24), &v14);
  if (result)
  {
    if (fseek(*(a1 + 16), *(result + 24), 0))
    {
      byte_27DAD2790 = HIBYTE(v14);
      byte_27DAD2791 = BYTE2(v14);
      byte_27DAD2792 = BYTE1(v14);
      byte_27DAD2793 = v14;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a4, @"Failed seeking to data chunk '%s'.", v9, &byte_27DAD2790);
      return 0;
    }

    if (fread(__ptr, 0x10uLL, 1uLL, *(a1 + 16)) != 1)
    {
      byte_27DAD2790 = HIBYTE(v14);
      byte_27DAD2791 = BYTE2(v14);
      byte_27DAD2792 = BYTE1(v14);
      byte_27DAD2793 = v14;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a4, @"Failed reading chunk info for data with key '%s'.", v11, &byte_27DAD2790);
      return 0;
    }

    if (__ptr[8])
    {
      return 0;
    }

    if (a3)
    {
      *a3 = v13;
    }

    return 1;
  }

  return result;
}

uint64_t *sub_22F9E0224(uint64_t a1, int a2, uint64_t a3)
{
  v13 = a2;
  result = sub_22F9E19EC((a1 + 24), &v13);
  if (result)
  {
    if (*(a1 + 8))
    {
      if (fseek(*(a1 + 16), result[3], 0))
      {
        byte_27DAD2790 = HIBYTE(v13);
        byte_27DAD2791 = BYTE2(v13);
        byte_27DAD2792 = BYTE1(v13);
        byte_27DAD2793 = v13;
        byte_27DAD2794 = 0;
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to texture chunk '%s'.", v9, &byte_27DAD2790);
      }

      else
      {
        if (fread(__ptr, 0x20uLL, 1uLL, *(a1 + 16)) == 1)
        {
          return (__ptr[8] == 1);
        }

        byte_27DAD2790 = HIBYTE(v13);
        byte_27DAD2791 = BYTE2(v13);
        byte_27DAD2792 = BYTE1(v13);
        byte_27DAD2793 = v13;
        byte_27DAD2794 = 0;
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for texture with key '%s'.", v11, &byte_27DAD2790);
      }
    }

    else
    {
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Can't read textures without a valid MTLDevice", v7);
    }

    return 0;
  }

  return result;
}

id sub_22F9E0354(uint64_t a1, int a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_22F9E19EC((a1 + 24), &v32);
  if (!v5)
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Key '%s' not found", v7, &byte_27DAD2790);
    goto LABEL_9;
  }

  if (fseek(*(a1 + 16), v5[3], 0))
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to data chunk '%s'.", v9, &byte_27DAD2790);
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (fread(__ptr, 0x10uLL, 1uLL, *(a1 + 16)) != 1)
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for data with key '%s'.", v12, &byte_27DAD2790);
    goto LABEL_9;
  }

  if (v29)
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Value for key '%s' is not of data type", v12, &byte_27DAD2790);
    goto LABEL_9;
  }

  v15 = v28;
  v13 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v10, v31, v11, v12);
  v16 = v13;
  v21 = objc_msgSend_mutableBytes(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_length(v13, v22, v23, v24, v25);
  sub_22F9E1AA0(a1, v21, v26, v15 - 4, v30, a3);
LABEL_10:

  return v13;
}

BOOL sub_22F9E056C(uint64_t a1, int a2, uint8_t *a3, size_t a4, uint64_t a5)
{
  v21 = a2;
  v9 = sub_22F9E19EC((a1 + 24), &v21);
  if (v9)
  {
    if (fseek(*(a1 + 16), v9[3], 0))
    {
      byte_27DAD2790 = HIBYTE(v21);
      byte_27DAD2791 = BYTE2(v21);
      byte_27DAD2792 = BYTE1(v21);
      byte_27DAD2793 = v21;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v12, a5, @"Failed seeking to data chunk '%s'.", v13, &byte_27DAD2790);
    }

    else if (fread(__ptr, 0x10uLL, 1uLL, *(a1 + 16)) == 1)
    {
      if (!v19)
      {
        return sub_22F9E1AA0(a1, a3, a4, v18 - 4, v20, a5);
      }

      byte_27DAD2790 = HIBYTE(v21);
      byte_27DAD2791 = BYTE2(v21);
      byte_27DAD2792 = BYTE1(v21);
      byte_27DAD2793 = v21;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v14, a5, @"Value for key '%s' is not of data type", v15, &byte_27DAD2790);
    }

    else
    {
      byte_27DAD2790 = HIBYTE(v21);
      byte_27DAD2791 = BYTE2(v21);
      byte_27DAD2792 = BYTE1(v21);
      byte_27DAD2793 = v21;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v14, a5, @"Failed reading chunk info for data with key '%s'.", v15, &byte_27DAD2790);
    }
  }

  else
  {
    byte_27DAD2790 = HIBYTE(v21);
    byte_27DAD2791 = BYTE2(v21);
    byte_27DAD2792 = BYTE1(v21);
    byte_27DAD2793 = v21;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a5, @"Key '%s' not found", v11, &byte_27DAD2790);
  }

  return 0;
}

id sub_22F9E0734(uint64_t a1, int a2, void *a3)
{
  v153 = a2;
  v5 = sub_22F9E19EC((a1 + 24), &v153);
  if (!v5)
  {
    byte_27DAD2790 = HIBYTE(v153);
    byte_27DAD2791 = BYTE2(v153);
    byte_27DAD2792 = BYTE1(v153);
    byte_27DAD2793 = v153;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Key '%s' not found", v7, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (!*(a1 + 8))
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Can't read textures without a valid MTLDevice", v7);
    goto LABEL_15;
  }

  if (fseek(*(a1 + 16), v5[3], 0))
  {
    byte_27DAD2790 = HIBYTE(v153);
    byte_27DAD2791 = BYTE2(v153);
    byte_27DAD2792 = BYTE1(v153);
    byte_27DAD2793 = v153;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to texture chunk '%s'.", v9, &byte_27DAD2790);
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (fread(__ptr, 0x20uLL, 1uLL, *(a1 + 16)) != 1)
  {
    byte_27DAD2790 = HIBYTE(v153);
    byte_27DAD2791 = BYTE2(v153);
    byte_27DAD2792 = BYTE1(v153);
    byte_27DAD2793 = v153;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for texture with key '%s'.", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (__ptr[8] != 1)
  {
    byte_27DAD2790 = HIBYTE(v153);
    byte_27DAD2791 = BYTE2(v153);
    byte_27DAD2792 = BYTE1(v153);
    byte_27DAD2793 = v153;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Value for key '%s' is not of texture type", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  v12 = v148;
  v13 = &dword_22FA07F68;
  v14 = 36;
  v121 = a3;
  while (*(v13 - 1) != v148)
  {
    v13 += 4;
    if (!--v14)
    {
      v15 = 0;
      v12 = 0;
      goto LABEL_20;
    }
  }

  v15 = *v13;
LABEL_20:
  v18 = v151;
  v128 = v152;
  sub_22F9E1D68(&v145, v152 * v151 + 1);
  v133 = a1;
  fread(v145, 4uLL, (v146 - v145) >> 2, *(a1 + 16));
  v19 = objc_opt_new();
  v23 = v19;
  if (v18)
  {
    objc_msgSend_setTextureType_(v19, v20, 3, v21, v22);
  }

  else
  {
    objc_msgSend_setTextureType_(v19, v20, 2, v21, v22);
  }

  v27 = v149;
  objc_msgSend_setWidth_(v23, v24, v149, v25, v26);
  v28 = v150;
  objc_msgSend_setHeight_(v23, v29, v150, v30, v31);
  objc_msgSend_setArrayLength_(v23, v32, v18, v33, v34);
  objc_msgSend_setMipmapLevelCount_(v23, v35, v128, v36, v37);
  objc_msgSend_setPixelFormat_(v23, v38, v12, v39, v40);
  objc_msgSend_setStorageMode_(v23, v41, 2, v42, v43);
  v129 = objc_msgSend_newSharedTextureWithDescriptor_(*(a1 + 8), v44, v23, v45, v46);
  if (v129)
  {
    context = objc_autoreleasePoolPush();
    v55 = objc_msgSend_newCommandQueue(*(a1 + 8), v49, v50, v51, v52);
    if (v55)
    {
      v126 = v15 - 1;
      v127 = v15;
      v124 = BYTE1(v15) - 1;
      v125 = BYTE1(v15);
      v123 = BYTE2(v15);
      v122 = (v126 + v27) / v15 * BYTE2(v15) * ((v124 + v28) / BYTE1(v15));
      v119 = v23;
      v135 = objc_msgSend_newBufferWithLength_options_(*(a1 + 8), v53, v122, 0, v54);
      if (!v135)
      {
        v115 = _mxi_log(0);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v115, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:700] Failed creating MTLBuffer.", buf, 2u);
        }

        v143 = 0;
        objc_msgSend_fillError_withDescription_(MXIInternalError, v116, &v143, @"Failed creating MTLBuffer.", v117);
        v77 = v143;
        goto LABEL_57;
      }

      if (!v128)
      {
        v77 = 0;
        goto LABEL_57;
      }

      v134 = 0;
      while (1)
      {
        v60 = v149 >> v134;
        v61 = v150 >> v134;
        v62 = (v126 + v60) / v127 * v123;
        v63 = v62 * ((v124 + v61) / v125);
        if (v63 > v122)
        {
          __assert_rtn("ReadTexture", "CoreSerialization.mm", 712, "slice_size <= mip0_slice_size");
        }

        if (!v151)
        {
          v77 = 0;
          goto LABEL_46;
        }

        v64 = 0;
        v65 = 0;
        v131 = __ptr[9];
        v130 = v151;
        v132 = v151 * v134;
        while (1)
        {
          v66 = v55;
          v67 = objc_msgSend_commandBuffer(v55, v56, v57, v58, v59);
          if (!v67)
          {
            v101 = _mxi_log(0);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22F9C3000, v101, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:716] Failed creating MTLCommandBuffer.", buf, 2u);
            }

            v142 = v65;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v102, &v142, @"Failed creating MTLCommandBuffer.", v103);
            v104 = v142;
            v77 = v65;
            goto LABEL_41;
          }

          v68 = *(v145 + (v132 + v64 + 1));
          v69 = *(v145 + (v132 + v64));
          v70 = v135;
          v75 = objc_msgSend_contents(v70, v71, v72, v73, v74);
          v141 = v65;
          v76 = sub_22F9E1AA0(v133, v75, v63, v68 - v69, v131, &v141);
          v77 = v141;

          if (!v76)
          {
            v136 = v77;
            byte_27DAD2790 = HIBYTE(v153);
            byte_27DAD2791 = BYTE2(v153);
            byte_27DAD2792 = BYTE1(v153);
            byte_27DAD2793 = v153;
            byte_27DAD2794 = 0;
            objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v78, &v136, @"Failed reading slice: %d, mip: %d for key: %s", v81, v64, v134, &byte_27DAD2790);
            v104 = v136;
LABEL_41:
            v105 = v104;
            goto LABEL_45;
          }

          v82 = objc_msgSend_blitCommandEncoder(v67, v78, v79, v80, v81);
          *buf = v60;
          v139 = v61;
          v140 = 1;
          memset(v137, 0, sizeof(v137));
          objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v82, v83, v135, 0, v62, v63, buf, v129, v64, v134, v137);
          objc_msgSend_endEncoding(v82, v84, v85, v86, v87);

          objc_msgSend_commit(v67, v88, v89, v90, v91);
          objc_msgSend_waitUntilCompleted(v67, v92, v93, v94, v95);
          v100 = objc_msgSend_status(v67, v96, v97, v98, v99);
          if (v100 != 4)
          {
            break;
          }

          ++v64;
          v65 = v77;
          v55 = v66;
          if (v130 == v64)
          {
            goto LABEL_46;
          }
        }

        v106 = _mxi_log(v100);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v106, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:742] MTLCommandBuffer failed", buf, 2u);
        }

        v105 = objc_msgSend_error(v67, v107, v108, v109, v110);
LABEL_45:
        v111 = v105;

        v77 = v111;
        v55 = v66;
LABEL_46:
        if (++v134 >= v128 || v77)
        {
LABEL_57:

          v23 = v119;
          goto LABEL_58;
        }
      }
    }

    v112 = _mxi_log(0);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v112, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:691] Failed creating MTLCommandQueue.", buf, 2u);
    }

    v144 = 0;
    objc_msgSend_fillError_withDescription_(MXIInternalError, v113, &v144, @"Failed creating MTLCommandQueue.", v114);
    v77 = v144;
LABEL_58:

    objc_autoreleasePoolPop(context);
    if (v77)
    {
      if (v121)
      {
        v118 = v77;
        v16 = 0;
        *v121 = v77;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = v129;
    }
  }

  else
  {
    byte_27DAD2790 = HIBYTE(v153);
    byte_27DAD2791 = BYTE2(v153);
    byte_27DAD2792 = BYTE1(v153);
    byte_27DAD2793 = v153;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v47, v121, @"Failed creating texture for key: %s", v48, &byte_27DAD2790);
    v16 = 0;
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

LABEL_16:

  return v16;
}

void sub_22F9E0F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  v29 = *(v27 - 152);
  if (v29)
  {
    *(v27 - 144) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

id sub_22F9E101C(uint64_t a1, int a2, void *a3)
{
  v158 = a2;
  v5 = sub_22F9E19EC((a1 + 24), &v158);
  if (!v5)
  {
    byte_27DAD2790 = HIBYTE(v158);
    byte_27DAD2791 = BYTE2(v158);
    byte_27DAD2792 = BYTE1(v158);
    byte_27DAD2793 = v158;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Key '%s' not found", v7, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (!*(a1 + 8))
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Can't read textures without a valid MTLDevice", v7);
    goto LABEL_15;
  }

  if (fseek(*(a1 + 16), v5[3], 0))
  {
    byte_27DAD2790 = HIBYTE(v158);
    byte_27DAD2791 = BYTE2(v158);
    byte_27DAD2792 = BYTE1(v158);
    byte_27DAD2793 = v158;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to texture chunk '%s'.", v9, &byte_27DAD2790);
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (fread(__ptr, 0x20uLL, 1uLL, *(a1 + 16)) != 1)
  {
    byte_27DAD2790 = HIBYTE(v158);
    byte_27DAD2791 = BYTE2(v158);
    byte_27DAD2792 = BYTE1(v158);
    byte_27DAD2793 = v158;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for texture with key '%s'.", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (__ptr[8] != 1)
  {
    byte_27DAD2790 = HIBYTE(v158);
    byte_27DAD2791 = BYTE2(v158);
    byte_27DAD2792 = BYTE1(v158);
    byte_27DAD2793 = v158;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Value for key '%s' is not of texture type", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  v12 = v153;
  v13 = &dword_22FA07F68;
  v14 = 36;
  while (*(v13 - 1) != v153)
  {
    v13 += 4;
    if (!--v14)
    {
      v15 = 0;
      v12 = 0;
      goto LABEL_20;
    }
  }

  v15 = *v13;
LABEL_20:
  v125 = a3;
  v18 = v156;
  v132 = v157;
  sub_22F9E1D68(&v150, v157 * v156 + 1);
  fread(v150, 4uLL, (v151 - v150) >> 2, *(a1 + 16));
  sub_22F9E1EA4(v149, v18);
  v133 = objc_opt_new();
  objc_msgSend_setTextureType_(v133, v19, 2, v20, v21);
  v22 = v154;
  objc_msgSend_setWidth_(v133, v23, v154, v24, v25);
  v26 = v155;
  objc_msgSend_setHeight_(v133, v27, v155, v28, v29);
  objc_msgSend_setArrayLength_(v133, v30, 1, v31, v32);
  objc_msgSend_setMipmapLevelCount_(v133, v33, v132, v34, v35);
  objc_msgSend_setPixelFormat_(v133, v36, v12, v37, v38);
  if (v18)
  {
    v42 = 0;
    while (1)
    {
      objc_msgSend_setStorageMode_(v133, v39, 2, v40, v41);
      v46 = objc_msgSend_newSharedTextureWithDescriptor_(*(a1 + 8), v43, v133, v44, v45);
      if (!v46)
      {
        break;
      }

      v49 = *(v149[0] + v42);
      *(v149[0] + v42) = v46;

      v42 += 8;
      if (8 * v18 == v42)
      {
        goto LABEL_24;
      }
    }

    byte_27DAD2790 = HIBYTE(v158);
    byte_27DAD2791 = BYTE2(v158);
    byte_27DAD2792 = BYTE1(v158);
    byte_27DAD2793 = v158;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v47, v125, @"Failed creating texture for key: %s", v48, &byte_27DAD2790);
    v16 = 0;
  }

  else
  {
LABEL_24:
    v50 = objc_autoreleasePoolPush();
    v134 = a1;
    v57 = objc_msgSend_newCommandQueue(*(a1 + 8), v51, v52, v53, v54);
    context = v50;
    if (v57)
    {
      v130 = v15 - 1;
      v131 = v15;
      v128 = BYTE1(v15) - 1;
      v129 = BYTE1(v15);
      v127 = BYTE2(v15);
      v126 = (v130 + v22) / v15 * BYTE2(v15) * ((v128 + v26) / BYTE1(v15));
      v139 = objc_msgSend_newBufferWithLength_options_(*(a1 + 8), v55, v126, 0, v56);
      if (!v139)
      {
        v118 = _mxi_log(0);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v118, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:826] Failed creating MTLBuffer.", buf, 2u);
        }

        v147 = 0;
        objc_msgSend_fillError_withDescription_(MXIInternalError, v119, &v147, @"Failed creating MTLBuffer.", v120);
        v79 = v147;
        goto LABEL_57;
      }

      if (!v132)
      {
        v79 = 0;
        goto LABEL_57;
      }

      v138 = 0;
      while (1)
      {
        v62 = v155 >> v138;
        v137 = v154 >> v138;
        v63 = (v130 + v137) / v131 * v127;
        v64 = v63 * ((v128 + v62) / v129);
        if (v64 > v126)
        {
          __assert_rtn("ReadArrayTexture", "CoreSerialization.mm", 838, "slice_size <= mip0_slice_size");
        }

        v65 = v156;
        if (!v156)
        {
          v79 = 0;
          goto LABEL_46;
        }

        v66 = 0;
        v67 = 0;
        v135 = __ptr[9];
        v136 = v156 * v138;
        while (1)
        {
          v68 = v57;
          v69 = objc_msgSend_commandBuffer(v57, v58, v59, v60, v61);
          if (!v69)
          {
            v104 = _mxi_log(0);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22F9C3000, v104, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:842] Failed creating MTLCommandBuffer.", buf, 2u);
            }

            v146 = v67;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v105, &v146, @"Failed creating MTLCommandBuffer.", v106);
            v107 = v146;
            v79 = v67;
            goto LABEL_41;
          }

          v70 = *(v150 + (v136 + v66 + 1));
          v71 = *(v150 + (v136 + v66));
          v72 = v139;
          v77 = objc_msgSend_contents(v72, v73, v74, v75, v76);
          v145 = v67;
          v78 = sub_22F9E1AA0(v134, v77, v64, v70 - v71, v135, &v145);
          v79 = v145;

          if (!v78)
          {
            v140 = v79;
            byte_27DAD2790 = HIBYTE(v158);
            byte_27DAD2791 = BYTE2(v158);
            byte_27DAD2792 = BYTE1(v158);
            byte_27DAD2793 = v158;
            byte_27DAD2794 = 0;
            objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v80, &v140, @"Failed reading slice: %d, mip: %d for key: %s", v83, v66, v138, &byte_27DAD2790);
            v107 = v140;
LABEL_41:
            v108 = v107;
            goto LABEL_45;
          }

          v84 = objc_msgSend_blitCommandEncoder(v69, v80, v81, v82, v83);
          *buf = v137;
          v143 = v62;
          v144 = 1;
          v85 = *(v149[0] + 8 * v66);
          memset(v141, 0, sizeof(v141));
          objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v84, v86, v139, 0, v63, v64, buf, v85, 0, v138, v141);
          objc_msgSend_endEncoding(v84, v87, v88, v89, v90);

          objc_msgSend_commit(v69, v91, v92, v93, v94);
          objc_msgSend_waitUntilCompleted(v69, v95, v96, v97, v98);
          v103 = objc_msgSend_status(v69, v99, v100, v101, v102);
          if (v103 != 4)
          {
            break;
          }

          ++v66;
          v67 = v79;
          v57 = v68;
          if (v65 == v66)
          {
            goto LABEL_46;
          }
        }

        v109 = _mxi_log(v103);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v109, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:868] MTLCommandBuffer failed", buf, 2u);
        }

        v108 = objc_msgSend_error(v69, v110, v111, v112, v113);
LABEL_45:
        v114 = v108;

        v79 = v114;
        v57 = v68;
LABEL_46:
        if (++v138 >= v132 || v79)
        {
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    v115 = _mxi_log(0);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v115, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:817] Failed creating MTLCommandQueue.", buf, 2u);
    }

    v148 = 0;
    objc_msgSend_fillError_withDescription_(MXIInternalError, v116, &v148, @"Failed creating MTLCommandQueue.", v117);
    v79 = v148;
LABEL_58:

    objc_autoreleasePoolPop(context);
    if (v79)
    {
      if (v125)
      {
        v123 = v79;
        v16 = 0;
        *v125 = v79;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v121, v149[0], (v149[1] - v149[0]) >> 3, v122);
    }
  }

  *buf = v149;
  sub_22F9DC140(buf);
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

LABEL_16:

  return v16;
}

void sub_22F9E1864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  *(v27 - 96) = v27 - 184;
  sub_22F9DC140((v27 - 96));
  v29 = *(v27 - 160);
  if (v29)
  {
    *(v27 - 152) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22F9E1948(uint64_t a1)
{
  *a1 = &unk_28449BE18;
  fclose(*(a1 + 16));
  sub_22F9E19A0(a1 + 24);

  return a1;
}

uint64_t sub_22F9E19A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_22F9E19EC(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_22F9E1AA0(uint64_t a1, uint8_t *__ptr, size_t __nitems, unsigned int a4, int a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!__nitems)
  {
    return 1;
  }

  if (a5 != 4)
  {
    v13 = dword_22FA07F3C[a5];
    v14 = compression_decode_scratch_buffer_size(v13);
    sub_22F9E1D68(v32, v14);
    sub_22F9E1DE0(&__p, 0x100000);
    LODWORD(v15) = compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, v13);
    if (v15)
    {
      objc_msgSend_fillError_withDescription_(MXIInternalError, v16, a6, @"Failed initializing compression stream.", v17);
    }

    else
    {
      stream.src_ptr = __p;
      stream.src_size = 0;
      stream.dst_ptr = __ptr;
      stream.dst_size = __nitems;
      v18 = a4;
      while (!v15)
      {
        if (v31 - __p >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = (v31 - __p);
        }

        v20 = fread(__p, 1uLL, v19, *(a1 + 16));
        stream.src_ptr = __p;
        stream.src_size = v20;
        v15 = compression_stream_process(&stream, v20 == 0);
        v18 -= v20;
        if (v15 == -1)
        {
          dst_size = stream.dst_size;
          v22 = _mxi_log(v15);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109888;
            v34 = a4;
            v35 = 1024;
            v36 = a4 - v18;
            v37 = 1024;
            v38 = __nitems;
            v39 = 1024;
            v40 = __nitems - dst_size;
            _os_log_impl(&dword_22F9C3000, v22, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:513] Error while reading from compression stream. (source length: %d, read source length: %d, dest length: %d, written dest length: %d)", buf, 0x1Au);
          }

          objc_msgSend_fillError_withDescription_(MXIInternalError, v23, a6, @"Error while reading from compression stream.", v24);
          goto LABEL_20;
        }
      }

      if (compression_stream_destroy(&stream) != COMPRESSION_STATUS_ERROR)
      {
        v27 = 1;
        goto LABEL_21;
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v25, a6, @"Error releasing compression stream.", v26);
    }

LABEL_20:
    v27 = 0;
LABEL_21:
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    return (v27 & 1) != 0;
  }

  if (__nitems != a4)
  {
    sub_22F9E3920();
  }

  if (fread(__ptr, 1uLL, __nitems, *(a1 + 16)) == __nitems)
  {
    return 1;
  }

  objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v11, a6, @"Failed reading %d extected bytes.", v12, __nitems);
  return 0;
}

void sub_22F9E1D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22F9E1D68(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22F9D6F14(a1, a2);
  }

  return a1;
}

void sub_22F9E1DC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22F9E1DE0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22F9E1E54(a1, a2);
  }

  return a1;
}

void sub_22F9E1E38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22F9E1E54(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_22F9C7AD4();
}

uint64_t *sub_22F9E1EA4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22F9E1F24(a1, a2);
  }

  return a1;
}

void sub_22F9E1F24(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22F9E1F60(a1, a2);
  }

  sub_22F9C7AD4();
}

void sub_22F9E1F60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

uint64_t *sub_22F9E1FA8(float *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22F9E21E0(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_22F9E22D0(result, prime);
    }
  }
}

void sub_22F9E22D0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22F9C7BC4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_22F9E2434@<X0>(uint64_t *__return_ptr a1@<X8>, FILE *__stream@<X0>, const char *a3@<X1>, uint64_t a4@<X4>)
{
  __ptr[1] = *MEMORY[0x277D85DE8];
  if (__stream)
  {
    __ptr[0] = 0x143484654;
    if (fwrite(__ptr, 4uLL, 2uLL, __stream) == 2)
    {
      operator new();
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v6, a3, @"Failed writing signature and version.", v7);
    result = 0;
    *a1 = 0;
  }

  else
  {
    result = objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, a3, a3, @"Failed on creating file pointer '%p'.", a4, 0);
    *a1 = 0;
  }

  return result;
}

uint64_t sub_22F9E2550(uint64_t a1)
{
  *a1 = &unk_28449BE90;
  fclose(*(a1 + 32));
  sub_22F9E33CC(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_22F9E25A4(uint64_t a1)
{
  *a1 = &unk_28449BE90;
  fclose(*(a1 + 32));
  sub_22F9E33CC(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2319050F0);
}

uint64_t sub_22F9E2618(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = v9;
  v15 = objc_msgSend_bytes(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_length(v9, v16, v17, v18, v19);
  v21 = (*(*a1 + 24))(a1, a2, v15, v20, a4, a5);

  return v21;
}

uint64_t sub_22F9E26C8(uint64_t a1, const char *a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v33 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 16;
    do
    {
      v13 = *(v11 + 28);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 != a1 + 16 && *(v12 + 28) <= a2)
    {
      byte_27DAD2790 = BYTE3(a2);
      byte_27DAD2791 = BYTE2(a2);
      byte_27DAD2792 = BYTE1(a2);
      byte_27DAD2793 = a2;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, a2, a6, @"Key '%s' already exists in the file.", a5, &byte_27DAD2790);
      return 0;
    }
  }

  sub_22F9E3660(a1 + 8, &v33, &v33);
  __ptr = v33;
  v28 = a4 + 4;
  v29 = 0;
  v30 = v7;
  v31 = 0;
  v32 = a4;
  v16 = MEMORY[0x2319052B0](*(a1 + 32));
  if (fwrite(&__ptr, 0x10uLL, 1uLL, *(a1 + 32)) != 1)
  {
LABEL_17:
    byte_27DAD2790 = HIBYTE(v33);
    byte_27DAD2791 = BYTE2(v33);
    byte_27DAD2792 = BYTE1(v33);
    byte_27DAD2793 = v33;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v17, a6, @"Failed writing chunk info for data with key '%s'.", v18, &byte_27DAD2790);
    return 0;
  }

  v26 = 0;
  v19 = sub_22F9E3420(a1, a3, &v26, a4, v7, a6);
  result = 0;
  if (!v19)
  {
    return result;
  }

  v28 = v26 + 4;
  v21 = MEMORY[0x2319052B0](*(a1 + 32));
  if (!fseek(*(a1 + 32), v16, 0))
  {
    if (fwrite(&__ptr, 0x10uLL, 1uLL, *(a1 + 32)) == 1)
    {
      if (!fseek(*(a1 + 32), v21, 0))
      {
        return 1;
      }

      byte_27DAD2790 = HIBYTE(v33);
      byte_27DAD2791 = BYTE2(v33);
      byte_27DAD2792 = BYTE1(v33);
      byte_27DAD2793 = v33;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v24, a6, @"Failed seeking to the end of the file after writing data with key '%s'.", v25, &byte_27DAD2790);
      return 0;
    }

    goto LABEL_17;
  }

  byte_27DAD2790 = HIBYTE(v33);
  byte_27DAD2791 = BYTE2(v33);
  byte_27DAD2792 = BYTE1(v33);
  byte_27DAD2793 = v33;
  byte_27DAD2794 = 0;
  objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v22, a6, @"Failed updating chunk info for data with key '%s'.", v23, &byte_27DAD2790);
  return 0;
}

uint64_t sub_22F9E2948(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v14 = objc_opt_new();
  for (i = 0; objc_msgSend_arrayLength(v9, v10, v11, v12, v13) > i; ++i)
  {
    v20 = objc_msgSend_pixelFormat(v9, v16, v17, v18, v19);
    v25 = objc_msgSend_mipmapLevelCount(v9, v21, v22, v23, v24);
    v27 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v9, v26, v20, 2, 0, v25, i, 1);
    objc_msgSend_addObject_(v14, v28, v27, v29, v30);
  }

  v31 = (*(*a1 + 40))(a1, a2, v14, a4, a5);

  return v31;
}

uint64_t sub_22F9E2A80(uint64_t a1, unsigned int a2, void *a3, int a4, void *a5)
{
  v194[0] = a2;
  v8 = a3;
  if (!objc_msgSend_count(v8, v9, v10, v11, v12))
  {
    v32 = @"Null texture for key '%s'.";
LABEL_38:
    byte_27DAD2790 = HIBYTE(a2);
    byte_27DAD2791 = BYTE2(a2);
    byte_27DAD2792 = BYTE1(a2);
    byte_27DAD2793 = a2;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v13, a5, v32, v14, &byte_27DAD2790);
    v139 = 0;
    goto LABEL_70;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 16;
    do
    {
      v17 = *(v15 + 28);
      v18 = v17 >= a2;
      v19 = v17 < a2;
      if (v18)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v16 != a1 + 16 && *(v16 + 28) <= a2)
    {
      v32 = @"Key '%s' already exists in the file.";
      goto LABEL_38;
    }
  }

  sub_22F9E3660(a1 + 8, v194, v194);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v8, v20, 0, v21, v22);
  v28 = objc_msgSend_pixelFormat(v23, v24, v25, v26, v27);
  v29 = &dword_22FA07F68;
  v30 = 36;
  while (*(v29 - 1) != v28)
  {
    v29 += 4;
    if (!--v30)
    {
      v31 = 0;
      goto LABEL_16;
    }
  }

  v31 = *v29;
LABEL_16:

  __ptr = v194[0];
  v185 = 0;
  v186 = 1;
  v187 = a4;
  v188 = 0;
  v36 = objc_msgSend_objectAtIndexedSubscript_(v8, v33, 0, v34, v35);
  v189 = objc_msgSend_pixelFormat(v36, v37, v38, v39, v40);
  v44 = objc_msgSend_objectAtIndexedSubscript_(v8, v41, 0, v42, v43);
  v190 = objc_msgSend_width(v44, v45, v46, v47, v48);
  v52 = objc_msgSend_objectAtIndexedSubscript_(v8, v49, 0, v50, v51);
  v191 = objc_msgSend_height(v52, v53, v54, v55, v56);
  v192 = objc_msgSend_count(v8, v57, v58, v59, v60);
  v64 = objc_msgSend_objectAtIndexedSubscript_(v8, v61, 0, v62, v63);
  v193 = objc_msgSend_mipmapLevelCount(v64, v65, v66, v67, v68);

  sub_22F9E1D68(&v182, v193 * v192 + 1);
  v69 = MEMORY[0x2319052B0](*(a1 + 32));
  if (fwrite(&__ptr, 0x20uLL, 1uLL, *(a1 + 32)) != 1)
  {
    v138 = @"Failed writing chunk info for texture with key '%s'.";
LABEL_36:
    byte_27DAD2790 = HIBYTE(v194[0]);
    byte_27DAD2791 = BYTE2(v194[0]);
    byte_27DAD2792 = BYTE1(v194[0]);
    byte_27DAD2793 = v194[0];
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v70, a5, v138, v71, &byte_27DAD2790);
    v139 = 0;
    goto LABEL_68;
  }

  v72 = fwrite(v182, 4uLL, (v183 - v182) >> 2, *(a1 + 32));
  if (v72 != (v183 - v182) >> 2)
  {
    v138 = @"Failed writing surface offsets for texture with key '%s'.";
    goto LABEL_36;
  }

  v74 = objc_msgSend_objectAtIndexedSubscript_(v8, v70, 0, v73, v71);
  v79 = objc_msgSend_device(v74, v75, v76, v77, v78);

  v167 = v79;
  v168 = objc_msgSend_newCommandQueue(v79, v80, v81, v82, v83);
  if (!v168)
  {
    v140 = _mxi_log(0);
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v140, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:306] Failed creating MTLCommandQueue.", buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v141, a5, @"Failed creating MTLCommandQueue.", v142);
    v139 = 0;
    goto LABEL_67;
  }

  v84 = v31;
  v85 = v31 - 1;
  v86 = BYTE1(v31);
  v87 = BYTE1(v31) - 1;
  v165 = BYTE2(v31);
  v166 = (v85 + v190) / v31 * BYTE2(v31) * ((v87 + v191) / BYTE1(v31));
  sub_22F9E1DE0(v181, v166);
  v91 = v193;
  if (!v193)
  {
    v93 = 0;
LABEL_43:
    *(v183 - 1) = v93;
    v185 = MEMORY[0x2319052B0](*(a1 + 32)) - v69 - 12;
    v143 = MEMORY[0x2319052B0](*(a1 + 32));
    if (fseek(*(a1 + 32), v69, 0))
    {
      v146 = @"Failed seeking to chunk info after writing texture with key '%s'.";
    }

    else if (fwrite(&__ptr, 0x20uLL, 1uLL, *(a1 + 32)) == 1)
    {
      v147 = fwrite(v182, 4uLL, (v183 - v182) >> 2, *(a1 + 32));
      if (v147 == (v183 - v182) >> 2)
      {
        if (!fseek(*(a1 + 32), v143, 0))
        {
          v139 = 1;
          goto LABEL_65;
        }

        v146 = @"Failed seeking to the end of the file after writing texture with key '%s'.";
      }

      else
      {
        v146 = @"Failed updating surface offsets for texture with key '%s'.";
      }
    }

    else
    {
      v146 = @"Failed updating chunk info for texture with key '%s'.";
    }

    byte_27DAD2790 = HIBYTE(v194[0]);
    byte_27DAD2791 = BYTE2(v194[0]);
    byte_27DAD2792 = BYTE1(v194[0]);
    byte_27DAD2793 = v194[0];
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v144, a5, v146, v145, &byte_27DAD2790);
    goto LABEL_64;
  }

  v169 = a4;
  v92 = 0;
  v93 = 0;
  v94 = v192;
  v164 = v69;
  v162 = v31 - 1;
  v163 = v31;
  v160 = BYTE1(v31) - 1;
  v161 = BYTE1(v31);
  while (!v94)
  {
LABEL_32:
    if (++v92 >= v91)
    {
      goto LABEL_43;
    }
  }

  v95 = 0;
  v171 = v191 >> v92;
  v172 = v190 >> v92;
  v170 = (v85 + v172) / v84 * v165;
  v96 = v170 * ((v87 + v171) / v86);
  while (1)
  {
    v97 = objc_msgSend_objectAtIndexedSubscript_(v8, v88, v95, v89, v90);
    v102 = objc_msgSend_storageMode(v97, v98, v99, v100, v101);

    if (v102 != 2)
    {
      v108 = objc_msgSend_objectAtIndexedSubscript_(v8, v103, v95, v105, v106);
      *buf = 0;
      v175 = 0;
      v176 = 0;
      v177 = v172;
      v178 = v171;
      v179 = 1;
      objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v108, v137, v181[0], v170, v96, buf, v92, 0);
      goto LABEL_29;
    }

    v108 = objc_msgSend_commandBuffer(v168, v103, v104, v105, v106);
    if (!v108)
    {
      break;
    }

    v113 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v167, v107, v181[0], v166, 0, 0);
    if (!v113)
    {
      v151 = _mxi_log(0);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v151, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:343] Failed creating MTLBuffer.", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v152, a5, @"Failed creating MTLBuffer.", v153);
      goto LABEL_60;
    }

    v114 = objc_msgSend_blitCommandEncoder(v108, v109, v110, v111, v112);
    v118 = objc_msgSend_objectAtIndexedSubscript_(v8, v115, v95, v116, v117);
    *buf = 0;
    v175 = 0;
    v176 = 0;
    v180[0] = v172;
    v180[1] = v171;
    v180[2] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v114, v119, v118, 0, v92, buf, v180, v113, 0, v170, v96);

    objc_msgSend_endEncoding(v114, v120, v121, v122, v123);
    objc_msgSend_commit(v108, v124, v125, v126, v127);
    objc_msgSend_waitUntilCompleted(v108, v128, v129, v130, v131);
    v136 = objc_msgSend_status(v108, v132, v133, v134, v135);
    if (v136 != 4)
    {
      v154 = _mxi_log(v136);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v154, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:363] MTLCommandBuffer failed", buf, 2u);
      }

      if (a5)
      {
        *a5 = objc_msgSend_error(v108, v155, v156, v157, v158);
      }

LABEL_60:
      goto LABEL_64;
    }

LABEL_29:
    *buf = 0;
    if ((sub_22F9E3420(a1, v181[0], buf, v96, v169, a5) & 1) == 0)
    {
      goto LABEL_64;
    }

    *(v182 + v95 + v92 * v192) = v93;
    v93 += *buf;
    ++v95;
    v94 = v192;
    if (v95 >= v192)
    {
      v91 = v193;
      v69 = v164;
      v85 = v162;
      v84 = v163;
      v87 = v160;
      v86 = v161;
      goto LABEL_32;
    }
  }

  v148 = _mxi_log(0);
  if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v148, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:334] Failed creating MTLCommandBuffer.", buf, 2u);
  }

  objc_msgSend_fillError_withDescription_(MXIInternalError, v149, a5, @"Failed creating MTLCommandBuffer.", v150);
LABEL_64:
  v139 = 0;
LABEL_65:
  if (v181[0])
  {
    v181[1] = v181[0];
    operator delete(v181[0]);
  }

LABEL_67:

LABEL_68:
  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

LABEL_70:

  return v139;
}

void sub_22F9E32AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  v25 = *(v23 - 184);
  if (v25)
  {
    *(v23 - 176) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 160);
  if (v26)
  {
    *(v23 - 152) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_22F9E33CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_22F9E33CC(a1, *a2);
    sub_22F9E33CC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_22F9E3420(uint64_t a1, void *__ptr, _DWORD *a3, size_t __nitems, int a5, uint64_t a6)
{
  if (a5 == 4)
  {
    if (fwrite(__ptr, 1uLL, __nitems, *(a1 + 32)) == __nitems)
    {
      if (a3)
      {
        *a3 = __nitems;
      }

      return 1;
    }

    else
    {
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v11, a6, @"Failed writing data with length %d bytes.", v12, __nitems);
      return 0;
    }
  }

  else
  {
    v14 = dword_22FA07F3C[a5];
    v15 = compression_encode_scratch_buffer_size(v14);
    sub_22F9E1DE0(v30, v15);
    sub_22F9E1DE0(&__p, 0x100000);
    if (compression_stream_init(&stream, COMPRESSION_STREAM_ENCODE, v14))
    {
      objc_msgSend_fillError_withDescription_(MXIInternalError, v16, a6, @"Failed initializing compression stream.", v17);
LABEL_17:
      v13 = 0;
    }

    else
    {
      v18 = 0;
      stream.src_ptr = __ptr;
      stream.src_size = __nitems;
      stream.dst_ptr = __p;
      stream.dst_size = v29 - __p;
      v19 = @"Error while compressing using compression stream.";
      do
      {
        v22 = compression_stream_process(&stream, 1);
        if (v22 == COMPRESSION_STATUS_ERROR)
        {
          goto LABEL_15;
        }

        v23 = v29 - (__p + stream.dst_size);
        if (fwrite(__p, 1uLL, v23, *(a1 + 32)) != v23)
        {
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v24, a6, @"Failed writing compressed data with length %d bytes.", v25, v23, stream.dst_ptr);
          goto LABEL_17;
        }

        v18 += v23;
        stream.dst_ptr = __p;
        stream.dst_size = v29 - __p;
      }

      while (v22 == COMPRESSION_STATUS_OK);
      if (compression_stream_destroy(&stream))
      {
        v19 = @"Error releasing compression stream.";
LABEL_15:
        objc_msgSend_fillError_withDescription_(MXIInternalError, v20, a6, v19, v21);
        goto LABEL_17;
      }

      if (a3)
      {
        *a3 = v18;
      }

      v13 = 1;
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }
  }

  return v13;
}

void sub_22F9E361C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22F9E3660(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_22F9E372C(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_22F9E3784(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_22F9E3784(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void tiled::Processor::~Processor(tiled::Processor *this)
{
  sub_22F9E8B20(this, 0);
}

{
  sub_22F9E8B20(this, 0);
}

void tiled::Processor::Create(void *a1, int a2, int a3, uint64_t a4, id *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v11 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v8, @"com.apple.mxi", v9, v10);
  if (objc_msgSend_newDefaultLibraryWithBundle_error_(v7, v12, v11, a5, v13))
  {
    v37 = v11;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v17 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v14, @"com.apple.mxi.TiledTests", v15, v16);

    objc_msgSend_newDefaultLibraryWithBundle_error_(v7, v18, v17, a5, v19);
    v37 = v17;
  }

  v38 = objc_opt_new();
  v22 = objc_msgSend_URLForResource_withExtension_(v37, v20, @"mxi_archive", @"metallib", v21);
  objc_msgSend_setUrl_(v38, v23, v22, v24, v25);

  v28 = objc_msgSend_newBinaryArchiveWithDescriptor_error_(v7, v26, v38, a5, v27);
  if (v28)
  {
    v39 = v28;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, &v39, 1, v30);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v31 = _mxi_log(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_msgSend_localizedDescription(*a5, v32, v33, v34, v35);
      *buf = 138412290;
      *&buf[4] = v36;
      _os_log_impl(&dword_22F9C3000, v31, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:353] [TiledProcessor] WARNING: nil MTLBinaryArchive for mxi_archive, error %@", buf, 0xCu);
    }
  }

  operator new();
}

void sub_22F9E44D8(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_22F9E485C(va);
  _Unwind_Resume(a1);
}

id sub_22F9E46B4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_opt_new();
  objc_msgSend_setComputeFunction_(v12, v13, v11, v14, v15);
  objc_msgSend_setBinaryArchives_(v12, v16, v10, v17, v18);
  v20 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v9, v19, v12, a4, 0, a5);
  if (!v20)
  {
    v21 = _mxi_log(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_msgSend_name(v11, v22, v23, v24, v25);
      v28 = 138412546;
      v29 = v26;
      v30 = 2048;
      v31 = a4;
      _os_log_impl(&dword_22F9C3000, v21, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:225] Failed on creating compute pipeline state for function '%@' with options '%llu'", &v28, 0x16u);
    }
  }

  return v20;
}

uint64_t **sub_22F9E485C(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_22F9E8B20(v2, 0);
    MEMORY[0x2319050F0](v2, 0x20C4093837F09);
  }

  return a1;
}

uint64_t tiled::Processor::AddLayer(uint64_t *a1, void *a2, int a3, int a4, void *a5, void *a6, __int128 *a7, float a8, float a9)
{
  v514 = *MEMORY[0x277D85DE8];
  v483 = a2;
  v481 = a5;
  v482 = a6;
  v16 = *a1;
  v21 = objc_msgSend_width(v481, v17, v18, v19, v20);
  v473 = a3;
  v26 = objc_msgSend_height(v481, v22, v23, v24, v25);
  v472 = 1 << (*(v16 + 356) - 1);
  v31 = *(v16 + 352) - v472;
  v32 = (v21 + v31 - 1) / v31;
  v33 = (v31 + v26 - 1) / v31;
  v477 = v33;
  v478 = (v32 + 7) >> 3;
  v471 = (v33 + 7) >> 3;
  v34 = (v471 * v478 - 1) | ((v471 * v478 - 1) >> 1);
  v35 = v34 | (v34 >> 2) | ((v34 | (v34 >> 2)) >> 4);
  v474 = v32 + 1 + (v32 + 1) * v33;
  v475 = v26;
  if (*(v16 + 344))
  {
    v36 = 6;
  }

  else
  {
    v36 = 1;
  }

  v37 = v36 * *(v16 + 360);
  if (*(v16 + 344))
  {
    v38 = a4;
  }

  else
  {
    v38 = 0;
  }

  v479 = (v35 | (v35 >> 8) | ((v35 | (v35 >> 8)) >> 16)) + 1;
  v39 = (((v35 | (v35 >> 8) | ((v35 | (v35 >> 8)) >> 16)) + 1) * v36) << 6;
  *(v16 + 364) = v39;
  v469 = v39 * v37;
  v470 = v37;
  *(v16 + 368) = v39 * v37;
  v40 = v483;
  v476 = v21;
  if (*(v16 + 414))
  {
    goto LABEL_8;
  }

  *(v16 + 414) = 1;
  v468 = v38;
  if (*(v16 + 404))
  {
    v153 = _mxi_log(v26);
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
    {
      *v504 = 0;
      _os_log_impl(&dword_22F9C3000, v153, OS_LOG_TYPE_DEBUG, "[Tiled] [TiledProcessor] Allocating slices dynamically", v504, 2u);
    }

    v41 = dispatch_queue_create("com.apple.mxi.tiled", 0);
    v158 = objc_msgSend_newSharedEvent(*v16, v154, v155, v156, v157);
    v159 = *(v16 + 448);
    *(v16 + 448) = v158;

    v160 = objc_alloc(MEMORY[0x277CD6FD8]);
    v164 = objc_msgSend_initWithDispatchQueue_(v160, v161, v41, v162, v163);
    v165 = *(v16 + 456);
    *(v16 + 456) = v164;

    *(v16 + 464) = 0;
    v170 = objc_msgSend_newCommandQueue(*v16, v166, v167, v168, v169);
    v171 = *(v16 + 440);
    *(v16 + 440) = v170;
    goto LABEL_22;
  }

  v175 = _MXISignpostLogSystem(v26);
  spid = _MXISignpostCreate(v175);
  v176 = _MXISignpostLogSystem(spid);
  memset(buf, 0, sizeof(buf));
  core::get_info(buf);
  v177 = v176;
  v178 = v177;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v177))
  {
    *v504 = 134218752;
    *&v504[4] = *buf;
    *&v504[12] = 2048;
    *&v504[14] = *&buf[8];
    *&v504[22] = 2048;
    *&v504[24] = *&buf[16];
    LOWORD(v505) = 2048;
    *(&v505 + 2) = *&buf[24];
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v178, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MXI_MEMORY_PREALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", v504, 0x2Au);
  }

  v179 = *(v16 + 400);
  v184 = objc_msgSend_width(v481, v180, v181, v182, v183);
  v189 = objc_msgSend_height(v481, v185, v186, v187, v188);
  if (v179 != -1)
  {
LABEL_31:
    if (v179 >= 513)
    {
      v41 = _mxi_log(v189);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v504 = 0;
        v174 = "[Tiled/TiledProcessor.mm:558] Number of atlas slices exceeds MAX_FIXED_ATLAS_SLICES.";
        goto LABEL_66;
      }

LABEL_144:
      v152 = 0;
      goto LABEL_145;
    }

    v345 = _mxi_log(v189);
    if (os_log_type_enabled(v345, OS_LOG_TYPE_DEBUG))
    {
      *v504 = 67109120;
      *&v504[4] = v179;
      _os_log_impl(&dword_22F9C3000, v345, OS_LOG_TYPE_DEBUG, "[Tiled] [TiledProcessor] Allocating %u slices", v504, 8u);
    }

    sub_22F9E60AC((v16 + 112), v179);
    sub_22F9E60AC((v16 + 136), v179);
    v346 = objc_opt_new();
    v41 = v346;
    if (*(v16 + 413) == 1)
    {
      objc_msgSend_setTextureType_(v346, v347, 2, v348, v349);
    }

    else
    {
      objc_msgSend_setTextureType_(v346, v347, 3, v348, v349);
      objc_msgSend_setArrayLength_(v41, v353, v179, v354, v355);
    }

    objc_msgSend_setWidth_(v41, v350, *(v16 + 348), v351, v352, v461);
    objc_msgSend_setHeight_(v41, v356, *(v16 + 348), v357, v358);
    objc_msgSend_setMipmapLevelCount_(v41, v359, *(v16 + 356), v360, v361);
    objc_msgSend_setPixelFormat_(v41, v362, *(v16 + 328), v363, v364);
    v368 = objc_msgSend_setUsage_(v41, v365, 19, v366, v367);
    if (*(v16 + 413) == 1)
    {
      if (v179)
      {
        v372 = 0;
        while (1)
        {
          objc_msgSend_setStorageMode_(v41, v369, 2, v370, v371);
          v376 = objc_msgSend_newSharedTextureWithDescriptor_(*v16, v373, v41, v374, v375);
          v377 = *(v16 + 112);
          v378 = *(v377 + v372);
          *(v377 + v372) = v376;

          v380 = *(*(v16 + 112) + v372);
          if (!v380)
          {
            v458 = _mxi_log(0);
            if (!os_log_type_enabled(v458, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_143;
            }

            *v504 = 0;
            v459 = "[Tiled/TiledProcessor.mm:587] Failed to allocate atlas.";
            goto LABEL_142;
          }

          v381 = *(v16 + 336);
          v382 = *(v16 + 409) == 1 ? objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(v380, v379, v381, 2, 0, 0) : objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v380, v379, v381, 2, 0, 1, 0, 1);
          v383 = *(v16 + 136);
          v384 = *(v383 + v372);
          *(v383 + v372) = v382;

          v389 = *(*(v16 + 136) + v372);
          if (!v389)
          {
            break;
          }

          v368 = objc_msgSend_gpuResourceID(v389, v385, v386, v387, v388);
          *(*(v16 + 304) + v372) = v368;
          v372 += 8;
          if (8 * v179 == v372)
          {
            goto LABEL_90;
          }
        }

        v458 = _mxi_log(0);
        if (!os_log_type_enabled(v458, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_143;
        }

        *v504 = 0;
        v459 = "[Tiled/TiledProcessor.mm:603] Failed to allocate atlas view";
        goto LABEL_142;
      }
    }

    else
    {
      objc_msgSend_setStorageMode_(v41, v369, 2, v370, v371);
      v393 = objc_msgSend_newSharedTextureWithDescriptor_(*v16, v390, v41, v391, v392);
      v394 = *(v16 + 160);
      *(v16 + 160) = v393;

      if (!*(v16 + 160))
      {
        v458 = _mxi_log(v368);
        if (!os_log_type_enabled(v458, OS_LOG_TYPE_ERROR))
        {
LABEL_143:

          goto LABEL_144;
        }

        *v504 = 0;
        v459 = "[Tiled/TiledProcessor.mm:616] Failed to allocate atlas.";
LABEL_142:
        _os_log_impl(&dword_22F9C3000, v458, OS_LOG_TYPE_ERROR, v459, v504, 2u);
        goto LABEL_143;
      }

      if (v179)
      {
        v396 = 0;
        while (1)
        {
          v397 = *(v16 + 160);
          v398 = *(v16 + 336);
          v399 = *(v16 + 409) == 1 ? objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(v397, v395, v398, 2, 0, v396) : objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v397, v395, v398, 2, 0, 1, v396, 1);
          v400 = *(v16 + 136);
          v401 = *(v400 + 8 * v396);
          *(v400 + 8 * v396) = v399;

          v406 = *(*(v16 + 136) + 8 * v396);
          if (!v406)
          {
            break;
          }

          v368 = objc_msgSend_gpuResourceID(v406, v402, v403, v404, v405);
          *(*(v16 + 304) + 8 * v396++) = v368;
          if (v179 == v396)
          {
            goto LABEL_90;
          }
        }

        v458 = _mxi_log(0);
        if (!os_log_type_enabled(v458, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_143;
        }

        *v504 = 0;
        v459 = "[Tiled/TiledProcessor.mm:633] Failed to allocate atlas view";
        goto LABEL_142;
      }
    }

LABEL_90:
    v407 = _MXISignpostLogSystem(v368);
    memset(buf, 0, sizeof(buf));
    core::get_info(buf);
    v408 = v407;
    v171 = v408;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v408))
    {
      *v504 = 134218752;
      *&v504[4] = *buf;
      *&v504[12] = 2048;
      *&v504[14] = *&buf[8];
      *&v504[22] = 2048;
      *&v504[24] = *&buf[16];
      LOWORD(v505) = 2048;
      *(&v505 + 2) = *&buf[24];
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v171, OS_SIGNPOST_INTERVAL_END, spid, "MXI_MEMORY_PREALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", v504, 0x2Au);
    }

LABEL_22:
    v173 = *(v16 + 392);
    if (v173)
    {
      v38 = v468;
      if (v173 != v476)
      {
        v41 = _mxi_log(v172);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v504 = 0;
          v174 = "[Tiled/TiledProcessor.mm:653] Unexpected color texture width";
          goto LABEL_66;
        }

        goto LABEL_144;
      }

      if (*(v16 + 396) != v475)
      {
        v41 = _mxi_log(v172);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v504 = 0;
          v174 = "[Tiled/TiledProcessor.mm:654] Unexpected color texture height";
LABEL_66:
          _os_log_impl(&dword_22F9C3000, v41, OS_LOG_TYPE_ERROR, v174, v504, 2u);
          goto LABEL_144;
        }

        goto LABEL_144;
      }
    }

    else
    {
      *(v16 + 392) = v476;
      *(v16 + 396) = v475;
      v38 = v468;
    }

    v40 = v483;
    if (!*(v16 + 168))
    {
      v267 = v38;
      v268 = objc_msgSend_newBufferWithLength_options_(*v16, v27, v479 << 6, 32, v30);
      v269 = *(v16 + 168);
      *(v16 + 168) = v268;

      v272 = objc_msgSend_newBufferWithLength_options_(*v16, v270, 16 * v479, 0, v271);
      v273 = *(v16 + 176);
      *(v16 + 176) = v272;

      v276 = objc_msgSend_newBufferWithLength_options_(*v16, v274, 16, 0, v275);
      v277 = *(v16 + 184);
      *(v16 + 184) = v276;

      v280 = objc_msgSend_newBufferWithLength_options_(*v16, v278, 12 * v470, 0, v279);
      v281 = *(v16 + 192);
      *(v16 + 192) = v280;

      v284 = objc_msgSend_newBufferWithLength_options_(*v16, v282, 24, 32, v283);
      v285 = *(v16 + 200);
      *(v16 + 200) = v284;

      v288 = objc_msgSend_newBufferWithLength_options_(*v16, v286, v479 << 8, 32, v287);
      v289 = *(v16 + 208);
      *(v16 + 208) = v288;

      v292 = objc_msgSend_newBufferWithLength_options_(*v16, v290, 6144 * v479, 32, v291);
      v293 = *(v16 + 216);
      *(v16 + 216) = v292;

      v296 = objc_msgSend_newBufferWithLength_options_(*v16, v294, 32 * v474, 32, v295);
      v297 = *(v16 + 224);
      *(v16 + 224) = v296;

      v300 = objc_msgSend_newBufferWithLength_options_(*v16, v298, 16 * (4 * v469), 0, v299);
      v301 = *(v16 + 232);
      *(v16 + 232) = v300;

      v304 = objc_msgSend_newBufferWithLength_options_(*v16, v302, 8 * (4 * v469), 0, v303);
      v305 = *(v16 + 240);
      *(v16 + 240) = v304;

      v306 = (2 * v469);
      v309 = objc_msgSend_newBufferWithLength_options_(*v16, v307, 12 * v306, 0, v308);
      v310 = *(v16 + 248);
      *(v16 + 248) = v309;

      v313 = objc_msgSend_newBufferWithLength_options_(*v16, v311, 12 * v306, 0, v312);
      v314 = *(v16 + 256);
      *(v16 + 256) = v313;

      v317 = objc_msgSend_newBufferWithLength_options_(*v16, v315, 4 * v306, 0, v316);
      v318 = *(v16 + 264);
      *(v16 + 264) = v317;

      v321 = objc_msgSend_newBufferWithLength_options_(*v16, v319, 4 * v306, 0, v320);
      v322 = *(v16 + 272);
      *(v16 + 272) = v321;

      v325 = *(v16 + 411) == 1 ? objc_msgSend_newBufferWithLength_options_(*v16, v323, 16 * v32 * v477 * *(v16 + 360), 0, v324) : 0;
      v409 = *(v16 + 280);
      *(v16 + 280) = v325;

      v414 = objc_msgSend_contents(*(v16 + 184), v410, v411, v412, v413);
      v38 = v267;
      v40 = v483;
      if (*(v16 + 415) == 1)
      {
        *v414 = xmmword_22FA081D0;
      }
    }

LABEL_8:
    v41 = objc_msgSend_computeCommandEncoder(v40, v27, v28, v29, v30);
    objc_msgSend_setLabel_(v41, v42, @"MXI: Processing ComputeCommandEncoder", v43, v44);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v45, *(v16 + 168), 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v46, *(v16 + 176), 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v47, *(v16 + 184), 0, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v48, *(v16 + 192), 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v49, *(v16 + 200), 0, 6);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v50, *(v16 + 208), 0, 7);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v51, *(v16 + 216), 0, 8);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v52, *(v16 + 224), 0, 9);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v53, *(v16 + 232), 0, 10);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v54, *(v16 + 240), 0, 11);
    v55 = (v38 + v36 * v473);
    v56 = 12 * v55;
    objc_msgSend_setBuffer_offset_atIndex_(v41, v57, *(v16 + 248), v56 * (2 * *(v16 + 364)), 12);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v58, *(v16 + 256), v56 * (2 * *(v16 + 364)), 13);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v59, *(v16 + 264), 4 * v55 * (2 * *(v16 + 364)), 14);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v60, *(v16 + 272), 4 * v55 * (2 * *(v16 + 364)), 15);
    if (*(v16 + 411) == 1)
    {
      objc_msgSend_setBuffer_offset_atIndex_(v41, v61, *(v16 + 280), 0, 17);
    }

    objc_msgSend_setBytes_length_atIndex_(v41, v61, *(v16 + 304), 4096, 16);
    memset(v513, 0, sizeof(v513));
    v511 = 0u;
    v512 = 0u;
    v509 = 0u;
    v510 = 0u;
    v507 = 0u;
    v508 = 0u;
    v505 = 0u;
    v506 = 0u;
    v64 = *(v16 + 348);
    *v504 = *(v16 + 352);
    *&v504[4] = v64;
    *&v504[8] = v472;
    *&v504[12] = v478;
    *&v504[16] = v479;
    *&v504[20] = v55;
    *&v504[24] = *(v16 + 360);
    *&v504[28] = a4;
    LODWORD(v505) = *(v16 + 368);
    *(&v505 + 1) = __PAIR64__(v475, v476);
    *&v506 = __PAIR64__(LODWORD(a8), LODWORD(a9));
    DWORD2(v506) = *(v16 + 380);
    *&v508 = *(v16 + 432);
    v507 = *(v16 + 416);
    v65 = a7[1];
    v509 = *a7;
    v510 = v65;
    v66 = a7[3];
    v511 = a7[2];
    v512 = v66;
    *&v513[0] = *(v16 + 384);
    BYTE8(v513[0]) = v482 == 0;
    *(v513 + 9) = *(v16 + 405);
    if (*v504 < 0x41u)
    {
      v67 = *(v16 + 407);
    }

    else
    {
      v67 = 0;
    }

    BYTE11(v513[0]) = v67;
    BYTE12(v513[0]) = *(v16 + 408);
    BYTE13(v513[0]) = *(v16 + 410);
    BYTE14(v513[0]) = *(a7 + 64);
    *(v513 + 15) = *(v16 + 411);
    v68 = v483;
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v41, v62, 16 * v479, 0, v63);
    objc_msgSend_setBytes_length_atIndex_(v41, v69, v504, 192, 5);
    objc_msgSend_setTexture_atIndex_(v41, v70, v481, 0, v71);
    objc_msgSend_setTexture_atIndex_(v41, v72, v482, 1, v73);
    objc_msgSend_pushDebugGroup_(v41, v74, @"group_info", v75, v76);
    objc_msgSend_setComputePipelineState_(v41, v77, *(v16 + 8), v78, v79);
    *buf = v478;
    *&buf[8] = v471;
    *&buf[16] = 1;
    *v502 = vdupq_n_s64(8uLL);
    *&v502[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v80, buf, v502, v81);
    objc_msgSend_popDebugGroup(v41, v82, v83, v84, v85);
    objc_msgSend_pushDebugGroup_(v41, v86, @"prefix_sums", v87, v88);
    objc_msgSend_setComputePipelineState_(v41, v89, *(v16 + 16), v90, v91);
    *buf = vdupq_n_s64(1uLL);
    *&buf[16] = 1;
    *v502 = fmin(v479, 1024.0);
    *&v502[8] = *buf;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v92, buf, v502, v93);
    objc_msgSend_popDebugGroup(v41, v94, v95, v96, v97);
    objc_msgSend_pushDebugGroup_(v41, v98, @"setup_indirect_dispatches", v99, v100);
    objc_msgSend_setComputePipelineState_(v41, v101, *(v16 + 40), v102, v103);
    *buf = vdupq_n_s64(1uLL);
    *&buf[16] = 1;
    *v502 = *buf;
    *&v502[16] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v104, buf, v502, v105);
    objc_msgSend_popDebugGroup(v41, v106, v107, v108, v109);
    objc_msgSend_pushDebugGroup_(v41, v110, @"locations_mapping", v111, v112);
    objc_msgSend_setComputePipelineState_(v41, v113, *(v16 + 48), v114, v115);
    *buf = v32;
    *&buf[8] = v477;
    *&buf[16] = 1;
    *v502 = vdupq_n_s64(8uLL);
    *&v502[16] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v116, buf, v502, v117);
    objc_msgSend_popDebugGroup(v41, v118, v119, v120, v121);
    if (v482)
    {
      objc_msgSend_pushDebugGroup_(v41, v122, @"depth_adjust", v123, v124);
      objc_msgSend_pushDebugGroup_(v41, v125, @"init_distances", v126, v127);
      objc_msgSend_setComputePipelineState_(v41, v128, *(v16 + 56), v129, v130);
      *buf = v474;
      *&buf[8] = vdupq_n_s64(1uLL);
      *v502 = xmmword_22FA081E0;
      *&v502[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v131, buf, v502, v132);
      objc_msgSend_popDebugGroup(v41, v133, v134, v135, v136);
      objc_msgSend_pushDebugGroup_(v41, v137, @"gather_reduce", v138, v139);
      objc_msgSend_setComputePipelineState_(v41, v140, *(v16 + 64), v141, v142);
      v143 = *v504;
      v144 = *&v504[8];
      v149 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(v16 + 64), v145, v146, v147, v148);
      if (v149 < ((v143 - v144 + 1) >> 1) * ((v143 - v144 + 1) >> 1))
      {
        v151 = _mxi_log(v149);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v151, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:779] Not enough threads per threadgroup for tile size", buf, 2u);
        }

        v152 = 0;
        goto LABEL_45;
      }

      v190 = *(v16 + 200);
      *buf = ((v143 - v144 + 1) >> 1) * ((v143 - v144 + 1) >> 1);
      *&buf[8] = vdupq_n_s64(1uLL);
      v68 = v483;
      objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v150, v190, 12, buf);
      objc_msgSend_popDebugGroup(v41, v191, v192, v193, v194);
      objc_msgSend_pushDebugGroup_(v41, v195, @"solve", v196, v197);
      objc_msgSend_setComputePipelineState_(v41, v198, *(v16 + 72), v199, v200);
      v201 = *(v16 + 200);
      *buf = xmmword_22FA081E0;
      *&buf[16] = 1;
      objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v202, v201, 0, buf);
      objc_msgSend_popDebugGroup(v41, v203, v204, v205, v206);
      objc_msgSend_pushDebugGroup_(v41, v207, @"average_corners", v208, v209);
      objc_msgSend_setComputePipelineState_(v41, v210, *(v16 + 80), v211, v212);
      *buf = v474;
      *&buf[8] = vdupq_n_s64(1uLL);
      *v502 = xmmword_22FA081E0;
      *&v502[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v213, buf, v502, v214);
      objc_msgSend_popDebugGroup(v41, v215, v216, v217, v218);
      objc_msgSend_popDebugGroup(v41, v219, v220, v221, v222);
    }

    if (*(v16 + 411) == 1)
    {
      objc_msgSend_pushDebugGroup_(v41, v122, @"init_vtx_idx_map", v123, v124);
      objc_msgSend_setComputePipelineState_(v41, v223, *(v16 + 96), v224, v225);
      *buf = v32;
      *&buf[8] = v477;
      *&buf[16] = 1;
      *v502 = vdupq_n_s64(8uLL);
      *&v502[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v226, buf, v502, v227);
      objc_msgSend_popDebugGroup(v41, v228, v229, v230, v231);
    }

    objc_msgSend_pushDebugGroup_(v41, v122, @"mesh", v123, v124);
    objc_msgSend_setComputePipelineState_(v41, v232, *(v16 + 88), v233, v234);
    v235 = *(v16 + 200);
    *buf = xmmword_22FA081E0;
    *&buf[16] = 1;
    objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v236, v235, 0, buf);
    objc_msgSend_popDebugGroup(v41, v237, v238, v239, v240);
    if (*(v16 + 400))
    {
      objc_msgSend_pushDebugGroup_(v41, v241, @"pack_tiles", v243, v244);
      objc_msgSend_setComputePipelineState_(v41, v245, *(v16 + 24), v246, v247);
      objc_msgSend_useResources_count_usage_(v41, v248, *(v16 + 136), (*(v16 + 144) - *(v16 + 136)) >> 3, 2);
      if (*(v16 + 409) == 1)
      {
        v251 = *(v16 + 200);
        *buf = ((*(v16 + 352) >> 2) * (*(v16 + 352) >> 2));
        *&buf[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v249, v251, 12, buf);
      }

      else
      {
        *buf = v32;
        *&buf[8] = v477;
        *&buf[16] = 1;
        *v502 = vdupq_n_s64(0x10uLL);
        *&v502[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v249, buf, v502, v250);
      }

      objc_msgSend_popDebugGroup(v41, v252, v253, v254, v255);
    }

    objc_msgSend_endEncoding(v41, v241, v242, v243, v244);
    if (*(v16 + 400))
    {
      v152 = 1;
LABEL_145:

      goto LABEL_146;
    }

    v258 = v32;
    v259 = *(v16 + 464);
    v260 = (v259 + 1);
    v261 = (v259 + 2);
    *(v16 + 464) = v261;
    objc_msgSend_encodeSignalEvent_value_(v68, v256, *(v16 + 448), v260, v257);
    objc_msgSend_encodeWaitForEvent_value_(v68, v262, *(v16 + 448), v261, v263);
    v264 = *(v16 + 448);
    v265 = *(v16 + 456);
    v484[0] = MEMORY[0x277D85DD0];
    v484[1] = 3221225472;
    v484[2] = sub_22F9E6134;
    v484[3] = &unk_2788ADDB0;
    v498 = v16;
    v497 = v481;
    v493 = v511;
    v494 = v512;
    v495 = v513[0];
    v496 = v513[1];
    v489 = v507;
    v490 = v508;
    v491 = v509;
    v492 = v510;
    v485 = *v504;
    v486 = *&v504[16];
    v487 = v505;
    v488 = v506;
    v499 = v258;
    v500 = v477;
    v501 = v261;
    objc_msgSend_notifyListener_atValue_block_(v264, v266, v265, v260, v484);
    v152 = 1;
    v151 = v497;
LABEL_45:

    goto LABEL_145;
  }

  v326 = v189;
  v466 = v32;
  v327 = *(v16 + 348);
  if ((atomic_load_explicit(byte_27DAD27A0, memory_order_acquire) & 1) == 0)
  {
    sub_22F9E8CD8();
  }

  LOWORD(v328) = 0;
  LOWORD(v329) = 0;
  LOWORD(v330) = 0;
  v331 = fmax(v184, v326);
  v332 = v331;
  LOWORD(v333) = 0x7FFF;
  v334 = &word_27DAD27B4;
  v335 = 36;
  LOWORD(v336) = 0x7FFF;
  LOWORD(v337) = 0x7FFF;
  do
  {
    LOWORD(v331) = *(v334 - 2);
    v338 = *&v331;
    *&v339 = fmax(v338, v330);
    v330 = *&v339;
    LOWORD(v339) = *(v334 - 1);
    v340 = v339;
    *&v341 = fmax(v340, v329);
    v329 = *&v341;
    LOWORD(v341) = *v334;
    v342 = v341;
    v328 = fmax(v342, v328);
    v337 = fmin(v338, v337);
    v336 = fmin(v340, v336);
    v331 = fmin(v342, v333);
    v333 = v331;
    v334 += 4;
    --v335;
  }

  while (v335);
  if (v327 > v330 || v470 > v329 || v332 > v328)
  {
    v41 = _mxi_log(v189);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *v504 = 0;
      v174 = "[Tiled/TiledProcessor.mm:119] Atlas attributes are invalid";
      goto LABEL_66;
    }

    goto LABEL_144;
  }

  v415 = v337;
  v416 = fmax(v327, v337);
  v417 = v336;
  v418 = fmax(v470, v336);
  v419 = v333;
  v420 = fmax(v332, v333);
  v465 = v416;
  v463 = log2(v416);
  v421 = fmax(ldexp(1.0, v463), v415);
  v464 = v418;
  v462 = log2(v418);
  v422 = fmax(ldexp(1.0, v462), v417);
  LODWORD(v461) = v420;
  HIDWORD(v461) = log2(v420);
  v423 = fmax(ldexp(1.0, SHIDWORD(v461)), v419);
  v424 = fmin(ldexp(1.0, v463 + 1), v330);
  v425 = fmin(ldexp(1.0, v462 + 1), v329);
  v426 = ldexp(1.0, HIDWORD(v461) + 1);
  v427 = 0;
  v428 = 0;
  v429 = 0;
  v430 = 0;
  v431 = 0;
  v432 = 0;
  v433 = 0;
  v434 = 0;
  v435 = fmin(v426, v328);
  v436 = &word_27DAD27B6;
  v437 = 36;
  v32 = v466;
  do
  {
    v438 = *(v436 - 3);
    if (v438 == v421)
    {
      v439 = *(v436 - 2);
      if (v439 == v422)
      {
        v440 = *(v436 - 1);
        v441 = *v436;
        if (v440 == v423)
        {
          v427 = *v436;
        }

        if (v440 == v435)
        {
          v428 = *v436;
        }
      }

      else
      {
        v441 = *v436;
      }

      if (v439 == v425)
      {
        v442 = *(v436 - 1);
        if (v442 == v423)
        {
          v429 = v441;
        }

        if (v442 == v435)
        {
          v430 = v441;
        }
      }
    }

    else
    {
      v441 = *v436;
    }

    if (v438 == v424)
    {
      v443 = *(v436 - 2);
      if (v443 == v422)
      {
        v444 = *(v436 - 1);
        if (v444 == v423)
        {
          v431 = v441;
        }

        if (v444 == v435)
        {
          v432 = v441;
        }
      }

      if (v443 == v425)
      {
        v445 = *(v436 - 1);
        if (v445 == v423)
        {
          v433 = v441;
        }

        if (v445 == v435)
        {
          v434 = v441;
        }
      }
    }

    v436 += 4;
    --v437;
  }

  while (v437);
  v446 = 1.0;
  v447 = 1.0;
  v448 = __OFSUB__(v435, v423);
  v449 = v435 - v423;
  if (!((v449 < 0) ^ v448 | (v449 == 0)))
  {
    v447 = (v461 - v423) / v449;
  }

  v450 = v427 + (v447 * (v428 - v427));
  v451 = v429 + (v447 * (v430 - v429));
  v452 = v431 + (v447 * (v432 - v431));
  v453 = v433 + (v447 * (v434 - v433));
  v454 = (v464 - v422) / (v425 - v422);
  if (v425 - v422 < 1)
  {
    v454 = 1.0;
  }

  v455 = v450 + (v454 * (v451 - v450));
  v456 = v452 + (v454 * (v453 - v452));
  if (v424 - v421 >= 1)
  {
    v446 = (v465 - v421) / (v424 - v421);
  }

  v179 = (v455 + (v446 * (v456 - v455)));
  if ((v179 & 0x80000000) == 0)
  {
    v457 = _mxi_log(0);
    if (os_log_type_enabled(v457, OS_LOG_TYPE_DEBUG))
    {
      *v504 = 0;
      _os_log_impl(&dword_22F9C3000, v457, OS_LOG_TYPE_DEBUG, "[Tiled] [TiledProcessor] Chose number of slices from the look up table", v504, 2u);
    }

    goto LABEL_31;
  }

  v152 = 0;
LABEL_146:

  return v152;
}

void sub_22F9E60AC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22F9E88B8(a1, v5);
  }
}

void sub_22F9E6134(uint64_t a1, void *a2)
{
  v153 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MXISignpostLogSystem(v3);
  v5 = _MXISignpostCreate(v4);
  v6 = _MXISignpostLogSystem(v5);
  v147 = 0u;
  v148 = 0u;
  core::get_info(&v147);
  v7 = v6;
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134218752;
    *&buf[4] = v147.i64[0];
    *&buf[12] = 2048;
    *&buf[14] = v147.i64[1];
    *&buf[22] = 2048;
    v150 = v148;
    v151 = 2048;
    v152 = *(&v148 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MXI_MEMORY_DYNAMIC_ALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v13 = *(objc_msgSend_contents(*(*(a1 + 232) + 184), v9, v10, v11, v12) + 4);
  if (v13 != *(objc_msgSend_contents(*(*(a1 + 232) + 176), v14, v15, v16, v17) + 4))
  {
    v22 = *(a1 + 232);
    if (!*(v22 + 472))
    {
      v23 = objc_msgSend_contents(*(v22 + 184), v18, v19, v20, v21);
      v28 = *(a1 + 232);
      v29 = *(v28 + 348) / *(v28 + 352) * (*(v28 + 348) / *(v28 + 352));
      v30 = (*(v23 + 4) + v29 - 1) / v29;
      if (v30 > (*(v28 + 120) - *(v28 + 112)) >> 3)
      {
        v31 = objc_opt_new();
        objc_msgSend_setTextureType_(v31, v32, 2, v33, v34);
        objc_msgSend_setWidth_(v31, v35, *(*(a1 + 232) + 348), v36, v37);
        objc_msgSend_setHeight_(v31, v38, *(*(a1 + 232) + 348), v39, v40);
        v44 = *(a1 + 232);
        if (*(v44 + 409) == 1)
        {
          objc_msgSend_setMipmapLevelCount_(v31, v41, *(v44 + 356), v42, v43);
        }

        else
        {
          objc_msgSend_setMipmapLevelCount_(v31, v41, 1, v42, v43);
        }

        objc_msgSend_setPixelFormat_(v31, v45, *(*(a1 + 232) + 328), v46, v47);
        objc_msgSend_setUsage_(v31, v48, 19, v49, v50);
        while (v30 > (*(*(a1 + 232) + 120) - *(*(a1 + 232) + 112)) >> 3)
        {
          objc_msgSend_setStorageMode_(v31, v51, 2, v52, v53);
          *buf = objc_msgSend_newSharedTextureWithDescriptor_(**(a1 + 232), v54, v31, v55, v56);
          if (!*buf)
          {
            obj = 0;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v57, &obj, @"Failed creating dynamic atlas slice texture", v58);
            objc_storeStrong((*(a1 + 232) + 472), obj);
          }

          sub_22F9E6854((*(a1 + 232) + 112), buf);
          v147.i64[0] = 0;
          v60 = *(a1 + 232);
          v61 = *(v60 + 336);
          if (*(v60 + 409) == 1)
          {
            v62 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(*buf, v59, v61, 2, 0, 0);
          }

          else
          {
            v62 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*buf, v59, v61, 2, 0, 1, 0, 1);
          }

          v63 = v147.i64[0];
          v147.i64[0] = v62;

          if (!v147.i64[0])
          {
            v145 = 0;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v64, &v145, @"Failed creating dynamic atlas slice view", v65);
            objc_storeStrong((*(a1 + 232) + 472), v145);
          }

          sub_22F9E6854((*(a1 + 232) + 136), &v147);
          if ((((*(*(a1 + 232) + 120) - *(*(a1 + 232) + 112)) >> 3) - 1) <= 0x1FF)
          {
            *(*(*(a1 + 232) + 304) + *(*(a1 + 232) + 120) - *(*(a1 + 232) + 112) - 8) = objc_msgSend_gpuResourceID(v147.i64[0], v66, v67, v68, v69);
          }
        }

        v28 = *(a1 + 232);
      }

      v70 = objc_msgSend_commandBuffer(*(v28 + 440), v24, v25, v26, v27);
      v75 = objc_msgSend_computeCommandEncoder(v70, v71, v72, v73, v74);
      objc_msgSend_setLabel_(v75, v76, @"MXI: DynamicAtlas ComputeCommandEncoder", v77, v78);
      objc_msgSend_pushDebugGroup_(v75, v79, @"copy_tiles", v80, v81);
      objc_msgSend_setComputePipelineState_(v75, v82, *(*(a1 + 232) + 24), v83, v84);
      objc_msgSend_useResources_count_usage_(v75, v85, *(*(a1 + 232) + 136), (*(*(a1 + 232) + 144) - *(*(a1 + 232) + 136)) >> 3, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v86, *(*(a1 + 232) + 168), 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v87, *(*(a1 + 232) + 176), 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v88, *(*(a1 + 232) + 208), 0, 7);
      objc_msgSend_setTexture_atIndex_(v75, v89, *(a1 + 224), 0, v90);
      objc_msgSend_setBytes_length_atIndex_(v75, v91, *(*(a1 + 232) + 304), 4096, 16);
      objc_msgSend_setBytes_length_atIndex_(v75, v92, a1 + 32, 192, 5);
      v95 = *(a1 + 232);
      if (*(v95 + 409) == 1)
      {
        v96 = *(v95 + 200);
        *buf = ((*(v95 + 352) >> 2) * (*(v95 + 352) >> 2));
        *&buf[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v75, v93, v96, 12, buf);
      }

      else
      {
        v101 = *(a1 + 240);
        *&v102 = v101;
        *(&v102 + 1) = HIDWORD(v101);
        *buf = v102;
        *&buf[16] = 1;
        v147 = vdupq_n_s64(0x10uLL);
        *&v148 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v75, v93, buf, &v147, v94);
      }

      objc_msgSend_popDebugGroup(v75, v97, v98, v99, v100);
      objc_msgSend_endEncoding(v75, v103, v104, v105, v106);
      objc_msgSend_commit(v70, v107, v108, v109, v110);
      objc_msgSend_waitUntilCompleted(v70, v111, v112, v113, v114);
      if (objc_msgSend_status(v70, v115, v116, v117, v118) != 4)
      {
        v144 = 0;
        v123 = objc_msgSend_error(v70, v119, v120, v121, v122);
        v128 = objc_msgSend_debugDescription(v123, v124, v125, v126, v127);
        v129 = v128;
        v134 = objc_msgSend_UTF8String(v128, v130, v131, v132, v133);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v135, &v144, @"DynamicAtlas command buffer failed with error: %s", v136, v134);
        v137 = v144;

        v138 = *(a1 + 232);
        v139 = *(v138 + 472);
        *(v138 + 472) = v137;
      }
    }
  }

  v140 = objc_msgSend_setSignaledValue_(v3, v18, *(a1 + 248), v20, v21);
  v141 = _MXISignpostLogSystem(v140);
  v147 = 0u;
  v148 = 0u;
  core::get_info(&v147);
  v142 = v141;
  v143 = v142;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
  {
    *buf = 134218752;
    *&buf[4] = v147.i64[0];
    *&buf[12] = 2048;
    *&buf[14] = v147.i64[1];
    *&buf[22] = 2048;
    v150 = v148;
    v151 = 2048;
    v152 = *(&v148 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v143, OS_SIGNPOST_INTERVAL_END, v5, "MXI_MEMORY_DYNAMIC_ALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }
}

id sub_22F9E6854(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22F9C7AD4();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22F9E1F60(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22F9E89B8(a1, v13);
    v7 = a1[1];
    result = sub_22F9E8A68(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22F9E6934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22F9E8A68(va);
  _Unwind_Resume(a1);
}

void tiled::Processor::GetMesh(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v172 = *MEMORY[0x277D85DE8];
  v6 = _mxi_log(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v6, OS_LOG_TYPE_DEFAULT, "[Tiled] [TiledProcessor] Generating mesh", buf, 2u);
  }

  v8 = _MXISignpostLogSystem(v7);
  v9 = _MXISignpostCreate(v8);
  v10 = _MXISignpostLogSystem(v9);
  v159 = 0u;
  v160 = 0u;
  core::get_info(&v159);
  v11 = v10;
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134218752;
    *&buf[4] = v159;
    *&buf[12] = 2048;
    *&buf[14] = *(&v159 + 1);
    *&buf[22] = 2048;
    *&buf[24] = v160;
    LOWORD(v162) = 2048;
    *(&v162 + 2) = *(&v160 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MXI_SIGNPOST_MESH_GENERATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v18 = *a1;
  if (!*(*a1 + 168))
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (*(v18 + 411) == 1)
  {
    v19 = 1 << (*(v18 + 356) - 1);
    v20 = *(v18 + 352);
    v21 = *(v18 + 392);
    memset(buf, 0, sizeof(buf));
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    *buf = v20;
    *&buf[8] = v19;
    *&buf[24] = *(v18 + 360);
    v155 = v21;
    *(&v162 + 1) = v21;
    v22 = objc_msgSend_newCommandQueue(*v18, v14, v15, v16, v17);
    v27 = objc_msgSend_commandBuffer(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_computeCommandEncoder(v27, v28, v29, v30, v31);
    objc_msgSend_setLabel_(v32, v33, @"MXI: Remove Layer Mesh Overlap", v34, v35);
    objc_msgSend_setComputePipelineState_(v32, v36, *(v18 + 104), v37, v38);
    objc_msgSend_setBytes_length_atIndex_(v32, v39, buf, 192, 5);
    objc_msgSend_setBuffer_offset_atIndex_(v32, v40, *(v18 + 280), 0, 17);
    objc_msgSend_setBuffer_offset_atIndex_(v32, v41, *(v18 + 232), 0, 10);
    v42 = v20 - v19 - 1;
    *&v159 = (v42 + v155) / (v20 - v19) + 1;
    *(&v159 + 1) = (v42 + HIDWORD(v155)) / (v20 - v19) + 1;
    *&v160 = 1;
    v157 = vdupq_n_s64(0x10uLL);
    v158 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v32, v43, &v159, &v157, v44);
    objc_msgSend_endEncoding(v32, v45, v46, v47, v48);
    objc_msgSend_commit(v27, v49, v50, v51, v52);
    objc_msgSend_waitUntilCompleted(v27, v53, v54, v55, v56);
    if (objc_msgSend_status(v27, v57, v58, v59, v60) != 4)
    {
      v131 = objc_msgSend_error(v27, v61, v62, v63, v64);
      v136 = objc_msgSend_debugDescription(v131, v132, v133, v134, v135);
      v137 = v136;
      v142 = objc_msgSend_UTF8String(v136, v138, v139, v140, v141);
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v143, a2, @"Mesh processing command buffer failed with error: %s", v144, v142);

      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;

      return;
    }
  }

  v65 = objc_msgSend_contents(*(v18 + 184), v14, v15, v16, v17);
  spid = v9;
  v66 = v65[1];
  v67 = v65[2];
  v68 = v65[3];
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v148 = a3;
  sub_22F9C7754((a3 + 72), v67);
  sub_22F9CC4E4((a3 + 48), v67);
  v69 = (4 * v66);
  sub_22F9CC4B4((a3 + 24), v69);
  sub_22F9CC484(a3, v69);
  *(a3 + 96) = v68;
  v153 = *(a3 + 48);
  v154 = *(a3 + 72);
  v74 = objc_msgSend_contents(*(v18 + 264), v70, v71, v72, v73);
  v79 = objc_msgSend_contents(*(v18 + 272), v75, v76, v77, v78);
  v84 = objc_msgSend_contents(*(v18 + 248), v80, v81, v82, v83);
  v147 = v69;
  v89 = objc_msgSend_contents(*(v18 + 256), v85, v86, v87, v88);
  v146 = v13;
  v94 = objc_msgSend_contents(*(v18 + 192), v90, v91, v92, v93);
  v99 = v153;
  if (*(v18 + 344))
  {
    v100 = 6;
  }

  else
  {
    v100 = 1;
  }

  v101 = *(v18 + 360);
  v102 = (v100 * v101 - 1);
  v156 = v18;
  v103 = v154;
  v152 = v84;
  if ((v102 & 0x80000000) == 0)
  {
    v104 = v74;
    v105 = 0;
    if (*(v18 + 415))
    {
      v106 = 2;
    }

    else
    {
      v106 = 0;
    }

    v150 = v154 + 4 * v68;
    v151 = v74;
    v149 = v153 + 12 * v68;
    v107 = v102 + 1;
    v108 = 2 * v100 * v101 - 2;
    v109 = (v94 + 12 * v102 + 8);
    do
    {
      v110 = v89;
      v111 = v79;
      v112 = (v108 * *(v156 + 364));
      v113 = *v109;
      memcpy((v103 + 4 * v105), (v104 + 4 * v112), 4 * v113);
      v114 = (v99 + 12 * v105);
      v115 = v112 + 2 * v112;
      memcpy(v114, (v152 + 4 * v115), 12 * v113);
      v105 += v113;
      v116 = (*(v109 - 1) - *v109);
      v117 = (v111 + 4 * v112);
      v79 = v111;
      v89 = v110;
      memcpy((v150 + 4 * v106), v117, 4 * v116);
      v118 = (v110 + 4 * v115);
      v99 = v153;
      memcpy((v149 + 12 * v106), v118, 4 * (v116 + 2 * v116));
      v104 = v151;
      v103 = v154;
      v106 += v116;
      v108 -= 2;
      v109 -= 3;
      --v107;
    }

    while (v107);
  }

  v119 = *v148;
  v120 = objc_msgSend_contents(*(v156 + 232), v95, v96, v97, v98);
  memcpy(v119, v120, 16 * v147);
  v121 = *(v148 + 24);
  v126 = objc_msgSend_contents(*(v156 + 240), v122, v123, v124, v125);
  v127 = memcpy(v121, v126, 8 * v147);
  v128 = _MXISignpostLogSystem(v127);
  v159 = 0u;
  v160 = 0u;
  core::get_info(&v159);
  v129 = v128;
  v130 = v129;
  if (v146 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v129))
  {
    *buf = 134218752;
    *&buf[4] = v159;
    *&buf[12] = 2048;
    *&buf[14] = *(&v159 + 1);
    *&buf[22] = 2048;
    *&buf[24] = v160;
    LOWORD(v162) = 2048;
    *(&v162 + 2) = *(&v160 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v130, OS_SIGNPOST_INTERVAL_END, spid, "MXI_SIGNPOST_MESH_GENERATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }
}

uint64_t tiled::Processor::GetAtlas(uint64_t *a1, void *a2, _DWORD *a3, int a4, int a5, unsigned __int8 a6, void *a7, float a8)
{
  v301 = *MEMORY[0x277D85DE8];
  v15 = _mxi_log(a1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v15, OS_LOG_TYPE_DEFAULT, "[Tiled] [TiledProcessor] Copying the atlas", buf, 2u);
  }

  log = _MXISignpostLogSystem(v16);
  spid = _MXISignpostCreate(log);
  v17 = _MXISignpostLogSystem(spid);
  *v295 = 0u;
  v296 = 0u;
  core::get_info(v295);
  v18 = v17;
  v19 = v18;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 134218752;
    *&buf[4] = *v295;
    *&buf[12] = 2048;
    *&buf[14] = *&v295[8];
    *&buf[22] = 2048;
    v298 = v296;
    v299 = 2048;
    v300 = *(&v296 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v24 = *a1;
  v25 = *(v24 + 472);
  if (!v25)
  {
    if (!*(v24 + 168))
    {
      return 1;
    }

    v31 = *(objc_msgSend_contents(*(v24 + 184), v20, v21, v22, v23) + 4);
    v32 = *(v24 + 348) / *(v24 + 352);
    v286 = v31 + v32 * v32 - 1;
    v287 = v32 * v32;
    v33 = v286 / (v32 * v32);
    if (a3)
    {
      *a3 = v33;
    }

    if (!v31)
    {
      return 1;
    }

    if ((*(v24 + 404) & 1) == 0 && v33 > *(v24 + 400))
    {
      return 0;
    }

    v290 = v33;
    loga = objc_msgSend_newCommandQueue(*v24, v27, v28, v29, v30);
    v289 = objc_msgSend_commandBuffer(loga, v34, v35, v36, v37);
    if (*(v24 + 409) == 1)
    {
      v42 = *(v24 + 160);
      if (v42)
      {
        v43 = v42;
        *a2 = v43;
LABEL_32:
        v91 = v43;
        if (objc_msgSend_mipmapLevelCount(v91, v92, v93, v94, v95) >= 2)
        {
          v100 = objc_msgSend_computeCommandEncoder(v289, v96, v97, v98, v99);
          objc_msgSend_setLabel_(v100, v101, @"MXI: ASTC MipMapping ComputeCommandEncoder", v102, v103);
          objc_msgSend_setComputePipelineState_(v100, v104, *(v24 + 32), v105, v106);
          objc_msgSend_setBytes_length_atIndex_(v100, v107, v24 + 380, 4, 0);
          v288 = vdupq_n_s64(8uLL);
          for (i = 1; objc_msgSend_mipmapLevelCount(v91, v108, v109, v110, v111) > i; ++i)
          {
            if (v287 <= v286)
            {
              v113 = 0;
              v114 = *(v24 + 348) >> i >> 2;
              while (1)
              {
                v117 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v91, v108, 186, 2, i - 1, 1, v113, 1);
                if (!v117)
                {
                  objc_msgSend_fillError_withDescription_(MXIInternalError, v115, a7, @"Failed creating source texture view for compression.", v116);
                  goto LABEL_53;
                }

                v120 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(v91, v115, *(v24 + 336), 2, i, v113);
                if (!v120)
                {
                  break;
                }

                objc_msgSend_setTexture_atIndex_(v100, v118, v120, 0, v119);
                objc_msgSend_setTexture_atIndex_(v100, v121, v117, 1, v122);
                *buf = v114;
                *&buf[8] = v114;
                *&buf[16] = 1;
                *v295 = v288;
                *&v296 = 1;
                objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v100, v123, buf, v295, v124);

                if (++v113 >= v290)
                {
                  goto LABEL_40;
                }
              }

              objc_msgSend_fillError_withDescription_(MXIInternalError, v118, a7, @"Failed creating destination texture view for compression.", v119);
              goto LABEL_52;
            }

LABEL_40:
            ;
          }

          objc_msgSend_endEncoding(v100, v108, v109, v110, v111);
          objc_msgSend_commit(v289, v253, v254, v255, v256);
          objc_msgSend_waitUntilCompleted(v289, v257, v258, v259, v260);
          if (objc_msgSend_status(v289, v261, v262, v263, v264) == 4)
          {

            goto LABEL_81;
          }

          v117 = objc_msgSend_error(v289, v265, v266, v267, v268);
          v277 = objc_msgSend_debugDescription(v117, v273, v274, v275, v276);
          v278 = v277;
          v283 = objc_msgSend_UTF8String(v277, v279, v280, v281, v282);
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v284, a7, @"ASTC MipMapping command buffer failed with error: %s", v285, v283);

LABEL_52:
LABEL_53:

          goto LABEL_76;
        }

LABEL_81:

LABEL_82:
        v269 = _MXISignpostLogSystem(v221);
        *v295 = 0u;
        v296 = 0u;
        core::get_info(v295);
        v270 = v269;
        v271 = v270;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v270))
        {
          *buf = 134218752;
          *&buf[4] = *v295;
          *&buf[12] = 2048;
          *&buf[14] = *&v295[8];
          *&buf[22] = 2048;
          v298 = v296;
          v299 = 2048;
          v300 = *(&v296 + 1);
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v271, OS_SIGNPOST_INTERVAL_END, spid, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
        }

        v26 = 1;
        goto LABEL_86;
      }

      v44 = objc_msgSend_blitCommandEncoder(v289, v38, v39, v40, v41);
      objc_msgSend_setLabel_(v44, v54, @"MXI: Atlas Packing BlitCommandEncoder", v55, v56);
      v57 = objc_opt_new();
      objc_msgSend_setTextureType_(v57, v58, 3, v59, v60);
      objc_msgSend_setWidth_(v57, v61, *(v24 + 348), v62, v63);
      objc_msgSend_setHeight_(v57, v64, *(v24 + 348), v65, v66);
      objc_msgSend_setMipmapLevelCount_(v57, v67, *(v24 + 356), v68, v69);
      objc_msgSend_setArrayLength_(v57, v70, v290, v71, v72);
      objc_msgSend_setPixelFormat_(v57, v73, *(v24 + 328), v74, v75);
      objc_msgSend_setUsage_(v57, v76, 19, v77, v78);
      objc_msgSend_setStorageMode_(v57, v79, 2, v80, v81);
      v85 = objc_msgSend_newSharedTextureWithDescriptor_(*v24, v82, v57, v83, v84);
      *a2 = v85;
      if (v85)
      {
        if (v287 <= v286)
        {
          v90 = 0;
          do
          {
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v44, v86, *(*(v24 + 112) + 8 * v90), 0, 0, *a2, v90, 0, 1, 1);
            ++v90;
          }

          while (v90 < v290);
        }

        objc_msgSend_endEncoding(v44, v86, v87, v88, v89);

        v43 = *a2;
        goto LABEL_32;
      }

      goto LABEL_64;
    }

    if (a4)
    {
      v44 = objc_msgSend_blitCommandEncoder(v289, v38, v39, v40, v41);
      objc_msgSend_setLabel_(v44, v45, @"MXI: MipMapping BlitCommandEncoder", v46, v47);
      v48 = *(v24 + 160);
      if (v48)
      {
        v49 = v48;
        *a2 = v49;
      }

      else
      {
        v57 = objc_opt_new();
        objc_msgSend_setTextureType_(v57, v167, 3, v168, v169);
        objc_msgSend_setWidth_(v57, v170, *(v24 + 348), v171, v172);
        objc_msgSend_setHeight_(v57, v173, *(v24 + 348), v174, v175);
        objc_msgSend_setMipmapLevelCount_(v57, v176, *(v24 + 356), v177, v178);
        objc_msgSend_setArrayLength_(v57, v179, v290, v180, v181);
        objc_msgSend_setPixelFormat_(v57, v182, 71, v183, v184);
        objc_msgSend_setUsage_(v57, v185, 3, v186, v187);
        objc_msgSend_setStorageMode_(v57, v188, 2, v189, v190);
        v194 = objc_msgSend_newSharedTextureWithDescriptor_(*v24, v191, v57, v192, v193);
        *a2 = v194;
        if (!v194)
        {
LABEL_64:
          objc_msgSend_fillError_withDescription_(MXIInternalError, v86, a7, @"Failed creating atlas.", v89);

          goto LABEL_76;
        }

        if (v287 <= v286)
        {
          v195 = 0;
          do
          {
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v44, v86, *(*(v24 + 136) + 8 * v195), 0, 0, *a2, v195, 0, 1, 1);
            ++v195;
          }

          while (v195 < v290);
        }

        v49 = *a2;
      }

      v196 = v49;
      if (objc_msgSend_mipmapLevelCount(v196, v197, v198, v199, v200) >= 2)
      {
        objc_msgSend_generateMipmapsForTexture_(v44, v201, v196, v203, v204);
      }

      objc_msgSend_endEncoding(v44, v201, v202, v203, v204);
      objc_msgSend_commit(v289, v205, v206, v207, v208);
      objc_msgSend_waitUntilCompleted(v289, v209, v210, v211, v212);
      if (objc_msgSend_status(v289, v213, v214, v215, v216) == 4)
      {

        goto LABEL_82;
      }

      v222 = objc_msgSend_error(v289, v217, v218, v219, v220);
      v227 = objc_msgSend_debugDescription(v222, v223, v224, v225, v226);
      v228 = v227;
      v233 = objc_msgSend_UTF8String(v227, v229, v230, v231, v232);
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v234, a7, @"MipMapping command buffer failed with error: %s", v235, v233);

LABEL_76:
      v26 = 0;
LABEL_86:

      return v26;
    }

    *buf = 0;
    if (a5)
    {
      v50 = a6 >> 4;
      v51 = a6 & 0xF;
      v52 = *(v24 + 160);
      if (!v52)
      {
        v53 = image::ToASTC(*(v24 + 112), v290, v50, v51, *(v24 + 376), *(v24 + 356), *(v24 + 380));
LABEL_67:
        *a2 = v53;
LABEL_70:
        if (v53)
        {
          v221 = sub_22F9C7D28(buf, 0);
          goto LABEL_82;
        }

        v236 = _mxi_log(0);
        if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
        {
          *v295 = 0;
          _os_log_impl(&dword_22F9C3000, v236, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:1300] Could not compress to ASTC", v295, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v237, a7, @"Could not compress to ASTC", v238);
        goto LABEL_75;
      }
    }

    else
    {
      if (*(v24 + 372) >= 2u)
      {
        sub_22F9E7C78();
      }

      v50 = a6 >> 4;
      v51 = a6 & 0xF;
      v52 = *(v24 + 160);
      if (!v52)
      {
        v53 = image::ToASTC(*(v24 + 112), v290, v50, v51, *buf, *(v24 + 356), a8);
        goto LABEL_67;
      }
    }

    v125 = objc_msgSend_pixelFormat(v52, v38, v39, v40, v41);
    v127 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v52, v126, v125, 3, 0, *(v24 + 356), 0, v290);
    *a2 = v127;
    if (v127)
    {
      v130 = v127;
      if (objc_msgSend_mipmapLevelCount(v130, v131, v132, v133, v134) < 2)
      {
LABEL_48:
        v166 = *a2;
        if (a5)
        {
          image::ToASTC(v166, v50, v51, *(v24 + 376), *(v24 + 380));
        }

        else
        {
          image::ToASTC(v166, v50, v51, *buf, a8);
        }
        *a2 = ;

        v53 = *a2;
        goto LABEL_70;
      }

      v139 = objc_msgSend_blitCommandEncoder(v289, v135, v136, v137, v138);
      objc_msgSend_setLabel_(v139, v140, @"MXI: MipMapping BlitCommandEncoder", v141, v142);
      objc_msgSend_generateMipmapsForTexture_(v139, v143, v130, v144, v145);
      objc_msgSend_endEncoding(v139, v146, v147, v148, v149);
      objc_msgSend_commit(v289, v150, v151, v152, v153);
      objc_msgSend_waitUntilCompleted(v289, v154, v155, v156, v157);
      if (objc_msgSend_status(v289, v158, v159, v160, v161) == 4)
      {

        goto LABEL_48;
      }

      v239 = objc_msgSend_error(v289, v162, v163, v164, v165);
      v244 = objc_msgSend_debugDescription(v239, v240, v241, v242, v243);
      v245 = v244;
      v250 = objc_msgSend_UTF8String(v244, v246, v247, v248, v249);
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v251, a7, @"MipMapping command buffer failed with error: %s", v252, v250);
    }

    else
    {
      objc_msgSend_fillError_withDescription_(MXIInternalError, v128, a7, @"Failed creating atlas.", v129);
    }

LABEL_75:
    sub_22F9C7D28(buf, 0);
    goto LABEL_76;
  }

  if (!a7)
  {
    return 0;
  }

  v26 = 0;
  *a7 = v25;
  return v26;
}

uint64_t tiled::Processor::GetAtlas(uint64_t *a1, id **a2, int a3, char a4, unsigned __int8 a5, void *a6, float a7)
{
  v210 = *MEMORY[0x277D85DE8];
  v13 = _mxi_log(a1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_DEFAULT, "[Tiled] [TiledProcessor] Copying the atlas", buf, 2u);
  }

  v15 = _MXISignpostLogSystem(v14);
  v16 = _MXISignpostCreate(v15);
  v17 = _MXISignpostLogSystem(v16);
  *v204 = 0u;
  v205 = 0u;
  core::get_info(v204);
  v18 = v17;
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 134218752;
    *&buf[4] = *v204;
    *&buf[12] = 2048;
    *&buf[14] = *&v204[8];
    *&buf[22] = 2048;
    v207 = v205;
    v208 = 2048;
    v209 = *(&v205 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v24 = *a1;
  v25 = *(*a1 + 472);
  if (!v25)
  {
    if (!*(v24 + 168))
    {
      return 1;
    }

    v32 = *(objc_msgSend_contents(*(v24 + 184), v20, v21, v22, v23) + 4);
    if (!v32)
    {
      return 1;
    }

    v33 = *(v24 + 348) / *(v24 + 352) * (*(v24 + 348) / *(v24 + 352));
    v200 = v32 + v33 - 1;
    v201 = v33;
    v34 = v200 / v33;
    if ((*(v24 + 404) & 1) == 0 && v34 > *(v24 + 400))
    {
      return 0;
    }

    v35 = *(v24 + 112);
    v36 = (*(v24 + 120) - v35) >> 3;
    if (v36 < v34)
    {
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v28, a6, @"Mismatched number of atlas slices (%zu) needing compression, expected (%d)", v31, v36, v34);
      return 0;
    }

    if (v33 <= v200)
    {
      v37 = 0;
      do
      {
        if (!v35[v37])
        {
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v28, a6, @"Invalid atlas slice texture (%d)", v31, v37);
          return 0;
        }

        if (!*(*(v24 + 136) + 8 * v37))
        {
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v28, a6, @"Invalid atlas slice view (%d)", v31, v37);
          return 0;
        }

        ++v37;
      }

      while (v37 < v34);
    }

    if (*(v24 + 409) == 1)
    {
      v196 = objc_msgSend_newCommandQueue(*v24, v28, v29, v30, v31);
      v46 = objc_msgSend_commandBuffer(v196, v38, v39, v40, v41);
      if (v201 <= v200)
      {
        v47 = 0;
        v48 = 0;
        do
        {
          sub_22F9E6854(a2, (*(v24 + 112) + v47));
          ++v48;
          v47 += 8;
        }

        while (v48 < v34);
      }

      if (objc_msgSend_mipmapLevelCount(**a2, v42, v43, v44, v45) >= 2)
      {
        v195 = v46;
        v198 = objc_msgSend_computeCommandEncoder(v46, v49, v50, v51, v52);
        objc_msgSend_setLabel_(v198, v53, @"MXI: ASTC MipMapping ComputeCommandEncoder", v54, v55);
        objc_msgSend_setComputePipelineState_(v198, v56, *(v24 + 32), v57, v58);
        v197 = vdupq_n_s64(8uLL);
        for (i = 1; ; i = v199 + 1)
        {
          v199 = i;
          if (objc_msgSend_mipmapLevelCount(**a2, v59, v60, v61, v62) <= i)
          {
            break;
          }

          if (v201 <= v200)
          {
            v64 = 0;
            v65 = *(v24 + 348) >> v199 >> 2;
            while (1)
            {
              v68 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_((*a2)[v64], v59, 186, 2, (v199 - 1), 1, 0, 1);
              if (!v68)
              {
                objc_msgSend_fillError_withDescription_(MXIInternalError, v66, a6, @"Failed creating source texture view for compression.", v67);
                goto LABEL_72;
              }

              v71 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_((*a2)[v64], v66, *(v24 + 336), 2, v199, 0);
              if (!v71)
              {
                break;
              }

              objc_msgSend_setTexture_atIndex_(v198, v69, v71, 0, v70);
              objc_msgSend_setTexture_atIndex_(v198, v72, v68, 1, v73);
              objc_msgSend_setBytes_length_atIndex_(v198, v74, v24 + 380, 4, 0);
              *buf = v65;
              *&buf[8] = v65;
              *&buf[16] = 1;
              *v204 = v197;
              *&v205 = 1;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v198, v75, buf, v204, v76);

              if (++v64 >= v34)
              {
                goto LABEL_34;
              }
            }

            objc_msgSend_fillError_withDescription_(MXIInternalError, v69, a6, @"Failed creating destination texture view for compression.", v70);
            goto LABEL_71;
          }

LABEL_34:
          ;
        }

        objc_msgSend_endEncoding(v198, v59, v60, v61, v62);
        objc_msgSend_commit(v195, v163, v164, v165, v166);
        objc_msgSend_waitUntilCompleted(v195, v167, v168, v169, v170);
        if (objc_msgSend_status(v195, v171, v172, v173, v174) == 4)
        {

          v46 = v195;
          goto LABEL_81;
        }

        v68 = objc_msgSend_error(v195, v175, v176, v177, v178);
        v186 = objc_msgSend_debugDescription(v68, v182, v183, v184, v185);
        v187 = v186;
        v192 = objc_msgSend_UTF8String(v186, v188, v189, v190, v191);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v193, a6, @"MipMapping command buffer failed with error: %s", v194, v192);

LABEL_71:
LABEL_72:

        return 0;
      }

LABEL_81:

      goto LABEL_82;
    }

    if (a3)
    {
      v77 = objc_msgSend_newCommandQueue(*v24, v28, v29, v30, v31);
      v78 = objc_opt_new();
      objc_msgSend_setTextureType_(v78, v79, 2, v80, v81);
      objc_msgSend_setWidth_(v78, v82, *(v24 + 348), v83, v84);
      objc_msgSend_setHeight_(v78, v85, *(v24 + 348), v86, v87);
      objc_msgSend_setMipmapLevelCount_(v78, v88, *(v24 + 356), v89, v90);
      objc_msgSend_setPixelFormat_(v78, v91, 71, v92, v93);
      objc_msgSend_setUsage_(v78, v94, 3, v95, v96);
      objc_msgSend_setStorageMode_(v78, v97, 2, v98, v99);
      if (v201 <= v200)
      {
        v104 = 0;
        for (j = 0; j < v34; ++j)
        {
          if (*(v24 + 404) == 1)
          {
            *buf = objc_msgSend_newSharedTextureWithDescriptor_(*v24, v100, v78, v102, v103);
            if (!*buf)
            {
              objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v106, a6, @"Failed creating atlas slice (%d)", v107, j);

              return 0;
            }

            sub_22F9E6854(a2, buf);
          }

          else
          {
            sub_22F9E6854(a2, (*(v24 + 112) + v104));
          }

          v104 += 8;
        }
      }

      v108 = objc_msgSend_commandBuffer(v77, v100, v101, v102, v103);
      v113 = objc_msgSend_blitCommandEncoder(v108, v109, v110, v111, v112);
      objc_msgSend_setLabel_(v113, v114, @"MXI: MipMapping BlitCommandEncoder", v115, v116);
      if (v201 <= v200)
      {
        v121 = 0;
        do
        {
          if (*(v24 + 404) == 1)
          {
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v113, v117, *(*(v24 + 136) + 8 * v121), 0, 0, (*a2)[v121], 0, 0, 1, 1);
          }

          if (objc_msgSend_mipmapLevelCount(**a2, v117, v118, v119, v120) >= 2)
          {
            objc_msgSend_generateMipmapsForTexture_(v113, v117, (*a2)[v121], v119, v120);
          }

          ++v121;
        }

        while (v121 < v34);
      }

      objc_msgSend_endEncoding(v113, v117, v118, v119, v120);
      objc_msgSend_commit(v108, v122, v123, v124, v125);
      objc_msgSend_waitUntilCompleted(v108, v126, v127, v128, v129);
      if (objc_msgSend_status(v108, v130, v131, v132, v133) != 4)
      {
        v146 = objc_msgSend_error(v108, v134, v135, v136, v137);
        v151 = objc_msgSend_debugDescription(v146, v147, v148, v149, v150);
        v152 = v151;
        v157 = objc_msgSend_UTF8String(v151, v153, v154, v155, v156);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v158, a6, @"MipMapping command buffer failed with error: %s", v159, v157);

        return 0;
      }

      goto LABEL_82;
    }

    v203 = 0;
    if (a4)
    {
      image::ToASTCs(v35, v34, a5 >> 4, a5 & 0xF, *(v24 + 376), *(v24 + 356), buf, *(v24 + 380));
      sub_22F9E8ABC(a2);
      *a2 = *buf;
      a2[2] = *&buf[16];
      memset(buf, 0, sizeof(buf));
      *v204 = buf;
      sub_22F9DC140(v204);
      if (v34 != a2[1] - *a2)
      {
        v140 = _mxi_log(v139);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v140, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:1489] Could not compress to ASTC", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v141, a6, @"Could not compress to ASTC", v142);
LABEL_78:
        sub_22F9C7D28(&v203, 0);
        return 0;
      }
    }

    else
    {
      v143 = *(v24 + 372);
      if (v143 >= 2)
      {
        if (v143 <= 0x20)
        {
          v144 = v143 - 1;
        }

        else
        {
          v144 = 31;
        }

        *v204 = v144;
        sub_22F9E7C78();
      }

      if (v33 <= v200)
      {
        v145 = 0;
        while (1)
        {
          *buf = image::ToASTC(*(*(v24 + 112) + 8 * v145), a5 >> 4, a5 & 0xF, v203, *(v24 + 356), a7);
          if (!*buf)
          {
            break;
          }

          sub_22F9E6854(a2, buf);

          if (++v145 >= v34)
          {
            goto LABEL_68;
          }
        }

        v160 = _mxi_log(0);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *v204 = 0;
          _os_log_impl(&dword_22F9C3000, v160, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:1502] Could not compress to ASTC", v204, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v161, a6, @"Could not compress to ASTC", v162);
        goto LABEL_78;
      }
    }

LABEL_68:
    v138 = sub_22F9C7D28(&v203, 0);
LABEL_82:
    v179 = _MXISignpostLogSystem(v138);
    *v204 = 0u;
    v205 = 0u;
    core::get_info(v204);
    v180 = v179;
    v181 = v180;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v180))
    {
      *buf = 134218752;
      *&buf[4] = *v204;
      *&buf[12] = 2048;
      *&buf[14] = *&v204[8];
      *&buf[22] = 2048;
      v207 = v205;
      v208 = 2048;
      v209 = *(&v205 + 1);
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v181, OS_SIGNPOST_INTERVAL_END, v16, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
    }

    return 1;
  }

  if (!a6)
  {
    return 0;
  }

  v26 = v25;
  result = 0;
  *a6 = v25;
  return result;
}

void sub_22F9E88B8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22F9C7AD4();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22F9E1F60(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22F9E89B8(a1, v11);
    sub_22F9E8A68(v11);
  }
}

void sub_22F9E89A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22F9E8A68(va);
  _Unwind_Resume(a1);
}

void sub_22F9E89B8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_22F9E8A68(uint64_t a1)
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

void sub_22F9E8ABC(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_22F9E8B20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_22F9E8B6C(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

uint64_t sub_22F9E8B6C(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 136);
  sub_22F9DC140(&v4);
  v4 = (a1 + 112);
  sub_22F9DC140(&v4);

  return a1;
}

void sub_22F9E8CD8()
{
  if (__cxa_guard_acquire(byte_27DAD27A0))
  {
    unk_27DAD27B0 = xmmword_22FA081F0;
    unk_27DAD27C0 = xmmword_22FA08200;
    xmmword_27DAD27D0 = xmmword_22FA08210;
    unk_27DAD27E0 = xmmword_22FA08220;
    xmmword_27DAD27F0 = xmmword_22FA08230;
    unk_27DAD2800 = xmmword_22FA08240;
    xmmword_27DAD2810 = xmmword_22FA08250;
    unk_27DAD2820 = xmmword_22FA08260;
    xmmword_27DAD2830 = xmmword_22FA08270;
    unk_27DAD2840 = xmmword_22FA08280;
    xmmword_27DAD2850 = xmmword_22FA08290;
    unk_27DAD2860 = xmmword_22FA082A0;
    xmmword_27DAD2870 = xmmword_22FA082B0;
    unk_27DAD2880 = xmmword_22FA082C0;
    xmmword_27DAD2890 = xmmword_22FA082D0;
    unk_27DAD28A0 = xmmword_22FA082E0;
    xmmword_27DAD28B0 = xmmword_22FA082F0;
    unk_27DAD28C0 = xmmword_22FA08300;
    __cxa_guard_release(byte_27DAD27A0);
  }
}

void sub_22F9E9FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    *(v35 - 120) = v37;
    operator delete(v37);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22F9EA128(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22F9D6F14(a1, a2);
  }

  return a1;
}

void sub_22F9EA184(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void init_block_size_descriptor(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6, float a7)
{
  if (a3 >= 2)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_22F9EB78C(uint64_t result, unint64_t *a2)
{
  v2 = result;
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(result + 3);
  if (v3 > 0x40)
  {
    astc::rand_init(v25, a2);
    v21 = *(v2 + 3);
    if (*(v2 + 3))
    {
      bzero(v24, v21);
    }

    v22 = 0;
    do
    {
      result = astc::rand(v25, v21);
      v23 = result % *(v2 + 3);
      if ((v24[v23] & 1) == 0)
      {
        *(v2 + 14717360 + v22++) = v23;
        v24[v23] = 1;
      }
    }

    while (v22 < 0x40);
  }

  else if (*(result + 3))
  {
    v4 = 0;
    v5 = (v3 + 15) & 0xF0;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = result + 14717367;
    v8 = xmmword_22FA08320;
    v9 = xmmword_22FA08330;
    v10 = xmmword_22FA08340;
    v11 = xmmword_22FA08350;
    v12 = xmmword_22FA08360;
    v13 = xmmword_22FA08370;
    v14 = xmmword_22FA07DD0;
    v15 = xmmword_22FA07DE0;
    v16 = vdupq_n_s64(0x10uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v6, v15));
      if (vuzp1_s8(vuzp1_s16(v17, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 - 7) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 - 6) = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v14))), *&v6).i8[2])
      {
        *(v7 + v4 - 5) = v4 | 2;
        *(v7 + v4 - 4) = v4 | 3;
      }

      v18 = vmovn_s64(vcgeq_u64(v6, v13));
      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i32[1])
      {
        *(v7 + v4 - 3) = v4 | 4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i8[5])
      {
        *(v7 + v4 - 2) = v4 | 5;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v12)))).i8[6])
      {
        *(v7 + v4 - 1) = v4 | 6;
        *(v7 + v4) = v4 | 7;
      }

      v19 = vmovn_s64(vcgeq_u64(v6, v11));
      if (vuzp1_s8(vuzp1_s16(v19, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 + 1) = v4 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v19, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 + 2) = v4 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v10))), *&v6).i8[2])
      {
        *(v7 + v4 + 3) = v4 | 0xA;
        *(v7 + v4 + 4) = v4 | 0xB;
      }

      v20 = vmovn_s64(vcgeq_u64(v6, v9));
      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i32[1])
      {
        *(v7 + v4 + 5) = v4 | 0xC;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i8[5])
      {
        *(v7 + v4 + 6) = v4 | 0xD;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v8)))).i8[6])
      {
        *(v7 + v4 + 7) = v4 | 0xE;
        *(v7 + v4 + 8) = v4 | 0xF;
      }

      v13 = vaddq_s64(v13, v16);
      v4 += 16;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v12 = vaddq_s64(v12, v16);
      v11 = vaddq_s64(v11, v16);
      v10 = vaddq_s64(v10, v16);
      v9 = vaddq_s64(v9, v16);
      v8 = vaddq_s64(v8, v16);
    }

    while (v5 != v4);
  }

  return result;
}

int32x4_t rgba_delta_unpack(int32x4_t *a1, int32x4_t *a2, uint32x4_t a3, int8x16_t a4)
{
  v4.i64[0] = 0x8000000080;
  v4.i64[1] = 0x8000000080;
  v5 = vorrq_s8(vshrq_n_u32(a3, 1uLL), vandq_s8(a4, v4));
  v6 = vshrq_n_u32(a4, 1uLL);
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  v7.i64[0] = 0x2000000020;
  v7.i64[1] = 0x2000000020;
  v8 = vorrq_s8((*&vtstq_s32(v6, v7) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), vandq_s8(v6, v4));
  v9 = vaddq_s32(v8, v5);
  if (v8.i32[0] + v8.i32[1] + v8.i32[2] < 0)
  {
    v10.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v5, 2), v5), 1uLL).u64[0];
    v10.i64[1] = v5.i64[1];
    v5.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v9, 2), v9), 1uLL).u64[0];
    v5.i64[1] = v9.i64[1];
    v9 = v10;
  }

  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  *a1 = vminq_s32(vmaxq_s32(v5, 0), v11);
  result = vminq_s32(vmaxq_s32(v9, 0), v11);
  *a2 = result;
  return result;
}

__n128 *rgba_unpack(__n128 *result, __n128 *a2, __n128 a3, __n128 a4)
{
  v4 = vadd_s32(vadd_s32(vzip1_s32(a3.n128_u64[0], a4.n128_u64[0]), vzip2_s32(a3.n128_u64[0], a4.n128_u64[0])), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  if (vcgt_s32(v4, vdup_lane_s32(v4, 1)).u8[0])
  {
    v5.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a3, 2), a3), 1uLL).u64[0];
    v5.n128_u64[1] = a3.n128_u64[1];
    a3.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a4, 2), a4), 1uLL).u64[0];
    a3.n128_u64[1] = a4.n128_u64[1];
    a4 = v5;
  }

  *result = a3;
  *a2 = a4;
  return result;
}

void unpack_color_endpoints(uint64_t result, int a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5, int32x4_t *a6, __n128 *a7, __n128 a8, int32x4_t a9, int32x4_t a10, int32x4_t a11)
{
  v15 = result;
  *a4 = 0;
  *a5 = 0;
  switch(a2)
  {
    case 0:
      v17 = *a3;
      v18 = a3[1];
      goto LABEL_102;
    case 1:
      v113 = a3[1];
      v17 = v113 & 0xC0 | (*a3 >> 2);
      v18 = v17 + (v113 & 0x3F);
      if (v18 >= 0xFF)
      {
        v18 = 255;
      }

LABEL_102:
      a8.n128_u32[3] = 255;
      v114.i32[0] = v17;
      v114.i32[1] = v17;
      v114.i64[1] = v17 | 0xFF00000000;
      a8.n128_u32[0] = v18;
      *a6 = v114;
      a8.n128_u32[1] = v18;
      a8.n128_u32[2] = v18;
      goto LABEL_108;
    case 2:
      *a4 = 1;
      v37 = *a3;
      v38 = a3[1];
      v39 = 16 * v37 - 8;
      v40 = v38 >= v37;
      if (v38 >= v37)
      {
        v41 = v37 << 8;
      }

      else
      {
        v41 = (v38 << 8) | 0x80;
      }

      if (v40)
      {
        v42 = 16 * v38;
      }

      else
      {
        v42 = v39;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = v41;
      a8.n128_u32[1] = v41;
      v43.i32[3] = 30720;
      a8.n128_u32[2] = v41;
      v44 = 16 * v42;
      goto LABEL_42;
    case 3:
      *a4 = 1;
      v57 = *a3;
      v58 = *a3;
      v59 = a3[1];
      v60 = (16 * v59) & 0xF00 | (2 * v58);
      v61 = (16 * v59) & 0xE00 | (4 * (v58 & 0x7F));
      v62 = v57 >= 0;
      if (v57 < 0)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v62)
      {
        v64 = 30;
      }

      else
      {
        v64 = 124;
      }

      if (v62)
      {
        v61 = v60;
      }

      v65 = ((v59 << v63) & v64) + v61;
      if (v65 >= 0xFFF)
      {
        v65 = 4095;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * v61;
      a8.n128_u32[1] = 16 * v61;
      v43.i32[3] = 30720;
      a8.n128_u32[2] = 16 * v61;
      v44 = 16 * v65;
LABEL_42:
      v43.i32[0] = v44;
      *a6 = a8;
      v43.i32[1] = v44;
      goto LABEL_95;
    case 4:
      a8.n128_u8[0] = *a3;
      v21 = a8.n128_u64[0];
      v21.i8[2] = a3[2];
      v22 = vzip1_s16(v21, v21);
      v22.i16[2] = a8.n128_u16[0];
      a8.n128_u8[0] = a3[1];
      v23 = a8.n128_u64[0];
      v23.i8[2] = a3[3];
      v24 = vzip1_s16(v23, v23);
      v24.i16[2] = a8.n128_u16[0];
      v25 = vmovl_u16(v22);
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      *a6 = vandq_s8(v25, v26);
      a8 = vandq_s8(vmovl_u16(v24), v26);
      goto LABEL_108;
    case 5:
      a8.n128_u8[0] = a3[1];
      a8.n128_u8[4] = a3[3];
      v115 = *&vtst_s32(a8.n128_u64[0], 0x4000000040) & 0xFFFFFF80FFFFFF80;
      *a9.i8 = vorr_s8(v115, vand_s8(a8.n128_u64[0], 0x7E0000007ELL));
      LOBYTE(v115) = *a3;
      BYTE4(v115) = a3[2];
      a8.n128_u64[0] = vorr_s8(vand_s8(vadd_s32(a8.n128_u64[0], a8.n128_u64[0]), 0x10000000100), vand_s8(v115, 0xFF000000FFLL));
      *a9.i8 = vmin_s32(vmax_s32(vsra_n_u32(vshr_n_s32(*a9.i8, 1uLL), a8.n128_u64[0], 1uLL), 0), 0xFF000000FFLL);
      v116 = vzip1q_s32(a9, a9);
      v116.i32[2] = a9.i32[0];
      a8.n128_u64[0] = vshr_n_u32(a8.n128_u64[0], 1uLL);
      v117 = vzip1q_s32(a8, a8);
      v117.i32[2] = a8.n128_u32[0];
      *a6 = v117;
      *a7 = v116;
      if (!result)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 6:
      v126.i32[0] = *a3;
      v126.i32[1] = a3[1];
      v126.i64[1] = a3[2];
      v127 = v126;
      v127.i32[3] = 255;
      v128 = vmulq_s32(vdupq_n_s32(a3[3]), v126);
      *a7 = v127;
      a8 = vshrq_n_s32(v128, 8uLL);
      a8.n128_u32[3] = 255;
      goto LABEL_112;
    case 7:
      *a4 = 1;
      v66 = *a3;
      v67 = a3[1];
      v68 = a3[2];
      v69 = a3[3];
      v70 = (v68 >> 4) & 8 | (v67 >> 5) & 4;
      v71 = v66 >> 6 == 3;
      if (v66 >> 6 == 3)
      {
        v72 = 5;
      }

      else
      {
        v72 = 4;
      }

      if (v66 >> 6 == 3)
      {
        v73 = 0;
      }

      else
      {
        v73 = v66 >> 6;
      }

      v62 = v70 == 12;
      v74 = v70 == 12;
      v75 = v70 >> 2;
      if (v62)
      {
        v75 = v73;
      }

      else
      {
        v72 = v66 >> 6;
      }

      v76 = (v67 >> 6) & 1;
      v77 = (v67 >> 5) & 1;
      v78 = (v68 >> 6) & 1;
      v79 = (v68 >> 5) & 1;
      v80 = (v69 >> 6) & 1;
      v81 = 1 << v72;
      v82 = v76 << 6;
      if (((1 << v72) & 0x30) == 0)
      {
        v82 = 0;
      }

      v83 = v82 & 0xFFFFFFE0 | v67 & 0x1F;
      v84 = 32 * v77;
      v85 = v78 << 6;
      if ((v81 & 0x30) == 0)
      {
        v85 = 0;
      }

      if ((v81 & 0x3A) == 0)
      {
        v84 = 0;
      }

      v86 = v83 | v84;
      v87 = v85 & 0xFFFFFFE0 | v68 & 0x1F;
      v88 = 32 * v79;
      if ((v81 & 0x3A) == 0)
      {
        v88 = 0;
      }

      v89 = v87 | v88;
      v90 = (16 * v81) & (v79 << 6);
      v91 = (v69 >> 1) & 0x40;
      if ((v81 & 0x3B) == 0)
      {
        v91 = 0;
      }

      v92 = v78 << 7;
      if (v72 > 3)
      {
        v92 = 0;
      }

      v93 = v77 << 8;
      v94 = v76 << 8;
      if ((v81 & 0xA) == 0)
      {
        v94 = 0;
      }

      if ((v81 & 5) == 0)
      {
        v93 = 0;
      }

      v95 = v76 << 9;
      if ((v81 & 5) == 0)
      {
        v95 = 0;
      }

      v96 = v79 << 10;
      if (v72)
      {
        v96 = 0;
      }

      v97 = dword_22FA08390[v72];
      v98 = (v92 & 0xFFFFFFC0 | v66 & 0x3F | v96 | v91 | v90 | (8 * v81) & (v80 << 7) | v93 | v94 | v95 | (16 * v69) & (v81 << 8) & 0x200 | (v81 << 9) & (v80 << 10)) << v97;
      v99 = v86 << v97;
      v100 = v89 << v97;
      v101 = !v74 || !v71;
      if (v74 && v71)
      {
        v102 = v100;
      }

      else
      {
        v102 = v98 - v100;
      }

      if (v101)
      {
        v103 = v98 - v99;
      }

      else
      {
        v103 = v99;
      }

      if (v75 == 1)
      {
        v104 = v98;
      }

      else
      {
        v104 = v103;
      }

      if (v75 == 1)
      {
        v105 = v103;
      }

      else
      {
        v105 = v98;
      }

      v106 = v75 == 2;
      if (v75 == 2)
      {
        v107 = v98;
      }

      else
      {
        v107 = v102;
      }

      if (!v106)
      {
        v103 = v104;
        v102 = v105;
      }

      if ((v81 & 0x3D) != 0)
      {
        v108 = 63;
      }

      else
      {
        v108 = 31;
      }

      v109 = v108 & v69;
      v110 = v80 << 6;
      if ((v81 & 0x2D) == 0)
      {
        v110 = 0;
      }

      v111 = (v69 & (32 * v81) & 0x80 | v110 | v109) << v97;
      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * ((v102 - v111) & ~((v102 - v111) >> 31));
      a8.n128_u32[1] = 16 * ((v103 - v111) & ~((v103 - v111) >> 31));
      a8.n128_u32[2] = 16 * ((v107 - v111) & ~((v107 - v111) >> 31));
      v43.i32[3] = 30720;
      *a6 = a8;
      v43.i32[0] = 16 * (v102 & ~(v102 >> 31));
      v44 = 16 * (v107 & ~(v107 >> 31));
      v43.i32[1] = 16 * (v103 & ~(v103 >> 31));
LABEL_95:
      v43.i32[2] = v44;
      *a7 = v43;
      goto LABEL_96;
    case 8:
      a8.n128_u32[3] = 0;
      a8.n128_u32[0] = *a3;
      a8.n128_u32[1] = a3[2];
      a8.n128_u32[2] = a3[4];
      v138.i32[0] = a3[1];
      v138.i32[1] = a3[3];
      v138.i64[1] = a3[5];
      if (a8.n128_u32[1] + a8.n128_u32[0] + a8.n128_u32[2] > v138.i32[1] + v138.i32[0] + v138.i32[2])
      {
        v139.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a8, 2), a8), 1uLL).u64[0];
        v139.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v138, 2), v138), 1uLL).u64[0];
        a8.n128_u64[1] = a3[5];
        v138 = v139;
      }

      *a6 = a8;
      *a7 = v138;
      goto LABEL_125;
    case 9:
      v29.i32[0] = *a3;
      v29.i32[1] = a3[2];
      v29.i64[1] = a3[4];
      v30.i32[0] = a3[1];
      v30.i32[1] = a3[3];
      v30.i64[1] = a3[5];
      v31 = vshrq_n_u32(v30, 1uLL);
      v32 = vsraq_n_u32((*&v30 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v29, 1uLL);
      v33 = vorrq_s8((*&vtstq_s32((*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v31 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v34 = vaddq_s32(v33, v32);
      if (v33.i32[0] + v33.i32[1] + v33.i32[2] < 0)
      {
        v35.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v32, 2), v32), 1uLL).u64[0];
        v35.i64[1] = v32.i64[1];
        v32.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v34, 2), v34), 1uLL).u64[0];
        v32.i64[1] = v34.i64[1];
        v34 = v35;
      }

      v36.i64[0] = 0xFF000000FFLL;
      v36.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v32, 0), v36);
      a8 = vminq_s32(vmaxq_s32(v34, 0), v36);
      *a7 = a8;
LABEL_125:
      a6->i32[3] = 255;
      a7->n128_u32[3] = 255;
      if (!result)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 10:
      v129.i32[0] = *a3;
      v129.i32[1] = a3[1];
      v130 = a3[4];
      v129.i32[2] = a3[2];
      v129.i32[3] = v130;
      v131 = v129;
      v131.i32[3] = a3[5];
      v132 = vmulq_s32(vdupq_n_s32(a3[3]), v129);
      *a7 = v131;
      a8 = vshrq_n_s32(v132, 8uLL);
      a8.n128_u32[3] = v130;
LABEL_112:
      *a6 = a8;
      goto LABEL_113;
    case 11:
      *a4 = 1;
      a8 = sub_22F9EC780(a3, a6, a7);
LABEL_96:
      if (v15 == 3)
      {
        a6->i32[3] = 30720;
        a7->n128_u32[3] = 30720;
        v112 = 1;
        *a5 = 1;
        goto LABEL_120;
      }

      a6->i32[3] = 255;
      a7->n128_u32[3] = 255;
      *a5 = 0;
      if (v15)
      {
LABEL_114:
        if (v15 == 1)
        {
          if ((*a4 & 1) != 0 || *a5 == 1)
          {
            *a6 = xmmword_22FA08380;
            *a7 = xmmword_22FA08380;
            *a4 = 0;
            *a5 = 0;
          }

          v133 = vdupq_n_s32(0x101u);
          *a6 = vmulq_s32(*a6, v133);
          v134 = *a7;
          goto LABEL_121;
        }

        v112 = *a5;
LABEL_120:
        a8.n128_u32[0] = *a4;
        a8.n128_u32[1] = v112;
        a8.n128_u64[0] = vneg_s32(a8.n128_u64[0]);
        v135 = vzip1q_s32(a8, a8);
        v135.i32[2] = a8.n128_u32[0];
        v136.i64[0] = 0x100000001;
        v136.i64[1] = 0x100000001;
        v134 = vbslq_s8(v135, v136, vdupq_n_s32(0x101u));
        *a6 = vmulq_s32(v134, *a6);
        v133 = *a7;
LABEL_121:
        v137 = vmulq_s32(v134, v133);
        goto LABEL_130;
      }

LABEL_126:
      if ((*a4 & 1) != 0 || *a5 == 1)
      {
        *a6 = xmmword_22FA08380;
        *a7 = xmmword_22FA08380;
        *a4 = 0;
        *a5 = 0;
      }

      v140 = vshlq_n_s32(*a6, 8uLL);
      v140.i64[0] |= 0x8000000080uLL;
      v140.i32[2] |= 0x80u;
      v141 = vdupq_n_s32(0x101u);
      v140.i32[3] = vmulq_s32(*a6, v141).i32[3];
      *a6 = v140;
      v142 = vshlq_n_s32(*a7, 8uLL);
      v137.i64[0] = v142.i64[0] | 0x8000000080;
      v137.i32[2] = v142.i32[2] | 0x80;
      v137.i32[3] = vmulq_s32(*a7, v141).i32[3];
LABEL_130:
      *a7 = v137;
      return;
    case 12:
      a10.i32[0] = *a3;
      a10.i32[1] = a3[2];
      a10.i32[2] = a3[4];
      a8 = a10;
      a8.n128_u32[3] = a3[6];
      a11.i32[0] = a3[1];
      a11.i32[1] = a3[3];
      a11.i32[2] = a3[5];
      v27 = a11;
      v27.i32[3] = a3[7];
      if (a10.i32[1] + a10.i32[0] + a10.i32[2] > (a11.i32[1] + a11.i32[0] + a11.i32[2]))
      {
        v28.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a10, 2), a8), 1uLL).u64[0];
        v28.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a11, 2), v27), 1uLL).u64[0];
        a8.n128_u64[1] = v27.u64[1];
        v27 = v28;
      }

      *a6 = a8;
      *a7 = v27;
      if (!result)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 13:
      v118.i32[0] = *a3;
      v118.i32[1] = a3[2];
      v118.i32[2] = a3[4];
      v118.i32[3] = a3[6];
      v119.i32[0] = a3[1];
      v119.i32[1] = a3[3];
      v119.i32[2] = a3[5];
      v119.i32[3] = a3[7];
      v120 = vshrq_n_u32(v119, 1uLL);
      v121 = vsraq_n_u32((*&v119 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v118, 1uLL);
      v122 = vorrq_s8((*&vtstq_s32((*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v120 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v123 = vaddq_s32(v122, v121);
      if (v122.i32[0] + v122.i32[1] + v122.i32[2] < 0)
      {
        v124.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v121, 2), v121), 1uLL).u64[0];
        v124.i64[1] = v121.i64[1];
        v121.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v123, 2), v123), 1uLL).u64[0];
        v121.i64[1] = v123.i64[1];
        v123 = v124;
      }

      v125.i64[0] = 0xFF000000FFLL;
      v125.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v121, 0), v125);
      a8 = vminq_s32(vmaxq_s32(v123, 0), v125);
LABEL_108:
      *a7 = a8;
      if (!result)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 14:
      *a4 = 1;
      a8 = sub_22F9EC780(a3, a6, a7);
      v19 = a3[6];
      v20 = a3[7];
      goto LABEL_29;
    case 15:
      *a4 = 1;
      *a5 = 1;
      a8 = sub_22F9EC780(a3, a6, a7);
      v45 = a3[6];
      v46 = a3[7];
      v47 = (v46 >> 6) & 2 | (v45 >> 7);
      v48 = v45 & 0x7F;
      v49 = v46 & 0x7F;
      v50 = (v49 << (v47 + 1)) & 0x780 | v48;
      v51 = v50 << (4 - v47);
      v52 = ((0x3Fu >> v47) & v46 ^ (0x20u >> v47)) - (0x20u >> v47) + v50;
      v53 = v52 << (4 - v47);
      if (v53 >= 4095)
      {
        v53 = 4095;
      }

      if (v52 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = 32 * v48;
      v56 = 32 * v49;
      if (v47 == 3)
      {
        v54 = v56;
      }

      else
      {
        v55 = v51;
      }

      v19 = 16 * v55;
      v20 = 16 * v54;
LABEL_29:
      a6->i32[3] = v19;
      a7->n128_u32[3] = v20;
      if (!v15)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    default:
LABEL_113:
      if (result)
      {
        goto LABEL_114;
      }

      goto LABEL_126;
  }
}

__n128 sub_22F9EC780(unsigned __int8 *a1, _OWORD *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v8 >> 6) & 2 | (v7 >> 7);
  if (v9 == 3)
  {
    HIDWORD(v10) = 30720;
    LODWORD(v10) = v3 << 8;
    DWORD1(v10) = v5 << 8;
    DWORD2(v10) = (v7 & 0x7F) << 9;
    v11 = v4 << 8;
    *a2 = v10;
    v12 = v6 << 8;
    v13 = (v8 & 0x7F) << 9;
  }

  else
  {
    v14 = (v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4;
    v15 = v7 & 0x7F;
    v16 = v8 & 0x7F;
    v17 = (v6 >> 6) & 1;
    v18 = (v7 >> 6) & 1;
    v19 = (v8 >> 6) & 1;
    v20 = (v7 >> 5) & 1;
    v21 = (v8 >> 5) & 1;
    v22 = 1 << ((v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4);
    v23 = (8 * v5) & 0x200;
    if ((v22 & 0xA4) == 0)
    {
      v23 = 0;
    }

    v24 = v20 << 9;
    if ((v22 & 0x50) == 0)
    {
      v24 = 0;
    }

    v25 = v21 << 10;
    if ((v22 & 0x50) == 0)
    {
      v25 = 0;
    }

    v26 = v17 << 10;
    if ((v22 & 0xA0) == 0)
    {
      v26 = 0;
    }

    v27 = v18 << 11;
    if (v14 < 6)
    {
      v27 = 0;
    }

    v28 = v27 & 0xFFFFFEFF | (((v4 >> 6) & 1) << 8) | v23 | (v22 << 6) & (v18 << 9) | v24 | v25 | v26 | v3;
    v29 = (16 * v22) & (v17 << 6) & 0xFFFFFFC0 | v4 & 0x3F;
    v30 = v19 << 6;
    if ((v22 & 0xE8) != 0)
    {
      v31 = v19 << 6;
    }

    else
    {
      v31 = 0;
    }

    v32 = v29 | v31 | (4 * v22) & (v18 << 7);
    if ((v22 & 0x5B) != 0)
    {
      v33 = 127;
    }

    else
    {
      v33 = 63;
    }

    v34 = v33 & v6;
    v35 = v33 & v5;
    v36 = v19 << 7;
    if ((v22 & 0x12) == 0)
    {
      v36 = 0;
    }

    v37 = v34 | v36;
    if ((v22 & 0x12) != 0)
    {
      v38 = v18 << 7;
    }

    else
    {
      v38 = 0;
    }

    v39 = v35 | v38;
    v40 = 32 * v20;
    v41 = 32 * v21;
    if ((v22 & 0xAF) == 0)
    {
      v41 = 0;
    }

    v42 = v41 | v16;
    if ((v22 & 0xAF) == 0)
    {
      v40 = 0;
    }

    v43 = v40 | v15;
    v44 = v18 << 6;
    if ((v22 & 5) == 0)
    {
      v30 = 0;
    }

    v45 = v42 | v30;
    if ((v22 & 5) != 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = -dword_22FA083A8[v14];
    v48 = (v43 | v46) << v47 >> v47;
    v49 = v45 << v47 >> v47;
    v50 = (v14 >> 1) ^ 3;
    v51 = v28 << v50;
    v52 = v28 - v39;
    v53 = v52 << v50;
    v54 = v28 - v37;
    v55 = v54 << v50;
    v56 = (v52 - (v32 + v48)) << v50;
    v57 = (v54 - (v32 + v49)) << v50;
    v58 = ((v28 - v32) << v50) & ~(((v28 - v32) << v50) >> 31);
    if (v58 >= 4095)
    {
      v58 = 4095;
    }

    v59 = v56 & ~(v56 >> 31);
    if (v59 >= 4095)
    {
      v59 = 4095;
    }

    v60 = v57 & ~(v57 >> 31);
    if (v60 >= 4095)
    {
      v60 = 4095;
    }

    if (v51 >= 0xFFF)
    {
      v51 = 4095;
    }

    v61 = v53 & ~(v53 >> 31);
    if (v61 >= 4095)
    {
      v61 = 4095;
    }

    if ((v55 & ~(v55 >> 31)) >= 4095)
    {
      v62 = 4095;
    }

    else
    {
      v62 = v55 & ~(v55 >> 31);
    }

    if (v9 == 1)
    {
      v63 = v61;
    }

    else
    {
      v63 = v51;
    }

    if (v9 == 1)
    {
      v64 = v51;
    }

    else
    {
      v64 = v61;
    }

    if (v9 == 1)
    {
      v65 = v59;
    }

    else
    {
      v65 = v58;
    }

    if (v9 == 1)
    {
      v66 = v58;
    }

    else
    {
      v66 = v59;
    }

    v67 = v9 == 2;
    if (v9 == 2)
    {
      v68 = v62;
    }

    else
    {
      v68 = v63;
    }

    if (v67)
    {
      v62 = v51;
    }

    else
    {
      v61 = v64;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v65;
    }

    if (v67)
    {
      v60 = v58;
    }

    else
    {
      v59 = v66;
    }

    HIDWORD(v70) = 30720;
    LODWORD(v70) = 16 * v69;
    DWORD1(v70) = 16 * v59;
    v11 = 16 * v68;
    DWORD2(v70) = 16 * v60;
    *a2 = v70;
    v12 = 16 * v61;
    v13 = 16 * v62;
  }

  result.n128_u64[0] = __PAIR64__(v12, v11);
  result.n128_u64[1] = v13 | 0x780000000000;
  *a3 = result;
  return result;
}

uint64_t image::HeaderASTC(uint64_t a1, int a2, int a3, int a4, char a5, char a6)
{
  v7 = 1554098963;
  v8 = a5;
  v9 = a6;
  v10 = 1;
  v11 = a2;
  v12 = BYTE2(a2);
  v13 = a3;
  v14 = BYTE2(a3);
  v15 = a4;
  v16 = BYTE2(a4);
  return (*(*a1 + 16))(a1, &v7, 16);
}

id image::ToASTC(void *a1, uint64_t a2, uint64_t a3, core::ThreadPool *a4, float a5)
{
  v5 = image::ToASTC(a1, a2, a3, a4, 0, a5);

  return v5;
}

id image::ToASTC(void *a1, uint64_t a2, unsigned int a3, core::ThreadPool *a4, unsigned int a5, float a6)
{
  v7 = a2;
  v213 = *MEMORY[0x277D85DE8];
  v8 = a1;
  context = objc_autoreleasePoolPush();
  v198 = v8;
  v9 = _MXISignpostLogSystem(context);
  v10 = _MXISignpostCreate(v9);
  v11 = v9;
  v12 = v11;
  v191 = v10 - 1;
  spid = v10;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MXI_TO_ASTC", "UseGPU: False", buf, 2u);
  }

  v17 = objc_msgSend_device(v8, v13, v14, v15, v16);
  v197 = v17;
  v22 = objc_msgSend_textureType(v8, v18, v19, v20, v21);
  v27 = objc_msgSend_pixelFormat(v8, v23, v24, v25, v26);
  v202 = objc_msgSend_width(v8, v28, v29, v30, v31);
  v201 = objc_msgSend_height(v8, v32, v33, v34, v35);
  v44 = objc_msgSend_arrayLength(v8, v36, v37, v38, v39);
  v45 = a5;
  if (a5 <= 1)
  {
    v45 = objc_msgSend_mipmapLevelCount(v8, v40, v41, v42, v43);
  }

  v210 = 0;
  v209 = 0u;
  v208 = 0u;
  if (sub_22F9ED314(buf, v17, v22, v27, v202, v201, v44, v45, 1u, v7, SHIWORD(v7), a3, a5))
  {
    v195 = 16 * (v7 + v202 - 1) / v7 * ((a3 + v201 - 1) / a3);
    v204 = objc_msgSend_newBufferWithLength_options_(v17, v46, v195, 0, v47);
    v52 = objc_msgSend_newCommandQueue(v17, v48, v49, v50, v51);
    v200 = v52;
    if (v44)
    {
      v57 = 0;
      v189 = v44;
      v190 = v45;
      v194 = v45;
      v188 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a5 >= 2)
        {
          v58 = objc_msgSend_commandBuffer(v200, v53, v54, v55, v56);
          v63 = objc_msgSend_computeCommandEncoder(v58, v59, v60, v61, v62);
          objc_msgSend_setComputePipelineState_(v63, v64, v210, v65, v66);
          objc_msgSend_setTexture_atIndex_(v63, v67, *(&v209 + 1), 0, v68);
          objc_msgSend_setTexture_atIndex_(v63, v69, v8, 1, v70);
          *&v211 = objc_msgSend_width(*(&v209 + 1), v71, v72, v73, v74);
          *(&v211 + 1) = objc_msgSend_height(*(&v209 + 1), v75, v76, v77, v78);
          v212 = 1;
          v205 = v188;
          v206 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v63, v79, &v211, &v205, v80);
          objc_msgSend_endEncoding(v63, v81, v82, v83, v84);
          if (a5 != 2)
          {
            v89 = objc_msgSend_blitCommandEncoder(v58, v85, v86, v87, v88);
            objc_msgSend_generateMipmapsForTexture_(v89, v90, *(&v209 + 1), v91, v92);
            objc_msgSend_endEncoding(v89, v93, v94, v95, v96);
          }

          objc_msgSend_commit(v58, v85, v86, v87, v88);
          objc_msgSend_waitUntilCompleted(v58, v97, v98, v99, v100);
          v105 = objc_msgSend_status(v58, v101, v102, v103, v104);
          if (v105 != 4)
          {
            v171 = _mxi_log(v105);
            if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
            {
              v176 = objc_msgSend_error(v58, v172, v173, v174, v175);
              v181 = objc_msgSend_debugDescription(v176, v177, v178, v179, v180);
              v182 = v181;
              v187 = objc_msgSend_UTF8String(v181, v183, v184, v185, v186);
              LODWORD(v211) = 136315138;
              *(&v211 + 4) = v187;
              _os_log_impl(&dword_22F9C3000, v171, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:382] [ImageASTC] command buffer failed with error: %s", &v211, 0xCu);
            }

            goto LABEL_35;
          }

          v45 = v190;
        }

        if (v45)
        {
          break;
        }

LABEL_22:
        ++v57;
        v45 = v190;
        if (v57 == v189)
        {
          goto LABEL_23;
        }
      }

      v106 = 0;
      while (1)
      {
        v107 = *(&v209 + 1);
        v108 = *(&v209 + 1) != 0;
        v109 = v106 != 0;
        v110 = v109 && v108;
        if (!v109 || !v108)
        {
          v107 = v8;
        }

        v111 = v107;
        v112 = v204;
        v117 = objc_msgSend_contents(v204, v113, v114, v115, v116);
        v118 = sub_22F9EDACC(v117, v195, v111, v57, v106 - v110, v7, a3, a4, a6);
        v123 = v118;
        if (!v118)
        {
          goto LABEL_31;
        }

        if (v118 != 16 * ((v202 >> v106) / v7) * ((v201 >> v106) / a3))
        {
          v152 = _mxi_log(v118);
          v17 = v197;
          v8 = v198;
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v211) = 0;
            _os_log_impl(&dword_22F9C3000, v152, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:402] Unexpected astc size", &v211, 2u);
          }

LABEL_31:
          goto LABEL_35;
        }

        v124 = objc_msgSend_commandBuffer(v200, v119, v120, v121, v122);
        v129 = objc_msgSend_blitCommandEncoder(v124, v125, v126, v127, v128);
        *&v211 = v202 >> v106;
        *(&v211 + 1) = v201 >> v106;
        v212 = 1;
        v130 = *v208;
        v205 = 0uLL;
        v206 = 0;
        objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v129, v131, v204, 0, 16 * ((v202 >> v106) / v7), v123, &v211, v130, v57, v106, &v205);
        objc_msgSend_endEncoding(v129, v132, v133, v134, v135);
        objc_msgSend_commit(v124, v136, v137, v138, v139);
        objc_msgSend_waitUntilCompleted(v124, v140, v141, v142, v143);
        v17 = v197;
        v8 = v198;
        v148 = objc_msgSend_status(v124, v144, v145, v146, v147);
        if (v148 != 4)
        {
          break;
        }

        if (v194 == ++v106)
        {
          goto LABEL_22;
        }
      }

      v153 = _mxi_log(v148);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        v158 = objc_msgSend_error(v124, v154, v155, v156, v157);
        v163 = objc_msgSend_debugDescription(v158, v159, v160, v161, v162);
        v164 = v163;
        v169 = objc_msgSend_UTF8String(v163, v165, v166, v167, v168);
        LODWORD(v211) = 136315138;
        *(&v211 + 4) = v169;
        _os_log_impl(&dword_22F9C3000, v153, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:421] [ImageASTC] command buffer failed with error: %s", &v211, 0xCu);
      }

LABEL_35:
      v151 = 0;
    }

    else
    {
LABEL_23:
      v149 = _MXISignpostLogSystem(v52);
      v150 = v149;
      if (v191 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v149))
      {
        LOWORD(v211) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v150, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v211, 2u);
      }

      v151 = *v208;
    }
  }

  else
  {
    v151 = 0;
  }

  *&v211 = &v208;
  sub_22F9DC140(&v211);

  objc_autoreleasePoolPop(context);

  return v151;
}

void sub_22F9ED1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22F9ED314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned __int8 a10, __int16 a11, unsigned __int8 a12, unsigned int a13)
{
  v137 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = v20;
  if (a4 > 80)
  {
    if (a4 != 81)
    {
      if (a4 != 115)
      {
        if (a4 == 125)
        {
          v22 = 0;
          v132 = 0;
          v134 = xmmword_22FA083F0;
          v24 = 0x1000000002;
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      v22 = 0;
      v132 = 0;
      v134 = xmmword_22FA083F0;
      v24 = 0x800000001;
LABEL_19:
      v26 = objc_opt_new();
      objc_msgSend_setTextureType_(v26, v28, a3, v29, v30);
      v34 = (16 * a10) | a12;
      if (v34 > 135)
      {
        if (v34 > 167)
        {
          v35 = 217;
          if (v22)
          {
            v35 = 199;
          }

          v40 = 218;
          if (v22)
          {
            v40 = 200;
          }

          if (v34 != 204)
          {
            v40 = 0;
          }

          if (v34 != 202)
          {
            v35 = v40;
          }

          v37 = 215;
          if (v22)
          {
            v37 = 197;
          }

          v41 = 216;
          if (v22)
          {
            v41 = 198;
          }

          if (v34 != 170)
          {
            v41 = 0;
          }

          if (v34 != 168)
          {
            v37 = v41;
          }

          v39 = v34 <= 201;
LABEL_56:
          if (!v39)
          {
LABEL_57:
            objc_msgSend_setPixelFormat_(v26, v31, v35, v32, v33);
            goto LABEL_83;
          }

LABEL_82:
          objc_msgSend_setPixelFormat_(v26, v31, v37, v32, v33);
LABEL_83:
          objc_msgSend_setWidth_(v26, v42, a5, v43, v44);
          objc_msgSend_setHeight_(v26, v48, a6, v49, v50);
          objc_msgSend_setArrayLength_(v26, v51, a7, v52, v53);
          objc_msgSend_setMipmapLevelCount_(v26, v54, a8, v55, v56);
          objc_msgSend_setUsage_(v26, v57, 19, v58, v59);
          sub_22F9E60AC((a1 + 40), a9);
          if (a9)
          {
            v63 = 0;
            while (1)
            {
              objc_msgSend_setStorageMode_(v26, v60, 2, v61, v62);
              v67 = objc_msgSend_newSharedTextureWithDescriptor_(v21, v64, v26, v65, v66);
              if (!v67)
              {
                break;
              }

              v68 = *(a1 + 40);
              v69 = *(v68 + 8 * v63);
              *(v68 + 8 * v63) = v67;

              if (a9 == ++v63)
              {
                goto LABEL_87;
              }
            }

            v70 = _mxi_log(0);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v136) = v63;
              _os_log_impl(&dword_22F9C3000, v70, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:259] [ImageASTC] failed creating destination texture %d", buf, 8u);
            }

            v27 = 0;
            goto LABEL_103;
          }

LABEL_87:
          if (a13 < 2)
          {
            v107 = 0;
            v98 = 0;
          }

          else
          {
            v70 = objc_opt_new();
            objc_msgSend_setTextureType_(v70, v71, 2, v72, v73);
            objc_msgSend_setPixelFormat_(v70, v74, a4, v75, v76);
            objc_msgSend_setWidth_(v70, v77, a5 >> 1, v78, v79);
            objc_msgSend_setHeight_(v70, v80, a6 >> 1, v81, v82);
            objc_msgSend_setArrayLength_(v70, v83, 1, v84, v85);
            objc_msgSend_setMipmapLevelCount_(v70, v86, a13 - 1, v87, v88);
            objc_msgSend_setUsage_(v70, v89, 3, v90, v91);
            v98 = objc_msgSend_newTextureWithDescriptor_(v21, v92, v70, v93, v94);
            if (!v98)
            {
              v108 = _mxi_log(0);
              if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_22F9C3000, v108, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:279] [ImageASTC] failed creating mipmapping texture", buf, 2u);
              }

              v27 = 0;
              goto LABEL_102;
            }

            v99 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v95, @"com.apple.mxi", v96, v97);
            v105 = objc_msgSend_newDefaultLibraryWithBundle_error_(v21, v100, v99, 0, v101);
            if (v105)
            {
              v106 = v99;
            }

            else
            {
              v106 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v102, @"com.apple.mxi.ImageTests", v103, v104);

              v105 = objc_msgSend_newDefaultLibraryWithBundle_error_(v21, v109, v106, 0, v110);
            }

            v131 = v106;
            v111 = objc_msgSend_newFunctionWithName_(v105, v102, @"kern_image_mipmap", v103, v104);
            v133 = 0;
            v107 = objc_msgSend_newComputePipelineStateWithFunction_error_(v21, v112, v111, &v133, v113);
            v114 = v133;

            if (!v107)
            {
              v119 = _mxi_log(v115);
              if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
              {
                v124 = objc_msgSend_debugDescription(v114, v120, v121, v122, v123);
                v125 = v124;
                v130 = objc_msgSend_UTF8String(v124, v126, v127, v128, v129);
                *buf = 136315138;
                v136 = v130;
                _os_log_impl(&dword_22F9C3000, v119, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:293] [ImageASTC] failed initializing compute pipeline: %s", buf, 0xCu);
              }

              v27 = 0;
              v108 = v70;
              v70 = v98;
              goto LABEL_102;
            }
          }

          *a1 = v134;
          *(a1 + 16) = v22;
          *(a1 + 17) = 0;
          *(a1 + 19) = 0;
          *(a1 + 20) = v24;
          *(a1 + 28) = 0;
          *(a1 + 32) = v132;
          v116 = *(a1 + 64);
          *(a1 + 64) = v98;
          v70 = v98;

          v117 = *(a1 + 72);
          *(a1 + 72) = v107;
          v108 = v107;

          v27 = 1;
LABEL_102:

LABEL_103:
          goto LABEL_104;
        }

        v35 = 212;
        if (v22)
        {
          v35 = 194;
        }

        v37 = 213;
        if (v22)
        {
          v37 = 195;
        }

        v47 = 214;
        if (v22)
        {
          v47 = 196;
        }

        if (v34 != 166)
        {
          v47 = 0;
        }

        if (v34 != 165)
        {
          v37 = v47;
        }

        v46 = v34 == 136;
      }

      else
      {
        if (v34 > 100)
        {
          v35 = 210;
          if (v22)
          {
            v35 = 192;
          }

          v36 = 211;
          if (v22)
          {
            v36 = 193;
          }

          if (v34 != 134)
          {
            v36 = 0;
          }

          if (v34 != 133)
          {
            v35 = v36;
          }

          v37 = 207;
          if (v22)
          {
            v37 = 189;
          }

          v38 = 208;
          if (v22)
          {
            v38 = 190;
          }

          if (v34 != 102)
          {
            v38 = 0;
          }

          if (v34 != 101)
          {
            v37 = v38;
          }

          v39 = v34 <= 132;
          goto LABEL_56;
        }

        v35 = 204;
        if (v22)
        {
          v35 = 186;
        }

        v37 = 205;
        if (v22)
        {
          v37 = 187;
        }

        v45 = 206;
        if (v22)
        {
          v45 = 188;
        }

        if (v34 != 85)
        {
          v45 = 0;
        }

        if (v34 != 84)
        {
          v37 = v45;
        }

        v46 = v34 == 68;
      }

      if (v46)
      {
        goto LABEL_57;
      }

      goto LABEL_82;
    }

    v134 = xmmword_22FA08400;
    v24 = 0x400000000;
    v22 = 1;
    v25 = 80;
LABEL_17:
    v132 = v25;
    goto LABEL_19;
  }

  switch(a4)
  {
    case 'F':
      v22 = 0;
      v132 = 0;
      v23 = &xmmword_22FA083F0;
      goto LABEL_11;
    case 'G':
      v134 = xmmword_22FA083F0;
      v24 = 0x400000000;
      v22 = 1;
      v25 = 70;
      goto LABEL_17;
    case 'P':
      v22 = 0;
      v132 = 0;
      v23 = &xmmword_22FA08400;
LABEL_11:
      v134 = *v23;
      v24 = 0x400000000;
      goto LABEL_19;
  }

LABEL_13:
  v26 = _mxi_log(v20);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v136 = a4;
    _os_log_impl(&dword_22F9C3000, v26, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:74] Unrecognized pixel format: %lu", buf, 0xCu);
  }

  v27 = 0;
LABEL_104:

  return v27;
}

void sub_22F9EDA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v18 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9EDACC(uint64_t a1, unsigned int a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, core::ThreadPool *a8, float a9)
{
  v144 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v18 = objc_msgSend_pixelFormat(v13, v14, v15, v16, v17);
  v23 = v18;
  if (v18 > 80)
  {
    switch(v18)
    {
      case 'Q':
        v25 = 0;
        v28 = 0;
        v132 = xmmword_22FA08400;
        v29 = 4;
        v24 = 1;
        v26 = 80;
        break;
      case 's':
        v24 = 0;
        v26 = 0;
        v132 = xmmword_22FA083F0;
        v29 = 8;
        v25 = 1;
        v28 = 1;
        break;
      case '}':
        v24 = 0;
        v26 = 0;
        v132 = xmmword_22FA083F0;
        v28 = 1;
        v29 = 16;
        v25 = 2;
        break;
      default:
        goto LABEL_13;
    }

LABEL_18:
    LOBYTE(v133) = v24;
    *(&v133 + 4) = __PAIR64__(v29, v25);
    v134 = v26;
    v32 = objc_msgSend_width(v13, v19, v20, v21, v22);
    v117 = v25;
    v118 = v28;
    v37 = v32 >> a5;
    v38 = objc_msgSend_height(v13, v33, v34, v35, v36) >> a5;
    sub_22F9E1DE0(&__p, (v29 * v38 * v37));
    if (objc_msgSend_storageMode(v13, v39, v40, v41, v42) == 2)
    {
      v119 = objc_msgSend_device(v13, v43, v44, v45, v46);
      v116 = objc_msgSend_newCommandQueue(v119, v47, v48, v49, v50);
      v55 = objc_msgSend_commandBuffer(v116, v51, v52, v53, v54);
      v120 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v119, v56, __p, v131 - __p, 0, 0);
      v61 = objc_msgSend_blitCommandEncoder(v55, v57, v58, v59, v60);
      buf = 0uLL;
      v140 = 0;
      *v135 = v37;
      *&v135[8] = v38;
      *&v136 = 1;
      objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v61, v62, v13, a4, a5, &buf, v135, v120, 0, (v29 * v37), (v29 * v38 * v37));
      objc_msgSend_endEncoding(v61, v63, v64, v65, v66);
      objc_msgSend_commit(v55, v67, v68, v69, v70);
      objc_msgSend_waitUntilCompleted(v55, v71, v72, v73, v74);
      v79 = objc_msgSend_status(v55, v75, v76, v77, v78);
      if (v79 != 4)
      {
        v81 = _mxi_log(v79);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v86 = objc_msgSend_error(v55, v82, v83, v84, v85);
          v91 = objc_msgSend_debugDescription(v86, v87, v88, v89, v90);
          v92 = v91;
          v97 = objc_msgSend_UTF8String(v91, v93, v94, v95, v96);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v97;
          _os_log_impl(&dword_22F9C3000, v81, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:127] [ImageASTC] command buffer failed with error: %s", &buf, 0xCu);
        }

        goto LABEL_37;
      }
    }

    else
    {
      buf = 0uLL;
      v140 = 0;
      v141 = v32 >> a5;
      v142 = v38;
      v143 = 1;
      objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v13, v43, __p, (v29 * v37), (v29 * v38 * v37), &buf, a5, a4);
    }

    v31 = 16 * (a6 + v37 - 1) / a6 * ((a7 + v38 - 1) / a7);
    if (v31 <= a2)
    {
      if (a8)
      {
        v80 = core::ThreadPool::NumWorkerThreads(a8) + 1;
      }

      else
      {
        v80 = 1;
      }

      *(&buf + 1) = __PAIR64__(a7, a6);
      LODWORD(v140) = 1;
      LODWORD(buf) = v118;
      v98 = astcenc_config_init(v118, a6, a7, 1u, 0, &buf, a9 * 100.0);
      v99 = v98;
      if (v98)
      {
        v100 = _mxi_log(v98);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          error_string = astcenc_get_error_string(v99);
          *v135 = 136315138;
          *&v135[4] = error_string;
          _os_log_impl(&dword_22F9C3000, v100, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:162] Codec config init failed: %s\n", v135, 0xCu);
        }
      }

      else
      {
        v129 = 0;
        v102 = astcenc_context_alloc(&buf, v80, &v129);
        v105 = v102;
        if (!v102)
        {
          v126[0] = v37;
          v126[1] = v38;
          v126[2] = 1;
          v126[3] = v117;
          v127 = &v128;
          v128 = __p;
          if (a8)
          {
            v125 = 1;
            if (v80)
            {
              *v135 = v132;
              v136 = v133;
              v137 = v134;
              v138 = 0;
              operator new();
            }

            v109 = core::ThreadPool::WaitForAllTask(a8);
            v110 = atomic_load(&v125);
            if ((v110 & 1) == 0)
            {
              v111 = _mxi_log(v109);
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                *v135 = 0;
                _os_log_impl(&dword_22F9C3000, v111, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:198] ASTC encode failed", v135, 2u);
              }

              goto LABEL_37;
            }
          }

          else
          {
            v112 = astcenc_compress_image(v129, v126, &v132, a1, a2, 0, v103, v104);
            v113 = v112;
            if (v112)
            {
              v114 = _mxi_log(v112);
              if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
              {
                v115 = astcenc_get_error_string(v113);
                *v135 = 136315138;
                *&v135[4] = v115;
                _os_log_impl(&dword_22F9C3000, v114, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:207] Codec compress failed: %s\n", v135, 0xCu);
              }

              goto LABEL_37;
            }
          }

          astcenc_context_free(v129);
LABEL_38:
          if (__p)
          {
            v131 = __p;
            operator delete(__p);
          }

          goto LABEL_40;
        }

        v106 = _mxi_log(v102);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          v107 = astcenc_get_error_string(v105);
          *v135 = 136315138;
          *&v135[4] = v107;
          _os_log_impl(&dword_22F9C3000, v106, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:169] Codec context alloc failed: %s\n", v135, 0xCu);
        }
      }
    }

LABEL_37:
    v31 = 0;
    goto LABEL_38;
  }

  switch(v18)
  {
    case 'F':
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = &xmmword_22FA083F0;
      goto LABEL_11;
    case 'G':
      v25 = 0;
      v28 = 0;
      v132 = xmmword_22FA083F0;
      v29 = 4;
      v24 = 1;
      v26 = 70;
      goto LABEL_18;
    case 'P':
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = &xmmword_22FA08400;
LABEL_11:
      v132 = *v27;
      v28 = 1;
      v29 = 4;
      goto LABEL_18;
  }

LABEL_13:
  v30 = _mxi_log(v18);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v23;
    _os_log_impl(&dword_22F9C3000, v30, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:74] Unrecognized pixel format: %lu", &buf, 0xCu);
  }

  v31 = 0;
LABEL_40:

  return v31;
}

void sub_22F9EE23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_22F9EE358(void **a1)
{
  v3 = a1 + 5;
  sub_22F9DC140(&v3);
  return a1;
}

id image::ToASTC(id *a1, unsigned int a2, unsigned int a3, unsigned int a4, core::ThreadPool *a5, unsigned int a6, float a7)
{
  v205 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v10 = _MXISignpostLogSystem(context);
  v11 = _MXISignpostCreate(v10);
  v12 = v10;
  v13 = v12;
  v183 = v11 - 1;
  spid = v11;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MXI_TO_ASTC", "UseGPU: False", buf, 2u);
  }

  v18 = objc_msgSend_device(*a1, v14, v15, v16, v17);
  v189 = v18;
  v23 = objc_msgSend_pixelFormat(*a1, v19, v20, v21, v22);
  v193 = objc_msgSend_width(*a1, v24, v25, v26, v27);
  v192 = objc_msgSend_height(*a1, v28, v29, v30, v31);
  v36 = a6;
  if (a6 <= 1)
  {
    v36 = objc_msgSend_mipmapLevelCount(*a1, v32, v33, v34, v35);
  }

  v202 = 0;
  v201 = 0u;
  v200 = 0u;
  if (sub_22F9ED314(buf, v18, 3, v23, v193, v192, a2, v36, 1u, a3, SHIWORD(a3), a4, a6))
  {
    v187 = 16 * (a3 + v193 - 1) / a3 * ((a4 + v192 - 1) / a4);
    v196 = objc_msgSend_newBufferWithLength_options_(v18, v37, v187, 0, v38);
    v43 = objc_msgSend_newCommandQueue(v18, v39, v40, v41, v42);
    v191 = v43;
    if (a2)
    {
      v48 = 0;
      v181 = a2;
      v182 = v36;
      v186 = v36;
      v180 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a6 >= 2)
        {
          v49 = objc_msgSend_commandBuffer(v191, v44, v45, v46, v47);
          v54 = objc_msgSend_computeCommandEncoder(v49, v50, v51, v52, v53);
          objc_msgSend_setComputePipelineState_(v54, v55, v202, v56, v57);
          objc_msgSend_setTexture_atIndex_(v54, v58, *(&v201 + 1), 0, v59);
          objc_msgSend_setTexture_atIndex_(v54, v60, a1[v48], 1, v61);
          *&v203 = objc_msgSend_width(*(&v201 + 1), v62, v63, v64, v65);
          *(&v203 + 1) = objc_msgSend_height(*(&v201 + 1), v66, v67, v68, v69);
          v204 = 1;
          v197 = v180;
          v198 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v54, v70, &v203, &v197, v71);
          objc_msgSend_endEncoding(v54, v72, v73, v74, v75);
          if (a6 != 2)
          {
            v80 = objc_msgSend_blitCommandEncoder(v49, v76, v77, v78, v79);
            objc_msgSend_generateMipmapsForTexture_(v80, v81, *(&v201 + 1), v82, v83);
            objc_msgSend_endEncoding(v80, v84, v85, v86, v87);
          }

          objc_msgSend_commit(v49, v76, v77, v78, v79);
          objc_msgSend_waitUntilCompleted(v49, v88, v89, v90, v91);
          v96 = objc_msgSend_status(v49, v92, v93, v94, v95);
          if (v96 != 4)
          {
            v163 = _mxi_log(v96);
            if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
            {
              v168 = objc_msgSend_error(v49, v164, v165, v166, v167);
              v173 = objc_msgSend_debugDescription(v168, v169, v170, v171, v172);
              v174 = v173;
              v179 = objc_msgSend_UTF8String(v173, v175, v176, v177, v178);
              LODWORD(v203) = 136315138;
              *(&v203 + 4) = v179;
              _os_log_impl(&dword_22F9C3000, v163, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:487] [ImageASTC] command buffer failed with error: %s", &v203, 0xCu);
            }

            goto LABEL_42;
          }

          v36 = v182;
        }

        if (v36)
        {
          break;
        }

LABEL_29:
        ++v48;
        v36 = v182;
        if (v48 == v181)
        {
          goto LABEL_30;
        }
      }

      v97 = 0;
      while (1)
      {
        if (!v97 || (v98 = *(&v201 + 1)) == 0)
        {
          v98 = a1[v48];
        }

        v99 = v98;
        v100 = *(&v201 + 1);
        v101 = v196;
        v106 = objc_msgSend_contents(v196, v102, v103, v104, v105);
        if (v97)
        {
          v107 = v100 == 0;
        }

        else
        {
          v107 = 1;
        }

        v108 = !v107;
        v109 = sub_22F9EDACC(v106, v187, v99, 0, v97 - v108, a3, a4, a5, a7);
        v114 = v109;
        if (!v109)
        {
          goto LABEL_38;
        }

        v115 = 16 * ((v193 >> v97) / a3);
        if (v109 != v115 * ((v192 >> v97) / a4))
        {
          v144 = _mxi_log(v109);
          v18 = v189;
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v203) = 0;
            _os_log_impl(&dword_22F9C3000, v144, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:508] Unexpected astc size", &v203, 2u);
          }

LABEL_38:
          goto LABEL_42;
        }

        v116 = objc_msgSend_commandBuffer(v191, v110, v111, v112, v113);
        v121 = objc_msgSend_blitCommandEncoder(v116, v117, v118, v119, v120);
        *&v203 = v193 >> v97;
        *(&v203 + 1) = v192 >> v97;
        v204 = 1;
        v122 = *v200;
        v197 = 0uLL;
        v198 = 0;
        objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v121, v123, v196, 0, v115, v114, &v203, v122, v48, v97, &v197);
        objc_msgSend_endEncoding(v121, v124, v125, v126, v127);
        objc_msgSend_commit(v116, v128, v129, v130, v131);
        objc_msgSend_waitUntilCompleted(v116, v132, v133, v134, v135);
        v18 = v189;
        v140 = objc_msgSend_status(v116, v136, v137, v138, v139);
        if (v140 != 4)
        {
          break;
        }

        if (v186 == ++v97)
        {
          goto LABEL_29;
        }
      }

      v145 = _mxi_log(v140);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        v150 = objc_msgSend_error(v116, v146, v147, v148, v149);
        v155 = objc_msgSend_debugDescription(v150, v151, v152, v153, v154);
        v156 = v155;
        v161 = objc_msgSend_UTF8String(v155, v157, v158, v159, v160);
        LODWORD(v203) = 136315138;
        *(&v203 + 4) = v161;
        _os_log_impl(&dword_22F9C3000, v145, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:527] [ImageASTC] command buffer failed with error: %s", &v203, 0xCu);
      }

LABEL_42:
      v143 = 0;
    }

    else
    {
LABEL_30:
      v141 = _MXISignpostLogSystem(v43);
      v142 = v141;
      if (v183 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v141))
      {
        LOWORD(v203) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v142, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v203, 2u);
      }

      v143 = *v200;
    }
  }

  else
  {
    v143 = 0;
  }

  *&v203 = &v200;
  sub_22F9DC140(&v203);

  objc_autoreleasePoolPop(context);

  return v143;
}

void sub_22F9EEA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_22F9EE358(&a35);

  _Unwind_Resume(a1);
}

id image::ToASTC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = image::ToASTC(a1, a2, a3, a4, 0, a5);

  return v5;
}

id image::ToASTC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, float a6)
{
  v164 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = objc_autoreleasePoolPush();
  v11 = _MXISignpostLogSystem(v10);
  v12 = _MXISignpostCreate(v11);
  context = v10;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MXI_TO_ASTC", "UseGPU: True", buf, 2u);
  }

  v150 = objc_msgSend_device(v9, v15, v16, v17, v18);
  v23 = objc_msgSend_textureType(v9, v19, v20, v21, v22);
  v28 = objc_msgSend_pixelFormat(v9, v24, v25, v26, v27);
  v33 = objc_msgSend_width(v9, v29, v30, v31, v32);
  v38 = objc_msgSend_height(v9, v34, v35, v36, v37);
  v47 = objc_msgSend_arrayLength(v9, v39, v40, v41, v42);
  v48 = a5;
  if (a5 <= 1)
  {
    v48 = objc_msgSend_mipmapLevelCount(v9, v43, v44, v45, v46);
  }

  v161 = 0;
  v160 = 0u;
  v159 = 0u;
  if ((sub_22F9ED314(buf, v150, v23, v28, v33, v38, v47, v48, 1u, a2, SWORD1(a2), a3, a5) & 1) == 0)
  {
    v125 = 0;
    goto LABEL_40;
  }

  v52 = v48;
  if (v158)
  {
    v53 = objc_msgSend_newTextureViewWithPixelFormat_(v9, v49, v158, v50, v51);

    v9 = v53;
    if (!v53)
    {
      v144 = _mxi_log(v54);
      v147 = v144;
      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v162) = 0;
        _os_log_impl(&dword_22F9C3000, v144, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:565] [ImageASTC] failed creating source texture view", &v162, 2u);
      }

      v9 = 0;
      v125 = 0;
      goto LABEL_39;
    }
  }

  v55 = [ASTCEncoder alloc];
  v156 = 0;
  *&v56 = a6;
  v58 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v55, v57, v150, a2, a3, a4, 0, &v156, v56);
  v59 = v156;
  v147 = v59;
  if (v58)
  {
    v146 = objc_msgSend_newCommandQueue(v150, v60, v61, v62, v63);
    v72 = objc_msgSend_commandBuffer(v146, v64, v65, v66, v67);
    if (v47)
    {
      v73 = 0;
      v152 = v47;
      v149 = vdupq_n_s64(8uLL);
      do
      {
        if (a5 >= 2)
        {
          v74 = objc_msgSend_computeCommandEncoder(v72, v68, v69, v70, v71);
          objc_msgSend_setComputePipelineState_(v74, v75, v161, v76, v77);
          objc_msgSend_setTexture_atIndex_(v74, v78, *(&v160 + 1), 0, v79);
          objc_msgSend_setTexture_atIndex_(v74, v80, v9, 1, v81);
          *&v162 = objc_msgSend_width(*(&v160 + 1), v82, v83, v84, v85);
          *(&v162 + 1) = objc_msgSend_height(*(&v160 + 1), v86, v87, v88, v89);
          v163 = 1;
          v154 = v149;
          v155 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v74, v90, &v162, &v154, v91);
          objc_msgSend_endEncoding(v74, v92, v93, v94, v95);
          if (a5 != 2)
          {
            v100 = objc_msgSend_blitCommandEncoder(v72, v96, v97, v98, v99);
            objc_msgSend_generateMipmapsForTexture_(v100, v101, *(&v160 + 1), v102, v103);
            objc_msgSend_endEncoding(v100, v104, v105, v106, v107);
          }
        }

        if (v52)
        {
          for (i = 0; i != v52; ++i)
          {
            v109 = *(&v160 + 1);
            v110 = i != 0 && *(&v160 + 1) != 0;
            if (i == 0 || *(&v160 + 1) == 0)
            {
              v109 = v9;
            }

            v111 = v109;
            objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v58, v112, v72, *v159, v73, i, v111, v73, (i - v110));
          }
        }

        ++v73;
      }

      while (v73 != v152);
    }

    objc_msgSend_commit(v72, v68, v69, v70, v71);
    objc_msgSend_waitUntilCompleted(v72, v113, v114, v115, v116);
    v121 = objc_msgSend_status(v72, v117, v118, v119, v120);
    if (v121 == 4)
    {

      v123 = _MXISignpostLogSystem(v122);
      v124 = v123;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v123))
      {
        LOWORD(v162) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v124, OS_SIGNPOST_INTERVAL_END, v12, "MXI_TO_ASTC", &unk_22FA1C169, &v162, 2u);
      }

      v125 = *v159;
      goto LABEL_35;
    }

    v127 = _mxi_log(v121);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      v132 = objc_msgSend_error(v72, v128, v129, v130, v131);
      v137 = objc_msgSend_debugDescription(v132, v133, v134, v135, v136);
      v138 = v137;
      v143 = objc_msgSend_UTF8String(v137, v139, v140, v141, v142);
      LODWORD(v162) = 136315138;
      *(&v162 + 4) = v143;
      _os_log_impl(&dword_22F9C3000, v127, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:618] [ImageASTC] command buffer failed with error: %s", &v162, 0xCu);
    }
  }

  else
  {
    v126 = _mxi_log(v59);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v162) = 0;
      _os_log_impl(&dword_22F9C3000, v126, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:578] Failed creating ASTCEncoder", &v162, 2u);
    }
  }

  v125 = 0;
LABEL_35:

LABEL_39:
LABEL_40:

  *&v162 = &v159;
  sub_22F9DC140(&v162);

  objc_autoreleasePoolPop(context);

  return v125;
}

void sub_22F9EF14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}

id image::ToASTC(id *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, float a7)
{
  v158 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v14 = _MXISignpostLogSystem(context);
  v15 = _MXISignpostCreate(v14);
  v16 = v14;
  v17 = v16;
  spid = v15;
  v143 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MXI_TO_ASTC", "UseGPU: True", buf, 2u);
  }

  v147 = objc_msgSend_device(*a1, v18, v19, v20, v21);
  v26 = objc_msgSend_pixelFormat(*a1, v22, v23, v24, v25);
  v31 = objc_msgSend_width(*a1, v27, v28, v29, v30);
  v40 = objc_msgSend_height(*a1, v32, v33, v34, v35);
  v41 = a6;
  if (a6 <= 1)
  {
    v41 = objc_msgSend_mipmapLevelCount(*a1, v36, v37, v38, v39);
  }

  v155 = 0;
  v154 = 0u;
  v153 = 0u;
  if ((sub_22F9ED314(buf, v147, 3, v26, v31, v40, a2, v41, 1u, a3, SWORD1(a3), a4, a6) & 1) == 0)
  {
    v118 = 0;
    goto LABEL_46;
  }

  v42 = [ASTCEncoder alloc];
  v150 = 0;
  *&v43 = a7;
  v45 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v42, v44, v147, a3, a4, a5, 0, &v150, v43);
  v46 = v150;
  v142 = v46;
  if (v45)
  {
    v144 = v41;
    v140 = objc_msgSend_newCommandQueue(v147, v47, v48, v49, v50);
    v59 = objc_msgSend_commandBuffer(v140, v51, v52, v53, v54);
    if (a2)
    {
      v60 = 0;
      v141 = a2;
      v139 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a6 >= 2)
        {
          v61 = objc_msgSend_computeCommandEncoder(v59, v55, v56, v57, v58);
          objc_msgSend_setComputePipelineState_(v61, v62, v155, v63, v64);
          objc_msgSend_setTexture_atIndex_(v61, v65, *(&v154 + 1), 0, v66);
          objc_msgSend_setTexture_atIndex_(v61, v67, a1[v60], 1, v68);
          *&v156 = objc_msgSend_width(*(&v154 + 1), v69, v70, v71, v72);
          *(&v156 + 1) = objc_msgSend_height(*(&v154 + 1), v73, v74, v75, v76);
          v157 = 1;
          v148 = v139;
          v149 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v61, v77, &v156, &v148, v78);
          objc_msgSend_endEncoding(v61, v79, v80, v81, v82);
          if (a6 != 2)
          {
            v87 = objc_msgSend_blitCommandEncoder(v59, v83, v84, v85, v86);
            objc_msgSend_generateMipmapsForTexture_(v87, v88, *(&v154 + 1), v89, v90);
            objc_msgSend_endEncoding(v87, v91, v92, v93, v94);
          }
        }

        if (v144)
        {
          break;
        }

LABEL_28:
        if (++v60 == v141)
        {
          goto LABEL_29;
        }
      }

      v95 = 0;
      while (1)
      {
        if (!v95 || (v96 = *(&v154 + 1)) == 0)
        {
          v96 = a1[v60];
        }

        v97 = v96;
        v101 = v97;
        v102 = !v95 || *(&v154 + 1) == 0;
        v103 = !v102;
        if (v152)
        {
          v104 = objc_msgSend_newTextureViewWithPixelFormat_(v97, v98, v152, v99, v100);

          v101 = v104;
          if (!v104)
          {
            break;
          }
        }

        objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v45, v98, v59, *v153, v60, v95, v101, 0, (v95 - v103));

        if (v144 == ++v95)
        {
          goto LABEL_28;
        }
      }

      v120 = _mxi_log(v105);
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v156) = 67109376;
        DWORD1(v156) = v60;
        WORD4(v156) = 1024;
        *(&v156 + 10) = v95;
        _os_log_impl(&dword_22F9C3000, v120, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:691] [ImageASTC] failed creating source texture view for slice (%d) and mip (%d)", &v156, 0xEu);
      }
    }

    else
    {
LABEL_29:
      objc_msgSend_commit(v59, v55, v56, v57, v58);
      objc_msgSend_waitUntilCompleted(v59, v106, v107, v108, v109);
      v114 = objc_msgSend_status(v59, v110, v111, v112, v113);
      if (v114 == 4)
      {

        v116 = _MXISignpostLogSystem(v115);
        v117 = v116;
        if (v143 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
        {
          LOWORD(v156) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v117, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v156, 2u);
        }

        v118 = *v153;
        goto LABEL_45;
      }

      v121 = _mxi_log(v114);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        v126 = objc_msgSend_error(v59, v122, v123, v124, v125);
        v131 = objc_msgSend_debugDescription(v126, v127, v128, v129, v130);
        v132 = v131;
        v137 = objc_msgSend_UTF8String(v131, v133, v134, v135, v136);
        LODWORD(v156) = 136315138;
        *(&v156 + 4) = v137;
        _os_log_impl(&dword_22F9C3000, v121, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:707] [ImageASTC] command buffer failed with error: %s", &v156, 0xCu);
      }
    }
  }

  else
  {
    v119 = _mxi_log(v46);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v156) = 0;
      _os_log_impl(&dword_22F9C3000, v119, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:660] Failed creating ASTCEncoder", &v156, 2u);
    }
  }

  v118 = 0;
LABEL_45:

LABEL_46:
  *&v156 = &v153;
  sub_22F9DC140(&v156);

  objc_autoreleasePoolPop(context);

  return v118;
}

void sub_22F9EF814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}

void image::ToASTCs(id *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t *a7@<X8>, float a8@<S0>)
{
  v158 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = _MXISignpostLogSystem(context);
  v16 = _MXISignpostCreate(v15);
  v17 = v15;
  v18 = v17;
  v143 = v16 - 1;
  spid = v16;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MXI_TO_ASTC", "UseGPU: True", buf, 2u);
  }

  if (a1)
  {
    v147 = objc_msgSend_device(*a1, v20, v21, v22, v23);
    v28 = objc_msgSend_pixelFormat(*a1, v24, v25, v26, v27);
    v33 = objc_msgSend_width(*a1, v29, v30, v31, v32);
    v42 = objc_msgSend_height(*a1, v34, v35, v36, v37);
    v43 = a6;
    if (a6 <= 1)
    {
      v43 = objc_msgSend_mipmapLevelCount(*a1, v38, v39, v40, v41);
    }

    v155 = 0;
    v154 = 0u;
    v153 = 0u;
    if ((sub_22F9ED314(buf, v147, 2, v28, v33, v42, 1u, v43, a2, a3, SWORD1(a3), a4, a6) & 1) == 0)
    {
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
LABEL_48:

      *&v156 = &v153;
      sub_22F9DC140(&v156);

      goto LABEL_49;
    }

    v44 = [ASTCEncoder alloc];
    v150 = 0;
    *&v45 = a8;
    v47 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v44, v46, v147, a3, a4, a5, 0, &v150, v45);
    v48 = v150;
    v142 = v48;
    if (!v47)
    {
      v121 = _mxi_log(v48);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v156) = 0;
        _os_log_impl(&dword_22F9C3000, v121, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:748] Failed creating ASTCEncoder", &v156, 2u);
      }

      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
      goto LABEL_47;
    }

    v140 = objc_msgSend_newCommandQueue(v147, v49, v50, v51, v52);
    v61 = objc_msgSend_commandBuffer(v140, v53, v54, v55, v56);
    if (a2)
    {
      v62 = 0;
      v141 = a2;
      v139 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a6 >= 2)
        {
          v63 = objc_msgSend_computeCommandEncoder(v61, v57, v58, v59, v60);
          objc_msgSend_setComputePipelineState_(v63, v64, v155, v65, v66);
          objc_msgSend_setTexture_atIndex_(v63, v67, *(&v154 + 1), 0, v68);
          objc_msgSend_setTexture_atIndex_(v63, v69, a1[v62], 1, v70);
          *&v156 = objc_msgSend_width(*(&v154 + 1), v71, v72, v73, v74);
          *(&v156 + 1) = objc_msgSend_height(*(&v154 + 1), v75, v76, v77, v78);
          v157 = 1;
          v148 = v139;
          v149 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v63, v79, &v156, &v148, v80);
          objc_msgSend_endEncoding(v63, v81, v82, v83, v84);
          if (a6 != 2)
          {
            v89 = objc_msgSend_blitCommandEncoder(v61, v85, v86, v87, v88);
            objc_msgSend_generateMipmapsForTexture_(v89, v90, *(&v154 + 1), v91, v92);
            objc_msgSend_endEncoding(v89, v93, v94, v95, v96);
          }
        }

        if (v43)
        {
          break;
        }

LABEL_29:
        if (++v62 == v141)
        {
          goto LABEL_30;
        }
      }

      v97 = 0;
      while (1)
      {
        if (!v97 || (v98 = *(&v154 + 1)) == 0)
        {
          v98 = a1[v62];
        }

        v99 = v98;
        v103 = v99;
        v104 = !v97 || *(&v154 + 1) == 0;
        v105 = !v104;
        if (v152)
        {
          v106 = objc_msgSend_newTextureViewWithPixelFormat_(v99, v100, v152, v101, v102);

          v103 = v106;
          if (!v106)
          {
            break;
          }
        }

        objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v47, v100, v61, *(v153 + 8 * v62), 0, v97, v103, 0, (v97 - v105));

        if (v43 == ++v97)
        {
          goto LABEL_29;
        }
      }

      v122 = _mxi_log(v107);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v156) = 67109376;
        DWORD1(v156) = v62;
        WORD4(v156) = 1024;
        *(&v156 + 10) = v97;
        _os_log_impl(&dword_22F9C3000, v122, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:780] [ImageASTC] failed creating source texture view for slice (%d) and mip (%d)", &v156, 0xEu);
      }
    }

    else
    {
LABEL_30:
      objc_msgSend_commit(v61, v57, v58, v59, v60);
      objc_msgSend_waitUntilCompleted(v61, v108, v109, v110, v111);
      v116 = objc_msgSend_status(v61, v112, v113, v114, v115);
      if (v116 == 4)
      {

        v118 = _MXISignpostLogSystem(v117);
        v119 = v118;
        if (v143 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
        {
          LOWORD(v156) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v119, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v156, 2u);
        }

        *a7 = 0;
        a7[1] = 0;
        a7[2] = 0;
        sub_22F9F05B0(a7, v153, *(&v153 + 1), (*(&v153 + 1) - v153) >> 3);
        goto LABEL_47;
      }

      v122 = _mxi_log(v116);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v127 = objc_msgSend_error(v61, v123, v124, v125, v126);
        v132 = objc_msgSend_debugDescription(v127, v128, v129, v130, v131);
        v133 = v132;
        v138 = objc_msgSend_UTF8String(v132, v134, v135, v136, v137);
        LODWORD(v156) = 136315138;
        *(&v156 + 4) = v138;
        _os_log_impl(&dword_22F9C3000, v122, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:796] [ImageASTC] command buffer failed with error: %s", &v156, 0xCu);
      }
    }

    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;

LABEL_47:
    goto LABEL_48;
  }

  v120 = _mxi_log(v19);
  if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v120, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:723] Invalid array of textures", buf, 2u);
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_49:
  objc_autoreleasePoolPop(context);
}

void sub_22F9EFF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  sub_22F9EE358(&a27);

  _Unwind_Resume(a1);
}

BOOL image::ASTCStatistics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v14 = objc_msgSend_device(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_textureType(v9, v15, v16, v17, v18);
  v24 = objc_msgSend_pixelFormat(v9, v20, v21, v22, v23);
  v29 = objc_msgSend_width(v9, v25, v26, v27, v28);
  v34 = objc_msgSend_height(v9, v30, v31, v32, v33);
  v39 = objc_msgSend_arrayLength(v9, v35, v36, v37, v38);
  v44 = objc_msgSend_mipmapLevelCount(v9, v40, v41, v42, v43);
  v112 = 0;
  v111 = 0u;
  v110 = 0u;
  if (sub_22F9ED314(v108, v14, v19, v24, v29, v34, v39, v44, 1u, a2, SWORD1(a2), a3, 1u))
  {
    if (v109)
    {
      v48 = objc_msgSend_newTextureViewWithPixelFormat_(v9, v45, v109, v46, v47);

      v9 = v48;
    }

    v49 = [ASTCEncoder alloc];
    v107 = 0;
    LODWORD(v50) = 1.0;
    v52 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v49, v51, v14, a2, a3, 5, 1, &v107, v50);
    v53 = v107;
    v58 = v53;
    if (v52)
    {
      v59 = objc_msgSend_newCommandQueue(v14, v54, v55, v56, v57);
      v68 = objc_msgSend_commandBuffer(v59, v60, v61, v62, v63);
      for (i = 0; objc_msgSend_arrayLength(v9, v64, v65, v66, v67) > i; ++i)
      {
        for (j = 0; objc_msgSend_mipmapLevelCount(v9, v70, v71, v72, v73) > j; ++j)
        {
          objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v52, v64, v68, *v110, i, j, v9, i, j);
        }
      }

      objc_msgSend_commit(v68, v70, v71, v72, v73);
      objc_msgSend_waitUntilCompleted(v68, v76, v77, v78, v79);
      v84 = objc_msgSend_status(v68, v80, v81, v82, v83);
      v75 = v84 == 4;
      if (v84 == 4)
      {
        objc_msgSend_finalizeStatistics_modesPath_errorsPath_(v52, v85, a4, a5, a6);
      }

      else
      {
        v86 = _mxi_log(v84);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v92 = objc_msgSend_error(v68, v88, v89, v90, v91);
          v97 = objc_msgSend_debugDescription(v92, v93, v94, v95, v96);
          v98 = v97;
          v103 = objc_msgSend_UTF8String(v97, v99, v100, v101, v102);
          *buf = 136315138;
          *&buf[4] = v103;
          _os_log_impl(&dword_22F9C3000, v86, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:851] [ImageASTC] command buffer failed with error: %s", buf, 0xCu);
        }
      }
    }

    else
    {
      v59 = _mxi_log(v53);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v59, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:831] Failed creating ASTCEncoder", buf, 2u);
      }

      v75 = 0;
    }
  }

  else
  {
    v75 = 0;
  }

  *buf = &v110;
  sub_22F9DC140(buf);

  return v75;
}

void sub_22F9F032C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}