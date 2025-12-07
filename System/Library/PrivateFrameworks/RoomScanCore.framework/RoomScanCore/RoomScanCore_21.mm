const void **sub_26234DF58(const void **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v17[4] = v2;
    if (v10)
    {
      sub_26226C934(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_26226C98C(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = (v3 + 24);
  }

  v2[1] = v6;
  return result;
}

std::string *sub_26234E084(std::string *a1, float **a2, uint64_t *a3)
{
  v5 = sub_2621D0F64(a1, "");
  std::string::append(v5, "# obj_start\n", 0xCuLL);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v84 = 0uLL;
    v85 = 0;
  }

  else
  {
    do
    {
      std::to_string(&v78, *v6);
      v8 = std::string::insert(&v78, 0, "v ", 2uLL);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v79, " ", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v77, v6[1]);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v77;
      }

      else
      {
        v12 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v77.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v80, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v81, " ", 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v76, v6[2]);
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v76;
      }

      else
      {
        v18 = v76.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v76.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v82, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v83, " \n", 2uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v85 = v22->__r_.__value_.__r.__words[2];
      v84 = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v85 >= 0)
      {
        v24 = &v84;
      }

      else
      {
        v24 = v84;
      }

      if (v85 >= 0)
      {
        v25 = HIBYTE(v85);
      }

      else
      {
        v25 = *(&v84 + 1);
      }

      std::string::append(a1, v24, v25);
      if (SHIBYTE(v85) < 0)
      {
        operator delete(v84);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v6 += 4;
    }

    while (v6 != v7);
    v27 = *a2;
    v26 = a2[1];
    v28 = *a3;
    v84 = 0uLL;
    v85 = 0;
    if (v26 != v27)
    {
      v29 = 0;
      v30 = v28 + 1;
      do
      {
        std::to_string(&v83, v30 + v29);
        sub_26234DF58(&v84, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        ++v29;
      }

      while (v29 < (a2[1] - *a2) >> 4);
    }
  }

  sub_2621D0F64(&v75, "");
  v31 = (a2[1] - *a2) >> 4;
  v73 = (v31 / 2);
  if (v31 >= 2)
  {
    v32 = 0;
    v33 = v31 / 2;
    do
    {
      std::operator+<char>();
      v34 = std::string::append(&v76, " ", 1uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = v84 + 24 * ((v32 + 1) % v31);
      v37 = *(v36 + 23);
      if (v37 >= 0)
      {
        v38 = (v84 + 24 * ((v32 + 1) % v31));
      }

      else
      {
        v38 = *v36;
      }

      if (v37 >= 0)
      {
        v39 = *(v36 + 23);
      }

      else
      {
        v39 = *(v36 + 8);
      }

      v40 = std::string::append(&v77, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v78, " ", 1uLL);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = v84 + 24 * ((v32 + 3) % v31);
      v45 = *(v44 + 23);
      if (v45 >= 0)
      {
        v46 = (v84 + 24 * ((v32 + 3) % v31));
      }

      else
      {
        v46 = *v44;
      }

      if (v45 >= 0)
      {
        v47 = *(v44 + 23);
      }

      else
      {
        v47 = *(v44 + 8);
      }

      v48 = std::string::append(&v79, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v80, " ", 1uLL);
      v51 = *&v50->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      v52 = v84 + 24 * ((v32 + 2) % v31);
      v53 = *(v52 + 23);
      if (v53 >= 0)
      {
        v54 = (v84 + 24 * ((v32 + 2) % v31));
      }

      else
      {
        v54 = *v52;
      }

      if (v53 >= 0)
      {
        v55 = *(v52 + 23);
      }

      else
      {
        v55 = *(v52 + 8);
      }

      v56 = std::string::append(&v81, v54, v55);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = std::string::append(&v82, "\n", 1uLL);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v83;
      }

      else
      {
        v60 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v61 = v83.__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v60, v61);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      v32 += 2;
      --v33;
    }

    while (v33);
  }

  std::string::append(&v75, "f", 1uLL);
  if (v31 >= 2)
  {
    v62 = 0;
    v63 = (v31 / 2);
    do
    {
      std::operator+<char>();
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v83;
      }

      else
      {
        v64 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v83.__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v64, v65);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      v62 += 48;
      --v63;
    }

    while (v63);
  }

  std::string::append(&v75, "\n", 1uLL);
  std::string::append(&v75, "f", 1uLL);
  if (v31 >= 2)
  {
    v66 = v73 + 1;
    v67 = 48 * v73 - 24;
    do
    {
      std::operator+<char>();
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v83;
      }

      else
      {
        v68 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = v83.__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v68, v69);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      --v66;
      v67 -= 48;
    }

    while (v66 > 1);
  }

  std::string::append(&v75, "\n", 1uLL);
  v83.__r_.__value_.__r.__words[0] = &v84;
  sub_2621DED18(&v83);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v75;
  }

  else
  {
    v70 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v75.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v70, v71);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *a3 += (a2[1] - *a2) >> 4;
  return std::string::append(a1, "# obj_end\n\n", 0xBuLL);
}

void sub_26234E7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v56 + 23) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(exception_object);
}

void sub_26234EA08(void *a1, uint64_t a2, std::string *a3, uint64_t *a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v111 = a1;
  if (objc_msgSend_count(v111, v6, v7))
  {
    std::operator+<char>();
    v8 = std::string::append(&v135, "\n", 1uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&v137 = *(&v8->__r_.__value_.__l + 2);
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v137) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((SBYTE7(v137) & 0x80u) == 0)
    {
      v11 = BYTE7(v137);
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(a3, v10, v11);
    if (SBYTE7(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
    }

    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = v111;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v125, &v135, 16);
    if (v13)
    {
      v113 = *v126;
      do
      {
        v14 = 0;
        v114 = v13;
        do
        {
          if (*v126 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v125 + 1) + 8 * v14);
          v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
          objc_msgSend_endOrientation(v15, v19, v20);
          v22 = v21;
          objc_msgSend_startOrientation(v15, v23, v24);
          v28 = vcvtps_s32_f32((v22 - v27) / 5.0);
          if (v28 <= 10)
          {
            v29 = 10;
          }

          else
          {
            v29 = v28;
          }

          objc_msgSend_endOrientation(v15, v25, v26);
          v31 = v30;
          objc_msgSend_startOrientation(v15, v32, v33);
          v115 = v14;
          v34 = 0;
          v124 = (v31 - v35) / v29;
          do
          {
            v36 = objc_alloc_init(RS3DSurface);
            objc_msgSend_startOrientation(v15, v37, v38);
            v40 = v39;
            objc_msgSend_startOrientation(v15, v41, v42);
            v44 = v43;
            objc_msgSend_radius(v15, v45, v46);
            v48 = v47;
            objc_msgSend_circleCenter(v15, v49, v50);
            v123 = v51;
            v52 = (v40 + (v34 * v124)) * 3.14159265 / 180.0;
            v53 = cosf(v52);
            objc_msgSend_radius(v15, v54, v55);
            v57 = v56;
            v58 = sinf(v52);
            objc_msgSend_circleCenter(v15, v59, v60);
            v122 = v61;
            objc_msgSend_quad(v15, v62, v63);
            v121 = v64;
            objc_msgSend_radius(v15, v65, v66);
            v68 = v67;
            objc_msgSend_circleCenter(v15, v69, v70);
            v120 = v71;
            v72 = (v44 + (++v34 * v124)) * 3.14159265 / 180.0;
            v73 = cosf(v72);
            objc_msgSend_radius(v15, v74, v75);
            v77 = v76;
            v78 = sinf(v72);
            objc_msgSend_circleCenter(v15, v79, v80);
            v119 = v81;
            objc_msgSend_quad(v15, v82, v83);
            v118 = v84;
            objc_msgSend_quad(v15, v85, v86);
            v117 = v87;
            objc_msgSend_quad(v15, v88, v89);
            v116 = v90;
            v93 = objc_msgSend_type(v15, v91, v92);
            if (v36)
            {
              v36->type = v93;
            }

            v94 = objc_alloc_init(MEMORY[0x277CCAD78]);
            sub_2622C533C(v36, v94);

            *(&v96 + 1) = *(&v123 + 1);
            *&v96 = *&v123 + (v48 * v53);
            *(&v96 + 1) = v122 + (v57 * v58);
            v97 = v96;
            *(&v98 + 1) = *(&v120 + 1);
            DWORD2(v97) = v121;
            *&v98 = *&v120 + (v68 * v73);
            *(&v98 + 1) = v119 + (v77 * v78);
            v99 = v98;
            DWORD2(v99) = v118;
            DWORD2(v98) = v117;
            DWORD2(v96) = v116;
            *__p = v97;
            v137 = v99;
            v138 = v98;
            v139 = v96;
            if (v36)
            {
              objc_copyStruct(&v36[1], __p, 64, 1, 0);
            }

            objc_msgSend_addObject_(v18, v95, v36);
          }

          while (v29 != v34);

          v100 = v18;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v101 = v100;
          v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v131, __p, 16);
          if (v103)
          {
            v104 = *v132;
            do
            {
              for (i = 0; i != v103; ++i)
              {
                if (*v132 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                v106 = *(*(&v131 + 1) + 8 * i);
                sub_26234F064(v130, v106);
                sub_26234E084(&v129, v130, a4);
                if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v107 = &v129;
                }

                else
                {
                  v107 = v129.__r_.__value_.__r.__words[0];
                }

                if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v129.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v129.__r_.__value_.__l.__size_;
                }

                std::string::append(a3, v107, size);
                if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v129.__r_.__value_.__l.__data_);
                }

                if (v130[0])
                {
                  operator delete(v130[0]);
                }
              }

              v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v109, &v131, __p, 16);
            }

            while (v103);
          }

          ++v14;
        }

        while (v115 + 1 != v114);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v125, &v135, 16);
      }

      while (v13);
    }
  }
}

void sub_26234F064(void *a1, void *a2)
{
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v100 = v3;
  v6 = objc_msgSend_polygonSize(v3, v4, v5);
  objc_msgSend_quad(v100, v7, v8);
  v95 = v9;
  objc_msgSend_quad(v100, v10, v11);
  v94 = v12;
  if (objc_msgSend_type(v100, v13, v14))
  {
    v17.i32[0] = dword_2623A8280[objc_msgSend_type(v100, v15, v16) == 4];
  }

  else
  {
    v17 = 0;
  }

  v18 = v100;
  v19 = vsubq_f32(v95, v94).u64[0];
  v20.f32[0] = -*(&v19 + 1);
  v20.i32[1] = v19;
  v21 = vmul_f32(v20, v20);
  v21.i32[0] = vadd_f32(v21, vdup_lane_s32(v21, 1)).u32[0];
  v22 = vrsqrte_f32(v21.u32[0]);
  v23 = vmul_f32(v22, vrsqrts_f32(v21.u32[0], vmul_f32(v22, v22)));
  v24 = vmul_f32(v23, v23);
  v25 = vmul_n_f32(v20, vmul_f32(v23, vrsqrts_f32(v21.u32[0], v24)).f32[0]);
  v26 = vneg_f32(v25);
  if (v100)
  {
    v27 = v100[33];
    *v24.i32 = *v17.i32 + 0.16;
    v28 = COERCE_DOUBLE(vdup_lane_s32(v24, 0));
    v29 = COERCE_DOUBLE(vdup_lane_s32(v17, 0));
    v30 = v27 <= 0.0;
    *v17.i32 = *v17.i32 + (v27 * 0.5);
    v31 = COERCE_DOUBLE(vdup_lane_s32(v17, 0));
    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    if (v30)
    {
      v31 = v28;
    }
  }

  else
  {
    *v23.i32 = *v17.i32 + 0.16;
    v31 = COERCE_DOUBLE(vdup_lane_s32(v23, 0));
    v32 = COERCE_DOUBLE(vdup_lane_s32(v17, 0));
  }

  v33 = vmul_f32(*&v31, v26);
  v34 = vmul_f32(v25, *&v32);
  if (v6 < 3)
  {
    for (i = 0; i != 64; i += 16)
    {
      objc_msgSend_quad(v18, v15, v16);
      DWORD2(v109) = v54;
      v111 = v55;
      *&v109 = v56;
      v110 = v57;
      v113 = v58;
      v115 = v59;
      v112 = v60;
      v114 = v61;
      v98 = *(&v109 + i);
      objc_msgSend_quad(v100, v62, v63);
      *&v64 = vadd_f32(v33, *&v98);
      v102 = v65;
      v104 = v66;
      v106 = v67;
      v101 = v68;
      v103 = v69;
      v108 = v70;
      v105 = v71;
      v107 = v72;
      *(&v64 + 1) = vextq_s8(*(&v101 + i), *(&v101 + i), 8uLL).u64[0];
      v116 = v64;
      sub_2621D9F60(a1, &v116);
      objc_msgSend_quad(v100, v73, v74);
      DWORD2(v109) = v75;
      v111 = v76;
      *&v109 = v77;
      v110 = v78;
      v113 = v79;
      v115 = v80;
      v112 = v81;
      v114 = v82;
      v99 = *(&v109 + i);
      objc_msgSend_quad(v100, v83, v84);
      *&v85 = vadd_f32(v34, *&v99);
      v102 = v86;
      v104 = v87;
      v106 = v88;
      v101 = v89;
      v103 = v90;
      v108 = v91;
      v105 = v92;
      v107 = v93;
      *(&v85 + 1) = vextq_s8(*(&v101 + i), *(&v101 + i), 8uLL).u64[0];
      v116 = v85;
      sub_2621D9F60(a1, &v116);
      v18 = v100;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    for (j = objc_msgSend_polygonSize(v100, v15, v16); ; j = objc_msgSend_polygonSize(v100, v51, v52))
    {
      v40 = v36 >= j;
      v18 = v100;
      if (v40)
      {
        break;
      }

      v96 = *(objc_msgSend_polygon(v100, v38, v39) + v35);
      v43 = objc_msgSend_polygon(v100, v41, v42);
      *&v44 = vadd_f32(v33, *&v96);
      *(&v44 + 1) = vextq_s8(*(v43 + v35), *(v43 + v35), 8uLL).u64[0];
      v109 = v44;
      sub_2621D9F60(a1, &v109);
      v97 = *(objc_msgSend_polygon(v100, v45, v46) + v35);
      v49 = objc_msgSend_polygon(v100, v47, v48);
      *&v50 = vadd_f32(v34, *&v97);
      *(&v50 + 1) = vextq_s8(*(v49 + v35), *(v49 + v35), 8uLL).u64[0];
      v109 = v50;
      sub_2621D9F60(a1, &v109);
      ++v36;
      v35 += 16;
    }
  }
}

void sub_26234F3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_26234F4FC(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_identifier(v12, v7, v8, v21);
        v15 = objc_msgSend_containsObject_(v4, v14, v13);

        if (v15)
        {
          v18 = objc_alloc_init(MEMORY[0x277CCAD78]);
          sub_2622C533C(v12, v18);

          if (v12)
          {
            v12[105] = 0;
          }
        }

        v19 = objc_msgSend_identifier(v12, v16, v17);
        objc_msgSend_addObject_(v4, v20, v19);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v21, v25, 16);
    }

    while (v9);
  }
}

void sub_26234F6BC(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
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
        v16 = objc_msgSend_parentIdentifier(v15, v10, v11, v21);
        v17 = v16 == 0;

        if (!v17)
        {
          v18 = objc_msgSend_parentIdentifier(v15, v10, v11);
          isEqual = objc_msgSend_isEqual_(v18, v19, v6);

          if (isEqual)
          {
            sub_2622C534C(v15, v7);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v21, v25, 16);
    }

    while (v12);
  }
}

RSMarkerSignal *sub_262350304(uint64_t a1, void *a2, void *a3)
{
  v436 = *MEMORY[0x277D85DE8];
  v369 = a2;
  v5 = a3;
  v371 = v5;
  if (a1)
  {
    v6 = v5;
    memset(v404, 0, sizeof(v404));
    if (v5)
    {
      v7 = v5[15];
      v8 = v6[14];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v8;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
    v367 = objc_msgSend_objectForKey_(v7, v12, v11);

    v13 = v371;
    if (v371)
    {
      v14 = v371[10];
      v13 = v371[14];
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    v18 = objc_msgSend_count(v15, v16, v17);
    if (v367)
    {
      v22 = *(v367 + 48);
      v23 = *(v367 + 64);
      v24 = *(v367 + 80);
      LODWORD(v19) = *(v367 + 8);
      LODWORD(v20) = *(v367 + 12);
      v25 = *&v19;
      v26 = *&v20;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      *&v22 = 0;
      DWORD2(v22) = 0;
      *&v23 = 0;
      DWORD2(v23) = 0;
      v24 = 0uLL;
    }

    v378 = a1;
    LODWORD(__p[1]) = DWORD2(v22);
    v425 = *(&v23 + 2);
    __p[0] = v22;
    v424 = v23;
    LODWORD(v428) = v24.n128_u32[2];
    v427 = v24.n128_u64[0];
    sub_26224041C(v14, v18, __p, v25, v26, v404, v24, *&v22, *&v23, v19, v20, v21);

    v27 = v371;
    if (v371)
    {
      v27 = v371[14];
    }

    v28 = v27;
    v31 = objc_msgSend_count(v28, v29, v30);

    if (v31)
    {
      sub_2621CBF10(1uLL);
    }

    sub_2622669D0(a1 + 192, *(a1 + 200), 0, 0, 0);
    if (v371)
    {
      v32 = v371[4];
      v33 = (v371[5] - v32) >> 4;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    memset(v403, 0, sizeof(v403));
    sub_2621DDA38(v403, v32, &v32[16 * v33], v33);
    sub_26229D6C8();
    v34 = v404[0];
    v393 = sub_26229DA10(v403, MEMORY[0], *v404[0]).n128_u64[0];
    v37 = *(a1 + 176);
    v36 = *(a1 + 184);
    if (v37 >= v36)
    {
      v39 = *(a1 + 168);
      v40 = (v37 - v39) >> 4;
      v41 = v40 + 1;
      if ((v40 + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      v42 = v36 - v39;
      if (v42 >> 3 > v41)
      {
        v41 = v42 >> 3;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF0)
      {
        v43 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        sub_2621CBF10(v43);
      }

      v44 = (16 * v40);
      *v44 = v393;
      v44[1] = v35;
      v38 = 16 * v40 + 16;
      v45 = *(a1 + 168);
      v46 = *(a1 + 176) - v45;
      v47 = 16 * v40 - v46;
      memcpy(v44 - v46, v45, v46);
      v48 = *(a1 + 168);
      *(a1 + 168) = v47;
      *(a1 + 176) = v38;
      *(a1 + 184) = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v37 = v393;
      v37[1] = v35;
      v38 = (v37 + 2);
    }

    *(a1 + 176) = v38;
    sub_26229D6C8();
    sub_26229D730(v402, v403, MEMORY[0], *v34, 60.0);
    sub_26229D6C8();
    sub_26229D730(v401, v403, MEMORY[0], *v34, 20.0);
    v51 = objc_msgSend_walls(v369, v49, v50);
    *v419 = 0u;
    v420 = 0u;
    v421 = 0u;
    v422 = 0u;
    obj = v51;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, v419, __p, 16);
    if (v55)
    {
      v396 = 0;
      v394 = 0;
      v56 = *v420;
      do
      {
        v57 = 0;
        do
        {
          if (*v420 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(v419[1] + v57);
          objc_msgSend_quad(v58, v53, v54, v367);
          v389 = v59;
          objc_msgSend_quad(v58, v60, v61);
          v385 = v62;
          objc_msgSend_confidence(v58, v63, v64);
          v68 = v67;
          if (v58)
          {
            v69 = v58[29];
          }

          else
          {
            LOBYTE(v69) = 0;
          }

          objc_msgSend_quad(v58, v65, v66);
          v384 = v70;
          objc_msgSend_quad(v58, v71, v72);
          v383 = v73;
          if (v58)
          {
            objc_copyStruct(&dest, v58 + 52, 16, 1, 0);
            v74 = dest;
          }

          else
          {
            v74 = 0;
          }

          v75 = v394 - v396;
          v76 = 0xCCCCCCCCCCCCCCCDLL * ((v394 - v396) >> 3);
          v77 = v76 + 1;
          if (v76 + 1 > 0x666666666666666)
          {
            sub_2621CBEB0();
          }

          if (0x999999999999999ALL * (-v396 >> 3) > v77)
          {
            v77 = 0x999999999999999ALL * (-v396 >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (-v396 >> 3) >= 0x333333333333333)
          {
            v78 = 0x666666666666666;
          }

          else
          {
            v78 = v77;
          }

          if (v78)
          {
            sub_262348BE8(v78);
          }

          v79 = 8 * ((v394 - v396) >> 3);
          *v79 = v389;
          *(v79 + 8) = v385;
          *(v79 + 16) = v383;
          *(v79 + 20) = v384;
          *(v79 + 24) = v68;
          *(v79 + 28) = v69;
          *(v79 + 32) = v74;
          v394 = v79 + 40;
          memcpy((40 * v76 + 40 * (v75 / -40)), v396, v75);
          if (v396)
          {
            operator delete(v396);
          }

          v396 = 40 * v76 + 40 * (v75 / -40);
          ++v57;
        }

        while (v55 != v57);
        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v419, __p, 16);
        v55 = v80;
      }

      while (v80);
    }

    else
    {
      v396 = 0;
      v394 = 0;
    }

    v83 = objc_msgSend_openings(v369, v81, v82);
    *v419 = 0u;
    v420 = 0u;
    v421 = 0u;
    v422 = 0u;
    v84 = v83;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, v419, __p, 16))
    {
      v88 = *v419[1];
      objc_msgSend_quad(*v419[1], v86, v87, v367);
      objc_msgSend_quad(v88, v89, v90);
      sub_2621CBF10(1uLL);
    }

    v398 = 0;
    v399 = 0;
    v400 = 0;
    memset(v397, 0, sizeof(v397));
    v416 = 0;
    v417 = 0;
    v418 = 0;
    v413 = 0;
    v414 = 0;
    v415 = 0;
    v91 = v378;
    v92 = *(*(v378 + 176) - 16);
    v431 = v92;
    v93 = v394;
    if (v394 == v396)
    {
      dest = 0uLL;
      *&v430 = 0;
      __p[0] = &dest;
      sub_2621E1D40(__p);
    }

    else
    {
      v94 = 0;
      v95 = 0;
      if (0xCCCCCCCCCCCCCCCDLL * ((v394 - v396) >> 3) <= 1)
      {
        v96 = 1;
      }

      else
      {
        v96 = 0xCCCCCCCCCCCCCCCDLL * ((v394 - v396) >> 3);
      }

      v97 = (v396 + 8);
      do
      {
        LODWORD(v92) = *(v378 + 16);
        v98 = v97[-1];
        v99 = vsub_f32(*v97, v98);
        v100 = vmul_f32(v99, v99);
        v100.i32[0] = vadd_f32(v100, vdup_lane_s32(v100, 1)).u32[0];
        v101 = vrsqrte_f32(v100.u32[0]);
        v102 = vmul_f32(v101, vrsqrts_f32(v100.u32[0], vmul_f32(v101, v101)));
        v103 = vmul_n_f32(v99, vmul_f32(v102, vrsqrts_f32(v100.u32[0], vmul_f32(v102, v102))).f32[0]);
        v104 = vmla_n_f32(*v97, v103, *&v92);
        __p[0] = vmls_lane_f32(v98, v103, *&v92, 0);
        __p[1] = v104;
        if (sub_2623485D8(v402, __p))
        {
          v105 = (v94 >> 3) + 1;
          if (v105 >> 61)
          {
            sub_2621CBEB0();
          }

          if (v94 >> 3 != -1)
          {
            sub_2621CBEC8(v105);
          }

          v106 = (8 * (v94 >> 3));
          *v106 = v95;
          memcpy(0, 0, v94);
          v94 = (v106 + 1);
        }

        ++v95;
        v97 += 5;
      }

      while (v96 != v95);
      dest = 0uLL;
      *&v430 = 0;
      v91 = v378;
      if (v94)
      {
        v107 = 0;
        do
        {
          v108 = v107++;
          if (v107 >= v94 >> 3)
          {
            v116 = v94 >> 3;
          }

          else
          {
            v109 = *(8 * v108);
            v110 = v107;
            do
            {
              v111 = *(8 * v110);
              v112 = sub_2621C92AC((v396 + 40 * v109), (v396 + 40 * v111), 0);
              v113 = *(v378 + 24);
              v115 = v112 < v113;
              v114 = vabds_f32(180.0, v112);
              v115 = v115 || v114 < v113;
              if (v115)
              {
                v419[0] = v109;
                v419[1] = v111;
                v424 = 0;
                __p[0] = 0;
                __p[1] = 0;
                sub_2622AB9E8(__p, v419, &v420, 2uLL);
                sub_2623489A8(&dest, __p);
                if (__p[0])
                {
                  operator delete(__p[0]);
                }
              }

              ++v110;
            }

            while (v110 < v94 >> 3);
            v116 = v94 >> 3;
            v93 = v394;
          }
        }

        while (v107 < v116);
        v117 = *(&dest + 1);
        v118 = dest;
        v91 = v378;
        if (*(&dest + 1) != dest)
        {
          v119 = 0;
          v120 = v431;
          do
          {
            v121 = (v118 + 24 * v119);
            v122 = *v121;
            v123 = v121[1];
            if (((v123 - *v121) & 0xFFFFFFFFFFFFFFF0) == 0x10)
            {
              v370 = v119;
              v124 = 0;
              v125 = 1;
              do
              {
                v126 = (v123 - v122) >> 3;
                obja = (v124 + 1);
                if (v124 + 1 < v126)
                {
                  v372 = v125;
                  do
                  {
                    sub_2621DCD34(&v433, (v396 + 40 * *(v122 + 8 * v124)), (v396 + 40 * *(v122 + 8 * v125)));
                    v127 = v433;
                    v128 = (v433 + 4);
                    v129 = v433 == v434 || v128 == v434;
                    v130 = v433;
                    if (!v129)
                    {
                      v131 = *v433;
                      v130 = v433;
                      v132 = (v433 + 4);
                      do
                      {
                        v133 = *v132++;
                        v134 = v133;
                        if (v133 < v131)
                        {
                          v131 = v134;
                          v130 = v128;
                        }

                        v128 = v132;
                      }

                      while (v132 != v434);
                    }

                    v135 = (v130 - v433) >> 2;
                    v136 = v396 + 40 * *(*v121 + 8 * v124);
                    v138 = *(v136 + 8);
                    v137 = (v136 + 8);
                    v139 = v138;
                    if ((v135 + 1) < 3)
                    {
                      v137 = (v396 + 40 * *(*v121 + 8 * v124));
                    }

                    v140 = *v137;
                    v141 = (v396 + 40 * *(*v121 + 8 * v125));
                    v129 = (v135 & 1) == 0;
                    v142 = v141 + 1;
                    if (v129)
                    {
                      v142 = (v396 + 40 * *(*v121 + 8 * v125));
                    }

                    v143 = *v142;
                    v144 = vsub_f32(v140, *v142);
                    v145.i32[0] = vdup_lane_s32(v144, 1).u32[0];
                    v145.f32[1] = -*v144.i32;
                    v146 = vmul_f32(v145, v145);
                    v146.i32[0] = vadd_f32(v146, vdup_lane_s32(v146, 1)).u32[0];
                    v147 = vrsqrte_f32(v146.u32[0]);
                    v148 = vmul_f32(v147, vrsqrts_f32(v146.u32[0], vmul_f32(v147, v147)));
                    v149 = vmul_n_f32(v145, vmul_f32(v148, vrsqrts_f32(v146.u32[0], vmul_f32(v148, v148))).f32[0]);
                    v150 = vmul_f32(vadd_f32(*(v396 + 40 * *(*v121 + 8 * v124)), v139), 0x3F0000003F000000);
                    v151 = vmul_f32(vadd_f32(*v141, v141[1]), 0x3F0000003F000000);
                    v152 = vsub_f32(v140, v120);
                    v153 = vmul_f32(v152, v152);
                    v153.f32[0] = sqrtf(vaddv_f32(v153));
                    v154 = vsub_f32(*v142, v120);
                    v155 = vmul_f32(v154, v154);
                    v155.f32[0] = sqrtf(vaddv_f32(v155));
                    v156 = vbsl_s8(vdup_lane_s32(vcgt_f32(v155, v153), 0), vsub_f32(v151, v150), vsub_f32(v150, v151));
                    v157 = vmul_f32(v149, v156);
                    v158 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v157, vdup_lane_s32(v157, 1))), 0), vneg_f32(v149), v149);
                    DWORD2(v420) = 0;
                    *&v420 = 0;
                    BYTE12(v420) = -1;
                    v390 = v140;
                    v419[0] = v140;
                    v419[1] = v143;
                    v159 = v396 + 40 * *(*v121 + 8 * v124);
                    v160 = v396 + 40 * *(*v121 + 8 * v125);
                    v161 = *(v160 + 16);
                    if (v161 >= *(v159 + 16))
                    {
                      v161 = *(v159 + 16);
                    }

                    *&v420 = v161;
                    v162 = *(v160 + 20);
                    if (v162 >= *(v159 + 20))
                    {
                      v162 = *(v159 + 20);
                    }

                    *(&v420 + 1) = v162;
                    *&v421 = v158;
                    LODWORD(v411[0]) = -1;
                    v163 = (v396 + 40 * *(*v121 + 8 * v124));
                    v164 = v163[1];
                    v165 = vsub_f32(*v163, v164);
                    v166 = sqrtf(vaddv_f32(vmul_f32(v165, v165)));
                    if (v166 > 0.2)
                    {
                      v167 = (v396 + 40 * *(*v121 + 8 * v125));
                      v168 = v167[1];
                      v169 = vsub_f32(*v167, v168);
                      v170 = sqrtf(vaddv_f32(vmul_f32(v169, v169)));
                      if (v170 > 0.2)
                      {
                        v171 = sqrtf(vaddv_f32(vmul_f32(v144, v144)));
                        if (v166 >= v171)
                        {
                          v166 = v171;
                        }

                        if (v170 < v166)
                        {
                          v166 = v170;
                        }

                        if (v171 <= 2.0 && v166 >= 0.1)
                        {
                          v172 = vmul_f32(vadd_f32(*v163, v164), 0x3F0000003F000000);
                          v173 = vmul_f32(vadd_f32(*v167, v168), 0x3F0000003F000000);
                          v174 = vmla_lane_f32(vmul_n_f32(vsub_f32(vzip2_s32(v172, v173), vdup_lane_s32(v390, 1)), vsub_f32(v143, v390).f32[0]), vsub_f32(vzip1_s32(v172, v173), vdup_lane_s32(v390, 0)), v144, 1);
                          if (vmul_lane_f32(v174, v174, 1).f32[0] <= 0.0)
                          {
                            v175 = 0;
                            v176 = v396;
                            while (1)
                            {
                              sub_26223FEB8(__p, v176, v419);
                              if (*__p >= 0.9 && *(&v424 + 1) <= 0.2 && v425 < 10.0)
                              {
                                break;
                              }

                              ++v175;
                              v176 += 40;
                              if (v96 == v175)
                              {
                                LODWORD(v175) = -1;
                                goto LABEL_119;
                              }
                            }

                            LODWORD(v411[0]) = v175;
                            v182 = *(v176 + 16);
                            *v419 = *v176;
                            v420 = v182;
                            v143 = v419[1];
                            v390 = v419[0];
                            v183 = vsub_f32(v419[1], v419[0]);
                            v184 = vmul_f32(v183, v183);
                            *v184.i32 = sqrtf(vaddv_f32(v184));
                            *&v182 = vdiv_f32(vsub_f32(vext_s8(v419[0], v419[1], 4uLL), vext_s8(v419[1], v419[0], 4uLL)), vdup_lane_s32(v184, 0));
                            v185 = vmul_f32(*&v182, v156);
                            v158 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v185, vdup_lane_s32(v185, 1))), 0), vneg_f32(*&v182), *&v182);
                            *&v421 = v158;
                            if (v175 != -1)
                            {
                              if ((v175 & 0x80000000) == 0 && *(v396 + 40 * v175 + 28) != 3)
                              {
                                goto LABEL_179;
                              }

                              goto LABEL_130;
                            }

LABEL_119:
                            v178 = sub_2621C92AC(v419, (v396 + 40 * *(*v121 + 8 * v124)), 0);
                            v179 = sub_2621C92AC(v419, (v396 + 40 * *(*v121 + 8 * v125)), 0);
                            if (v179 >= v178)
                            {
                              v180 = v178;
                            }

                            else
                            {
                              v180 = v179;
                            }

                            v181 = *(v91 + 24);
                            if (v180 < (90.0 - v181))
                            {
                              goto LABEL_179;
                            }

                            if (v178 >= v179)
                            {
                              v179 = v178;
                            }

                            if (v179 > (180.0 - v181))
                            {
                              goto LABEL_179;
                            }

LABEL_130:
                            if (*(v396 + 40 * *(*v121 + 8 * v124) + 28) != 3 || *(v396 + 40 * *(*v121 + 8 * v125) + 28) != 3)
                            {
                              v186 = 0;
                              v187 = v175;
                              v379 = 1;
                              do
                              {
                                if (*(*v121 + 8 * v124) != v186 && *(*v121 + 8 * v125) != v186 && v186 != v187)
                                {
                                  v189 = (v396 + 40 * v186);
                                  sub_2621DCD34(__p, v419, v189);
                                  v190 = __p[0];
                                  v191 = __p[0];
                                  if (__p[0] != __p[1])
                                  {
                                    v192 = (__p[0] + 4);
                                    v191 = __p[0];
                                    if (__p[0] + 4 != __p[1])
                                    {
                                      v193 = *__p[0];
                                      v191 = __p[0];
                                      v194 = (__p[0] + 4);
                                      do
                                      {
                                        v195 = *v194++;
                                        v196 = v195;
                                        if (v195 < v193)
                                        {
                                          v193 = v196;
                                          v191 = v192;
                                        }

                                        v192 = v194;
                                      }

                                      while (v194 != __p[1]);
                                    }
                                  }

                                  v197 = *v191;
                                  v198 = *v189;
                                  v199 = v189[1];
                                  v200 = vsub_f32(*v189, v199);
                                  v201 = COERCE_DOUBLE(vmul_f32(v200, v200));
                                  if (sqrtf(vaddv_f32(*&v201)) >= 0.3 || (v201 = v197, v197 >= 0.00001))
                                  {
                                    LODWORD(v201) = *(v378 + 28);
                                    if (v197 < *&v201 || (v373 = *&v201, sub_2621DCE38(v390, v143, v198, v199)))
                                    {
                                      v379 = 0;
                                      v202 = 23;
                                    }

                                    else
                                    {
                                      v203 = vsub_f32(v199, v198);
                                      v204 = vaddv_f32(vmul_f32(vsub_f32(v390, v198), v203));
                                      v205 = vaddv_f32(vmul_f32(v203, v203));
                                      if (v205 < 0.000001)
                                      {
                                        v205 = 0.000001;
                                      }

                                      v206 = vmla_n_f32(v198, v203, v204 / v205);
                                      v207 = vsub_f32(v206, v198);
                                      v208 = vsub_f32(v206, v199);
                                      if (vaddv_f32(vmul_f32(v207, v208)) > 0.00001)
                                      {
                                        v209 = vmul_f32(v207, v207);
                                        v210 = vmul_f32(v208, v208);
                                        v211 = vsqrt_f32(vadd_f32(vzip1_s32(v209, v210), vzip2_s32(v209, v210)));
                                        v206 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v211, 1), v211)), 0), v199, v198);
                                      }

                                      v212 = vmla_n_f32(v198, v203, vaddv_f32(vmul_f32(vsub_f32(v143, v198), v203)) / v205);
                                      v213 = vsub_f32(v212, v198);
                                      v214 = vsub_f32(v212, v199);
                                      if (vaddv_f32(vmul_f32(v213, v214)) > 0.00001)
                                      {
                                        v215 = vmul_f32(v213, v213);
                                        v216 = vmul_f32(v214, v214);
                                        v217 = vsqrt_f32(vadd_f32(vzip1_s32(v215, v216), vzip2_s32(v215, v216)));
                                        v212 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v217, 1), v217)), 0), v199, v198);
                                      }

                                      v218 = vsub_f32(v206, v390);
                                      v219 = vmul_f32(v218, v218);
                                      v220 = vsub_f32(v212, v143);
                                      v221 = vmul_f32(v220, v220);
                                      v222 = vmvn_s8(vcgt_f32(vdup_lane_s32(v373, 0), vsqrt_f32(vadd_f32(vzip1_s32(v221, v219), vzip2_s32(v221, v219)))));
                                      v379 &= v222.i8[4] & v222.i8[0];
                                      if (v222.i32[1] & v222.i32[0])
                                      {
                                        v202 = 0;
                                      }

                                      else
                                      {
                                        v202 = 23;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v202 = 25;
                                  }

                                  if (v190)
                                  {
                                    operator delete(v190);
                                  }

                                  if (v202 == 25)
                                  {
                                    v187 = v175;
                                  }

                                  else
                                  {
                                    v187 = v175;
                                    if (v202)
                                    {
                                      break;
                                    }
                                  }
                                }

                                ++v186;
                              }

                              while (v186 != v96);
                              v91 = v378;
                              if (v379)
                              {
                                v223 = 0;
                                v224 = v175;
                                v225 = vmul_f32(vadd_f32(v390, v143), 0x3F0000003F000000);
                                v226 = (v396 + 8);
                                while (v224 == v223 || !sub_2621DCE38(v226[-1], *v226, v120, v225))
                                {
                                  ++v223;
                                  v226 += 5;
                                  if (v223 >= 0xCCCCCCCCCCCCCCCDLL * ((v394 - v396) >> 3))
                                  {
                                    v227 = 0;
                                    goto LABEL_173;
                                  }
                                }

                                v227 = 1;
LABEL_173:
                                v228 = sub_2621C92AC(v419, &v431, 0);
                                if ((v227 & 1) != 0 || ((v229 = *(v378 + 20), v228 > v229) ? (v230 = v228 < (180.0 - v229)) : (v230 = 0), !v230))
                                {
                                  v425 = 0.0;
                                  *__p = *v419;
                                  v424 = v420;
                                  v427 = v158;
                                  v426 = 2;
                                  sub_262348AE4(&v416, __p);
                                  sub_2621C7CD0(&v413, v411);
                                }
                              }
                            }
                          }
                        }
                      }
                    }

LABEL_179:
                    if (v127)
                    {
                      operator delete(v127);
                    }

                    ++v125;
                    v122 = *v121;
                    v123 = v121[1];
                    v126 = (v123 - *v121) >> 3;
                    v93 = v394;
                  }

                  while (v125 < v126);
                  v125 = v372;
                }

                ++v125;
                ++v124;
              }

              while (obja < v126 - 1);
              v117 = *(&dest + 1);
              v118 = dest;
              v119 = v370;
            }

            ++v119;
          }

          while (v119 < 0xAAAAAAAAAAAAAAABLL * ((v117 - v118) >> 3));
        }
      }

      __p[0] = &dest;
      sub_2621E1D40(__p);
    }

    sub_2622B9F2C((v91 + 144), v401);
    v411[0] = 0;
    v411[1] = 0;
    v412 = 0;
    v409[0] = 0;
    v409[1] = 0;
    v410 = 0;
    v433 = 0;
    v434 = 0;
    v435 = 0;
    v233 = v396;
    objb = v93 - v396;
    if (v93 != v396)
    {
      do
      {
        sub_262348AE4(&v433, v233);
        v233 = (v233 + 40);
      }

      while (v233 != v93);
      v431 = 0uLL;
      v432 = 0;
      if (v434 != v433)
      {
        v234 = 0;
        v235 = 0;
        do
        {
          v236 = vsub_f32(*(v433 + v234), *(v433 + v234 + 8));
          if (sqrtf(vaddv_f32(vmul_f32(v236, v236))) > 0.06)
          {
            sub_2621CBF10(1uLL);
          }

          ++v235;
          v234 += 40;
        }

        while (v235 < 0xCCCCCCCCCCCCCCCDLL * ((v434 - v433) >> 3));
        *&v431 = 0;
        v91 = v378;
      }
    }

    if (v433)
    {
      operator delete(v433);
    }

    *v391 = *v411;
    v237 = v411[0];
    v238 = v416;
    v239 = v417;
    if (v411[1] != v411[0] && v417 != v416)
    {
      v241 = 0xCCCCCCCCCCCCCCCDLL * ((v411[1] - v411[0]) >> 3);
      LOBYTE(v419[0]) = 1;
      sub_26220F1D4(__p, v241, v419);
      v245 = 0;
      v246 = __p[0];
      if (v241 <= 1)
      {
        v241 = 1;
      }

      do
      {
        v247 = v237 + 5 * v245;
        v248 = *v247;
        v249 = v247[1];
        v250 = v238;
        while (1)
        {
          v242.i64[0] = *v250;
          v243.i64[0] = *(v250 + 1);
          v244.i64[0] = v248;
          if (sub_2621DD0C0(v242, v243, v244, v249))
          {
            break;
          }

          v250 = (v250 + 40);
          if (v250 == v239)
          {
            goto LABEL_209;
          }
        }

        *&v246[(v245 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v245);
LABEL_209:
        ++v245;
      }

      while (v245 != v241);
      *&v420 = 0;
      v251 = 0uLL;
      *v419 = 0u;
      *&v430 = 0;
      dest = 0u;
      v252 = __p[1];
      v253 = v409[0];
      if (__p[1])
      {
        v254 = 0;
        v255 = v237;
        v256 = v409[0];
        do
        {
          if ((*(__p[0] + ((v254 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v254))
          {
            sub_262348AE4(v419, v255);
            sub_2621C7CD0(&dest, v256);
            v252 = __p[1];
          }

          ++v254;
          ++v256;
          v255 = (v255 + 40);
        }

        while (v254 < v252);
        v251 = *v419;
        v257 = v420;
        v258 = dest;
        v252 = v430;
      }

      else
      {
        v257 = 0;
        v258 = 0uLL;
      }

      v419[0] = v237;
      *v391 = v251;
      *v411 = v251;
      v412 = v257;
      *v409 = v258;
      v410 = v252;
      v91 = v378;
      if (v253)
      {
        operator delete(v253);
        v237 = v419[0];
      }

      if (v237)
      {
        operator delete(v237);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    v406 = 0;
    v407 = 0;
    v408 = 0;
    memset(v405, 0, sizeof(v405));
    for (; v238 != v239; v238 = (v238 + 40))
    {
      sub_262348AE4(&v406, v238);
    }

    v259 = v413;
    v260 = v414;
    while (v259 != v260)
    {
      sub_2621C7CD0(v405, v259++);
    }

    for (i = v391[0]; i != v391[1]; i = (i + 40))
    {
      sub_262348AE4(&v406, i);
    }

    v262 = v409[0];
    v263 = v409[1];
    while (v262 != v263)
    {
      sub_2621C7CD0(v405, v262++);
    }

    v264 = *(v91 + 176);
    v266 = v406;
    v265 = v407;
    if (v407 == v406)
    {
      v268 = 0;
      v269 = 0;
    }

    else
    {
      v386 = v264;
      v267 = 0;
      v268 = 0;
      v269 = 0;
      v270 = 0;
      do
      {
        v271 = &v266[v267];
        v272 = v268 - v269;
        v273 = 0xAAAAAAAAAAAAAAABLL * ((v268 - v269) >> 4);
        v274 = v273 + 1;
        if (v273 + 1 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * (-v269 >> 4) > v274)
        {
          v274 = 0x5555555555555556 * (-v269 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v269 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v275 = 0x555555555555555;
        }

        else
        {
          v275 = v274;
        }

        if (v275)
        {
          sub_262348CE4(v275);
        }

        v276 = 48 * v273;
        v277 = *(v405[0] + v270);
        *v276 = 0;
        *(v276 + 8) = 0;
        *(v276 + 24) = 0;
        *(v276 + 16) = 0;
        *(v276 + 28) = -1;
        v278 = *v271;
        v279 = *(v271 + 1);
        *(v276 + 32) = *(v271 + 4);
        *v276 = v278;
        *(v276 + 16) = v279;
        *(v276 + 40) = v277;
        *(v276 + 44) = 0;
        v268 = 48 * v273 + 48;
        v280 = (v276 + 48 * (v272 / -48));
        memcpy(v280, v269, v272);
        if (v269)
        {
          operator delete(v269);
          v266 = v406;
          v265 = v407;
        }

        v269 = v280;
        ++v270;
        v267 += 40;
      }

      while (v270 < 0xCCCCCCCCCCCCCCCDLL * ((v265 - v266) >> 3));
      v264 = v386;
    }

    *&v420 = 0;
    v281 = 0uLL;
    *v419 = 0u;
    v282 = v378;
    v283 = *(v378 + 120);
    v381 = *(v378 + 128);
    v387 = v269;
    if (v283 != v381)
    {
      v380 = (v264 - 16);
      v284 = 0xCCCCCCCCCCCCCCCDLL * (objb >> 3);
      if (v284 <= 1)
      {
        v285 = 1;
      }

      else
      {
        v285 = 0xCCCCCCCCCCCCCCCDLL * (objb >> 3);
      }

      objc = 0xCCCCCCCCCCCCCCCDLL * (objb >> 3);
      v286 = v284 & 0x7FFFFFFF;
      while (1)
      {
        ++v283[5].i32[1];
        v287 = v269;
        if (v269 != v268)
        {
          while (1)
          {
            sub_26223FEB8(__p, v283, v287);
            v288 = *&__p[1] < 0.5 || *(&v424 + 1) > 0.5;
            if (!v288 && v425 < 30.0)
            {
              break;
            }

            v287 += 6;
            if (v287 == v268)
            {
              goto LABEL_263;
            }
          }

          v287[5].i32[1] = v283[5].i32[1];
          goto LABEL_319;
        }

LABEL_263:
        v290 = v396;
        if (v394 == v396)
        {
LABEL_271:
          v291 = 0xFFFFFFFFLL;
        }

        else
        {
          v291 = 0;
          while (1)
          {
            sub_26223FEB8(__p, v283, v290);
            if (*&__p[1] >= 0.9 && *(&v424 + 1) <= 0.2 && v425 < 10.0)
            {
              break;
            }

            ++v291;
            v290 += 5;
            if (v285 == v291)
            {
              goto LABEL_271;
            }
          }

          v291 = v291;
          if (*(v396 + 40 * v291 + 28) != 3)
          {
            goto LABEL_319;
          }
        }

        v293 = sub_2623485D8(v401, v283);
        if (v394 == v396)
        {
          v299 = 0;
        }

        else
        {
          v294 = vmul_f32(vadd_f32(*v283, v283[1]), 0x3F0000003F000000);
          v295 = *v380;
          v296 = (v396 + 8);
          v297 = v285 - 1;
          do
          {
            v298 = v297;
            v299 = sub_2621DCE38(v296[-1], *v296, v295, v294);
            if (v299)
            {
              break;
            }

            v297 = v298 - 1;
            v296 += 5;
          }

          while (v298);
        }

        v300 = sub_2621C92AC(v283, v380, 0);
        v282 = v378;
        if (!v293)
        {
          goto LABEL_285;
        }

        v301 = v300 <= 30.0;
        if (v300 >= 150.0)
        {
          v301 = 1;
        }

        if (v299 || v301)
        {
LABEL_285:
          *&dest = -1;
          v424 = 0;
          __p[0] = 0;
          __p[1] = 0;
          sub_2621DD5D0(__p, &dest, &dest + 2, 2uLL);
          v433 = -1;
          *&v430 = 0;
          dest = 0uLL;
          sub_2621DD5D0(&dest, &v433, &v434, 2uLL);
          *&v431 = 0;
          v434 = 0;
          v435 = 0;
          v433 = 0;
          sub_2621DD5D0(&v433, &v431, &v431 + 2, 2uLL);
          v302 = v433;
          if (objc >= 1)
          {
            v303 = 0;
            v304 = __p[0];
            v305 = dest;
            do
            {
              if (v303 != v291)
              {
                sub_2621DCD34(&v431, v283, (v396 + 40 * v303));
                v306 = v431;
                v307 = (v431 + 4);
                v308 = v431 == *(&v431 + 1) || v307 == *(&v431 + 1);
                v309 = v431;
                if (!v308)
                {
                  v310 = *v431;
                  v309 = v431;
                  v311 = (v431 + 4);
                  do
                  {
                    v312 = *v311++;
                    v313 = v312;
                    if (v312 < v310)
                    {
                      v310 = v313;
                      v309 = v307;
                    }

                    v307 = v311;
                  }

                  while (v311 != *(&v431 + 1));
                }

                if (*v309 < 0.2)
                {
                  v314 = (v309 - v431) >> 2;
                  v315 = v314 / 2;
                  v304[v315] = v303;
                  *(v305 + 4 * v315) = v314 % 2;
                  ++v302[v315];
                }

                if (v306)
                {
                  operator delete(v306);
                }
              }

              ++v303;
            }

            while (v303 < v286);
          }

          if (*v302 == 1 && v302[1] == 1)
          {
            v316 = __p[0];
            v317 = *__p[0];
            v318 = *(__p[0] + 1);
            v319 = v318 == -1 || v317 == -1;
            if (!v319 && v317 != v318)
            {
              v321 = dest;
              v322 = (v396 + 40 * v317);
              if (*dest)
              {
                ++v322;
              }

              v323 = *v322;
              *v283 = *v322;
              v324 = (v396 + 40 * v316[1]);
              if (*(v321 + 4))
              {
                ++v324;
              }

              v325 = *v324;
              v283[1] = *v324;
              v283[5].i32[0] = v291;
              v326 = vsub_f32(vext_s8(v323, v325, 4uLL), vext_s8(v325, v323, 4uLL));
              v327 = vsub_f32(v325, v323);
              v328 = vmul_f32(v327, v327);
              *v328.i32 = sqrtf(vaddv_f32(v328));
              v329 = vdiv_f32(v326, vdup_lane_s32(v328, 0));
              v330 = vmul_f32(v329, v283[4]);
              v283[4] = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v330, vdup_lane_s32(v330, 1))), 0), vneg_f32(v329), v329);
              sub_262348D3C(v419, v283);
            }
          }

          operator delete(v302);
          v282 = v378;
          if (dest)
          {
            operator delete(dest);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }
        }

LABEL_319:
        v283 += 6;
        v269 = v387;
        if (v283 == v381)
        {
          v281 = *v419;
          break;
        }
      }
    }

    v331 = v281;
    v332 = *(&v281 + 1) - v281;
    if ((*(&v281 + 1) - v281) >= 1)
    {
      if (-v268 >= v332)
      {
        if (v281 != *(&v281 + 1))
        {
          memmove(v268, v281, *(&v281 + 1) - v281);
        }

        v268 += v332;
      }

      else
      {
        v333 = v269;
        v334 = v268 - v269;
        v335 = 0xAAAAAAAAAAAAAAABLL * ((v268 - v269) >> 4);
        v336 = v335 - 0x5555555555555555 * (v332 >> 4);
        if (v336 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * (-v333 >> 4) > v336)
        {
          v336 = 0x5555555555555556 * (-v333 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v333 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v337 = 0x555555555555555;
        }

        else
        {
          v337 = v336;
        }

        if (v337)
        {
          sub_262348CE4(v337);
        }

        v338 = 48 * v335;
        v268 = 48 * v335 + v332;
        v339 = 48 * v335;
        do
        {
          v340 = *v331;
          v341 = v331[2];
          *(v339 + 16) = v331[1];
          *(v339 + 32) = v341;
          *v339 = v340;
          v339 += 48;
          v331 += 3;
          v332 -= 48;
        }

        while (v332);
        v342 = (v338 - v334);
        memcpy((v338 - v334), v387, v334);
        if (v387)
        {
          operator delete(v387);
        }

        v269 = v342;
      }
    }

    v424 = 0;
    v343 = 0uLL;
    *__p = 0u;
    if (v269 == v268)
    {
      v345 = 0;
    }

    else
    {
      v344 = v269;
      do
      {
        if (v344[5].i32[1] <= 1000)
        {
          sub_262348D3C(__p, v344);
        }

        v344 += 6;
      }

      while (v344 != v268);
      v343 = *__p;
      v345 = v424;
    }

    v346 = v282[15];
    *(v282 + 15) = v343;
    v282[17] = v345;
    if (v346)
    {
      operator delete(v346);
    }

    if (v419[0])
    {
      operator delete(v419[0]);
    }

    if (v269)
    {
      operator delete(v269);
    }

    v347 = v282[15];
    v348 = v282[16];
    while (v347 != v348)
    {
      sub_262348AE4(&v398, v347);
      v349 = v347 + 10;
      sub_2621C7CD0(v397, v349);
      v347 = (v349 + 2);
    }

    if (v405[0])
    {
      operator delete(v405[0]);
    }

    if (v406)
    {
      operator delete(v406);
    }

    if (v409[0])
    {
      operator delete(v409[0]);
    }

    if (v411[0])
    {
      operator delete(v411[0]);
    }

    if (v413)
    {
      operator delete(v413);
    }

    if (v416)
    {
      operator delete(v416);
    }

    v350 = objc_msgSend_array(MEMORY[0x277CBEB18], v231, v232, v367);
    if (v369)
    {
      v388 = v369[3];
      v352 = v369[4];
    }

    else
    {
      v388 = 0;
      v352 = 0;
    }

    v382 = v352;
    v354 = v398;
    v353 = v399;
    if (v398 != v399)
    {
      v355 = v398 + 4;
      do
      {
        v356 = v355 - 4;
        *&v351 = *(v355 - 4);
        v395 = v351;
        *&v351 = *(v355 - 3);
        *v392 = v351;
        v357 = objc_alloc_init(RS3DMarker);
        v359 = v357;
        if (v357)
        {
          v361 = *v392;
          v360 = v395;
          v362 = v395;
          DWORD2(v362) = v388;
          v363 = *v392;
          DWORD2(v363) = v388;
          DWORD2(v361) = v382;
          DWORD2(v360) = v382;
          *&v357[1].super.isa = v362;
          *&v357[1]._normal[4] = v363;
          *&v357[2].super.isa = v361;
          *&v357[2]._normal[4] = v360;
          *&v362 = *v355;
          *&v357->_normal[4] = v362;
          v357->_score = 1.0;
        }

        objc_msgSend_addObject_(v350, v358, v357);

        v355 += 5;
      }

      while (v356 + 5 != v353);
    }

    v364 = objc_alloc_init(RSMarkerSignal);
    v365 = v364;
    if (v364)
    {
      objc_storeStrong(&v364->_markers, v350);
    }

    if (v397[0])
    {
      operator delete(v397[0]);
    }

    if (v354)
    {
      operator delete(v354);
    }

    if (v396)
    {
      operator delete(v396);
    }

    if (v401[0])
    {
      operator delete(v401[0]);
    }

    if (v402[0])
    {
      operator delete(v402[0]);
    }

    if (v403[0])
    {
      operator delete(v403[0]);
    }

    operator delete(0);

    if (v404[0])
    {
      operator delete(v404[0]);
    }
  }

  else
  {
    v365 = 0;
  }

  return v365;
}

void sub_262352D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  sub_2621C74C4(&STACK[0x450]);
  sub_2621C74C4(&STACK[0x210]);
  sub_2622811D0(&STACK[0x250]);
  if (__p)
  {
    *(v67 - 216) = __p;
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v69 = *(v67 - 192);
  if (v69)
  {
    operator delete(v69);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a67)
  {
    operator delete(a67);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a52)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

id sub_262353250(uint64_t *a1, const char *a2, float a3, double a4)
{
  v5 = a2;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    *v8.i32 = a3 * 6.0;
    v11 = vdupq_lane_s32(v8, 0);
    *v12.i64 = a4;
    *&v12.i64[1] = a4;
    v29 = v11;
    v31 = v12;
    __asm { FMOV            V0.4S, #6.0 }

    v28 = _Q0;
    do
    {
      v37 = *v9;
      v36 = *(v9 + 8);
      v18 = *(v9 + 16);
      v19 = objc_alloc_init(RS3DSurface);
      v21 = v19;
      v22.i64[0] = v37;
      v22.i64[1] = v36;
      v23 = vsubq_f32(vdivq_f32(vmulq_f32(v22, v28), v29), v31);
      v24 = vzip2q_s64(v23, 0);
      v23.i32[2] = 0;
      v25 = v23;
      v25.i32[3] = v35;
      v26 = v24;
      v26.i32[3] = v34;
      v24.i32[3] = v33;
      v23.i32[3] = v32;
      src[0] = v25;
      src[1] = v26;
      src[2] = v24;
      src[3] = v23;
      if (v19)
      {
        objc_copyStruct(&v19[1], src, 64, 1, 0);
        *(v21 + 108) = v18;
        *(v21 + 104) = v5;
      }

      objc_msgSend_addObject_(v7, v20, v21, *&v28, *&v29);

      v9 += 24;
    }

    while (v9 != v10);
  }

  return v7;
}

void sub_2623533F8(void *a1)
{
  sub_262353430(a1);

  JUMPOUT(0x266727420);
}

void *sub_262353430(void *a1)
{
  *a1 = &unk_2874EEE20;
  sub_262353488(a1);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_262353488(void *result)
{
  v1 = result[1];
  if (v1 != result[2])
  {
    v2 = result;
    do
    {
      result = *v1;
      if (*v1)
      {
        result = (*(*result + 8))(result);
      }

      *v1 = 0;
      v3 = v2[2];
      v4 = v3 - (v1 + 1);
      if (v3 != (v1 + 1))
      {
        result = memmove(v1, v1 + 1, v3 - (v1 + 1));
      }

      v2[2] = v1 + v4;
    }

    while (v1 != (v1 + v4));
  }

  return result;
}

void *sub_26235351C(void *a1)
{
  *a1 = &unk_2874EEDF8;
  a1[2] = a1[1];
  v2 = (a1 + 4);
  v3 = a1[4];
  v4 = a1[5];
  if (v4 != v3)
  {
    v5 = v4 - 22;
    v6 = v4 - 22;
    v7 = v4 - 22;
    do
    {
      v8 = *v7;
      v7 -= 22;
      (*v8)(v6);
      v5 -= 22;
      v9 = v6 == v3;
      v6 = v7;
    }

    while (!v9);
  }

  a1[5] = v3;
  v12 = v2;
  sub_2621C5004(&v12);
  v10 = a1[1];
  if (v10)
  {
    a1[2] = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_2623535F4(void *a1, int a2, uint64_t a3)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v6 >= v5)
  {
    v8 = a1[1];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_2621CBEB0();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v14 = (v6 - v8) >> 2;
    v15 = (4 * v10);
    v16 = (4 * v10 - 4 * v14);
    *v15 = a2;
    v7 = v15 + 1;
    memcpy(v16, v8, v9);
    a1[1] = v16;
    a1[2] = v7;
    a1[3] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = a2;
    v7 = v6 + 4;
  }

  a1[2] = v7;

  return sub_26224663C(a1 + 4, a3, a3);
}

uint64_t sub_262353710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_26224663C(a2, *(a1 + 32) + 176, a3);
}

void sub_262353750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2621C5004(va);
  _Unwind_Resume(a1);
}

void sub_262353768(void *a1)
{
  sub_26235351C(a1);

  JUMPOUT(0x266727420);
}

void sub_2623537A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v86[0] = *(a1 + 16);
  v5 = *(a1 + 20);
  memset(v85, 0, sizeof(v85));
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v7 = (a1 + 208);
  v6 = *(a1 + 208);
  v8 = a1 + 184;
  v9 = *(a1 + 160);
  v74 = a1 + 160;
  *(a1 + 192) = *(a1 + 184);
  *(a1 + 168) = v9;
  v10 = a1 + 256;
  *(a1 + 264) = *(a1 + 256);
  v76 = a1 + 280;
  v12 = (a1 + 136);
  v11 = *(a1 + 136);
  *(a1 + 288) = *(a1 + 280);
  *(a1 + 144) = v11;
  v69 = a1 + 304;
  *(a1 + 312) = *(a1 + 304);
  v68 = a1 + 328;
  *(a1 + 336) = *(a1 + 328);
  v13 = *(a1 + 216);
  while (v6 != v13)
  {
    v6[1] = *v6;
    v6 += 3;
  }

  v14 = *(a1 + 232);
  v15 = *(a1 + 240);
  v16 = (a1 + 232);
  while (v14 != v15)
  {
    v14[1] = *v14;
    v14 += 3;
  }

  sub_2621E1D94((a1 + 232));
  sub_2621E1D94(v7);
  v18 = *a2;
  v17 = *(a2 + 8);
  while (v18 != v17)
  {
    sub_2621DE070(v12, v18++);
  }

  v70 = v10;
  v20 = *(a1 + 136);
  v19 = *(a1 + 144);
  if (v20 != v19)
  {
    do
    {
      sub_2621CBA84(&v82, v20);
      v21 = v20 + 1;
      sub_2621CBA84(&v82, v21);
      __p = 0;
      sub_2621C9004(v85, &__p);
      __p = 0;
      sub_2621C9004(v85, &__p);
      v20 = v21 + 1;
    }

    while (v20 != v19);
    v22 = v82;
    v23 = v83 - v82;
    if (v83 != v82)
    {
      v24 = 0;
      v25 = 0;
      v26 = v85[0];
      v27 = v23 >> 3;
      v72 = v85[0] + 8;
      v73 = (v23 >> 3) - 1;
      v71 = v82 + 8;
      do
      {
        __p = 0;
        if (*(v26 + 8 * v25))
        {
          v28 = v25 + 1;
        }

        else
        {
          *(v26 + 8 * v25) = ++v24;
          __p = v22[v25];
          v75 = __p;
          sub_2621CBA84(v74, &__p);
          LODWORD(v78) = v75;
          sub_2621C8F2C(v8, &v78);
          LODWORD(v78) = HIDWORD(v75);
          sub_2621C8F2C(v8, &v78);
          v28 = v25 + 1;
          if (v25 + 1 < v27)
          {
            v29 = v73 - v25;
            v30 = (v72 + 8 * v25);
            v31 = &v71[8 * v25];
            do
            {
              v32 = vsub_f32(v75, *v31);
              if (sqrtf(vaddv_f32(vmul_f32(v32, v32))) < v4)
              {
                *v30 = v24;
              }

              ++v30;
              ++v31;
              --v29;
            }

            while (v29);
          }
        }

        v25 = v28;
      }

      while (v28 < v27);
    }
  }

  v33 = *(a1 + 136);
  if (*(a1 + 144) != v33)
  {
    v34 = 0;
    v35 = (v85[0] + 8);
    do
    {
      __p = 0;
      v80 = 0;
      v81 = 0;
      v78 = *(v35 - 1) - 1;
      sub_2621C9004(&__p, &v78);
      v78 = *v35 - 1;
      sub_2621C9004(&__p, &v78);
      sub_2622F88B0(v7, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      ++v34;
      v33 = *(a1 + 136);
      v35 += 2;
    }

    while (v34 < (*(a1 + 144) - v33) >> 4);
  }

  *(a1 + 144) = v33;
  v36 = *(a1 + 208);
  for (i = *(a1 + 216); v36 != i; v36 += 3)
  {
    v39 = **v36;
    v38 = (*v36)[1];
    v40 = *(a1 + 152);
    v41 = *(a1 + 160);
    if (v33 >= v40)
    {
      v42 = (v33 - *v12) >> 4;
      if ((v42 + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      v43 = v40 - *v12;
      v44 = v43 >> 3;
      if (v43 >> 3 <= (v42 + 1))
      {
        v44 = v42 + 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF0)
      {
        v45 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        sub_2621CBF10(v45);
      }

      v46 = (16 * v42);
      *v46 = *(v41 + 8 * v39);
      v46[1] = *(v41 + 8 * v38);
      v33 = (16 * v42 + 16);
      v47 = *(a1 + 136);
      v48 = *(a1 + 144) - v47;
      v49 = v46 - v48;
      memcpy(v46 - v48, v47, v48);
      v50 = *(a1 + 136);
      *(a1 + 136) = v49;
      *(a1 + 144) = v33;
      *(a1 + 152) = 0;
      if (v50)
      {
        operator delete(v50);
      }

      v16 = (a1 + 232);
    }

    else
    {
      *v33 = *(v41 + 8 * v39);
      v33[1] = *(v41 + 8 * v38);
      v33 += 2;
    }

    *(a1 + 144) = v33;
  }

  if (*(a1 + 168) != *(a1 + 160))
  {
    v51 = 0;
    do
    {
      __p = 0;
      v80 = 0;
      v81 = 0;
      v78 = 0;
      v53 = *(a1 + 208);
      v52 = *(a1 + 216);
      if (v52 != v53)
      {
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = *(v53 + v54);
          if (v51 == *v56 || v51 == v56[1])
          {
            sub_2621C9004(&__p, &v78);
            v53 = *(a1 + 208);
            v52 = *(a1 + 216);
          }

          v78 = ++v55;
          v54 += 24;
        }

        while (v55 < 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 3));
      }

      sub_2622F88B0(v16, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      ++v51;
    }

    while (v51 < (*(a1 + 168) - *(a1 + 160)) >> 3);
  }

  v57 = *(a1 + 232);
  v58 = *(a1 + 240);
  if (v57 != v58)
  {
    while (1)
    {
      __p = 0;
      v80 = 0;
      v81 = 0;
      sub_262234B80(&__p, *v57, *(v57 + 8), (*(v57 + 8) - *v57) >> 3);
      v59 = __p;
      if (v80 - __p == 16)
      {
        break;
      }

      sub_2621C8F2C(v70, v86);
      sub_2621C8F2C(v76, v86);
      if (v59)
      {
        goto LABEL_59;
      }

LABEL_60:
      v57 += 24;
      if (v57 == v58)
      {
        goto LABEL_61;
      }
    }

    v60 = sub_2621C92AC((*v12 + 16 * *__p), (*v12 + 16 * *(__p + 1)), 0);
    *&v78 = v60;
    if ((180.0 - v60) < v60)
    {
      v60 = 180.0 - v60;
    }

    v77 = v60;
    sub_2621C8F2C(v70, &v77);
    sub_2621C8F2C(v76, &v78);
LABEL_59:
    operator delete(v59);
    goto LABEL_60;
  }

LABEL_61:
  __p = 0;
  v62 = *(a1 + 136);
  v61 = *(a1 + 144);
  if (v61 != v62)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = vsub_f32(*(v62 + v64), *(v62 + v64 + 8));
      if (sqrtf(vaddv_f32(vmul_f32(v66, v66))) <= v5)
      {
        sub_2621C9004(v68, &__p);
        sub_2621C9004(v69, *(*v7 + v63));
        sub_2621C9004(v69, (*(*v7 + v63) + 8));
        v62 = *(a1 + 136);
        v61 = *(a1 + 144);
      }

      __p = ++v65;
      v64 += 16;
      v63 += 24;
    }

    while (v65 < (v61 - v62) >> 4);
  }

  if (v82)
  {
    operator delete(v82);
  }

  v67 = v85[0];
  if (v85[0])
  {

    operator delete(v67);
  }
}

void sub_262353DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 136);
  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262353E7C(float32x2_t *a1, float32x2_t *a2, uint64_t a3, float32x2_t a4)
{
  if (a2 == a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  if (((a2 - a1) >> 4) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = (a2 - a1) >> 4;
  }

  v8 = a1 + 1;
  v9 = 0xFFFFFFFFLL;
  v10 = 3.4028e38;
  do
  {
    if (a3 != v6)
    {
      v11 = sub_2621DC76C(a4, v8[-1], *v8, 0.00001);
      if (v11 >= v10)
      {
        v9 = v9;
      }

      else
      {
        v9 = v6;
      }

      if (v11 < v10)
      {
        v10 = v11;
      }
    }

    ++v6;
    v8 += 2;
  }

  while (v7 != v6);
  return v9;
}

void *sub_262353F30(void *result, float32x2_t *a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = (result[17] + 16 * a3);
  v6 = vsub_f32(*a2, *v5);
  v7 = vmul_f32(v6, v6);
  v8 = vsub_f32(*a2, v5[1]);
  v9 = vmul_f32(v8, v8);
  v10 = vsqrt_f32(vadd_f32(vzip1_s32(v9, v7), vzip2_s32(v9, v7)));
  *(a4 + 8) = v10.f32[1] >= v10.f32[0];
  v11 = *(result[26] + 24 * a3);
  v12 = result[29];
  *(a4 + 4) = *(v12 + 24 * v11[v10.f32[1] >= v10.f32[0]] + 8) - *(v12 + 24 * v11[v10.f32[1] >= v10.f32[0]]) == 8;
  v13 = vaddv_f32(vmul_f32(vsub_f32(*a2, *v5), vsub_f32(*a2, v5[1])));
  *(a4 + 5) = v13 > 0.00001;
  if (v10.f32[0] >= v10.f32[1])
  {
    v10.f32[0] = v10.f32[1];
  }

  *a4 = v10.i32[0];
  v14 = v11[1];
  v15 = *(v12 + 24 * *v11 + 8) - *(v12 + 24 * *v11);
  v16 = *(v12 + 24 * v14 + 8) - *(v12 + 24 * v14);
  v17 = *a2;
  if (v13 <= 0.00001 && v16 != 8 && v15 == 8)
  {
    v20 = vsub_f32(v17, *v5);
    v21 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
    if (v21 < a5)
    {
      v22 = 0;
      v23 = 1;
LABEL_23:
      *(a4 + 4) = v23;
      *a4 = v21;
      *(a4 + 8) = v22;
      return result;
    }
  }

  v23 = v16 == 8;
  if (v13 <= 0.00001 && v15 != 8 && v16 == 8)
  {
    v26 = vsub_f32(v17, v5[1]);
    v21 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
    if (v21 < a5)
    {
      v22 = 1;
      goto LABEL_23;
    }
  }

  return result;
}

BOOL sub_262354078(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 60);
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v6 = v4 - v5;
  v7 = v6 >> 4;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 >> 4;
    }

    v11 = 0.0;
    v12 = 10000.0;
    do
    {
      v13 = *(a1 + 208) + v8;
      memset(v48, 0, sizeof(v48));
      sub_262234B80(v48, *v13, *(v13 + 8), (*(v13 + 8) - *v13) >> 3);
      v14 = v48[0];
      v15 = *(a1 + 256);
      v16 = *(v15 + 4 * *v48[0]);
      v17 = *(v15 + 4 * *(v48[0] + 8));
      v18 = (*(a1 + 136) + v9);
      v19 = *v18;
      v20 = v18[1];
      v21 = vabds_f32(90.0, v16);
      v22 = vabds_f32(90.0, v17);
      if (v21 > v2)
      {
        v21 = v2;
      }

      if (v22 > v2)
      {
        v22 = v2;
      }

      v23 = v21 + v22;
      v47 = v21 + v22;
      sub_2621C8F2C(&v49, &v47);
      v24 = vsub_f32(v19, v20);
      v11 = v11 + sqrtf(vaddv_f32(vmul_f32(v24, v24)));
      if (v23 < v12)
      {
        v12 = v23;
      }

      operator delete(v14);
      v9 += 16;
      v8 += 24;
      --v10;
    }

    while (v10);
    v25 = v49;
    v26 = v11;
  }

  else
  {
    v25 = 0;
    v26 = 0.0;
    v12 = 10000.0;
  }

  v27 = v2 + v2;
  if (v12 < v27)
  {
    v28 = v26 / (v7 + 0.000001);
    if (v3 <= v28)
    {
      v28 = v3;
    }

    v29 = v12 + 4.0;
    if (v27 < (v12 + 4.0))
    {
      v29 = v27;
    }

    v30 = *(a1 + 136);
    if (v50 == v25)
    {
      v35 = -1;
    }

    else
    {
      v31 = 0;
      if ((v50 - v25) <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v50 - v25;
      }

      v33 = v30 + 1;
      v34 = -1.0;
      v35 = -1;
      do
      {
        if (v25[v31] < v29)
        {
          v36 = vsub_f32(v33[-1], *v33);
          v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
          if (v37 > v34)
          {
            v34 = v37;
            v35 = v31;
          }
        }

        ++v31;
        v33 += 2;
      }

      while (v32 != v31);
    }

    v38 = vsub_f32(v30[2 * v35], v30[2 * v35 + 1]);
    if (sqrtf(vaddv_f32(vmul_f32(v38, v38))) <= v28)
    {
      v39 = v12 + 10.0;
      if (v27 < (v12 + 10.0))
      {
        v39 = v27;
      }

      if (v50 == v25)
      {
        v35 = -1;
      }

      else
      {
        v40 = 0;
        if ((v50 - v25) <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v50 - v25;
        }

        v42 = v30 + 1;
        v43 = -1.0;
        v35 = -1;
        do
        {
          if (v25[v40] < v39)
          {
            v44 = vsub_f32(v42[-1], *v42);
            v45 = sqrtf(vaddv_f32(vmul_f32(v44, v44)));
            if (v45 > v43)
            {
              v43 = v45;
              v35 = v40;
            }
          }

          ++v40;
          v42 += 2;
        }

        while (v41 != v40);
      }
    }

    *(a1 + 376) = *v30[2 * v35].f32;
  }

  if (v25)
  {
    operator delete(v25);
  }

  return v12 < v27;
}

void sub_26235433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_262354364(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84) + *(a1 + 76);
  v3 = *(*(a1 + 208) + 24 * a2);
  v4 = *(a1 + 280);
  v5 = *v3;
  v6 = v3[1];
  if (*(v4 + 4 * v5) < v2 || *(v4 + 4 * v6) < v2)
  {
    return 1;
  }

  v9 = *(a1 + 232);
  v11 = v9 + 24 * v5;
  v10 = *v11;
  if (*(v11 + 8) - *v11 != 16)
  {
    return 0;
  }

  v13 = v9 + 24 * v6;
  v12 = *v13;
  if (*(v13 + 8) - *v13 != 16)
  {
    return 0;
  }

  v14 = *(a1 + 28);
  v15 = sub_2621C92AC((*(a1 + 136) + 16 * v10[*v10 == a2]), (*(a1 + 136) + 16 * v12[*v12 == a2]), 0);
  if ((180.0 - v15) < v15)
  {
    v15 = 180.0 - v15;
  }

  return v15 < v14;
}

uint64_t sub_262354454(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  i = v7;
  while (1)
  {
    v7 = i;
    v9 = &a2[-i] >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v51 = *(a2 - 2);
      v52 = *(i + 8);
      if (v51 >= v52)
      {
        if (v51 > v52)
        {
          v53 = *(i + 12);
          v54 = *(a2 - 1);
          goto LABEL_220;
        }

        v54 = *(a2 - 1);
        v53 = *(i + 12);
        if (v54 > v53)
        {
LABEL_220:
          v132 = *i;
          *i = *(a2 - 2);
          *(a2 - 2) = v132;
          *(i + 8) = v51;
          *(a2 - 2) = v52;
          *(i + 12) = v54;
          *(a2 - 1) = v53;
        }
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v55 = (i + 16);
      v57 = i == a2 || v55 == a2;
      if (a4)
      {
        if (!v57)
        {
          v58 = 0;
          v59 = i;
          do
          {
            v60 = v59;
            v59 = v55;
            v61 = *(v60 + 24);
            v62 = *(v60 + 8);
            if (v61 >= v62)
            {
              v63 = *(v60 + 28);
              v64 = *(v60 + 12);
              v65 = v61 <= v62 && v63 <= v64;
              if (!v65)
              {
                v66 = *(v60 + 16);
                *(v60 + 16) = *v60;
                *(v59 + 8) = v62;
                *(v59 + 12) = v64;
                v67 = i;
                if (v60 != i)
                {
                  v68 = v58;
                  v67 = v60;
                  while (1)
                  {
                    v69 = v67 - 16;
                    v70 = i + v68;
                    v71 = *(i + v68 - 8);
                    if (v61 < v71)
                    {
                      break;
                    }

                    v72 = *(v70 - 4);
                    if (v61 <= v71 && v63 <= v72)
                    {
                      goto LABEL_143;
                    }

                    v74 = *(v70 - 16);
                    v75 = i + v68;
                    *v75 = v74;
                    *(v75 + 8) = v71;
                    *(v75 + 12) = v72;
                    v67 = v69;
                    v68 -= 16;
                    if (!v68)
                    {
                      v67 = i;
                      goto LABEL_143;
                    }
                  }

                  v67 = i + v68;
                }

LABEL_143:
                *v67 = v66;
                *(v67 + 8) = v61;
                *(v67 + 12) = v63;
              }
            }

            v55 = (v59 + 16);
            v58 += 16;
          }

          while ((v59 + 16) != a2);
        }
      }

      else if (!v57)
      {
        do
        {
          v117 = v7;
          v7 = v55;
          v118 = *(v117 + 24);
          v119 = *(v117 + 8);
          if (v118 >= v119)
          {
            v120 = *(v117 + 28);
            v121 = *(v117 + 12);
            if (v118 > v119 || v120 > v121)
            {
              v123 = *v55;
              *v7 = *v117;
              *(v7 + 8) = v119;
              *(v7 + 12) = v121;
              v124 = *(v117 - 8);
              if (v118 >= v124)
              {
                while (1)
                {
                  v126 = *(v117 - 4);
                  if (v118 <= v124 && v120 <= v126)
                  {
                    break;
                  }

                  v125 = v117 - 16;
                  *v117 = *(v117 - 16);
                  *(v117 + 8) = *(v117 - 8);
                  *(v117 + 12) = v126;
                  v124 = *(v117 - 24);
                  v117 -= 16;
                  if (v118 < v124)
                  {
                    goto LABEL_212;
                  }
                }
              }

              v125 = v117;
LABEL_212:
              *v125 = v123;
              *(v125 + 8) = v118;
              *(v125 + 12) = v120;
            }
          }

          v55 = (v7 + 16);
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v76 = (v9 - 2) >> 1;
      v77 = v76;
      while (2)
      {
        v78 = v77;
        if (v76 >= v77)
        {
          v79 = (2 * v77) | 1;
          v80 = i + 16 * v79;
          if (2 * v78 + 2 < v9)
          {
            v81 = *(v80 + 8);
            v82 = *(v80 + 24);
            if (v81 >= v82 && (v81 > v82 || *(v80 + 12) > *(v80 + 28)))
            {
              v80 += 16;
              v79 = 2 * v78 + 2;
            }
          }

          v83 = i + 16 * v78;
          v84 = *(v80 + 8);
          v85 = *(v83 + 8);
          if (v84 < v85)
          {
            v86 = *(v83 + 12);
            v87 = *(v80 + 12);
            goto LABEL_156;
          }

          if (v84 <= v85)
          {
            v87 = *(v80 + 12);
            v86 = *(v83 + 12);
            if (v87 <= v86)
            {
LABEL_156:
              v88 = *v83;
              *v83 = *v80;
              *(v83 + 8) = v84;
              *(v83 + 12) = v87;
              if (v76 >= v79)
              {
                while (1)
                {
                  v90 = 2 * v79;
                  v79 = (2 * v79) | 1;
                  v89 = i + 16 * v79;
                  v91 = v90 + 2;
                  if (v91 < v9)
                  {
                    v92 = *(v89 + 8);
                    result = *(v89 + 24);
                    if (v92 >= result && (v92 > result || *(v89 + 12) > *(v89 + 28)))
                    {
                      v89 += 16;
                      v79 = v91;
                    }
                  }

                  v93 = *(v89 + 8);
                  if (v93 >= v85)
                  {
                    if (v93 > v85)
                    {
                      break;
                    }

                    v94 = *(v89 + 12);
                    if (v94 > v86)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v94 = *(v89 + 12);
                  }

                  *v80 = *v89;
                  *(v80 + 8) = v93;
                  *(v80 + 12) = v94;
                  v80 = v89;
                  if (v76 < v79)
                  {
                    goto LABEL_168;
                  }
                }
              }

              v89 = v80;
LABEL_168:
              *v89 = v88;
              *(v89 + 8) = v85;
              *(v89 + 12) = v86;
            }
          }
        }

        v77 = v78 - 1;
        if (v78)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v102 = 0;
        v103 = *i;
        v104 = *(i + 8);
        v105 = *(i + 12);
        v97 = i;
        do
        {
          v106 = v97;
          v107 = v97 + 16 * v102;
          v97 = v107 + 16;
          v108 = 2 * v102;
          v102 = (2 * v102) | 1;
          v109 = v108 + 2;
          if (v109 < v9)
          {
            v110 = *(v107 + 24);
            result = *(v107 + 40);
            if (v110 >= result && (v110 > result || *(v107 + 28) > *(v107 + 44)))
            {
              v97 = v107 + 32;
              v102 = v109;
            }
          }

          *v106 = *v97;
          *(v106 + 8) = *(v97 + 8);
          *(v106 + 12) = *(v97 + 12);
        }

        while (v102 <= ((v9 - 2) >> 1));
        if (v97 != a2 - 16)
        {
          *v97 = *(a2 - 2);
          *(v97 + 8) = *(a2 - 2);
          *(v97 + 12) = *(a2 - 1);
          *(a2 - 2) = v103;
          *(a2 - 2) = v104;
          *(a2 - 1) = v105;
          v111 = (v97 - i + 16) >> 4;
          v112 = v111 - 2;
          if (v111 >= 2)
          {
            v96 = v112 >> 1;
            v101 = i + 16 * (v112 >> 1);
            v113 = *(v101 + 8);
            v114 = *(v97 + 8);
            if (v113 >= v114)
            {
              if (v113 > v114)
              {
                v105 = *(v97 + 12);
                v115 = *(v101 + 12);
                goto LABEL_194;
              }

              v115 = *(v101 + 12);
              v105 = *(v97 + 12);
              if (v115 > v105)
              {
LABEL_194:
                v116 = *v97;
                *v97 = *v101;
                *(v97 + 8) = v113;
                *(v97 + 12) = v115;
                if (v112 >= 2)
                {
                  while (1)
                  {
                    v95 = v96 - 1;
                    v96 = (v96 - 1) >> 1;
                    v97 = i + 16 * v96;
                    v98 = *(v97 + 8);
                    if (v98 < v114)
                    {
                      break;
                    }

                    v99 = *(v97 + 12);
                    if (v98 <= v114 && v99 <= v105)
                    {
                      break;
                    }

                    *v101 = *v97;
                    *(v101 + 8) = v98;
                    *(v101 + 12) = v99;
                    v101 = i + 16 * v96;
                    if (v95 <= 1)
                    {
                      goto LABEL_196;
                    }
                  }
                }

                v97 = v101;
LABEL_196:
                *v97 = v116;
                *(v97 + 8) = v114;
LABEL_197:
                *(v97 + 12) = v105;
              }
            }
          }

          a2 -= 16;
          v65 = v9-- <= 2;
          if (v65)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v97 = v103;
      *(v97 + 8) = v104;
      goto LABEL_197;
    }

    v10 = v9 >> 1;
    v11 = i + 16 * (v9 >> 1);
    if (v9 < 0x81)
    {
      result = sub_262354F9C((v7 + 16 * (v9 >> 1)), v7, a2 - 2);
    }

    else
    {
      sub_262354F9C(v7, (v7 + 16 * (v9 >> 1)), a2 - 2);
      sub_262354F9C((v7 + 16), (v11 - 16), a2 - 4);
      sub_262354F9C((v7 + 32), (v7 + 16 + 16 * v10), a2 - 6);
      result = sub_262354F9C((v11 - 16), v11, (v7 + 16 + 16 * v10));
      v12 = *v7;
      *v7 = *v11;
      *v11 = v12;
      LODWORD(v12) = *(v7 + 8);
      *(v7 + 8) = *(v11 + 8);
      *(v11 + 8) = v12;
      v13 = *(v7 + 12);
      *(v7 + 12) = *(v11 + 12);
      *(v11 + 12) = v13;
    }

    --a3;
    if (a4)
    {
      v14 = *(v7 + 8);
      goto LABEL_20;
    }

    v15 = *(v7 - 8);
    v14 = *(v7 + 8);
    if (v15 < v14)
    {
      v16 = *(v7 + 12);
      goto LABEL_65;
    }

    if (v15 <= v14 && (v16 = *(v7 + 12), *(v7 - 4) <= v16))
    {
LABEL_65:
      v34 = *(a2 - 2);
      if (v14 < v34 || v14 <= v34 && v16 <= *(a2 - 1))
      {
        for (i = v7 + 16; i < a2; i += 16)
        {
          v35 = *(i + 8);
          if (v14 >= v35 && (v14 > v35 || v16 > *(i + 12)))
          {
            break;
          }
        }
      }

      else
      {
        for (i = v7 + 16; ; i += 16)
        {
          v36 = *(i + 8);
          if (v14 >= v36 && (v14 > v36 || v16 > *(i + 12)))
          {
            break;
          }
        }
      }

      v37 = *v7;
      if (i < a2)
      {
        v38 = a2 - 16;
      }

      else
      {
        v38 = a2;
      }

      if (i < a2 && v14 >= v34)
      {
        v39 = a2 - 24;
        do
        {
          if (v14 <= v34 && v16 <= *(v39 + 5))
          {
            break;
          }

          v40 = *v39;
          v39 -= 16;
          v34 = v40;
        }

        while (v14 >= v40);
        v38 = v39 + 8;
      }

      while (i < v38)
      {
        v41 = *i;
        *i = *v38;
        *v38 = v41;
        LODWORD(v41) = *(i + 8);
        *(i + 8) = *(v38 + 2);
        *(v38 + 2) = v41;
        v42 = *(i + 12);
        *(i + 12) = *(v38 + 3);
        i += 16;
        *(v38 + 3) = v42;
        while (1)
        {
          v43 = *(i + 8);
          if (v14 >= v43 && (v14 > v43 || v16 > *(i + 12)))
          {
            break;
          }

          i += 16;
        }

        v44 = *(v38 - 2);
        if (v14 >= v44)
        {
          v45 = v38 - 24;
          do
          {
            if (v14 <= v44 && v16 <= *(v45 + 5))
            {
              break;
            }

            v46 = *v45;
            v45 -= 16;
            v44 = v46;
          }

          while (v14 >= v46);
          v38 = v45 + 8;
        }

        else
        {
          v38 -= 16;
        }
      }

      if (i - 16 != v7)
      {
        *v7 = *(i - 16);
        *(v7 + 8) = *(i - 8);
        *(v7 + 12) = *(i - 4);
      }

      a4 = 0;
      *(i - 16) = v37;
      *(i - 8) = v14;
      *(i - 4) = v16;
    }

    else
    {
LABEL_20:
      v17 = *(v7 + 12);
      v18 = *(v7 + 24);
      if (v18 >= v14)
      {
        v23 = v7;
        while (1)
        {
          v19 = v23 + 16;
          if (v18 <= v14 && *(v23 + 28) <= v17)
          {
            break;
          }

          v18 = *(v23 + 40);
          v23 += 16;
          if (v18 < v14)
          {
            v19 += 16;
            goto LABEL_59;
          }
        }

        if (v23 == v7)
        {
          goto LABEL_22;
        }

LABEL_59:
        for (j = a2 - 16; ; j -= 16)
        {
          v33 = *(j + 2);
          if (v33 >= v14 && (v33 > v14 || *(j + 3) > v17))
          {
            break;
          }
        }
      }

      else
      {
        v19 = v7 + 16;
LABEL_22:
        if (v19 < a2)
        {
          for (j = a2 - 16; ; j -= 16)
          {
            v21 = *(j + 2);
            if (v21 >= v14)
            {
              if (v21 > v14)
              {
                goto LABEL_39;
              }

              if (*(j + 3) > v17 || v19 >= j)
              {
                goto LABEL_39;
              }
            }

            else if (v19 >= j)
            {
              goto LABEL_39;
            }
          }
        }

        j = a2;
      }

LABEL_39:
      v24 = *v7;
      i = v19;
      if (v19 < j)
      {
        i = v19;
        v25 = j;
        do
        {
          v26 = *i;
          *i = *v25;
          *v25 = v26;
          LODWORD(v26) = *(i + 8);
          *(i + 8) = *(v25 + 2);
          *(v25 + 2) = v26;
          v27 = *(i + 12);
          *(i + 12) = *(v25 + 3);
          *(v25 + 3) = v27;
          v28 = *(i + 24);
          if (SLODWORD(v28) >= v14)
          {
            v29 = (i + 40);
            do
            {
              if (SLODWORD(v28) <= v14 && *(v29 - 3) <= v17)
              {
                break;
              }

              v30 = *v29;
              v29 += 4;
              v28 = v30;
            }

            while (SLODWORD(v30) >= v14);
            i = (v29 - 6);
          }

          else
          {
            i += 16;
          }

          do
          {
            do
            {
              v25 -= 16;
              v31 = *(v25 + 2);
            }

            while (v31 < v14);
          }

          while (v31 <= v14 && *(v25 + 3) <= v17);
        }

        while (i < v25);
      }

      if (i - 16 != v7)
      {
        *v7 = *(i - 16);
        *(v7 + 8) = *(i - 8);
        *(v7 + 12) = *(i - 4);
      }

      *(i - 16) = v24;
      *(i - 8) = v14;
      *(i - 4) = v17;
      if (v19 < j)
      {
        goto LABEL_57;
      }

      v32 = sub_262355384(v7, i - 16);
      result = sub_262355384(i, a2);
      if (result)
      {
        a2 = (i - 16);
        if (v32)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v32)
      {
LABEL_57:
        result = sub_262354454(v7, (i - 16), a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v9 == 3)
  {

    return sub_262354F9C(i, (i + 16), a2 - 2);
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {

      return sub_262355110(i, i + 16, i + 32, (i + 48), a2 - 2);
    }

    goto LABEL_10;
  }

  result = sub_262354F9C(i, (i + 16), (i + 32));
  v47 = *(a2 - 2);
  v48 = *(i + 40);
  if (v47 < v48)
  {
    return result;
  }

  if (v47 <= v48)
  {
    v50 = *(a2 - 1);
    v49 = *(i + 44);
    if (v50 <= v49)
    {
      return result;
    }
  }

  else
  {
    v49 = *(i + 44);
    v50 = *(a2 - 1);
  }

  v127 = *(i + 32);
  *(i + 32) = *(a2 - 2);
  *(a2 - 2) = v127;
  *(i + 40) = v47;
  *(a2 - 2) = v48;
  *(i + 44) = v50;
  *(a2 - 1) = v49;
  v128 = *(i + 40);
  v129 = *(i + 24);
  if (v128 >= v129)
  {
    if (v128 <= v129)
    {
      v131 = *(i + 44);
      v130 = *(i + 28);
      if (v131 <= v130)
      {
        return result;
      }
    }

    else
    {
      v130 = *(i + 28);
      v131 = *(i + 44);
    }

    v133 = *(i + 16);
    v134 = *(i + 32);
    *(i + 16) = v134;
    *(i + 32) = v133;
    *(i + 24) = v128;
    *(i + 40) = v129;
    *(i + 28) = v131;
    *(i + 44) = v130;
    v135 = *(i + 8);
    if (v128 >= v135)
    {
      v136 = *(i + 12);
      if (v128 > v135 || v131 > v136)
      {
        v137 = *i;
        *i = v134;
        *(i + 16) = v137;
        *(i + 8) = v128;
        *(i + 24) = v135;
        *(i + 12) = v131;
        *(i + 28) = v136;
      }
    }
  }

  return result;
}

uint64_t *sub_262354F9C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 2);
  v4 = *(result + 2);
  if (v3 < v4 || v3 <= v4 && *(a2 + 3) <= *(result + 3))
  {
    v5 = *(a3 + 2);
    if (v5 < v3)
    {
      return result;
    }

    if (v5 <= v3)
    {
      v7 = *(a3 + 3);
      v6 = *(a2 + 3);
      if (v7 <= v6)
      {
        return result;
      }
    }

    else
    {
      v6 = *(a2 + 3);
      v7 = *(a3 + 3);
    }

    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 2) = v5;
    *(a3 + 2) = v3;
    *(a2 + 3) = v7;
    *(a3 + 3) = v6;
    v18 = *(a2 + 2);
    v19 = *(result + 2);
    if (v18 >= v19)
    {
      if (v18 <= v19)
      {
        v21 = *(a2 + 3);
        v20 = *(result + 3);
        if (v21 <= v20)
        {
          return result;
        }
      }

      else
      {
        v20 = *(result + 3);
        v21 = *(a2 + 3);
      }

      v22 = *result;
      *result = *a2;
      *a2 = v22;
      *(result + 2) = v18;
      *(a2 + 2) = v19;
      *(result + 3) = v21;
      *(a2 + 3) = v20;
    }
  }

  else
  {
    v8 = *(a3 + 2);
    if (v8 >= v3)
    {
      v14 = *(a3 + 3);
      if (v8 > v3 || (v9 = *(a2 + 3), v14 > v9))
      {
        v15 = *result;
        *result = *a3;
        *a3 = v15;
        *(result + 2) = v8;
        *(a3 + 2) = v4;
        v16 = *(result + 3);
        *(result + 3) = v14;
        *(a3 + 3) = v16;
        return result;
      }
    }

    else
    {
      v9 = *(a2 + 3);
    }

    v10 = *result;
    *result = *a2;
    *a2 = v10;
    *(result + 2) = v3;
    *(a2 + 2) = v4;
    v11 = *(result + 3);
    *(result + 3) = v9;
    *(a2 + 3) = v11;
    v12 = *(a3 + 2);
    if (v12 >= v4)
    {
      v13 = *(a3 + 3);
      if (v12 > v4 || v13 > v11)
      {
        *a2 = *a3;
        *a3 = v10;
        *(a2 + 2) = v12;
        *(a3 + 2) = v4;
        *(a2 + 3) = v13;
        *(a3 + 3) = v11;
      }
    }
  }

  return result;
}

uint64_t *sub_262355110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_262354F9C(a1, a2, a3);
  v11 = *(a4 + 2);
  v12 = *(a3 + 8);
  if (v11 >= v12)
  {
    if (v11 <= v12)
    {
      v14 = *(a4 + 3);
      v13 = *(a3 + 12);
      if (v14 <= v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = *(a3 + 12);
      v14 = *(a4 + 3);
    }

    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    *(a3 + 8) = v11;
    *(a4 + 2) = v12;
    *(a3 + 12) = v14;
    *(a4 + 3) = v13;
    v16 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v16 >= v17)
    {
      if (v16 <= v17)
      {
        v19 = *(a3 + 12);
        v18 = *(a2 + 12);
        if (v19 <= v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v18 = *(a2 + 12);
        v19 = *(a3 + 12);
      }

      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      *(a2 + 8) = v16;
      *(a3 + 8) = v17;
      *(a2 + 12) = v19;
      *(a3 + 12) = v18;
      v21 = *(a2 + 8);
      v22 = *(a1 + 8);
      if (v21 >= v22)
      {
        if (v21 <= v22)
        {
          v24 = *(a2 + 12);
          v23 = *(a1 + 12);
          if (v24 <= v23)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v23 = *(a1 + 12);
          v24 = *(a2 + 12);
        }

        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        *(a1 + 8) = v21;
        *(a2 + 8) = v22;
        *(a1 + 12) = v24;
        *(a2 + 12) = v23;
      }
    }
  }

LABEL_14:
  v26 = *(a5 + 2);
  v27 = *(a4 + 2);
  if (v26 < v27)
  {
    return result;
  }

  if (v26 <= v27)
  {
    v29 = *(a5 + 3);
    v28 = *(a4 + 3);
    if (v29 <= v28)
    {
      return result;
    }
  }

  else
  {
    v28 = *(a4 + 3);
    v29 = *(a5 + 3);
  }

  v30 = *a4;
  *a4 = *a5;
  *a5 = v30;
  *(a4 + 2) = v26;
  *(a5 + 2) = v27;
  *(a4 + 3) = v29;
  *(a5 + 3) = v28;
  v31 = *(a4 + 2);
  v32 = *(a3 + 8);
  if (v31 >= v32)
  {
    if (v31 <= v32)
    {
      v34 = *(a4 + 3);
      v33 = *(a3 + 12);
      if (v34 <= v33)
      {
        return result;
      }
    }

    else
    {
      v33 = *(a3 + 12);
      v34 = *(a4 + 3);
    }

    v35 = *a3;
    *a3 = *a4;
    *a4 = v35;
    *(a3 + 8) = v31;
    *(a4 + 2) = v32;
    *(a3 + 12) = v34;
    *(a4 + 3) = v33;
    v36 = *(a3 + 8);
    v37 = *(a2 + 8);
    if (v36 >= v37)
    {
      if (v36 <= v37)
      {
        v39 = *(a3 + 12);
        v38 = *(a2 + 12);
        if (v39 <= v38)
        {
          return result;
        }
      }

      else
      {
        v38 = *(a2 + 12);
        v39 = *(a3 + 12);
      }

      v40 = *a2;
      *a2 = *a3;
      *a3 = v40;
      *(a2 + 8) = v36;
      *(a3 + 8) = v37;
      *(a2 + 12) = v39;
      *(a3 + 12) = v38;
      v41 = *(a2 + 8);
      v42 = *(a1 + 8);
      if (v41 >= v42)
      {
        if (v41 <= v42)
        {
          v44 = *(a2 + 12);
          v43 = *(a1 + 12);
          if (v44 <= v43)
          {
            return result;
          }
        }

        else
        {
          v43 = *(a1 + 12);
          v44 = *(a2 + 12);
        }

        v45 = *a1;
        *a1 = *a2;
        *a2 = v45;
        *(a1 + 8) = v41;
        *(a2 + 8) = v42;
        *(a1 + 12) = v44;
        *(a2 + 12) = v43;
      }
    }
  }

  return result;
}

BOOL sub_262355384(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_262354F9C(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        sub_262354F9C(a1, (a1 + 16), (a1 + 32));
        v25 = *(a2 - 8);
        v26 = *(a1 + 40);
        if (v25 >= v26)
        {
          if (v25 <= v26)
          {
            v28 = *(a2 - 4);
            v27 = *(a1 + 44);
            if (v28 <= v27)
            {
              return 1;
            }
          }

          else
          {
            v27 = *(a1 + 44);
            v28 = *(a2 - 4);
          }

          v30 = *(a1 + 32);
          *(a1 + 32) = *(a2 - 16);
          *(a2 - 16) = v30;
          *(a1 + 40) = v25;
          *(a2 - 8) = v26;
          *(a1 + 44) = v28;
          *(a2 - 4) = v27;
          v31 = *(a1 + 40);
          v32 = *(a1 + 24);
          if (v31 >= v32)
          {
            if (v31 <= v32)
            {
              v34 = *(a1 + 44);
              v33 = *(a1 + 28);
              if (v34 <= v33)
              {
                return 1;
              }
            }

            else
            {
              v33 = *(a1 + 28);
              v34 = *(a1 + 44);
            }

            v36 = *(a1 + 16);
            v37 = *(a1 + 32);
            *(a1 + 16) = v37;
            *(a1 + 32) = v36;
            *(a1 + 24) = v31;
            *(a1 + 40) = v32;
            *(a1 + 28) = v34;
            *(a1 + 44) = v33;
            v38 = *(a1 + 8);
            if (v31 >= v38)
            {
              v39 = *(a1 + 12);
              if (v31 > v38 || v34 > v39)
              {
                v40 = *a1;
                *a1 = v37;
                *(a1 + 16) = v40;
                *(a1 + 8) = v31;
                *(a1 + 24) = v38;
                *(a1 + 12) = v34;
                *(a1 + 28) = v39;
              }
            }

            return 1;
          }
        }

        return 1;
      case 5:
        sub_262355110(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 8);
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        if (v5 > v6)
        {
          v7 = *(a1 + 12);
          v8 = *(a2 - 4);
LABEL_35:
          v29 = *a1;
          *a1 = *(a2 - 16);
          *(a2 - 16) = v29;
          *(a1 + 8) = v5;
          *(a2 - 8) = v6;
          *(a1 + 12) = v8;
          *(a2 - 4) = v7;
          return 1;
        }

        v8 = *(a2 - 4);
        v7 = *(a1 + 12);
        if (v8 > v7)
        {
          goto LABEL_35;
        }
      }

      return 1;
    }
  }

  v9 = a1 + 32;
  sub_262354F9C(a1, (a1 + 16), (a1 + 32));
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(v10 + 8);
    v14 = *(v9 + 8);
    if (v13 >= v14)
    {
      v15 = *(v10 + 12);
      v16 = *(v9 + 12);
      if (v13 > v14 || v15 > v16)
      {
        v18 = *v10;
        *v10 = *v9;
        *(v10 + 8) = v14;
        *(v10 + 12) = v16;
        v19 = v11;
        while (1)
        {
          v20 = a1 + v19;
          v21 = *(a1 + v19 + 24);
          if (v13 < v21)
          {
            break;
          }

          v22 = *(v20 + 28);
          if (v13 <= v21 && v15 <= v22)
          {
            goto LABEL_28;
          }

          *(v20 + 32) = *(v20 + 16);
          v24 = a1 + v19;
          *(v24 + 40) = v21;
          *(v24 + 44) = v22;
          v19 -= 16;
          v9 -= 16;
          if (v19 == -32)
          {
            v9 = a1;
            goto LABEL_28;
          }
        }

        v9 = v20 + 32;
LABEL_28:
        *v9 = v18;
        *(v9 + 8) = v13;
        *(v9 + 12) = v15;
        if (++v12 == 8)
        {
          return v10 + 16 == a2;
        }
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 16;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

int8x8_t sub_26235564C(__int32 a1, int32x2_t a2, int8x8_t a3, float a4, int32x2_t a5)
{
  v5 = a2;
  a2.i32[0] = 0;
  a5.i32[0] = a1;
  v6 = vbsl_s8(vdup_lane_s32(vceq_s32(a5, a2), 0), v5, vbsl_s8(vdup_lane_s32(vceq_s32(a5, 0x3F00000000000001), 0), a3, vmul_f32(vadd_f32(v5, a3), 0x3F0000003F000000)));
  v22 = vsub_f32(v5, v6);
  v23 = vsub_f32(a3, v6);
  v7 = __sincosf_stret(a4);
  v8.i32[1] = v22.i32[1];
  v8.f32[0] = -v22.f32[1];
  v9 = vmul_f32(v7, v8);
  v10 = vrev64_s32(v7);
  v11.i32[1] = v23.i32[1];
  v11.f32[0] = -v23.f32[1];
  v12 = vmla_n_f32(vmul_f32(v7, v11), v10, v23.f32[0]);
  v13 = vadd_f32(v6, vmla_n_f32(v9, v10, v22.f32[0]));
  v14 = vadd_f32(v6, v12);
  v15 = vsub_f32(v5, v13);
  v16 = vmul_f32(v15, v15);
  v17 = vsub_f32(v5, v14);
  v18 = vmul_f32(v17, v17);
  v19 = vsqrt_f32(vadd_f32(vzip1_s32(v16, v18), vzip2_s32(v16, v18)));
  if (vcgt_f32(vdup_lane_s32(v19, 1), v19).u8[0])
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  return vbsl_s8(vdup_n_s32(v20), v13, v14);
}

void sub_262355C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = *v46;
  if (*v46)
  {
    *(v46 + 8) = v49;
    operator delete(v49);
  }

  v50 = *(v47 - 192);
  if (v50)
  {
    operator delete(v50);
  }

  sub_26224C4F4(&a22);
  sub_262216FC4(&a46);
  _Unwind_Resume(a1);
}

uint64_t *sub_262355D5C(uint64_t *a1, unint64_t a2, uint64_t *a3)
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

void sub_262355E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_262355E30(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a3 + 1) * *a3;
  if (v3)
  {
    v4 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
    v5 = v4;
    if (v4)
    {
      bzero(v4, 8 * v3);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a3[1];
  if (v6)
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        vDSP_vsubD(v7, 1, v6, 1, v5, 1, *(a3 + 1) * *a3);
      }
    }
  }

  if (v3)
  {
    v8 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
    v9 = v8;
    if (v8)
    {
      bzero(v8, 8 * v3);
      if (v3 >= 1 && v5 != 0)
      {
        v11 = 0;
        do
        {
          if (v5[v11] < 0.0)
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }

          v9[v11++] = v12;
        }

        while (v3 != v11);
      }
    }
  }

  else
  {
    v3 = 0;
    v9 = 0;
  }

  *&__C = 0;
  vDSP_sveD(v9, 1, &__C, v3);
  v13 = *&__C;
  v14 = *(a3 + 1) * *a3;
  if (v14 == *&__C)
  {
    if (v13)
    {
      v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      v16 = v15;
      if (v15)
      {
        bzero(v15, 8 * v14);
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = a3[1];
    if (v18)
    {
      v19 = *(a2 + 32);
      if (v19)
      {
        if (v16)
        {
          vDSP_vsubD(v19, 1, v18, 1, v16, 1, *(a3 + 1) * *a3);
        }
      }
    }

    if (v13)
    {
      v20 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      v21 = v20;
      if (v20)
      {
        bzero(v20, 8 * v14);
        if (v13 >= 1 && v16 != 0)
        {
          for (i = 0; i != v13; ++i)
          {
            if (v16[i] > 0.0)
            {
              v24 = 0.0;
            }

            else
            {
              v24 = 1.0;
            }

            v21[i] = v24;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    *&__C = 0;
    vDSP_sveD(v21, 1, &__C, v14);
    v17 = *(a3 + 1) * *a3 == *&__C;
    if (v21)
    {
      free(v21);
    }

    if (v16)
    {
      free(v16);
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
    free(v9);
  }

  if (v5)
  {
    free(v5);
  }

  if (!v17)
  {
    return 0;
  }

  v25 = *a3;
  v26 = a1;
  *(a1 + 136) = v25;
  *(a1 + 128) = 0x3FF0000000000000;
  if (!v25)
  {
    v28 = 0;
    v510 = (a1 + 96);
LABEL_65:
    v34 = *(v26 + 104);
    if (v34)
    {
      free(v34);
      *(v26 + 104) = 0;
    }

    *(v26 + 96) = v25;
    v30 = (v26 + 100);
    goto LABEL_68;
  }

  v27 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  v28 = v27;
  if (v27)
  {
    bzero(v27, 8 * v25);
  }

  v26 = a1;
  v510 = (a1 + 96);
  if (v25 < 1)
  {
    goto LABEL_65;
  }

  v30 = (a1 + 100);
  v29 = *(a1 + 100);
  v31 = *(a1 + 96);
  v32 = *(a1 + 104);
  if (v29 * v31 == v25)
  {
    if (v32 && v28)
    {
      memcpy(v32, v28, 8 * v31 * v29);
    }

    *v510 = v25;
LABEL_68:
    *v30 = 1;
    goto LABEL_69;
  }

  if (v32)
  {
    free(v32);
    *(a1 + 104) = 0;
  }

  *v510 = v25;
  *v30 = 1;
  v506 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  *(a1 + 104) = v506;
  if (!v506)
  {
LABEL_69:
    if (!v28)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v28)
  {
    memcpy(v506, v28, 8 * *v510 * *v30);
LABEL_70:
    free(v28);
  }

LABEL_71:
  v35 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v36 = v35;
  if (v35)
  {
    *v35 = 0;
  }

  v37 = *(a1 + 112);
  v38 = *(a1 + 116);
  v519 = (a1 + 112);
  v39 = *(a1 + 120);
  if (v38 * v37 == 1)
  {
    if (v39 && v36)
    {
      memcpy(v39, v36, 8 * v37 * v38);
    }

    *v519 = 0x100000001;
    goto LABEL_83;
  }

  if (v39)
  {
    free(v39);
    *(a1 + 120) = 0;
  }

  *v519 = 0x100000001;
  v40 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(a1 + 120) = v40;
  if (!v40)
  {
LABEL_83:
    if (v36)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v36)
  {
    memcpy(v40, v36, 8 * *(a1 + 112) * *(a1 + 116));
LABEL_84:
    free(v36);
  }

LABEL_85:
  v41 = *(a1 + 136);
  v573 = 0;
  v571 = v41;
  v572 = 0;
  v570 = 0;
  v568 = v41;
  v569 = 0;
  sub_26235BA28(&v566, a3);
  sub_26235BA28(&v564, a3);
  v512 = (*(*a2 + 24))(a2, &v566);
  (*(*a2 + 32))(a2, &v566, &v564);
  *(a1 + 48) = 0u;
  v509 = a1 + 8;
  *(a1 + 76) = 0u;
  v513 = (a1 + 48);
  *(a1 + 64) = 0u;
  while ((*(*a2 + 16))(a2, v513, &v566))
  {
    v42 = v566;
    v43 = HIDWORD(v566);
    v44 = HIDWORD(v566) * v566;
    if (HIDWORD(v566) * v566)
    {
      v45 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
      v46 = v45;
      if (v45)
      {
        bzero(v45, 8 * v44);
      }
    }

    else
    {
      v46 = 0;
    }

    if (__A && __B && v46)
    {
      vDSP_vsubD(__B, 1, __A, 1, v46, 1, SHIDWORD(v566) * v566);
    }

    if (v44)
    {
      v47 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
      v48 = v47;
      if (v47)
      {
        bzero(v47, 8 * v44);
      }
    }

    else
    {
      v48 = 0;
    }

    if (v46)
    {
      v49 = *(a2 + 16);
      if (v49)
      {
        if (v48 && v42 >= 1)
        {
          v50 = 0;
          v51 = 8 * v43;
          v52 = 8 * *(a2 + 12);
          v53 = v46;
          v54 = v48;
          do
          {
            v55 = v53;
            v56 = v49;
            v57 = v54;
            v58 = v43;
            if (v43 >= 1)
            {
              do
              {
                v59 = *v55++;
                v60 = v59;
                v61 = *v56++;
                v62 = v61;
                if (v60 < v61)
                {
                  v60 = v62;
                }

                *v57++ = v60;
                --v58;
              }

              while (v58);
            }

            ++v50;
            v54 = (v54 + v51);
            v49 = (v49 + v52);
            v53 = (v53 + v51);
          }

          while (v50 != v42);
        }
      }
    }

    if (!v44)
    {
      v64 = 0;
      if (!v48)
      {
        goto LABEL_124;
      }

LABEL_115:
      v65 = *(a2 + 32);
      if (v65 && v64 && v42 >= 1)
      {
        v66 = 0;
        v67 = 8 * v43;
        v68 = 8 * *(a2 + 28);
        v69 = v48;
        v70 = v64;
        do
        {
          v71 = v69;
          v72 = v65;
          v73 = v70;
          v74 = v43;
          if (v43 >= 1)
          {
            do
            {
              v75 = *v72++;
              v76 = v75;
              v77 = *v71++;
              v78 = v77;
              if (v76 >= v77)
              {
                v76 = v78;
              }

              *v73++ = v76;
              --v74;
            }

            while (v74);
          }

          ++v66;
          v70 = (v70 + v67);
          v65 = (v65 + v68);
          v69 = (v69 + v67);
        }

        while (v66 != v42);
      }

      goto LABEL_124;
    }

    v63 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
    v64 = v63;
    if (v63)
    {
      bzero(v63, 8 * v44);
    }

    if (v48)
    {
      goto LABEL_115;
    }

LABEL_124:
    if (v44)
    {
      v79 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
      v80 = v79;
      if (v79)
      {
        bzero(v79, 8 * v44);
      }

      if (!v64)
      {
LABEL_134:
        if (!v48)
        {
          goto LABEL_136;
        }

LABEL_135:
        free(v48);
        goto LABEL_136;
      }
    }

    else
    {
      v80 = 0;
      if (!v64)
      {
        goto LABEL_134;
      }
    }

    if (__A && v80)
    {
      vDSP_vsubD(__A, 1, v64, 1, v80, 1, v44);
    }

    free(v64);
    if (v48)
    {
      goto LABEL_135;
    }

LABEL_136:
    if (v46)
    {
      free(v46);
    }

    if (v80)
    {
      vDSP_vabsD(v80, 1, v80, 1, v44);
    }

    *&__C = 0;
    vDSP_sveD(v80, 1, &__C, v44);
    v81 = *&__C;
    *(a1 + 56) = __C;
    v82 = *(a1 + 16);
    if (v80)
    {
      free(v80);
    }

    if (v81 < v82 || *(a1 + 88))
    {
      break;
    }

    sub_26235BA28(v562, &v566);
    sub_26235BA28(v560, &v564);
    v83 = *(a1 + 136);
    if (v83 && (v84 = malloc_type_malloc(8 * v83, 0x100004000313F17uLL)) != 0)
    {
      __dst = v84;
      bzero(v84, 8 * v83);
    }

    else
    {
      __dst = 0;
    }

    v85 = *(a1 + 100);
    if (v85 && (v86 = malloc_type_malloc(8 * v85, 0x100004000313F17uLL)) != 0)
    {
      v87 = v86;
      bzero(v86, 8 * v85);
    }

    else
    {
      v87 = 0;
    }

    v88 = v566;
    __C = 0uLL;
    v576 = 0;
    sub_26235BEFC(&v585, &v564, -1.0);
    if (v88 >= 1)
    {
      for (j = 0; j != v88; j = j + 1)
      {
        v90 = __B[j];
        if (v90 == 0.0)
        {
          __p[0] = j;
          __p[1] = 0x7FEFFFFFFFFFFFFFLL;
          sub_26235CC7C(&__C, __p);
        }

        else
        {
          if (v90 >= 0.0)
          {
            v91 = 16;
          }

          else
          {
            v91 = 32;
          }

          v92 = (__A[j] - *(*(a2 + v91) + 8 * j)) / v90;
          __p[0] = j;
          *&__p[1] = v92;
          sub_26235CC7C(&__C, __p);
          if (v92 == 0.0)
          {
            v586[j] = 0.0;
          }
        }
      }
    }

    sub_2622101A8(__p, (*(&__C + 1) - __C) >> 4);
    v93 = __p[1];
    v94 = __p[0];
    v95 = (__p[1] - __p[0]) >> 2;
    if (__p[1] != __p[0])
    {
      v96 = __C;
      v97 = __p[0];
      v98 = (__p[1] - __p[0]) >> 2;
      do
      {
        v99 = *v96;
        v96 += 4;
        *v97++ = v99;
        --v98;
      }

      while (v98);
    }

    __M = &__C;
    v100 = 126 - 2 * __clz(v95);
    if (v93 == v94)
    {
      v101 = 0;
    }

    else
    {
      v101 = v100;
    }

    sub_26235CD84(v94, v93, &__M, v101, 1);
    v514 = v566;
    v102 = vmul_lane_s32(v514, v514, 1).u32[0];
    if (v102 <= 0)
    {
      if (__dst)
      {
        free(__dst);
        __dst = 0;
        goto LABEL_175;
      }

LABEL_181:
      __dst = 0;
      goto LABEL_182;
    }

    if (v83 == v102)
    {
      if (__dst && __A)
      {
        memcpy(__dst, __A, 8 * v83);
LABEL_175:
        v514 = v566;
      }
    }

    else
    {
      if (__dst)
      {
        free(__dst);
        v514 = v566;
        v102 = vmul_lane_s32(v514, v514, 1).u32[0];
      }

      __dst = malloc_type_malloc(8 * v102, 0x100004000313F17uLL);
      if (!__dst)
      {
        goto LABEL_181;
      }

      if (__A)
      {
        memcpy(__dst, __A, 8 * v514.i32[0] * v514.i32[1]);
      }
    }

LABEL_182:
    v103 = *(a1 + 100);
    v104 = *(a1 + 96) * v103;
    if (v104)
    {
      v105 = malloc_type_malloc(8 * v104, 0x100004000313F17uLL);
      v106 = v105;
      if (v105)
      {
        bzero(v105, 8 * v104);
      }
    }

    else
    {
      v106 = 0;
    }

    if (*(a1 + 104) && (v108 = *(a1 + 96), v107 = *(a1 + 100), v107 * v108) && v106)
    {
      if (v104)
      {
        if (v108 == 1 || v107 == 1)
        {
          cblas_dcopy_NEWLAPACK();
        }

        else
        {
          vDSP_mtransD(*(a1 + 104), 1, v106, 1, v107, v108);
        }
      }
    }

    else if (!v106)
    {
      v584 = 0;
      __M = 0;
      goto LABEL_201;
    }

    if (v586)
    {
      v584 = 0;
      __M = __PAIR64__(HIDWORD(v585), v103);
      if (HIDWORD(v585) * v103)
      {
        v109 = 8 * (HIDWORD(v585) * v103);
        v110 = malloc_type_malloc(v109, 0x100004000313F17uLL);
        v584 = v110;
        if (v110)
        {
          bzero(v110, v109);
          cblas_dgemm_NEWLAPACK();
        }
      }
    }

    else
    {
      v584 = 0;
      __M = 0;
    }

    free(v106);
LABEL_201:
    v111 = *(a1 + 100);
    if (!v111)
    {
      v113 = 0;
LABEL_210:
      if (v87)
      {
        free(v87);
        v87 = 0;
      }

      goto LABEL_212;
    }

    v112 = malloc_type_malloc(8 * v111, 0x100004000313F17uLL);
    v113 = v112;
    if (v112)
    {
      bzero(v112, 8 * v111);
    }

    if (v111 < 1)
    {
      goto LABEL_210;
    }

    if (v85 == v111)
    {
      if (v87 && v113)
      {
        v114 = 8 * v85;
        v115 = v87;
        v116 = v113;
        goto LABEL_219;
      }

LABEL_212:
      if (!v113)
      {
        goto LABEL_221;
      }

LABEL_220:
      free(v113);
      goto LABEL_221;
    }

    if (v87)
    {
      free(v87);
    }

    v115 = malloc_type_malloc(8 * v111, 0x100004000313F17uLL);
    v87 = v115;
    if (!v115)
    {
      goto LABEL_212;
    }

    if (v113)
    {
      v116 = v113;
      v114 = 8 * v111;
LABEL_219:
      memcpy(v115, v116, v114);
      goto LABEL_220;
    }

LABEL_221:
    v117 = sub_26235BF84(&v585, &v585);
    v118 = *(a1 + 128);
    v517 = v111;
    if (*(a1 + 120) && v584)
    {
      v119 = *v519;
      v582 = 0;
      *&v581 = COERCE_DOUBLE(__PAIR64__(HIDWORD(__M), v119));
      if (HIDWORD(__M) * v119)
      {
        v120 = 8 * (HIDWORD(__M) * v119);
        v121 = malloc_type_malloc(v120, 0x100004000313F17uLL);
        v122 = v121;
        v582 = v121;
        if (v121)
        {
          bzero(v121, v120);
          cblas_dgemm_NEWLAPACK();
        }
      }

      else
      {
        v122 = 0;
      }
    }

    else
    {
      v122 = 0;
      v582 = 0;
      *&v581 = 0.0;
    }

    v123 = sub_26235BF84(&__M, &v581);
    if (v122)
    {
      free(v122);
    }

    if (v88 < 1)
    {
      v124 = 0;
    }

    else
    {
      v124 = -1;
      v125 = __p[0];
      do
      {
        v126 = *v125++;
        v127 = v124 + 2;
        ++v124;
      }

      while (*(__C + 16 * v126 + 8) <= 0.0 && v127 < v88);
      v124 = v124;
    }

    v129 = fmax(-(v123 - v118 * v117), 2.22044605e-16);
    v130 = *(__p[0] + v124);
    v131 = v117 / v129;
    v132 = *(__C + 16 * v130 + 8);
    v133 = 0.0;
    if (v117 / v129 >= v132 && v124 < v88)
    {
      v135 = -v117;
      v515 = v88;
      v516 = v129 * 2.22044605e-16;
      __n = 8 * v111;
      v136 = v124 + 1;
      v137 = *(__C + 16 * v130 + 8);
      LODWORD(v88) = v130;
      while (1)
      {
        v138 = v137;
        v139 = v136;
        v140 = v586[v88];
        if (v140 <= 0.0)
        {
          if (v140 >= 0.0)
          {
            v142 = *(__dst + v88);
            goto LABEL_251;
          }

          v141 = *(a2 + 16);
        }

        else
        {
          v141 = *(a2 + 32);
        }

        v142 = *(v141 + 8 * v88);
        *(__dst + v88) = v142;
LABEL_251:
        v143 = __A[v88];
        sub_26235BEFC(&v581, &__M, v132);
        if (v111)
        {
          v144 = malloc_type_malloc(__n, 0x100004000313F17uLL);
          v145 = v144;
          if (v144)
          {
            bzero(v144, __n);
          }

          if (!v87)
          {
LABEL_262:
            if (v111 <= 0)
            {
              v87 = 0;
            }

            if (v145)
            {
              goto LABEL_268;
            }

            goto LABEL_269;
          }
        }

        else
        {
          v145 = 0;
          if (!v87)
          {
            goto LABEL_262;
          }
        }

        if (v582 && v145)
        {
          vDSP_vaddD(v87, 1, v582, 1, v145, 1, v111);
        }

        if (v111 <= 0)
        {
          free(v87);
          v87 = 0;
          if (v145)
          {
            goto LABEL_268;
          }
        }

        else if (v145)
        {
          memcpy(v87, v145, __n);
LABEL_268:
          free(v145);
        }

LABEL_269:
        if (v582)
        {
          free(v582);
        }

        v146 = *(a1 + 100);
        v147 = *(a1 + 104);
        if (v147)
        {
          v148 = 0;
          if ((v88 & 0x80000000) == 0 && *(a1 + 96) > v88)
          {
            v148 = (v147 + 8 * (v146 * v88));
          }
        }

        else
        {
          v148 = 0;
        }

        if (v146)
        {
          __N = malloc_type_malloc(8 * v146, 0x100004000313F17uLL);
          if (v148 && __N)
          {
            memcpy(__N, v148, 8 * v146);
          }
        }

        else
        {
          __N = 0;
        }

        v149 = 0;
        v150 = 0;
        v151 = __B[v88];
        v152 = *(a1 + 128);
        v153 = 1;
        v154 = 0;
        if (*(a1 + 120) && v87)
        {
          v155 = *v519;
          if (!v155)
          {
            v150 = 0;
LABEL_294:
            v149 = 0;
            v154 = 0;
            goto LABEL_295;
          }

          v156 = malloc_type_malloc(8 * v155, 0x100004000313F17uLL);
          v150 = v156;
          if (!v156)
          {
            v149 = 0;
            v154 = 0;
            v153 = 1;
            goto LABEL_295;
          }

          bzero(v156, 8 * v155);
          cblas_dgemm_NEWLAPACK();
          if (!__N)
          {
            v153 = 0;
            goto LABEL_294;
          }

          v157 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          v154 = v157;
          v149 = 1;
          if (v157)
          {
            *v157 = 0.0;
            cblas_dgemm_NEWLAPACK();
          }

          v153 = 0;
        }

LABEL_295:
        *&v581 = 0.0;
        vDSP_sveD(v154, 1, &v581, (v149 * v149));
        v524 = *&v581;
        if (v154)
        {
          free(v154);
        }

        v530 = v87;
        v525 = v152;
        if ((v153 & 1) == 0)
        {
          free(v150);
        }

        v158 = 0;
        v159 = 0;
        v528 = *(a1 + 128);
        v160 = __B[v88];
        v161 = v584;
        v162 = 1;
        v534 = 0;
        v163 = 0;
        if (*(a1 + 120) && v584)
        {
          v163 = HIDWORD(__M);
          v164 = HIDWORD(__M) * *v519;
          if (!v164)
          {
            v534 = 0;
LABEL_310:
            v158 = 0;
            v163 = 0;
            v159 = 0;
            goto LABEL_314;
          }

          v165 = 8 * v164;
          v166 = malloc_type_malloc(v165, 0x100004000313F17uLL);
          v159 = v166;
          if (v166)
          {
            bzero(v166, v165);
            cblas_dgemm_NEWLAPACK();
            v534 = v159;
            if (!__N)
            {
              v162 = 0;
              goto LABEL_310;
            }

            if (!v163)
            {
              v162 = 0;
              v159 = 0;
LABEL_313:
              v158 = 1;
              goto LABEL_314;
            }

            v167 = malloc_type_malloc(8 * v163, 0x100004000313F17uLL);
            v159 = v167;
            if (!v167)
            {
              v162 = 0;
              goto LABEL_313;
            }

            bzero(v167, 8 * v163);
            v158 = 1;
            cblas_dgemm_NEWLAPACK();
            v162 = 0;
          }

          else
          {
            v534 = 0;
            v158 = 0;
            v163 = 0;
          }
        }

LABEL_314:
        v168 = v161;
        v522 = v151;
        v523 = v143;
        v521 = v142;
        v133 = v138;
        *&v581 = 0.0;
        vDSP_sveD(v159, 1, &v581, v163 * v158);
        v169 = *&v581;
        v170 = __B[v88];
        v520 = v139;
        if (!v146 || (v171 = malloc_type_malloc(8 * v146, 0x100004000313F17uLL), (v172 = v171) == 0))
        {
          v172 = 0;
          v174 = 0;
          v173 = 0;
          v179 = 0;
          v543 = __N == 0;
          v526 = 1;
          v175 = 1;
          goto LABEL_332;
        }

        bzero(v171, 8 * v146);
        v543 = __N == 0;
        if (__N && v172)
        {
          cblas_dcopy_NEWLAPACK();
        }

        v173 = 0;
        v174 = 0;
        v175 = 1;
        v526 = v172 == 0;
        if (!*(a1 + 120) || !v172)
        {
          v179 = 0;
          goto LABEL_332;
        }

        v176 = *v519;
        if (!v176)
        {
          v174 = 0;
LABEL_331:
          v173 = 0;
          v179 = 0;
          goto LABEL_332;
        }

        v177 = malloc_type_malloc(8 * v176, 0x100004000313F17uLL);
        v174 = v177;
        if (!v177)
        {
          goto LABEL_331;
        }

        bzero(v177, 8 * v176);
        cblas_dgemm_NEWLAPACK();
        if (!__N)
        {
          v175 = 0;
          goto LABEL_331;
        }

        v178 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v179 = v178;
        v173 = 1;
        if (v178)
        {
          *v178 = 0.0;
          cblas_dgemm_NEWLAPACK();
        }

        v175 = 0;
LABEL_332:
        *&v581 = 0.0;
        vDSP_sveD(v179, 1, &v581, (v173 * v173));
        v180 = *&v581;
        if (v179)
        {
          free(v179);
        }

        if ((v175 & 1) == 0)
        {
          free(v174);
        }

        if (!v526)
        {
          free(v172);
        }

        if (v159)
        {
          free(v159);
        }

        if ((v162 & 1) == 0)
        {
          free(v534);
        }

        v181 = v129 + v160 * v169 * -2.0 + -(v528 * v160) * v160 + -(v170 * v170) * v180;
        v182 = __B[v88];
        v580 = 0;
        if (v516 >= v181)
        {
          v183 = v516;
        }

        else
        {
          v183 = v181;
        }

        v579 = v146 | 0x100000000;
        if (v146)
        {
          v184 = malloc_type_malloc(8 * v146, 0x100004000313F17uLL);
          v185 = v184;
          v580 = v184;
          if (v184)
          {
            bzero(v184, 8 * v146);
          }
        }

        else
        {
          v185 = 0;
        }

        if (!v543 && v146 && v185)
        {
          cblas_dcopy_NEWLAPACK();
        }

        sub_26235BEFC(&v581, &v579, v182);
        v186 = __M;
        v187 = HIDWORD(__M);
        v188 = HIDWORD(__M) * __M;
        if (!(HIDWORD(__M) * __M))
        {
          if (!v168)
          {
            v191 = v515;
            v192 = v520;
            goto LABEL_369;
          }

          v190 = 0;
LABEL_365:
          v191 = v515;
          v192 = v520;
          free(v168);
          v584 = 0;
          goto LABEL_367;
        }

        v189 = malloc_type_malloc(8 * v188, 0x100004000313F17uLL);
        v190 = v189;
        if (v189)
        {
          bzero(v189, 8 * v188);
        }

        if (v168)
        {
          if (v582 && v190)
          {
            vDSP_vaddD(v168, 1, v582, 1, v190, 1, v188);
          }

          if (v188 < 1)
          {
            goto LABEL_365;
          }

          v191 = v515;
          v192 = v520;
          if (v190)
          {
            memcpy(v168, v190, 8 * v186 * v187);
            __M = __PAIR64__(v187, v186);
LABEL_368:
            free(v190);
            goto LABEL_369;
          }
        }

        else
        {
          v191 = v515;
          v192 = v520;
        }

LABEL_367:
        __M = __PAIR64__(v187, v186);
        if (v190)
        {
          goto LABEL_368;
        }

LABEL_369:
        v87 = v530;
        v111 = v517;
        if (v582)
        {
          free(v582);
          v582 = 0;
        }

        *&v581 = 0.0;
        if (v185)
        {
          free(v185);
        }

        v586[v88] = 0.0;
        v137 = v133;
        v193 = v132;
        if (v192 < v191)
        {
          v88 = *(__p[0] + v192);
          v137 = *(__C + 16 * v88 + 8);
          v193 = v137 - v133;
        }

        if (!v543)
        {
          free(__N);
        }

        v135 = v135 + v522 * v522 + v132 * v129 + v522 * v525 * (v521 - v523) - v522 * v524;
        v131 = -v135 / v183;
        v136 = v192 + 1;
        v194 = v131 >= v193 && v192 < v191;
        v132 = v193;
        v129 = v183;
        if (!v194)
        {
          v124 = v192;
          break;
        }
      }
    }

    if (v131 < 0.0)
    {
      v131 = 0.0;
    }

    if (v124 < v514.i32[0])
    {
      v195 = __A;
      v196 = v586;
      v197 = v514.u32[0] - v124;
      v198 = (__p[0] + 4 * v124);
      do
      {
        v199 = *v198++;
        *(__dst + v199) = v195[v199] + (v133 + v131) * v196[v199];
        --v197;
      }

      while (v197);
    }

    sub_26235BEFC(&v581, &__M, v131);
    if (!v111)
    {
      v201 = 0;
      v202 = 0;
      if (!v87)
      {
        goto LABEL_404;
      }

LABEL_399:
      free(v87);
      v87 = 0;
LABEL_402:
      v202 = v87;
      if (!v201)
      {
        goto LABEL_404;
      }

      goto LABEL_403;
    }

    v200 = malloc_type_malloc(8 * v111, 0x100004000313F17uLL);
    v201 = v200;
    if (v200)
    {
      bzero(v200, 8 * v111);
    }

    if (!v87)
    {
      if (v111 <= 0)
      {
        v87 = 0;
      }

      goto LABEL_402;
    }

    if (v582 && v201)
    {
      vDSP_vaddD(v87, 1, v582, 1, v201, 1, v111);
    }

    if (v111 <= 0)
    {
      goto LABEL_399;
    }

    if (!v201)
    {
      goto LABEL_402;
    }

    memcpy(v87, v201, 8 * v111);
LABEL_403:
    free(v201);
    v202 = v87;
LABEL_404:
    if (v582)
    {
      free(v582);
    }

    if (v584)
    {
      free(v584);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v586)
    {
      free(v586);
    }

    if (__C)
    {
      *(&__C + 1) = __C;
      operator delete(__C);
    }

    v527 = v202;
    if (v514.i32[0] >= 1)
    {
      v203 = 0;
      v204 = 0;
      v205 = 1.0 / *(a1 + 128);
      do
      {
        v206 = *(__dst + v204);
        if (v206 != *(*(a2 + 32) + 8 * v204) && v206 != *(*(a2 + 16) + 8 * v204))
        {
          v207 = v203;
          v208 = v203 >> 2;
          if (((v203 >> 2) + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          if (v203 >> 2 != -1)
          {
            sub_2621C7F54((v203 >> 2) + 1);
          }

          *(4 * v208) = v204;
          v203 = 4 * v208 + 4;
          memcpy(0, 0, v207);
        }

        ++v204;
      }

      while (v204 < v514.u32[0]);
      if (v203)
      {
        v209 = *(a1 + 100);
        HIDWORD(__C) = 0;
        LODWORD(__C) = v209;
        *(&__C + 4) = (v203 >> 2);
        v210 = v209 * (v203 >> 2);
        if (v210)
        {
          v211 = malloc_type_malloc(8 * v210, 0x100004000313F17uLL);
          *(&__C + 1) = v211;
          if (v211)
          {
            bzero(v211, 8 * DWORD1(__C) * __C);
          }
        }

        v212 = (v203 >> 2) & 0x7FFFFFFF;
        if ((v203 >> 2) >= 1)
        {
          v213 = 0;
          v214 = *(a1 + 100);
          v215 = *(&__C + 1);
          v216 = 8 * SDWORD1(__C);
          do
          {
            if (v214 >= 1)
            {
              v217 = (*(a1 + 104) + 8 * v214 * *(4 * v213));
              v218 = v215;
              v219 = v214;
              do
              {
                v220 = *v217++;
                *v218 = v220;
                v218 = (v218 + v216);
                --v219;
              }

              while (v219);
            }

            ++v213;
            ++v215;
          }

          while (v213 != v212);
        }

        v544 = (v203 >> 2);
        v221 = *(a1 + 128);
        v586 = 0;
        v585 = v514;
        v222 = v514.i32[1] * v514.i32[0];
        if (v514.i32[1])
        {
          v223 = malloc_type_malloc(8 * v222, 0x100004000313F17uLL);
          v224 = v223;
          v586 = v223;
          if (v223)
          {
            bzero(v223, 8 * v222);
          }
        }

        else
        {
          v224 = 0;
        }

        if (__dst && __A && v224)
        {
          vDSP_vsubD(__A, 1, __dst, 1, v224, 1, v222);
        }

        sub_26235BEFC(__p, &v585, v221);
        v227 = SHIDWORD(v564) * v564;
        if (v227)
        {
          v228 = malloc_type_malloc(8 * v227, 0x100004000313F17uLL);
          v229 = v228;
          if (v228)
          {
            bzero(v228, 8 * v227);
          }
        }

        else
        {
          v229 = 0;
        }

        if (__B && __p[1] && v229)
        {
          vDSP_vaddD(__B, 1, __p[1], 1, v229, 1, SHIDWORD(v564) * v564);
        }

        __Na = v229;
        v230 = 0;
        v231 = 1;
        v232 = 0;
        if (*(a1 + 120) && v527)
        {
          v233 = *v519;
          if (!v233)
          {
            v230 = 0;
            v232 = 0;
            if (v227)
            {
              goto LABEL_468;
            }

            goto LABEL_464;
          }

          v234 = v227;
          v235 = malloc_type_malloc(8 * v233, 0x100004000313F17uLL);
          v230 = v235;
          if (!v235)
          {
            v232 = 0;
            v231 = 1;
            if (v227)
            {
LABEL_468:
              v238 = v227;
              v240 = 8 * v227;
              v241 = malloc_type_malloc(v240, 0x100004000313F17uLL);
              v239 = v241;
              if (v241)
              {
                bzero(v241, v240);
              }

LABEL_470:
              if (__Na && v232 && v239)
              {
                vDSP_vsubD(v232, 1, __Na, 1, v239, 1, v238);
              }

              else if (!v232)
              {
                goto LABEL_476;
              }

              free(v232);
LABEL_476:
              if ((v231 & 1) == 0)
              {
                free(v230);
              }

              if (__Na)
              {
                free(__Na);
              }

              if (__p[1])
              {
                free(__p[1]);
                __p[1] = 0;
              }

              __p[0] = 0;
              if (v586)
              {
                free(v586);
              }

              __p[1] = 0;
              __p[0] = (v544 | 0x100000000);
              v531 = v239;
              if (!v544)
              {
                goto LABEL_497;
              }

              v242 = malloc_type_malloc(((v203 << 30) >> 29) & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
              __p[1] = v242;
              if (v242)
              {
                bzero(v242, 8 * HIDWORD(__p[0]) * LODWORD(__p[0]));
                v243 = __p[1];
              }

              else
              {
                v243 = 0;
              }

              if (v544 >= 1)
              {
                v244 = 0;
                v245 = (v203 >> 2) & 0x7FFFFFFF;
                do
                {
                  v246 = *v244++;
                  *v243++ = *&v239[v246];
                  --v245;
                }

                while (v245);
                v243 = __p[1];
              }

              if (!*(&__C + 1) || v243 == 0)
              {
LABEL_497:
                v248 = 0;
              }

              else
              {
                v248 = HIDWORD(__p[0]);
                if (HIDWORD(__p[0]) * __C)
                {
                  v254 = 8 * HIDWORD(__p[0]) * __C;
                  v255 = malloc_type_malloc(v254, 0x100004000313F17uLL);
                  v249 = v255;
                  if (v255)
                  {
                    bzero(v255, v254);
                    cblas_dgemm_NEWLAPACK();
                  }

LABEL_499:
                  if (*(a1 + 120))
                  {
                    if (!v249)
                    {
                      v253 = 0;
                      v248 = 0;
                      __Nb = 0;
                      goto LABEL_512;
                    }

                    __Nb = *v519;
                    v250 = *v519 * v248;
                    if (v250)
                    {
                      v251 = 8 * v250;
                      v252 = malloc_type_malloc(v251, 0x100004000313F17uLL);
                      v253 = v252;
                      if (v252)
                      {
                        bzero(v252, v251);
                        cblas_dgemm_NEWLAPACK();
                      }
                    }

                    else
                    {
                      v253 = 0;
                    }
                  }

                  else
                  {
                    v253 = 0;
                    v248 = 0;
                    __Nb = 0;
                    if (!v249)
                    {
LABEL_512:
                      v535 = v253;
                      sub_26235BEFC(&__M, &__C, v205);
                      v537 = v248;
                      v256 = __C;
                      v257 = __C * DWORD1(__C);
                      if (__C * DWORD1(__C))
                      {
                        v258 = malloc_type_malloc(8 * v257, 0x100004000313F17uLL);
                        v259 = v258;
                        if (v258)
                        {
                          bzero(v258, 8 * v257);
                        }
                      }

                      else
                      {
                        v259 = 0;
                      }

                      if (*(&__C + 1) && v257 && DWORD1(__C) * __C && v259)
                      {
                        if (__C == 1 || DWORD1(__C) == 1)
                        {
                          cblas_dcopy_NEWLAPACK();
                        }

                        else
                        {
                          vDSP_mtransD(*(&__C + 1), 1, v259, 1, SDWORD1(__C), __C);
                        }
                      }

                      v260 = v584;
                      if (v584)
                      {
                        if (!v259)
                        {
                          v256 = 0;
                          v264 = 0;
                          v261 = 0;
                          v586 = 0;
                          v585 = 0;
LABEL_534:
                          free(v260);
LABEL_535:
                          if (v261)
                          {
                            v265 = malloc_type_malloc(8 * (v261 * v261), 0x100004000313F17uLL);
                            v266 = v265;
                            if (v265)
                            {
                              bzero(v265, 8 * (v261 * v261));
                              if (v261 >= 1)
                              {
                                v267 = (v261 + 1) & 0xFFFFFFFE;
                                v268 = vdupq_n_s64(v261 - 1);
                                v269 = v266 + 1;
                                v270 = xmmword_2623A7620;
                                do
                                {
                                  v271 = vmovn_s64(vcgeq_u64(v268, v270));
                                  if (v271.i8[0])
                                  {
                                    *(v269 - 1) = 1.0;
                                  }

                                  if (v271.i8[4])
                                  {
                                    v269[v261] = 1.0;
                                  }

                                  v270 = vaddq_s64(v270, vdupq_n_s64(2uLL));
                                  v269 += 2 * v261 + 2;
                                  v267 -= 2;
                                }

                                while (v267);
                              }
                            }
                          }

                          else
                          {
                            v266 = 0;
                          }

                          v259 = 0;
                          if (*(a1 + 120) && v264)
                          {
                            v272 = v256 * *v519;
                            if (v272)
                            {
                              v273 = 8 * v272;
                              v274 = malloc_type_malloc(v273, 0x100004000313F17uLL);
                              v259 = v274;
                              if (v274)
                              {
                                bzero(v274, v273);
                                cblas_dgemm_NEWLAPACK();
                              }
                            }

                            else
                            {
                              v259 = 0;
                            }
                          }

                          if (v261)
                          {
                            v275 = malloc_type_malloc(8 * (v261 * v261), 0x100004000313F17uLL);
                            v276 = v275;
                            if (v275)
                            {
                              bzero(v275, 8 * (v261 * v261));
                            }
                          }

                          else
                          {
                            v276 = 0;
                          }

                          v277 = v266 == 0;
                          if (v266 && v259 && v276)
                          {
                            vDSP_vsubD(v259, 1, v266, 1, v276, 1, (v261 * v261));
                          }

                          if (v261)
                          {
                            if (HIDWORD(v585) * v585 != v261 * v261)
                            {
                              if (v586)
                              {
                                free(v586);
                                v586 = 0;
                              }

                              LODWORD(v585) = v261;
                              HIDWORD(v585) = v261;
                              v278 = malloc_type_malloc(8 * (v261 * v261), 0x100004000313F17uLL);
                              v586 = v278;
                              if (v278)
                              {
                                if (!v276)
                                {
                                  goto LABEL_577;
                                }

                                memcpy(v278, v276, 8 * v261 * v261);
LABEL_576:
                                free(v276);
LABEL_577:
                                if (v259)
                                {
                                  free(v259);
                                }

                                if (!v277)
                                {
                                  free(v266);
                                }

                                v279 = v537;
                                if ((__Nb * v537) < 1)
                                {
                                  v280 = v535;
                                  goto LABEL_612;
                                }

                                v280 = v535;
                                sub_26235C610(&__M, &v585);
                                v281 = v584;
                                if (v584)
                                {
                                  if (!v535)
                                  {
                                    v286 = 0;
                                    goto LABEL_610;
                                  }

                                  v282 = __M;
                                  if (__M * v537)
                                  {
                                    v283 = 8 * __M * v537;
                                    v284 = malloc_type_malloc(v283, 0x100004000313F17uLL);
                                    v285 = v284;
                                    if (v284)
                                    {
                                      bzero(v284, v283);
                                      cblas_dgemm_NEWLAPACK();
                                    }
                                  }

                                  else
                                  {
                                    v285 = 0;
                                  }

                                  v286 = v537;
                                }

                                else
                                {
                                  v282 = 0;
                                  v286 = 0;
                                  v285 = 0;
                                }

                                if (v286 * v282 < 1)
                                {
                                  if (v535)
                                  {
                                    free(v535);
                                  }
                                }

                                else if (__Nb * v537 == v286 * v282)
                                {
                                  if (v535)
                                  {
                                    if (!v285)
                                    {
                                      goto LABEL_609;
                                    }

                                    v287 = v537 * __Nb;
LABEL_606:
                                    memcpy(v280, v285, 8 * v287);
LABEL_608:
                                    free(v285);
LABEL_609:
                                    v281 = v584;
                                    if (!v584)
                                    {
LABEL_611:
                                      v279 = v286;
LABEL_612:
                                      sub_26235BEFC(&v581, __p, -v205);
                                      v578 = 0;
                                      v577 = __PAIR64__(__C, DWORD1(__C));
                                      v288 = __C * DWORD1(__C);
                                      if (__C * DWORD1(__C))
                                      {
                                        v289 = malloc_type_malloc(8 * v288, 0x100004000313F17uLL);
                                        v290 = v289;
                                        v578 = v289;
                                        if (v289)
                                        {
                                          bzero(v289, 8 * v288);
                                        }
                                      }

                                      else
                                      {
                                        v290 = 0;
                                      }

                                      if (*(&__C + 1) && DWORD1(__C) * __C && v290 && v288)
                                      {
                                        if (__C == 1 || DWORD1(__C) == 1)
                                        {
                                          cblas_dcopy_NEWLAPACK();
                                        }

                                        else
                                        {
                                          vDSP_mtransD(*(&__C + 1), 1, v290, 1, SDWORD1(__C), __C);
                                        }
                                      }

                                      sub_26235BEFC(&v579, &v577, v205 * v205);
                                      v291 = 0;
                                      if (v580 && v280)
                                      {
                                        if (v579 * v279)
                                        {
                                          v292 = 8 * v579 * v279;
                                          v293 = malloc_type_malloc(v292, 0x100004000313F17uLL);
                                          v291 = v293;
                                          if (v293)
                                          {
                                            bzero(v293, v292);
                                            cblas_dgemm_NEWLAPACK();
                                          }
                                        }

                                        else
                                        {
                                          v291 = 0;
                                        }
                                      }

                                      v294 = v581;
                                      v584 = 0;
                                      __M = v581;
                                      if (HIDWORD(v581) * v581)
                                      {
                                        v295 = 8 * HIDWORD(v581) * v581;
                                        v296 = malloc_type_malloc(v295, 0x100004000313F17uLL);
                                        v297 = v296;
                                        v584 = v296;
                                        if (v296)
                                        {
                                          bzero(v296, v295);
                                        }
                                      }

                                      else
                                      {
                                        v297 = 0;
                                      }

                                      if (v582 && v291 && v297)
                                      {
                                        vDSP_vsubD(v291, 1, v582, 1, v297, 1, SHIDWORD(v581) * v581);
                                      }

                                      else if (!v291)
                                      {
                                        goto LABEL_640;
                                      }

                                      free(v291);
LABEL_640:
                                      if (v580)
                                      {
                                        free(v580);
                                        v580 = 0;
                                      }

                                      v579 = 0;
                                      if (v578)
                                      {
                                        free(v578);
                                      }

                                      if (v582)
                                      {
                                        free(v582);
                                      }

                                      v298 = 1.0;
                                      if (v294 == (v203 >> 2))
                                      {
                                        v299 = v531;
                                        if ((v203 >> 2) >= 1)
                                        {
                                          v300 = (v203 >> 2) & 0x7FFFFFFF;
                                          v301 = v297;
                                          v302 = 0;
                                          do
                                          {
                                            v303 = *v301++;
                                            v304 = v303;
                                            v306 = *v302++;
                                            v305 = v306;
                                            v307 = *(__dst + v306);
                                            if (v304 <= 0.0)
                                            {
                                              v308 = *(a2 + 16);
                                            }

                                            else
                                            {
                                              v308 = *(a2 + 32);
                                            }

                                            v309 = (*(v308 + 8 * v305) - v307) / v304;
                                            if (v309 < v298)
                                            {
                                              v298 = v309;
                                            }

                                            --v300;
                                          }

                                          while (v300);
                                        }
                                      }

                                      else
                                      {
                                        v299 = v531;
                                      }

                                      sub_26235BEFC(&v581, &__M, v298);
                                      v310 = vmul_lane_s32(v514, v514, 1).u32[0];
                                      if (v310 < 1)
                                      {
                                        v529 = 0;
                                      }

                                      else
                                      {
                                        v529 = malloc_type_malloc(8 * v310, 0x100004000313F17uLL);
                                        if (v529 && __dst)
                                        {
                                          memcpy(v529, __dst, 8 * v514.u32[0] * v514.i32[1]);
                                        }
                                      }

                                      v311 = v582;
                                      if (v544 < 1)
                                      {
                                        if (!v582)
                                        {
LABEL_668:
                                          if (v297)
                                          {
                                            free(v297);
                                          }

                                          if (v586)
                                          {
                                            free(v586);
                                          }

                                          if (v280)
                                          {
                                            free(v280);
                                          }

                                          if (__p[1])
                                          {
                                            free(__p[1]);
                                          }

                                          if (v299)
                                          {
                                            free(v299);
                                          }

                                          if (*(&__C + 1))
                                          {
                                            free(*(&__C + 1));
                                          }

                                          goto LABEL_680;
                                        }
                                      }

                                      else
                                      {
                                        v312 = 0;
                                        v313 = v582;
                                        do
                                        {
                                          v315 = *v312++;
                                          v314 = v315;
                                          v316 = v529[v315];
                                          v317 = *v313++;
                                          v529[v314] = v316 + v317;
                                          --v212;
                                        }

                                        while (v212);
                                      }

                                      free(v311);
                                      goto LABEL_668;
                                    }

LABEL_610:
                                    free(v281);
                                    goto LABEL_611;
                                  }
                                }

                                else
                                {
                                  if (v535)
                                  {
                                    free(v535);
                                  }

                                  v280 = malloc_type_malloc(8 * (v286 * v282), 0x100004000313F17uLL);
                                  if (v280)
                                  {
                                    if (!v285)
                                    {
                                      goto LABEL_609;
                                    }

                                    v287 = v282 * v286;
                                    goto LABEL_606;
                                  }
                                }

                                v280 = 0;
                                if (!v285)
                                {
                                  goto LABEL_609;
                                }

                                goto LABEL_608;
                              }

LABEL_575:
                              if (!v276)
                              {
                                goto LABEL_577;
                              }

                              goto LABEL_576;
                            }

                            if (v586 && v276)
                            {
                              memcpy(v586, v276, 8 * v585 * SHIDWORD(v585));
                            }

LABEL_574:
                            LODWORD(v585) = v261;
                            HIDWORD(v585) = v261;
                            goto LABEL_575;
                          }

LABEL_572:
                          if (v586)
                          {
                            free(v586);
                            v586 = 0;
                          }

                          goto LABEL_574;
                        }

                        v261 = __M;
                        v586 = 0;
                        v585 = __PAIR64__(v256, __M);
                        if (__M * v256)
                        {
                          v262 = 8 * (__M * v256);
                          v263 = malloc_type_malloc(v262, 0x100004000313F17uLL);
                          v264 = v263;
                          v586 = v263;
                          if (v263)
                          {
                            bzero(v263, v262);
                            cblas_dgemm_NEWLAPACK();
                          }
                        }

                        else
                        {
                          v264 = 0;
                        }
                      }

                      else
                      {
                        v586 = 0;
                        v585 = 0;
                        if (!v259)
                        {
                          v261 = 0;
                          v266 = 0;
                          v276 = 0;
                          v277 = 1;
                          goto LABEL_572;
                        }

                        v256 = 0;
                        v264 = 0;
                        v261 = 0;
                      }

                      free(v259);
                      v260 = v584;
                      if (!v584)
                      {
                        goto LABEL_535;
                      }

                      goto LABEL_534;
                    }
                  }

                  free(v249);
                  goto LABEL_512;
                }
              }

              v249 = 0;
              goto LABEL_499;
            }

LABEL_464:
            v238 = v227;
            v239 = 0;
            goto LABEL_470;
          }

          bzero(v235, 8 * v233);
          cblas_dgemm_NEWLAPACK();
          if (*(a1 + 104) && (v236 = *(a1 + 96), v236))
          {
            v237 = malloc_type_malloc(8 * v236, 0x100004000313F17uLL);
            v232 = v237;
            if (v237)
            {
              bzero(v237, 8 * v236);
              cblas_dgemm_NEWLAPACK();
            }
          }

          else
          {
            v232 = 0;
          }

          v227 = v234;
          v231 = 0;
        }

        if (v227)
        {
          goto LABEL_468;
        }

        goto LABEL_464;
      }
    }

    v225 = vmul_lane_s32(v514, v514, 1).u32[0];
    if (v225 >= 1 && (v226 = malloc_type_malloc(8 * v225, 0x100004000313F17uLL)) != 0)
    {
      v529 = v226;
      if (__dst)
      {
        memcpy(v226, __dst, 8 * v514.i32[0] * v514.i32[1]);
      }
    }

    else
    {
      v529 = 0;
    }

LABEL_680:
    v580 = 0;
    v579 = v514;
    v318 = v514.i32[1] * v514.i32[0];
    if (v514.i32[1] * v514.i32[0])
    {
      v319 = malloc_type_malloc(8 * v318, 0x100004000313F17uLL);
      v320 = v319;
      v580 = v319;
      if (v319)
      {
        bzero(v319, 8 * v318);
      }
    }

    else
    {
      v320 = 0;
    }

    if (v529 && __A && v320)
    {
      vDSP_vsubD(__A, 1, v529, 1, v320, 1, v318);
    }

    v587 = 1.0;
    v536 = (*(*a2 + 24))(a2, &v566);
    sub_26235BA28(&v585, &v566);
    (*(*a2 + 32))(a2, &v566, &v585);
    sub_26235BA28(&__M, &v579);
    sub_26235BA28(&v581, &v566);
    v577 = *&v536;
    v601[0] = 1;
    v321 = SHIDWORD(v585) * v585;
    if (v321)
    {
      v322 = malloc_type_malloc(8 * v321, 0x100004000313F17uLL);
      v323 = v322;
      if (v322)
      {
        bzero(v322, 8 * v321);
      }
    }

    else
    {
      v323 = 0;
    }

    if (v586 && v323 && v584)
    {
      vDSP_vmulD(v586, 1, v584, 1, v323, 1, SHIDWORD(v585) * v585);
    }

    *&__C = 0;
    vDSP_sveD(v323, 1, &__C, v321);
    v324 = *&__C;
    if (v323)
    {
      free(v323);
    }

    v325 = 1.0;
    if (v324 < 0.0)
    {
      v600 = 0;
      sub_26235BA28(&__C, &v581);
      v326 = 0;
      v327 = 0;
      v328 = v324 * 0.0001;
      v558 = 0.0;
      v556 = v536;
      v599 = v324;
      v598 = 0.0;
      v596 = v324;
      v597 = v536;
      v532 = v324 * -0.01;
      v329 = 1;
      *&v330 = 2.0e15;
      *&v331 = 1.0e15;
LABEL_700:
      v332 = v558;
      v333 = v587;
      v334 = v587 + (v587 - v558) * 4.0;
      v335 = v558;
      while (1)
      {
        v594 = v334;
        v595 = v335;
        if (v333 < 1.0e-15)
        {
          v333 = 1.0e-15;
        }

        if (v333 <= 1.0e15)
        {
          v325 = v333;
        }

        else
        {
          v325 = 1.0e15;
        }

        v587 = v325;
        if (v326)
        {
          if (v325 <= v335 || (v325 < v334 ? (v336 = v327 > 0x12) : (v336 = 1), !v336 ? (v337 = v601[0] == 0) : (v337 = 1), v337 || v334 - v335 <= v334 * 1.0e-15))
          {
LABEL_726:
            v587 = v332;
            v325 = v332;
          }
        }

        else if (v327 > 0x12 || !v601[0])
        {
          goto LABEL_726;
        }

        sub_26235BEFC(__p, &__M, v325);
        v338 = __C;
        v339 = DWORD1(__C);
        v340 = DWORD1(__C) * __C;
        if (DWORD1(__C) * __C)
        {
          v341 = malloc_type_malloc(8 * v340, 0x100004000313F17uLL);
          v342 = v341;
          if (v341)
          {
            bzero(v341, 8 * v340);
          }
        }

        else
        {
          v342 = 0;
        }

        if (*(&__C + 1) && __p[1] && v342)
        {
          vDSP_vaddD(*(&__C + 1), 1, __p[1], 1, v342, 1, SDWORD1(__C) * __C);
        }

        if (v340 < 1)
        {
          if (v582)
          {
            free(v582);
            v582 = 0;
          }

LABEL_742:
          *&v581 = COERCE_DOUBLE(__PAIR64__(v339, v338));
LABEL_743:
          if (!v342)
          {
            goto LABEL_745;
          }

LABEL_744:
          free(v342);
          goto LABEL_745;
        }

        if (HIDWORD(v581) * v581 == v340)
        {
          if (v582 && v342)
          {
            memcpy(v582, v342, 8 * v581 * SHIDWORD(v581));
          }

          goto LABEL_742;
        }

        if (v582)
        {
          free(v582);
          v582 = 0;
        }

        *&v581 = COERCE_DOUBLE(__PAIR64__(v339, v338));
        v367 = malloc_type_malloc(8 * v340, 0x100004000313F17uLL);
        v582 = v367;
        if (!v367)
        {
          goto LABEL_743;
        }

        if (v342)
        {
          memcpy(v367, v342, 8 * v581 * SHIDWORD(v581));
          goto LABEL_744;
        }

LABEL_745:
        v545 = v335;
        if (__p[1])
        {
          free(__p[1]);
        }

        v343 = (*(*a2 + 24))(a2, &v581);
        v577 = *&v343;
        (*(*a2 + 32))(a2, &v581, &v585);
        v344 = SHIDWORD(v585) * v585;
        if (v344)
        {
          v345 = malloc_type_malloc(8 * v344, 0x100004000313F17uLL);
          v346 = v345;
          if (v345)
          {
            bzero(v345, 8 * v344);
          }
        }

        else
        {
          v346 = 0;
        }

        v538 = *&v330;
        if (v586 && v584 && v346)
        {
          vDSP_vmulD(v586, 1, v584, 1, v346, 1, SHIDWORD(v585) * v585);
        }

        v330 = v331;
        __p[0] = 0;
        vDSP_sveD(v346, 1, __p, v344);
        v347 = __p[0];
        if (v346)
        {
          free(v346);
        }

        v593 = v347;
        v348 = v536 + v325 * v328;
        v349 = fabs(*&v347) <= v532;
        v350 = v343 <= v348 && *&v347 <= v328;
        v351 = v343 > v348 || *&v347 >= v328;
        v352 = v343 > v348 && v349;
        v353 = v326;
        if (v325 < v334 && v325 > v545)
        {
          v353 = 0;
        }

        v355 = v325 == 1.0e15 && v350;
        v356 = v325 == 1.0e-15 && v351;
        v357 = v334 - v545 > v334 * 1.0e-15 || v326 == 0;
        if (v352 || ((v358 = v353 | (v601[0] == 0), v357) ? (v359 = v327 > 0x12) : (v359 = 1), !v359 ? (v360 = !v356) : (v360 = 0), v360 ? (v361 = !v355) : (v361 = 0), v361 ? (v362 = v358 == 0) : (v362 = 0), !v362))
        {
          if (*(&__C + 1))
          {
            free(*(&__C + 1));
          }

          break;
        }

        v363 = *&v347 < v328;
        if (v343 > v348)
        {
          v363 = 1;
        }

        v329 &= v363;
        if (v329 != 1 || v343 <= v348 || v343 > v556)
        {
          sub_26235C858(&v558, &v556, &v599, &v598, &v597, &v596, &v587, &v577, &v593, &v600, &v595, &v594, v601);
        }

        else
        {
          *__p = v343 - v325 * v328;
          v591 = v597 - v598 * v328;
          v592 = v556 - v332 * v328;
          v589 = v599 - v328;
          v590 = *&v347 - v328;
          v588 = v596 - v328;
          sub_26235C858(&v558, &v592, &v589, &v598, &v591, &v588, &v587, __p, &v590, &v600, &v595, &v594, v601);
          v556 = v592 + v558 * v328;
          v599 = v328 + v589;
          v596 = v328 + v588;
          v597 = v591 + v598 * v328;
        }

        v326 = v600;
        if (v600 == 1)
        {
          v366 = vabdd_f64(v598, v558);
          if (v366 >= v538 * 0.66)
          {
            v587 = v558 + (v598 - v558) * 0.5;
          }
        }

        else
        {
          v366 = *&v330;
          *&v330 = v538;
        }

        ++v327;
        *&v331 = v366;
        if ((v600 & 1) == 0)
        {
          goto LABEL_700;
        }

        v332 = v558;
        if (v598 >= v558)
        {
          v335 = v558;
        }

        else
        {
          v335 = v598;
        }

        if (v558 >= v598)
        {
          v334 = v558;
        }

        else
        {
          v334 = v598;
        }

        v333 = v587;
      }
    }

    if (v582)
    {
      free(v582);
    }

    if (v584)
    {
      free(v584);
    }

    if (v586)
    {
      free(v586);
    }

    if (v580)
    {
      free(v580);
    }

    __p[1] = 0;
    __p[0] = v566;
    if (HIDWORD(v566) * v566)
    {
      v368 = 8 * HIDWORD(v566) * v566;
      v369 = malloc_type_malloc(v368, 0x100004000313F17uLL);
      v370 = v369;
      __p[1] = v369;
      if (v369)
      {
        bzero(v369, v368);
      }
    }

    else
    {
      v370 = 0;
    }

    if (__A && v529 && v370)
    {
      vDSP_vsubD(v529, 1, __A, 1, v370, 1, SHIDWORD(v566) * v566);
    }

    sub_26235BEFC(&__C, __p, v325);
    v371 = v566;
    v372 = HIDWORD(v566);
    v373 = HIDWORD(v566) * v566;
    if (HIDWORD(v566) * v566)
    {
      v374 = malloc_type_malloc(8 * v373, 0x100004000313F17uLL);
      v375 = v374;
      if (v374)
      {
        bzero(v374, 8 * v373);
      }
    }

    else
    {
      v375 = 0;
    }

    if (__A && *(&__C + 1) && v375)
    {
      vDSP_vsubD(*(&__C + 1), 1, __A, 1, v375, 1, SHIDWORD(v566) * v566);
    }

    if (v373 < 1)
    {
      if (__A)
      {
        free(__A);
        __A = 0;
      }

LABEL_851:
      v566 = __PAIR64__(v372, v371);
LABEL_852:
      if (!v375)
      {
        goto LABEL_854;
      }

LABEL_853:
      free(v375);
      goto LABEL_854;
    }

    if (HIDWORD(v566) * v566 == v373)
    {
      if (__A && v375)
      {
        memcpy(__A, v375, 8 * v566 * SHIDWORD(v566));
      }

      goto LABEL_851;
    }

    if (__A)
    {
      free(__A);
      __A = 0;
    }

    v566 = __PAIR64__(v372, v371);
    v401 = malloc_type_malloc(8 * v373, 0x100004000313F17uLL);
    __A = v401;
    if (!v401)
    {
      goto LABEL_852;
    }

    if (v375)
    {
      memcpy(v401, v375, 8 * v566 * SHIDWORD(v566));
      goto LABEL_853;
    }

LABEL_854:
    if (*(&__C + 1))
    {
      free(*(&__C + 1));
      *(&__C + 1) = 0;
    }

    *&__C = 0;
    if (__p[1])
    {
      free(__p[1]);
    }

    v376 = v566;
    if (v566 >= 1)
    {
      v377 = __A;
      v378 = *(a2 + 16);
      v379 = *(a2 + 32);
      do
      {
        v380 = *v378;
        if (*v377 < *v378 || (v380 = *v379, *v377 > *v379))
        {
          *v377 = v380;
        }

        ++v379;
        ++v378;
        ++v377;
        --v376;
      }

      while (v376);
    }

    v381 = (*(*a2 + 24))(a2, &v566);
    (*(*a2 + 32))(a2, &v566, &v564);
    v382 = HIDWORD(v564);
    __C = v564;
    __Nc = v564;
    v383 = HIDWORD(v564) * v564;
    if (HIDWORD(v564) * v564)
    {
      v384 = malloc_type_malloc(8 * v383, 0x100004000313F17uLL);
      v385 = v384;
      *(&__C + 1) = v384;
      if (v384)
      {
        bzero(v384, 8 * v383);
      }
    }

    else
    {
      v385 = 0;
    }

    if (__B && v561 && v385)
    {
      vDSP_vsubD(v561, 1, __B, 1, v385, 1, SHIDWORD(v564) * v564);
    }

    __p[1] = 0;
    __p[0] = v566;
    v546 = HIDWORD(v566);
    if (HIDWORD(v566) * v566)
    {
      v386 = 8 * HIDWORD(v566) * v566;
      v387 = malloc_type_malloc(v386, 0x100004000313F17uLL);
      v388 = v387;
      __p[1] = v387;
      if (v387)
      {
        bzero(v387, v386);
      }
    }

    else
    {
      v388 = 0;
    }

    if (__A && v563 && v388)
    {
      vDSP_vsubD(v563, 1, __A, 1, v388, 1, SHIDWORD(v566) * v566);
    }

    v389 = sub_26235BF84(__p, &__C);
    v390 = sub_26235C08C(&__C);
    v391 = -v389;
    if (v389 >= 0.0)
    {
      v391 = v389;
    }

    if (v391 <= v390 * 0.0000001)
    {
      goto LABEL_1140;
    }

    v392 = v572;
    v393 = *(a1 + 140);
    if (v572 >= v393)
    {
      if (v393 >= 2)
      {
        v402 = 0;
        do
        {
          v403 = v402 + 1;
          sub_26235C154(&v585, &v571, v402 + 1, v402 + 2);
          sub_26235C3DC(&v571, v402, v402 + 1, &v585);
          if (v586)
          {
            free(v586);
          }

          sub_26235C154(&v585, &v568, v402 + 1, v402 + 2);
          sub_26235C3DC(&v568, v402, v402 + 1, &v585);
          if (v586)
          {
            free(v586);
          }

          ++v402;
        }

        while (v403 < *(a1 + 140) - 1);
        v392 = v572;
      }
    }

    else
    {
      v394 = v571;
      if (v571)
      {
        if (v572 >= 2 && v571 != 1)
        {
          v395 = malloc_type_malloc(8 * v572 * v571, 0x100004000313F17uLL);
          if (v573)
          {
            v396 = v395;
            if (v395)
            {
              vDSP_mtransD(v573, 1, v395, 1, v392, v394);
              cblas_dcopy_NEWLAPACK();
              free(v396);
            }
          }
        }
      }

      v571 = v392;
      v572 = v394;
      sub_26235B8CC(&v571, v392 + 1, *(a1 + 136));
      v397 = v571;
      v398 = v572;
      if (v571)
      {
        if (v571 != 1 && v572 >= 2)
        {
          v399 = malloc_type_malloc(8 * v572 * v571, 0x100004000313F17uLL);
          if (v573)
          {
            v400 = v399;
            if (v399)
            {
              vDSP_mtransD(v573, 1, v399, 1, v398, v397);
              cblas_dcopy_NEWLAPACK();
              free(v400);
            }
          }
        }

        v392 = v397;
      }

      else
      {
        v392 = 0;
      }

      v571 = v398;
      v572 = v392;
      v404 = v568;
      v405 = v569;
      if (v568 >= 2 && v569 >= 2)
      {
        v406 = malloc_type_malloc(8 * v569 * v568, 0x100004000313F17uLL);
        if (v570)
        {
          v407 = v406;
          if (v406)
          {
            vDSP_mtransD(v570, 1, v406, 1, v405, v404);
            cblas_dcopy_NEWLAPACK();
            free(v407);
          }
        }
      }

      v568 = v405;
      v569 = v404;
      sub_26235B8CC(&v568, v405 + 1, *(a1 + 136));
      v408 = v568;
      v409 = v569;
      if (v568 >= 2 && v569 >= 2)
      {
        v410 = malloc_type_malloc(8 * v569 * v568, 0x100004000313F17uLL);
        if (v570)
        {
          v411 = v410;
          if (v410)
          {
            vDSP_mtransD(v570, 1, v410, 1, v409, v408);
            cblas_dcopy_NEWLAPACK();
            free(v411);
          }
        }
      }

      v568 = v409;
      v569 = v408;
    }

    sub_26235C3DC(&v571, v392 - 1, v392, &__C);
    sub_26235C3DC(&v568, v569 - 1, v569, __p);
    if (v383)
    {
      v412 = malloc_type_malloc(8 * v383, 0x100004000313F17uLL);
      v413 = v412;
      if (v412)
      {
        bzero(v412, 8 * v383);
      }
    }

    else
    {
      v413 = 0;
    }

    if (!v385)
    {
      v414 = v382;
      v415 = 0;
      v416 = 0;
      v417 = v413 == 0;
      goto LABEL_942;
    }

    if (v383 && v413)
    {
      if (__Nc == 1 || v382 == 1)
      {
        v414 = v382;
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        v414 = v382;
        vDSP_mtransD(v385, 1, v413, 1, v382, __Nc);
      }
    }

    else
    {
      v414 = v382;
      v416 = 0;
      v415 = 0;
      v417 = v413 == 0;
      if (!v413)
      {
        goto LABEL_942;
      }
    }

    if (v382)
    {
      v418 = malloc_type_malloc(8 * (v382 * v382), 0x100004000313F17uLL);
      v416 = v418;
      if (v418)
      {
        bzero(v418, 8 * (v382 * v382));
        cblas_dgemm_NEWLAPACK();
      }

      v417 = 0;
    }

    else
    {
      v417 = 0;
      v416 = 0;
    }

    v415 = v382;
LABEL_942:
    v585 = 0;
    v539 = v417;
    vDSP_sveD(v416, 1, &v585, (v415 * v415));
    v419 = *&v585;
    if (v383)
    {
      v420 = malloc_type_malloc(8 * v383, 0x100004000313F17uLL);
      v421 = v420;
      if (v420)
      {
        bzero(v420, 8 * v383);
      }

      if (!v385)
      {
        goto LABEL_953;
      }
    }

    else
    {
      v421 = 0;
      if (!v385)
      {
        goto LABEL_953;
      }
    }

    if (v383 && v421)
    {
      if (__Nc == 1 || v382 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v385, 1, v421, 1, v414, __Nc);
      }

      goto LABEL_956;
    }

LABEL_953:
    if (!v421)
    {
      v382 = 0;
      v422 = 0;
      v423 = 0;
      LOBYTE(v388) = 1;
      goto LABEL_964;
    }

LABEL_956:
    if (v388)
    {
      if (v546 * v382)
      {
        v424 = 8 * v546 * v382;
        v425 = malloc_type_malloc(v424, 0x100004000313F17uLL);
        v423 = v425;
        if (v425)
        {
          bzero(v425, v424);
          cblas_dgemm_NEWLAPACK();
        }

        LOBYTE(v388) = 0;
      }

      else
      {
        LOBYTE(v388) = 0;
        v423 = 0;
      }

      v422 = v546;
    }

    else
    {
      v382 = 0;
      v422 = 0;
      v423 = 0;
    }

LABEL_964:
    v585 = 0;
    vDSP_sveD(v423, 1, &v585, v422 * v382);
    *(a1 + 128) = v419 / *&v585;
    if (v423)
    {
      free(v423);
    }

    if ((v388 & 1) == 0)
    {
      free(v421);
    }

    if (v416)
    {
      free(v416);
    }

    if (!v539)
    {
      free(v413);
    }

    v426 = v571;
    v427 = v572;
    v428 = v569 + v572;
    v429 = (v569 + v572) * v571;
    if (!v429)
    {
      v431 = 0;
LABEL_982:
      v435 = a1;
      v436 = *(a1 + 104);
      if (v436)
      {
        free(v436);
        *(a1 + 104) = 0;
      }

LABEL_984:
      *(v435 + 96) = v426;
      *(v435 + 100) = v428;
LABEL_985:
      if (!v431)
      {
        goto LABEL_987;
      }

LABEL_986:
      free(v431);
      v427 = v572;
      goto LABEL_987;
    }

    v430 = malloc_type_malloc(8 * v429, 0x100004000313F17uLL);
    v431 = v430;
    if (v430)
    {
      bzero(v430, 8 * v429);
    }

    if (v429 < 1)
    {
      goto LABEL_982;
    }

    v432 = *(a1 + 96);
    v433 = *(a1 + 100);
    v434 = *(a1 + 104);
    if (v433 * v432 == v429)
    {
      if (v434 && v431)
      {
        memcpy(v434, v431, 8 * v432 * v433);
      }

      v435 = a1;
      goto LABEL_984;
    }

    if (v434)
    {
      free(v434);
      *(a1 + 104) = 0;
    }

    *(a1 + 96) = v426;
    *(a1 + 100) = v428;
    v447 = malloc_type_malloc(8 * v429, 0x100004000313F17uLL);
    *(a1 + 104) = v447;
    if (!v447)
    {
      goto LABEL_985;
    }

    if (v431)
    {
      memcpy(v447, v431, 8 * *(a1 + 96) * *(a1 + 100));
      goto LABEL_986;
    }

LABEL_987:
    sub_26235C3DC(v510, 0, v427, &v571);
    v437 = v572;
    v438 = *(a1 + 100);
    sub_26235BEFC(&v585, &v568, *(a1 + 128));
    sub_26235C3DC(v510, v437, v438, &v585);
    if (v586)
    {
      free(v586);
    }

    v439 = v569;
    v440 = v568;
    v441 = v568 * v569;
    if (v568 * v569)
    {
      v442 = malloc_type_malloc(8 * v441, 0x100004000313F17uLL);
      v443 = v442;
      if (v442)
      {
        bzero(v442, 8 * v441);
      }
    }

    else
    {
      v443 = 0;
    }

    __Nd = v570;
    if (v570 && v441 && v443)
    {
      if (v440 == 1 || v439 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v570, 1, v443, 1, v439, v440);
      }
    }

    else if (!v443)
    {
      v444 = 0;
      v445 = 0;
      v446 = 0;
      v586 = 0;
      v585 = 0;
      goto LABEL_1015;
    }

    if (v573)
    {
      v445 = v572;
      v586 = 0;
      v585 = __PAIR64__(v572, v439);
      if (v572 * v439)
      {
        v448 = 8 * v572 * v439;
        v449 = malloc_type_malloc(v448, 0x100004000313F17uLL);
        v444 = v449;
        v586 = v449;
        if (v449)
        {
          bzero(v449, v448);
          cblas_dgemm_NEWLAPACK();
        }
      }

      else
      {
        v444 = 0;
      }

      v446 = v439;
    }

    else
    {
      v444 = 0;
      v445 = 0;
      v446 = 0;
      v586 = 0;
      v585 = 0;
    }

    free(v443);
LABEL_1015:
    v540 = v440;
    v547 = v444;
    sub_26235BA28(&__M, &v585);
    if (v446 >= 1)
    {
      v450 = 0;
      v451 = v584;
      v452 = 8 * SHIDWORD(__M) + 8;
      v453 = v445 - 1;
      do
      {
        if (v445 > v450)
        {
          bzero(v451, 8 * v453 + 8);
        }

        ++v450;
        v451 = (v451 + v452);
        --v453;
      }

      while (v446 != v450);
    }

    if (!v444)
    {
      v578 = 0;
      v577 = 0;
      goto LABEL_1054;
    }

    if (v446 == 1 && v445 == 1)
    {
      sub_26235BA28(&v577, &v585);
    }

    else
    {
      v454 = (&v585 + 4);
      if (v445 >= v446)
      {
        v454 = &v585;
      }

      v455 = v454->u32[0];
      v578 = 0;
      LODWORD(v577) = 1;
      HIDWORD(v577) = v455;
      if (!v455)
      {
        goto LABEL_1054;
      }

      v456 = malloc_type_malloc(8 * v455, 0x100004000313F17uLL);
      v578 = v456;
      if (v456)
      {
        bzero(v456, 8 * HIDWORD(v577) * v577);
      }

      if (v455 >= 1)
      {
        v457 = 0;
        v458 = v455 + 1;
        v459 = v578;
        do
        {
          *v459++ = *&v444[v457];
          v457 += v458;
          --v455;
        }

        while (v455);
      }
    }

    v460 = v577;
    v461 = HIDWORD(v577);
    if (v577 == 1)
    {
      if (SHIDWORD(v577) > 1)
      {
        v460 = 1;
        goto LABEL_1042;
      }

      if (HIDWORD(v577) == 1)
      {
        sub_26235BA28(&v579, &v577);
        goto LABEL_1055;
      }

LABEL_1054:
      v580 = 0;
      v579 = 0;
      goto LABEL_1055;
    }

    if (v577 < 2 || HIDWORD(v577) != 1)
    {
      goto LABEL_1054;
    }

    v461 = 1;
LABEL_1042:
    if (v460 >= v461)
    {
      v463 = &v577;
    }

    else
    {
      v463 = (&v577 + 4);
    }

    v464 = *v463;
    v580 = 0;
    LODWORD(v579) = v464;
    HIDWORD(v579) = v464;
    if (v464)
    {
      v465 = malloc_type_malloc(8 * (v464 * v464), 0x100004000313F17uLL);
      v580 = v465;
      if (v465)
      {
        bzero(v465, 8 * HIDWORD(v579) * v579);
      }

      if (v464 >= 1)
      {
        v466 = v578;
        v467 = v580;
        v468 = 8 * SHIDWORD(v579) + 8;
        do
        {
          v469 = *v466++;
          *v467 = v469;
          v467 = (v467 + v468);
          --v464;
        }

        while (v464);
      }
    }

LABEL_1055:
    sub_26235BEFC(&v581, &v579, -1.0);
    if (v580)
    {
      free(v580);
      v580 = 0;
    }

    v579 = 0;
    if (v578)
    {
      free(v578);
    }

    v470 = __M;
    v580 = 0;
    LODWORD(v579) = __M + v446;
    HIDWORD(v579) = v445;
    v471 = v445 * (__M + v446);
    if (v471)
    {
      v472 = 8 * v471;
      v473 = malloc_type_malloc(v472, 0x100004000313F17uLL);
      v474 = v473;
      v580 = v473;
      if (v473)
      {
        bzero(v473, v472);
        if (v582)
        {
          memcpy(v474, v582, 8 * v446 * v445);
        }

        if (v584)
        {
          memcpy(&v474[8 * v445 * v446], v584, 8 * v470 * v445);
        }
      }
    }

    else
    {
      v474 = 0;
    }

    v475 = HIDWORD(__M);
    v533 = __M;
    v578 = 0;
    LODWORD(v577) = __M + v446;
    HIDWORD(v577) = HIDWORD(__M);
    v476 = HIDWORD(__M) * (__M + v446);
    if (v476)
    {
      v477 = 8 * v476;
      v478 = malloc_type_malloc(v477, 0x100004000313F17uLL);
      v479 = v478;
      v578 = v478;
      if (v478)
      {
        bzero(v478, v477);
      }
    }

    else
    {
      v479 = 0;
    }

    v480 = __M * HIDWORD(__M);
    if (__M * HIDWORD(__M))
    {
      v481 = malloc_type_malloc(8 * v480, 0x100004000313F17uLL);
      v482 = v481;
      if (v481)
      {
        bzero(v481, 8 * v480);
      }
    }

    else
    {
      v482 = 0;
    }

    if (v584 && v480 && HIDWORD(__M) * __M && v482)
    {
      if (__M == 1 || HIDWORD(__M) == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v584, 1, v482, 1, SHIDWORD(__M), __M);
      }
    }

    if (v479)
    {
      if (!v482)
      {
        goto LABEL_1087;
      }

      memcpy(v479, v482, 8 * v475 * v446);
    }

    else if (!v482)
    {
      goto LABEL_1087;
    }

    free(v482);
LABEL_1087:
    if (v441)
    {
      v483 = malloc_type_malloc(8 * v441, 0x100004000313F17uLL);
      v484 = v483;
      if (v483)
      {
        bzero(v483, 8 * v441);
      }
    }

    else
    {
      v484 = 0;
    }

    if (!__Nd)
    {
LABEL_1098:
      if (!v484)
      {
        goto LABEL_1113;
      }

      goto LABEL_1112;
    }

    if (v441 && v484)
    {
      if (v540 == 1 || v439 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(__Nd, 1, v484, 1, v439, v540);
      }
    }

    else if (!v484)
    {
      goto LABEL_1098;
    }

    if (v439)
    {
      v485 = malloc_type_malloc(8 * (v439 * v439), 0x100004000313F17uLL);
      v486 = v485;
      if (v485)
      {
        bzero(v485, 8 * (v439 * v439));
        cblas_dgemm_NEWLAPACK();
      }

      v558 = *(a1 + 128);
      v487 = malloc_type_malloc(8 * (v439 * v439), 0x100004000313F17uLL);
      v488 = v487;
      if (v487)
      {
        bzero(v487, 8 * (v439 * v439));
        if (v486)
        {
          vDSP_vsmulD(v486, 1, &v558, v488, 1, (v439 * v439));
        }

        if (v479)
        {
          memcpy(&v479[8 * v475 * v446], v488, 8 * v533 * v475);
        }

        free(v488);
      }

      if (v486)
      {
        free(v486);
      }
    }

LABEL_1112:
    free(v484);
LABEL_1113:
    v559 = 0;
    __N_4 = HIDWORD(v585);
    v489 = COERCE_DOUBLE(vadd_s32(__M, v585));
    v558 = v489;
    v490 = vmul_lane_s32(*&v489, *&v489, 1).u32[0];
    if (v490)
    {
      v541 = *&v489;
      v491 = malloc_type_malloc(8 * v490, 0x100004000313F17uLL);
      v559 = v491;
      if (v491)
      {
        bzero(v491, 8 * vmul_lane_s32(v541, v541, 1).i32[0]);
      }
    }

    sub_26235C3DC(&v558, 0, __N_4, &v579);
    sub_26235C3DC(&v558, __N_4, SHIDWORD(v558), &v577);
    sub_26235C610(&v556, &v558);
    if (v519 == &v556)
    {
      goto LABEL_1126;
    }

    v492 = *&v556;
    v493 = vmul_lane_s32(v492, v492, 1).u32[0];
    if (v493 < 1)
    {
      v497 = *(a1 + 120);
      if (v497)
      {
        free(v497);
        *(a1 + 120) = 0;
LABEL_1124:
        v492 = *&v556;
      }

LABEL_1125:
      *v519 = *&v492;
LABEL_1126:
      if (__src)
      {
        free(__src);
      }

      goto LABEL_1128;
    }

    v494 = *(a1 + 112);
    v495 = *(a1 + 116);
    v496 = *(a1 + 120);
    if (v495 * v494 == v493)
    {
      if (v496 && __src)
      {
        memcpy(v496, __src, 8 * v494 * v495);
        goto LABEL_1124;
      }

      goto LABEL_1125;
    }

    if (v496)
    {
      free(v496);
      *(a1 + 120) = 0;
      v492 = *&v556;
      v493 = vmul_lane_s32(v492, v492, 1).u32[0];
    }

    *v519 = *&v492;
    v500 = malloc_type_malloc(8 * v493, 0x100004000313F17uLL);
    *(a1 + 120) = v500;
    if (!v500)
    {
      goto LABEL_1126;
    }

    if (__src)
    {
      memcpy(v500, __src, 8 * *(a1 + 112) * *(a1 + 116));
      goto LABEL_1126;
    }

LABEL_1128:
    if (v559)
    {
      free(v559);
    }

    if (v479)
    {
      free(v479);
    }

    if (v474)
    {
      free(v474);
    }

    if (v582)
    {
      free(v582);
    }

    if (v584)
    {
      free(v584);
    }

    if (v547)
    {
      free(v547);
    }

LABEL_1140:
    v498 = vabdd_f64(v512, v381);
    *(a1 + 64) = v498;
    v499 = *(a1 + 24);
    if (v498 >= v499)
    {
      ++*v513;
      *(a1 + 72) = sqrt(sub_26235C08C(&v564));
      *(a1 + 88) = sub_26235C764(v509, v513);
    }

    if (__p[1])
    {
      free(__p[1]);
    }

    if (*(&__C + 1))
    {
      free(*(&__C + 1));
    }

    if (v529)
    {
      free(v529);
    }

    if (v527)
    {
      free(v527);
    }

    if (__dst)
    {
      free(__dst);
    }

    if (v561)
    {
      free(v561);
    }

    if (v563)
    {
      free(v563);
    }

    v512 = v381;
    if (v498 < v499)
    {
      break;
    }
  }

  *(a1 + 88) = sub_26235C764(v509, v513);
  if (&v566 != a3)
  {
    v501 = v566;
    v502 = vmul_lane_s32(v501, v501, 1).u32[0];
    if (v502 < 1)
    {
      v505 = a3[1];
      if (v505)
      {
        free(v505);
        a3[1] = 0;
        v501 = v566;
      }

      *a3 = v501;
    }

    else
    {
      v503 = *(a3 + 1);
      v504 = a3[1];
      if (v503 * *a3 == v502)
      {
        if (v504 && __A)
        {
          memcpy(v504, __A, 8 * *a3 * v503);
          v501 = v566;
        }

        *a3 = v501;
      }

      else
      {
        if (v504)
        {
          free(v504);
          a3[1] = 0;
          v501 = v566;
          v502 = vmul_lane_s32(v501, v501, 1).u32[0];
        }

        *a3 = v501;
        v507 = malloc_type_malloc(8 * v502, 0x100004000313F17uLL);
        a3[1] = v507;
        if (v507 && __A)
        {
          memcpy(v507, __A, 8 * *a3 * *(a3 + 1));
        }
      }
    }
  }

  v33 = (*(a1 + 88) - 2) < 3;
  if (__B)
  {
    free(__B);
  }

  if (__A)
  {
    free(__A);
  }

  if (v570)
  {
    free(v570);
  }

  if (v573)
  {
    free(v573);
  }

  return v33;
}

void sub_26235A780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, void *a58, uint64_t a59, void *a60, uint64_t a61, void *a62, uint64_t a63)
{
  free(v68);
  free(v67);
  if (a47)
  {
    free(a47);
  }

  if (a66)
  {
    free(a66);
  }

  if (STACK[0x250])
  {
    free(STACK[0x250]);
  }

  if (a67)
  {
    free(a67);
  }

  if (v69)
  {
    operator delete(v69);
  }

  if (a37)
  {
    free(a37);
  }

  if (a44)
  {
    free(a44);
  }

  if (a56)
  {
    free(a56);
  }

  if (a58)
  {
    free(a58);
  }

  if (a60)
  {
    free(a60);
  }

  if (a62)
  {
    free(a62);
  }

  if (a64)
  {
    free(a64);
  }

  if (a65)
  {
    free(a65);
  }

  _Unwind_Resume(a1);
}

void *sub_26235B2A0(void *a1)
{
  *a1 = &unk_2874EEEF8;
  v2 = a1[15];
  if (v2)
  {
    free(v2);
    a1[15] = 0;
  }

  a1[14] = 0;
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  a1[12] = 0;
  return a1;
}

uint64_t sub_26235B308(uint64_t a1)
{
  *a1 = &unk_2874EEE88;
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  v6 = (a1 + 40);
  sub_2621E1D40(&v6);
  *a1 = &unk_2874EEEC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

void sub_26235B3B8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FF0C360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C360))
  {
    v23 = xmmword_2623A7D50;
    qword_27FF0C308 = 0;
    unk_27FF0C310 = 0;
    qword_27FF0C300 = 0;
    sub_26235B858(&qword_27FF0C300, &v23, v24, 2uLL);
    v21 = xmmword_2623A8A80;
    v22 = unk_2623A8A90;
    qword_27FF0C320 = 0;
    unk_27FF0C328 = 0;
    qword_27FF0C318 = 0;
    sub_26235B858(&qword_27FF0C318, &v21, &v23, 4uLL);
    v18 = xmmword_2623A8AA0;
    v19 = unk_2623A8AB0;
    v20 = xmmword_2623A8AC0;
    qword_27FF0C338 = 0;
    unk_27FF0C340 = 0;
    qword_27FF0C330 = 0;
    sub_26235B858(&qword_27FF0C330, &v18, &v21, 6uLL);
    v14 = xmmword_2623A8AD0;
    v15 = unk_2623A8AE0;
    v16 = xmmword_2623A8AF0;
    v17 = unk_2623A8B00;
    qword_27FF0C350 = 0;
    unk_27FF0C358 = 0;
    qword_27FF0C348 = 0;
    sub_26235B858(&qword_27FF0C348, &v14, &v18, 8uLL);
    __cxa_atexit(sub_26235BA98, &qword_27FF0C300, &dword_2621C3000);
    __cxa_guard_release(&qword_27FF0C360);
  }

  if ((atomic_load_explicit(&qword_27FF0C3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C3C8))
  {
    v23 = xmmword_2623A7D50;
    qword_27FF0C370 = 0;
    unk_27FF0C378 = 0;
    qword_27FF0C368 = 0;
    sub_26235B858(&qword_27FF0C368, &v23, v24, 2uLL);
    v21 = xmmword_2623A8B10;
    v22 = unk_2623A8B20;
    qword_27FF0C388 = 0;
    unk_27FF0C390 = 0;
    qword_27FF0C380 = 0;
    sub_26235B858(&qword_27FF0C380, &v21, &v23, 4uLL);
    v18 = xmmword_2623A8B30;
    v19 = unk_2623A8B40;
    v20 = xmmword_2623A8B50;
    qword_27FF0C3A0 = 0;
    unk_27FF0C3A8 = 0;
    qword_27FF0C398 = 0;
    sub_26235B858(&qword_27FF0C398, &v18, &v21, 6uLL);
    v14 = xmmword_2623A8B60;
    v15 = unk_2623A8B70;
    v16 = xmmword_2623A8B80;
    v17 = unk_2623A8B90;
    qword_27FF0C3B8 = 0;
    unk_27FF0C3C0 = 0;
    qword_27FF0C3B0 = 0;
    sub_26235B858(&qword_27FF0C3B0, &v14, &v18, 8uLL);
    __cxa_atexit(sub_26235BA98, &qword_27FF0C368, &dword_2621C3000);
    __cxa_guard_release(&qword_27FF0C3C8);
  }

  sub_26235B8CC(a3, *a2, 1);
  if (*a2 >= 1)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    v8 = *(a2 + 1);
    do
    {
      v9 = 0;
      *(v7 + 8 * v6) = 0;
      v10 = *(v8 + 8 * v6);
      do
      {
        *(v8 + 8 * v6) = v10 + *(qword_27FF0C368 + v9) * 0.0000022204;
        v11 = *(qword_27FF0C300 + v9);
        v12 = (*(*a1 + 24))(a1, a2);
        v7 = *(a3 + 8);
        *(v7 + 8 * v6) = *(v7 + 8 * v6) + v11 * v12;
        v8 = *(a2 + 1);
        *(v8 + 8 * v6) = v10;
        v9 += 8;
      }

      while (v9 != 16);
      v13 = *a2;
      *(v7 + 8 * v6) = *(v7 + 8 * v6) / 0.0000044408;
      ++v6;
    }

    while (v6 < v13);
  }
}

void sub_26235B774(_Unwind_Exception *a1)
{
  v3 = &qword_27FF0C3B0;
  v4 = &qword_27FF0C3B0;
  while (1)
  {
    v6 = *(v4 - 3);
    v4 -= 3;
    v5 = v6;
    if (v6)
    {
      *(v3 - 2) = v5;
      operator delete(v5);
    }

    v3 = v4;
    if (v4 == v1)
    {
      __cxa_guard_abort(&qword_27FF0C3C8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_26235B858(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_26235B8B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26235B8CC(uint64_t a1, int a2, int a3)
{
  v6 = a3 * a2;
  if (a3 * a2 == *(a1 + 4) * *a1)
  {
    *a1 = a2;
    *(a1 + 4) = a3;
  }

  else
  {
    sub_26235BA28(&v13, a1);
    v7 = *(a1 + 8);
    if (v7)
    {
      free(v7);
      *(a1 + 8) = 0;
    }

    v8 = malloc_type_malloc(8 * a2 * a3, 0x100004000313F17uLL);
    *(a1 + 8) = v8;
    v9 = v14;
    if (v8 && v14)
    {
      bzero(v8, 8 * v6);
      if (v13 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v13;
      }

      if (v10 >= 1)
      {
        v11 = 0;
        for (i = 0; i != v10; ++i)
        {
          cblas_dcopy_NEWLAPACK();
          v11 += 8 * a3;
        }
      }

      v9 = v14;
    }

    *a1 = a2;
    *(a1 + 4) = a3;
    if (v9)
    {
      free(v9);
    }
  }
}

void sub_26235BA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26235BA28(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v5;
  v6 = malloc_type_malloc(8 * v5 * v4, 0x100004000313F17uLL);
  *(a1 + 8) = v6;
  if (v6)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      memcpy(v6, v7, 8 * *(a1 + 4) * *a1);
    }
  }

  return a1;
}

uint64_t sub_26235BA98(uint64_t a1)
{
  for (i = 0; i != -96; i -= 24)
  {
    v3 = *(a1 + i + 72);
    if (v3)
    {
      *(a1 + i + 80) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

double sub_26235BAF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    return 0.0;
  }

  v5 = 0.0;
  do
  {
    v6 = *v2;
    v7 = *(a2 + 8);
    v8 = *(v7 + 16 * *(*v2 + 8));
    v44[0] = *(v7 + 16 * **v2);
    v44[1] = v8;
    v37 = v44[0];
    v39 = v8;
    v41 = *(v7 + 16 * *(v6 + 24));
    v43[0] = *(v7 + 16 * *(v6 + 16));
    v43[1] = v41;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v35 = v43[0];
    v9 = vsubq_f64(v44[0], v43[0]);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v9, v9)));
    sub_26225B14C(&v45, &v48);
    v10 = vsubq_f64(v37, v41);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)));
    sub_26225B14C(&v45, &v48);
    v11 = vsubq_f64(v39, v35);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v11, v11)));
    sub_26225B14C(&v45, &v48);
    v12 = vsubq_f64(v39, v41);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
    sub_26225B14C(&v45, &v48);
    if (v45 == v46)
    {
      v14 = v45;
    }

    else
    {
      v13 = v45 + 1;
      v14 = v45;
      if (v45 + 1 != v46)
      {
        v15 = *v45;
        v14 = v45;
        v16 = v45 + 1;
        do
        {
          v17 = *v16++;
          v18 = v17;
          if (v17 < v15)
          {
            v15 = v18;
            v14 = v13;
          }

          v13 = v16;
        }

        while (v16 != v46);
      }
    }

    v19 = v14 - v45;
    v20 = v44[v19 >> 1];
    v21 = 1 - (v19 >> 1);
    v22 = v44[v21];
    v23 = v19 & 1;
    v24 = v43[v23];
    v25 = v43[v23 ^ 1];
    if (v45)
    {
      v40 = v44[v21];
      v42 = v20;
      v36 = v43[v23 ^ 1];
      v38 = v43[v23];
      operator delete(v45);
      v25 = v36;
      v24 = v38;
      v22 = v40;
      v20 = v42;
    }

    v26 = vsubq_f64(v20, v22);
    v27 = vsubq_f64(v24, v25);
    v28 = vaddvq_f64(vmulq_f64(v26, v27));
    v29 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v27, v27)));
    v30 = v28 / fmax(vmulq_laneq_f64(v29, v29, 1).f64[0], 2.22507386e-308);
    if (v30 <= 1.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1.0;
    }

    if (v30 >= -1.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = -1.0;
    }

    v33 = fabs(acos(v32) * 180.0 / 3.14159265 + -90.0);
    v5 = v5 + v33 * sqrt(v33);
    v2 += 3;
  }

  while (v2 != v3);
  return v5;
}